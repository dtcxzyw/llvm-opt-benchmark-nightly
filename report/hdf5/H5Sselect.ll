Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Sselect?download=true
inline.NumInlined: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@H5S_select_project_simple:bb.a
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.k = tail call i32 %i.j(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5S_select_iter_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !43
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = zext i32 %i.h to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.l, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load i32, ptr %i.g, align 8, !tbaa !21
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.p, i64 %i.s, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %2, ptr %i.t, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 %i.w, ptr %i.x, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %3, ptr %i.y, align 8, !tbaa !47
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull %1, ptr noundef nonnull %0) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ %i.ac, %bb.d ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5S_select_iter_coords(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef %1) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @H5S_select_iter_nelmts(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.j = tail call i64 %i.i(ptr noundef nonnull %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5S_select_iter_next(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, i64 noundef %1) #8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46
  %i.m = sub i64 %i.l, %1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5S_select_iter_get_seq_list(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #8 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.m = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !24
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iter_get_seq_list, i32 noundef 1307, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.21) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ %i.j, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5S_select_iter_release(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5S_select_iterate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 7 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 11 uses
  %i.d = alloca [32 x i64], align 16              ; 14 uses
  %5 = alloca %struct.H5_user_cb_state_t, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.e = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %i.i, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.j = tail call i32 @H5S__init_package() #8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10
  %.pre246 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre249 = trunc nuw i8 %.pre to i1
  %.pre250 = trunc nuw i8 %.pre246 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.l = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.m = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1392, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread201

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi251 = phi i1 [ %.pre250, %._crit_edge ], [ %i.h, %bb.a ]
  %.pre-phi = phi i1 [ %.pre249, %._crit_edge ], [ %i.f, %bb.a ]
  %i.o = xor i1 %.pre-phi251, true
  %i.p = select i1 %.pre-phi, i1 true, i1 %i.o
  br i1 %i.p, label %bb.e, label %.thread201, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i64 @H5T_get_size(ptr noundef %1) #8 ; 7 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr @H5E_DATATYPE_g, align 8, !tbaa !24
  %i.t = load i64, ptr @H5E_BADSIZE_g, align 8, !tbaa !24
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1402, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.22) #8 ; 0 uses
  br label %.thread201

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 15 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.y = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1406, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.23) #8 ; 0 uses
  br label %.thread201

bb.i:                                             ; preds = %bb.g
  %i.aa = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = xor i1 %i.ad, true
  %i.af = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %i.af, label %bb.j, label %H5S_select_iter_init.exit.thread, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !21 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !43
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %H5S_select_iter_init.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.am = zext i32 %i.ah to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.al, i64 %i.an, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 272
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull align 8 %i.ap, i64 %i.an, i1 false)
  br label %H5S_select_iter_init.exit

H5S_select_iter_init.exit:                        ; preds = %bb.j, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 536
  store i64 %i.q, ptr %i.aq, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 528
  store i64 %i.at, ptr %i.au, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 544
  store i32 0, ptr %i.av, align 8, !tbaa !47
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 160
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.az = tail call i32 %i.ay(ptr noundef nonnull %2, ptr noundef nonnull %i.v) #8, !inline_history !55
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %H5S_select_iter_init.exit.thread, label %bb.l

bb.l:                                             ; preds = %H5S_select_iter_init.exit
  %i.bb = load i64, ptr %i.as, align 8, !tbaa !32 ; 4 uses
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.be = load i64, ptr @H5E_CANTCOUNT_g, align 8, !tbaa !24
  %i.bf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1415, i64 noundef %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.25) #8 ; 0 uses
  br label %.thread182

bb.n:                                             ; preds = %bb.l
  %i.bg = load i32, ptr %i.ag, align 8, !tbaa !21
  %.fr235 = freeze i32 %i.bg                      ; 7 uses
  %.not = icmp eq i32 %.fr235, 0
  br i1 %.not, label %._crit_edge252, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !44
  %i.bj = zext i32 %.fr235 to i64                 ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %i.bi, i64 %i.bk, i1 false)
  br label %._crit_edge252

._crit_edge252:                                   ; preds = %bb.n, %bb.o
  %.pre-phi254 = phi i64 [ %i.bj, %bb.o ], [ 0, %bb.n ] ; 7 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.pre-phi254
  store i64 %i.q, ptr %i.bl, align 8, !tbaa !24
  %i.bm = tail call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_size_t_seq_free_list, i64 noundef 1024) #8 ; 7 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge252
  %i.bo = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bp = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.bq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1432, i64 noundef %i.bo, i64 noundef %i.bp, ptr noundef nonnull @.str.26) #8 ; 0 uses
  br label %.thread182

bb.q:                                             ; preds = %._crit_edge252
  %i.br = tail call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_hsize_t_seq_free_list, i64 noundef 1024) #8 ; 6 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.loopexit.thread, label %.preheader204

.preheader204:                                    ; preds = %bb.q
  %.not234 = icmp eq i64 %i.bb, 0
  br i1 %.not234, label %.loopexit.thread277, label %.lr.ph230

.lr.ph230:                                        ; preds = %.preheader204
  %i.bt = icmp sgt i32 %.fr235, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br i1 %i.bt, label %.lr.ph230.split.us.preheader, label %.lr.ph230.split

.lr.ph230.split.us.preheader:                     ; preds = %.lr.ph230
  %6 = and i64 %.pre-phi254, 1
  %lcmp.mod.not.not = icmp eq i64 %6, 0
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.pre-phi254
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.pre-phi254
  %indvars.iv.next.prol = add nsw i64 %.pre-phi254, -1
  %9 = icmp eq i64 %.pre-phi254, 0
  br label %.lr.ph230.split.us

.lr.ph230.split.us:                               ; preds = %.lr.ph230.split.us.preheader, %._crit_edge.split.us.us
  %.0104229.us = phi i64 [ %i.dv, %._crit_edge.split.us.us ], [ %i.bb, %.lr.ph230.split.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.bw = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !53
  %i.bz = call i32 %i.by(ptr noundef nonnull %i.v, i64 noundef 1024, i64 noundef %.0104229.us, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bm) #8
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %.split233.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph230.split.us
  %i.cb = load i64, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %.not238 = icmp eq i64 %i.cb, 0
  br i1 %.not238, label %._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader.us, %._crit_edge221.split.us.us.us
  %i.cc = phi i64 [ %i.dp, %._crit_edge221.split.us.us.us ], [ %i.cb, %.preheader.us ]
  %.091226.us.us = phi i64 [ %i.dq, %._crit_edge221.split.us.us.us ], [ 0, %.preheader.us ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.091226.us.us
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !24 ; 2 uses
  %.not239 = icmp eq i64 %i.ce, 0
  br i1 %.not239, label %._crit_edge221.split.us.us.us, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph.us
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.091226.us.us
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !24
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %bb.w
  %.087218.us.us.us = phi i64 [ %i.dl, %bb.w ], [ %i.ce, %.lr.ph.us.us.us.preheader ]
  %.089217.us.us.us = phi i64 [ %i.dk, %bb.w ], [ %i.cg, %.lr.ph.us.us.us.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.us.us
  %i.ch = load i64, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.ci = urem i64 %.089217.us.us.us, %i.ch
  store i64 %i.ci, ptr %8, align 8, !tbaa !24
  %i.cj = udiv i64 %.089217.us.us.us, %i.ch
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv.unr = phi i64 [ %.pre-phi254, %.lr.ph.us.us.us ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.086215.us.us.us.unr = phi i64 [ %.089217.us.us.us, %.lr.ph.us.us.us ], [ %i.cj, %.prol.loopexit.unr-lcssa ]
  br i1 %9, label %._crit_edge.us.us.us, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.prol.loopexit, %.lr.ph.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1.a, %.lr.ph.us.us.us.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %.086215.us.us.us = phi i64 [ %i.ct, %.lr.ph.us.us.us.new ], [ %.086215.us.us.us.unr, %.prol.loopexit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !24 ; 2 uses
  %i.cm = urem i64 %.086215.us.us.us, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !24
  %i.co = udiv i64 %.086215.us.us.us, %i.cl       ; 2 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv, -1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.a
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24 ; 2 uses
  %i.cr = urem i64 %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.a
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !24
  %i.ct = udiv i64 %i.co, %i.cq
  %indvars.iv.next.1.a = add nsw i64 %indvars.iv, -2
  %i.cu = icmp sgt i64 %indvars.iv, 1
  br i1 %i.cu, label %.lr.ph.us.us.us.new, label %._crit_edge.us.us.us, !llvm.loop !84

._crit_edge.us.us.us:                             ; preds = %.lr.ph.us.us.us.new, %.prol.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %.089217.us.us.us ; 2 uses
  %i.cw = load i32, ptr %3, align 8, !tbaa !88
  switch i32 %i.cw, label %.split.us [
    i32 0, label %bb.s
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %._crit_edge.us.us.us
  %i.cx = load ptr, ptr %i.bu, align 8, !tbaa !28
  %i.cy = call i32 %i.cx(ptr noundef %i.cv, ptr noundef %1, i32 noundef %.fr235, ptr noundef nonnull %i.d, ptr noundef %4) #8
  br label %bb.v

bb.s:                                             ; preds = %._crit_edge.us.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.cz = call i32 @H5_user_cb_prepare(ptr noundef nonnull %5) #8
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = load ptr, ptr %i.bu, align 8, !tbaa !28
  %i.dc = load i64, ptr %i.bv, align 8, !tbaa !28
  %i.dd = call i32 %i.db(ptr noundef %i.cv, i64 noundef %i.dc, i32 noundef %.fr235, ptr noundef nonnull %i.d, ptr noundef %4) #8
  %i.de = call i32 @H5_user_cb_restore(ptr noundef nonnull %5) #8
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.4100.us.us.us = phi i32 [ %i.dd, %bb.u ], [ %i.cy, %bb.r ] ; 3 uses
  %i.dg = icmp slt i32 %.4100.us.us.us, 0
  br i1 %i.dg, label %.thread272, label %bb.w

.thread272:                                       ; preds = %bb.v
  %i.dh = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.di = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !24
  %i.dj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1498, i64 noundef %i.dh, i64 noundef %i.di, ptr noundef nonnull @.str.31) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %._crit_edge221.split.us.us.us.loopexit

bb.w:                                             ; preds = %bb.v
  %i.dk = add i64 %.089217.us.us.us, %i.q
  %i.dl = sub i64 %.087218.us.us.us, %i.q         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.dm = icmp ne i64 %i.dl, 0
  %i.dn = icmp eq i32 %.4100.us.us.us, 0
  %i.do = and i1 %i.dn, %i.dm
  br i1 %i.do, label %.lr.ph.us.us.us, label %._crit_edge221.split.us.us.us.loopexit, !llvm.loop !85

._crit_edge221.split.us.us.us.loopexit:           ; preds = %bb.w, %.thread272
  %.pre248 = load i64, ptr %i.c, align 8, !tbaa !24
  br label %._crit_edge221.split.us.us.us

._crit_edge221.split.us.us.us:                    ; preds = %._crit_edge221.split.us.us.us.loopexit, %.lr.ph.us
  %i.dp = phi i64 [ %i.cc, %.lr.ph.us ], [ %.pre248, %._crit_edge221.split.us.us.us.loopexit ] ; 2 uses
  %.298.lcssa.us.us = phi i32 [ 0, %.lr.ph.us ], [ %.4100.us.us.us, %._crit_edge221.split.us.us.us.loopexit ] ; 2 uses
  %i.dq = add nuw i64 %.091226.us.us, 1           ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = icmp eq i32 %.298.lcssa.us.us, 0
  %i.dt = and i1 %i.ds, %i.dr
  br i1 %i.dt, label %.lr.ph.us, label %._crit_edge.split.us.us, !llvm.loop !86

._crit_edge.split.us.us:                          ; preds = %._crit_edge221.split.us.us.us, %.preheader.us
  %.197.lcssa.us = phi i32 [ 0, %.preheader.us ], [ %.298.lcssa.us.us, %._crit_edge221.split.us.us.us ] ; 2 uses
  %i.du = load i64, ptr %i.b, align 8, !tbaa !24
  %i.dv = sub i64 %.0104229.us, %i.du             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.dw = icmp ne i64 %i.dv, 0
  %i.dx = icmp eq i32 %.197.lcssa.us, 0
  %i.dy = and i1 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph230.split.us, label %.loopexit.thread277

.loopexit.thread:                                 ; preds = %bb.q
  %i.dz = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ea = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.eb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1434, i64 noundef %i.dz, i64 noundef %i.ea, ptr noundef nonnull @.str.27) #8 ; 0 uses
  %i.ec = tail call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.bm) #8 ; 0 uses
  br label %.thread182

.lr.ph230.split:                                  ; preds = %.lr.ph230, %._crit_edge.split
  %.0104229 = phi i64 [ %i.fx, %._crit_edge.split ], [ %i.bb, %.lr.ph230 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ed = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !53
  %i.eg = call i32 %i.ef(ptr noundef nonnull %i.v, i64 noundef 1024, i64 noundef %.0104229, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bm) #8
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %.split233.us, label %.preheader

.preheader:                                       ; preds = %.lr.ph230.split
  %i.ei = load i64, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %.not236 = icmp eq i64 %i.ei, 0
  br i1 %.not236, label %._crit_edge.split, label %.lr.ph

.split233.us:                                     ; preds = %.lr.ph230.split, %.lr.ph230.split.us
  %i.ej = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !24
  %i.ek = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !24
  %i.el = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1445, i64 noundef %i.ej, i64 noundef %i.ek, ptr noundef nonnull @.str.28) #8 ; 0 uses
  br label %.thread143

.lr.ph:                                           ; preds = %.preheader, %._crit_edge221.split
  %i.em = phi i64 [ %i.fr, %._crit_edge221.split ], [ %i.ei, %.preheader ]
  %.091226 = phi i64 [ %i.fs, %._crit_edge221.split ], [ 0, %.preheader ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.091226
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !24 ; 2 uses
  %.not237 = icmp eq i64 %i.eo, 0
  br i1 %.not237, label %._crit_edge221.split, label %.lr.ph220.preheader

.lr.ph220.preheader:                              ; preds = %.lr.ph
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.091226
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !24
  br label %.lr.ph220

.lr.ph220:                                        ; preds = %.lr.ph220.preheader, %bb.ac
  %.087218 = phi i64 [ %i.fn, %bb.ac ], [ %i.eo, %.lr.ph220.preheader ]
  %.089217 = phi i64 [ %i.fm, %bb.ac ], [ %i.eq, %.lr.ph220.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %.089217 ; 2 uses
  %i.es = load i32, ptr %3, align 8, !tbaa !88
  switch i32 %i.es, label %.split.us [
    i32 0, label %bb.x
    i32 1, label %bb.aa
  ]

bb.x:                                             ; preds = %.lr.ph220
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.et = call i32 @H5_user_cb_prepare(ptr noundef nonnull %5) #8
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ev = load ptr, ptr %i.bu, align 8, !tbaa !28
  %i.ew = load i64, ptr %i.bv, align 8, !tbaa !28
  %i.ex = call i32 %i.ev(ptr noundef %i.er, i64 noundef %i.ew, i32 noundef %.fr235, ptr noundef nonnull %i.d, ptr noundef %4) #8
  %i.ey = call i32 @H5_user_cb_restore(ptr noundef nonnull %5) #8
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.y, %bb.x, %bb.t, %bb.s
  %H5E_CANTSET_g.sink = phi ptr [ @H5E_CANTSET_g, %bb.s ], [ @H5E_CANTRESTORE_g, %bb.t ], [ @H5E_CANTRESTORE_g, %bb.y ], [ @H5E_CANTSET_g, %bb.x ]
  %.sink = phi i32 [ 1478, %bb.s ], [ 1484, %bb.t ], [ 1484, %bb.y ], [ 1478, %bb.x ]
  %i.fa = load i64, ptr @H5E_LIB_g, align 8, !tbaa !24
  %i.fb = load i64, ptr %H5E_CANTSET_g.sink, align 8, !tbaa !24
  %i.fc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef %.sink, i64 noundef %i.fa, i64 noundef %i.fb, ptr noundef nonnull @.str.29) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph220
  %i.fd = load ptr, ptr %i.bu, align 8, !tbaa !28
  %i.fe = call i32 %i.fd(ptr noundef %i.er, ptr noundef %1, i32 noundef %.fr235, ptr noundef nonnull %i.d, ptr noundef %4) #8
  br label %bb.ab

.split.us:                                        ; preds = %.lr.ph220, %._crit_edge.us.us.us
  %i.ff = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.fg = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !24
  %i.fh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1493, i64 noundef %i.ff, i64 noundef %i.fg, ptr noundef nonnull @.str.30) #8 ; 0 uses
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.4100 = phi i32 [ %i.ex, %bb.z ], [ %i.fe, %bb.aa ] ; 3 uses
  %i.fi = icmp slt i32 %.4100, 0
  br i1 %i.fi, label %.thread273, label %bb.ac

.thread273:                                       ; preds = %bb.ab
  %i.fj = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.fk = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !24
  %i.fl = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1498, i64 noundef %i.fj, i64 noundef %i.fk, ptr noundef nonnull @.str.31) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %._crit_edge221.split.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.fm = add i64 %.089217, %i.q
  %i.fn = sub i64 %.087218, %i.q                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.fo = icmp ne i64 %i.fn, 0
  %i.fp = icmp eq i32 %.4100, 0
  %i.fq = and i1 %i.fp, %i.fo
  br i1 %i.fq, label %.lr.ph220, label %._crit_edge221.split.loopexit, !llvm.loop !85

bb.ad:                                            ; preds = %.split.us, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread143

._crit_edge221.split.loopexit:                    ; preds = %bb.ac, %.thread273
  %.pre247 = load i64, ptr %i.c, align 8, !tbaa !24
  br label %._crit_edge221.split

._crit_edge221.split:                             ; preds = %._crit_edge221.split.loopexit, %.lr.ph
  %i.fr = phi i64 [ %i.em, %.lr.ph ], [ %.pre247, %._crit_edge221.split.loopexit ] ; 2 uses
  %.298.lcssa = phi i32 [ 0, %.lr.ph ], [ %.4100, %._crit_edge221.split.loopexit ] ; 2 uses
  %i.fs = add nuw i64 %.091226, 1                 ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %i.fu = icmp eq i32 %.298.lcssa, 0
  %i.fv = and i1 %i.fu, %i.ft
  br i1 %i.fv, label %.lr.ph, label %._crit_edge.split, !llvm.loop !86

.thread143:                                       ; preds = %.split233.us, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.loopexit.thread277

._crit_edge.split:                                ; preds = %._crit_edge221.split, %.preheader
  %.197.lcssa = phi i32 [ 0, %.preheader ], [ %.298.lcssa, %._crit_edge221.split ] ; 2 uses
  %i.fw = load i64, ptr %i.b, align 8, !tbaa !24
  %i.fx = sub i64 %.0104229, %i.fw                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.fy = icmp ne i64 %i.fx, 0
  %i.fz = icmp eq i32 %.197.lcssa, 0
  %i.ga = and i1 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph230.split, label %.loopexit.thread277

.loopexit.thread277:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.thread143, %.preheader204
  %.8171281 = phi i32 [ 0, %.preheader204 ], [ %.197.lcssa.us, %._crit_edge.split.us.us ], [ -1, %.thread143 ], [ %.197.lcssa, %._crit_edge.split ]
  %i.gb = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.bm) #8 ; 0 uses
  %i.gc = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_hsize_t_seq_free_list, ptr noundef nonnull %i.br) #8 ; 0 uses
  br label %.thread182

.thread182:                                       ; preds = %.loopexit.thread, %.loopexit.thread277, %bb.p, %bb.m
  %.8159178188 = phi i32 [ -1, %bb.p ], [ -1, %bb.m ], [ %.8171281, %.loopexit.thread277 ], [ -1, %.loopexit.thread ]
  %i.gd = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !54
  %i.gg = call i32 %i.gf(ptr noundef nonnull %i.v) #8
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %bb.ae, label %.thread194

bb.ae:                                            ; preds = %.thread182
  %i.gi = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.gj = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !24
  %i.gk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1524, i64 noundef %i.gi, i64 noundef %i.gj, ptr noundef nonnull @.str.32) #8 ; 0 uses
  br label %.thread194

H5S_select_iter_init.exit.thread:                 ; preds = %bb.i, %H5S_select_iter_init.exit
  %i.gl = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.gm = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.gn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_iterate, i32 noundef 1410, i64 noundef %i.gl, i64 noundef %i.gm, ptr noundef nonnull @.str.24) #8 ; 0 uses
  br label %.thread194

.thread194:                                       ; preds = %.thread182, %bb.ae, %H5S_select_iter_init.exit.thread
  %.9199 = phi i32 [ -1, %H5S_select_iter_init.exit.thread ], [ %.8159178188, %.thread182 ], [ -1, %bb.ae ]
  %i.go = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list, ptr noundef nonnull %i.v) #8 ; 0 uses
  br label %.thread201

.thread201:                                       ; preds = %bb.h, %bb.f, %bb.c, %bb.d, %.thread194
  %.10 = phi i32 [ %.9199, %.thread194 ], [ 0, %bb.d ], [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.10
}

declare i64 @H5T_get_size(ptr noundef) local_unnamed_addr #4

declare noalias ptr @H5FL_reg_malloc(ptr noundef) local_unnamed_addr #4

declare noalias ptr @H5FL_seq_malloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @H5_user_cb_prepare(ptr noundef) local_unnamed_addr #4

declare i32 @H5_user_cb_restore(ptr noundef) local_unnamed_addr #4

declare ptr @H5FL_seq_free(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @H5Sget_select_type(i64 noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %1, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !23

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sget_select_type, i32 noundef 1552, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread16

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5S__init_package() #8
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !25

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sget_select_type, i32 noundef 1552, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread16

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %1) #8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !24
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sget_select_type, i32 noundef 1552, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread16

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #8           ; 0 uses
  %i.aa = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 4) #8 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread21, label %bb.j, !prof !27

.thread21:                                        ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_ID_g, align 8, !tbaa !24
  %i.ad = load i64, ptr @H5E_BADID_g, align 8, !tbaa !24
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sget_select_type, i32 noundef 1556, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.5) #8 ; 0 uses
  %i.af = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %.thread16

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !56
  %i.aj = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %bb.k

.thread16:                                        ; preds = %bb.c, %bb.f, %bb.h, %.thread21
  %i.ak = call i32 @H5E_dump_api_stack() #8       ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread16
  %.091419 = phi i32 [ -1, %.thread16 ], [ %i.ai, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.091419
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @H5S_get_select_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.i, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5S_select_shape_same(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 6 uses
  %i.b = alloca [32 x i64], align 16              ; 5 uses
  %i.c = alloca [32 x i64], align 16              ; 6 uses
  %i.d = alloca [32 x i64], align 16              ; 5 uses
  %i.e = alloca [32 x i64], align 16              ; 9 uses
  %i.f = alloca [32 x i64], align 16              ; 7 uses
  %i.g = alloca [32 x i64], align 16              ; 9 uses
  %i.h = alloca [32 x i64], align 16              ; 7 uses
  %i.i = alloca [32 x i64], align 16              ; 6 uses
  %i.j = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %i.l = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %i.n = select i1 %i.k, i1 true, i1 %i.m
  br i1 %i.n, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.o = tail call i32 @H5S__init_package() #8
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %._crit_edge325

._crit_edge325:                                   ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10
  %.pre326 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre327 = trunc nuw i8 %.pre to i1
  %.pre328 = trunc nuw i8 %.pre326 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.q = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.r = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1632, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread273

bb.d:                                             ; preds = %._crit_edge325, %bb.a
  %.pre-phi329 = phi i1 [ %.pre328, %._crit_edge325 ], [ %i.m, %bb.a ]
  %.pre-phi = phi i1 [ %.pre327, %._crit_edge325 ], [ %i.k, %bb.a ]
  %i.t = xor i1 %.pre-phi329, true
  %i.u = select i1 %.pre-phi, i1 true, i1 %i.t
  br i1 %i.u, label %bb.e, label %.thread273, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.y = load i64, ptr %i.x, align 8, !tbaa !32
  %.not = icmp eq i64 %i.w, %i.y
  br i1 %.not, label %bb.f, label %.thread273

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %.not169 = icmp eq i32 %i.aa, 0
  br i1 %.not169, label %.thread273, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !21 ; 2 uses
  %.not170 = icmp eq i32 %i.ac, 0
  br i1 %.not170, label %.thread273, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not171 = icmp ult i32 %i.aa, %i.ac            ; 2 uses
  %. = select i1 %.not171, ptr %1, ptr %0         ; 9 uses
  %.184 = select i1 %.not171, ptr %0, ptr %1      ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %., i64 56 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.184, i64 56
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !21 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %., i64 80 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.184, i64 80 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29
  %i.am = load i32, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = icmp ne i32 %i.aj, 0
  %i.ao = icmp ne i32 %i.am, 0
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34
  %i.ar = call i32 %i.aq(ptr noundef nonnull %., ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #8
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.au = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !24
  %i.av = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1695, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.33) #8 ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.ak, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.az = call i32 %i.ay(ptr noundef nonnull %.184, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #8
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.l, label %.preheader287.preheader

.preheader287.preheader:                          ; preds = %bb.k
  %i.bb = sext i32 %i.ae to i64                   ; 2 uses
  %indvars.iv.next354 = add nsw i64 %i.bb, -1     ; 2 uses
  %i.bc = icmp sgt i32 %i.ag, 0
  br i1 %i.bc, label %.lr.ph357, label %.preheader286

.lr.ph357:                                        ; preds = %.preheader287.preheader
  %i.bd = zext nneg i32 %i.ag to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bf = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !24
  %i.bg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1698, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.34) #8 ; 0 uses
  br label %.thread

.preheader287:                                    ; preds = %bb.m
  %indvars.iv.next = add nsw i64 %indvars.iv.next356, -1 ; 2 uses
  %i.bh = trunc nuw i64 %i.bl to i32
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %.preheader286, !llvm.loop !89

.preheader286:                                    ; preds = %.preheader287, %.preheader287.preheader
  %indvars.iv.lcssa = phi i64 [ %i.bb, %.preheader287.preheader ], [ %indvars.iv.next356, %.preheader287 ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next354, %.preheader287.preheader ], [ %indvars.iv.next, %.preheader287 ]
  %i.bj = icmp sgt i64 %indvars.iv.lcssa, 0
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader286
  %i.bk = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.lr.ph

bb.m:                                             ; preds = %.lr.ph357, %.preheader287
  %indvars.iv.next356 = phi i64 [ %indvars.iv.next354, %.lr.ph357 ], [ %indvars.iv.next, %.preheader287 ] ; 4 uses
  %indvars.iv313355 = phi i64 [ %i.bd, %.lr.ph357 ], [ %i.bl, %.preheader287 ]
  %i.bl = add nsw i64 %indvars.iv313355, -1       ; 4 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv.next356
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next356
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !24
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bl
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bl
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !24
  %i.bv = sub i64 %i.bs, %i.bu
  %.not175 = icmp eq i64 %i.bq, %i.bv
  br i1 %.not175, label %.preheader287, label %.thread, !llvm.loop !89

bb.n:                                             ; preds = %.lr.ph
  %i.bw = add nsw i32 %.1134292, -1
  %i.bx = icmp sgt i32 %.1134292, 0
  br i1 %i.bx, label %.lr.ph, label %._crit_edge, !llvm.loop !90

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.1134292 = phi i32 [ %i.bw, %bb.n ], [ %i.bk, %.lr.ph.preheader ] ; 3 uses
  %i.by = zext nneg i32 %.1134292 to i64          ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.by
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !24
  %.not174 = icmp eq i64 %i.ca, %i.cc
  br i1 %.not174, label %bb.n, label %.thread

._crit_edge:                                      ; preds = %bb.n, %.preheader286
  %i.cd = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.cg = call i32 %i.cf(ptr noundef nonnull %.) #8
  %.not172 = icmp eq i32 %i.cg, 0
  br i1 %.not172, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !35
  %i.ck = call i32 %i.cj(ptr noundef nonnull %.184) #8
  %.not173 = icmp eq i32 %i.ck, 0
  br i1 %.not173, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.m, %.lr.ph, %bb.j, %bb.l, %bb.o
  %.0139.ph = phi i32 [ 1, %bb.o ], [ -1, %bb.j ], [ 0, %.lr.ph ], [ -1, %bb.l ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread273

bb.p:                                             ; preds = %._crit_edge, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.h
  %i.cl = icmp eq i32 %i.aj, %i.am
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cm = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 112
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !95
  %i.cp = call i32 %i.co(ptr noundef nonnull %., ptr noundef %.184) #8
  br label %.thread273

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  %i.cq = call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 18 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.au, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 11 uses
  %i.ct = icmp eq ptr %i.cs, null                 ; 2 uses
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cu = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.cv = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.cw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1757, i64 noundef %i.cu, i64 noundef %i.cv, ptr noundef nonnull @.str.23) #8 ; 0 uses
  br label %.thread262

bb.v:                                             ; preds = %bb.t
  %i.cx = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = xor i1 %i.da, true
  %i.dc = select i1 %i.cy, i1 true, i1 %i.db
  br i1 %i.dc, label %bb.w, label %H5S_select_iter_init.exit.thread, !prof !12

bb.w:                                             ; preds = %bb.v
  %i.dd = load i32, ptr %i.ad, align 8, !tbaa !21 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !43
  %.not.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i, label %H5S_select_iter_init.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %., i64 64
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !44
  %i.di = zext i32 %i.dd to i64
  %i.dj = shl nuw nsw i64 %i.di, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.df, ptr align 8 %i.dh, i64 %i.dj, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 272
  %i.dl = getelementptr inbounds nuw i8, ptr %., i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr nonnull align 8 %i.dl, i64 %i.dj, i1 false)
  br label %H5S_select_iter_init.exit

H5S_select_iter_init.exit:                        ; preds = %bb.w, %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 536
  store i64 0, ptr %i.dm, align 8, !tbaa !45
  %i.dn = getelementptr inbounds nuw i8, ptr %., i64 352
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 528
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !46
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 544
  store i32 0, ptr %i.dq, align 8, !tbaa !47
  %i.dr = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 160
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !48
  %i.du = call i32 %i.dt(ptr noundef nonnull %., ptr noundef nonnull %i.cq) #8, !inline_history !55
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %H5S_select_iter_init.exit.thread, label %bb.y

H5S_select_iter_init.exit.thread:                 ; preds = %bb.v, %H5S_select_iter_init.exit
  %i.dw = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.dx = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.dy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1765, i64 noundef %i.dw, i64 noundef %i.dx, ptr noundef nonnull @.str.35) #8 ; 0 uses
  br label %.thread262

bb.y:                                             ; preds = %H5S_select_iter_init.exit
  %i.dz = call i32 @H5S_select_iter_init(ptr noundef nonnull %i.cs, ptr noundef %.184, i64 noundef 0, i32 noundef 0)
  %i.ea = icmp sgt i32 %i.dz, -1                  ; 2 uses
  br i1 %i.ea, label %.preheader284, label %bb.z

.preheader284:                                    ; preds = %bb.y
  %i.eb = add i32 %i.ae, -1                       ; 4 uses
  %i.ec = add i32 %i.ag, -1                       ; 2 uses
  %i.ed = icmp sgt i32 %i.ag, 0                   ; 2 uses
  %i.ee = sext i32 %i.eb to i64                   ; 2 uses
  %i.ef = sub i32 %i.eb, %i.ag
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eg = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.eh = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.ei = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1768, i64 noundef %i.eg, i64 noundef %i.eh, ptr noundef nonnull @.str.36) #8 ; 0 uses
  br label %.thread190

bb.aa:                                            ; preds = %.preheader284, %bb.ar
  %.0 = phi i1 [ false, %bb.ar ], [ true, %.preheader284 ]
  %i.ej = load ptr, ptr %i.cq, align 8, !tbaa !49
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !96
  %i.em = call i32 %i.el(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g) #8
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eo = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ep = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !24
  %i.eq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1777, i64 noundef %i.eo, i64 noundef %i.ep, ptr noundef nonnull @.str.37) #8 ; 0 uses
  br label %.thread190

bb.ac:                                            ; preds = %bb.aa
  %i.er = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !96
  %i.eu = call i32 %i.et(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h) #8
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ew = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ex = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !24
  %i.ey = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1779, i64 noundef %i.ew, i64 noundef %i.ex, ptr noundef nonnull @.str.38) #8 ; 0 uses
  br label %.thread190

bb.ae:                                            ; preds = %bb.ac
  br i1 %.0, label %.preheader277, label %.preheader282

.preheader282:                                    ; preds = %bb.ae
  br i1 %i.ed, label %.lr.ph295, label %.preheader279

.preheader277:                                    ; preds = %bb.ae
  br i1 %i.ed, label %.lr.ph300, label %.preheader

.preheader.loopexit:                              ; preds = %bb.af
  %i.ez = trunc nsw i64 %indvars.iv.next323 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader277
  %.2135.lcssa = phi i32 [ %i.eb, %.preheader277 ], [ %i.ez, %.preheader.loopexit ] ; 2 uses
  %i.fa = icmp sgt i32 %.2135.lcssa, -1
  br i1 %i.fa, label %.lr.ph303, label %.loopexit

.lr.ph300:                                        ; preds = %.preheader277, %bb.af
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %bb.af ], [ %i.ee, %.preheader277 ] ; 4 uses
  %.1131299 = phi i32 [ %i.fo, %bb.af ], [ %i.ec, %.preheader277 ] ; 3 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv322
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !24
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv322
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !24 ; 2 uses
  %i.ff = sub i64 %i.fc, %i.fe
  %i.fg = zext nneg i32 %.1131299 to i64          ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !24
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fg
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !24 ; 2 uses
  %i.fl = sub i64 %i.fi, %i.fk
  %.not181 = icmp eq i64 %i.ff, %i.fl
  br i1 %.not181, label %bb.af, label %.thread190

bb.af:                                            ; preds = %.lr.ph300
  %i.fm = sub nsw i64 %i.fk, %i.fe
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv322
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !24
  %indvars.iv.next323 = add nsw i64 %indvars.iv322, -1 ; 2 uses
  %i.fo = add nsw i32 %.1131299, -1
  %i.fp = icmp sgt i32 %.1131299, 0
  br i1 %i.fp, label %.lr.ph300, label %.preheader.loopexit, !llvm.loop !91

bb.ag:                                            ; preds = %.lr.ph303
  %i.fq = add nsw i32 %.3136302, -1
  %i.fr = icmp sgt i32 %.3136302, 0
  br i1 %i.fr, label %.lr.ph303, label %.loopexit, !llvm.loop !92

.lr.ph303:                                        ; preds = %.preheader, %bb.ag
  %.3136302 = phi i32 [ %i.fq, %bb.ag ], [ %.2135.lcssa, %.preheader ] ; 3 uses
  %i.fs = zext nneg i32 %.3136302 to i64          ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !24
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fs
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !24
  %.not180 = icmp eq i64 %i.fu, %i.fw
  br i1 %.not180, label %bb.ag, label %.thread190

.preheader279:                                    ; preds = %bb.ai, %.preheader282
  %.4.lcssa = phi i32 [ %i.eb, %.preheader282 ], [ %i.ef, %bb.ai ] ; 2 uses
  %i.fx = icmp sgt i32 %.4.lcssa, -1
  br i1 %i.fx, label %.lr.ph297, label %.loopexit

.lr.ph295:                                        ; preds = %.preheader282, %bb.ai
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %bb.ai ], [ %i.ee, %.preheader282 ] ; 4 uses
  %.2132294 = phi i32 [ %i.gm, %bb.ai ], [ %i.ec, %.preheader282 ] ; 3 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv319
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !24 ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv319
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !24
  %i.gc = add nsw i64 %i.gb, %i.fz                ; 2 uses
  %i.gd = zext nneg i32 %.2132294 to i64          ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !24
  %.not177 = icmp eq i64 %i.gc, %i.gf
  br i1 %.not177, label %bb.ah, label %.thread190

bb.ah:                                            ; preds = %.lr.ph295
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv319
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !24
  %i.gi = sub i64 %i.gh, %i.fz
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.gd
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !24
  %i.gl = sub i64 %i.gk, %i.gc
  %.not178 = icmp eq i64 %i.gi, %i.gl
  br i1 %.not178, label %bb.ai, label %.thread190

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next320 = add nsw i64 %indvars.iv319, -1
  %i.gm = add nsw i32 %.2132294, -1
  %i.gn = icmp sgt i32 %.2132294, 0
  br i1 %i.gn, label %.lr.ph295, label %.preheader279, !llvm.loop !93

bb.aj:                                            ; preds = %.lr.ph297
  %i.go = add nsw i32 %.5296, -1
  %i.gp = icmp sgt i32 %.5296, 0
  br i1 %i.gp, label %.lr.ph297, label %.loopexit, !llvm.loop !94

.lr.ph297:                                        ; preds = %.preheader279, %bb.aj
  %.5296 = phi i32 [ %i.go, %bb.aj ], [ %.4.lcssa, %.preheader279 ] ; 3 uses
  %i.gq = zext nneg i32 %.5296 to i64             ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !24
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.gq
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !24
  %.not176 = icmp eq i64 %i.gs, %i.gu
  br i1 %.not176, label %bb.aj, label %.thread190

.loopexit:                                        ; preds = %bb.aj, %bb.ag, %.preheader279, %.preheader
  %i.gv = load ptr, ptr %i.cq, align 8, !tbaa !49
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !97
  %i.gy = call i32 %i.gx(ptr noundef nonnull %i.cq) #8 ; 3 uses
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit
  %i.ha = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.hb = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !24
  %i.hc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1846, i64 noundef %i.ha, i64 noundef %i.hb, ptr noundef nonnull @.str.39) #8 ; 0 uses
  br label %.thread190

bb.al:                                            ; preds = %.loopexit
  %i.hd = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !97
  %i.hg = call i32 %i.hf(ptr noundef nonnull %i.cs) #8 ; 3 uses
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hi = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.hj = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !24
  %i.hk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1849, i64 noundef %i.hi, i64 noundef %i.hj, ptr noundef nonnull @.str.40) #8 ; 0 uses
  br label %.thread190

bb.an:                                            ; preds = %bb.al
  %i.hl = or i32 %i.hg, %i.gy
  %or.cond4 = icmp eq i32 %i.hl, 0
  br i1 %or.cond4, label %.thread190, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not179 = icmp eq i32 %i.gy, %i.hg
  br i1 %.not179, label %bb.ap, label %.thread190

bb.ap:                                            ; preds = %bb.ao
  %i.hm = load ptr, ptr %i.cq, align 8, !tbaa !49
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !98
  %i.hp = call i32 %i.ho(ptr noundef nonnull %i.cq) #8
  %i.hq = icmp slt i32 %i.hp, 0
  br i1 %i.hq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hr = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.hs = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !24
  %i.ht = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1860, i64 noundef %i.hr, i64 noundef %i.hs, ptr noundef nonnull @.str.41) #8 ; 0 uses
  br label %.thread190

bb.ar:                                            ; preds = %bb.ap
  %i.hu = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 48
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !98
  %i.hx = call i32 %i.hw(ptr noundef nonnull %i.cs) #8
  %i.hy = icmp slt i32 %i.hx, 0
  br i1 %i.hy, label %bb.as, label %bb.aa

bb.as:                                            ; preds = %bb.ar
  %i.hz = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ia = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !24
  %i.ib = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1864, i64 noundef %i.hz, i64 noundef %i.ia, ptr noundef nonnull @.str.42) #8 ; 0 uses
  br label %.thread190

.thread190:                                       ; preds = %bb.ao, %bb.an, %.lr.ph295, %bb.ah, %.lr.ph297, %.lr.ph300, %.lr.ph303, %bb.as, %bb.aq, %bb.am, %bb.ak, %bb.ad, %bb.ab, %bb.z
  %.4143.ph = phi i32 [ 0, %.lr.ph300 ], [ -1, %bb.z ], [ -1, %bb.ab ], [ -1, %bb.ad ], [ 0, %.lr.ph297 ], [ 0, %.lr.ph295 ], [ -1, %bb.ak ], [ -1, %bb.am ], [ 0, %.lr.ph303 ], [ -1, %bb.aq ], [ -1, %bb.as ], [ 0, %bb.ah ], [ 1, %bb.an ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.ic = load ptr, ptr %i.cq, align 8, !tbaa !49
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !54
  %i.if = call i32 %i.ie(ptr noundef nonnull %i.cq) #8
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.thread190
  %i.ih = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ii = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !24
  %i.ij = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1872, i64 noundef %i.ih, i64 noundef %i.ii, ptr noundef nonnull @.str.43) #8 ; 0 uses
  br label %bb.av

.thread262:                                       ; preds = %H5S_select_iter_init.exit.thread, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.ik = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list, ptr noundef nonnull %i.cq) #8 ; 0 uses
  br label %bb.ay

bb.au:                                            ; preds = %bb.s
  %i.il = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.im = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.in = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1755, i64 noundef %i.il, i64 noundef %i.im, ptr noundef nonnull @.str.23) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.thread273

bb.av:                                            ; preds = %bb.at, %.thread190
  %.8.ph = phi i32 [ %.4143.ph, %.thread190 ], [ -1, %bb.at ] ; 2 uses
  %i.io = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list, ptr noundef nonnull %i.cq) #8 ; 0 uses
  br i1 %i.ea, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ip = load ptr, ptr %i.cs, align 8, !tbaa !49
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 64
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !54
  %i.is = call i32 %i.ir(ptr noundef nonnull %i.cs) #8
  %i.it = icmp slt i32 %i.is, 0
  br i1 %i.it, label %bb.ax, label %.thread267

bb.ax:                                            ; preds = %bb.aw
  %i.iu = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.iv = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !24
  %i.iw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_shape_same, i32 noundef 1876, i64 noundef %i.iu, i64 noundef %i.iv, ptr noundef nonnull @.str.44) #8 ; 0 uses
  br label %.thread267

bb.ay:                                            ; preds = %.thread262, %bb.av
  %.9 = phi i32 [ %.8.ph, %bb.av ], [ -1, %.thread262 ] ; 2 uses
  br i1 %i.ct, label %.thread273, label %.thread267

.thread267:                                       ; preds = %bb.aw, %bb.ax, %bb.ay
  %.9272 = phi i32 [ %.9, %bb.ay ], [ %.8.ph, %bb.aw ], [ -1, %bb.ax ]
  %i.ix = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list, ptr noundef nonnull %i.cs) #8 ; 0 uses
  br label %.thread273

.thread273:                                       ; preds = %bb.au, %bb.r, %.thread, %bb.e, %bb.g, %bb.f, %bb.c, %bb.d, %.thread267, %bb.ay
  %.0160 = phi i32 [ 1, %bb.d ], [ %.9272, %.thread267 ], [ %.9, %bb.ay ], [ -1, %bb.au ], [ 0, %bb.e ], [ 1, %bb.g ], [ -1, %bb.c ], [ 1, %bb.f ], [ %i.cp, %bb.r ], [ %.0139.ph, %.thread ]
  ret i32 %.0160
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5Sselect_shape_same(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %2, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !23

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_shape_same, i32 noundef 1909, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread25

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5S__init_package() #8
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !25

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_shape_same, i32 noundef 1909, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread25

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %2) #8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !24
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_shape_same, i32 noundef 1909, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread25

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #8           ; 0 uses
  %i.aa = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 4) #8 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ad = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_shape_same, i32 noundef 1912, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread31

bb.k:                                             ; preds = %bb.i
  %i.af = call ptr @H5I_object_verify(i64 noundef %1, i32 noundef 4) #8 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ai = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.aj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_shape_same, i32 noundef 1914, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread31

bb.m:                                             ; preds = %bb.k
  %i.ak = call i32 @H5S_select_shape_same(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.af) ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %bb.o, !prof !27

bb.n:                                             ; preds = %bb.m
  %i.am = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.an = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !24
  %i.ao = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_shape_same, i32 noundef 1917, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.45) #8 ; 0 uses
  br label %.thread31

.thread31:                                        ; preds = %bb.n, %bb.l, %bb.j
  %i.ap = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %.thread25

bb.o:                                             ; preds = %bb.m
  %i.aq = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %bb.p

.thread25:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread31
  %i.ar = call i32 @H5E_dump_api_stack() #8       ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread25
  %.0132028 = phi i32 [ -1, %.thread25 ], [ %i.ak, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0132028
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5S_select_intersect_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 5 uses
  %i.b = alloca [32 x i64], align 16              ; 5 uses
  %i.c = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  br i1 %i.g, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.h = tail call i32 @H5S__init_package() #8
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %._crit_edge30

._crit_edge30:                                    ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10
  %.pre31 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre33 = trunc nuw i8 %.pre to i1
  %.pre34 = trunc nuw i8 %.pre31 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.j = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.k = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_intersect_block, i32 noundef 1951, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %._crit_edge30, %bb.a
  %.pre-phi35 = phi i1 [ %.pre34, %._crit_edge30 ], [ %i.f, %bb.a ]
  %.pre-phi = phi i1 [ %.pre33, %._crit_edge30 ], [ %i.d, %bb.a ]
  %i.m = xor i1 %.pre-phi35, true
  %i.n = select i1 %.pre-phi, i1 true, i1 %i.m
  br i1 %i.n, label %bb.e, label %bb.l, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !56
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = call i32 %i.s(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %.not28 = icmp eq i32 %i.w, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.w to i64
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.y = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !24
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_intersect_block, i32 noundef 1966, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.46) #8 ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !99

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = icmp ugt i64 %i.ab, %i.ad
  br i1 %i.ae, label %.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = icmp ugt i64 %i.ag, %i.ai
  br i1 %i.aj, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.i, %.lr.ph, %bb.g
  %.022.ph = phi i32 [ -1, %bb.g ], [ 0, %.lr.ph ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.l

._crit_edge:                                      ; preds = %bb.h, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.pre32 = load ptr, ptr %i.o, align 8, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.e
  %i.ak = phi ptr [ %.pre32, %._crit_edge ], [ %i.p, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !100
  %i.an = call i32 %i.am(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #8 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.aq = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !24
  %i.ar = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_intersect_block, i32 noundef 1977, i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.47) #8 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.d, %bb.j, %bb.k, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.k ], [ %i.an, %bb.j ], [ %.022.ph, %.thread ], [ 1, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5Sselect_intersect_block(i64 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %3, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge63, !prof !23

._crit_edge63:                                    ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_intersect_block, i32 noundef 2012, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread46

bb.d:                                             ; preds = %._crit_edge63, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge63 ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5S__init_package() #8
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !25

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_intersect_block, i32 noundef 2012, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread46

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %3) #8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !24
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_intersect_block, i32 noundef 2012, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread46

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #8           ; 0 uses
  %i.aa = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 4) #8 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ad = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_intersect_block, i32 noundef 2016, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread52

bb.k:                                             ; preds = %bb.i
  %i.af = icmp eq ptr %1, null
  br i1 %i.af, label %bb.l, label %bb.m, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ah = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.ai = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_intersect_block, i32 noundef 2018, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.48) #8 ; 0 uses
  br label %.thread52

bb.m:                                             ; preds = %bb.k
  %i.aj = icmp eq ptr %2, null
  br i1 %i.aj, label %bb.n, label %.preheader, !prof !27

.preheader:                                       ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !21
  %.fr = freeze i32 %i.al                         ; 3 uses
  %.not = icmp eq i32 %.fr, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %.fr to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.am = icmp ult i32 %.fr, 4
  br i1 %i.am, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.an = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ao = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_intersect_block, i32 noundef 2020, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.49) #8 ; 0 uses
  br label %.thread52

.lr.ph:                                           ; preds = %bb.o, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %bb.o ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %bb.o ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24 ; 2 uses
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %.loopexit, label %.lr.ph.1, !prof !27

.loopexit:                                        ; preds = %.lr.ph.epil, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next.2, %.lr.ph.3 ], [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.epil, %.lr.ph.epil ]
  %.lcssa79 = phi i64 [ %i.bk, %.lr.ph.3 ], [ %i.ar, %.lr.ph ], [ %i.ba, %.lr.ph.1 ], [ %i.bf, %.lr.ph.2 ], [ %i.bp, %.lr.ph.epil ]
  %.lcssa = phi i64 [ %i.bm, %.lr.ph.3 ], [ %i.at, %.lr.ph ], [ %i.bc, %.lr.ph.1 ], [ %i.bh, %.lr.ph.2 ], [ %i.br, %.lr.ph.epil ]
  %i.av = trunc nuw i64 %indvars.iv.lcssa to i32  ; 2 uses
  %i.aw = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ax = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !24
  %i.ay = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_intersect_block, i32 noundef 2026, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.50, i32 noundef %i.av, i64 noundef %.lcssa79, i32 noundef %i.av, i64 noundef %.lcssa) #8 ; 0 uses
  br label %.thread52

.lr.ph.1:                                         ; preds = %.lr.ph
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !24 ; 2 uses
  %i.bd = icmp ugt i64 %i.ba, %i.bc
  br i1 %i.bd, label %.loopexit, label %.lr.ph.2, !prof !27

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !24 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !24 ; 2 uses
  %i.bi = icmp ugt i64 %i.bf, %i.bh
  br i1 %i.bi, label %.loopexit, label %.lr.ph.3, !prof !27

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %.loopexit, label %bb.o, !prof !27

bb.o:                                             ; preds = %.lr.ph.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !101

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %bb.p, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %bb.p ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !24 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !24 ; 2 uses
  %i.bs = icmp ugt i64 %i.bp, %i.br
  br i1 %i.bs, label %.loopexit, label %bb.p, !prof !27

bb.p:                                             ; preds = %.lr.ph.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !102

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.p, %.preheader
  %i.bt = call i32 @H5S_select_intersect_block(ptr noundef nonnull %i.aa, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %bb.r, !prof !27

bb.q:                                             ; preds = %._crit_edge
  %i.bv = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bw = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !24
  %i.bx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_intersect_block, i32 noundef 2030, i64 noundef %i.bv, i64 noundef %i.bw, ptr noundef nonnull @.str.51) #8 ; 0 uses
  br label %.thread52

.thread52:                                        ; preds = %bb.q, %.loopexit, %bb.n, %bb.l, %bb.j
  %i.by = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %.thread46

bb.r:                                             ; preds = %._crit_edge
  %i.bz = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %bb.s

.thread46:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread52
  %i.ca = call i32 @H5E_dump_api_stack() #8       ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread46
  %.0304149 = phi i32 [ -1, %.thread46 ], [ %i.bt, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.0304149
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_select_construct_projection(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 5 uses
  %i.b = alloca [32 x i64], align 16              ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [32 x i64], align 16              ; 8 uses
  %i.e = alloca [32 x i64], align 16              ; 8 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 0, ptr %i.c, align 8, !tbaa !24
  %i.g = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  %i.k = select i1 %i.h, i1 true, i1 %i.j
  br i1 %i.k, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.l = tail call i32 @H5S__init_package() #8
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10
  %.pre98 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre99 = trunc nuw i8 %.pre to i1
  %.pre100 = trunc nuw i8 %.pre98 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.n = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.o = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_construct_projection, i32 noundef 2102, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread90

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi101 = phi i1 [ %.pre100, %._crit_edge ], [ %i.j, %bb.a ]
  %.pre-phi = phi i1 [ %.pre99, %._crit_edge ], [ %i.h, %bb.a ]
  %i.q = xor i1 %.pre-phi101, true
  %i.r = select i1 %.pre-phi, i1 true, i1 %i.q
  br i1 %i.r, label %bb.e, label %.thread90, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.s = call i32 @H5S_get_simple_extent_dims(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8 ; 7 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.v = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !24
  %i.w = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_construct_projection, i32 noundef 2115, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.52) #8 ; 0 uses
  br label %.thread90

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %2, 0
  br i1 %i.x, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ad = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !24
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_construct_projection, i32 noundef 2125, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.53) #8 ; 0 uses
  br label %.thread90

bb.j:                                             ; preds = %bb.h
  %i.af = call ptr @H5S_create(i32 noundef 0) #8  ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ai = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !24
  %i.aj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_construct_projection, i32 noundef 2130, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.54) #8 ; 0 uses
  br label %.thread90

bb.l:                                             ; preds = %bb.j
  %i.ak = icmp eq i64 %i.aa, 1
  br i1 %i.ak, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.ao = call i32 %i.an(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #8
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.aq = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ar = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !24
  %i.as = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_construct_projection, i32 noundef 2157, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.55) #8 ; 0 uses
  br label %.thread.thread

bb.o:                                             ; preds = %bb.l
  %i.at = call i32 @H5S_select_none(ptr noundef nonnull %i.af) #8
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.p, label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.av = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.aw = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !24
  %i.ax = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_construct_projection, i32 noundef 2163, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.56) #8 ; 0 uses
  br label %.thread.thread

bb.q:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.ay = icmp ugt i32 %2, %i.s                   ; 2 uses
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i64 1, ptr %i.f, align 8, !tbaa !24
  %i.az = sub nuw i32 %2, %i.s                    ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 4 uses
  %i.bb = call i32 @H5VM_array_fill(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, i64 noundef 8, i64 noundef %i.ba) #8 ; 0 uses
  %i.bc = call i32 @H5VM_array_fill(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 noundef 8, i64 noundef %i.ba) #8 ; 0 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ba
  %i.be = zext nneg i32 %i.s to i64
  %i.bf = shl nuw nsw i64 %i.be, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 16 %i.a, i64 %i.bf, i1 false)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 16 %i.b, i64 %i.bf, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bh = sub nuw nsw i32 %i.s, %2                ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bi
  %i.bk = zext nneg i32 %2 to i64
  %i.bl = shl nuw nsw i64 %i.bk, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr nonnull align 8 %i.bj, i64 %i.bl, i1 false)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 8 %i.bm, i64 %i.bl, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i32 [ %i.az, %bb.r ], [ %i.bh, %bb.s ] ; 2 uses
  %i.bn = call ptr @H5S_create_simple(i32 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #8 ; 6 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread.thread111, label %bb.u

.thread.thread111:                                ; preds = %bb.t
  %i.bp = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bq = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !24
  %i.br = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_construct_projection, i32 noundef 2229, i64 noundef %i.bp, i64 noundef %i.bq, ptr noundef nonnull @.str.57) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread90

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 152
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.bw = call i32 %i.bv(ptr noundef %0, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.c) #8
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.thread, label %bb.v
end_hunk_0
begin_hunk_1_@H5S_select_construct_projection:bb.a
  %i.cx = call i32 @H5S_close(ptr noundef nonnull %.272110) #8
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.af, label %.thread90

bb.af:                                            ; preds = %.thread.thread
  %i.cz = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.da = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !24
  %i.db = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_construct_projection, i32 noundef 2287, i64 noundef %i.cz, i64 noundef %i.da, ptr noundef nonnull @.str.59) #8 ; 0 uses
  br label %.thread90

.thread90:                                        ; preds = %.thread.thread111, %bb.i, %bb.k, %bb.f, %bb.c, %bb.ab, %bb.ae, %bb.ad, %bb.d, %.thread.thread, %bb.af
  %.4 = phi i32 [ -1, %bb.af ], [ -1, %.thread.thread ], [ -1, %.thread.thread111 ], [ 0, %bb.d ], [ 0, %bb.ab ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ -1, %bb.f ], [ -1, %bb.c ], [ -1, %bb.k ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.4
}

declare i32 @H5S_get_simple_extent_dims(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @H5S_create(i32 noundef) local_unnamed_addr #4

declare i32 @H5S_select_none(ptr noundef) local_unnamed_addr #4

declare i32 @H5VM_array_fill(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @H5S_create_simple(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5S_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_select_fill(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = select i1 %i.d, i1 true, i1 %i.f
  br i1 %i.g, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.h = tail call i32 @H5S__init_package() #8
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %._crit_edge126

._crit_edge126:                                   ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10
  %.pre127 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre128 = trunc nuw i8 %.pre to i1
  %.pre129 = trunc nuw i8 %.pre127 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.j = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.k = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_fill, i32 noundef 2327, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread117

bb.d:                                             ; preds = %._crit_edge126, %bb.a
  %.pre-phi130 = phi i1 [ %.pre129, %._crit_edge126 ], [ %i.f, %bb.a ]
  %.pre-phi = phi i1 [ %.pre128, %._crit_edge126 ], [ %i.d, %bb.a ]
  %i.m = xor i1 %.pre-phi130, true
  %i.n = select i1 %.pre-phi, i1 true, i1 %i.m
  br i1 %i.n, label %bb.e, label %.thread117, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 13 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.r = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_fill, i32 noundef 2337, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.23) #8 ; 0 uses
  br label %.thread117

bb.g:                                             ; preds = %bb.e
  %i.t = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = xor i1 %i.w, true
  %i.y = select i1 %i.u, i1 true, i1 %i.x
  br i1 %i.y, label %bb.h, label %H5S_select_iter_init.exit.thread, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !21  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !43
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %H5S_select_iter_init.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = zext i32 %i.aa to i64
  %i.ag = shl nuw nsw i64 %i.af, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.ae, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.ai, i64 %i.ag, i1 false)
  br label %H5S_select_iter_init.exit

H5S_select_iter_init.exit:                        ; preds = %bb.h, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 536
  store i64 %1, ptr %i.aj, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 528
  store i64 %i.am, ptr %i.an, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 544
  store i32 0, ptr %i.ao, align 8, !tbaa !47
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48
  %i.as = tail call i32 %i.ar(ptr noundef nonnull %2, ptr noundef nonnull %i.o) #8, !inline_history !55
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %H5S_select_iter_init.exit.thread, label %bb.j

bb.j:                                             ; preds = %H5S_select_iter_init.exit
  %i.au = load i64, ptr %i.al, align 8, !tbaa !32 ; 3 uses
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ax = load i64, ptr @H5E_CANTCOUNT_g, align 8, !tbaa !24
  %i.ay = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_fill, i32 noundef 2346, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.25) #8 ; 0 uses
  br label %.thread98

bb.l:                                             ; preds = %bb.j
  %i.az = tail call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_size_t_seq_free_list, i64 noundef 1024) #8 ; 5 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bc = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.bd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_fill, i32 noundef 2353, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.26) #8 ; 0 uses
  br label %.thread98

bb.n:                                             ; preds = %bb.l
  %i.be = tail call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_hsize_t_seq_free_list, i64 noundef 1024) #8 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.thread76.thread141, label %.preheader120

.preheader120:                                    ; preds = %bb.n
  %.not122 = icmp eq i64 %i.au, 0
  br i1 %.not122, label %.thread76.thread, label %.lr.ph124

.thread76.thread141:                              ; preds = %bb.n
  %i.bg = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bh = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.bi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_fill, i32 noundef 2355, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.27) #8 ; 0 uses
  %i.bj = tail call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.az) #8 ; 0 uses
  br label %.thread98

.lr.ph124:                                        ; preds = %.preheader120, %._crit_edge
  %.045123 = phi i64 [ %i.ce, %._crit_edge ], [ %i.au, %.preheader120 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !53
  %i.bn = call i32 %i.bm(ptr noundef nonnull %i.o, i64 noundef 1024, i64 noundef %.045123, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.be, ptr noundef nonnull %i.az) #8
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %.thread, label %.preheader

.preheader:                                       ; preds = %.lr.ph124
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !24
  %.not125 = icmp eq i64 %i.bp, 0
  br i1 %.not125, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %.lr.ph124
  %i.bq = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !24
  %i.br = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !24
  %i.bs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_fill, i32 noundef 2366, i64 noundef %i.bq, i64 noundef %i.br, ptr noundef nonnull @.str.28) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread76.thread

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.043121 = phi i64 [ %i.ca, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.043121
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.043121
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !24
  %i.by = udiv i64 %i.bx, %1
  %i.bz = call i32 @H5VM_array_fill(ptr noundef %i.bv, ptr noundef %0, i64 noundef %1, i64 noundef %i.by) #8 ; 0 uses
  %i.ca = add nuw i64 %.043121, 1                 ; 2 uses
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cc = icmp ult i64 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !24
  %i.ce = sub i64 %.045123, %i.cd                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.thread76.thread, label %.lr.ph124

.thread76.thread:                                 ; preds = %._crit_edge, %.preheader120, %.thread
  %.287139 = phi i32 [ -1, %.thread ], [ 0, %.preheader120 ], [ 0, %._crit_edge ]
  %i.cf = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.az) #8 ; 0 uses
  %i.cg = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_hsize_t_seq_free_list, ptr noundef nonnull %i.be) #8 ; 0 uses
  br label %.thread98

.thread98:                                        ; preds = %.thread76.thread141, %.thread76.thread, %bb.m, %bb.k
  %.27494104 = phi i32 [ -1, %bb.m ], [ -1, %bb.k ], [ %.287139, %.thread76.thread ], [ -1, %.thread76.thread141 ]
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !54
  %i.ck = call i32 %i.cj(ptr noundef nonnull %i.o) #8
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %bb.o, label %.thread110

bb.o:                                             ; preds = %.thread98
  %i.cm = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.cn = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !24
  %i.co = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_fill, i32 noundef 2393, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull @.str.32) #8 ; 0 uses
  br label %.thread110

H5S_select_iter_init.exit.thread:                 ; preds = %bb.g, %H5S_select_iter_init.exit
  %i.cp = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.cq = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.cr = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_fill, i32 noundef 2341, i64 noundef %i.cp, i64 noundef %i.cq, ptr noundef nonnull @.str.24) #8 ; 0 uses
  br label %.thread110

.thread110:                                       ; preds = %.thread98, %bb.o, %H5S_select_iter_init.exit.thread
  %.3115 = phi i32 [ -1, %H5S_select_iter_init.exit.thread ], [ %.27494104, %.thread98 ], [ -1, %bb.o ]
  %i.cs = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list, ptr noundef nonnull %i.o) #8 ; 0 uses
  br label %.thread117

.thread117:                                       ; preds = %bb.f, %bb.c, %bb.d, %.thread110
  %.4 = phi i32 [ %.3115, %.thread110 ], [ 0, %bb.d ], [ -1, %bb.c ], [ -1, %bb.f ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_select_project_intersection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, i1 noundef zeroext %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 5 uses
  %i.b = alloca [32 x i64], align 16              ; 5 uses
  %i.c = alloca [32 x i64], align 16              ; 8 uses
  %i.d = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = select i1 %i.e, i1 true, i1 %i.g
  br i1 %i.h, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.i = tail call i32 @H5S__init_package() #8
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10
  %.pre199 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre200 = trunc nuw i8 %.pre to i1
  %.pre201 = trunc nuw i8 %.pre199 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.k = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.l = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2444, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread188

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi202 = phi i1 [ %.pre201, %._crit_edge ], [ %i.g, %bb.a ]
  %.pre-phi = phi i1 [ %.pre200, %._crit_edge ], [ %i.e, %bb.a ]
  %i.n = xor i1 %.pre-phi202, true
  %i.o = select i1 %.pre-phi, i1 true, i1 %i.n
  br i1 %i.o, label %bb.e, label %bb.bu, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 15 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.s = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2455, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.23) #8 ; 0 uses
  br label %.thread188

bb.g:                                             ; preds = %bb.e
  %i.u = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 14 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.x = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.y = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2457, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.23) #8 ; 0 uses
  br label %.thread188

bb.i:                                             ; preds = %bb.g
  %i.z = tail call ptr @H5S_create(i32 noundef 1) #8 ; 11 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ac = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !24
  %i.ad = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2461, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.60) #8 ; 0 uses
  br label %.thread188

bb.k:                                             ; preds = %bb.i
  %i.ae = tail call i32 @H5S__extent_copy_real(ptr noundef nonnull %i.z, ptr noundef %1, i1 noundef zeroext true) #8
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ah = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !24
  %i.ai = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2463, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.61) #8 ; 0 uses
  br label %.thread139

bb.m:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %i.am = icmp eq i32 %i.al, 3
  br i1 %i.am, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = tail call i32 @H5S_select_copy(ptr noundef nonnull %i.z, ptr noundef %1, i1 noundef zeroext false)
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.o, label %bb.bm

bb.o:                                             ; preds = %bb.n
  %i.ap = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.aq = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !24
  %i.ar = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2470, i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.62) #8 ; 0 uses
  br label %.thread139

bb.p:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !32
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !32
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.bd = tail call i32 @H5S_select_none(ptr noundef nonnull %i.z) #8
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.t, label %bb.bm

bb.t:                                             ; preds = %bb.s
  %i.bf = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bg = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !24
  %i.bh = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2478, i64 noundef %i.bf, i64 noundef %i.bg, ptr noundef nonnull @.str.63) #8 ; 0 uses
  br label %.thread139

bb.u:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !26
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bl = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !34
  %i.bo = call i32 %i.bn(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bq = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.br = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !24
  %i.bs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2500, i64 noundef %i.bq, i64 noundef %i.br, ptr noundef nonnull @.str.64) #8 ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.bt = call i32 @H5S_select_intersect_block(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bv = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bw = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !24
  %i.bx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2506, i64 noundef %i.bv, i64 noundef %i.bw, ptr noundef nonnull @.str.65) #8 ; 0 uses
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %.not132 = icmp eq i32 %i.bt, 0
  br i1 %.not132, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = call i32 @H5S_select_all(ptr noundef nonnull %i.z, i1 noundef zeroext true) #8
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ca = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.cb = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !24
  %i.cc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2511, i64 noundef %i.ca, i64 noundef %i.cb, ptr noundef nonnull @.str.66) #8 ; 0 uses
  br label %.thread

bb.ac:                                            ; preds = %bb.z
  %i.cd = call i32 @H5S_select_none(ptr noundef nonnull %i.z) #8
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.cg = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !24
  %i.ch = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2514, i64 noundef %i.cf, i64 noundef %i.cg, ptr noundef nonnull @.str.63) #8 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.y, %bb.ab, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread139

bb.ae:                                            ; preds = %bb.aa, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bm

bb.af:                                            ; preds = %bb.u
  %i.ci = icmp eq i32 %i.al, 1
  br i1 %i.ci, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.ck = tail call ptr @H5S_create(i32 noundef 1) #8 ; 7 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cm = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.cn = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !24
  %i.co = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2529, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull @.str.67) #8 ; 0 uses
  br label %.thread139

bb.ai:                                            ; preds = %bb.ag
  %i.cp = tail call i32 @H5S__extent_copy_real(ptr noundef nonnull %i.ck, ptr noundef nonnull %2, i1 noundef zeroext false) #8
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cr = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.cs = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !24
  %i.ct = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2533, i64 noundef %i.cr, i64 noundef %i.cs, ptr noundef nonnull @.str.68) #8 ; 0 uses
  br label %.thread139

bb.ak:                                            ; preds = %bb.ai
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !28
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 512
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %.0.in = phi ptr [ %i.cv, %bb.ak ], [ %.0, %bb.am ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !107 ; 3 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.cz = tail call i32 @H5S_hyper_add_span_element(ptr noundef nonnull %i.ck, i32 noundef %i.cx, ptr noundef nonnull %i.cy) #8
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.an, label %bb.al, !llvm.loop !104

bb.an:                                            ; preds = %bb.am
  %i.db = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.dc = load i64, ptr @H5E_CANTSELECT_g, align 8, !tbaa !24
  %i.dd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2542, i64 noundef %i.db, i64 noundef %i.dc, ptr noundef nonnull @.str.69) #8 ; 0 uses
  br label %.thread139

.loopexit:                                        ; preds = %bb.al, %bb.af
  %.1119 = phi ptr [ %2, %bb.af ], [ %i.ck, %bb.al ] ; 2 uses
  %.0113 = phi ptr [ null, %bb.af ], [ %i.ck, %bb.al ] ; 4 uses
  %i.de = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.df = load i32, ptr %i.de, align 8, !tbaa !56
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  %i.dh = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !56
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %bb.ap, label %bb.bk

bb.ap:                                            ; preds = %bb.ao, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.dk = tail call i32 @H5S_select_none(ptr noundef nonnull %i.z) #8
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dm = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.dn = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !24
  %i.do = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2561, i64 noundef %i.dm, i64 noundef %i.dn, ptr noundef nonnull @.str.63) #8 ; 0 uses
  br label %.thread144

bb.ar:                                            ; preds = %bb.ap
  %i.dp = tail call i32 @H5S_select_iter_init(ptr noundef nonnull %i.p, ptr noundef nonnull %0, i64 noundef 1, i32 noundef 2)
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dr = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ds = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.dt = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2566, i64 noundef %i.dr, i64 noundef %i.ds, ptr noundef nonnull @.str.70) #8 ; 0 uses
  br label %.thread144

bb.at:                                            ; preds = %bb.ar
  %i.du = tail call i32 @H5S_select_iter_init(ptr noundef nonnull %i.u, ptr noundef %1, i64 noundef 1, i32 noundef 2)
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %bb.au, label %.preheader

.preheader:                                       ; preds = %bb.at
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 528 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 528 ; 2 uses
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dy = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.dz = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.ea = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2570, i64 noundef %i.dy, i64 noundef %i.dz, ptr noundef nonnull @.str.71) #8 ; 0 uses
  br label %.thread144

bb.av:                                            ; preds = %.preheader, %bb.bi
  %i.eb = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !51
  %i.ee = call i32 %i.ed(ptr noundef nonnull %i.p, ptr noundef nonnull %i.c) #8
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.eg = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.eh = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !24
  %i.ei = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2581, i64 noundef %i.eg, i64 noundef %i.eh, ptr noundef nonnull @.str.72) #8 ; 0 uses
  br label %.thread144

bb.ax:                                            ; preds = %bb.av
  %i.ej = call i32 @H5S_select_intersect_block(ptr noundef %.1119, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 2 uses
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.el = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.em = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !24
  %i.en = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2585, i64 noundef %i.el, i64 noundef %i.em, ptr noundef nonnull @.str.65) #8 ; 0 uses
  br label %.thread144

bb.az:                                            ; preds = %bb.ax
  %.not130 = icmp eq i32 %i.ej, 0
  br i1 %.not130, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eo = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !51
  %i.er = call i32 %i.eq(ptr noundef nonnull %i.u, ptr noundef nonnull %i.c) #8
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.et = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.eu = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !24
  %i.ev = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2592, i64 noundef %i.et, i64 noundef %i.eu, ptr noundef nonnull @.str.73) #8 ; 0 uses
  br label %.thread144

bb.bc:                                            ; preds = %bb.ba
  %i.ew = call i32 @H5S_select_elements(ptr noundef nonnull %i.z, i32 noundef 6, i64 noundef 1, ptr noundef nonnull %i.c) #8
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ey = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ez = load i64, ptr @H5E_CANTSELECT_g, align 8, !tbaa !24
  %i.fa = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2597, i64 noundef %i.ey, i64 noundef %i.ez, ptr noundef nonnull @.str.74) #8 ; 0 uses
  br label %.thread144

bb.be:                                            ; preds = %bb.bc, %bb.az
  %i.fb = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !52
  %i.fe = call i32 %i.fd(ptr noundef nonnull %i.p, i64 noundef 1) #8
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fg = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.fh = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !24
  %i.fi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2603, i64 noundef %i.fg, i64 noundef %i.fh, ptr noundef nonnull @.str.75) #8 ; 0 uses
  br label %.thread144

bb.bg:                                            ; preds = %bb.be
  %i.fj = load i64, ptr %i.dw, align 8, !tbaa !46
  %i.fk = add i64 %i.fj, -1
  store i64 %i.fk, ptr %i.dw, align 8, !tbaa !46
  %i.fl = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !52
  %i.fo = call i32 %i.fn(ptr noundef nonnull %i.u, i64 noundef 1) #8
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fq = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.fr = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !24
  %i.fs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2607, i64 noundef %i.fq, i64 noundef %i.fr, ptr noundef nonnull @.str.76) #8 ; 0 uses
  br label %.thread144

bb.bi:                                            ; preds = %bb.bg
  %i.ft = load i64, ptr %i.dx, align 8, !tbaa !46
  %i.fu = add i64 %i.ft, -1
  store i64 %i.fu, ptr %i.dx, align 8, !tbaa !46
  %i.fv = load i64, ptr %i.dw, align 8, !tbaa !46
  %.not131 = icmp eq i64 %i.fv, 0
  br i1 %.not131, label %bb.bj, label %bb.av, !llvm.loop !105

.thread144:                                       ; preds = %bb.aq, %bb.as, %bb.au, %bb.aw, %bb.ay, %bb.bb, %bb.bd, %bb.bf, %bb.bh
  %.0109.ph = phi i1 [ true, %bb.bh ], [ true, %bb.bf ], [ true, %bb.bd ], [ true, %bb.bb ], [ true, %bb.ay ], [ true, %bb.aw ], [ true, %bb.au ], [ false, %bb.as ], [ false, %bb.aq ]
  %.0105.ph = phi i1 [ true, %bb.bh ], [ true, %bb.bf ], [ true, %bb.bd ], [ true, %bb.bb ], [ true, %bb.ay ], [ true, %bb.aw ], [ false, %bb.au ], [ false, %bb.as ], [ false, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread139

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.bm

bb.bk:                                            ; preds = %bb.ao
  %i.fw = tail call i32 @H5S__hyper_project_intersection(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.1119, ptr noundef nonnull %i.z, i1 noundef zeroext %4) #8
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fy = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.fz = load i64, ptr @H5E_CANTCLIP_g, align 8, !tbaa !24
  %i.ga = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2622, i64 noundef %i.fy, i64 noundef %i.fz, ptr noundef nonnull @.str.77) #8 ; 0 uses
  br label %.thread139

bb.bm:                                            ; preds = %bb.bj, %bb.ae, %bb.s, %bb.bk, %bb.n
  %.1114 = phi ptr [ null, %bb.n ], [ null, %bb.s ], [ null, %bb.ae ], [ %.0113, %bb.bj ], [ %.0113, %bb.bk ]
  %.1110 = phi i1 [ false, %bb.n ], [ false, %bb.s ], [ false, %bb.ae ], [ true, %bb.bj ], [ false, %bb.bk ] ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !58
  br label %.thread150

.thread139:                                       ; preds = %bb.l, %bb.o, %bb.t, %bb.bl, %.thread, %.thread144, %bb.ah, %bb.aj, %bb.an
  %.2115 = phi ptr [ null, %bb.t ], [ null, %.thread ], [ %.0113, %.thread144 ], [ %.0113, %bb.bl ], [ null, %bb.l ], [ null, %bb.o ], [ null, %bb.ah ], [ %i.ck, %bb.aj ], [ %i.ck, %bb.an ] ; 2 uses
  %.2111 = phi i1 [ false, %bb.t ], [ false, %.thread ], [ %.0109.ph, %.thread144 ], [ false, %bb.bl ], [ false, %bb.l ], [ false, %bb.o ], [ false, %bb.ah ], [ false, %bb.aj ], [ false, %bb.an ] ; 2 uses
  %.2107 = phi i1 [ false, %bb.t ], [ false, %.thread ], [ %.0105.ph, %.thread144 ], [ false, %bb.bl ], [ false, %bb.l ], [ false, %bb.o ], [ false, %bb.ah ], [ false, %bb.aj ], [ false, %bb.an ] ; 2 uses
  %i.gb = call i32 @H5S_close(ptr noundef nonnull %i.z) #8
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %bb.bn, label %.thread150

bb.bn:                                            ; preds = %.thread139
  %i.gd = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ge = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !24
  %i.gf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2634, i64 noundef %i.gd, i64 noundef %i.ge, ptr noundef nonnull @.str.59) #8 ; 0 uses
  br label %.thread150

.thread150:                                       ; preds = %bb.bm, %.thread139, %bb.bn
  %.2107163 = phi i1 [ %.2107, %bb.bn ], [ %.2107, %.thread139 ], [ %.1110, %bb.bm ] ; 2 uses
  %.2111161 = phi i1 [ %.2111, %bb.bn ], [ %.2111, %.thread139 ], [ %.1110, %bb.bm ] ; 2 uses
  %.2115159 = phi ptr [ %.2115, %bb.bn ], [ %.2115, %.thread139 ], [ %.1114, %bb.bm ] ; 2 uses
  %.6 = phi i32 [ -1, %bb.bn ], [ -1, %.thread139 ], [ 0, %bb.bm ] ; 2 uses
  %.not133 = icmp eq ptr %.2115159, null
  br i1 %.not133, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.thread150
  %i.gg = call i32 @H5S_close(ptr noundef nonnull %.2115159) #8
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %.split, label %bb.bp

.split:                                           ; preds = %bb.bo
  %i.gi = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.gj = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !24
  %i.gk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2638, i64 noundef %i.gi, i64 noundef %i.gj, ptr noundef nonnull @.str.78) #8 ; 0 uses
  br i1 %.2111161, label %bb.bq, label %bb.br

bb.bp:                                            ; preds = %bb.bo, %.thread150
  br i1 %.2111161, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.split, %bb.bp
  %.7187 = phi i32 [ -1, %.split ], [ %.6, %bb.bp ]
  %i.gl = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !54
  %i.go = call i32 %i.gn(ptr noundef nonnull %i.p) #8
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %.split195, label %bb.br

.split195:                                        ; preds = %bb.bq
  %i.gq = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.gr = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !24
  %i.gs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2640, i64 noundef %i.gq, i64 noundef %i.gr, ptr noundef nonnull @.str.79) #8 ; 0 uses
  br i1 %.2107163, label %bb.bs, label %.thread188

bb.br:                                            ; preds = %.split, %bb.bq, %bb.bp
  %.8 = phi i32 [ -1, %.split ], [ %.7187, %bb.bq ], [ %.6, %bb.bp ] ; 2 uses
  br i1 %.2107163, label %bb.bs, label %.thread188

bb.bs:                                            ; preds = %.split195, %bb.br
  %.8198 = phi i32 [ -1, %.split195 ], [ %.8, %bb.br ]
  %i.gt = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !54
  %i.gw = call i32 %i.gv(ptr noundef nonnull %i.u) #8
  %i.gx = icmp slt i32 %i.gw, 0
  br i1 %i.gx, label %bb.bt, label %.thread188

bb.bt:                                            ; preds = %bb.bs
  %i.gy = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.gz = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !24
  %i.ha = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_project_intersection, i32 noundef 2642, i64 noundef %i.gy, i64 noundef %i.gz, ptr noundef nonnull @.str.80) #8 ; 0 uses
  br label %.thread188

.thread188:                                       ; preds = %bb.c, %bb.f, %bb.h, %bb.j, %.split195, %bb.bt, %bb.bs, %bb.br
  %.0112160174181194 = phi ptr [ %i.p, %bb.bt ], [ %i.p, %bb.bs ], [ %i.p, %bb.br ], [ %i.p, %.split195 ], [ null, %bb.c ], [ null, %bb.f ], [ %i.p, %bb.h ], [ %i.p, %bb.j ]
  %.0108162172182193 = phi ptr [ %i.u, %bb.bt ], [ %i.u, %bb.bs ], [ %i.u, %bb.br ], [ %i.u, %.split195 ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.h ], [ %i.u, %bb.j ]
  %.9 = phi i32 [ -1, %bb.bt ], [ %.8198, %bb.bs ], [ %.8, %bb.br ], [ -1, %.split195 ], [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ]
  %i.hb = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list, ptr noundef %.0112160174181194) #8 ; 0 uses
  %i.hc = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list, ptr noundef %.0108162172182193) #8 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.d, %.thread188
  %.10 = phi i32 [ %.9, %.thread188 ], [ 0, %bb.d ]
  ret i32 %.10
}

declare noalias ptr @H5FL_reg_calloc(ptr noundef) local_unnamed_addr #4

declare i32 @H5S__extent_copy_real(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @H5S_select_all(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @H5S_hyper_add_span_element(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5S_select_elements(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5S__hyper_project_intersection(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i64 -1, -9223372036854775808) i64 @H5Sselect_project_intersection(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %3, i8 0, i64 480, i1 false)
  %i.b = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5_init_library() #8
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge, !prof !23

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2689, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread47

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.l = phi i8 [ %.pre, %._crit_edge ], [ %i.d, %bb.a ]
  %i.m = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = trunc nuw i8 %i.l to i1
  %i.p = select i1 %i.n, i1 true, i1 %i.o
  br i1 %i.p, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.q = tail call i32 @H5S__init_package() #8
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g, !prof !108

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.s = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.t = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2689, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread47

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.v = call i32 @H5CX_push(ptr noundef nonnull %3) #8
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.y = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !24
  %i.z = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2689, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread47

bb.i:                                             ; preds = %bb.g
  %i.aa = call i32 @H5E_clear_stack() #8          ; 0 uses
  %i.ab = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 4) #8 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ae = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2693, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread53

bb.k:                                             ; preds = %bb.i
  %i.ag = call ptr @H5I_object_verify(i64 noundef %1, i32 noundef 4) #8 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.aj = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2695, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread53

bb.m:                                             ; preds = %bb.k
  %i.al = call ptr @H5I_object_verify(i64 noundef %2, i32 noundef 4) #8 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ao = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.ap = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2697, i64 noundef %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread53

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 352
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32
  %.not = icmp eq i64 %i.ar, %i.at
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.av = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.aw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2702, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.81) #8 ; 0 uses
  br label %.thread53

bb.q:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !21
  %.not33 = icmp eq i32 %i.ay, %i.ba
  br i1 %.not33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bc = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.bd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2708, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.82) #8 ; 0 uses
  br label %.thread53

bb.s:                                             ; preds = %bb.q
  %i.be = call i32 @H5S_select_project_intersection(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, i1 noundef zeroext false)
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !24
  %i.bh = load i64, ptr @H5E_CANTCLIP_g, align 8, !tbaa !24
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2712, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.83) #8 ; 0 uses
  %.pre57 = load ptr, ptr %i.a, align 8
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !58  ; 2 uses
  %i.bk = call i64 @H5I_register(i32 noundef 4, ptr noundef %i.bj, i1 noundef zeroext true) #8 ; 2 uses
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bm = load i64, ptr @H5E_ID_g, align 8, !tbaa !24
  %i.bn = load i64, ptr @H5E_CANTREGISTER_g, align 8, !tbaa !24
  %i.bo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2716, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.84) #8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.bp = phi ptr [ %.pre57, %bb.t ], [ %i.bj, %bb.v ] ; 2 uses
  %.not56 = icmp eq ptr %i.bp, null
  br i1 %.not56, label %.thread53, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = call i32 @H5S_close(ptr noundef nonnull %i.bp) #8
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.split, label %.thread53

.split:                                           ; preds = %bb.x
  %i.bs = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bt = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !24
  %i.bu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Sselect_project_intersection, i32 noundef 2721, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull @.str.59) #8 ; 0 uses
  br label %.thread53

.thread53:                                        ; preds = %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.w, %bb.x, %.split
  %i.bv = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %.thread47

bb.y:                                             ; preds = %bb.u
  %i.bw = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %bb.z

.thread47:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread53
  %i.bx = call i32 @H5E_dump_api_stack() #8       ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread47
  %.1274350 = phi i64 [ -1, %.thread47 ], [ %i.bk, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.1274350
}

declare i64 @H5I_register(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_select_subtract(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 6 uses
  %i.b = alloca [32 x i64], align 16              ; 6 uses
  %i.c = alloca [32 x i64], align 16              ; 6 uses
  %i.d = alloca [32 x i64], align 16              ; 6 uses
  %i.e = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %i.i, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.j = tail call i32 @H5S__init_package() #8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10
  %.pre38 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre39 = trunc nuw i8 %.pre to i1
  %.pre40 = trunc nuw i8 %.pre38 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.l = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.m = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_subtract, i32 noundef 2756, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %bb.o

bb.d:                                             ; preds = %._crit_edge37, %bb.a
  %.pre-phi41 = phi i1 [ %.pre40, %._crit_edge37 ], [ %i.h, %bb.a ]
  %.pre-phi = phi i1 [ %.pre39, %._crit_edge37 ], [ %i.f, %bb.a ]
  %i.o = xor i1 %.pre-phi41, true
  %i.p = select i1 %.pre-phi, i1 true, i1 %i.o
  br i1 %i.p, label %bb.e, label %bb.o, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.s = load i32, ptr %i.r, align 8, !tbaa !56   ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.v = load i32, ptr %i.u, align 8, !tbaa !56   ; 2 uses
  switch i32 %i.v, label %bb.i [
    i32 0, label %bb.o
    i32 3, label %bb.g
    i32 1, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @H5S_select_none(ptr noundef nonnull %0) #8
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.z = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !24
  %i.aa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_subtract, i32 noundef 2769, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.63) #8 ; 0 uses
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  switch i32 %i.s, label %bb.m [
    i32 1, label %bb.j
    i32 3, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ab = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ac = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !24
  %i.ad = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_subtract, i32 noundef 2774, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.85) #8 ; 0 uses
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !21 ; 3 uses
  %.not35 = icmp eq i32 %i.af, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %wide.trip.count = zext i32 %i.af to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.af, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> zeroinitializer, ptr %i.ai, align 16, !tbaa !24
  store <2 x i64> zeroinitializer, ptr %i.aj, align 16, !tbaa !24
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x i64> splat (i64 1), ptr %i.ak, align 16, !tbaa !24
  store <2 x i64> splat (i64 1), ptr %i.al, align 16, !tbaa !24
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> splat (i64 1), ptr %i.am, align 16, !tbaa !24
  store <2 x i64> splat (i64 1), ptr %i.an, align 16, !tbaa !24
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <2 x i64>, ptr %i.ao, align 8, !tbaa !24
  %wide.load43 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x i64> %wide.load, ptr %i.aq, align 16, !tbaa !24
  store <2 x i64> %wide.load43, ptr %i.ar, align 16, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 0, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 1, ptr %i.au, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store i64 1, ptr %i.av, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.k
  %i.az = call i32 @H5S_select_hyperslab(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.l, label %.thread

.thread:                                          ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.bb = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bc = load i64, ptr @H5E_CANTSELECT_g, align 8, !tbaa !24
  %i.bd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_subtract, i32 noundef 2798, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.86) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.o

bb.m:                                             ; preds = %.thread, %bb.i
  %i.be = call i32 @H5S__modify_select(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %1) #8
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bh = load i64, ptr @H5E_CANTCLIP_g, align 8, !tbaa !24
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5S_select_subtract, i32 noundef 2806, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.87) #8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.d, %bb.e, %bb.m, %bb.g, %bb.n, %bb.j, %bb.h, %bb.c, %bb.f
  %.2 = phi i32 [ -1, %bb.c ], [ -1, %bb.h ], [ 0, %bb.g ], [ -1, %bb.j ], [ -1, %bb.n ], [ 0, %bb.m ], [ -1, %bb.l ], [ %i.v, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.2
}

declare i32 @H5S_select_hyperslab(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5S__modify_select(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i64 -1, -9223372036854775808) i64 @H5Ssel_iter_create(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %3, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !23

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2840, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread37

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5S__init_package() #8
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !25

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2840, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread37

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %3) #8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !24
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2840, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread37

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #8           ; 0 uses
  %i.aa = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 4) #8 ; 7 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ad = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2844, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread43

bb.k:                                             ; preds = %bb.i
  %i.af = icmp eq i64 %1, 0
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ah = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.ai = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2846, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.88) #8 ; 0 uses
  br label %.thread43

bb.m:                                             ; preds = %bb.k
  %.not = icmp ult i32 %2, 4
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ak = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !24
  %i.al = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2848, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.89) #8 ; 0 uses
  br label %.thread43

bb.o:                                             ; preds = %bb.m
  %i.am = call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 9 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ao = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ap = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !24
  %i.aq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2852, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.23) #8 ; 0 uses
  br label %.thread43

bb.q:                                             ; preds = %bb.o
  %i.ar = or disjoint i32 %2, 4096
  %i.as = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = xor i1 %i.av, true
  %i.ax = select i1 %i.at, i1 true, i1 %i.aw
  br i1 %i.ax, label %bb.r, label %H5S_select_iter_init.exit.thread, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !21 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !43
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %H5S_select_iter_init.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !44
  %i.be = zext i32 %i.az to i64
  %i.bf = shl nuw nsw i64 %i.be, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.bd, i64 %i.bf, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 272
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 8 %i.bh, i64 %i.bf, i1 false)
  br label %H5S_select_iter_init.exit

H5S_select_iter_init.exit:                        ; preds = %bb.r, %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 536
  store i64 %1, ptr %i.bi, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 352
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 528
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 544
  store i32 %i.ar, ptr %i.bn, align 8, !tbaa !47
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 160
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !48
  %i.br = call i32 %i.bq(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.am) #8, !inline_history !55
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %H5S_select_iter_init.exit.thread, label %bb.t

H5S_select_iter_init.exit.thread:                 ; preds = %bb.q, %H5S_select_iter_init.exit
  %i.bt = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.bu = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.bv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_create, i32 noundef 2859, i64 noundef %i.bt, i64 noundef %i.bu, ptr noundef nonnull @.str.24) #8 ; 0 uses
  br label %.thread43

bb.t:                                             ; preds = %H5S_select_iter_init.exit
end_hunk_1
begin_hunk_2_@H5Ssel_iter_close:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %1, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #8
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !23

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_close, i32 noundef 3156, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread20

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5S_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !9
  %i.p = tail call i32 @H5S__init_package() #8
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !25

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !9
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !24
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_close, i32 noundef 3156, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.thread20

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %1) #8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !24
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !24
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_close, i32 noundef 3156, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread20

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #8           ; 0 uses
  %i.aa = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 15) #8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ad = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !24
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_close, i32 noundef 3160, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.91) #8 ; 0 uses
  br label %.thread26

bb.k:                                             ; preds = %bb.i
  %i.af = call i32 @H5I_dec_app_ref(i64 noundef %0) #8
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !24
  %i.ai = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !24
  %i.aj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Ssel_iter_close, i32 noundef 3164, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.102) #8 ; 0 uses
  br label %.thread26

.thread26:                                        ; preds = %bb.l, %bb.j
  %i.ak = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %.thread20

bb.m:                                             ; preds = %bb.k
  %i.al = call i32 @H5CX_pop(i1 noundef zeroext true) #8 ; 0 uses
  br label %bb.n

.thread20:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread26
  %i.am = call i32 @H5E_dump_api_stack() #8       ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread20
  %.0111523 = phi i32 [ -1, %.thread20 ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.0111523
}

declare i32 @H5I_dec_app_ref(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS5H5F_t", !13, i64 0}
!15 = !{!"H5O_shared_t", !5, i64 0, !14, i64 8, !5, i64 16, !4, i64 24}
!16 = !{!"long", !4, i64 0}
!17 = !{!"p1 long", !13, i64 0}
!18 = !{!"H5S_extent_t", !15, i64 0, !5, i64 40, !5, i64 44, !16, i64 48, !5, i64 56, !17, i64 64, !17, i64 72}
!19 = !{!"", !13, i64 0, !8, i64 8, !4, i64 16, !16, i64 272, !4, i64 280}
!20 = !{!"H5S_t", !18, i64 0, !19, i64 80}
!21 = !{!20, !5, i64 56}
!22 = !{!20, !8, i64 88}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{!16, !16, i64 0}
!25 = !{!"branch_weights", i32 1073205, i32 2146410443}
!26 = !{!20, !5, i64 40}
!27 = !{!"branch_weights", i32 0, i32 -2147483648}
!28 = !{!4, !4, i64 0}
!29 = !{!20, !13, i64 80}
!30 = !{!"", !5, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160}
!31 = !{!30, !13, i64 16}
!32 = !{!20, !16, i64 352}
!33 = !{!30, !13, i64 24}
!34 = !{!30, !13, i64 56}
!35 = !{!30, !13, i64 96}
!36 = !{!30, !13, i64 136}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!30, !13, i64 144}
!40 = !{!30, !13, i64 152}
!41 = !{!"p1 _ZTS20H5S_sel_iter_class_t", !13, i64 0}
!42 = !{!"H5S_sel_iter_t", !41, i64 0, !5, i64 8, !4, i64 16, !4, i64 272, !16, i64 528, !16, i64 536, !5, i64 544, !4, i64 552}
!43 = !{!42, !5, i64 8}
!44 = !{!20, !17, i64 64}
!45 = !{!42, !16, i64 536}
!46 = !{!42, !16, i64 528}
!47 = !{!42, !5, i64 544}
!48 = !{!30, !13, i64 160}
!49 = !{!42, !41, i64 0}
!50 = !{!"H5S_sel_iter_class_t", !5, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!51 = !{!50, !13, i64 8}
!52 = !{!50, !13, i64 40}
!53 = !{!50, !13, i64 56}
!54 = !{!50, !13, i64 64}
!55 = !{ptr @H5S_select_iter_init}
!56 = !{!30, !5, i64 0}
!57 = !{!"p1 _ZTS5H5S_t", !13, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!5, !5, i64 0}
!60 = !{!14, !14, i64 0}
!61 = !{!17, !17, i64 0}
!62 = !{!13, !13, i64 0}
!63 = !{i64 0, i64 4, !59, i64 8, i64 8, !60, i64 16, i64 4, !59, i64 24, i64 16, !28, i64 40, i64 4, !59, i64 44, i64 4, !59, i64 48, i64 8, !24, i64 56, i64 4, !59, i64 64, i64 8, !61, i64 72, i64 8, !61, i64 80, i64 8, !62, i64 88, i64 1, !9, i64 96, i64 256, !28, i64 352, i64 8, !24, i64 360, i64 8, !28}
!64 = !{i64 0, i64 8, !62, i64 8, i64 1, !9, i64 16, i64 256, !28, i64 272, i64 8, !24, i64 280, i64 8, !28}
!65 = !{!30, !13, i64 8}
!66 = !{ptr @H5S_select_release}
!67 = !{!"branch_weights", i32 127, i32 1}
!68 = !{!"branch_weights", i32 255873, i32 127}
!69 = !{!30, !13, i64 32}
!70 = !{!30, !13, i64 40}
!71 = !{!"p1 omnipotent char", !13, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!30, !13, i64 48}
!74 = !{!30, !13, i64 64}
!75 = !{!30, !13, i64 72}
!76 = !{!30, !13, i64 80}
!77 = !{!30, !13, i64 88}
!78 = !{!30, !13, i64 104}
!79 = !{!30, !13, i64 128}
!80 = distinct !{!80, !37}
!81 = distinct !{!81, !38}
!82 = !{ptr @H5S_select_adjust_s}
!83 = !{!50, !13, i64 24}
!84 = distinct !{!84, !37}
!85 = distinct !{!85, !37}
!86 = distinct !{!86, !37}
!87 = !{!"H5S_sel_iter_op_t", !5, i64 0, !4, i64 8}
!88 = !{!87, !5, i64 0}
!89 = distinct !{!89, !37}
!90 = distinct !{!90, !37}
!91 = distinct !{!91, !37}
!92 = distinct !{!92, !37}
!93 = distinct !{!93, !37}
!94 = distinct !{!94, !37}
!95 = !{!30, !13, i64 112}
!96 = !{!50, !13, i64 16}
!97 = !{!50, !13, i64 32}
!98 = !{!50, !13, i64 48}
!99 = distinct !{!99, !37}
!100 = !{!30, !13, i64 120}
!101 = distinct !{!101, !37}
!102 = distinct !{!102, !38}
!103 = distinct !{!103, !37}
!104 = distinct !{!104, !37}
!105 = distinct !{!105, !37}
!106 = !{!"p1 _ZTS14H5S_pnt_node_t", !13, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"branch_weights", i32 1132716, i32 2146350932}
!109 = distinct !{!109, !37, !111, !112}
!110 = distinct !{!110, !37, !112, !111}
!111 = !{!"llvm.loop.isvectorized", i32 1}
!112 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_2
