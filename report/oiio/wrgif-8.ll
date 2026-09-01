Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/wrgif-8?download=true
inline.NumInlined: 18
inline.NumDeleted: 7
begin_hunk_0_@put_LZW_pixel_rows:bb.a
  br i1 %i.bd, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @output(ptr noundef %1, i16 noundef signext %i.u)
  %i.be = load i16, ptr %i.j, align 8, !tbaa !76  ; 3 uses
  %i.bf = icmp slt i16 %i.be, 4096
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = add nsw i16 %i.be, 1
  store i16 %i.bg, ptr %i.j, align 8, !tbaa !76
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.ba
  store i16 %i.be, ptr %i.bi, align 2, !tbaa !75
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ba
  store i32 %i.aa, ptr %i.bk, align 4, !tbaa !4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.val.i71 = load ptr, ptr %i.h, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10006) %.val.i71, i8 0, i64 10006, i1 false)
  %i.bl = load i16, ptr %i.k, align 4, !tbaa !77  ; 2 uses
  %i.bm = add i16 %i.bl, 2
  store i16 %i.bm, ptr %i.j, align 8, !tbaa !76
  tail call fastcc void @output(ptr noundef nonnull %1, i16 noundef signext %i.bl)
  %i.bn = load i32, ptr %i.l, align 8, !tbaa !78  ; 2 uses
  store i32 %i.bn, ptr %i.m, align 8, !tbaa !79
  %notmask.i72 = shl nsw i32 -1, %i.bn
  %i.bo = trunc i32 %notmask.i72 to i16
  %i.bp = xor i16 %i.bo, -1
  store i16 %i.bp, ptr %i.n, align 4, !tbaa !80
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i16 %i.q, ptr %i.g, align 4, !tbaa !67
  br label %bb.s

bb.q:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ba
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = icmp eq i32 %i.br, %i.aa
  br i1 %i.bs, label %bb.r, label %bb.l

bb.r:                                             ; preds = %bb.q
  store i16 %i.bc, ptr %i.g, align 4, !tbaa !67
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.j, %bb.h, %bb.c
  %i.bt = add i32 %.06278, -1                     ; 2 uses
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.s, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_raw_pixel_rows(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.017 = phi i32 [ %i.b, %.lr.ph ], [ %i.s, %bb.e ]
  %.01416 = phi ptr [ %i.e, %.lr.ph ], [ %i.i, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01416, i64 1
  %i.j = load i8, ptr %.01416, align 1, !tbaa !37
  %i.k = zext i8 %i.j to i16
  tail call fastcc void @output(ptr noundef nonnull %1, i16 noundef signext %i.k)
  %i.l = load i16, ptr %i.f, align 2, !tbaa !83   ; 2 uses
  %i.m = load i16, ptr %i.g, align 4, !tbaa !80
  %i.n = icmp slt i16 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i16 %i.l, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = load i16, ptr %i.h, align 4, !tbaa !77
  tail call fastcc void @output(ptr noundef nonnull %1, i16 noundef signext %i.p)
  %i.q = load i16, ptr %i.h, align 4, !tbaa !77
  %i.r = add i16 %i.q, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %storemerge = phi i16 [ %i.r, %bb.d ], [ %i.o, %bb.c ]
  store i16 %storemerge, ptr %i.f, align 2, !tbaa !83
  %i.s = add i32 %.017, -1                        ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_header(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  %i.e = add nsw i32 %i.d, -8                     ; 4 uses
  %i.f = icmp sgt i32 %1, 256
  br i1 %i.f, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 1044, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 %1, ptr %i.i, align 4, !tbaa !37
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  tail call void %i.l(ptr noundef nonnull %i.j) #7
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.072 = phi i32 [ %i.o, %bb.c ], [ 1, %.preheader ] ; 5 uses
  %i.m = shl nuw i32 1, %.072                     ; 3 uses
  %i.n = icmp sgt i32 %1, %i.m
  %i.o = add nuw nsw i32 %.072, 1
  br i1 %i.n, label %bb.c, label %bb.d, !llvm.loop !85

bb.d:                                             ; preds = %bb.c
  %..072 = tail call i32 @llvm.umax.i32(i32 %.072, i32 2) ; 4 uses
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
  %i.aw = add nsw i32 %.072, -1                   ; 2 uses
  %i.ax = shl i32 %i.aw, 4
  %i.ay = or i32 %i.aw, %i.ax
  %i.az = or i32 %i.ay, 128
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.bb = tail call i32 @putc(i32 noundef %i.az, ptr noundef %i.ba) ; 0 uses
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.bd = tail call i32 @putc(i32 noundef 0, ptr noundef %i.bc) ; 0 uses
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.bf = tail call i32 @putc(i32 noundef 0, ptr noundef %i.be) ; 0 uses
  %.not77 = icmp eq i32 %.072, 31
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
  %i.ek = tail call i32 @putc(i32 noundef %..072, ptr noundef %i.ej) ; 0 uses
  %i.el = add nuw nsw i32 %..072, 1               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.el, ptr %i.em, align 8, !tbaa !78
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.el, ptr %i.en, align 8, !tbaa !79
  %notmask.i = shl nsw i32 -2, %..072
  %i.eo = trunc i32 %notmask.i to i16
  %i.ep = xor i16 %i.eo, -1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 %i.ep, ptr %i.eq, align 4, !tbaa !80
  %i.er = shl nuw i32 1, %..072
  %i.es = trunc i32 %i.er to i16                  ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  store i16 %i.es, ptr %i.et, align 4, !tbaa !77
  %i.eu = add i16 %i.es, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !68
  %i.ew = add i16 %i.es, 2                        ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 %i.ew, ptr %i.ex, align 8, !tbaa !76
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i16 %i.ew, ptr %i.ey, align 2, !tbaa !83
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.ez, align 8, !tbaa !66
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.fa, align 8, !tbaa !70
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.fb, align 4, !tbaa !71
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.fc, align 8, !tbaa !69
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !61 ; 2 uses
  %.not.i = icmp eq ptr %i.fe, null
  br i1 %.not.i, label %compress_init.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10006) %i.fe, i8 0, i64 10006, i1 false)
  %.pre.i = load i16, ptr %i.et, align 4, !tbaa !77
  br label %compress_init.exit

compress_init.exit:                               ; preds = %._crit_edge, %bb.l
  %i.ff = phi i16 [ %.pre.i, %bb.l ], [ %i.es, %._crit_edge ]
  tail call fastcc void @output(ptr noundef nonnull %0, i16 noundef signext %i.ff)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @output(ptr nofree noundef captures(none) %0, i16 noundef signext %1) unnamed_addr #0 {
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
end_hunk_0
