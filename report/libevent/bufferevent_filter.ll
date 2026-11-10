Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/bufferevent_filter?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
begin_hunk_0_@bufferevent_filtered_outbuf_cb:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @bufferevent_init_generic_timeout_cbs_(ptr noundef) local_unnamed_addr #1

declare void @bufferevent_incref(ptr noundef) local_unnamed_addr #1

declare i32 @bufferevent_enable(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @bufferevent_suspend_read_(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @evbuffer_remove_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @event_warnx(ptr noundef, ...) local_unnamed_addr #1

declare void @bufferevent_free(ptr noundef) local_unnamed_addr #1

declare void @bufferevent_unsuspend_read_(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i32 @evbuffer_remove_cb_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @event_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @event_del(ptr noundef) local_unnamed_addr #1

declare void @bufferevent_incref_and_lock_(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @be_filter_process_output(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %.split.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 4
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 632
  %.val63 = load ptr, ptr %i.e, align 8           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val63, i64 312 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %be_underlying_writebuf_full.exit.thread, label %be_underlying_writebuf_full.exit

be_underlying_writebuf_full.exit:                 ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val63, i64 280
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i64 @evbuffer_get_length(ptr noundef %i.i) #3
  %i.k = load i64, ptr %i.f, align 8
  %.not77 = icmp ult i64 %i.j, %i.k
  br i1 %.not77, label %be_underlying_writebuf_full.exit.thread, label %bb.x

be_underlying_writebuf_full.exit.thread:          ; preds = %bb.c, %be_underlying_writebuf_full.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 @evbuffer_get_length(ptr noundef %i.m) #3
  %.not47 = icmp eq i64 %i.n, 0
  br i1 %.not47, label %bb.x, label %.split.us.us.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 10 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 @evbuffer_cb_clear_flags(ptr noundef %i.p, ptr noundef %i.r, i32 noundef 1) #3 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %.split

.split.us.us.preheader:                           ; preds = %be_underlying_writebuf_full.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 12 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 6 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 @evbuffer_cb_clear_flags(ptr noundef %i.z, ptr noundef %i.ab, i32 noundef 1) #3 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %.split.us.us

.split.us.us:                                     ; preds = %.split.us.us.backedge, %.split.us.us.preheader
  %i.ai = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 312
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %.not48.us.us.peel = icmp eq i64 %i.ak, 0
  br i1 %.not48.us.us.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.us.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i64 @evbuffer_get_length(ptr noundef %i.am) #3
  %i.ao = sub i64 %i.ak, %i.an
  %.pre = load ptr, ptr %i.ae, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.us.us
  %i.ap = phi ptr [ %.pre, %bb.d ], [ %i.ai, %.split.us.us ]
  %.0.us.us.peel = phi i64 [ %i.ao, %bb.d ], [ -1, %.split.us.us ]
  %i.aq = load ptr, ptr %i.af, align 8
  %i.ar = load ptr, ptr %i.y, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 280
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load ptr, ptr %i.ag, align 8
  %i.av = tail call i32 %i.aq(ptr noundef %i.ar, ptr noundef %i.at, i64 noundef %.0.us.us.peel, i32 noundef 0, ptr noundef %i.au) #3
  %.not114 = icmp eq i32 %i.av, 0
  br i1 %.not114, label %bb.f, label %.critedge61

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %2, align 4
  %i.aw = load i16, ptr %i.ad, align 8
  %i.ax = and i16 %i.aw, 4
  %.not49.us.us.peel = icmp eq i16 %i.ax, 0
  br i1 %.not49.us.us.peel, label %.critedge.thread.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.y, align 8
  %i.az = tail call i64 @evbuffer_get_length(ptr noundef %i.ay) #3
  %.not50.us.us.peel = icmp eq i64 %i.az, 0
  br i1 %.not50.us.us.peel, label %.critedge.thread.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val62.us.us.peel = load ptr, ptr %i.ae, align 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val62.us.us.peel, i64 312 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %.not.i64.us.us.peel = icmp eq i64 %i.bb, 0
  br i1 %.not.i64.us.us.peel, label %.backedge.us.us.peel.preheader, label %be_underlying_writebuf_full.exit65.us.us.peel

be_underlying_writebuf_full.exit65.us.us.peel:    ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.val62.us.us.peel, i64 280
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call i64 @evbuffer_get_length(ptr noundef %i.bd) #3
  %i.bf = load i64, ptr %i.ba, align 8
  %.not78.us.us.peel = icmp ult i64 %i.be, %i.bf
  br i1 %.not78.us.us.peel, label %.backedge.us.us.peel.preheader, label %.critedge.thread.us

.backedge.us.us.peel.preheader:                   ; preds = %be_underlying_writebuf_full.exit65.us.us.peel, %bb.h
  br label %.backedge.us.us.peel

.backedge.us.us.peel:                             ; preds = %.backedge.us.us.peel.backedge, %.backedge.us.us.peel.preheader
  %i.bg = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 312
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %.not48.us.us = icmp eq i64 %i.bi, 0
  br i1 %.not48.us.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.backedge.us.us.peel
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 280
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call i64 @evbuffer_get_length(ptr noundef %i.bk) #3
  %i.bm = sub i64 %i.bi, %i.bl
  %.pre107 = load ptr, ptr %i.ae, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.backedge.us.us.peel
  %i.bn = phi ptr [ %.pre107, %bb.i ], [ %i.bg, %.backedge.us.us.peel ]
  %.0.us.us = phi i64 [ %i.bm, %bb.i ], [ -1, %.backedge.us.us.peel ]
  %i.bo = load ptr, ptr %i.af, align 8
  %i.bp = load ptr, ptr %i.y, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 280
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.ag, align 8
  %i.bt = tail call i32 %i.bo(ptr noundef %i.bp, ptr noundef %i.br, i64 noundef %.0.us.us, i32 noundef 0, ptr noundef %i.bs) #3
  %i.bu = icmp eq i32 %i.bt, 0                    ; 5 uses
  br i1 %i.bu, label %bb.k, label %.critedge.thread.us

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %2, align 4
  %i.bv = load i16, ptr %i.ad, align 8
  %i.bw = and i16 %i.bv, 4
  %.not49.us.us = icmp eq i16 %i.bw, 0
  br i1 %.not49.us.us, label %.critedge.thread.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.y, align 8
  %i.by = tail call i64 @evbuffer_get_length(ptr noundef %i.bx) #3
  %.not50.us.us = icmp eq i64 %i.by, 0
  br i1 %.not50.us.us, label %.critedge.thread.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val62.us.us = load ptr, ptr %i.ae, align 8    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val62.us.us, i64 312 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %.not.i64.us.us = icmp eq i64 %i.ca, 0
  br i1 %.not.i64.us.us, label %.backedge.us.us.peel.backedge, label %be_underlying_writebuf_full.exit65.us.us

.backedge.us.us.peel.backedge:                    ; preds = %bb.m, %be_underlying_writebuf_full.exit65.us.us
  br label %.backedge.us.us.peel, !llvm.loop !5

be_underlying_writebuf_full.exit65.us.us:         ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %.val62.us.us, i64 280
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call i64 @evbuffer_get_length(ptr noundef %i.cc) #3
  %i.ce = load i64, ptr %i.bz, align 8
  %.not78.us.us = icmp ult i64 %i.cd, %i.ce
  br i1 %.not78.us.us, label %.backedge.us.us.peel.backedge, label %.critedge.thread.us

.critedge.thread.us:                              ; preds = %bb.k, %bb.l, %be_underlying_writebuf_full.exit65.us.us, %bb.j, %bb.f, %bb.g, %be_underlying_writebuf_full.exit65.us.us.peel
  %i.cf = phi i1 [ true, %bb.f ], [ true, %be_underlying_writebuf_full.exit65.us.us.peel ], [ true, %bb.g ], [ %i.bu, %bb.j ], [ %i.bu, %be_underlying_writebuf_full.exit65.us.us ], [ %i.bu, %bb.l ], [ %i.bu, %bb.k ]
  %i.cg = load ptr, ptr %i.y, align 8
  %i.ch = tail call i64 @evbuffer_get_length(ptr noundef %i.cg) #3
  %i.ci = load i64, ptr %i.ah, align 8
  %.not13.i.us = icmp ugt i64 %i.ch, %i.ci
  br i1 %.not13.i.us, label %bufferevent_trigger_nolock_.exit.us, label %bb.n

bb.n:                                             ; preds = %.critedge.thread.us
  tail call void @bufferevent_run_writecb_(ptr noundef nonnull %0, i32 noundef 0) #3
  br label %bufferevent_trigger_nolock_.exit.us

bufferevent_trigger_nolock_.exit.us:              ; preds = %bb.n, %.critedge.thread.us
  br i1 %i.cf, label %bb.o, label %.critedge61

bb.o:                                             ; preds = %bufferevent_trigger_nolock_.exit.us
  %i.cj = load i16, ptr %i.ad, align 8
  %i.ck = and i16 %i.cj, 4
  %.not53.us = icmp eq i16 %i.ck, 0
  br i1 %.not53.us, label %.critedge61, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr %i.y, align 8
  %i.cm = tail call i64 @evbuffer_get_length(ptr noundef %i.cl) #3
  %.not54.us = icmp eq i64 %i.cm, 0
  br i1 %.not54.us, label %.critedge61, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.us = load ptr, ptr %i.ae, align 8         ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.us, i64 312 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %.not.i66.us = icmp eq i64 %i.co, 0
  br i1 %.not.i66.us, label %.split.us.us.backedge, label %be_underlying_writebuf_full.exit67.us

be_underlying_writebuf_full.exit67.us:            ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.us, i64 280
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call i64 @evbuffer_get_length(ptr noundef %i.cq) #3
  %i.cs = load i64, ptr %i.cn, align 8
  %.not79.us = icmp ult i64 %i.cr, %i.cs
  %cond.fr.us = freeze i1 %.not79.us
  br i1 %cond.fr.us, label %.split.us.us.backedge, label %.critedge61

.split.us.us.backedge:                            ; preds = %be_underlying_writebuf_full.exit67.us, %bb.q
  br label %.split.us.us, !llvm.loop !6

.split:                                           ; preds = %.split.preheader, %be_underlying_writebuf_full.exit67.thread
  %i.ct = load ptr, ptr %i.v, align 8
  %i.cu = load ptr, ptr %i.o, align 8
  %i.cv = load ptr, ptr %i.u, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 280
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = load ptr, ptr %i.w, align 8
  %i.cz = tail call i32 %i.ct(ptr noundef %i.cu, ptr noundef %i.cx, i64 noundef -1, i32 noundef %1, ptr noundef %i.cy) #3
  %.not97 = icmp eq i32 %i.cz, 0
  br i1 %.not97, label %.lr.ph, label %.critedge61

bb.r:                                             ; preds = %.critedge80
  %i.da = load ptr, ptr %i.v, align 8
  %i.db = load ptr, ptr %i.o, align 8
  %i.dc = load ptr, ptr %i.u, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 280
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = load ptr, ptr %i.w, align 8
  %i.dg = tail call i32 %i.da(ptr noundef %i.db, ptr noundef %i.de, i64 noundef -1, i32 noundef %1, ptr noundef %i.df) #3
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph, label %.critedge.thread, !llvm.loop !7

.lr.ph:                                           ; preds = %.split, %bb.r
  store i32 1, ptr %2, align 4
  %i.di = load i16, ptr %i.t, align 8
  %i.dj = and i16 %i.di, 4
  %.not49 = icmp eq i16 %i.dj, 0
  br i1 %.not49, label %.critedge.thread, label %.critedge80

.critedge80:                                      ; preds = %.lr.ph
  %i.dk = load ptr, ptr %i.o, align 8
  %i.dl = tail call i64 @evbuffer_get_length(ptr noundef %i.dk) #3
  %.not50 = icmp eq i64 %i.dl, 0
  br i1 %.not50, label %.critedge.thread, label %bb.r

.critedge.thread:                                 ; preds = %.lr.ph, %.critedge80, %bb.r
  %i.dm = phi i1 [ false, %bb.r ], [ true, %.critedge80 ], [ true, %.lr.ph ]
  %i.dn = load ptr, ptr %i.o, align 8
  %i.do = tail call i64 @evbuffer_get_length(ptr noundef %i.dn) #3
  %i.dp = load i64, ptr %i.x, align 8
  %.not13.i = icmp ugt i64 %i.do, %i.dp
  br i1 %.not13.i, label %bufferevent_trigger_nolock_.exit, label %bb.s

bb.s:                                             ; preds = %.critedge.thread
  tail call void @bufferevent_run_writecb_(ptr noundef nonnull %0, i32 noundef 0) #3
  br label %bufferevent_trigger_nolock_.exit

bufferevent_trigger_nolock_.exit:                 ; preds = %.critedge.thread, %bb.s
  br i1 %i.dm, label %bb.t, label %.critedge61

bb.t:                                             ; preds = %bufferevent_trigger_nolock_.exit
  %i.dq = load i16, ptr %i.t, align 8
  %i.dr = and i16 %i.dq, 4
  %.not53 = icmp eq i16 %i.dr, 0
  br i1 %.not53, label %.critedge61, label %be_underlying_writebuf_full.exit67.thread

be_underlying_writebuf_full.exit67.thread:        ; preds = %bb.t
  %i.ds = load ptr, ptr %i.o, align 8
  %i.dt = tail call i64 @evbuffer_get_length(ptr noundef %i.ds) #3
  %.not54 = icmp eq i64 %i.dt, 0
  br i1 %.not54, label %.critedge61, label %.split, !llvm.loop !6

.critedge61:                                      ; preds = %.split, %bufferevent_trigger_nolock_.exit, %bb.t, %be_underlying_writebuf_full.exit67.thread, %bb.e, %bufferevent_trigger_nolock_.exit.us, %bb.o, %bb.p, %be_underlying_writebuf_full.exit67.us
  %i.du = phi ptr [ %i.aa, %bb.e ], [ %i.aa, %be_underlying_writebuf_full.exit67.us ], [ %i.aa, %bb.p ], [ %i.aa, %bb.o ], [ %i.aa, %bufferevent_trigger_nolock_.exit.us ], [ %i.q, %be_underlying_writebuf_full.exit67.thread ], [ %i.q, %bb.t ], [ %i.q, %bufferevent_trigger_nolock_.exit ], [ %i.q, %.split ]
  %i.dv = phi ptr [ %i.y, %bb.e ], [ %i.y, %be_underlying_writebuf_full.exit67.us ], [ %i.y, %bb.p ], [ %i.y, %bb.o ], [ %i.y, %bufferevent_trigger_nolock_.exit.us ], [ %i.o, %be_underlying_writebuf_full.exit67.thread ], [ %i.o, %bb.t ], [ %i.o, %bufferevent_trigger_nolock_.exit ], [ %i.o, %.split ]
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = load ptr, ptr %i.du, align 8
  %i.dy = tail call i32 @evbuffer_cb_set_flags(ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef 1) #3 ; 0 uses
  %i.dz = load i32, ptr %2, align 4
  %.not57 = icmp eq i32 %i.dz, 0
  br i1 %.not57, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.critedge61
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8
  %.not58 = icmp eq i64 %i.eb, 0
  br i1 %.not58, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ed = load i64, ptr %i.ec, align 8
  %.not59 = icmp eq i64 %i.ed, 0
  br i1 %.not59, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ef = tail call i32 @event_add(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ea) #3 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.critedge61, %bb.w, %bb.v, %bb.b, %be_underlying_writebuf_full.exit, %be_underlying_writebuf_full.exit.thread
  ret void
}

declare i32 @bufferevent_decref_and_unlock_(ptr noundef) local_unnamed_addr #1

declare i64 @evbuffer_get_length(ptr noundef) local_unnamed_addr #1

declare i32 @evbuffer_cb_set_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @bufferevent_run_readcb_(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @bufferevent_run_writecb_(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @be_filter_read_nolock_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %be_filter_process_input.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  br i1 %.not, label %be_filter_process_input.exit, label %.split13

.split13:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = load ptr, ptr %i.j, align 8
  %i.r = tail call i32 %i.l(ptr noundef %i.o, ptr noundef %i.p, i64 noundef -1, i32 noundef 2, ptr noundef %i.q) #3, !inline_history !9
  %.not24 = icmp eq i32 %i.r, 0
  br i1 %.not24, label %.lr.ph.i, label %be_filter_process_input.exit.thread

bb.c:                                             ; preds = %.critedge46.i
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = tail call i32 %i.s(ptr noundef %i.v, ptr noundef %i.w, i64 noundef -1, i32 noundef 2, ptr noundef %i.x) #3, !inline_history !9
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %.critedge.thread.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.split13, %bb.c
  %i.aa = load i16, ptr %i.k, align 8
  %i.ab = and i16 %i.aa, 2
  %.not33.i = icmp eq i16 %i.ab, 0
  br i1 %.not33.i, label %.critedge.thread.i, label %.critedge46.i

.critedge46.i:                                    ; preds = %.lr.ph.i
  %i.ac = load ptr, ptr %i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 @evbuffer_get_length(ptr noundef %i.ae) #3
  %.not34.i = icmp eq i64 %i.af, 0
  br i1 %.not34.i, label %.critedge.thread.i, label %bb.c

.critedge.thread.i:                               ; preds = %.lr.ph.i, %bb.c, %.critedge46.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %.not37.i = icmp eq i64 %i.ah, 0
  br i1 %.not37.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.thread.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.aj = load i64, ptr %i.ai, align 8
  %.not38.i = icmp eq i64 %i.aj, 0
  br i1 %.not38.i, label %be_filter_process_input.exit.thread25, label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = tail call i32 @event_add(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ag) #3 ; 0 uses
  br label %be_filter_process_input.exit.thread25

be_filter_process_input.exit:                     ; preds = %bb.b
  call fastcc void @be_filter_process_input(ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.a)
  %.pr.pre = load i32, ptr %i.a, align 4
  %i.am = icmp eq i32 %.pr.pre, 0
  br i1 %i.am, label %be_filter_process_input.exit.thread, label %be_filter_process_input.exit.thread25

be_filter_process_input.exit.thread25:            ; preds = %bb.d, %bb.e, %be_filter_process_input.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i64 @evbuffer_get_length(ptr noundef %i.ao) #3
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ar = load i64, ptr %i.aq, align 8
  %.not11.i = icmp ult i64 %i.ap, %i.ar
  br i1 %.not11.i, label %bufferevent_trigger_nolock_.exit, label %bb.f

bb.f:                                             ; preds = %be_filter_process_input.exit.thread25
  tail call void @bufferevent_run_readcb_(ptr noundef nonnull %1, i32 noundef 0) #3
  br label %bufferevent_trigger_nolock_.exit

bufferevent_trigger_nolock_.exit:                 ; preds = %be_filter_process_input.exit.thread25, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i64 @evbuffer_get_length(ptr noundef %i.at) #3
  %.not15 = icmp ne i64 %i.au, 0
  %or.cond = and i1 %.not, %.not15
  br i1 %or.cond, label %bb.g, label %be_filter_process_input.exit.thread

bb.g:                                             ; preds = %bufferevent_trigger_nolock_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %be_filter_process_input.exit.thread, label %be_readbuf_full.exit

be_readbuf_full.exit:                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.an, align 8
  %i.ay = tail call i64 @evbuffer_get_length(ptr noundef %i.ax) #3
  %i.az = load i64, ptr %i.av, align 8
  %.not20 = icmp ult i64 %i.ay, %i.az
  br i1 %.not20, label %be_filter_process_input.exit.thread, label %bb.h

bb.h:                                             ; preds = %be_readbuf_full.exit
  %i.ba = load ptr, ptr %i.an, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call i32 @evbuffer_cb_set_flags(ptr noundef %i.ba, ptr noundef %i.bc, i32 noundef 1) #3 ; 0 uses
  br label %be_filter_process_input.exit.thread

be_filter_process_input.exit.thread:              ; preds = %.split13, %bb.g, %be_filter_process_input.exit, %bb.h, %be_readbuf_full.exit, %bufferevent_trigger_nolock_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @be_filter_process_input(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %be_readbuf_full.exit.thread.split

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 2
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %be_readbuf_full.exit.thread.split.us.preheader, label %be_readbuf_full.exit

be_readbuf_full.exit:                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 @evbuffer_get_length(ptr noundef %i.h) #3
  %i.j = load i64, ptr %i.e, align 8
  %.not44 = icmp ult i64 %i.i, %i.j
  br i1 %.not44, label %be_readbuf_full.exit.thread.split.us.preheader, label %bb.l

be_readbuf_full.exit.thread.split.us.preheader:   ; preds = %bb.c, %be_readbuf_full.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.pre = load i64, ptr %i.k, align 8
  br label %be_readbuf_full.exit.thread.split.us

be_readbuf_full.exit.thread.split.us:             ; preds = %be_readbuf_full.exit.thread.split.us.backedge, %be_readbuf_full.exit.thread.split.us.preheader
  %i.q = phi i64 [ %.pre, %be_readbuf_full.exit.thread.split.us.preheader ], [ %.be, %be_readbuf_full.exit.thread.split.us.backedge ] ; 2 uses
  %.not32.us = icmp eq i64 %i.q, 0
  br i1 %.not32.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %be_readbuf_full.exit.thread.split.us
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = tail call i64 @evbuffer_get_length(ptr noundef %i.r) #3
  %i.t = sub i64 %i.q, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %be_readbuf_full.exit.thread.split.us
  %.0.us = phi i64 [ %i.t, %bb.d ], [ -1, %be_readbuf_full.exit.thread.split.us ]
  %i.u = load ptr, ptr %i.m, align 8
  %i.v = load ptr, ptr %i.n, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 272
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.l, align 8
  %i.z = load ptr, ptr %i.o, align 8
  %i.aa = tail call i32 %i.u(ptr noundef %i.x, ptr noundef %i.y, i64 noundef %.0.us, i32 noundef 0, ptr noundef %i.z) #3
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %2, align 4
  %i.ac = load i16, ptr %i.p, align 8
  %i.ad = and i16 %i.ac, 2
  %.not33.us = icmp eq i16 %i.ad, 0
  br i1 %.not33.us, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.n, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 272
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i64 @evbuffer_get_length(ptr noundef %i.ag) #3
  %.not34.us = icmp eq i64 %i.ah, 0
  br i1 %.not34.us, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.k, align 8
  %.not.i40.us = icmp eq i64 %i.ai, 0
  br i1 %.not.i40.us, label %be_readbuf_full.exit.thread.split.us.backedge, label %be_readbuf_full.exit41.us

be_readbuf_full.exit.thread.split.us.backedge:    ; preds = %bb.h, %be_readbuf_full.exit41.us
  %.be = phi i64 [ 0, %bb.h ], [ %i.al, %be_readbuf_full.exit41.us ]
  br label %be_readbuf_full.exit.thread.split.us, !llvm.loop !0

be_readbuf_full.exit41.us:                        ; preds = %bb.h
  %i.aj = load ptr, ptr %i.l, align 8
  %i.ak = tail call i64 @evbuffer_get_length(ptr noundef %i.aj) #3
  %i.al = load i64, ptr %i.k, align 8             ; 2 uses
  %.not45.us = icmp ult i64 %i.ak, %i.al
  br i1 %.not45.us, label %be_readbuf_full.exit.thread.split.us.backedge, label %.critedge

be_readbuf_full.exit.thread.split:                ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ar = load ptr, ptr %i.an, align 8
  %i.as = load ptr, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 272
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load ptr, ptr %i.am, align 8
  %i.aw = load ptr, ptr %i.ap, align 8
  %i.ax = tail call i32 %i.ar(ptr noundef %i.au, ptr noundef %i.av, i64 noundef -1, i32 noundef %1, ptr noundef %i.aw) #3
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %.critedge

bb.i:                                             ; preds = %.critedge46
  %i.az = load ptr, ptr %i.an, align 8
  %i.ba = load ptr, ptr %i.ao, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 272
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.am, align 8
  %i.be = load ptr, ptr %i.ap, align 8
  %i.bf = tail call i32 %i.az(ptr noundef %i.bc, ptr noundef %i.bd, i64 noundef -1, i32 noundef %1, ptr noundef %i.be) #3
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %.critedge, !llvm.loop !0

.lr.ph:                                           ; preds = %be_readbuf_full.exit.thread.split, %bb.i
  store i32 1, ptr %2, align 4
  %i.bh = load i16, ptr %i.aq, align 8
  %i.bi = and i16 %i.bh, 2
  %.not33 = icmp eq i16 %i.bi, 0
  br i1 %.not33, label %.critedge.thread, label %.critedge46

.critedge46:                                      ; preds = %.lr.ph
  %i.bj = load ptr, ptr %i.ao, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 272
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call i64 @evbuffer_get_length(ptr noundef %i.bl) #3
  %.not34 = icmp eq i64 %i.bm, 0
  br i1 %.not34, label %.critedge, label %bb.i

.critedge:                                        ; preds = %bb.i, %.critedge46, %bb.e, %bb.g, %be_readbuf_full.exit41.us, %be_readbuf_full.exit.thread.split
  %.pr = load i32, ptr %2, align 4
  %.not36 = icmp eq i32 %.pr, 0
  br i1 %.not36, label %bb.l, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph, %bb.f, %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %.not37 = icmp eq i64 %i.bo, 0
  br i1 %.not37, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bq = load i64, ptr %i.bp, align 8
  %.not38 = icmp eq i64 %i.bq, 0
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.thread
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = tail call i32 @event_add(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bn) #3 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k, %bb.j, %bb.b, %be_readbuf_full.exit
  ret void
}

declare void @bufferevent_run_eventcb_(ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #1

declare i32 @bufferevent_flush(ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4, !8}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = !{!"llvm.loop.peeled.count", i32 1}
!9 = distinct !{null}
end_hunk_0
