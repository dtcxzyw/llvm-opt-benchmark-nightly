Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/journal?download=true
inline.NumInlined: 435
inline.NumDeleted: 164
begin_hunk_0_@jbd2_journal_set_features:bb.a

bb.m:                                             ; preds = %lock_buffer.exit
  %i.bi = getelementptr i8, ptr %.val.i, i64 40
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bj, 268435456
  %.not46 = icmp eq i32 %i.bk, 0
  br i1 %.not46, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr i8, ptr %.val.i, i64 80
  store i8 4, ptr %i.bl, align 4
  %i.bm = getelementptr i8, ptr %.val.i, i64 36   ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = and i32 %i.bn, -16777217
  store i32 %i.bo, ptr %i.bm, align 4
  %i.bp = getelementptr i8, ptr %.val.i, i64 48
  %i.bq = tail call i32 @crc32c(i32 noundef -1, ptr noundef %i.bp, i64 noundef 16) #19
  %i.br = getelementptr i8, ptr %0, i64 1352
  store i32 %i.bq, ptr %i.br, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %lock_buffer.exit
  %.not47 = icmp ne i64 %.038, 0
  %.phi.trans.insert = getelementptr i8, ptr %.val.i, i64 36
  %.pre = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  %i.bs = and i32 %.pre, 16777216
  %.not48 = icmp eq i32 %i.bs, 0
  %or.cond80 = select i1 %.not47, i1 %.not48, i1 false
  br i1 %or.cond80, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr i8, ptr %.val.i, i64 40   ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = and i32 %i.bu, -402653185
  store i32 %i.bv, ptr %i.bt, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %bb.p
  %i.bw = trunc nuw nsw i64 %.038 to i32
  %i.bx = shl nuw nsw i32 %i.bw, 24
  %i.by = getelementptr i8, ptr %.val.i, i64 36
  %i.bz = or i32 %.pre, %i.bx
  store i32 %i.bz, ptr %i.by, align 4
  %i.ca = trunc nuw nsw i64 %.039 to i32
  %i.cb = shl nuw nsw i32 %i.ca, 24
  %i.cc = getelementptr i8, ptr %.val.i, i64 40   ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = or i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %i.cc, align 4
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cf = getelementptr i8, ptr %.val, i64 4
  %.val.val.i.i = load i32, ptr %i.cf, align 4
  %.not.i.i58 = icmp eq i32 %.val.val.i.i, 50331648
  br i1 %.not.i.i58, label %jbd2_journal_has_csum_v2or3.exit.thread, label %jbd2_has_feature_csum2.exit.i

jbd2_has_feature_csum2.exit.i:                    ; preds = %._crit_edge
  %i.cg = getelementptr i8, ptr %.val, i64 40
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = and i32 %i.ch, 402653184
  %or.cond = icmp eq i32 %i.ci, 0
  br i1 %or.cond, label %jbd2_journal_has_csum_v2or3.exit.thread, label %jbd2_journal_has_csum_v2or3.exit.thread70

jbd2_journal_has_csum_v2or3.exit.thread70:        ; preds = %jbd2_has_feature_csum2.exit.i
  %i.cj = getelementptr i8, ptr %.val.i, i64 252  ; 2 uses
  store i32 0, ptr %i.cj, align 4
  %i.ck = tail call i32 @crc32c(i32 noundef -1, ptr noundef %.val.i, i64 noundef 1024) #19
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.ck)
  store i32 %i.cl, ptr %i.cj, align 4
  br label %jbd2_journal_has_csum_v2or3.exit.thread

jbd2_journal_has_csum_v2or3.exit.thread:          ; preds = %jbd2_has_feature_csum2.exit.i, %._crit_edge, %jbd2_journal_has_csum_v2or3.exit.thread70
  %i.cm = load ptr, ptr %i.bd, align 8
  tail call void @unlock_buffer(ptr noundef %i.cm) #19
  %.val.i60 = load ptr, ptr %i.c, align 8         ; 3 uses
  %i.cn = getelementptr i8, ptr %0, i64 928
  %.val6.i = load i32, ptr %i.cn, align 8         ; 4 uses
  %i.co = add i32 %.val6.i, -16                   ; 2 uses
  %i.cp = getelementptr i8, ptr %.val.i60, i64 4  ; 2 uses
  %.val.val.i.i.i = load i32, ptr %i.cp, align 4
  %.not.i.i.i = icmp eq i32 %.val.val.i.i.i, 50331648
  br i1 %.not.i.i.i, label %journal_revoke_records_per_block.exit.i, label %jbd2_has_feature_64bit.exit.i.i

jbd2_has_feature_64bit.exit.i.i:                  ; preds = %jbd2_journal_has_csum_v2or3.exit.thread
  %i.cq = getelementptr i8, ptr %.val.i60, i64 40
  %i.cr = load i32, ptr %i.cq, align 4
  %.fr11.i.i = freeze i32 %i.cr                   ; 3 uses
  %i.cs = and i32 %.fr11.i.i, 33554432
  %.not10.i.i = icmp eq i32 %i.cs, 0
  %spec.select.i.i = select i1 %.not10.i.i, i32 4, i32 8 ; 2 uses
  %i.ct = and i32 %.fr11.i.i, 134217728
  %.not.i7.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i7.i.i, label %jbd2_journal_has_csum_v2or3.exit.i.i, label %jbd2_journal_has_csum_v2or3.exit.thread5.i.i

jbd2_journal_has_csum_v2or3.exit.thread5.i.i:     ; preds = %jbd2_has_feature_64bit.exit.i.i
  %i.cu = add i32 %.val6.i, -20
  br label %journal_revoke_records_per_block.exit.i

jbd2_journal_has_csum_v2or3.exit.i.i:             ; preds = %jbd2_has_feature_64bit.exit.i.i
  %i.cv = and i32 %.fr11.i.i, 268435456
  %.not.i.i62 = icmp eq i32 %i.cv, 0
  %i.cw = add i32 %.val6.i, -20
  %spec.select8.i.i = select i1 %.not.i.i62, i32 %i.co, i32 %i.cw
  br label %journal_revoke_records_per_block.exit.i

journal_revoke_records_per_block.exit.i:          ; preds = %jbd2_journal_has_csum_v2or3.exit.i.i, %jbd2_journal_has_csum_v2or3.exit.thread5.i.i, %jbd2_journal_has_csum_v2or3.exit.thread
  %i.cx = phi i32 [ %spec.select.i.i, %jbd2_journal_has_csum_v2or3.exit.thread5.i.i ], [ %spec.select.i.i, %jbd2_journal_has_csum_v2or3.exit.i.i ], [ 4, %jbd2_journal_has_csum_v2or3.exit.thread ]
  %i.cy = phi i32 [ %i.cu, %jbd2_journal_has_csum_v2or3.exit.thread5.i.i ], [ %spec.select8.i.i, %jbd2_journal_has_csum_v2or3.exit.i.i ], [ %i.co, %jbd2_journal_has_csum_v2or3.exit.thread ]
  %i.cz = sdiv i32 %i.cy, %i.cx
  %i.da = getelementptr i8, ptr %0, i64 1076
  store i32 %i.cz, ptr %i.da, align 4
  %.val.val.i.i.i.i = load i32, ptr %i.cp, align 4
  %.not.i.i.i.i = icmp eq i32 %.val.val.i.i.i.i, 50331648
  br i1 %.not.i.i.i.i, label %jbd2_journal_init_transaction_limits.exit, label %jbd2_has_feature_csum2.exit.i.i.i

jbd2_has_feature_csum2.exit.i.i.i:                ; preds = %journal_revoke_records_per_block.exit.i
  %i.db = getelementptr i8, ptr %.val.i60, i64 40
  %i.dc = load i32, ptr %i.db, align 4
  %.fr20.i.i = freeze i32 %i.dc                   ; 4 uses
  %i.dd = and i32 %.fr20.i.i, 402653184
  %or.cond.i.i61 = icmp eq i32 %i.dd, 0
  %.in.v.i.i = select i1 %or.cond.i.i61, i32 -44, i32 -48 ; 2 uses
  %i.de = and i32 %.fr20.i.i, 268435456
  %.not.i12.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i12.i.i, label %jbd2_has_feature_csum2.exit.i13.i.i, label %jbd2_journal_init_transaction_limits.exit

jbd2_has_feature_csum2.exit.i13.i.i:              ; preds = %jbd2_has_feature_csum2.exit.i.i.i
  %i.df = and i32 %.fr20.i.i, 134217728
  %.not20.i.i.i = icmp eq i32 %i.df, 0
  %spec.select.i.i.i = select i1 %.not20.i.i.i, i64 12, i64 14 ; 2 uses
  %i.dg = and i32 %.fr20.i.i, 33554432
  %.not22.i.i.i = icmp eq i32 %i.dg, 0
  %i.dh = add nsw i64 %spec.select.i.i.i, -4
  %spec.select18.i.i.i = select i1 %.not22.i.i.i, i64 %i.dh, i64 %spec.select.i.i.i
  br label %jbd2_journal_init_transaction_limits.exit

jbd2_journal_init_transaction_limits.exit:        ; preds = %journal_revoke_records_per_block.exit.i, %jbd2_has_feature_csum2.exit.i.i.i, %jbd2_has_feature_csum2.exit.i13.i.i
  %.in.v.pn.i.i = phi i32 [ %.in.v.i.i, %jbd2_has_feature_csum2.exit.i.i.i ], [ %.in.v.i.i, %jbd2_has_feature_csum2.exit.i13.i.i ], [ -44, %journal_revoke_records_per_block.exit.i ]
  %.06.i.i.i = phi i64 [ 16, %jbd2_has_feature_csum2.exit.i.i.i ], [ %spec.select18.i.i.i, %jbd2_has_feature_csum2.exit.i13.i.i ], [ 8, %journal_revoke_records_per_block.exit.i ]
  %.in21.i.i = add i32 %.in.v.pn.i.i, %.val6.i
  %i.di = sext i32 %.in21.i.i to i64
  %i.dj = udiv i64 %i.di, %.06.i.i.i
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = getelementptr i8, ptr %0, i64 1012
  %.val8.i.i = load i32, ptr %i.dl, align 4
  %i.dm = getelementptr i8, ptr %0, i64 1188
  %.val9.i.i = load i32, ptr %i.dm, align 4
  %i.dn = sub i32 %.val8.i.i, %.val9.i.i
  %i.do = udiv i32 %i.dn, 3                       ; 2 uses
  %i.dp = add i32 %i.dk, -1
  %i.dq = add i32 %i.dp, %i.do
  %i.dr = sdiv i32 %i.dq, %i.dk
  %i.ds = add i32 %i.dr, 1
  %i.dt = getelementptr i8, ptr %0, i64 1080
  store i32 %i.ds, ptr %i.dt, align 8
  %i.du = getelementptr i8, ptr %0, i64 1072
  store i32 %i.do, ptr %i.du, align 8
  br label %jbd2_journal_check_used_features.exit

jbd2_journal_check_used_features.exit:            ; preds = %bb.b, %bb.e, %bb.a, %jbd2_journal_check_available_features.exit, %jbd2_journal_init_transaction_limits.exit, %bb.j
  %.0 = phi i32 [ 0, %jbd2_journal_check_available_features.exit ], [ 0, %bb.j ], [ 1, %jbd2_journal_init_transaction_limits.exit ], [ 1, %bb.a ], [ 1, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @jbd2_journal_load(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = tail call i32 @jbd2_journal_recover(ptr noundef %0) #19 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #23 ; 0 uses
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1336
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 944
  %i.f = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %i.d, ptr noundef %i.e) #23 ; 0 uses
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.g = load i64, ptr %0, align 8                ; 2 uses
  %i.h = and i64 %i.g, -3
  store i64 %i.h, ptr %0, align 8
  %i.i = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 5 uses
  %i.k = getelementptr i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = zext i32 %i.m to i64                     ; 8 uses
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = zext i32 %i.q to i64                     ; 6 uses
  %i.s = add nuw nsw i64 %i.n, 1023
  %i.t = icmp samesign ugt i64 %i.s, %i.r
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i64 noundef %i.n, i64 noundef %i.r) #23 ; 0 uses
  %i.v = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %journal_reset.exit.thread18, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__brelse(ptr noundef nonnull %i.w) #19
  br label %journal_reset.exit.thread18

journal_reset.exit.thread18:                      ; preds = %bb.f, %bb.g
  store ptr null, ptr %i.v, align 8
  br label %bb.u

bb.h:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %0, i64 880        ; 2 uses
  store i64 %i.n, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %0, i64 888        ; 2 uses
  store i64 %i.r, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %0, i64 856        ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 5 uses
  %.not.i = icmp eq i64 %i.aa, 0
  %i.ab = and i64 %i.g, 128
  %.not44.i = icmp eq i64 %i.ab, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not44.i
  br i1 %or.cond, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp uge i64 %i.aa, %i.n
  %.not45.i = icmp ult i64 %i.aa, %i.r
  %or.cond.i = and i1 %i.ac, %.not45.i
  br i1 %or.cond.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i64 noundef %i.aa) #23 ; 0 uses
  %i.ae = load i64, ptr %i.x, align 8             ; 3 uses
  store i64 %i.ae, ptr %i.z, align 8
  %.pre.i = load i64, ptr %i.y, align 8
  %.val.pre.i = load ptr, ptr %i.i, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store i64 %i.n, ptr %i.z, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.val.i = phi ptr [ %i.j, %bb.i ], [ %.val.pre.i, %bb.j ], [ %i.j, %bb.k ]
  %i.af = phi i64 [ %i.n, %bb.i ], [ %i.ae, %bb.j ], [ %i.n, %bb.k ]
  %i.ag = phi i64 [ %i.r, %bb.i ], [ %.pre.i, %bb.j ], [ %i.r, %bb.k ]
  %i.ah = phi i64 [ %i.aa, %bb.i ], [ %i.ae, %bb.j ], [ %i.n, %bb.k ]
  %i.ai = getelementptr i8, ptr %0, i64 864       ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = sub i64 %i.ag, %i.af
  %i.ak = getelementptr i8, ptr %0, i64 872
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %0, i64 1036
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = getelementptr i8, ptr %0, i64 1032      ; 2 uses
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = add i32 %i.am, -1                       ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 1040
  store i32 %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %0, i64 1044
  store i32 %i.ao, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %.val.i, i64 40   ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, -536870913
  store i32 %i.at, ptr %i.ar, align 4
  %i.au = getelementptr i8, ptr %i.j, i64 28
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %0, align 8
  %i.ay = or i64 %i.ax, 8
  store i64 %i.ay, ptr %0, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.az = getelementptr i8, ptr %0, i64 264       ; 2 uses
  tail call void @mutex_lock_io(ptr noundef %i.az) #19
  %i.ba = load i32, ptr %i.an, align 8
  %i.bb = load i64, ptr %i.ai, align 8
  %i.bc = tail call i32 @jbd2_journal_update_sb_log_tail(ptr noundef %0, i32 noundef %i.ba, i64 noundef %i.bb, i32 noundef 131072) #22 ; 0 uses
  tail call void @mutex_unlock(ptr noundef %i.az) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = getelementptr i8, ptr %0, i64 944
  %i.be = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kjournald2, ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.143, ptr noundef %i.bd) #19 ; 3 uses
  %i.bf = icmp ugt ptr %i.be, inttoptr (i64 -4096 to ptr)
  br i1 %i.bf, label %journal_reset.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = tail call i32 @wake_up_process(ptr noundef %i.be) #19 ; 0 uses
  %i.bh = tail call i32 @__SCT__might_resched() #19 ; 0 uses
  %i.bi = getelementptr i8, ptr %0, i64 1064      ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %bb.q, label %journal_reset.exit.thread

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !19
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #19
  %i.bk = getelementptr i8, ptr %0, i64 144       ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.bl = call i64 @prepare_to_wait_event(ptr noundef %i.bk, ptr noundef nonnull %1, i32 noundef 2) #19 ; 0 uses
  %i.bm = load ptr, ptr %i.bi, align 8
  %.not16.i.i = icmp eq ptr %i.bm, null
  br i1 %.not16.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @schedule() #19
  %i.bn = load ptr, ptr %i.bi, align 8
  %.not17.i.i = icmp eq ptr %i.bn, null
  br i1 %.not17.i.i, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @finish_wait(ptr noundef %i.bk, ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %journal_reset.exit.thread

journal_reset.exit:                               ; preds = %bb.o
  %i.bo = ptrtoint ptr %i.be to i64
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  %.not15 = icmp eq i32 %i.bp, 0
  br i1 %.not15, label %journal_reset.exit.thread, label %bb.u

bb.u:                                             ; preds = %journal_reset.exit.thread18, %journal_reset.exit
  %.0.i21 = phi i32 [ -22, %journal_reset.exit.thread18 ], [ %i.bp, %journal_reset.exit ]
  %i.bq = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #23 ; 0 uses
  br label %bb.v

journal_reset.exit.thread:                        ; preds = %bb.t, %bb.p, %journal_reset.exit
  %i.br = load i64, ptr %0, align 8
  %i.bs = or i64 %i.br, 16
  store i64 %i.bs, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %journal_reset.exit.thread, %bb.u, %bb.d, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ -117, %bb.d ], [ %.0.i21, %bb.u ], [ 0, %journal_reset.exit.thread ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @jbd2_journal_destroy(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 56         ; 6 uses
  tail call void @_raw_write_lock(ptr noundef %i.a) #19
  %i.b = load i64, ptr %0, align 8
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr i8, ptr %0, i64 1064       ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not14.i = icmp eq ptr %i.e, null
  br i1 %.not14.i, label %journal_kill_thread.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 168
  %i.g = getelementptr i8, ptr %0, i64 144        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  call void @_raw_write_unlock(ptr noundef %i.a) #19
  %i.h = call i32 @__wake_up(ptr noundef %i.f, i32 noundef 3, i32 noundef 1, ptr noundef null) #19 ; 0 uses
  %i.i = call i32 @__SCT__might_resched() #19     ; 0 uses
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !19
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.l = call i64 @prepare_to_wait_event(ptr noundef %i.g, ptr noundef nonnull %1, i32 noundef 2) #19 ; 0 uses
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @schedule() #19
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %select.unfold.i, label %bb.d

select.unfold.i:                                  ; preds = %bb.e, %bb.d
  call void @finish_wait(ptr noundef %i.g, ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f
end_hunk_0
