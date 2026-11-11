Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/transport?download=true
inline.NumInlined: 112
inline.NumDeleted: 23
begin_hunk_0_@usb_stor_Bulk_transport:bb.a
  %i.dy = load i32, ptr %i.r, align 8
  %i.dz = icmp eq i32 %i.dx, %i.dy
  br i1 %i.dz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = load i64, ptr %i.h, align 8
  %i.eb = and i64 %i.ea, 16384
  %.not120 = icmp eq i64 %i.eb, 0
  br i1 %.not120, label %.thread138, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ec = load i8, ptr %i.q, align 4
  %i.ed = icmp ugt i8 %i.ec, 2
  br i1 %i.ed, label %.thread138, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ee = getelementptr i8, ptr %1, i64 104       ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8            ; 2 uses
  %.not121 = icmp eq i32 %i.ef, 0
  %i.eg = load i32, ptr %i.f, align 4             ; 2 uses
  br i1 %.not121, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.eg, ptr %i.ee, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %.not122 = icmp eq i32 %i.eg, %i.ef
  br i1 %.not122, label %bb.x, label %.thread138

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not123 = icmp eq i32 %i.dw, 0
  br i1 %.not123, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ei = and i64 %i.eh, 32
  %.not124 = icmp eq i64 %i.ei, 0
  br i1 %.not124, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.ej = load i8, ptr %i.q, align 4
  %i.ek = icmp eq i8 %i.ej, 0
  %i.el = getelementptr i8, ptr %0, i64 240
  %.val127 = load i32, ptr %i.el, align 8         ; 2 uses
  %i.em = icmp eq i32 %.val127, 0
  %or.cond145 = select i1 %i.ek, i1 %i.em, i1 false
  br i1 %or.cond145, label %bb.aa, label %._crit_edge

bb.aa:                                            ; preds = %bb.z
  %i.en = load i8, ptr %i.ao, align 4             ; 2 uses
  %i.eo = icmp eq i8 %i.en, 18
  %i.ep = icmp eq i32 %.val, 36
  %or.cond3 = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eq = icmp eq i8 %i.en, 37
  %i.er = icmp eq i32 %.val, 8
  %or.cond5 = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond5, label %bb.ac, label %._crit_edge

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.es = or disjoint i64 %i.eh, 32
  store i64 %i.es, ptr %i.h, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.z, %bb.ab
  %.val126 = phi i32 [ %.val127, %bb.z ], [ 0, %bb.ab ]
  %i.et = call i32 @llvm.umin.i32(i32 %i.dw, i32 %.val)
  %i.eu = getelementptr i8, ptr %0, i64 240
  %i.ev = call i32 @llvm.umax.i32(i32 %.val126, i32 %i.et)
  store i32 %i.ev, ptr %i.eu, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge, %bb.y, %bb.x
  %i.ew = load i8, ptr %i.q, align 4
  switch i8 %i.ew, label %bb.ag [
    i8 0, label %bb.ae
    i8 1, label %.thread138
  ]

bb.ae:                                            ; preds = %bb.ad
  %.not125 = icmp eq i32 %.3, 0
  br i1 %.not125, label %.thread138, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ex = getelementptr i8, ptr %0, i64 248
  %i.ey = load ptr, ptr %i.ex, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(18) %i.ey, ptr noundef align 16 dereferenceable(18) @usb_stor_sense_invalidCDB, i64 18, i1 false)
  br label %.thread138

bb.ag:                                            ; preds = %bb.ad
  br label %.thread138

.thread138:                                       ; preds = %bb.i, %bb.ad, %bb.ae, %bb.w, %bb.t, %bb.s, %bb.q, %bb.e, %bb.ag, %bb.af
  %.1 = phi i32 [ 1, %bb.ad ], [ 3, %bb.s ], [ 3, %bb.e ], [ 3, %bb.q ], [ 3, %bb.t ], [ 3, %bb.ag ], [ 2, %bb.af ], [ 3, %bb.w ], [ 0, %bb.ae ], [ 3, %bb.i ]
  ret i32 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_stor_access_xfer_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @usb_stor_CB_reset(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 296        ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(12) %i.b, i8 -1, i64 12, i1 false)
  %i.c = load ptr, ptr %i.a, align 8
  store i8 29, ptr %i.c, align 1
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 1
  store i8 4, ptr %i.e, align 1
  %i.f = getelementptr i8, ptr %0, i64 111
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i16
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = tail call fastcc i32 @usb_stor_reset_common(ptr noundef %0, i8 noundef zeroext 0, i16 noundef zeroext %i.h, ptr noundef %i.i, i16 noundef zeroext 12) #7
  ret i32 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @usb_stor_reset_common(ptr noundef %0, i8 noundef zeroext range(i8 -1, 1) %1, i16 noundef zeroext range(i16 0, 256) %2, ptr noundef %3, i16 noundef zeroext range(i16 0, 13) %4) unnamed_addr #0 align 16 {
bb.a:
  %5 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 56         ; 5 uses
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 8
  %.not120 = icmp eq i64 %i.c, 0
  br i1 %.not120, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 200        ; 18 uses
  %i.g = load ptr, ptr %i.f, align 8
  store i8 33, ptr %i.g, align 1
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 1
  store i8 %1, ptr %i.i, align 1
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 2
  store i16 0, ptr %i.k, align 1
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 4
  store i16 %2, ptr %i.m, align 1
  %i.n = load ptr, ptr %i.f, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 6
  store i16 %4, ptr %i.o, align 1
  %i.p = getelementptr i8, ptr %0, i64 192        ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 7 uses
  %i.r = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = zext nneg i16 %4 to i32
  %i.v = getelementptr i8, ptr %i.q, i64 64
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.q, i64 80
  store i32 %i.e, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.q, i64 144
  store ptr %i.t, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.q, i64 96
  store ptr %3, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.q, i64 136
  store i32 %i.u, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.q, i64 184
  store ptr @usb_stor_blocking_completion, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.q, i64 176
  store ptr null, ptr %i.ab, align 8
  %i.ac = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 5000) #7, !srcloc !10 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %usb_stor_control_msg.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr %i.p, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 140
  %i.ag = load i32, ptr %i.af, align 4
  br label %usb_stor_control_msg.exit

usb_stor_control_msg.exit:                        ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.ag, %bb.c ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ah = icmp slt i32 %.0.i, 0
  br i1 %i.ah, label %bb.o, label %bb.d

bb.d:                                             ; preds = %usb_stor_control_msg.exit
  %i.ai = tail call i32 @__SCT__might_resched() #8 ; 0 uses
  %i.aj = load volatile i64, ptr %i.a, align 8
  %i.ak = and i64 %i.aj, 8
  %.not122 = icmp eq i64 %i.ak, 0
  br i1 %.not122, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !11
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #8
  %i.al = getelementptr i8, ptr %0, i64 384       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.098 = phi i64 [ 6000, %bb.e ], [ %spec.store.select29, %bb.h ] ; 2 uses
  %i.am = call i64 @prepare_to_wait_event(ptr noundef %i.al, ptr noundef nonnull %5, i32 noundef 1) #8
  %i.an = load volatile i64, ptr %i.a, align 8
  %.in103.in = and i64 %i.an, 8
  %.in103 = icmp ne i64 %.in103.in, 0             ; 2 uses
  %.in103.not = icmp eq i64 %.098, 0              ; 2 uses
  %or.cond16.not = select i1 %.in103, i1 %.in103.not, i1 false
  %spec.store.select28 = select i1 %or.cond16.not, i64 1, i64 %.098
  %spec.select = select i1 %.in103, i1 true, i1 %.in103.not
  br i1 %spec.select, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not104 = icmp eq i64 %i.am, 0
  br i1 %.not104, label %bb.h, label %.thread117

bb.h:                                             ; preds = %bb.g
  %i.ao = call i64 @schedule_timeout(i64 noundef %spec.store.select28) #8 ; 2 uses
  %i.ap = load volatile i64, ptr %i.a, align 8
  %.in105.in = and i64 %i.ap, 8
  %.in105 = icmp ne i64 %.in105.in, 0             ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0                    ; 2 uses
  %or.cond23.not = select i1 %.in105, i1 %i.aq, i1 false
  %spec.store.select29 = select i1 %or.cond23.not, i64 1, i64 %i.ao
  %spec.select108 = select i1 %.in105, i1 true, i1 %i.aq
  br i1 %spec.select108, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.h, %bb.f
  call void @finish_wait(ptr noundef %i.al, ptr noundef nonnull %5) #8
  br label %.thread117

.thread117:                                       ; preds = %bb.g, %select.unfold
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %.thread117
  %i.ar = load volatile i64, ptr %i.a, align 8
  %i.as = and i64 %i.ar, 8
  %.not124 = icmp eq i64 %i.as, 0
  br i1 %.not124, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr i8, ptr %0, i64 68
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = lshr i32 %i.au, 15
  %i.aw = and i32 %i.av, 15
  %i.ax = and i32 %i.au, 128
  %spec.select.i = or disjoint i32 %i.aw, %i.ax   ; 2 uses
  %i.ay = load i32, ptr %i.d, align 8
  %i.az = trunc nuw nsw i32 %spec.select.i to i16
  %i.ba = load ptr, ptr %i.f, align 8
  store i8 2, ptr %i.ba, align 1
  %i.bb = load ptr, ptr %i.f, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 1, ptr %i.bc, align 1
  %i.bd = load ptr, ptr %i.f, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 2
  store i16 0, ptr %i.be, align 1
  %i.bf = load ptr, ptr %i.f, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  store i16 %i.az, ptr %i.bg, align 1
  %i.bh = load ptr, ptr %i.f, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 6
  store i16 0, ptr %i.bi, align 1
  %i.bj = load ptr, ptr %i.p, align 8             ; 7 uses
  %i.bk = load ptr, ptr %i.r, align 8
  %i.bl = load ptr, ptr %i.f, align 8
  %i.bm = getelementptr i8, ptr %i.bj, i64 64
  store ptr %i.bk, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.bj, i64 80
  store i32 %i.ay, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %i.bj, i64 144
  store ptr %i.bl, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %i.bj, i64 96
  store ptr null, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %i.bj, i64 136
  store i32 0, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %i.bj, i64 184
  store ptr @usb_stor_blocking_completion, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %i.bj, i64 176
  store ptr null, ptr %i.bs, align 8
  %i.bt = call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 3000) #7, !srcloc !10 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.k, label %usb_stor_control_msg.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.p, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 140
  %i.bx = load i32, ptr %i.bw, align 4
  br label %usb_stor_control_msg.exit.i

usb_stor_control_msg.exit.i:                      ; preds = %bb.k, %bb.j
  %.0.i.i = phi i32 [ %i.bx, %bb.k ], [ %i.bt, %bb.j ] ; 2 uses
  %i.by = icmp sgt i32 %.0.i.i, -1                ; 2 uses
  br i1 %i.by, label %bb.l, label %usb_stor_clear_halt.exit

bb.l:                                             ; preds = %usb_stor_control_msg.exit.i
  %i.bz = load ptr, ptr %i.r, align 8
  call void @usb_reset_endpoint(ptr noundef %i.bz, i32 noundef %spec.select.i) #8
  br label %usb_stor_clear_halt.exit

usb_stor_clear_halt.exit:                         ; preds = %usb_stor_control_msg.exit.i, %bb.l
  %i.ca = getelementptr i8, ptr %0, i64 64
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.cc = lshr i32 %i.cb, 15
  %i.cd = and i32 %i.cc, 15
  %i.ce = and i32 %i.cb, 128
  %spec.select.i111 = or disjoint i32 %i.cd, %i.ce ; 2 uses
  %i.cf = load i32, ptr %i.d, align 8
  %i.cg = trunc nuw nsw i32 %spec.select.i111 to i16
  %i.ch = load ptr, ptr %i.f, align 8
  store i8 2, ptr %i.ch, align 1
  %i.ci = load ptr, ptr %i.f, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 1
  store i8 1, ptr %i.cj, align 1
  %i.ck = load ptr, ptr %i.f, align 8
  %i.cl = getelementptr i8, ptr %i.ck, i64 2
  store i16 0, ptr %i.cl, align 1
  %i.cm = load ptr, ptr %i.f, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 4
  store i16 %i.cg, ptr %i.cn, align 1
  %i.co = load ptr, ptr %i.f, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 6
  store i16 0, ptr %i.cp, align 1
  %i.cq = load ptr, ptr %i.p, align 8             ; 7 uses
  %i.cr = load ptr, ptr %i.r, align 8
  %i.cs = load ptr, ptr %i.f, align 8
  %i.ct = getelementptr i8, ptr %i.cq, i64 64
  store ptr %i.cr, ptr %i.ct, align 8
  %i.cu = getelementptr i8, ptr %i.cq, i64 80
  store i32 %i.cf, ptr %i.cu, align 8
  %i.cv = getelementptr i8, ptr %i.cq, i64 144
  store ptr %i.cs, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %i.cq, i64 96
  store ptr null, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %i.cq, i64 136
  store i32 0, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %i.cq, i64 184
  store ptr @usb_stor_blocking_completion, ptr %i.cy, align 8
  %i.cz = getelementptr i8, ptr %i.cq, i64 176
  store ptr null, ptr %i.cz, align 8
  %i.da = call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 3000) #7, !srcloc !10 ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.m, label %usb_stor_control_msg.exit.i112

bb.m:                                             ; preds = %usb_stor_clear_halt.exit
  %i.dc = load ptr, ptr %i.p, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 140
  %i.de = load i32, ptr %i.dd, align 4
  br label %usb_stor_control_msg.exit.i112

usb_stor_control_msg.exit.i112:                   ; preds = %bb.m, %usb_stor_clear_halt.exit
  %.0.i.i113 = phi i32 [ %i.de, %bb.m ], [ %i.da, %usb_stor_clear_halt.exit ] ; 2 uses
  %i.df = icmp sgt i32 %.0.i.i113, -1
  br i1 %i.df, label %bb.n, label %usb_stor_clear_halt.exit114

bb.n:                                             ; preds = %usb_stor_control_msg.exit.i112
  %i.dg = load ptr, ptr %i.r, align 8
  call void @usb_reset_endpoint(ptr noundef %i.dg, i32 noundef %spec.select.i111) #8
  br label %usb_stor_clear_halt.exit114

usb_stor_clear_halt.exit114:                      ; preds = %usb_stor_control_msg.exit.i112, %bb.n
  %spec.select109 = select i1 %i.by, i32 %.0.i.i113, i32 %.0.i.i
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %usb_stor_control_msg.exit, %bb.a, %usb_stor_clear_halt.exit114
  %.0 = phi i32 [ %spec.select109, %usb_stor_clear_halt.exit114 ], [ -5, %bb.a ], [ %.0.i, %usb_stor_control_msg.exit ], [ -5, %bb.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @usb_stor_Bulk_reset(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 111
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i16
  %i.d = tail call fastcc i32 @usb_stor_reset_common(ptr noundef %0, i8 noundef zeroext -1, i16 noundef zeroext %i.c, ptr noundef null, i16 noundef zeroext 0) #7
  ret i32 %i.d
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_lock_device_for_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @wait_for_completion_interruptible_timeout(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_sg_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_sg_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

end_hunk_0
