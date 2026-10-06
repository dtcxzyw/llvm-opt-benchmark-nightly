Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/desc?download=true
inline.NumInlined: 66
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@usb_desc_get_descriptor:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 3
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 4 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 6 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 7
  store i32 0, ptr %i.jn, align 1
  store i8 10, ptr %i.jq, align 1
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i8 32, ptr %i.jr, align 1
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 9
  store i8 0, ptr %i.js, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8
  %.not.i.i90 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i90, label %bb.al, label %.thread.i.i

bb.al:                                            ; preds = %bb.ak
  br i1 %.not.i88, label %.thread33.i.i, label %bb.am

.thread.i.i:                                      ; preds = %bb.ak
  store i8 1, ptr %i.jp, align 1
  %spec.select122 = select i1 %.not.i88, i8 10, i8 14
  br label %.thread32.i.i

bb.am:                                            ; preds = %bb.al
  store i8 2, ptr %i.jp, align 1
  br label %.thread32.i.i

.thread32.i.i:                                    ; preds = %.thread.i.i, %bb.am
  %i.jv = phi i8 [ %spec.select122, %.thread.i.i ], [ 12, %bb.am ]
  store i8 %i.jv, ptr %i.jo, align 1
  br label %bb.an

.thread33.i.i:                                    ; preds = %bb.al
  store i8 8, ptr %i.jo, align 1
  store i8 3, ptr %i.jp, align 1
  br label %bb.an

bb.an:                                            ; preds = %.thread33.i.i, %.thread32.i.i
  %i.jw = add nuw nsw i16 %.037.i, 10
  %i.jx = add nuw nsw i8 %.0.i89, 1
  br label %usb_desc_bos.exit

usb_desc_bos.exit:                                ; preds = %bb.aj, %bb.an
  %.138.i = phi i16 [ %i.jw, %bb.an ], [ %.037.i, %bb.aj ] ; 2 uses
  %.1.i = phi i8 [ %i.jx, %bb.an ], [ %.0.i89, %bb.aj ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %.138.i, ptr %i.jy, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 %.1.i, ptr %i.jz, align 1
  %i.ka = zext nneg i16 %.138.i to i32            ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.kc = load i8, ptr %i.kb, align 8
  %i.kd = zext i8 %i.kc to i32
  %i.ke = trunc i64 %4 to i32
  %i.kf = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i91 = icmp eq i32 %i.kf, 0
  br i1 %.not.i91, label %trace_usb_desc_device.exit.thread, label %bb.ao, !prof !11

bb.ao:                                            ; preds = %usb_desc_bos.exit
  %i.kg = load i16, ptr @_TRACE_USB_DESC_BOS_DSTATE, align 2
  %.not3.i92 = icmp eq i16 %i.kg, 0
  br i1 %.not3.i92, label %trace_usb_desc_device.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kh = load i32, ptr @qemu_loglevel, align 4
  %i.ki = and i32 %i.kh, 32768
  %.not4.i93 = icmp eq i32 %i.ki, 0
  br i1 %.not4.i93, label %trace_usb_desc_device.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef range(i32 0, 256) %i.kd, i32 noundef %i.ke, i32 noundef range(i32 -2147483648, 65536) %i.ka) #11
  br label %trace_usb_desc_device.exit.thread

bb.ar:                                            ; preds = %bb.a
  %i.kj = and i32 %i.e, 255
  %i.kk = load ptr, ptr @stderr, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.km = load i8, ptr %i.kl, align 8
  %i.kn = zext i8 %i.km to i32
  %i.ko = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.kk, i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.usb_desc_get_descriptor, i32 noundef %i.kn, i32 noundef %i.kj, i64 noundef %4) #11 ; 0 uses
  br label %trace_usb_desc_device.exit.thread104

trace_usb_desc_device.exit:                       ; preds = %bb.ag, %bb.af, %bb.ae, %._crit_edge114, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.u, %bb.t, %bb.s, %usb_desc_string.exit, %bb.m, %bb.l, %bb.k, %bb.j
  %.3 = phi i32 [ %.1, %bb.x ], [ %.1, %bb.y ], [ %.1, %bb.z ], [ %.0, %bb.m ], [ %.029.i, %bb.u ], [ %.1, %bb.aa ], [ %.2, %bb.ag ], [ %.2, %._crit_edge114 ], [ %.2, %bb.ae ], [ %.2, %bb.af ], [ %.0, %bb.j ], [ %.0, %bb.k ], [ %.0, %bb.l ], [ %.029.i, %usb_desc_string.exit ], [ %.029.i, %bb.s ], [ %.029.i, %bb.t ] ; 3 uses
  %i.kp = icmp sgt i32 %.3, 0
  br i1 %i.kp, label %trace_usb_desc_device.exit.thread, label %trace_usb_desc_device.exit.thread104

trace_usb_desc_device.exit.thread:                ; preds = %bb.aq, %bb.ap, %bb.ao, %usb_desc_bos.exit, %bb.f, %bb.e, %usb_desc_device.exit, %bb.g, %trace_usb_desc_device.exit
  %.3102 = phi i32 [ %.3, %trace_usb_desc_device.exit ], [ %i.ka, %bb.aq ], [ %i.ka, %bb.ap ], [ %i.ka, %bb.ao ], [ %i.ka, %usb_desc_bos.exit ], [ 18, %bb.f ], [ 18, %bb.e ], [ 18, %usb_desc_device.exit ], [ 18, %bb.g ]
  %i.kq = zext nneg i32 %.3102 to i64
  %spec.select74106 = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.kq) ; 2 uses
  %spec.select74 = trunc nuw nsw i64 %spec.select74106 to i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %i.d, i64 noundef %spec.select74106, i1 noundef false) #11
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %spec.select74, ptr %i.kr, align 8
  br label %trace_usb_desc_device.exit.thread104

trace_usb_desc_device.exit.thread104:             ; preds = %bb.a, %bb.ar, %trace_usb_desc_device.exit.thread, %trace_usb_desc_device.exit
  %.5 = phi i32 [ 0, %trace_usb_desc_device.exit.thread ], [ %.3, %trace_usb_desc_device.exit ], [ -1, %bb.ar ], [ -1, %bb.a ]
  tail call void @g_free(ptr noundef %i.d) #11
  ret i32 %.5
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #5

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @usb_desc_handle_control(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = tail call ptr @usb_device_get_usb_desc(ptr noundef %0) #11 ; 3 uses
  %.not87 = icmp eq ptr %i.d, null
  br i1 %.not87, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 715, ptr noundef nonnull @__PRETTY_FUNCTION__.usb_desc_handle_control) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i32 %2, label %trace_usb_set_addr.exit [
    i32 5, label %bb.d
    i32 32774, label %bb.h
    i32 32776, label %bb.i
    i32 9, label %bb.l
    i32 32768, label %bb.u
    i32 1, label %bb.z
    i32 3, label %bb.ag
    i32 48, label %bb.an
    i32 49, label %bb.an
    i32 33034, label %bb.ao
    i32 267, label %bb.ar
    i32 49233, label %bb.av
    i32 49489, label %bb.ba
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = trunc i32 %3 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.e, ptr %i.f, align 8
  %i.g = and i32 %3, 255
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %trace_usb_set_addr.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.i = load i16, ptr @_TRACE_USB_SET_ADDR_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.i, 0
  br i1 %.not1.i, label %trace_usb_set_addr.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %trace_usb_set_addr.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13, i32 noundef range(i32 0, 256) %i.g) #11
  br label %trace_usb_set_addr.exit

bb.h:                                             ; preds = %bb.c
  %i.l = sext i32 %5 to i64
  %i.m = tail call i32 @usb_desc_get_descriptor(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3, ptr noundef %6, i64 noundef %i.l)
  br label %trace_usb_set_addr.exit

bb.i:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5720
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not92 = icmp eq ptr %i.o, null
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = phi i8 [ %i.q, %bb.j ], [ 0, %bb.i ]
  store i8 %i.r, ptr %6, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 1, ptr %i.s, align 8
  br label %trace_usb_set_addr.exit

bb.l:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %3, 0
  br i1 %i.t, label %bb.m, label %.preheader34.i

.preheader34.i:                                   ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5640
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 6 ; 2 uses
  %i.x = load i8, ptr %i.w, align 2               ; 2 uses
  %.not.i93 = icmp eq i8 %i.x, 0
  br i1 %.not.i93, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader34.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5648
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5652
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5720
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5648
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5652
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5720
  store ptr null, ptr %i.ae, align 8
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.q, %.lr.ph.i
  %i.af = phi i8 [ %i.x, %.lr.ph.i ], [ %i.as, %bb.q ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 4 uses
  %7 = load ptr, ptr %i.y, align 8
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = icmp eq i32 %3, %i.aj
  br i1 %i.ak, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store i32 %3, ptr %i.z, align 8
  %i.al = load ptr, ptr %i.y, align 8
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.an = load i8, ptr %i.am, align 8             ; 2 uses
  %i.ao = zext i8 %i.an to i32
  store i32 %i.ao, ptr %i.aa, align 4
  %i.ap = load ptr, ptr %i.y, align 8
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %indvars.iv.i
  store ptr %i.aq, ptr %i.ab, align 8
  %i.ar = icmp ult i8 %i.an, 17
  br i1 %i.ar, label %._crit_edge45.i, label %bb.p

._crit_edge45.i:                                  ; preds = %bb.o
  %.pre.i.a = load i8, ptr %i.w, align 2
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 457, ptr noundef nonnull @__PRETTY_FUNCTION__.usb_desc_set_config) #12
  unreachable

bb.q:                                             ; preds = %._crit_edge45.i, %bb.n
  %i.as = phi i8 [ %.pre.i.a, %._crit_edge45.i ], [ %i.af, %bb.n ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next.i, %i.at
  br i1 %i.au, label %bb.n, label %.loopexit.i, !llvm.loop !29

.loopexit.i:                                      ; preds = %bb.q, %bb.m, %.preheader34.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 5652 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph37.i, label %.lr.ph39.i

.preheader.i:                                     ; preds = %.lr.ph37.i
  %i.ay = icmp samesign ult i32 %.136.i, 15
  br i1 %i.ay, label %.lr.ph39.i, label %usb_desc_set_config.exit

.lr.ph39.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %.1.lcssa49.i = phi i32 [ %i.bl, %.preheader.i ], [ 0, %.loopexit.i ] ; 2 uses
  %i.az = zext nneg i32 %.1.lcssa49.i to i64      ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba
  %scevgep.i = getelementptr i8, ptr %i.bb, i64 5656
  %i.bc = sub nuw nsw i32 15, %.1.lcssa49.i
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bf, i1 false)
  %i.bg = shl nuw nsw i64 %i.az, 3
  %i.bh = getelementptr i8, ptr %0, i64 %i.bg
  %scevgep41.i = getelementptr i8, ptr %i.bh, i64 5728
  %i.bi = shl nuw nsw i64 %i.bd, 3
  %i.bj = add nuw nsw i64 %i.bi, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep41.i, i8 0, i64 %i.bj, i1 false)
  br label %usb_desc_set_config.exit

.lr.ph37.i:                                       ; preds = %.loopexit.i, %.lr.ph37.i
  %.136.i = phi i32 [ %i.bl, %.lr.ph37.i ], [ 0, %.loopexit.i ] ; 3 uses
  %i.bk = tail call fastcc i32 @usb_desc_set_interface(ptr noundef nonnull %0, i32 noundef %.136.i, i32 noundef 0) ; 0 uses
  %i.bl = add nuw nsw i32 %.136.i, 1              ; 3 uses
  %i.bm = load i32, ptr %i.av, align 4
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph37.i, label %.preheader.i, !llvm.loop !30

usb_desc_set_config.exit:                         ; preds = %.preheader.i, %.lr.ph39.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bp = load i8, ptr %i.bo, align 8
  %i.bq = zext i8 %i.bp to i32
  %i.br = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i94 = icmp eq i32 %i.br, 0
  br i1 %.not.i94, label %trace_usb_set_addr.exit, label %bb.r, !prof !11

bb.r:                                             ; preds = %usb_desc_set_config.exit
  %i.bs = load i16, ptr @_TRACE_USB_SET_CONFIG_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.bs, 0
  br i1 %.not3.i, label %trace_usb_set_addr.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = load i32, ptr @qemu_loglevel, align 4
  %i.bu = and i32 %i.bt, 32768
  %.not4.i = icmp eq i32 %i.bu, 0
  br i1 %.not4.i, label %trace_usb_set_addr.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, i32 noundef range(i32 0, 256) %i.bq, i32 noundef %3, i32 noundef 0) #11
  br label %trace_usb_set_addr.exit

bb.u:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5720
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not89 = icmp eq ptr %i.bw, null
  br i1 %.not89, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5640
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cb = phi ptr [ %i.ca, %bb.v ], [ %i.bw, %bb.u ]
  store i8 0, ptr %6, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = lshr i8 %i.cd, 6                        ; 2 uses
  %.lobit = and i8 %i.ce, 1
  store i8 %.lobit, ptr %6, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %i.cg = load i32, ptr %i.cf, align 8
  %.not91 = icmp eq i32 %i.cg, 0
  br i1 %.not91, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = or i8 %i.ce, 2
  store i8 %i.ch, ptr %6, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 0, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 2, ptr %i.cj, align 8
  br label %trace_usb_set_addr.exit

bb.z:                                             ; preds = %bb.c
  %i.ck = icmp eq i32 %3, 1
  br i1 %i.ck, label %.split77, label %.split

.split:                                           ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cm = load i8, ptr %i.cl, align 8
  %i.cn = zext i8 %i.cm to i32
  %i.co = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i95 = icmp eq i32 %i.co, 0
  br i1 %.not.i95, label %trace_usb_set_addr.exit, label %bb.aa, !prof !11

bb.aa:                                            ; preds = %.split
  %i.cp = load i16, ptr @_TRACE_USB_CLEAR_DEVICE_FEATURE_DSTATE, align 2
  %.not3.i96 = icmp eq i16 %i.cp, 0
  br i1 %.not3.i96, label %trace_usb_set_addr.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = load i32, ptr @qemu_loglevel, align 4
  %i.cr = and i32 %i.cq, 32768
  %.not4.i97 = icmp eq i32 %i.cr, 0
  br i1 %.not4.i97, label %trace_usb_set_addr.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16, i32 noundef range(i32 0, 256) %i.cn, i32 noundef %3, i32 noundef -1) #11
  br label %trace_usb_set_addr.exit

.split77:                                         ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4368
  store i32 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cu = load i8, ptr %i.ct, align 8
  %i.cv = zext i8 %i.cu to i32
  %i.cw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i98 = icmp eq i32 %i.cw, 0
  br i1 %.not.i98, label %trace_usb_set_addr.exit, label %bb.ad, !prof !11

bb.ad:                                            ; preds = %.split77
  %i.cx = load i16, ptr @_TRACE_USB_CLEAR_DEVICE_FEATURE_DSTATE, align 2
  %.not3.i99 = icmp eq i16 %i.cx, 0
  br i1 %.not3.i99, label %trace_usb_set_addr.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = load i32, ptr @qemu_loglevel, align 4
  %i.cz = and i32 %i.cy, 32768
  %.not4.i100 = icmp eq i32 %i.cz, 0
  br i1 %.not4.i100, label %trace_usb_set_addr.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16, i32 noundef range(i32 0, 256) %i.cv, i32 noundef 1, i32 noundef 0) #11
  br label %trace_usb_set_addr.exit

bb.ag:                                            ; preds = %bb.c
  %i.da = icmp eq i32 %3, 1
  br i1 %i.da, label %.split80, label %.split78

.split78:                                         ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dc = load i8, ptr %i.db, align 8
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i102 = icmp eq i32 %i.de, 0
  br i1 %.not.i102, label %trace_usb_set_addr.exit, label %bb.ah, !prof !11

bb.ah:                                            ; preds = %.split78
  %i.df = load i16, ptr @_TRACE_USB_SET_DEVICE_FEATURE_DSTATE, align 2
  %.not3.i103 = icmp eq i16 %i.df, 0
  br i1 %.not3.i103, label %trace_usb_set_addr.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = load i32, ptr @qemu_loglevel, align 4
  %i.dh = and i32 %i.dg, 32768
  %.not4.i104 = icmp eq i32 %i.dh, 0
  br i1 %.not4.i104, label %trace_usb_set_addr.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.17, i32 noundef range(i32 0, 256) %i.dd, i32 noundef %3, i32 noundef -1) #11
  br label %trace_usb_set_addr.exit

.split80:                                         ; preds = %bb.ag
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4368
  store i32 1, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dk = load i8, ptr %i.dj, align 8
  %i.dl = zext i8 %i.dk to i32
  %i.dm = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i105 = icmp eq i32 %i.dm, 0
  br i1 %.not.i105, label %trace_usb_set_addr.exit, label %bb.ak, !prof !11

bb.ak:                                            ; preds = %.split80
  %i.dn = load i16, ptr @_TRACE_USB_SET_DEVICE_FEATURE_DSTATE, align 2
  %.not3.i106 = icmp eq i16 %i.dn, 0
  br i1 %.not3.i106, label %trace_usb_set_addr.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.do = load i32, ptr @qemu_loglevel, align 4
  %i.dp = and i32 %i.do, 32768
end_hunk_0
