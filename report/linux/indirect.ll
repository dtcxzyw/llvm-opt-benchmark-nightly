inline.NumInlined: 95
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ext4_ind_truncate:bb.a
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %i.cu
  %i.dg = ptrtoint ptr %.06678 to i64
  %i.dh = sub i64 %i.cy, %i.dg
  %i.di = sdiv exact i64 %i.dh, 24
  %i.dj = trunc i64 %i.di to i32
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %i.da, ptr noundef %i.dc, ptr noundef %i.df, i32 noundef %i.dj) #12, !srcloc !50
  %i.dk = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.dk, null
  br i1 %.not.i, label %brelse.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @__brelse(ptr noundef nonnull %i.dk) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %bb.v, %bb.w
  %i.dl = getelementptr i8, ptr %.06678, i64 -24  ; 2 uses
  %i.dm = icmp ugt ptr %i.dl, %2
  br i1 %i.dm, label %bb.v, label %ext4_free_data.exitthread-pre-split, !llvm.loop !51

ext4_free_data.exitthread-pre-split:              ; preds = %brelse.exit, %bb.n, %bb.u, %._crit_edge.i, %bb.p
  %.pr = load i32, ptr %i.a, align 16
  br label %ext4_free_data.exit

ext4_free_data.exit:                              ; preds = %ext4_free_data.exitthread-pre-split, %bb.j
  %i.dn = phi i32 [ %.pr, %ext4_free_data.exitthread-pre-split ], [ %i.bg, %bb.j ]
  switch i32 %i.dn, label %bb.x [
    i32 12, label %bb.z
    i32 13, label %bb.ab
    i32 14, label %bb.ad
  ]

bb.x:                                             ; preds = %ext4_free_data.exit
  %i.do = getelementptr i8, ptr %1, i64 -184      ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8            ; 2 uses
  store i32 %i.dp, ptr %i.b, align 4
  %.not73 = icmp eq i32 %i.dp, 0
  br i1 %.not73, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.dq, i32 noundef 1) #12, !srcloc !52
  store i32 0, ptr %i.do, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %ext4_free_data.exit
  %i.dr = getelementptr i8, ptr %1, i64 -180      ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4            ; 2 uses
  store i32 %i.ds, ptr %i.b, align 4
  %.not74 = icmp eq i32 %i.ds, 0
  br i1 %.not74, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.dt, i32 noundef 2) #12, !srcloc !53
  store i32 0, ptr %i.dr, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %ext4_free_data.exit
  %i.du = getelementptr i8, ptr %1, i64 -176      ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8            ; 2 uses
  store i32 %i.dv, ptr %i.b, align 4
  %.not75 = icmp eq i32 %i.dv, 0
  br i1 %.not75, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.dw, i32 noundef 3) #12, !srcloc !54
  store i32 0, ptr %i.du, align 8
  br label %bb.ad

.critedge:                                        ; preds = %bb.a
  %i.dx = xor i32 %i.q, -1
  tail call void @ext4_es_remove_extent(ptr noundef %1, i32 noundef %i.q, i32 noundef %i.dx) #10
  %i.dy = load i64, ptr %i.h, align 8
  %i.dz = getelementptr i8, ptr %1, i64 -40
  store i64 %i.dy, ptr %i.dz, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge, %ext4_block_to_path.exit, %bb.ab, %bb.ac, %ext4_free_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ext4_es_remove_extent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ext4_free_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address) %3, ptr nofree noundef readnone captures(address) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_free_data, i32 noundef 931, ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull %2, i32 noundef 1) #10
  %.not59 = icmp eq i32 %i.c, 0
  br i1 %.not59, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp ult ptr %3, %4
  br i1 %i.d, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %.04667 = phi ptr [ %i.l, %bb.h ], [ %3, %bb.c ] ; 6 uses
  %.04766 = phi ptr [ %.148, %bb.h ], [ null, %bb.c ] ; 4 uses
  %.04965 = phi i64 [ %.150, %bb.h ], [ 0, %bb.c ] ; 6 uses
  %.05164 = phi i64 [ %.152, %bb.h ], [ 0, %bb.c ] ; 5 uses
  %i.e = load i32, ptr %.04667, align 4           ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %.not60 = icmp eq i32 %i.e, 0
  br i1 %.not60, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %.04965, 0
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i64 %.04965, %.05164
  %i.i = icmp eq i64 %i.h, %i.f
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = add i64 %.04965, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.05164, i64 noundef %.04965, ptr noundef %.04766, ptr noundef %.04667) #12, !srcloc !44 ; 2 uses
  %.not61 = icmp eq i32 %i.k, 0
  br i1 %.not61, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g, %bb.d, %.lr.ph, %bb.f
  %.152 = phi i64 [ %.05164, %.lr.ph ], [ %.05164, %bb.f ], [ %i.f, %bb.d ], [ %i.f, %bb.g ] ; 2 uses
  %.150 = phi i64 [ %.04965, %.lr.ph ], [ %i.j, %bb.f ], [ 1, %bb.d ], [ 1, %bb.g ] ; 2 uses
  %.148 = phi ptr [ %.04766, %.lr.ph ], [ %.04766, %bb.f ], [ %.04667, %bb.d ], [ %.04667, %bb.g ] ; 2 uses
  %i.l = getelementptr i8, ptr %.04667, i64 4     ; 3 uses
  %i.m = icmp ult ptr %i.l, %4
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.051.lcssa = phi i64 [ %.05164, %bb.g ], [ %.152, %bb.h ]
  %.049.lcssa = phi i64 [ %.04965, %bb.g ], [ %.150, %bb.h ] ; 2 uses
  %.047.lcssa = phi ptr [ %.04766, %bb.g ], [ %.148, %bb.h ]
  %.046.lcssa = phi ptr [ %.04667, %bb.g ], [ %i.l, %bb.h ]
  %.3 = phi i32 [ %i.k, %bb.g ], [ 0, %bb.h ]     ; 2 uses
  %i.n = icmp eq i32 %.3, 0
  %i.o = icmp ne i64 %.049.lcssa, 0
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.p = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.051.lcssa, i64 noundef %.049.lcssa, ptr noundef %.047.lcssa, ptr noundef %.046.lcssa) #12, !srcloc !46
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %bb.i, %._crit_edge
  %.4 = phi i32 [ %i.p, %bb.i ], [ %.3, %._crit_edge ], [ 0, %bb.c ]
  %i.q = icmp slt i32 %.4, 0
  %brmerge = or i1 %.not, %i.q
  br i1 %brmerge, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread
  %i.r = getelementptr i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 864
  %.val = load ptr, ptr %i.t, align 32
  %i.u = getelementptr i8, ptr %.val, i64 576
  %i.v = load ptr, ptr %i.u, align 64
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr i8, ptr %2, i64 56
  %.val63 = load ptr, ptr %i.x, align 8
  %.not62 = icmp eq ptr %.val63, null
  br i1 %.not62, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_free_data, i32 noundef 978, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #10 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %2, i64 24
  %i.aa = load i64, ptr %i.z, align 8
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_free_data, i32 noundef 983, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.7, i64 noundef %i.aa) #10
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread, %bb.m, %bb.l, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @ext4_find_shared(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(address, ret: address, provenance) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %4, align 4
  %i.b = icmp sgt i32 %1, 1
  br i1 %i.b, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %5 = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %5, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.c = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  %i.d = getelementptr i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.critedge.loopexit.split.loop.exit75

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.f = icmp sgt i64 %indvars.iv, 2
  br i1 %i.f, label %.lr.ph, label %.critedge, !llvm.loop !55

.critedge.loopexit.split.loop.exit75:             ; preds = %.lr.ph
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit75, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %6, %.critedge.loopexit.split.loop.exit75 ], [ 1, %bb.b ] ; 2 uses
  %i.g = call fastcc ptr @ext4_get_branch(ptr noundef %0, i32 noundef %.0.lcssa, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a) #12, !srcloc !56 ; 2 uses
  %.not38 = icmp eq ptr %i.g, null
  %i.h = sext i32 %.0.lcssa to i64
  %i.i = getelementptr [24 x i8], ptr %3, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -24      ; 3 uses
  %.036 = select i1 %.not38, ptr %i.j, ptr %i.g   ; 9 uses
  %i.k = getelementptr i8, ptr %.036, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %.not39 = icmp eq i32 %i.l, 0
  br i1 %.not39, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.m = load ptr, ptr %.036, align 8
  %i.n = load i32, ptr %i.m, align 4
  %.not40 = icmp eq i32 %i.n, 0
  br i1 %.not40, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.o = icmp ugt ptr %.036, %3
  br i1 %i.o, label %.lr.ph58, label %.critedge2.thread

.lr.ph58:                                         ; preds = %bb.d, %all_zeroes.exit
  %.03557 = phi ptr [ %i.x, %all_zeroes.exit ], [ %.036, %bb.d ] ; 7 uses
  %i.p = getelementptr i8, ptr %.03557, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %.03557, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph58
  %.03.i = phi ptr [ %i.s, %.lr.ph58 ], [ %i.v, %bb.f ] ; 3 uses
  %i.u = icmp ult ptr %.03.i, %i.t
  br i1 %i.u, label %bb.f, label %all_zeroes.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %.03.i, i64 4
  %i.w = load i32, ptr %.03.i, align 4
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.e, label %.critedge2, !llvm.loop !57

all_zeroes.exit:                                  ; preds = %bb.e
  %i.x = getelementptr i8, ptr %.03557, i64 -24   ; 3 uses
  %i.y = icmp ugt ptr %i.x, %3
  br i1 %i.y, label %.lr.ph58, label %.critedge2.thread, !llvm.loop !58

.critedge2:                                       ; preds = %bb.f
  %.not50 = icmp eq ptr %.03557, %i.j
  br i1 %.not50, label %bb.g, label %.critedge2.thread

bb.g:                                             ; preds = %.critedge2
  %i.z = load ptr, ptr %.03557, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  store ptr %i.aa, ptr %.03557, align 8
  br label %bb.h

.critedge2.thread:                                ; preds = %all_zeroes.exit, %bb.d, %.critedge2
  %.03552 = phi ptr [ %.03557, %.critedge2 ], [ %.036, %bb.d ], [ %i.x, %all_zeroes.exit ] ; 2 uses
  %i.ab = load ptr, ptr %.03552, align 8
  %i.ac = load i32, ptr %i.ab, align 4
  store i32 %i.ac, ptr %4, align 4
  br label %bb.h

bb.h:                                             ; preds = %.critedge2.thread, %bb.g
  %.03553 = phi ptr [ %.03552, %.critedge2.thread ], [ %i.j, %bb.g ] ; 2 uses
  %i.ad = icmp ugt ptr %.036, %.03553
  br i1 %i.ad, label %.lr.ph61, label %.loopexit

.lr.ph61:                                         ; preds = %bb.h, %brelse.exit
  %.160 = phi ptr [ %i.ag, %brelse.exit ], [ %.036, %bb.h ] ; 2 uses
  %i.ae = getelementptr i8, ptr %.160, i64 16
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i44 = icmp eq ptr %i.af, null
  br i1 %.not.i44, label %brelse.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph61
  tail call void @__brelse(ptr noundef nonnull %i.af) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %.lr.ph61, %bb.i
  %i.ag = getelementptr i8, ptr %.160, i64 -24    ; 3 uses
  %i.ah = icmp ugt ptr %i.ag, %.03553
  br i1 %i.ah, label %.lr.ph61, label %.loopexit, !llvm.loop !59

.loopexit:                                        ; preds = %brelse.exit, %bb.h, %bb.c
  %.2 = phi ptr [ %.036, %bb.c ], [ %.036, %bb.h ], [ %i.ag, %brelse.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address) %3, ptr nofree noundef captures(address) %4, i32 noundef %5) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not2.i = icmp ult ptr %0, inttoptr (i64 4096 to ptr) ; 2 uses
  br i1 %.not2.i, label %ext4_handle_is_aborted.exit.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 4
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %.not4.i.i = icmp eq ptr %i.d, null
  br i1 %.not4.i.i, label %.critedge, label %ext4_handle_is_aborted.exit

ext4_handle_is_aborted.exit:                      ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8
  %.val.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val.i.i, 2
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %ext4_handle_is_aborted.exit.thread66, label %.critedge

ext4_handle_is_aborted.exit.thread66:             ; preds = %bb.a, %ext4_handle_is_aborted.exit
  %i.g = add i32 %5, -1                           ; 2 uses
  %.not51 = icmp eq i32 %5, 0
  br i1 %.not51, label %bb.q, label %bb.d

bb.d:                                             ; preds = %ext4_handle_is_aborted.exit.thread66
  %i.h = getelementptr i8, ptr %1, i64 40         ; 4 uses
  %i.i = getelementptr i8, ptr %4, i64 -4         ; 2 uses
  %.not5274 = icmp ult ptr %i.i, %3
  br i1 %.not5274, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = shl i64 %i.l, 30
  %i.n = ashr i64 %i.m, 32
  %i.o = getelementptr i8, ptr %0, i64 36
  %.not56 = icmp eq ptr %2, null
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.backedge
  %i.p = phi ptr [ %i.i, %.lr.ph ], [ %i.z, %.backedge ] ; 3 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 5 uses
  %.not53 = icmp eq i32 %i.q, 0
  br i1 %.not53, label %.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @ext4_inode_block_valid(ptr noundef %1, i64 noundef %i.r, i32 noundef 1) #10
  %.not54 = icmp eq i32 %i.s, 0
  br i1 %.not54, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_free_branches, i32 noundef 1023, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.9, i64 noundef %i.r, i32 noundef %i.g) #10
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.h, align 8
  %i.u = tail call ptr @ext4_sb_bread_nofail(ptr noundef %i.t, i64 noundef %i.r) #10 ; 6 uses
  %i.v = icmp ugt ptr %i.u, inttoptr (i64 -4096 to ptr)
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = trunc i64 %i.w to i32
  %i.y = sub i32 0, %i.x
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_free_branches, i32 noundef 1036, i64 noundef %i.r, i32 noundef %i.y, ptr noundef nonnull @.str.10) #10
  br label %.backedge

.backedge:                                        ; preds = %bb.n, %bb.p, %bb.o, %bb.i, %bb.e
  %i.z = getelementptr i8, ptr %i.p, i64 -4       ; 2 uses
  %.not52 = icmp ult ptr %i.z, %3
  br i1 %.not52, label %.critedge, label %bb.e, !llvm.loop !60

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %i.u, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %i.n
  tail call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %i.u, ptr noundef %i.ab, ptr noundef %i.ac, i32 noundef %i.g) #12, !srcloc !61
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %brelse.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__brelse(ptr noundef nonnull %i.u) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %bb.j, %bb.k
  br i1 %.not2.i, label %ext4_handle_is_aborted.exit63.thread71, label %bb.l

bb.l:                                             ; preds = %brelse.exit
  %i.ad = load i32, ptr %i.o, align 4
  %i.ae = and i32 %i.ad, 4
  %.not.i.i59 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i59, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  %.not4.i.i61 = icmp eq ptr %i.af, null
  br i1 %.not4.i.i61, label %.critedge, label %ext4_handle_is_aborted.exit63

ext4_handle_is_aborted.exit63:                    ; preds = %bb.m
  %i.ag = load ptr, ptr %i.af, align 8
  %.val.i.i62 = load i64, ptr %i.ag, align 8
  %i.ah = and i64 %.val.i.i62, 2
end_hunk_0
