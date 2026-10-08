Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5FSsection?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0_@H5FS_vfd_alloc_hdr_and_section_info_if_needed:bb.a
  br label %.thread161

bb.i:                                             ; preds = %bb.g
  %i.y = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #5
  %i.z = zext i8 %i.y to i64
  %i.aa = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #5
  %i.ab = zext i8 %i.aa to i64
  %i.ac = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #5
  %i.ad = zext i8 %i.ac to i64
  %i.ae = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #5
  %i.af = zext i8 %i.ae to i64
  %i.ag = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #5
  %i.ah = zext i8 %i.ag to i64
  %i.ai = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #5
  %i.aj = zext i8 %i.ai to i64
  %i.ak = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #5
  %i.al = zext i8 %i.ak to i64
  %i.am = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #5
  %i.an = zext i8 %i.am to i64
  %i.ao = add nuw nsw i64 %i.z, 18
  %i.ap = add nuw nsw i64 %i.ao, %i.ab
  %i.aq = add nuw nsw i64 %i.ap, %i.ad
  %i.ar = add nuw nsw i64 %i.aq, %i.af
  %i.as = add nuw nsw i64 %i.ar, %i.ah
  %i.at = add nuw nsw i64 %i.as, %i.aj
  %i.au = add nuw nsw i64 %i.at, %i.al
  %i.av = add nuw nsw i64 %i.au, %i.an            ; 3 uses
  %i.aw = tail call i64 @H5MF_alloc(ptr noundef %0, i32 noundef 6, i64 noundef %i.av) #5 ; 3 uses
  store i64 %i.aw, ptr %i.k, align 8, !tbaa !131
  %i.ax = icmp eq i64 %i.aw, -1
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !14
  %i.az = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !14
  %i.ba = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2380, i64 noundef %i.ay, i64 noundef %i.az, ptr noundef nonnull @.str.25) #5 ; 0 uses
  br label %.thread161

bb.k:                                             ; preds = %bb.i
  %i.bb = tail call i32 @H5AC_insert_entry(ptr noundef %0, ptr noundef nonnull @H5AC_FSPACE_HDR, i64 noundef %i.aw, ptr noundef nonnull %1, i32 noundef 4) #5
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.thread140.thread155, label %bb.l

.thread140.thread155:                             ; preds = %bb.k
  %i.bd = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.be = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.bf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2385, i64 noundef %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.26) #5 ; 0 uses
  br label %bb.af

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !131
  store i64 %i.bg, ptr %2, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %.098 = phi i64 [ 0, %bb.d ], [ %i.av, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !41
  %.not111 = icmp eq i64 %i.bi, -1
  br i1 %.not111, label %bb.n, label %.thread161

bb.n:                                             ; preds = %bb.m
  %i.bj = tail call i64 @H5F_get_eoa(ptr noundef %0, i32 noundef 5) #5 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, -1
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.bm = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !14
  %i.bn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2397, i64 noundef %i.bl, i64 noundef %i.bm, ptr noundef nonnull @.str.23) #5 ; 0 uses
  br label %.thread140

bb.p:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 5 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !47
  %i.bq = add i64 %i.bp, %i.bj
  %i.br = tail call zeroext i1 @H5F_is_tmp_addr(ptr noundef %0, i64 noundef %i.bq) #5
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bs = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.bt = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !14
  %i.bu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2402, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull @.str.27) #5 ; 0 uses
  br label %.thread140

bb.r:                                             ; preds = %bb.p
  %i.bv = load i64, ptr %i.bo, align 8, !tbaa !47 ; 6 uses
  %i.bw = tail call i64 @H5MF_alloc(ptr noundef %0, i32 noundef 5, i64 noundef %i.bv) #5 ; 7 uses
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.bz = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !14
  %i.ca = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2411, i64 noundef %i.by, i64 noundef %i.bz, ptr noundef nonnull @.str.28) #5 ; 0 uses
  br label %.thread140

bb.t:                                             ; preds = %bb.r
  %i.cb = load i64, ptr %i.bo, align 8, !tbaa !47 ; 2 uses
  %i.cc = icmp ugt i64 %i.cb, %i.bv
  br i1 %i.cc, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cd = tail call i32 @H5MF_xfree(ptr noundef %0, i32 noundef 5, i64 noundef %i.bw, i64 noundef %i.bv) #5
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cf = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.cg = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !14
  %i.ch = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2421, i64 noundef %i.cf, i64 noundef %i.cg, ptr noundef nonnull @.str.29) #5 ; 0 uses
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  store i64 %i.cb, ptr %i.bo, align 8, !tbaa !47
  br label %.thread161

bb.x:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i64 %i.bv, ptr %i.ci, align 8, !tbaa !48
  store i64 %i.bv, ptr %i.bo, align 8, !tbaa !47
  store i64 %i.bw, ptr %i.bh, align 8, !tbaa !41
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.ck = tail call i32 @H5AC_insert_entry(ptr noundef %0, ptr noundef nonnull @H5AC_FSPACE_SINFO, i64 noundef %i.bw, ptr noundef %i.cj, i32 noundef 0) #5
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cm = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.cn = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !14
  %i.co = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2453, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull @.str.30) #5 ; 0 uses
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.cp = tail call i32 @H5AC_mark_entry_dirty(ptr noundef nonnull %1) #5
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %i.i, align 8, !tbaa !38
  br label %.thread161

bb.ab:                                            ; preds = %bb.v, %bb.y
  %i.cr = load i64, ptr %i.bh, align 8, !tbaa !41
  %i.cs = icmp eq i64 %i.bw, %i.cr
  br i1 %i.cs, label %bb.ac, label %.thread140

.thread:                                          ; preds = %bb.z
  %i.ct = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.cu = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !14
  %i.cv = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2459, i64 noundef %i.ct, i64 noundef %i.cu, ptr noundef nonnull @.str.31) #5 ; 0 uses
  %i.cw = load i64, ptr %i.bh, align 8, !tbaa !41
  %i.cx = icmp eq i64 %i.bw, %i.cw
  br i1 %i.cx, label %bb.ac, label %.thread171

bb.ac:                                            ; preds = %.thread, %bb.ab
  %.090.ph169 = phi i1 [ true, %.thread ], [ false, %bb.ab ]
  %i.cy = tail call i32 @H5MF_xfree(ptr noundef %0, i32 noundef 5, i64 noundef %i.bw, i64 noundef %i.bv) #5
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.ad, label %.split

bb.ad:                                            ; preds = %bb.ac
  %i.da = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.db = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !14
  %i.dc = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2481, i64 noundef %i.da, i64 noundef %i.db, ptr noundef nonnull @.str.29) #5 ; 0 uses
  br label %.split

.split:                                           ; preds = %bb.ad, %bb.ac
  store i64 -1, ptr %i.bh, align 8, !tbaa !41
  br i1 %.090.ph169, label %.thread171, label %.thread140

.thread171:                                       ; preds = %.thread, %.split
  %i.dd = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.de = tail call i32 @H5AC_remove_entry(ptr noundef %i.dd) #5
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.ae, label %.thread140

bb.ae:                                            ; preds = %.thread171
  %i.dg = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.dh = load i64, ptr @H5E_CANTEXPUNGE_g, align 8, !tbaa !14
  %i.di = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2488, i64 noundef %i.dg, i64 noundef %i.dh, ptr noundef nonnull @.str.32) #5 ; 0 uses
  br label %.thread140

.thread140:                                       ; preds = %bb.ab, %bb.s, %bb.q, %bb.o, %.split, %.thread171, %bb.ae
  br i1 %.not110, label %bb.af, label %.thread161

bb.af:                                            ; preds = %.thread140.thread155, %.thread140
  %.193.ph138145160 = phi i1 [ false, %.thread140.thread155 ], [ true, %.thread140 ]
  %.199.ph136147159 = phi i64 [ %i.av, %.thread140.thread155 ], [ %.098, %.thread140 ]
  %i.dj = load i64, ptr %i.k, align 8, !tbaa !131
  %i.dk = tail call i32 @H5MF_xfree(ptr noundef %0, i32 noundef 6, i64 noundef %i.dj, i64 noundef %.199.ph136147159) #5
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dm = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.dn = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !14
  %i.do = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2503, i64 noundef %i.dm, i64 noundef %i.dn, ptr noundef nonnull @.str.33) #5 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  store i64 -1, ptr %i.k, align 8, !tbaa !131
  br i1 %.193.ph138145160, label %bb.ai, label %.thread161

bb.ai:                                            ; preds = %bb.ah
  %i.dp = tail call i32 @H5AC_mark_entry_clean(ptr noundef nonnull %1) #5
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dr = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.ds = load i64, ptr @H5E_CANTMARKCLEAN_g, align 8, !tbaa !14
  %i.dt = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2510, i64 noundef %i.dr, i64 noundef %i.ds, ptr noundef nonnull @.str.34) #5 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.du = tail call i32 @H5AC_unpin_entry(ptr noundef nonnull %1) #5
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dw = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.dx = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !14
  %i.dy = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2512, i64 noundef %i.dw, i64 noundef %i.dx, ptr noundef nonnull @.str.35) #5 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dz = tail call i32 @H5AC_remove_entry(ptr noundef nonnull %1) #5
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.an, label %.thread161

bb.an:                                            ; preds = %bb.am
  %i.eb = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.ec = load i64, ptr @H5E_CANTEXPUNGE_g, align 8, !tbaa !14
  %i.ed = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS_vfd_alloc_hdr_and_section_info_if_needed, i32 noundef 2515, i64 noundef %i.eb, i64 noundef %i.ec, ptr noundef nonnull @.str.36) #5 ; 0 uses
  br label %.thread161

.thread161:                                       ; preds = %.thread140, %bb.f, %bb.h, %bb.j, %bb.m, %bb.aa, %bb.c, %bb.b, %bb.w, %bb.a, %bb.ah, %bb.an, %bb.am
  %.9 = phi i32 [ -1, %bb.an ], [ -1, %bb.am ], [ -1, %bb.ah ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.aa ], [ 0, %bb.m ], [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %bb.f ], [ -1, %.thread140 ]
  ret i32 %.9
}

declare i64 @H5F_get_eoa(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @H5F_is_tmp_addr(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @H5F_sizeof_size(ptr noundef) local_unnamed_addr #2

declare i64 @H5MF_alloc(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5AC_insert_entry(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @H5MF_xfree(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5AC_mark_entry_dirty(ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_remove_entry(ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_mark_entry_clean(ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_unpin_entry(ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_unprotect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @H5AC_protect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5FS__sect_unlink_size(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5FS_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.x, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60   ; 8 uses
  %i.i = lshr i64 %i.h, 32                        ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.h, 48                        ; 2 uses
  %.not26.i = icmp eq i64 %i.j, 0
  br i1 %.not26.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %i.h, 56                        ; 2 uses
  %.not28.i = icmp eq i64 %i.k, 0
  br i1 %.not28.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !28
  %i.n = zext i8 %i.m to i32
  %i.o = add nuw nsw i32 %i.n, 56
  br label %H5VM_log2_gen.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.j
  %i.q = load i8, ptr %i.p, align 1, !tbaa !28
  %i.r = zext i8 %i.q to i32
  %i.s = add nuw nsw i32 %i.r, 48
  br label %H5VM_log2_gen.exit

bb.g:                                             ; preds = %bb.c
  %i.t = lshr i64 %i.h, 40                        ; 2 uses
  %.not27.i = icmp eq i64 %i.t, 0
  br i1 %.not27.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28
  %i.w = zext i8 %i.v to i32
  %i.x = add nuw nsw i32 %i.w, 40
  br label %H5VM_log2_gen.exit

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !28
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %i.aa, 32
  br label %H5VM_log2_gen.exit

bb.j:                                             ; preds = %bb.b
  %i.ac = lshr i64 %i.h, 16                       ; 2 uses
  %.not23.i = icmp eq i64 %i.ac, 0
  br i1 %.not23.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = lshr i64 %i.h, 24                       ; 2 uses
  %.not25.i = icmp eq i64 %i.ad, 0
  br i1 %.not25.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nuw nsw i32 %i.ag, 24
  br label %H5VM_log2_gen.exit

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.ac
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !28
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nuw nsw i32 %i.ak, 16
  br label %H5VM_log2_gen.exit

bb.n:                                             ; preds = %bb.j
  %i.am = lshr i64 %i.h, 8                        ; 2 uses
  %.not24.i = icmp eq i64 %i.am, 0
  br i1 %.not24.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !28
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, 8
  br label %H5VM_log2_gen.exit

bb.p:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.h
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !28
  %i.at = zext i8 %i.as to i32
  br label %H5VM_log2_gen.exit

H5VM_log2_gen.exit:                               ; preds = %bb.e, %bb.f, %bb.h, %bb.i, %bb.l, %bb.m, %bb.o, %bb.p
  %.0.i = phi i32 [ %i.al, %bb.m ], [ %i.s, %bb.f ], [ %i.ab, %bb.i ], [ %i.o, %bb.e ], [ %i.x, %bb.h ], [ %i.ah, %bb.l ], [ %i.aq, %bb.o ], [ %i.at, %bb.p ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.aw = zext nneg i32 %.0.i to i64
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !62 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %H5VM_log2_gen.exit
  %i.bb = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.bc = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !14
  %i.bd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__sect_unlink_size, i32 noundef 766, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.42) #5 ; 0 uses
  br label %bb.x

bb.r:                                             ; preds = %H5VM_log2_gen.exit
  %i.be = tail call ptr @H5SL_search(ptr noundef nonnull %i.az, ptr noundef nonnull %i.g) #5 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = load i64, ptr @H5E_FSPACE_g, align 8, !tbaa !14
  %i.bh = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !14
  %i.bi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5FS__sect_unlink_size, i32 noundef 770, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.43) #5 ; 0 uses
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.bl = tail call ptr @H5SL_remove(ptr noundef %i.bk, ptr noundef nonnull %2) #5
end_hunk_0
