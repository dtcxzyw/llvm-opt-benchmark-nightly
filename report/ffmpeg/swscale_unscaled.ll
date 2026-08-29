Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/swscale_unscaled?download=true
inline.NumInlined: 35
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 106
begin_hunk_0_@bayer_grbg16be_to_yv12_interpolate:bb.a
  %i.al = add nsw i32 %6, -2
  %.0109112 = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %.0108113 = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.0107114 = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.am = icmp sgt i32 %6, 4
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.an = sub nsw i32 0, %1
  %i.ao = sext i32 %i.an to i64
  %i.ap = sub i32 4, %1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sub i32 2, %1
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i32 %1, 1
  %i.au = sext i32 %i.at to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0107119 = phi ptr [ %.0107114, %.lr.ph ], [ %.0107, %bb.b ] ; 2 uses
  %.0108118 = phi ptr [ %.0108113, %.lr.ph ], [ %.0108, %bb.b ] ; 2 uses
  %.0109117 = phi ptr [ %.0109112, %.lr.ph ], [ %.0109, %bb.b ] ; 2 uses
  %.0116 = phi i32 [ 2, %.lr.ph ], [ %i.ek, %bb.b ]
  %.0106115 = phi ptr [ %i.ak, %.lr.ph ], [ %i.cm, %bb.b ] ; 10 uses
  %i.av = getelementptr inbounds i8, ptr %.0106115, i64 %i.ao
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !90
  %i.ax = call i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i32
  %i.az = getelementptr inbounds i8, ptr %.0106115, i64 %i.b ; 3 uses
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !90
  %i.bb = call i16 @llvm.bswap.i16(i16 %i.ba)     ; 2 uses
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %i.bd = add nuw nsw i32 %i.bc, %i.ay            ; 2 uses
  %i.be = lshr i32 %i.bd, 9
  %i.bf = trunc nuw i32 %i.be to i8
  store i8 %i.bf, ptr %i.i, align 1, !tbaa !90
  %i.bg = load i16, ptr %.0106115, align 1, !tbaa !90
  %i.bh = call i16 @llvm.bswap.i16(i16 %i.bg)     ; 2 uses
  %i.bi = lshr i16 %i.bh, 8
  %i.bj = trunc nuw i16 %i.bi to i8
  store i8 %i.bj, ptr %i.n, align 1, !tbaa !90
  %i.bk = getelementptr inbounds i8, ptr %.0106115, i64 -2
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !90
  %i.bm = call i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %.0106115, i64 2
  %i.bp = load i16, ptr %i.bo, align 1, !tbaa !90
  %i.bq = call i16 @llvm.bswap.i16(i16 %i.bp)     ; 2 uses
  %i.br = zext i16 %i.bq to i32                   ; 2 uses
  %i.bs = add nuw nsw i32 %i.br, %i.bn            ; 2 uses
  %i.bt = lshr i32 %i.bs, 9
  %i.bu = trunc nuw i32 %i.bt to i8
  store i8 %i.bu, ptr %i.a, align 1, !tbaa !90
  %i.bv = getelementptr inbounds i8, ptr %.0106115, i64 %i.aq
  %i.bw = load i16, ptr %i.bv, align 1, !tbaa !90
  %i.bx = call i16 @llvm.bswap.i16(i16 %i.bw)
  %i.by = zext i16 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.az, i64 4
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !90
  %i.cb = call i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = zext i16 %i.cb to i32                   ; 2 uses
  %i.cd = add nuw nsw i32 %i.bd, %i.by
  %i.ce = add nuw nsw i32 %i.cd, %i.cc
  %i.cf = lshr i32 %i.ce, 10
  %i.cg = trunc nuw i32 %i.cf to i8
  store i8 %i.cg, ptr %i.h, align 1, !tbaa !90
  %i.ch = getelementptr inbounds i8, ptr %.0106115, i64 %i.as
  %i.ci = load i16, ptr %i.ch, align 1, !tbaa !90
  %i.cj = call i16 @llvm.bswap.i16(i16 %i.ci)
  %i.ck = zext i16 %i.cj to i32
  %i.cl = zext i16 %i.bh to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.0106115, i64 4 ; 3 uses
  %i.cn = load i16, ptr %i.cm, align 1, !tbaa !90
  %i.co = call i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cp = zext i16 %i.co to i32
  %i.cq = getelementptr inbounds i8, ptr %.0106115, i64 %i.p
  %i.cr = load i16, ptr %i.cq, align 1, !tbaa !90
  %i.cs = call i16 @llvm.bswap.i16(i16 %i.cr)     ; 2 uses
  %i.ct = zext i16 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.ct, %i.cl            ; 2 uses
  %i.cv = add nuw nsw i32 %i.cu, %i.ck
  %i.cw = add nuw nsw i32 %i.cv, %i.cp
  %i.cx = lshr i32 %i.cw, 10
  %i.cy = trunc nuw i32 %i.cx to i8
  store i8 %i.cy, ptr %i.ac, align 1, !tbaa !90
  %i.cz = lshr i16 %i.bq, 8
  %i.da = trunc nuw i16 %i.cz to i8
  store i8 %i.da, ptr %i.ah, align 1, !tbaa !90
  %i.db = lshr i16 %i.bb, 8
  %i.dc = trunc nuw i16 %i.db to i8
  store i8 %i.dc, ptr %i.f, align 1, !tbaa !90
  %i.dd = getelementptr i8, ptr %i.az, i64 -2
  %i.de = load i16, ptr %i.dd, align 1, !tbaa !90
  %i.df = call i16 @llvm.bswap.i16(i16 %i.de)
  %i.dg = zext i16 %i.df to i32
  %i.dh = getelementptr inbounds i8, ptr %.0106115, i64 %i.au ; 3 uses
  %i.di = load i16, ptr %i.dh, align 1, !tbaa !90
  %i.dj = call i16 @llvm.bswap.i16(i16 %i.di)
  %i.dk = zext i16 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.cu, %i.dg
  %i.dm = add nuw nsw i32 %i.dl, %i.dk
  %i.dn = lshr i32 %i.dm, 10
  %i.do = trunc nuw i32 %i.dn to i8
  store i8 %i.do, ptr %i.ab, align 1, !tbaa !90
  %i.dp = getelementptr i8, ptr %i.dh, i64 -2
  %i.dq = load i16, ptr %i.dp, align 1, !tbaa !90
  %i.dr = call i16 @llvm.bswap.i16(i16 %i.dq)
  %i.ds = zext i16 %i.dr to i32
  %i.dt = add nuw nsw i32 %i.bs, %i.ds
  %i.du = getelementptr i8, ptr %i.dh, i64 2
  %i.dv = load i16, ptr %i.du, align 1, !tbaa !90
  %i.dw = call i16 @llvm.bswap.i16(i16 %i.dv)
  %i.dx = zext i16 %i.dw to i32                   ; 2 uses
  %i.dy = add nuw nsw i32 %i.dt, %i.dx
  %i.dz = lshr i32 %i.dy, 10
  %i.ea = trunc nuw i32 %i.dz to i8
  store i8 %i.ea, ptr %i.ag, align 1, !tbaa !90
  %i.eb = add nuw nsw i32 %i.cc, %i.bc
  %i.ec = lshr i32 %i.eb, 9
  %i.ed = trunc nuw i32 %i.ec to i8
  store i8 %i.ed, ptr %i.g, align 1, !tbaa !90
  %i.ee = lshr i16 %i.cs, 8
  %i.ef = trunc nuw i16 %i.ee to i8
  store i8 %i.ef, ptr %i.v, align 1, !tbaa !90
  %i.eg = add nuw nsw i32 %i.dx, %i.br
  %i.eh = lshr i32 %i.eg, 9
  %i.ei = trunc nuw i32 %i.eh to i8
  store i8 %i.ei, ptr %i.ai, align 1, !tbaa !90
  %i.ej = load ptr, ptr @ff_rgb24toyv12, align 8, !tbaa !59
  call void %i.ej(ptr noundef nonnull %i.a, ptr noundef nonnull %.0107119, ptr noundef nonnull %.0109117, ptr noundef nonnull %.0108118, i32 noundef 2, i32 noundef 2, i32 noundef %5, i32 noundef 0, i32 noundef 6, ptr noundef %7) #14
  %i.ek = add nuw nsw i32 %.0116, 2               ; 2 uses
  %.0109 = getelementptr inbounds nuw i8, ptr %.0109117, i64 1 ; 2 uses
  %.0108 = getelementptr inbounds nuw i8, ptr %.0108118, i64 1 ; 2 uses
  %.0107 = getelementptr inbounds nuw i8, ptr %.0107119, i64 2 ; 2 uses
  %i.el = icmp slt i32 %i.ek, %i.al
  br i1 %i.el, label %bb.b, label %._crit_edge.thread, !llvm.loop !996

._crit_edge:                                      ; preds = %bb.a
  %i.em = icmp sgt i32 %6, 2
  br i1 %i.em, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %.0107.lcssa133 = phi ptr [ %.0107114, %._crit_edge ], [ %.0107, %bb.b ]
  %.0108.lcssa132 = phi ptr [ %.0108113, %._crit_edge ], [ %.0108, %bb.b ]
  %.0109.lcssa131 = phi ptr [ %.0109112, %._crit_edge ], [ %.0109, %bb.b ]
  %.0106.lcssa130 = phi ptr [ %i.ak, %._crit_edge ], [ %i.cm, %bb.b ] ; 4 uses
  %i.en = getelementptr inbounds i8, ptr %.0106.lcssa130, i64 %i.b
  %i.eo = load i16, ptr %i.en, align 1, !tbaa !90
  %i.ep = trunc i16 %i.eo to i8                   ; 4 uses
  store i8 %i.ep, ptr %i.f, align 1, !tbaa !90
  store i8 %i.ep, ptr %i.g, align 1, !tbaa !90
  store i8 %i.ep, ptr %i.h, align 1, !tbaa !90
  store i8 %i.ep, ptr %i.i, align 1, !tbaa !90
  %i.eq = load i16, ptr %.0106.lcssa130, align 1, !tbaa !90
  %i.er = call i16 @llvm.bswap.i16(i16 %i.eq)     ; 2 uses
  %i.es = lshr i16 %i.er, 8
  %i.et = trunc nuw i16 %i.es to i8
  store i8 %i.et, ptr %i.n, align 1, !tbaa !90
  %i.eu = getelementptr inbounds i8, ptr %.0106.lcssa130, i64 %i.p
  %i.ev = load i16, ptr %i.eu, align 1, !tbaa !90
  %i.ew = call i16 @llvm.bswap.i16(i16 %i.ev)     ; 2 uses
  %i.ex = lshr i16 %i.ew, 8
  %i.ey = trunc nuw i16 %i.ex to i8
  store i8 %i.ey, ptr %i.v, align 1, !tbaa !90
  %i.ez = zext i16 %i.er to i32
  %i.fa = zext i16 %i.ew to i32
  %i.fb = add nuw nsw i32 %i.fa, %i.ez
  %i.fc = lshr i32 %i.fb, 9
  %i.fd = trunc nuw i32 %i.fc to i8               ; 2 uses
  store i8 %i.fd, ptr %i.ab, align 1, !tbaa !90
  store i8 %i.fd, ptr %i.ac, align 1, !tbaa !90
  %i.fe = getelementptr inbounds nuw i8, ptr %.0106.lcssa130, i64 2
  %i.ff = load i16, ptr %i.fe, align 1, !tbaa !90
  %i.fg = trunc i16 %i.ff to i8                   ; 4 uses
  store i8 %i.fg, ptr %i.ag, align 1, !tbaa !90
  store i8 %i.fg, ptr %i.ah, align 1, !tbaa !90
  store i8 %i.fg, ptr %i.a, align 1, !tbaa !90
  store i8 %i.fg, ptr %i.ai, align 1, !tbaa !90
  %i.fh = load ptr, ptr @ff_rgb24toyv12, align 8, !tbaa !59
  call void %i.fh(ptr noundef nonnull %i.a, ptr noundef nonnull %.0107.lcssa133, ptr noundef nonnull %.0109.lcssa131, ptr noundef nonnull %.0108.lcssa132, i32 noundef 2, i32 noundef 2, i32 noundef %5, i32 noundef 0, i32 noundef 6, ptr noundef %7) #14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @gray8aToPlanar8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  %wide.trip.count26 = zext nneg i32 %5 to i64    ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 5 uses
  %indvars.iv23.tr = trunc nuw i64 %indvars.iv23 to i32
  %i.b = shl nuw i32 %indvars.iv23.tr, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !90
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 %i.g ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv23
  store i8 %i.i, ptr %i.j, align 1, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv23
  store i8 %i.l, ptr %i.m, align 1, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv23
  store i8 %i.o, ptr %i.p, align 1, !tbaa !90
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !997

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 6 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !90
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 %i.v ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.x, ptr %i.y, align 1, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !90
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !90
  %i.af = getelementptr i8, ptr %i.s, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count26
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !997
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pal8ToPlanar8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  %wide.trip.count25 = zext nneg i32 %5 to i64    ; 3 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count25, 1
  %i.b = icmp eq i32 %5, 1
  br i1 %i.b, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count25, 2147483646
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next23.1, %.lr.ph.split.us ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.1, %.lr.ph.split.us ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv22
  %i.d = load i8, ptr %i.c, align 1, !tbaa !90
  %i.e = zext i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 %i.f ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv22
  store i8 %i.h, ptr %i.i, align 1, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv22
  store i8 %i.k, ptr %i.l, align 1, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv22
  store i8 %i.n, ptr %i.o, align 1, !tbaa !90
  %indvars.iv.next23 = or disjoint i64 %indvars.iv22, 1 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next23
  %i.q = load i8, ptr %i.p, align 1, !tbaa !90
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 %i.s ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !90
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next23
  store i8 %i.u, ptr %i.v, align 1, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next23
  store i8 %i.x, ptr %i.y, align 1, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !90
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next23
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !90
  %indvars.iv.next23.1 = add nuw nsw i64 %indvars.iv22, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !998

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv22.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next23.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod31 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv22.epil.init
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !90
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !90
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv22.epil.init
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !90
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv22.epil.init
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !90
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv22.epil.init
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !90
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !90
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 %i.as ; 4 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !90
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.au, ptr %i.av, align 1, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !90
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !90
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !90
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count25
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !998
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @gray8aToPacked32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.c = shl nuw i32 %indvars.iv.tr, 1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !90
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = getelementptr i8, ptr %i.e, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !90
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw i32 %i.l, 24
  %i.n = or i32 %i.m, %i.i
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.n, ptr %i.o, align 4, !tbaa !13
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.p = shl nuw i32 %indvars.iv.tr.1, 1
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !90
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = getelementptr i8, ptr %i.r, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !90
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw i32 %i.y, 24
  %i.aa = or i32 %i.z, %i.v
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !999

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ac = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !90
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !13
  %i.aj = getelementptr i8, ptr %i.ae, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !90
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw i32 %i.al, 24
  %i.an = or i32 %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @gray8aToPacked32_1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.c = shl nuw i32 %indvars.iv.tr, 1
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !90
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = getelementptr i8, ptr %i.e, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !90
  %i.l = zext i8 %i.k to i32
  %i.m = or i32 %i.i, %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.m, ptr %i.n, align 4, !tbaa !13
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.o = shl nuw i32 %indvars.iv.tr.1, 1
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !90
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = getelementptr i8, ptr %i.q, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !90
  %i.x = zext i8 %i.w to i32
  %i.y = or i32 %i.u, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.y, ptr %i.z, align 4, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1000

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.aa = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !90
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !13
  %i.ah = getelementptr i8, ptr %i.ac, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !90
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or i32 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @gray8aToPacked24(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.01516 = phi ptr [ %1, %.lr.ph.preheader ], [ %i.x, %.lr.ph ] ; 4 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.b = shl nuw i32 %indvars.iv.tr, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !90
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !90
  store i8 %i.i, ptr %.01516, align 1, !tbaa !90
  %i.j = load i8, ptr %i.d, align 1, !tbaa !90
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %.01516, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !90
  %i.q = load i8, ptr %i.d, align 1, !tbaa !90
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %.01516, i64 2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !90
  %i.x = getelementptr inbounds nuw i8, ptr %.01516, i64 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1001

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.bswap.v32i16(<32 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i16> @llvm.bswap.v64i16(<64 x i16>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !6, i64 16}
!15 = !{!"SwsInternal", !16, i64 0, !19, i64 120, !20, i64 128, !21, i64 136, !23, i64 144, !6, i64 152, !7, i64 160, !6, i64 176, !6, i64 180, !18, i64 184, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !24, i64 264, !24, i64 272, !25, i64 280, !7, i64 296, !7, i64 320, !7, i64 352, !6, i64 416, !27, i64 424, !6, i64 432, !28, i64 440, !28, i64 448, !6, i64 456, !7, i64 460, !6, i64 468, !29, i64 472, !30, i64 480, !7, i64 488, !7, i64 1512, !7, i64 2536, !6, i64 3560, !6, i64 3564, !31, i64 3568, !6, i64 3576, !28, i64 3584, !28, i64 3592, !28, i64 3600, !28, i64 3608, !23, i64 3616, !23, i64 3624, !23, i64 3632, !23, i64 3640, !6, i64 3648, !6, i64 3652, !6, i64 3656, !6, i64 3660, !6, i64 3664, !6, i64 3668, !31, i64 3672, !31, i64 3680, !6, i64 3688, !6, i64 3692, !6, i64 3696, !18, i64 3704, !7, i64 3712, !7, i64 8832, !7, i64 19072, !7, i64 29312, !7, i64 39552, !7, i64 40256, !6, i64 40288, !6, i64 40292, !6, i64 40296, !7, i64 40300, !7, i64 40316, !6, i64 40332, !6, i64 40336, !6, i64 40340, !6, i64 40344, !6, i64 40348, !6, i64 40352, !6, i64 40356, !6, i64 40360, !6, i64 40364, !6, i64 40368, !32, i64 40376, !32, i64 40384, !32, i64 40392, !32, i64 40400, !32, i64 40408, !32, i64 40416, !32, i64 40424, !32, i64 40432, !32, i64 40440, !32, i64 40448, !32, i64 40456, !7, i64 40464, !7, i64 44560, !6, i64 48656, !32, i64 48664, !32, i64 48672, !32, i64 48680, !32, i64 48688, !32, i64 48696, !7, i64 48704, !32, i64 52800, !32, i64 52808, !7, i64 52816, !7, i64 52832, !31, i64 52864, !31, i64 52872, !6, i64 52880, !18, i64 52888, !18, i64 52896, !33, i64 52904, !33, i64 52944, !18, i64 52984, !18, i64 52992, !18, i64 53000, !18, i64 53008, !18, i64 53016, !18, i64 53024, !18, i64 53032, !18, i64 53040, !18, i64 53048, !18, i64 53056, !18, i64 53064, !18, i64 53072, !18, i64 53080, !18, i64 53088, !18, i64 53096, !18, i64 53104, !18, i64 53112, !18, i64 53120, !18, i64 53128, !18, i64 53136, !6, i64 53144, !6, i64 53148, !32, i64 53152, !32, i64 53160, !6, i64 53168, !31, i64 53176, !6, i64 53184, !31, i64 53192, !6, i64 53200, !6, i64 53204, !7, i64 53208, !7, i64 53212, !6, i64 53216, !35, i64 53224, !18, i64 53232, !6, i64 53240, !36, i64 53248}
!16 = !{!"SwsContext", !17, i64 0, !18, i64 8, !6, i64 16, !7, i64 24, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116}
!17 = !{!"p1 _ZTS7AVClass", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"p1 _ZTS10SwsContext", !18, i64 0}
!20 = !{!"p1 _ZTS13AVSliceThread", !18, i64 0}
!21 = !{!"p2 _ZTS10SwsContext", !22, i64 0}
!22 = !{!"any p2 pointer", !18, i64 0}
!23 = !{!"p1 int", !18, i64 0}
!24 = !{!"p1 _ZTS7AVFrame", !18, i64 0}
!25 = !{!"RangeList", !26, i64 0, !6, i64 8, !6, i64 12}
!26 = !{!"p1 _ZTS5Range", !18, i64 0}
!27 = !{!"double", !7, i64 0}
!28 = !{!"p1 short", !18, i64 0}
!29 = !{!"p1 _ZTS8SwsSlice", !18, i64 0}
!30 = !{!"p1 _ZTS19SwsFilterDescriptor", !18, i64 0}
!31 = !{!"p1 omnipotent char", !18, i64 0}
!32 = !{!"long", !7, i64 0}
!33 = !{!"SwsColorXform", !34, i64 0, !7, i64 16}
!34 = !{!"SwsLuts", !28, i64 0, !28, i64 8}
!35 = !{!"p1 _ZTS16Half2FloatTables", !18, i64 0}
!36 = !{!"FFFramePool", !6, i64 0, !7, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !7, i64 32, !7, i64 48}
!37 = !{!15, !6, i64 68}
!38 = !{!15, !6, i64 64}
!39 = !{!40, !32, i64 16}
!40 = !{!"AVPixFmtDescriptor", !31, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !32, i64 16, !7, i64 24, !31, i64 104}
!41 = !{!15, !6, i64 224}
!42 = !{!15, !6, i64 228}
!43 = !{!15, !18, i64 184}
!44 = !{!15, !6, i64 44}
!45 = !{!15, !6, i64 53204}
!46 = !{!40, !7, i64 8}
!47 = !{!48, !6, i64 16}
!48 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!49 = !{!15, !6, i64 248}
!50 = !{!15, !6, i64 240}
!51 = !{!15, !6, i64 252}
!52 = !{!15, !6, i64 244}
!53 = !{!48, !6, i64 0}
!54 = !{!15, !6, i64 72}
!55 = !{!31, !31, i64 0}
!56 = !{!15, !6, i64 56}
!57 = distinct !{!57, !12}
!58 = !{!15, !6, i64 76}
!59 = !{!18, !18, i64 0}
!60 = !{!15, !6, i64 192}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = !{!48, !6, i64 12}
!65 = !{!28, !28, i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"short", !7, i64 0}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !10, !74, !75}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!"branch_weights", i32 4, i32 12}
!77 = distinct !{!77, !10, !74, !75}
!78 = distinct !{!78, !10, !74}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = !{!85}
!85 = distinct !{!85, !81}
!86 = !{!80, !83}
!87 = distinct !{!87, !10, !74, !75}
!88 = distinct !{!88, !10, !74}
!89 = distinct !{!89, !10}
!90 = !{!7, !7, i64 0}
!91 = !{!92}
!92 = distinct !{!92, !93}
!93 = distinct !{!93, !"LVerDomain"}
!94 = !{!95}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !10, !74, !75}
!97 = distinct !{!97, !10, !74, !75}
!98 = distinct !{!98, !10, !74}
!99 = distinct !{!99, !10, !74}
!100 = distinct !{!100, !10}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = !{!105}
!105 = distinct !{!105, !103}
end_hunk_0
