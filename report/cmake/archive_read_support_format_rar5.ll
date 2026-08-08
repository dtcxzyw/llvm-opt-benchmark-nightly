inline.NumInlined: 224
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@process_head_file_extra:bb.a

declare void @archive_entry_set_size(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @archive_entry_set_mtime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @blake2sp_init(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_htime_item(ptr noundef %0, i8 noundef signext range(i8 0, 2) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 -1, ptr %i.b, align 8, !tbaa !29
  %i.c = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 4, ptr noundef nonnull %i.b) #14 ; 2 uses
  %.not3.i = icmp eq ptr %i.c, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br i1 %.not3.i, label %.thread, label %read_u32.exit

read_u32.exit:                                    ; preds = %bb.b
  %i.d = load i32, ptr %i.c, align 1
  %i.e = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef 4) #14
  %.not29 = icmp eq i64 %i.e, 4
  br i1 %.not29, label %bb.c, label %.thread

bb.c:                                             ; preds = %read_u32.exit
  %i.f = load i64, ptr %4, align 8, !tbaa !29
  %i.g = add nsw i64 %i.f, -4
  store i64 %i.g, ptr %4, align 8, !tbaa !29
  %i.h = zext i32 %i.d to i64
  store i64 %i.h, ptr %2, align 8, !tbaa !29
  br label %.thread

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 -1, ptr %i.a, align 8, !tbaa !29
  %i.i = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 8, ptr noundef nonnull %i.a) #14 ; 2 uses
  %.not4.i = icmp eq ptr %i.i, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not4.i, label %.thread, label %read_u64.exit

read_u64.exit:                                    ; preds = %bb.d
  %.val.i = load i64, ptr %i.i, align 1
  %i.j = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef 8) #14
  %.not30 = icmp eq i64 %i.j, 8
  br i1 %.not30, label %bb.e, label %.thread

bb.e:                                             ; preds = %read_u64.exit
  call void @ntfs_to_unix(i64 noundef %.val.i, ptr noundef %2, ptr noundef %3) #14
  %i.k = load i64, ptr %4, align 8, !tbaa !29
  %i.l = add nsw i64 %i.k, -8
  store i64 %i.l, ptr %4, align 8, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %bb.d, %read_u64.exit, %bb.b, %read_u32.exit, %bb.c, %bb.e
  ret void
}

declare void @archive_entry_set_ctime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @archive_entry_set_atime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @ntfs_to_unix(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @archive_entry_set_filetype(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @archive_entry_update_symlink_utf8(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @archive_entry_set_symlink_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @archive_entry_update_hardlink_utf8(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @archive_entry_set_uname(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @archive_entry_set_gname(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @archive_entry_set_uid(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @archive_entry_set_gid(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @archive_entry_pathname_utf8(ptr noundef) local_unnamed_addr #3

declare void @archive_string_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @archive_strcat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @archive_string_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @verify_global_checksums(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 2072
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !32
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !48 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !58
  %.not.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.not.i, label %bb.b, label %verify_checksums.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 19444
  %i.f = load i32, ptr %i.e, align 4, !tbaa !93   ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 19448
  %i.h = load i32, ptr %i.g, align 8, !tbaa !105
  %.not16.i = icmp eq i32 %i.h, %i.f
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.67) #14
  br label %verify_checksums.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 21240
  %i.j = load i8, ptr %i.i, align 8, !tbaa !95
  %i.k = icmp sgt i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %verify_checksums.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.l = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 19488
  %i.m = call i32 @blake2sp_final(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, i64 noundef 32) #14 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 19452 ; 2 uses
  %i.o = load i128, ptr %i.n, align 1
  %i.p = load i128, ptr %i.a, align 16
  %i.q = xor i128 %i.o, %i.p
  %i.r = getelementptr i8, ptr %i.n, i64 16
  %i.s = getelementptr i8, ptr %i.a, i64 16
  %i.t = load i128, ptr %i.r, align 1
  %i.u = load i128, ptr %i.s, align 16
  %i.v = xor i128 %i.t, %i.u
  %i.w = or i128 %i.q, %i.v
  %i.x = icmp ne i128 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %.not17.i = icmp eq i32 %i.y, 0
  br i1 %.not17.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.68) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %verify_checksums.exit

.critedge.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %verify_checksums.exit

verify_checksums.exit:                            ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %.critedge.i
  %.1.i = phi i32 [ -30, %bb.d ], [ -30, %bb.g ], [ 0, %.critedge.i ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @do_unstore_file(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 19368 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %spec.select97 = tail call i64 @llvm.smin.i64(i64 %i.c, i64 65536)
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 2
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 1
  %.not37 = icmp eq i8 %i.j, 0
  br i1 %.not37, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 10 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = or i8 %i.l, 4
  store i8 %i.m, ptr %i.k, align 8
  %i.n = getelementptr i8, ptr %0, i64 2072       ; 4 uses
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 44 ; 4 uses
  %i.p = load i8, ptr %i.o, align 4               ; 2 uses
  %i.q = and i8 %i.p, 4
  %.not.i83 = icmp eq i8 %i.q, 0
  br i1 %.not.i83, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %bb.d
  %.lcssa = phi i8 [ %i.p, %bb.d ], [ %.pre.a, %.backedge ]
  %i.r = and i8 %.lcssa, -5
  store i8 %i.r, ptr %i.o, align 4
  %.val.i49103 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i50104 = load ptr, ptr %.val.i49103, align 8, !tbaa !48
  %i.s = tail call ptr @archive_entry_new() #14, !inline_history !106 ; 2 uses
  %i.t = tail call fastcc i32 @process_base_block(ptr noundef nonnull %0, ptr noundef %i.s), !inline_history !106 ; 3 uses
  tail call void @archive_entry_free(ptr noundef %i.s) #14, !inline_history !106
  %i.u = icmp eq i32 %i.t, -30
  br i1 %i.u, label %advance_multivolume.exit.thread73, label %.lr.ph106

.lr.ph106:                                        ; preds = %._crit_edge, %skip_base_block.exit54.thread57
  %i.v = phi i32 [ %i.ad, %skip_base_block.exit54.thread57 ], [ %i.t, %._crit_edge ] ; 2 uses
  %.val.val.i50105 = phi ptr [ %.val.val.i50, %skip_base_block.exit54.thread57 ], [ %.val.val.i50104, %._crit_edge ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.val.i50105, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !81
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph106
  %i.z = getelementptr inbounds nuw i8, ptr %.val.val.i50105, i64 32
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = and i8 %i.aa, 2
  %.not.i53 = icmp eq i8 %i.ab, 0
  br i1 %.not.i53, label %bb.f, label %advance_multivolume.exit.thread69

bb.f:                                             ; preds = %bb.e, %.lr.ph106
  switch i32 %i.v, label %advance_multivolume.exit.thread73 [
    i32 0, label %skip_base_block.exit54.thread57
    i32 -10, label %skip_base_block.exit54.thread57
  ]

skip_base_block.exit54.thread57:                  ; preds = %bb.f, %bb.f
  %.val.i49 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i50 = load ptr, ptr %.val.i49, align 8, !tbaa !48
  %i.ac = tail call ptr @archive_entry_new() #14, !inline_history !106 ; 2 uses
  %i.ad = tail call fastcc i32 @process_base_block(ptr noundef nonnull %0, ptr noundef %i.ac), !inline_history !106 ; 3 uses
  tail call void @archive_entry_free(ptr noundef %i.ac) #14, !inline_history !106
  %i.ae = icmp eq i32 %i.ad, -30
  br i1 %i.ae, label %advance_multivolume.exit.thread73, label %.lr.ph106, !llvm.loop !107

advance_multivolume.exit.thread73:                ; preds = %skip_base_block.exit54.thread57, %bb.f, %._crit_edge
  %.lcssa101 = phi i32 [ %i.t, %._crit_edge ], [ %i.ad, %skip_base_block.exit54.thread57 ], [ %i.v, %bb.f ]
  %i.af = load i8, ptr %i.k, align 8
  %i.ag = and i8 %i.af, -5
  store i8 %i.ag, ptr %i.k, align 8
  br label %update_crc.exit

.lr.ph:                                           ; preds = %bb.d, %.backedge
  %.val.i45 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i46 = load ptr, ptr %.val.i45, align 8, !tbaa !48 ; 2 uses
  %i.ah = tail call ptr @archive_entry_new() #14, !inline_history !106 ; 2 uses
  %i.ai = tail call fastcc i32 @process_base_block(ptr noundef nonnull %0, ptr noundef %i.ah), !inline_history !106 ; 4 uses
  tail call void @archive_entry_free(ptr noundef %i.ah) #14, !inline_history !106
  %i.aj = icmp eq i32 %i.ai, -30
  br i1 %i.aj, label %advance_multivolume.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.val.i46, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !81
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.h, label %skip_base_block.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.val.val.i46, i64 32
  %i.ao = load i8, ptr %i.an, align 8
  %i.ap = and i8 %i.ao, 2
  %.not.i48 = icmp eq i8 %i.ap, 0
  br i1 %.not.i48, label %skip_base_block.exit, label %skip_base_block.exit.thread

skip_base_block.exit:                             ; preds = %bb.h, %bb.g
  %i.aq = icmp eq i32 %i.ai, 0
  %spec.select76 = select i1 %i.aq, i32 -10, i32 %i.ai ; 2 uses
  switch i32 %i.ai, label %skip_base_block.exit.thread [
    i32 -25, label %advance_multivolume.exit.thread
    i32 -10, label %.backedge
    i32 0, label %.backedge
  ]

skip_base_block.exit.thread:                      ; preds = %bb.h, %skip_base_block.exit
  %.0.i4763 = phi i32 [ %spec.select76, %skip_base_block.exit ], [ 0, %bb.h ] ; 2 uses
  %i.ar = load i8, ptr %i.o, align 4
  %i.as = and i8 %i.ar, 4
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %advance_multivolume.exit, label %.backedge

.backedge:                                        ; preds = %skip_base_block.exit.thread, %skip_base_block.exit, %skip_base_block.exit
  %.pre.a = load i8, ptr %i.o, align 4            ; 2 uses
  %.pre88 = and i8 %.pre.a, 4
  %i.au = icmp eq i8 %.pre88, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

advance_multivolume.exit.thread69:                ; preds = %bb.e
  %i.av = load i8, ptr %i.k, align 8
  %i.aw = and i8 %i.av, -5
  store i8 %i.aw, ptr %i.k, align 8
  br label %bb.i

advance_multivolume.exit.thread:                  ; preds = %skip_base_block.exit, %.lr.ph
  %.118.i.ph = phi i32 [ -30, %.lr.ph ], [ %spec.select76, %skip_base_block.exit ]
  %i.ax = load i8, ptr %i.k, align 8
  %i.ay = and i8 %i.ax, -5
  store i8 %i.ay, ptr %i.k, align 8
  br label %update_crc.exit

advance_multivolume.exit:                         ; preds = %skip_base_block.exit.thread
  %i.az = load i8, ptr %i.k, align 8
  %i.ba = and i8 %i.az, -5
  store i8 %i.ba, ptr %i.k, align 8
  %.not38 = icmp eq i32 %.0.i4763, 0
  br i1 %.not38, label %bb.i, label %update_crc.exit

bb.i:                                             ; preds = %advance_multivolume.exit.thread69, %advance_multivolume.exit, %bb.c, %bb.b
  %.pr = load i64, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %spec.select = tail call i64 @llvm.smin.i64(i64 %.pr, i64 65536)
  %i.bb = icmp eq i64 %.pr, 0
  br i1 %i.bb, label %update_crc.exit, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %spec.select98 = phi i64 [ %spec.select97, %.thread ], [ %spec.select, %bb.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 -1, ptr %i.a, align 8, !tbaa !29
  %i.bc = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %spec.select98, ptr noundef nonnull %i.a) #14 ; 4 uses
  %.not77 = icmp eq ptr %i.bc, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not77, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.39) #14
  br label %update_crc.exit

bb.l:                                             ; preds = %bb.j
  %i.bd = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %spec.select98) #14
  %i.be = icmp eq i64 %spec.select98, %i.bd
  br i1 %i.be, label %bb.m, label %update_crc.exit

bb.m:                                             ; preds = %bb.l
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.bc, ptr %2, align 8, !tbaa !64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not42 = icmp eq ptr %3, null
  br i1 %.not42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %spec.select98, ptr %3, align 8, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not43 = icmp eq ptr %4, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.pre87 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !108 ; 2 uses
  br i1 %.not43, label %._crit_edge86, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %.pre87, ptr %4, align 8, !tbaa !29
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.q, %bb.r
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !69
  %i.bg = sub i64 %i.bf, %spec.select98
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !69
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bi = add i64 %.pre87, %spec.select98
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !108
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !58
  %.not.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.not.i, label %bb.s, label %update_crc.exit

bb.s:                                             ; preds = %._crit_edge86
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 19444
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !93
  %.not.i44 = icmp eq i32 %i.bm, 0
  br i1 %.not.i44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 19448 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !105
  %i.bp = zext i32 %i.bo to i64
  %i.bq = trunc i64 %spec.select98 to i32
  %i.br = call i64 @cm_zlib_crc32(i64 noundef %i.bp, ptr noundef nonnull %i.bc, i32 noundef %i.bq) #14
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.bn, align 8, !tbaa !105
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 21240
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !95
  %i.bv = icmp sgt i8 %i.bu, 0
  br i1 %i.bv, label %bb.v, label %update_crc.exit

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 19488
  %i.bx = call i32 @blake2sp_update(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bc, i64 noundef %spec.select98) #14 ; 0 uses
  br label %update_crc.exit

update_crc.exit:                                  ; preds = %advance_multivolume.exit.thread73, %bb.v, %bb.u, %._crit_edge86, %advance_multivolume.exit.thread, %bb.l, %bb.i, %advance_multivolume.exit, %bb.k
  %.1 = phi i32 [ %.0.i4763, %advance_multivolume.exit ], [ 1, %bb.i ], [ %.118.i.ph, %advance_multivolume.exit.thread ], [ -30, %bb.k ], [ 1, %bb.l ], [ 0, %._crit_edge86 ], [ 0, %bb.u ], [ 0, %bb.v ], [ %.lcssa101, %advance_multivolume.exit.thread73 ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -30, 2) i32 @uncompress_file(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [20 x i8], align 16               ; 6 uses
  %i.c = alloca [430 x i8], align 16              ; 11 uses
  %i.d = alloca i16, align 2                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i16, align 2                      ; 6 uses
  %i.h = alloca i16, align 2                      ; 5 uses
  %i.i = alloca i16, align 2                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 6 uses
  %i.m = alloca [4 x i8], align 4                 ; 6 uses
  %i.n = getelementptr i8, ptr %0, i64 2072       ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 306
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 370
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 386
  %scevgep = getelementptr i8, ptr %i.c, i64 -1
  br label %bb.b

bb.b:                                             ; preds = %do_uncompress_file.exit, %bb.a
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !48 ; 29 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 56 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8               ; 3 uses
  %i.t = and i8 %i.s, 1
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 44
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, 1
  %.not42.i = icmp eq i8 %i.w, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 80
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  br i1 %.not42.i, label %._crit_edge534, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43.i = icmp eq ptr %.pre, null
  br i1 %.not43.i, label %._crit_edge534, label %bb.f

._crit_edge534:                                   ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ null, %bb.d ], [ %.pre, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 19448
  store i32 0, ptr %i.y, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !90
  %spec.select.i.i24 = call i64 @llvm.usub.sat.i64(i64 %i.aa, i64 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 104
  store i64 %spec.select.i.i24, ptr %i.ab, align 8, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 80
  call void @free(ptr noundef %i.x) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 88 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72
  call void @free(ptr noundef %i.ae) #14
  %i.af = load i64, ptr %i.z, align 8, !tbaa !90  ; 3 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %bb.e, label %init_unpack.exit

bb.e:                                             ; preds = %._crit_edge534
  %i.ah = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.af) #17
  %i.ai = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.af) #17
  br label %init_unpack.exit

init_unpack.exit:                                 ; preds = %._crit_edge534, %bb.e
  %.sink.i = phi ptr [ %i.ah, %bb.e ], [ null, %._crit_edge534 ]
  %storemerge.i = phi ptr [ %i.ai, %bb.e ], [ null, %._crit_edge534 ]
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !71
  store ptr %storemerge.i, ptr %i.ad, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 19304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i8 0, i64 64, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(19100) %i.al, i8 0, i64 19100, i1 false)
  %.pre535 = load i8, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %init_unpack.exit, %bb.d
  %i.am = phi i8 [ %.pre535, %init_unpack.exit ], [ %i.s, %bb.d ]
  %i.an = or i8 %i.am, 1                          ; 2 uses
  store i8 %i.an, ptr %i.r, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.ao = phi i8 [ %i.an, %bb.f ], [ %i.s, %bb.b ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 72
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !90
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.40) #14, !inline_history !109
  br label %do_uncompress_file.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.as = and i8 %i.ao, 2
  %.not44.i = icmp eq i8 %i.as, 0
  br i1 %.not44.i, label %.loopexit246, label %.preheader244

.preheader244:                                    ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 21296
  br label %bb.j

bb.j:                                             ; preds = %.preheader244, %bb.ds
  %.val.i9 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i10 = load ptr, ptr %.val.i9, align 8, !tbaa !48 ; 17 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 44 ; 5 uses
  %i.ax = load i8, ptr %i.aw, align 4             ; 3 uses
  %i.ay = and i8 %i.ax, 2
  %.not.i11 = icmp eq i8 %i.ay, 0
  br i1 %.not.i11, label %advance_multivolume.exit.i.thread114, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 19368
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !69
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.preheader, label %advance_multivolume.exit.i.thread114

.preheader:                                       ; preds = %bb.k
  %i.bc = and i8 %i.ax, 4
  %.not.i.i23415 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i23415, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.backedge243, %.preheader
  %.lcssa253 = phi i8 [ %i.ax, %.preheader ], [ %.pre536, %.backedge243 ]
  %i.bd = and i8 %.lcssa253, -5
  store i8 %i.bd, ptr %i.aw, align 4
  %.val.i62869 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i63870.a = load ptr, ptr %.val.i62869, align 8, !tbaa !48
  %i.be = call ptr @archive_entry_new() #14, !inline_history !110 ; 2 uses
  %i.bf = call fastcc i32 @process_base_block(ptr noundef %0, ptr noundef %i.be), !inline_history !110 ; 2 uses
  call void @archive_entry_free(ptr noundef %i.be) #14, !inline_history !110
  %i.bg = icmp eq i32 %i.bf, -30
  br i1 %i.bg, label %do_uncompress_file.exit.thread, label %.lr.ph872

.lr.ph872:                                        ; preds = %._crit_edge, %skip_base_block.exit67.thread102
  %i.bh = phi i32 [ %i.bp, %skip_base_block.exit67.thread102 ], [ %i.bf, %._crit_edge ] ; 2 uses
  %.val.val.i63871 = phi ptr [ %.val.val.i63, %skip_base_block.exit67.thread102 ], [ %.val.val.i63870.a, %._crit_edge ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.val.i63871, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !81
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph872
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.val.i63871, i64 32
  %i.bm = load i8, ptr %i.bl, align 8
  %i.bn = and i8 %i.bm, 2
  %.not.i66 = icmp eq i8 %i.bn, 0
  br i1 %.not.i66, label %bb.m, label %advance_multivolume.exit.i.thread114

bb.m:                                             ; preds = %bb.l, %.lr.ph872
  switch i32 %i.bh, label %process_block.exit [
    i32 0, label %skip_base_block.exit67.thread102
    i32 -10, label %skip_base_block.exit67.thread102
  ]

skip_base_block.exit67.thread102:                 ; preds = %bb.m, %bb.m
  %.val.i62 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i63 = load ptr, ptr %.val.i62, align 8, !tbaa !48
  %i.bo = call ptr @archive_entry_new() #14, !inline_history !110 ; 2 uses
  %i.bp = call fastcc i32 @process_base_block(ptr noundef %0, ptr noundef %i.bo), !inline_history !110 ; 2 uses
  call void @archive_entry_free(ptr noundef %i.bo) #14, !inline_history !110
  %i.bq = icmp eq i32 %i.bp, -30
  br i1 %i.bq, label %do_uncompress_file.exit.thread, label %.lr.ph872, !llvm.loop !107

.lr.ph:                                           ; preds = %.preheader, %.backedge243
  %.val.i57 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i58 = load ptr, ptr %.val.i57, align 8, !tbaa !48 ; 2 uses
  %i.br = call ptr @archive_entry_new() #14, !inline_history !110 ; 2 uses
  %i.bs = call fastcc i32 @process_base_block(ptr noundef nonnull %0, ptr noundef %i.br), !inline_history !110 ; 4 uses
  call void @archive_entry_free(ptr noundef %i.br) #14, !inline_history !110
  %i.bt = icmp eq i32 %i.bs, -30
  br i1 %i.bt, label %do_uncompress_file.exit.thread, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.val.i58, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !81
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %bb.o, label %skip_base_block.exit

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.val.i58, i64 32
  %i.by = load i8, ptr %i.bx, align 8
  %i.bz = and i8 %i.by, 2
  %.not.i61 = icmp eq i8 %i.bz, 0
  br i1 %.not.i61, label %skip_base_block.exit, label %skip_base_block.exit.thread.thread

skip_base_block.exit:                             ; preds = %bb.o, %bb.n
  switch i32 %i.bs, label %skip_base_block.exit.thread [
    i32 -25, label %process_block.exit.loopexit623
    i32 -10, label %.backedge243
    i32 0, label %.backedge243
  ]

skip_base_block.exit.thread:                      ; preds = %skip_base_block.exit
  %i.ca = load i8, ptr %i.aw, align 4
  %i.cb = and i8 %i.ca, 4
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %process_block.exit.loopexit623, label %.backedge243

skip_base_block.exit.thread.thread:               ; preds = %bb.o
  %i.cd = load i8, ptr %i.aw, align 4
  %i.ce = and i8 %i.cd, 4
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %advance_multivolume.exit.i.thread114, label %.backedge243

.backedge243:                                     ; preds = %skip_base_block.exit.thread.thread, %skip_base_block.exit.thread, %skip_base_block.exit, %skip_base_block.exit
  %.pre536 = load i8, ptr %i.aw, align 4          ; 2 uses
  %.pre539 = and i8 %.pre536, 4
  %i.cg = icmp eq i8 %.pre539, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

advance_multivolume.exit.i.thread114:             ; preds = %skip_base_block.exit.thread.thread, %bb.l, %bb.k, %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 56 ; 7 uses
  %i.ci = load i8, ptr %i.ch, align 8
  %i.cj = and i8 %i.ci, 8
  %.not63.i = icmp eq i8 %i.cj, 0
  br i1 %.not63.i, label %bb.bj, label %bb.p

bb.p:                                             ; preds = %advance_multivolume.exit.i.thread114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store i64 -1, ptr %i.k, align 8, !tbaa !29
  %i.ck = call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef 6, ptr noundef nonnull %i.k) #14, !inline_history !111 ; 3 uses
  %.not230 = icmp eq ptr %i.ck, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br i1 %.not230, label %do_uncompress_file.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 21296 ; 2 uses
  %i.cm = load i16, ptr %i.ck, align 1            ; 3 uses
  store i16 %i.cm, ptr %i.cl, align 8
  %i.cn = trunc i16 %i.cm to i8                   ; 2 uses
  %i.co = lshr i8 %i.cn, 3
  %i.cp = and i8 %i.co, 7                         ; 4 uses
  %i.cq = icmp samesign ugt i8 %i.cp, 2
  %i.cr = lshr i16 %i.cm, 8
  %i.cs = zext nneg i16 %i.cr to i32              ; 2 uses
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = zext nneg i8 %i.cp to i32
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.42, i32 noundef %i.ct) #14, !inline_history !111
  br label %do_uncompress_file.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 2 ; 3 uses
  switch i8 %i.cp, label %default.unreachable [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !28
  %i.cw = zext i8 %i.cv to i64
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %.val27.i.i = load i16, ptr %i.cu, align 1
  %i.cx = zext i16 %.val27.i.i to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cy = load i32, ptr %i.cu, align 1
  %i.cz = and i32 %i.cy, 16777215
  %i.da = zext nneg i32 %i.cz to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.sink.i.i = phi i64 [ %i.da, %bb.v ], [ %i.cx, %bb.u ], [ %i.cw, %bb.t ] ; 10 uses
  %i.db = xor i8 %i.cn, 90
  %i.dc = zext i8 %i.db to i32
  %i.dd = trunc nuw nsw i64 %.sink.i.i to i32     ; 3 uses
  %i.de = lshr i32 %i.dd, 8
  %i.df = lshr i32 %i.dd, 16
  %i.dg = xor i32 %i.de, %i.dc
  %i.dh = xor i32 %i.dg, %i.df
  %i.di = xor i32 %i.dh, %i.dd
  %i.dj = and i32 %i.di, 255                      ; 2 uses
  %.not.i78.i = icmp eq i32 %i.dj, %i.cs
  br i1 %.not.i78.i, label %parse_block_header.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.43, i32 noundef %i.cs, i32 noundef %i.dj) #14, !inline_history !111
  br label %do_uncompress_file.exit.thread

default.unreachable:                              ; preds = %bb.s
  unreachable

parse_block_header.exit.i:                        ; preds = %bb.w
  %narrow.i = add nuw nsw i8 %i.cp, 3
  %i.dk = zext nneg i8 %narrow.i to i64           ; 3 uses
  %i.dl = call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.dk) #14, !inline_history !111
  %i.dm = icmp eq i64 %i.dl, %i.dk
  br i1 %i.dm, label %bb.y, label %do_uncompress_file.exit.thread

bb.y:                                             ; preds = %parse_block_header.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 19368 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !69
  %i.dp = sub nsw i64 %i.do, %i.dk                ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !69
  %i.dq = icmp sgt i64 %.sink.i.i, %i.dp
  br i1 %i.dq, label %bb.z, label %bb.ap

bb.z:                                             ; preds = %bb.y
  %.val.i41 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i42 = load ptr, ptr %.val.i41, align 8, !tbaa !48 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.val.i42, i64 12 ; 11 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !78
  %.not.i43 = icmp eq i32 %i.ds, 0
  br i1 %.not.i43, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.44) #14, !inline_history !112
  br label %do_uncompress_file.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.val.i42, i64 56 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 8
  %i.dv = or i8 %i.du, 4
  store i8 %i.dv, ptr %i.dt, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.val.i42, i64 21288 ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !73 ; 2 uses
  %.not54.i = icmp eq ptr %i.dx, null
  br i1 %.not54.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.dx) #14, !inline_history !112
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dy = add nuw nsw i64 %.sink.i.i, 8
  %i.dz = call noalias ptr @malloc(i64 noundef %i.dy) #15, !inline_history !112 ; 3 uses
  store ptr %i.dz, ptr %i.dw, align 8, !tbaa !73
  %.not55.i = icmp eq ptr %i.dz, null
  br i1 %.not55.i, label %bb.ae, label %.split

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.45) #14, !inline_history !112
  br label %do_uncompress_file.exit.thread

.split:                                           ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sink.i.i
  store i64 0, ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.val.i42, i64 19368 ; 4 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !69
  %..i45422 = call i64 @llvm.smin.i64(i64 %i.ec, i64 %.sink.i.i) ; 2 uses
  %i.ed = icmp eq i64 %..i45422, 0
  br i1 %i.ed, label %.split._crit_edge, label %.lr.ph425

.split._crit_edge:                                ; preds = %.split, %bb.an
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.46) #14, !inline_history !112
  br label %do_uncompress_file.exit.thread

.lr.ph425:                                        ; preds = %.split, %bb.an
  %..i45424 = phi i64 [ %..i45, %bb.an ], [ %..i45422, %.split ] ; 7 uses
  %.045.i423 = phi i64 [ %i.ef, %bb.an ], [ 0, %.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 -1, ptr %i.a, align 8, !tbaa !29
  %i.ee = call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef %..i45424, ptr noundef nonnull %i.a) #14, !inline_history !112 ; 2 uses
  %.not232 = icmp eq ptr %i.ee, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not232, label %do_uncompress_file.exit.thread, label %bb.af

bb.af:                                            ; preds = %.lr.ph425
  %i.ef = add nsw i64 %..i45424, %.045.i423       ; 3 uses
  %i.eg = load ptr, ptr %i.dw, align 8, !tbaa !73
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %.045.i423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eh, ptr noundef nonnull align 1 dereferenceable(1) %i.ee, i64 %..i45424, i1 false)
  %i.ei = call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %..i45424) #14, !inline_history !112
  %i.ej = icmp eq i64 %..i45424, %i.ei
  br i1 %i.ej, label %bb.ag, label %do_uncompress_file.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.ek = load i64, ptr %i.eb, align 8, !tbaa !69 ; 2 uses
  %i.el = sub nsw i64 %i.ek, %..i45424
  store i64 %i.el, ptr %i.eb, align 8, !tbaa !69
  %i.em = icmp eq i64 %i.ef, %.sink.i.i
  br i1 %i.em, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.en = icmp eq i64 %i.ek, %..i45424
  br i1 %i.en, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.eo = load i32, ptr %i.dr, align 4, !tbaa !78
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.dr, align 4, !tbaa !78
  %.val.i.i47 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i.i48 = load ptr, ptr %.val.i.i47, align 8, !tbaa !48
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.val.i.i48, i64 44 ; 4 uses
  %i.er = load i8, ptr %i.eq, align 4             ; 2 uses
  %i.es = and i8 %i.er, 4
  %.not.i.i49416 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i49416, label %.lr.ph418, label %._crit_edge419

._crit_edge419:                                   ; preds = %.backedge, %bb.ai
  %.lcssa259 = phi i8 [ %i.er, %bb.ai ], [ %.pre537, %.backedge ]
  %i.et = and i8 %.lcssa259, -5
  store i8 %i.et, ptr %i.eq, align 4
  %.val.i63.i873 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i64.i874.a = load ptr, ptr %.val.i63.i873, align 8, !tbaa !48
  %i.eu = call ptr @archive_entry_new() #14, !inline_history !113 ; 2 uses
  %i.ev = call fastcc i32 @process_base_block(ptr noundef nonnull %0, ptr noundef %i.eu), !inline_history !113 ; 3 uses
  call void @archive_entry_free(ptr noundef %i.eu) #14, !inline_history !113
  %i.ew = icmp eq i32 %i.ev, -30
  br i1 %i.ew, label %advance_multivolume.exit.i55.thread201, label %.lr.ph876

.lr.ph876:                                        ; preds = %._crit_edge419, %skip_base_block.exit68.i.thread122
  %i.ex = phi i32 [ %i.ff, %skip_base_block.exit68.i.thread122 ], [ %i.ev, %._crit_edge419 ] ; 2 uses
  %.val.val.i64.i875 = phi ptr [ %.val.val.i64.i, %skip_base_block.exit68.i.thread122 ], [ %.val.val.i64.i874.a, %._crit_edge419 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.val.i64.i875, i64 40
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !81
  %i.fa = icmp eq i32 %i.ez, 2
  br i1 %i.fa, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph876
  %i.fb = getelementptr inbounds nuw i8, ptr %.val.val.i64.i875, i64 32
  %i.fc = load i8, ptr %i.fb, align 8
  %i.fd = and i8 %i.fc, 2
  %.not.i67.i = icmp eq i8 %i.fd, 0
  br i1 %.not.i67.i, label %bb.ak, label %advance_multivolume.exit.i55.thread134

bb.ak:                                            ; preds = %bb.aj, %.lr.ph876
  switch i32 %i.ex, label %advance_multivolume.exit.i55.thread201 [
    i32 0, label %skip_base_block.exit68.i.thread122
    i32 -10, label %skip_base_block.exit68.i.thread122
  ]

skip_base_block.exit68.i.thread122:               ; preds = %bb.ak, %bb.ak
  %.val.i63.i = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i64.i = load ptr, ptr %.val.i63.i, align 8, !tbaa !48
  %i.fe = call ptr @archive_entry_new() #14, !inline_history !113 ; 2 uses
  %i.ff = call fastcc i32 @process_base_block(ptr noundef nonnull %0, ptr noundef %i.fe), !inline_history !113 ; 3 uses
  call void @archive_entry_free(ptr noundef %i.fe) #14, !inline_history !113
  %i.fg = icmp eq i32 %i.ff, -30
  br i1 %i.fg, label %advance_multivolume.exit.i55.thread201, label %.lr.ph876, !llvm.loop !107

advance_multivolume.exit.i55.thread201:           ; preds = %._crit_edge419, %skip_base_block.exit68.i.thread122, %bb.ak
  %.lcssa789 = phi i32 [ %i.ex, %bb.ak ], [ %i.ff, %skip_base_block.exit68.i.thread122 ], [ %i.ev, %._crit_edge419 ]
  %i.fh = load i32, ptr %i.dr, align 4, !tbaa !78
  %i.fi = add nsw i32 %i.fh, -1
  store i32 %i.fi, ptr %i.dr, align 4, !tbaa !78
  br label %process_block.exit

.lr.ph418:                                        ; preds = %bb.ai, %.backedge
  %.val.i59.i = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i60.i = load ptr, ptr %.val.i59.i, align 8, !tbaa !48 ; 2 uses
  %i.fj = call ptr @archive_entry_new() #14, !inline_history !113 ; 2 uses
  %i.fk = call fastcc i32 @process_base_block(ptr noundef nonnull %0, ptr noundef %i.fj), !inline_history !113 ; 4 uses
  call void @archive_entry_free(ptr noundef %i.fj) #14, !inline_history !113
  %i.fl = icmp eq i32 %i.fk, -30
  br i1 %i.fl, label %advance_multivolume.exit.i55.thread, label %bb.al

bb.al:                                            ; preds = %.lr.ph418
  %i.fm = getelementptr inbounds nuw i8, ptr %.val.val.i60.i, i64 40
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !81
  %i.fo = icmp eq i32 %i.fn, 2
  br i1 %i.fo, label %bb.am, label %skip_base_block.exit.i

bb.am:                                            ; preds = %bb.al
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.val.i60.i, i64 32
  %i.fq = load i8, ptr %i.fp, align 8
  %i.fr = and i8 %i.fq, 2
  %.not.i62.i = icmp eq i8 %i.fr, 0
  br i1 %.not.i62.i, label %skip_base_block.exit.i, label %skip_base_block.exit.i.thread

skip_base_block.exit.i:                           ; preds = %bb.am, %bb.al
  %i.fs = icmp eq i32 %i.fk, 0
  %spec.select229 = select i1 %i.fs, i32 -10, i32 %i.fk ; 2 uses
  switch i32 %i.fk, label %skip_base_block.exit.i.thread [
    i32 -25, label %advance_multivolume.exit.i55.thread
    i32 -10, label %.backedge
    i32 0, label %.backedge
  ]

skip_base_block.exit.i.thread:                    ; preds = %bb.am, %skip_base_block.exit.i
  %.0.i61.i128 = phi i32 [ %spec.select229, %skip_base_block.exit.i ], [ 0, %bb.am ] ; 2 uses
  %i.ft = load i8, ptr %i.eq, align 4
  %i.fu = and i8 %i.ft, 4
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %advance_multivolume.exit.i55, label %.backedge

.backedge:                                        ; preds = %skip_base_block.exit.i.thread, %skip_base_block.exit.i, %skip_base_block.exit.i
  %.pre537 = load i8, ptr %i.eq, align 4          ; 2 uses
  %.pre538 = and i8 %.pre537, 4
  %i.fw = icmp eq i8 %.pre538, 0
  br i1 %i.fw, label %.lr.ph418, label %._crit_edge419

advance_multivolume.exit.i55.thread134:           ; preds = %bb.aj
  %i.fx = load i32, ptr %i.dr, align 4, !tbaa !78
  %i.fy = add nsw i32 %i.fx, -1
  store i32 %i.fy, ptr %i.dr, align 4, !tbaa !78
  br label %bb.an

advance_multivolume.exit.i55.thread:              ; preds = %skip_base_block.exit.i, %.lr.ph418
  %.118.i.i56.ph = phi i32 [ -30, %.lr.ph418 ], [ %spec.select229, %skip_base_block.exit.i ]
  %i.fz = load i32, ptr %i.dr, align 4, !tbaa !78
  %i.ga = add nsw i32 %i.fz, -1
  store i32 %i.ga, ptr %i.dr, align 4, !tbaa !78
  br label %process_block.exit

advance_multivolume.exit.i55:                     ; preds = %skip_base_block.exit.i.thread
  %i.gb = load i32, ptr %i.dr, align 4, !tbaa !78
  %i.gc = add nsw i32 %i.gb, -1
  store i32 %i.gc, ptr %i.dr, align 4, !tbaa !78
  %.not58.i = icmp eq i32 %.0.i61.i128, 0
  br i1 %.not58.i, label %bb.an, label %process_block.exit

bb.an:                                            ; preds = %advance_multivolume.exit.i55.thread134, %advance_multivolume.exit.i55, %bb.ah
  %i.gd = load i64, ptr %i.eb, align 8, !tbaa !69
  %i.ge = sub nsw i64 %.sink.i.i, %i.ef
  %..i45 = call i64 @llvm.smin.i64(i64 %i.gd, i64 %i.ge) ; 2 uses
  %i.gf = icmp eq i64 %..i45, 0
  br i1 %i.gf, label %.split._crit_edge, label %.lr.ph425

bb.ao:                                            ; preds = %bb.ag
  %i.gg = load ptr, ptr %i.dw, align 8, !tbaa !73
  br label %bb.aq

bb.ap:                                            ; preds = %bb.y
  %i.gh = load i8, ptr %i.ch, align 8
  %i.gi = and i8 %i.gh, -5
  store i8 %i.gi, ptr %i.ch, align 8
  %i.gj = add nuw nsw i64 %.sink.i.i, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i64 -1, ptr %i.j, align 8, !tbaa !29
  %i.gk = call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef %i.gj, ptr noundef nonnull %i.j) #14, !inline_history !111 ; 2 uses
  %.not231 = icmp eq ptr %i.gk, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  br i1 %.not231, label %do_uncompress_file.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.283 = phi ptr [ %i.gg, %bb.ao ], [ %i.gk, %bb.ap ] ; 8 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 96
  store ptr %.283, ptr %i.gl, align 8, !tbaa !114
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 144 ; 2 uses
  store i64 %.sink.i.i, ptr %i.gm, align 8, !tbaa !115
  %i.gn = load i8, ptr %i.ch, align 8
  %i.go = and i8 %i.gn, -9
  store i8 %i.go, ptr %i.ch, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 21272 ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 21276 ; 5 uses
  store i32 0, ptr %i.gq, align 4, !tbaa !116
  store i8 0, ptr %i.gp, align 8, !tbaa !117
  %.val77.i = load i8, ptr %i.cl, align 8, !tbaa !118
  %.not69.i = icmp sgt i8 %.val77.i, -1
  br i1 %.not69.i, label %bb.bk, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i, %bb.ar
  %.090177.i = phi i8 [ 4, %bb.ar ], [ %.191.i, %.loopexit.i ] ; 4 uses
  %.092176.i = phi i32 [ 240, %bb.ar ], [ %.193.i, %.loopexit.i ] ; 6 uses
  %.094175.i = phi i32 [ 0, %bb.ar ], [ %.296.i, %.loopexit.i ] ; 6 uses
  %.097174.i = phi i32 [ 0, %bb.ar ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %i.gr = sext i32 %.097174.i to i64              ; 2 uses
  %.not117.i = icmp sgt i64 %.sink.i.i, %i.gr
  br i1 %.not117.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.48) #14
  br label %parse_tables.exit.thread

bb.au:                                            ; preds = %bb.as
  %i.gs = getelementptr inbounds i8, ptr %.283, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !28
  %i.gu = zext i8 %i.gt to i32
  %i.gv = and i32 %.092176.i, %i.gu
  %i.gw = zext nneg i8 %.090177.i to i32
  %i.gx = lshr i32 %i.gv, %i.gw                   ; 2 uses
  %i.gy = icmp eq i32 %.092176.i, 15
  %i.gz = zext i1 %i.gy to i32
  %spec.select.i = add nsw i32 %.097174.i, %i.gz  ; 3 uses
  %i.ha = xor i32 %.092176.i, 255                 ; 2 uses
  %i.hb = xor i8 %.090177.i, 4                    ; 2 uses
  %i.hc = icmp eq i32 %i.gx, 15
  br i1 %i.hc, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hd = sext i32 %spec.select.i to i64
  %i.he = getelementptr inbounds i8, ptr %.283, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !28
  %i.hg = zext i8 %i.hf to i32
  %i.hh = and i32 %i.ha, %i.hg
  %i.hi = zext nneg i8 %i.hb to i32
  %i.hj = lshr i32 %i.hh, %i.hi                   ; 3 uses
  %i.hk = icmp eq i32 %.092176.i, 240
  %i.hl = zext i1 %i.hk to i32
  %spec.select118.i = add nsw i32 %spec.select.i, %i.hl ; 2 uses
  %i.hm = icmp eq i32 %i.hj, 0
  %i.hn = sext i32 %.094175.i to i64              ; 2 uses
  %i.ho = getelementptr i8, ptr %i.b, i64 %i.hn   ; 2 uses
  br i1 %i.hm, label %bb.aw, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.av
  %narrow206.i = add nuw nsw i32 %i.hj, 1
  %i.hp = sub i32 19, %.094175.i
  %i.hq = call i32 @llvm.umin.i32(i32 %narrow206.i, i32 %i.hp)
  %narrow207.i = add nuw nsw i32 %i.hq, 1
  %i.hr = zext nneg i32 %narrow207.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ho, i8 0, i64 %i.hr, i1 false), !tbaa !28
  %i.hs = sub nsw i64 19, %i.hn
  %narrow = add nuw nsw i32 %i.hj, 1
  %i.ht = zext nneg i32 %narrow to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.hs, i64 %i.ht)
  %i.hu = trunc nuw nsw i64 %umin to i32
  %i.hv = add nuw nsw i32 %i.hu, 1
  %i.hw = add nsw i32 %i.hv, %.094175.i
  br label %.loopexit.i

bb.aw:                                            ; preds = %bb.av
  %i.hx = add nsw i32 %.094175.i, 1
  store i8 15, ptr %i.ho, align 1, !tbaa !28
  br label %.loopexit.i

bb.ax:                                            ; preds = %bb.au
  %i.hy = trunc nuw i32 %i.gx to i8
  %i.hz = add nsw i32 %.094175.i, 1
  %i.ia = sext i32 %.094175.i to i64
  %i.ib = getelementptr inbounds i8, ptr %i.b, i64 %i.ia
  store i8 %i.hy, ptr %i.ib, align 1, !tbaa !28
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i, %bb.ax, %bb.aw
  %.3.i = phi i32 [ %spec.select118.i, %bb.aw ], [ %spec.select.i, %bb.ax ], [ %spec.select118.i, %.lr.ph.preheader.i ] ; 2 uses
  %.296.i = phi i32 [ %i.hx, %bb.aw ], [ %i.hz, %bb.ax ], [ %i.hw, %.lr.ph.preheader.i ] ; 2 uses
  %.193.i = phi i32 [ %.092176.i, %bb.aw ], [ %i.ha, %bb.ax ], [ %.092176.i, %.lr.ph.preheader.i ]
  %.191.i = phi i8 [ %.090177.i, %bb.aw ], [ %i.hb, %bb.ax ], [ %.090177.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ic = icmp slt i32 %.296.i, 20
  br i1 %i.ic, label %bb.as, label %bb.ay, !llvm.loop !119

bb.ay:                                            ; preds = %.loopexit.i
  store i32 %.3.i, ptr %i.gq, align 4, !tbaa !116
  %i.id = xor i8 %.191.i, 4
  store i8 %i.id, ptr %i.gp, align 8, !tbaa !117
  %i.ie = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 156 ; 2 uses
  call fastcc void @create_decode_tables(ptr noundef %i.b, ptr noundef nonnull %i.ie, i32 noundef 20)
  br label %bb.az

bb.az:                                            ; preds = %.thread153.i, %bb.ay
  %.4186.i = phi i32 [ 0, %bb.ay ], [ %.10.i, %.thread153.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.if = call fastcc i32 @decode_number(ptr noundef nonnull %0, ptr noundef nonnull %i.ie, ptr noundef readonly %.283, ptr noundef %i.d)
  %.not.i35 = icmp eq i32 %i.if, 0
  br i1 %.not.i35, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.49) #14
  br label %.thread159.i

bb.bb:                                            ; preds = %bb.az
  %i.ig = load i16, ptr %i.d, align 2, !tbaa !120 ; 5 uses
  %i.ih = icmp ult i16 %i.ig, 16
  br i1 %i.ih, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ii = trunc nuw nsw i16 %i.ig to i8
  %i.ij = sext i32 %.4186.i to i64
  %i.ik = getelementptr inbounds i8, ptr %i.c, i64 %i.ij
  store i8 %i.ii, ptr %i.ik, align 1, !tbaa !28
  %i.il = add nsw i32 %.4186.i, 1
  br label %.thread153.i

bb.bd:                                            ; preds = %bb.bb
  %i.im = icmp ult i16 %i.ig, 18
  %i.in = load i32, ptr %i.gq, align 4, !tbaa !116 ; 3 uses
  %i.io = sext i32 %i.in to i64                   ; 3 uses
  %i.ip = load i64, ptr %i.gm, align 8, !tbaa !115
  %.not.i.i36 = icmp sgt i64 %i.ip, %i.io         ; 2 uses
  br i1 %i.im, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  br i1 %.not.i.i36, label %bb.bf, label %read_bits_16.exit.i38

read_bits_16.exit.i38:                            ; preds = %bb.be
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.55) #14
  br label %.thread159.i

bb.bf:                                            ; preds = %bb.be
  %i.iq = getelementptr inbounds i8, ptr %.283, i64 %i.io ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !28
  %i.is = zext i8 %i.ir to i32
  %i.it = shl nuw nsw i32 %i.is, 16
  %i.iu = getelementptr i8, ptr %i.iq, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !28
  %i.iw = zext i8 %i.iv to i32
  %i.ix = shl nuw nsw i32 %i.iw, 8
  %i.iy = or disjoint i32 %i.ix, %i.it
  %i.iz = load i8, ptr %i.gp, align 8, !tbaa !117
  %i.ja = sext i8 %i.iz to i32                    ; 2 uses
  %i.jb = sub nsw i32 8, %i.ja
  %i.jc = lshr i32 %i.iy, %i.jb
  %i.jd = trunc i32 %i.jc to i16
  %i.je = icmp eq i16 %i.ig, 16                   ; 3 uses
  %..i39 = select i1 %i.je, i16 13, i16 9
  %.218.i = select i1 %i.je, i16 3, i16 11
  %.219.i = select i1 %i.je, i32 3, i32 7
  %i.jf = lshr i16 %i.jd, %..i39
  %narrow115.i = add nuw nsw i16 %i.jf, %.218.i
  %i.jg = add nsw i32 %.219.i, %i.ja              ; 2 uses
  %.pn208.i = ashr i32 %i.jg, 3
  %storemerge167.i = add nsw i32 %.pn208.i, %i.in
  store i32 %storemerge167.i, ptr %i.gq, align 4, !tbaa !116
  %storemerge166.in.i = trunc i32 %i.jg to i8
  %storemerge166.i = and i8 %storemerge166.in.i, 7
  store i8 %storemerge166.i, ptr %i.gp, align 8, !tbaa !117
  %i.jh = icmp sgt i32 %.4186.i, 0
  br i1 %i.jh, label %.preheader.i40, label %bb.bg

.preheader.i40:                                   ; preds = %bb.bf
  %i.ji = icmp samesign ult i32 %.4186.i, 430
  br i1 %i.ji, label %.lr.ph184.preheader.i, label %.thread153.thread.i

.thread153.thread.i:                              ; preds = %.preheader.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %parse_tables.exit

.lr.ph184.preheader.i:                            ; preds = %.preheader.i40
  %i.jj = zext nneg i32 %.4186.i to i64           ; 2 uses
  %scevgep885 = getelementptr i8, ptr %scevgep, i64 %i.jj
  %load_initial = load i8, ptr %scevgep885, align 1
  br label %.lr.ph184.i

.lr.ph184.i:                                      ; preds = %.lr.ph184.i, %.lr.ph184.preheader.i
  %indvars.iv198.i = phi i64 [ %i.jj, %.lr.ph184.preheader.i ], [ %indvars.iv.next199.i, %.lr.ph184.i ] ; 3 uses
  %.2134182.i = phi i16 [ %narrow115.i, %.lr.ph184.preheader.i ], [ %i.jk, %.lr.ph184.i ]
  %i.jk = add nsw i16 %.2134182.i, -1             ; 2 uses
  %i.jl = getelementptr i8, ptr %i.c, i64 %indvars.iv198.i
  store i8 %load_initial, ptr %i.jl, align 1, !tbaa !28
  %indvars.iv.next199.i = add nuw nsw i64 %indvars.iv198.i, 1 ; 2 uses
  %i.jm = icmp ne i16 %i.jk, 0
  %i.jn = trunc nuw i64 %indvars.iv198.i to i32
  %i.jo = icmp slt i32 %i.jn, 429
  %i.jp = and i1 %i.jo, %i.jm
  br i1 %i.jp, label %.lr.ph184.i, label %.thread153.loopexit.i, !llvm.loop !121

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.50) #14
  br label %.thread159.i

bb.bh:                                            ; preds = %bb.bd
  br i1 %.not.i.i36, label %.lr.ph180.preheader.i, label %bb.bi

.lr.ph180.preheader.i:                            ; preds = %bb.bh
  %i.jq = getelementptr inbounds i8, ptr %.283, i64 %i.io ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !28
  %i.js = zext i8 %i.jr to i32
  %i.jt = shl nuw nsw i32 %i.js, 16
  %i.ju = getelementptr i8, ptr %i.jq, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !28
  %i.jw = zext i8 %i.jv to i32
  %i.jx = shl nuw nsw i32 %i.jw, 8
  %i.jy = or disjoint i32 %i.jx, %i.jt
  %i.jz = load i8, ptr %i.gp, align 8, !tbaa !117
  %i.ka = sext i8 %i.jz to i32                    ; 2 uses
  %i.kb = sub nsw i32 8, %i.ka
  %i.kc = lshr i32 %i.jy, %i.kb
  %i.kd = trunc i32 %i.kc to i16
  %i.ke = icmp eq i16 %i.ig, 18                   ; 3 uses
  %.220.i = select i1 %i.ke, i16 13, i16 9
  %.221.i = select i1 %i.ke, i16 3, i16 11        ; 2 uses
  %.222.i = select i1 %i.ke, i32 3, i32 7
  %i.kf = lshr i16 %i.kd, %.220.i                 ; 2 uses
  %narrow113.i = add nuw nsw i16 %i.kf, %.221.i
  %i.kg = add nsw i32 %.222.i, %i.ka              ; 2 uses
  %.pn.i = ashr i32 %i.kg, 3
  %storemerge165.i = add nsw i32 %.pn.i, %i.in
  store i32 %storemerge165.i, ptr %i.gq, align 4, !tbaa !116
  %storemerge.in.i = trunc i32 %i.kg to i8
  %storemerge.i37 = and i8 %storemerge.in.i, 7
  store i8 %storemerge.i37, ptr %i.gp, align 8, !tbaa !117
  %i.kh = sext i32 %.4186.i to i64                ; 2 uses
  %scevgep191.i = getelementptr i8, ptr %i.c, i64 %i.kh
  %i.ki = sub i32 429, %.4186.i
  %i.kj = zext i32 %i.ki to i64
  %i.kk = add nsw i16 %narrow113.i, -1
  %i.kl = zext nneg i16 %i.kk to i64
  %umin192.i = call i64 @llvm.umin.i64(i64 %i.kj, i64 %i.kl)
  %i.km = add nuw nsw i64 %umin192.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep191.i, i8 0, i64 %i.km, i1 false), !tbaa !28
  %i.kn = sub nsw i64 429, %i.kh
  %i.ko = add nsw i16 %.221.i, -1
  %i.kp = add nuw nsw i16 %i.ko, %i.kf
  %i.kq = zext nneg i16 %i.kp to i64
  %umin531 = call i64 @llvm.umin.i64(i64 %i.kn, i64 %i.kq)
  %i.kr = trunc nuw nsw i64 %umin531 to i32
  %i.ks = add nuw nsw i32 %i.kr, 1
  %i.kt = add nsw i32 %i.ks, %.4186.i
  br label %.thread153.i

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 22, ptr noundef nonnull @.str.55) #14
  br label %.thread159.i

.thread159.i:                                     ; preds = %bb.bi, %bb.bg, %read_bits_16.exit.i38, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %parse_tables.exit.thread

.thread153.loopexit.i:                            ; preds = %.lr.ph184.i
  %i.ku = trunc nuw i64 %indvars.iv.next199.i to i32
  br label %.thread153.i

.thread153.i:                                     ; preds = %.lr.ph180.preheader.i, %.thread153.loopexit.i, %bb.bc
  %.10.i = phi i32 [ %i.il, %bb.bc ], [ %i.ku, %.thread153.loopexit.i ], [ %i.kt, %.lr.ph180.preheader.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.kv = icmp slt i32 %.10.i, 430
  br i1 %i.kv, label %bb.az, label %parse_tables.exit, !llvm.loop !122

parse_tables.exit.thread:                         ; preds = %bb.at, %.thread159.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %do_uncompress_file.exit.thread

parse_tables.exit:                                ; preds = %.thread153.i, %.thread153.thread.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 3976
  call fastcc void @create_decode_tables(ptr noundef %i.c, ptr noundef nonnull %i.kw, i32 noundef 306)
  %i.kx = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 7796
  call fastcc void @create_decode_tables(ptr noundef %i.o, ptr noundef nonnull %i.kx, i32 noundef 64)
  %i.ky = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 11616
  call fastcc void @create_decode_tables(ptr noundef %i.p, ptr noundef nonnull %i.ky, i32 noundef 16)
  %i.kz = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 15436
  call fastcc void @create_decode_tables(ptr noundef %i.q, ptr noundef nonnull %i.kz, i32 noundef 44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.bk

bb.bj:                                            ; preds = %advance_multivolume.exit.i.thread114
  %i.la = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 96
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !114
  br label %bb.bk

bb.bk:                                            ; preds = %parse_tables.exit, %bb.aq, %bb.bj
  %.182 = phi ptr [ %i.lb, %bb.bj ], [ %.283, %parse_tables.exit ], [ %.283, %bb.aq ] ; 12 uses
  %.val.i81.i = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i82.i = load ptr, ptr %.val.i81.i, align 8, !tbaa !48 ; 27 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 56 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 104
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !91
  %i.lf = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 21296
  %.val137.i.i = load i8, ptr %i.lf, align 8, !tbaa !118
  %i.lg = and i8 %.val137.i.i, 7
  %i.lh = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 112 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 120 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 72 ; 2 uses
  %i.lk = load i64, ptr %i.lh, align 8, !tbaa !86 ; 2 uses
  %i.ll = load i64, ptr %i.li, align 8, !tbaa !59
  %i.lm = sub nsw i64 %i.lk, %i.ll
  %i.ln = load i64, ptr %i.lj, align 8, !tbaa !90
  %i.lo = ashr i64 %i.ln, 1
  %i.lp = icmp sgt i64 %i.lm, %i.lo
  br i1 %i.lp, label %do_uncompress_block.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bk
  %i.lq = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 21272 ; 9 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 21276 ; 9 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 144 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 3976
  %i.lu = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 152 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 19288 ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 15436
  %i.lx = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 7796
  %i.ly = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 11616
  %i.lz = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 19296
  %i.ma = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 19300
  %i.mb = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 19292
  %i.mc = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 136
  %i.md = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 80
  %i.me = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 3980 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 4108
  %i.mg = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 4044
  %i.mh = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 7184
  %i.mi = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 4112
  %i.mj = getelementptr inbounds nuw i8, ptr %.val.val.i82.i, i64 5136
  br label %bb.bl

bb.bl:                                            ; preds = %.backedge.i.i, %.lr.ph.i.i
  %i.mk = phi i64 [ %i.pp, %.backedge.i.i ], [ %i.lk, %.lr.ph.i.i ] ; 2 uses
  %i.ml = load i32, ptr %i.lr, align 4, !tbaa !116
  %i.mm = sext i32 %i.ml to i64                   ; 2 uses
  %i.mn = load i64, ptr %i.ls, align 8, !tbaa !115 ; 3 uses
  %.not.i83.i = icmp sgt i64 %i.mn, %i.mm
  br i1 %.not.i83.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.mo = add nsw i64 %i.mn, -1
  %i.mp = icmp eq i64 %i.mo, %i.mm
  br i1 %i.mp, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.mq = load i8, ptr %i.lq, align 8, !tbaa !117
  %.not122.not.i.i = icmp sgt i8 %i.mq, %i.lg
  br i1 %.not122.not.i.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %i.mr = load i8, ptr %i.lc, align 8
  %i.ms = or i8 %i.mr, 8
  store i8 %i.ms, ptr %i.lc, align 8
  br label %do_uncompress_block.exit.i

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %.val.i29 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i30 = load ptr, ptr %.val.i29, align 8, !tbaa !48 ; 18 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.val.val.i30, i64 21276 ; 6 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !116 ; 3 uses
  %i.mv = sext i32 %i.mu to i64                   ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.val.val.i30, i64 144 ; 3 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !115
  %.not.i.i31 = icmp sgt i64 %i.mx, %i.mv
  br i1 %.not.i.i31, label %bb.bq, label %decode_number.exit

bb.bq:                                            ; preds = %bb.bp
  %i.my = getelementptr inbounds nuw i8, ptr %.val.val.i30, i64 21272 ; 6 uses
  %i.mz = getelementptr inbounds i8, ptr %.182, i64 %i.mv ; 3 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !28
  %i.nb = zext i8 %i.na to i32
  %i.nc = shl nuw nsw i32 %i.nb, 16
  %i.nd = getelementptr i8, ptr %i.mz, i64 1
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !28
  %i.nf = zext i8 %i.ne to i32
  %i.ng = shl nuw nsw i32 %i.nf, 8
  %i.nh = or disjoint i32 %i.ng, %i.nc
  %i.ni = getelementptr i8, ptr %i.mz, i64 2
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !28
  %i.nk = zext i8 %i.nj to i32
  %i.nl = or disjoint i32 %i.nh, %i.nk
  %i.nm = load i8, ptr %i.my, align 8, !tbaa !117
  %i.nn = sext i8 %i.nm to i32                    ; 3 uses
  %i.no = sub nsw i32 8, %i.nn
  %i.np = lshr i32 %i.nl, %i.no
  %i.nq = and i32 %i.np, 65534                    ; 4 uses
  %i.nr = load i32, ptr %i.mf, align 4, !tbaa !123 ; 3 uses
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !84
  %i.nv = icmp sgt i32 %i.nu, %i.nq
  br i1 %i.nv, label %bb.br, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.bq
  %.034.i880.a = add i32 %i.nr, 1                 ; 2 uses
  %i.nw = icmp slt i32 %.034.i880.a, 15
  br i1 %i.nw, label %.lr.ph882, label %.preheader._crit_edge.i

bb.br:                                            ; preds = %bb.bq
  %i.nx = sub i32 16, %i.nr
  %i.ny = lshr i32 %i.nq, %i.nx
  %i.nz = zext nneg i32 %i.ny to i64              ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !28
  %i.oc = zext i8 %i.ob to i32
  %i.od = add nsw i32 %i.oc, %i.nn                ; 2 uses
  %i.oe = ashr i32 %i.od, 3
  %i.of = add nsw i32 %i.oe, %i.mu
  store i32 %i.of, ptr %i.mt, align 4, !tbaa !116
  %i.og = trunc i32 %i.od to i8
  %i.oh = and i8 %i.og, 7
  store i8 %i.oh, ptr %i.my, align 8, !tbaa !117
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %i.mj, i64 %i.nz
  br label %bb.bs

.preheader.i:                                     ; preds = %.lr.ph882
  %.034.i = add i32 %.034.i881, 1                 ; 2 uses
  %i.oj = icmp slt i32 %.034.i, 15
  br i1 %i.oj, label %.lr.ph882, label %.preheader._crit_edge.i, !llvm.loop !124

.lr.ph882:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.034.i881 = phi i32 [ %.034.i, %.preheader.i ], [ %.034.i880.a, %.preheader.i.preheader ] ; 3 uses
  %i.ok = sext i32 %.034.i881 to i64
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !84
  %i.on = icmp sgt i32 %i.om, %i.nq
  br i1 %i.on, label %..preheader._crit_edge.i_crit_edge, label %.preheader.i, !llvm.loop !124

..preheader._crit_edge.i_crit_edge:               ; preds = %.lr.ph882
  br label %.preheader._crit_edge.i, !llvm.loop !124

.preheader._crit_edge.i:                          ; preds = %.preheader.i, %..preheader._crit_edge.i_crit_edge, %.preheader.i.preheader
  %.035.i34 = phi i32 [ 15, %.preheader.i.preheader ], [ %.034.i881, %..preheader._crit_edge.i_crit_edge ], [ 15, %.preheader.i ] ; 3 uses
  %i.oo = add nsw i32 %.035.i34, %i.nn            ; 2 uses
  %i.op = ashr i32 %i.oo, 3
  %i.oq = add nsw i32 %i.op, %i.mu
  store i32 %i.oq, ptr %i.mt, align 4, !tbaa !116
  %i.or = trunc i32 %i.oo to i8
  %i.os = and i8 %i.or, 7
  store i8 %i.os, ptr %i.my, align 8, !tbaa !117
  %i.ot = sext i32 %.035.i34 to i64               ; 2 uses
  %i.ou = getelementptr [4 x i8], ptr %i.me, i64 %i.ot
  %i.ov = getelementptr i8, ptr %i.ou, i64 -4
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !84
  %i.ox = sub nsw i32 %i.nq, %i.ow
  %i.oy = sub nsw i32 16, %.035.i34
  %i.oz = ashr i32 %i.ox, %i.oy
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.ot
end_hunk_0
begin_hunk_1_@uncompress_file:bb.a
  %i.abo = call fastcc i32 @decode_number(ptr noundef %0, ptr noundef nonnull %i.lw, ptr noundef readonly %.182, ptr noundef %i.i), !inline_history !111
  %.not124.i.i = icmp eq i32 %i.abo, 0
  br i1 %.not124.i.i, label %bb.dh, label %.thread229.i.i

bb.dh:                                            ; preds = %dist_cache_touch.exit.i.i
  %i.abp = load i16, ptr %i.i, align 2, !tbaa !120 ; 3 uses
  %i.abq = zext i16 %i.abp to i32                 ; 3 uses
  %i.abr = icmp ult i16 %i.abp, 8
  br i1 %i.abr, label %decode_code_length.exit166.thread225.i.i, label %bb.di

decode_code_length.exit166.thread225.i.i:         ; preds = %bb.dh
  %.015.i165.i.i = add nuw nsw i32 %i.abq, 2
  br label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.abs = lshr i32 %i.abq, 2                     ; 2 uses
  %i.abt = add nsw i32 %i.abs, -1                 ; 2 uses
  %i.abu = and i32 %i.abq, 3
  %i.abv = or disjoint i32 %i.abu, 4
  %i.abw = shl i32 %i.abv, %i.abt
  %.01523.i160.i.i = add nsw i32 %i.abw, 2
  %i.abx = icmp ugt i16 %i.abp, 71
  br i1 %i.abx, label %.thread229.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aby = load i32, ptr %i.lr, align 4, !tbaa !116 ; 2 uses
  %i.abz = sext i32 %i.aby to i64                 ; 2 uses
  %i.aca = load i64, ptr %i.ls, align 8, !tbaa !115
  %.not.i.i.i161.i.i = icmp sgt i64 %i.aca, %i.abz
  br i1 %.not.i.i.i161.i.i, label %decode_code_length.exit166.i.i, label %read_bits_16.exit.i.i162.i.i

read_bits_16.exit.i.i162.i.i:                     ; preds = %bb.dj
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.55) #14, !inline_history !111
  br label %.thread229.i.i

decode_code_length.exit166.i.i:                   ; preds = %bb.dj
  %i.acb = getelementptr inbounds i8, ptr %.182, i64 %i.abz ; 3 uses
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !28
  %i.acd = zext i8 %i.acc to i32
  %i.ace = shl nuw nsw i32 %i.acd, 16
  %i.acf = getelementptr i8, ptr %i.acb, i64 1
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !28
  %i.ach = zext i8 %i.acg to i32
  %i.aci = shl nuw nsw i32 %i.ach, 8
  %i.acj = or disjoint i32 %i.aci, %i.ace
  %i.ack = getelementptr i8, ptr %i.acb, i64 2
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !28
  %i.acm = zext i8 %i.acl to i32
  %i.acn = or disjoint i32 %i.acj, %i.acm
  %i.aco = load i8, ptr %i.lq, align 8, !tbaa !117
  %i.acp = sext i8 %i.aco to i32                  ; 2 uses
  %i.acq = sub nsw i32 8, %i.acp
  %i.acr = lshr i32 %i.acn, %i.acq
  %i.acs = add nsw i32 %i.abt, %i.acp             ; 2 uses
  %i.act = ashr i32 %i.acs, 3
  %i.acu = add nsw i32 %i.act, %i.aby
  store i32 %i.acu, ptr %i.lr, align 4, !tbaa !116
  %i.acv = trunc i32 %i.acs to i8
  %i.acw = and i8 %i.acv, 7
  store i8 %i.acw, ptr %i.lq, align 8, !tbaa !117
  %i.acx = and i32 %i.acr, 65535
  %i.acy = sub nsw i32 17, %i.abs
  %i.acz = lshr i32 %i.acx, %i.acy
  %.1.i164.i.i = add nsw i32 %.01523.i160.i.i, %i.acz ; 2 uses
  %i.ada = icmp eq i32 %.1.i164.i.i, -1
  br i1 %i.ada, label %.thread229.i.i, label %bb.dk

bb.dk:                                            ; preds = %decode_code_length.exit166.i.i, %decode_code_length.exit166.thread225.i.i
  %.118.i163227.i.i = phi i32 [ %.015.i165.i.i, %decode_code_length.exit166.thread225.i.i ], [ %.1.i164.i.i, %decode_code_length.exit166.i.i ] ; 6 uses
  store i32 %.118.i163227.i.i, ptr %i.lu, align 8, !tbaa !126
  %.val138.i.i = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val138.val.i.i = load ptr, ptr %.val138.i.i, align 8, !tbaa !48 ; 4 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.val138.val.i.i, i64 104
  %i.adc = load i64, ptr %i.adb, align 8, !tbaa !91 ; 6 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.val138.val.i.i, i64 112 ; 3 uses
  %i.ade = load i64, ptr %i.add, align 8, !tbaa !86 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.val138.val.i.i, i64 136
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !87
  %i.adh = add nsw i64 %i.adg, %i.ade             ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.val138.val.i.i, i64 80 ; 4 uses
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !71
  %i.adk = icmp eq ptr %i.adj, null
  br i1 %i.adk, label %.thread232.i.i, label %.preheader.i167.i.i

.thread232.i.i:                                   ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br label %do_uncompress_file.exit.thread

.preheader.i167.i.i:                              ; preds = %bb.dk
  %i.adl = icmp sgt i32 %.118.i163227.i.i, 0
  br i1 %i.adl, label %.lr.ph.i170.i.i, label %bb.dm

.lr.ph.i170.i.i:                                  ; preds = %.preheader.i167.i.i
  %i.adm = sext i32 %i.abh to i64                 ; 3 uses
  %wide.trip.count.i171.i.i = zext nneg i32 %.118.i163227.i.i to i64 ; 2 uses
  %xtraiter989 = and i64 %wide.trip.count.i171.i.i, 1
  %i.adn = icmp eq i32 %.118.i163227.i.i, 1
  br i1 %i.adn, label %.epil.preheader988, label %.lr.ph.i170.i.i.new

.lr.ph.i170.i.i.new:                              ; preds = %.lr.ph.i170.i.i
  %unroll_iter992 = and i64 %wide.trip.count.i171.i.i, 2147483646
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dl, %.lr.ph.i170.i.i.new
  %indvars.iv.i172.i.i = phi i64 [ 0, %.lr.ph.i170.i.i.new ], [ %indvars.iv.next.i173.i.i.1, %bb.dl ] ; 3 uses
  %niter993 = phi i64 [ 0, %.lr.ph.i170.i.i.new ], [ %niter993.next.1, %bb.dl ]
  %i.ado = add i64 %i.adh, %indvars.iv.i172.i.i   ; 2 uses
  %i.adp = and i64 %i.ado, %i.adc
  %i.adq = sub i64 %i.ado, %i.adm
  %i.adr = and i64 %i.adq, %i.adc
  %i.ads = load ptr, ptr %i.adi, align 8, !tbaa !71 ; 2 uses
  %i.adt = getelementptr inbounds i8, ptr %i.ads, i64 %i.adr
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !28
  %i.adv = getelementptr inbounds i8, ptr %i.ads, i64 %i.adp
  store i8 %i.adu, ptr %i.adv, align 1, !tbaa !28
  %indvars.iv.next.i173.i.i = or disjoint i64 %indvars.iv.i172.i.i, 1
  %i.adw = add i64 %i.adh, %indvars.iv.next.i173.i.i ; 2 uses
  %i.adx = and i64 %i.adw, %i.adc
  %i.ady = sub i64 %i.adw, %i.adm
  %i.adz = and i64 %i.ady, %i.adc
  %i.aea = load ptr, ptr %i.adi, align 8, !tbaa !71 ; 2 uses
  %i.aeb = getelementptr inbounds i8, ptr %i.aea, i64 %i.adz
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !28
  %i.aed = getelementptr inbounds i8, ptr %i.aea, i64 %i.adx
  store i8 %i.aec, ptr %i.aed, align 1, !tbaa !28
  %indvars.iv.next.i173.i.i.1 = add nuw nsw i64 %indvars.iv.i172.i.i, 2 ; 2 uses
  %niter993.next.1 = add i64 %niter993, 2         ; 2 uses
  %niter993.ncmp.1 = icmp eq i64 %niter993.next.1, %unroll_iter992
  br i1 %niter993.ncmp.1, label %._crit_edge.loopexit.i175.i.i.unr-lcssa, label %bb.dl, !llvm.loop !127

._crit_edge.loopexit.i175.i.i.unr-lcssa:          ; preds = %bb.dl
  %lcmp.mod990.not = icmp eq i64 %xtraiter989, 0
  br i1 %lcmp.mod990.not, label %._crit_edge.loopexit.i175.i.i, label %.epil.preheader988

.epil.preheader988:                               ; preds = %._crit_edge.loopexit.i175.i.i.unr-lcssa, %.lr.ph.i170.i.i
  %indvars.iv.i172.i.i.epil.init = phi i64 [ 0, %.lr.ph.i170.i.i ], [ %indvars.iv.next.i173.i.i.1, %._crit_edge.loopexit.i175.i.i.unr-lcssa ]
  %lcmp.mod991 = trunc i32 %.118.i163227.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod991)
  %i.aee = add i64 %i.adh, %indvars.iv.i172.i.i.epil.init ; 2 uses
  %i.aef = and i64 %i.aee, %i.adc
  %i.aeg = sub i64 %i.aee, %i.adm
  %i.aeh = and i64 %i.aeg, %i.adc
  %i.aei = load ptr, ptr %i.adi, align 8, !tbaa !71 ; 2 uses
  %i.aej = getelementptr inbounds i8, ptr %i.aei, i64 %i.aeh
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !28
  %i.ael = getelementptr inbounds i8, ptr %i.aei, i64 %i.aef
  store i8 %i.aek, ptr %i.ael, align 1, !tbaa !28
  br label %._crit_edge.loopexit.i175.i.i

._crit_edge.loopexit.i175.i.i:                    ; preds = %._crit_edge.loopexit.i175.i.i.unr-lcssa, %.epil.preheader988
  %.pre.i176.i.i = load i64, ptr %i.add, align 8, !tbaa !86
  br label %bb.dm

.thread229.i.i:                                   ; preds = %decode_code_length.exit166.i.i, %bb.di, %dist_cache_touch.exit.i.i, %read_bits_16.exit.i.i162.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br label %do_uncompress_file.exit.thread

bb.dm:                                            ; preds = %._crit_edge.loopexit.i175.i.i, %.preheader.i167.i.i
  %i.aem = phi i64 [ %.pre.i176.i.i, %._crit_edge.loopexit.i175.i.i ], [ %i.ade, %.preheader.i167.i.i ]
  %i.aen = sext i32 %.118.i163227.i.i to i64
  %i.aeo = add nsw i64 %i.aem, %i.aen
  store i64 %i.aeo, ptr %i.add, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br label %.backedge.i.i

do_uncompress_block.exit.i:                       ; preds = %.backedge.i.i, %bb.bk, %bb.bo
  %i.aep = load i8, ptr %i.ch, align 8            ; 3 uses
  %i.aeq = and i8 %i.aep, 12
  %or.cond.i = icmp eq i8 %i.aeq, 8
  br i1 %or.cond.i, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %do_uncompress_block.exit.i
  %i.aer = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 144 ; 2 uses
  %i.aes = load i64, ptr %i.aer, align 8, !tbaa !115 ; 3 uses
  %i.aet = icmp sgt i64 %i.aes, 0
  br i1 %i.aet, label %bb.do, label %process_block.exit.thread

bb.do:                                            ; preds = %bb.dn
  %i.aeu = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.aes) #14, !inline_history !111
  %i.aev = icmp eq i64 %i.aes, %i.aeu
  br i1 %i.aev, label %bb.dp, label %do_uncompress_file.exit.thread

bb.dp:                                            ; preds = %bb.do
  %i.aew = load i64, ptr %i.aer, align 8, !tbaa !115
  %i.aex = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 19368 ; 2 uses
  %i.aey = load i64, ptr %i.aex, align 8, !tbaa !69
  %i.aez = sub nsw i64 %i.aey, %i.aew
  store i64 %i.aez, ptr %i.aex, align 8, !tbaa !69
  br label %process_block.exit.thread

bb.dq:                                            ; preds = %do_uncompress_block.exit.i
  %i.afa = and i8 %i.aep, 4
  %i.afb = icmp eq i8 %i.afa, 0
  br i1 %i.afb, label %process_block.exit.thread, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.afc = and i8 %i.aep, -5
  store i8 %i.afc, ptr %i.ch, align 8
  br label %process_block.exit.thread

process_block.exit.loopexit623:                   ; preds = %skip_base_block.exit.thread, %skip_base_block.exit
  %1 = icmp eq i32 %i.bs, 0
  %spec.select.le = select i1 %1, i32 -10, i32 %i.bs
  br label %process_block.exit

process_block.exit:                               ; preds = %bb.m, %advance_multivolume.exit.i55, %process_block.exit.loopexit623, %parse_filter.exit.thread.i.i, %advance_multivolume.exit.i55.thread201, %advance_multivolume.exit.i55.thread
  %.1.i12 = phi i32 [ %.118.i.i56.ph, %advance_multivolume.exit.i55.thread ], [ %spec.select.le, %process_block.exit.loopexit623 ], [ %.lcssa789, %advance_multivolume.exit.i55.thread201 ], [ %.1.i144.ph.i.i, %parse_filter.exit.thread.i.i ], [ %.0.i61.i128, %advance_multivolume.exit.i55 ], [ %i.bh, %bb.m ] ; 3 uses
  switch i32 %.1.i12, label %process_block.exit.thread [
    i32 -30, label %do_uncompress_file.exit
    i32 1, label %do_uncompress_file.exit
  ]

process_block.exit.thread:                        ; preds = %bb.dn, %bb.dp, %bb.dr, %bb.dq, %process_block.exit
  %i.afd = load i64, ptr %i.at, align 8, !tbaa !59
  %i.afe = load i64, ptr %i.au, align 8, !tbaa !86
  %i.aff = icmp eq i64 %i.afd, %i.afe
  br i1 %i.aff, label %bb.ds, label %.loopexit246

bb.ds:                                            ; preds = %process_block.exit.thread
  %.val49.i = load i8, ptr %i.av, align 8, !tbaa !118
  %i.afg = and i8 %.val49.i, 64
  %.not47.i = icmp eq i8 %i.afg, 0
  br i1 %.not47.i, label %bb.j, label %do_uncompress_file.exit.thread

.loopexit246:                                     ; preds = %process_block.exit.thread, %bb.i
  %.val.i4 = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i5 = load ptr, ptr %.val.i4, align 8, !tbaa !48 ; 16 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.val.val.i5, i64 56 ; 3 uses
  %i.afi = load i8, ptr %i.afh, align 8           ; 2 uses
  %i.afj = and i8 %i.afi, -3
  store i8 %i.afj, ptr %i.afh, align 8
  %i.afk = getelementptr inbounds nuw i8, ptr %.val.val.i5, i64 19256 ; 3 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.val.val.i5, i64 19262
  %i.afm = load i16, ptr %i.afl, align 2, !tbaa !74
  %.not.i.i = icmp eq i16 %i.afm, 0
  br i1 %.not.i.i, label %bb.fb, label %bb.dt

bb.dt:                                            ; preds = %.loopexit246
  %.val.i.i = load i16, ptr %i.afk, align 8, !tbaa !75
  %i.afn = getelementptr i8, ptr %.val.val.i5, i64 19264
  %.val3.i.i = load ptr, ptr %i.afn, align 8, !tbaa !14
  %i.afo = zext i16 %.val.i.i to i64
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %.val3.i.i, i64 %i.afo
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !29
  %i.afr = inttoptr i64 %i.afq to ptr             ; 7 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.val.val.i5, i64 112
  %i.aft = load i64, ptr %i.afs, align 8, !tbaa !86 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  %i.afv = load i64, ptr %i.afu, align 8, !tbaa !132 ; 5 uses
  %i.afw = icmp sgt i64 %i.aft, %i.afv
  br i1 %i.afw, label %bb.du, label %bb.fb

bb.du:                                            ; preds = %bb.dt
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afr, i64 24
  %i.afy = load i64, ptr %i.afx, align 8, !tbaa !133
  %i.afz = add nsw i64 %i.afy, %i.afv
  %.not.i7 = icmp slt i64 %i.aft, %i.afz
  br i1 %.not.i7, label %bb.fb, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aga = getelementptr inbounds nuw i8, ptr %.val.val.i5, i64 19262 ; 2 uses
  %i.agb = getelementptr i8, ptr %.val.val.i5, i64 19264
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afr, i64 16 ; 5 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afr, i64 24 ; 5 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.val.val.i5, i64 120 ; 5 uses
  %i.agf = load i64, ptr %i.age, align 8, !tbaa !59 ; 5 uses
  %i.agg = icmp eq i64 %i.agf, %i.afv
  br i1 %i.agg, label %bb.dw, label %bb.ey

bb.dw:                                            ; preds = %bb.dv
  %.val.i19.i = load ptr, ptr %i.n, align 8, !tbaa !32
  %.val.val.i.i = load ptr, ptr %.val.i19.i, align 8, !tbaa !48 ; 13 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 19304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.agh, i8 0, i64 64, i1 false)
  %i.agi = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 88 ; 6 uses
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !72
  call void @free(ptr noundef %i.agj) #14
  %i.agk = load i64, ptr %i.agd, align 8, !tbaa !133 ; 14 uses
  %i.agl = call noalias ptr @malloc(i64 noundef %i.agk) #15 ; 8 uses
  store ptr %i.agl, ptr %i.agi, align 8, !tbaa !72
  %.not.i20.i = icmp eq ptr %i.agl, null
  br i1 %.not.i20.i, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.62) #14
  br label %do_uncompress_file.exit.thread

bb.dy:                                            ; preds = %bb.dw
  %i.agm = load i32, ptr %i.afr, align 8, !tbaa !130 ; 3 uses
  switch i32 %i.agm, label %bb.eu [
    i32 0, label %bb.dz
    i32 1, label %bb.eb
    i32 2, label %bb.eb
    i32 3, label %bb.en
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.agn = getelementptr inbounds nuw i8, ptr %i.afr, i64 4 ; 2 uses
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !134 ; 2 uses
  %i.agp = icmp sgt i32 %i.ago, 0
  br i1 %i.agp, label %.lr.ph27.i.i.i, label %run_delta_filter.exit.i.i

.lr.ph27.i.i.i:                                   ; preds = %bb.dz
  %i.agq = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 80
  %i.agr = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 136
  %i.ags = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 104
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge.i.i.i, %.lr.ph27.i.i.i
  %i.agt = phi i32 [ %i.ago, %.lr.ph27.i.i.i ], [ %i.aho, %._crit_edge.i.i.i ] ; 2 uses
  %i.agu = phi i64 [ %i.agk, %.lr.ph27.i.i.i ], [ %i.ahp, %._crit_edge.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph27.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.01924.i.i.i = phi i64 [ 0, %.lr.ph27.i.i.i ], [ %.1.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.agv = icmp sgt i64 %i.agu, %indvars.iv.i.i.i
  br i1 %i.agv, label %.lr.ph.i.i.i, label %.._crit_edge_crit_edge.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.ea
  %.pre30.i.i.i = sext i32 %i.agt to i64
  br label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ea, %.lr.ph.i.i.i
  %.01823.i.i.i = phi i8 [ %i.ahf, %.lr.ph.i.i.i ], [ 0, %bb.ea ]
  %.122.i.i.i = phi i64 [ %i.ahi, %.lr.ph.i.i.i ], [ %.01924.i.i.i, %bb.ea ] ; 2 uses
  %.02021.i.i.i = phi i64 [ %i.ahl, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i, %bb.ea ] ; 2 uses
  %i.agw = load ptr, ptr %i.agq, align 8, !tbaa !71
  %i.agx = load i64, ptr %i.agr, align 8, !tbaa !87
  %i.agy = load i64, ptr %i.agc, align 8, !tbaa !132
  %i.agz = add i64 %i.agx, %.122.i.i.i
  %i.aha = add i64 %i.agz, %i.agy
  %i.ahb = load i64, ptr %i.ags, align 8, !tbaa !91
  %i.ahc = and i64 %i.aha, %i.ahb
  %i.ahd = getelementptr inbounds i8, ptr %i.agw, i64 %i.ahc
  %i.ahe = load i8, ptr %i.ahd, align 1, !tbaa !28
  %i.ahf = sub i8 %.01823.i.i.i, %i.ahe           ; 2 uses
  %i.ahg = load ptr, ptr %i.agi, align 8, !tbaa !72
  %i.ahh = getelementptr inbounds i8, ptr %i.ahg, i64 %.02021.i.i.i
  store i8 %i.ahf, ptr %i.ahh, align 1, !tbaa !28
  %i.ahi = add nsw i64 %.122.i.i.i, 1             ; 2 uses
  %i.ahj = load i32, ptr %i.agn, align 4, !tbaa !134 ; 2 uses
  %i.ahk = sext i32 %i.ahj to i64                 ; 2 uses
  %i.ahl = add nsw i64 %.02021.i.i.i, %i.ahk      ; 2 uses
  %i.ahm = load i64, ptr %i.agd, align 8, !tbaa !133 ; 2 uses
  %i.ahn = icmp slt i64 %i.ahl, %i.ahm
  br i1 %i.ahn, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !135

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre30.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.ahk, %.lr.ph.i.i.i ]
  %i.aho = phi i32 [ %i.agt, %.._crit_edge_crit_edge.i.i.i ], [ %i.ahj, %.lr.ph.i.i.i ]
  %i.ahp = phi i64 [ %i.agu, %.._crit_edge_crit_edge.i.i.i ], [ %i.ahm, %.lr.ph.i.i.i ] ; 2 uses
  %.1.lcssa.i.i.i = phi i64 [ %.01924.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.ahi, %.lr.ph.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ahq = icmp slt i64 %indvars.iv.next.i.i.i, %.pre-phi.i.i.i
  br i1 %i.ahq, label %bb.ea, label %run_delta_filter.exit.i.i, !llvm.loop !136

bb.eb:                                            ; preds = %bb.dy, %bb.dy
  %i.ahr = icmp eq i32 %i.agm, 2
  %i.ahs = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 80 ; 2 uses
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !71 ; 3 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 104 ; 2 uses
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !91 ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 136 ; 2 uses
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !87
  %i.ahy = load i64, ptr %i.agc, align 8, !tbaa !132
  %i.ahz = add nsw i64 %i.ahy, %i.ahx             ; 2 uses
  %i.aia = add nsw i64 %i.ahz, %i.agk
  %i.aib = and i64 %i.ahz, %i.ahv                 ; 4 uses
  %i.aic = and i64 %i.aia, %i.ahv                 ; 2 uses
  %i.aid = icmp sgt i64 %i.aib, %i.aic
  br i1 %i.aid, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.aie = add nsw i64 %i.ahv, 1
  %i.aif = sub i64 %i.aie, %i.aib                 ; 2 uses
  %i.aig = getelementptr inbounds i8, ptr %i.aht, i64 %i.aib
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agl, ptr readonly align 1 %i.aig, i64 %i.aif, i1 false)
  %i.aih = getelementptr inbounds i8, ptr %i.agl, i64 %i.aif
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aih, ptr readonly align 1 %i.aht, i64 %i.aic, i1 false)
  br label %circular_memcpy.exit.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.aii = getelementptr inbounds i8, ptr %i.aht, i64 %i.aib
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agl, ptr readonly align 1 %i.aii, i64 %i.agk, i1 false)
  br label %circular_memcpy.exit.i.i.i

circular_memcpy.exit.i.i.i:                       ; preds = %bb.ed, %bb.ec
  %i.aij = icmp sgt i64 %i.agk, 4
  br i1 %i.aij, label %.lr.ph.i30.i.i, label %run_delta_filter.exit.i.i

.lr.ph.i30.i.i:                                   ; preds = %circular_memcpy.exit.i.i.i, %bb.em
  %.pre.i3150.i.i = phi i64 [ %.pre.i3151.i.i, %bb.em ], [ %i.agk, %circular_memcpy.exit.i.i.i ] ; 3 uses
  %i.aik = phi i64 [ %i.ajv, %bb.em ], [ %i.agk, %circular_memcpy.exit.i.i.i ]
  %.045.i.i.i = phi i64 [ %.1.i.i.i, %bb.em ], [ 0, %circular_memcpy.exit.i.i.i ] ; 3 uses
  %i.ail = load ptr, ptr %i.ahs, align 8, !tbaa !71 ; 4 uses
  %i.aim = load i64, ptr %i.ahw, align 8, !tbaa !87
  %i.ain = load i64, ptr %i.agc, align 8, !tbaa !132 ; 2 uses
  %i.aio = add nsw i64 %i.ain, %i.aim             ; 2 uses
  %i.aip = add nsw i64 %.045.i.i.i, 1             ; 4 uses
  %i.aiq = add nsw i64 %i.aio, %.045.i.i.i
  %i.air = load i64, ptr %i.ahu, align 8, !tbaa !91 ; 4 uses
  %i.ais = and i64 %i.aiq, %i.air
  %i.ait = getelementptr inbounds i8, ptr %i.ail, i64 %i.ais
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !28 ; 2 uses
  %i.aiv = icmp eq i8 %i.aiu, -24
  %i.aiw = icmp eq i8 %i.aiu, -23
  %or.cond.i.i.i = and i1 %i.ahr, %i.aiw
  %or.cond46.i.i.i = or i1 %i.aiv, %or.cond.i.i.i
  br i1 %or.cond46.i.i.i, label %bb.ee, label %bb.em

bb.ee:                                            ; preds = %.lr.ph.i30.i.i
  %i.aix = add nsw i64 %i.ain, %i.aip
  %i.aiy = srem i64 %i.aix, 16777216
  %i.aiz = trunc nsw i64 %i.aiy to i32            ; 2 uses
  %i.aja = add nsw i64 %i.aio, %i.aip
end_hunk_1
