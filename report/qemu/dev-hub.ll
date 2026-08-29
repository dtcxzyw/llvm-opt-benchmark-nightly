Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/dev-hub?download=true
inline.NumInlined: 53
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@usb_hub_handle_control:bb.a
  %i.fi = add nuw nsw i32 %i.fh, 7
  %.not179 = icmp eq i32 %i.fh, 0
  br i1 %.not179, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.av
  %scevgep = getelementptr i8, ptr %6, i64 7
  %i.fj = lshr i32 %i.fg, 3
  %i.fk = zext nneg i32 %i.fj to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.fk, i1 false)
  %narrow = add nuw nsw i32 %i.fh, 7
  %.pre = load i32, ptr %i.eu, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.av
  %i.fl = phi i32 [ %i.ff, %bb.av ], [ %.pre, %.lr.ph.preheader ]
  %.0117.lcssa = phi i32 [ 7, %bb.av ], [ %narrow, %.lr.ph.preheader ]
  %i.fm = add i32 %i.fl, 7
  %i.fn = lshr i32 %i.fm, 3                       ; 3 uses
  %i.fo = add nuw nsw i32 %i.fn, %i.fi
  %i.fp = icmp samesign ult i32 %.0117.lcssa, %i.fo
  br i1 %i.fp, label %.lr.ph176.preheader, label %._crit_edge177

.lr.ph176.preheader:                              ; preds = %._crit_edge
  %i.fq = lshr i32 %i.fg, 3
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr i8, ptr %6, i64 %i.fr
  %scevgep183 = getelementptr i8, ptr %i.fs, i64 7
  %i.ft = add nsw i32 %i.fn, -1
  %i.fu = zext i32 %i.ft to i64
  %i.fv = add nuw nsw i64 %i.fu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep183, i8 -1, i64 %i.fv, i1 false)
  %i.fw = add nuw nsw i32 %i.fh, %i.fn
  br label %._crit_edge177

._crit_edge177:                                   ; preds = %.lr.ph176.preheader, %._crit_edge
  %.1.lcssa = phi i32 [ %i.fh, %._crit_edge ], [ %i.fw, %.lr.ph176.preheader ]
  %i.fx = add nuw nsw i32 %.1.lcssa, 7            ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %i.fx, ptr %i.fy, align 8
  %i.fz = trunc i32 %i.fx to i8
  store i8 %i.fz, ptr %6, align 1
  br label %.thread167

usb_hub_port_clear.exit153:                       ; preds = %trace_usb_hub_clear_port_feature.exit, %bb.ah, %trace_usb_hub_set_port_feature.exit, %bb.s, %bb.h, %bb.e, %bb.m, %bb.f
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 -3, ptr %i.ga, align 4
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
  %i.as = shl nuw <16 x i32> %vec.ind, splat (i32 3)
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
  %i.ay = shl nuw <8 x i32> %vec.ind55, splat (i32 3)
  %i.az = lshr <8 x i32> %broadcast.splat51, %i.ay
  %i.ba = trunc <8 x i32> %i.az to <8 x i8>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %index54
  store <8 x i8> %i.ba, ptr %i.bb, align 4
  %index.next56 = add nuw i64 %index54, 8         ; 2 uses
  %vec.ind.next57 = add <8 x i32> %vec.ind55, splat (i32 8)
  %i.bc = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %n.vec49, %wide.trip.count
  br i1 %cmp.n58, label %._crit_edge40, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec49, %vec.epilog.middle.block ]
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %.lr.ph39
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph39 ], [ %indvars.iv.ph, %.lr.ph39.preheader ] ; 3 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.bd = shl nuw i32 %indvars.iv.tr, 3
  %i.be = lshr i32 %.133.lcssa, %i.bd
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.bf, ptr %i.bg, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond44.not, label %._crit_edge40, label %.lr.ph39, !llvm.loop !21

._crit_edge40:                                    ; preds = %.lr.ph39, %middle.block, %vec.epilog.middle.block, %trace_usb_hub_status_report.exit
  %.pre-phi = phi i64 [ 0, %trace_usb_hub_status_report.exit ], [ %wide.trip.count, %middle.block ], [ %wide.trip.count, %vec.epilog.middle.block ], [ %wide.trip.count, %.lr.ph39 ]
  call void @usb_packet_copy(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %.pre-phi) #7
  br label %bb.j

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 -2, ptr %i.bh, align 4
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge40, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.l

bb.k:                                             ; preds = %bb.a, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i32 -3, ptr %i.bi, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.critedge
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_hub_unrealize(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5864 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5880
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07 = phi i32 [ 0, %.lr.ph ], [ %i.g, %bb.b ]  ; 2 uses
  %.val = load ptr, ptr %i.c, align 8
  %i.e = sext i32 %.07 to i64
  %i.f = getelementptr inbounds [80 x i8], ptr %i.d, i64 %i.e
  tail call void @usb_unregister_port(ptr noundef %.val, ptr noundef nonnull %i.f) #7
  %i.g = add nuw i32 %.07, 1                      ; 2 uses
  %i.h = load i32, ptr %i.a, align 8
  %i.i = icmp ult i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5872
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %timer_free.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @timer_del(ptr noundef nonnull %i.k) #7
  tail call void @g_free(ptr noundef nonnull %i.k) #7
  br label %timer_free.exit

timer_free.exit:                                  ; preds = %._crit_edge, %bb.c
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @usb_desc_create_serial(ptr noundef) local_unnamed_addr #1

declare void @usb_desc_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_hub_port_update_timer(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5864
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5880
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %usb_hub_port_update.exit
  %.010 = phi i32 [ 0, %.lr.ph ], [ %i.y, %usb_hub_port_update.exit ] ; 2 uses
  %.089 = phi i1 [ false, %.lr.ph ], [ %i.x, %usb_hub_port_update.exit ]
  %i.d = sext i32 %.010 to i64
  %i.e = getelementptr inbounds [80 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %usb_hub_port_update.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.h = load i8, ptr %i.g, align 8, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %usb_hub_port_update.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.k = load i16, ptr %i.j, align 8              ; 3 uses
  %i.l = and i16 %i.k, 1
  %.not.i.i = icmp eq i16 %i.l, 0                 ; 4 uses
  br i1 %.not.i.i, label %bb.e, label %usb_hub_port_set.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = or disjoint i16 %i.k, 1                  ; 2 uses
  store i16 %i.m, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 74 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2
  %i.p = or i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 2
  br label %usb_hub_port_set.exit.i

usb_hub_port_set.exit.i:                          ; preds = %bb.e, %bb.d
  %i.q = phi i16 [ %i.k, %bb.d ], [ %i.m, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.s, 0
  %i.u = and i16 %i.q, 512
  %.not.i7.i = icmp eq i16 %i.u, 0                ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %usb_hub_port_set.exit.i
  br i1 %.not.i7.i, label %bb.g, label %usb_hub_port_update.exit

bb.g:                                             ; preds = %bb.f
  %i.v = or disjoint i16 %i.q, 512
  br label %usb_hub_port_set.exit9.sink.split.i

bb.h:                                             ; preds = %usb_hub_port_set.exit.i
  br i1 %.not.i7.i, label %usb_hub_port_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = and i16 %i.q, -513
  br label %usb_hub_port_set.exit9.sink.split.i

usb_hub_port_set.exit9.sink.split.i:              ; preds = %bb.i, %bb.g
  %.sink.i = phi i16 [ %i.w, %bb.i ], [ %i.v, %bb.g ]
  store i16 %.sink.i, ptr %i.j, align 8
  br label %usb_hub_port_update.exit

usb_hub_port_update.exit:                         ; preds = %bb.b, %bb.c, %bb.f, %bb.h, %usb_hub_port_set.exit9.sink.split.i
  %.0.shrunk.i = phi i1 [ false, %bb.b ], [ %.not.i.i, %bb.h ], [ false, %bb.c ], [ %.not.i.i, %bb.f ], [ %.not.i.i, %usb_hub_port_set.exit9.sink.split.i ]
  %i.x = or i1 %.089, %.0.shrunk.i                ; 2 uses
  %i.y = add nuw i32 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %usb_hub_port_update.exit
  br i1 %i.x, label %bb.j, label %.critedge

bb.j:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5856
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @usb_wakeup(ptr noundef %i.aa, i32 noundef 0) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.j, %._crit_edge
  ret void
}

declare ptr @usb_ep_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @usb_register_port(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @usb_port_location(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @usb_wakeup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_hub_attach(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5880
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [80 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 216
end_hunk_0
