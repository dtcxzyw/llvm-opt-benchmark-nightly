Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vhost_net?download=true
inline.NumInlined: 51
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@vhost_net_start:bb.a
bb.t:                                             ; preds = %get_vhost_net.exit.i90
  store i32 %i.cc, ptr %i.cb, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 528
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 264
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not.i6.i = icmp eq ptr %i.cm, null
  br i1 %.not.i6.i, label %vhost_net_set_vring_enable.exit.thread, label %vhost_net_set_vring_enable.exit

vhost_net_set_vring_enable.exit:                  ; preds = %bb.t
  %i.cn = call i32 %i.cm(ptr noundef nonnull %.0.i.i, i32 noundef %i.cc) #11, !inline_history !18 ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %.loopexit112, label %vhost_net_set_vring_enable.exit.vhost_net_set_vring_enable.exit.thread_crit_edge

vhost_net_set_vring_enable.exit.vhost_net_set_vring_enable.exit.thread_crit_edge: ; preds = %vhost_net_set_vring_enable.exit
  %.pre = load ptr, ptr %i.ca, align 8
  br label %vhost_net_set_vring_enable.exit.thread

vhost_net_set_vring_enable.exit.thread:           ; preds = %vhost_net_set_vring_enable.exit.vhost_net_set_vring_enable.exit.thread_crit_edge, %bb.t, %get_vhost_net.exit.i90, %bb.q
  %i.cp = phi ptr [ %.pre, %vhost_net_set_vring_enable.exit.vhost_net_set_vring_enable.exit.thread_crit_edge ], [ %i.cg, %bb.t ], [ %i.cg, %get_vhost_net.exit.i90 ], [ %.pre149, %bb.q ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 200
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !9, !noundef !9
  %i.cs = call ptr %i.cr(ptr noundef nonnull %i.ca) #11, !inline_history !7 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i64 0, ptr %4, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 960 ; 6 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not.i96 = icmp eq ptr %i.cx, null
  br i1 %.not.i96, label %bb.v, label %bb.u

bb.u:                                             ; preds = %vhost_net_set_vring_enable.exit.thread
  %i.cy = call i32 %i.cx(ptr noundef nonnull %i.cu) #11, !inline_history !19 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %vhost_net_start_one.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %vhost_net_set_vring_enable.exit.thread
  %i.da = call i32 @vhost_dev_start(ptr noundef nonnull %i.cs, ptr noundef %0, i1 noundef zeroext false) #11 ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %vhost_net_start_one.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 88
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not43.i = icmp eq ptr %i.df, null
  br i1 %.not43.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void %i.df(ptr noundef nonnull %i.dc, i1 noundef zeroext false) #11, !inline_history !19
  %.pre.i97 = load ptr, ptr %i.ct, align 8
  %.pre52.i = load ptr, ptr %.pre.i97, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dg = phi ptr [ %.pre52.i, %bb.x ], [ %i.dd, %bb.w ]
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = icmp eq i32 %i.dh, 3
  br i1 %i.di, label %bb.z, label %.loopexit47.i

bb.z:                                             ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 920 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8
  call void @qemu_set_fd_handler(i32 noundef %i.dk, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %i.dl = load i32, ptr %i.dj, align 8
  store i32 %i.dl, ptr %i.bv, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cs, i64 440 ; 2 uses
  store i32 0, ptr %4, align 8
  %i.dn = load i32, ptr %i.dm, align 8
  %.not51.i = icmp eq i32 %i.dn, 0
  br i1 %.not51.i, label %.loopexit47.i, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 444
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %.lr.ph.i99
  %storemerge48.i = phi i32 [ 0, %.lr.ph.i99 ], [ %i.dy, %bb.ad ]
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = add i32 %i.dp, %storemerge48.i
  %i.dr = call zeroext i1 @virtio_queue_enabled(ptr noundef %0, i32 noundef %i.dq) #11
  br i1 %i.dr, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ds = call i32 @vhost_net_set_backend(ptr noundef nonnull %i.cs, ptr noundef nonnull %4) #11
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.du = tail call ptr @__errno_location() #13
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = sub i32 0, %i.dv
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dx = load i32, ptr %4, align 8
  %i.dy = add i32 %i.dx, 1                        ; 3 uses
  store i32 %i.dy, ptr %4, align 8
  %i.dz = load i32, ptr %i.dm, align 8
  %i.ea = icmp ult i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.aa, label %.loopexit47.i, !llvm.loop !20

.loopexit47.i:                                    ; preds = %bb.ad, %bb.z, %bb.y
  %i.eb = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %.not44.i = icmp eq ptr %i.ee, null
  br i1 %.not44.i, label %vhost_net_start_one.exit.thread109, label %bb.ae

bb.ae:                                            ; preds = %.loopexit47.i
  %i.ef = call i32 %i.ee(ptr noundef nonnull %i.eb) #11, !inline_history !19 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.af, label %vhost_net_start_one.exit.thread109

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.0.i98 = phi i32 [ %i.dw, %bb.ac ], [ %i.ef, %bb.ae ] ; 2 uses
  store i32 -1, ptr %i.bv, align 4
  %i.eh = load ptr, ptr %i.ct, align 8            ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = icmp eq i32 %i.ej, 3
  br i1 %i.ek, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.af
  %i.el = load i32, ptr %4, align 8               ; 2 uses
  %i.em = add i32 %i.el, -1                       ; 2 uses
  store i32 %i.em, ptr %4, align 8
  %.not4549.i = icmp eq i32 %i.el, 0
  br i1 %.not4549.i, label %.loopexit.i, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %.preheader.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.cs, i64 444
  br label %bb.ag

bb.ag:                                            ; preds = %.backedge.i, %.lr.ph50.i
  %i.eo = phi i32 [ %i.em, %.lr.ph50.i ], [ %i.et, %.backedge.i ]
  %i.ep = load i32, ptr %i.en, align 4
  %i.eq = add i32 %i.ep, %i.eo
  %i.er = call zeroext i1 @virtio_queue_enabled(ptr noundef %0, i32 noundef %i.eq) #11
  br i1 %i.er, label %bb.ah, label %.backedge.i

.backedge.i:                                      ; preds = %bb.ah, %bb.ag
  %i.es = load i32, ptr %4, align 8               ; 2 uses
  %i.et = add i32 %i.es, -1                       ; 2 uses
  store i32 %i.et, ptr %4, align 8
  %.not45.i = icmp eq i32 %i.es, 0
  br i1 %.not45.i, label %.loopexit.loopexit.i, label %bb.ag, !llvm.loop !21

bb.ah:                                            ; preds = %bb.ag
  %i.eu = call i32 @vhost_net_set_backend(ptr noundef nonnull %i.cs, ptr noundef nonnull %4) #11
  %i.ev = icmp sgt i32 %i.eu, -1
  br i1 %i.ev, label %.backedge.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef 381, ptr noundef nonnull @__PRETTY_FUNCTION__.vhost_net_start_one) #14
  unreachable

.loopexit.loopexit.i:                             ; preds = %.backedge.i
  %.pre53.i = load ptr, ptr %i.ct, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.preheader.i, %bb.af
  %i.ew = phi ptr [ %.pre53.i, %.loopexit.loopexit.i ], [ %i.eh, %.preheader.i ], [ %i.eh, %bb.af ] ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 88
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %.not46.i = icmp eq ptr %i.ez, null
  br i1 %.not46.i, label %vhost_net_start_one.exit, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i
  call void %i.ez(ptr noundef nonnull %i.ew, i1 noundef zeroext true) #11, !inline_history !19
  br label %vhost_net_start_one.exit

vhost_net_start_one.exit.thread:                  ; preds = %bb.u, %bb.v
  %.034.i.ph = phi i32 [ %i.da, %bb.v ], [ %i.cy, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.loopexit112

vhost_net_start_one.exit.thread109:               ; preds = %.loopexit47.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.ak

vhost_net_start_one.exit:                         ; preds = %.loopexit.i, %bb.aj
  %i.fa = call i32 @vhost_dev_stop(ptr noundef nonnull %i.cs, ptr noundef %0, i1 noundef zeroext false) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.fb = icmp slt i32 %.0.i98, 0
  br i1 %i.fb, label %.loopexit112, label %bb.ak

bb.ak:                                            ; preds = %vhost_net_start_one.exit.thread109, %vhost_net_start_one.exit
  %i.fc = add nuw nsw i32 %.174129, 1             ; 2 uses
  %exitcond148.not = icmp eq i32 %i.fc, %i.j
  br i1 %exitcond148.not, label %.loopexit111, label %bb.o, !llvm.loop !22

.loopexit112:                                     ; preds = %vhost_net_start_one.exit, %vhost_net_set_vring_enable.exit, %vhost_net_start_one.exit.thread
  %.075 = phi i32 [ %.034.i.ph, %vhost_net_start_one.exit.thread ], [ %.0.i98, %vhost_net_start_one.exit ], [ %i.cn, %vhost_net_set_vring_enable.exit ] ; 2 uses
  %.not177 = icmp eq i32 %.174129, 0
  br i1 %.not177, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %.loopexit112
  %5 = add nsw i32 %.174129, -1
  br label %.lr.ph133.a

.lr.ph133.a:                                      ; preds = %.lr.ph133, %get_vhost_net.exit103
  %.in = phi i32 [ %5, %.lr.ph133 ], [ %7, %get_vhost_net.exit103 ] ; 3 uses
  %6 = icmp slt i32 %.in, %2
  br i1 %6, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph133.a
  %i.fd = load i16, ptr %i.bu, align 4
  %i.fe = zext i16 %i.fd to i32
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph133.a, %bb.al
  %i.ff = phi i32 [ %i.fe, %bb.al ], [ %.in, %.lr.ph133.a ]
  %i.fg = call ptr @qemu_get_peer(ptr noundef %1, i32 noundef %i.ff) #11 ; 3 uses
  %.not.i100 = icmp eq ptr %i.fg, null
  br i1 %.not.i100, label %get_vhost_net.exit103, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 200
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not7.i101 = icmp eq ptr %i.fj, null
  br i1 %.not7.i101, label %get_vhost_net.exit103, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = call ptr %i.fj(ptr noundef nonnull %i.fg) #11, !inline_history !7
  br label %get_vhost_net.exit103

get_vhost_net.exit103:                            ; preds = %bb.am, %bb.an, %bb.ao
  %.0.i102 = phi ptr [ %i.fk, %bb.ao ], [ null, %bb.am ], [ null, %bb.an ]
  call fastcc void @vhost_net_stop_one(ptr noundef %.0.i102, ptr noundef %0)
  %7 = add i32 %.in, -1                           ; 2 uses
  %i.fl = icmp sgt i32 %7, -1
  br i1 %i.fl, label %.lr.ph133.a, label %._crit_edge134, !llvm.loop !23

._crit_edge134:                                   ; preds = %get_vhost_net.exit103, %.loopexit112
  %i.fm = load ptr, ptr %i.l, align 8
  %i.fn = load ptr, ptr %i.bq, align 8
  %i.fo = call i32 %i.fm(ptr noundef %i.fn, i32 noundef %i.h, i1 noundef zeroext false) #11 ; 2 uses
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge134
  %i.fq = load ptr, ptr @stderr, align 8
  %i.fr = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.fq, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %i.fo) #11 ; 0 uses
  %i.fs = load ptr, ptr @stderr, align 8
  %i.ft = call i32 @fflush(ptr noundef %i.fs)     ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge134, %bb.ap, %bb.n
  %.176 = phi i32 [ %i.bs, %bb.n ], [ %.075, %bb.ap ], [ %.075, %._crit_edge134 ]
  call fastcc void @vhost_net_disable_notifiers_nvhosts(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.j)
  br label %.loopexit111

.loopexit111:                                     ; preds = %bb.ak, %.preheader, %.loopexit, %bb.aq, %bb.b
  %.078 = phi i32 [ %.176, %bb.aq ], [ -38, %bb.b ], [ %.053.i.ph, %.loopexit ], [ 0, %.preheader ], [ 0, %bb.ak ]
  ret i32 %.078
}

declare ptr @qdev_get_parent_bus(ptr noundef) local_unnamed_addr #1

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

declare ptr @qemu_get_peer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @vhost_net_set_vring_enable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.pre8 = load ptr, ptr %0, align 8              ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.pre8, i64 200
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.b, null
  br i1 %.not7.i, label %get_vhost_net.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr %i.b(ptr noundef nonnull %0) #11, !inline_history !7
  %.pre = load ptr, ptr %0, align 8
  br label %get_vhost_net.exit

get_vhost_net.exit:                               ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %.pre8, %bb.a ]
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 13
  br i1 %i.f, label %vhost_dev_set_vring_enable.exit, label %bb.c

bb.c:                                             ; preds = %get_vhost_net.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 528
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i6 = icmp eq ptr %i.k, null
  br i1 %.not.i6, label %vhost_dev_set_vring_enable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 %i.k(ptr noundef nonnull %.0.i, i32 noundef %1) #11, !inline_history !25
  br label %vhost_dev_set_vring_enable.exit

vhost_dev_set_vring_enable.exit:                  ; preds = %bb.d, %bb.c, %get_vhost_net.exit
  %.0 = phi i32 [ 0, %get_vhost_net.exit ], [ %i.l, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vhost_net_stop_one(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.vhost_vring_file, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 -4294967296, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store i32 0, ptr %2, align 8
  %i.g = load i32, ptr %i.f, align 8
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.h = call i32 @vhost_net_set_backend(ptr noundef nonnull %0, ptr noundef nonnull %2) #11
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 400, ptr noundef nonnull @__PRETTY_FUNCTION__.vhost_net_stop_one) #14
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.j = load i32, ptr %2, align 8
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %2, align 8
  %i.l = load i32, ptr %i.f, align 8
  %i.m = icmp ult i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !26

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %.pre14 = load ptr, ptr %.pre, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.a
  %i.n = phi ptr [ %.pre14, %.loopexit.loopexit ], [ %i.c, %.preheader ], [ %i.c, %bb.a ]
  %i.o = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.b, %.preheader ], [ %i.b, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call void %i.q(ptr noundef nonnull %i.o, i1 noundef zeroext true) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.r = call i32 @vhost_dev_stop(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext false) #11 ; 0 uses
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.v, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.v(ptr noundef nonnull %i.s) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vhost_net_stop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #11
  %i.b = tail call ptr @qdev_get_parent_bus(ptr noundef %i.a) #11
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #11 ; 2 uses
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS) #11
  %i.e = tail call ptr @object_get_class(ptr noundef %i.d) #11
  %i.f = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS_GET_CLASS) #11
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 27, ptr noundef nonnull @__func__.VIRTIO_NET) #11
  %i.h = shl i32 %2, 1
  %i.i = add i32 %i.h, %3
  %i.j = add i32 %3, %2                           ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8988
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %get_vhost_net.exit
  %.030 = phi i32 [ 0, %.lr.ph ], [ %i.u, %get_vhost_net.exit ] ; 3 uses
  %i.m = icmp slt i32 %.030, %2
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr %i.l, align 4
  %i.o = zext i16 %i.n to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ %i.o, %bb.c ], [ %.030, %bb.b ]
  %i.p = tail call ptr @qemu_get_peer(ptr noundef %1, i32 noundef %.sink) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %get_vhost_net.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.s, null
  br i1 %.not7.i, label %get_vhost_net.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr %i.s(ptr noundef nonnull %i.p) #11, !inline_history !7
  br label %get_vhost_net.exit

get_vhost_net.exit:                               ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.t, %bb.f ], [ null, %bb.d ], [ null, %bb.e ]
  tail call fastcc void @vhost_net_stop_one(ptr noundef %.0.i, ptr noundef %0)
  %i.u = add nuw nsw i32 %.030, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !27
end_hunk_0
