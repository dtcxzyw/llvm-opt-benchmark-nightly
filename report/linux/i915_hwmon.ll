inline.NumInlined: 84
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hwm_write:bb.a
  br i1 %.not.i.i.i, label %signal_pending.exit.i.i, label %.thread.i.i, !prof !27

signal_pending.exit.i.i:                          ; preds = %.lr.ph.i.i
  %i.u = load volatile i64, ptr %i.e, align 8
  %i.v = and i64 %i.u, 2
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %signal_pending.exit.i.i
  call void @mutex_unlock(ptr noundef %i.n) #7
  %i.w = load ptr, ptr %i.i, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.y) #7
  call void @schedule() #7
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call ptr @intel_runtime_pm_get(ptr noundef %i.ab) #7 ; 0 uses
  call void @mutex_lock(ptr noundef %i.n) #7
  call void @prepare_to_wait(ptr noundef %i.o, ptr noundef nonnull %5, i32 noundef 1) #7
  %i.ad = load i8, ptr %i.p, align 8, !range !25, !noundef !26
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i.i, label %._crit_edge.i.i

.thread.i.i:                                      ; preds = %signal_pending.exit.i.i, %.lr.ph.i.i
  call void @finish_wait(ptr noundef %i.o, ptr noundef nonnull %5) #7
  br label %hwm_power_max_write.exit.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  call void @finish_wait(ptr noundef %i.o, ptr noundef nonnull %5) #7
  %i.af = icmp eq i64 %4, 0
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ag = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.ah = getelementptr i8, ptr %i.b, i64 352     ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call i32 %i.ak(ptr noundef %i.ag, i32 %i.ai, i1 noundef zeroext true) #7, !inline_history !28
  %i.am = and i32 %i.al, -32769
  %i.an = getelementptr i8, ptr %i.ag, i64 176
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef %i.ag, i32 %i.ai, i32 noundef %i.am, i1 noundef zeroext true) #7, !inline_history !29
  %i.ap = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.aq = load i32, ptr %i.ah, align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 144
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i32 %i.as(ptr noundef %i.ap, i32 %i.aq, i1 noundef zeroext true) #7, !inline_history !30
  %i.au = and i32 %i.at, 32768
  %.not36.i.i = icmp eq i32 %i.au, 0
  %spec.select.i.i = select i1 %.not36.i.i, i32 0, i32 -19
  br label %hwm_power_max_write.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.av = getelementptr i8, ptr %i.b, i64 368
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl i64 %4, %i.ax
  %i.az = add i64 %i.ay, 500000
  %i.ba = udiv i64 %i.az, 1000000
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 32767
  %i.bd = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.be = getelementptr i8, ptr %i.b, i64 352
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bd, i64 144
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call i32 %i.bh(ptr noundef %i.bd, i32 %i.bf, i1 noundef zeroext true) #7, !inline_history !28
  %i.bj = and i32 %i.bi, -65536
  %i.bk = or disjoint i32 %i.bj, %i.bc
  %i.bl = or disjoint i32 %i.bk, 32768
  %i.bm = getelementptr i8, ptr %i.bd, i64 176
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef %i.bd, i32 %i.bf, i32 noundef %i.bl, i1 noundef zeroext true) #7, !inline_history !29
  br label %hwm_power_max_write.exit.i

hwm_power_max_write.exit.i:                       ; preds = %bb.f, %bb.e, %.thread.i.i
  %.1.i.i = phi i32 [ -4, %.thread.i.i ], [ 0, %bb.f ], [ %spec.select.i.i, %bb.e ]
  call void @mutex_unlock(ptr noundef %i.n) #7
  %i.bo = load ptr, ptr %i.i, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.bq) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %hwm_power_write.exit

bb.g:                                             ; preds = %bb.b
  %i.br = shl i64 %4, 6
  %i.bs = add i64 %i.br, 499968
  %i.bt = udiv i64 %i.bs, 1000000
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = getelementptr i8, ptr %.val, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 1840
  %i.ca = tail call i32 @snb_pcode_write_p(ptr noundef %i.bz, i32 noundef 124, i32 noundef 5, i32 noundef 0, i32 noundef %i.bu) #7
  br label %hwm_power_write.exit

bb.h:                                             ; preds = %bb.a
  %cond.i = icmp eq i32 %2, 5
  br i1 %cond.i, label %bb.i, label %hwm_power_write.exit

bb.i:                                             ; preds = %bb.h
  %i.cb = shl i64 %4, 6
  %i.cc = add i64 %i.cb, 496
  %i.cd = udiv i64 %i.cc, 1000
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = getelementptr i8, ptr %.val, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 1840
  %i.ck = tail call i32 @snb_pcode_write_p(ptr noundef %i.cj, i32 noundef 124, i32 noundef 5, i32 noundef 0, i32 noundef %i.ce) #7
  br label %hwm_power_write.exit

hwm_power_write.exit:                             ; preds = %bb.i, %bb.h, %bb.g, %hwm_power_max_write.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ -95, %bb.b ], [ -95, %bb.a ], [ %i.ca, %bb.g ], [ %.1.i.i, %hwm_power_max_write.exit.i ], [ %i.ck, %bb.i ], [ -95, %bb.h ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snb_pcode_read_p(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -95, 1) i32 @hwm_energy_read(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %bb.b, label %hwm_energy.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, 0
  %.sroa.0.0.in.v.i = select i1 %i.f, i64 356, i64 360
  %.sroa.0.0.in.i = getelementptr i8, ptr %i.c, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i = load i32, ptr %.sroa.0.0.in.i, align 4
  %i.g = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @intel_runtime_pm_get(ptr noundef %i.h) #7
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %hwm_energy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.l = getelementptr i8, ptr %i.c, i64 312      ; 2 uses
  %i.m = getelementptr i8, ptr %i.b, i64 144
  %i.n = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.o = getelementptr i8, ptr %i.c, i64 372
  tail call void @mutex_lock(ptr noundef %i.l) #7
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = tail call i32 %i.p(ptr noundef %i.b, i32 %.sroa.0.0.i, i1 noundef zeroext true) #7, !inline_history !31 ; 3 uses
  %i.r = load i32, ptr %i.k, align 8              ; 2 uses
  %.not29.i = icmp ult i32 %i.q, %i.r
  %i.s = sext i1 %.not29.i to i32
  %.sink.p.i = sub i32 %i.q, %i.r
  %.sink.i = add i32 %.sink.p.i, %i.s
  %i.t = zext i32 %.sink.i to i64
  %i.u = load i64, ptr %i.n, align 8
  %i.v = add i64 %i.u, %i.t                       ; 2 uses
  store i64 %i.v, ptr %i.n, align 8
  store i32 %i.q, ptr %i.k, align 8
  %i.w = load i32, ptr %i.o, align 4
  %i.x = zext i64 %i.v to i128
  %i.y = mul nuw nsw i128 %i.x, 1000000
  %i.z = zext nneg i32 %i.w to i128
  %i.aa = lshr i128 %i.y, %i.z
  %i.ab = trunc i128 %i.aa to i64
  store i64 %i.ab, ptr %2, align 8
  tail call void @mutex_unlock(ptr noundef %i.l) #7
  %i.ac = load ptr, ptr %i.g, align 8
  tail call void @intel_runtime_pm_put_unchecked(ptr noundef %i.ac) #7
  br label %hwm_energy.exit

hwm_energy.exit:                                  ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.0 = phi i32 [ -95, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snb_pcode_write_p(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal zeroext i16 @hwm_attributes_visible(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, i32 %2) #4 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %1, @sensor_dev_attr_power1_max_interval
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.b, align 8
  %i.c = load ptr, ptr %.val, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 352
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  %3 = load i16, ptr getelementptr inbounds nuw (i8, ptr @sensor_dev_attr_power1_max_interval, i64 8), align 8
  %spec.select = select i1 %i.f, i16 0, i16 %3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @hwm_power1_max_interval_show(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = load ptr, ptr %.val, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 8       ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @intel_runtime_pm_get(ptr noundef %i.f) #7
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 352
  %i.j = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.k = load i32, ptr %i.i, align 8
  %i.l = getelementptr i8, ptr %i.j, i64 144
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 %i.m(ptr noundef %i.j, i32 %i.k, i1 noundef zeroext true) #7, !inline_history !32
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @intel_runtime_pm_put_unchecked(ptr noundef %i.q) #7
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.021.lcssa = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.r = lshr i32 %.021.lcssa, 22
  %i.s = and i32 %i.r, 3
  %i.t = lshr i32 %.021.lcssa, 17
  %i.u = and i32 %i.t, 31
  %i.v = or disjoint i32 %i.s, 4
  %i.w = zext nneg i32 %i.v to i64
  %i.x = zext nneg i32 %i.u to i64
  %i.y = shl nuw nsw i64 %i.w, %i.x
  %i.z = getelementptr i8, ptr %i.b, i64 376
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = add i32 %i.aa, 2
  %narrow = mul nuw nsw i64 %i.y, 1000
  %i.ac = zext nneg i64 %narrow to i128
  %i.ad = zext nneg i32 %i.ab to i128
  %i.ae = lshr i128 %i.ac, %i.ad
  %i.af = trunc nuw nsw i128 %i.ae to i64
  %i.ag = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.21, i64 noundef %i.af) #7
  %i.ah = sext i32 %i.ag to i64
  ret i64 %i.ah
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hwm_power1_max_interval_store(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.c = load ptr, ptr %.val, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8, !annotation !14
  %i.d = call i32 @kstrtoull(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.d to i64
  br label %hwm_locked_with_pm_intel_uncore_rmw.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 376
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = add i32 %i.g, 2
  %i.i = zext nneg i32 %i.h to i128
  %i.j = lshr i128 1048576000, %i.i
  %i.k = trunc nuw nsw i128 %i.j to i64
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = icmp ugt i64 %i.l, %i.k
  br i1 %i.m, label %hwm_locked_with_pm_intel_uncore_rmw.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i32 %i.g to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = add i64 %i.o, 500                        ; 2 uses
  %i.q = udiv i64 %i.p, 1000                      ; 3 uses
  store i64 %i.q, ptr %i.a, align 8
  %.not44 = icmp ult i64 %i.p, 1000
  br i1 %.not44, label %bb.e, label %fls64.exit

fls64.exit:                                       ; preds = %bb.d
  %i.r = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 18446744073709552) %i.q, i32 -1) #11, !srcloc !33 ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %.neg = shl nsw i64 -1, %i.s
  %i.t = add nsw i64 %.neg, %i.q
  %i.u = shl i64 %i.t, 2
  %i.v = lshr i64 %i.u, %i.s
  %i.w = trunc i64 %i.v to i32
  %i.x = shl i32 %i.w, 22
  %i.y = and i32 %i.x, 12582912
  %i.z = shl i32 %i.r, 17
  %i.aa = and i32 %i.z, 4063232
  %i.ab = or disjoint i32 %i.y, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %fls64.exit
  %i.ac = phi i32 [ %i.ab, %fls64.exit ], [ 0, %bb.d ]
  %i.ad = getelementptr i8, ptr %i.c, i64 352
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %.val45 = load ptr, ptr %.val, align 8
  %i.af = getelementptr i8, ptr %.val, i64 8
  %.val46 = load ptr, ptr %i.af, align 8          ; 5 uses
  %i.ag = getelementptr i8, ptr %.val46, i64 24   ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call ptr @intel_runtime_pm_get(ptr noundef %i.ah) #7
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %hwm_locked_with_pm_intel_uncore_rmw.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %.val45, i64 312  ; 2 uses
  %i.al = getelementptr i8, ptr %.val46, i64 144
  %i.am = getelementptr i8, ptr %.val46, i64 176
  call void @mutex_lock(ptr noundef %i.ak) #7
  %i.an = load ptr, ptr %i.al, align 8
  %i.ao = call i32 %i.an(ptr noundef %.val46, i32 %i.ae, i1 noundef zeroext true) #7, !inline_history !34
  %i.ap = and i32 %i.ao, -16646145
  %i.aq = or i32 %i.ap, %i.ac
  %i.ar = load ptr, ptr %i.am, align 8
  call void %i.ar(ptr noundef %.val46, i32 %i.ae, i32 noundef %i.aq, i1 noundef zeroext true) #7, !inline_history !35
  call void @mutex_unlock(ptr noundef %i.ak) #7
  %i.as = load ptr, ptr %i.ag, align 8
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.as) #7
  br label %hwm_locked_with_pm_intel_uncore_rmw.exit

hwm_locked_with_pm_intel_uncore_rmw.exit:         ; preds = %.lr.ph.i, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ -22, %bb.c ], [ %3, %bb.e ], [ %3, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -95, 1) i32 @hwm_gt_read(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 %3, ptr nofree noundef writeonly captures(none) %4) #0 align 16 prefalign(16) {
bb.a:
  %cond = icmp eq i32 %1, 5
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.a, align 8
  %i.b = tail call fastcc i32 @hwm_energy_read(ptr noundef %.val, i32 noundef %2, ptr noundef %4) #10, !srcloc !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -95, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #9 = { nounwind }
attributes #10 = { noredzone "no-builtin-wcslen" }
attributes #11 = { nounwind memory(none) }

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
!10 = distinct !{null, null}
!11 = distinct !{null, null}
end_hunk_0
