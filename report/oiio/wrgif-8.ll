inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@emit_header:bb.a
.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.071 = phi i32 [ %i.o, %bb.c ], [ 1, %.preheader ] ; 5 uses
  %i.m = shl nuw i32 1, %.071                     ; 3 uses
  %i.n = icmp sgt i32 %1, %i.m
  %i.o = add nuw nsw i32 %.071, 1
  br i1 %i.n, label %bb.c, label %bb.d, !llvm.loop !85

bb.d:                                             ; preds = %bb.c
  %..071 = tail call i32 @llvm.umax.i32(i32 %.071, i32 2) ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 33 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = tail call i32 @putc(i32 noundef 71, ptr noundef %i.q) ; 0 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.t = tail call i32 @putc(i32 noundef 73, ptr noundef %i.s) ; 0 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.v = tail call i32 @putc(i32 noundef 70, ptr noundef %i.u) ; 0 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.x = tail call i32 @putc(i32 noundef 56, ptr noundef %i.w) ; 0 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.z = tail call i32 @putc(i32 noundef 55, ptr noundef %i.y) ; 0 uses
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ab = tail call i32 @putc(i32 noundef 97, ptr noundef %i.aa) ; 0 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !57 ; 2 uses
  %i.af = and i32 %i.ae, 255
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ah = tail call i32 @putc(i32 noundef %i.af, ptr noundef %i.ag) ; 0 uses
  %i.ai = lshr i32 %i.ae, 8
  %i.aj = and i32 %i.ai, 255
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.al = tail call i32 @putc(i32 noundef %i.aj, ptr noundef %i.ak) ; 0 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 140
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !86 ; 2 uses
  %i.ap = and i32 %i.ao, 255
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ar = tail call i32 @putc(i32 noundef %i.ap, ptr noundef %i.aq) ; 0 uses
  %i.as = lshr i32 %i.ao, 8
  %i.at = and i32 %i.as, 255
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.av = tail call i32 @putc(i32 noundef %i.at, ptr noundef %i.au) ; 0 uses
  %i.aw = add nsw i32 %.071, -1                   ; 2 uses
  %i.ax = shl i32 %i.aw, 4
  %i.ay = or i32 %i.aw, %i.ax
  %i.az = or i32 %i.ay, 128
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.bb = tail call i32 @putc(i32 noundef %i.az, ptr noundef %i.ba) ; 0 uses
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.bd = tail call i32 @putc(i32 noundef 0, ptr noundef %i.bc) ; 0 uses
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.bf = tail call i32 @putc(i32 noundef 0, ptr noundef %i.be) ; 0 uses
  %.not77 = icmp eq i32 %.071, 31
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.bg = lshr i32 128, %i.e                      ; 4 uses
  %.not = icmp eq ptr %2, null
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = add nsw i32 %1, -1                      ; 2 uses
  %i.bk = sdiv i32 %i.bj, 2
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bl = sext i32 %1 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %smax82 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 1)
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.f
  %.076.us = phi i32 [ %i.bw, %bb.f ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.bm = icmp slt i32 %.076.us, %1
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.bn = mul nuw nsw i32 %.076.us, 255
  %i.bo = add nsw i32 %i.bn, %i.bk
  %i.bp = sdiv i32 %i.bo, %i.bj
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us, %bb.e
  %.sink92 = phi i32 [ %i.bp, %bb.e ], [ %i.bg, %.lr.ph.split.us ] ; 3 uses
  %i.bq = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.br = tail call i32 @putc(i32 noundef %.sink92, ptr noundef %i.bq) ; 0 uses
  %i.bs = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.bt = tail call i32 @putc(i32 noundef %.sink92, ptr noundef %i.bs) ; 0 uses
  %i.bu = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.bv = tail call i32 @putc(i32 noundef %.sink92, ptr noundef %i.bu) ; 0 uses
  %i.bw = add nuw nsw i32 %.076.us, 1             ; 2 uses
  %exitcond83.not = icmp eq i32 %i.bw, %smax82
  br i1 %exitcond83.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !87

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %i.bx = icmp slt i64 %indvars.iv, %i.bl
  br i1 %i.bx, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph.split
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !52
  %i.cb = icmp eq i32 %i.ca, 2
  %i.cc = load ptr, ptr %2, align 8, !tbaa !74
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !37
  %i.cf = zext i8 %i.ce to i32
  %i.cg = lshr i32 %i.cf, %i.e                    ; 3 uses
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ci = tail call i32 @putc(i32 noundef %i.cg, ptr noundef %i.ch) ; 0 uses
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cj = load ptr, ptr %i.bh, align 8, !tbaa !74
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !37
  %i.cm = zext i8 %i.cl to i32
  %i.cn = lshr i32 %i.cm, %i.e
  %i.co = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.cp = tail call i32 @putc(i32 noundef %i.cn, ptr noundef %i.co) ; 0 uses
  %i.cq = load ptr, ptr %i.bi, align 8, !tbaa !74
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !37
  %i.ct = zext i8 %i.cs to i32
  %i.cu = lshr i32 %i.ct, %i.e
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cv = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.cw = tail call i32 @putc(i32 noundef %i.cg, ptr noundef %i.cv) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.split
  %i.cx = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.cy = tail call i32 @putc(i32 noundef %i.bg, ptr noundef %i.cx) ; 0 uses
  %i.cz = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.da = tail call i32 @putc(i32 noundef %i.bg, ptr noundef %i.cz) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i
  %.sink94 = phi i32 [ %i.bg, %bb.j ], [ %i.cu, %bb.h ], [ %i.cg, %bb.i ]
  %i.db = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.dc = tail call i32 @putc(i32 noundef %.sink94, ptr noundef %i.db) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.k, %bb.f, %bb.d
  %i.dd = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.de = tail call i32 @putc(i32 noundef 44, ptr noundef %i.dd) ; 0 uses
  %i.df = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.dg = tail call i32 @putc(i32 noundef 0, ptr noundef %i.df) ; 0 uses
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.di = tail call i32 @putc(i32 noundef 0, ptr noundef %i.dh) ; 0 uses
  %i.dj = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.dk = tail call i32 @putc(i32 noundef 0, ptr noundef %i.dj) ; 0 uses
  %i.dl = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.dm = tail call i32 @putc(i32 noundef 0, ptr noundef %i.dl) ; 0 uses
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 136
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !57 ; 2 uses
  %i.dq = and i32 %i.dp, 255
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ds = tail call i32 @putc(i32 noundef %i.dq, ptr noundef %i.dr) ; 0 uses
  %i.dt = lshr i32 %i.dp, 8
  %i.du = and i32 %i.dt, 255
  %i.dv = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.dw = tail call i32 @putc(i32 noundef %i.du, ptr noundef %i.dv) ; 0 uses
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 140
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !86 ; 2 uses
  %i.ea = and i32 %i.dz, 255
  %i.eb = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ec = tail call i32 @putc(i32 noundef %i.ea, ptr noundef %i.eb) ; 0 uses
  %i.ed = lshr i32 %i.dz, 8
  %i.ee = and i32 %i.ed, 255
  %i.ef = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.eg = tail call i32 @putc(i32 noundef %i.ee, ptr noundef %i.ef) ; 0 uses
  %i.eh = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ei = tail call i32 @putc(i32 noundef 0, ptr noundef %i.eh) ; 0 uses
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ek = tail call i32 @putc(i32 noundef %..071, ptr noundef %i.ej) ; 0 uses
  %i.el = add nuw nsw i32 %..071, 1               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.el, ptr %i.em, align 8, !tbaa !78
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.el, ptr %i.en, align 8, !tbaa !79
  %notmask.i = shl nsw i32 -2, %..071
  %i.eo = trunc i32 %notmask.i to i16
  %i.ep = xor i16 %i.eo, -1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 %i.ep, ptr %i.eq, align 4, !tbaa !80
  %i.er = shl nuw i32 1, %..071
  %3 = trunc i32 %i.er to i16                     ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  store i16 %3, ptr %i.es, align 4, !tbaa !77
  %4 = add i16 %3, 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i16 %4, ptr %5, align 2, !tbaa !68
  %6 = add i16 %3, 2                              ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 %6, ptr %7, align 8, !tbaa !76
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i16 %6, ptr %8, align 2, !tbaa !83
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.et, align 8, !tbaa !66
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.eu, align 8, !tbaa !70
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.ev, align 4, !tbaa !71
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.ew, align 8, !tbaa !69
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !61 ; 2 uses
  %.not.i = icmp eq ptr %i.ey, null
  br i1 %.not.i, label %compress_init.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10006) %i.ey, i8 0, i64 10006, i1 false)
  %.pre.i = load i16, ptr %i.es, align 4, !tbaa !77
  br label %compress_init.exit

compress_init.exit:                               ; preds = %._crit_edge, %bb.l
  %i.ez = phi i16 [ %.pre.i, %bb.l ], [ %3, %._crit_edge ]
  tail call fastcc void @output(ptr noundef nonnull %0, i16 noundef signext %i.ez)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @output(ptr noundef captures(none) %0, i16 noundef signext %1) unnamed_addr #0 {
bb.a:
  %i.a = sext i16 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !71
  %i.h = trunc i64 %i.e to i32
  %i.i = or i32 %i.g, %i.h                        ; 2 uses
  store i32 %i.i, ptr %i.f, align 4, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !79
  %i.l = add nsw i32 %i.k, %i.c                   ; 2 uses
  store i32 %i.l, ptr %i.b, align 8, !tbaa !69
  %i.m = icmp sgt i32 %i.l, 7
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load i32, ptr %i.o, align 8, !tbaa !70
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.r = phi i32 [ %.pre, %.lr.ph ], [ %i.ak, %bb.e ]
  %i.s = phi i32 [ %i.i, %.lr.ph ], [ %i.am, %bb.e ]
  %i.t = trunc i32 %i.s to i8
  %i.u = add nsw i32 %i.r, 1                      ; 2 uses
  store i32 %i.u, ptr %i.o, align 8, !tbaa !70
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 %i.v
  store i8 %i.t, ptr %i.w, align 1, !tbaa !37
  %i.x = load i32, ptr %i.o, align 8, !tbaa !70   ; 4 uses
  %i.y = icmp sgt i32 %i.x, 254
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.z = add nuw nsw i32 %i.x, 1                  ; 2 uses
  store i32 %i.z, ptr %i.o, align 8, !tbaa !70
  %i.aa = trunc i32 %i.x to i8
  store i8 %i.aa, ptr %i.n, align 4, !tbaa !37
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ad = tail call i64 @fwrite(ptr noundef nonnull %i.n, i64 noundef 1, i64 noundef %i.ab, ptr noundef %i.ac)
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !70
  %i.af = sext i32 %i.ae to i64
  %.not.i = icmp eq i64 %i.ad, %i.af
  br i1 %.not.i, label %flush_packet.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !42  ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 38, ptr %i.ai, align 8, !tbaa !34
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !38
  tail call void %i.aj(ptr noundef nonnull %i.ag) #7, !inline_history !88
  br label %flush_packet.exit

flush_packet.exit:                                ; preds = %bb.c, %bb.d
  store i32 0, ptr %i.o, align 8, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %flush_packet.exit, %bb.b
  %i.ak = phi i32 [ 0, %flush_packet.exit ], [ %i.x, %bb.b ]
  %i.al = load i32, ptr %i.f, align 4, !tbaa !71
  %i.am = ashr i32 %i.al, 8                       ; 2 uses
  store i32 %i.am, ptr %i.f, align 4, !tbaa !71
  %i.an = load i32, ptr %i.b, align 8, !tbaa !69  ; 2 uses
  %i.ao = add nsw i32 %i.an, -8
  store i32 %i.ao, ptr %i.b, align 8, !tbaa !69
  %i.ap = icmp sgt i32 %i.an, 15
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.at = load i16, ptr %i.as, align 4, !tbaa !80
  %i.au = icmp sgt i16 %i.ar, %i.at
  br i1 %i.au, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %._crit_edge
  %i.av = load i32, ptr %i.j, align 8, !tbaa !79
  %i.aw = add nsw i32 %i.av, 1                    ; 3 uses
  store i32 %i.aw, ptr %i.j, align 8, !tbaa !79
  %i.ax = icmp eq i32 %i.aw, 12
  %notmask = shl nsw i32 -1, %i.aw
  %i.ay = trunc i32 %notmask to i16
  %i.az = xor i16 %i.ay, -1
  %.sink = select i1 %i.ax, i16 4096, i16 %i.az
  store i16 %.sink, ptr %i.as, align 4, !tbaa !80
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 296}
!9 = !{!"jpeg_decompress_struct", !10, i64 0, !12, i64 8, !13, i64 16, !11, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !15, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !16, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !18, i64 192, !6, i64 200, !6, i64 232, !6, i64 264, !5, i64 296, !11, i64 304, !5, i64 312, !5, i64 316, !5, i64 320, !6, i64 324, !6, i64 340, !6, i64 356, !5, i64 372, !5, i64 376, !6, i64 380, !6, i64 381, !6, i64 382, !19, i64 384, !19, i64 386, !5, i64 388, !6, i64 392, !5, i64 396, !20, i64 400, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !21, i64 432, !5, i64 440, !6, i64 448, !5, i64 480, !5, i64 484, !5, i64 488, !6, i64 492, !5, i64 532, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !18, i64 552, !5, i64 560, !5, i64 564, !22, i64 568, !23, i64 576, !24, i64 584, !25, i64 592, !26, i64 600, !27, i64 608, !28, i64 616, !29, i64 624, !30, i64 632, !31, i64 640, !32, i64 648}
!10 = !{!"p1 _ZTS14jpeg_error_mgr", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS15jpeg_memory_mgr", !11, i64 0}
!13 = !{!"p1 _ZTS17jpeg_progress_mgr", !11, i64 0}
!14 = !{!"p1 _ZTS15jpeg_source_mgr", !11, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!"p2 omnipotent char", !17, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"p1 int", !11, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!"p1 _ZTS18jpeg_marker_struct", !11, i64 0}
!21 = !{!"p1 omnipotent char", !11, i64 0}
!22 = !{!"p1 _ZTS18jpeg_decomp_master", !11, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_main_controller", !11, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_coef_controller", !11, i64 0}
!25 = !{!"p1 _ZTS22jpeg_d_post_controller", !11, i64 0}
!26 = !{!"p1 _ZTS21jpeg_input_controller", !11, i64 0}
!27 = !{!"p1 _ZTS18jpeg_marker_reader", !11, i64 0}
!28 = !{!"p1 _ZTS20jpeg_entropy_decoder", !11, i64 0}
!29 = !{!"p1 _ZTS16jpeg_inverse_dct", !11, i64 0}
!30 = !{!"p1 _ZTS14jpeg_upsampler", !11, i64 0}
!31 = !{!"p1 _ZTS22jpeg_color_deconverter", !11, i64 0}
!32 = !{!"p1 _ZTS20jpeg_color_quantizer", !11, i64 0}
!33 = !{!9, !10, i64 0}
!34 = !{!35, !5, i64 40}
!35 = !{!"jpeg_error_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !6, i64 44, !5, i64 124, !36, i64 128, !16, i64 136, !5, i64 144, !16, i64 152, !5, i64 160, !5, i64 164}
!36 = !{!"long", !6, i64 0}
!37 = !{!6, !6, i64 0}
!38 = !{!35, !11, i64 0}
!39 = !{!9, !12, i64 8}
end_hunk_0
