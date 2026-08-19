inline.NumInlined: 95
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ext4_ind_remove_space:bb.a
  %.not219 = icmp sle i32 %i.if, %i.ib
  %or.cond234.not = select i1 %i.hw, i1 %.not219, i1 false
  br i1 %or.cond234.not, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ja = getelementptr i8, ptr %.1187275, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8            ; 2 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = load ptr, ptr %.1187275, align 8
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %i.jb, ptr noundef %i.jd, ptr noundef %i.je, i32 noundef %i.if) #12, !srcloc !81
  %i.jf = getelementptr i8, ptr %.1187275, i64 -24
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %.3 = phi ptr [ %.1187275, %bb.bc ], [ %i.jf, %bb.bd ] ; 2 uses
  %i.jg = icmp ugt ptr %.2191, %4                 ; 2 uses
  %i.jh = icmp ugt ptr %.3, %5                    ; 2 uses
  %i.ji = select i1 %i.jg, i1 true, i1 %i.jh
  br i1 %i.ji, label %bb.ay, label %.loopexit268

.loopexit268:                                     ; preds = %bb.be, %bb.ax, %.thread, %bb.bh, %bb.bk, %bb.bn, %bb.bo, %bb.bp, %.loopexit
  %.1185 = phi ptr [ %.0184, %bb.bh ], [ %.0184, %bb.bk ], [ %.0184, %bb.bn ], [ %.0184, %bb.bp ], [ %.0184, %bb.bo ], [ %.0184, %.loopexit ], [ %i.ft, %.thread ], [ %i.ft, %bb.ax ], [ %i.ft, %bb.be ] ; 2 uses
  %.0182 = phi ptr [ %i.ez, %bb.bh ], [ %i.ez, %bb.bk ], [ %i.ez, %bb.bn ], [ %i.ez, %bb.bp ], [ %i.ez, %bb.bo ], [ %i.ez, %.loopexit ], [ %i.fu, %.thread ], [ %i.fu, %bb.ax ], [ %i.fu, %bb.be ] ; 2 uses
  %i.jj = icmp ugt ptr %.1185, %4
  br i1 %i.jj, label %.lr.ph282, label %.preheader

.preheader:                                       ; preds = %brelse.exit, %.loopexit268
  %i.jk = icmp ugt ptr %.0182, %5
  br i1 %i.jk, label %.lr.ph284, label %ext4_free_data.exit

.lr.ph282:                                        ; preds = %.loopexit268, %brelse.exit
  %.2281 = phi ptr [ %i.jn, %brelse.exit ], [ %.1185, %.loopexit268 ] ; 2 uses
  %i.jl = getelementptr i8, ptr %.2281, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.jm, null
  br i1 %.not.i, label %brelse.exit, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph282
  call void @__brelse(ptr noundef nonnull %i.jm) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %.lr.ph282, %bb.bf
  %i.jn = getelementptr i8, ptr %.2281, i64 -24   ; 2 uses
  %i.jo = icmp ugt ptr %i.jn, %4
  br i1 %i.jo, label %.lr.ph282, label %.preheader, !llvm.loop !82

.lr.ph284:                                        ; preds = %.preheader, %brelse.exit264
  %.1183283 = phi ptr [ %i.jr, %brelse.exit264 ], [ %.0182, %.preheader ] ; 2 uses
  %i.jp = getelementptr i8, ptr %.1183283, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8            ; 2 uses
  %.not.i263 = icmp eq ptr %i.jq, null
  br i1 %.not.i263, label %brelse.exit264, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph284
  call void @__brelse(ptr noundef nonnull %i.jq) #10
  br label %brelse.exit264

brelse.exit264:                                   ; preds = %.lr.ph284, %bb.bg
  %i.jr = getelementptr i8, ptr %.1183283, i64 -24 ; 2 uses
  %i.js = icmp ugt ptr %i.jr, %5
  br i1 %i.js, label %.lr.ph284, label %ext4_free_data.exit, !llvm.loop !83

.loopexit:                                        ; preds = %bb.ap, %bb.ao, %bb.an
  %i.jt = load i32, ptr %i.a, align 16
  switch i32 %i.jt, label %bb.bh [
    i32 12, label %bb.bk
    i32 13, label %bb.bn
    i32 14, label %.loopexit268
  ]

bb.bh:                                            ; preds = %.loopexit
  %i.ju = add nuw nsw i32 %.060.i, 1              ; 3 uses
  %.not223 = icmp samesign ult i32 %i.ju, %.060.i239
  br i1 %.not223, label %bb.bi, label %.loopexit268

bb.bi:                                            ; preds = %bb.bh
  %i.jv = getelementptr i8, ptr %1, i64 -184      ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 8            ; 2 uses
  store i32 %i.jw, ptr %i.c, align 4
  %.not224 = icmp eq i32 %i.jw, 0
  br i1 %.not224, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.jx, i32 noundef 1) #12, !srcloc !84
  store i32 0, ptr %i.jv, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %.loopexit
  %.0181 = phi i32 [ %i.ju, %bb.bj ], [ %i.ju, %bb.bi ], [ %.060.i, %.loopexit ]
  %i.jy = add nuw nsw i32 %.0181, 1               ; 3 uses
  %.not225 = icmp slt i32 %i.jy, %.060.i239
  br i1 %.not225, label %bb.bl, label %.loopexit268

bb.bl:                                            ; preds = %bb.bk
  %i.jz = getelementptr i8, ptr %1, i64 -180      ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4            ; 2 uses
  store i32 %i.ka, ptr %i.c, align 4
  %.not226 = icmp eq i32 %i.ka, 0
  br i1 %.not226, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.kb, i32 noundef 2) #12, !srcloc !85
  store i32 0, ptr %i.jz, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %.loopexit
  %.1 = phi i32 [ %i.jy, %bb.bm ], [ %i.jy, %bb.bl ], [ %.060.i, %.loopexit ]
  %i.kc = add nuw nsw i32 %.1, 1
  %.not227 = icmp slt i32 %i.kc, %.060.i239
  br i1 %.not227, label %bb.bo, label %.loopexit268

bb.bo:                                            ; preds = %bb.bn
  %i.kd = getelementptr i8, ptr %1, i64 -176      ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 8            ; 2 uses
  store i32 %i.ke, ptr %i.c, align 4
  %.not228 = icmp eq i32 %i.ke, 0
  br i1 %.not228, label %.loopexit268, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kf = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.kf, i32 noundef 3) #12, !srcloc !86
  store i32 0, ptr %i.kd, align 8
  br label %.loopexit268

ext4_free_data.exit:                              ; preds = %brelse.exit264, %bb.v, %.preheader, %bb.x, %._crit_edge.i, %.thread352, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_ind_map_blocks_enter(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @bh_uptodate_or_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_check_blockref(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @bdev_getblk(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ext4_inode_to_goal_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ext4_mb_new_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ext4_new_meta_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_create_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ext4_free_blocks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_ind_map_blocks_exit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 2) i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef range(i64 0, 4294967296) %3, i64 noundef range(i64 1, 0) %4, ptr nofree noundef writeonly captures(address) %5, ptr nofree noundef readnone captures(address) %6) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, -4096
  switch i16 %i.b, label %bb.b [
    i16 16384, label %bb.d
    i16 -24576, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 -152
  %i.d = load volatile i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 2097152
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @ext4_inode_journal_mode(ptr noundef %1) #10
  %i.g = and i32 %i.f, 1
  %.not36 = icmp eq i32 %i.g, 0
  %spec.select = select i1 %.not36, i32 4, i32 6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.c ], [ 7, %bb.b ], [ 7, %bb.a ], [ 7, %bb.a ]
  %i.h = trunc i64 %4 to i32                      ; 2 uses
  %i.i = tail call i32 @ext4_inode_block_valid(ptr noundef %1, i64 noundef %3, i32 noundef %i.h) #10
  %.not37 = icmp eq i32 %i.i, 0
  br i1 %.not37, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_clear_blocks, i32 noundef 876, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.8, i64 noundef %3, i64 noundef %4) #10
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %1, i64 40         ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 864
  %.val4.i = load ptr, ptr %i.l, align 32
  %i.m = getelementptr i8, ptr %.val4.i, i64 120
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 3072
  %i.p = icmp eq i32 %i.o, 1024
  br i1 %i.p, label %ext4_free_data_revoke_credits.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @ext4_inode_journal_mode(ptr noundef %1) #10
  %i.r = and i32 %i.q, 1
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %ext4_free_data_revoke_credits.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 864
  %.val.i = load ptr, ptr %i.t, align 32
  %i.u = getelementptr i8, ptr %.val.i, i64 80
  %i.v = load i32, ptr %i.u, align 16
  %i.w = shl i32 %i.v, 1
  %i.x = add i32 %i.h, -2
  %i.y = add i32 %i.x, %i.w
  br label %ext4_free_data_revoke_credits.exit

ext4_free_data_revoke_credits.exit:               ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ 0, %bb.f ], [ %i.y, %bb.h ], [ 0, %bb.g ]
  %i.z = tail call fastcc i32 @ext4_ind_truncate_ensure_credits(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i) #12, !srcloc !87 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %.preheader

.preheader:                                       ; preds = %ext4_free_data_revoke_credits.exit
  %i.ab = icmp ult ptr %5, %6
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader, %.lr.ph.preheader
  %.03238 = phi ptr [ %7, %.lr.ph.preheader ], [ %5, %.preheader ] ; 2 uses
  store i32 0, ptr %.03238, align 4
  %7 = getelementptr i8, ptr %.03238, i64 4       ; 2 uses
  %8 = icmp ult ptr %7, %6
  br i1 %8, label %.lr.ph.preheader, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %3, i64 noundef %4, i32 noundef %.0) #10
  br label %bb.j

bb.i:                                             ; preds = %ext4_free_data_revoke_credits.exit
  %i.ac = load ptr, ptr %i.j, align 8
  tail call void @__ext4_std_error(ptr noundef %i.ac, ptr noundef nonnull @__func__.ext4_clear_blocks, i32 noundef 891, i32 noundef %i.z) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge, %bb.e
  %.033 = phi i32 [ %i.z, %bb.i ], [ 0, %._crit_edge ], [ 1, %bb.e ]
  ret i32 %.033
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_inode_block_valid(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ext4_ind_truncate_ensure_credits(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 4 uses
  %.val33 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 136        ; 2 uses
  %.val34 = load i64, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val33, i64 20
  %.val33.val = load i8, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %.val33, i64 864
  %.val33.val35 = load ptr, ptr %i.d, align 32    ; 2 uses
  %i.e = getelementptr i8, ptr %.val33.val35, i64 104
  %.val33.val35.val = load ptr, ptr %i.e, align 8 ; 2 uses
  %i.f = getelementptr i8, ptr %.val33.val35, i64 120
  %.val33.val35.val38 = load i32, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val33.val35.val, i64 96
  %.val.val.val.i = load i32, ptr %i.g, align 8
  %i.h = and i32 %.val33.val35.val38, 262144
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %ext4_quota_capable.exit.i, label %ext4_quota_capable.exit.thread.i

ext4_quota_capable.exit.i:                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val33.val35.val, i64 100
  %.val2.val.val.i.i = load i32, ptr %i.i, align 4
  %.val2.val.val.i.fr.i = freeze i32 %.val2.val.val.i.i
  %i.j = and i32 %.val2.val.val.i.fr.i, 256
  %.not2.i = icmp eq i32 %i.j, 0
  br i1 %.not2.i, label %ext4_blocks_for_truncate.exit, label %ext4_quota_capable.exit.thread.i

ext4_quota_capable.exit.thread.i:                 ; preds = %ext4_quota_capable.exit.i, %bb.a
  br label %ext4_blocks_for_truncate.exit

ext4_blocks_for_truncate.exit:                    ; preds = %ext4_quota_capable.exit.i, %ext4_quota_capable.exit.thread.i
  %i.k = phi i32 [ 3, %ext4_quota_capable.exit.thread.i ], [ 0, %ext4_quota_capable.exit.i ]
  %i.l = and i32 %.val.val.val.i, 64
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not.i, i32 12, i32 24
  %i.n = zext i8 %.val33.val to i64
  %i.o = add nuw nsw i64 %i.n, 4294967287
  %i.p = and i64 %i.o, 4294967295
  %i.q = lshr i64 %.val34, %i.p
  %i.r = trunc i64 %i.q to i32
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.r, i32 2)
  %spec.store.select1.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 64)
  %i.s = add nuw nsw i32 %i.m, %spec.store.select1.i
  %i.t = add nuw nsw i32 %i.s, %i.k
  %i.u = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %0, i32 noundef 12, i32 noundef %i.t, i32 noundef %3) #10 ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %.thread60, label %bb.b

bb.b:                                             ; preds = %ext4_blocks_for_truncate.exit
  %.not.i39 = icmp eq ptr %2, null                ; 2 uses
  br i1 %.not.i39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_ind_trunc_restart_fn, i32 noundef 696, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #10 ; 2 uses
  %.not19.i = icmp eq i32 %i.w, 0
  br i1 %.not19.i, label %bb.d, label %ext4_ind_trunc_restart_fn.exit, !prof !18

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.ext4_ind_trunc_restart_fn, i32 noundef 700) #10 ; 2 uses
  %.not20.i = icmp eq i32 %i.x, 0
  br i1 %.not20.i, label %bb.e, label %ext4_ind_trunc_restart_fn.exit, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 864
  %.val.i = load ptr, ptr %i.z, align 32
  %i.aa = getelementptr i8, ptr %.val.i, i64 576
  %i.ab = load ptr, ptr %i.aa, align 64
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %ext4_ind_trunc_restart_fn.exit.thread, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "1465: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1465b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1465) #9, !srcloc !89
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 709, i32 0, i64 16) #9, !srcloc !90
  unreachable

ext4_ind_trunc_restart_fn.exit.thread:            ; preds = %bb.e
  tail call void @ext4_discard_preallocations(ptr noundef %1) #10
  %i.ad = getelementptr i8, ptr %1, i64 -32
  tail call void @up_write(ptr noundef %i.ad) #10
  br label %bb.g

ext4_ind_trunc_restart_fn.exit:                   ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.x, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %i.ae = icmp slt i32 %.0.i, 0
  br i1 %i.ae, label %.thread60, label %bb.g

bb.g:                                             ; preds = %ext4_ind_trunc_restart_fn.exit.thread, %ext4_ind_trunc_restart_fn.exit
  %.not = phi i1 [ false, %ext4_ind_trunc_restart_fn.exit.thread ], [ true, %ext4_ind_trunc_restart_fn.exit ]
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.val32 = load i64, ptr %i.b, align 8
  %i.af = getelementptr i8, ptr %.val, i64 20
  %.val.val = load i8, ptr %i.af, align 4
  %i.ag = getelementptr i8, ptr %.val, i64 864
  %.val.val36 = load ptr, ptr %i.ag, align 32     ; 2 uses
  %i.ah = getelementptr i8, ptr %.val.val36, i64 104
  %.val.val36.val = load ptr, ptr %i.ah, align 8  ; 2 uses
  %i.ai = getelementptr i8, ptr %.val.val36, i64 120
  %.val.val36.val37 = load i32, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %.val.val36.val, i64 96
  %.val.val.val.i40 = load i32, ptr %i.aj, align 8
  %i.ak = and i32 %.val.val36.val37, 262144
  %.not.i.i41 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i41, label %ext4_quota_capable.exit.i46, label %ext4_quota_capable.exit.thread.i42

ext4_quota_capable.exit.i46:                      ; preds = %bb.g
  %i.al = getelementptr i8, ptr %.val.val36.val, i64 100
  %.val2.val.val.i.i47 = load i32, ptr %i.al, align 4
  %.val2.val.val.i.fr.i48 = freeze i32 %.val2.val.val.i.i47
  %i.am = and i32 %.val2.val.val.i.fr.i48, 256
  %.not2.i49 = icmp eq i32 %i.am, 0
  br i1 %.not2.i49, label %ext4_blocks_for_truncate.exit50, label %ext4_quota_capable.exit.thread.i42

ext4_quota_capable.exit.thread.i42:               ; preds = %ext4_quota_capable.exit.i46, %bb.g
  br label %ext4_blocks_for_truncate.exit50

ext4_blocks_for_truncate.exit50:                  ; preds = %ext4_quota_capable.exit.i46, %ext4_quota_capable.exit.thread.i42
  %i.an = phi i32 [ 3, %ext4_quota_capable.exit.thread.i42 ], [ 0, %ext4_quota_capable.exit.i46 ]
  %.not4.i = icmp ult ptr %0, inttoptr (i64 4096 to ptr)
  br i1 %.not4.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ext4_blocks_for_truncate.exit50
  %i.ao = and i32 %.val.val.val.i40, 64
  %.not.i43 = icmp eq i32 %i.ao, 0
  %i.ap = select i1 %.not.i43, i32 12, i32 24
  %i.aq = zext i8 %.val.val to i64
  %i.ar = add nuw nsw i64 %i.aq, 4294967287
  %i.as = and i64 %i.ar, 4294967295
  %i.at = lshr i64 %.val32, %i.as
  %i.au = trunc i64 %i.at to i32
  %spec.store.select.i44 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 2)
  %spec.store.select1.i45 = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i44, i32 64)
  %i.av = add nuw nsw i32 %i.ap, %spec.store.select1.i45
  %i.aw = add nuw nsw i32 %i.av, %i.an
  %i.ax = tail call i32 @jbd2__journal_restart(ptr noundef %0, i32 noundef %i.aw, i32 noundef %3, i32 noundef 3136) #10
  %i.ay = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %ext4_blocks_for_truncate.exit50
  %.0.i51 = phi i32 [ %i.ay, %bb.h ], [ 1, %ext4_blocks_for_truncate.exit50 ] ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr i8, ptr %1, i64 -32
  tail call void @down_write(ptr noundef %i.az) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = icmp slt i32 %.0.i51, 1
  br i1 %i.ba, label %.thread60, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not.i39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.a, align 8
  %i.bc = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ind_truncate_ensure_credits, i32 noundef 742, ptr noundef %0, ptr noundef %i.bb, ptr noundef nonnull %2, i32 noundef 1) #10 ; 2 uses
  %.not31 = icmp eq i32 %i.bc, 0
  br i1 %.not31, label %bb.n, label %.thread60, !prof !18

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %.thread60

.thread60:                                        ; preds = %ext4_blocks_for_truncate.exit, %ext4_ind_trunc_restart_fn.exit, %bb.m, %bb.k, %bb.n
  %.0 = phi i32 [ 0, %bb.n ], [ %.0.i51, %bb.k ], [ %i.bc, %bb.m ], [ %.0.i, %ext4_ind_trunc_restart_fn.exit ], [ %i.u, %ext4_blocks_for_truncate.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ext4_journal_ensure_credits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ext4_discard_preallocations(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @jbd2__journal_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ext4_sb_bread_nofail(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"auto-init"}
!11 = !{i64 2148816902, i64 2148816942, i64 2148817059, i64 2148817080, i64 2148817123, i64 2148817138, i64 2148817171, i64 2148817205, i64 2148817229}
!12 = !{i64 2159902604}
!13 = !{i64 2148609446}
!14 = !{i64 2151798962}
!15 = !{i64 2151802264}
!16 = !{i64 2151802686}
!17 = !{i64 2151814468}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{i64 2161934840, i64 2161934710}
!20 = !{i64 2161935371, i64 2161935847, i64 2161935880, i64 2161935915, i64 2161935931, i64 2161936772, i64 2161936830, i64 2161936879, i64 2161936689, i64 2161935990, i64 2161936022}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{i64 2161938303, i64 2161938173}
!23 = !{i64 2161938834, i64 2161939310, i64 2161939343, i64 2161939378, i64 2161939394, i64 2161940235, i64 2161940293, i64 2161940342, i64 2161940152, i64 2161939453, i64 2161939485}
!24 = !{i64 17362}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = !{i64 2148602667, i64 2148602706, i64 2148602727, i64 2148602764, i64 2148602787, i64 2148602796}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !28}
!34 = !{i64 2148596202, i64 2148596241, i64 2148596262, i64 2148596299, i64 2148596322, i64 2148596193}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = !{i64 19999}
!38 = distinct !{!38, !26}
!39 = !{i64 2159977039}
!40 = distinct !{!40, !26}
!41 = !{i64 2148995955, i64 2148995994, i64 2148996015, i64 2148996052, i64 2148996075, i64 2148995946}
!42 = distinct !{!42, !26}
!43 = distinct !{!43, !26}
!44 = !{i64 29438}
!45 = distinct !{!45, !26}
!46 = !{i64 29685}
!47 = !{i64 35523}
!48 = !{i64 35708}
!49 = !{i64 36036}
!50 = !{i64 36241}
!51 = distinct !{!51, !26}
!52 = !{i64 36606}
!53 = !{i64 36781}
!54 = !{i64 36958}
!55 = distinct !{!55, !26}
!56 = !{i64 25073}
!57 = distinct !{!57, !26}
!58 = distinct !{!58, !26}
!59 = distinct !{!59, !26}
!60 = distinct !{!60, !26}
!61 = !{i64 31954}
!62 = !{i64 32767}
!63 = !{i64 33998}
!64 = !{i64 2161963770, i64 2161963640}
!65 = !{i64 2161964301, i64 2161964777, i64 2161964810, i64 2161964845, i64 2161964861, i64 2161965702, i64 2161965760, i64 2161965809, i64 2161965619, i64 2161964920, i64 2161964952}
!66 = !{i64 38994}
!67 = !{i64 39131}
!68 = !{i64 39356}
!69 = !{i64 39606}
!70 = distinct !{!70, !26}
!71 = !{i64 39799}
!72 = !{i64 40517}
!73 = distinct !{!73, !26}
!74 = !{i64 40774}
!75 = !{i64 40840}
!76 = distinct !{!76, !26}
!77 = !{i64 41247}
!78 = !{i64 41482}
!79 = !{i64 42214}
!80 = !{i64 42687}
!81 = !{i64 42911}
!82 = distinct !{!82, !26}
!83 = distinct !{!83, !26}
!84 = !{i64 43450}
!85 = !{i64 43652}
!86 = !{i64 43856}
!87 = !{i64 27187}
!88 = distinct !{!88, !26}
!89 = !{i64 2161951960, i64 2161951830}
!90 = !{i64 2161952491, i64 2161952967, i64 2161953000, i64 2161953035, i64 2161953051, i64 2161953892, i64 2161953950, i64 2161953999, i64 2161953809, i64 2161953110, i64 2161953142}
end_hunk_0
