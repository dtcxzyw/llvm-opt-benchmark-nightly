Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unzip?download=true
inline.NumInlined: 28
inline.NumDeleted: 10
begin_hunk_0_@zdecrypt:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99   ; 2 uses
  %i.r = icmp ne ptr %i.o, null
  %i.s = icmp ne ptr %i.q, null                   ; 2 uses
  %i.t = select i1 %i.r, i1 true, i1 %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 14 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.ah
  %i.aa = phi i1 [ %i.s, %.lr.ph ], [ %i.fr, %bb.ah ] ; 2 uses
  %.011725 = phi ptr [ %i.q, %.lr.ph ], [ %.1118, %bb.ah ] ; 2 uses
  %.011924 = phi ptr [ %i.o, %.lr.ph ], [ %.1120, %bb.ah ] ; 3 uses
  %i.ab = select i1 %i.aa, ptr %.011725, ptr %.011924 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !101
  %.not.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i, label %zinitkey.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %i.af = phi i64 [ 3416885103, %.lr.ph.i ], [ %i.av, %bb.h ]
  %.sroa.9.0 = phi i32 [ 591751049, %.lr.ph.i ], [ %i.ar, %bb.h ]
  %i.ag = phi i64 [ 3989547399, %.lr.ph.i ], [ %i.al, %bb.h ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !102
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i8 %i.aj, ptr %i.c, align 1, !tbaa !35
  %i.ak = and i64 %i.ag, 4294967295
  %i.al = call i64 @crc32(i64 noundef %i.ak, ptr noundef nonnull %i.c, i32 noundef 1) #13 ; 3 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 255
  %i.ao = xor i32 %i.an, 255
  %i.ap = add i32 %i.ao, %.sroa.9.0
  %i.aq = mul i32 %i.ap, 134775813
  %i.ar = add i32 %i.aq, 1                        ; 3 uses
  %i.as = lshr i32 %i.ar, 24
  %i.at = trunc nuw i32 %i.as to i8
  store i8 %i.at, ptr %i.c, align 1, !tbaa !35
  %i.au = and i64 %i.af, 4294967295
  %i.av = call i64 @crc32(i64 noundef %i.au, ptr noundef nonnull %i.c, i32 noundef 1) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aw = load i16, ptr %i.ac, align 8, !tbaa !101
  %i.ax = zext i16 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next.i, %i.ax
  br i1 %i.ay, label %bb.h, label %zinitkey.exit.loopexit

zinitkey.exit.loopexit:                           ; preds = %bb.h
  %i.az = trunc i64 %i.av to i32
  %i.ba = xor i32 %i.az, -1
  br label %zinitkey.exit

zinitkey.exit:                                    ; preds = %zinitkey.exit.loopexit, %bb.g
  %.sroa.16.1 = phi i32 [ 878082192, %bb.g ], [ %i.ba, %zinitkey.exit.loopexit ]
  %.sroa.9.1 = phi i32 [ 591751049, %bb.g ], [ %i.ar, %zinitkey.exit.loopexit ]
  %i.bb = phi i64 [ 3989547399, %bb.g ], [ %i.al, %zinitkey.exit.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef nonnull align 1 dereferenceable(12) %0, i64 12, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %zinitkey.exit, %bb.i
  %indvars.iv = phi i64 [ 0, %zinitkey.exit ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.sroa.0.222 = phi i64 [ %i.bb, %zinitkey.exit ], [ %i.bm, %bb.i ]
  %.sroa.9.221 = phi i32 [ %.sroa.9.1, %zinitkey.exit ], [ %i.bs, %bb.i ]
  %.sroa.16.220 = phi i32 [ %.sroa.16.1, %zinitkey.exit ], [ %i.bz, %bb.i ] ; 3 uses
  %i.bc = and i32 %.sroa.16.220, 65533
  %i.bd = or i32 %.sroa.16.220, 2
  %i.be = xor i32 %i.bc, 3
  %i.bf = mul i32 %i.be, %i.bd
  %i.bg = lshr i32 %i.bf, 8
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  %i.bk = xor i8 %i.bj, %i.bh                     ; 2 uses
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i8 %i.bk, ptr %i.b, align 1, !tbaa !35
  %i.bl = and i64 %.sroa.0.222, 4294967295
  %i.bm = call i64 @crc32(i64 noundef %i.bl, ptr noundef nonnull %i.b, i32 noundef 1) #13 ; 3 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 255
  %i.bp = xor i32 %i.bo, 255
  %i.bq = add i32 %i.bp, %.sroa.9.221
  %i.br = mul i32 %i.bq, 134775813
  %i.bs = add i32 %i.br, 1                        ; 3 uses
  %i.bt = lshr i32 %i.bs, 24
  %i.bu = trunc nuw i32 %i.bt to i8
  store i8 %i.bu, ptr %i.b, align 1, !tbaa !35
  %i.bv = xor i32 %.sroa.16.220, -1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = call i64 @crc32(i64 noundef %i.bw, ptr noundef nonnull %i.b, i32 noundef 1) #13
  %i.by = trunc i64 %i.bx to i32
  %i.bz = xor i32 %i.by, -1                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %i.ca = load i16, ptr %i.u, align 1, !tbaa !35  ; 2 uses
  %i.cb = zext i16 %i.ca to i32                   ; 4 uses
  %i.cc = icmp ugt i16 %i.ca, 20
  %i.cd = load i8, ptr %i.v, align 1, !tbaa !35   ; 3 uses
  br i1 %i.cc, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ce = load i16, ptr %i.x, align 1, !tbaa !35
  %i.cf = and i16 %i.ce, 8
  %.not145 = icmp eq i16 %i.cf, 0
  %i.cg = zext i8 %i.cd to i32                    ; 3 uses
  br i1 %.not145, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = load i32, ptr %i.y, align 1, !tbaa !35
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.71, i32 noundef %i.cb, i32 noundef %i.cg, i32 noundef %i.ch) #13
  %i.ci = load i32, ptr %i.y, align 1, !tbaa !35
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = icmp eq i8 %i.cd, %i.ck
  br i1 %i.cl, label %select.unfold, label %bb.ae

bb.m:                                             ; preds = %bb.k
  %i.cm = load i32, ptr %i.z, align 1, !tbaa !35
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.72, i32 noundef %i.cb, i32 noundef %i.cg, i32 noundef %i.cm) #13
  %i.cn = load i32, ptr %i.z, align 1, !tbaa !35
  %i.co = lshr i32 %i.cn, 24
  %i.cp = icmp eq i32 %i.co, %i.cg
  br i1 %i.cp, label %select.unfold, label %bb.ae

bb.n:                                             ; preds = %bb.j
  %i.cq = load i8, ptr %i.w, align 1, !tbaa !35
  %i.cr = load i16, ptr %i.x, align 1, !tbaa !35
  %i.cs = and i16 %i.cr, 8
  %.not144 = icmp eq i16 %i.cs, 0
  %i.ct = zext i8 %i.cd to i32                    ; 3 uses
  %i.cu = zext i8 %i.cq to i32                    ; 3 uses
  %i.cv = shl nuw nsw i32 %i.ct, 8
  %i.cw = or disjoint i32 %i.cv, %i.cu            ; 2 uses
  br i1 %.not144, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = load i32, ptr %i.y, align 1, !tbaa !35
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.73, i32 noundef %i.cb, i32 noundef %i.ct, i32 noundef %i.cu, i32 noundef %i.cx) #13
  %i.cy = load i32, ptr %i.y, align 1, !tbaa !35
  %i.cz = and i32 %i.cy, 65535
  %i.da = icmp eq i32 %i.cw, %i.cz
  br i1 %i.da, label %select.unfold, label %bb.ae

bb.p:                                             ; preds = %bb.n
  %i.db = load i32, ptr %i.z, align 1, !tbaa !35
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.74, i32 noundef %i.cb, i32 noundef %i.ct, i32 noundef %i.cu, i32 noundef %i.db) #13
  %i.dc = load i32, ptr %i.z, align 1, !tbaa !35
  %i.dd = lshr i32 %i.dc, 16
  %i.de = icmp eq i32 %i.cw, %i.dd
  br i1 %i.de, label %select.unfold, label %bb.ae

select.unfold:                                    ; preds = %bb.l, %bb.p, %bb.m, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.df = load ptr, ptr %i.ab, align 8, !tbaa !103
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.75, ptr noundef %i.df) #13
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !78
  %i.di = call ptr @cli_gentemp_with_prefix(ptr noundef %i.dh, ptr noundef nonnull @.str.77) #13 ; 9 uses
  %.not147 = icmp eq ptr %i.di, null
  br i1 %.not147, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %select.unfold
  %i.dj = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.di, i32 noundef 578, i32 noundef 384) #13 ; 5 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.q
  %i.dl = icmp ugt i32 %1, 12
  br i1 %i.dl, label %.lr.ph32.preheader, label %._crit_edge33.thread

.lr.ph32.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph32

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.78, ptr noundef nonnull %i.di) #13
  br label %.sink.split

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.u
  %indvars.iv46 = phi i64 [ 12, %.lr.ph32.preheader ], [ %indvars.iv.next47, %bb.u ] ; 2 uses
  %.031 = phi i64 [ 0, %.lr.ph32.preheader ], [ %.1, %bb.u ] ; 2 uses
  %.011430 = phi i64 [ 0, %.lr.ph32.preheader ], [ %.1115, %bb.u ] ; 3 uses
  %i.dm = phi i64 [ %i.bm, %.lr.ph32.preheader ], [ %i.dy, %bb.u ]
  %.sroa.9.327 = phi i32 [ %i.bs, %.lr.ph32.preheader ], [ %i.ee, %bb.u ]
  %.sroa.16.326 = phi i32 [ %i.bz, %.lr.ph32.preheader ], [ %i.el, %bb.u ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv46
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !35
  %i.dp = and i32 %.sroa.16.326, 65533
  %i.dq = or i32 %.sroa.16.326, 2
  %i.dr = xor i32 %i.dp, 3
  %i.ds = mul i32 %i.dr, %i.dq
  %i.dt = lshr i32 %i.ds, 8
  %i.du = trunc i32 %i.dt to i8
  %i.dv = xor i8 %i.do, %i.du                     ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.011430
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 %i.dv, ptr %i.a, align 1, !tbaa !35
  %i.dx = and i64 %i.dm, 4294967295
  %i.dy = call i64 @crc32(i64 noundef %i.dx, ptr noundef nonnull %i.a, i32 noundef 1) #13 ; 2 uses
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 255
  %i.eb = xor i32 %i.ea, 255
  %i.ec = add i32 %i.eb, %.sroa.9.327
  %i.ed = mul i32 %i.ec, 134775813
  %i.ee = add i32 %i.ed, 1                        ; 2 uses
  %i.ef = lshr i32 %i.ee, 24
  %i.eg = trunc nuw i32 %i.ef to i8
  store i8 %i.eg, ptr %i.a, align 1, !tbaa !35
  %i.eh = xor i32 %.sroa.16.326, -1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = call i64 @crc32(i64 noundef %i.ei, ptr noundef nonnull %i.a, i32 noundef 1) #13
  %i.ek = trunc i64 %i.ej to i32
  %i.el = xor i32 %i.ek, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.em = add nuw nsw i64 %.011430, 1             ; 4 uses
  %i.en = icmp ugt i64 %.011430, 8190
  br i1 %i.en, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph32
  %i.eo = call i64 @cli_writen(i32 noundef %i.dj, ptr noundef nonnull %i.e, i64 noundef %i.em) #13
  %.not152 = icmp eq i64 %i.eo, %i.em
  br i1 %.not152, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.ep = add i64 %.031, %i.em
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph32, %bb.t
  %.1115 = phi i64 [ 0, %bb.t ], [ %i.em, %.lr.ph32 ] ; 5 uses
  %.1 = phi i64 [ %i.ep, %bb.t ], [ %.031, %.lr.ph32 ] ; 3 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count
  br i1 %exitcond49.not, label %._crit_edge33, label %.lr.ph32

._crit_edge33:                                    ; preds = %bb.u
  %.not148 = icmp eq i64 %.1115, 0
  br i1 %.not148, label %._crit_edge33.thread, label %bb.v

bb.v:                                             ; preds = %._crit_edge33
  %i.eq = call i64 @cli_writen(i32 noundef %i.dj, ptr noundef nonnull %i.e, i64 noundef %.1115) #13
  %.not149 = icmp eq i64 %i.eq, %.1115
  br i1 %.not149, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.er = add i64 %.1, %.1115
  br label %._crit_edge33.thread

._crit_edge33.thread:                             ; preds = %.preheader, %bb.w, %._crit_edge33
  %.2 = phi i64 [ %i.er, %bb.w ], [ %.1, %._crit_edge33 ], [ 0, %.preheader ] ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.79, i64 noundef %.2, ptr noundef nonnull %i.di) #13
  %i.es = call ptr @fmap_new(i32 noundef %i.dj, i64 noundef 0, i64 noundef %.2, ptr noundef null, ptr noundef nonnull %i.di) #13 ; 7 uses
  %.not150 = icmp eq ptr %i.es, null
  br i1 %.not150, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge33.thread
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.80, ptr noundef nonnull %i.di) #13
  br label %.loopexit

bb.y:                                             ; preds = %._crit_edge33.thread
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !34
  %i.ev = call ptr %i.eu(ptr noundef nonnull %i.es, i64 noundef 0, i64 noundef %.2, i32 noundef 0) #13, !inline_history !1 ; 2 uses
  %.not151 = icmp eq ptr %i.ev, null
  br i1 %.not151, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.81, ptr noundef nonnull %i.di) #13
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !104
  call void %i.ex(ptr noundef nonnull %i.es) #13, !inline_history !93
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %i.ey = add i32 %1, -12
  %i.ez = zext i32 %i.ey to i64
  %i.fa = zext i32 %2 to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fc = load i16, ptr %i.fb, align 1, !tbaa !35
  %i.fd = load i16, ptr %i.x, align 1, !tbaa !35
  %i.fe = call fastcc i32 @unz(ptr noundef nonnull %i.ev, i64 noundef %i.ez, i64 noundef %i.fa, i16 noundef zeroext %i.fc, i16 noundef zeroext %i.fd, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext true)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !104
  call void %i.fg(ptr noundef nonnull %i.es) #13, !inline_history !93
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.v, %bb.aa, %bb.z, %bb.x
  %.0126 = phi i32 [ 19, %bb.x ], [ 14, %bb.v ], [ %i.fe, %bb.aa ], [ 12, %bb.z ], [ 14, %bb.s ]
  %i.fh = call i32 @close(i32 noundef %i.dj) #13  ; 0 uses
  %i.fi = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !79
  %.not153 = icmp eq i32 %i.fk, 0
  br i1 %.not153, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit
  %i.fl = call i32 @cli_unlink(ptr noundef nonnull %i.di) #13
  %.not154 = icmp eq i32 %i.fl, 0
  br i1 %.not154, label %bb.ac, label %.sink.split

bb.ac:                                            ; preds = %.loopexit, %bb.ab
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ab, %bb.r, %bb.ac
  %.0127.ph = phi i32 [ 17, %bb.r ], [ %.0126, %bb.ac ], [ 10, %bb.ab ]
  call void @free(ptr noundef %i.di) #13
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %select.unfold
  %.0127 = phi i32 [ 20, %select.unfold ], [ %.0127.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.ai

bb.ae:                                            ; preds = %bb.o, %bb.m, %bb.p, %bb.l
  br i1 %i.aa, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fm = getelementptr inbounds nuw i8, ptr %.011725, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !105
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fo = getelementptr inbounds nuw i8, ptr %.011924, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !105
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1120 = phi ptr [ %.011924, %bb.af ], [ %i.fp, %bb.ag ] ; 2 uses
  %.1118 = phi ptr [ %i.fn, %bb.af ], [ null, %bb.ag ] ; 2 uses
  %i.fq = icmp ne ptr %.1120, null
  %i.fr = icmp ne ptr %.1118, null                ; 2 uses
  %i.fs = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %i.fs, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ah, %bb.f
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.82) #13
  %i.ft = zext i32 %1 to i64
  %i.fu = zext i32 %2 to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fw = load i16, ptr %i.fv, align 1, !tbaa !35
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.fy = load i16, ptr %i.fx, align 1, !tbaa !35
  %i.fz = call fastcc i32 @unz(ptr noundef %0, i64 noundef %i.ft, i64 noundef %i.fu, i16 noundef zeroext %i.fw, i16 noundef zeroext %i.fy, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext false) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.b, %._crit_edge, %bb.ad, %bb.e
  %.1128 = phi i32 [ %.0127, %bb.ad ], [ 0, %._crit_edge ], [ 0, %bb.e ], [ 2, %bb.b ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  ret i32 %.1128
}

declare i32 @cli_magic_scan_desc(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unz(ptr noundef %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef range(i64 0, 4294967296) %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr nofree noundef captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, i1 noundef zeroext %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 12 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %10 = alloca %union.anon, align 8               ; 10 uses
  %11 = alloca %struct.bz_stream, align 8         ; 12 uses
  %12 = alloca %struct.xplstate, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !79
  %i.g = icmp ne i32 %i.f, 0
  %i.h = icmp ne ptr %8, null
  %or.cond3 = and i1 %i.h, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @cli_gentemp_with_prefix(ptr noundef %i.j, ptr noundef nonnull %8) #13 ; 2 uses
  %.not168 = icmp eq ptr %i.k, null
  br i1 %.not168, label %bb.as, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call ptr @cli_gentemp(ptr noundef %i.j) #13 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.as, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0142 = phi ptr [ %i.l, %bb.c ], [ %i.k, %bb.b ] ; 10 uses
  %i.m = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %.0142, i32 noundef 578, i32 noundef 384) #13 ; 10 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.83, ptr noundef nonnull %.0142) #13
  tail call void @free(ptr noundef nonnull %.0142) #13
  br label %bb.as

bb.f:                                             ; preds = %bb.d
  %i.o = zext i16 %3 to i32                       ; 2 uses
  switch i16 %3, label %bb.ak [
    i16 0, label %bb.g
    i16 8, label %bb.m
    i16 9, label %bb.m
    i16 12, label %bb.w
    i16 6, label %bb.ad
    i16 14, label %bb.aj
    i16 1, label %bb.aj
    i16 2, label %bb.aj
    i16 3, label %bb.aj
    i16 4, label %bb.aj
    i16 5, label %bb.aj
    i16 7, label %bb.aj
    i16 10, label %bb.aj
    i16 11, label %bb.aj
    i16 13, label %bb.aj
    i16 15, label %bb.aj
    i16 16, label %bb.aj
    i16 17, label %bb.aj
    i16 18, label %bb.aj
end_hunk_0
