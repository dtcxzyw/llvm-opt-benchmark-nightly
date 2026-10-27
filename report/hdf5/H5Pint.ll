Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Pint?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@H5P__cmp_prop:bb.a
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60 ; 2 uses
  %.not88 = icmp eq ptr %i.an, null               ; 2 uses
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread109.thread
  br i1 %.not88, label %.thread110.thread, label %.thread116

bb.o:                                             ; preds = %.thread109.thread
  br i1 %.not88, label %.thread116, label %.thread110

.thread110:                                       ; preds = %bb.o
  %.not90 = icmp eq ptr %i.ak, %i.an
  br i1 %.not90, label %.thread110.thread, label %.thread116

.thread110.thread:                                ; preds = %bb.n, %.thread110
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61 ; 2 uses
  %.not91 = icmp eq ptr %i.as, null               ; 2 uses
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread110.thread
  br i1 %.not91, label %.thread111.thread, label %.thread116

bb.q:                                             ; preds = %.thread110.thread
  br i1 %.not91, label %.thread116, label %.thread111

.thread111:                                       ; preds = %bb.q
  %.not93 = icmp eq ptr %i.ap, %i.as
  br i1 %.not93, label %.thread111.thread, label %.thread116

.thread111.thread:                                ; preds = %bb.p, %.thread111
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !53 ; 2 uses
  %.not94 = icmp eq ptr %i.ax, null               ; 2 uses
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread111.thread
  br i1 %.not94, label %.thread112.thread, label %.thread116

bb.s:                                             ; preds = %.thread111.thread
  br i1 %.not94, label %.thread116, label %.thread112

.thread112:                                       ; preds = %bb.s
  %.not96 = icmp eq ptr %i.au, %i.ax
  br i1 %.not96, label %.thread112.thread, label %.thread116

.thread112.thread:                                ; preds = %bb.r, %.thread112
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !62 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !62 ; 2 uses
  %.not97 = icmp eq ptr %i.bc, null               ; 2 uses
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread112.thread
  br i1 %.not97, label %.thread113.thread, label %.thread116

bb.u:                                             ; preds = %.thread112.thread
  br i1 %.not97, label %.thread116, label %.thread113

.thread113:                                       ; preds = %bb.u
  %.not99 = icmp eq ptr %i.az, %i.bc
  br i1 %.not99, label %.thread113.thread, label %.thread116

.thread113.thread:                                ; preds = %bb.t, %.thread113
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !56 ; 2 uses
  %.not100 = icmp eq ptr %i.bh, null              ; 2 uses
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread113.thread
  br i1 %.not100, label %.thread114.thread, label %.thread116

bb.w:                                             ; preds = %.thread113.thread
  br i1 %.not100, label %.thread116, label %.thread114

.thread114:                                       ; preds = %bb.w
  %.not102 = icmp eq ptr %i.be, %i.bh
  br i1 %.not102, label %.thread114.thread, label %.thread116

.thread114.thread:                                ; preds = %bb.v, %.thread114
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !51
  %i.bk = icmp eq ptr %i.bj, null
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !51 ; 2 uses
  br i1 %i.bk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread114.thread
  %.not103 = icmp ne ptr %i.bm, null
  %spec.select = sext i1 %.not103 to i32
  br label %.thread116

bb.y:                                             ; preds = %.thread114.thread
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.thread116, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.bo = call i32 @H5_user_cb_prepare(ptr noundef nonnull %2) #12 ; 0 uses
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !62
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !51
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !51
  %i.bs = load i64, ptr %i.j, align 8, !tbaa !52
  %i.bt = call i32 %i.bp(ptr noundef %i.bq, ptr noundef %i.br, i64 noundef %i.bs) #12
  %i.bu = call i32 @H5_user_cb_restore(ptr noundef nonnull %2) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %.thread116

.thread116:                                       ; preds = %bb.x, %bb.z, %bb.y, %.thread114, %bb.w, %bb.v, %.thread113, %bb.u, %bb.t, %.thread112, %bb.s, %bb.r, %.thread111, %bb.q, %bb.p, %.thread110, %bb.o, %bb.n, %.thread109, %bb.m, %bb.l, %.thread108, %bb.k, %bb.j, %.thread107, %bb.i, %bb.h, %.thread, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ -1, %bb.f ], [ 1, %bb.g ], [ -1, %.thread ], [ -1, %bb.h ], [ 1, %bb.i ], [ -1, %.thread107 ], [ -1, %bb.j ], [ 1, %bb.k ], [ -1, %.thread108 ], [ -1, %bb.l ], [ 1, %bb.m ], [ -1, %.thread109 ], [ -1, %bb.n ], [ 1, %bb.o ], [ -1, %.thread110 ], [ -1, %bb.p ], [ 1, %bb.q ], [ -1, %.thread111 ], [ -1, %bb.r ], [ 1, %bb.s ], [ -1, %.thread112 ], [ -1, %bb.t ], [ 1, %bb.u ], [ -1, %.thread113 ], [ -1, %bb.v ], [ 1, %bb.w ], [ -1, %.thread114 ], [ %spec.select, %bb.x ], [ 1, %bb.y ], [ %i.bt, %bb.z ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5P__cmp_plist(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5P_plist_cmp_ud_t, align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !29
  %i.b = load i8, ptr @H5P_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.o, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %2, align 4, !tbaa !29
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.m = icmp ugt i64 %i.i, %i.k
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %2, align 4, !tbaa !29
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !41, !range !12, !noundef !13 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !41, !range !12, !noundef !13 ; 2 uses
  %i.r = icmp samesign ult i8 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -1, ptr %2, align 4, !tbaa !29
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.s = icmp samesign ugt i8 %i.o, %i.q
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %2, align 4, !tbaa !29
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.t, align 8, !tbaa !67
  store ptr %1, ptr %3, align 8, !tbaa !68
  %i.u = call i32 @H5P__iterate_plist(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noundef nonnull @H5P__cmp_plist_cb, ptr noundef nonnull %3) ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !16
  %i.x = load i64, ptr @H5E_CANTREGISTER_g, align 8, !tbaa !16
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.H5P__cmp_plist, i32 noundef 4036, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.50) #12 ; 0 uses
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.t, align 8, !tbaa !67
  store i32 %i.z, ptr %2, align 4, !tbaa !29
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %0, align 8, !tbaa !39
  %i.ab = load ptr, ptr %1, align 8, !tbaa !39
  %i.ac = call i32 @H5P__cmp_class(ptr noundef %i.aa, ptr noundef %i.ab)
  store i32 %i.ac, ptr %2, align 4, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ -1, %bb.k ], [ 0, %bb.m ], [ 0, %bb.a ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5P__iterate_plist(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.H5P_iter_plist_ud_t, align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !29
  %i.b = load i8, ptr @H5P_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.e, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @H5SL_create(i32 noundef 2, ptr noundef null) #12 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.j = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !16
  %i.k = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !16
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.H5P__iterate_plist, i32 noundef 4410, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.23) #12 ; 0 uses
  store i32 0, ptr %2, align 4, !tbaa !29
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.m, align 8, !tbaa !71
  store ptr %3, ptr %5, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.n, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.h, ptr %i.o, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.p, align 8, !tbaa !75
  %i.q = load i32, ptr %2, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %i.q, ptr %i.r, align 8, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = call i32 @H5SL_iterate(ptr noundef %i.t, ptr noundef nonnull @H5P__iterate_plist_cb, ptr noundef nonnull %5) #12 ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  %brmerge.not = and i1 %1, %.not
  br i1 %brmerge.not, label %.preheader, label %.thread31

.preheader:                                       ; preds = %bb.c, %bb.d
  %.019.in = phi ptr [ %.019, %bb.d ], [ %0, %bb.c ]
  %.019 = load ptr, ptr %.019.in, align 8, !tbaa !20 ; 3 uses
  %.not26 = icmp eq ptr %.019, null
  br i1 %.not26, label %.thread31, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %.019, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = call i32 @H5SL_iterate(ptr noundef %i.w, ptr noundef nonnull @H5P__iterate_plist_pclass_cb, ptr noundef nonnull %5) #12 ; 2 uses
  %.not27 = icmp eq i32 %i.x, 0
  br i1 %.not27, label %.preheader, label %.thread31, !llvm.loop !125

.thread31:                                        ; preds = %.preheader, %bb.d, %bb.c
  %.133 = phi i32 [ %i.u, %bb.c ], [ 0, %.preheader ], [ %i.x, %bb.d ]
  %storemerge = load i32, ptr %i.a, align 4, !tbaa !29
  store i32 %storemerge, ptr %2, align 4, !tbaa !29
  %i.y = call i32 @H5SL_close(ptr noundef nonnull %i.h) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.thread31, %bb.a
  %.2 = phi i32 [ %.133, %.thread31 ], [ -1, %.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @H5P__cmp_plist_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.g, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !68     ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !46     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = tail call ptr @H5SL_search(ptr noundef %i.j, ptr noundef %i.h) #12
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = tail call ptr @H5SL_search(ptr noundef %i.m, ptr noundef %i.h) #12
  %.not14.i = icmp eq ptr %i.n, null
  br i1 %.not14.i, label %.preheader.i, label %H5P_exist_plist.exit

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.011.in.i = phi ptr [ %.011.i, %bb.d ], [ %i.g, %bb.c ]
  %.011.i = load ptr, ptr %.011.in.i, align 8, !tbaa !20 ; 3 uses
  %.not15.i = icmp eq ptr %.011.i, null
  br i1 %.not15.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = tail call ptr @H5SL_search(ptr noundef %i.p, ptr noundef %i.h) #12
  %.not16.i = icmp eq ptr %i.q, null
  br i1 %.not16.i, label %.preheader.i, label %H5P_exist_plist.exit, !llvm.loop !0

H5P_exist_plist.exit:                             ; preds = %bb.d, %bb.c
  %i.r = load ptr, ptr %1, align 8, !tbaa !68
  %i.s = load ptr, ptr %0, align 8, !tbaa !46
  %i.t = tail call ptr @H5P__find_prop_plist(ptr noundef %i.r, ptr noundef %i.s) ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %H5P_exist_plist.exit
  %i.v = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !16
  %i.w = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !16
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.H5P__cmp_plist_cb, i32 noundef 3957, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.48) #12 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %H5P_exist_plist.exit
  %i.y = tail call fastcc i32 @H5P__cmp_prop(ptr noundef nonnull %0, ptr noundef nonnull %i.t) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !67
  %.not18 = icmp ne i32 %i.y, 0
  %. = zext i1 %.not18 to i32
  br label %bb.g

.loopexit:                                        ; preds = %.preheader.i, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.aa, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.loopexit, %bb.f, %bb.e
  %.1 = phi i32 [ %., %bb.f ], [ 0, %bb.a ], [ 1, %.loopexit ], [ -1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @H5P_class_isa(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.f, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.o, %bb.f ]   ; 2 uses
  %i.a = load i8, ptr @H5P_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %tailrecurse
  store i8 1, ptr @H5P_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5P__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5P_init_g, align 1, !tbaa !11, !range !12
  %.pre8 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre9 = trunc nuw i8 %.pre to i1
  %.pre10 = trunc nuw i8 %.pre8 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5P_init_g, align 1, !tbaa !11
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.H5P_class_isa, i32 noundef 4081, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.8) #12 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %._crit_edge, %tailrecurse
  %.pre-phi11 = phi i1 [ %.pre10, %._crit_edge ], [ %i.d, %tailrecurse ]
  %.pre-phi = phi i1 [ %.pre9, %._crit_edge ], [ %i.b, %tailrecurse ]
  %i.k = xor i1 %.pre-phi11, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %.loopexit, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @H5P__cmp_class(ptr noundef %.tr, ptr noundef %1)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %.tr, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.o, null
end_hunk_0
