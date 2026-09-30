Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/apprentice?download=true
inline.NumInlined: 57
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@file_showstr:bb.a
bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @fputc(i32 noundef %i.e, ptr noundef %0) ; 0 uses
  br label %.backedge

bb.g:                                             ; preds = %bb.e
  %i.h = tail call i32 @fputc(i32 noundef 92, ptr noundef %0) ; 0 uses
  switch i8 %.0, label %bb.o [
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 12, label %bb.j
    i8 10, label %bb.k
    i8 13, label %bb.l
    i8 9, label %bb.m
    i8 11, label %bb.n
  ]

bb.h:                                             ; preds = %bb.g
  %i.i = tail call i32 @fputc(i32 noundef 97, ptr noundef %0) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.f
  br label %bb.b

bb.i:                                             ; preds = %bb.g
  %i.j = tail call i32 @fputc(i32 noundef 98, ptr noundef %0) ; 0 uses
  br label %.backedge

bb.j:                                             ; preds = %bb.g
  %i.k = tail call i32 @fputc(i32 noundef 102, ptr noundef %0) ; 0 uses
  br label %.backedge

bb.k:                                             ; preds = %bb.g
  %i.l = tail call i32 @fputc(i32 noundef 110, ptr noundef %0) ; 0 uses
  br label %.backedge

bb.l:                                             ; preds = %bb.g
  %i.m = tail call i32 @fputc(i32 noundef 114, ptr noundef %0) ; 0 uses
  br label %.backedge

bb.m:                                             ; preds = %bb.g
  %i.n = tail call i32 @fputc(i32 noundef 116, ptr noundef %0) ; 0 uses
  br label %.backedge

bb.n:                                             ; preds = %bb.g
  %i.o = tail call i32 @fputc(i32 noundef 118, ptr noundef %0) ; 0 uses
  br label %.backedge

bb.o:                                             ; preds = %bb.g
  %i.p = and i32 %i.e, 255
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.p) #28 ; 0 uses
  br label %.backedge

bb.p:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @file_varint2uintmax_t(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i32 %1, 52
  br i1 %i.a, label %.preheader, label %.preheader38

.preheader38:                                     ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !43      ; 2 uses
  %.not39 = icmp eq i8 %i.b, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi ptr [ %i.e, %.preheader ], [ %0, %bb.a ] ; 5 uses
  %i.c = load i8, ptr %.0, align 1, !tbaa !43
  %i.d = icmp sgt i8 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %i.d, label %bb.b, label %.preheader, !llvm.loop !93

bb.b:                                             ; preds = %.preheader
  %.not35 = icmp eq ptr %2, null
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.0 to i64
  %i.g = ptrtoint ptr %0 to i64
  %reass.sub52 = sub i64 %i.f, %i.g
  %i.h = add i64 %reass.sub52, 1
  store i64 %i.h, ptr %2, align 8, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not3646 = icmp ult ptr %.0, %0
  br i1 %.not3646, label %.loopexit, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.d, %.lr.ph50
  %.148 = phi ptr [ %i.n, %.lr.ph50 ], [ %.0, %bb.d ] ; 2 uses
  %.02647 = phi i64 [ %i.m, %.lr.ph50 ], [ 0, %bb.d ]
  %i.i = load i8, ptr %.148, align 1, !tbaa !43
  %i.j = and i8 %i.i, 127
  %i.k = zext nneg i8 %i.j to i64
  %i.l = or disjoint i64 %.02647, %i.k
  %i.m = shl i64 %i.l, 7                          ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.148, i64 -1 ; 2 uses
  %.not36 = icmp ult ptr %i.n, %0
  br i1 %.not36, label %.loopexit, label %.lr.ph50, !llvm.loop !94

.lr.ph:                                           ; preds = %.preheader38, %bb.e
  %i.o = phi i8 [ %i.v, %bb.e ], [ %i.b, %.preheader38 ] ; 2 uses
  %.241 = phi ptr [ %i.u, %bb.e ], [ %0, %.preheader38 ] ; 2 uses
  %.12740 = phi i64 [ %i.t, %bb.e ], [ 0, %.preheader38 ]
  %i.p = and i8 %i.o, 127
  %i.q = zext nneg i8 %i.p to i64
  %i.r = or disjoint i64 %.12740, %i.q            ; 2 uses
  %i.s = icmp sgt i8 %i.o, -1
  br i1 %i.s, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.t = shl i64 %i.r, 7                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.241, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43    ; 2 uses
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %.preheader38
  %.2.lcssa = phi ptr [ %0, %.preheader38 ], [ %.241, %.lr.ph ], [ %i.u, %bb.e ]
  %.228 = phi i64 [ 0, %.preheader38 ], [ %i.r, %.lr.ph ], [ %i.t, %bb.e ] ; 2 uses
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = ptrtoint ptr %.2.lcssa to i64
  %i.x = ptrtoint ptr %0 to i64
  %reass.sub = sub i64 %i.w, %i.x
  %i.y = add i64 %reass.sub, 1
  store i64 %i.y, ptr %2, align 8, !tbaa !63
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph50, %bb.d, %._crit_edge, %bb.f
  %.3 = phi i64 [ %.228, %._crit_edge ], [ %.228, %bb.f ], [ 0, %bb.d ], [ %i.m, %.lr.ph50 ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define hidden range(i64 -1, 5) i64 @file_pstring_length_size(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = and i32 %i.b, 3968                       ; 3 uses
  %i.d = tail call range(i32 0, 6) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.f = tail call range(i32 7, 33) i32 @llvm.cttz.i32(i32 %i.c, i1 true)
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr i8, ptr @switch.table.file_pstring_length_size, i64 %i.g
  %switch.gep = getelementptr i8, ptr %i.h, i64 -7
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @file_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %i.c) #28
  br label %bb.c

bb.c:                                             ; preds = %.split, %bb.b
  %.0 = phi i64 [ -1, %bb.b ], [ %switch.ext, %.split ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i64 -4, 4294967296) i64 @file_pstring_get_length(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %i.c = and i32 %i.b, 3968                       ; 3 uses
  %i.d = tail call range(i32 0, 6) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.split, label %bb.g

.split:                                           ; preds = %bb.a
  %i.f = tail call range(i32 7, 33) i32 @llvm.cttz.i32(i32 %i.c, i1 true) ; 2 uses
  switch i32 %i.f, label %default.unreachable [
    i32 7, label %bb.b
    i32 9, label %bb.c
    i32 8, label %bb.d
    i32 11, label %bb.e
    i32 10, label %bb.f
  ]

bb.b:                                             ; preds = %.split
  %i.g = load i8, ptr %2, align 1, !tbaa !43
  %i.h = zext i8 %i.g to i64
  br label %bb.h

bb.c:                                             ; preds = %.split
  %i.i = load i16, ptr %2, align 1
  %i.j = zext i16 %i.i to i64
  br label %bb.h

bb.d:                                             ; preds = %.split
  %3 = load i8, ptr %2, align 1, !tbaa !43
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !43
  %i.k = zext i8 %6 to i64
  %7 = shl nuw nsw i64 %4, 8
  %8 = or disjoint i64 %7, %i.k
  br label %bb.h

bb.e:                                             ; preds = %.split
  %i.l = load i32, ptr %2, align 1
  %i.m = zext i32 %i.l to i64
  br label %bb.h

bb.f:                                             ; preds = %.split
  %i.n = load i32, ptr %2, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = zext i32 %i.o to i64
  br label %bb.h

default.unreachable:                              ; preds = %.split
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @file_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %i.c) #28
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.038 = phi i64 [ %i.h, %bb.b ], [ %i.j, %bb.c ], [ %8, %bb.d ], [ %i.m, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %i.q = and i32 %i.b, 4096
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.i, label %.split.i

.split.i:                                         ; preds = %bb.h
  %i.r = zext nneg i32 %i.f to i64
  %i.s = getelementptr [8 x i8], ptr @switch.table.file_pstring_get_length, i64 %i.r
  %switch.gep = getelementptr i8, ptr %i.s, i64 -56
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.t = add nsw i64 %switch.load, %.038
  br label %bb.i

bb.i:                                             ; preds = %.split.i, %bb.h, %bb.g
  %.140 = phi i64 [ -1, %bb.g ], [ %i.t, %.split.i ], [ %.038, %bb.h ]
  ret i64 %.140
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, 1) i32 @file_magicfind(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.027.in40 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.02741 = load ptr, ptr %.027.in40, align 8, !tbaa !26 ; 2 uses
  %.not42 = icmp eq ptr %.02741, %i.b
  br i1 %.not42, label %.loopexit, label %.lr.ph44

.critedge.loopexit:                               ; preds = %bb.g, %.lr.ph44
  %.027.in = getelementptr inbounds nuw i8, ptr %.02743, i64 24
  %.027 = load ptr, ptr %.027.in, align 8, !tbaa !26 ; 2 uses
  %.not = icmp eq ptr %.027, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph44, !llvm.loop !96

.lr.ph44:                                         ; preds = %bb.a, %.critedge.loopexit
  %.02743 = phi ptr [ %.027, %.critedge.loopexit ], [ %.02741, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.02743, align 8, !tbaa !54 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02743, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55   ; 3 uses
  %.not3438.not = icmp eq i64 %i.e, 0
  br i1 %.not3438.not, label %.critedge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph44, %bb.g
  %i.f = phi i64 [ %i.v, %bb.g ], [ 0, %.lr.ph44 ]
  %.02939 = phi i32 [ %i.u, %bb.g ], [ 0, %.lr.ph44 ] ; 3 uses
  %i.g = getelementptr inbounds nuw [432 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.i = load i8, ptr %i.h, align 2, !tbaa !52
  %.not33 = icmp eq i8 %i.i, 45
  br i1 %.not33, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) %1) #31
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %2, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.028.in = phi i32 [ %.02939, %bb.c ], [ %.028, %bb.e ]
  %.028 = add i32 %.028.in, 1                     ; 3 uses
  %i.m = zext i32 %.028 to i64                    ; 2 uses
  %i.n = icmp ugt i64 %i.e, %i.m
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [432 x i8], ptr %i.c, i64 %i.m
  %i.p = load i16, ptr %i.o, align 8, !tbaa !48
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.d, !llvm.loop !97

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = sub i32 %.028, %.02939
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !55
  br label %.loopexit

bb.g:                                             ; preds = %bb.b, %.lr.ph
  %i.u = add i32 %.02939, 1                       ; 2 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %.not34 = icmp ugt i64 %i.e, %i.v
  br i1 %.not34, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !98

.loopexit:                                        ; preds = %.critedge.loopexit, %bb.a, %bb.f
  %.2 = phi i32 [ 0, %bb.f ], [ -1, %bb.a ], [ -1, %.critedge.loopexit ]
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @apprentice_load(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %3 = alloca %struct.stat, align 8               ; 6 uses
  %4 = alloca [2 x %struct.magic_entry_set], align 16 ; 11 uses
  %5 = alloca %struct._php_stream_dirent, align 1 ; 7 uses
  %i.b = alloca [4096 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !53
  %i.e = or i32 %i.d, 64
  store i32 %i.e, ptr %i.c, align 4, !tbaa !53
  %i.f = tail call noalias dereferenceable_or_null(48) ptr @_ecalloc(i64 noundef 1, i64 noundef 48) #29 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  %indvars.iv185.sroa.gep283 = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @file_oomem(ptr noundef nonnull %0, i64 noundef 48) #28
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1, ptr %i.h, align 8, !tbaa !46
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.13, ptr noundef nonnull @usg_hdr) #33 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call i32 @stat(ptr noundef %1, ptr noundef nonnull %3) #28
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !110
  %i.p = and i32 %i.o, 61440
  %i.q = icmp eq i32 %i.p, 16384
  br i1 %i.q, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.r = tail call ptr @_php_stream_opendir(ptr noundef %1, i32 noundef 8, ptr noundef null) #28 ; 9 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.thread118, label %.preheader125

.preheader125:                                    ; preds = %bb.g
  %i.s = call ptr @_php_stream_readdir(ptr noundef nonnull %i.r, ptr noundef nonnull %5) #28
  %.not92142146 = icmp eq ptr %i.s, null
  br i1 %.not92142146, label %.outer._crit_edge.thread, label %.lr.ph

.outer._crit_edge.thread:                         ; preds = %.preheader125
  %i.t = call i32 @_php_stream_free(ptr noundef nonnull %i.r, i32 noundef 3) #28 ; 0 uses
  br label %bb.p

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %i.u = call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef %1, ptr noundef nonnull %5) #28 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #31
  %i.y = add i64 %i.w, 2
  %i.z = add i64 %i.y, %i.x
  call void @file_oomem(ptr noundef %0, i64 noundef %i.z) #28
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !32
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = call i32 @_php_stream_free(ptr noundef nonnull %i.r, i32 noundef 3) #28 ; 0 uses
  br label %.thread118

bb.j:                                             ; preds = %bb.h
  %i.ad = call i32 @stat(ptr noundef nonnull %i.b, ptr noundef nonnull %3) #28
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.n, align 8, !tbaa !110
  %i.ag = and i32 %i.af, 61440
  %i.ah = icmp eq i32 %i.ag, 32768
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = call ptr @_php_stream_readdir(ptr noundef nonnull %i.r, ptr noundef nonnull %5) #28
  %.not92 = icmp eq ptr %i.ai, null
  br i1 %.not92, label %.outer._crit_edge, label %bb.h, !llvm.loop !99

bb.m:                                             ; preds = %bb.k
  %.not94 = icmp ult i64 %.079.ph147, %.077.ph148
  br i1 %.not94, label %.outer, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = shl i64 %.077.ph148, 1
  %i.ak = or i64 %i.aj, 2                         ; 2 uses
  %i.al = shl i64 %i.ak, 3                        ; 2 uses
end_hunk_0
