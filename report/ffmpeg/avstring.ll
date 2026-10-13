Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avstring?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
begin_hunk_0_@av_get_token:bb.a
  %.146 = phi ptr [ %i.q, %bb.f ], [ %.04564, %bb.c ] ; 4 uses
  %.1 = phi ptr [ %i.p, %bb.f ], [ %i.k, %bb.c ]  ; 3 uses
  %i.o = load i8, ptr %.1, align 1, !tbaa !13     ; 3 uses
  switch i8 %i.o, label %bb.f [
    i8 0, label %.critedge2
    i8 39, label %.critedge2
  ]

bb.f:                                             ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %.146, i64 1
  store i8 %i.o, ptr %.146, align 1, !tbaa !13
  br label %.preheader, !llvm.loop !23

.critedge2:                                       ; preds = %.preheader, %.preheader
  %.not60 = icmp ne i8 %i.o, 0                    ; 2 uses
  %spec.select = select i1 %.not60, ptr %.146, ptr %.04365
  %spec.select61.idx = zext i1 %.not60 to i64
  %spec.select61 = getelementptr inbounds nuw i8, ptr %.1, i64 %spec.select61.idx
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.04564, i64 1
  store i8 %i.i, ptr %.04564, align 1, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.critedge2, %bb.g, %bb.e
  %.247 = phi ptr [ %i.n, %bb.e ], [ %i.r, %bb.g ], [ %.146, %.critedge2 ] ; 2 uses
  %.144 = phi ptr [ %i.n, %bb.e ], [ %.04365, %bb.g ], [ %spec.select, %.critedge2 ] ; 2 uses
  %.2 = phi ptr [ %i.m, %bb.e ], [ %i.k, %bb.g ], [ %spec.select61, %.critedge2 ] ; 3 uses
  %i.s = load i8, ptr %.2, align 1, !tbaa !13     ; 2 uses
  %.not52 = icmp eq i8 %i.s, 0
  br i1 %.not52, label %.critedge, label %.lr.ph, !llvm.loop !24

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.b
  %.045.lcssa = phi ptr [ %i.d, %bb.b ], [ %.247, %bb.h ], [ %.04564, %.lr.ph ]
  %.043.lcssa = phi ptr [ %i.d, %bb.b ], [ %.144, %bb.h ], [ %.04365, %.lr.ph ]
  %.042.lcssa = phi ptr [ %i.g, %bb.b ], [ %.2, %bb.h ], [ %.04266, %.lr.ph ]
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.critedge
  %.3 = phi ptr [ %.045.lcssa, %.critedge ], [ %i.t, %bb.j ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.3, i64 -1 ; 4 uses
  store i8 0, ptr %.3, align 1, !tbaa !13
  %.not54 = icmp ult ptr %i.t, %.043.lcssa
  br i1 %.not54, label %.critedge4, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i64 @strspn(ptr noundef nonnull %i.t, ptr noundef nonnull @.str) #16
  %.not55 = icmp eq i64 %i.u, 0
  br i1 %.not55, label %.critedge4, label %bb.i, !llvm.loop !25

.critedge4:                                       ; preds = %bb.i, %bb.j
  store ptr %.042.lcssa, ptr %0, align 8, !tbaa !17
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.d to i64
  %reass.sub = sub i64 %i.v, %i.w
  %i.x = add i64 %reass.sub, 2
  %i.y = tail call ptr @av_realloc(ptr noundef nonnull %i.d, i64 noundef %i.x) #17 ; 2 uses
  %.not56 = icmp eq ptr %i.y, null
  %i.z = select i1 %.not56, ptr %i.d, ptr %i.y
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.critedge4
  %.0 = phi ptr [ %i.z, %.critedge4 ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @av_realloc(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @av_strtok(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %.not21 = icmp eq ptr %i.a, null
  br i1 %.not21, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.018 = phi ptr [ %0, %bb.a ], [ %i.a, %bb.b ]  ; 2 uses
  %i.b = tail call i64 @strspn(ptr noundef nonnull %.018, ptr noundef %1) #16
  %i.c = getelementptr inbounds nuw i8, ptr %.018, i64 %i.b ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %.not22 = icmp eq i8 %i.d, 0
  br i1 %.not22, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.f = tail call i64 @strcspn(ptr noundef nonnull %i.e, ptr noundef %1) #16
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %.not23 = icmp eq i8 %i.h, 0
  br i1 %.not23, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.g, align 1, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.c
  %storemerge.sink = phi ptr [ null, %bb.c ], [ %i.i, %bb.e ], [ null, %bb.d ]
  %.0.ph = phi ptr [ null, %bb.c ], [ %i.c, %bb.e ], [ %i.c, %bb.d ]
  store ptr %storemerge.sink, ptr %2, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -255, 256) i32 @av_strcasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06 = phi ptr [ %0, %bb.a ], [ %i.a, %bb.b ]   ; 2 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.f, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.06, i64 1
  %i.b = load i8, ptr %.06, align 1, !tbaa !13
  %i.c = sext i8 %i.b to i32                      ; 3 uses
  %i.d = add nsw i32 %i.c, -65
  %or.cond.i = icmp ult i32 %i.d, 26
  %i.e = or disjoint i32 %i.c, 32
  %spec.select.i = select i1 %or.cond.i, i32 %i.e, i32 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.g = load i8, ptr %.0, align 1, !tbaa !13
  %i.h = sext i8 %i.g to i32                      ; 3 uses
  %i.i = add nsw i32 %i.h, -65
  %or.cond.i7 = icmp ult i32 %i.i, 26
  %i.j = or disjoint i32 %i.h, 32
  %spec.select.i8 = select i1 %or.cond.i7, i32 %i.j, i32 %i.h
  %i.k = and i32 %spec.select.i, 255              ; 3 uses
  %i.l = icmp ne i32 %i.k, 0
  %i.m = and i32 %spec.select.i8, 255             ; 2 uses
  %i.n = icmp eq i32 %i.k, %i.m
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %bb.b, label %bb.c, !llvm.loop !26

bb.c:                                             ; preds = %bb.b
  %i.p = sub nsw i32 %i.k, %i.m
  ret i32 %i.p
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -255, 256) i32 @av_strncasecmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.012 = phi ptr [ %i.o, %.preheader ], [ %0, %bb.a ] ; 2 uses
  %.011 = phi ptr [ %i.n, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %.0 = phi i64 [ %i.j, %.preheader ], [ %2, %bb.a ]
  %i.b = load i8, ptr %.012, align 1, !tbaa !13
  %i.c = sext i8 %i.b to i32                      ; 3 uses
  %i.d = add nsw i32 %i.c, -65
  %or.cond.i = icmp ult i32 %i.d, 26
  %i.e = or disjoint i32 %i.c, 32
  %spec.select.i = select i1 %or.cond.i, i32 %i.e, i32 %i.c
  %i.f = load i8, ptr %.011, align 1, !tbaa !13
  %i.g = sext i8 %i.f to i32                      ; 3 uses
  %i.h = add nsw i32 %i.g, -65
  %or.cond.i21 = icmp ult i32 %i.h, 26
  %i.i = or disjoint i32 %i.g, 32
  %spec.select.i22 = select i1 %or.cond.i21, i32 %i.i, i32 %i.g
  %i.j = add i64 %.0, -1                          ; 2 uses
  %i.k = icmp ne i64 %i.j, 0
  %i.l = and i32 %spec.select.i, 255              ; 3 uses
  %i.m = icmp ne i32 %i.l, 0
  %or.cond = select i1 %i.k, i1 %i.m, i1 false
  %i.n = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %.012, i64 1
  %i.p = and i32 %spec.select.i22, 255            ; 2 uses
  %i.q = icmp eq i32 %i.l, %i.p
  %or.cond20 = select i1 %or.cond, i1 %i.q, i1 false
  br i1 %or.cond20, label %.preheader, label %.critedge, !llvm.loop !3

.critedge:                                        ; preds = %.preheader
  %i.r = sub nsw i32 %i.l, %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge
  %.013 = phi i32 [ %i.r, %.critedge ], [ 0, %bb.a ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define ptr @av_strireplace(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.AVBPrint, align 8           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @av_bprint_init(ptr noundef nonnull %3, i32 noundef 1, i32 noundef -1) #17
  %i.d = trunc i64 %i.b to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.x, %bb.e ]    ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !13      ; 2 uses
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %av_stristr.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.d
  %.07.i = phi ptr [ %i.r, %bb.d ], [ %.0, %bb.b ] ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.preheader.i
  %i.f = phi i8 [ %i.q, %bb.c ], [ %i.e, %.preheader.i ]
  %.024.i.i = phi ptr [ %i.p, %bb.c ], [ %.07.i, %.preheader.i ] ; 2 uses
  %.01123.i.i = phi ptr [ %i.o, %bb.c ], [ %1, %.preheader.i ]
  %i.g = sext i8 %i.f to i32                      ; 3 uses
  %i.h = add nsw i32 %i.g, -97
  %or.cond.i.i.i = icmp ult i32 %i.h, 26
  %i.i = and i32 %i.g, 95
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i32 %i.i, i32 %i.g
  %i.j = load i8, ptr %.024.i.i, align 1, !tbaa !13
  %i.k = sext i8 %i.j to i32                      ; 3 uses
  %i.l = add nsw i32 %i.k, -97
  %or.cond.i15.i.i = icmp ult i32 %i.l, 26
  %i.m = and i32 %i.k, 95
  %spec.select.i16.i.i = select i1 %or.cond.i15.i.i, i32 %i.m, i32 %i.k
  %i.n = icmp eq i32 %spec.select.i.i.i, %spec.select.i16.i.i
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.01123.i.i, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 1
  %i.q = load i8, ptr %i.o, align 1, !tbaa !13    ; 2 uses
  %.not.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i, label %av_stristr.exit, label %.lr.ph.i.i, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.s = load i8, ptr %.07.i, align 1, !tbaa !13
  %.not9.i = icmp eq i8 %i.s, 0
  br i1 %.not9.i, label %av_stristr.exit.thread, label %.preheader.i, !llvm.loop !1

av_stristr.exit:                                  ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %.0, %bb.b ], [ %.07.i, %bb.c ] ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %av_stristr.exit.thread, label %bb.e

bb.e:                                             ; preds = %av_stristr.exit
  %i.t = ptrtoint ptr %.0.i to i64
  %i.u = ptrtoint ptr %.0 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  call void @av_bprint_append_data(ptr noundef nonnull %3, ptr noundef %.0, i32 noundef %i.w) #17
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.c
  call void @av_bprint_append_data(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef %i.d) #17
  br label %bb.b, !llvm.loop !27

av_stristr.exit.thread:                           ; preds = %av_stristr.exit, %bb.d
  %i.y = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #16
  %i.z = trunc i64 %i.y to i32
  call void @av_bprint_append_data(ptr noundef nonnull %3, ptr noundef nonnull %.0, i32 noundef %i.z) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val = load i32, ptr %i.aa, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.val15 = load i32, ptr %i.ab, align 4, !tbaa !20
  %.not18 = icmp ult i32 %.val, %.val15
  br i1 %.not18, label %6, label %4

4:                                                ; preds = %av_stristr.exit.thread
  %5 = call i32 @av_bprint_finalize(ptr noundef nonnull %3, ptr noundef null) #17 ; 0 uses
  br label %8

6:                                                ; preds = %av_stristr.exit.thread
  %7 = call i32 @av_bprint_finalize(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #17 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %.pre, %6 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %9
}

declare void @av_bprint_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare void @av_bprint_append_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @av_bprint_finalize(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @av_basename(ptr nofree noundef readonly %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !13
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #16 ; 2 uses
  %.not9 = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %spec.select = select i1 %.not9, ptr %0, ptr %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ @.str.1, %bb.a ], [ %spec.select, %bb.c ], [ @.str.1, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @av_dirname(ptr nofree noundef %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #16 ; 2 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !13
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %0, %bb.c ], [ @.str.1, %bb.b ], [ @.str.1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noalias ptr @av_append_path_component(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @av_strdup(ptr noundef %1) #17
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %.not41 = icmp eq ptr %1, null
  br i1 %.not41, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = tail call noalias ptr @av_strdup(ptr noundef nonnull %0) #17
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16 ; 8 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 6 uses
  %i.e = xor i64 %i.d, -1
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = add i64 %i.d, %i.c                       ; 2 uses
  %i.h = icmp ugt i64 %i.g, -3
  br i1 %i.h, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = add nuw i64 %i.g, 2
  %i.j = tail call noalias ptr @av_malloc(i64 noundef %i.i) #17 ; 6 uses
  %.not42 = icmp eq ptr %i.j, null
  br i1 %.not42, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not43 = icmp eq i64 %i.c, 0
  br i1 %.not43, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = add i64 %i.c, 1                          ; 3 uses
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %i.m = phi i64 [ %i.q, %bb.j ], [ 1, %bb.i ]    ; 3 uses
  %.0914.i = phi ptr [ %i.p, %bb.j ], [ %i.j, %bb.i ] ; 3 uses
  %.01013.i = phi ptr [ %i.o, %bb.j ], [ %0, %bb.i ] ; 2 uses
  %i.n = load i8, ptr %.01013.i, align 1, !tbaa !13 ; 2 uses
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.01013.i, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %.0914.i, i64 1 ; 2 uses
  store i8 %i.n, ptr %.0914.i, align 1, !tbaa !13
  %i.q = add nuw i64 %i.m, 1
  %exitcond.not.i = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.lr.ph.i, !llvm.loop !2

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.i
  %.09.lcssa.i = phi ptr [ %i.j, %bb.i ], [ %.0914.i, %.lr.ph.i ]
  %.lcssa.i = phi i64 [ 1, %bb.i ], [ %i.m, %.lr.ph.i ]
  %.not12.i = icmp ugt i64 %.lcssa.i, %i.k
  br i1 %.not12.i, label %av_strlcpy.exit, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.j, %.critedge.i
  %.09.lcssa33.i = phi ptr [ %.09.lcssa.i, %.critedge.i ], [ %i.p, %bb.j ]
  store i8 0, ptr %.09.lcssa33.i, align 1, !tbaa !13
  br label %av_strlcpy.exit

av_strlcpy.exit:                                  ; preds = %.critedge.i, %.critedge.thread.i
  %.not44 = icmp eq i64 %i.d, 0
  %i.r = getelementptr i8, ptr %i.j, i64 %i.c     ; 4 uses
  br i1 %.not44, label %.critedge.thread.i53, label %bb.k

bb.k:                                             ; preds = %av_strlcpy.exit
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %.not45 = icmp eq i8 %i.t, 47
  %i.u = load i8, ptr %1, align 1, !tbaa !13
  %i.v = icmp eq i8 %i.u, 47                      ; 2 uses
  br i1 %.not45, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.v, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 47, ptr %i.r, align 1, !tbaa !13
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.w = sext i1 %i.v to i64
  %spec.select = add i64 %i.c, %i.w
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m, %bb.h
  %.0 = phi i64 [ %i.k, %bb.m ], [ 0, %bb.h ], [ %spec.select, %bb.n ], [ %i.c, %bb.l ]
  %i.x = getelementptr i8, ptr %i.j, i64 %.0      ; 5 uses
  %i.y = add i64 %i.d, 1                          ; 2 uses
  %i.z = icmp ugt i64 %i.y, 1
  br i1 %i.z, label %.lr.ph.i60, label %.critedge.i47

.lr.ph.i60:                                       ; preds = %bb.o, %bb.p
  %i.aa = phi i64 [ %i.ae, %bb.p ], [ 1, %bb.o ]  ; 3 uses
  %.0914.i62 = phi ptr [ %i.ad, %bb.p ], [ %i.x, %bb.o ] ; 3 uses
  %.01013.i63 = phi ptr [ %i.ac, %bb.p ], [ %1, %bb.o ] ; 2 uses
  %i.ab = load i8, ptr %.01013.i63, align 1, !tbaa !13 ; 2 uses
  %.not.i64 = icmp eq i8 %i.ab, 0
  br i1 %.not.i64, label %.critedge.i47, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i60
  %i.ac = getelementptr inbounds nuw i8, ptr %.01013.i63, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.0914.i62, i64 1 ; 2 uses
  store i8 %i.ab, ptr %.0914.i62, align 1, !tbaa !13
  %i.ae = add nuw i64 %i.aa, 1
  %exitcond.not.i65 = icmp eq i64 %i.aa, %i.d
  br i1 %exitcond.not.i65, label %.critedge.thread.i53, label %.lr.ph.i60, !llvm.loop !2

.critedge.i47:                                    ; preds = %.lr.ph.i60, %bb.o
  %.09.lcssa.i49 = phi ptr [ %i.x, %bb.o ], [ %.0914.i62, %.lr.ph.i60 ]
  %.lcssa.i51 = phi i64 [ 1, %bb.o ], [ %i.aa, %.lr.ph.i60 ]
  %.not12.i52 = icmp ugt i64 %.lcssa.i51, %i.y
  br i1 %.not12.i52, label %av_strlcpy.exit66, label %.critedge.thread.i53

.critedge.thread.i53:                             ; preds = %bb.p, %av_strlcpy.exit, %.critedge.i47
  %i.af = phi ptr [ %i.x, %.critedge.i47 ], [ %i.r, %av_strlcpy.exit ], [ %i.x, %bb.p ]
  %.09.lcssa33.i55 = phi ptr [ %.09.lcssa.i49, %.critedge.i47 ], [ %i.r, %av_strlcpy.exit ], [ %i.ad, %bb.p ]
  store i8 0, ptr %.09.lcssa33.i55, align 1, !tbaa !13
  br label %av_strlcpy.exit66

av_strlcpy.exit66:                                ; preds = %.critedge.i47, %.critedge.thread.i53
  %i.ag = phi ptr [ %i.af, %.critedge.thread.i53 ], [ %i.x, %.critedge.i47 ]
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.d
  store i8 0, ptr %i.ah, align 1, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %av_strlcpy.exit66, %bb.e, %bb.f, %bb.d, %bb.b
  %.035 = phi ptr [ %i.a, %bb.b ], [ null, %bb.e ], [ %i.b, %bb.d ], [ null, %bb.f ], [ %i.j, %av_strlcpy.exit66 ], [ null, %bb.g ]
  ret ptr %.035
}

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
end_hunk_0
