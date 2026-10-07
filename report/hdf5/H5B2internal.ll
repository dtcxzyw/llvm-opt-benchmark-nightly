Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5B2internal?download=true
begin_hunk_0_@H5B2__protect_internal:bb.a
  br i1 %i.ah, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.aj = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !14
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__protect_internal, i32 noundef 218, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.14) #4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 280 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49 ; 2 uses
  %.not39 = icmp eq ptr %i.am, null
  br i1 %.not39, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = call i32 @H5AC_proxy_entry_remove_child(ptr noundef nonnull %i.am, ptr noundef nonnull %i.p) #4
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.aq = load i64, ptr @H5E_CANTUNDEPEND_g, align 8, !tbaa !14
  %i.ar = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__protect_internal, i32 noundef 233, i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.15) #4 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.al, align 8, !tbaa !49
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.at = load i64, ptr %2, align 8, !tbaa !47
  %i.au = call i32 @H5AC_unprotect(ptr noundef %i.as, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.at, ptr noundef nonnull %i.p, i32 noundef 0) #4
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.aw = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.ax = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !14
  %i.ay = load i64, ptr %2, align 8, !tbaa !47
  %i.az = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__protect_internal, i32 noundef 241, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.16, i64 noundef %i.ay) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.i, %bb.j, %bb.p, %bb.q, %bb.a
  %.3 = phi ptr [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.c ], [ null, %bb.a ], [ %i.p, %bb.i ], [ %i.p, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  ret ptr %.3
}

declare ptr @H5AC_protect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5B2__shadow_internal(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.h, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 416 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !43
  %.not = icmp ugt i64 %i.j, %i.l
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 288 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 276
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46
  %i.q = zext i32 %i.p to i64
  %i.r = tail call i64 @H5MF_alloc(ptr noundef %i.n, i32 noundef 2, i64 noundef %i.q) #4 ; 3 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.u = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !14
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__shadow_internal, i32 noundef 752, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.39) #4 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.x = load i64, ptr %1, align 8, !tbaa !47
  %i.y = tail call i32 @H5AC_move_entry(ptr noundef %i.w, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.x, i64 noundef %i.r) #4
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.ab = load i64, ptr @H5E_CANTMOVE_g, align 8, !tbaa !14
  %i.ac = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__shadow_internal, i32 noundef 756, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.40) #4 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 %i.r, ptr %1, align 8, !tbaa !47
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !43
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !44
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.g, %bb.f, %bb.d
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.g ]
  ret i32 %.1
}

declare i32 @H5AC_proxy_entry_remove_child(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_unprotect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__neighbor_internal(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 0, ptr %i.b, align 4, !tbaa !51
  %i.c = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %bb.s, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @H5B2__protect_internal(ptr noundef %0, ptr noundef %5, ptr noundef %2, i16 noundef zeroext %1, i1 noundef zeroext false, i32 noundef 128) ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 272 ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !52
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.t = call i32 @H5B2__locate_record(ptr noundef %i.l, i32 noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.w = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !14
  %i.x = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__neighbor_internal, i32 noundef 296, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.17) #4 ; 0 uses
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.b, align 4, !tbaa !51
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !51
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = icmp eq i32 %4, 0
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !51  ; 6 uses
  br i1 %i.ac, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = add i32 %i.ad, -1
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %i.af = load i16, ptr %i.m, align 8, !tbaa !52
  %i.ag = zext i16 %i.af to i32
  %i.ah = icmp ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.i
  %.sink59 = phi i32 [ %i.ae, %bb.i ], [ %i.ad, %bb.j ]
  %.sink = load ptr, ptr %i.r, align 8, !tbaa !38
  %.sink57 = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.ai = zext i32 %.sink59 to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sink57, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.ak
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j, %bb.h
  %.042 = phi ptr [ %3, %bb.j ], [ %3, %bb.h ], [ %i.al, %.sink.split ] ; 2 uses
  %i.am = icmp ugt i16 %1, 1
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.an = add i16 %1, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41
  %i.aq = zext i32 %i.ad to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.aq
  %i.as = call i32 @H5B2__neighbor_internal(ptr noundef nonnull %0, i16 noundef zeroext %i.an, ptr noundef %i.ar, ptr noundef %.042, i32 noundef %4, ptr noundef nonnull %i.i, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.au = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.av = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !14
  %i.aw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__neighbor_internal, i32 noundef 317, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.18) #4 ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.az = zext i32 %i.ad to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.az
  %i.bb = call i32 @H5B2__neighbor_leaf(ptr noundef nonnull %0, ptr noundef %i.ba, ptr noundef %.042, i32 noundef %4, ptr noundef nonnull %i.i, ptr noundef %6, ptr noundef %7, ptr noundef %8) #4
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bd = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.be = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !14
  %i.bf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__neighbor_internal, i32 noundef 322, i64 noundef %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.19) #4 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  %i.bg = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.bh = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !14
  %i.bi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__neighbor_internal, i32 noundef 291, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.12) #4 ; 0 uses
  br label %bb.s

bb.q:                                             ; preds = %bb.l, %bb.n, %bb.o, %bb.m, %bb.d
  %.0.ph = phi i32 [ 0, %bb.n ], [ -1, %bb.o ], [ 0, %bb.l ], [ -1, %bb.m ], [ -1, %bb.d ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !45
  %i.bl = load i64, ptr %2, align 8, !tbaa !47
  %i.bm = call i32 @H5AC_unprotect(ptr noundef %i.bk, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.bl, ptr noundef nonnull %i.i, i32 noundef 0) #4
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.bp = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !14
  %i.bq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__neighbor_internal, i32 noundef 329, i64 noundef %i.bo, i64 noundef %i.bp, ptr noundef nonnull @.str.20) #4 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.a
  %.1 = phi i32 [ -1, %bb.r ], [ %.0.ph, %bb.q ], [ -1, %bb.p ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1
}

declare i32 @H5B2__locate_record(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5B2__neighbor_leaf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef range(i32 -1, 1) i32 @H5B2__insert_internal(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 0, ptr %i.b, align 4, !tbaa !51
  %i.d = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %bb.ba, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @H5B2__protect_internal(ptr noundef %0, ptr noundef %5, ptr noundef %3, i16 noundef zeroext %1, i1 noundef zeroext false, i32 noundef 0) ; 14 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.at, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 272 ; 4 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !52
  %i.p = zext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 256 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.u = call i32 @H5B2__locate_record(ptr noundef %i.m, i32 noundef %i.p, ptr noundef %i.r, ptr noundef %i.t, ptr noundef %6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #4
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.x = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !14
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__insert_internal, i32 noundef 378, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.17) #4 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.c, align 4, !tbaa !51   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.ac = load i64, ptr @H5E_EXISTS_g, align 8, !tbaa !14
  %i.ad = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__insert_internal, i32 noundef 380, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.21) #4 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp sgt i32 %i.z, 0
  %.pre = load i32, ptr %i.b, align 4, !tbaa !51  ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = add i32 %.pre, 1                        ; 2 uses
  store i32 %i.af, ptr %i.b, align 4, !tbaa !51
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = phi i32 [ %i.af, %bb.h ], [ %.pre, %bb.g ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.aj = zext i16 %1 to i64
  %i.ak = getelementptr [48 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !54 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 264 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41 ; 3 uses
  %i.ap = zext i32 %i.ag to i64
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !50
  %i.at = zext i16 %i.as to i32
  %i.au = icmp eq i32 %i.am, %i.at
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.aj
  %i.av = phi i32 [ %i.dv, %bb.aj ], [ %i.ag, %bb.i ] ; 8 uses
  %i.aw = phi ptr [ %i.dx, %bb.aj ], [ %i.ao, %bb.i ] ; 4 uses
  %.0101128 = phi i32 [ %i.dw, %bb.aj ], [ 2, %bb.i ] ; 3 uses
  %i.ax = icmp eq i32 %i.av, 0
  br i1 %i.ax, label %bb.j, label %bb.p

bb.j:                                             ; preds = %.lr.ph
  %.not116 = icmp eq i32 %.0101128, 0
  br i1 %.not116, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !50
  %i.ba = zext i16 %i.az to i32
  %i.bb = icmp samesign ugt i32 %i.am, %i.ba
  br i1 %i.bb, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bc = call i32 @H5B2__redistribute2(ptr noundef nonnull %0, i16 noundef zeroext %1, ptr noundef nonnull %i.j, i32 noundef 0) #4
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.be = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.bf = load i64, ptr @H5E_CANTREDISTRIBUTE_g, align 8, !tbaa !14
  %i.bg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__insert_internal, i32 noundef 402, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.22) #4 ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bh = call i32 @H5B2__split1(ptr noundef nonnull %0, i16 noundef zeroext %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, i32 noundef 0) #4
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.bj = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.bk = load i64, ptr @H5E_CANTSPLIT_g, align 8, !tbaa !14
  %i.bl = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__insert_internal, i32 noundef 407, i64 noundef %i.bj, i64 noundef %i.bk, ptr noundef nonnull @.str.23) #4 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %.lr.ph
  %i.bm = load i16, ptr %i.n, align 8, !tbaa !52
  %i.bn = zext i16 %i.bm to i32
  %i.bo = icmp eq i32 %i.av, %i.bn
  %.not115 = icmp eq i32 %.0101128, 0             ; 2 uses
  br i1 %i.bo, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  br i1 %.not115, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = add nsw i32 %i.av, -1                   ; 2 uses
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !50
  %i.bu = zext i16 %i.bt to i32
  %i.bv = icmp samesign ugt i32 %i.am, %i.bu
  br i1 %i.bv, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bw = call i32 @H5B2__redistribute2(ptr noundef nonnull %0, i16 noundef zeroext %1, ptr noundef nonnull %i.j, i32 noundef %i.bp) #4
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.by = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !14
  %i.bz = load i64, ptr @H5E_CANTREDISTRIBUTE_g, align 8, !tbaa !14
  %i.ca = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5B2__insert_internal, i32 noundef 414, i64 noundef %i.by, i64 noundef %i.bz, ptr noundef nonnull @.str.22) #4 ; 0 uses
  br label %.thread

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.cb = call i32 @H5B2__split1(ptr noundef nonnull %0, i16 noundef zeroext %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, i32 noundef %i.av) #4
  %i.cc = icmp slt i32 %i.cb, 0
end_hunk_0
