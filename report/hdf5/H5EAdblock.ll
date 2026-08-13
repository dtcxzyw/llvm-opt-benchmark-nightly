inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@H5EA__dblock_create:bb.a
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @H5EA__dblock_alloc(ptr noundef %0, ptr noundef %1, i64 noundef %4) ; 14 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.j = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_create, i32 noundef 160, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 408
  %i.o = load i64, ptr %i.n, align 8, !tbaa !43
  %i.p = add i64 %i.o, 10
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  %i.r = load i8, ptr %i.q, align 8, !tbaa !44
  %i.s = zext i8 %i.r to i64
  %i.t = add i64 %i.p, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 312 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.x = load i8, ptr %i.w, align 8, !tbaa !45
  %i.y = zext i8 %i.x to i64
  %i.z = mul i64 %i.v, %i.y
  %i.aa = add i64 %i.t, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 320 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !41
  %i.ad = shl i64 %i.ac, 2
  %i.ae = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 280 ; 3 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store i64 %3, ptr %i.ag, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.aj = tail call i64 @H5MF_alloc(ptr noundef %i.ai, i32 noundef 5, i64 noundef %i.ae) #4 ; 4 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.am = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.an = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_create, i32 noundef 171, i64 noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  store i64 %i.aj, ptr %i.ao, align 8, !tbaa !49
  %i.ap = load i64, ptr %i.ab, align 8, !tbaa !41
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42
  %i.aw = load i64, ptr %i.u, align 8, !tbaa !29
  %i.ax = tail call i32 %i.at(ptr noundef %i.av, i64 noundef %i.aw) #4
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.ba = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !13
  %i.bb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_create, i32 noundef 179, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %bb.q

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.bc = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.bd = tail call i32 @H5AC_insert_entry(ptr noundef %i.bc, ptr noundef nonnull @H5AC_EARRAY_DBLOCK, i64 noundef %i.aj, ptr noundef nonnull %i.g, i32 noundef 0) #4
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.bg = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !13
  %i.bh = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_create, i32 noundef 184, i64 noundef %i.bf, i64 noundef %i.bg, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !54 ; 2 uses
  %.not59 = icmp eq ptr %i.bj, null
  br i1 %.not59, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.bl = tail call i32 @H5AC_proxy_entry_add_child(ptr noundef nonnull %i.bj, ptr noundef %i.bk, ptr noundef nonnull %i.g) #4
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.bq = load i64, ptr %i.af, align 8, !tbaa !46
  %i.br = load <2 x i64>, ptr %i.bp, align 8, !tbaa !13
  %i.bs = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bq, i64 1
  %i.bt = add <2 x i64> %i.br, %i.bs
  store <2 x i64> %i.bt, ptr %i.bp, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !56
  %i.bw = add i64 %i.bv, %4
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !56
  store i8 1, ptr %2, align 1, !tbaa !8
  br label %.thread

bb.o:                                             ; preds = %bb.l
  %i.bx = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.by = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !13
  %i.bz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_create, i32 noundef 191, i64 noundef %i.bx, i64 noundef %i.by, ptr noundef nonnull @.str.8) #4 ; 0 uses
  %i.ca = tail call i32 @H5AC_remove_entry(ptr noundef nonnull %i.g) #4
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.cd = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !13
  %i.ce = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_create, i32 noundef 215, i64 noundef %i.cc, i64 noundef %i.cd, ptr noundef nonnull @.str.9) #4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.h, %bb.j, %bb.o, %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !49 ; 2 uses
  %.not60 = icmp eq i64 %i.cg, -1
  br i1 %.not60, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.ci = load i64, ptr %i.af, align 8, !tbaa !46
  %i.cj = tail call i32 @H5MF_xfree(ptr noundef %i.ch, i32 noundef 5, i64 noundef %i.cg, i64 noundef %i.ci) #4
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.cm = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !13
  %i.cn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_create, i32 noundef 221, i64 noundef %i.cl, i64 noundef %i.cm, ptr noundef nonnull @.str.10) #4 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.co = tail call i32 @H5EA__dblock_dest(ptr noundef nonnull %i.g)
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.cq = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.cr = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !13
  %i.cs = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_create, i32 noundef 226, i64 noundef %i.cq, i64 noundef %i.cr, ptr noundef nonnull @.str.4) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.n, %bb.t, %bb.u, %bb.a
  %.3 = phi i64 [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.c ], [ -1, %bb.a ], [ %i.aj, %bb.n ]
  ret i64 %.3
}

declare i64 @H5MF_alloc(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5AC_insert_entry(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @H5AC_proxy_entry_add_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_remove_entry(ptr noundef) local_unnamed_addr #2

declare i32 @H5MF_xfree(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 312) i32 @H5EA__dblock_sblk_idx(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5EA_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5VM_log2_gen.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 258
  %i.h = load i8, ptr %i.g, align 2, !tbaa !57
  %i.i = zext i8 %i.h to i64
  %i.j = sub i64 %1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 259
  %i.l = load i8, ptr %i.k, align 1, !tbaa !58
  %i.m = zext i8 %i.l to i64
  %i.n = udiv i64 %i.j, %i.m
  %i.o = add i64 %i.n, 1                          ; 8 uses
  %i.p = lshr i64 %i.o, 32                        ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %.not26.i = icmp eq i64 %i.q, 0
  br i1 %.not26.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i64 %i.o, 56                        ; 2 uses
  %.not28.i = icmp eq i64 %i.r, 0
  br i1 %.not28.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !59
  %i.u = zext i8 %i.t to i32
  %i.v = add nuw nsw i32 %i.u, 56
  br label %H5VM_log2_gen.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.q
  %i.x = load i8, ptr %i.w, align 1, !tbaa !59
  %i.y = zext i8 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 48
  br label %H5VM_log2_gen.exit

bb.g:                                             ; preds = %bb.c
  %i.aa = lshr i64 %i.o, 40                       ; 2 uses
  %.not27.i = icmp eq i64 %i.aa, 0
  br i1 %.not27.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !59
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.ad, 40
  br label %H5VM_log2_gen.exit

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.p
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !59
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nuw nsw i32 %i.ah, 32
  br label %H5VM_log2_gen.exit

bb.j:                                             ; preds = %bb.b
  %i.aj = lshr i64 %i.o, 16                       ; 2 uses
  %.not23.i = icmp eq i64 %i.aj, 0
  br i1 %.not23.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = lshr i64 %i.o, 24                       ; 2 uses
  %.not25.i = icmp eq i64 %i.ak, 0
  br i1 %.not25.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !59
  %i.an = zext i8 %i.am to i32
  %i.ao = add nuw nsw i32 %i.an, 24
  br label %H5VM_log2_gen.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.aj
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !59
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ar, 16
  br label %H5VM_log2_gen.exit

bb.n:                                             ; preds = %bb.j
  %i.at = lshr i64 %i.o, 8                        ; 2 uses
  %.not24.i = icmp eq i64 %i.at, 0
  br i1 %.not24.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !59
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nuw nsw i32 %i.aw, 8
  br label %H5VM_log2_gen.exit

bb.p:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.o
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !59
  %i.ba = zext i8 %i.az to i32
  br label %H5VM_log2_gen.exit

H5VM_log2_gen.exit:                               ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.i, %bb.h, %bb.f, %bb.e, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.as, %bb.m ], [ %i.z, %bb.f ], [ %i.ai, %bb.i ], [ %i.v, %bb.e ], [ %i.ae, %bb.h ], [ %i.ao, %bb.l ], [ %i.ax, %bb.o ], [ %i.ba, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @H5EA__dblock_protect(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.H5EA_dblock_cache_ud_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.a = load i8, ptr @H5EA_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %5, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %3, ptr %i.h, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %2, ptr %i.i, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = call ptr @H5AC_protect(ptr noundef %i.k, ptr noundef nonnull @H5AC_EARRAY_DBLOCK, i64 noundef %2, ptr noundef nonnull %5, i32 noundef %4) #4 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.o = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !13
  %i.p = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_protect, i32 noundef 300, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.11, i64 noundef %2) #4 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 296 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.w = call i32 @H5AC_proxy_entry_add_child(ptr noundef nonnull %i.r, ptr noundef %i.v, ptr noundef nonnull %i.l) #4
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !54
  store ptr %i.y, ptr %i.s, align 8, !tbaa !55
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.z = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.aa = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !13
  %i.ab = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_protect, i32 noundef 307, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.8) #4 ; 0 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 272 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !49
  %i.af = call i32 @H5AC_unprotect(ptr noundef %i.ac, ptr noundef nonnull @H5AC_EARRAY_DBLOCK, i64 noundef %i.ae, ptr noundef nonnull %i.l, i32 noundef 0) #4
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.ai = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !13
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !49
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_protect, i32 noundef 323, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.12, i64 noundef %i.aj) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.i, %bb.h, %bb.a
  %.1 = phi ptr [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.c ], [ null, %bb.a ], [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  ret ptr %.1
}

declare ptr @H5AC_protect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @H5AC_unprotect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5EA__dblock_unprotect(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5EA_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !49
  %i.m = tail call i32 @H5AC_unprotect(ptr noundef %i.j, ptr noundef nonnull @H5AC_EARRAY_DBLOCK, i64 noundef %i.l, ptr noundef %0, i32 noundef %1) #4
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.p = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !13
  %i.q = load i64, ptr %i.k, align 8, !tbaa !49
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_unprotect, i32 noundef 353, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.12, i64 noundef %i.q) #4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5EA__dblock_delete(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5EA_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5EA__dblock_unprotect.exit.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @H5EA__dblock_protect(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef 0) ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.i = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.j = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !13
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_delete, i32 noundef 387, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.11, i64 noundef %2) #4 ; 0 uses
  br label %H5EA__dblock_unprotect.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30   ; 3 uses
  %i.n = icmp ugt i64 %3, %i.m
  br i1 %i.n, label %.lr.ph, label %.thread37

.lr.ph:                                           ; preds = %bb.c
  %i.o = udiv i64 %3, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.q = load i8, ptr %i.p, align 8, !tbaa !45
  %i.r = zext i8 %i.q to i64
  %i.s = mul i64 %i.m, %i.r
  %i.t = add i64 %i.s, 4
  %i.u = add i64 %2, 10
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 408
  %i.y = load i64, ptr %i.x, align 8, !tbaa !43
  %i.z = add i64 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 424
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !44
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.02842 = phi i64 [ 0, %.lr.ph ], [ %i.am, %bb.f ]
  %.03041 = phi i64 [ %i.ad, %.lr.ph ], [ %i.al, %bb.f ] ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.ag = tail call i32 @H5AC_expunge_entry(ptr noundef %i.af, ptr noundef nonnull @H5AC_EARRAY_DBLK_PAGE, i64 noundef %.03041, i32 noundef 0) #4
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr @H5E_EARRAY_g, align 8, !tbaa !13
  %i.aj = load i64, ptr @H5E_CANTEXPUNGE_g, align 8, !tbaa !13
  %i.ak = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5EA__dblock_delete, i32 noundef 406, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %.thread37

bb.f:                                             ; preds = %bb.d
  %i.al = add i64 %i.t, %.03041
  %i.am = add nuw i64 %.02842, 1                  ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.o
  br i1 %i.an, label %bb.d, label %.thread37, !llvm.loop !65

.thread37:                                        ; preds = %bb.f, %bb.e, %bb.c
  %.139 = phi i32 [ 0, %bb.c ], [ -1, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.ao = load i8, ptr @H5EA_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = load i8, ptr @H5_libterm_g, align 1, !range !10
end_hunk_0
