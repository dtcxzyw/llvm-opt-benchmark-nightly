inline.NumInlined: 11
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [48 x i8] c"\0A\0AIntVector_insertEnd failed realloc size = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\0A\0ANodePtrVec_push failed malloc(%d). Node: %d\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c", label: %s\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [38 x i8] c"Malloc failure in NodePtrVec creation\00", align 1
@str.1 = private unnamed_addr constant [46 x i8] c"Malloc failure in NodePtrVec storage creation\00", align 1
@str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.3 = private unnamed_addr constant [46 x i8] c"Malloc failure in NodeVecVec storage creation\00", align 1
@str.4 = private unnamed_addr constant [38 x i8] c"Malloc failure in NodeVecVec creation\00", align 1
@str.5 = private unnamed_addr constant [32 x i8] c"\0A\0ANodeVecVec_push failed malloc\00", align 1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local noalias noundef ptr @IntVector_new(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #13 ; 2 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !8
  store i32 0, ptr %i.a, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.f, align 4, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ %i.a, %bb.c ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @IntVector_delete(ptr noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %0) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @IntVector_insertEnd(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13
  %i.d = icmp eq i32 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  br i1 %i.d, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.g = shl nsw i32 %i.a, 1                      ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.i) #15 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !8
  %.not19 = icmp eq ptr %i.j, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.g, ptr %i.b, align 4, !tbaa !13
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str, i32 noundef %i.g) #16 ; 0 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.b, %bb.d
  %i.m = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.b ]
  %i.n = sext i32 %i.a to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n
  store i32 %1, ptr %i.o, align 4, !tbaa !4
  %i.p = load i32, ptr %0, align 8, !tbaa !12
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %0, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge, %bb.e
  %.0 = phi i1 [ true, %._crit_edge ], [ false, %bb.e ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @IntVector_createFromString(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #17       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !18      ; 2 uses
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !19
  %i.i = and i16 %i.h, 2048
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %.preheader.i, label %.lr.ph

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.j = phi i8 [ %i.m, %bb.c ], [ %i.e, %bb.b ]
  %.2.i = phi ptr [ %i.l, %bb.c ], [ %1, %bb.b ]
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18    ; 2 uses
  %i.n = sext i8 %i.m to i64
  %i.o = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !19
  %i.q = and i16 %i.p, 2048
  %.not19.i = icmp eq i16 %i.q, 0
  br i1 %.not19.i, label %.preheader.i, label %.lr.ph, !llvm.loop !21

.lr.ph:                                           ; preds = %bb.c, %bb.b
  %.013.ph = phi ptr [ %1, %bb.b ], [ %i.l, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.01244 = phi i32 [ 0, %.lr.ph ], [ %i.bj, %bb.h ]
  %.143 = phi ptr [ %.013.ph, %.lr.ph ], [ %.018.i32, %bb.h ] ; 4 uses
  %i.t = tail call i64 @strtol(ptr noundef nonnull captures(none) %.143, ptr noundef null, i32 noundef 10) #14, !inline_history !23
  %i.u = trunc i64 %i.t to i32
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !16   ; 4 uses
  %i.w = load i8, ptr %.143, align 1, !tbaa !18   ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !19
  %i.aa = and i16 %i.z, 2048
  %.not.i17 = icmp eq i16 %i.aa, 0
  br i1 %.not.i17, label %.preheader.i33, label %.preheader26.i18

.preheader26.i18:                                 ; preds = %bb.d, %.preheader26.i18
  %.pn.i19 = phi ptr [ %.0.i20, %.preheader26.i18 ], [ %.143, %bb.d ]
  %.0.i20 = getelementptr inbounds nuw i8, ptr %.pn.i19, i64 1 ; 3 uses
  %i.ab = load i8, ptr %.0.i20, align 1, !tbaa !18 ; 2 uses
  %i.ac = sext i8 %i.ab to i64
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !19
  %i.af = and i16 %i.ae, 2048
  %.not20.i21 = icmp eq i16 %i.af, 0
  %.not21.i22 = icmp eq i8 %i.ab, 0               ; 2 uses
  %or.cond.i23 = or i1 %.not21.i22, %.not20.i21
  br i1 %or.cond.i23, label %.critedge.i24, label %.preheader26.i18, !llvm.loop !24

.critedge.i24:                                    ; preds = %.preheader26.i18
  br i1 %.not21.i22, label %findNextNumber.exit36, label %.preheader25.i25

.preheader25.i25:                                 ; preds = %.critedge.i24, %.preheader25.i25
  %.1.i26 = phi ptr [ %i.al, %.preheader25.i25 ], [ %.0.i20, %.critedge.i24 ] ; 3 uses
  %i.ag = load i8, ptr %.1.i26, align 1, !tbaa !18 ; 2 uses
  %i.ah = sext i8 %i.ag to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !19
  %i.ak = and i16 %i.aj, 2048
  %.not22.i27 = icmp ne i16 %i.ak, 0
  %.not23.i28 = icmp eq i8 %i.ag, 0               ; 2 uses
  %or.cond24.i29 = or i1 %.not23.i28, %.not22.i27
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i26, i64 1
  br i1 %or.cond24.i29, label %.critedge2.i30, label %.preheader25.i25, !llvm.loop !25

.critedge2.i30:                                   ; preds = %.preheader25.i25
  %..1.i31 = select i1 %.not23.i28, ptr null, ptr %.1.i26
  br label %findNextNumber.exit36

.preheader.i33:                                   ; preds = %bb.d, %bb.e
  %i.am = phi i8 [ %i.ap, %bb.e ], [ %i.w, %bb.d ]
  %.2.i34 = phi ptr [ %i.ao, %bb.e ], [ %.143, %bb.d ]
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %findNextNumber.exit36, label %bb.e

bb.e:                                             ; preds = %.preheader.i33
  %i.ao = getelementptr inbounds nuw i8, ptr %.2.i34, i64 1 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18  ; 2 uses
  %i.aq = sext i8 %i.ap to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !19
  %i.at = and i16 %i.as, 2048
  %.not19.i35 = icmp eq i16 %i.at, 0
  br i1 %.not19.i35, label %.preheader.i33, label %findNextNumber.exit36, !llvm.loop !21

findNextNumber.exit36:                            ; preds = %bb.e, %.preheader.i33, %.critedge2.i30, %.critedge.i24
  %.018.i32 = phi ptr [ null, %.critedge.i24 ], [ %..1.i31, %.critedge2.i30 ], [ null, %.preheader.i33 ], [ %i.ao, %bb.e ] ; 2 uses
  %i.au = load i32, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.av = load i32, ptr %i.r, align 4, !tbaa !13
  %i.aw = icmp eq i32 %i.au, %i.av
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !8   ; 2 uses
  br i1 %i.aw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %findNextNumber.exit36
  %i.ay = shl nsw i32 %i.au, 1                    ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  %i.bb = tail call ptr @realloc(ptr noundef %i.ax, i64 noundef %i.ba) #15 ; 3 uses
  store ptr %i.bb, ptr %i.s, align 8, !tbaa !8
  %.not19.i39 = icmp eq ptr %i.bb, null
  br i1 %.not19.i39, label %IntVector_insertEnd.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ay, ptr %i.r, align 4, !tbaa !13
  br label %bb.h

IntVector_insertEnd.exit:                         ; preds = %bb.f
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str, i32 noundef %i.ay) #16 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %findNextNumber.exit36, %bb.g
  %i.be = phi ptr [ %i.bb, %bb.g ], [ %i.ax, %findNextNumber.exit36 ]
  %i.bf = sext i32 %i.au to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bf
  store i32 %i.u, ptr %i.bg, align 4, !tbaa !4
  %i.bh = load i32, ptr %0, align 8, !tbaa !12
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %0, align 8, !tbaa !12
  %i.bj = add nuw nsw i32 %.01244, 1              ; 2 uses
  %.not16 = icmp eq ptr %.018.i32, null
  br i1 %.not16, label %.loopexit, label %bb.d, !llvm.loop !26

.loopexit:                                        ; preds = %.preheader.i, %bb.h, %IntVector_insertEnd.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %IntVector_insertEnd.exit ], [ %i.bj, %bb.h ], [ 0, %.preheader.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local noalias noundef ptr @CharVector_new(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #13 ; 2 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !27
  store i32 0, ptr %i.a, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.e, align 4, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.1 = phi ptr [ null, %bb.d ], [ %i.a, %bb.c ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @CharVector_delete(ptr noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %0) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @CharVector_insertEnd(ptr noundef captures(address_is_null) %0, i8 noundef signext %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31
  %i.d = icmp eq i32 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  br i1 %i.d, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.g = shl nsw i32 %i.a, 1                      ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.h) #15 ; 3 uses
  store ptr %i.i, ptr %i.e, align 8, !tbaa !27
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.g, ptr %i.b, align 4, !tbaa !31
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str, i32 noundef %i.g) #16 ; 0 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.b, %bb.d
  %i.l = phi ptr [ %i.i, %bb.d ], [ %i.f, %bb.b ]
  %i.m = sext i32 %i.a to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  store i8 %1, ptr %i.n, align 1, !tbaa !18
  %i.o = load i32, ptr %0, align 8, !tbaa !30
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %0, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge, %bb.e
  %.0 = phi i1 [ true, %._crit_edge ], [ false, %bb.e ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @CharVector_getLineFromFile(ptr noundef captures(address_is_null) %0, ptr noundef captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !30
  %i.c = tail call i32 @fgetc(ptr noundef nonnull %1) ; 2 uses
  %i.d = tail call i32 @feof(ptr noundef nonnull %1) #14
  %i.e = icmp ne i32 %i.d, 0
  %sext.mask26 = and i32 %i.c, 255
  %i.f = icmp eq i32 %sext.mask26, 10
  %or.cond427 = or i1 %i.e, %i.f
  br i1 %or.cond427, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.i = phi i32 [ %i.c, %.lr.ph ], [ %i.y, %bb.e ]
  %i.j = trunc i32 %i.i to i8
  %i.k = load i32, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.l = load i32, ptr %i.g, align 4, !tbaa !31
  %i.m = icmp eq i32 %i.k, %i.l
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = shl nsw i32 %i.k, 1                      ; 3 uses
  %i.p = sext i32 %i.o to i64
  %i.q = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %i.p) #15 ; 3 uses
  store ptr %i.q, ptr %i.h, align 8, !tbaa !27
  %.not18.i = icmp eq ptr %i.q, null
  br i1 %.not18.i, label %CharVector_insertEnd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.o, ptr %i.g, align 4, !tbaa !31
  br label %bb.e

CharVector_insertEnd.exit:                        ; preds = %bb.c
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str, i32 noundef %i.o) #16 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.t = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.b ]
  %i.u = sext i32 %i.k to i64
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  store i8 %i.j, ptr %i.v, align 1, !tbaa !18
  %i.w = load i32, ptr %0, align 8, !tbaa !30
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %0, align 8, !tbaa !30
  %i.y = tail call i32 @fgetc(ptr noundef nonnull %1) ; 2 uses
  %i.z = tail call i32 @feof(ptr noundef nonnull %1) #14
  %i.aa = icmp ne i32 %i.z, 0
  %sext.mask = and i32 %i.y, 255
  %i.ab = icmp eq i32 %sext.mask, 10
  %or.cond4 = or i1 %i.aa, %i.ab
  br i1 %or.cond4, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.ac = load i32, ptr %0, align 8, !tbaa !30    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !31
  %i.af = icmp eq i32 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27 ; 2 uses
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.ai = shl nsw i32 %i.ac, 1                    ; 3 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = tail call ptr @realloc(ptr noundef %i.ah, i64 noundef %i.aj) #15 ; 3 uses
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !27
  %.not18.i21 = icmp eq ptr %i.ak, null
  br i1 %.not18.i21, label %CharVector_insertEnd.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ai, ptr %i.ad, align 4, !tbaa !31
  br label %bb.h

CharVector_insertEnd.exit22:                      ; preds = %bb.f
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str, i32 noundef %i.ai) #16 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.an = phi ptr [ %i.ak, %bb.g ], [ %i.ah, %._crit_edge ]
  %i.ao = sext i32 %i.ac to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !18
  %i.aq = load i32, ptr %0, align 8, !tbaa !30
  %i.ar = add nsw i32 %i.aq, 1                    ; 2 uses
  store i32 %i.ar, ptr %0, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %CharVector_insertEnd.exit22, %CharVector_insertEnd.exit, %bb.a, %bb.h
  %.015 = phi i32 [ %i.ar, %bb.h ], [ -1, %CharVector_insertEnd.exit ], [ -1, %bb.a ], [ -1, %CharVector_insertEnd.exit22 ]
  ret i32 %.015
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @NodePtrVec_new(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = shl nsw i64 %i.a, 3
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #13 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 5 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #14
  %puts13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %0, ptr %i.e, align 4, !tbaa !32
  store i32 0, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.d, %bb.e ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @NodePtrVec_delete(ptr noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.b) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %0) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @NodePtrVec_copy(ptr noundef readonly captures(address_is_null) %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %NodePtrVec_new.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #13 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %NodePtrVec_new.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 2 uses
  %.not12.i = icmp eq ptr %i.f, null
  br i1 %.not12.i, label %bb.f, label %NodePtrVec_new.exit

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.e) #14
  %puts13.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %NodePtrVec_new.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #13 ; 3 uses
  %.not.i20 = icmp eq ptr %i.j, null
  br i1 %.not.i20, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %puts.i24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %NodePtrVec_new.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 2 uses
  %.not12.i21 = icmp eq ptr %i.k, null
  br i1 %.not12.i21, label %bb.j, label %NodePtrVec_new.exit

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.j) #14
  %puts13.i23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %NodePtrVec_new.exit.thread

NodePtrVec_new.exit:                              ; preds = %bb.i, %bb.e
  %.sink39 = phi ptr [ %i.f, %bb.e ], [ %i.k, %bb.i ] ; 5 uses
  %.sink37 = phi i32 [ %i.b, %bb.e ], [ %i.g, %bb.i ]
  %.sink = phi ptr [ %i.e, %bb.e ], [ %i.j, %bb.i ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sink39, i64 4
  store i32 %.sink37, ptr %i.l, align 4, !tbaa !32
  store i32 0, ptr %.sink39, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.sink39, i64 8
  store ptr %.sink, ptr %i.m, align 8, !tbaa !37
  %i.n = load i32, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %NodePtrVec_new.exit
  %.sink40 = ptrtoaddr ptr %.sink to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37   ; 7 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 6
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %.sink40, %i.r
  %diff.check = icmp ult i64 %i.s, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x ptr>, ptr %i.t, align 8, !tbaa !38
  %wide.load41 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x ptr> %wide.load, ptr %i.v, align 8, !tbaa !38
  store <2 x ptr> %wide.load41, ptr %i.w, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.prol
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %indvars.iv.prol
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !38
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !43

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %indvars.iv
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %indvars.iv.next
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !38
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.1
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %indvars.iv.next.1
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !38
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.2
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %indvars.iv.next.2
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !38
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %NodePtrVec_new.exit
  store i32 %i.n, ptr %.sink39, align 8, !tbaa !36
  br label %NodePtrVec_new.exit.thread

NodePtrVec_new.exit.thread:                       ; preds = %bb.h, %bb.j, %bb.f, %bb.d, %._crit_edge, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.sink39, %._crit_edge ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.j ], [ null, %bb.h ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @NodePtrVec_push(ptr noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32
  %i.d = icmp eq i32 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  br i1 %i.d, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.g = shl nsw i32 %i.a, 1                      ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call ptr @realloc(ptr noundef %i.f, i64 noundef %i.i) #15 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !37
  %.not22 = icmp eq ptr %i.j, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.g, ptr %i.b, align 4, !tbaa !32
  %.pre24 = load i32, ptr %0, align 8, !tbaa !36
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr %1, align 8, !tbaa !46
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.g, i32 noundef %i.k) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %.not23 = icmp eq ptr %i.n, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %i.n) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
end_hunk_0
begin_hunk_1_@NodePtrVec_push:bb.a
  %i.q = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.b ]
  %i.r = sext i32 %i.a to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  store ptr %1, ptr %i.s, align 8, !tbaa !38
  %i.t = add nsw i32 %i.p, 1
  store i32 %i.t, ptr %0, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a, %._crit_edge
  %.0 = phi i1 [ true, %._crit_edge ], [ false, %bb.a ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @NodePtrVec_pop(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.c, ptr %0, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.07 = phi ptr [ null, %bb.a ], [ %i.h, %bb.c ], [ null, %bb.b ]
  ret ptr %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @NodePtrVec_find(ptr noundef readonly captures(address_is_null) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = icmp eq ptr %i.f, %1                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.g, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %bb.b, !llvm.loop !51

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.07 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ %i.g, %bb.b ]
  ret i1 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @NodePtrVec_findReverse(ptr noundef readonly captures(address_is_null) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.g = zext nneg i32 %i.e to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.h = trunc nuw i64 %i.j to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %.loopexit, !llvm.loop !52

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv17 = phi i64 [ %i.g, %.lr.ph ], [ %i.j, %bb.d ]
  %i.j = add nsw i64 %indvars.iv17, -1            ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %..loopexit.loopexit_crit_edge, label %bb.d, !llvm.loop !52

..loopexit.loopexit_crit_edge:                    ; preds = %bb.e
  br label %.loopexit, !llvm.loop !52

.loopexit:                                        ; preds = %bb.d, %bb.c, %..loopexit.loopexit_crit_edge, %bb.a, %bb.b
  %.010 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %..loopexit.loopexit_crit_edge ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define dso_local void @NodePtrVec_appendVectors(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %not. = xor i1 %2, true                         ; 2 uses
  %. = zext i1 %not. to i32
  %i.c = load i32, ptr %1, align 8, !tbaa !36
  %i.d = icmp sgt i32 %i.c, %.
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = zext i1 %not. to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %NodePtrVec_push.exit
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %NodePtrVec_push.exit ] ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38   ; 3 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.m = load i32, ptr %i.f, align 4, !tbaa !32
  %i.n = icmp eq i32 %i.l, %i.m
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !37   ; 2 uses
  br i1 %i.n, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.p = shl nsw i32 %i.l, 1                      ; 3 uses
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call ptr @realloc(ptr noundef %i.o, i64 noundef %i.r) #15 ; 3 uses
  store ptr %i.s, ptr %i.g, align 8, !tbaa !37
  %.not22.i = icmp eq ptr %i.s, null
  br i1 %.not22.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.p, ptr %i.f, align 4, !tbaa !32
  %.pre24.i = load i32, ptr %0, align 8, !tbaa !36
  br label %._crit_edge.i

bb.f:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.k, align 8, !tbaa !46
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.p, i32 noundef %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 2 uses
  %.not23.i = icmp eq ptr %i.w, null
  br i1 %.not23.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %i.w) ; 0 uses
  br label %NodePtrVec_push.exit

bb.h:                                             ; preds = %bb.f
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %NodePtrVec_push.exit

._crit_edge.i:                                    ; preds = %bb.e, %bb.c
  %i.y = phi i32 [ %.pre24.i, %bb.e ], [ %i.l, %bb.c ]
  %i.z = phi ptr [ %i.s, %bb.e ], [ %i.o, %bb.c ]
  %i.aa = sext i32 %i.l to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa
  store ptr %i.k, ptr %i.ab, align 8, !tbaa !38
  %i.ac = add nsw i32 %i.y, 1
  store i32 %i.ac, ptr %0, align 8, !tbaa !36
  br label %NodePtrVec_push.exit

NodePtrVec_push.exit:                             ; preds = %bb.g, %bb.h, %._crit_edge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %1, align 8, !tbaa !36
  %i.ae = trunc nuw i64 %indvars.iv.next to i32
  %i.af = icmp sgt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %NodePtrVec_push.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @NodeVecVec_new(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = shl nsw i64 %i.a, 3
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #13 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.e = tail call i32 @fflush(ptr noundef %i.d)  ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 5 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #14
  %puts13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !14
  %i.h = tail call i32 @fflush(ptr noundef %i.g)  ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %0, ptr %i.i, align 4, !tbaa !54
  store i32 0, ptr %i.f, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.f, %bb.e ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @NodeVecVec_delete(ptr noundef captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %NodePtrVec_delete.exit
  %i.d = phi i32 [ %i.a, %.lr.ph ], [ %i.j, %NodePtrVec_delete.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %NodePtrVec_delete.exit ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %NodePtrVec_delete.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37   ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.i) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @free(ptr noundef nonnull %i.g) #14
  %.pre = load i32, ptr %0, align 8, !tbaa !57
  br label %NodePtrVec_delete.exit

NodePtrVec_delete.exit:                           ; preds = %bb.b, %bb.e
  %i.j = phi i32 [ %i.d, %bb.b ], [ %.pre, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %bb.b, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %NodePtrVec_delete.exit, %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %.not10 = icmp eq ptr %i.n, null
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.n) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  tail call void @free(ptr noundef nonnull %0) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @NodeVecVec_insert(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %NodePtrVec_copy.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #13 ; 10 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %.not.i20.i = icmp eq ptr %i.d, null
  br i1 %.not.i20.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts.i24.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %NodePtrVec_copy.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 5 uses
  %.not12.i21.i = icmp eq ptr %i.f, null
  br i1 %.not12.i21.i, label %bb.e, label %NodePtrVec_new.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.d) #14
  %puts13.i23.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %NodePtrVec_copy.exit.thread

NodePtrVec_new.exit.i:                            ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.a, ptr %i.g, align 4, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.h, align 8, !tbaa !37
  %i.i = load i32, ptr %1, align 8, !tbaa !36     ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %NodePtrVec_copy.exit

.lr.ph.i:                                         ; preds = %NodePtrVec_new.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 7 uses
  %wide.trip.count.i = zext nneg i32 %i.i to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.i, 6
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sub i64 %i.e, %i.m
  %diff.check = icmp ult i64 %i.n, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x ptr>, ptr %i.o, align 8, !tbaa !38
  %wide.load36 = load <2 x ptr>, ptr %i.p, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x ptr> %wide.load, ptr %i.q, align 8, !tbaa !38
  store <2 x ptr> %wide.load36, ptr %i.r, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %NodePtrVec_copy.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.prol
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i.prol
  store ptr %i.u, ptr %i.v, align 8, !tbaa !38
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !63

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.w = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %NodePtrVec_copy.exit, label %scalar.ph

end_hunk_1
