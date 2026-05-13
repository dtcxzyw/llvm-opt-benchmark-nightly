inline.NumInlined: 7
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@switch.table.FT_Gzip_Uncompress = private unnamed_addr constant [8 x i32] [i32 10, i32 64, i32 8, i32 0, i32 0, i32 0, i32 0, i32 8], align 4

; Function Attrs: nounwind uwtable
define i32 @FT_Stream_OpenGzip(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 40, ptr %i.b, align 4, !tbaa !3
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 6 uses
  %i.g = tail call fastcc i32 @ft_gzip_check_header(ptr noundef %1) ; 2 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !7
  %i.i = call ptr @ft_mem_qalloc(ptr noundef %i.f, i64 noundef 8360, ptr noundef nonnull %i.b) #5 ; 23 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !3
  %.not58 = icmp eq i32 %i.j, 0
  br i1 %.not58, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.l, align 8, !tbaa !13
  store ptr %1, ptr %i.i, align 8, !tbaa !18
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8336 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8352
  store ptr %i.o, ptr %i.p, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8344
  store ptr %i.o, ptr %i.q, align 8, !tbaa !21
  store i64 0, ptr %i.o, align 8, !tbaa !22
  %i.r = call fastcc i32 @ft_gzip_check_header(ptr noundef nonnull %1) ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 4240
  %i.t = call i64 @FT_Stream_Pos(ptr noundef nonnull %1) #5
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  store i64 %i.t, ptr %i.u, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store ptr @ft_gzip_alloc, ptr %i.v, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store ptr @ft_gzip_free, ptr %i.w, align 8, !tbaa !25
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store ptr %i.x, ptr %i.y, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 0, ptr %i.z, align 8, !tbaa !27
  store ptr %i.s, ptr %i.k, align 8, !tbaa !28
  %i.aa = call i32 @inflateInit2_(ptr noundef nonnull %i.k, i32 noundef -15, ptr noundef nonnull @.str, i32 noundef 112) #5
  %.not27.i = icmp eq i32 %i.aa, 0
  br i1 %.not27.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !28
  %.not28.i = icmp eq ptr %i.ab, null
  br i1 %.not28.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.0.i.ph = phi i32 [ %i.r, %bb.e ], [ 3, %bb.g ], [ 3, %bb.f ]
  store i32 %.0.i.ph, ptr %i.b, align 4, !tbaa !3
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef nonnull %i.i) #5
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.ac, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  %i.ah = add i64 %i.ag, -4
  %i.ai = call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef %i.ah) #5
  %.not.i64 = icmp eq i32 %i.ai, 0
  br i1 %.not.i64, label %ft_gzip_get_uncompressed_size.exit, label %.thread77

.thread77:                                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.o

ft_gzip_get_uncompressed_size.exit:               ; preds = %bb.j
  %i.aj = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #5
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !3
  %.not6.i = icmp eq i32 %i.ak, 0
  %narrow.i = select i1 %.not6.i, i32 %i.aj, i32 0 ; 3 uses
  %spec.store.select.i = zext i32 %narrow.i to i64 ; 6 uses
  %i.al = call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef %i.ae) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.am = add i32 %narrow.i, -1
  %or.cond4 = icmp ult i32 %i.am, 40959
  br i1 %or.cond4, label %bb.k, label %bb.n

bb.k:                                             ; preds = %ft_gzip_get_uncompressed_size.exit
  %i.an = call ptr @ft_mem_qalloc(ptr noundef %i.f, i64 noundef %spec.store.select.i, ptr noundef nonnull %i.b) #5 ; 3 uses
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !3
  %.not61 = icmp eq i32 %i.ao, 0
  br i1 %.not61, label %bb.l, label %.thread74

bb.l:                                             ; preds = %bb.k
  %i.ap = call fastcc i64 @ft_gzip_file_io(ptr noundef %i.i, i64 noundef 0, ptr noundef %i.an, i64 noundef %spec.store.select.i)
  %.not62 = icmp eq i64 %i.ap, %spec.store.select.i
  br i1 %.not62, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = call fastcc i64 @ft_gzip_file_io(ptr noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 0) ; 0 uses
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %i.an) #5
  br label %.thread74

.thread74:                                        ; preds = %bb.k, %bb.m
  store i32 0, ptr %i.b, align 4, !tbaa !3
  br label %bb.q

bb.n:                                             ; preds = %ft_gzip_get_uncompressed_size.exit
  %.not60 = icmp eq i32 %narrow.i, 0
  br i1 %.not60, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.thread77, %bb.n
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.as = call i32 @inflateEnd(ptr noundef nonnull %i.ar) #5 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr null, ptr %i.au, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 0, ptr %i.av, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.i, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef nonnull %i.i) #5
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.aw, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.store.select.i, ptr %i.ax, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ay, align 8, !tbaa !30
  store ptr %i.an, ptr %0, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.az, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ft_gzip_stream_close, ptr %i.ba, align 8, !tbaa !36
  br label %bb.r

bb.q:                                             ; preds = %bb.n, %.thread74, %bb.o
  %.sink = phi i64 [ 2147483647, %bb.o ], [ %spec.store.select.i, %.thread74 ], [ %spec.store.select.i, %bb.n ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.bb, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bc, align 8, !tbaa !30
  store ptr null, ptr %0, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @ft_gzip_stream_io, ptr %i.bd, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ft_gzip_stream_close, ptr %i.be, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.c, %bb.q, %bb.h, %bb.b
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret i32 %i.bf
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ft_gzip_check_header(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = tail call i32 @FT_Stream_Seek(ptr noundef nonnull %0, i64 noundef 0) #5 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @FT_Stream_Read(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 4) #5 ; 2 uses
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.b, align 1, !tbaa !29
  %i.f = icmp ne i8 %i.e, 31
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp ne i8 %i.h, -117
  %or.cond = select i1 %i.f, i1 true, i1 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp ne i8 %i.k, 8
  %or.cond7 = select i1 %or.cond, i1 true, i1 %i.l
  br i1 %or.cond7, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 5 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29
  %.not23 = icmp ult i8 %i.n, 32
  br i1 %.not23, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 @FT_Stream_Skip(ptr noundef nonnull %0, i64 noundef 6) #5 ; 2 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !3
  %i.p = load i8, ptr %i.m, align 1, !tbaa !29    ; 2 uses
  %i.q = and i8 %i.p, 4
  %.not24 = icmp eq i8 %i.q, 0
  br i1 %.not24, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call zeroext i16 @FT_Stream_ReadUShortLE(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #5
  %i.s = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not25 = icmp eq i32 %i.s, 0
  br i1 %.not25, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.t = zext i16 %i.r to i64
  %i.u = call i32 @FT_Stream_Skip(ptr noundef nonnull %0, i64 noundef %i.t) #5 ; 3 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !3
  %.not26 = icmp eq i32 %i.u, 0
  br i1 %.not26, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i8, ptr %i.m, align 1, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.e
  %i.v = phi i32 [ 0, %._crit_edge ], [ %i.o, %bb.e ]
  %i.w = phi i8 [ %.pre, %._crit_edge ], [ %i.p, %bb.e ] ; 2 uses
  %i.x = and i8 %i.w, 8
  %.not27 = icmp eq i8 %i.x, 0
  br i1 %.not27, label %.loopexit37, label %.preheader36

.preheader36:                                     ; preds = %bb.h, %.preheader36
  %i.y = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #5
  %i.z = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  %.not28 = icmp eq i32 %i.z, 0
  %i.aa = icmp eq i8 %i.y, 0
  %. = select i1 %i.aa, i32 3, i32 0
  %.1 = select i1 %.not28, i32 %., i32 2
  switch i32 %.1, label %.unreachabledefault [
    i32 0, label %.preheader36
    i32 3, label %.loopexit37.loopexit
    i32 2, label %.thread
  ]

.loopexit37.loopexit:                             ; preds = %.preheader36
  %.pre40 = load i8, ptr %i.m, align 1, !tbaa !29
  br label %.loopexit37

.loopexit37:                                      ; preds = %.loopexit37.loopexit, %bb.h
  %i.ab = phi i32 [ %i.z, %.loopexit37.loopexit ], [ %i.v, %bb.h ]
  %i.ac = phi i8 [ %.pre40, %.loopexit37.loopexit ], [ %i.w, %bb.h ] ; 2 uses
  %i.ad = and i8 %i.ac, 16
  %.not29 = icmp eq i8 %i.ad, 0
  br i1 %.not29, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit37, %.preheader
  %i.ae = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #5
  %i.af = load i32, ptr %i.a, align 4, !tbaa !3   ; 3 uses
  %.not30 = icmp eq i32 %i.af, 0
  %i.ag = icmp eq i8 %i.ae, 0
  %.33 = select i1 %i.ag, i32 5, i32 0
  %.2 = select i1 %.not30, i32 %.33, i32 2
  switch i32 %.2, label %.unreachabledefault34 [
    i32 0, label %.preheader
    i32 5, label %.loopexit.loopexit
    i32 2, label %.thread
  ]

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre41 = load i8, ptr %i.m, align 1, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit37
  %i.ah = phi i32 [ %i.af, %.loopexit.loopexit ], [ %i.ab, %.loopexit37 ]
  %i.ai = phi i8 [ %.pre41, %.loopexit.loopexit ], [ %i.ac, %.loopexit37 ]
  %i.aj = and i8 %i.ai, 2
  %.not31 = icmp eq i8 %i.aj, 0
  br i1 %.not31, label %.thread, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.ak = call i32 @FT_Stream_Skip(ptr noundef nonnull %0, i64 noundef 2) #5
  br label %.thread

.thread:                                          ; preds = %.preheader36, %.preheader, %bb.c, %bb.d, %bb.g, %bb.f, %bb.i, %.loopexit, %bb.a, %bb.b
  %i.al = phi i32 [ 3, %bb.c ], [ %i.af, %.preheader ], [ %i.u, %bb.g ], [ %i.s, %bb.f ], [ %i.ak, %bb.i ], [ %i.ah, %.loopexit ], [ %i.c, %bb.a ], [ %i.d, %bb.b ], [ 3, %bb.d ], [ %i.z, %.preheader36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.al

.unreachabledefault:                              ; preds = %.preheader36
  unreachable

.unreachabledefault34:                            ; preds = %.preheader
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ft_gzip_file_io(ptr noundef %0, i64 noundef %1, ptr noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8336 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = tail call i32 @FT_Stream_Seek(ptr noundef %i.d, i64 noundef %i.f) #5
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %ft_gzip_file_reset.exit.thread, label %ft_gzip_file_reset.exit

ft_gzip_file_reset.exit.thread:                   ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = tail call i32 @inflateReset(ptr noundef nonnull %i.h) #5 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.k, ptr %i.h, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.l, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4240
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.m, ptr %i.n, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8352
  store ptr %i.a, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8344
  store ptr %i.a, ptr %i.p, align 8, !tbaa !21
  store i64 0, ptr %i.a, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %ft_gzip_file_reset.exit.thread, %bb.a
  %i.q = phi i64 [ 0, %ft_gzip_file_reset.exit.thread ], [ %i.b, %bb.a ] ; 2 uses
  %i.r = icmp ugt i64 %1, %i.q
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8352
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8344 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.017.i = phi i64 [ %i.s, %bb.d ], [ %i.ad, %bb.f ] ; 2 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %.017.i) ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %spec.select.i
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !21
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ac = add i64 %spec.select.i, %i.ab
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !22
  %i.ad = sub i64 %.017.i, %spec.select.i         ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %ft_gzip_file_skip_output.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = tail call fastcc i32 @ft_gzip_file_fill_output(ptr noundef nonnull %0)
  %.not21.i = icmp eq i32 %i.af, 0
  br i1 %.not21.i, label %bb.e, label %ft_gzip_file_reset.exit

ft_gzip_file_skip_output.exit:                    ; preds = %bb.e
  %i.ag = icmp eq i64 %3, 0
  br i1 %i.ag, label %ft_gzip_file_reset.exit, label %.preheader

bb.g:                                             ; preds = %bb.c
  %.old1 = icmp eq i64 %3, 0
end_hunk_0
