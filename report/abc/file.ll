Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/file?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
begin_hunk_0_@kissat_file_exists:bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %1) #12
  %.not4 = icmp eq i32 %i.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i1 [ %.not4, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define noundef zeroext i1 @kissat_file_readable(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %1) #12
  %.not5 = icmp eq i32 %i.a, 0
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @access(ptr noundef nonnull %0, i32 noundef 4) #12
  %.not6 = icmp eq i32 %i.b, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %.not6, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i1 [ %.0, %bb.d ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @kissat_file_writable(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str) #13
  %.not25 = icmp eq i32 %i.a, 0
  br i1 %.not25, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1, !tbaa !8
  %.not26 = icmp eq i8 %i.b, 0
  br i1 %.not26, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.c = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #13 ; 3 uses
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.d = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %1) #12
  %.not28 = icmp eq i32 %i.d, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call ptr @__errno_location() #14
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  %i.g = icmp eq i32 %i.f, 2
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = and i32 %i.i, 61440
  %i.k = icmp eq i32 %i.j, 16384
  br i1 %i.k, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 @access(ptr noundef nonnull %0, i32 noundef 2) #12
  %.not29 = icmp eq i32 %i.l, 0
  br label %bb.r

bb.i:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %.not30 = icmp eq i8 %i.n, 0
  br i1 %.not30, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = ptrtoint ptr %i.c to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = add i64 %i.q, 1
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #15 ; 6 uses
  %.not31 = icmp eq ptr %i.s, null
  br i1 %.not31, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @strncpy(ptr noundef nonnull %i.s, ptr noundef nonnull %0, i64 noundef %i.q) #12 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.u, align 1, !tbaa !8
  %i.v = call i32 @stat(ptr noundef nonnull %i.s, ptr noundef nonnull %1) #12
  %.not32 = icmp eq i32 %i.v, 0
  br i1 %.not32, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !25
  %i.y = and i32 %i.x, 61440
  %i.z = icmp eq i32 %i.y, 16384
  br i1 %i.z, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call i32 @access(ptr noundef nonnull %i.s, i32 noundef 2) #12
  %.not33 = icmp eq i32 %i.aa, 0
  br i1 %.not33, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ab = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %1) #12
  %.not34 = icmp eq i32 %i.ab, 0
  br i1 %.not34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call ptr @__errno_location() #14
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = icmp eq i32 %i.ad, 2
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.af = tail call i32 @access(ptr noundef nonnull %0, i32 noundef 2) #12
  %.not35 = icmp eq i32 %i.af, 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k
  %i.ag = phi i1 [ false, %bb.k ], [ false, %bb.l ], [ %i.ae, %bb.o ], [ false, %bb.m ], [ %.not35, %bb.p ]
  tail call void @free(ptr noundef nonnull %i.s) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.2 = phi i1 [ false, %bb.i ], [ %.not29, %bb.h ], [ %i.g, %bb.f ], [ false, %bb.g ], [ %i.ag, %bb.q ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.r
  %.3 = phi i1 [ %.2, %bb.r ], [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define i64 @kissat_file_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #12
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i64, ptr %i.b, align 8
  %.0 = select i1 %.not, i64 %i.c, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @kissat_find_executable(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 3 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.1) #12 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #13 ; 2 uses
  %i.d = add i64 %i.c, 1
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #15 ; 5 uses
  %.not46 = icmp eq ptr %i.e, null
  br i1 %.not46, label %bb.g, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.f = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.b) #12 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.h = add i64 %i.a, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.f
  %.03555 = phi ptr [ %i.e, %.preheader.lr.ph ], [ %i.j, %bb.f ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader
  %.0 = phi ptr [ %.03555, %.preheader ], [ %i.j, %bb.c ] ; 4 uses
  %i.i = load i8, ptr %.0, align 1, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  switch i8 %i.i, label %bb.c [
    i8 0, label %.critedge
    i8 58, label %.critedge
  ], !llvm.loop !26

.critedge:                                        ; preds = %bb.c, %bb.c
  store i8 0, ptr %.0, align 1, !tbaa !8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %.03555 to i64
  %i.m = sub i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #15 ; 5 uses
  %.not51.not = icmp eq ptr %i.o, null
  br i1 %.not51.not, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.p = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %.03555, ptr noundef nonnull %0) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.q = call i32 @stat(ptr noundef nonnull readonly %i.o, ptr noundef nonnull %1) #12
  %.not5.i = icmp eq i32 %i.q, 0
  br i1 %.not5.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 @access(ptr noundef nonnull readonly %i.o, i32 noundef 4) #12
  %.not6.i = icmp eq i32 %i.r, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i1 [ false, %bb.d ], [ %.not6.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  tail call void @free(ptr noundef nonnull %i.o) #12
  %i.s = icmp eq ptr %.0, %i.g
  %.not48 = select i1 %.0.i, i1 true, i1 %i.s
  br i1 %.not48, label %.sink.split, label %.preheader, !llvm.loop !27

.sink.split:                                      ; preds = %bb.f, %.critedge
  %.5.ph = phi i1 [ false, %.critedge ], [ %.0.i, %bb.f ]
  tail call void @free(ptr noundef %i.e) #12
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.5.ph, %.sink.split ]
  ret i1 %.5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @kissat_read_already_open_file(ptr nofree noundef writeonly captures(none) initializes((0, 11), (16, 32)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.b, align 1, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 0, ptr %i.c, align 2, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @kissat_write_already_open_file(ptr nofree noundef writeonly captures(none) initializes((0, 11), (16, 32)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 0, ptr %i.c, align 2, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @kissat_open_to_read_file(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i1 @kissat_has_suffix(ptr noundef %1, ptr noundef nonnull @.str.3) #12
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @read_pipe(ptr noundef nonnull @.str.4, ptr noundef nonnull @bz2sig, ptr noundef %1) ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call zeroext i1 @kissat_has_suffix(ptr noundef %1, ptr noundef nonnull @.str.5) #12
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc ptr @read_pipe(ptr noundef nonnull @.str.6, ptr noundef nonnull @gzsig, ptr noundef %1) ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !17
  %.not70 = icmp eq ptr %i.d, null
  br i1 %.not70, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call zeroext i1 @kissat_has_suffix(ptr noundef %1, ptr noundef nonnull @.str.7) #12
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = tail call fastcc ptr @read_pipe(ptr noundef nonnull @.str.8, ptr noundef nonnull @lzmasig, ptr noundef %1) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !17
  %.not71 = icmp eq ptr %i.f, null
  br i1 %.not71, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = tail call zeroext i1 @kissat_has_suffix(ptr noundef %1, ptr noundef nonnull @.str.9) #12
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = tail call fastcc ptr @read_pipe(ptr noundef nonnull @.str.10, ptr noundef nonnull @sig7z, ptr noundef %1) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !17
  %.not72 = icmp eq ptr %i.h, null
  br i1 %.not72, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = tail call zeroext i1 @kissat_has_suffix(ptr noundef %1, ptr noundef nonnull @.str.11) #12
  br i1 %i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.j = tail call fastcc ptr @read_pipe(ptr noundef nonnull @.str.12, ptr noundef nonnull @xzsig, ptr noundef %1) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !17
  %.not73 = icmp eq ptr %i.j, null
  br i1 %.not73, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.k = tail call zeroext i1 @kissat_has_suffix(ptr noundef %1, ptr noundef nonnull @.str.13) #12
  br i1 %i.k, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.l = tail call fastcc ptr @read_pipe(ptr noundef nonnull @.str.6, ptr noundef nonnull @Zsig, ptr noundef %1) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !17
  %.not74 = icmp eq ptr %i.l, null
  br i1 %.not74, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.m = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.14) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !17
  %.not75 = icmp eq ptr %i.m, null
  br i1 %.not75, label %bb.n, label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.sink = phi i8 [ 1, %bb.l ], [ 1, %bb.j ], [ 1, %bb.h ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.m ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.o, align 1, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sink, ptr %i.p, align 2, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.q, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.r, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  %.0 = phi i1 [ false, %bb.m ], [ true, %.sink.split ]
  ret i1 %.0
}

declare zeroext i1 @kissat_has_suffix(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @read_pipe(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %kissat_file_readable.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = call i32 @stat(ptr noundef nonnull readonly %2, ptr noundef nonnull %3) #12
  %.not5.i = icmp eq i32 %i.a, 0
  br i1 %.not5.i, label %kissat_file_readable.exit, label %kissat_file_readable.exit.thread10

kissat_file_readable.exit.thread10:               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %kissat_file_readable.exit.thread

kissat_file_readable.exit:                        ; preds = %bb.b
  %i.b = tail call i32 @access(ptr noundef nonnull readonly %2, i32 noundef 4) #12
  %.not6.i = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %.not6.i, label %bb.c, label %kissat_file_readable.exit.thread

bb.c:                                             ; preds = %kissat_file_readable.exit
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull readonly %2, ptr noundef nonnull @.str.14) ; 4 uses
  %.not.i8 = icmp eq ptr %i.c, null
  br i1 %.not.i8, label %kissat_file_readable.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %bb.e
  %.015.i = phi ptr [ %i.i, %bb.e ], [ %1, %bb.d ] ; 3 uses
  %i.d = load i32, ptr %.015.i, align 4, !tbaa !9
  %.not13.i = icmp eq i32 %i.d, -1
  br i1 %.not13.i, label %match_signature.exit.thread13, label %bb.e

match_signature.exit.thread13:                    ; preds = %.preheader.i
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.f = tail call i32 @getc(ptr noundef nonnull %i.c)
  %i.g = load i32, ptr %.015.i, align 4, !tbaa !9
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  br i1 %i.h, label %.preheader.i, label %match_signature.exit, !llvm.loop !28

match_signature.exit:                             ; preds = %bb.e
  %i.j = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %kissat_file_readable.exit.thread

bb.f:                                             ; preds = %match_signature.exit.thread13, %bb.c
  %i.k = tail call fastcc ptr @open_pipe(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.14)
  br label %kissat_file_readable.exit.thread

kissat_file_readable.exit.thread:                 ; preds = %bb.d, %bb.a, %match_signature.exit, %kissat_file_readable.exit.thread10, %kissat_file_readable.exit, %bb.f
  %.0 = phi ptr [ %i.k, %bb.f ], [ null, %kissat_file_readable.exit ], [ null, %match_signature.exit ], [ null, %bb.a ], [ null, %kissat_file_readable.exit.thread10 ], [ null, %bb.d ]
  ret ptr %.0
}

end_hunk_0
