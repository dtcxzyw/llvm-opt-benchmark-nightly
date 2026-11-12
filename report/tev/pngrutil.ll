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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.h)
  store i32 %2, ptr %i.c, align 8, !tbaa !10
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
begin_hunk_1_@png_read_start_row:bb.a
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.o
  %.inv = icmp samesign ugt i32 %.2, 32
  %.133 = select i1 %.inv, i32 64, i32 32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.p, %bb.n
  %.3 = phi i32 [ %.132, %bb.p ], [ %.2, %bb.n ], [ %.133, %bb.q ], [ %.2, %bb.o ] ; 3 uses
  %i.bn = and i32 %i.bi, 16384
  %.not122 = icmp eq i32 %i.bn, 0
  br i1 %.not122, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !85
  %.not123 = icmp ne i16 %i.bp, 0
  %i.bq = and i32 %i.bi, 4096
  %.not124 = icmp ne i32 %i.bq, 0
  %or.cond.not144 = and i1 %.not124, %.not123
  %brmerge = or i1 %.not121, %or.cond.not144
  br i1 %brmerge, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !84  ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 4
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bu = icmp samesign ult i32 %.3, 17
  %.134 = select i1 %i.bu, i32 32, i32 64
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bv = icmp samesign ult i32 %.3, 9
  %i.bw = icmp eq i8 %i.bs, 6                     ; 2 uses
  br i1 %i.bv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.135 = select i1 %i.bw, i32 32, i32 24
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %.136 = select i1 %i.bw, i32 64, i32 48
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.r
  %.4 = phi i32 [ %.134, %bb.u ], [ %.3, %bb.r ], [ %.135, %bb.w ], [ %.136, %bb.x ] ; 2 uses
  %i.bx = and i32 %i.bi, 1048576
  %.not126 = icmp eq i32 %i.bx, 0
  br i1 %.not126, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !201
  %i.ca = zext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !202
  %i.cd = zext i8 %i.cc to i32
  %i.ce = mul nuw nsw i32 %i.cd, %i.ca
  %spec.select137 = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 %.4)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.6 = phi i32 [ %spec.select137, %bb.z ], [ %.4, %bb.y ] ; 5 uses
  %i.cf = trunc i32 %.6 to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 630
  store i8 %i.cf, ptr %i.cg, align 2, !tbaa !203
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 631
  store i8 0, ptr %i.ch, align 1, !tbaa !58
  %i.ci = add i32 %i.ah, 7
  %i.cj = and i32 %i.ci, -8
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = icmp samesign ugt i32 %.6, 7
  br i1 %i.cl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cm = lshr i32 %.6, 3
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = mul nuw nsw i64 %i.ck, %i.cn
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cp = zext nneg i32 %.6 to i64
  %i.cq = mul nuw nsw i64 %i.ck, %i.cp
  %i.cr = lshr exact i64 %i.cq, 3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cs = phi i64 [ %i.co, %bb.ab ], [ %i.cr, %bb.ac ]
  %i.ct = add nuw nsw i32 %.6, 7
  %i.cu = lshr i32 %i.ct, 3
  %narrow = add nuw nsw i32 %i.cu, 49
  %i.cv = zext nneg i32 %narrow to i64
  %i.cw = add nuw nsw i64 %i.cs, %i.cv            ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !204
  %i.cz = icmp ugt i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !205
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.db) #15
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !206
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.dd) #15
  %i.de = load i8, ptr %i.a, align 4, !tbaa !63
  %.not127 = icmp eq i8 %i.de, 0
  br i1 %.not127, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef %i.cw) #15
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dg = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.cw) #15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %storemerge = phi ptr [ %i.dg, %bb.ag ], [ %i.df, %bb.af ]
  store ptr %storemerge, ptr %i.da, align 8, !tbaa !205
  %i.dh = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.cw) #15 ; 2 uses
  store ptr %i.dh, ptr %i.dc, align 8, !tbaa !206
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !205
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 2 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, 15
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !59
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = and i64 %i.dr, 15
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -1
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !52
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !204
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !48 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.39) #14
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !52
  %i.ec = add nuw i64 %i.dy, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eb, i8 0, i64 %i.ec, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !76 ; 2 uses
  %.not128 = icmp eq ptr %i.ee, null
  br i1 %.not128, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false)
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.ee) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ef = tail call fastcc i32 @png_inflate_claim(ptr noundef nonnull %0, i32 noundef 1229209940)
  %.not129 = icmp eq i32 %i.ef, 0
  br i1 %.not129, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !36
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef %i.eh) #14
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !31
  %i.ek = or i32 %i.ej, 64
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !31
  ret void
}

declare void @png_init_read_transformations(ptr noundef) local_unnamed_addr #4

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @png_inflate_claim(ptr noalias noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78   ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.d = lshr i32 %i.c, 24
  %i.e = trunc nuw i32 %i.d to i8
  store i8 %i.e, ptr %i.a, align 16, !tbaa !10
  %i.f = lshr i32 %i.c, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !10
  %i.i = lshr i32 %i.c, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.k, align 2, !tbaa !10
  %i.l = trunc i32 %i.c to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.l, ptr %i.m, align 1, !tbaa !10
  %i.n = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 4, ptr noundef nonnull @.str.72) #15 ; 0 uses
  call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.p = load i32, ptr %i.o, align 8, !tbaa !207
  %i.q = and i32 %i.p, 48
  %i.r = icmp ne i32 %i.q, 48                     ; 2 uses
  %spec.select = zext i1 %i.r to i8
  %spec.select37 = select i1 %i.r, i32 0, i32 15  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i8 %spec.select, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store ptr null, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.u, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.v, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 0, ptr %i.w, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !31
  %i.z = and i32 %i.y, 2
  %.not27 = icmp eq i32 %i.z, 0
  br i1 %.not27, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call i32 @inflateInit2_(ptr noundef nonnull %i.t, i32 noundef %spec.select37, ptr noundef nonnull @.str.73, i32 noundef 112) #15 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread, label %.thread31

.thread:                                          ; preds = %bb.d
  %i.ac = load i32, ptr %i.x, align 8, !tbaa !31
  %i.ad = or i32 %i.ac, 2
  store i32 %i.ad, ptr %i.x, align 8, !tbaa !31
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ae = tail call i32 @inflateReset2(ptr noundef nonnull %i.t, i32 noundef %spec.select37) #15 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %.thread31

bb.f:                                             ; preds = %.thread, %bb.e
  store i32 %1, ptr %i.b, align 8, !tbaa !78
  br label %bb.g

.thread31:                                        ; preds = %bb.d, %bb.e
  %.02533 = phi i32 [ %i.ae, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  tail call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %.02533) #15
  br label %bb.g

bb.g:                                             ; preds = %.thread31, %bb.f
  %.02529 = phi i32 [ %.02533, %.thread31 ], [ 0, %bb.f ]
  ret i32 %.02529
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_read_reset(ptr nofree noundef captures(none) initializes((540, 544), (621, 622)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = and i32 %i.b, -13
  store i32 %i.c, ptr %i.a, align 4, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 0, ptr %i.d, align 4, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 621
  store i8 0, ptr %i.e, align 1, !tbaa !61
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_progressive_read_reset(ptr noundef initializes((516, 520), (536, 540)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.b = load i8, ptr %i.a, align 4, !tbaa !63
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.d = load i32, ptr %i.c, align 4, !tbaa !62
  %i.e = and i32 %i.d, 2
  %.not28 = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.g = load i32, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  %i.h = add i32 %i.g, 7
  %i.i = lshr i32 %i.h, 3
  %.sink = select i1 %.not28, i32 %i.i, i32 %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %.sink, ptr %i.j, align 4, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.n = load i8, ptr %i.m, align 1, !tbaa !61
  %i.o = zext i8 %i.n to i64                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr @png_pass_inc, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !10
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = add i32 %i.l, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr @png_pass_start, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !tbaa !10
  %i.v = zext i8 %i.u to i32
  %i.w = xor i32 %i.v, -1
  %i.x = add i32 %i.s, %i.w
  %i.y = udiv i32 %i.x, %i.r
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 516
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink30 = phi i32 [ %i.ad, %bb.c ], [ %i.y, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 %.sink30, ptr %i.ae, align 8, !tbaa !81
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !31
  %i.ah = and i32 %i.ag, -9
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.aj = tail call i32 @inflateReset(ptr noundef nonnull %i.ai) #15
  %.not29 = icmp eq i32 %i.aj, 0
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.ak, align 8, !tbaa !34
  store ptr null, ptr %i.ai, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.am, ptr %i.an, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !47  ; 3 uses
  %i.aq = icmp ugt i8 %i.ap, 7
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !81
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = lshr i8 %i.ap, 3
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = mul nuw nsw i64 %i.at, %i.av
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ax = zext nneg i8 %i.ap to i64
  %i.ay = mul nuw nsw i64 %i.at, %i.ax
  %i.az = add nuw nsw i64 %i.ay, 7
  %i.ba = lshr i64 %i.az, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bb = phi i64 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ]
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add i32 %i.bc, 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !74
  ret void
}

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #4

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_handle_IHDR(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
png_crc_read.exit:
  %i.a = alloca [13 x i8], align 1                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !28
  %i.d = or i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !28
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 13) #15
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 13) #15
  %i.e = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) ; 0 uses
end_hunk_1
