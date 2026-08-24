Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/journal?download=true
inline.NumInlined: 435
inline.NumDeleted: 164
begin_hunk_0_@jbd2_journal_bmap:bb.a
  %i.f = load i64, ptr %i.a, align 8
  store i64 %i.f, ptr %2, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 1024
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.h, null
  br i1 %.not22, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 @bmap(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #19 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0                      ; 2 uses
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 944
  %i.n = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.jbd2_journal_bmap, i64 noundef %1, ptr noundef %i.m) #23 ; 0 uses
  %narrow = select i1 %i.j, i32 -117, i32 %i.i
  call void @jbd2_journal_abort(ptr noundef %0, i32 noundef %narrow) #22
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  store i64 %i.k, ptr %2, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store i64 %1, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ], [ 0, %bb.g ], [ -5, %bb.f ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @jbd2_fc_get_buf(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  store ptr null, ptr %1, align 8
  %i.b = getelementptr i8, ptr %0, i64 904        ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 896
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, %i.c
  %i.g = getelementptr i8, ptr %0, i64 912
  %i.h = load i64, ptr %i.g, align 8
  %.not = icmp ult i64 %i.f, %i.h
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %sext = shl i64 %i.c, 32
  %i.i = ashr exact i64 %sext, 32                 ; 2 uses
  %i.j = add i64 %i.i, %i.e                       ; 3 uses
  %i.k = add i64 %i.c, 1
  store i64 %i.k, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.j, ptr %i.a, align 8
  %i.l = getelementptr i8, ptr %0, i64 1376
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 %i.m(ptr noundef %0, ptr noundef nonnull %i.a) #19, !inline_history !105 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %jbd2_journal_bmap.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %0, i64 1024
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.r, null
  br i1 %.not22.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call i32 @bmap(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a) #19 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0                      ; 2 uses
  %i.u = load i64, ptr %i.a, align 8              ; 2 uses
  %i.v = icmp ne i64 %i.u, 0
  %or.cond.i = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %0, i64 944
  %i.x = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.jbd2_journal_bmap, i64 noundef %i.j, ptr noundef %i.w) #23 ; 0 uses
  %narrow.i = select i1 %i.t, i32 -117, i32 %i.s
  call void @jbd2_journal_abort(ptr noundef %0, i32 noundef %narrow.i) #22
  br label %jbd2_journal_bmap.exit

jbd2_journal_bmap.exit:                           ; preds = %bb.c, %bb.g
  %.0.i = phi i32 [ -5, %bb.g ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.j

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.e
  %.024.ph = phi i64 [ %i.j, %bb.e ], [ %i.p, %bb.d ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.y = getelementptr i8, ptr %0, i64 920
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 928
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.z, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 56
  %.val.i = load i32, ptr %i.ae, align 8
  %i.af = and i32 %.val.i, -32905
  %i.ag = or disjoint i32 %i.af, 32776
  %i.ah = call ptr @bdev_getblk(ptr noundef %i.z, i64 noundef %.024.ph, i32 noundef %i.ab, i32 noundef %i.ag) #19 ; 3 uses
  %.not23 = icmp eq ptr %i.ah, null
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %0, i64 1176
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %i.i
  store ptr %i.ah, ptr %i.ak, align 8
  store ptr %i.ah, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %jbd2_journal_bmap.exit, %bb.h, %bb.a, %bb.i
  %.0 = phi i32 [ %.0.i, %jbd2_journal_bmap.exit ], [ -22, %bb.a ], [ 0, %bb.i ], [ -12, %bb.h ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -5, 1) i32 @jbd2_fc_wait_bufs(ptr nofree noundef captures(none) %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 904        ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = sub i32 %i.c, %1                         ; 2 uses
  %.018 = add i32 %i.c, -1                        ; 2 uses
  %.not19 = icmp slt i32 %.018, %i.d
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1176       ; 2 uses
  br label %buffer_locked.exit.i

buffer_locked.exit.i:                             ; preds = %.lr.ph, %bb.d
  %.021 = phi i32 [ %.018, %.lr.ph ], [ %.0, %bb.d ] ; 3 uses
  %.0.in20 = phi i32 [ %i.c, %.lr.ph ], [ %.021, %bb.d ]
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %.021 to i64                    ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.j = tail call i32 @__SCT__might_resched() #19 ; 0 uses
  %i.k = load volatile i64, ptr %i.i, align 8
  %i.l = and i64 %i.k, 4
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %wait_on_buffer.exit, label %bb.b

bb.b:                                             ; preds = %buffer_locked.exit.i
  tail call void @__wait_on_buffer(ptr noundef %i.i) #19
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %bb.b, %buffer_locked.exit.i
  %i.m = tail call i8 asm sideeffect "testb $2,$1", "={@ccnz},*m,i,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.i, i32 1) #20, !srcloc !106 ; 2 uses
  %i.n = icmp ult i8 %i.m, 2
  tail call void @llvm.assume(i1 %i.n)
  %.not16 = icmp eq i8 %i.m, 0
  br i1 %.not16, label %bb.c, label %bb.d, !prof !36

bb.c:                                             ; preds = %wait_on_buffer.exit
  %i.o = sext i32 %.0.in20 to i64
  store i64 %i.o, ptr %i.a, align 8
  br label %.loopexit

bb.d:                                             ; preds = %wait_on_buffer.exit
  %i.p = getelementptr i8, ptr %i.i, i64 88       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p, ptr elementtype(i32) %i.p) #20, !srcloc !107
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.g
  store ptr null, ptr %i.r, align 8
  %.0 = add i32 %.021, -1                         ; 2 uses
  %.not = icmp slt i32 %.0, %i.d
  br i1 %.not, label %.loopexit, label %buffer_locked.exit.i, !llvm.loop !108

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %.015 = phi i32 [ -5, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.015
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @jbd2_fc_release_bufs(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 904
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr i8, ptr %0, i64 1176       ; 2 uses
  %.010 = add i32 %i.c, -1                        ; 2 uses
  %i.e = icmp sgt i32 %.010, -1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011 = phi i32 [ %.0, %bb.b ], [ %.010, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8
  %1 = zext nneg i32 %.011 to i64                 ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %1
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %i.h, i64 88       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, ptr elementtype(i32) %i.i) #20, !srcloc !107
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %1
  store ptr null, ptr %i.k, align 8
  %.0 = add nsw i32 %.011, -1
  %i.l = icmp sgt i32 %.011, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @bmap(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @jbd2_journal_get_descriptor_buffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !annotation !37
  %i.c = call i32 @jbd2_journal_next_log_block(ptr noundef %i.b, ptr noundef nonnull %i.a) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 920
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load i64, ptr %i.a, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 928      ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 56
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 56
  %.val.i = load i32, ptr %i.k, align 8
  %i.l = and i32 %.val.i, -32905
  %i.m = or disjoint i32 %i.l, 32776
  %i.n = tail call ptr @bdev_getblk(ptr noundef %i.e, i64 noundef %i.f, i32 noundef %i.h, i32 noundef %i.m) #19 ; 10 uses
  %.not20 = icmp eq ptr %i.n, null
  br i1 %.not20, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 140        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.o, ptr elementtype(i32) %i.o) #20, !srcloc !107
  %i.p = tail call i32 @__SCT__might_resched() #19 ; 0 uses
  %i.q = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.n, i64 range(i64 2, 24) 2, ptr nonnull elementtype(i64) %i.n) #20, !srcloc !75 ; 2 uses
  %i.r = icmp ult i8 %i.q, 2
  tail call void @llvm.assume(i1 %i.r)
  %.not.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__lock_buffer(ptr noundef nonnull %i.n) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr i8, ptr %i.n, i64 40       ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i32, ptr %i.g, align 8
  %i.v = sext i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 0, i64 %i.v, i1 false)
  %i.w = load ptr, ptr %i.s, align 8              ; 3 uses
  store i32 -1741079616, ptr %i.w, align 4
  %i.x = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.y = getelementptr i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %0, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = getelementptr i8, ptr %i.w, i64 8
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = load volatile i64, ptr %i.n, align 8
  %i.ae = and i64 %i.ad, 1
  %.not21 = icmp eq i64 %i.ae, 0
  br i1 %.not21, label %bb.f, label %set_buffer_uptodate.exit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.n, i32 1, ptr nonnull elementtype(i8) %i.n) #20, !srcloc !96
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %bb.e, %bb.f
  tail call void @unlock_buffer(ptr noundef nonnull %i.n) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %set_buffer_uptodate.exit
  %.0 = phi ptr [ null, %bb.a ], [ %i.n, %set_buffer_uptodate.exit ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @jbd2_descriptor_block_csum_set(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 4
  %.val.val.i.i = load i32, ptr %i.b, align 4
  %.not.i.i = icmp eq i32 %.val.val.i.i, 50331648
  br i1 %.not.i.i, label %jbd2_journal_has_csum_v2or3.exit.thread, label %jbd2_has_feature_csum2.exit.i

jbd2_has_feature_csum2.exit.i:                    ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val, i64 40
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 402653184
  %or.cond = icmp eq i32 %i.e, 0
  br i1 %or.cond, label %jbd2_journal_has_csum_v2or3.exit.thread, label %jbd2_journal_has_csum_v2or3.exit.thread9

jbd2_journal_has_csum_v2or3.exit.thread9:         ; preds = %jbd2_has_feature_csum2.exit.i
  %i.f = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 928        ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -4       ; 2 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %0, i64 1352
  %i.n = load i32, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = load i32, ptr %i.h, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = tail call i32 @crc32c(i32 noundef %i.n, ptr noundef %i.o, i64 noundef %i.q) #19
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.s, ptr %i.l, align 4
  br label %jbd2_journal_has_csum_v2or3.exit.thread

jbd2_journal_has_csum_v2or3.exit.thread:          ; preds = %jbd2_has_feature_csum2.exit.i, %bb.a, %jbd2_journal_has_csum_v2or3.exit.thread9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @jbd2_journal_get_log_tail(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  tail call void @_raw_read_lock(ptr noundef %i.a) #19
  %i.b = getelementptr i8, ptr %0, i64 1020       ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.b) #19
  %i.c = getelementptr i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  store i32 %i.f, ptr %1, align 4
  %i.g = getelementptr i8, ptr %i.d, i64 16
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not28 = icmp eq ptr %i.i, null
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  store i32 %i.k, ptr %1, align 4
  %i.l = getelementptr i8, ptr %i.i, i64 16
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.n, null
  %i.o = getelementptr i8, ptr %0, i64 856        ; 2 uses
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8
  store i32 %i.q, ptr %1, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %0, i64 1036
  %i.s = load i32, ptr %i.r, align 4
  store i32 %i.s, ptr %1, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.sink.in = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.g, %bb.b ]
  %.sink = load i64, ptr %.sink.in, align 8
  store i64 %.sink, ptr %2, align 8
  %i.t = load i32, ptr %1, align 4
  %i.u = getelementptr i8, ptr %0, i64 1032
  %i.v = load i32, ptr %i.u, align 8
  %i.w = sub i32 %i.t, %i.v
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  tail call void @_raw_spin_unlock(ptr noundef %i.b) #19
  tail call void @_raw_read_unlock(ptr noundef %i.a) #19
  ret i32 %i.y
}

end_hunk_0
