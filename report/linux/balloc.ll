Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/balloc?download=true
inline.NumInlined: 233
inline.NumDeleted: 60
begin_hunk_0_@ext4_new_meta_blocks:bb.a

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %3, ptr %i.d, align 8
  %i.e = call i64 @ext4_mb_new_blocks(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %5) #14
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %4, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %3, ptr %i.i, align 8
  %i.j = call i64 @ext4_mb_new_blocks(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %5) #14
  %i.k = load i32, ptr %i.h, align 8
  %i.l = zext i32 %i.k to i64
  store i64 %i.l, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.m = phi i64 [ %i.e, %.thread ], [ %i.j, %bb.b ]
  %i.n = phi ptr [ %i.c, %.thread ], [ %i.h, %bb.b ]
  %i.o = load i32, ptr %5, align 4
  %.not13 = icmp ne i32 %i.o, 0
  %i.p = and i32 %3, 1024
  %.not14 = icmp eq i32 %i.p, 0
  %or.cond = or i1 %.not14, %.not13
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.n, align 8
  %i.r = getelementptr i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 864
  %.val = load ptr, ptr %i.t, align 32
  %i.u = getelementptr i8, ptr %.val, i64 84
  %i.v = load i32, ptr %i.u, align 4
  %i.w = shl i32 %i.q, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %1, i64 134
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = shl i64 %i.x, %i.aa
  %i.ac = call i32 @__dquot_alloc_space(ptr noundef %1, i64 noundef %i.ab, i32 noundef 5) #14 ; 0 uses
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 16) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i64 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ext4_mb_new_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @ext4_count_free_clusters(ptr noundef %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864        ; 3 uses
  %.val27 = load ptr, ptr %i.a, align 32
  %i.b = getelementptr i8, ptr %.val27, i64 64
  %.val27.val = load i32, ptr %i.b, align 64      ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !10
  %.not35 = icmp eq i32 %.val27.val, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %.val27.val to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.02332 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1, %bb.e ] ; 3 uses
  %i.c = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.d = tail call ptr @ext4_get_group_desc(ptr noundef %0, i32 noundef %i.c, ptr noundef null) #13 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.val = load ptr, ptr %i.a, align 32            ; 4 uses
  %i.e = getelementptr i8, ptr %.val, i64 712
  %i.f = load ptr, ptr %i.e, align 8
  %.not25 = icmp eq ptr %i.f, null
  br i1 %.not25, label %ext4_get_group_info.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.val, i64 64
  %i.h = load i32, ptr %i.g, align 64
  %i.i = zext i32 %i.h to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.i
  br i1 %.not.i, label %ext4_get_group_info.exit, label %ext4_get_group_info.exit.thread, !prof !11

ext4_get_group_info.exit:                         ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.val, i64 176
  %i.k = load i32, ptr %i.j, align 16
  %i.l = lshr i32 %i.c, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr i8, ptr %.val, i64 56
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 4294967295
  %i.q = and i64 %i.p, %indvars.iv
  tail call void @__rcu_read_lock() #14
  %.val.i = load ptr, ptr %i.a, align 32
  %i.r = getelementptr i8, ptr %.val.i, i64 712
  %i.s = load volatile ptr, ptr %i.r, align 8
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.m
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @__rcu_read_unlock() #14
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %i.q
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.w, null
  br i1 %.not26, label %ext4_get_group_info.exit.thread, label %bb.d

bb.d:                                             ; preds = %ext4_get_group_info.exit
  %i.x = load volatile i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 4
  %.not30 = icmp eq i64 %i.y, 0
  br i1 %.not30, label %ext4_get_group_info.exit.thread, label %bb.e

ext4_get_group_info.exit.thread:                  ; preds = %bb.c, %bb.b, %bb.d, %ext4_get_group_info.exit
  %i.z = tail call i32 @ext4_free_group_clusters(ptr noundef %0, ptr noundef nonnull %i.d) #14
  %i.aa = zext i32 %i.z to i64
  %i.ab = add i64 %.02332, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ext4_get_group_info.exit.thread, %.lr.ph
  %.1 = phi i64 [ %.02332, %.lr.ph ], [ %i.ab, %ext4_get_group_info.exit.thread ], [ %.02332, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.023.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.e ]
  ret i64 %.023.lcssa
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_free_group_clusters(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @ext4_bg_has_super(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864
  %.val = load ptr, ptr %i.a, align 32
  %i.b = getelementptr i8, ptr %.val, i64 104
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %test_root.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 92
  %.val18.val.val = load i32, ptr %i.e, align 4
  %i.f = and i32 %.val18.val.val, 512
  %.not43 = icmp eq i32 %i.f, 0
  br i1 %.not43, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 588
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %1, %i.h
  br i1 %i.i, label %test_root.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.c, i64 592
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %1, %i.k
  %spec.select = zext i1 %i.l to i32
  br label %test_root.exit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %1, 1
  br i1 %i.m, label %test_root.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.c, i64 100
  %.val19.val.val = load i32, ptr %i.n, align 4
  %i.o = trunc i32 %.val19.val.val to i1
  br i1 %i.o, label %bb.g, label %test_root.exit

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %1, 1
  %.not = icmp eq i32 %i.p, 0
  %i.q = icmp ult i32 %1, 3
  %or.cond = or i1 %i.q, %.not
  br i1 %or.cond, label %test_root.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.0911.i = phi i32 [ %i.t, %bb.h ], [ %1, %bb.g ] ; 4 uses
  %i.r = icmp eq i32 %.0911.i, 3
  br i1 %i.r, label %test_root.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.s = urem i32 %.0911.i, 3
  %.not.i = icmp ne i32 %i.s, 0
  %i.t = udiv i32 %.0911.i, 3
  %i.u = icmp ult i32 %.0911.i, 9
  %or.cond38 = or i1 %i.u, %.not.i
  br i1 %or.cond38, label %bb.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp ult i32 %1, 5
  br i1 %i.v, label %test_root.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %bb.i, %bb.j
  %.0911.i21 = phi i32 [ %i.y, %bb.j ], [ %1, %bb.i ] ; 4 uses
  %i.w = icmp eq i32 %.0911.i21, 5
  br i1 %i.w, label %test_root.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i20
  %i.x = urem i32 %.0911.i21, 5
  %.not.i22 = icmp ne i32 %i.x, 0
  %i.y = udiv i32 %.0911.i21, 5
  %i.z = icmp ult i32 %.0911.i21, 25
  %or.cond40 = or i1 %i.z, %.not.i22
  br i1 %or.cond40, label %bb.k, label %.lr.ph.i20

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp ult i32 %1, 7
  br i1 %i.aa, label %test_root.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.k, %bb.l
  %.0911.i26 = phi i32 [ %i.ad, %bb.l ], [ %1, %bb.k ] ; 4 uses
  %i.ab = icmp eq i32 %.0911.i26, 7
  br i1 %i.ab, label %test_root.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i25
  %i.ac = urem i32 %.0911.i26, 7
  %.not.i27 = icmp ne i32 %i.ac, 0
  %i.ad = udiv i32 %.0911.i26, 7
  %i.ae = icmp ult i32 %.0911.i26, 49
  %or.cond42 = or i1 %i.ae, %.not.i27
  br i1 %or.cond42, label %test_root.exit, label %.lr.ph.i25

test_root.exit:                                   ; preds = %.lr.ph.i, %.lr.ph.i20, %.lr.ph.i25, %bb.l, %bb.i, %bb.k, %bb.d, %bb.g, %bb.e, %bb.f, %bb.c, %bb.a
  %.0 = phi i32 [ 1, %bb.e ], [ 1, %bb.a ], [ 1, %.lr.ph.i20 ], [ 1, %bb.c ], [ 0, %bb.g ], [ 1, %.lr.ph.i25 ], [ %spec.select, %bb.d ], [ 1, %bb.f ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 1, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i64 @ext4_bg_num_gdb(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864
  %.val10 = load ptr, ptr %i.a, align 32          ; 3 uses
  %i.b = getelementptr i8, ptr %.val10, i64 104
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 260
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr i8, ptr %.val10, i64 56
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr i8, ptr %i.c, i64 96
  %.val11.val.val = load i32, ptr %i.h, align 8
  %i.i = and i32 %.val11.val.val, 16
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %1 to i64                       ; 3 uses
  %i.k = udiv i64 %i.j, %i.g
  %i.l = urem i64 %i.j, %i.g
  %i.m = zext i32 %i.e to i64
  %i.n = icmp samesign ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = icmp eq i32 %1, 0
  br i1 %i.o, label %ext4_bg_has_super.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.c, i64 92
  %.val18.val.val.i.i = load i32, ptr %i.p, align 4
  %i.q = and i32 %.val18.val.val.i.i, 512
  %.not43.i.i = icmp eq i32 %i.q, 0
  br i1 %.not43.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.c, i64 588
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %1, %i.s
  br i1 %i.t, label %ext4_bg_has_super.exit.thread.i, label %ext4_bg_has_super.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %1, 1
  br i1 %i.u, label %ext4_bg_has_super.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.c, i64 100
  %.val19.val.val.i.i = load i32, ptr %i.v, align 4
  %i.w = trunc i32 %.val19.val.val.i.i to i1
  br i1 %i.w, label %bb.h, label %ext4_bg_has_super.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.x = and i32 %1, 1
  %.not.i.i = icmp eq i32 %i.x, 0
  %i.y = icmp ult i32 %1, 3
  %or.cond.i.i = or i1 %i.y, %.not.i.i
  br i1 %or.cond.i.i, label %ext4_bg_num_gdb_nometa.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.0911.i.i.i = phi i32 [ %i.ab, %bb.i ], [ %1, %bb.h ] ; 4 uses
  %i.z = icmp eq i32 %.0911.i.i.i, 3
  br i1 %i.z, label %ext4_bg_has_super.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = urem i32 %.0911.i.i.i, 3
  %.not.i.i.i = icmp ne i32 %i.aa, 0
  %i.ab = udiv i32 %.0911.i.i.i, 3
  %i.ac = icmp ult i32 %.0911.i.i.i, 9
  %or.cond38.i.i = or i1 %i.ac, %.not.i.i.i
  br i1 %or.cond38.i.i, label %bb.j, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp ult i32 %1, 5
  br i1 %i.ad, label %ext4_bg_num_gdb_nometa.exit, label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %bb.j, %bb.k
  %.0911.i21.i.i = phi i32 [ %i.ag, %bb.k ], [ %1, %bb.j ] ; 4 uses
  %i.ae = icmp eq i32 %.0911.i21.i.i, 5
  br i1 %i.ae, label %ext4_bg_has_super.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i20.i.i
  %i.af = urem i32 %.0911.i21.i.i, 5
  %.not.i22.i.i = icmp ne i32 %i.af, 0
  %i.ag = udiv i32 %.0911.i21.i.i, 5
  %i.ah = icmp ult i32 %.0911.i21.i.i, 25
  %or.cond40.i.i = or i1 %i.ah, %.not.i22.i.i
  br i1 %or.cond40.i.i, label %bb.l, label %.lr.ph.i20.i.i

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp ult i32 %1, 7
  br i1 %i.ai, label %ext4_bg_num_gdb_nometa.exit, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %bb.l, %bb.m
  %.0911.i26.i.i = phi i32 [ %i.al, %bb.m ], [ %1, %bb.l ] ; 4 uses
  %i.aj = icmp eq i32 %.0911.i26.i.i, 7
  br i1 %i.aj, label %ext4_bg_has_super.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i25.i.i
  %i.ak = urem i32 %.0911.i26.i.i, 7
  %.not.i27.i.i = icmp ne i32 %i.ak, 0
  %i.al = udiv i32 %.0911.i26.i.i, 7
  %i.am = icmp ult i32 %.0911.i26.i.i, 49
  %or.cond42.i.i = or i1 %i.am, %.not.i27.i.i
  br i1 %or.cond42.i.i, label %ext4_bg_num_gdb_nometa.exit, label %.lr.ph.i25.i.i

ext4_bg_has_super.exit.i:                         ; preds = %bb.e
  %i.an = getelementptr i8, ptr %i.c, i64 592
  %i.ao = load i32, ptr %i.an, align 8
  %.not.i = icmp eq i32 %1, %i.ao
  br i1 %.not.i, label %ext4_bg_has_super.exit.thread.i, label %ext4_bg_num_gdb_nometa.exit

ext4_bg_has_super.exit.thread.i:                  ; preds = %.lr.ph.i.i.i, %.lr.ph.i20.i.i, %.lr.ph.i25.i.i, %ext4_bg_has_super.exit.i, %bb.g, %bb.f, %bb.e, %bb.c
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %ext4_bg_has_super.exit.thread.i
  %i.ap = zext i32 %i.e to i64
  br label %ext4_bg_num_gdb_nometa.exit

bb.o:                                             ; preds = %ext4_bg_has_super.exit.thread.i
  %i.aq = getelementptr i8, ptr %.val10, i64 48
  %i.ar = load i64, ptr %i.aq, align 16
  br label %ext4_bg_num_gdb_nometa.exit

bb.p:                                             ; preds = %bb.b
  %i.as = sub nuw nsw i64 %i.j, %i.l              ; 2 uses
  %i.at = trunc nuw i64 %i.as to i32              ; 2 uses
  %i.au = add i64 %i.as, %i.g
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %i.av, -1
  %i.ax = icmp eq i32 %1, %i.at
  %i.ay = add i32 %i.at, 1
  %i.az = icmp eq i32 %1, %i.ay
  %or.cond.i = or i1 %i.ax, %i.az
  %i.ba = icmp eq i32 %1, %i.aw
  %or.cond15.i = select i1 %or.cond.i, i1 true, i1 %i.ba
  %.0.i14 = zext i1 %or.cond15.i to i64
  br label %ext4_bg_num_gdb_nometa.exit

ext4_bg_num_gdb_nometa.exit:                      ; preds = %bb.m, %bb.o, %bb.n, %ext4_bg_has_super.exit.i, %bb.l, %bb.j, %bb.h, %bb.p
  %.0 = phi i64 [ %.0.i14, %bb.p ], [ %i.ap, %bb.n ], [ %i.ar, %bb.o ], [ 0, %ext4_bg_has_super.exit.i ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.m ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i32 @ext4_num_base_meta_blocks(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864
  %.val = load ptr, ptr %i.a, align 32            ; 3 uses
  %i.b = getelementptr i8, ptr %.val, i64 104
  %i.c = load ptr, ptr %i.b, align 8              ; 12 uses
  %i.d = icmp eq i32 %1, 0                        ; 2 uses
  br i1 %i.d, label %ext4_bg_has_super.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 92
  %.val18.val.val.i = load i32, ptr %i.e, align 4
  %i.f = and i32 %.val18.val.val.i, 512
  %.not43.i = icmp eq i32 %i.f, 0
  br i1 %.not43.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 588
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %1, %i.h
  br i1 %i.i, label %ext4_bg_has_super.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.c, i64 592
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %1, %i.k
  %spec.select.i = zext i1 %i.l to i32
  br label %ext4_bg_has_super.exit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %1, 1
  br i1 %i.m, label %ext4_bg_has_super.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.c, i64 100
  %.val19.val.val.i = load i32, ptr %i.n, align 4
  %i.o = trunc i32 %.val19.val.val.i to i1
  br i1 %i.o, label %bb.g, label %ext4_bg_has_super.exit

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %1, 1
  %.not.i = icmp eq i32 %i.p, 0
  %i.q = icmp ult i32 %1, 3
  %or.cond.i = or i1 %i.q, %.not.i
  br i1 %or.cond.i, label %ext4_bg_has_super.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.0911.i.i = phi i32 [ %i.t, %bb.h ], [ %1, %bb.g ] ; 4 uses
  %i.r = icmp eq i32 %.0911.i.i, 3
  br i1 %i.r, label %ext4_bg_has_super.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.s = urem i32 %.0911.i.i, 3
  %.not.i.i = icmp ne i32 %i.s, 0
  %i.t = udiv i32 %.0911.i.i, 3
  %i.u = icmp ult i32 %.0911.i.i, 9
  %or.cond38.i = or i1 %i.u, %.not.i.i
  br i1 %or.cond38.i, label %bb.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp ult i32 %1, 5
  br i1 %i.v, label %ext4_bg_has_super.exit, label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %bb.i, %bb.j
  %.0911.i21.i = phi i32 [ %i.y, %bb.j ], [ %1, %bb.i ] ; 4 uses
  %i.w = icmp eq i32 %.0911.i21.i, 5
  br i1 %i.w, label %ext4_bg_has_super.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i20.i
  %i.x = urem i32 %.0911.i21.i, 5
  %.not.i22.i = icmp ne i32 %i.x, 0
  %i.y = udiv i32 %.0911.i21.i, 5
  %i.z = icmp ult i32 %.0911.i21.i, 25
  %or.cond40.i = or i1 %i.z, %.not.i22.i
  br i1 %or.cond40.i, label %bb.k, label %.lr.ph.i20.i

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp ult i32 %1, 7
  br i1 %i.aa, label %ext4_bg_has_super.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %bb.k, %bb.l
  %.0911.i26.i = phi i32 [ %i.ad, %bb.l ], [ %1, %bb.k ] ; 4 uses
  %i.ab = icmp eq i32 %.0911.i26.i, 7
  br i1 %i.ab, label %ext4_bg_has_super.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i25.i
  %i.ac = urem i32 %.0911.i26.i, 7
  %.not.i27.i = icmp ne i32 %i.ac, 0
  %i.ad = udiv i32 %.0911.i26.i, 7
  %i.ae = icmp ult i32 %.0911.i26.i, 49
  %or.cond42.i = or i1 %i.ae, %.not.i27.i
  br i1 %or.cond42.i, label %ext4_bg_has_super.exit, label %.lr.ph.i25.i

ext4_bg_has_super.exit:                           ; preds = %.lr.ph.i.i, %.lr.ph.i20.i, %.lr.ph.i25.i, %bb.l, %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.i, %bb.k
  %.0.i = phi i32 [ 1, %bb.e ], [ 1, %bb.a ], [ 1, %.lr.ph.i20.i ], [ 1, %bb.c ], [ 0, %bb.g ], [ 1, %.lr.ph.i25.i ], [ %spec.select.i, %bb.d ], [ 1, %bb.f ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %i.af = getelementptr i8, ptr %i.c, i64 96
  %.val17.val.val = load i32, ptr %i.af, align 8
  %i.ag = and i32 %.val17.val.val, 16
  %.not25 = icmp eq i32 %i.ag, 0                  ; 2 uses
  br i1 %.not25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %ext4_bg_has_super.exit
  %i.ah = zext i32 %1 to i64                      ; 3 uses
  %i.ai = getelementptr i8, ptr %i.c, i64 260
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %.val, i64 56
  %i.am = load i64, ptr %i.al, align 8            ; 3 uses
  %i.an = mul i64 %i.am, %i.ak
  %i.ao = icmp ugt i64 %i.an, %i.ah
  br i1 %i.ao, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m, %ext4_bg_has_super.exit
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.ac, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.d, label %ext4_bg_has_super.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr i8, ptr %i.c, i64 92
  %.val18.val.val.i.i = load i32, ptr %i.ap, align 4
  %i.aq = and i32 %.val18.val.val.i.i, 512
  %.not43.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not43.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr i8, ptr %i.c, i64 588
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp eq i32 %1, %i.as
  br i1 %i.at, label %ext4_bg_has_super.exit.thread.i, label %ext4_bg_has_super.exit.i

bb.r:                                             ; preds = %bb.p
  %i.au = icmp eq i32 %1, 1
  br i1 %i.au, label %ext4_bg_has_super.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr i8, ptr %i.c, i64 100
  %.val19.val.val.i.i = load i32, ptr %i.av, align 4
  %i.aw = trunc i32 %.val19.val.val.i.i to i1
  br i1 %i.aw, label %bb.t, label %ext4_bg_has_super.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.ax = and i32 %1, 1
  %.not.i.i22 = icmp eq i32 %i.ax, 0
  %i.ay = icmp ult i32 %1, 3
  %or.cond.i.i = or i1 %i.ay, %.not.i.i22
  br i1 %or.cond.i.i, label %ext4_bg_num_gdb_nometa.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %bb.u
  %.0911.i.i.i = phi i32 [ %i.bb, %bb.u ], [ %1, %bb.t ] ; 4 uses
  %i.az = icmp eq i32 %.0911.i.i.i, 3
  br i1 %i.az, label %ext4_bg_has_super.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = urem i32 %.0911.i.i.i, 3
  %.not.i.i.i = icmp ne i32 %i.ba, 0
  %i.bb = udiv i32 %.0911.i.i.i, 3
  %i.bc = icmp ult i32 %.0911.i.i.i, 9
  %or.cond38.i.i = or i1 %i.bc, %.not.i.i.i
  br i1 %or.cond38.i.i, label %bb.v, label %.lr.ph.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bd = icmp ult i32 %1, 5
  br i1 %i.bd, label %ext4_bg_num_gdb_nometa.exit, label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %bb.v, %bb.w
  %.0911.i21.i.i = phi i32 [ %i.bg, %bb.w ], [ %1, %bb.v ] ; 4 uses
  %i.be = icmp eq i32 %.0911.i21.i.i, 5
  br i1 %i.be, label %ext4_bg_has_super.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i20.i.i
  %i.bf = urem i32 %.0911.i21.i.i, 5
  %.not.i22.i.i = icmp ne i32 %i.bf, 0
  %i.bg = udiv i32 %.0911.i21.i.i, 5
  %i.bh = icmp ult i32 %.0911.i21.i.i, 25
  %or.cond40.i.i = or i1 %i.bh, %.not.i22.i.i
  br i1 %or.cond40.i.i, label %bb.x, label %.lr.ph.i20.i.i

bb.x:                                             ; preds = %bb.w
  %i.bi = icmp ult i32 %1, 7
  br i1 %i.bi, label %ext4_bg_num_gdb_nometa.exit, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %bb.x, %bb.y
  %.0911.i26.i.i = phi i32 [ %i.bl, %bb.y ], [ %1, %bb.x ] ; 4 uses
  %i.bj = icmp eq i32 %.0911.i26.i.i, 7
  br i1 %i.bj, label %ext4_bg_has_super.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i25.i.i
  %i.bk = urem i32 %.0911.i26.i.i, 7
  %.not.i27.i.i = icmp ne i32 %i.bk, 0
  %i.bl = udiv i32 %.0911.i26.i.i, 7
  %i.bm = icmp ult i32 %.0911.i26.i.i, 49
  %or.cond42.i.i = or i1 %i.bm, %.not.i27.i.i
  br i1 %or.cond42.i.i, label %ext4_bg_num_gdb_nometa.exit, label %.lr.ph.i25.i.i

ext4_bg_has_super.exit.i:                         ; preds = %bb.q
  %i.bn = getelementptr i8, ptr %i.c, i64 592
  %i.bo = load i32, ptr %i.bn, align 8
  %.not.i20 = icmp eq i32 %1, %i.bo
  br i1 %.not.i20, label %ext4_bg_has_super.exit.thread.i, label %ext4_bg_num_gdb_nometa.exit

ext4_bg_has_super.exit.thread.i:                  ; preds = %.lr.ph.i.i.i, %.lr.ph.i20.i.i, %.lr.ph.i25.i.i, %ext4_bg_has_super.exit.i, %bb.s, %bb.r, %bb.q, %bb.o
  br i1 %.not25, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %ext4_bg_has_super.exit.thread.i
  %i.bp = getelementptr i8, ptr %i.c, i64 260
  %i.bq = load i32, ptr %i.bp, align 4
  br label %ext4_bg_num_gdb_nometa.exit

bb.aa:                                            ; preds = %ext4_bg_has_super.exit.thread.i
  %i.br = getelementptr i8, ptr %.val, i64 48
  %i.bs = load i64, ptr %i.br, align 16
  %i.bt = trunc i64 %i.bs to i32
  br label %ext4_bg_num_gdb_nometa.exit

ext4_bg_num_gdb_nometa.exit:                      ; preds = %bb.y, %bb.t, %bb.v, %bb.x, %ext4_bg_has_super.exit.i, %bb.z, %bb.aa
  %.0.i21 = phi i32 [ %i.bq, %bb.z ], [ %i.bt, %bb.aa ], [ 0, %ext4_bg_has_super.exit.i ], [ 0, %bb.x ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.y ]
  %i.bu = add i32 %.0.i21, 1
  %i.bv = getelementptr i8, ptr %i.c, i64 206
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = zext i16 %i.bw to i32
  %i.by = add i32 %i.bu, %i.bx
  br label %bb.ac

bb.ab:                                            ; preds = %bb.m
  %i.bz = urem i64 %i.ah, %i.am
  %i.ca = sub nuw nsw i64 %i.ah, %i.bz            ; 2 uses
  %i.cb = trunc nuw i64 %i.ca to i32              ; 2 uses
  %i.cc = add i64 %i.ca, %i.am
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = add i32 %i.cd, -1
  %i.cf = icmp eq i32 %1, %i.cb
  %i.cg = add i32 %i.cb, 1
  %i.ch = icmp eq i32 %1, %i.cg
  %or.cond.i23 = or i1 %i.cf, %i.ch
  %i.ci = icmp eq i32 %1, %i.ce
  %or.cond15.i = select i1 %or.cond.i23, i1 true, i1 %i.ci
  %i.cj = zext i1 %or.cond15.i to i32
  %i.ck = add nuw nsw i32 %.0.i, %i.cj
  br label %bb.ac

bb.ac:                                            ; preds = %bb.n, %ext4_bg_num_gdb_nometa.exit, %bb.ab
  %.0 = phi i32 [ %i.by, %ext4_bg_num_gdb_nometa.exit ], [ 0, %bb.n ], [ %i.ck, %bb.ab ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i64 @ext4_inode_to_goal_block(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 864
  %.val31 = load ptr, ptr %i.c, align 32          ; 4 uses
  %i.d = getelementptr i8, ptr %.val31, i64 1180
  %.val34 = load i32, ptr %i.d, align 4
  %i.e = shl nuw i32 1, %.val34                   ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 -160
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp sgt i32 %i.e, 3
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i32 0, %i.e
  %i.j = and i32 %i.g, %i.i
  %i.k = load i16, ptr %0, align 8
  %i.l = icmp slt i16 %i.k, -28672
  %i.m = zext i1 %i.l to i32
  %spec.select = add nuw i32 %i.j, %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi i32 [ %i.g, %bb.a ], [ %spec.select, %bb.b ]
  %i.n = getelementptr i8, ptr %.val31, i64 16
  %.val32.val = load i64, ptr %i.n, align 16      ; 3 uses
  %i.o = getelementptr i8, ptr %.val31, i64 104
  %.val32.val33 = load ptr, ptr %i.o, align 8     ; 4 uses
  %i.p = getelementptr i8, ptr %.val32.val33, i64 20
  %.val32.val33.val = load i32, ptr %i.p, align 4
  %i.q = zext i32 %.023 to i64
  %i.r = mul i64 %.val32.val, %i.q
  %i.s = zext i32 %.val32.val33.val to i64
  %i.t = add i64 %i.r, %i.s                       ; 4 uses
  %i.u = getelementptr i8, ptr %.val32.val33, i64 96
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 128
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %ext4_blocks_count.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %.val32.val33, i64 336
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw i64 %i.z, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.aa, %bb.d ], [ 0, %bb.c ]
  %i.ac = getelementptr i8, ptr %.val31, i64 120
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 134217728
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %ext4_blocks_count.exit
  %i.af = getelementptr i8, ptr %.val32.val33, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = zext i32 %i.ag to i64
  %i.ai = or disjoint i64 %i.ab, %i.ah
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  %i.ak = add i64 %i.t, %.val32.val
  %.not27 = icmp ugt i64 %i.ak, %i.aj
  %i.al = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #16
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr i8, ptr %i.am, i64 1528
  %.val35 = load i32, ptr %i.an, align 8
  %i.ao = srem i32 %.val35, 16
  %i.ap = sub i64 %i.aj, %i.t
  %.sink = select i1 %.not27, i64 %i.ap, i64 %.val32.val
  %i.aq = lshr i64 %.sink, 4
  %i.ar = trunc i64 %i.aq to i32
  %i.as = mul i32 %i.ao, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %i.t, %i.at
  br label %bb.f

bb.f:                                             ; preds = %ext4_blocks_count.exit, %bb.e
  %.024 = phi i64 [ %i.au, %bb.e ], [ %i.t, %ext4_blocks_count.exit ]
  ret i64 %.024
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @bdev_getblk(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_group_desc_csum_verify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ext4_mark_bitmap_end(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_read_block_bitmap_load(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ext4_block_bitmap_csum_verify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @ext4_valid_block_bitmap(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864
  %.val66 = load ptr, ptr %i.a, align 32          ; 5 uses
  %i.b = getelementptr i8, ptr %.val66, i64 24
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = getelementptr i8, ptr %.val66, i64 104
  %.val69.val = load ptr, ptr %i.e, align 8       ; 2 uses
  %i.f = getelementptr i8, ptr %.val69.val, i64 96
  %.val69.val.val = load i32, ptr %i.f, align 8
  %i.g = and i32 %.val69.val.val, 512
end_hunk_0
