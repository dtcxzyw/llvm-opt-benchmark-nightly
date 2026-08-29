Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/dev-hub?download=true
inline.NumInlined: 53
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@usb_hub_handle_control:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 74 ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = or i16 %i.ch, 2
  store i16 %i.ci, ptr %i.cg, align 2
  br label %usb_hub_port_set.exit140

usb_hub_port_set.exit140:                         ; preds = %bb.y, %bb.x, %bb.w, %usb_hub_port_clear.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 5856
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void @usb_wakeup(ptr noundef %i.ck, i32 noundef 0) #7
  br label %.thread167

bb.z:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 5868
  %i.cm = load i8, ptr %i.cl, align 4, !range !10, !noundef !11
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.aa, label %.thread167

bb.aa:                                            ; preds = %bb.z
  %i.co = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bj, i64 72 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 8            ; 2 uses
  %i.cr = and i16 %i.cq, 256
  %.not.i141 = icmp eq i16 %i.cr, 0
  br i1 %.not.i141, label %bb.ab, label %usb_hub_port_set.exit143

bb.ab:                                            ; preds = %bb.aa
  %i.cs = or disjoint i16 %i.cq, 256
  store i16 %i.cs, ptr %i.cp, align 8
  br label %usb_hub_port_set.exit143

usb_hub_port_set.exit143:                         ; preds = %bb.aa, %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 5872
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = add i64 %i.co, 5000000
  tail call void @timer_mod(ptr noundef %i.cu, i64 noundef %i.cv) #7
  br label %.thread167

bb.ac:                                            ; preds = %bb.e
  %i.cw = add i32 %4, -1                          ; 2 uses
  %i.cx = load i8, ptr %i.a, align 8
  %i.cy = zext i8 %i.cx to i32
  %i.cz = icmp ugt i32 %3, 22
  br i1 %i.cz, label %feature_name.exit147, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = zext nneg i32 %3 to i64                 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @feature_name.name, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = shl nuw nsw i64 1, %i.da
  %i.de = and i64 %i.dd, 63712
  %.not.not.i144 = icmp eq i64 %i.de, 0
  %..str.38.i145 = select i1 %.not.not.i144, ptr %i.dc, ptr @.str.38
  br label %feature_name.exit147

feature_name.exit147:                             ; preds = %bb.ac, %bb.ad
  %.0.i146 = phi ptr [ %..str.38.i145, %bb.ad ], [ @.str.38, %bb.ac ]
  %i.df = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i148 = icmp eq i32 %i.df, 0
  br i1 %.not.i148, label %trace_usb_hub_clear_port_feature.exit, label %bb.ae, !prof !9

bb.ae:                                            ; preds = %feature_name.exit147
  %i.dg = load i16, ptr @_TRACE_USB_HUB_CLEAR_PORT_FEATURE_DSTATE, align 2
  %.not2.i149 = icmp eq i16 %i.dg, 0
  br i1 %.not2.i149, label %trace_usb_hub_clear_port_feature.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = load i32, ptr @qemu_loglevel, align 4
  %i.di = and i32 %i.dh, 32768
  %.not3.i150 = icmp eq i32 %i.di, 0
  br i1 %.not3.i150, label %trace_usb_hub_clear_port_feature.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, i32 noundef range(i32 0, 256) %i.cy, i32 noundef %4, ptr noundef %.0.i146) #7
  br label %trace_usb_hub_clear_port_feature.exit

trace_usb_hub_clear_port_feature.exit:            ; preds = %feature_name.exit147, %bb.ae, %bb.af, %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 5864
  %i.dk = load i32, ptr %i.dj, align 8
  %.not = icmp ult i32 %i.cw, %i.dk
  br i1 %.not, label %bb.ah, label %usb_hub_port_clear.exit153

bb.ah:                                            ; preds = %trace_usb_hub_clear_port_feature.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.dm = zext i32 %i.cw to i64
  %i.dn = getelementptr inbounds nuw [80 x i8], ptr %i.dl, i64 %i.dm ; 10 uses
  switch i32 %3, label %usb_hub_port_clear.exit153 [
    i32 1, label %bb.ai
    i32 17, label %bb.aj
    i32 2, label %bb.ak
    i32 18, label %bb.am
    i32 16, label %bb.an
    i32 19, label %bb.ao
    i32 20, label %bb.ap
    i32 8, label %bb.aq
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 8
  %i.dq = and i16 %i.dp, -3
  store i16 %i.dq, ptr %i.do, align 8
  br label %.thread167

bb.aj:                                            ; preds = %bb.ah
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 74 ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = and i16 %i.ds, -3
  store i16 %i.dt, ptr %i.dr, align 2
  br label %.thread167

bb.ak:                                            ; preds = %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 72 ; 2 uses
  %i.dv = load i16, ptr %i.du, align 8            ; 2 uses
  %i.dw = and i16 %i.dv, 4
  %.not.i151 = icmp eq i16 %i.dw, 0
  br i1 %.not.i151, label %.thread167, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dx = and i16 %i.dv, -5
  store i16 %i.dx, ptr %i.du, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 74 ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2
  %i.ea = or i16 %i.dz, 4
  store i16 %i.ea, ptr %i.dy, align 2
  br label %.thread167

bb.am:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 74 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2
  %i.ed = and i16 %i.ec, -5
  store i16 %i.ed, ptr %i.eb, align 2
  br label %.thread167

bb.an:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 74 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2
  %i.eg = and i16 %i.ef, -2
  store i16 %i.eg, ptr %i.ee, align 2
  br label %.thread167

bb.ao:                                            ; preds = %bb.ah
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dn, i64 74 ; 2 uses
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = and i16 %i.ei, -9
  store i16 %i.ej, ptr %i.eh, align 2
  br label %.thread167

bb.ap:                                            ; preds = %bb.ah
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dn, i64 74 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = and i16 %i.el, -17
  store i16 %i.em, ptr %i.ek, align 2
  br label %.thread167

bb.aq:                                            ; preds = %bb.ah
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 5868
  %i.eo = load i8, ptr %i.en, align 4, !range !10, !noundef !11
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %usb_hub_port_clear.exit156, label %.thread167

usb_hub_port_clear.exit156:                       ; preds = %bb.aq
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dn, i64 72 ; 2 uses
  %i.er = load i16, ptr %i.eq, align 8            ; 2 uses
  %i.es = and i16 %i.er, 263
  %.not194 = icmp eq i16 %i.es, 0
  br i1 %.not194, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %usb_hub_port_clear.exit156
  %spec.select193 = and i16 %i.er, -264
  store i16 %spec.select193, ptr %i.eq, align 8
  br label %bb.as

bb.as:                                            ; preds = %usb_hub_port_clear.exit156, %bb.ar
  %i.et = getelementptr inbounds nuw i8, ptr %i.dn, i64 74
  store i16 0, ptr %i.et, align 2
  br label %.thread167

bb.at:                                            ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %6, ptr noundef nonnull align 1 dereferenceable(7) @qemu_hub_hub_descriptor, i64 noundef 7, i1 noundef false) #7
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 5864 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.ew, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 5868
  %i.ez = load i8, ptr %i.ey, align 4, !range !10, !noundef !11
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 3 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = and i8 %i.fc, -4
  %i.fe = or disjoint i8 %i.fd, 1
  store i8 %i.fe, ptr %i.fb, align 1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ff = load i32, ptr %i.eu, align 8            ; 2 uses
  %i.fg = add i32 %i.ff, 8
  %i.fh = lshr i32 %i.fg, 3                       ; 6 uses
  %i.fi = add nuw nsw i32 %i.fh, 7                ; 2 uses
  %.not179 = icmp eq i32 %i.fh, 0
  br i1 %.not179, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.av
  %scevgep = getelementptr i8, ptr %6, i64 7
  %i.fj = zext nneg i32 %i.fh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.fj, i1 false)
  %.pre = load i32, ptr %i.eu, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.av
  %i.fk = phi i32 [ %i.ff, %bb.av ], [ %.pre, %.lr.ph.preheader ]
  %.0117.lcssa = phi i32 [ 7, %bb.av ], [ %i.fi, %.lr.ph.preheader ] ; 4 uses
  %.0117.lcssa.a = phi i32 [ 0, %bb.av ], [ %i.fh, %.lr.ph.preheader ] ; 2 uses
  %i.fl = add i32 %i.fk, 7
  %i.fm = lshr i32 %i.fl, 3                       ; 3 uses
  %i.fn = add nuw nsw i32 %i.fm, %i.fi
  %i.fo = icmp samesign ult i32 %.0117.lcssa, %i.fn
  br i1 %i.fo, label %.lr.ph176.preheader, label %._crit_edge177

.lr.ph176.preheader:                              ; preds = %._crit_edge
  %i.fp = zext nneg i32 %.0117.lcssa to i64
  %i.fq = getelementptr i8, ptr %6, i64 %i.fp
  %7 = add nuw nsw i32 %i.fh, %i.fm
  %i.fr = add nuw nsw i32 %7, 6
  %8 = sub nsw i32 %i.fr, %.0117.lcssa
  %i.fs = zext i32 %8 to i64
  %i.ft = add nuw nsw i64 %i.fs, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fq, i8 -1, i64 %i.ft, i1 false)
  %9 = add nuw nsw i32 %.0117.lcssa.a, %i.fh
  %10 = add nuw nsw i32 %9, %i.fm
  %i.fu = add nuw nsw i32 %10, 7
  %11 = sub nsw i32 %i.fu, %.0117.lcssa
  br label %._crit_edge177

._crit_edge177:                                   ; preds = %.lr.ph176.preheader, %._crit_edge
  %.1.lcssa = phi i32 [ %.0117.lcssa.a, %._crit_edge ], [ %11, %.lr.ph176.preheader ]
  %i.fv = add nsw i32 %.1.lcssa, 7                ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %i.fv, ptr %i.fw, align 8
  %i.fx = trunc i32 %i.fv to i8
  store i8 %i.fx, ptr %6, align 1
  br label %.thread167

usb_hub_port_clear.exit153:                       ; preds = %trace_usb_hub_clear_port_feature.exit, %bb.ah, %trace_usb_hub_set_port_feature.exit, %bb.s, %bb.h, %bb.e, %bb.m, %bb.f
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 -3, ptr %i.fy, align 4
  br label %.thread167

.thread167:                                       ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.as, %bb.aq, %bb.t, %usb_hub_port_set.exit140, %usb_hub_port_set.exit143, %bb.z, %.thread, %bb.g, %._crit_edge177, %usb_hub_port_clear.exit153, %bb.f, %bb.m, %trace_usb_hub_control.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_hub_handle_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  %i.b = load i32, ptr %1, align 8
  %cond1 = icmp eq i32 %i.b, 105
  br i1 %cond1, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !annotation !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5864
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  %.pre = load i32, ptr %i.g, align 8             ; 6 uses
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %.pre, 8
  %i.l = lshr i32 %i.k, 3                         ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = icmp ult i64 %i.i, %i.m
  br i1 %i.n, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 -4, ptr %i.o, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.l

bb.e:                                             ; preds = %bb.c, %bb.d
  %.030 = phi i32 [ %i.l, %bb.d ], [ 1, %bb.c ]   ; 4 uses
  %.not41 = icmp eq i32 %.pre, 0
  br i1 %.not41, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %xtraiter = and i32 %.pre, 1
  %i.p = icmp eq i32 %.pre, 1
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %.pre, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03137 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ab, %.lr.ph ] ; 5 uses
  %.03236 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.133.1, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.q = sext i32 %.03137 to i64
  %i.r = getelementptr [80 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 5954
  %i.t = load i16, ptr %i.s, align 2
  %.not35 = icmp eq i16 %i.t, 0
  %i.u = or disjoint i32 %.03137, 1
  %i.v = shl nuw i32 2, %.03137
  %i.w = select i1 %.not35, i32 0, i32 %i.v
  %.133 = or i32 %i.w, %.03236
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr [80 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 5954
  %i.aa = load i16, ptr %i.z, align 2
  %.not35.1 = icmp eq i16 %i.aa, 0
  %i.ab = add nuw i32 %.03137, 2                  ; 2 uses
  %i.ac = shl nuw i32 4, %.03137
  %i.ad = select i1 %.not35.1, i32 0, i32 %i.ac
  %.133.1 = or i32 %i.ad, %.133                   ; 3 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !15

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.03137.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ab, %._crit_edge.unr-lcssa ] ; 2 uses
  %.03236.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.133.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod60 = trunc i32 %.pre to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.ae = sext i32 %.03137.epil.init to i64
  %i.af = getelementptr [80 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 5954
  %i.ah = load i16, ptr %i.ag, align 2
  %.not35.epil = icmp eq i16 %i.ah, 0
  %i.ai = shl nuw i32 2, %.03137.epil.init
  %i.aj = select i1 %.not35.epil, i32 0, i32 %i.ai
  %.133.epil = or i32 %i.aj, %.03236.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.133.lcssa = phi i32 [ %.133.1, %._crit_edge.unr-lcssa ], [ %.133.epil, %.lr.ph.epil.preheader ] ; 5 uses
  %.not = icmp eq i32 %.133.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = zext i8 %i.al to i32
  %i.an = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %trace_usb_hub_status_report.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.ao = load i16, ptr @_TRACE_USB_HUB_STATUS_REPORT_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.ao, 0
  br i1 %.not2.i, label %trace_usb_hub_status_report.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr @qemu_loglevel, align 4
  %i.aq = and i32 %i.ap, 32768
  %.not3.i = icmp eq i32 %i.aq, 0
  br i1 %.not3.i, label %trace_usb_hub_status_report.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.40, i32 noundef range(i32 0, 256) %i.am, i32 noundef range(i32 1, 0) %.133.lcssa) #7
  br label %trace_usb_hub_status_report.exit

trace_usb_hub_status_report.exit:                 ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.not42 = icmp eq i32 %.030, 0
  br i1 %.not42, label %._crit_edge40, label %iter.check

iter.check:                                       ; preds = %trace_usb_hub_status_report.exit
  %wide.trip.count = zext nneg i32 %.030 to i64   ; 9 uses
  %min.iters.check = icmp samesign ult i32 %.030, 8
  br i1 %min.iters.check, label %.lr.ph39.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp samesign ult i32 %.030, 16
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %wide.trip.count, 8
  %n.vec = and i64 %wide.trip.count, 536870896    ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.133.lcssa, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.as = shl <16 x i32> %vec.ind, splat (i32 3)
  %i.at = lshr <16 x i32> %broadcast.splat, %i.as
  %i.au = trunc <16 x i32> %i.at to <16 x i8>
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  store <16 x i8> %i.au, ptr %i.av, align 4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge40, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph39.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec49 = and i64 %wide.trip.count, 536870904  ; 3 uses
  %broadcast.splatinsert50 = insertelement <8 x i32> poison, i32 %.133.lcssa, i64 0
  %broadcast.splat51 = shufflevector <8 x i32> %broadcast.splatinsert50, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ax = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert52 = insertelement <8 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat53 = shufflevector <8 x i32> %broadcast.splatinsert52, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat53, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind55 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = shl <8 x i32> %vec.ind55, splat (i32 3)
  %i.az = lshr <8 x i32> %broadcast.splat51, %i.ay
  %i.ba = trunc <8 x i32> %i.az to <8 x i8>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %index54
  store <8 x i8> %i.ba, ptr %i.bb, align 4
end_hunk_0
