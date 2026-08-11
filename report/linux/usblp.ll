inline.NumInlined: 83
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@usblp_ioctl:bb.a
  %i.k = tail call fastcc i32 @usblp_cache_device_id_string(ptr noundef %i.e) #15, !srcloc !34 ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %copy_to_user.exit110, label %check_copy_size.exit

check_copy_size.exit:                             ; preds = %bb.e
  %i.m = lshr i32 %1, 16
  %i.n = and i32 %i.m, 16383
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.n)
  %i.o = zext nneg i32 %spec.select to i64
  %i.p = getelementptr i8, ptr %i.e, i64 336
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = inttoptr i64 %2 to ptr
  %i.s = tail call i64 @_copy_to_user(ptr noundef %i.r, ptr noundef %i.q, i64 noundef %i.o) #11
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i32 0, i32 -14
  br label %copy_to_user.exit110

bb.f:                                             ; preds = %bb.c
  %.not87 = icmp sgt i32 %1, -1073741825
  %i.v = and i32 %1, 1073217536
  %i.w = icmp eq i32 %i.v, 0
  %or.cond = or i1 %.not87, %i.w
  br i1 %or.cond, label %copy_to_user.exit110, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.e, i64 296
  %i.y = load i32, ptr %i.x, align 8
  store i32 %i.y, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %i.e, i64 224
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp sgt i32 %i.ab, -1                  ; 2 uses
  %spec.store.select = select i1 %i.ac, i32 2, i32 0
  store i32 %spec.store.select, ptr %i.z, align 4
  %spec.select165 = select i1 %i.ac, i32 2, i32 0 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.e, i64 248
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = or disjoint i32 %spec.select165, 4      ; 2 uses
  store i32 %i.ag, ptr %i.z, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi i32 [ %spec.select165, %bb.g ], [ %i.ag, %bb.h ]
  %i.ai = getelementptr i8, ptr %i.e, i64 272
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.j, label %copy_to_user.exit108

bb.j:                                             ; preds = %bb.i
  %i.al = or i32 %i.ah, 8
  store i32 %i.al, ptr %i.z, align 4
  br label %copy_to_user.exit108

copy_to_user.exit108:                             ; preds = %bb.j, %bb.i
  %i.am = inttoptr i64 %2 to ptr
  %i.an = call i64 @_copy_to_user(ptr noundef %i.am, ptr noundef nonnull %i.c, i64 noundef 8) #11
  %.fr157 = freeze i64 %i.an
  %.not89 = icmp eq i64 %.fr157, 0
  %spec.select151 = select i1 %.not89, i32 0, i32 -14
  br label %copy_to_user.exit110

bb.k:                                             ; preds = %bb.c
  %.mask86 = and i32 %1, -1073741824
  %.not85 = icmp eq i32 %.mask86, 1073741824
  br i1 %.not85, label %bb.l, label %copy_to_user.exit110

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %i.e, i64 80
  tail call void @usb_kill_anchored_urbs(ptr noundef %i.ao) #11
  %i.ap = trunc i64 %2 to i32
  %i.aq = tail call fastcc i32 @usblp_set_protocol(ptr noundef %i.e, i32 noundef %i.ap) #15, !srcloc !35 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %copy_to_user.exit110

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %i.e, i64 296
  %i.at = load i32, ptr %i.as, align 8
  %i.au = tail call fastcc i32 @usblp_set_protocol(ptr noundef %i.e, i32 noundef %i.at) #15, !srcloc !36 ; 0 uses
  br label %copy_to_user.exit110

bb.n:                                             ; preds = %bb.c
  %.mask = and i32 %1, -1073741824
  %.not82 = icmp eq i32 %.mask, 1073741824
  br i1 %.not82, label %bb.o, label %copy_to_user.exit110

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 944
  %i.ax = load i16, ptr %i.aw, align 8
  %.not83 = icmp eq i16 %i.ax, 1008
  br i1 %.not83, label %bb.p, label %copy_to_user.exit110

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %i.e, i64 320
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 1
  %.not84 = icmp eq i32 %i.ba, 0
  br i1 %.not84, label %bb.q, label %copy_to_user.exit110

bb.q:                                             ; preds = %bb.p
  %i.bb = trunc i64 %2 to i32
  %i.bc = call fastcc i32 @usblp_hp_channel_change_request(ptr noundef %i.e, i32 noundef %i.bb, ptr noundef nonnull %i.a) #15, !srcloc !37 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.r, label %copy_to_user.exit110

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %i.e, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 176
  %i.bg = getelementptr i8, ptr %i.e, i64 300
  %i.bh = load i32, ptr %i.bg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bf, ptr noundef nonnull @.str.33, i32 noundef %i.bh, i32 noundef %i.bc) #14
  br label %copy_to_user.exit110

bb.s:                                             ; preds = %bb.c
  %.not80 = icmp sgt i32 %1, -1073741825
  %i.bi = and i32 %1, 1073217536
  %i.bj = icmp eq i32 %i.bi, 0
  %or.cond96 = or i1 %.not80, %i.bj
  br i1 %or.cond96, label %copy_to_user.exit110, label %copy_to_user.exit106

copy_to_user.exit106:                             ; preds = %bb.s
  %i.bk = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 8
  store i32 %i.bo, ptr %i.c, align 8
  %i.bp = load i32, ptr %i.bk, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.bp, ptr %i.bq, align 4
  %i.br = inttoptr i64 %2 to ptr
  %i.bs = call i64 @_copy_to_user(ptr noundef %i.br, ptr noundef nonnull %i.c, i64 noundef 8) #11
  %.fr156 = freeze i64 %i.bs
  %.not81 = icmp eq i64 %.fr156, 0
  %spec.select152 = select i1 %.not81, i32 0, i32 -14
  br label %copy_to_user.exit110

bb.t:                                             ; preds = %bb.c
  %.not78 = icmp sgt i32 %1, -1073741825
  %i.bt = and i32 %1, 1073217536
  %i.bu = icmp eq i32 %i.bt, 0
  %or.cond99 = or i1 %.not78, %i.bu
  br i1 %or.cond99, label %copy_to_user.exit110, label %copy_to_user.exit104

copy_to_user.exit104:                             ; preds = %bb.t
  %i.bv = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 944
  %i.bx = load i16, ptr %i.bw, align 8
  %i.by = zext i16 %i.bx to i32
  store i32 %i.by, ptr %i.c, align 8
  %i.bz = getelementptr i8, ptr %i.bv, i64 946
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = zext i16 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cb, ptr %i.cc, align 4
  %i.cd = inttoptr i64 %2 to ptr
  %i.ce = call i64 @_copy_to_user(ptr noundef %i.cd, ptr noundef nonnull %i.c, i64 noundef 8) #11
  %.fr155 = freeze i64 %i.ce
  %.not79 = icmp eq i64 %.fr155, 0
  %spec.select153 = select i1 %.not79, i32 0, i32 -14
  br label %copy_to_user.exit110

bb.u:                                             ; preds = %bb.c
  %.not77 = icmp ult i32 %1, 1073741824
  br i1 %.not77, label %bb.v, label %copy_to_user.exit110

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr i8, ptr %i.e, i64 188
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = load ptr, ptr %i.e, align 8             ; 2 uses
  %.val.i = load i32, ptr %i.ch, align 8
  %i.ci = shl i32 %.val.i, 8
  %i.cj = or i32 %i.ci, -2147483648
  %i.ck = trunc i32 %i.cg to i16
  %i.cl = tail call i32 @usb_control_msg(ptr noundef %i.ch, i32 noundef %i.cj, i8 noundef zeroext 2, i8 noundef zeroext 35, i16 noundef zeroext 0, i16 noundef zeroext %i.ck, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #11
  %i.cm = tail call range(i32 -2147483648, 1) i32 @llvm.smin.i32(i32 %i.cl, i32 0)
  br label %copy_to_user.exit110

bb.w:                                             ; preds = %bb.b
  switch i32 %1, label %copy_to_user.exit110 [
    i32 1547, label %bb.x
    i32 1540, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr i8, ptr %i.e, i64 72      ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr i8, ptr %i.e, i64 188
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = load ptr, ptr %i.e, align 8             ; 2 uses
  %.val.i130 = load i32, ptr %i.cr, align 8
  %i.cs = shl i32 %.val.i130, 8
  %i.ct = or i32 %i.cs, -2147483520
  %i.cu = trunc i32 %i.cq to i16
  %i.cv = tail call i32 @usb_control_msg(ptr noundef %i.cr, i32 noundef %i.ct, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %i.cu, ptr noundef %i.co, i16 noundef zeroext 1, i32 noundef 5000) #11 ; 2 uses
  %3 = tail call range(i32 -2147483648, 1) i32 @llvm.smin.i32(i32 %i.cv, i32 0)
  %.not74 = icmp sgt i32 %i.cv, -1
  br i1 %.not74, label %copy_to_user.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = tail call i32 @___ratelimit(ptr noundef nonnull @usblp_ioctl._rs, ptr noundef nonnull @__func__.usblp_ioctl) #11
  %.not76 = icmp eq i32 %i.cw, 0
  br i1 %.not76, label %copy_to_user.exit110, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr i8, ptr %i.e, i64 300
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %i.cy, i32 noundef %3) #14 ; 0 uses
  br label %copy_to_user.exit110

copy_to_user.exit:                                ; preds = %bb.x
  %i.da = load ptr, ptr %i.cn, align 8
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  store i32 %i.dc, ptr %i.b, align 4
  %i.dd = inttoptr i64 %2 to ptr
  %i.de = call i64 @_copy_to_user(ptr noundef %i.dd, ptr noundef nonnull %i.b, i64 noundef 4) #11
  %.fr = freeze i64 %i.de
  %.not75 = icmp eq i64 %.fr, 0
  %spec.select154 = select i1 %.not75, i32 0, i32 -14
  br label %copy_to_user.exit110

bb.aa:                                            ; preds = %bb.w
  %.not73 = icmp eq i64 %2, 0
  %i.df = getelementptr i8, ptr %i.e, i64 324     ; 3 uses
  %i.dg = load i32, ptr %i.df, align 4            ; 2 uses
  br i1 %.not73, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = or i32 %i.dg, 64
  store i32 %i.dh, ptr %i.df, align 4
  br label %copy_to_user.exit110

bb.ac:                                            ; preds = %bb.aa
  %i.di = and i32 %i.dg, -65
  store i32 %i.di, ptr %i.df, align 4
  br label %copy_to_user.exit110

copy_to_user.exit110:                             ; preds = %check_copy_size.exit, %copy_to_user.exit, %copy_to_user.exit104, %copy_to_user.exit106, %copy_to_user.exit108, %bb.w, %bb.y, %bb.z, %bb.c, %bb.u, %bb.t, %bb.s, %bb.n, %bb.o, %bb.p, %bb.k, %bb.f, %bb.e, %bb.d, %bb.a, %bb.q, %bb.l, %bb.m, %bb.v, %bb.ab, %bb.ac, %bb.r
  %.064 = phi i32 [ -22, %bb.u ], [ -19, %bb.a ], [ -22, %bb.d ], [ -25, %bb.w ], [ 0, %bb.ac ], [ %i.k, %bb.e ], [ -22, %bb.f ], [ %spec.select153, %copy_to_user.exit104 ], [ 0, %bb.ab ], [ %i.aq, %bb.m ], [ 0, %bb.l ], [ -22, %bb.k ], [ -5, %bb.r ], [ 0, %bb.q ], [ -22, %bb.n ], [ -22, %bb.s ], [ -5, %bb.z ], [ %spec.select152, %copy_to_user.exit106 ], [ -22, %bb.t ], [ -22, %bb.o ], [ %spec.select154, %copy_to_user.exit ], [ %i.cm, %bb.v ], [ -22, %bb.p ], [ -25, %bb.c ], [ -5, %bb.y ], [ %spec.select151, %copy_to_user.exit108 ], [ %i.u, %check_copy_size.exit ]
  call void @mutex_unlock(ptr noundef %i.f) #11
  %i.dj = sext i32 %.064 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 %i.dj
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @usblp_open(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 76
  %.val31 = load i32, ptr %i.a, align 4
  %i.b = and i32 %.val31, 1048575
  tail call void @mutex_lock(ptr noundef nonnull @usblp_mutex) #11
  %i.c = tail call ptr @usb_find_interface(ptr noundef nonnull @usblp_driver, i32 noundef %i.b) #11 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %handle_bidir.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 200
  %.val = load ptr, ptr %i.d, align 8             ; 10 uses
  %.not27 = icmp eq ptr %.val, null
  br i1 %.not27, label %handle_bidir.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %.val, align 8
  %.not28 = icmp eq ptr %i.e, null
  br i1 %.not28, label %handle_bidir.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %.val, i64 329
  %i.g = load i8, ptr %i.f, align 1
  %.not29 = icmp eq i8 %i.g, 0
  br i1 %.not29, label %handle_bidir.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %.val, i64 328     ; 4 uses
  %i.i = load i8, ptr %i.h, align 8
  %.not30 = icmp eq i8 %i.i, 0
  br i1 %.not30, label %bb.f, label %handle_bidir.exit

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @usb_autopm_get_interface(ptr noundef nonnull %i.c) #11 ; 5 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %handle_bidir.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.h, align 8
  %i.l = getelementptr i8, ptr %1, i64 24         ; 2 uses
  store ptr %.val, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val, i64 304
  store i32 1, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val, i64 312
  store i32 0, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.val, i64 308
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %.val, i64 330
  %i.q = load i8, ptr %i.p, align 2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %handle_bidir.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i8, ptr %i.h, align 8
  %.not3.i = icmp eq i8 %i.r, 0
  br i1 %.not3.i, label %handle_bidir.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call fastcc i32 @usblp_submit_read(ptr noundef nonnull %.val) #15, !srcloc !17
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %handle_bidir.exit

bb.j:                                             ; preds = %bb.i
  tail call void @usb_autopm_put_interface(ptr noundef nonnull %i.c) #11
  store i8 0, ptr %i.h, align 8
  store ptr null, ptr %i.l, align 8
  br label %handle_bidir.exit

handle_bidir.exit:                                ; preds = %bb.i, %bb.h, %bb.g, %bb.j, %bb.f, %bb.e, %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -16, %bb.e ], [ %i.j, %bb.f ], [ -5, %bb.j ], [ -19, %bb.a ], [ -19, %bb.d ], [ -19, %bb.c ], [ -19, %bb.b ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @usblp_mutex) #11
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @usblp_release(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 324      ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, -65
  store i32 %i.e, ptr %i.c, align 4
  tail call void @mutex_lock(ptr noundef nonnull @usblp_mutex) #11
  %i.f = getelementptr i8, ptr %i.b, i64 328
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 329      ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 80
  tail call void @usb_kill_anchored_urbs(ptr noundef %i.i) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %i.b, i64 192
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @usb_autopm_put_interface(ptr noundef %i.k) #11
  %i.l = load i8, ptr %i.g, align 1
  %.not8 = icmp eq i8 %i.l, 0
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @usblp_cleanup(ptr noundef %i.b) #15, !srcloc !38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @mutex_unlock(ptr noundef nonnull @usblp_mutex) #11
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @usblp_submit_read(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 296
  %i.e = load i32, ptr %i.d, align 8
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr [24 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 216
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %.val = load i32, ptr %i.c, align 8
  %i.m = shl i32 %.val, 8
  %i.n = shl nuw nsw i32 %i.l, 15
  %i.o = or i32 %i.m, %i.n
  %i.p = or i32 %i.o, -1073741696
  %i.q = getelementptr i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.a, i64 64
  store ptr %i.c, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.a, i64 80
  store i32 %i.p, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.a, i64 96
  store ptr %i.r, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.a, i64 136
  store i32 1024, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.a, i64 184
  store ptr @usblp_bulk_read, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.a, i64 176
  store ptr %0, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %0, i64 80
  tail call void @usb_anchor_urb(ptr noundef nonnull %i.a, ptr noundef %i.y) #11
  %i.z = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.aa = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.z) #11
  %i.ab = getelementptr i8, ptr %0, i64 184
  store i32 0, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %0, i64 308       ; 2 uses
  store i32 0, ptr %i.ac, align 4
end_hunk_0
begin_hunk_1_@usblp_submit_read:bb.a
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__trace_set_current_state(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usblp_bulk_read(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr i8, ptr %i.b, i64 329
  %i.f = load i8, ptr %i.e, align 1
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 328
  %i.h = load i8, ptr %i.g, align 8
  %i.i = icmp ne i8 %i.h, 0
  %i.j = icmp ne i32 %i.d, 0
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.b, i64 300
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %i.l, i32 noundef %i.d) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = getelementptr i8, ptr %i.b, i64 56       ; 2 uses
  %i.o = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.n) #11
  %i.p = icmp slt i32 %i.d, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 140
  %i.r = load i32, ptr %i.q, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i32 [ %i.r, %bb.e ], [ %i.d, %bb.d ]
  %i.s = getelementptr i8, ptr %i.b, i64 316
  store i32 %.sink, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.b, i64 308
  store i32 1, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.b, i64 136
  %i.v = tail call i32 @__wake_up(ptr noundef %i.u, i32 noundef 3, i32 noundef 1, ptr noundef null) #11 ; 0 uses
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.n, i64 noundef %i.o) #11
  tail call void @usb_free_urb(ptr noundef %0) #11
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -28, 1) i32 @usblp_wwait(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.wait_queue_entry, align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #16, !srcloc !18
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  store i64 0, ptr %2, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @default_wake_function, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr i8, ptr %0, i64 160        ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @add_wait_queue(ptr noundef %i.f, ptr noundef nonnull %2) #11
  %i.g = getelementptr i8, ptr %0, i64 32         ; 8 uses
  %i.h = call i32 @mutex_lock_interruptible(ptr noundef %i.g) #11
  %.not44 = icmp eq i32 %i.h, 0
  br i1 %.not44, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 329
  %i.k = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 304
  %i.m = getelementptr i8, ptr %0, i64 324
  %i.n = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 188
  %i.p = getelementptr i8, ptr %0, i64 300        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %usblp_check_status.exit.thread
  %.02945 = phi i32 [ 0, %.lr.ph ], [ %.1, %usblp_check_status.exit.thread ] ; 4 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #13
          to label %arch_static_branch.exit34 [label %bb.c], !srcloc !19

bb.c:                                             ; preds = %bb.b
  call void @__trace_set_current_state(i32 noundef 1) #11
  br label %arch_static_branch.exit34

arch_static_branch.exit34:                        ; preds = %bb.b, %bb.c
  %i.q = call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 1, ptr elementtype(i32) %i.i) #13, !srcloc !39 ; 0 uses
  %i.r = load i8, ptr %i.j, align 1
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %usblp_wtest.exit.thread, label %test_tsk_thread_flag.exit.i.i

test_tsk_thread_flag.exit.i.i:                    ; preds = %arch_static_branch.exit34
  %i.s = load volatile i64, ptr %i.c, align 8
  %i.t = and i64 %i.s, 4
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %signal_pending.exit.i, label %usblp_wtest.exit.thread, !prof !21

signal_pending.exit.i:                            ; preds = %test_tsk_thread_flag.exit.i.i
  %i.u = load volatile i64, ptr %i.c, align 8
  %i.v = and i64 %i.u, 2
  %.not8.i = icmp eq i64 %i.v, 0
  br i1 %.not8.i, label %bb.d, label %usblp_wtest.exit.thread

bb.d:                                             ; preds = %signal_pending.exit.i
  %i.w = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.k) #11
  %i.x = load i32, ptr %i.l, align 8              ; 2 uses
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.k, i64 noundef %i.w) #11
  %i.y = or i32 %i.x, %1
  %brmerge.not = icmp eq i32 %i.y, 0
  br i1 %brmerge.not, label %bb.e, label %usblp_wtest.exit.thread.split.loop.exit

usblp_wtest.exit.thread.split.loop.exit:          ; preds = %bb.d
  %.not9.i.not.le = icmp eq i32 %i.x, 0
  %.mux.le = select i1 %.not9.i.not.le, i32 -11, i32 0
  br label %usblp_wtest.exit.thread

usblp_wtest.exit.thread:                          ; preds = %signal_pending.exit.i, %test_tsk_thread_flag.exit.i.i, %arch_static_branch.exit34, %usblp_wtest.exit.thread.split.loop.exit
  %.0.i35.ph = phi i32 [ %.mux.le, %usblp_wtest.exit.thread.split.loop.exit ], [ -4, %test_tsk_thread_flag.exit.i.i ], [ -19, %arch_static_branch.exit34 ], [ -4, %signal_pending.exit.i ]
  call void @mutex_unlock(ptr noundef %i.g) #11
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  call void @mutex_unlock(ptr noundef %i.g) #11
  %i.z = call i64 @schedule_timeout(i64 noundef 1500) #11
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %usblp_check_status.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.m, align 4
  %i.ac = and i32 %i.ab, 64
  %.not32 = icmp eq i32 %i.ac, 0
  call void @mutex_lock(ptr noundef %i.g) #11
  %i.ad = load ptr, ptr %i.n, align 8
  %i.ae = load i32, ptr %i.o, align 4
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  %.val.i = load i32, ptr %i.af, align 8
  %i.ag = shl i32 %.val.i, 8
  %i.ah = or i32 %i.ag, -2147483520
  %i.ai = trunc i32 %i.ae to i16
  %i.aj = call i32 @usb_control_msg(ptr noundef %i.af, i32 noundef %i.ah, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %i.ai, ptr noundef %i.ad, i16 noundef zeroext 1, i32 noundef 5000) #11 ; 2 uses
  br i1 %.not32, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = call range(i32 -2147483648, 1) i32 @llvm.smin.i32(i32 %i.aj, i32 0)
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @mutex_unlock(ptr noundef %i.g) #11
  %i.al = call i32 @___ratelimit(ptr noundef nonnull @usblp_check_status._rs, ptr noundef nonnull @__func__.usblp_check_status) #11
  %.not21.i = icmp eq i32 %i.al, 0
  br i1 %.not21.i, label %usblp_check_status.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %i.p, align 4
  %i.an = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %i.am, i32 noundef %3) #14 ; 0 uses
  br label %usblp_check_status.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.n, align 8
  %i.ap = load i8, ptr %i.ao, align 1
  call void @mutex_unlock(ptr noundef %i.g) #11
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = and i32 %i.aq, 8
  %.not.not.i = icmp eq i32 %i.ar, 0
  %spec.select.i = select i1 %.not.not.i, i8 3, i8 0
  %i.as = and i32 %i.aq, 32
  %.not.i36 = icmp eq i32 %i.as, 0
  %.1.i = select i1 %.not.i36, i8 %spec.select.i, i8 1
  %i.at = and i32 %i.aq, 16
  %.not19.not.i = icmp eq i32 %i.at, 0
  %.2.i = select i1 %.not19.not.i, i8 2, i8 %.1.i ; 2 uses
  %i.au = zext nneg i8 %.2.i to i32               ; 2 uses
  %.not20.i = icmp eq i32 %.02945, %i.au
  br i1 %.not20.i, label %usblp_check_status.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load i32, ptr %i.p, align 4
  %i.aw = zext nneg i8 %.2.i to i64
  %i.ax = getelementptr [8 x i8], ptr @usblp_messages, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %i.av, ptr noundef %i.ay) #14 ; 0 uses
  br label %usblp_check_status.exit

usblp_check_status.exit:                          ; preds = %bb.j, %bb.k
  %.0.i37 = phi i32 [ %i.au, %bb.k ], [ %.02945, %bb.j ] ; 2 uses
  %i.ba = icmp eq i32 %.0.i37, 1
  br i1 %i.ba, label %.loopexit, label %usblp_check_status.exit.thread

bb.l:                                             ; preds = %bb.f
  call void @mutex_unlock(ptr noundef %i.g) #11
  br label %usblp_check_status.exit.thread

usblp_check_status.exit.thread:                   ; preds = %bb.i, %bb.h, %bb.l, %usblp_check_status.exit, %bb.e
  %.1 = phi i32 [ %.0.i37, %usblp_check_status.exit ], [ %.02945, %bb.l ], [ %.02945, %bb.e ], [ 0, %bb.h ], [ 0, %bb.i ]
  %i.bb = call i32 @mutex_lock_interruptible(ptr noundef %i.g) #11
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %usblp_check_status.exit.thread, %usblp_check_status.exit, %bb.a, %usblp_wtest.exit.thread
  %.0 = phi i32 [ %.0.i35.ph, %usblp_wtest.exit.thread ], [ -4, %bb.a ], [ -4, %usblp_check_status.exit.thread ], [ -28, %usblp_check_status.exit ]
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #13
          to label %arch_static_branch.exit [label %bb.m], !srcloc !19

bb.m:                                             ; preds = %.loopexit
  call void @__trace_set_current_state(i32 noundef 0) #11
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %.loopexit, %bb.m
  %i.bc = getelementptr i8, ptr %i.c, i64 24      ; 2 uses
  %i.bd = call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bc, i32 0, ptr elementtype(i32) %i.bc) #13, !srcloc !40 ; 0 uses
  call void @remove_wait_queue(ptr noundef %i.f, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usblp_bulk_write(ptr noundef %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr i8, ptr %i.b, i64 329
  %i.f = load i8, ptr %i.e, align 1
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 328
  %i.h = load i8, ptr %i.g, align 8
  %i.i = icmp ne i8 %i.h, 0
  %i.j = icmp ne i32 %i.d, 0
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.b, i64 300
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %i.l, i32 noundef %i.d) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = getelementptr i8, ptr %i.b, i64 56       ; 2 uses
  %i.o = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.n) #11
  %i.p = icmp slt i32 %i.d, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 140
  %i.r = load i32, ptr %i.q, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i32 [ %i.r, %bb.e ], [ %i.d, %bb.d ]
  %i.s = getelementptr i8, ptr %i.b, i64 312
  store i32 %.sink, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.b, i64 331
  store i8 0, ptr %i.t, align 1
  %i.u = getelementptr i8, ptr %i.b, i64 304
  store i32 1, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.b, i64 160
  %i.w = tail call i32 @__wake_up(ptr noundef %i.v, i32 noundef 3, i32 noundef 1, ptr noundef null) #11 ; 0 uses
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.n, i64 noundef %i.o) #11
  tail call void @usb_free_urb(ptr noundef %0) #11
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @usblp_hp_channel_change_request(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 24), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(1) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef range(i64 -2147483648, 2147483648) 1) #12 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 188
  %i.d = load i32, ptr %i.c, align 4
  %i.e = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i = load i32, ptr %i.e, align 8
  %i.f = shl i32 %.val.i, 8
  %i.g = or i32 %i.f, -2147483520
  %i.h = trunc i32 %1 to i16
  %i.i = trunc i32 %i.d to i16
  %i.j = tail call i32 @usb_control_msg(ptr noundef %i.e, i32 noundef %i.g, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext %i.h, i16 noundef zeroext %i.i, ptr noundef nonnull %i.b, i16 noundef zeroext 1, i32 noundef 5000) #11 ; 2 uses
  %i.k = tail call range(i32 -2147483648, 1) i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.l = icmp sgt i32 %i.j, -1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.b, align 8
  store i8 %i.m, ptr %2, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @kfree(ptr noundef nonnull %i.b) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.k, %bb.d ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @usblp_cleanup(ptr noundef %0) unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 300
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %i.b) #14 ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @kfree(ptr noundef %i.e) #11
  %i.f = getelementptr i8, ptr %0, i64 336
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @kfree(ptr noundef %i.g) #11
  %i.h = getelementptr i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @kfree(ptr noundef %i.i) #11
  %i.j = getelementptr i8, ptr %0, i64 192
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @usb_put_intf(ptr noundef %i.k) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

end_hunk_1
