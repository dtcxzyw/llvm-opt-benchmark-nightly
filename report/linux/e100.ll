inline.NumInlined: 230
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@e100_get_regs:bb.a
  %i.r = or i32 %i.q, %i.m
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = tail call i32 @ioread16(ptr noundef %i.s) #18
  %i.u = or i32 %i.r, %i.t
  store i32 %i.u, ptr %2, align 4
  %i.v = getelementptr i8, ptr %0, i64 3408
  %i.w = getelementptr i8, ptr %0, i64 2648
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.x = load i32, ptr %i.v, align 16
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = trunc i64 %indvars.iv to i32
  %i.aa = sub i32 28, %i.z
  %i.ab = tail call zeroext i16 %i.y(ptr noundef %i.a, i32 noundef %i.x, i32 noundef 134217728, i32 noundef %i.aa, i16 noundef zeroext 0) #18, !inline_history !37
  %i.ac = zext i16 %i.ab to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ad = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 %i.ac, ptr %i.ad, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, 29
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !78

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr i8, ptr %0, i64 3496      ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(596) %i.ag, i8 0, i64 596, i1 false)
  %i.ah = tail call fastcc i32 @e100_exec_cb(ptr noundef %i.a, ptr noundef null, ptr noundef nonnull @e100_dump) #20, !srcloc !79 ; 0 uses
  tail call void @msleep(i32 noundef 10) #18
  %i.ai = getelementptr i8, ptr %2, i64 120
  %i.aj = load ptr, ptr %i.ae, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(596) %i.ai, ptr noundef align 4 dereferenceable(596) %i.ak, i64 596, i1 false)
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @e100_get_wol(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((4, 12)) %1) #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3332
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ugt i32 %i.b, 3
  %i.d = select i1 %i.c, i32 32, i32 0
  %i.e = getelementptr i8, ptr %1, i64 4
  store i32 %i.d, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %0, i64 3328
  %i.g = load i32, ptr %i.f, align 64
  %i.h = shl i32 %i.g, 2
  %i.i = and i32 %i.h, 32
  %i.j = getelementptr i8, ptr %1, i64 8
  store i32 %i.i, ptr %i.j, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -95, 1) i32 @e100_set_wol(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  switch i32 %i.c, label %bb.d [
    i32 0, label %bb.b
    i32 32, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 2640
  %i.e = load ptr, ptr %i.d, align 16             ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 428
  %.val = load i16, ptr %i.f, align 4
  %i.g = trunc i16 %.val to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not12 = icmp eq i32 %i.c, 0
  %i.h = getelementptr i8, ptr %0, i64 3328       ; 2 uses
  %i.i = load i32, ptr %i.h, align 64
  %i.j = and i32 %i.i, -9
  %masksel = select i1 %.not12, i32 0, i32 8
  %.sink = or disjoint i32 %i.j, %masksel
  store i32 %.sink, ptr %i.h, align 64
  %i.k = getelementptr i8, ptr %i.e, i64 200
  %i.l = load i32, ptr %i.b, align 4
  %i.m = icmp ne i32 %i.l, 0
  %i.n = tail call i32 @device_set_wakeup_enable(ptr noundef %i.k, i1 noundef zeroext %i.m) #18 ; 0 uses
  %i.o = tail call fastcc i32 @e100_exec_cb(ptr noundef %i.a, ptr noundef null, ptr noundef nonnull @e100_configure) #20, !srcloc !80 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -95, %bb.a ], [ -95, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal i32 @e100_get_msglevel(ptr nofree noundef readonly captures(none) %0) #13 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624
  %i.b = load i32, ptr %i.a, align 64
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define internal void @e100_set_msglevel(ptr nofree noundef writeonly captures(none) initializes((2624, 2628)) %0, i32 noundef %1) #14 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624
  store i32 %1, ptr %i.a, align 64
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @e100_nway_reset(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3408
  %i.b = tail call i32 @mii_nway_restart(ptr noundef %i.a) #18
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @e100_get_link(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3408
  %i.b = tail call i32 @mii_link_ok(ptr noundef %i.a) #18
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 0, 131071) i32 @e100_get_eeprom_len(ptr nofree noundef readonly captures(none) %0) #13 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3580
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 1
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal noundef i32 @e100_get_eeprom(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((4, 8)) %1, ptr nofree noundef writeonly captures(none) %2) #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  store i32 4660, ptr %i.a, align 4
  %i.b = getelementptr i8, ptr %0, i64 3582
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = zext i32 %i.h to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %i.f, i64 %i.i, i1 false)
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @e100_set_eeprom(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 2624       ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 4660
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 3582       ; 13 uses
  %i.f = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr i8, ptr %1, i64 12         ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = zext i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %2, i64 %i.l, i1 false)
  %i.m = load i32, ptr %i.f, align 4
  %i.n = lshr i32 %i.m, 1                         ; 2 uses
  %i.o = load i32, ptr %i.j, align 4
  %i.p = lshr i32 %i.o, 1
  %i.q = trunc i32 %i.p to i16
  %i.r = add i16 %i.q, 1                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i16 8, ptr %i.a, align 2
  %i.s = call fastcc zeroext i16 @e100_eeprom_read(ptr noundef %i.b, ptr noundef nonnull %i.a, i16 noundef zeroext 0) #20, !srcloc !81 ; 0 uses
  %i.t = load i16, ptr %i.a, align 2              ; 3 uses
  %i.u = zext nneg i16 %i.t to i32
  %i.v = shl nuw i32 1, %i.u                      ; 2 uses
  %i.w = trunc i32 %i.v to i16                    ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 3580       ; 3 uses
  store i16 %i.w, ptr %i.x, align 4
  %i.y = and i32 %i.n, 65535
  %i.z = zext i16 %i.r to i32
  %i.aa = add nuw nsw i32 %i.y, %i.z              ; 2 uses
  %i.ab = and i32 %i.v, 65535
  %.not.i = icmp samesign ult i32 %i.aa, %i.ab
  br i1 %.not.i, label %.preheader31.i, label %e100_eeprom_save.exit

.preheader31.i:                                   ; preds = %bb.b
  %.not38.i = icmp eq i16 %i.r, 0
  br i1 %.not38.i, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader31.i
  %3 = trunc i32 %i.n to i16
  %i.ac = trunc nuw i32 %i.aa to i16
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %.pre.i = load i16, ptr %i.x, align 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader31.i
  %i.ad = phi i16 [ %.pre.i, %.preheader.loopexit.i ], [ %i.w, %.preheader31.i ] ; 3 uses
  %i.ae = zext i16 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  %i.ag = icmp ugt i16 %i.ad, 1
  br i1 %i.ag, label %.lr.ph35.i, label %._crit_edge.i

.lr.ph35.i:                                       ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %i.af to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.ah = add i16 %i.ad, -2
  %i.ai = icmp ult i16 %i.ah, 7
  br i1 %i.ai, label %.epil.preheader, label %.lr.ph35.i.new

.lr.ph35.i.new:                                   ; preds = %.lr.ph35.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967288
  br label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.02732.i = phi i16 [ %7, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %4 = zext i16 %.02732.i to i64
  %5 = getelementptr [2 x i8], ptr %i.e, i64 %4
  %6 = load i16, ptr %5, align 2
  tail call fastcc void @e100_eeprom_write(ptr noundef %i.b, i16 noundef zeroext %i.t, i16 noundef zeroext %.02732.i, i16 noundef zeroext %6) #20, !srcloc !82
  %7 = add i16 %.02732.i, 1                       ; 2 uses
  %8 = icmp ult i16 %7, %i.ac
  br i1 %8, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !83

bb.c:                                             ; preds = %bb.c, %.lr.ph35.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph35.i.new ], [ %indvars.iv.next.i.7, %bb.c ] ; 9 uses
  %.034.i = phi i16 [ 0, %.lr.ph35.i.new ], [ %i.bn, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph35.i.new ], [ %niter.next.7, %bb.c ]
  %i.aj = getelementptr [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = add i16 %i.ak, %.034.i
  %i.am = getelementptr [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.an = getelementptr i8, ptr %i.am, i64 2
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = add i16 %i.ao, %i.al
  %i.aq = getelementptr [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = add i16 %i.as, %i.ap
  %i.au = getelementptr [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.av = getelementptr i8, ptr %i.au, i64 6
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = add i16 %i.aw, %i.at
  %i.ay = getelementptr [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = add i16 %i.ba, %i.ax
  %i.bc = getelementptr [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 10
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = add i16 %i.be, %i.bb
  %i.bg = getelementptr [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 12
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = add i16 %i.bi, %i.bf
  %i.bk = getelementptr [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 14
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = add i16 %i.bm, %i.bj                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.c, !llvm.loop !84

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph35.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph35.i ], [ %indvars.iv.next.i.7, %._crit_edge.loopexit.i.unr-lcssa ]
  %.034.i.epil.init = phi i16 [ 0, %.lr.ph35.i ], [ %i.bn, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %.034.i.epil = phi i16 [ %.034.i.epil.init, %.epil.preheader ], [ %i.bq, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.bo = getelementptr [2 x i8], ptr %i.e, i64 %indvars.iv.i.epil
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = add i16 %i.bp, %.034.i.epil             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.d, !llvm.loop !85

._crit_edge.loopexit.i:                           ; preds = %bb.d, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i16 [ %i.bn, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.bq, %bb.d ]
  %i.br = sub i16 -17734, %.lcssa
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ -17734, %.preheader.i ], [ %i.br, %._crit_edge.loopexit.i ]
  %i.bs = sext i32 %i.af to i64
  %i.bt = getelementptr [2 x i8], ptr %i.e, i64 %i.bs
  store i16 %.0.lcssa.i, ptr %i.bt, align 2
  %i.bu = load i16, ptr %i.x, align 4
  %i.bv = zext i16 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -1                   ; 2 uses
  %i.bx = trunc i32 %i.bw to i16
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr [2 x i8], ptr %i.e, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2
  tail call fastcc void @e100_eeprom_write(ptr noundef %i.b, i16 noundef zeroext %i.t, i16 noundef zeroext %i.bx, i16 noundef zeroext %i.ca) #20, !srcloc !87
  br label %e100_eeprom_save.exit

e100_eeprom_save.exit:                            ; preds = %bb.b, %._crit_edge.i
  %.028.i = phi i32 [ 0, %._crit_edge.i ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %e100_eeprom_save.exit
  %.0 = phi i32 [ %.028.i, %e100_eeprom_save.exit ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @e100_get_ringparam(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((4, 8), (16, 24), (32, 36)) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3344
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %1, i64 4
  store i32 %i.b, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %0, i64 3356
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %1, i64 16
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %0, i64 3348
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr i8, ptr %1, i64 20
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %0, i64 3360
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr i8, ptr %1, i64 32
  store i32 %i.k, ptr %i.l, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @e100_set_ringparam(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 3340
  %i.c = getelementptr i8, ptr %0, i64 3352
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %.not45 = icmp eq i32 %i.g, 0
  br i1 %.not45, label %netif_running.exit, label %bb.g

netif_running.exit:                               ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.i = load volatile i64, ptr %i.h, align 8
  %.in.i = trunc i64 %i.i to i1
  br i1 %.in.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %netif_running.exit
  tail call fastcc void @e100_down(ptr noundef %i.a) #20, !srcloc !88
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %netif_running.exit
  %i.j = getelementptr i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = load i32, ptr %i.b, align 4
  %i.m = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.l)
  %i.n = getelementptr i8, ptr %0, i64 3348
  %i.o = getelementptr i8, ptr %0, i64 3344
  %i.p = load i32, ptr %i.o, align 8
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.m, i32 %i.p) ; 2 uses
  store i32 %i.q, ptr %i.n, align 4
  %i.r = getelementptr i8, ptr %1, i64 32
  %i.s = load i32, ptr %i.r, align 4
  %i.t = load i32, ptr %i.c, align 8
  %i.u = tail call i32 @llvm.umax.i32(i32 %i.s, i32 %i.t)
  %i.v = getelementptr i8, ptr %0, i64 3360
  %i.w = getelementptr i8, ptr %0, i64 3356
  %i.x = load i32, ptr %i.w, align 4
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.x) ; 2 uses
  store i32 %i.y, ptr %i.v, align 8
  %i.z = load i32, ptr %i.a, align 64
  %i.aa = and i32 %i.z, 1
  %.not46 = icmp eq i32 %i.aa, 0
  br i1 %.not46, label %netif_running.exit50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %0, i64 2632
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %i.ac, ptr noundef nonnull @.str.47, i32 noundef %i.q, i32 noundef %i.y) #19
  br label %netif_running.exit50

netif_running.exit50:                             ; preds = %bb.d, %bb.e
  %i.ad = load volatile i64, ptr %i.h, align 8
  %.in.i49 = trunc i64 %i.ad to i1
  br i1 %.in.i49, label %bb.f, label %bb.g

bb.f:                                             ; preds = %netif_running.exit50
  %i.ae = tail call fastcc i32 @e100_up(ptr noundef %i.a) #20, !srcloc !89 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %netif_running.exit50, %bb.f, %bb.a, %bb.b
  %.0 = phi i32 [ -22, %bb.a ], [ -22, %bb.b ], [ 0, %bb.f ], [ 0, %netif_running.exit50 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @e100_diag_test(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) initializes((0, 40)) %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %3 = alloca %struct.ethtool_cmd, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i64 44, i1 false), !annotation !90
  %i.b = getelementptr i8, ptr %0, i64 2624       ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.c = getelementptr i8, ptr %0, i64 3408       ; 3 uses
  %i.d = tail call i32 @mii_link_ok(ptr noundef %i.c) #18
  %.not = icmp eq i32 %i.d, 0
end_hunk_0
