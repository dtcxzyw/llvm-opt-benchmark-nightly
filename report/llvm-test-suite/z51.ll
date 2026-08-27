Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z51?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@out_fp = internal unnamed_addr global ptr null, align 8
@prologue_done = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Plain_CoordTranslate: should never be called!\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Plain_CoordScale: should never be called!\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Plain_SaveGraphicState: should never be called!\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Plain_RestoreGraphicState: should never be called!\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Plain_PrintGraphicObject: should never be called!\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Plain_DefineGraphicNames: should never be called!\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Plain_SaveTranslateDefineSave: should never be called!\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Plain_PrintGraphicInclude: should never be called!\00", align 1
@Plain_BackEnd = dso_local local_unnamed_addr global ptr @plain_back, align 8
@PlainCharWidth = dso_local local_unnamed_addr global i32 0, align 4
@PlainCharHeight = dso_local local_unnamed_addr global i32 0, align 4
@PlainFormFeed = dso_local local_unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"PlainText\00", align 1
@plain_back = internal global { i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.9, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, ptr @Plain_PrintInitialize, ptr @Plain_PrintLength, ptr @Plain_PrintPageSetupForFont, ptr @Plain_PrintPageResourceForFont, ptr @Plain_PrintMapping, ptr @Plain_PrintBeforeFirstPage, ptr @Plain_PrintBetweenPages, ptr @Plain_PrintAfterLastPage, ptr @Plain_PrintWord, ptr @Plain_PrintPlainGraphic, ptr @Plain_PrintUnderline, ptr @Plain_CoordTranslate, ptr @Plain_CoordRotate, ptr @Plain_CoordScale, ptr @Plain_SaveGraphicState, ptr @Plain_RestoreGraphicState, ptr @Plain_PrintGraphicObject, ptr @Plain_DefineGraphicNames, ptr @Plain_SaveTranslateDefineSave, ptr @Plain_PrintGraphicInclude, ptr @Plain_LinkSource, ptr @Plain_LinkDest, ptr @Plain_LinkCheck }, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"%.2fs\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%.2ff\00", align 1
@hsize = internal unnamed_addr global i32 0, align 4
@vsize = internal unnamed_addr global i32 0, align 4
@page = internal unnamed_addr global ptr null, align 8
@TotalWordCount = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"PrintWord:  h >= hsize!\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"PrintWord:  v >= vsize!\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"word %s deleted (internal error, off page at %d,%d)\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"left parameter of %s must be a simple word\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"@PlainGraphic\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"left parameter of %s must be a non-empty word\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"fill %s deleted (internal error, off page at %d,%d)\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Plain_CoordRotate: should never be called!\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Plain_PrintInitialize(ptr noundef %0) #0 {
bb.a:
  store ptr %0, ptr @out_fp, align 8, !tbaa !8
  store i1 false, ptr @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_CoordTranslate(i32 %0, i32 %1) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.1) #13 ; 0 uses
  ret void
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Plain_CoordScale(float %0, float %1) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.2) #13 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_SaveGraphicState(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.3) #13 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_RestoreGraphicState() #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.4) #13 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_PrintGraphicObject(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.5) #13 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_DefineGraphicNames(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.6) #13 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_SaveTranslateDefineSave(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.7) #13 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_PrintGraphicInclude(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.8) #13 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @Plain_PrintLength(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) #3 {
bb.a:
  %i.a = icmp eq i32 %2, 0                        ; 2 uses
  %i.b = sitofp i32 %1 to float
  %.str.11..str.12 = select i1 %i.a, ptr @.str.11, ptr @.str.12
  %PlainCharWidth.val = load i32, ptr @PlainCharWidth, align 4
  %PlainCharHeight.val = load i32, ptr @PlainCharHeight, align 4
  %i.c = select i1 %i.a, i32 %PlainCharWidth.val, i32 %PlainCharHeight.val
  %i.d = sitofp i32 %i.c to float
  %i.e = fdiv float %i.b, %i.d
  %i.f = fpext float %i.e to double
  %i.g = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %.str.11..str.12, double noundef %i.f) #13 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_PrintPageSetupForFont(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_PrintPageResourceForFont(ptr nofree readnone captures(none) %0, i32 %1) #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_PrintMapping(i32 %0) #4 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define internal void @Plain_PrintBeforeFirstPage(i32 noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  %i.a = add nsw i32 %0, -1
  %i.b = load i32, ptr @PlainCharWidth, align 4, !tbaa !4
  %i.c = sdiv i32 %i.a, %i.b                      ; 4 uses
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @hsize, align 4, !tbaa !4
  %i.e = add nsw i32 %1, -1
  %i.f = load i32, ptr @PlainCharHeight, align 4, !tbaa !4
  %i.g = sdiv i32 %i.e, %i.f                      ; 4 uses
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.h, ptr @vsize, align 4, !tbaa !4
  %i.i = mul nsw i32 %i.h, %i.d
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 10 uses
  store ptr %i.k, ptr @page, align 8, !tbaa !12
  %i.l = or i32 %i.g, %i.c
  %or.cond.not = icmp sgt i32 %i.l, -1
  br i1 %or.cond.not, label %.preheader.preheader, label %._crit_edge15.split

.preheader.preheader:                             ; preds = %bb.a
  %i.m = sext i32 %i.c to i64
  %i.n = add nsw i64 %i.m, 1                      ; 9 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %narrow = add nuw i32 %smax, 1
  %i.o = zext i32 %narrow to i64                  ; 9 uses
  %smax18 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  %i.p = add nuw i32 %smax18, 1
  %wide.trip.count = zext i32 %i.p to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.q = icmp slt i32 %i.g, 7
  br i1 %i.q, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvar = phi i64 [ 0, %.preheader.preheader.new ], [ %indvar.next.7, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.r = mul nsw i64 %i.n, %indvar
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 32, i64 %i.o, i1 false), !tbaa !14
  %indvar.next = or disjoint i64 %indvar, 1
  %i.s = mul nsw i64 %i.n, %indvar.next
  %scevgep.1 = getelementptr i8, ptr %i.k, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.1, i8 32, i64 %i.o, i1 false), !tbaa !14
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.t = mul nsw i64 %i.n, %indvar.next.1
  %scevgep.2 = getelementptr i8, ptr %i.k, i64 %i.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.2, i8 32, i64 %i.o, i1 false), !tbaa !14
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.u = mul nsw i64 %i.n, %indvar.next.2
  %scevgep.3 = getelementptr i8, ptr %i.k, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.3, i8 32, i64 %i.o, i1 false), !tbaa !14
  %indvar.next.3 = or disjoint i64 %indvar, 4
  %i.v = mul nsw i64 %i.n, %indvar.next.3
  %scevgep.4 = getelementptr i8, ptr %i.k, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.4, i8 32, i64 %i.o, i1 false), !tbaa !14
  %indvar.next.4 = or disjoint i64 %indvar, 5
  %i.w = mul nsw i64 %i.n, %indvar.next.4
  %scevgep.5 = getelementptr i8, ptr %i.k, i64 %i.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.5, i8 32, i64 %i.o, i1 false), !tbaa !14
  %indvar.next.5 = or disjoint i64 %indvar, 6
  %i.x = mul nsw i64 %i.n, %indvar.next.5
  %scevgep.6 = getelementptr i8, ptr %i.k, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.6, i8 32, i64 %i.o, i1 false), !tbaa !14
  %indvar.next.6 = or disjoint i64 %indvar, 7
  %i.y = mul nsw i64 %i.n, %indvar.next.6
  %scevgep.7 = getelementptr i8, ptr %i.k, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.7, i8 32, i64 %i.o, i1 false), !tbaa !14
  %indvar.next.7 = add nuw nsw i64 %indvar, 8     ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge15.split.loopexit.unr-lcssa, label %.preheader, !llvm.loop !15

._crit_edge15.split.loopexit.unr-lcssa:           ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge15.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge15.split.loopexit.unr-lcssa, %.preheader.preheader
  %indvar.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next.7, %._crit_edge15.split.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader.epil.preheader ], [ %indvar.next.epil, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.z = mul nsw i64 %i.n, %indvar.epil
  %scevgep.epil = getelementptr i8, ptr %i.k, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.epil, i8 32, i64 %i.o, i1 false), !tbaa !14
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge15.split, label %.preheader.epil, !llvm.loop !17

._crit_edge15.split:                              ; preds = %._crit_edge15.split.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  store i1 true, ptr @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintBetweenPages(i32 noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %i.a = load i32, ptr @vsize, align 4, !tbaa !4  ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph35, label %._crit_edge36

.lr.ph35:                                         ; preds = %bb.a, %._crit_edge
  %.02433.in = phi i32 [ %.02433, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %.02433 = add nsw i32 %.02433.in, -1            ; 3 uses
  %i.c = load i32, ptr @hsize, align 4, !tbaa !4  ; 3 uses
  %i.d = load ptr, ptr @page, align 8
  %i.e = mul nsw i32 %i.c, %.02433
  %i.f = sext i32 %i.e to i64
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %i.f
  %i.g = icmp sgt i32 %i.c, 0
  br i1 %i.g, label %.lr.ph56, label %._crit_edge

.lr.ph56:                                         ; preds = %.lr.ph35
  %i.h = zext nneg i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.i = icmp sgt i64 %indvars.iv55, 1
  br i1 %i.i, label %bb.c, label %._crit_edge, !llvm.loop !19

bb.c:                                             ; preds = %.lr.ph56, %bb.b
  %indvars.iv55 = phi i64 [ %i.h, %.lr.ph56 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv55, -1 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.j = load i8, ptr %gep, align 1, !tbaa !14
  %i.k = icmp eq i8 %i.j, 32
  br i1 %i.k, label %bb.b, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.c
  %i.l = trunc nsw i64 %indvars.iv55 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %.lr.ph
  %.02331 = phi i32 [ %i.w, %.lr.ph ], [ 0, %.critedge ] ; 2 uses
  %i.m = load ptr, ptr @page, align 8, !tbaa !12
  %i.n = load i32, ptr @hsize, align 4, !tbaa !4
  %i.o = mul nsw i32 %i.n, %.02433
  %i.p = add nsw i32 %i.o, %.02331
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i32
  %i.u = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.v = tail call i32 @putc(i32 noundef %i.t, ptr noundef %i.u) ; 0 uses
  %i.w = add nuw nsw i32 %.02331, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %.lr.ph35
  %i.x = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.y = tail call i32 @putc(i32 noundef 10, ptr noundef %i.x) ; 0 uses
  %i.z = icmp sgt i32 %.02433.in, 1
  br i1 %i.z, label %.lr.ph35, label %._crit_edge36, !llvm.loop !21

._crit_edge36:                                    ; preds = %._crit_edge, %bb.a
  %i.aa = load i32, ptr @PlainFormFeed, align 4, !tbaa !4
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge36
  %i.ab = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.ac = tail call i32 @putc(i32 noundef 12, ptr noundef %i.ab) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge36
  %i.ad = add nsw i32 %0, -1
  %i.ae = load i32, ptr @PlainCharWidth, align 4, !tbaa !4
  %i.af = sdiv i32 %i.ad, %i.ae                   ; 2 uses
  %i.ag = add nsw i32 %i.af, 1                    ; 4 uses
  %i.ah = add nsw i32 %1, -1
  %i.ai = load i32, ptr @PlainCharHeight, align 4, !tbaa !4
  %i.aj = sdiv i32 %i.ah, %i.ai                   ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 4 uses
  %i.al = load i32, ptr @hsize, align 4, !tbaa !4
  %.not27 = icmp eq i32 %i.ag, %i.al
  %i.am = load i32, ptr @vsize, align 4
  %.not28 = icmp eq i32 %i.ak, %i.am
  %or.cond = select i1 %.not27, i1 %.not28, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr @page, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.an) #13
  store i32 %i.ag, ptr @hsize, align 4, !tbaa !4
  store i32 %i.ak, ptr @vsize, align 4, !tbaa !4
  %i.ao = mul nsw i32 %i.ak, %i.ag
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #14
  store ptr %i.aq, ptr @page, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ar = or i32 %i.aj, %i.af
  %or.cond52 = icmp sgt i32 %i.ar, -1
  br i1 %or.cond52, label %.preheader.preheader, label %._crit_edge41.split

.preheader.preheader:                             ; preds = %bb.g
  %i.as = load ptr, ptr @page, align 8
  %i.at = zext nneg i32 %i.ag to i64
  %i.au = zext nneg i32 %i.ak to i64
  %i.av = mul nuw nsw i64 %i.at, %i.au
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 32, i64 %i.av, i1 false), !tbaa !14
  br label %._crit_edge41.split

._crit_edge41.split:                              ; preds = %.preheader.preheader, %bb.g
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @Plain_PrintAfterLastPage() #3 {
bb.a:
  %.b = load i1, ptr @prologue_done, align 4
  %i.a = load i32, ptr @vsize, align 4            ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  %or.cond = select i1 %.b, i1 %i.b, i1 false
  br i1 %or.cond, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %.01216.in = phi i32 [ %.01216, %._crit_edge ], [ %i.a, %bb.a ] ; 2 uses
  %.01216 = add nsw i32 %.01216.in, -1            ; 3 uses
  %i.c = load i32, ptr @hsize, align 4, !tbaa !4  ; 3 uses
  %i.d = load ptr, ptr @page, align 8
  %i.e = mul nsw i32 %i.c, %.01216
  %i.f = sext i32 %i.e to i64
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %i.f
  %i.g = icmp sgt i32 %i.c, 0
  br i1 %i.g, label %.lr.ph27, label %._crit_edge

.lr.ph27:                                         ; preds = %.lr.ph18
  %i.h = zext nneg i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.i = icmp sgt i64 %indvars.iv26, 1
  br i1 %i.i, label %bb.c, label %._crit_edge, !llvm.loop !22

bb.c:                                             ; preds = %.lr.ph27, %bb.b
  %indvars.iv26 = phi i64 [ %i.h, %.lr.ph27 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv26, -1 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.j = load i8, ptr %gep, align 1, !tbaa !14
  %i.k = icmp eq i8 %i.j, 32
  br i1 %i.k, label %bb.b, label %.critedge, !llvm.loop !22

.critedge:                                        ; preds = %bb.c
  %i.l = trunc nsw i64 %indvars.iv26 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %.lr.ph
  %.01114 = phi i32 [ %i.w, %.lr.ph ], [ 0, %.critedge ] ; 2 uses
  %i.m = load ptr, ptr @page, align 8, !tbaa !12
  %i.n = load i32, ptr @hsize, align 4, !tbaa !4
  %i.o = mul nsw i32 %i.n, %.01216
  %i.p = add nsw i32 %i.o, %.01114
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i32
  %i.u = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.v = tail call i32 @putc(i32 noundef %i.t, ptr noundef %i.u) ; 0 uses
  %i.w = add nuw nsw i32 %.01114, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %.lr.ph18
  %i.x = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.y = tail call i32 @putc(i32 noundef 10, ptr noundef %i.x) ; 0 uses
  %i.z = icmp sgt i32 %.01216.in, 1
  br i1 %i.z, label %.lr.ph18, label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintWord(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @TotalWordCount, align 4, !tbaa !4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @TotalWordCount, align 4, !tbaa !4
  %i.c = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.d = insertelement <2 x i32> %i.c, i32 %2, i64 1
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = load i32, ptr @PlainCharWidth, align 4, !tbaa !4
  %i.g = load i32, ptr @PlainCharHeight, align 4, !tbaa !4
  %i.h = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.i = insertelement <2 x i32> %i.h, i32 %i.g, i64 1
  %i.j = sitofp <2 x i32> %i.i to <2 x float>
  %i.k = fdiv <2 x float> %i.e, %i.j              ; 2 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = fpext float %i.l to double
  %i.n = fadd double %i.m, 5.000000e-01
  %i.o = fptosi double %i.n to i32                ; 5 uses
  %i.p = extractelement <2 x float> %i.k, i64 1
  %i.q = fptosi float %i.p to i32                 ; 5 uses
  %i.r = icmp sgt i32 %i.o, -1
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.s = zext nneg i32 %i.o to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #15
  %i.v = add i64 %i.u, %i.s
  %i.w = load i32, ptr @hsize, align 4, !tbaa !4  ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp ult i64 %i.v, %i.x
  %i.z = icmp sgt i32 %i.q, -1
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  %i.aa = load i32, ptr @vsize, align 4
  %i.ab = icmp sgt i32 %i.aa, %i.q
  %or.cond27 = select i1 %or.cond, i1 %i.ab, i1 false
  br i1 %or.cond27, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp sgt i32 %i.w, %i.o
  br i1 %i.ac, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.ae = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ad, ptr noundef nonnull @.str.14) #13 ; 0 uses
  %.pre = load i32, ptr @vsize, align 4, !tbaa !4
  %i.af = icmp sgt i32 %.pre, %i.q
  br i1 %i.af, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.ah = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ag, ptr noundef nonnull @.str.16) #13 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.d
  %i.ai = load i8, ptr %i.t, align 1, !tbaa !14   ; 2 uses
  %.not28 = icmp eq i8 %i.ai, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread
  %i.aj = load ptr, ptr @page, align 8, !tbaa !12
  %i.ak = load i32, ptr @hsize, align 4, !tbaa !4
  %i.al = mul nsw i32 %i.ak, %i.q
  %i.am = add nsw i32 %i.al, %i.o
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.an
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.ap = phi i8 [ %i.ai, %.lr.ph.preheader ], [ %i.as, %.lr.ph ]
  %.02329 = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02329, i64 1
  store i8 %i.ap, ptr %.02329, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14  ; 2 uses
  %.not = icmp eq i8 %i.as, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !25

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.av = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 51, i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef 2, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, i32 noundef %i.o, i32 noundef %i.q) #13 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.thread, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintPlainGraphic(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14
  %.off = add i8 %i.b, -11
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 51, i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.19) #13 ; 0 uses
  br label %.loopexit48

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #15 ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 51, i32 noundef 3, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.19) #13 ; 0 uses
  br label %.loopexit48

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr @PlainCharWidth, align 4, !tbaa !4
  %i.j = load i32, ptr @PlainCharHeight, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !14
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %i.t = add nsw i32 %i.s, %i.q
  %i.u = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %i.v = insertelement <2 x i32> %i.u, i32 %i.j, i64 1
  %i.w = sitofp <2 x i32> %i.v to <2 x float>     ; 3 uses
  %i.x = sitofp i32 %i.t to float
  %i.y = sitofp i32 %1 to float                   ; 2 uses
  %i.z = extractelement <2 x float> %i.w, i64 0
  %i.aa = fdiv float %i.y, %i.z
  %i.ab = fpext float %i.aa to double
  %i.ac = fadd double %i.ab, 5.000000e-01
  %i.ad = fptosi double %i.ac to i32              ; 3 uses
  %i.ae = sitofp i32 %2 to float                  ; 2 uses
  %i.af = sitofp i32 %i.o to float
  %i.ag = fsub float %i.ae, %i.x
  %i.ah = fadd float %i.y, %i.af
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ag, i64 1
  %i.ak = fdiv <2 x float> %i.aj, %i.w            ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = fpext float %i.al to double
  %i.an = fadd double %i.am, 5.000000e-01
  %i.ao = fptosi double %i.an to i32              ; 3 uses
end_hunk_0
