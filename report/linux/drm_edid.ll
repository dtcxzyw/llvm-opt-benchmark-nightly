inline.NumInlined: 572
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 35
begin_hunk_0_@do_detailed_mode:bb.a
  %.not.i.i.2.i.i = icmp eq i32 %i.kr, 0
  %spec.select41.i.i = select i1 %.not.i.i.2.i.i, i32 -296703, i32 -297000
  %reass.sub37.2.i.i = add i32 %i.ko, -6
  %i.ks = add i32 %reass.sub37.2.i.i, %spec.select41.i.i
  %i.kt = icmp ult i32 %i.ks, -11
  br i1 %i.kt, label %hdmi_mode_alternate_clock.exit.3.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %hdmi_mode_alternate_clock.exit.2.i.i
  %i.ku = call zeroext i1 @drm_mode_match(ptr noundef nonnull %.0112.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @edid_4k_modes, i64 360), i32 noundef %spec.select.i45.i) #22
  br i1 %i.ku, label %bb.bg, label %hdmi_mode_alternate_clock.exit.3.i.i

hdmi_mode_alternate_clock.exit.3.i.i:             ; preds = %bb.bd, %bb.bc
  %i.kv = call i32 @drm_mode_vrefresh(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @edid_4k_modes, i64 480)) #22
  %i.kw = load i32, ptr %.0112.i, align 8         ; 2 uses
  %i.kx = add i32 %i.kw, -297006
  %i.ky = icmp ult i32 %i.kx, -11
  br i1 %i.ky, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %hdmi_mode_alternate_clock.exit.3.i.i
  %i.kz = srem i32 %i.kv, 6
  %.not.i.i.3.i.i = icmp eq i32 %i.kz, 0
  %spec.select42.i.i = select i1 %.not.i.i.3.i.i, i32 -296703, i32 -297000
  %reass.sub37.3.i.i = add i32 %i.kw, -6
  %i.la = add i32 %reass.sub37.3.i.i, %spec.select42.i.i
  %i.lb = icmp ult i32 %i.la, -11
  br i1 %i.lb, label %fixup_detailed_cea_mode_clock.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %hdmi_mode_alternate_clock.exit.3.i.i
  %i.lc = call zeroext i1 @drm_mode_match(ptr noundef nonnull %.0112.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @edid_4k_modes, i64 480), i32 noundef %spec.select.i45.i) #22
  br i1 %i.lc, label %bb.bg, label %fixup_detailed_cea_mode_clock.exit

bb.bg:                                            ; preds = %bb.bf, %bb.bd, %bb.bb, %bb.az
  %.2.i46.ph.i = phi i8 [ 3, %bb.bd ], [ 4, %bb.bf ], [ 2, %bb.bb ], [ 1, %bb.az ] ; 4 uses
  %i.ld = zext nneg i8 %.2.i46.ph.i to i64
  %i.le = getelementptr [120 x i8], ptr @edid_4k_modes, i64 %i.ld ; 3 uses
  %i.lf = load i32, ptr %i.le, align 8            ; 6 uses
  %i.lg = call i32 @drm_mode_vrefresh(ptr noundef %i.le) #22
  %i.lh = srem i32 %i.lg, 6
  %.not.i.i47.i = icmp eq i32 %i.lh, 0
  br i1 %.not.i.i47.i, label %bb.bh, label %cea_mode_alternate_clock.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.li = getelementptr i8, ptr %i.le, i64 14
  %i.lj = load i16, ptr %i.li, align 2
  switch i16 %i.lj, label %bb.bj [
    i16 240, label %bb.bi
    i16 480, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh
  %i.lk = mul i32 %i.lf, 1001
  %i.ll = add i32 %i.lk, 500
  %i.lm = udiv i32 %i.ll, 1000
  br label %cea_mode_alternate_clock.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.ln = mul i32 %i.lf, 1000
  %i.lo = add i32 %i.ln, 500
  %i.lp = udiv i32 %i.lo, 1001
  br label %cea_mode_alternate_clock.exit.i

cea_mode_alternate_clock.exit.i:                  ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.ax, %bb.aw, %cea_mode_for_vic.exit.i
  %.037.i = phi i8 [ %.02644.i.i, %bb.ax ], [ %.02644.i.i, %cea_mode_for_vic.exit.i ], [ %.02644.i.i, %bb.aw ], [ %.2.i46.ph.i, %bb.bg ], [ %.2.i46.ph.i, %bb.bi ], [ %.2.i46.ph.i, %bb.bj ]
  %.036.i = phi ptr [ @.str.75, %bb.ax ], [ @.str.75, %cea_mode_for_vic.exit.i ], [ @.str.75, %bb.aw ], [ @.str.76, %bb.bg ], [ @.str.76, %bb.bi ], [ @.str.76, %bb.bj ]
  %.034.i = phi i32 [ %i.jv, %bb.ax ], [ %i.jl, %cea_mode_for_vic.exit.i ], [ %i.js, %bb.aw ], [ %i.lf, %bb.bg ], [ %i.lm, %bb.bi ], [ %i.lp, %bb.bj ] ; 2 uses
  %.0.i15 = phi i32 [ %i.jl, %bb.ax ], [ %i.jl, %cea_mode_for_vic.exit.i ], [ %i.jl, %bb.aw ], [ %i.lf, %bb.bg ], [ %i.lf, %bb.bi ], [ %i.lf, %bb.bj ] ; 2 uses
  %i.lq = load i32, ptr %.0112.i, align 8         ; 4 uses
  %i.lr = sub i32 %i.lq, %.0.i15
  %i.ls = call i32 @llvm.abs.i32(i32 %i.lr, i1 false)
  %i.lt = sub i32 %i.lq, %.034.i
  %i.lu = call i32 @llvm.abs.i32(i32 %i.lt, i1 false)
  %i.lv = icmp slt i32 %i.ls, %i.lu
  %.0..034.i = select i1 %i.lv, i32 %.0.i15, i32 %.034.i ; 3 uses
  %i.lw = icmp eq i32 %i.lq, %.0..034.i
  br i1 %i.lw, label %fixup_detailed_cea_mode_clock.exit, label %bb.bk

bb.bk:                                            ; preds = %cea_mode_alternate_clock.exit.i
  %i.lx = load ptr, ptr %i.hd, align 8            ; 2 uses
  %.not.i50.i = icmp eq ptr %i.lx, null
  br i1 %.not.i50.i, label %__drm_to_dev.exit.i16, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ly = getelementptr i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8
  br label %__drm_to_dev.exit.i16

__drm_to_dev.exit.i16:                            ; preds = %bb.bl, %bb.bk
  %i.ma = phi ptr [ %i.lz, %bb.bl ], [ null, %bb.bk ]
  %i.mb = getelementptr i8, ptr %i.hd, i64 64
  %i.mc = load i32, ptr %i.mb, align 8
  %i.md = getelementptr i8, ptr %i.hd, i64 96
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = zext i8 %.037.i to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ma, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef %i.mc, ptr noundef %i.me, ptr noundef nonnull %.036.i, i32 noundef %i.mf, i32 noundef %i.lq, i32 noundef %.0..034.i) #22
  store i32 %.0..034.i, ptr %.0112.i, align 8
  br label %fixup_detailed_cea_mode_clock.exit

fixup_detailed_cea_mode_clock.exit:               ; preds = %bb.aj, %drm_valid_cea_vic.exit.thread.i, %bb.be, %bb.bf, %cea_mode_alternate_clock.exit.i, %__drm_to_dev.exit.i16
  %i.mg = load ptr, ptr %1, align 8
  call void @drm_mode_probed_add(ptr noundef %i.mg, ptr noundef nonnull %.0112.i) #22
  %i.mh = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4
  %i.mj = add i32 %i.mi, 1
  store i32 %i.mj, ptr %i.mh, align 4
  store i8 0, ptr %i.gy, align 8
  br label %drm_mode_detailed.exit.thread

drm_mode_detailed.exit.thread:                    ; preds = %bb.n, %bb.m, %bb.b, %__drm_to_dev.exit.i, %__drm_to_dev.exit132.i, %bb.a, %fixup_detailed_cea_mode_clock.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_cvt_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_cvt_mode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 5 uses
  %i.b = load i16, ptr %0, align 1
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %is_display_descriptor.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %is_display_descriptor.exit, label %is_display_descriptor.exit.thread

is_display_descriptor.exit:                       ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 3
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, -8
  br i1 %i.i, label %bb.c, label %is_display_descriptor.exit.thread

bb.c:                                             ; preds = %is_display_descriptor.exit
  %i.j = load ptr, ptr %1, align 8                ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, i8 0, i64 3, i1 false)
  %i.l = getelementptr i8, ptr %0, i64 5
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.02735.i = phi i32 [ 0, %bb.c ], [ %.3.i, %.loopexit.i ] ; 4 uses
  %i.m = getelementptr [3 x i8], ptr %i.l, i64 %indvars.iv.i ; 5 uses
  %i.n = load i16, ptr %i.m, align 1
  %i.o = load i16, ptr %i.a, align 1
  %i.p = xor i16 %i.n, %i.o
  %i.q = getelementptr i8, ptr %i.m, i64 2
  %i.r = getelementptr i8, ptr %i.a, i64 2
  %i.s = load i8, ptr %i.q, align 1
  %i.t = load i8, ptr %i.r, align 1
  %i.u = zext i8 %i.s to i16
  %i.v = zext i8 %i.t to i16
  %i.w = xor i16 %i.u, %i.v
  %i.x = or i16 %i.p, %i.w
  %i.y = icmp ne i16 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.m, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr i8, ptr %i.m, i64 1
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = shl nuw nsw i32 %i.ae, 4
  %i.ag = and i32 %i.af, 3840
  %i.ah = or disjoint i32 %i.ag, %i.ab
  %i.ai = shl nuw nsw i32 %i.ah, 1
  %i.aj = add nuw nsw i32 %i.ai, 2                ; 8 uses
  %i.ak = and i32 %i.ae, 12
  switch i32 %i.ak, label %.unreachabledefault.i [
    i32 0, label %bb.f
    i32 4, label %bb.g
    i32 8, label %bb.h
    i32 12, label %bb.i
  ]

.unreachabledefault.i:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %.tr.i = trunc nuw nsw i32 %i.aj to i16
  %.lhs.trunc.i = shl nuw i16 %.tr.i, 2
  %i.al = udiv i16 %.lhs.trunc.i, 3
  %.zext.i = zext nneg i16 %i.al to i32
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.am = shl nuw nsw i32 %i.aj, 4
  %i.an = udiv i32 %i.am, 9
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ao = shl nuw nsw i32 %i.aj, 4
  %i.ap = udiv i32 %i.ao, 10
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %2 = mul nuw nsw i32 %i.aj, 15
  %3 = udiv i32 %2, 9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i = phi i32 [ %.zext.i, %bb.f ], [ %i.an, %bb.g ], [ %i.ap, %bb.h ], [ %3, %bb.i ] ; 4 uses
  %i.aq = getelementptr i8, ptr %i.m, i64 2       ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = and i8 %i.ar, 2
  %.not30.i = icmp eq i8 %i.as, 0
  br i1 %.not30.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = tail call ptr @drm_cvt_mode(ptr noundef %i.k, i32 noundef %.0.i, i32 noundef %i.aj, i32 noundef 85, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #22 ; 2 uses
  %.not31.i = icmp eq ptr %i.at, null
  br i1 %.not31.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @drm_mode_probed_add(ptr noundef %i.j, ptr noundef nonnull %i.at) #22
  %i.au = add i32 %.02735.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.2.i = phi i32 [ %i.au, %bb.l ], [ %.02735.i, %bb.k ], [ %.02735.i, %bb.j ] ; 3 uses
  %i.av = load i8, ptr %i.aq, align 1
  %i.aw = and i8 %i.av, 4
  %.not30.1.i = icmp eq i8 %i.aw, 0
  br i1 %.not30.1.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = tail call ptr @drm_cvt_mode(ptr noundef %i.k, i32 noundef %.0.i, i32 noundef %i.aj, i32 noundef 75, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #22 ; 2 uses
  %.not31.1.i = icmp eq ptr %i.ax, null
  br i1 %.not31.1.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @drm_mode_probed_add(ptr noundef %i.j, ptr noundef nonnull %i.ax) #22
  %i.ay = add i32 %.2.i, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.2.1.i = phi i32 [ %i.ay, %bb.o ], [ %.2.i, %bb.n ], [ %.2.i, %bb.m ] ; 3 uses
  %i.az = load i8, ptr %i.aq, align 1
  %i.ba = and i8 %i.az, 8
  %.not30.2.i = icmp eq i8 %i.ba, 0
  br i1 %.not30.2.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = tail call ptr @drm_cvt_mode(ptr noundef %i.k, i32 noundef %.0.i, i32 noundef %i.aj, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #22 ; 2 uses
  %.not31.2.i = icmp eq ptr %i.bb, null
  br i1 %.not31.2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @drm_mode_probed_add(ptr noundef %i.j, ptr noundef nonnull %i.bb) #22
  %i.bc = add i32 %.2.1.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.2.2.i = phi i32 [ %i.bc, %bb.r ], [ %.2.1.i, %bb.q ], [ %.2.1.i, %bb.p ] ; 3 uses
  %i.bd = load i8, ptr %i.aq, align 1
  %i.be = and i8 %i.bd, 16
  %.not30.3.i = icmp eq i8 %i.be, 0
  br i1 %.not30.3.i, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = tail call ptr @drm_cvt_mode(ptr noundef %i.k, i32 noundef %.0.i, i32 noundef %i.aj, i32 noundef 50, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #22 ; 2 uses
  %.not31.3.i = icmp eq ptr %i.bf, null
  br i1 %.not31.3.i, label %.loopexit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @drm_mode_probed_add(ptr noundef %i.j, ptr noundef nonnull %i.bf) #22
  %i.bg = add i32 %.2.2.i, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.u, %bb.t, %bb.s, %bb.d
  %.3.i = phi i32 [ %.02735.i, %bb.d ], [ %i.bg, %bb.u ], [ %.2.2.i, %bb.t ], [ %.2.2.i, %bb.s ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %drm_cvt_modes.exit, label %bb.d, !llvm.loop !147

drm_cvt_modes.exit:                               ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bh = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = add i32 %i.bi, %.3.i
  store i32 %i.bj, ptr %i.bh, align 4
  br label %is_display_descriptor.exit.thread

is_display_descriptor.exit.thread:                ; preds = %bb.a, %bb.b, %is_display_descriptor.exit, %drm_cvt_modes.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @drm_mode_std(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr i8, ptr %2, i64 1
  %i.c = load i8, ptr %i.b, align 1               ; 4 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = lshr i32 %i.d, 6
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 25 uses
  %i.h = getelementptr i8, ptr %i.g, i64 19
  %i.i = load i8, ptr %i.h, align 1               ; 4 uses
  %i.j = icmp ugt i8 %i.i, 3
  br i1 %i.j, label %bb.b, label %bb.bw

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %standard_timing_level.exit, label %.preheader28.i.i

.preheader28.i.i:                                 ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.g, i64 54
  %i.l = load i16, ptr %i.k, align 1
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.c, label %get_timing_level.exit26.i

bb.c:                                             ; preds = %.preheader28.i.i
  %i.n = getelementptr i8, ptr %i.g, i64 56
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %is_display_descriptor.exit.i23.i, label %get_timing_level.exit26.i

is_display_descriptor.exit.i23.i:                 ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.g, i64 57
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, -3
  br i1 %i.s, label %bb.d, label %get_timing_level.exit26.i

bb.d:                                             ; preds = %is_display_descriptor.exit.i23.i
  %i.t = getelementptr i8, ptr %i.g, i64 64
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.u, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 3
  %switch.selectcmp28.i = icmp eq i8 %i.u, 0
  %switch.select29.i = select i1 %switch.selectcmp28.i, i32 1, i32 %switch.select.i
  br label %get_timing_level.exit26.i

get_timing_level.exit26.i:                        ; preds = %bb.d, %is_display_descriptor.exit.i23.i, %bb.c, %.preheader28.i.i
  %.10.i = phi i32 [ %switch.select29.i, %bb.d ], [ 3, %.preheader28.i.i ], [ 3, %is_display_descriptor.exit.i23.i ], [ 3, %bb.c ] ; 4 uses
  %i.v = getelementptr i8, ptr %i.g, i64 72
  %i.w = load i16, ptr %i.v, align 1
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %bb.e, label %get_timing_level.exit22.i

bb.e:                                             ; preds = %get_timing_level.exit26.i
  %i.y = getelementptr i8, ptr %i.g, i64 74
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %is_display_descriptor.exit.i19.i, label %get_timing_level.exit22.i

is_display_descriptor.exit.i19.i:                 ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.g, i64 75
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, -3
  br i1 %i.ad, label %bb.f, label %get_timing_level.exit22.i

bb.f:                                             ; preds = %is_display_descriptor.exit.i19.i
  %i.ae = getelementptr i8, ptr %i.g, i64 82
  %i.af = load i8, ptr %i.ae, align 1
  switch i8 %i.af, label %get_timing_level.exit22.i [
    i8 0, label %is_display_descriptor.exit.thread.sink.split.i20.i
    i8 2, label %bb.g
    i8 4, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %get_timing_level.exit22.i

bb.h:                                             ; preds = %bb.f
  br label %get_timing_level.exit22.i

is_display_descriptor.exit.thread.sink.split.i20.i: ; preds = %bb.f
  br label %get_timing_level.exit22.i

get_timing_level.exit22.i:                        ; preds = %is_display_descriptor.exit.thread.sink.split.i20.i, %bb.h, %bb.g, %bb.f, %is_display_descriptor.exit.i19.i, %bb.e, %get_timing_level.exit26.i
  %.9.i = phi i32 [ %.10.i, %bb.f ], [ %.10.i, %get_timing_level.exit26.i ], [ %.10.i, %is_display_descriptor.exit.i19.i ], [ %.10.i, %bb.e ], [ 3, %bb.h ], [ 2, %bb.g ], [ 1, %is_display_descriptor.exit.thread.sink.split.i20.i ] ; 4 uses
  %i.ag = getelementptr i8, ptr %i.g, i64 90
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %get_timing_level.exit18.i

bb.i:                                             ; preds = %get_timing_level.exit22.i
  %i.aj = getelementptr i8, ptr %i.g, i64 92
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %is_display_descriptor.exit.i15.i, label %get_timing_level.exit18.i

is_display_descriptor.exit.i15.i:                 ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.g, i64 93
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, -3
  br i1 %i.ao, label %bb.j, label %get_timing_level.exit18.i

bb.j:                                             ; preds = %is_display_descriptor.exit.i15.i
  %i.ap = getelementptr i8, ptr %i.g, i64 100
  %i.aq = load i8, ptr %i.ap, align 1
  switch i8 %i.aq, label %get_timing_level.exit18.i [
    i8 0, label %is_display_descriptor.exit.thread.sink.split.i16.i
    i8 2, label %bb.k
    i8 4, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %get_timing_level.exit18.i

bb.l:                                             ; preds = %bb.j
end_hunk_0
begin_hunk_1_@drm_mode_std:bb.a
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = icmp eq i8 %i.ge, -3
  br i1 %i.gf, label %bb.bh, label %get_timing_level.exit.i.2

bb.bh:                                            ; preds = %is_display_descriptor.exit.i.i.2
  %i.gg = getelementptr i8, ptr %i.bx, i64 51
  %i.gh = load i8, ptr %i.gg, align 1
  switch i8 %i.gh, label %get_timing_level.exit.i.2 [
    i8 0, label %is_display_descriptor.exit.thread.sink.split.i.i.2
    i8 2, label %bb.bj
    i8 4, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  br label %get_timing_level.exit.i.2

bb.bj:                                            ; preds = %bb.bh
  br label %get_timing_level.exit.i.2

is_display_descriptor.exit.thread.sink.split.i.i.2: ; preds = %bb.bh
  br label %get_timing_level.exit.i.2

get_timing_level.exit.i.2:                        ; preds = %is_display_descriptor.exit.thread.sink.split.i.i.2, %bb.bj, %bb.bi, %bb.bh, %is_display_descriptor.exit.i.i.2, %bb.bg, %.lr.ph.i20.i.i.2
  %.5.i.2 = phi i32 [ %.5.i.1, %bb.bh ], [ %.5.i.1, %.lr.ph.i20.i.i.2 ], [ %.5.i.1, %is_display_descriptor.exit.i.i.2 ], [ %.5.i.1, %bb.bg ], [ 3, %bb.bi ], [ 2, %bb.bj ], [ 1, %is_display_descriptor.exit.thread.sink.split.i.i.2 ] ; 5 uses
  %exitcond.not.i23.i.i.2 = icmp eq i8 %i.ex, 3
  br i1 %exitcond.not.i23.i.i.2, label %cea_for_each_detailed_block.exit.i.i, label %.lr.ph.i20.i.i.3

.lr.ph.i20.i.i.3:                                 ; preds = %get_timing_level.exit.i.2
  %i.gi = getelementptr i8, ptr %i.bx, i64 59
  %i.gj = load i16, ptr %i.gi, align 1
  %i.gk = icmp eq i16 %i.gj, 0
  br i1 %i.gk, label %bb.bk, label %get_timing_level.exit.i.3

bb.bk:                                            ; preds = %.lr.ph.i20.i.i.3
  %i.gl = getelementptr i8, ptr %i.bx, i64 61
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %is_display_descriptor.exit.i.i.3, label %get_timing_level.exit.i.3

is_display_descriptor.exit.i.i.3:                 ; preds = %bb.bk
  %i.go = getelementptr i8, ptr %i.bx, i64 62
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = icmp eq i8 %i.gp, -3
  br i1 %i.gq, label %bb.bl, label %get_timing_level.exit.i.3

bb.bl:                                            ; preds = %is_display_descriptor.exit.i.i.3
  %i.gr = getelementptr i8, ptr %i.bx, i64 69
  %i.gs = load i8, ptr %i.gr, align 1
  switch i8 %i.gs, label %get_timing_level.exit.i.3 [
    i8 0, label %is_display_descriptor.exit.thread.sink.split.i.i.3
    i8 2, label %bb.bn
    i8 4, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl
  br label %get_timing_level.exit.i.3

bb.bn:                                            ; preds = %bb.bl
  br label %get_timing_level.exit.i.3

is_display_descriptor.exit.thread.sink.split.i.i.3: ; preds = %bb.bl
  br label %get_timing_level.exit.i.3

get_timing_level.exit.i.3:                        ; preds = %is_display_descriptor.exit.thread.sink.split.i.i.3, %bb.bn, %bb.bm, %bb.bl, %is_display_descriptor.exit.i.i.3, %bb.bk, %.lr.ph.i20.i.i.3
  %.5.i.3 = phi i32 [ %.5.i.2, %bb.bl ], [ %.5.i.2, %.lr.ph.i20.i.i.3 ], [ %.5.i.2, %is_display_descriptor.exit.i.i.3 ], [ %.5.i.2, %bb.bk ], [ 3, %bb.bm ], [ 2, %bb.bn ], [ 1, %is_display_descriptor.exit.thread.sink.split.i.i.3 ] ; 5 uses
  %exitcond.not.i23.i.i.3 = icmp eq i8 %i.ex, 4
  br i1 %exitcond.not.i23.i.i.3, label %cea_for_each_detailed_block.exit.i.i, label %.lr.ph.i20.i.i.4

.lr.ph.i20.i.i.4:                                 ; preds = %get_timing_level.exit.i.3
  %i.gt = getelementptr i8, ptr %i.bx, i64 77
  %i.gu = load i16, ptr %i.gt, align 1
  %i.gv = icmp eq i16 %i.gu, 0
  br i1 %i.gv, label %bb.bo, label %get_timing_level.exit.i.4

bb.bo:                                            ; preds = %.lr.ph.i20.i.i.4
  %i.gw = getelementptr i8, ptr %i.bx, i64 79
  %i.gx = load i8, ptr %i.gw, align 1
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %is_display_descriptor.exit.i.i.4, label %get_timing_level.exit.i.4

is_display_descriptor.exit.i.i.4:                 ; preds = %bb.bo
  %i.gz = getelementptr i8, ptr %i.bx, i64 80
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = icmp eq i8 %i.ha, -3
  br i1 %i.hb, label %bb.bp, label %get_timing_level.exit.i.4

bb.bp:                                            ; preds = %is_display_descriptor.exit.i.i.4
  %i.hc = getelementptr i8, ptr %i.bx, i64 87
  %i.hd = load i8, ptr %i.hc, align 1
  switch i8 %i.hd, label %get_timing_level.exit.i.4 [
    i8 0, label %is_display_descriptor.exit.thread.sink.split.i.i.4
    i8 2, label %bb.br
    i8 4, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  br label %get_timing_level.exit.i.4

bb.br:                                            ; preds = %bb.bp
  br label %get_timing_level.exit.i.4

is_display_descriptor.exit.thread.sink.split.i.i.4: ; preds = %bb.bp
  br label %get_timing_level.exit.i.4

get_timing_level.exit.i.4:                        ; preds = %is_display_descriptor.exit.thread.sink.split.i.i.4, %bb.br, %bb.bq, %bb.bp, %is_display_descriptor.exit.i.i.4, %bb.bo, %.lr.ph.i20.i.i.4
  %.5.i.4 = phi i32 [ %.5.i.3, %bb.bp ], [ %.5.i.3, %.lr.ph.i20.i.i.4 ], [ %.5.i.3, %is_display_descriptor.exit.i.i.4 ], [ %.5.i.3, %bb.bo ], [ 3, %bb.bq ], [ 2, %bb.br ], [ 1, %is_display_descriptor.exit.thread.sink.split.i.i.4 ] ; 5 uses
  %exitcond.not.i23.i.i.4 = icmp eq i8 %i.ex, 5
  br i1 %exitcond.not.i23.i.i.4, label %cea_for_each_detailed_block.exit.i.i, label %.lr.ph.i20.i.i.5

.lr.ph.i20.i.i.5:                                 ; preds = %get_timing_level.exit.i.4
  %i.he = getelementptr i8, ptr %i.bx, i64 95
  %i.hf = load i16, ptr %i.he, align 1
  %i.hg = icmp eq i16 %i.hf, 0
  br i1 %i.hg, label %bb.bs, label %cea_for_each_detailed_block.exit.i.i

bb.bs:                                            ; preds = %.lr.ph.i20.i.i.5
  %i.hh = getelementptr i8, ptr %i.bx, i64 97
  %i.hi = load i8, ptr %i.hh, align 1
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %is_display_descriptor.exit.i.i.5, label %cea_for_each_detailed_block.exit.i.i

is_display_descriptor.exit.i.i.5:                 ; preds = %bb.bs
  %i.hk = getelementptr i8, ptr %i.bx, i64 98
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = icmp eq i8 %i.hl, -3
  br i1 %i.hm, label %bb.bt, label %cea_for_each_detailed_block.exit.i.i

bb.bt:                                            ; preds = %is_display_descriptor.exit.i.i.5
  %i.hn = getelementptr i8, ptr %i.bx, i64 105
  %i.ho = load i8, ptr %i.hn, align 1
  switch i8 %i.ho, label %cea_for_each_detailed_block.exit.i.i [
    i8 0, label %is_display_descriptor.exit.thread.sink.split.i.i.5
    i8 2, label %bb.bv
    i8 4, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt
  br label %cea_for_each_detailed_block.exit.i.i

bb.bv:                                            ; preds = %bb.bt
  br label %cea_for_each_detailed_block.exit.i.i

is_display_descriptor.exit.thread.sink.split.i.i.5: ; preds = %bb.bt
  br label %cea_for_each_detailed_block.exit.i.i

cea_for_each_detailed_block.exit.i.i:             ; preds = %get_timing_level.exit.i, %get_timing_level.exit.i.1, %get_timing_level.exit.i.2, %get_timing_level.exit.i.3, %get_timing_level.exit.i.4, %is_display_descriptor.exit.thread.sink.split.i.i.5, %bb.bv, %bb.bu, %bb.bt, %is_display_descriptor.exit.i.i.5, %bb.bs, %.lr.ph.i20.i.i.5, %get_timing_level.exit10.i, %get_timing_level.exit10.i.1, %get_timing_level.exit10.i.2, %get_timing_level.exit10.i.3, %get_timing_level.exit10.i.4, %is_display_descriptor.exit.thread.sink.split.i8.i.5, %bb.aw, %bb.av, %bb.au, %is_display_descriptor.exit.i7.i.5, %bb.at, %.lr.ph.i.i.i.5, %bb.ax, %bb.y, %bb.x
  %.1.i = phi i32 [ %.027.i, %bb.x ], [ %.027.i, %bb.y ], [ %.027.i, %bb.ax ], [ 1, %is_display_descriptor.exit.thread.sink.split.i8.i.5 ], [ %.6.i, %get_timing_level.exit10.i ], [ %.6.i.1, %get_timing_level.exit10.i.1 ], [ %.6.i.2, %get_timing_level.exit10.i.2 ], [ %.6.i.3, %get_timing_level.exit10.i.3 ], [ %.6.i.4, %get_timing_level.exit10.i.4 ], [ %.6.i.4, %bb.au ], [ %.6.i.4, %.lr.ph.i.i.i.5 ], [ %.6.i.4, %is_display_descriptor.exit.i7.i.5 ], [ %.6.i.4, %bb.at ], [ 3, %bb.av ], [ 2, %bb.aw ], [ %.5.i, %get_timing_level.exit.i ], [ %.5.i.1, %get_timing_level.exit.i.1 ], [ %.5.i.2, %get_timing_level.exit.i.2 ], [ %.5.i.3, %get_timing_level.exit.i.3 ], [ %.5.i.4, %get_timing_level.exit.i.4 ], [ %.5.i.4, %bb.bt ], [ %.5.i.4, %.lr.ph.i20.i.i.5 ], [ %.5.i.4, %is_display_descriptor.exit.i.i.5 ], [ %.5.i.4, %bb.bs ], [ 3, %bb.bu ], [ 2, %bb.bv ], [ 1, %is_display_descriptor.exit.thread.sink.split.i.i.5 ]
  br label %bb.q, !llvm.loop !74

bb.bw:                                            ; preds = %bb.a
  %i.hp = icmp eq i8 %i.i, 3
  br i1 %i.hp, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.hq = tail call fastcc i32 @drm_gtf2_hbreak(ptr noundef readonly %1) #21, !srcloc !148
  %.not.i = icmp eq i32 %i.hq, 0
  br i1 %.not.i, label %bb.by, label %standard_timing_level.exit

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.hr = icmp samesign ugt i8 %i.i, 1
  %..i = zext i1 %i.hr to i32
  br label %standard_timing_level.exit

standard_timing_level.exit:                       ; preds = %drm_edid_block_count.exit.i.i.i, %__drm_edid_iter_next.exit.i.i, %bb.b, %bb.bx, %bb.by
  %.0.i = phi i32 [ %..i, %bb.by ], [ 2, %bb.bx ], [ 3, %bb.b ], [ %.027.i, %__drm_edid_iter_next.exit.i.i ], [ %.027.i, %drm_edid_block_count.exit.i.i.i ]
  %i.hs = load i8, ptr %2, align 1                ; 4 uses
  %i.ht = or i8 %i.hs, %i.c
  %or.cond.i = icmp eq i8 %i.ht, 0
  br i1 %or.cond.i, label %bad_std_timing.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %standard_timing_level.exit
  %i.hu = icmp eq i8 %i.hs, 1
  %i.hv = icmp eq i8 %i.c, 1
  %or.cond5.i = and i1 %i.hv, %i.hu
  br i1 %or.cond5.i, label %bad_std_timing.exit.thread, label %bad_std_timing.exit

bad_std_timing.exit:                              ; preds = %bb.bz
  %i.hw = icmp ne i8 %i.hs, 32
  %i.hx = icmp ne i8 %i.c, 32
  %.not109 = or i1 %i.hx, %i.hw
  br i1 %.not109, label %bb.ca, label %bad_std_timing.exit.thread

bb.ca:                                            ; preds = %bad_std_timing.exit
  %i.hy = and i32 %i.d, 63                        ; 2 uses
  %i.hz = zext i8 %i.hs to i32
  %i.ia = shl nuw nsw i32 %i.hz, 3
  %i.ib = add nuw nsw i32 %i.ia, 248              ; 9 uses
  %i.ic = add nuw nsw i32 %i.hy, 60               ; 6 uses
  switch i32 %i.e, label %default.unreachable [
    i32 0, label %bb.cb
    i32 1, label %bb.cd
    i32 2, label %bb.ce
    i32 3, label %bb.cf
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.id = icmp ult i8 %i.i, 3
  br i1 %i.id, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ie = mul nuw nsw i32 %i.ib, 10
  %i.if = lshr exact i32 %i.ie, 4
  br label %bb.cg

bb.cd:                                            ; preds = %bb.ca
  %i.ig = mul nuw nsw i32 %i.ib, 3
  %i.ih = lshr exact i32 %i.ig, 2
  br label %bb.cg

bb.ce:                                            ; preds = %bb.ca
  %.tr = trunc nuw nsw i32 %i.ib to i16
  %.lhs.trunc = shl nuw nsw i16 %.tr, 2
  %i.ii = udiv i16 %.lhs.trunc, 5
  %.zext = zext nneg i16 %i.ii to i32
  br label %bb.cg

default.unreachable:                              ; preds = %bb.ca
  unreachable

bb.cf:                                            ; preds = %bb.ca
  %i.ij = mul nuw nsw i32 %i.ib, 9
  %i.ik = lshr i32 %i.ij, 4
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cb, %bb.cd, %bb.cf, %bb.ce, %bb.cc
  %.086 = phi i32 [ %i.ik, %bb.cf ], [ %i.if, %bb.cc ], [ %i.ih, %bb.cd ], [ %.zext, %bb.ce ], [ %i.ib, %bb.cb ] ; 4 uses
  %i.il = icmp eq i32 %i.hy, 0                    ; 2 uses
  br i1 %i.il, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.im = icmp eq i32 %i.ib, 1360
  %i.in = icmp eq i32 %.086, 765
  %or.cond = select i1 %i.im, i1 %i.in, i1 false
  br i1 %or.cond, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.io = icmp eq i32 %i.ib, 1368
  %i.ip = icmp eq i32 %.086, 769
  %or.cond3 = select i1 %i.io, i1 %i.ip, i1 false
  br i1 %or.cond3, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.cg
  %.1 = phi i32 [ 768, %bb.cj ], [ %.086, %bb.ci ], [ %.086, %bb.cg ] ; 9 uses
  %.085 = phi i32 [ 1366, %bb.cj ], [ %i.ib, %bb.ci ], [ %i.ib, %bb.cg ] ; 11 uses
  %i.iq = getelementptr i8, ptr %0, i64 176       ; 3 uses
  %.pn114 = load ptr, ptr %i.iq, align 8          ; 2 uses
  %.not116 = icmp eq ptr %.pn114, %i.iq
  br i1 %.not116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ck, %bb.cn
  %.pn117 = phi ptr [ %.pn, %bb.cn ], [ %.pn114, %bb.ck ] ; 4 uses
  %.083118 = getelementptr i8, ptr %.pn117, i64 -64
  %i.ir = getelementptr i8, ptr %.pn117, i64 -60
  %i.is = load i16, ptr %i.ir, align 4
  %i.it = zext i16 %i.is to i32
  %i.iu = icmp eq i32 %.085, %i.it
  br i1 %i.iu, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %.lr.ph
  %i.iv = getelementptr i8, ptr %.pn117, i64 -50
  %i.iw = load i16, ptr %i.iv, align 2
  %i.ix = zext i16 %i.iw to i32
  %i.iy = icmp eq i32 %.1, %i.ix
  br i1 %i.iy, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.iz = tail call i32 @drm_mode_vrefresh(ptr noundef %.083118) #22
  %i.ja = icmp eq i32 %i.iz, %i.ic
  br i1 %i.ja, label %bad_std_timing.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph, %bb.cl, %bb.cm
  %.pn = load ptr, ptr %.pn117, align 8           ; 2 uses
  %.not = icmp eq ptr %.pn, %i.iq
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !149

._crit_edge:                                      ; preds = %bb.cn, %bb.ck
  %i.jb = icmp eq i32 %.085, 1366
  %i.jc = icmp eq i32 %.1, 768
  %or.cond5 = select i1 %i.jb, i1 %i.jc, i1 false
  %or.cond7 = and i1 %i.il, %or.cond5
  br i1 %or.cond7, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %._crit_edge
  %i.jd = tail call ptr @drm_cvt_mode(ptr noundef %i.a, i32 noundef 1366, i32 noundef 768, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #22 ; 5 uses
  %.not96 = icmp eq ptr %i.jd, null
  br i1 %.not96, label %bad_std_timing.exit.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.je = getelementptr i8, ptr %i.jd, i64 4
  store i16 1366, ptr %i.je, align 4
  %i.jf = getelementptr i8, ptr %i.jd, i64 6      ; 2 uses
  %i.jg = load i16, ptr %i.jf, align 2
  %i.jh = add i16 %i.jg, -1
  store i16 %i.jh, ptr %i.jf, align 2
  %i.ji = getelementptr i8, ptr %i.jd, i64 8      ; 2 uses
  %i.jj = load i16, ptr %i.ji, align 8
  %i.jk = add i16 %i.jj, -1
  store i16 %i.jk, ptr %i.ji, align 8
  br label %bad_std_timing.exit.thread

bb.cq:                                            ; preds = %._crit_edge
  %i.jl = tail call fastcc zeroext i1 @drm_monitor_supports_rb(ptr noundef %1) #21, !srcloc !150
  br i1 %i.jl, label %.split.us.i, label %.split.i.preheader

.split.us.i:                                      ; preds = %bb.cq, %mode_is_rb.exit.thr_comm.us.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %mode_is_rb.exit.thr_comm.us.i ], [ 0, %bb.cq ] ; 2 uses
  %i.jm = getelementptr [120 x i8], ptr @drm_dmt_modes, i64 %indvars.iv36.i ; 8 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 4
  %i.jo = load i16, ptr %i.jn, align 4
  %i.jp = zext i16 %i.jo to i32
  %.not.us.i = icmp eq i32 %.085, %i.jp
  br i1 %.not.us.i, label %bb.cr, label %mode_is_rb.exit.thr_comm.us.i

bb.cr:                                            ; preds = %.split.us.i
  %i.jq = getelementptr i8, ptr %i.jm, i64 14
  %i.jr = load i16, ptr %i.jq, align 2
  %i.js = zext i16 %i.jr to i32
  %.not17.us.i = icmp eq i32 %.1, %i.js
  br i1 %.not17.us.i, label %bb.cs, label %mode_is_rb.exit.thr_comm.us.i

bb.cs:                                            ; preds = %bb.cr
  %i.jt = tail call i32 @drm_mode_vrefresh(ptr noundef %i.jm) #22
  %.not18.us.i = icmp eq i32 %i.ic, %i.jt
  br i1 %.not18.us.i, label %bb.ct, label %mode_is_rb.exit.thr_comm.us.i

bb.ct:                                            ; preds = %bb.cs
  %i.ju = getelementptr i8, ptr %i.jm, i64 10
  %i.jv = load i16, ptr %i.ju, align 2
  %i.jw = zext i16 %i.jv to i32
  %i.jx = sub nsw i32 %i.jw, %.085
  %i.jy = icmp eq i32 %i.jx, 160
  br i1 %i.jy, label %bb.cu, label %mode_is_rb.exit.thr_comm.us.i

bb.cu:                                            ; preds = %bb.ct
  %i.jz = getelementptr i8, ptr %i.jm, i64 8
  %i.ka = load i16, ptr %i.jz, align 8
  %i.kb = zext i16 %i.ka to i32                   ; 2 uses
  %i.kc = sub nsw i32 %i.kb, %.085
  %i.kd = icmp eq i32 %i.kc, 80
  br i1 %i.kd, label %bb.cv, label %mode_is_rb.exit.thr_comm.us.i

bb.cv:                                            ; preds = %bb.cu
  %i.ke = getelementptr i8, ptr %i.jm, i64 6
  %i.kf = load i16, ptr %i.ke, align 2
  %i.kg = zext i16 %i.kf to i32
  %i.kh = sub nsw i32 %i.kb, %i.kg
  %i.ki = icmp eq i32 %i.kh, 32
  br i1 %i.ki, label %mode_is_rb.exit.us.i, label %mode_is_rb.exit.thr_comm.us.i

mode_is_rb.exit.us.i:                             ; preds = %bb.cv
  %i.kj = getelementptr i8, ptr %i.jm, i64 16
  %i.kk = load i16, ptr %i.kj, align 8
  %i.kl = zext i16 %i.kk to i32
  %i.km = sub nsw i32 %i.kl, %.1
  %.not29.i = icmp eq i32 %i.km, 3
  br i1 %.not29.i, label %drm_mode_find_dmt.exit, label %mode_is_rb.exit.thr_comm.us.i

mode_is_rb.exit.thr_comm.us.i:                    ; preds = %mode_is_rb.exit.us.i, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %.split.us.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, 88
  br i1 %exitcond39.not.i, label %.split.i.preheader, label %.split.us.i, !llvm.loop !66

drm_mode_find_dmt.exit:                           ; preds = %mode_is_rb.exit.us.i
  %i.kn = tail call ptr @drm_mode_duplicate(ptr noundef %i.a, ptr noundef %i.jm) #22 ; 2 uses
  %.not94 = icmp eq ptr %i.kn, null
  br i1 %.not94, label %.split.i.preheader, label %bad_std_timing.exit.thread

.split.i.preheader:                               ; preds = %mode_is_rb.exit.thr_comm.us.i, %drm_mode_find_dmt.exit, %bb.cq
  br label %.split.i

.split.i:                                         ; preds = %.split.i.preheader, %bb.db
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.db ], [ 0, %.split.i.preheader ] ; 2 uses
  %i.ko = getelementptr [120 x i8], ptr @drm_dmt_modes, i64 %indvars.iv.i ; 8 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 4
  %i.kq = load i16, ptr %i.kp, align 4
  %i.kr = zext i16 %i.kq to i32
  %.not.i98 = icmp eq i32 %.085, %i.kr
  br i1 %.not.i98, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %.split.i
  %i.ks = getelementptr i8, ptr %i.ko, i64 14
  %i.kt = load i16, ptr %i.ks, align 2
  %i.ku = zext i16 %i.kt to i32
  %.not17.i = icmp eq i32 %.1, %i.ku
  br i1 %.not17.i, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  %i.kv = tail call i32 @drm_mode_vrefresh(ptr noundef %i.ko) #22
  %.not18.i = icmp eq i32 %i.ic, %i.kv
  br i1 %.not18.i, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.kw = getelementptr i8, ptr %i.ko, i64 10
  %i.kx = load i16, ptr %i.kw, align 2
  %i.ky = zext i16 %i.kx to i32
  %i.kz = sub nsw i32 %i.ky, %.085
  %i.la = icmp eq i32 %i.kz, 160
  br i1 %i.la, label %bb.cz, label %drm_mode_find_dmt.exit101

end_hunk_1
