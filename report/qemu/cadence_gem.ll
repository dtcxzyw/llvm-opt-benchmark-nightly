Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cadence_gem?download=true
inline.NumInlined: 181
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@gem_realize:bb.a
  %i.bv = load i16, ptr %i.bu, align 16
  %i.bw = icmp ugt i16 %i.bv, 16383
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %gem_init_register_masks.exit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef 1794, ptr noundef nonnull @__func__.gem_realize, ptr noundef nonnull @.str.21, i32 noundef 16383) #8
  br label %bb.k

bb.k:                                             ; preds = %gem_init_register_masks.exit, %bb.j, %bb.h, %bb.f, %bb.d
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @gem_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 30, ptr noundef nonnull @__func__.CADENCE_GEM) #8 ; 43 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9556
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %i.b, i8 noundef 0, i64 noundef 2048, i1 noundef false) #8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 19872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 noundef 0, i64 noundef 32, i1 noundef false) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 19904
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, i8 noundef 0, i64 noundef 32, i1 noundef false) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 9560
  store i32 524288, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 9564
  store i32 6, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9572
  store i32 132996, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 9604
  store i32 134217727, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9616
  store i32 65535, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 9620
  store i32 1023, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 9624
  store i32 1023, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 9548
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 9808
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 10196
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 9554
  %i.q = load i8, ptr %i.p, align 2, !range !10, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  %spec.store.select = select i1 %i.r, i32 47186192, i32 47186193
  store i32 %spec.store.select, ptr %i.o, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9552
  %i.t = load i16, ptr %i.s, align 16
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = or disjoint i32 %i.u, 716242944
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 10200
  store i32 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 10212
  store i32 3088453, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 10216 ; 2 uses
  store i32 8388608, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 11156
  store i32 3302, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 9628
  store i32 %i.u, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 9544 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8             ; 2 uses
  %i.ad = icmp ugt i8 %i.ac, 1
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = zext i8 %i.ac to i64
  %i.af = sub nsw i64 65, %i.ae
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = lshr i64 -1, %i.ag
  %.tr = trunc i64 %i.ah to i32
  %i.ai = shl i32 %.tr, 1
  %i.aj = or i32 %i.ai, 8388608
  store i32 %i.aj, ptr %i.y, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1264
  %i.al = load i32, ptr %i.ak, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 9692
  store i32 %i.al, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1268
  %i.ao = load i16, ptr %i.an, align 4
  %i.ap = zext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 9696
  store i32 %i.ap, ptr %i.aq, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 52896
  store i32 0, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 19798 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.as, i8 noundef 0, i64 noundef 64, i1 noundef false) #8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 19800 ; 2 uses
  store <8 x i16> <i16 4416, i16 31081, i16 321, i16 3266, i16 481, i16 -12831, i16 15, i16 8193>, ptr %i.as, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 19814
  store i16 16614, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 19816
  store i16 768, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 19818
  store i16 31744, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 19828
  store i16 12288, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 19830
  store i16 120, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 19832
  store i16 31744, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 19838
  store i16 3168, ptr %i.ba, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 19846
  store i16 16640, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 19850
  store i16 10, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 19852
  store i16 -31605, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1256
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call ptr @qemu_get_queue(ptr noundef %i.bf) #8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  %.not.i.i = icmp eq i32 %i.bi, 0                ; 2 uses
  %i.bj = load i16, ptr %i.at, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 19836 ; 2 uses
  %i.bl = and i16 %i.bj, -37
  %masksel.i.i = select i1 %.not.i.i, i16 36, i16 0
  %.sink.i.i = or disjoint i16 %i.bl, %masksel.i.i
  %.sink6.i.i = select i1 %.not.i.i, i16 3088, i16 1024
  store i16 %.sink.i.i, ptr %i.at, align 8
  %i.bm = load i16, ptr %i.bk, align 4
  %i.bn = or i16 %i.bm, %.sink6.i.i
  store i16 %i.bn, ptr %i.bk, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 9480 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 9592
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  tail call void @qemu_set_irq(ptr noundef %i.bp, i32 noundef %i.bt) #8
  %i.bu = load i8, ptr %i.ab, align 8
  %i.bv = icmp ugt i8 %i.bu, 1
  br i1 %i.bv, label %.lr.ph.i, label %gem_update_int_status.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %bb.c ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 10576
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  tail call void @qemu_set_irq(ptr noundef %i.bx, i32 noundef %i.cc) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cd = load i8, ptr %i.ab, align 8
  %i.ce = zext i8 %i.cd to i64
  %i.cf = icmp samesign ult i64 %indvars.iv.next.i, %i.ce
  br i1 %i.cf, label %.lr.ph.i, label %gem_update_int_status.exit, !llvm.loop !0

gem_update_int_status.exit:                       ; preds = %.lr.ph.i, %bb.c
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @address_space_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @get_system_memory() local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @sysbus_init_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_macaddr_default_if_unset(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_new_nic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_get_typename(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @gem_receive(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #8 ; 42 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9560 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 7 uses
  %i.d = and i32 %i.c, 16
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %i.f = xor i32 %i.e, -1
  %i.g = getelementptr i8, ptr %1, i64 4
  %i.h = load i16, ptr %i.g, align 1
  %i.i = zext i16 %i.h to i32
  %i.j = xor i32 %i.i, 65535
  %i.k = or i32 %i.f, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not26.i = icmp eq i32 %i.m, 0
  br i1 %.not26.i, label %3, label %bb.c

3:                                                ; preds = %bb.b
  %4 = and i32 %i.c, 32
  %.not27.i = icmp eq i32 %4, 0
  br i1 %.not27.i, label %select.unfold, label %.critedge168

bb.c:                                             ; preds = %bb.b
  %.val.i = load i8, ptr %1, align 1              ; 2 uses
  %i.n = and i8 %.val.i, 1
  %.not28.i = icmp eq i8 %i.n, 0
  br i1 %.not28.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.c, 64
  %.not29.i = icmp eq i32 %i.o, 0
  br i1 %.not29.i, label %bb.f, label %bb.e

.critedge.i:                                      ; preds = %bb.c
  %i.p = and i32 %i.c, 128
  %.not30.i = icmp eq i32 %i.p, 0
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.i, %bb.d
  %i.q = phi i32 [ -5, %.critedge.i ], [ -4, %bb.d ]
  %i.r = zext i8 %.val.i to i32                   ; 8 uses
  %i.s = lshr i32 %i.r, 5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = zext i8 %i.u to i32                      ; 7 uses
  %i.w = lshr i32 %i.v, 3
  %i.x = xor i32 %i.w, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  %i.aa = zext i8 %i.z to i32                     ; 7 uses
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = xor i32 %i.x, %i.ab
  %i.ad = lshr i32 %i.aa, 7
  %i.ae = xor i32 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32                    ; 8 uses
  %i.ai = lshr i32 %i.ah, 5
  %i.aj = xor i32 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32                    ; 8 uses
  %i.an = lshr i32 %i.am, 3
  %i.ao = xor i32 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32                    ; 8 uses
  %i.as = lshr i32 %i.ar, 1
  %i.at = xor i32 %i.ao, %i.as
  %i.au = lshr i32 %i.ar, 7
  %.masked.i.i = and i32 %i.at, 1
  %i.av = xor i32 %.masked.i.i, %i.au
  %i.aw = shl nuw nsw i32 %i.av, 5
  %i.ax = lshr i32 %i.r, 4
  %i.ay = lshr i32 %i.v, 2
  %i.az = xor i32 %i.ay, %i.ax
  %i.ba = lshr i32 %i.aa, 6
  %i.bb = lshr i32 %i.ah, 4
  %i.bc = lshr i32 %i.am, 2
  %i.bd = lshr i32 %i.ar, 6
  %i.be = xor i32 %i.az, %i.ba
  %i.bf = xor i32 %i.be, %i.bb
  %i.bg = xor i32 %i.bf, %i.bc
  %i.bh = xor i32 %i.bg, %i.bd
  %i.bi = xor i32 %i.bh, %i.aa
  %i.bj = xor i32 %i.bi, %i.ar
  %i.bk = shl nuw nsw i32 %i.bj, 4
  %i.bl = and i32 %i.bk, 16
  %i.bm = or disjoint i32 %i.bl, %i.aw
  %i.bn = lshr i32 %i.r, 3
  %i.bo = lshr i32 %i.v, 1
  %i.bp = xor i32 %i.bo, %i.bn
  %i.bq = lshr i32 %i.v, 7
  %i.br = xor i32 %i.bp, %i.bq
  %i.bs = lshr i32 %i.aa, 5
  %i.bt = xor i32 %i.br, %i.bs
  %i.bu = lshr i32 %i.ah, 3
  %i.bv = xor i32 %i.bt, %i.bu
  %i.bw = lshr i32 %i.am, 1
  %i.bx = xor i32 %i.bv, %i.bw
  %i.by = lshr i32 %i.am, 7
  %i.bz = xor i32 %i.bx, %i.by
  %i.ca = lshr i32 %i.ar, 5
  %i.cb = xor i32 %i.bz, %i.ca
  %i.cc = shl nuw nsw i32 %i.cb, 3
  %i.cd = and i32 %i.cc, 8
  %i.ce = or disjoint i32 %i.bm, %i.cd
  %i.cf = lshr i32 %i.r, 2
  %i.cg = lshr i32 %i.v, 6
  %i.ch = lshr i32 %i.aa, 4
  %i.ci = lshr i32 %i.ah, 2
  %i.cj = lshr i32 %i.am, 6
  %i.ck = lshr i32 %i.ar, 4
  %i.cl = xor i32 %i.cf, %i.cg
  %i.cm = xor i32 %i.cl, %i.ch
  %i.cn = xor i32 %i.cm, %i.ci
  %i.co = xor i32 %i.cn, %i.cj
  %i.cp = xor i32 %i.co, %i.ck
  %i.cq = xor i32 %i.cp, %i.v
  %i.cr = xor i32 %i.cq, %i.am
  %i.cs = shl nuw nsw i32 %i.cr, 2
  %i.ct = and i32 %i.cs, 4
  %i.cu = or disjoint i32 %i.ce, %i.ct
  %i.cv = lshr i32 %i.r, 1
  %i.cw = lshr i32 %i.r, 7
  %i.cx = xor i32 %i.cw, %i.cv
  %i.cy = lshr i32 %i.v, 5
  %i.cz = xor i32 %i.cx, %i.cy
  %i.da = lshr i32 %i.aa, 3
  %i.db = xor i32 %i.cz, %i.da
  %i.dc = lshr i32 %i.ah, 1
  %i.dd = xor i32 %i.db, %i.dc
  %i.de = lshr i32 %i.ah, 7
  %i.df = xor i32 %i.dd, %i.de
  %i.dg = lshr i32 %i.am, 5
  %i.dh = xor i32 %i.df, %i.dg
  %i.di = lshr i32 %i.ar, 3
  %i.dj = xor i32 %i.dh, %i.di
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = and i32 %i.dk, 2
  %i.dm = or disjoint i32 %i.cu, %i.dl
  %i.dn = lshr i32 %i.r, 6
  %i.do = lshr i8 %i.u, 4
  %i.dp = zext nneg i8 %i.do to i32
  %i.dq = lshr i8 %i.z, 2
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = lshr i32 %i.ah, 6
  %i.dt = lshr i32 %i.am, 4
  %i.du = lshr i32 %i.ar, 2
  %i.dv = xor i32 %i.dn, %i.dp
  %i.dw = xor i32 %i.dv, %i.dr
  %i.dx = xor i32 %i.dw, %i.ds
  %i.dy = xor i32 %i.dx, %i.dt
  %i.dz = xor i32 %i.dy, %i.du
  %i.ea = xor i32 %i.dz, %i.r
  %i.eb = xor i32 %i.ea, %i.ah
  %i.ec = and i32 %i.eb, 1
  %i.ed = or disjoint i32 %i.dm, %i.ec
  %i.ee = getelementptr i8, ptr %i.a, i64 9684
  %i.ef = load i64, ptr %i.ee, align 4
  %i.eg = zext nneg i32 %i.ed to i64
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = and i64 %i.eh, %i.ef
  %.not31.i = icmp eq i64 %i.ei, 0
  br i1 %.not31.i, label %bb.f, label %select.unfold

bb.f:                                             ; preds = %bb.e, %.critedge.i, %bb.d
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 9692 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 52896
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 52899
  %i.em = load i8, ptr %i.el, align 1, !range !10, !noundef !11
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 9716 ; 2 uses
  %i.ep = load i32, ptr %1, align 1
  %i.eq = load i32, ptr %i.eo, align 1
  %i.er = xor i32 %i.ep, %i.eq
  %i.es = getelementptr i8, ptr %1, i64 4
  %i.et = getelementptr i8, ptr %i.eo, i64 4
  %i.eu = load i16, ptr %i.es, align 1
  %i.ev = load i16, ptr %i.et, align 1
  %i.ew = zext i16 %i.eu to i32
  %i.ex = zext i16 %i.ev to i32
  %i.ey = xor i32 %i.ew, %i.ex
  %i.ez = or i32 %i.er, %i.ey
  %i.fa = icmp ne i32 %i.ez, 0
  %i.fb = zext i1 %i.fa to i32
  %.not33.i = icmp eq i32 %i.fb, 0
  br i1 %.not33.i, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 52898
  %i.fd = load i8, ptr %i.fc, align 2, !range !10, !noundef !11
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 9708 ; 2 uses
  %i.fg = load i32, ptr %1, align 1
  %i.fh = load i32, ptr %i.ff, align 1
  %i.fi = xor i32 %i.fg, %i.fh
  %i.fj = getelementptr i8, ptr %1, i64 4
  %i.fk = getelementptr i8, ptr %i.ff, i64 4
  %i.fl = load i16, ptr %i.fj, align 1
  %i.fm = load i16, ptr %i.fk, align 1
  %i.fn = zext i16 %i.fl to i32
  %i.fo = zext i16 %i.fm to i32
  %i.fp = xor i32 %i.fn, %i.fo
  %i.fq = or i32 %i.fi, %i.fp
  %i.fr = icmp ne i32 %i.fq, 0
  %i.fs = zext i1 %i.fr to i32
  %.not33.1.i = icmp eq i32 %i.fs, 0
  br i1 %.not33.1.i, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 52897
  %i.fu = load i8, ptr %i.ft, align 1, !range !10, !noundef !11
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 9700 ; 2 uses
  %i.fx = load i32, ptr %1, align 1
  %i.fy = load i32, ptr %i.fw, align 1
  %i.fz = xor i32 %i.fx, %i.fy
  %i.ga = getelementptr i8, ptr %1, i64 4
  %i.gb = getelementptr i8, ptr %i.fw, i64 4
  %i.gc = load i16, ptr %i.ga, align 1
  %i.gd = load i16, ptr %i.gb, align 1
  %i.ge = zext i16 %i.gc to i32
  %i.gf = zext i16 %i.gd to i32
  %i.gg = xor i32 %i.ge, %i.gf
  %i.gh = or i32 %i.fz, %i.gg
  %i.gi = icmp ne i32 %i.gh, 0
  %i.gj = zext i1 %i.gi to i32
  %.not33.2.i = icmp eq i32 %i.gj, 0
  br i1 %.not33.2.i, label %select.unfold, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.gk = load i8, ptr %i.ek, align 4, !range !10, !noundef !11
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.m, label %.critedge168

bb.m:                                             ; preds = %bb.l
  %i.gm = load i32, ptr %1, align 1
  %i.gn = load i32, ptr %i.ej, align 1
  %i.go = xor i32 %i.gm, %i.gn
  %i.gp = getelementptr i8, ptr %1, i64 4
  %i.gq = getelementptr i8, ptr %i.ej, i64 4
  %i.gr = load i16, ptr %i.gp, align 1
  %i.gs = load i16, ptr %i.gq, align 1
  %i.gt = zext i16 %i.gr to i32
  %i.gu = zext i16 %i.gs to i32
  %i.gv = xor i32 %i.gt, %i.gu
  %i.gw = or i32 %i.go, %i.gv
  %i.gx = icmp ne i32 %i.gw, 0
  %i.gy = zext i1 %i.gx to i32
  %.not33.3.i = icmp eq i32 %i.gy, 0
  br i1 %.not33.3.i, label %select.unfold, label %.critedge168

select.unfold:                                    ; preds = %3, %bb.a, %bb.e, %bb.g, %bb.i, %bb.m, %bb.k
  %.1.i.ph = phi i32 [ -2, %bb.a ], [ 1, %bb.k ], [ 0, %bb.m ], [ 2, %bb.i ], [ 3, %bb.g ], [ %i.q, %bb.e ], [ -3, %3 ] ; 2 uses
  %i.gz = and i32 %i.c, 65536
  %.not = icmp eq i32 %i.gz, 0
  br i1 %.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %select.unfold
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.hb = load i8, ptr %i.ha, align 1             ; 2 uses
  %i.hc = icmp ult i8 %i.hb, 6
  br i1 %i.hc, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.hd = zext nneg i8 %i.hb to i64
  %i.he = shl nuw nsw i64 %i.hd, 8
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = zext i8 %i.hg to i64
  %i.hi = or disjoint i64 %i.he, %i.hh
  %i.hj = icmp ult i64 %2, %i.hi
  br i1 %i.hj, label %.critedge168, label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.o, %select.unfold
  %i.hk = lshr i32 %i.c, 14
  %i.hl = and i32 %i.hk, 3
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 9572 ; 4 uses
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = lshr i32 %i.hn, 16
  %i.hp = and i32 %i.ho, 255                      ; 2 uses
  %i.hq = shl nuw nsw i32 %i.hp, 6
  %i.hr = icmp eq i32 %i.hp, 0
  %spec.store.select = select i1 %i.hr, i32 64, i32 %i.hq
  %spec.store.select3 = tail call i64 @llvm.umax.i64(i64 %2, i64 60) ; 2 uses
  %i.hs = and i32 %i.c, 131072
  %.not164 = icmp eq i32 %i.hs, 0
  br i1 %.not164, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ht = trunc i64 %2 to i32
  br label %bb.r

bb.q:                                             ; preds = %.critedge
  %spec.store.select2 = tail call i64 @llvm.umin.i64(i64 %spec.store.select3, i64 16379) ; 5 uses
  %i.hu = trunc nuw nsw i64 %spec.store.select2 to i32 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 36320 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.hv, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %spec.store.select2, i1 noundef false) #8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %spec.store.select2 ; 2 uses
  %i.hx = xor i64 %spec.store.select2, 16383
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.hw, i8 noundef 0, i64 noundef %i.hx, i1 noundef false) #8
  %i.hy = tail call i64 @crc32(i64 noundef 0, ptr noundef nonnull %i.hv, i32 noundef %i.hu) #8
  %i.hz = trunc i64 %i.hy to i32
  store i32 %i.hz, ptr %i.hw, align 1
  %i.ia = add nuw nsw i32 %i.hu, 4
  %i.ib = add nuw nsw i64 %spec.store.select2, 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.0155 = phi ptr [ %1, %bb.p ], [ %i.hv, %bb.q ] ; 9 uses
  %.0152 = phi i32 [ %i.ht, %bb.p ], [ %i.ia, %bb.q ] ; 2 uses
  %.0151 = phi i64 [ %spec.store.select3, %bb.p ], [ %i.ib, %bb.q ] ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 9545
  %i.id = load i8, ptr %i.ic, align 1             ; 2 uses
  %.not113.i = icmp eq i8 %i.id, 0
  br i1 %.not113.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.ie = getelementptr inbounds nuw i8, ptr %.0155, i64 36
  %i.if = getelementptr inbounds nuw i8, ptr %.0155, i64 37
  %i.ig = getelementptr inbounds nuw i8, ptr %.0155, i64 15
  %wide.trip.count.i = zext i8 %i.id to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.x
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.t, !llvm.loop !31

.preheader.i:                                     ; preds = %bb.s, %bb.r
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 9546 ; 5 uses
  %i.ii = load i8, ptr %i.ih, align 2             ; 2 uses
  %.not114.i = icmp eq i8 %i.ii, 0
  br i1 %.not114.i, label %get_queue_from_screen.exit, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.preheader.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 9556 ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0155, i64 12
  %i.il = getelementptr inbounds nuw i8, ptr %.0155, i64 13
  br label %bb.aa

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 10836
  %i.io = load i32, ptr %i.in, align 4            ; 5 uses
  %i.ip = and i32 %i.io, 536870912
  %.not94.i = icmp eq i32 %i.ip, 0
  br i1 %.not94.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.iq = load i8, ptr %i.ie, align 1
  %i.ir = zext i8 %i.iq to i32
  %i.is = shl nuw nsw i32 %i.ir, 8
  %i.it = load i8, ptr %i.if, align 1
  %i.iu = zext i8 %i.it to i32
  %i.iv = or disjoint i32 %i.is, %i.iu
  %i.iw = lshr i32 %i.io, 12
  %i.ix = and i32 %i.iw, 65535
  %i.iy = icmp eq i32 %i.iv, %i.ix                ; 2 uses
  %.076.i = xor i1 %i.iy, true
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.180.i = phi i1 [ %i.iy, %bb.u ], [ false, %bb.t ] ; 2 uses
  %.177.i = phi i1 [ %.076.i, %bb.u ], [ false, %bb.t ] ; 2 uses
  %i.iz = and i32 %i.io, 268435456
  %.not95.i = icmp eq i32 %i.iz, 0
  br i1 %.not95.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ja = load i8, ptr %i.ig, align 1
  %i.jb = lshr i32 %i.io, 4
  %i.jc = trunc i32 %i.jb to i8
  %i.jd = icmp eq i8 %i.ja, %i.jc                 ; 2 uses
  %..180.i = select i1 %i.jd, i1 true, i1 %.180.i
  %not.103.i = xor i1 %i.jd, true
  %.177..i = select i1 %not.103.i, i1 true, i1 %.177.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.382.i = phi i1 [ %..180.i, %bb.w ], [ %.180.i, %bb.v ]
  %.3.i = phi i1 [ %.177..i, %bb.w ], [ %.177.i, %bb.v ]
  %.not.i172 = xor i1 %.382.i, true
  %or.cond.i = or i1 %.3.i, %.not.i172
  br i1 %or.cond.i, label %bb.s, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.je = and i32 %i.io, 15
  br label %get_queue_from_screen.exit

bb.z:                                             ; preds = %bb.bs
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1 ; 2 uses
  %i.jf = load i8, ptr %i.ih, align 2             ; 2 uses
  %i.jg = zext i8 %i.jf to i64
  %i.jh = icmp samesign ult i64 %indvars.iv.next122.i, %i.jg
  br i1 %i.jh, label %bb.aa, label %get_queue_from_screen.exit, !llvm.loop !32

bb.aa:                                            ; preds = %bb.z, %.lr.ph112.i
  %indvars.iv121.i = phi i64 [ 0, %.lr.ph112.i ], [ %indvars.iv.next122.i, %bb.z ] ; 2 uses
  %.in.i = phi i8 [ %i.ii, %.lr.ph112.i ], [ %i.jf, %bb.z ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv121.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1344
  %i.jk = load i32, ptr %i.jj, align 4            ; 9 uses
  %i.jl = and i32 %i.jk, 4096
  %.not91.i = icmp eq i32 %i.jl, 0
  br i1 %.not91.i, label %extract32.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jm = zext i8 %.in.i to i32
  %i.jn = load i8, ptr %i.ik, align 1
  %i.jo = zext i8 %i.jn to i32
  %i.jp = shl nuw nsw i32 %i.jo, 8
  %i.jq = load i8, ptr %i.il, align 1
  %i.jr = zext i8 %i.jq to i32
  %i.js = or disjoint i32 %i.jp, %i.jr
  %i.jt = lshr i32 %i.jk, 9
  %i.ju = and i32 %i.jt, 7                        ; 3 uses
  %i.jv = icmp samesign ugt i32 %i.ju, %i.jm
  br i1 %i.jv, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.jw = load i32, ptr @qemu_loglevel, align 4
  %i.jx = and i32 %i.jw, 2048
  %.not100.i = icmp eq i32 %i.jx, 0
  br i1 %.not100.i, label %bb.ae, label %bb.ad, !prof !12

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i32 noundef %i.ju) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.jy = zext nneg i32 %i.ju to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 1760
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = icmp eq i32 %i.js, %i.kb                ; 2 uses
  %not..i = xor i1 %i.kc, true
  br label %extract32.exit.i

extract32.exit.i:                                 ; preds = %bb.ae, %bb.aa
  %.584.i = phi i1 [ %i.kc, %bb.ae ], [ false, %bb.aa ] ; 2 uses
  %.5.i = phi i1 [ %not..i, %bb.ae ], [ false, %bb.aa ] ; 2 uses
  %i.kd = lshr i32 %i.jk, 13
  %i.ke = and i32 %i.kd, 31                       ; 3 uses
  %i.kf = and i32 %i.jk, 262144
  %.not92.i = icmp eq i32 %i.kf, 0
  br i1 %.not92.i, label %extract32.exit.1.i, label %bb.af

bb.af:                                            ; preds = %extract32.exit.i
  %i.kg = load i8, ptr %i.ih, align 2
  %i.kh = zext i8 %i.kg to i32
  %i.ki = icmp samesign ugt i32 %i.ke, %i.kh
  br i1 %i.ki, label %bb.ag, label %bb.ai
end_hunk_0
begin_hunk_1_@gem_receive:bb.a
  %i.rj = zext i32 %i.ri to i64
  %i.rk = or disjoint i64 %.0.i.i, %i.rj
  %i.rl = lshr i32 %i.rd, 27
  %i.rm = and i32 %i.rl, 2
  %.1.i188 = add nuw nsw i32 %spec.select.i, %i.rm
  %i.rn = shl nuw nsw i32 %.1.i188, 2
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = tail call i32 @address_space_write(ptr noundef nonnull %i.oh, i64 noundef %i.rk, i64 4294967296, ptr noundef nonnull %i.ok, i64 noundef %i.ro) #8 ; 0 uses
  %.val171 = load i32, ptr %i.ok, align 4
  %i.rq = and i32 %.val171, 2
  %.not166 = icmp eq i32 %i.rq, 0
  br i1 %.not166, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %gem_get_rx_desc_addr.exit
  switch i16 %trunc.i189, label %bb.cu [
    i16 0, label %gem_get_rx_queue_base_addr.exit
    i16 1, label %bb.ct
    i16 2, label %bb.ct
    i16 3, label %bb.ct
    i16 4, label %bb.ct
    i16 5, label %bb.ct
    i16 6, label %bb.ct
    i16 7, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs
  br label %gem_get_rx_queue_base_addr.exit

bb.cu:                                            ; preds = %bb.cs
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 998, ptr noundef nonnull @__func__.gem_get_queue_base_addr, ptr noundef null) #9
  unreachable

gem_get_rx_queue_base_addr.exit:                  ; preds = %bb.cs, %bb.ct
  %.0.in.i.i = phi ptr [ %i.ot, %bb.ct ], [ %i.ou, %bb.cs ]
  %.0.i.i190 = load i32, ptr %.0.in.i.i, align 4
  br label %bb.cw

bb.cv:                                            ; preds = %gem_get_rx_desc_addr.exit
  %.val169 = load i32, ptr %i.hm, align 4         ; 2 uses
  %i.rr = and i32 %.val169, 1073741824
  %.not.i191 = icmp eq i32 %i.rr, 0
  %spec.select.i192 = select i1 %.not.i191, i32 2, i32 4
  %i.rs = lshr i32 %.val169, 27
  %i.rt = and i32 %i.rs, 2
  %.1.i194 = add nuw nsw i32 %spec.select.i192, %i.rt
  %i.ru = shl nuw nsw i32 %.1.i194, 2
  %i.rv = load i32, ptr %.in.i.i, align 4
  %i.rw = add i32 %i.ru, %i.rv
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %gem_get_rx_queue_base_addr.exit
  %storemerge = phi i32 [ %.0.i.i190, %gem_get_rx_queue_base_addr.exit ], [ %i.rw, %bb.cv ]
  store i32 %storemerge, ptr %.in.i.i, align 4
  tail call fastcc void @gem_get_rx_desc(ptr noundef nonnull %i.a, i32 noundef %.088.i)
  br i1 %i.qw, label %._crit_edge, label %bb.cd, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.cw, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre235, %.preheader.._crit_edge_crit_edge ], [ %i.oo, %bb.cw ] ; 6 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.a, i64 9892 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4
  %i.rz = zext i32 %i.ry to i64
  %i.sa = shl nuw i64 %i.rz, 32
  %i.sb = getelementptr inbounds nuw i8, ptr %i.a, i64 9896 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4
  %i.sd = zext i32 %i.sc to i64
  %i.se = or disjoint i64 %i.sa, %i.sd
  %i.sf = add i64 %i.se, %.0151                   ; 2 uses
  %i.sg = lshr i64 %i.sf, 32
  %i.sh = trunc nuw i64 %i.sg to i32
  store i32 %i.sh, ptr %i.rx, align 4
  %i.si = trunc i64 %i.sf to i32
  store i32 %i.si, ptr %i.sb, align 4
  %i.sj = getelementptr inbounds nuw i8, ptr %i.a, i64 9900 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4
  %i.sl = add i32 %i.sk, 1
  store i32 %i.sl, ptr %i.sj, align 4
  %i.sm = load i32, ptr %1, align 1
  %i.sn = xor i32 %i.sm, -1
  %i.so = getelementptr i8, ptr %1, i64 4
  %i.sp = load i16, ptr %i.so, align 1
  %i.sq = zext i16 %i.sp to i32
  %i.sr = xor i32 %i.sq, 65535
  %i.ss = or i32 %i.sn, %i.sr
  %i.st = icmp ne i32 %i.ss, 0
  %i.su = zext i1 %i.st to i32
  %.not.i196 = icmp eq i32 %i.su, 0
  br i1 %.not.i196, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %._crit_edge
  %i.sv = getelementptr inbounds nuw i8, ptr %i.a, i64 9904 ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4
  %i.sx = add i32 %i.sw, 1
  store i32 %i.sx, ptr %i.sv, align 4
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %._crit_edge
  %i.sy = load i8, ptr %1, align 1
  %i.sz = icmp eq i8 %i.sy, 1
  br i1 %i.sz, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.a, i64 9908 ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4
  %i.tc = add i32 %i.tb, 1
  store i32 %i.tc, ptr %i.ta, align 4
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.td = icmp ult i32 %.pre-phi, 65
  br i1 %i.td, label %gem_receive_updatestats.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.te = icmp ult i32 %.pre-phi, 128
  br i1 %i.te, label %gem_receive_updatestats.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tf = icmp ult i32 %.pre-phi, 256
  br i1 %i.tf, label %gem_receive_updatestats.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.tg = icmp ult i32 %.pre-phi, 512
  br i1 %i.tg, label %gem_receive_updatestats.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.th = icmp ult i32 %.pre-phi, 1024
  br i1 %i.th, label %gem_receive_updatestats.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ti = icmp ult i32 %.pre-phi, 1519
  %..i197 = select i1 %i.ti, i64 9936, i64 9940
  br label %gem_receive_updatestats.exit

gem_receive_updatestats.exit:                     ; preds = %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df
  %.sink27.i = phi i64 [ 9916, %bb.da ], [ 9924, %bb.dc ], [ %..i197, %bb.df ], [ 9932, %bb.de ], [ 9928, %bb.dd ], [ 9920, %bb.db ]
  %i.tj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink27.i ; 2 uses
  %i.tk = load i32, ptr %i.tj, align 4
  %i.tl = add i32 %i.tk, 1
  store i32 %i.tl, ptr %i.tj, align 4
  %i.tm = getelementptr inbounds nuw i8, ptr %i.a, i64 9588 ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 4
  %i.to = or i32 %i.tn, 2
  store i32 %i.to, ptr %i.tm, align 4
  %i.tp = icmp eq i32 %.088.i, 0
  br i1 %i.tp, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %gem_receive_updatestats.exit
  %i.tq = getelementptr inbounds nuw i8, ptr %i.a, i64 9604
  %i.tr = load i32, ptr %i.tq, align 4
  %i.ts = and i32 %i.tr, 2
  %i.tt = xor i32 %i.ts, 2
  %i.tu = getelementptr inbounds nuw i8, ptr %i.a, i64 9592 ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 4
  %i.tw = or i32 %i.tt, %i.tv                     ; 2 uses
  store i32 %i.tw, ptr %i.tu, align 4
  br label %gem_set_isr.exit198

bb.dh:                                            ; preds = %gem_receive_updatestats.exit
  %i.tx = getelementptr inbounds nuw i8, ptr %i.a, i64 9556
  %i.ty = zext nneg i32 %.088.i to i64
  %i.tz = getelementptr [4 x i8], ptr %i.tx, i64 %i.ty ; 2 uses
  %i.ua = getelementptr i8, ptr %i.tz, i64 1596
  %i.ub = load i32, ptr %i.ua, align 4
  %i.uc = and i32 %i.ub, 2
  %i.ud = xor i32 %i.uc, 2
  %i.ue = getelementptr i8, ptr %i.tz, i64 1020   ; 2 uses
  %i.uf = load i32, ptr %i.ue, align 4
  %i.ug = or i32 %i.ud, %i.uf
  store i32 %i.ug, ptr %i.ue, align 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 9592
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %gem_set_isr.exit198

gem_set_isr.exit198:                              ; preds = %bb.dg, %bb.dh
  %i.uh = phi i32 [ %i.tw, %bb.dg ], [ %.pre, %bb.dh ]
  %i.ui = getelementptr inbounds nuw i8, ptr %i.a, i64 9480 ; 2 uses
  %i.uj = load ptr, ptr %i.ui, align 8
  %i.uk = icmp ne i32 %i.uh, 0
  %i.ul = zext i1 %i.uk to i32
  tail call void @qemu_set_irq(ptr noundef %i.uj, i32 noundef %i.ul) #8
  %i.um = getelementptr inbounds nuw i8, ptr %i.a, i64 9544 ; 2 uses
  %i.un = load i8, ptr %i.um, align 8
  %i.uo = icmp ugt i8 %i.un, 1
  br i1 %i.uo, label %.lr.ph.i200, label %.critedge168

.lr.ph.i200:                                      ; preds = %gem_set_isr.exit198, %.lr.ph.i200
  %indvars.iv.i201 = phi i64 [ %indvars.iv.next.i202, %.lr.ph.i200 ], [ 1, %gem_set_isr.exit198 ] ; 3 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv.i201
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i201
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 10576
  %i.ut = load i32, ptr %i.us, align 4
  %i.uu = icmp ne i32 %i.ut, 0
  %i.uv = zext i1 %i.uu to i32
  tail call void @qemu_set_irq(ptr noundef %i.uq, i32 noundef %i.uv) #8
  %indvars.iv.next.i202 = add nuw nsw i64 %indvars.iv.i201, 1 ; 2 uses
  %i.uw = load i8, ptr %i.um, align 8
  %i.ux = zext i8 %i.uw to i64
  %i.uy = icmp samesign ult i64 %indvars.iv.next.i202, %i.ux
  br i1 %i.uy, label %.lr.ph.i200, label %.critedge168, !llvm.loop !0

.critedge168:                                     ; preds = %.lr.ph.i200, %bb.ch, %bb.cf, %._crit_edge.thread.i, %bb.ce, %bb.l, %bb.m, %gem_set_isr.exit198, %bb.cc, %bb.cb, %3, %bb.o
  %.4 = phi i64 [ %2, %bb.l ], [ -1, %bb.ch ], [ -1, %bb.cc ], [ -1, %bb.cb ], [ -1, %bb.o ], [ %2, %3 ], [ %.0151, %gem_set_isr.exit198 ], [ %2, %bb.m ], [ -1, %bb.ce ], [ -1, %._crit_edge.thread.i ], [ -1, %bb.cf ], [ %.0151, %.lr.ph.i200 ]
  ret i64 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gem_set_link(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1256
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @qemu_get_queue(ptr noundef %i.c) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %.not.i = icmp eq i32 %i.f, 0                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 19800 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 19836 ; 2 uses
  %i.j = and i16 %i.h, -37
  %masksel.i = select i1 %.not.i, i16 36, i16 0
  %.sink.i = or disjoint i16 %i.j, %masksel.i
  %.sink6.i = select i1 %.not.i, i16 3088, i16 1024
  store i16 %.sink.i, ptr %i.g, align 8
  %i.k = load i16, ptr %i.i, align 4
  %i.l = or i16 %i.k, %.sink6.i
  store i16 %i.l, ptr %i.i, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 9480 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 9592
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  tail call void @qemu_set_irq(ptr noundef %i.n, i32 noundef %i.r) #8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9544 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = icmp ugt i8 %i.t, 1
  br i1 %i.u, label %.lr.ph.i, label %gem_update_int_status.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %bb.a ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 10576
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  tail call void @qemu_set_irq(ptr noundef %i.w, i32 noundef %i.ab) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i8, ptr %i.s, align 8
  %i.ad = zext i8 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %gem_update_int_status.exit, !llvm.loop !0

gem_update_int_status.exit:                       ; preds = %.lr.ph.i, %bb.a
  ret void
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !9}
!1 = distinct !{!1, !9}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{!"auto-init"}
!18 = !{i64 2151014536}
!19 = !{i64 2151274066}
!20 = !{i64 2151015350}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9, !29, !30}
!24 = distinct !{!24, !9, !30, !29}
!25 = distinct !{!25, !9, !29, !30}
!26 = distinct !{!26, !9, !30, !29}
!27 = distinct !{!27, !9, !29, !30}
!28 = distinct !{!28, !9, !30, !29}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
end_hunk_1
