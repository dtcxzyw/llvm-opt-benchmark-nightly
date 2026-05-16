inline.NumInlined: 112
inline.NumDeleted: 5
begin_hunk_0_@png_zlib_inflate:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  %i.h = icmp slt i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @.str.5, ptr %i.i, align 8, !tbaa !43
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.k = tail call i32 @inflate(ptr noundef nonnull %i.j, i32 noundef %1) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0 = phi i32 [ -3, %bb.d ], [ %i.k, %bb.f ]
  ret i32 %.0
}

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 1, 4) i32 @png_handle_unknown(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @png_cache_unknown_chunk(ptr noundef nonnull %0, i32 noundef %2)
  %.not47 = icmp eq i32 %i.c, 0
  br i1 %.not47, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.f = tail call i32 %i.d(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #13 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.i = icmp slt i32 %3, 2
  br i1 %i.i, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.k = load i32, ptr %i.j, align 8, !tbaa !45
  %i.l = icmp slt i32 %i.k, 2
  br i1 %i.l, label %bb.h, label %.thread54

bb.h:                                             ; preds = %bb.g
  tail call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #13
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #13
  br label %.thread54

bb.i:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %3, 0
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.o = load i32, ptr %i.n, align 8, !tbaa !45
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i32 [ %i.o, %bb.j ], [ %3, %bb.i ]    ; 3 uses
  switch i32 %.1, label %bb.n [
    i32 3, label %bb.m
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30
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
  %.2 = phi i32 [ %.1, %bb.n ], [ %3, %bb.f ], [ %.1, %bb.m ]
  switch i32 %.2, label %.thread [
    i32 3, label %bb.p
    i32 2, label %.thread54
  ]

.thread54:                                        ; preds = %bb.g, %bb.h, %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.w = load i32, ptr %i.v, align 8, !tbaa !30
  %i.x = and i32 %i.w, 536870912
  %.not48 = icmp eq i32 %i.x, 0
  br i1 %.not48, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread54
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !46   ; 3 uses
  switch i32 %i.z, label %bb.r [
    i32 2, label %bb.q
    i32 1, label %.thread
    i32 0, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.y, align 4, !tbaa !46
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #13
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !46
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1136
  tail call void @png_set_unknown_chunks(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.ab, i32 noundef 1) #13
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.b, %bb.e, %bb.o, %bb.p, %bb.q, %bb.s, %.thread54
  %i.ac = phi i1 [ false, %bb.s ], [ true, %bb.q ], [ true, %bb.p ], [ true, %.thread54 ], [ true, %bb.o ], [ false, %bb.e ], [ true, %bb.b ], [ true, %bb.m ]
  %.241 = phi i32 [ 2, %bb.s ], [ 1, %bb.q ], [ %i.z, %bb.p ], [ 1, %.thread54 ], [ 1, %bb.o ], [ 3, %bb.e ], [ 1, %bb.b ], [ 1, %bb.m ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47 ; 2 uses
  %.not49 = icmp eq ptr %i.ae, null
  br i1 %.not49, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  store ptr null, ptr %i.ad, align 8, !tbaa !47
  br i1 %i.ac, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !30
  %i.ah = and i32 %i.ag, 536870912
  %.not50 = icmp eq i32 %i.ah, 0
  br i1 %.not50, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #12
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.u
  ret i32 %.241
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @png_cache_unknown_chunk(ptr noalias noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #13
  store ptr null, ptr %i.d, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = zext i32 %1 to i64                       ; 5 uses
  %.not39 = icmp ult i64 %i.b, %i.f
  br i1 %.not39, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 547
  %2 = load i8, ptr %.shift, align 1, !tbaa !30
  store i8 %2, ptr %i.c, align 8, !tbaa !7
  %.shift40 = getelementptr inbounds nuw i8, ptr %0, i64 546
  %3 = load i16, ptr %.shift40, align 2, !tbaa !30
  %i.h = trunc i16 %3 to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1137
  store i8 %i.h, ptr %i.i, align 1, !tbaa !7
  %4 = load i32, ptr %i.g, align 8, !tbaa !30     ; 2 uses
  %i.j = lshr i32 %4, 8
  %i.k = trunc i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1138
  store i8 %i.k, ptr %i.l, align 2, !tbaa !7
  %i.m = trunc i32 %4 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1139
  store i8 %i.m, ptr %i.n, align 1, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i8 0, ptr %i.o, align 4, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i64 %i.f, ptr %i.p, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i8 %i.s, ptr %i.t, align 8, !tbaa !50
  %i.u = icmp eq i32 %1, 0
  br i1 %i.u, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store ptr null, ptr %i.d, align 8, !tbaa !47
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.v = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.f) #13 ; 2 uses
  store ptr %i.v, ptr %i.d, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.w = phi ptr [ %i.v, %bb.e ], [ null, %bb.c ] ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = icmp ne i32 %1, 0                        ; 2 uses
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #13
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  br i1 %i.y, label %png_crc_read.exit, label %bb.i

png_crc_read.exit:                                ; preds = %bb.h
  tail call void @png_read_data(ptr noundef nonnull %0, ptr noundef %i.w, i64 noundef %i.f) #13
  tail call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %i.w, i64 noundef %i.f) #13
  br label %bb.i

bb.i:                                             ; preds = %.thread, %png_crc_read.exit, %bb.h
  %i.aa = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) ; 0 uses
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
define i32 @png_handle_chunk(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30   ; 2 uses
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
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !26
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
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26   ; 2 uses
  %i.j = and i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, 0
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
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !143
  %.not123 = icmp ne i16 %i.bp, 0
  %i.bq = and i32 %i.bi, 4096
  %.not124 = icmp ne i32 %i.bq, 0
  %or.cond.not144 = and i1 %.not124, %.not123
  %brmerge = or i1 %.not121, %or.cond.not144
  br i1 %brmerge, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !142 ; 2 uses
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
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !144
  %i.ca = zext i8 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !145
  %i.cd = zext i8 %i.cc to i32
  %i.ce = mul nuw nsw i32 %i.cd, %i.ca
  %spec.select137 = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 %.4)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.6 = phi i32 [ %spec.select137, %bb.z ], [ %.4, %bb.y ] ; 5 uses
  %i.cf = trunc i32 %.6 to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 630
  store i8 %i.cf, ptr %i.cg, align 2, !tbaa !146
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 631
  store i8 0, ptr %i.ch, align 1, !tbaa !54
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
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !147
  %i.cz = icmp ugt i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !148
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.db) #13
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !149
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.dd) #13
  %i.de = load i8, ptr %i.a, align 4, !tbaa !60
  %.not127 = icmp eq i8 %i.de, 0
  br i1 %.not127, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef %i.cw) #13
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dg = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.cw) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %storemerge = phi ptr [ %i.dg, %bb.ag ], [ %i.df, %bb.af ]
  store ptr %storemerge, ptr %i.da, align 8, !tbaa !148
  %i.dh = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.cw) #13 ; 2 uses
  store ptr %i.dh, ptr %i.dc, align 8, !tbaa !149
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 2 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, 15
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -1
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !55
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = and i64 %i.dr, 15
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -1
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !133
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !147
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !134 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #12
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !133
  %i.ec = add nuw i64 %i.dy, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eb, i8 0, i64 %i.ec, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !122 ; 2 uses
  %.not128 = icmp eq ptr %i.ee, null
  br i1 %.not128, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false)
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %i.ee) #13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ef = tail call fastcc i32 @png_inflate_claim(ptr noundef nonnull %0, i32 noundef 1229209940)
  %.not129 = icmp eq i32 %i.ef, 0
  br i1 %.not129, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !43
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef %i.eh) #12
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !33
  %i.ek = or i32 %i.ej, 64
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !33
  ret void
}

declare void @png_init_read_transformations(ptr noundef) local_unnamed_addr #4

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @png_inflate_claim(ptr noalias noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = lshr i32 %i.c, 16
  %i.d = lshr i32 %i.c, 24
  %i.e = trunc nuw i32 %i.d to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 %i.e, ptr %i.a, align 16, !tbaa !7
  %i.f = trunc i32 %2 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !7
  %i.h = lshr i32 %i.c, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.i, ptr %i.j, align 2, !tbaa !7
  %i.k = trunc i32 %i.c to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.k, ptr %i.l, align 1, !tbaa !7
  %i.m = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 4, ptr noundef nonnull @.str.57) #13 ; 0 uses
  call void @png_chunk_warning(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #13
  store i32 0, ptr %i.b, align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.o = load i32, ptr %i.n, align 8, !tbaa !150
  %i.p = and i32 %i.o, 12
  %i.q = icmp ne i32 %i.p, 12                     ; 2 uses
  %spec.select = zext i1 %i.q to i8
  %spec.select38 = select i1 %i.q, i32 0, i32 15  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i8 %spec.select, ptr %i.r, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store ptr null, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.u, align 8, !tbaa !103
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 0, ptr %i.v, align 8, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !33
  %i.y = and i32 %i.x, 2
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = call i32 @inflateInit2_(ptr noundef nonnull %i.s, i32 noundef %spec.select38, ptr noundef nonnull @.str.58, i32 noundef 112) #13 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread, label %.thread32

.thread:                                          ; preds = %bb.d
  %i.ab = load i32, ptr %i.w, align 8, !tbaa !33
  %i.ac = or i32 %i.ab, 2
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ad = call i32 @inflateReset2(ptr noundef nonnull %i.s, i32 noundef %spec.select38) #13 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %.thread32

bb.f:                                             ; preds = %.thread, %bb.e
  store i32 %1, ptr %i.b, align 8, !tbaa !130
  br label %bb.g

.thread32:                                        ; preds = %bb.d, %bb.e
  %.02634 = phi i32 [ %i.ad, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %.02634) #13
  br label %bb.g

bb.g:                                             ; preds = %.thread32, %bb.f
  %.02630 = phi i32 [ %.02634, %.thread32 ], [ 0, %bb.f ]
  ret i32 %.02630
}

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_handle_IHDR(ptr noalias noundef %0, ptr noalias noundef %1, i32 %2) #0 {
png_crc_read.exit:
  %i.a = alloca [13 x i8], align 1                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26
  %i.d = or i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !26
  call void @png_read_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 13) #13
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 13) #13
  %i.e = call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.f = load i8, ptr %i.a, align 1, !tbaa !7, !noalias !151
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw i32 %i.g, 24                     ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.a, label %png_get_uint_31.exit

bb.a:                                             ; preds = %png_crc_read.exit
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #12
  unreachable

png_get_uint_31.exit:                             ; preds = %png_crc_read.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7, !noalias !151
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !7, !noalias !151
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !7, !noalias !151
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.m, %i.t
  %i.v = or disjoint i32 %i.u, %i.q
  %i.w = or disjoint i32 %i.v, %i.h               ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !7, !noalias !154
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 24                    ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %png_get_uint_31.exit41

bb.b:                                             ; preds = %png_get_uint_31.exit
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str) #12
  unreachable

png_get_uint_31.exit41:                           ; preds = %png_get_uint_31.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !7, !noalias !154
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !7, !noalias !154
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !7, !noalias !154
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.af, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  %i.ap = or disjoint i32 %i.ao, %i.aa            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !7   ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.at = load i8, ptr %i.as, align 1, !tbaa !7   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.av = load i8, ptr %i.au, align 1, !tbaa !7   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !7   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !7   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 %i.w, ptr %i.ba, align 4, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i32 %i.ap, ptr %i.bb, align 8, !tbaa !136
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 %i.ar, ptr %i.bc, align 8, !tbaa !141
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i8 %i.az, ptr %i.bd, align 4, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 623
  store i8 %i.at, ptr %i.be, align 1, !tbaa !142
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store i8 %i.ax, ptr %i.bf, align 4, !tbaa !157
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i8 %i.av, ptr %i.bg, align 8, !tbaa !158
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 627
  %i.bi = icmp ult i8 %i.at, 7
  %switch.cast = zext i8 %i.at to i56
  %switch.shiftamt = shl nuw nsw i56 %switch.cast, 3
  %switch.downshift = lshr i56 1127008025379073, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  %.sink = select i1 %i.bi, i8 %switch.masked, i8 1 ; 2 uses
  store i8 %.sink, ptr %i.bh, align 1, !tbaa !159
  %i.bj = mul i8 %.sink, %i.ar                    ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 626
  store i8 %i.bj, ptr %i.bk, align 2, !tbaa !99
  %i.bl = icmp ugt i8 %i.bj, 7
  %i.bm = zext nneg i32 %i.w to i64               ; 2 uses
  br i1 %i.bl, label %bb.c, label %bb.d

bb.c:                                             ; preds = %png_get_uint_31.exit41
  %i.bn = lshr i8 %i.bj, 3
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = mul nuw nsw i64 %i.bo, %i.bm
  br label %bb.e

bb.d:                                             ; preds = %png_get_uint_31.exit41
  %i.bq = zext nneg i8 %i.bj to i64
  %i.br = mul nuw nsw i64 %i.bq, %i.bm
  %i.bs = add nuw nsw i64 %i.br, 7
  %i.bt = lshr i64 %i.bs, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bu = phi i64 [ %i.bp, %bb.c ], [ %i.bt, %bb.d ]
  %i.bv = zext i8 %i.az to i32
  %i.bw = zext i8 %i.ax to i32
  %i.bx = zext i8 %i.av to i32
  %i.by = zext i8 %i.at to i32
  %i.bz = zext i8 %i.ar to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 %i.bu, ptr %i.ca, align 8, !tbaa !134
  call void @png_set_IHDR(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.w, i32 noundef %i.ap, i32 noundef %i.bz, i32 noundef %i.by, i32 noundef %i.bv, i32 noundef %i.bx, i32 noundef %i.bw) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 3
}

end_hunk_1
