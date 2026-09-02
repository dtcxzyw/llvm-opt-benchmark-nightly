Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlnRtl?download=true
inline.NumInlined: 39
inline.NumDeleted: 10
begin_hunk_0_@malloc

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Rtl_NtkCleanFile2(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.1) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %0) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @fopen(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.6) ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(1000000) ptr @malloc(i64 noundef 1000000) #12 ; 6 uses
  %i.i = tail call ptr @fgets(ptr noundef %i.h, i32 noundef 1000000, ptr noundef nonnull %i.a)
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %i.j = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.7) #13
  %.not19 = icmp eq ptr %i.j, null
  br i1 %.not19, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.k = tail call i32 @fputs(ptr noundef nonnull %i.h, ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.l = tail call ptr @fgets(ptr noundef nonnull %i.h, i32 noundef 1000000, ptr noundef nonnull %i.a)
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.e
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %bb.h, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  tail call void @free(ptr noundef nonnull %i.h) #14
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.n = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Wln_GetYosysName() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Abc_FrameReadFlag(ptr noundef nonnull @.str.10) #14
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @Abc_FrameReadFlag(ptr noundef nonnull @.str.10) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @Abc_FrameReadFlag(ptr noundef nonnull @.str.11) #14
  %.not2 = icmp eq ptr %i.c, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @Abc_FrameReadFlag(ptr noundef nonnull @.str.11) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.d, %bb.d ], [ @.str.9, %bb.c ]
  ret ptr %.0
}

declare ptr @Abc_FrameReadFlag(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Wln_YosysBuildDefines(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val30 = load i32, ptr %i.b, align 4, !tbaa !13 ; 5 uses
  %i.c = icmp eq i32 %.val30, 0
  br i1 %i.c, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = icmp sgt i32 %.val30, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val32 = load ptr, ptr %i.e, align 8, !tbaa !14
  %wide.trip.count = zext nneg i32 %.val30 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.034 = phi i32 [ 1, %.lr.ph ], [ %i.k, %bb.c ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val32, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #13
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %.034, 4
  %i.k = add i32 %i.j, %i.i                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !30

.critedge:                                        ; preds = %.preheader
  %i.l = tail call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #12 ; 2 uses
  store i8 0, ptr %i.l, align 1, !tbaa !16
  br label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %i.k to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #12 ; 11 uses
  store i8 0, ptr %i.n, align 1, !tbaa !16
  %i.o = getelementptr i8, ptr %0, i64 8
  %.val31 = load ptr, ptr %i.o, align 8, !tbaa !14 ; 2 uses
  %wide.trip.count41 = zext nneg i32 %.val30 to i64
  %i.p = load ptr, ptr %.val31, align 8, !tbaa !15
  %strlen27.peel = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %endptr28.peel = getelementptr inbounds i8, ptr %i.n, i64 %strlen27.peel
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr28.peel, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  %i.q = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(1) %i.p) #14 ; 0 uses
  %exitcond42.peel.not = icmp eq i32 %.val30, 1
  br i1 %exitcond42.peel.not, label %.critedge2, label %.peel.next

.peel.next:                                       ; preds = %bb.d, %.peel.next
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %.peel.next ], [ 1, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val31, i64 %indvars.iv38
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %endptr = getelementptr inbounds i8, ptr %i.n, i64 %strlen
  store i16 32, ptr %endptr, align 1
  %strlen27 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %endptr28 = getelementptr inbounds i8, ptr %i.n, i64 %strlen27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr28, ptr noundef nonnull align 1 dereferenceable(3) @.str.13, i64 3, i1 false)
  %i.t = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(1) %i.s) #14 ; 0 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %.critedge2, label %.peel.next, !llvm.loop !31

.critedge2:                                       ; preds = %.peel.next, %bb.d, %.critedge, %bb.a, %bb.b
  %.025 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.l, %.critedge ], [ %i.n, %bb.d ], [ %i.n, %.peel.next ]
  ret ptr %.025
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Wln_YosysBuildBoxCommands(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.a = select i1 %.not, ptr @.str.15, ptr @.str.14
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val30 = load i32, ptr %i.c, align 4, !tbaa !13 ; 4 uses
  %i.d = icmp eq i32 %.val30, 0
  br i1 %i.d, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = icmp sgt i32 %.val30, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val32 = load ptr, ptr %i.f, align 8, !tbaa !14
  %2 = select i1 %.not, i32 11, i32 18
  %wide.trip.count = zext nneg i32 %.val30 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.034 = phi i32 [ 1, %.lr.ph ], [ %i.l, %bb.c ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val32, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #13
  %i.j = trunc i64 %i.i to i32
  %i.k = add i32 %2, %.034
  %i.l = add i32 %i.k, %i.j                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph36, label %bb.c, !llvm.loop !32

.critedge:                                        ; preds = %.preheader
  %i.m = tail call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #12 ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !16
  br label %.critedge2

.lr.ph36:                                         ; preds = %bb.c
  %i.n = sext i32 %i.l to i64
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #12 ; 6 uses
  store i8 0, ptr %i.o, align 1, !tbaa !16
  %i.p = getelementptr i8, ptr %0, i64 8
  %.val31 = load ptr, ptr %i.p, align 8, !tbaa !14
  %wide.trip.count41 = zext nneg i32 %.val30 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph36, %bb.d
  %indvars.iv38 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next39, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val31, i64 %indvars.iv38
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.a) #14 ; 0 uses
  %i.t = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.r) #14 ; 0 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.o)
  %endptr = getelementptr inbounds i8, ptr %i.o, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %.critedge2, label %bb.d, !llvm.loop !33

.critedge2:                                       ; preds = %bb.d, %.critedge, %bb.a, %bb.b
  %.027 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.m, %.critedge ], [ %i.o, %bb.d ]
  ret ptr %.027
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Wln_YosysBuildInstCommands(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 4
  %.val31 = load i32, ptr %i.b, align 4, !tbaa !13 ; 4 uses
  %i.c = icmp eq i32 %.val31, 0
  br i1 %i.c, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = icmp sgt i32 %.val31, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val33 = load ptr, ptr %i.e, align 8, !tbaa !14
  %wide.trip.count = zext nneg i32 %.val31 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.035 = phi i32 [ 1, %.lr.ph ], [ %i.k, %bb.c ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val33, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #13
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %.035, 18
  %i.k = add i32 %i.j, %i.i                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph37, label %bb.c, !llvm.loop !34

.critedge:                                        ; preds = %.preheader
  %i.l = tail call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #12 ; 2 uses
  store i8 0, ptr %i.l, align 1, !tbaa !16
  br label %.critedge2

.lr.ph37:                                         ; preds = %bb.c
  %i.m = sext i32 %i.k to i64
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #12 ; 7 uses
  store i8 0, ptr %i.n, align 1, !tbaa !16
  %i.o = getelementptr i8, ptr %0, i64 8
  %.val32 = load ptr, ptr %i.o, align 8, !tbaa !14
  %wide.trip.count42 = zext nneg i32 %.val31 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph37, %bb.d
  %indvars.iv39 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next40, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val32, i64 %indvars.iv39
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %endptr = getelementptr inbounds i8, ptr %i.n, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %endptr, ptr noundef nonnull align 1 dereferenceable(17) @.str.17, i64 17, i1 false)
  %i.r = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(1) %i.q) #14 ; 0 uses
  %strlen28 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %endptr29 = getelementptr inbounds i8, ptr %i.n, i64 %strlen28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr29, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %.critedge2, label %bb.d, !llvm.loop !35

.critedge2:                                       ; preds = %bb.d, %.critedge, %bb.a, %bb.b
  %.026 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.l, %.critedge ], [ %i.n, %bb.d ]
  ret ptr %.026
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @Wln_ConvertToRtl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @system(ptr noundef %0) #14
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.18, ptr noundef %0) #14 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.19) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !19
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.20, ptr noundef %1) #14 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree
declare noundef i32 @system(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @Wln_ReadSystemVerilog(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader.i, label %.split

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Wln_FileNamesHasSv.exit, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.47) #13
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %Wln_FileNamesHasSv.exit

Wln_FileNamesHasSv.exit:                          ; preds = %bb.b, %.lr.ph.i
  %.05.i = phi i32 [ 1, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = icmp eq i32 %1, 1
  br i1 %i.e, label %bb.c, label %.split

.split:                                           ; preds = %bb.a, %Wln_FileNamesHasSv.exit
  %.05.i75 = phi i32 [ %.05.i, %Wln_FileNamesHasSv.exit ], [ 0, %bb.a ]
  %i.f = tail call fastcc ptr @Wln_FileNamesJoin(ptr noundef %0, i32 noundef %1)
  br label %bb.e

bb.c:                                             ; preds = %Wln_FileNamesHasSv.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.h = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.22) #13
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.lr.ph.i63.preheader, label %bb.d

.lr.ph.i63.preheader:                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #13
  %i.j = shl i64 %i.i, 32
  %sext83 = add i64 %i.j, 8589934592
  %i.k = ashr exact i64 %sext83, 32
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #12 ; 3 uses
  store i8 0, ptr %i.l, align 1, !tbaa !16
  %i.m = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.g) #14 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @Rtl_LibReadFile(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #14
  br label %bb.ac

bb.e:                                             ; preds = %.lr.ph.i63.preheader, %.split
  %.05.i74 = phi i32 [ %.05.i75, %.split ], [ %.05.i, %.lr.ph.i63.preheader ]
  %phi.call = phi ptr [ %i.f, %.split ], [ %i.l, %.lr.ph.i63.preheader ] ; 4 uses
  %i.o = tail call ptr @Wln_YosysBuildDefines(ptr noundef %3) ; 5 uses
end_hunk_0
