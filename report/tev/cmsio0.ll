Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsio0?download=true
inline.NumInlined: 52
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@cmsOpenIOhandlerFromMem:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr @MemoryRead, ptr %i.v, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr @MemorySeek, ptr %i.w, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store ptr @MemoryClose, ptr %i.x, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr @MemoryTell, ptr %i.y, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store ptr @MemoryWrite, ptr %i.z, align 8, !tbaa !25
  br label %bb.p

bb.o:                                             ; preds = %bb.e, %bb.k
  %.1 = phi ptr [ %i.k, %bb.k ], [ %i.d, %bb.e ]
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %.1) #18
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.c, %bb.o
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %i.a) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %.thread, %bb.n, %bb.m, %bb.g
  %.057 = phi ptr [ %i.a, %bb.n ], [ null, %bb.m ], [ null, %.thread ], [ null, %bb.g ], [ null, %bb.a ]
  ret ptr %.057
}

declare void @cmsSignalError(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @_cmsMalloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @MemoryRead(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.b = mul i32 %3, %2                           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33   ; 3 uses
  %i.e = add i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = icmp ugt i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub i32 %i.g, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %i.k, i32 noundef 5, ptr noundef nonnull @.str.24, i32 noundef %i.i, i32 noundef %i.b) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.m = zext i32 %i.d to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = zext i32 %i.b to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.n, i64 %i.o, i1 false)
  %i.p = load i32, ptr %i.c, align 4, !tbaa !33
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.c, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %3, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @MemorySeek(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !32
  %i.d = icmp ugt i32 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %i.f, i32 noundef 6, ptr noundef nonnull @.str.25) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %1, ptr %i.g, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @MemoryClose(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !31
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  tail call void @_cmsFree(ptr noundef %i.f, ptr noundef nonnull %i.d) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  tail call void @_cmsFree(ptr noundef %i.h, ptr noundef nonnull %i.a) #18
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !19
  tail call void @_cmsFree(ptr noundef %i.i, ptr noundef nonnull %0) #18
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @MemoryTell(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @MemoryWrite(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33   ; 3 uses
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = icmp ugt i32 %i.e, %i.g
  %i.i = sub i32 %i.g, %i.d
  %spec.select = select i1 %i.h, i32 %i.i, i32 %1 ; 3 uses
  %i.j = icmp eq i32 %spec.select, 0
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.l = zext i32 %i.d to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = zext i32 %spec.select to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %2, i64 %i.n, i1 false)
  %i.o = load i32, ptr %i.c, align 4, !tbaa !33
  %i.p = add i32 %i.o, %spec.select               ; 3 uses
  store i32 %i.p, ptr %i.c, align 4, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26
  %i.s = icmp ugt i32 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.p, ptr %i.q, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @cmsOpenIOhandlerFromFile(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4
  %i.b = tail call ptr @_cmsMallocZero(ptr noundef %0, i32 noundef 320) #18 ; 19 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %i.f = phi i8 [ %i.o, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.g = phi i8 [ %i.p, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.h = phi i8 [ %i.q, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %.052 = phi ptr [ %i.r, %bb.f ], [ %2, %.preheader ] ; 4 uses
  %3 = phi i8 [ %4, %bb.f ], [ 0, %.preheader ]   ; 3 uses
  %i.i = load i8, ptr %.052, align 1, !tbaa !27   ; 4 uses
  switch i8 %i.i, label %bb.e [
    i8 0, label %bb.g
    i8 114, label %bb.c
    i8 119, label %bb.c
    i8 101, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.j = icmp eq i8 %3, 0
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %i.b) #18
  %i.k = load i8, ptr %.052, align 1, !tbaa !27
  %i.l = sext i8 %i.k to i32
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %i.l) #18
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %i.b) #18
  %i.m = load i8, ptr %.052, align 1, !tbaa !27
  %i.n = sext i8 %i.m to i32
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %i.n) #18
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.o = phi i8 [ 98, %bb.c ], [ %i.f, %bb.b ]
  %i.p = phi i8 [ %i.g, %bb.c ], [ %i.i, %bb.b ]
  %i.q = phi i8 [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  %4 = phi i8 [ %i.i, %bb.c ], [ %3, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %.052, i64 1
  br label %bb.b, !llvm.loop !93

bb.g:                                             ; preds = %bb.b
  store i8 %i.g, ptr %i.d, align 2
  store i8 %i.f, ptr %i.e, align 1
  store i8 %i.h, ptr %i.a, align 4
  switch i8 %3, label %bb.n [
    i8 114, label %bb.h
    i8 119, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull %i.a) ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %i.b) #18
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef %1) #18
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.u = tail call i64 @cmsfilelength(ptr noundef nonnull %i.s) #18
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.x = tail call i32 @fclose(ptr noundef nonnull %i.s) ; 0 uses
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %i.b) #18
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef %1) #18
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.y = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull %i.a) ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %i.b) #18
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef %1) #18
  br label %bb.p

bb.n:                                             ; preds = %bb.g
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %i.b) #18
  br label %bb.p

bb.o:                                             ; preds = %bb.l, %bb.j
  %.sink = phi i32 [ %i.v, %bb.j ], [ 0, %bb.l ]
  %.0 = phi ptr [ %i.s, %bb.j ], [ %i.y, %bb.l ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %.sink, ptr %i.aa, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.ab, align 8, !tbaa !19
  store ptr %.0, ptr %i.b, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 255) #18 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 279
  store i8 0, ptr %i.af, align 1, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  store ptr @FileRead, ptr %i.ag, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store ptr @FileSeek, ptr %i.ah, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store ptr @FileClose, ptr %i.ai, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store ptr @FileTell, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  store ptr @FileWrite, ptr %i.ak, align 8, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.n, %bb.m, %bb.k, %bb.i, %bb.e, %bb.d
  %.053 = phi ptr [ null, %bb.m ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.n ], [ null, %bb.i ], [ null, %bb.k ], [ %i.b, %bb.o ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.053
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

declare i64 @cmsfilelength(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal noundef i32 @FileRead(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = zext i32 %3 to i64
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  %i.d = tail call i64 @fread(ptr noundef %1, i64 noundef %i.a, i64 noundef %i.b, ptr noundef %i.c)
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %.not = icmp eq i32 %3, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = mul i32 %2, %i.e
  %i.i = mul i32 %3, %2
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef %i.h, i32 noundef %i.i) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %3, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @FileSeek(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = zext i32 %1 to i64
  %i.c = tail call i32 @fseek(ptr noundef %i.a, i64 noundef %i.b, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.27) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @FileClose(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = tail call i32 @fclose(ptr noundef %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  tail call void @_cmsFree(ptr noundef %i.d, ptr noundef nonnull %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @FileTell(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = tail call i64 @ftell(ptr noundef %i.a)   ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.28) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.b to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal range(i32 0, 2) i32 @FileWrite(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #9 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26
  %i.d = add i32 %i.c, %1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !26
  %i.e = zext i32 %1 to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !20
  %i.g = tail call i64 @fwrite(ptr noundef %2, i64 noundef %i.e, i64 noundef 1, ptr noundef %i.f)
  %i.h = icmp eq i64 %i.g, 1
  %i.i = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @cmsOpenIOhandlerFromStream(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @cmsfilelength(ptr noundef %1) #18
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
end_hunk_0
