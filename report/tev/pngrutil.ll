Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/pngrutil?download=true
inline.NumInlined: 132
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_have_info
define dso_local void @png_have_info(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  %i.c = and i32 %i.b, 3145728
  %or.cond = icmp eq i32 %i.c, 1048576
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !134
  %i.f = or i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !135
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !135
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_handle_fdAT(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @png_ensure_sequence_number(ptr noundef %0, i32 noundef %2)
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.16) #15
  %i.a = add i32 %2, -4
  %i.b = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef %0, i32 noundef %i.a, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 4) i32 @png_handle_unknown(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @png_cache_unknown_chunk(ptr noundef nonnull %0, i32 noundef %2)
  %.not47 = icmp eq i32 %i.c, 0
  br i1 %.not47, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.f = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #15 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.i = icmp slt i32 %3, 2
  br i1 %i.i, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.k = load i32, ptr %i.j, align 8, !tbaa !137
  %i.l = icmp slt i32 %i.k, 2
  br i1 %i.l, label %bb.h, label %.thread54

bb.h:                                             ; preds = %bb.g
  tail call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #15
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #15
  br label %.thread54

bb.i:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %3, 0
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.o = load i32, ptr %i.n, align 8, !tbaa !137
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.140 = phi i32 [ %i.o, %bb.j ], [ %3, %bb.i ]  ; 3 uses
  switch i32 %.140, label %bb.n [
    i32 3, label %bb.m
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29
  %i.r = and i32 %i.q, 536870912
  %.not46 = icmp eq i32 %i.r, 0
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.s = tail call fastcc i32 @png_cache_unknown_chunk(ptr noundef nonnull %0, i32 noundef %2)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.thread, label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.l
  %i.u = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.f, %bb.n
  %.241 = phi i32 [ %.140, %bb.n ], [ %3, %bb.f ], [ %.140, %bb.m ]
  switch i32 %.241, label %.thread [
    i32 3, label %bb.p
    i32 2, label %.thread54
  ]

.thread54:                                        ; preds = %bb.g, %bb.h, %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29
  %i.x = and i32 %i.w, 536870912
  %.not48 = icmp eq i32 %i.x, 0
  br i1 %.not48, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread54
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1132 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !54   ; 3 uses
  switch i32 %i.z, label %bb.r [
    i32 2, label %bb.q
    i32 1, label %.thread
    i32 0, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.y, align 4, !tbaa !54
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #15
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !54
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1144
  tail call void @png_set_unknown_chunks(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.ab, i32 noundef 1) #15
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.b, %bb.e, %bb.o, %bb.p, %bb.q, %bb.s, %.thread54
  %i.ac = phi i1 [ false, %bb.s ], [ true, %bb.q ], [ true, %bb.p ], [ true, %.thread54 ], [ true, %bb.o ], [ false, %bb.e ], [ true, %bb.b ], [ true, %bb.m ]
  %.2 = phi i32 [ 2, %bb.s ], [ 1, %bb.q ], [ %i.z, %bb.p ], [ 1, %.thread54 ], [ 1, %bb.o ], [ 3, %bb.e ], [ 1, %bb.b ], [ 1, %bb.m ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %.not49 = icmp eq ptr %i.ae, null
  br i1 %.not49, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  store ptr null, ptr %i.ad, align 8, !tbaa !55
  br i1 %i.ac, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !29
  %i.ah = and i32 %i.ag, 536870912
  %.not50 = icmp eq i32 %i.ah, 0
  br i1 %.not50, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #14
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.u
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @png_cache_unknown_chunk(ptr noalias noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #15
  store ptr null, ptr %i.d, align 8, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = zext i32 %1 to i64                       ; 5 uses
  %.not39 = icmp ult i64 %i.b, %i.f
  br i1 %.not39, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 4 uses
  %2 = lshr i32 %i.h, 24
  %3 = trunc nuw i32 %2 to i8
  store i8 %3, ptr %i.c, align 8, !tbaa !10
  %4 = lshr i32 %i.h, 16
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1145
  store i8 %5, ptr %6, align 1, !tbaa !10
  %7 = lshr i32 %i.h, 8
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1146
  store i8 %8, ptr %9, align 2, !tbaa !10
  %10 = trunc i32 %i.h to i8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 1147
  store i8 %10, ptr %11, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1148
  store i8 0, ptr %i.i, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i64 %i.f, ptr %i.j, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %i.m = trunc i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store i8 %i.m, ptr %i.n, align 8, !tbaa !139
  %i.o = icmp eq i32 %1, 0
  br i1 %i.o, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store ptr null, ptr %i.d, align 8, !tbaa !55
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.f) #15 ; 2 uses
  store ptr %i.p, ptr %i.d, align 8, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = phi ptr [ %i.p, %bb.e ], [ null, %bb.c ] ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp ne i32 %1, 0                        ; 2 uses
  %or.cond = and i1 %i.s, %i.r
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.42) #15
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  br i1 %i.s, label %png_crc_read.exit, label %bb.i

png_crc_read.exit:                                ; preds = %bb.h
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef %i.q, i64 noundef %i.f) #15
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %i.q, i64 noundef %i.f) #15
  br label %bb.i

bb.i:                                             ; preds = %.thread, %png_crc_read.exit, %bb.h
  %i.u = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ 1, %bb.i ]
  ret i32 %.0
}

declare void @png_chunk_warning(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @png_app_warning(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @png_chunk_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @png_set_unknown_chunks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @png_handle_chunk(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  switch i32 %i.b, label %png_chunk_index_from_name.exit [
    i32 1229472850, label %..thread64_crit_edge
    i32 1347179589, label %bb.ab
    i32 1229209940, label %bb.b
    i32 1229278788, label %bb.c
    i32 1633899596, label %bb.d
    i32 1649100612, label %bb.e
    i32 1665684045, label %bb.f
    i32 1665745744, label %bb.g
    i32 1665944649, label %bb.h
    i32 1700284774, label %bb.i
    i32 1717785676, label %bb.j
    i32 1717846356, label %bb.k
    i32 1732332865, label %bb.l
    i32 1749635924, label %bb.m
    i32 1766015824, label %bb.n
    i32 1767135348, label %bb.o
    i32 1833190230, label %bb.p
    i32 1866876531, label %bb.q
    i32 1883455820, label %bb.r
    i32 1883789683, label %bb.s
    i32 1933723988, label %bb.t
    i32 1933787468, label %bb.u
    i32 1934642260, label %bb.v
    i32 1934772034, label %bb.w
    i32 1950701684, label %bb.x
    i32 1950960965, label %bb.y
    i32 1951551059, label %bb.z
    i32 2052348020, label %bb.aa
  ]

..thread64_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !28
  br label %.thread64

bb.b:                                             ; preds = %bb.a
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  br label %bb.ab

bb.f:                                             ; preds = %bb.a
  br label %bb.ab

bb.g:                                             ; preds = %bb.a
  br label %bb.ab

bb.h:                                             ; preds = %bb.a
  br label %bb.ab

bb.i:                                             ; preds = %bb.a
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  br label %bb.ab

bb.k:                                             ; preds = %bb.a
  br label %bb.ab

bb.l:                                             ; preds = %bb.a
  br label %bb.ab

bb.m:                                             ; preds = %bb.a
  br label %bb.ab

bb.n:                                             ; preds = %bb.a
  br label %bb.ab

bb.o:                                             ; preds = %bb.a
  br label %bb.ab

bb.p:                                             ; preds = %bb.a
  br label %bb.ab

bb.q:                                             ; preds = %bb.a
  br label %bb.ab

bb.r:                                             ; preds = %bb.a
  br label %bb.ab

bb.s:                                             ; preds = %bb.a
  br label %bb.ab

bb.t:                                             ; preds = %bb.a
  br label %bb.ab

bb.u:                                             ; preds = %bb.a
  br label %bb.ab

bb.v:                                             ; preds = %bb.a
  br label %bb.ab

bb.w:                                             ; preds = %bb.a
  br label %bb.ab

bb.x:                                             ; preds = %bb.a
  br label %bb.ab

bb.y:                                             ; preds = %bb.a
  br label %bb.ab

bb.z:                                             ; preds = %bb.a
  br label %bb.ab

bb.aa:                                            ; preds = %bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.0.i.ph = phi i32 [ 27, %bb.aa ], [ 26, %bb.z ], [ 25, %bb.y ], [ 24, %bb.x ], [ 23, %bb.w ], [ 22, %bb.v ], [ 21, %bb.u ], [ 20, %bb.t ], [ 19, %bb.s ], [ 18, %bb.r ], [ 17, %bb.q ], [ 16, %bb.p ], [ 15, %bb.o ], [ 14, %bb.n ], [ 13, %bb.m ], [ 12, %bb.l ], [ 11, %bb.k ], [ 10, %bb.j ], [ 9, %bb.i ], [ 8, %bb.h ], [ 7, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ] ; 3 uses
  %i.c = zext nneg i32 %.0.i.ph to i64            ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.c                  ; 2 uses
  %i.e = and i64 %i.d, 3092
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.ac, label %png_chunk_index_from_name.exit

png_chunk_index_from_name.exit:                   ; preds = %bb.a, %bb.ab
  %.0.i59 = phi i32 [ %.0.i.ph, %bb.ab ], [ 28, %bb.a ]
  %i.f = tail call i32 @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  br label %bb.ap

bb.ac:                                            ; preds = %bb.ab
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @read_chunks, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28   ; 2 uses
  %i.j = and i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.ad, label %.thread64

end_hunk_0
