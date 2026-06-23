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
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.1) #11 ; 0 uses
  ret void
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Plain_CoordScale(float %0, float %1) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.2) #11 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_SaveGraphicState(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.3) #11 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_RestoreGraphicState() #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.4) #11 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_PrintGraphicObject(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.5) #11 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_DefineGraphicNames(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.6) #11 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_SaveTranslateDefineSave(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.7) #11 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Plain_PrintGraphicInclude(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.8) #11 ; 0 uses
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
  %i.g = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %.str.11..str.12, double noundef %i.f) #11 ; 0 uses
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define internal void @Plain_PrintBeforeFirstPage(i32 noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  %i.a = add nsw i32 %0, -1
  %i.b = load i32, ptr @PlainCharWidth, align 4, !tbaa !4
  %i.c = sdiv i32 %i.a, %i.b
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @hsize, align 4, !tbaa !4
  %i.e = add nsw i32 %1, -1
  %i.f = load i32, ptr @PlainCharHeight, align 4, !tbaa !4
  %i.g = sdiv i32 %i.e, %i.f
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.h, ptr @vsize, align 4, !tbaa !4
  %i.i = mul nsw i32 %i.h, %i.d
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #12 ; 2 uses
  store ptr %i.k, ptr @page, align 8, !tbaa !12
  %i.l = load i32, ptr @vsize, align 4, !tbaa !4  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader.lr.ph, label %._crit_edge12

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.n = load i32, ptr @hsize, align 4, !tbaa !4  ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.preheader.us.preheader, label %._crit_edge12

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.p = zext nneg i32 %i.n to i64
  %i.q = zext nneg i32 %i.l to i64
  %i.r = mul nuw nsw i64 %i.p, %i.q
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 32, i64 %i.r, i1 false), !tbaa !14
  br label %._crit_edge12

._crit_edge12:                                    ; preds = %.preheader.lr.ph, %.preheader.us.preheader, %bb.a
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
  br i1 %i.g, label %.lr.ph57, label %._crit_edge

.lr.ph57:                                         ; preds = %.lr.ph35
  %i.h = zext nneg i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.i = icmp sgt i64 %indvars.iv56, 1
  br i1 %i.i, label %bb.c, label %._crit_edge, !llvm.loop !15

bb.c:                                             ; preds = %.lr.ph57, %bb.b
  %indvars.iv56 = phi i64 [ %i.h, %.lr.ph57 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv56, -1 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.j = load i8, ptr %gep, align 1, !tbaa !14
  %i.k = icmp eq i8 %i.j, 32
  br i1 %i.k, label %bb.b, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %bb.c
  %i.l = trunc nsw i64 %indvars.iv56 to i32
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %.lr.ph35
  %i.x = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.y = tail call i32 @putc(i32 noundef 10, ptr noundef %i.x) ; 0 uses
  %i.z = icmp sgt i32 %.02433.in, 1
  br i1 %i.z, label %.lr.ph35, label %._crit_edge36, !llvm.loop !18

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
  %i.af = sdiv i32 %i.ad, %i.ae
  %i.ag = add nsw i32 %i.af, 1                    ; 3 uses
  %i.ah = add nsw i32 %1, -1
  %i.ai = load i32, ptr @PlainCharHeight, align 4, !tbaa !4
  %i.aj = sdiv i32 %i.ah, %i.ai
  %i.ak = add nsw i32 %i.aj, 1                    ; 4 uses
  %i.al = load i32, ptr @hsize, align 4, !tbaa !4
  %.not27 = icmp eq i32 %i.ag, %i.al
  %i.am = load i32, ptr @vsize, align 4
  %.not28 = icmp eq i32 %i.ak, %i.am
  %or.cond = select i1 %.not27, i1 %.not28, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr @page, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.an) #11
  store i32 %i.ag, ptr @hsize, align 4, !tbaa !4
  store i32 %i.ak, ptr @vsize, align 4, !tbaa !4
  %i.ao = mul nsw i32 %i.ak, %i.ag
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ap) #12
  store ptr %i.aq, ptr @page, align 8, !tbaa !12
  %.pre = load i32, ptr @vsize, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ar = phi i32 [ %i.ak, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.preheader.lr.ph, label %._crit_edge41

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.at = load i32, ptr @hsize, align 4, !tbaa !4 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.preheader.us.preheader, label %._crit_edge41

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.av = load ptr, ptr @page, align 8
  %i.aw = zext nneg i32 %i.at to i64
  %i.ax = zext nneg i32 %i.ar to i64
  %i.ay = mul nuw nsw i64 %i.aw, %i.ax
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 32, i64 %i.ay, i1 false), !tbaa !14
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %.preheader.lr.ph, %.preheader.us.preheader, %bb.g
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
  br i1 %i.i, label %bb.c, label %._crit_edge, !llvm.loop !19

bb.c:                                             ; preds = %.lr.ph27, %bb.b
  %indvars.iv26 = phi i64 [ %i.h, %.lr.ph27 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv26, -1 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.j = load i8, ptr %gep, align 1, !tbaa !14
  %i.k = icmp eq i8 %i.j, 32
  br i1 %i.k, label %bb.b, label %.critedge, !llvm.loop !19

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %.lr.ph18
  %i.x = load ptr, ptr @out_fp, align 8, !tbaa !8
  %i.y = tail call i32 @putc(i32 noundef 10, ptr noundef %i.x) ; 0 uses
  %i.z = icmp sgt i32 %.01216.in, 1
  br i1 %i.z, label %.lr.ph18, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintWord(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr @TotalWordCount, align 4, !tbaa !4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @TotalWordCount, align 4, !tbaa !4
  %i.c = sitofp i32 %1 to float
  %i.d = load i32, ptr @PlainCharWidth, align 4, !tbaa !4
  %i.e = sitofp i32 %i.d to float
  %i.f = fdiv float %i.c, %i.e
  %i.g = fpext float %i.f to double
  %i.h = fadd double %i.g, 5.000000e-01
  %i.i = fptosi double %i.h to i32                ; 5 uses
  %i.j = sitofp i32 %2 to float
  %i.k = load i32, ptr @PlainCharHeight, align 4, !tbaa !4
  %i.l = sitofp i32 %i.k to float
  %i.m = fdiv float %i.j, %i.l
  %i.n = fptosi float %i.m to i32                 ; 5 uses
  %i.o = icmp sgt i32 %i.i, -1
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #13
  %i.s = add i64 %i.r, %i.p
  %i.t = load i32, ptr @hsize, align 4, !tbaa !4  ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp ult i64 %i.s, %i.u
  %i.w = icmp sgt i32 %i.n, -1
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  %i.x = load i32, ptr @vsize, align 4
  %i.y = icmp sgt i32 %i.x, %i.n
  %or.cond27 = select i1 %or.cond, i1 %i.y, i1 false
  br i1 %or.cond27, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp sgt i32 %i.t, %i.i
  br i1 %i.z, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.ab = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.aa, ptr noundef nonnull @.str.14) #11 ; 0 uses
  %.pre = load i32, ptr @vsize, align 4, !tbaa !4
  %i.ac = icmp sgt i32 %.pre, %i.n
  br i1 %i.ac, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.ae = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ad, ptr noundef nonnull @.str.16) #11 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.d
  %i.af = load i8, ptr %i.q, align 1, !tbaa !14   ; 2 uses
  %.not28 = icmp eq i8 %i.af, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread
  %i.ag = load ptr, ptr @page, align 8, !tbaa !12
  %i.ah = load i32, ptr @hsize, align 4, !tbaa !4
  %i.ai = mul nsw i32 %i.ah, %i.n
  %i.aj = add nsw i32 %i.ai, %i.i
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.am = phi i8 [ %i.af, %.lr.ph.preheader ], [ %i.ap, %.lr.ph ]
  %.030 = phi ptr [ %i.al, %.lr.ph.preheader ], [ %i.an, %.lr.ph ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.030, i64 1
  store i8 %i.am, ptr %.030, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14  ; 2 uses
  %.not = icmp eq i8 %i.ap, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !22

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 51, i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef 2, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, i32 noundef %i.i, i32 noundef %i.n) #11 ; 0 uses
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
  %i.c = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 51, i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.19) #11 ; 0 uses
  br label %.loopexit48

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #13 ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 51, i32 noundef 3, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.19) #11 ; 0 uses
  br label %.loopexit48

bb.e:                                             ; preds = %bb.c
  %i.i = sitofp i32 %1 to float                   ; 2 uses
  %i.j = load i32, ptr @PlainCharWidth, align 4, !tbaa !4
  %i.k = sitofp i32 %i.j to float                 ; 2 uses
  %i.l = fdiv float %i.i, %i.k
  %i.m = fpext float %i.l to double
  %i.n = fadd double %i.m, 5.000000e-01
  %i.o = fptosi double %i.n to i32                ; 3 uses
  %i.p = sitofp i32 %2 to float                   ; 2 uses
  %i.q = load i32, ptr @PlainCharHeight, align 4, !tbaa !4
  %i.r = sitofp i32 %i.q to float                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !14
  %i.w = add nsw i32 %i.v, %i.t
  %i.x = sitofp i32 %i.w to float
  %i.y = fadd float %i.i, %i.x
  %i.z = fdiv float %i.y, %i.k
  %i.aa = fpext float %i.z to double
  %i.ab = fadd double %i.aa, 5.000000e-01
  %i.ac = fptosi double %i.ab to i32              ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14
  %i.ah = add nsw i32 %i.ag, %i.ae
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fsub float %i.p, %i.ai
  %i.ak = fdiv float %i.aj, %i.r
  %i.al = fptosi float %i.ak to i32               ; 3 uses
  tail call void @SetLengthDim(i32 noundef 0) #11
  tail call void @SetLengthDim(i32 noundef 1) #11
  %i.am = icmp sgt i32 %i.o, -1
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = fdiv float %i.p, %i.r
  %i.ao = fptosi float %i.an to i32               ; 3 uses
  %i.ap = load i32, ptr @hsize, align 4, !tbaa !4 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %i.ac
  %i.ar = icmp sgt i32 %i.ao, -1
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  %i.as = load i32, ptr @vsize, align 4
  %i.at = icmp sgt i32 %i.as, %i.al
  %or.cond46 = select i1 %or.cond, i1 %i.at, i1 false
  br i1 %or.cond46, label %.preheader47, label %bb.g

.preheader47:                                     ; preds = %bb.f
  %.not44.not52 = icmp sgt i32 %i.ao, %i.al
  br i1 %.not44.not52, label %.preheader.lr.ph, label %.loopexit48

.preheader.lr.ph:                                 ; preds = %.preheader47
  %i.au = icmp slt i32 %i.o, %i.ac
  %i.av = load ptr, ptr @page, align 8
  br i1 %i.au, label %.preheader.us.preheader, label %.loopexit48

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.aw = zext nneg i32 %i.o to i64               ; 5 uses
  %i.ax = zext nneg i32 %i.ao to i64
  %i.ay = sext i32 %i.al to i64
  %i.az = sext i32 %i.ap to i64
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 3 uses
  %i.ba = sub nsw i64 %wide.trip.count, %i.aw
  %xtraiter = and i64 %i.ba, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %indvars.iv.next.prol = add nuw nsw i64 %i.aw, 1
  %i.bb = add nsw i64 %wide.trip.count, -1
  %i.bc = icmp eq i64 %i.bb, %i.aw
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv57.in = phi i64 [ %i.ax, %.preheader.us.preheader ], [ %indvars.iv57, %..loopexit_crit_edge.us ]
  %.03753.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.lcssa, %..loopexit_crit_edge.us ] ; 3 uses
  %indvars.iv57 = add nsw i64 %indvars.iv57.in, -1 ; 3 uses
  %i.bd = mul nsw i64 %indvars.iv57, %i.az
  %invariant.gep = getelementptr i8, ptr %i.av, i64 %i.bd ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.us
  %i.be = icmp eq i32 %.03753.us, %i.f
  %spec.store.select.us.prol = select i1 %i.be, i32 0, i32 %.03753.us ; 2 uses
  %i.bf = add nsw i32 %spec.store.select.us.prol, 1 ; 2 uses
  %i.bg = sext i32 %spec.store.select.us.prol to i64
  %i.bh = getelementptr inbounds i8, ptr %i.d, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !14
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.aw
  store i8 %i.bi, ptr %gep.prol, align 1, !tbaa !14
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.us
  %.lcssa.unr = phi i32 [ poison, %.preheader.us ], [ %i.bf, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.aw, %.preheader.us ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.149.us.unr = phi i32 [ %.03753.us, %.preheader.us ], [ %i.bf, %.prol.loopexit.unr-lcssa ]
  br i1 %i.bc, label %..loopexit_crit_edge.us, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.prol.loopexit, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.149.us = phi i32 [ %i.bp, %.preheader.us.new ], [ %.149.us.unr, %.prol.loopexit ] ; 2 uses
  %i.bj = icmp eq i32 %.149.us, %i.f
  %spec.store.select.us = select i1 %i.bj, i32 0, i32 %.149.us ; 2 uses
  %i.bk = add nsw i32 %spec.store.select.us, 1    ; 2 uses
  %i.bl = sext i32 %spec.store.select.us to i64
  %i.bm = getelementptr inbounds i8, ptr %i.d, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !14
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %i.bn, ptr %gep, align 1, !tbaa !14
  %i.bo = icmp eq i32 %i.bk, %i.f
  %spec.store.select.us.1 = select i1 %i.bo, i32 0, i32 %i.bk ; 2 uses
  %i.bp = add nsw i32 %spec.store.select.us.1, 1  ; 2 uses
  %i.bq = sext i32 %spec.store.select.us.1 to i64
  %i.br = getelementptr inbounds i8, ptr %i.d, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.bt, i64 1
  store i8 %i.bs, ptr %gep.1, align 1, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us, label %.preheader.us.new, !llvm.loop !23

..loopexit_crit_edge.us:                          ; preds = %.preheader.us.new, %.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.bp, %.preheader.us.new ]
  %.not44.not.us = icmp sgt i64 %indvars.iv57, %i.ay
  br i1 %.not44.not.us, label %.preheader.us, label %.loopexit48, !llvm.loop !24

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bu = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 51, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i32 noundef undef, i32 noundef undef) #11 ; 0 uses
  br label %.loopexit48

.loopexit48:                                      ; preds = %..loopexit_crit_edge.us, %.preheader.lr.ph, %.preheader47, %bb.g, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_PrintUnderline(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #4 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_CoordRotate(i32 %0) #1 {
bb.a:
  %i.a = load ptr, ptr @no_fpos, align 8, !tbaa !11
  %i.b = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull @.str.22) #11 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_LinkSource(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, i32 %3, i32 %4) #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_LinkDest(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, i32 %3, i32 %4) #4 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare void @SetLengthDim(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Plain_LinkCheck() #4 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
end_hunk_0
