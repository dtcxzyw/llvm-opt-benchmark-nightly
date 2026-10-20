Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/shpc?download=true
inline.NumInlined: 128
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@shpc_reset:bb.a
  %i.y = load ptr, ptr %i.e, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i16 0, ptr %i.z, align 1
  %i.aa = load i32, ptr %i.c, align 4
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ad = load ptr, ptr %i.e, align 8
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = shl i32 %i.ae, 2                        ; 2 uses
  %i.ag = add i32 %i.af, 39
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %i.ah
  store i8 127, ptr %i.ai, align 1
  %i.aj = load ptr, ptr %i.ac, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.al = shl i64 %indvars.iv.next, 3
  %i.am = and i64 %i.al, 248
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8
  %.not = icmp eq ptr %i.ao, null
  %.val47 = load ptr, ptr %i.e, align 8
  %i.ap = add i32 %i.af, 36
  %i.aq = sext i32 %i.ap to i64                   ; 9 uses
  %i.ar = getelementptr inbounds i8, ptr %.val47, i64 %i.aq ; 3 uses
  %.val.i.i55 = load i16, ptr %i.ar, align 1      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = and i16 %.val.i.i55, -4
  %i.at = or disjoint i16 %i.as, 2
  store i16 %i.at, ptr %i.ar, align 1
  %.val50 = load ptr, ptr %i.e, align 8
  %i.au = getelementptr inbounds i8, ptr %.val50, i64 %i.aq ; 2 uses
  %.val.i.i52 = load i16, ptr %i.au, align 1
  %i.av = and i16 %.val.i.i52, -257
  store i16 %i.av, ptr %i.au, align 1
  %.val49 = load ptr, ptr %i.e, align 8
  %i.aw = getelementptr inbounds i8, ptr %.val49, i64 %i.aq ; 2 uses
  %.val.i.i53 = load i16, ptr %i.aw, align 1
  %i.ax = and i16 %.val.i.i53, -3073
  store i16 %i.ax, ptr %i.aw, align 1
  %.val48 = load ptr, ptr %i.e, align 8
  %i.ay = getelementptr inbounds i8, ptr %.val48, i64 %i.aq ; 2 uses
  %.val.i.i54 = load i16, ptr %i.ay, align 1
  %i.az = and i16 %.val.i.i54, -13
  %i.ba = or disjoint i16 %i.az, 4
  store i16 %i.ba, ptr %i.ay, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bb = or i16 %.val.i.i55, 3
  store i16 %i.bb, ptr %i.ar, align 1
  %.val46 = load ptr, ptr %i.e, align 8
  %i.bc = getelementptr inbounds i8, ptr %.val46, i64 %i.aq ; 2 uses
  %.val.i.i56 = load i16, ptr %i.bc, align 1
  %i.bd = or i16 %.val.i.i56, 256
  store i16 %i.bd, ptr %i.bc, align 1
  %.val45 = load ptr, ptr %i.e, align 8
  %i.be = getelementptr inbounds i8, ptr %.val45, i64 %i.aq ; 2 uses
  %.val.i.i57 = load i16, ptr %i.be, align 1
  %i.bf = or i16 %.val.i.i57, 3072
  store i16 %i.bf, ptr %i.be, align 1
  %.val44 = load ptr, ptr %i.e, align 8
  %i.bg = getelementptr inbounds i8, ptr %.val44, i64 %i.aq ; 2 uses
  %.val.i.i58 = load i16, ptr %i.bg, align 1
  %i.bh = or i16 %.val.i.i58, 12
  store i16 %i.bh, ptr %i.bg, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.val43 = load ptr, ptr %i.e, align 8
  %i.bi = getelementptr inbounds i8, ptr %.val43, i64 %i.aq ; 2 uses
  %.val.i.i59 = load i16, ptr %i.bi, align 1
  %i.bj = or i16 %.val.i.i59, 48
  store i16 %i.bj, ptr %i.bi, align 1
  %.val = load ptr, ptr %i.e, align 8
  %i.bk = getelementptr inbounds i8, ptr %.val, i64 %i.aq ; 2 uses
  %.val.i.i60 = load i16, ptr %i.bk, align 1
  %i.bl = and i16 %.val.i.i60, -513
  store i16 %i.bl, ptr %i.bk, align 1
  %i.bm = load i32, ptr %i.c, align 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.bp = load ptr, ptr %i.e, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = and i8 %i.br, -8
  store i8 %i.bs, ptr %i.bq, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store i32 0, ptr %i.bt, align 8
  tail call fastcc void @shpc_interrupt_update(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @shpc_interrupt_update(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.034 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.b ]
  %i.h = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.i = shl i32 %i.h, 2                          ; 2 uses
  %i.j = add i32 %i.i, 38
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1
  %i.n = add i32 %i.i, 39
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = zext i8 %i.m to i32
  %i.s = zext i8 %i.q to i32
  %i.t = xor i32 %i.s, -1
  %i.u = and i32 %i.t, %i.r
  %.not32 = icmp eq i32 %i.u, 0
  %i.v = shl nuw i32 2, %i.h
  %i.w = select i1 %.not32, i32 0, i32 %i.v
  %.1 = or i32 %i.w, %.034                        ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val = load i32, ptr %i.x, align 1             ; 2 uses
  %i.y = and i32 %.val, 65540
  %or.cond = icmp eq i32 %i.y, 65536
  %i.z = zext i1 %or.cond to i32
  %.2 = or i32 %.0.lcssa, %i.z                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %.2, ptr %i.aa, align 1
  %i.ab = and i32 %.val, 1
  %.not30 = icmp eq i32 %i.ab, 0
  %i.ac = icmp ne i32 %.2, 0
  %i.ad = and i1 %.not30, %i.ac
  %i.ae = zext i1 %i.ad to i32                    ; 3 uses
  %i.af = tail call zeroext i1 @msi_enabled(ptr noundef nonnull %0) #11
  br i1 %i.af, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.ah = load i32, ptr %i.ag, align 8
  %.not31 = icmp eq i32 %i.ah, %i.ae
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @msi_notify(ptr noundef nonnull %0, i32 noundef 0) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %._crit_edge
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef %i.ae) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store i32 %i.ae, ptr %i.ai, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @shpc_device_plug_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2328
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #11
  %i.e = getelementptr i8, ptr %i.d, i64 208
  %.val20 = load i32, ptr %i.e, align 16
  %i.f = lshr i32 %.val20, 3
  %i.g = and i32 %i.f, 31                         ; 3 uses
  %3 = add nsw i32 %i.g, -1                       ; 2 uses
  %i.h = icmp ne i32 %i.g, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4 ; 2 uses
  %.not.i = icmp slt i32 %3, %.pre.i
  %or.cond.not.i = select i1 %i.h, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.b, label %shpc_device_get_slot.exit

shpc_device_get_slot.exit:                        ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 556, ptr noundef nonnull @__func__.shpc_device_get_slot, ptr noundef nonnull @.str.6, i32 noundef %i.g, i32 noundef 1, i32 noundef %.pre.i) #11
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr i8, ptr %i.c, i64 8        ; 5 uses
  %.val19 = load ptr, ptr %i.k, align 8           ; 2 uses
  %i.l = shl nuw nsw i32 %3, 2                    ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 36
  %i.n = zext nneg i32 %i.m to i64                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val19, i64 %i.n ; 3 uses
  %.val.i.i = load i16, ptr %i.o, align 1         ; 3 uses
  br i1 %.not, label %bb.c, label %shpc_get_status.exit

bb.c:                                             ; preds = %bb.b
  %i.p = and i16 %.val.i.i, -257
  store i16 %i.p, ptr %i.o, align 1
  %.val18 = load ptr, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.val18, i64 %i.n ; 2 uses
  %.val.i.i22 = load i16, ptr %i.q, align 1
  %i.r = and i16 %.val.i.i22, -3073
  store i16 %i.r, ptr %i.q, align 1
  br label %bb.f

shpc_get_status.exit:                             ; preds = %bb.b
  %i.s = and i16 %.val.i.i, 256
  %.not15 = icmp eq i16 %i.s, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %shpc_get_status.exit
  %i.t = and i16 %.val.i.i, -257
  store i16 %i.t, ptr %i.o, align 1
  %.val16 = load ptr, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val16, i64 %i.n ; 2 uses
  %.val.i.i24 = load i16, ptr %i.u, align 1
  %i.v = and i16 %.val.i.i24, -3073
  store i16 %i.v, ptr %i.u, align 1
  %i.w = load ptr, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %shpc_get_status.exit, %bb.d
  %.val19.sink = phi ptr [ %i.w, %bb.d ], [ %.val19, %shpc_get_status.exit ]
  %.sink35 = phi i8 [ 13, %bb.d ], [ 4, %shpc_get_status.exit ]
  %i.x = zext nneg i32 %i.l to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.val19.sink, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 38 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = or i8 %i.aa, %.sink35
  store i8 %i.ab, ptr %i.z, align 1
  %.val = load ptr, ptr %i.k, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n ; 2 uses
  %.val.i.i25 = load i16, ptr %i.ac, align 1
  %i.ad = and i16 %.val.i.i25, -513
  store i16 %i.ad, ptr %i.ac, align 1
  tail call fastcc void @shpc_interrupt_update(ptr noundef nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %shpc_device_get_slot.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @shpc_device_unplug_cb(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @qdev_unrealize(ptr noundef %1) #11
  ret void
}

declare void @qdev_unrealize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @shpc_device_unplug_request_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2328
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #11
  %i.e = getelementptr i8, ptr %i.d, i64 208
  %.val21 = load i32, ptr %i.e, align 16
  %i.f = lshr i32 %.val21, 3
  %i.g = and i32 %i.f, 31                         ; 3 uses
  %i.h = add nsw i32 %i.g, -1                     ; 3 uses
  %i.i = icmp ne i32 %i.g, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4 ; 2 uses
  %.not.i = icmp slt i32 %i.h, %.pre.i
  %or.cond.not.i = select i1 %i.i, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %shpc_get_status.exit, label %shpc_device_get_slot.exit

shpc_device_get_slot.exit:                        ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 556, ptr noundef nonnull @__func__.shpc_device_get_slot, ptr noundef nonnull @.str.6, i32 noundef %i.g, i32 noundef 1, i32 noundef %.pre.i) #11
  br label %bb.f

shpc_get_status.exit:                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 8        ; 5 uses
  %.val23 = load ptr, ptr %i.j, align 8           ; 2 uses
  %i.k = shl nuw nsw i32 %i.h, 2                  ; 2 uses
  %i.l = add nuw nsw i32 %i.k, 36
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val23, i64 %i.m
  %.val.i = load i16, ptr %i.n, align 1           ; 2 uses
  %i.o = trunc i16 %.val.i to i8
  %i.p = lshr i8 %i.o, 2
  %i.q = and i8 %i.p, 3                           ; 2 uses
  %i.r = icmp eq i8 %i.q, 2
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %shpc_get_status.exit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 627, ptr noundef nonnull @__func__.shpc_device_unplug_request_cb, ptr noundef nonnull @.str.1) #11
  br label %bb.f

bb.c:                                             ; preds = %shpc_get_status.exit
  %i.s = and i16 %.val.i, 3
  %i.t = icmp eq i16 %i.s, 3
  %i.u = icmp eq i8 %i.q, 3
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @shpc_free_devices_in_slot(ptr noundef nonnull %i.c, i32 noundef %i.h)
  %.val20 = load ptr, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.val20, i64 %i.m ; 2 uses
  %.val.i.i = load i16, ptr %i.v, align 1
  %i.w = or i16 %.val.i.i, 256
  store i16 %i.w, ptr %i.v, align 1
  %.val19 = load ptr, ptr %i.j, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.val19, i64 %i.m ; 2 uses
  %.val.i.i25 = load i16, ptr %i.x, align 1
  %i.y = or i16 %.val.i.i25, 3072
  store i16 %i.y, ptr %i.x, align 1
  %i.z = load ptr, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.val23.sink = phi ptr [ %i.z, %bb.d ], [ %.val23, %bb.c ]
  %.sink36 = phi i8 [ 9, %bb.d ], [ 4, %bb.c ]
  %i.aa = zext nneg i32 %i.k to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.val23.sink, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 38 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = or i8 %i.ad, %.sink36
  store i8 %i.ae, ptr %i.ac, align 1
  %.val = load ptr, ptr %i.j, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m ; 2 uses
  %.val.i.i26 = load i16, ptr %i.af, align 1
  %i.ag = and i16 %.val.i.i26, -513
  store i16 %i.ag, ptr %i.af, align 1
  tail call fastcc void @shpc_interrupt_update(ptr noundef nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %shpc_device_get_slot.exit, %bb.e, %bb.b
  ret void
}

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @shpc_free_devices_in_slot(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 8 uses
  %i.b = shl i32 %1, 3
  %i.c = add i32 %i.b, 8
  %i.d = and i32 %i.c, 248
  %i.e = zext nneg i32 %i.d to i64                ; 8 uses
  %i.f = load ptr, ptr %i.a, align 16             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %.not12 = icmp eq ptr %i.i, null
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.k = tail call ptr @qdev_get_hotplug_handler(ptr noundef %i.j) #11
  %i.l = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  tail call void @hotplug_handler_unplug(ptr noundef %i.k, ptr noundef %i.l, ptr noundef nonnull @error_abort) #11
  tail call void @object_unparent(ptr noundef nonnull %i.i) #11
  %.pre = load ptr, ptr %i.a, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.e
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %.not12.1 = icmp eq ptr %i.p, null
  br i1 %.not12.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.r = tail call ptr @qdev_get_hotplug_handler(ptr noundef %i.q) #11
  %i.s = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  tail call void @hotplug_handler_unplug(ptr noundef %i.r, ptr noundef %i.s, ptr noundef nonnull @error_abort) #11
  tail call void @object_unparent(ptr noundef nonnull %i.p) #11
  %.pre15 = load ptr, ptr %i.a, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %.pre15, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.e
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  %.not12.2 = icmp eq ptr %i.w, null
  br i1 %.not12.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.y = tail call ptr @qdev_get_hotplug_handler(ptr noundef %i.x) #11
  %i.z = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  tail call void @hotplug_handler_unplug(ptr noundef %i.y, ptr noundef %i.z, ptr noundef nonnull @error_abort) #11
  tail call void @object_unparent(ptr noundef nonnull %i.w) #11
  %.pre16 = load ptr, ptr %i.a, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = phi ptr [ %.pre16, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.e
  %i.ad = load ptr, ptr %i.ac, align 8            ; 4 uses
  %.not12.3 = icmp eq ptr %i.ad, null
  br i1 %.not12.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.af = tail call ptr @qdev_get_hotplug_handler(ptr noundef %i.ae) #11
  %i.ag = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  tail call void @hotplug_handler_unplug(ptr noundef %i.af, ptr noundef %i.ag, ptr noundef nonnull @error_abort) #11
  tail call void @object_unparent(ptr noundef nonnull %i.ad) #11
  %.pre17 = load ptr, ptr %i.a, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi ptr [ %.pre17, %bb.h ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 216
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.e
  %i.ak = load ptr, ptr %i.aj, align 8            ; 4 uses
  %.not12.4 = icmp eq ptr %i.ak, null
  br i1 %.not12.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.am = tail call ptr @qdev_get_hotplug_handler(ptr noundef %i.al) #11
  %i.an = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  tail call void @hotplug_handler_unplug(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull @error_abort) #11
  tail call void @object_unparent(ptr noundef nonnull %i.ak) #11
  %.pre18 = load ptr, ptr %i.a, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = phi ptr [ %.pre18, %bb.j ], [ %i.ah, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 224
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.e
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %.not12.5 = icmp eq ptr %i.ar, null
  br i1 %.not12.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.at = tail call ptr @qdev_get_hotplug_handler(ptr noundef %i.as) #11
  %i.au = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  tail call void @hotplug_handler_unplug(ptr noundef %i.at, ptr noundef %i.au, ptr noundef nonnull @error_abort) #11
  tail call void @object_unparent(ptr noundef nonnull %i.ar) #11
  %.pre19 = load ptr, ptr %i.a, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = phi ptr [ %.pre19, %bb.l ], [ %i.ao, %bb.k ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 232
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.e
  %i.ay = load ptr, ptr %i.ax, align 8            ; 4 uses
  %.not12.6 = icmp eq ptr %i.ay, null
  br i1 %.not12.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ay, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.ba = tail call ptr @qdev_get_hotplug_handler(ptr noundef %i.az) #11
  %i.bb = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ay, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  tail call void @hotplug_handler_unplug(ptr noundef %i.ba, ptr noundef %i.bb, ptr noundef nonnull @error_abort) #11
  tail call void @object_unparent(ptr noundef nonnull %i.ay) #11
  %.pre20 = load ptr, ptr %i.a, align 16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = phi ptr [ %.pre20, %bb.n ], [ %i.av, %bb.m ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 240
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.e
  %i.bf = load ptr, ptr %i.be, align 8            ; 4 uses
end_hunk_0
begin_hunk_1_@shpc_write:bb.a
  %i.cm = load i32, ptr %i.bd, align 4
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next89.i, %i.cn
  br i1 %i.co, label %shpc_get_status.exit.i, label %shpc_command.exit, !llvm.loop !21

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %shpc_get_status.exit63.i, label %bb.r, !llvm.loop !22

bb.r:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cq = shl i32 %i.cp, 2
  %i.cr = add i32 %i.cq, 36
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %.val50.i, i64 %i.cs
  %.val.i60.i = load i16, ptr %i.ct, align 1
  %i.cu = and i16 %.val.i60.i, 3
  %i.cv = icmp eq i16 %i.cu, 2
  br i1 %i.cv, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %.val50.i, i64 22 ; 2 uses
  %.val.i.i61.i = load i16, ptr %i.cw, align 1
  %i.cx = or i16 %.val.i.i61.i, 4
  store i16 %i.cx, ptr %i.cw, align 1
  br label %shpc_command.exit

shpc_get_status.exit63.i:                         ; preds = %bb.q, %bb.v
  %indvars.iv80.i = phi i64 [ %indvars.iv.next81.i, %bb.v ], [ 0, %bb.q ] ; 3 uses
  %.val.i = load ptr, ptr %i.av, align 8
  %i.cy = trunc nuw nsw i64 %indvars.iv80.i to i32
  %i.cz = shl i32 %i.cy, 2
  %i.da = add i32 %i.cz, 36
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %.val.i, i64 %i.db
  %.val.i62.i = load i16, ptr %i.dc, align 1
  %i.dd = and i16 %.val.i62.i, 256
  %.not.i = icmp eq i16 %i.dd, 0
  %i.de = trunc i64 %indvars.iv80.i to i8
  %i.df = add i8 %i.de, 1                         ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %shpc_get_status.exit63.i
  tail call fastcc void @shpc_slot_command(ptr noundef %0, i8 noundef zeroext %i.df, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %bb.v

bb.u:                                             ; preds = %shpc_get_status.exit63.i
  tail call fastcc void @shpc_slot_command(ptr noundef %0, i8 noundef zeroext %i.df, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %i.dg = load i32, ptr %i.ba, align 4
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next81.i, %i.dh
  br i1 %i.di, label %shpc_get_status.exit63.i, label %shpc_command.exit, !llvm.loop !23

bb.w:                                             ; preds = %bb.f
  %.val54.i = load ptr, ptr %i.av, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.val54.i, i64 22 ; 2 uses
  %.val.i.i64.i = load i16, ptr %i.dj, align 1
  %i.dk = or i16 %.val.i.i64.i, 4
  store i16 %i.dk, ptr %i.dj, align 1
  br label %shpc_command.exit

shpc_command.exit:                                ; preds = %bb.v, %bb.p, %.preheader69.i, %.preheader66.i, %bb.g, %bb.i, %bb.j, %bb.m, %bb.s, %bb.w
  %i.dl = load ptr, ptr %i.av, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  %.val.i65.i = load i32, ptr %i.dm, align 1
  %i.dn = or i32 %.val.i65.i, 65536
  store i32 %i.dn, ptr %i.dm, align 1
  br label %bb.x

bb.x:                                             ; preds = %shpc_command.exit, %._crit_edge
  tail call fastcc void @shpc_interrupt_update(ptr noundef %0)
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -22, 1) i32 @shpc_load(ptr noundef %0, ptr noundef %1, i64 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = shl i32 %i.e, 2
  %i.g = add i32 %i.f, 36
  %i.h = sext i32 %i.g to i64
  %i.i = tail call i64 @qemu_get_buffer(ptr noundef %0, ptr noundef %i.c, i64 noundef %i.h) #11
  %i.j = trunc i64 %i.i to i32
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = shl i32 %i.m, 2
  %i.o = add i32 %i.n, 36
  %.not = icmp eq i32 %i.o, %i.j
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %1, i64 -2328
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 328
  store i32 0, ptr %i.q, align 8
  tail call fastcc void @shpc_interrupt_update(ptr noundef nonnull %i.p)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @shpc_save(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = shl i32 %i.e, 2
  %i.g = add i32 %i.f, 36
  %i.h = sext i32 %i.g to i64
  tail call void @qemu_put_buffer(ptr noundef %0, ptr noundef %i.c, i64 noundef %i.h) #11
  ret i32 0
}

declare zeroext i1 @msi_enabled(ptr noundef) local_unnamed_addr #2

declare void @msi_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pci_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @qdev_get_hotplug_handler(ptr noundef) local_unnamed_addr #2

declare void @hotplug_handler_unplug(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @object_unparent(ptr noundef) local_unnamed_addr #2

declare i32 @pci_add_capability(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @shpc_mmio_read(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 2328
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = shl i32 %i.e, 2
  %i.g = add i32 %i.f, 36                         ; 2 uses
  %.not.i = icmp ugt i32 %i.g, %i.b
  br i1 %.not.i, label %bb.b, label %shpc_read.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i32 %i.g, %i.b
  %i.i = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = and i64 %1, 4294967295
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = sext i32 %i.i to i64
  %i.o = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %i.m, i64 noundef range(i64 -2147483648, 2147483648) %i.n, i64 noundef 8) #11, !alias.scope !27 ; 0 uses
  %i.p = load i64, ptr %i.a, align 8
  br label %shpc_read.exit

shpc_read.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @shpc_mmio_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = trunc i64 %1 to i32
  tail call fastcc void @shpc_write(ptr noundef %0, i32 noundef %i.a, i64 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @shpc_slot_command(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext range(i8 0, 4) %2, i8 noundef zeroext range(i8 0, 13) %3, i8 noundef zeroext range(i8 0, 49) %4) unnamed_addr #0 {
shpc_get_status.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = zext i8 %1 to i32                        ; 3 uses
  %i.d = add nsw i32 %i.c, -1                     ; 3 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8        ; 6 uses
  %.val72 = load ptr, ptr %i.e, align 8           ; 3 uses
  %i.f = shl nsw i32 %i.d, 2                      ; 2 uses
  %i.g = add nsw i32 %i.f, 36
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val72, i64 %i.h ; 2 uses
  %.val.i = load i16, ptr %i.i, align 1           ; 2 uses
  %i.j = trunc i16 %.val.i to i8                  ; 3 uses
  %i.k = and i8 %i.j, 3                           ; 4 uses
  %i.l = lshr i8 %i.j, 2
  %i.m = and i8 %i.l, 3                           ; 3 uses
  %i.n = lshr i8 %i.j, 4
  %i.o = and i8 %i.n, 3                           ; 2 uses
  %i.p = icmp eq i8 %1, 0
  br i1 %i.p, label %bb.b, label %bb.a

bb.a:                                             ; preds = %shpc_get_status.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %.not.not = icmp slt i32 %i.d, %i.r
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a, %shpc_get_status.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.val72, i64 22 ; 2 uses
  %.val.i.i = load i16, ptr %i.s, align 1
  %i.t = or i16 %.val.i.i, 4
  store i16 %i.t, ptr %i.s, align 1
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.u = icmp eq i8 %i.k, 2
  %i.v = icmp eq i8 %2, 1
  %or.cond = and i1 %i.v, %i.u
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.val72, i64 22 ; 2 uses
  %.val.i.i78 = load i16, ptr %i.w, align 1
  %i.x = or i16 %.val.i.i78, 4
  store i16 %i.x, ptr %i.w, align 1
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i8 %3, 0
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = and i16 %.val.i, -13
  %i.aa = shl nuw nsw i8 %3, 2
  %i.ab = zext nneg i8 %i.aa to i16
  %i.ac = or i16 %i.z, %i.ab
  store i16 %i.ac, ptr %i.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.059 = phi i8 [ %3, %bb.f ], [ %i.m, %bb.e ]   ; 2 uses
  %i.ad = icmp eq i8 %4, 0
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val68.a = load ptr, ptr %i.e, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.val68.a, i64 %i.h ; 2 uses
  %.val.i.i80 = load i16, ptr %i.ae, align 1
  %i.af = and i16 %.val.i.i80, -49
  %i.ag = zext nneg i8 %4 to i16
  %i.ah = shl nuw nsw i16 %i.ag, 4
  %i.ai = or i16 %i.af, %i.ah
  store i16 %i.ai, ptr %i.ae, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i8 [ %4, %bb.h ], [ %i.o, %bb.g ]
  %i.aj = icmp eq i8 %2, 0
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val67.a = load ptr, ptr %i.e, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.val67.a, i64 %i.h ; 2 uses
  %.val.i.i81 = load i16, ptr %i.ak, align 1
  %i.al = and i16 %.val.i.i81, -4
  %i.am = zext nneg i8 %2 to i16
  %i.an = or disjoint i16 %i.al, %i.am
  store i16 %i.an, ptr %i.ak, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.060 = phi i8 [ %2, %bb.j ], [ %i.k, %bb.i ]   ; 2 uses
  %i.ao = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.o, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  %i.ap = load i16, ptr @_TRACE_SHPC_SLOT_COMMAND_DSTATE, align 2
  %.not64 = icmp eq i16 %i.ap, 0
  br i1 %.not64, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.as = load ptr, ptr %i.ar, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  %i.au = shl nuw nsw i32 %i.c, 3
  %i.av = and i32 %i.au, 248
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.ay, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %.not65 = icmp eq ptr %i.az, null
  br i1 %.not65, label %switch.lookup, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.n, %bb.m
  %i.be = phi ptr [ %i.bd, %bb.n ], [ @.str.13, %bb.m ]
  %i.bf = zext nneg i8 %i.m to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.shpc_slot_command.16, i64 %i.bf
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.tableidx = add nsw i8 %.059, -1         ; 2 uses
  %i.bg = icmp ult i8 %switch.tableidx, 3
  br i1 %i.bg, label %switch.lookup104, label %switch.lookup98

switch.lookup104:                                 ; preds = %switch.lookup
  %i.bh = zext nneg i8 %switch.tableidx to i64
  %switch.gep105 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.shpc_slot_command.19, i64 %i.bh
  %switch.load106 = load ptr, ptr %switch.gep105, align 8
  br label %switch.lookup98

switch.lookup98:                                  ; preds = %switch.lookup, %switch.lookup104
  %.0.i82 = phi ptr [ %switch.load106, %switch.lookup104 ], [ @.str.18, %switch.lookup ]
  %i.bi = zext nneg i8 %i.o to i64
  %switch.gep99 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.shpc_slot_command.16, i64 %i.bi
  %switch.load100 = load ptr, ptr %switch.gep99, align 8
  %switch.tableidx107 = add nsw i8 %.0, -1        ; 2 uses
  %i.bj = icmp ult i8 %switch.tableidx107, 3
  br i1 %i.bj, label %switch.lookup108, label %switch.lookup101

switch.lookup108:                                 ; preds = %switch.lookup98
  %i.bk = zext nneg i8 %switch.tableidx107 to i64
  %switch.gep109 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.shpc_slot_command.19, i64 %i.bk
  %switch.load110 = load ptr, ptr %switch.gep109, align 8
  br label %switch.lookup101

switch.lookup101:                                 ; preds = %switch.lookup98, %switch.lookup108
  %.0.i86 = phi ptr [ %switch.load110, %switch.lookup108 ], [ @.str.18, %switch.lookup98 ]
  %i.bl = zext nneg i8 %i.k to i64
  %switch.gep102 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.shpc_slot_command.20, i64 %i.bl
  %switch.load103 = load ptr, ptr %switch.gep102, align 8
  %i.bm = zext nneg i8 %.060 to i64
  %switch.gep112 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.shpc_slot_command.20, i64 %i.bm
  %switch.load113 = load ptr, ptr %switch.gep112, align 8
  tail call fastcc void @trace_shpc_slot_command(ptr noundef %i.bb, i32 noundef %i.c, ptr noundef %i.be, ptr noundef nonnull %switch.load, ptr noundef nonnull %.0.i82, ptr noundef nonnull %switch.load100, ptr noundef nonnull %.0.i86, ptr noundef nonnull %switch.load103, ptr noundef nonnull %switch.load113)
  br label %bb.o

bb.o:                                             ; preds = %switch.lookup101, %bb.l, %bb.k
  %i.bn = icmp eq i8 %i.k, 3
  %i.bo = icmp eq i8 %i.m, 3
  %i.bp = and i1 %i.bn, %i.bo
  br i1 %i.bp, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = icmp eq i8 %.060, 3
  %i.br = icmp eq i8 %.059, 3
  %i.bs = and i1 %i.br, %i.bq
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @shpc_free_devices_in_slot(ptr noundef nonnull %i.b, i32 noundef %i.d)
  %.val66 = load ptr, ptr %i.e, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.h ; 2 uses
  %.val.i.i91 = load i16, ptr %i.bt, align 1
  %i.bu = or i16 %.val.i.i91, 256
  store i16 %i.bu, ptr %i.bt, align 1
  %.val = load ptr, ptr %i.e, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h ; 2 uses
  %.val.i.i92 = load i16, ptr %i.bv, align 1
  %i.bw = or i16 %.val.i.i92, 3072
  store i16 %i.bw, ptr %i.bv, align 1
  %i.bx = load ptr, ptr %i.e, align 8
  %i.by = sext i32 %i.f to i64
  %i.bz = getelementptr i8, ptr %i.bx, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 38     ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = or i8 %i.cb, 9
  store i8 %i.cc, ptr %i.ca, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_shpc_slot_command(ptr noundef %0, i32 noundef range(i32 1, 256) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_SHPC_SLOT_COMMAND_DSTATE, align 2
  %.not8 = icmp eq i16 %i.b, 0
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

end_hunk_1
