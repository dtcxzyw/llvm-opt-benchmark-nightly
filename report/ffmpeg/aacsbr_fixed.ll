Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacsbr_fixed?download=true
inline.NumInlined: 254
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@make_bands:bb.a
  %i.au = mul nsw i64 %i.ao, %i.m
  %i.av = add nuw nsw i64 %i.au, 1073741824
  %i.aw = lshr i64 %i.av, 31                      ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.m
  %i.ay = add nsw i64 %i.ax, 1073741824
  %i.az = ashr i64 %i.ay, 31                      ; 2 uses
  %i.ba = mul nsw i64 %i.az, 238609294
  %i.bb = add nsw i64 %i.ba, 1073741824
  %i.bc = lshr i64 %i.bb, 31
  %i.bd = trunc i64 %i.bc to i32
  %i.be = add i32 %i.at, %i.bd
  %i.bf = shl nuw nsw i64 %i.p, 30
  %i.bg = add nuw nsw i64 %i.bf, 1073741824
  %i.bh = lshr i64 %i.bg, 31
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = shl nuw nsw i64 %i.aa, 29
  %i.bk = add nuw nsw i64 %i.bj, 1073741824
  %i.bl = lshr i64 %i.bk, 31
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bi, %i.bm
  %i.bo = mul nuw nsw i64 %i.al, 357913941
  %i.bp = add nuw nsw i64 %i.bo, 1073741824
  %i.bq = lshr i64 %i.bp, 31
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.bn, %i.br
  %i.bt = shl nuw nsw i64 %i.aw, 28
  %i.bu = add nuw nsw i64 %i.bt, 1073741824
  %i.bv = lshr i64 %i.bu, 31
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bs, %i.bw
  %i.by = mul nsw i64 %i.az, %i.m
  %i.bz = add nuw nsw i64 %i.by, 1073741824
  %i.ca = lshr i64 %i.bz, 31                      ; 2 uses
  %i.cb = mul nuw nsw i64 %i.ca, 214748365
  %i.cc = add nuw nsw i64 %i.cb, 1073741824
  %i.cd = lshr i64 %i.cc, 31
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.bx, %i.ce
  %i.cg = sub i32 %i.be, %i.cf
  %i.ch = mul nsw i64 %i.ca, %i.m
  %i.ci = add nsw i64 %i.ch, 1073741824
  %i.cj = ashr i64 %i.ci, 31
  %i.ck = mul nsw i64 %i.cj, 195225786
  %i.cl = add nsw i64 %i.ck, 1073741824
  %i.cm = lshr i64 %i.cl, 31
  %i.cn = trunc i64 %i.cm to i32
  %i.co = add i32 %i.cg, %i.cn
  %i.cp = ashr i32 %i.co, 8
  %i.cq = add nsw i32 %i.cp, %.0.lcssa
  %i.cr = sdiv i32 %i.cq, %3                      ; 2 uses
  %i.cs = add nsw i32 %i.cr, 8388608
  %i.ct = sext i32 %i.cr to i64                   ; 2 uses
  %i.cu = shl nsw i64 %i.ct, 9                    ; 7 uses
  %i.cv = mul i64 %i.cu, %i.ct
  %i.cw = add i64 %i.cv, 2147483648               ; 2 uses
  %i.cx = ashr exact i64 %i.cw, 2
  %i.cy = add nsw i64 %i.cx, 1073741824
  %i.cz = lshr i64 %i.cy, 31
  %i.da = trunc i64 %i.cz to i32
  %i.db = add nsw i32 %i.cs, %i.da
  %i.dc = ashr i64 %i.cw, 32
  %i.dd = mul i64 %i.cu, %i.dc
  %i.de = add i64 %i.dd, 2147483648
  %i.df = ashr i64 %i.de, 32                      ; 2 uses
  %i.dg = mul nsw i64 %i.df, 357913941
  %i.dh = add nsw i64 %i.dg, 1073741824
  %i.di = lshr i64 %i.dh, 31
  %i.dj = trunc i64 %i.di to i32
  %i.dk = add nsw i32 %i.db, %i.dj
  %i.dl = mul i64 %i.cu, %i.df
  %i.dm = add i64 %i.dl, 2147483648
  %i.dn = ashr i64 %i.dm, 32                      ; 2 uses
  %i.do = mul nsw i64 %i.dn, 89478485
  %i.dp = add nsw i64 %i.do, 1073741824
  %i.dq = lshr i64 %i.dp, 31
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = add nsw i32 %i.dk, %i.dr
  %i.dt = mul i64 %i.cu, %i.dn
  %i.du = add i64 %i.dt, 2147483648
  %i.dv = ashr i64 %i.du, 32                      ; 2 uses
  %i.dw = mul nsw i64 %i.dv, 17895697
  %i.dx = add nsw i64 %i.dw, 1073741824
  %i.dy = lshr i64 %i.dx, 31
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = add nsw i32 %i.ds, %i.dz
  %i.eb = mul i64 %i.cu, %i.dv
  %i.ec = add i64 %i.eb, 2147483648
  %i.ed = ashr i64 %i.ec, 32                      ; 2 uses
  %i.ee = mul nsw i64 %i.ed, 2982616
  %i.ef = add nsw i64 %i.ee, 1073741824
  %i.eg = lshr i64 %i.ef, 31
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = add nsw i32 %i.ea, %i.eh
  %i.ej = mul i64 %i.cu, %i.ed
  %i.ek = add i64 %i.ej, 2147483648
  %i.el = ashr i64 %i.ek, 32                      ; 2 uses
  %i.em = mul nsw i64 %i.el, 426088
  %i.en = add nsw i64 %i.em, 1073741824
  %i.eo = lshr i64 %i.en, 31
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = add nsw i32 %i.ei, %i.ep
  %i.er = mul i64 %i.cu, %i.el
  %i.es = add i64 %i.er, 2147483648
  %i.et = ashr i64 %i.es, 32
  %i.eu = mul nsw i64 %i.et, 53261
  %i.ev = add nsw i64 %i.eu, 1073741824
  %i.ew = lshr i64 %i.ev, 31
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = add nsw i32 %i.eq, %i.ex
  %i.ez = sext i32 %i.ey to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fa = icmp eq i32 %i.i, 1
  br i1 %i.fa, label %.epil.preheader, label %.lr.ph46.new

.lr.ph46.new:                                     ; preds = %.lr.ph46
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph46.new
  %indvars.iv = phi i64 [ 0, %.lr.ph46.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.02644 = phi i32 [ %i.k, %.lr.ph46.new ], [ %i.fp, %bb.b ]
  %.02843 = phi i32 [ %1, %.lr.ph46.new ], [ %i.fr, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph46.new ], [ %niter.next.1, %bb.b ]
  %i.fb = sext i32 %.02644 to i64
  %i.fc = mul nsw i64 %i.fb, %i.ez
  %i.fd = add nsw i64 %i.fc, 4194304
  %i.fe = lshr i64 %i.fd, 23                      ; 2 uses
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = add nsw i32 %i.ff, 4194304
  %i.fh = ashr i32 %i.fg, 23                      ; 2 uses
  %i.fi = sub nsw i32 %i.fh, %.02843
  %i.fj = trunc i32 %i.fi to i16
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !58
  %sext = shl i64 %i.fe, 32
  %i.fl = ashr exact i64 %sext, 32
  %i.fm = mul nsw i64 %i.fl, %i.ez
  %i.fn = add nsw i64 %i.fm, 4194304
  %i.fo = lshr i64 %i.fn, 23
  %i.fp = trunc i64 %i.fo to i32                  ; 3 uses
  %i.fq = add nsw i32 %i.fp, 4194304
  %i.fr = ashr i32 %i.fq, 23                      ; 4 uses
  %i.fs = sub nsw i32 %i.fr, %i.fh
  %i.ft = trunc nsw i32 %i.fs to i16
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  store i16 %i.ft, ptr %i.fv, align 2, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge47.loopexit.unr-lcssa, label %bb.b, !llvm.loop !233

._crit_edge47.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge47, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge47.loopexit.unr-lcssa, %.lr.ph46
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next.1, %._crit_edge47.loopexit.unr-lcssa ]
  %.02644.epil.init = phi i32 [ %i.k, %.lr.ph46 ], [ %i.fp, %._crit_edge47.loopexit.unr-lcssa ]
  %.02843.epil.init = phi i32 [ %1, %.lr.ph46 ], [ %i.fr, %._crit_edge47.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.fw = sext i32 %.02644.epil.init to i64
  %i.fx = mul nsw i64 %i.fw, %i.ez
  %i.fy = add nsw i64 %i.fx, 4194304
  %i.fz = lshr i64 %i.fy, 23
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = add nsw i32 %i.ga, 4194304
  %i.gc = ashr i32 %i.gb, 23                      ; 2 uses
  %i.gd = sub nsw i32 %i.gc, %.02843.epil.init
  %i.ge = trunc i32 %i.gd to i16
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !58
  br label %._crit_edge47

._crit_edge47:                                    ; preds = %.epil.preheader, %._crit_edge47.loopexit.unr-lcssa, %._crit_edge
  %.028.lcssa = phi i32 [ %1, %._crit_edge ], [ %i.fr, %._crit_edge47.loopexit.unr-lcssa ], [ %i.gc, %.epil.preheader ]
  %i.gg = sub nsw i32 %2, %.028.lcssa
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = sext i32 %i.i to i64
  %i.gj = getelementptr inbounds [2 x i8], ptr %0, i64 %i.gi
  store i16 %i.gh, ptr %i.gj, align 2, !tbaa !58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_sbr_grid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef range(i32 15, 17) %4) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  store i8 %i.f, ptr %i.c, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 2 uses
  store i32 %i.h, ptr %i.i, align 4, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 106632 ; 29 uses
  %i.k = zext i32 %i.b to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 106641
  store i8 %i.m, ptr %i.n, align 1, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 54 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !30   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 25 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !31   ; 3 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !42     ; 3 uses
  %i.t = lshr i32 %i.p, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 1, !tbaa !13
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = and i32 %i.p, 7
  %i.z = shl i32 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i32 %i.z, 30                       ; 5 uses
  %i.ab = add i32 %i.p, 2
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ab) ; 4 uses
  store i32 %i.ac, ptr %i.o, align 8, !tbaa !30
  %i.ad = lshr i32 %i.ac, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !13
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = and i32 %i.ac, 7
  %i.aj = shl i32 %i.ah, %i.ai
  %i.ak = lshr i32 %i.aj, 30                      ; 6 uses
  %i.al = add i32 %i.ac, 2
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.al) ; 4 uses
  store i32 %i.am, ptr %i.o, align 8, !tbaa !30
  switch i32 %i.aa, label %default.unreachable309 [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.an = shl nuw nsw i32 1, %i.ak                ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i32, ptr %i.ao, align 16, !tbaa !24
  %.not = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not, i32 5, i32 8
  %i.ar = icmp samesign ugt i32 %i.an, %i.aq
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.at, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %i.an) #12
  br label %bb.ad

bb.d:                                             ; preds = %bb.b
  store i32 %i.an, ptr %i.a, align 8, !tbaa !69
  %i.au = icmp eq i32 %i.ak, 0                    ; 2 uses
  br i1 %i.au, label %.thread, label %.lr.ph242.preheader

.thread:                                          ; preds = %bb.d
  store i32 0, ptr %i.i, align 4, !tbaa !71
  store i8 0, ptr %i.j, align 8, !tbaa !13
  %i.av = trunc nuw nsw i32 %4 to i8
  %i.aw = zext nneg i32 %i.an to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aw
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !13
  br label %._crit_edge243

.lr.ph242.preheader:                              ; preds = %bb.d
  store i8 0, ptr %i.j, align 8, !tbaa !13
  %i.ay = trunc nuw nsw i32 %4 to i8
  %i.az = zext nneg i32 %i.an to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.az
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !13
  %i.bb = lshr exact i32 %i.an, 1
  %i.bc = add nuw nsw i32 %i.bb, %4
  %.lhs.trunc = trunc nuw nsw i32 %i.bc to i8
  %i.bd = trunc nuw nsw i32 %i.ak to i8
  %i.be = lshr i8 %.lhs.trunc, %i.bd              ; 7 uses
  %i.bf = tail call i32 @llvm.umax.i32(i32 %i.an, i32 2)
  %smax = add nsw i32 %i.bf, -1                   ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 106633
  store i8 %i.be, ptr %5, align 1, !tbaa !13
  %.not315 = icmp eq i32 %smax, 1
  br i1 %.not315, label %._crit_edge243, label %.lr.ph242

.lr.ph242:                                        ; preds = %.lr.ph242.preheader
  %6 = shl nuw nsw i8 %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 106634
  store i8 %6, ptr %i.bg, align 2, !tbaa !13
  %7 = mul nuw nsw i8 %i.be, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 106635
  store i8 %7, ptr %i.bh, align 1, !tbaa !13
  %niter.ncmp.3 = icmp eq i32 %smax, 3
  br i1 %niter.ncmp.3, label %._crit_edge243, label %.lr.ph242.epil.preheader

.lr.ph242.epil.preheader:                         ; preds = %.lr.ph242
  %8 = shl nuw nsw i8 %i.be, 2
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 106636
  store i8 %8, ptr %9, align 4, !tbaa !13
  %10 = mul nuw i8 %i.be, 5
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 106637
  store i8 %10, ptr %11, align 1, !tbaa !13
  %exitcond286.not.4 = icmp eq i32 %smax, 5
  br i1 %exitcond286.not.4, label %._crit_edge243, label %.lr.ph242.epil

.lr.ph242.epil:                                   ; preds = %.lr.ph242.epil.preheader
  %12 = mul nuw i8 %i.be, 6
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 106638
  store i8 %12, ptr %13, align 2, !tbaa !13
  %14 = mul nuw i8 %i.be, 7
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 106639
  store i8 %14, ptr %i.bi, align 1, !tbaa !13
  br label %._crit_edge243

._crit_edge243:                                   ; preds = %.lr.ph242.preheader, %.lr.ph242, %.lr.ph242.epil.preheader, %.lr.ph242.epil, %.thread
  %i.bj = load i32, ptr %i.o, align 8, !tbaa !30  ; 4 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !42
  %i.bl = lshr i32 %i.bj, 3
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.bp = load i32, ptr %i.q, align 8, !tbaa !31
  %i.bq = icmp slt i32 %i.bj, %i.bp
  %i.br = zext i1 %i.bq to i32
  %spec.select.i = add i32 %i.bj, %i.br
  %i.bs = zext i8 %i.bo to i32
  %i.bt = and i32 %i.bj, 7
  %i.bu = shl nuw nsw i32 %i.bs, %i.bt
  store i32 %spec.select.i, ptr %i.o, align 8, !tbaa !30
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = lshr i8 %i.bv, 7                        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !13
  br i1 %i.au, label %get_bits1_vector.exit202.thread, label %.lr.ph246.preheader

.lr.ph246.preheader:                              ; preds = %._crit_edge243
  %scevgep = getelementptr i8, ptr %3, i64 14
  %umax = tail call i32 @llvm.umax.i32(i32 %i.an, i32 2)
  %i.by = add nsw i32 %umax, -1
  %i.bz = zext nneg i32 %i.by to i64
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep, i8 %i.bw, i64 range(i64 0, 15) %i.bz, i1 false), !tbaa !13
  br label %get_bits1_vector.exit202.thread

bb.e:                                             ; preds = %bb.a
  %i.ca = add nuw nsw i32 %i.ak, %4
  %i.cb = lshr i32 %i.am, 3
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 1, !tbaa !13
  %i.cf = tail call i32 @llvm.bswap.i32(i32 %i.ce)
  %i.cg = and i32 %i.am, 7
  %i.ch = shl i32 %i.cf, %i.cg
  %i.ci = lshr i32 %i.ch, 30                      ; 4 uses
  %i.cj = add i32 %i.am, 2
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.cj)
  store i32 %i.ck, ptr %i.o, align 8, !tbaa !30
  %i.cl = add nuw nsw i32 %i.ci, 1                ; 2 uses
  store i32 %i.cl, ptr %i.a, align 8, !tbaa !69
  store i8 0, ptr %i.j, align 8, !tbaa !13
  %i.cm = trunc nuw nsw i32 %i.ca to i8
  %i.cn = zext nneg i32 %i.cl to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !13
  %.not254 = icmp eq i32 %i.ci, 0
  br i1 %.not254, label %._crit_edge236, label %.lr.ph235

.lr.ph235:                                        ; preds = %bb.e
  %i.cp = load i32, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.j, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.ct = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.cu = load i32, ptr %i.q, align 8, !tbaa !31
  %i.cv = load ptr, ptr %2, align 8, !tbaa !42
  %i.cw = lshr i32 %i.ct, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 1, !tbaa !13
  %i.da = tail call i32 @llvm.bswap.i32(i32 %i.cz)
  %i.db = and i32 %i.ct, 7
  %i.dc = shl i32 %i.da, %i.db
  %i.dd = add i32 %i.ct, 2
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.cu, i32 %i.dd)
  store i32 %i.de, ptr %i.o, align 8, !tbaa !30
  %sh.diff213 = lshr i32 %i.dc, 29
  %tr.sh.diff214 = trunc nuw nsw i32 %sh.diff213 to i8
  %i.df = and i8 %tr.sh.diff214, 6
  %i.dg = add i8 %i.cs, -2
  %i.dh = sub i8 %i.dg, %i.df
  %i.di = add i32 %i.cp, -1
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %i.j, i64 %i.dj
  store i8 %i.dh, ptr %i.dk, align 1, !tbaa !13
  %exitcond276.not = icmp eq i32 %i.ci, 1
  br i1 %exitcond276.not, label %._crit_edge236.loopexit, label %.lr.ph235.1

.lr.ph235.1:                                      ; preds = %.lr.ph235
  %i.dl = load i32, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr i8, ptr %i.j, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %i.dq = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.dr = load i32, ptr %i.q, align 8, !tbaa !31
  %i.ds = load ptr, ptr %2, align 8, !tbaa !42
  %i.dt = lshr i32 %i.dq, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 1, !tbaa !13
  %i.dx = tail call i32 @llvm.bswap.i32(i32 %i.dw)
  %i.dy = and i32 %i.dq, 7
  %i.dz = shl i32 %i.dx, %i.dy
  %i.ea = add i32 %i.dq, 2
  %i.eb = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 %i.ea)
  store i32 %i.eb, ptr %i.o, align 8, !tbaa !30
  %sh.diff213.1 = lshr i32 %i.dz, 29
  %tr.sh.diff214.1 = trunc nuw nsw i32 %sh.diff213.1 to i8
  %i.ec = and i8 %tr.sh.diff214.1, 6
  %i.ed = add i8 %i.dp, -2
  %i.ee = sub i8 %i.ed, %i.ec
  %i.ef = add i32 %i.dl, -2
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %i.j, i64 %i.eg
  store i8 %i.ee, ptr %i.eh, align 1, !tbaa !13
  %exitcond276.not.1 = icmp eq i32 %i.ci, 2
  br i1 %exitcond276.not.1, label %._crit_edge236.loopexit, label %.lr.ph235.2

.lr.ph235.2:                                      ; preds = %.lr.ph235.1
  %i.ei = load i32, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr i8, ptr %i.j, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 -2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !13
  %i.en = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.eo = load i32, ptr %i.q, align 8, !tbaa !31
  %i.ep = load ptr, ptr %2, align 8, !tbaa !42
  %i.eq = lshr i32 %i.en, 3
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.er
  %i.et = load i32, ptr %i.es, align 1, !tbaa !13
  %i.eu = tail call i32 @llvm.bswap.i32(i32 %i.et)
  %i.ev = and i32 %i.en, 7
  %i.ew = shl i32 %i.eu, %i.ev
  %i.ex = add i32 %i.en, 2
  %i.ey = tail call i32 @llvm.umin.i32(i32 %i.eo, i32 %i.ex)
  store i32 %i.ey, ptr %i.o, align 8, !tbaa !30
  %sh.diff213.2 = lshr i32 %i.ew, 29
  %tr.sh.diff214.2 = trunc nuw nsw i32 %sh.diff213.2 to i8
  %i.ez = and i8 %tr.sh.diff214.2, 6
  %i.fa = add i8 %i.em, -2
  %i.fb = sub i8 %i.fa, %i.ez
  %i.fc = add i32 %i.ei, -3
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %i.j, i64 %i.fd
  store i8 %i.fb, ptr %i.fe, align 1, !tbaa !13
  br label %._crit_edge236.loopexit

._crit_edge236.loopexit:                          ; preds = %.lr.ph235.2, %.lr.ph235.1, %.lr.ph235
  %.pre297 = load i32, ptr %i.a, align 8, !tbaa !69
  br label %._crit_edge236

._crit_edge236:                                   ; preds = %._crit_edge236.loopexit, %bb.e
  %i.ff = phi i32 [ %.pre297, %._crit_edge236.loopexit ], [ 1, %bb.e ] ; 5 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr @ceil_log2, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !13
  %i.fj = sext i8 %i.fi to i32                    ; 2 uses
  %i.fk = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.fl = load i32, ptr %i.q, align 8, !tbaa !31
  %i.fm = load ptr, ptr %2, align 8, !tbaa !42
  %i.fn = lshr i32 %i.fk, 3
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 1, !tbaa !13
  %i.fr = tail call i32 @llvm.bswap.i32(i32 %i.fq)
  %i.fs = and i32 %i.fk, 7
  %i.ft = shl i32 %i.fr, %i.fs
  %i.fu = sub nsw i32 32, %i.fj
  %i.fv = lshr i32 %i.ft, %i.fu                   ; 2 uses
  %i.fw = add i32 %i.fk, %i.fj
  %i.fx = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 %i.fw)
  store i32 %i.fx, ptr %i.o, align 8, !tbaa !30
  %i.fy = icmp sgt i32 %i.ff, 0
  br i1 %i.fy, label %.lr.ph239.preheader, label %get_bits1_vector.exit202

.lr.ph239.preheader:                              ; preds = %._crit_edge236
  %i.fz = zext nneg i32 %i.ff to i64              ; 2 uses
  br label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %.lr.ph239
  %indvars.iv277 = phi i64 [ 0, %.lr.ph239.preheader ], [ %indvars.iv.next278, %.lr.ph239 ] ; 2 uses
  %i.ga = load i32, ptr %i.o, align 8, !tbaa !30  ; 4 uses
  %i.gb = load ptr, ptr %2, align 8, !tbaa !42
  %i.gc = lshr i32 %i.ga, 3
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !13
  %i.gg = load i32, ptr %i.q, align 8, !tbaa !31
  %i.gh = icmp slt i32 %i.ga, %i.gg
  %i.gi = zext i1 %i.gh to i32
  %spec.select.i203 = add i32 %i.ga, %i.gi
  %i.gj = zext i8 %i.gf to i32
  %i.gk = and i32 %i.ga, 7
  %i.gl = shl nuw nsw i32 %i.gj, %i.gk
  store i32 %spec.select.i203, ptr %i.o, align 8, !tbaa !30
  %i.gm = trunc i32 %i.gl to i8
  %i.gn = lshr i8 %i.gm, 7
  %i.go = sub nuw nsw i64 %i.fz, %indvars.iv277
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.go
  store i8 %i.gn, ptr %i.gp, align 1, !tbaa !13
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next278, %i.fz
  br i1 %exitcond281.not, label %get_bits1_vector.exit202, label %.lr.ph239, !llvm.loop !234

bb.f:                                             ; preds = %bb.a
  %i.gq = trunc nuw nsw i32 %i.ak to i8
  store i8 %i.gq, ptr %i.j, align 8, !tbaa !13
  %i.gr = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.gs = load i32, ptr %i.q, align 8, !tbaa !31
  %i.gt = load ptr, ptr %2, align 8, !tbaa !42
  %i.gu = lshr i32 %i.gr, 3
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 1, !tbaa !13
  %i.gy = tail call i32 @llvm.bswap.i32(i32 %i.gx)
  %i.gz = and i32 %i.gr, 7
  %i.ha = shl i32 %i.gy, %i.gz
  %i.hb = lshr i32 %i.ha, 30                      ; 5 uses
  %i.hc = add i32 %i.gr, 2
  %i.hd = tail call i32 @llvm.umin.i32(i32 %i.gs, i32 %i.hc)
  store i32 %i.hd, ptr %i.o, align 8, !tbaa !30
  %i.he = add nuw nsw i32 %i.hb, 1                ; 5 uses
  store i32 %i.he, ptr %i.a, align 8, !tbaa !69
  %i.hf = trunc nuw nsw i32 %4 to i8
  %i.hg = zext nneg i32 %i.he to i64              ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.hg
  store i8 %i.hf, ptr %i.hh, align 1, !tbaa !13
  %.not253 = icmp eq i32 %i.hb, 0
  br i1 %.not253, label %._crit_edge231, label %.lr.ph230

.lr.ph230:                                        ; preds = %bb.f
  %.pre296 = load i8, ptr %i.j, align 8, !tbaa !13
  %i.hi = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.hj = load i32, ptr %i.q, align 8, !tbaa !31
  %i.hk = load ptr, ptr %2, align 8, !tbaa !42
  %i.hl = lshr i32 %i.hi, 3
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 1, !tbaa !13
  %i.hp = tail call i32 @llvm.bswap.i32(i32 %i.ho)
  %i.hq = and i32 %i.hi, 7
  %i.hr = shl i32 %i.hp, %i.hq
  %i.hs = add i32 %i.hi, 2
  %i.ht = tail call i32 @llvm.umin.i32(i32 %i.hj, i32 %i.hs)
  store i32 %i.ht, ptr %i.o, align 8, !tbaa !30
  %sh.diff211 = lshr i32 %i.hr, 29
  %tr.sh.diff212 = trunc nuw nsw i32 %sh.diff211 to i8
  %i.hu = and i8 %tr.sh.diff212, 6
  %i.hv = add i8 %.pre296, 2
  %i.hw = add i8 %i.hv, %i.hu                     ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 106633
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !13
  %exitcond270.not = icmp eq i32 %i.hb, 1
  br i1 %exitcond270.not, label %._crit_edge231, label %.lr.ph230.1

.lr.ph230.1:                                      ; preds = %.lr.ph230
  %i.hy = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.hz = load i32, ptr %i.q, align 8, !tbaa !31
  %i.ia = load ptr, ptr %2, align 8, !tbaa !42
  %i.ib = lshr i32 %i.hy, 3
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 1, !tbaa !13
  %i.if = tail call i32 @llvm.bswap.i32(i32 %i.ie)
  %i.ig = and i32 %i.hy, 7
  %i.ih = shl i32 %i.if, %i.ig
  %i.ii = add i32 %i.hy, 2
  %i.ij = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 %i.ii)
  store i32 %i.ij, ptr %i.o, align 8, !tbaa !30
  %sh.diff211.1 = lshr i32 %i.ih, 29
  %tr.sh.diff212.1 = trunc nuw nsw i32 %sh.diff211.1 to i8
  %i.ik = and i8 %tr.sh.diff212.1, 6
  %i.il = add i8 %i.hw, 2
  %i.im = add i8 %i.il, %i.ik                     ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 106634
  store i8 %i.im, ptr %i.in, align 2, !tbaa !13
  %exitcond270.not.1 = icmp eq i32 %i.hb, 2
  br i1 %exitcond270.not.1, label %._crit_edge231, label %.lr.ph230.2

.lr.ph230.2:                                      ; preds = %.lr.ph230.1
  %i.io = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.ip = load i32, ptr %i.q, align 8, !tbaa !31
  %i.iq = load ptr, ptr %2, align 8, !tbaa !42
  %i.ir = lshr i32 %i.io, 3
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 1, !tbaa !13
  %i.iv = tail call i32 @llvm.bswap.i32(i32 %i.iu)
  %i.iw = and i32 %i.io, 7
  %i.ix = shl i32 %i.iv, %i.iw
  %i.iy = add i32 %i.io, 2
  %i.iz = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 %i.iy)
  store i32 %i.iz, ptr %i.o, align 8, !tbaa !30
  %sh.diff211.2 = lshr i32 %i.ix, 29
  %tr.sh.diff212.2 = trunc nuw nsw i32 %sh.diff211.2 to i8
  %i.ja = and i8 %tr.sh.diff212.2, 6
  %i.jb = add i8 %i.im, 2
  %i.jc = add i8 %i.jb, %i.ja
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 106635
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !13
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %.lr.ph230, %.lr.ph230.1, %.lr.ph230.2, %bb.f
  %i.je = getelementptr inbounds nuw i8, ptr @ceil_log2, i64 %i.hg
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !13
  %i.jg = sext i8 %i.jf to i32                    ; 2 uses
  %i.jh = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.ji = load i32, ptr %i.q, align 8, !tbaa !31
  %i.jj = load ptr, ptr %2, align 8, !tbaa !42
  %i.jk = lshr i32 %i.jh, 3
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 1, !tbaa !13
  %i.jo = add i32 %i.jh, %i.jg
  %i.jp = tail call i32 @llvm.umin.i32(i32 %i.ji, i32 %i.jo)
  store i32 %i.jp, ptr %i.o, align 8, !tbaa !30
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.jr = load i32, ptr %i.o, align 8, !tbaa !30  ; 4 uses
  %i.js = load ptr, ptr %2, align 8, !tbaa !42
  %i.jt = lshr i32 %i.jr, 3
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !13
  %i.jx = load i32, ptr %i.q, align 8, !tbaa !31
  %i.jy = icmp slt i32 %i.jr, %i.jx
  %i.jz = zext i1 %i.jy to i32
  %spec.select.i204 = add i32 %i.jr, %i.jz
  %i.ka = zext i8 %i.jw to i32
  %i.kb = and i32 %i.jr, 7
  %i.kc = shl nuw nsw i32 %i.ka, %i.kb
  store i32 %spec.select.i204, ptr %i.o, align 8, !tbaa !30
  %i.kd = trunc i32 %i.kc to i8
  %i.ke = lshr i8 %i.kd, 7
  store i8 %i.ke, ptr %i.jq, align 1, !tbaa !13
  %exitcond275.not = icmp eq i32 %i.hb, 0
  br i1 %exitcond275.not, label %get_bits1_vector.exit202.loopexit257, label %bb.g

bb.g:                                             ; preds = %._crit_edge231
  %i.kf = load i32, ptr %i.o, align 8, !tbaa !30  ; 4 uses
  %i.kg = load ptr, ptr %2, align 8, !tbaa !42
  %i.kh = lshr i32 %i.kf, 3
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !13
  %i.kl = load i32, ptr %i.q, align 8, !tbaa !31
  %i.km = icmp slt i32 %i.kf, %i.kl
  %i.kn = zext i1 %i.km to i32
  %spec.select.i204.1 = add i32 %i.kf, %i.kn
  %i.ko = zext i8 %i.kk to i32
  %i.kp = and i32 %i.kf, 7
  %i.kq = shl nuw nsw i32 %i.ko, %i.kp
  store i32 %spec.select.i204.1, ptr %i.o, align 8, !tbaa !30
  %i.kr = trunc i32 %i.kq to i8
  %i.ks = lshr i8 %i.kr, 7
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %i.ks, ptr %i.kt, align 2, !tbaa !13
  %exitcond275.not.1 = icmp eq i32 %i.he, 2
  br i1 %exitcond275.not.1, label %get_bits1_vector.exit202.loopexit257, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ku = load i32, ptr %i.o, align 8, !tbaa !30  ; 4 uses
  %i.kv = load ptr, ptr %2, align 8, !tbaa !42
  %i.kw = lshr i32 %i.ku, 3
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !13
  %i.la = load i32, ptr %i.q, align 8, !tbaa !31
  %i.lb = icmp slt i32 %i.ku, %i.la
  %i.lc = zext i1 %i.lb to i32
  %spec.select.i204.2 = add i32 %i.ku, %i.lc
  %i.ld = zext i8 %i.kz to i32
  %i.le = and i32 %i.ku, 7
  %i.lf = shl nuw nsw i32 %i.ld, %i.le
  store i32 %spec.select.i204.2, ptr %i.o, align 8, !tbaa !30
  %i.lg = trunc i32 %i.lf to i8
  %i.lh = lshr i8 %i.lg, 7
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !13
  %exitcond275.not.2 = icmp eq i32 %i.he, 3
  br i1 %exitcond275.not.2, label %get_bits1_vector.exit202.loopexit257, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.lj = load i32, ptr %i.o, align 8, !tbaa !30  ; 4 uses
  %i.lk = load ptr, ptr %2, align 8, !tbaa !42
  %i.ll = lshr i32 %i.lj, 3
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !13
  %i.lp = load i32, ptr %i.q, align 8, !tbaa !31
  %i.lq = icmp slt i32 %i.lj, %i.lp
  %i.lr = zext i1 %i.lq to i32
  %spec.select.i204.3 = add i32 %i.lj, %i.lr
  %i.ls = zext i8 %i.lo to i32
  %i.lt = and i32 %i.lj, 7
  %i.lu = shl nuw nsw i32 %i.ls, %i.lt
  store i32 %spec.select.i204.3, ptr %i.o, align 8, !tbaa !30
  %i.lv = trunc i32 %i.lu to i8
  %i.lw = lshr i8 %i.lv, 7
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.lw, ptr %i.lx, align 8, !tbaa !13
  br label %get_bits1_vector.exit202.loopexit257

bb.j:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@read_sbr_grid:bb.a

.lr.ph224:                                        ; preds = %.preheader221
  %i.pl = load i32, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds i8, ptr %i.j, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !13
  %i.pp = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.pq = load i32, ptr %i.q, align 8, !tbaa !31
  %i.pr = load ptr, ptr %2, align 8, !tbaa !42
  %i.ps = lshr i32 %i.pp, 3
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 1, !tbaa !13
  %i.pw = tail call i32 @llvm.bswap.i32(i32 %i.pv)
  %i.px = and i32 %i.pp, 7
  %i.py = shl i32 %i.pw, %i.px
  %i.pz = add i32 %i.pp, 2
  %i.qa = tail call i32 @llvm.umin.i32(i32 %i.pq, i32 %i.pz)
  store i32 %i.qa, ptr %i.o, align 8, !tbaa !30
  %sh.diff = lshr i32 %i.py, 29
  %tr.sh.diff = trunc nuw nsw i32 %sh.diff to i8
  %i.qb = and i8 %tr.sh.diff, 6
  %i.qc = add i8 %i.po, -2
  %i.qd = sub i8 %i.qc, %i.qb
  %i.qe = add i32 %i.pl, -1
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds i8, ptr %i.j, i64 %i.qf
  store i8 %i.qd, ptr %i.qg, align 1, !tbaa !13
  %exitcond260.not = icmp eq i32 %i.mz, 1
  br i1 %exitcond260.not, label %._crit_edge.loopexit, label %.lr.ph224.1

.lr.ph224.1:                                      ; preds = %.lr.ph224
  %i.qh = load i32, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr i8, ptr %i.j, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.qj, i64 -1
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !13
  %i.qm = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.qn = load i32, ptr %i.q, align 8, !tbaa !31
  %i.qo = load ptr, ptr %2, align 8, !tbaa !42
  %i.qp = lshr i32 %i.qm, 3
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qq
  %i.qs = load i32, ptr %i.qr, align 1, !tbaa !13
  %i.qt = tail call i32 @llvm.bswap.i32(i32 %i.qs)
  %i.qu = and i32 %i.qm, 7
  %i.qv = shl i32 %i.qt, %i.qu
  %i.qw = add i32 %i.qm, 2
  %i.qx = tail call i32 @llvm.umin.i32(i32 %i.qn, i32 %i.qw)
  store i32 %i.qx, ptr %i.o, align 8, !tbaa !30
  %sh.diff.1 = lshr i32 %i.qv, 29
  %tr.sh.diff.1 = trunc nuw nsw i32 %sh.diff.1 to i8
  %i.qy = and i8 %tr.sh.diff.1, 6
  %i.qz = add i8 %i.ql, -2
  %i.ra = sub i8 %i.qz, %i.qy
  %i.rb = add i32 %i.qh, -2
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds i8, ptr %i.j, i64 %i.rc
  store i8 %i.ra, ptr %i.rd, align 1, !tbaa !13
  %exitcond260.not.1 = icmp eq i32 %i.mz, 2
  br i1 %exitcond260.not.1, label %._crit_edge.loopexit, label %.lr.ph224.2

.lr.ph224.2:                                      ; preds = %.lr.ph224.1
  %i.re = load i32, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr i8, ptr %i.j, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.rg, i64 -2
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !13
  %i.rj = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.rk = load i32, ptr %i.q, align 8, !tbaa !31
  %i.rl = load ptr, ptr %2, align 8, !tbaa !42
  %i.rm = lshr i32 %i.rj, 3
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rn
  %i.rp = load i32, ptr %i.ro, align 1, !tbaa !13
  %i.rq = tail call i32 @llvm.bswap.i32(i32 %i.rp)
  %i.rr = and i32 %i.rj, 7
  %i.rs = shl i32 %i.rq, %i.rr
  %i.rt = add i32 %i.rj, 2
  %i.ru = tail call i32 @llvm.umin.i32(i32 %i.rk, i32 %i.rt)
  store i32 %i.ru, ptr %i.o, align 8, !tbaa !30
  %sh.diff.2 = lshr i32 %i.rs, 29
  %tr.sh.diff.2 = trunc nuw nsw i32 %sh.diff.2 to i8
  %i.rv = and i8 %tr.sh.diff.2, 6
  %i.rw = add i8 %i.ri, -2
  %i.rx = sub i8 %i.rw, %i.rv
  %i.ry = add i32 %i.re, -3
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds i8, ptr %i.j, i64 %i.rz
  store i8 %i.rx, ptr %i.sa, align 1, !tbaa !13
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph224.2, %.lr.ph224.1, %.lr.ph224
  %.pre295 = load i32, ptr %i.a, align 8, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader221
  %i.sb = phi i32 [ %.pre295, %._crit_edge.loopexit ], [ %i.nd, %.preheader221 ] ; 5 uses
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds i8, ptr @ceil_log2, i64 %i.sc
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !13
  %i.sf = sext i8 %i.se to i32                    ; 2 uses
  %i.sg = load i32, ptr %i.o, align 8, !tbaa !30  ; 3 uses
  %i.sh = load i32, ptr %i.q, align 8, !tbaa !31
  %i.si = load ptr, ptr %2, align 8, !tbaa !42
  %i.sj = lshr i32 %i.sg, 3
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 1, !tbaa !13
  %i.sn = tail call i32 @llvm.bswap.i32(i32 %i.sm)
  %i.so = and i32 %i.sg, 7
  %i.sp = shl i32 %i.sn, %i.so
  %i.sq = sub nsw i32 32, %i.sf
  %i.sr = lshr i32 %i.sp, %i.sq                   ; 2 uses
  %i.ss = add i32 %i.sg, %i.sf
  %i.st = tail call i32 @llvm.umin.i32(i32 %i.sh, i32 %i.ss)
  store i32 %i.st, ptr %i.o, align 8, !tbaa !30
  %i.su = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.sv = icmp sgt i32 %i.sb, 0
  br i1 %i.sv, label %.lr.ph227.preheader, label %get_bits1_vector.exit202

.lr.ph227.preheader:                              ; preds = %._crit_edge
  %wide.trip.count264 = zext nneg i32 %i.sb to i64
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %.lr.ph227
  %indvars.iv261 = phi i64 [ 0, %.lr.ph227.preheader ], [ %indvars.iv.next262, %.lr.ph227 ] ; 2 uses
  %i.sw = load i32, ptr %i.o, align 8, !tbaa !30  ; 4 uses
  %i.sx = load ptr, ptr %2, align 8, !tbaa !42
  %i.sy = lshr i32 %i.sw, 3
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !13
  %i.tc = load i32, ptr %i.q, align 8, !tbaa !31
  %i.td = icmp slt i32 %i.sw, %i.tc
  %i.te = zext i1 %i.td to i32
  %spec.select.i205 = add i32 %i.sw, %i.te
  %i.tf = zext i8 %i.tb to i32
  %i.tg = and i32 %i.sw, 7
  %i.th = shl nuw nsw i32 %i.tf, %i.tg
  store i32 %spec.select.i205, ptr %i.o, align 8, !tbaa !30
  %i.ti = trunc i32 %i.th to i8
  %i.tj = lshr i8 %i.ti, 7
  %i.tk = getelementptr inbounds nuw i8, ptr %i.su, i64 %indvars.iv261
  store i8 %i.tj, ptr %i.tk, align 1, !tbaa !13
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %get_bits1_vector.exit202, label %.lr.ph227, !llvm.loop !0

default.unreachable309:                           ; preds = %bb.a
  unreachable

get_bits1_vector.exit202.thread:                  ; preds = %.lr.ph246.preheader, %._crit_edge243
  store i32 0, ptr %3, align 16, !tbaa !73
  br label %bb.n

get_bits1_vector.exit202.loopexit257:             ; preds = %bb.i, %bb.h, %bb.g, %._crit_edge231
  %i.tl = tail call i32 @llvm.bswap.i32(i32 %i.jn)
  %i.tm = and i32 %i.jh, 7
  %i.tn = shl i32 %i.tl, %i.tm
  %i.to = sub nsw i32 32, %i.jg
  %i.tp = lshr i32 %i.tn, %i.to
  br label %get_bits1_vector.exit202

get_bits1_vector.exit202:                         ; preds = %.lr.ph227, %.lr.ph239, %get_bits1_vector.exit202.loopexit257, %._crit_edge, %._crit_edge236
  %i.tq = phi i32 [ %i.ff, %.lr.ph239 ], [ %i.ff, %._crit_edge236 ], [ %i.sb, %._crit_edge ], [ %i.he, %get_bits1_vector.exit202.loopexit257 ], [ %i.sb, %.lr.ph227 ]
  %.0185 = phi i32 [ %i.fv, %.lr.ph239 ], [ %i.fv, %._crit_edge236 ], [ %i.sr, %._crit_edge ], [ %i.tp, %get_bits1_vector.exit202.loopexit257 ], [ %i.sr, %.lr.ph227 ] ; 2 uses
  store i32 %i.aa, ptr %3, align 16, !tbaa !73
  %i.tr = icmp sgt i32 %.0185, -1
  br i1 %i.tr, label %bb.n, label %bb.m

bb.m:                                             ; preds = %get_bits1_vector.exit202
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5, i32 noundef 738) #12
  tail call void @abort() #13
  unreachable

bb.n:                                             ; preds = %get_bits1_vector.exit202.thread, %get_bits1_vector.exit202
  %i.ts = phi i32 [ %i.an, %get_bits1_vector.exit202.thread ], [ %i.tq, %get_bits1_vector.exit202 ] ; 7 uses
  %.0185207 = phi i32 [ 0, %get_bits1_vector.exit202.thread ], [ %.0185, %get_bits1_vector.exit202 ] ; 9 uses
  %i.tt = add nsw i32 %i.ts, 1                    ; 3 uses
  %i.tu = icmp sgt i32 %.0185207, %i.tt
  br i1 %i.tu, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.n
  %.not197247 = icmp slt i32 %i.ts, 1
  br i1 %.not197247, label %._crit_edge250, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %.preheader
  %wide.trip.count293 = zext nneg i32 %i.tt to i64
  br label %.lr.ph249

bb.o:                                             ; preds = %bb.n
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.tw, i32 noundef 16, ptr noundef nonnull @.str.26, i32 noundef %.0185207) #12
  br label %bb.ad

bb.p:                                             ; preds = %.lr.ph249
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge250, label %.lr.ph249, !llvm.loop !235

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %bb.p
  %indvars.iv290 = phi i64 [ 1, %.lr.ph249.preheader ], [ %indvars.iv.next291, %bb.p ] ; 2 uses
  %i.tx = getelementptr i8, ptr %i.j, i64 %indvars.iv290 ; 2 uses
  %i.ty = getelementptr i8, ptr %i.tx, i64 -1
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !13
  %i.ua = load i8, ptr %i.tx, align 1, !tbaa !13
  %.not200 = icmp ult i8 %i.tz, %i.ua
  br i1 %.not200, label %bb.p, label %bb.q

bb.q:                                             ; preds = %.lr.ph249
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.uc, i32 noundef 16, ptr noundef nonnull @.str.27) #12
  br label %bb.ad

._crit_edge250:                                   ; preds = %bb.p, %.preheader
  %i.ud = icmp sgt i32 %i.ts, 1                   ; 2 uses
  %i.ue = select i1 %i.ud, i32 2, i32 1           ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ue, ptr %i.uf, align 8, !tbaa !72
  %i.ug = load i8, ptr %i.j, align 8, !tbaa !13
  %i.uh = getelementptr inbounds nuw i8, ptr %3, i64 106642 ; 2 uses
  store i8 %i.ug, ptr %i.uh, align 2, !tbaa !13
  %i.ui = sext i32 %i.ts to i64
  %i.uj = getelementptr inbounds i8, ptr %i.j, i64 %i.ui
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !13
  %i.ul = zext nneg i32 %i.ue to i64
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.ul
  store i8 %i.uk, ptr %i.um, align 1, !tbaa !13
  br i1 %i.ud, label %bb.r, label %bb.z

bb.r:                                             ; preds = %._crit_edge250
  %i.un = icmp eq i32 %i.aa, 0
  br i1 %i.un, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.uo = lshr i32 %i.ts, 1
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.up = and i32 %i.z, 1073741824
  %.not198 = icmp eq i32 %i.up, 0
  br i1 %.not198, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.uq = tail call i32 @llvm.smax.i32(i32 %.0185207, i32 2)
  %reass.sub = sub nsw i32 %i.ts, %i.uq
  %i.ur = add nsw i32 %reass.sub, 1
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  switch i32 %.0185207, label %bb.x [
    i32 0, label %bb.y
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.us = add nsw i32 %i.ts, -1
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ut = add nsw i32 %.0185207, -1
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.w, %bb.x, %bb.s
  %.0 = phi i32 [ %i.uo, %bb.s ], [ %i.ur, %bb.u ], [ %i.us, %bb.w ], [ %i.ut, %bb.x ], [ 1, %bb.v ]
  %i.uu = sext i32 %.0 to i64
  %i.uv = getelementptr inbounds i8, ptr %i.j, i64 %i.uu
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !13
  %i.ux = getelementptr inbounds nuw i8, ptr %3, i64 106643
  store i8 %i.uw, ptr %i.ux, align 1, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge250
  %i.uy = getelementptr inbounds nuw i8, ptr %3, i64 14580
  %i.uz = getelementptr inbounds nuw i8, ptr %3, i64 14584 ; 4 uses
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !14
  %i.vb = icmp ne i32 %i.va, %i.b
  %.neg = sext i1 %i.vb to i32
  store i32 %.neg, ptr %i.uy, align 4, !tbaa !14
  store i32 -1, ptr %i.uz, align 8, !tbaa !14
  %i.vc = trunc i32 %i.aa to i1
  %i.vd = icmp ne i32 %.0185207, 0
  %or.cond = and i1 %i.vd, %i.vc
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ve = sub nuw nsw i32 %i.tt, %.0185207
  store i32 %i.ve, ptr %i.uz, align 8, !tbaa !14
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.vf = icmp eq i32 %i.aa, 2
  %i.vg = icmp samesign ugt i32 %.0185207, 1
  %or.cond3 = and i1 %i.vf, %i.vg
  br i1 %or.cond3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.vh = add nsw i32 %.0185207, -1
  store i32 %i.vh, ptr %i.uz, align 8, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac, %bb.ab, %bb.q, %bb.o, %bb.k, %bb.c
  %.0187 = phi i32 [ -1, %bb.o ], [ -1, %bb.q ], [ -1, %bb.k ], [ -1, %bb.c ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 0, %bb.aa ]
  ret i32 %.0187
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @read_sbr_dtdf(i32 %.16.val, ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %.16.val, 0
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !69   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %.lr.ph, label %get_bits1_vector.exit27

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !30   ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !42
  %i.i = lshr i32 %i.g, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = load i32, ptr %i.f, align 8, !tbaa !31
  %i.n = icmp slt i32 %i.g, %i.m
  %i.o = zext i1 %i.n to i32
  %spec.select.i = add i32 %i.g, %i.o
  %i.p = zext i8 %i.l to i32
  %i.q = and i32 %i.g, 7
  %i.r = shl nuw nsw i32 %i.p, %i.q
  store i32 %spec.select.i, ptr %i.e, align 8, !tbaa !30
  %i.s = trunc i32 %i.r to i8
  %i.t = lshr i8 %i.s, 7
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.t, ptr %i.u, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %get_bits1_vector.exit27, label %bb.c, !llvm.loop !0

get_bits1_vector.exit27:                          ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !72   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph4, label %get_bits1_vector.exit25

.lr.ph4:                                          ; preds = %get_bits1_vector.exit27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count14 = zext nneg i32 %i.x to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph4, %bb.d
  %indvars.iv11 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next12, %bb.d ] ; 2 uses
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !30  ; 4 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !42
  %i.ad = lshr i32 %i.ab, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !31
  %i.ai = icmp slt i32 %i.ab, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %spec.select.i28 = add i32 %i.ab, %i.aj
  %i.ak = zext i8 %i.ag to i32
  %i.al = and i32 %i.ab, 7
  %i.am = shl nuw nsw i32 %i.ak, %i.al
  store i32 %spec.select.i28, ptr %i.z, align 8, !tbaa !30
  %i.an = trunc i32 %i.am to i8
  %i.ao = lshr i8 %i.an, 7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv11
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !13
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1 ; 2 uses
  %exitcond15.not = icmp eq i64 %indvars.iv.next12, %wide.trip.count14
  br i1 %exitcond15.not, label %get_bits1_vector.exit25, label %bb.d, !llvm.loop !0

bb.e:                                             ; preds = %bb.a
  br i1 %i.d, label %.lr.ph6, label %get_bits1_vector.exit23

.lr.ph6:                                          ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count19 = zext nneg i32 %i.c to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph6, %bb.f
  %indvars.iv16 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next17, %bb.f ] ; 2 uses
  %i.as = load i32, ptr %i.aq, align 8, !tbaa !30 ; 4 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !42
  %i.au = lshr i32 %i.as, 3
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = load i32, ptr %i.ar, align 8, !tbaa !31
  %i.az = icmp slt i32 %i.as, %i.ay
  %i.ba = zext i1 %i.az to i32
  %spec.select.i29 = add i32 %i.as, %i.ba
  %i.bb = zext i8 %i.ax to i32
  %i.bc = and i32 %i.as, 7
  %i.bd = shl nuw nsw i32 %i.bb, %i.bc
  store i32 %spec.select.i29, ptr %i.aq, align 8, !tbaa !30
  %i.be = trunc i32 %i.bd to i8
  %i.bf = lshr i8 %i.be, 7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv16
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !13
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1 ; 2 uses
  %exitcond20.not = icmp eq i64 %indvars.iv.next17, %wide.trip.count19
  br i1 %exitcond20.not, label %get_bits1_vector.exit23, label %bb.f, !llvm.loop !0

get_bits1_vector.exit23:                          ; preds = %bb.f, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !72 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph8, label %get_bits1_vector.exit25

.lr.ph8:                                          ; preds = %get_bits1_vector.exit23
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count24 = zext nneg i32 %i.bj to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph8, %bb.g
  %indvars.iv21 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next22, %bb.g ] ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 8, !tbaa !30 ; 4 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !42
  %i.bp = lshr i32 %i.bn, 3
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !13
  %i.bt = load i32, ptr %i.bm, align 8, !tbaa !31
  %i.bu = icmp slt i32 %i.bn, %i.bt
  %i.bv = zext i1 %i.bu to i32
  %spec.select.i30 = add i32 %i.bn, %i.bv
  %i.bw = zext i8 %i.bs to i32
  %i.bx = and i32 %i.bn, 7
  %i.by = shl nuw nsw i32 %i.bw, %i.bx
  store i32 %spec.select.i30, ptr %i.bl, align 8, !tbaa !30
  %i.bz = trunc i32 %i.by to i8
  %i.ca = lshr i8 %i.bz, 7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv21
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !13
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count24
  br i1 %exitcond25.not, label %get_bits1_vector.exit25, label %bb.g, !llvm.loop !0

get_bits1_vector.exit25:                          ; preds = %bb.d, %bb.g, %get_bits1_vector.exit27, %get_bits1_vector.exit23
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @read_sbr_envelope(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 347568
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 347572
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %i.d = and i32 %i.c, 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !68   ; 2 uses
  %i.g = icmp eq i32 %i.f, 1
  %i.h = select i1 %i.g, i32 2, i32 1             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 347568 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 347572
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %.not161 = icmp eq i32 %i.f, 0
  br i1 %.not161, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.n = load i32, ptr %i.m, align 4, !tbaa !71
  %.not137 = icmp eq i32 %i.n, 0                  ; 3 uses
  %. = select i1 %.not137, i32 6, i32 5
  %.144 = select i1 %.not137, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_sbr_vlc, i64 16), ptr getelementptr inbounds nuw (i8, ptr @ff_aac_sbr_vlc, i64 48)
  %.145 = select i1 %.not137, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_sbr_vlc, i64 24), ptr getelementptr inbounds nuw (i8, ptr @ff_aac_sbr_vlc, i64 56)
  br label %bb.e

bb.d:                                             ; preds = %.thread, %bb.b
  %i.o = phi i32 [ %i.d, %.thread ], [ %i.l, %bb.b ]
  %i.p = phi ptr [ %i.a, %.thread ], [ %i.i, %bb.b ]
  %i.q = phi i32 [ 1, %.thread ], [ %i.h, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !71
  %.not136 = icmp eq i32 %i.s, 0                  ; 3 uses
  %.146 = select i1 %.not136, i32 7, i32 6
  %ff_aac_sbr_vlc. = select i1 %.not136, ptr @ff_aac_sbr_vlc, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_sbr_vlc, i64 32)
  %.147 = select i1 %.not136, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_sbr_vlc, i64 8), ptr getelementptr inbounds nuw (i8, ptr @ff_aac_sbr_vlc, i64 40)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi i32 [ %i.l, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %i.i, %bb.c ], [ %i.p, %bb.d ] ; 9 uses
  %i.v = phi i32 [ %i.h, %bb.c ], [ %i.q, %bb.d ] ; 6 uses
  %.0129 = phi i32 [ %., %bb.c ], [ %.146, %bb.d ] ; 2 uses
  %.0126.in = phi ptr [ %.144, %bb.c ], [ %ff_aac_sbr_vlc., %bb.d ]
  %.0.in = phi ptr [ %.145, %bb.c ], [ %.147, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !242 ; 3 uses
  %.0126 = load ptr, ptr %.0126.in, align 16, !tbaa !242 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !69   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph183, label %._crit_edge

.lr.ph183:                                        ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 102608 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 16 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.ae = sub nuw nsw i32 32, %.0129
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 106656
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 106662
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph183, %bb.ag
  %indvars.iv208 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next209, %bb.ag ] ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv208
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %.not138 = icmp eq i8 %i.ak, 0
  br i1 %.not138, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nuw nsw i64 %indvars.iv208, 1       ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 5 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13  ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv208
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = icmp eq i8 %i.an, %i.ap
  br i1 %i.aq, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.g
  %i.ar = zext i8 %i.an to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !14
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph179, label %.loopexit

.lr.ph179:                                        ; preds = %.preheader
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %indvars.iv208
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %i.al
  br label %bb.i

bb.h:                                             ; preds = %get_vlc2.exit159
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.ax = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !14
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next203, %i.bb
  br i1 %i.bc, label %bb.i, label %.loopexit, !llvm.loop !236

bb.i:                                             ; preds = %.lr.ph179, %bb.h
  %indvars.iv202 = phi i64 [ 0, %.lr.ph179 ], [ %indvars.iv.next203, %bb.h ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv202
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = load i32, ptr %i.ac, align 8, !tbaa !30 ; 4 uses
  %i.bg = load i32, ptr %i.ad, align 8, !tbaa !31 ; 3 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.bi = lshr i32 %i.bf, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 1, !tbaa !13
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bn = and i32 %i.bf, 7
  %i.bo = shl i32 %i.bm, %i.bn
  %i.bp = lshr i32 %i.bo, 23
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.bq ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !13
  %i.bt = sext i16 %i.bs to i32                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !13 ; 2 uses
  %i.bw = sext i16 %i.bv to i32                   ; 3 uses
  %i.bx = icmp slt i16 %i.bv, 0
  br i1 %i.bx, label %bb.j, label %get_vlc2.exit159

bb.j:                                             ; preds = %bb.i
  %i.by = add i32 %i.bf, 9
  %i.bz = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.by) ; 4 uses
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !13
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cf = and i32 %i.bz, 7
  %i.cg = shl i32 %i.ce, %i.cf
  %i.ch = add nsw i32 %i.bw, 32
  %i.ci = lshr i32 %i.cg, %i.ch
  %i.cj = add i32 %i.ci, %i.bt
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.ck ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !13
  %i.cn = sext i16 %i.cm to i32                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !13 ; 2 uses
  %i.cq = sext i16 %i.cp to i32                   ; 2 uses
  %i.cr = icmp slt i16 %i.cp, 0
  br i1 %i.cr, label %bb.k, label %get_vlc2.exit159

bb.k:                                             ; preds = %bb.j
  %i.cs = sub i32 %i.bz, %i.bw
  %i.ct = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.cs) ; 3 uses
  %i.cu = lshr i32 %i.ct, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 1, !tbaa !13
  %i.cy = tail call i32 @llvm.bswap.i32(i32 %i.cx)
  %i.cz = and i32 %i.ct, 7
  %i.da = shl i32 %i.cy, %i.cz
  %i.db = add nsw i32 %i.cq, 32
  %i.dc = lshr i32 %i.da, %i.db
  %i.dd = add i32 %i.dc, %i.cn
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !13
  %i.dh = zext i16 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !13
  %i.dk = sext i16 %i.dj to i32
  br label %get_vlc2.exit159

get_vlc2.exit159:                                 ; preds = %bb.i, %bb.j, %bb.k
  %.167.i156 = phi i32 [ %i.bt, %bb.i ], [ %i.dh, %bb.k ], [ %i.cn, %bb.j ]
  %.165.i157 = phi i32 [ %i.bf, %bb.i ], [ %i.ct, %bb.k ], [ %i.bz, %bb.j ]
  %.1.i158 = phi i32 [ %i.bw, %bb.i ], [ %i.dk, %bb.k ], [ %i.cq, %bb.j ]
  %i.dl = add i32 %.1.i158, %.165.i157
  %i.dm = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.dl)
  store i32 %i.dm, ptr %i.ac, align 8, !tbaa !30
  %i.dn = mul nsw i32 %.167.i156, %i.v
  %i.do = trunc i32 %i.dn to i8
  %i.dp = add i8 %i.be, %i.do                     ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv202
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !13
  %i.dr = icmp slt i8 %i.dp, 0
  br i1 %i.dr, label %bb.l, label %bb.h

bb.l:                                             ; preds = %get_vlc2.exit159
  %i.ds = zext i8 %i.dp to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.du, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %i.ds) #12
  br label %bb.ah

bb.m:                                             ; preds = %bb.g
  %.not139 = icmp eq i8 %i.an, 0
  br i1 %.not139, label %.preheader163, label %.preheader165

.preheader165:                                    ; preds = %bb.m
  %i.dv = zext i8 %i.an to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !14
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader165
  %i.dz = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %indvars.iv208
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %i.al
  br label %bb.r

.preheader163:                                    ; preds = %bb.m
  %i.eb = load i32, ptr %i.u, align 4, !tbaa !14
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph177, label %.loopexit

.lr.ph177:                                        ; preds = %.preheader163
  %i.ed = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %indvars.iv208 ; 2 uses
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %i.al ; 2 uses
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !13
  %i.eg = load i32, ptr %i.ac, align 8, !tbaa !30 ; 4 uses
  %i.eh = load i32, ptr %i.ad, align 8, !tbaa !31 ; 3 uses
  %i.ei = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.ej = lshr i32 %i.eg, 3
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 1, !tbaa !13
  %i.en = tail call i32 @llvm.bswap.i32(i32 %i.em)
  %i.eo = and i32 %i.eg, 7
  %i.ep = shl i32 %i.en, %i.eo
  %i.eq = lshr i32 %i.ep, 23
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.er ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !13
  %i.eu = sext i16 %i.et to i32                   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !13 ; 2 uses
  %i.ex = sext i16 %i.ew to i32                   ; 3 uses
  %i.ey = icmp slt i16 %i.ew, 0
  br i1 %i.ey, label %bb.n, label %get_vlc2.exit151.peel

bb.n:                                             ; preds = %.lr.ph177
  %i.ez = add i32 %i.eg, 9
  %i.fa = tail call i32 @llvm.umin.i32(i32 %i.eh, i32 %i.ez) ; 4 uses
  %i.fb = lshr i32 %i.fa, 3
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 1, !tbaa !13
  %i.ff = tail call i32 @llvm.bswap.i32(i32 %i.fe)
  %i.fg = and i32 %i.fa, 7
  %i.fh = shl i32 %i.ff, %i.fg
  %i.fi = add nsw i32 %i.ex, 32
  %i.fj = lshr i32 %i.fh, %i.fi
  %i.fk = add i32 %i.fj, %i.eu
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.fl ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !13
  %i.fo = sext i16 %i.fn to i32                   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !13 ; 2 uses
  %i.fr = sext i16 %i.fq to i32                   ; 2 uses
  %i.fs = icmp slt i16 %i.fq, 0
  br i1 %i.fs, label %bb.o, label %get_vlc2.exit151.peel

bb.o:                                             ; preds = %bb.n
  %i.ft = sub i32 %i.fa, %i.ex
  %i.fu = tail call i32 @llvm.umin.i32(i32 %i.eh, i32 %i.ft) ; 3 uses
  %i.fv = lshr i32 %i.fu, 3
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 1, !tbaa !13
  %i.fz = tail call i32 @llvm.bswap.i32(i32 %i.fy)
  %i.ga = and i32 %i.fu, 7
  %i.gb = shl i32 %i.fz, %i.ga
  %i.gc = add nsw i32 %i.fr, 32
  %i.gd = lshr i32 %i.gb, %i.gc
  %i.ge = add i32 %i.gd, %i.fo
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.gf ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !13
  %i.gi = zext i16 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !13
  %i.gl = sext i16 %i.gk to i32
  br label %get_vlc2.exit151.peel

get_vlc2.exit151.peel:                            ; preds = %bb.o, %bb.n, %.lr.ph177
  %.167.i148.peel = phi i32 [ %i.eu, %.lr.ph177 ], [ %i.gi, %bb.o ], [ %i.fo, %bb.n ]
  %.165.i149.peel = phi i32 [ %i.eg, %.lr.ph177 ], [ %i.fu, %bb.o ], [ %i.fa, %bb.n ]
  %.1.i150.peel = phi i32 [ %i.ex, %.lr.ph177 ], [ %i.gl, %bb.o ], [ %i.fr, %bb.n ]
  %i.gm = add i32 %.1.i150.peel, %.165.i149.peel
  %i.gn = tail call i32 @llvm.umin.i32(i32 %i.eh, i32 %i.gm)
  store i32 %i.gn, ptr %i.ac, align 8, !tbaa !30
  %i.go = mul nsw i32 %.167.i148.peel, %i.v
  %i.gp = trunc i32 %i.go to i8
  %i.gq = add i8 %i.ef, %i.gp                     ; 3 uses
  store i8 %i.gq, ptr %i.ee, align 1, !tbaa !13
  %i.gr = icmp slt i8 %i.gq, 0
  br i1 %i.gr, label %.loopexit199, label %bb.p

bb.p:                                             ; preds = %get_vlc2.exit151.peel
  %i.gs = load i8, ptr %i.am, align 1, !tbaa !13
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !14
  %i.gw = icmp sgt i32 %i.gv, 1
  br i1 %i.gw, label %.peel.next, label %.loopexit

bb.q:                                             ; preds = %get_vlc2.exit155
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gx = load i8, ptr %i.am, align 1, !tbaa !13
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !14
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp slt i64 %indvars.iv.next, %i.hb
  br i1 %i.hc, label %bb.r, label %.loopexit, !llvm.loop !237

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.hd = trunc i64 %indvars.iv to i32
  %i.he = add i32 %i.t, %i.hd
  %i.hf = lshr i32 %i.he, 1
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !13
  %i.hj = load i32, ptr %i.ac, align 8, !tbaa !30 ; 4 uses
  %i.hk = load i32, ptr %i.ad, align 8, !tbaa !31 ; 3 uses
  %i.hl = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.hm = lshr i32 %i.hj, 3
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 1, !tbaa !13
  %i.hq = tail call i32 @llvm.bswap.i32(i32 %i.hp)
  %i.hr = and i32 %i.hj, 7
  %i.hs = shl i32 %i.hq, %i.hr
  %i.ht = lshr i32 %i.hs, 23
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.hu ; 2 uses
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !13
  %i.hx = sext i16 %i.hw to i32                   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !13 ; 2 uses
  %i.ia = sext i16 %i.hz to i32                   ; 3 uses
  %i.ib = icmp slt i16 %i.hz, 0
  br i1 %i.ib, label %bb.s, label %get_vlc2.exit155

bb.s:                                             ; preds = %bb.r
  %i.ic = add i32 %i.hj, 9
  %i.id = tail call i32 @llvm.umin.i32(i32 %i.hk, i32 %i.ic) ; 4 uses
  %i.ie = lshr i32 %i.id, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 1, !tbaa !13
  %i.ii = tail call i32 @llvm.bswap.i32(i32 %i.ih)
  %i.ij = and i32 %i.id, 7
  %i.ik = shl i32 %i.ii, %i.ij
  %i.il = add nsw i32 %i.ia, 32
  %i.im = lshr i32 %i.ik, %i.il
  %i.in = add i32 %i.im, %i.hx
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.io ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !13
  %i.ir = sext i16 %i.iq to i32                   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.it = load i16, ptr %i.is, align 2, !tbaa !13 ; 2 uses
  %i.iu = sext i16 %i.it to i32                   ; 2 uses
  %i.iv = icmp slt i16 %i.it, 0
  br i1 %i.iv, label %bb.t, label %get_vlc2.exit155

bb.t:                                             ; preds = %bb.s
  %i.iw = sub i32 %i.id, %i.ia
  %i.ix = tail call i32 @llvm.umin.i32(i32 %i.hk, i32 %i.iw) ; 3 uses
  %i.iy = lshr i32 %i.ix, 3
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 1, !tbaa !13
  %i.jc = tail call i32 @llvm.bswap.i32(i32 %i.jb)
  %i.jd = and i32 %i.ix, 7
  %i.je = shl i32 %i.jc, %i.jd
  %i.jf = add nsw i32 %i.iu, 32
  %i.jg = lshr i32 %i.je, %i.jf
  %i.jh = add i32 %i.jg, %i.ir
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.ji ; 2 uses
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !13
  %i.jl = zext i16 %i.jk to i32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !13
  %i.jo = sext i16 %i.jn to i32
  br label %get_vlc2.exit155

get_vlc2.exit155:                                 ; preds = %bb.r, %bb.s, %bb.t
  %.167.i152 = phi i32 [ %i.hx, %bb.r ], [ %i.jl, %bb.t ], [ %i.ir, %bb.s ]
  %.165.i153 = phi i32 [ %i.hj, %bb.r ], [ %i.ix, %bb.t ], [ %i.id, %bb.s ]
  %.1.i154 = phi i32 [ %i.ia, %bb.r ], [ %i.jo, %bb.t ], [ %i.iu, %bb.s ]
  %i.jp = add i32 %.1.i154, %.165.i153
  %i.jq = tail call i32 @llvm.umin.i32(i32 %i.hk, i32 %i.jp)
  store i32 %i.jq, ptr %i.ac, align 8, !tbaa !30
  %i.jr = mul nsw i32 %.167.i152, %i.v
  %i.js = trunc i32 %i.jr to i8
  %i.jt = add i8 %i.hi, %i.js                     ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !13
  %i.jv = icmp slt i8 %i.jt, 0
  br i1 %i.jv, label %bb.u, label %bb.q

bb.u:                                             ; preds = %get_vlc2.exit155
  %i.jw = zext i8 %i.jt to i32
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jy, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %i.jw) #12
  br label %bb.ah

bb.v:                                             ; preds = %get_vlc2.exit151
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.jz = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !14
  %i.kd = sext i32 %i.kc to i64
  %i.ke = icmp slt i64 %indvars.iv.next196, %i.kd
  br i1 %i.ke, label %.peel.next, label %.loopexit, !llvm.loop !238

.peel.next:                                       ; preds = %bb.p, %bb.v
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %bb.v ], [ 1, %bb.p ] ; 3 uses
  %indvars.iv195.tr = trunc nuw i64 %indvars.iv195 to i32
  %i.kf = shl nuw i32 %indvars.iv195.tr, 1
  %i.kg = sub nsw i32 %i.kf, %i.t
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %i.ed, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !13
  %i.kk = load i32, ptr %i.ac, align 8, !tbaa !30 ; 4 uses
  %i.kl = load i32, ptr %i.ad, align 8, !tbaa !31 ; 3 uses
  %i.km = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.kn = lshr i32 %i.kk, 3
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 1, !tbaa !13
  %i.kr = tail call i32 @llvm.bswap.i32(i32 %i.kq)
  %i.ks = and i32 %i.kk, 7
  %i.kt = shl i32 %i.kr, %i.ks
  %i.ku = lshr i32 %i.kt, 23
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.kv ; 2 uses
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !13
  %i.ky = sext i16 %i.kx to i32                   ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !13 ; 2 uses
  %i.lb = sext i16 %i.la to i32                   ; 3 uses
  %i.lc = icmp slt i16 %i.la, 0
  br i1 %i.lc, label %bb.w, label %get_vlc2.exit151

bb.w:                                             ; preds = %.peel.next
  %i.ld = add i32 %i.kk, 9
  %i.le = tail call i32 @llvm.umin.i32(i32 %i.kl, i32 %i.ld) ; 4 uses
  %i.lf = lshr i32 %i.le, 3
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 1, !tbaa !13
  %i.lj = tail call i32 @llvm.bswap.i32(i32 %i.li)
  %i.lk = and i32 %i.le, 7
  %i.ll = shl i32 %i.lj, %i.lk
  %i.lm = add nsw i32 %i.lb, 32
  %i.ln = lshr i32 %i.ll, %i.lm
  %i.lo = add i32 %i.ln, %i.ky
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.lp ; 2 uses
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !13
  %i.ls = sext i16 %i.lr to i32                   ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 2
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !13 ; 2 uses
  %i.lv = sext i16 %i.lu to i32                   ; 2 uses
  %i.lw = icmp slt i16 %i.lu, 0
  br i1 %i.lw, label %bb.x, label %get_vlc2.exit151

bb.x:                                             ; preds = %bb.w
  %i.lx = sub i32 %i.le, %i.lb
  %i.ly = tail call i32 @llvm.umin.i32(i32 %i.kl, i32 %i.lx) ; 3 uses
  %i.lz = lshr i32 %i.ly, 3
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 1, !tbaa !13
  %i.md = tail call i32 @llvm.bswap.i32(i32 %i.mc)
  %i.me = and i32 %i.ly, 7
  %i.mf = shl i32 %i.md, %i.me
  %i.mg = add nsw i32 %i.lv, 32
  %i.mh = lshr i32 %i.mf, %i.mg
  %i.mi = add i32 %i.mh, %i.ls
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.mj ; 2 uses
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !13
  %i.mm = zext i16 %i.ml to i32
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 2
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !13
  %i.mp = sext i16 %i.mo to i32
  br label %get_vlc2.exit151

get_vlc2.exit151:                                 ; preds = %.peel.next, %bb.w, %bb.x
  %.167.i148 = phi i32 [ %i.ky, %.peel.next ], [ %i.mm, %bb.x ], [ %i.ls, %bb.w ]
  %.165.i149 = phi i32 [ %i.kk, %.peel.next ], [ %i.ly, %bb.x ], [ %i.le, %bb.w ]
  %.1.i150 = phi i32 [ %i.lb, %.peel.next ], [ %i.mp, %bb.x ], [ %i.lv, %bb.w ]
  %i.mq = add i32 %.1.i150, %.165.i149
  %i.mr = tail call i32 @llvm.umin.i32(i32 %i.kl, i32 %i.mq)
  store i32 %i.mr, ptr %i.ac, align 8, !tbaa !30
  %i.ms = mul nsw i32 %.167.i148, %i.v
  %i.mt = trunc i32 %i.ms to i8
  %i.mu = add i8 %i.kj, %i.mt                     ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv195
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !13
  %i.mw = icmp slt i8 %i.mu, 0
  br i1 %i.mw, label %.loopexit199, label %bb.v

.loopexit199:                                     ; preds = %get_vlc2.exit151.peel, %get_vlc2.exit151
  %.lcssa188 = phi i8 [ %i.mu, %get_vlc2.exit151 ], [ %i.gq, %get_vlc2.exit151.peel ]
  %i.mx = zext i8 %.lcssa188 to i32
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.mz, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %i.mx) #12
  br label %bb.ah

bb.y:                                             ; preds = %bb.f
  %i.na = load i32, ptr %i.ac, align 8, !tbaa !30 ; 3 uses
  %i.nb = load i32, ptr %i.ad, align 8, !tbaa !31
  %i.nc = load ptr, ptr %2, align 8, !tbaa !42
  %i.nd = lshr i32 %i.na, 3
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 1, !tbaa !13
  %i.nh = tail call i32 @llvm.bswap.i32(i32 %i.ng)
  %i.ni = and i32 %i.na, 7
  %i.nj = shl i32 %i.nh, %i.ni
  %i.nk = lshr i32 %i.nj, %i.ae
  %i.nl = add i32 %i.na, %.0129
  %i.nm = tail call i32 @llvm.umin.i32(i32 %i.nb, i32 %i.nl)
  store i32 %i.nm, ptr %i.ac, align 8, !tbaa !30
  %i.nn = mul nuw nsw i32 %i.nk, %i.v
  %i.no = trunc nuw i32 %i.nn to i8
  %i.np = add nuw nsw i64 %indvars.iv208, 1       ; 2 uses
  %i.nq = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %i.np ; 2 uses
  store i8 %i.no, ptr %i.nq, align 16, !tbaa !13
  %i.nr = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.np ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !13
  %i.nt = zext i8 %i.ns to i64
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !14
  %i.nw = icmp sgt i32 %i.nv, 1
  br i1 %i.nw, label %.lr.ph181, label %.loopexit

bb.z:                                             ; preds = %get_vlc2.exit
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %i.nx = load i8, ptr %i.nr, align 1, !tbaa !13
  %i.ny = zext i8 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !14
  %i.ob = sext i32 %i.oa to i64
  %i.oc = icmp slt i64 %indvars.iv.next206, %i.ob
  br i1 %i.oc, label %.lr.ph181, label %.loopexit, !llvm.loop !239

.lr.ph181:                                        ; preds = %bb.y, %bb.z
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %bb.z ], [ 1, %bb.y ] ; 2 uses
  %i.od = getelementptr i8, ptr %i.nq, i64 %indvars.iv205 ; 2 uses
  %i.oe = getelementptr i8, ptr %i.od, i64 -1
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !13
  %i.og = load i32, ptr %i.ac, align 8, !tbaa !30 ; 4 uses
  %i.oh = load i32, ptr %i.ad, align 8, !tbaa !31 ; 3 uses
  %i.oi = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.oj = lshr i32 %i.og, 3
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 1, !tbaa !13
  %i.on = tail call i32 @llvm.bswap.i32(i32 %i.om)
  %i.oo = and i32 %i.og, 7
  %i.op = shl i32 %i.on, %i.oo
  %i.oq = lshr i32 %i.op, 23
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.or ; 2 uses
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !13
  %i.ou = sext i16 %i.ot to i32                   ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 2
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !13 ; 2 uses
  %i.ox = sext i16 %i.ow to i32                   ; 3 uses
  %i.oy = icmp slt i16 %i.ow, 0
  br i1 %i.oy, label %bb.aa, label %get_vlc2.exit

bb.aa:                                            ; preds = %.lr.ph181
  %i.oz = add i32 %i.og, 9
  %i.pa = tail call i32 @llvm.umin.i32(i32 %i.oh, i32 %i.oz) ; 4 uses
  %i.pb = lshr i32 %i.pa, 3
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.pc
  %i.pe = load i32, ptr %i.pd, align 1, !tbaa !13
  %i.pf = tail call i32 @llvm.bswap.i32(i32 %i.pe)
  %i.pg = and i32 %i.pa, 7
  %i.ph = shl i32 %i.pf, %i.pg
  %i.pi = add nsw i32 %i.ox, 32
  %i.pj = lshr i32 %i.ph, %i.pi
  %i.pk = add i32 %i.pj, %i.ou
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.pl ; 2 uses
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !13
  %i.po = sext i16 %i.pn to i32                   ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 2
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !13 ; 2 uses
  %i.pr = sext i16 %i.pq to i32                   ; 2 uses
  %i.ps = icmp slt i16 %i.pq, 0
  br i1 %i.ps, label %bb.ab, label %get_vlc2.exit

bb.ab:                                            ; preds = %bb.aa
  %i.pt = sub i32 %i.pa, %i.ox
  %i.pu = tail call i32 @llvm.umin.i32(i32 %i.oh, i32 %i.pt) ; 3 uses
  %i.pv = lshr i32 %i.pu, 3
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 1, !tbaa !13
  %i.pz = tail call i32 @llvm.bswap.i32(i32 %i.py)
  %i.qa = and i32 %i.pu, 7
  %i.qb = shl i32 %i.pz, %i.qa
  %i.qc = add nsw i32 %i.pr, 32
  %i.qd = lshr i32 %i.qb, %i.qc
  %i.qe = add i32 %i.qd, %i.po
  %i.qf = zext i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.qf ; 2 uses
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !13
  %i.qi = zext i16 %i.qh to i32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 2
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !13
  %i.ql = sext i16 %i.qk to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %.lr.ph181, %bb.aa, %bb.ab
  %.167.i = phi i32 [ %i.ou, %.lr.ph181 ], [ %i.qi, %bb.ab ], [ %i.po, %bb.aa ]
  %.165.i = phi i32 [ %i.og, %.lr.ph181 ], [ %i.pu, %bb.ab ], [ %i.pa, %bb.aa ]
  %.1.i = phi i32 [ %i.ox, %.lr.ph181 ], [ %i.ql, %bb.ab ], [ %i.pr, %bb.aa ]
  %i.qm = add i32 %.1.i, %.165.i
  %i.qn = tail call i32 @llvm.umin.i32(i32 %i.oh, i32 %i.qm)
  store i32 %i.qn, ptr %i.ac, align 8, !tbaa !30
  %i.qo = mul nsw i32 %.167.i, %i.v
  %i.qp = trunc i32 %i.qo to i8
  %i.qq = add i8 %i.of, %i.qp                     ; 3 uses
  store i8 %i.qq, ptr %i.od, align 1, !tbaa !13
  %i.qr = icmp slt i8 %i.qq, 0
  br i1 %i.qr, label %bb.ac, label %bb.z

bb.ac:                                            ; preds = %get_vlc2.exit
  %i.qs = zext i8 %i.qq to i32
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.qu, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %i.qs) #12
  br label %bb.ah

.loopexit:                                        ; preds = %bb.q, %bb.v, %bb.h, %bb.z, %bb.p, %.preheader165, %.preheader163, %.preheader, %bb.y
  %i.qv = load i32, ptr %i.af, align 16, !tbaa !24
  %.not141 = icmp eq i32 %i.qv, 0
  br i1 %.not141, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  %i.qw = load i32, ptr %i.ag, align 4, !tbaa !243
  %.not142 = icmp eq i32 %i.qw, 0
  br i1 %.not142, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.qx = load i32, ptr %i.ac, align 8, !tbaa !30 ; 3 uses
  %i.qy = load i32, ptr %i.ad, align 8, !tbaa !31
  %i.qz = load ptr, ptr %2, align 8, !tbaa !42
  %i.ra = lshr i32 %i.qx, 3
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 1, !tbaa !13
  %i.re = tail call i32 @llvm.bswap.i32(i32 %i.rd)
  %i.rf = and i32 %i.qx, 7
  %i.rg = shl i32 %i.re, %i.rf                    ; 2 uses
  %i.rh = lshr i32 %i.rg, 31
  %i.ri = add i32 %i.qx, 1
  %i.rj = tail call i32 @llvm.umin.i32(i32 %i.qy, i32 %i.ri)
  store i32 %i.rj, ptr %i.ac, align 8, !tbaa !30
  %i.rk = trunc nuw nsw i32 %i.rh to i8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv208
  store i8 %i.rk, ptr %i.rl, align 1, !tbaa !13
  %.not143 = icmp sgt i32 %i.rg, -1
  br i1 %.not143, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.rm = load i32, ptr %i.ac, align 8, !tbaa !30 ; 3 uses
  %i.rn = load i32, ptr %i.ad, align 8, !tbaa !31
  %i.ro = load ptr, ptr %2, align 8, !tbaa !42
  %i.rp = lshr i32 %i.rm, 3
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 1, !tbaa !13
  %i.rt = tail call i32 @llvm.bswap.i32(i32 %i.rs)
  %i.ru = and i32 %i.rm, 7
  %i.rv = shl i32 %i.rt, %i.ru
  %i.rw = lshr i32 %i.rv, 30
  %i.rx = add i32 %i.rm, 2
  %i.ry = tail call i32 @llvm.umin.i32(i32 %i.rn, i32 %i.rx)
  store i32 %i.ry, ptr %i.ac, align 8, !tbaa !30
  %i.rz = trunc nuw nsw i32 %i.rw to i8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv208
  store i8 %i.rz, ptr %i.sa, align 1, !tbaa !13
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit, %bb.ae, %bb.af, %bb.ad
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !240

._crit_edge:                                      ; preds = %bb.ag, %bb.e
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 102608 ; 2 uses
  %i.sc = sext i32 %i.x to i64
  %i.sd = getelementptr inbounds [48 x i8], ptr %i.sb, i64 %i.sc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.sb, ptr noundef nonnull align 16 dereferenceable(48) %i.sd, i64 48, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge, %bb.ac, %.loopexit199, %bb.u, %bb.l
  %.0130 = phi i32 [ -1094995529, %bb.l ], [ -1094995529, %bb.u ], [ -1094995529, %.loopexit199 ], [ -1094995529, %bb.ac ], [ 0, %._crit_edge ]
  ret i32 %.0130
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @read_sbr_noise(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #3 {
._crit_edge92:
  %.not = icmp ne i32 %4, 0                       ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  %i.d = select i1 %.not, i1 %i.c, i1 false       ; 3 uses
  %i.e = icmp ne i32 %i.b, 0
  %or.cond = and i1 %.not, %i.e                   ; 2 uses
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_sbr_vlc, i64 56), align 8
  %.val68 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_sbr_vlc, i64 40), align 8
  %.0 = select i1 %or.cond, ptr %.val, ptr %.val68 ; 3 uses
  %.val69 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_sbr_vlc, i64 72), align 8
  %.val70 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_aac_sbr_vlc, i64 64), align 16
  %.055 = select i1 %or.cond, ptr %.val69, ptr %.val70 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %._crit_edge92
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 37
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 347576 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 106496
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.g to i64
  %i.n = zext i1 %i.d to i16
  %i.o = zext i1 %i.d to i32
  %i.p = zext i1 %i.d to i16
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph80, %.loopexit
  %indvars.iv89 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next90, %.loopexit ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv89
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %.not62 = icmp eq i8 %i.r, 0
  br i1 %.not62, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.s = load i32, ptr %i.j, align 8, !tbaa !63
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw [5 x i8], ptr %i.k, i64 %indvars.iv89 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  br label %bb.c

bb.b:                                             ; preds = %get_vlc2.exit67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.j, align 8, !tbaa !63
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.c, label %.loopexit, !llvm.loop !244

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !30  ; 4 uses
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !31  ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
  %i.ae = lshr i32 %i.ab, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !13
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = and i32 %i.ab, 7
  %i.ak = shl i32 %i.ai, %i.aj
  %i.al = lshr i32 %i.ak, 23
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.055, i64 %i.am ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !13 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !13 ; 2 uses
  %i.ar = sext i16 %i.aq to i32                   ; 2 uses
  %i.as = icmp slt i16 %i.aq, 0
  br i1 %i.as, label %bb.d, label %get_vlc2.exit67

bb.d:                                             ; preds = %bb.c
  %i.at = sext i16 %i.ao to i32
  %i.au = add i32 %i.ab, 9
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.au) ; 3 uses
  %i.aw = lshr i32 %i.av, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !13
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = and i32 %i.av, 7
  %i.bc = shl i32 %i.ba, %i.bb
  %i.bd = add nsw i32 %i.ar, 32
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = add i32 %i.be, %i.at
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.055, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !13
  %i.bl = sext i16 %i.bk to i32
  br label %get_vlc2.exit67

get_vlc2.exit67:                                  ; preds = %bb.c, %bb.d
  %.167.i64 = phi i16 [ %i.ao, %bb.c ], [ %i.bi, %bb.d ]
  %.165.i65 = phi i32 [ %i.ab, %bb.c ], [ %i.av, %bb.d ]
  %.1.i66 = phi i32 [ %i.ar, %bb.c ], [ %i.bl, %bb.d ]
  %i.bm = add i32 %.1.i66, %.165.i65
  %i.bn = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.bm)
  store i32 %i.bn, ptr %i.l, align 8, !tbaa !30
  %i.bo = shl i16 %.167.i64, %i.n
  %i.bp = trunc i16 %i.bo to i8
  %i.bq = add i8 %i.aa, %i.bp                     ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !13
  %i.bs = icmp ugt i8 %i.bq, 30
  br i1 %i.bs, label %bb.e, label %bb.b

bb.e:                                             ; preds = %get_vlc2.exit67
  %i.bt = zext i8 %i.bq to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bv, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %i.bt) #12
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.bw = load i32, ptr %i.l, align 8, !tbaa !30  ; 3 uses
  %i.bx = load i32, ptr %i.m, align 8, !tbaa !31
  %i.by = load ptr, ptr %2, align 8, !tbaa !42
  %i.bz = lshr i32 %i.bw, 3
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !13
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cc)
  %i.ce = and i32 %i.bw, 7
  %i.cf = shl i32 %i.cd, %i.ce
  %i.cg = lshr i32 %i.cf, 27
  %i.ch = add i32 %i.bw, 5
  %i.ci = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.ch)
  store i32 %i.ci, ptr %i.l, align 8, !tbaa !30
  %i.cj = shl nuw nsw i32 %i.cg, %i.o
  %i.ck = trunc nuw nsw i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw [5 x i8], ptr %3, i64 %indvars.iv89
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 106501 ; 2 uses
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !13
  %i.cn = load i32, ptr %i.j, align 8, !tbaa !63
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %.lr.ph78, label %.loopexit

bb.g:                                             ; preds = %get_vlc2.exit
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.cp = load i32, ptr %i.j, align 8, !tbaa !63
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next87, %i.cq
  br i1 %i.cr, label %.lr.ph78, label %.loopexit, !llvm.loop !245

.lr.ph78:                                         ; preds = %bb.f, %bb.g
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cm, i64 %indvars.iv86 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 -1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = load i32, ptr %i.l, align 8, !tbaa !30  ; 4 uses
  %i.cw = load i32, ptr %i.m, align 8, !tbaa !31  ; 3 uses
  %i.cx = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.cy = lshr i32 %i.cv, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 1, !tbaa !13
  %i.dc = tail call i32 @llvm.bswap.i32(i32 %i.db)
  %i.dd = and i32 %i.cv, 7
  %i.de = shl i32 %i.dc, %i.dd
  %i.df = lshr i32 %i.de, 23
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.dg ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !13 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !13 ; 2 uses
  %i.dl = sext i16 %i.dk to i32                   ; 3 uses
  %i.dm = icmp slt i16 %i.dk, 0
  br i1 %i.dm, label %bb.h, label %get_vlc2.exit

bb.h:                                             ; preds = %.lr.ph78
  %i.dn = sext i16 %i.di to i32
  %i.do = add i32 %i.cv, 9
  %i.dp = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.do) ; 4 uses
  %i.dq = lshr i32 %i.dp, 3
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 1, !tbaa !13
  %i.du = tail call i32 @llvm.bswap.i32(i32 %i.dt)
  %i.dv = and i32 %i.dp, 7
  %i.dw = shl i32 %i.du, %i.dv
  %i.dx = add nsw i32 %i.dl, 32
  %i.dy = lshr i32 %i.dw, %i.dx
  %i.dz = add i32 %i.dy, %i.dn
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.ea ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !13 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !13 ; 2 uses
  %i.ef = sext i16 %i.ee to i32                   ; 2 uses
  %i.eg = icmp slt i16 %i.ee, 0
  br i1 %i.eg, label %bb.i, label %get_vlc2.exit

bb.i:                                             ; preds = %bb.h
  %i.eh = sext i16 %i.ec to i32
  %i.ei = sub i32 %i.dp, %i.dl
  %i.ej = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.ei) ; 3 uses
  %i.ek = lshr i32 %i.ej, 3
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.el
  %i.en = load i32, ptr %i.em, align 1, !tbaa !13
  %i.eo = tail call i32 @llvm.bswap.i32(i32 %i.en)
  %i.ep = and i32 %i.ej, 7
  %i.eq = shl i32 %i.eo, %i.ep
  %i.er = add nsw i32 %i.ef, 32
  %i.es = lshr i32 %i.eq, %i.er
  %i.et = add i32 %i.es, %i.eh
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.eu ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !13
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !13
  %i.ez = sext i16 %i.ey to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %.lr.ph78, %bb.h, %bb.i
  %.167.i = phi i16 [ %i.di, %.lr.ph78 ], [ %i.ew, %bb.i ], [ %i.ec, %bb.h ]
  %.165.i = phi i32 [ %i.cv, %.lr.ph78 ], [ %i.ej, %bb.i ], [ %i.dp, %bb.h ]
  %.1.i = phi i32 [ %i.dl, %.lr.ph78 ], [ %i.ez, %bb.i ], [ %i.ef, %bb.h ]
  %i.fa = add i32 %.1.i, %.165.i
  %i.fb = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.fa)
  store i32 %i.fb, ptr %i.l, align 8, !tbaa !30
  %i.fc = shl i16 %.167.i, %i.p
  %i.fd = trunc i16 %i.fc to i8
  %i.fe = add i8 %i.cu, %i.fd                     ; 3 uses
  store i8 %i.fe, ptr %i.cs, align 1, !tbaa !13
  %i.ff = icmp ugt i8 %i.fe, 30
  br i1 %i.ff, label %bb.j, label %bb.g

bb.j:                                             ; preds = %get_vlc2.exit
  %i.fg = zext i8 %i.fe to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fi, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %i.fg) #12
  br label %bb.k

.loopexit:                                        ; preds = %bb.b, %bb.g, %.preheader, %bb.f
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !246

._crit_edge:                                      ; preds = %.loopexit, %._crit_edge92
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 106496 ; 2 uses
  %i.fk = sext i32 %i.g to i64
  %i.fl = getelementptr inbounds [5 x i8], ptr %i.fj, i64 %i.fk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.fj, ptr noundef nonnull align 1 dereferenceable(5) %i.fl, i64 5, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.e
  %.058 = phi i32 [ -1094995529, %bb.e ], [ -1094995529, %bb.j ], [ 0, %._crit_edge ]
  ret i32 %.058
}

declare i32 @ff_ps_read_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @sbr_lf_gen(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 10240)) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #9 {
bb.a:
  %i.a = shl i32 %4, 1                            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10240) %1, i8 0, i64 10240, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader45.lr.ph, label %._crit_edge48.split

.preheader45.lr.ph:                               ; preds = %bb.a
  %i.e = icmp sgt i32 %4, 0
  %i.f = sext i32 %3 to i64
  %i.g = getelementptr inbounds [8192 x i8], ptr %2, i64 %i.f ; 3 uses
  br i1 %i.e, label %.preheader45.preheader, label %._crit_edge48.split

.preheader45.preheader:                           ; preds = %.preheader45.lr.ph
  %i.h = add i32 %i.a, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %i.h, i32 8) ; 2 uses
  %i.i = zext nneg i32 %smax to i64
  %i.j = add nsw i64 %i.i, -7                     ; 3 uses
  %xtraiter = and i64 %i.j, 1
  %i.k = icmp eq i32 %smax, 8
  %unroll_iter = and i64 %i.j, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod63 = trunc i64 %i.j to i1
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.preheader, %._crit_edge
  %indvars.iv53 = phi i64 [ 0, %.preheader45.preheader ], [ %indvars.iv.next54, %._crit_edge ] ; 5 uses
  %i.l = getelementptr inbounds nuw [320 x i8], ptr %1, i64 %indvars.iv53 ; 3 uses
  br i1 %i.k, label %.epil.preheader, label %.preheader45.new

.preheader45.new:                                 ; preds = %.preheader45, %.preheader45.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader45.new ], [ 8, %.preheader45 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader45.new ], [ 0, %.preheader45 ]
  %i.m = getelementptr [256 x i8], ptr %i.g, i64 %indvars.iv
  %i.n = getelementptr i8, ptr %i.m, i64 -2048
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv53 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr [256 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.v = getelementptr i8, ptr %i.u, i64 -2048
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv53 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next ; 2 uses
  store i32 %i.x, ptr %i.y, align 4, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader45.new, !llvm.loop !247

._crit_edge.unr-lcssa:                            ; preds = %.preheader45.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader45
  %indvars.iv.epil.init = phi i64 [ 8, %.preheader45 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.ac = getelementptr [256 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %i.ad = getelementptr i8, ptr %i.ac, i64 -2048
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv53 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !14
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.epil.init ; 2 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !14
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next54, %i.al
  br i1 %i.am, label %.preheader45, label %._crit_edge48.split, !llvm.loop !248

._crit_edge48.split:                              ; preds = %._crit_edge, %.preheader45.lr.ph, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.preheader.lr.ph, label %._crit_edge51

.preheader.lr.ph:                                 ; preds = %._crit_edge48.split
  %i.aq = sub nsw i32 1, %3
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8192 x i8], ptr %2, i64 %i.ar ; 8 uses
  %i.at = sext i32 %i.a to i64                    ; 8 uses
  %i.au = getelementptr [256 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -2048
  %i.aw = getelementptr [256 x i8], ptr %i.as, i64 %i.at
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1792
  %i.ay = getelementptr [256 x i8], ptr %i.as, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 -1536
  %i.ba = getelementptr [256 x i8], ptr %i.as, i64 %i.at
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1280
  %i.bc = getelementptr [256 x i8], ptr %i.as, i64 %i.at
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1024
  %i.be = getelementptr [256 x i8], ptr %i.as, i64 %i.at
  %i.bf = getelementptr i8, ptr %i.be, i64 -768
  %i.bg = getelementptr [256 x i8], ptr %i.as, i64 %i.at
  %i.bh = getelementptr i8, ptr %i.bg, i64 -512
  %i.bi = getelementptr [256 x i8], ptr %i.as, i64 %i.at
  %i.bj = getelementptr i8, ptr %i.bi, i64 -256
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv60 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next61, %.preheader ] ; 10 uses
  %i.bk = getelementptr inbounds nuw [320 x i8], ptr %1, i64 %indvars.iv60 ; 16 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv60 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !14
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !14
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv60 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !14
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv60 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !14
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv60 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !14
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv60 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !14
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv60 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !14
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv60 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !14
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !14
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv60 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !14
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  store i32 %i.de, ptr %i.df, align 4, !tbaa !14
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.dg = load i32, ptr %i.an, align 4, !tbaa !14
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next61, %i.dh
  br i1 %i.di, label %.preheader, label %._crit_edge51, !llvm.loop !249

._crit_edge51:                                    ; preds = %.preheader, %._crit_edge48.split
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @sbr_hf_assemble(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #3 {
bb.a:
  %5 = alloca [48 x %struct.SoftFloat], align 16  ; 6 uses
  %6 = alloca [48 x %struct.SoftFloat], align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  %.not = icmp eq i32 %i.b, 0                     ; 4 uses
  %i.c = select i1 %.not, i32 4, i32 0            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14   ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 69920 ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 86048 ; 15 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 106648 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !66   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 106652 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !257  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !32
  %.not227 = icmp eq i32 %i.o, 0
  br i1 %.not227, label %bb.b, label %.preheader300

.preheader300:                                    ; preds = %bb.a
  br i1 %.not, label %.loopexit299.loopexit, label %.loopexit299

.loopexit299.loopexit:                            ; preds = %.preheader300
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 428176 ; 4 uses
  %i.q = sext i32 %i.g to i64
  %i.r = shl nsw i64 %i.q, 3                      ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 434320 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 106632 ; 8 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !13
  %i.v = zext i8 %i.u to i64
  %.idx477 = mul nuw nsw i64 %i.v, 768
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx477
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.s, i64 %i.r, i1 false)
  %i.x = load i8, ptr %i.t, align 8, !tbaa !13
  %i.y = zext i8 %i.x to i64
  %.idx478 = mul nuw nsw i64 %i.y, 768
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx478
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.z, ptr nonnull align 16 %i.p, i64 %i.r, i1 false)
  %i.aa = load i8, ptr %i.t, align 8, !tbaa !13
  %i.ab = zext i8 %i.aa to i64
  %.idx479 = mul nuw nsw i64 %i.ab, 768
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx479
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 16 %i.s, i64 %i.r, i1 false)
  %i.ae = load i8, ptr %i.t, align 8, !tbaa !13
  %i.af = zext i8 %i.ae to i64
  %.idx480 = mul nuw nsw i64 %i.af, 768
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx480
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr nonnull align 16 %i.p, i64 %i.r, i1 false)
  %i.ai = load i8, ptr %i.t, align 8, !tbaa !13
  %i.aj = zext i8 %i.ai to i64
  %.idx481 = mul nuw nsw i64 %i.aj, 768
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx481
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 768
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.al, ptr nonnull align 16 %i.s, i64 %i.r, i1 false)
  %i.am = load i8, ptr %i.t, align 8, !tbaa !13
  %i.an = zext i8 %i.am to i64
  %.idx482 = mul nuw nsw i64 %i.an, 768
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx482
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 768
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr nonnull align 16 %i.p, i64 %i.r, i1 false)
  %i.aq = load i8, ptr %i.t, align 8, !tbaa !13
  %i.ar = zext i8 %i.aq to i64
  %.idx483 = mul nuw nsw i64 %i.ar, 768
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx483
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.at, ptr nonnull align 16 %i.s, i64 %i.r, i1 false)
  %i.au = load i8, ptr %i.t, align 8, !tbaa !13
  %i.av = zext i8 %i.au to i64
  %.idx484 = mul nuw nsw i64 %i.av, 768
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx484
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr nonnull align 16 %i.p, i64 %i.r, i1 false)
  br label %.loopexit299

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %.preheader298, label %.loopexit299

.preheader298:                                    ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 106632 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 106641 ; 6 uses
  %i.ba = load i8, ptr %i.ay, align 8, !tbaa !13
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 1                ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw [384 x i8], ptr %i.h, i64 %i.bd
  %i.bf = load i8, ptr %i.az, align 1, !tbaa !70
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 1                ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [384 x i8], ptr %i.h, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(384) %i.be, ptr noundef nonnull align 4 dereferenceable(384) %i.bj, i64 384, i1 false)
  %i.bk = getelementptr inbounds nuw [384 x i8], ptr %i.i, i64 %i.bd
  %i.bl = getelementptr inbounds nuw [384 x i8], ptr %i.i, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(384) %i.bk, ptr noundef nonnull align 4 dereferenceable(384) %i.bl, i64 384, i1 false)
  %i.bm = zext nneg i32 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [384 x i8], ptr %i.h, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 384
  %i.bp = zext nneg i32 %i.bh to i64
  %i.bq = getelementptr inbounds nuw [384 x i8], ptr %i.h, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(384) %i.bo, ptr noundef nonnull align 4 dereferenceable(384) %i.br, i64 384, i1 false)
  %i.bs = load i8, ptr %i.ay, align 8, !tbaa !13
  %i.bt = zext i8 %i.bs to i64
  %.idx = mul nuw nsw i64 %i.bt, 768
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 384
  %i.bw = load i8, ptr %i.az, align 1, !tbaa !70
  %i.bx = zext i8 %i.bw to i64
  %.idx416 = mul nuw nsw i64 %i.bx, 768
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx416
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(384) %i.bv, ptr noundef nonnull align 4 dereferenceable(384) %i.bz, i64 384, i1 false)
  %i.ca = load i8, ptr %i.ay, align 8, !tbaa !13
  %i.cb = zext i8 %i.ca to i64
  %.idx417 = mul nuw nsw i64 %i.cb, 768
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx417
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 768
  %i.ce = load i8, ptr %i.az, align 1, !tbaa !70
  %i.cf = zext i8 %i.ce to i64
  %.idx418 = mul nuw nsw i64 %i.cf, 768
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx418
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(384) %i.cd, ptr noundef nonnull align 4 dereferenceable(384) %i.ch, i64 384, i1 false)
  %i.ci = load i8, ptr %i.ay, align 8, !tbaa !13
  %i.cj = zext i8 %i.ci to i64
  %.idx419 = mul nuw nsw i64 %i.cj, 768
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx419
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 768
  %i.cm = load i8, ptr %i.az, align 1, !tbaa !70
  %i.cn = zext i8 %i.cm to i64
  %.idx420 = mul nuw nsw i64 %i.cn, 768
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx420
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(384) %i.cl, ptr noundef nonnull align 4 dereferenceable(384) %i.cp, i64 384, i1 false)
  %i.cq = load i8, ptr %i.ay, align 8, !tbaa !13
  %i.cr = zext i8 %i.cq to i64
  %.idx421 = mul nuw nsw i64 %i.cr, 768
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx421
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1152
  %i.cu = load i8, ptr %i.az, align 1, !tbaa !70
  %i.cv = zext i8 %i.cu to i64
  %.idx422 = mul nuw nsw i64 %i.cv, 768
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx422
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(384) %i.ct, ptr noundef nonnull align 4 dereferenceable(384) %i.cx, i64 384, i1 false)
  %i.cy = load i8, ptr %i.ay, align 8, !tbaa !13
  %i.cz = zext i8 %i.cy to i64
  %.idx423 = mul nuw nsw i64 %i.cz, 768
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx423
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1152
  %i.dc = load i8, ptr %i.az, align 1, !tbaa !70
  %i.dd = zext i8 %i.dc to i64
  %.idx424 = mul nuw nsw i64 %i.dd, 768
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx424
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(384) %i.db, ptr noundef nonnull align 4 dereferenceable(384) %i.df, i64 384, i1 false)
  br label %.loopexit299

.loopexit299:                                     ; preds = %.loopexit299.loopexit, %.preheader298, %.preheader300, %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !69 ; 3 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph331, label %._crit_edge359

.lr.ph331:                                        ; preds = %.loopexit299
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 106632 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 434320
  %i.dl = sext i32 %i.g to i64
  %i.dm = shl nsw i64 %i.dl, 3                    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 428176
  %i.do = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.dh to i64
  %.pre = load i8, ptr %i.dj, align 8, !tbaa !13
  br label %bb.c

.loopexit297:                                     ; preds = %bb.d, %bb.c
  %i.dp = phi i8 [ %i.ef, %bb.c ], [ %i.eo, %bb.d ]
  %exitcond383.not = icmp eq i64 %indvars.iv.next381, %wide.trip.count
  br i1 %exitcond383.not, label %.lr.ph358, label %bb.c, !llvm.loop !250

.lr.ph358:                                        ; preds = %.loopexit297
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 106632 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ds = icmp sgt i32 %i.g, 0
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 438776
  %i.du = sext i32 %i.e to i64                    ; 2 uses
  %invariant.gep353 = getelementptr [8 x i8], ptr %0, i64 %i.du
  %i.dv = getelementptr inbounds [320 x i8], ptr %1, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 438784
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 431248
  %i.dy = and i32 %i.e, 1
  %i.dz = icmp sgt i32 %i.g, 1
  %i.ea = and i32 %i.g, 1
  %.not232 = icmp eq i32 %i.ea, 0
  %i.eb = or disjoint i32 %i.c, 1
  %i.ec = zext nneg i32 %i.c to i64               ; 2 uses
  %.pre403 = load i8, ptr %i.dq, align 8, !tbaa !13
  %wide.trip.count392 = zext nneg i32 %i.g to i64
  %wide.trip.count387 = zext nneg i32 %i.eb to i64
  %invariant.gep443 = getelementptr inbounds nuw [384 x i8], ptr %i.h, i64 %i.ec
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph331, %.loopexit297
  %i.ed = phi i8 [ %.pre, %.lr.ph331 ], [ %i.dp, %.loopexit297 ] ; 2 uses
  %indvars.iv380 = phi i64 [ 0, %.lr.ph331 ], [ %indvars.iv.next381, %.loopexit297 ] ; 3 uses
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next381 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !13  ; 2 uses
  %i.eg = icmp ult i8 %i.ed, %i.ef
  br i1 %i.eg, label %.lr.ph329, label %.loopexit297

.lr.ph329:                                        ; preds = %bb.c
  %i.eh = getelementptr inbounds nuw [384 x i8], ptr %i.dk, i64 %indvars.iv380
  %i.ei = getelementptr inbounds nuw [384 x i8], ptr %i.dn, i64 %indvars.iv380
  %i.ej = zext i8 %i.ed to i64
  %i.ek = shl nuw nsw i64 %i.ej, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph329, %bb.d
  %indvars.iv = phi i64 [ %i.ek, %.lr.ph329 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.el = add nuw nsw i64 %indvars.iv, %i.do      ; 2 uses
  %i.em = getelementptr inbounds nuw [384 x i8], ptr %i.h, i64 %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.em, ptr nonnull align 16 %i.eh, i64 %i.dm, i1 false)
  %i.en = getelementptr inbounds nuw [384 x i8], ptr %i.i, i64 %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.en, ptr nonnull align 16 %i.ei, i64 %i.dm, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eo = load i8, ptr %i.ee, align 1, !tbaa !13  ; 2 uses
  %i.ep = zext i8 %i.eo to i64
  %i.eq = shl nuw nsw i64 %i.ep, 1
  %i.er = icmp samesign ult i64 %indvars.iv.next, %i.eq
  br i1 %i.er, label %bb.d, label %.loopexit297, !llvm.loop !251

.loopexit295.loopexit:                            ; preds = %.critedge
  %.pre404 = load i32, ptr %i.dg, align 8, !tbaa !69
  br label %.loopexit295

.loopexit295:                                     ; preds = %.loopexit295.loopexit, %bb.e
  %i.es = phi i32 [ %i.ew, %bb.e ], [ %.pre404, %.loopexit295.loopexit ] ; 2 uses
  %i.et = phi i8 [ %i.ez, %bb.e ], [ %i.mp, %.loopexit295.loopexit ]
  %.1218.lcssa = phi i32 [ %.0217355, %bb.e ], [ %i.mm, %.loopexit295.loopexit ] ; 2 uses
  %.1215.lcssa = phi i32 [ %.0214356, %bb.e ], [ %i.mo, %.loopexit295.loopexit ] ; 2 uses
  %i.eu = sext i32 %i.es to i64
  %i.ev = icmp slt i64 %indvars.iv.next401, %i.eu
  br i1 %i.ev, label %bb.e, label %._crit_edge359, !llvm.loop !252

bb.e:                                             ; preds = %.lr.ph358, %.loopexit295
  %i.ew = phi i32 [ %i.dh, %.lr.ph358 ], [ %i.es, %.loopexit295 ]
  %i.ex = phi i8 [ %.pre403, %.lr.ph358 ], [ %i.et, %.loopexit295 ] ; 2 uses
  %indvars.iv400 = phi i64 [ 0, %.lr.ph358 ], [ %indvars.iv.next401, %.loopexit295 ] ; 6 uses
  %.0214356 = phi i32 [ %i.m, %.lr.ph358 ], [ %.1215.lcssa, %.loopexit295 ] ; 2 uses
  %.0217355 = phi i32 [ %i.k, %.lr.ph358 ], [ %.1218.lcssa, %.loopexit295 ] ; 2 uses
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 1 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next401 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !13  ; 2 uses
  %i.fa = icmp ult i8 %i.ex, %i.ez
  br i1 %i.fa, label %.lr.ph349, label %.loopexit295

.lr.ph349:                                        ; preds = %bb.e
  %i.fb = getelementptr inbounds nuw [384 x i8], ptr %i.dx, i64 %indvars.iv400 ; 3 uses
  %i.fc = zext i8 %i.ex to i64
  %i.fd = shl nuw nsw i64 %i.fc, 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph349, %.critedge
  %indvars.iv397 = phi i64 [ %i.fd, %.lr.ph349 ], [ %indvars.iv.next398, %.critedge ] ; 6 uses
  %.1215345 = phi i32 [ %.0214356, %.lr.ph349 ], [ %i.mo, %.critedge ] ; 4 uses
  %.1218344 = phi i32 [ %.0217355, %.lr.ph349 ], [ %i.mm, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  br i1 %.not, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.fe = load i32, ptr %4, align 4, !tbaa !14
  %i.ff = zext i32 %i.fe to i64
  %.not228 = icmp eq i64 %indvars.iv400, %i.ff
  br i1 %.not228, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fg = load i32, ptr %i.dr, align 4, !tbaa !14
  %i.fh = zext i32 %i.fg to i64
  %.not229 = icmp eq i64 %indvars.iv400, %i.fh
  br i1 %.not229, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.h
  br i1 %i.ds, label %.lr.ph341, label %.loopexit

.lr.ph341:                                        ; preds = %.preheader
  %i.fi = add nuw nsw i64 %indvars.iv397, %i.ec
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph341, %bb.s
  %indvars.iv389 = phi i64 [ 0, %.lr.ph341 ], [ %indvars.iv.next390, %bb.s ] ; 5 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv389 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 0, ptr %i.fk, align 4, !tbaa !76
  store i32 0, ptr %i.fj, align 8, !tbaa !77
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv389 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 0, ptr %i.fm, align 4, !tbaa !76
  store i32 0, ptr %i.fl, align 8, !tbaa !77
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv389
  %invariant.gep332 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv389
  %.promoted = load i64, ptr %i.fj, align 8
  %.promoted335 = load i64, ptr %i.fl, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %av_add_sf.exit294
  %indvars.iv384 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next385, %av_add_sf.exit294 ] ; 3 uses
  %.sroa.016.0.insert.insert.i334338 = phi i64 [ %.promoted, %bb.i ], [ %.sroa.016.0.insert.insert.i, %av_add_sf.exit294 ] ; 3 uses
  %.sroa.016.0.insert.insert.i261336337 = phi i64 [ %.promoted335, %bb.i ], [ %.sroa.016.0.insert.insert.i261, %av_add_sf.exit294 ] ; 3 uses
  %i.fn = sub nsw i64 %i.fi, %indvars.iv384       ; 2 uses
  %gep = getelementptr inbounds nuw [384 x i8], ptr %invariant.gep, i64 %i.fn
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr @sbr_hf_assemble.h_smooth, i64 %indvars.iv384
  %i.fp = load i64, ptr %gep, align 4             ; 2 uses
  %i.fq = load i64, ptr %i.fo, align 8            ; 2 uses
  %.sroa.25.0.extract.shift.i = and i64 %i.fq, -4294967296
  %i.fr = shl i64 %i.fp, 32
  %i.fs = ashr exact i64 %i.fr, 32
  %i.ft = shl i64 %i.fq, 32
  %i.fu = ashr exact i64 %i.ft, 32                ; 2 uses
  %i.fv = mul nsw i64 %i.fu, %i.fs
  %i.fw = lshr i64 %i.fv, 29
  %i.fx = add i64 %.sroa.25.0.extract.shift.i, -4294967296 ; 2 uses
  %.sroa.0.0.insert.insert.i = add i64 %i.fx, %i.fp
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.fw to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %i.fy = add i32 %.sroa.0.0.extract.trunc.i.i, 1073741824
  %i.fz = icmp slt i32 %i.fy, 1                   ; 2 uses
  %i.ga = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i, 1
  %i.gb = and i64 %i.ga, 4294967295
  %.sroa.5.0.i.i = select i1 %i.fz, i64 %i.gb, i64 %.sroa.5.0.extract.shift.i.i ; 2 uses
  %i.gc = zext i1 %i.fz to i32
  %.sroa.0.0.i.i = ashr i32 %.sroa.0.0.extract.trunc.i.i, %i.gc ; 2 uses
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.5.0.i.i, 32
  %.sroa.02.0.insert.ext.i.i = zext i32 %.sroa.0.0.i.i to i64
  %.sroa.02.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.02.0.insert.ext.i.i
  %.sroa.7.0.extract.trunc11.i = trunc nuw i64 %.sroa.5.0.i.i to i32
  %i.gd = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.ge = icmp slt i32 %.sroa.7.0.extract.trunc11.i, -149
  %or.cond.i = select i1 %i.gd, i1 true, i1 %i.ge
  %..i = select i1 %or.cond.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i ; 3 uses
  %.sroa.012.0.extract.trunc.i = trunc i64 %.sroa.016.0.insert.insert.i334338 to i32 ; 2 uses
  %.sroa.414.0.extract.shift.i = lshr i64 %.sroa.016.0.insert.insert.i334338, 32 ; 3 uses
  %.sroa.414.0.extract.trunc.i = trunc nuw i64 %.sroa.414.0.extract.shift.i to i32
  %.sroa.09.0.extract.trunc.i = trunc i64 %..i to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %..i, 32  ; 3 uses
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.gf = sub nsw i32 %.sroa.414.0.extract.trunc.i, %.sroa.4.0.extract.trunc.i ; 5 uses
  %i.gg = icmp slt i32 %i.gf, -31
  br i1 %i.gg, label %av_add_sf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gh = icmp slt i32 %i.gf, 0
  br i1 %i.gh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gi = sub nsw i32 0, %i.gf
  %i.gj = ashr i32 %.sroa.012.0.extract.trunc.i, %i.gi
  %i.gk = add nsw i32 %i.gj, %.sroa.09.0.extract.trunc.i ; 2 uses
  %i.gl = add i32 %i.gk, 1073741824
  %i.gm = icmp slt i32 %i.gl, 1                   ; 2 uses
  %i.gn = zext i1 %i.gm to i32
  %.sroa.0.0.i.i237 = ashr i32 %i.gk, %i.gn       ; 4 uses
  %.not.i.i = icmp eq i32 %.sroa.0.0.i.i237, 0
  br i1 %.not.i.i, label %av_normalize_sf.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.l
  %i.go = zext i1 %i.gm to i64
  %.sroa.5.0.i.i238 = add nuw nsw i64 %.sroa.4.0.extract.shift.i, %i.go
  %.sroa.8.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.i.i238 to i32 ; 2 uses
  %i.gp = add i32 %.sroa.0.0.i.i237, 536870911
  %i.gq = icmp ult i32 %i.gp, 1073741823
  br i1 %i.gq, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi i32 [ %i.gr, %.lr.ph.i.i ], [ %.sroa.0.0.i.i237, %.preheader.i.i ]
  %.sroa.8.07.i.i = phi i32 [ %i.gs, %.lr.ph.i.i ], [ %.sroa.8.0.extract.trunc.i.i, %.preheader.i.i ]
  %i.gr = shl nsw i32 %.sroa.0.08.i.i, 1          ; 3 uses
  %i.gs = add nsw i32 %.sroa.8.07.i.i, -1         ; 2 uses
  %i.gt = add nsw i32 %i.gr, 536870911
  %i.gu = icmp ult i32 %i.gt, 1073741823
  br i1 %i.gu, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.8.0.lcssa.i.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i, %.preheader.i.i ], [ %i.gs, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.0.0.i.i237, %.preheader.i.i ], [ %i.gr, %.lr.ph.i.i ]
  %i.gv = icmp slt i32 %.sroa.8.0.lcssa.i.i, -149
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i, i32 -149)
  %spec.select6.i.i = select i1 %i.gv, i32 0, i32 %.sroa.0.0.lcssa.i.i
  %i.gw = zext i32 %spec.select.i.i to i64
  %i.gx = shl nuw i64 %i.gw, 32
  %i.gy = zext i32 %spec.select6.i.i to i64
  %i.gz = or disjoint i64 %i.gx, %i.gy
  br label %av_normalize_sf.exit.i

av_normalize_sf.exit.i:                           ; preds = %._crit_edge.i.i, %bb.l
  %.sroa.05.0.insert.insert.i.i = phi i64 [ -639950127104, %bb.l ], [ %i.gz, %._crit_edge.i.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %.sroa.05.0.insert.insert.i.i, 32
  br label %av_add_sf.exit

bb.m:                                             ; preds = %bb.k
  %i.ha = icmp samesign ult i32 %i.gf, 32
  br i1 %i.ha, label %bb.n, label %av_add_sf.exit

bb.n:                                             ; preds = %bb.m
  %i.hb = ashr i32 %.sroa.09.0.extract.trunc.i, %i.gf
  %i.hc = add nsw i32 %i.hb, %.sroa.012.0.extract.trunc.i ; 2 uses
  %i.hd = add i32 %i.hc, 1073741824
  %i.he = icmp slt i32 %i.hd, 1                   ; 2 uses
  %i.hf = zext i1 %i.he to i32
  %.sroa.0.0.i24.i = ashr i32 %i.hc, %i.hf        ; 4 uses
  %.not.i29.i = icmp eq i32 %.sroa.0.0.i24.i, 0
  br i1 %.not.i29.i, label %av_normalize_sf.exit41.i, label %.preheader.i30.i

.preheader.i30.i:                                 ; preds = %bb.n
  %i.hg = zext i1 %i.he to i64
  %.sroa.5.0.i23.i = add nuw nsw i64 %.sroa.414.0.extract.shift.i, %i.hg
  %.sroa.8.0.extract.trunc.i31.i = trunc i64 %.sroa.5.0.i23.i to i32 ; 2 uses
  %i.hh = add i32 %.sroa.0.0.i24.i, 536870911
  %i.hi = icmp ult i32 %i.hh, 1073741823
  br i1 %i.hi, label %.lr.ph.i38.i, label %._crit_edge.i32.i

.lr.ph.i38.i:                                     ; preds = %.preheader.i30.i, %.lr.ph.i38.i
  %.sroa.0.08.i39.i = phi i32 [ %i.hj, %.lr.ph.i38.i ], [ %.sroa.0.0.i24.i, %.preheader.i30.i ]
  %.sroa.8.07.i40.i = phi i32 [ %i.hk, %.lr.ph.i38.i ], [ %.sroa.8.0.extract.trunc.i31.i, %.preheader.i30.i ]
  %i.hj = shl nsw i32 %.sroa.0.08.i39.i, 1        ; 3 uses
  %i.hk = add nsw i32 %.sroa.8.07.i40.i, -1       ; 2 uses
  %i.hl = add nsw i32 %i.hj, 536870911
  %i.hm = icmp ult i32 %i.hl, 1073741823
  br i1 %i.hm, label %.lr.ph.i38.i, label %._crit_edge.i32.i, !llvm.loop !2

._crit_edge.i32.i:                                ; preds = %.lr.ph.i38.i, %.preheader.i30.i
  %.sroa.8.0.lcssa.i33.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i, %.preheader.i30.i ], [ %i.hk, %.lr.ph.i38.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i = phi i32 [ %.sroa.0.0.i24.i, %.preheader.i30.i ], [ %i.hj, %.lr.ph.i38.i ]
  %i.hn = icmp slt i32 %.sroa.8.0.lcssa.i33.i, -149
  %spec.select.i35.i = call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i, i32 -149)
  %spec.select6.i36.i = select i1 %i.hn, i32 0, i32 %.sroa.0.0.lcssa.i34.i
  %i.ho = zext i32 %spec.select.i35.i to i64
  %i.hp = shl nuw i64 %i.ho, 32
  %i.hq = zext i32 %spec.select6.i36.i to i64
  %i.hr = or disjoint i64 %i.hp, %i.hq
  br label %av_normalize_sf.exit41.i

av_normalize_sf.exit41.i:                         ; preds = %._crit_edge.i32.i, %bb.n
  %.sroa.05.0.insert.insert.i37.i = phi i64 [ -639950127104, %bb.n ], [ %i.hr, %._crit_edge.i32.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i = lshr i64 %.sroa.05.0.insert.insert.i37.i, 32
  br label %av_add_sf.exit

av_add_sf.exit:                                   ; preds = %bb.j, %av_normalize_sf.exit.i, %bb.m, %av_normalize_sf.exit41.i
  %.sroa.016.0.i = phi i64 [ %..i, %bb.j ], [ %.sroa.05.0.insert.insert.i.i, %av_normalize_sf.exit.i ], [ %.sroa.05.0.insert.insert.i37.i, %av_normalize_sf.exit41.i ], [ %.sroa.016.0.insert.insert.i334338, %bb.m ]
  %.sroa.5.0.i = phi i64 [ %.sroa.4.0.extract.shift.i, %bb.j ], [ %.sroa.5.0.extract.shift.i, %av_normalize_sf.exit.i ], [ %.sroa.5.0.extract.shift18.i, %av_normalize_sf.exit41.i ], [ %.sroa.414.0.extract.shift.i, %bb.m ]
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.i, 32
  %.sroa.016.0.insert.ext.i = and i64 %.sroa.016.0.i, 4294967295
  %.sroa.016.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.016.0.insert.ext.i ; 2 uses
  %gep333 = getelementptr inbounds nuw [384 x i8], ptr %invariant.gep332, i64 %i.fn
  %i.hs = load i64, ptr %gep333, align 4          ; 2 uses
  %i.ht = shl i64 %i.hs, 32
  %i.hu = ashr exact i64 %i.ht, 32
  %i.hv = mul nsw i64 %i.hu, %i.fu
  %i.hw = lshr i64 %i.hv, 29
  %.sroa.0.0.insert.insert.i240 = add i64 %i.fx, %i.hs
  %.sroa.0.0.extract.trunc.i.i241 = trunc i64 %i.hw to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i242 = lshr i64 %.sroa.0.0.insert.insert.i240, 32 ; 2 uses
  %i.hx = add i32 %.sroa.0.0.extract.trunc.i.i241, 1073741824
  %i.hy = icmp slt i32 %i.hx, 1                   ; 2 uses
  %i.hz = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i242, 1
  %i.ia = and i64 %i.hz, 4294967295
  %.sroa.5.0.i.i243 = select i1 %i.hy, i64 %i.ia, i64 %.sroa.5.0.extract.shift.i.i242 ; 2 uses
  %i.ib = zext i1 %i.hy to i32
  %.sroa.0.0.i.i244 = ashr i32 %.sroa.0.0.extract.trunc.i.i241, %i.ib ; 2 uses
  %.sroa.2.0.insert.shift.i.i245 = shl nuw i64 %.sroa.5.0.i.i243, 32
  %.sroa.02.0.insert.ext.i.i246 = zext i32 %.sroa.0.0.i.i244 to i64
  %.sroa.02.0.insert.insert.i.i247 = or disjoint i64 %.sroa.2.0.insert.shift.i.i245, %.sroa.02.0.insert.ext.i.i246
  %.sroa.7.0.extract.trunc11.i248 = trunc nuw i64 %.sroa.5.0.i.i243 to i32
  %i.ic = icmp eq i32 %.sroa.0.0.i.i244, 0
  %i.id = icmp slt i32 %.sroa.7.0.extract.trunc11.i248, -149
  %or.cond.i249 = select i1 %i.ic, i1 true, i1 %i.id
  %..i250 = select i1 %or.cond.i249, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i247 ; 3 uses
  %.sroa.012.0.extract.trunc.i251 = trunc i64 %.sroa.016.0.insert.insert.i261336337 to i32 ; 2 uses
  %.sroa.414.0.extract.shift.i252 = lshr i64 %.sroa.016.0.insert.insert.i261336337, 32 ; 3 uses
  %.sroa.414.0.extract.trunc.i253 = trunc nuw i64 %.sroa.414.0.extract.shift.i252 to i32
  %.sroa.09.0.extract.trunc.i254 = trunc i64 %..i250 to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i255 = lshr i64 %..i250, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i256 = trunc nuw i64 %.sroa.4.0.extract.shift.i255 to i32
  %i.ie = sub nsw i32 %.sroa.414.0.extract.trunc.i253, %.sroa.4.0.extract.trunc.i256 ; 5 uses
  %i.if = icmp slt i32 %i.ie, -31
  br i1 %i.if, label %av_add_sf.exit294, label %bb.o

bb.o:                                             ; preds = %av_add_sf.exit
  %i.ig = icmp slt i32 %i.ie, 0
  br i1 %i.ig, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ih = sub nsw i32 0, %i.ie
  %i.ii = ashr i32 %.sroa.012.0.extract.trunc.i251, %i.ih
  %i.ij = add nsw i32 %i.ii, %.sroa.09.0.extract.trunc.i254 ; 2 uses
  %i.ik = add i32 %i.ij, 1073741824
  %i.il = icmp slt i32 %i.ik, 1                   ; 2 uses
  %i.im = zext i1 %i.il to i32
  %.sroa.0.0.i.i278 = ashr i32 %i.ij, %i.im       ; 4 uses
  %.not.i.i279 = icmp eq i32 %.sroa.0.0.i.i278, 0
  br i1 %.not.i.i279, label %av_normalize_sf.exit.i288, label %.preheader.i.i280

.preheader.i.i280:                                ; preds = %bb.p
  %i.in = zext i1 %i.il to i64
  %.sroa.5.0.i.i281 = add nuw nsw i64 %.sroa.4.0.extract.shift.i255, %i.in
  %.sroa.8.0.extract.trunc.i.i282 = trunc i64 %.sroa.5.0.i.i281 to i32 ; 2 uses
  %i.io = add i32 %.sroa.0.0.i.i278, 536870911
  %i.ip = icmp ult i32 %i.io, 1073741823
  br i1 %i.ip, label %.lr.ph.i.i291, label %._crit_edge.i.i283

.lr.ph.i.i291:                                    ; preds = %.preheader.i.i280, %.lr.ph.i.i291
  %.sroa.0.08.i.i292 = phi i32 [ %i.iq, %.lr.ph.i.i291 ], [ %.sroa.0.0.i.i278, %.preheader.i.i280 ]
  %.sroa.8.07.i.i293 = phi i32 [ %i.ir, %.lr.ph.i.i291 ], [ %.sroa.8.0.extract.trunc.i.i282, %.preheader.i.i280 ]
  %i.iq = shl nsw i32 %.sroa.0.08.i.i292, 1       ; 3 uses
  %i.ir = add nsw i32 %.sroa.8.07.i.i293, -1      ; 2 uses
  %i.is = add nsw i32 %i.iq, 536870911
  %i.it = icmp ult i32 %i.is, 1073741823
  br i1 %i.it, label %.lr.ph.i.i291, label %._crit_edge.i.i283, !llvm.loop !2

._crit_edge.i.i283:                               ; preds = %.lr.ph.i.i291, %.preheader.i.i280
  %.sroa.8.0.lcssa.i.i284 = phi i32 [ %.sroa.8.0.extract.trunc.i.i282, %.preheader.i.i280 ], [ %i.ir, %.lr.ph.i.i291 ] ; 2 uses
  %.sroa.0.0.lcssa.i.i285 = phi i32 [ %.sroa.0.0.i.i278, %.preheader.i.i280 ], [ %i.iq, %.lr.ph.i.i291 ]
  %i.iu = icmp slt i32 %.sroa.8.0.lcssa.i.i284, -149
  %spec.select.i.i286 = call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i284, i32 -149)
  %spec.select6.i.i287 = select i1 %i.iu, i32 0, i32 %.sroa.0.0.lcssa.i.i285
  %i.iv = zext i32 %spec.select.i.i286 to i64
  %i.iw = shl nuw i64 %i.iv, 32
  %i.ix = zext i32 %spec.select6.i.i287 to i64
  %i.iy = or disjoint i64 %i.iw, %i.ix
  br label %av_normalize_sf.exit.i288

av_normalize_sf.exit.i288:                        ; preds = %._crit_edge.i.i283, %bb.p
  %.sroa.05.0.insert.insert.i.i289 = phi i64 [ -639950127104, %bb.p ], [ %i.iy, %._crit_edge.i.i283 ] ; 2 uses
  %.sroa.5.0.extract.shift.i290 = lshr i64 %.sroa.05.0.insert.insert.i.i289, 32
  br label %av_add_sf.exit294

bb.q:                                             ; preds = %bb.o
  %i.iz = icmp samesign ult i32 %i.ie, 32
  br i1 %i.iz, label %bb.r, label %av_add_sf.exit294

bb.r:                                             ; preds = %bb.q
  %i.ja = ashr i32 %.sroa.09.0.extract.trunc.i254, %i.ie
  %i.jb = add nsw i32 %i.ja, %.sroa.012.0.extract.trunc.i251 ; 2 uses
  %i.jc = add i32 %i.jb, 1073741824
  %i.jd = icmp slt i32 %i.jc, 1                   ; 2 uses
  %i.je = zext i1 %i.jd to i32
  %.sroa.0.0.i24.i262 = ashr i32 %i.jb, %i.je     ; 4 uses
  %.not.i29.i263 = icmp eq i32 %.sroa.0.0.i24.i262, 0
  br i1 %.not.i29.i263, label %av_normalize_sf.exit41.i272, label %.preheader.i30.i264

.preheader.i30.i264:                              ; preds = %bb.r
  %i.jf = zext i1 %i.jd to i64
  %.sroa.5.0.i23.i265 = add nuw nsw i64 %.sroa.414.0.extract.shift.i252, %i.jf
  %.sroa.8.0.extract.trunc.i31.i266 = trunc i64 %.sroa.5.0.i23.i265 to i32 ; 2 uses
  %i.jg = add i32 %.sroa.0.0.i24.i262, 536870911
  %i.jh = icmp ult i32 %i.jg, 1073741823
  br i1 %i.jh, label %.lr.ph.i38.i275, label %._crit_edge.i32.i267

.lr.ph.i38.i275:                                  ; preds = %.preheader.i30.i264, %.lr.ph.i38.i275
  %.sroa.0.08.i39.i276 = phi i32 [ %i.ji, %.lr.ph.i38.i275 ], [ %.sroa.0.0.i24.i262, %.preheader.i30.i264 ]
  %.sroa.8.07.i40.i277 = phi i32 [ %i.jj, %.lr.ph.i38.i275 ], [ %.sroa.8.0.extract.trunc.i31.i266, %.preheader.i30.i264 ]
  %i.ji = shl nsw i32 %.sroa.0.08.i39.i276, 1     ; 3 uses
  %i.jj = add nsw i32 %.sroa.8.07.i40.i277, -1    ; 2 uses
  %i.jk = add nsw i32 %i.ji, 536870911
  %i.jl = icmp ult i32 %i.jk, 1073741823
  br i1 %i.jl, label %.lr.ph.i38.i275, label %._crit_edge.i32.i267, !llvm.loop !2

._crit_edge.i32.i267:                             ; preds = %.lr.ph.i38.i275, %.preheader.i30.i264
  %.sroa.8.0.lcssa.i33.i268 = phi i32 [ %.sroa.8.0.extract.trunc.i31.i266, %.preheader.i30.i264 ], [ %i.jj, %.lr.ph.i38.i275 ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i269 = phi i32 [ %.sroa.0.0.i24.i262, %.preheader.i30.i264 ], [ %i.ji, %.lr.ph.i38.i275 ]
  %i.jm = icmp slt i32 %.sroa.8.0.lcssa.i33.i268, -149
  %spec.select.i35.i270 = call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i268, i32 -149)
  %spec.select6.i36.i271 = select i1 %i.jm, i32 0, i32 %.sroa.0.0.lcssa.i34.i269
  %i.jn = zext i32 %spec.select.i35.i270 to i64
  %i.jo = shl nuw i64 %i.jn, 32
  %i.jp = zext i32 %spec.select6.i36.i271 to i64
  %i.jq = or disjoint i64 %i.jo, %i.jp
  br label %av_normalize_sf.exit41.i272

av_normalize_sf.exit41.i272:                      ; preds = %._crit_edge.i32.i267, %bb.r
  %.sroa.05.0.insert.insert.i37.i273 = phi i64 [ -639950127104, %bb.r ], [ %i.jq, %._crit_edge.i32.i267 ] ; 2 uses
  %.sroa.5.0.extract.shift18.i274 = lshr i64 %.sroa.05.0.insert.insert.i37.i273, 32
  br label %av_add_sf.exit294

av_add_sf.exit294:                                ; preds = %av_add_sf.exit, %av_normalize_sf.exit.i288, %bb.q, %av_normalize_sf.exit41.i272
  %.sroa.016.0.i257 = phi i64 [ %..i250, %av_add_sf.exit ], [ %.sroa.05.0.insert.insert.i.i289, %av_normalize_sf.exit.i288 ], [ %.sroa.05.0.insert.insert.i37.i273, %av_normalize_sf.exit41.i272 ], [ %.sroa.016.0.insert.insert.i261336337, %bb.q ]
  %.sroa.5.0.i258 = phi i64 [ %.sroa.4.0.extract.shift.i255, %av_add_sf.exit ], [ %.sroa.5.0.extract.shift.i290, %av_normalize_sf.exit.i288 ], [ %.sroa.5.0.extract.shift18.i274, %av_normalize_sf.exit41.i272 ], [ %.sroa.414.0.extract.shift.i252, %bb.q ]
  %.sroa.5.0.insert.shift.i259 = shl nuw i64 %.sroa.5.0.i258, 32
  %.sroa.016.0.insert.ext.i260 = and i64 %.sroa.016.0.i257, 4294967295
  %.sroa.016.0.insert.insert.i261 = or disjoint i64 %.sroa.5.0.insert.shift.i259, %.sroa.016.0.insert.ext.i260 ; 2 uses
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvars.iv.next385, %wide.trip.count387
  br i1 %exitcond388.not, label %bb.s, label %bb.j, !llvm.loop !253

bb.s:                                             ; preds = %av_add_sf.exit294
  store i64 %.sroa.016.0.insert.insert.i, ptr %i.fj, align 8
  store i64 %.sroa.016.0.insert.insert.i261, ptr %i.fl, align 8
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count392
  br i1 %exitcond393.not, label %.loopexit, label %bb.i, !llvm.loop !254

bb.t:                                             ; preds = %bb.h, %bb.g, %bb.f
  %gep444 = getelementptr inbounds nuw [384 x i8], ptr %invariant.gep443, i64 %indvars.iv397
  %i.jr = getelementptr inbounds nuw [384 x i8], ptr %i.i, i64 %indvars.iv397
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.preheader, %bb.t
  %.0213 = phi ptr [ %gep444, %bb.t ], [ %5, %.preheader ], [ %5, %bb.s ]
  %.0212 = phi ptr [ %i.jr, %bb.t ], [ %6, %.preheader ], [ %6, %bb.s ]
  %i.js = load ptr, ptr %i.dt, align 8, !tbaa !258
  %gep354 = getelementptr [512 x i8], ptr %invariant.gep353, i64 %indvars.iv397 ; 3 uses
  %i.jt = add nuw nsw i64 %indvars.iv397, 2
  call void %i.js(ptr noundef %gep354, ptr noundef %i.dv, ptr noundef %.0213, i32 noundef %i.g, i64 noundef %i.jt) #12
  %i.ju = load i32, ptr %4, align 4, !tbaa !14
  %i.jv = zext i32 %i.ju to i64
  %.not230 = icmp eq i64 %indvars.iv400, %i.jv
  br i1 %.not230, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.jw = load i32, ptr %i.dr, align 4, !tbaa !14
  %i.jx = zext i32 %i.jw to i64
  %.not231 = icmp eq i64 %indvars.iv400, %i.jx
  br i1 %.not231, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jy = sext i32 %.1215345 to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.jy
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !27
  call void %i.ka(ptr noundef %gep354, ptr noundef nonnull %i.fb, ptr noundef %.0212, i32 noundef %.1218344, i32 noundef %i.e, i32 noundef %i.g) #12
  br label %.critedge

bb.w:                                             ; preds = %bb.u, %.loopexit
  %i.kb = and i32 %.1215345, 1                    ; 3 uses
  %i.kc = add nsw i32 %.1215345, %i.dy
  %i.kd = and i32 %i.kc, 2
  %i.ke = sub nsw i32 1, %i.kd                    ; 3 uses
  %i.kf = sub nsw i32 0, %i.kb
  %i.kg = xor i32 %i.ke, %i.kf
  %i.kh = add nsw i32 %i.kg, %i.kb
  %i.ki = zext nneg i32 %i.kb to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %gep354, i64 %i.ki ; 3 uses
  br i1 %i.dz, label %.lr.ph343, label %._crit_edge

.lr.ph343:                                        ; preds = %bb.w, %bb.ac
  %indvars.iv394 = phi i64 [ %indvars.iv.next395, %bb.ac ], [ 0, %bb.w ] ; 4 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv394 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !76 ; 4 uses
  %i.kn = sub nsw i32 22, %i.km                   ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !76 ; 4 uses
  %i.kr = sub nsw i32 22, %i.kq                   ; 2 uses
  %i.ks = icmp slt i32 %i.km, 22
  %i.kt = icmp slt i32 %i.kq, 22
  %or.cond.not = select i1 %i.ks, i1 %i.kt, i1 false
  br i1 %or.cond.not, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %.lr.ph343
  %i.ku = icmp sgt i32 %i.km, -10
  br i1 %i.ku, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.kv = sub nsw i32 21, %i.km
  %i.kw = shl nuw nsw i32 1, %i.kv
  %i.kx = load i32, ptr %i.kk, align 4, !tbaa !77
  %i.ky = mul nsw i32 %i.kx, %i.ke
  %i.kz = add i32 %i.ky, %i.kw
  %i.la = ashr i32 %i.kz, %i.kn
  %.idx425 = shl nuw nsw i64 %indvars.iv394, 3
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.idx425 ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !14
  %i.ld = add i32 %i.la, %i.lc
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.le = icmp sgt i32 %i.kq, -10
  br i1 %i.le, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.lf = sub nsw i32 21, %i.kq
  %i.lg = shl nuw nsw i32 1, %i.lf
  %i.lh = load i32, ptr %i.ko, align 4, !tbaa !77
  %i.li = mul nsw i32 %i.lh, %i.kh
  %i.lj = add i32 %i.li, %i.lg
  %i.lk = ashr i32 %i.lj, %i.kr
  %.idx426 = shl nuw nsw i64 %indvars.iv394, 3
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.idx426
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !14
  %i.lo = add i32 %i.lk, %i.ln
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !14
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph343
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.39, i32 noundef %i.kn, i32 noundef %i.kr) #12
  br label %.critedge236

bb.ac:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 2 ; 3 uses
  %i.lp = trunc i64 %indvars.iv.next395 to i32
  %i.lq = or disjoint i32 %i.lp, 1
  %i.lr = icmp slt i32 %i.lq, %i.g
  br i1 %i.lr, label %.lr.ph343, label %._crit_edge.loopexit, !llvm.loop !255

._crit_edge.loopexit:                             ; preds = %bb.ac
  %i.ls = trunc nuw i64 %indvars.iv.next395 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.w
  %.1211.lcssa = phi i32 [ 0, %bb.w ], [ %i.ls, %._crit_edge.loopexit ] ; 2 uses
  br i1 %.not232, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.lt = zext nneg i32 %.1211.lcssa to i64
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.lt ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !76 ; 4 uses
  %i.lx = sub nsw i32 22, %i.lw                   ; 2 uses
  %i.ly = icmp sgt i32 %i.lw, 21
  br i1 %i.ly, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.40, i32 noundef %i.lx) #12
  br label %.critedge236

bb.af:                                            ; preds = %bb.ad
  %i.lz = icmp sgt i32 %i.lw, -10
  br i1 %i.lz, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.ma = sub nsw i32 21, %i.lw
  %i.mb = shl nuw nsw i32 1, %i.ma
  %i.mc = load i32, ptr %i.lu, align 4, !tbaa !77
  %i.md = mul nsw i32 %i.mc, %i.ke
  %i.me = add i32 %i.md, %i.mb
  %i.mf = ashr i32 %i.me, %i.lx
  %i.mg = shl nuw nsw i32 %.1211.lcssa, 1
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.mh ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !14
  %i.mk = add i32 %i.mf, %i.mj
  store i32 %i.mk, ptr %i.mi, align 4, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %bb.ag, %bb.af, %._crit_edge, %bb.v
  %i.ml = add nsw i32 %.1218344, %i.g
  %i.mm = and i32 %i.ml, 511                      ; 2 uses
  %i.mn = add nsw i32 %.1215345, 1
  %i.mo = and i32 %i.mn, 3                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %i.mp = load i8, ptr %i.ey, align 1, !tbaa !13  ; 2 uses
  %i.mq = zext i8 %i.mp to i64
  %i.mr = shl nuw nsw i64 %i.mq, 1
  %i.ms = icmp samesign ult i64 %indvars.iv.next398, %i.mr
  br i1 %i.ms, label %bb.f, label %.loopexit295.loopexit, !llvm.loop !256

._crit_edge359:                                   ; preds = %.loopexit295, %.loopexit299
  %.0217.lcssa = phi i32 [ %i.k, %.loopexit299 ], [ %.1218.lcssa, %.loopexit295 ]
  %.0214.lcssa = phi i32 [ %i.m, %.loopexit299 ], [ %.1215.lcssa, %.loopexit295 ]
  store i32 %.0217.lcssa, ptr %i.j, align 8, !tbaa !66
  store i32 %.0214.lcssa, ptr %i.l, align 4, !tbaa !257
  br label %bb.ah

.critedge236:                                     ; preds = %bb.ab, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge236, %._crit_edge359
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @sbr_x_gen(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 19456)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) #9 {
bb.a:
  %i.a = shl nsw i32 %6, 1                        ; 3 uses
  %i.b = sext i32 %5 to i64
  %i.c = getelementptr [106672 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 106753
  %i.e = load i8, ptr %i.d, align 1, !tbaa !70
  %i.f = zext i8 %i.e to i32
  %i.g = sub i32 %i.f, %6
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0) ; 2 uses
  %spec.select = shl nuw i32 %i.h, 1              ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(19456) %1, i8 0, i64 19456, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.preheader94.lr.ph, label %.preheader93

.preheader94.lr.ph:                               ; preds = %bb.a
  %i.l = icmp sgt i32 %spec.select, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9728
  br i1 %i.l, label %.preheader94.us.preheader, label %.preheader93

.preheader94.us.preheader:                        ; preds = %.preheader94.lr.ph
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.preheader94.us

.preheader94.us:                                  ; preds = %.preheader94.us.preheader, %._crit_edge.us
  %indvars.iv131 = phi i64 [ 0, %.preheader94.us.preheader ], [ %indvars.iv.next132, %._crit_edge.us ] ; 4 uses
  %i.n = getelementptr inbounds nuw [320 x i8], ptr %4, i64 %indvars.iv131 ; 2 uses
  %invariant.gep.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv131 ; 2 uses
  %invariant.gep97.us = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv131 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader94.us
  %indvars.iv = phi i64 [ 0, %.preheader94.us ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %gep.us = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep.us, i64 %indvars.iv
  store i32 %i.q, ptr %gep.us, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %gep98.us = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep97.us, i64 %indvars.iv
  store i32 %i.s, ptr %gep98.us, align 4, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14
  %gep.us.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep.us, i64 %indvars.iv.next
  store i32 %i.v, ptr %gep.us.1, align 4, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %gep98.us.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep97.us, i64 %indvars.iv.next
  store i32 %i.x, ptr %gep98.us.1, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.b, !llvm.loop !259

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 3 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next132, %i.z
  br i1 %i.aa, label %.preheader94.us, label %.preheader93.loopexit, !llvm.loop !260

.preheader93.loopexit:                            ; preds = %._crit_edge.us
  %i.ab = trunc nuw nsw i64 %indvars.iv.next132 to i32
  br label %.preheader93

.preheader93:                                     ; preds = %.preheader94.lr.ph, %.preheader93.loopexit, %bb.a
  %i.ac = phi i32 [ %i.j, %bb.a ], [ %i.y, %.preheader93.loopexit ], [ %i.j, %.preheader94.lr.ph ]
  %.084.lcssa = phi i32 [ 0, %bb.a ], [ %i.ab, %.preheader93.loopexit ], [ %i.j, %.preheader94.lr.ph ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.af = add nsw i32 %i.ae, %i.ac
  %i.ag = icmp slt i32 %.084.lcssa, %i.af
  br i1 %i.ag, label %.preheader92.lr.ph, label %.preheader91

.preheader92.lr.ph:                               ; preds = %.preheader93
  %i.ah = icmp sgt i32 %spec.select, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9728
  br i1 %i.ah, label %.preheader92.preheader, label %.preheader91

.preheader92.preheader:                           ; preds = %.preheader92.lr.ph
  %i.aj = sext i32 %i.a to i64
  %i.ak = zext nneg i32 %.084.lcssa to i64
  %wide.trip.count137 = zext nneg i32 %spec.select to i64
  %invariant.gep162 = getelementptr [512 x i8], ptr %2, i64 %i.aj
  br label %.preheader92

.preheader92:                                     ; preds = %.preheader92.preheader, %._crit_edge
  %indvars.iv139 = phi i64 [ %i.ak, %.preheader92.preheader ], [ %indvars.iv.next140, %._crit_edge ] ; 4 uses
  %invariant.gep101 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv139 ; 2 uses
  %invariant.gep103 = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv139 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep162, i64 %indvars.iv139 ; 2 uses
  br label %bb.d

.preheader91:                                     ; preds = %._crit_edge, %.preheader92.lr.ph, %.preheader93
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14 ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.preheader90.lr.ph, label %.preheader89

.preheader90.lr.ph:                               ; preds = %.preheader91
  %i.ao = icmp slt i32 %spec.select, 38
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 9728
  br i1 %i.ao, label %.preheader90.us.preheader, label %.preheader89

.preheader90.us.preheader:                        ; preds = %.preheader90.lr.ph
  %i.aq = sext i32 %spec.select to i64
  br label %.preheader90.us

.preheader90.us:                                  ; preds = %.preheader90.us.preheader, %._crit_edge107.us
  %indvars.iv147 = phi i64 [ 0, %.preheader90.us.preheader ], [ %indvars.iv.next148, %._crit_edge107.us ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [320 x i8], ptr %4, i64 %indvars.iv147
  %invariant.gep108.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv147
  %invariant.gep110.us = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv147
  br label %bb.c

bb.c:                                             ; preds = %.preheader90.us, %bb.c
  %indvars.iv143 = phi i64 [ %i.aq, %.preheader90.us ], [ %indvars.iv.next144, %bb.c ] ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv143 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  %gep109.us = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep108.us, i64 %indvars.iv143
  store i32 %i.au, ptr %gep109.us, align 4, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !14
  %gep111.us = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep110.us, i64 %indvars.iv143
  store i32 %i.aw, ptr %gep111.us, align 4, !tbaa !14
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.ax = and i64 %indvars.iv.next144, 4294967295
  %exitcond146.not = icmp eq i64 %i.ax, 38
  br i1 %exitcond146.not, label %._crit_edge107.us, label %bb.c, !llvm.loop !261

._crit_edge107.us:                                ; preds = %bb.c
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 3 uses
  %i.ay = load i32, ptr %i.al, align 4, !tbaa !14 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next148, %i.az
  br i1 %i.ba, label %.preheader90.us, label %.preheader89.loopexit, !llvm.loop !262

bb.d:                                             ; preds = %bb.d, %.preheader92
  %indvars.iv134 = phi i64 [ 0, %.preheader92 ], [ %indvars.iv.next135.1, %bb.d ] ; 5 uses
  %gep161 = getelementptr [512 x i8], ptr %gep, i64 %indvars.iv134 ; 2 uses
  %i.bb = load i32, ptr %gep161, align 4, !tbaa !14
  %gep102 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep101, i64 %indvars.iv134
  store i32 %i.bb, ptr %gep102, align 4, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %gep161, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !14
  %gep104 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep103, i64 %indvars.iv134
  store i32 %i.bd, ptr %gep104, align 4, !tbaa !14
  %indvars.iv.next135 = or disjoint i64 %indvars.iv134, 1 ; 3 uses
  %gep161.1 = getelementptr [512 x i8], ptr %gep, i64 %indvars.iv.next135 ; 2 uses
  %i.be = load i32, ptr %gep161.1, align 4, !tbaa !14
  %gep102.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep101, i64 %indvars.iv.next135
  store i32 %i.be, ptr %gep102.1, align 4, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %gep161.1, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !14
  %gep104.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep103, i64 %indvars.iv.next135
  store i32 %i.bg, ptr %gep104.1, align 4, !tbaa !14
  %indvars.iv.next135.1 = add nuw nsw i64 %indvars.iv134, 2 ; 2 uses
  %exitcond138.not.1 = icmp eq i64 %indvars.iv.next135.1, %wide.trip.count137
  br i1 %exitcond138.not.1, label %._crit_edge, label %bb.d, !llvm.loop !263

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.bh = load i32, ptr %i.i, align 4, !tbaa !14
  %i.bi = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.bj = add nsw i32 %i.bi, %i.bh
  %i.bk = trunc nuw i64 %indvars.iv.next140 to i32
  %i.bl = icmp sgt i32 %i.bj, %i.bk
  br i1 %i.bl, label %.preheader92, label %.preheader91, !llvm.loop !264

.preheader89.loopexit:                            ; preds = %._crit_edge107.us
  %i.bm = trunc nuw nsw i64 %indvars.iv.next148 to i32
  br label %.preheader89

.preheader89:                                     ; preds = %.preheader90.lr.ph, %.preheader89.loopexit, %.preheader91
  %i.bn = phi i32 [ %i.am, %.preheader91 ], [ %i.ay, %.preheader89.loopexit ], [ %i.am, %.preheader90.lr.ph ]
  %.286.lcssa = phi i32 [ 0, %.preheader91 ], [ %i.bm, %.preheader89.loopexit ], [ %i.am, %.preheader90.lr.ph ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = icmp slt i32 %.286.lcssa, %i.bq
  br i1 %i.br, label %.preheader.lr.ph, label %._crit_edge124.split

.preheader.lr.ph:                                 ; preds = %.preheader89
  %i.bs = icmp slt i32 %spec.select, %i.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 9728
  br i1 %i.bs, label %.preheader.preheader, label %._crit_edge124.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bu = shl nuw i32 %i.h, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = zext nneg i32 %.286.lcssa to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge116
  %indvars.iv153 = phi i64 [ %i.bw, %.preheader.preheader ], [ %indvars.iv.next154, %._crit_edge116 ] ; 4 uses
  %invariant.gep117 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv153 ; 2 uses
  %invariant.gep119 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv153 ; 2 uses
  %invariant.gep121 = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv153 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader
  %indvars.iv150 = phi i64 [ %i.bv, %.preheader ], [ %indvars.iv.next151.1, %bb.e ] ; 5 uses
  %gep118 = getelementptr inbounds nuw [512 x i8], ptr %invariant.gep117, i64 %indvars.iv150 ; 2 uses
  %i.bx = load i32, ptr %gep118, align 4, !tbaa !14
  %gep120 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep119, i64 %indvars.iv150
  store i32 %i.bx, ptr %gep120, align 4, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %gep118, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !14
  %gep122 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep121, i64 %indvars.iv150
  store i32 %i.bz, ptr %gep122, align 4, !tbaa !14
  %indvars.iv.next151 = or disjoint i64 %indvars.iv150, 1 ; 3 uses
  %gep118.1 = getelementptr inbounds nuw [512 x i8], ptr %invariant.gep117, i64 %indvars.iv.next151 ; 2 uses
  %i.ca = load i32, ptr %gep118.1, align 4, !tbaa !14
  %gep120.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep119, i64 %indvars.iv.next151
  store i32 %i.ca, ptr %gep120.1, align 4, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %gep118.1, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !14
  %gep122.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep121, i64 %indvars.iv.next151
  store i32 %i.cc, ptr %gep122.1, align 4, !tbaa !14
  %indvars.iv.next151.1 = add nuw nsw i64 %indvars.iv150, 2 ; 2 uses
  %i.cd = trunc nuw i64 %indvars.iv.next151.1 to i32
  %i.ce = icmp sgt i32 %i.a, %i.cd
  br i1 %i.ce, label %bb.e, label %._crit_edge116, !llvm.loop !265

._crit_edge116:                                   ; preds = %bb.e
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %i.cf = load i32, ptr %i.al, align 4, !tbaa !14
  %i.cg = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.ch = add nsw i32 %i.cg, %i.cf
  %i.ci = trunc nuw i64 %indvars.iv.next154 to i32
  %i.cj = icmp sgt i32 %i.ch, %i.ci
  br i1 %i.cj, label %.preheader, label %._crit_edge124.split, !llvm.loop !266

._crit_edge124.split:                             ; preds = %._crit_edge116, %.preheader.lr.ph, %.preheader89
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @sbr_hf_inverse_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i32 noundef %4) #3 {
bb.a:
  %5 = alloca [3 x [2 x [2 x %struct.SoftFloat]]], align 16 ; 12 uses
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bo
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bo ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !268
  %i.k = getelementptr inbounds nuw [320 x i8], ptr %3, i64 %indvars.iv
  call void %i.j(ptr noundef %i.k, ptr noundef nonnull %5) #12
  %i.l = load i64, ptr %i.c, align 16             ; 2 uses
  %i.m = load i64, ptr %i.d, align 16             ; 4 uses
  %.sroa.25.0.extract.shift.i = and i64 %i.m, -4294967296
  %i.n = shl i64 %i.l, 32
  %i.o = ashr exact i64 %i.n, 32
  %i.p = shl i64 %i.m, 32
  %i.q = ashr exact i64 %i.p, 32                  ; 5 uses
  %i.r = mul nsw i64 %i.q, %i.o
  %i.s = lshr i64 %i.r, 29
  %i.t = add i64 %.sroa.25.0.extract.shift.i, -4294967296 ; 3 uses
  %.sroa.0.0.insert.insert.i = add i64 %i.t, %i.l
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.s to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %.sroa.0.0.insert.insert.i, 32 ; 2 uses
  %i.u = add i32 %.sroa.0.0.extract.trunc.i.i, 1073741824
  %i.v = icmp slt i32 %i.u, 1                     ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i, 1
  %i.x = and i64 %i.w, 4294967295
  %.sroa.5.0.i.i = select i1 %i.v, i64 %i.x, i64 %.sroa.5.0.extract.shift.i.i ; 2 uses
  %i.y = zext i1 %i.v to i32
  %.sroa.0.0.i.i = ashr i32 %.sroa.0.0.extract.trunc.i.i, %i.y ; 2 uses
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.5.0.i.i, 32
  %.sroa.02.0.insert.ext.i.i = zext i32 %.sroa.0.0.i.i to i64
  %.sroa.02.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.02.0.insert.ext.i.i
  %.sroa.7.0.extract.trunc11.i = trunc nuw i64 %.sroa.5.0.i.i to i32
  %i.z = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.aa = icmp slt i32 %.sroa.7.0.extract.trunc11.i, -149
  %or.cond.i = select i1 %i.z, i1 true, i1 %i.aa
  %..i = select i1 %or.cond.i, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i ; 3 uses
  %i.ab = load i64, ptr %i.e, align 16            ; 3 uses
  %.sroa.25.0.extract.shift.i191 = and i64 %i.ab, -4294967296
  %i.ac = shl i64 %i.ab, 32
  %i.ad = ashr exact i64 %i.ac, 32                ; 6 uses
  %i.ae = mul nsw i64 %i.ad, %i.ad
  %i.af = lshr i64 %i.ae, 29
  %i.ag = add i64 %.sroa.25.0.extract.shift.i191, -4294967296 ; 5 uses
  %.sroa.0.0.insert.insert.i192 = add i64 %i.ag, %i.ab
  %.sroa.0.0.extract.trunc.i.i193 = trunc i64 %i.af to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i194 = lshr i64 %.sroa.0.0.insert.insert.i192, 32 ; 2 uses
  %i.ah = add i32 %.sroa.0.0.extract.trunc.i.i193, 1073741824
  %i.ai = icmp slt i32 %i.ah, 1                   ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i194, 1
  %i.ak = and i64 %i.aj, 4294967295
  %.sroa.5.0.i.i195 = select i1 %i.ai, i64 %i.ak, i64 %.sroa.5.0.extract.shift.i.i194 ; 2 uses
  %i.al = zext i1 %i.ai to i32
  %.sroa.0.0.i.i196 = ashr i32 %.sroa.0.0.extract.trunc.i.i193, %i.al ; 2 uses
  %.sroa.2.0.insert.shift.i.i197 = shl nuw i64 %.sroa.5.0.i.i195, 32
  %.sroa.02.0.insert.ext.i.i198 = zext i32 %.sroa.0.0.i.i196 to i64
  %.sroa.02.0.insert.insert.i.i199 = or disjoint i64 %.sroa.2.0.insert.shift.i.i197, %.sroa.02.0.insert.ext.i.i198
  %.sroa.7.0.extract.trunc11.i200 = trunc nuw i64 %.sroa.5.0.i.i195 to i32
  %i.am = icmp eq i32 %.sroa.0.0.i.i196, 0
  %i.an = icmp slt i32 %.sroa.7.0.extract.trunc11.i200, -149
  %or.cond.i201 = select i1 %i.am, i1 true, i1 %i.an
  %..i202 = select i1 %or.cond.i201, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i199 ; 3 uses
  %i.ao = load i64, ptr %i.f, align 8             ; 3 uses
  %.sroa.25.0.extract.shift.i203 = and i64 %i.ao, -4294967296
  %i.ap = shl i64 %i.ao, 32
  %i.aq = ashr exact i64 %i.ap, 32                ; 6 uses
  %i.ar = mul nsw i64 %i.aq, %i.aq
  %i.as = lshr i64 %i.ar, 29
  %i.at = add i64 %.sroa.25.0.extract.shift.i203, -4294967296 ; 5 uses
  %.sroa.0.0.insert.insert.i204 = add i64 %i.at, %i.ao
  %.sroa.0.0.extract.trunc.i.i205 = trunc i64 %i.as to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i206 = lshr i64 %.sroa.0.0.insert.insert.i204, 32 ; 2 uses
  %i.au = add i32 %.sroa.0.0.extract.trunc.i.i205, 1073741824
  %i.av = icmp slt i32 %i.au, 1                   ; 2 uses
  %i.aw = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i206, 1
  %i.ax = and i64 %i.aw, 4294967295
  %.sroa.5.0.i.i207 = select i1 %i.av, i64 %i.ax, i64 %.sroa.5.0.extract.shift.i.i206 ; 2 uses
  %i.ay = zext i1 %i.av to i32
  %.sroa.0.0.i.i208 = ashr i32 %.sroa.0.0.extract.trunc.i.i205, %i.ay ; 2 uses
  %.sroa.2.0.insert.shift.i.i209 = shl nuw i64 %.sroa.5.0.i.i207, 32
  %.sroa.02.0.insert.ext.i.i210 = zext i32 %.sroa.0.0.i.i208 to i64
  %.sroa.02.0.insert.insert.i.i211 = or disjoint i64 %.sroa.2.0.insert.shift.i.i209, %.sroa.02.0.insert.ext.i.i210
  %.sroa.7.0.extract.trunc11.i212 = trunc nuw i64 %.sroa.5.0.i.i207 to i32
  %i.az = icmp eq i32 %.sroa.0.0.i.i208, 0
  %i.ba = icmp slt i32 %.sroa.7.0.extract.trunc11.i212, -149
  %or.cond.i213 = select i1 %i.az, i1 true, i1 %i.ba
  %..i214 = select i1 %or.cond.i213, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i211 ; 3 uses
  %.sroa.012.0.extract.trunc.i = trunc i64 %..i202 to i32 ; 2 uses
  %.sroa.414.0.extract.shift.i = lshr i64 %..i202, 32 ; 3 uses
  %.sroa.414.0.extract.trunc.i = trunc nuw i64 %.sroa.414.0.extract.shift.i to i32
  %.sroa.09.0.extract.trunc.i = trunc i64 %..i214 to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %..i214, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.bb = sub nsw i32 %.sroa.414.0.extract.trunc.i, %.sroa.4.0.extract.trunc.i ; 5 uses
  %i.bc = icmp slt i32 %i.bb, -31
  br i1 %i.bc, label %av_add_sf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bd = icmp slt i32 %i.bb, 0
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.be = sub nsw i32 0, %i.bb
  %i.bf = ashr i32 %.sroa.012.0.extract.trunc.i, %i.be
  %i.bg = add nsw i32 %i.bf, %.sroa.09.0.extract.trunc.i ; 2 uses
  %i.bh = add i32 %i.bg, 1073741824
  %i.bi = icmp slt i32 %i.bh, 1                   ; 2 uses
  %i.bj = zext i1 %i.bi to i32
  %.sroa.0.0.i.i215 = ashr i32 %i.bg, %i.bj       ; 4 uses
  %.not.i.i = icmp eq i32 %.sroa.0.0.i.i215, 0
  br i1 %.not.i.i, label %av_normalize_sf.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %i.bk = zext i1 %i.bi to i64
  %.sroa.5.0.i.i216 = add nuw nsw i64 %.sroa.4.0.extract.shift.i, %i.bk
  %.sroa.8.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.i.i216 to i32 ; 2 uses
  %i.bl = add i32 %.sroa.0.0.i.i215, 536870911
  %i.bm = icmp ult i32 %i.bl, 1073741823
  br i1 %i.bm, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi i32 [ %i.bn, %.lr.ph.i.i ], [ %.sroa.0.0.i.i215, %.preheader.i.i ]
  %.sroa.8.07.i.i = phi i32 [ %i.bo, %.lr.ph.i.i ], [ %.sroa.8.0.extract.trunc.i.i, %.preheader.i.i ]
  %i.bn = shl nsw i32 %.sroa.0.08.i.i, 1          ; 3 uses
  %i.bo = add nsw i32 %.sroa.8.07.i.i, -1         ; 2 uses
  %i.bp = add nsw i32 %i.bn, 536870911
  %i.bq = icmp ult i32 %i.bp, 1073741823
  br i1 %i.bq, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.8.0.lcssa.i.i = phi i32 [ %.sroa.8.0.extract.trunc.i.i, %.preheader.i.i ], [ %i.bo, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.0.0.i.i215, %.preheader.i.i ], [ %i.bn, %.lr.ph.i.i ]
  %i.br = icmp slt i32 %.sroa.8.0.lcssa.i.i, -149
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i, i32 -149)
  %spec.select6.i.i = select i1 %i.br, i32 0, i32 %.sroa.0.0.lcssa.i.i
  %i.bs = zext i32 %spec.select.i.i to i64
  %i.bt = shl nuw i64 %i.bs, 32
  %i.bu = zext i32 %spec.select6.i.i to i64
  %i.bv = or disjoint i64 %i.bt, %i.bu
  br label %av_normalize_sf.exit.i

av_normalize_sf.exit.i:                           ; preds = %._crit_edge.i.i, %bb.d
  %.sroa.05.0.insert.insert.i.i = phi i64 [ -639950127104, %bb.d ], [ %i.bv, %._crit_edge.i.i ] ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %.sroa.05.0.insert.insert.i.i, 32
  br label %av_add_sf.exit

bb.e:                                             ; preds = %bb.c
  %i.bw = icmp samesign ult i32 %i.bb, 32
  br i1 %i.bw, label %bb.f, label %av_add_sf.exit

bb.f:                                             ; preds = %bb.e
  %i.bx = ashr i32 %.sroa.09.0.extract.trunc.i, %i.bb
  %i.by = add nsw i32 %i.bx, %.sroa.012.0.extract.trunc.i ; 2 uses
  %i.bz = add i32 %i.by, 1073741824
  %i.ca = icmp slt i32 %i.bz, 1                   ; 2 uses
  %i.cb = zext i1 %i.ca to i32
  %.sroa.0.0.i24.i = ashr i32 %i.by, %i.cb        ; 4 uses
  %.not.i29.i = icmp eq i32 %.sroa.0.0.i24.i, 0
  br i1 %.not.i29.i, label %av_normalize_sf.exit41.i, label %.preheader.i30.i

.preheader.i30.i:                                 ; preds = %bb.f
  %i.cc = zext i1 %i.ca to i64
  %.sroa.5.0.i23.i = add nuw nsw i64 %.sroa.414.0.extract.shift.i, %i.cc
  %.sroa.8.0.extract.trunc.i31.i = trunc i64 %.sroa.5.0.i23.i to i32 ; 2 uses
  %i.cd = add i32 %.sroa.0.0.i24.i, 536870911
  %i.ce = icmp ult i32 %i.cd, 1073741823
  br i1 %i.ce, label %.lr.ph.i38.i, label %._crit_edge.i32.i

.lr.ph.i38.i:                                     ; preds = %.preheader.i30.i, %.lr.ph.i38.i
  %.sroa.0.08.i39.i = phi i32 [ %i.cf, %.lr.ph.i38.i ], [ %.sroa.0.0.i24.i, %.preheader.i30.i ]
  %.sroa.8.07.i40.i = phi i32 [ %i.cg, %.lr.ph.i38.i ], [ %.sroa.8.0.extract.trunc.i31.i, %.preheader.i30.i ]
  %i.cf = shl nsw i32 %.sroa.0.08.i39.i, 1        ; 3 uses
  %i.cg = add nsw i32 %.sroa.8.07.i40.i, -1       ; 2 uses
  %i.ch = add nsw i32 %i.cf, 536870911
  %i.ci = icmp ult i32 %i.ch, 1073741823
  br i1 %i.ci, label %.lr.ph.i38.i, label %._crit_edge.i32.i, !llvm.loop !2

._crit_edge.i32.i:                                ; preds = %.lr.ph.i38.i, %.preheader.i30.i
  %.sroa.8.0.lcssa.i33.i = phi i32 [ %.sroa.8.0.extract.trunc.i31.i, %.preheader.i30.i ], [ %i.cg, %.lr.ph.i38.i ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i = phi i32 [ %.sroa.0.0.i24.i, %.preheader.i30.i ], [ %i.cf, %.lr.ph.i38.i ]
  %i.cj = icmp slt i32 %.sroa.8.0.lcssa.i33.i, -149
  %spec.select.i35.i = call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i, i32 -149)
  %spec.select6.i36.i = select i1 %i.cj, i32 0, i32 %.sroa.0.0.lcssa.i34.i
  %i.ck = zext i32 %spec.select.i35.i to i64
  %i.cl = shl nuw i64 %i.ck, 32
  %i.cm = zext i32 %spec.select6.i36.i to i64
  %i.cn = or disjoint i64 %i.cl, %i.cm
  br label %av_normalize_sf.exit41.i

av_normalize_sf.exit41.i:                         ; preds = %._crit_edge.i32.i, %bb.f
  %.sroa.05.0.insert.insert.i37.i = phi i64 [ -639950127104, %bb.f ], [ %i.cn, %._crit_edge.i32.i ] ; 2 uses
  %.sroa.5.0.extract.shift18.i = lshr i64 %.sroa.05.0.insert.insert.i37.i, 32
  br label %av_add_sf.exit

av_add_sf.exit:                                   ; preds = %bb.b, %av_normalize_sf.exit.i, %bb.e, %av_normalize_sf.exit41.i
  %.sroa.016.0.i = phi i64 [ %..i214, %bb.b ], [ %.sroa.05.0.insert.insert.i.i, %av_normalize_sf.exit.i ], [ %.sroa.05.0.insert.insert.i37.i, %av_normalize_sf.exit41.i ], [ %..i202, %bb.e ]
  %.sroa.5.0.i = phi i64 [ %.sroa.4.0.extract.shift.i, %bb.b ], [ %.sroa.5.0.extract.shift.i, %av_normalize_sf.exit.i ], [ %.sroa.5.0.extract.shift18.i, %av_normalize_sf.exit41.i ], [ %.sroa.414.0.extract.shift.i, %bb.e ] ; 2 uses
  %i.co = shl i64 %.sroa.016.0.i, 32
  %i.cp = ashr exact i64 %i.co, 32
  %i.cq = mul nsw i64 %i.cp, 1073740750
  %i.cr = lshr i64 %i.cq, 29
  %.sroa.0.0.extract.trunc.i.i218 = trunc i64 %i.cr to i32 ; 2 uses
  %i.cs = add nuw nsw i64 %.sroa.5.0.i, 4294967295
  %.sroa.5.0.extract.shift.i.i219 = and i64 %i.cs, 4294967295
  %i.ct = add i32 %.sroa.0.0.extract.trunc.i.i218, 1073741824
  %i.cu = icmp slt i32 %i.ct, 1                   ; 2 uses
  %.sroa.5.0.i.i220 = select i1 %i.cu, i64 %.sroa.5.0.i, i64 %.sroa.5.0.extract.shift.i.i219 ; 2 uses
end_hunk_1
begin_hunk_2_@sbr_hf_inverse_filter:bb.a
  %.not18.i754 = icmp ult i64 %i.wq, 4294967296
  br i1 %.not18.i754, label %.loopexit, label %.lr.ph.i755

.lr.ph.i755:                                      ; preds = %av_div_sf.exit749, %.lr.ph.i755
  %.020.i756 = phi i64 [ %i.wr, %.lr.ph.i755 ], [ %i.wo, %av_div_sf.exit749 ]
  %.sroa.9.019.i757 = phi i32 [ %i.ws, %.lr.ph.i755 ], [ %i.wp, %av_div_sf.exit749 ]
  %i.wr = sdiv i64 %.020.i756, 2                  ; 3 uses
  %i.ws = add nsw i32 %.sroa.9.019.i757, -1       ; 2 uses
  %i.wt = add nsw i64 %i.wr, 2147483648
  %.not.i758 = icmp ult i64 %i.wt, 4294967296
  br i1 %.not.i758, label %.loopexit, label %.lr.ph.i755, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i755, %av_div_sf.exit749
  %.sroa.9.0.lcssa.i759 = phi i32 [ %i.wp, %av_div_sf.exit749 ], [ %i.ws, %.lr.ph.i755 ]
  %.0.lcssa.i760 = phi i64 [ %i.wo, %av_div_sf.exit749 ], [ %i.wr, %.lr.ph.i755 ]
  %.sroa.9.0.insert.ext.i761 = zext i32 %.sroa.9.0.lcssa.i759 to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i762 = trunc nsw i64 %.0.lcssa.i760 to i32 ; 2 uses
  %i.wu = add i32 %.sroa.0.0.extract.trunc.i.i762, 1073741824
  %i.wv = icmp slt i32 %i.wu, 1                   ; 2 uses
  %i.ww = add nuw nsw i64 %.sroa.9.0.insert.ext.i761, 1
  %i.wx = and i64 %i.ww, 4294967295
  %.sroa.5.0.i.i763 = select i1 %i.wv, i64 %i.wx, i64 %.sroa.9.0.insert.ext.i761 ; 2 uses
  %i.wy = zext i1 %i.wv to i32
  %.sroa.0.0.i.i764 = ashr i32 %.sroa.0.0.extract.trunc.i.i762, %i.wy ; 2 uses
  %.sroa.2.0.insert.shift.i.i765 = shl nuw i64 %.sroa.5.0.i.i763, 32
  %.sroa.02.0.insert.ext.i.i766 = zext i32 %.sroa.0.0.i.i764 to i64
  %.sroa.02.0.insert.insert.i.i767 = or disjoint i64 %.sroa.2.0.insert.shift.i.i765, %.sroa.02.0.insert.ext.i.i766
  %.sroa.9.0.extract.trunc14.i768 = trunc nuw i64 %.sroa.5.0.i.i763 to i32
  %i.wz = icmp eq i32 %.sroa.0.0.i.i764, 0
  %i.xa = icmp slt i32 %.sroa.9.0.extract.trunc14.i768, -149
  %or.cond.i769 = select i1 %i.wz, i1 true, i1 %i.xa
  %..i770 = select i1 %or.cond.i769, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i767 ; 2 uses
  %.sroa.072.0.extract.trunc = trunc i64 %..i770 to i32 ; 4 uses
  %.sroa.674.0.extract.shift = lshr i64 %..i770, 32
  %.sroa.674.0.extract.trunc = trunc nuw i64 %.sroa.674.0.extract.shift to i32 ; 4 uses
  %i.xb = icmp sgt i32 %.sroa.677.0.extract.trunc, 2
  br i1 %i.xb, label %.thread782, label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.xc = icmp slt i32 %.sroa.677.0.extract.trunc, -29
  br i1 %i.xc, label %.thread782, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.xd = icmp sgt i32 %.sroa.677.0.extract.trunc, 0
  br i1 %i.xd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.neg = add nsw i32 %.sroa.677.0.extract.trunc, -1
  %i.xe = shl nsw i32 %.sroa.075.0.extract.trunc, %.neg
  br label %.thread782

bb.aw:                                            ; preds = %bb.au
  %i.xf = sub nsw i32 1, %.sroa.677.0.extract.trunc
  %i.xg = sub nsw i32 0, %.sroa.677.0.extract.trunc
  %i.xh = shl nuw nsw i32 1, %i.xg
  %i.xi = add nsw i32 %i.xh, %.sroa.075.0.extract.trunc
  %i.xj = ashr i32 %i.xi, %i.xf
  br label %.thread782

.thread782:                                       ; preds = %bb.at, %bb.ab, %.loopexit, %bb.aw, %bb.av
  %.sink = phi i32 [ 2147483647, %.loopexit ], [ %i.xj, %bb.aw ], [ %i.xe, %bb.av ], [ 0, %bb.ab ], [ 0, %bb.at ]
  %.sroa.674.0778 = phi i32 [ %.sroa.674.0.extract.trunc, %.loopexit ], [ %.sroa.674.0.extract.trunc, %bb.aw ], [ %.sroa.674.0.extract.trunc, %bb.av ], [ -149, %bb.ab ], [ %.sroa.674.0.extract.trunc, %bb.at ] ; 6 uses
  %.sroa.072.0776 = phi i32 [ %.sroa.072.0.extract.trunc, %.loopexit ], [ %.sroa.072.0.extract.trunc, %bb.aw ], [ %.sroa.072.0.extract.trunc, %bb.av ], [ 0, %bb.ab ], [ %.sroa.072.0.extract.trunc, %bb.at ] ; 2 uses
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i32 %.sink, ptr %i.xk, align 4, !tbaa !14
  %i.xl = icmp sgt i32 %.sroa.674.0778, 2
  br i1 %i.xl, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %.thread782
  %i.xm = icmp slt i32 %.sroa.674.0778, -29
  br i1 %i.xm, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.xn = icmp sgt i32 %.sroa.674.0778, 0
  br i1 %i.xn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.neg188 = add nsw i32 %.sroa.674.0778, -1
  %i.xo = shl nsw i32 %.sroa.072.0776, %.neg188
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.xp = sub nsw i32 1, %.sroa.674.0778
  %i.xq = sub nsw i32 0, %.sroa.674.0778
  %i.xr = shl nuw nsw i32 1, %i.xq
  %i.xs = add nsw i32 %.sroa.072.0776, %i.xr
  %i.xt = ashr i32 %i.xs, %i.xp
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ax, %.thread782, %bb.ba, %bb.az
  %.sink953 = phi i32 [ 2147483647, %.thread782 ], [ %i.xt, %bb.ba ], [ %i.xo, %bb.az ], [ 0, %bb.ax ]
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 4
  store i32 %.sink953, ptr %i.xv, align 4, !tbaa !14
  %i.xw = icmp sgt i32 %.sroa.866.0, 2
  br i1 %i.xw, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.xx = icmp slt i32 %.sroa.866.0, -29
  br i1 %i.xx, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.xy = icmp sgt i32 %.sroa.866.0, 0
  br i1 %i.xy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %.neg189 = add nsw i32 %.sroa.866.0, -1
  %i.xz = shl nsw i32 %.sroa.059.0, %.neg189
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.ya = sub nsw i32 1, %.sroa.866.0
  %i.yb = sub nsw i32 0, %.sroa.866.0
  %i.yc = shl nuw nsw i32 1, %i.yb
  %i.yd = add nsw i32 %i.yc, %.sroa.059.0
  %i.ye = ashr i32 %i.yd, %i.ya
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %bb.bb, %bb.bf, %bb.be
  %.sink956 = phi i32 [ 2147483647, %bb.bb ], [ %i.ye, %bb.bf ], [ %i.xz, %bb.be ], [ 0, %bb.bc ] ; 2 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i32 %.sink956, ptr %i.yf, align 4, !tbaa !14
  %i.yg = icmp sgt i32 %.sroa.8.0, 2
  br i1 %i.yg, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.yh = icmp slt i32 %.sroa.8.0, -29
  br i1 %i.yh, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.yi = icmp sgt i32 %.sroa.8.0, 0
  br i1 %i.yi, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.neg190 = add nsw i32 %.sroa.8.0, -1
  %i.yj = shl nsw i32 %.sroa.047.0, %.neg190
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.yk = sub nsw i32 1, %.sroa.8.0
  %i.yl = sub nsw i32 0, %.sroa.8.0
  %i.ym = shl nuw nsw i32 1, %i.yl
  %i.yn = add nsw i32 %i.ym, %.sroa.047.0
  %i.yo = ashr i32 %i.yn, %i.yk
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bh, %bb.bg, %bb.bk, %bb.bj
  %.sink958 = phi i32 [ 2147483647, %bb.bg ], [ %i.yo, %bb.bk ], [ %i.yj, %bb.bj ], [ 0, %bb.bh ] ; 2 uses
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  store i32 %.sink958, ptr %i.yq, align 4, !tbaa !14
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.ys = ashr i32 %.sink956, 1
  %i.yt = sext i32 %i.ys to i64                   ; 2 uses
  %i.yu = mul nsw i64 %i.yt, %i.yt
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yr, i64 4 ; 2 uses
  %i.yw = ashr i32 %.sink958, 1
  %i.yx = sext i32 %i.yw to i64                   ; 2 uses
  %i.yy = mul nsw i64 %i.yx, %i.yx
  %i.yz = add nuw nsw i64 %i.yy, %i.yu
  %i.za = icmp samesign ugt i64 %i.yz, 1152921503533105151
  br i1 %i.za, label %.thread, label %bb.bm

.thread:                                          ; preds = %bb.bl
  store i32 0, ptr %i.yr, align 4, !tbaa !14
  store i32 0, ptr %i.yv, align 4, !tbaa !14
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.zb, align 4, !tbaa !14
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  store i32 0, ptr %i.zc, align 4, !tbaa !14
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert893 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre894 = load i32, ptr %.phi.trans.insert893, align 4, !tbaa !14
  %i.zd = ashr i32 %.pre, 1
  %i.ze = sext i32 %i.zd to i64                   ; 2 uses
  %i.zf = mul nsw i64 %i.ze, %i.ze
  %i.zg = ashr i32 %.pre894, 1
  %i.zh = sext i32 %i.zg to i64                   ; 2 uses
  %i.zi = mul nsw i64 %i.zh, %i.zh
  %i.zj = add nuw nsw i64 %i.zi, %i.zf
  %i.zk = icmp samesign ugt i64 %i.zj, 1152921503533105151
  br i1 %i.zk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 4
  store i32 0, ptr %i.yr, align 4, !tbaa !14
  store i32 0, ptr %i.yv, align 4, !tbaa !14
  store i32 0, ptr %i.zl, align 4, !tbaa !14
  store i32 0, ptr %i.zm, align 4, !tbaa !14
  br label %bb.bo

bb.bo:                                            ; preds = %.thread, %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !267

._crit_edge:                                      ; preds = %bb.bo, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !59}
!1 = distinct !{!1, !59}
!2 = distinct !{!2, !59}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"override-stack-alignment", i32 16}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!"SpectrumParameters", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5}
!16 = !{!"PSCommonContext", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !8, i64 52, !8, i64 76, !8, i64 246, !8, i64 416, !8, i64 586, !9, i64 756, !9, i64 760}
!17 = !{!"PSDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !8, i64 48}
!18 = !{!"PSContext", !16, i64 0, !8, i64 768, !8, i64 2528, !8, i64 36016, !8, i64 80416, !8, i64 80560, !8, i64 80704, !8, i64 80848, !8, i64 82480, !8, i64 84112, !8, i64 85744, !8, i64 87376, !8, i64 110672, !8, i64 133968, !8, i64 134002, !17, i64 134040}
!19 = !{!"p1 _ZTS11AVTXContext", !12, i64 0}
!20 = !{!"SBRDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !8, i64 80}
!21 = !{!"AACSBRContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!22 = !{!"SpectralBandReplication", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !15, i64 28, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !8, i64 64, !8, i64 84, !8, i64 92, !9, i64 100, !9, i64 104, !8, i64 112, !18, i64 213456, !8, i64 347568, !9, i64 347576, !9, i64 347580, !8, i64 347584, !8, i64 347682, !8, i64 347732, !8, i64 347830, !8, i64 347842, !9, i64 347904, !8, i64 347908, !8, i64 347914, !8, i64 347920, !8, i64 358160, !8, i64 378640, !8, i64 417552, !8, i64 418064, !8, i64 418576, !8, i64 421648, !8, i64 424720, !8, i64 425104, !8, i64 428176, !8, i64 431248, !8, i64 434320, !8, i64 437392, !19, i64 438672, !12, i64 438680, !19, i64 438688, !12, i64 438696, !20, i64 438704, !21, i64 438816}
!23 = !{!22, !9, i64 12}
!24 = !{!22, !9, i64 16}
!25 = !{!"SBRData", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !9, i64 24, !8, i64 28, !8, i64 37, !8, i64 39, !8, i64 49, !9, i64 100, !8, i64 112, !8, i64 9328, !9, i64 14576, !8, i64 14580, !8, i64 14588, !8, i64 14608, !9, i64 30992, !8, i64 31008, !8, i64 69920, !8, i64 86048, !8, i64 102176, !8, i64 102608, !8, i64 103040, !8, i64 106496, !8, i64 106512, !8, i64 106632, !8, i64 106641, !8, i64 106642, !9, i64 106648, !9, i64 106652, !8, i64 106656, !8, i64 106662}
!26 = !{!"float", !8, i64 0}
!27 = !{!12, !12, i64 0}
!28 = !{!"p1 omnipotent char", !12, i64 0}
!29 = !{!"GetBitContext", !28, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!30 = !{!29, !9, i64 8}
!31 = !{!29, !9, i64 16}
!32 = !{!22, !9, i64 24}
!33 = !{!22, !9, i64 0}
!34 = !{!"MPEG4AudioConfig", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48}
!35 = !{!"AVChannelLayout", !9, i64 0, !9, i64 4, !8, i64 8, !12, i64 16}
!36 = !{!"short", !8, i64 0}
!37 = !{!"", !8, i64 0, !8, i64 2, !8, i64 3842, !8, i64 3844, !9, i64 7684}
!38 = !{!"AACUSACConfig", !8, i64 0, !36, i64 2, !36, i64 4, !8, i64 8, !9, i64 4616, !37, i64 4620}
!39 = !{!"OutputConfiguration", !34, i64 0, !8, i64 52, !9, i64 820, !35, i64 824, !9, i64 848, !38, i64 856}
!40 = !{!39, !9, i64 28}
!41 = !{!22, !9, i64 100}
!42 = !{!29, !28, i64 0}
!43 = !{!22, !9, i64 44}
!44 = !{!22, !9, i64 4}
!45 = !{!22, !9, i64 8}
!46 = !{!22, !9, i64 36}
!47 = !{!22, !9, i64 48}
!48 = !{!22, !9, i64 52}
!49 = !{!22, !9, i64 56}
!50 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!51 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!52 = !{!"AACDecDSP", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112}
!53 = !{!"AACDecProc", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!54 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!55 = !{!"DynamicRangeControl", !9, i64 0, !8, i64 4, !8, i64 72, !8, i64 140, !9, i64 396, !9, i64 400, !8, i64 404, !9, i64 472}
!56 = !{!"AACDecContext", !50, i64 0, !51, i64 8, !52, i64 16, !53, i64 136, !54, i64 184, !9, i64 192, !55, i64 196, !8, i64 672, !8, i64 2720, !9, i64 4768, !9, i64 4772, !8, i64 4784, !8, i64 8880, !19, i64 9392, !19, i64 9400, !19, i64 9408, !19, i64 9416, !19, i64 9424, !19, i64 9432, !19, i64 9440, !19, i64 9448, !19, i64 9456, !12, i64 9464, !12, i64 9472, !12, i64 9480, !12, i64 9488, !12, i64 9496, !12, i64 9504, !12, i64 9512, !12, i64 9520, !12, i64 9528, !8, i64 9536, !9, i64 9544, !8, i64 9552, !9, i64 10064, !9, i64 10068, !9, i64 10072, !9, i64 10076, !9, i64 10080, !8, i64 10088, !9, i64 36424, !9, i64 36428, !9, i64 36432, !9, i64 36436, !9, i64 36440}
!57 = !{!56, !51, i64 8}
!58 = !{!36, !36, i64 0}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!22, !9, i64 347576}
!64 = !{!22, !9, i64 347904}
!65 = !{!"llvm.loop.peeled.count", i32 1}
!66 = !{!25, !9, i64 106648}
!67 = !{!25, !9, i64 4}
!68 = !{!22, !9, i64 60}
!69 = !{!25, !9, i64 8}
!70 = !{!25, !8, i64 106641}
!71 = !{!25, !9, i64 100}
!72 = !{!25, !9, i64 24}
!73 = !{!25, !9, i64 0}
!74 = !{!39, !9, i64 40}
!75 = !{!"SoftFloat", !9, i64 0, !9, i64 4}
!76 = !{!75, !9, i64 4}
!77 = !{!75, !9, i64 0}
!78 = !{!"AVFixedDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!79 = !{!22, !9, i64 347580}
!80 = !{!"p1 _ZTS14ChannelElement", !12, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!25, !9, i64 14576}
!83 = !{!26, !26, i64 0}
!84 = distinct !{!84, !59}
!85 = distinct !{!85, !59}
!86 = distinct !{!86, !59}
!87 = distinct !{!87, !59}
!88 = distinct !{!88, !59}
!89 = distinct !{!89, !59}
!90 = distinct !{!90, !60}
!91 = distinct !{!91, !59, !61, !62}
!92 = distinct !{!92, !59, !61, !62}
!93 = distinct !{!93, !59, !62, !61}
!94 = distinct !{!94, !59}
!95 = distinct !{!95, !59}
!96 = distinct !{!96, !59}
!97 = distinct !{!97, !59}
!98 = distinct !{!98, !59}
!99 = distinct !{!99, !59}
!100 = distinct !{!100, !59}
!101 = distinct !{!101, !59}
!102 = distinct !{!102, !59}
!103 = distinct !{!103, !59, !61, !62}
!104 = distinct !{!104, !59, !62, !61}
!105 = distinct !{!105, !59}
!106 = distinct !{!106, !59}
!107 = distinct !{!107, !59}
!108 = distinct !{!108, !59}
!109 = distinct !{!109, !59}
!110 = distinct !{!110, !59}
!111 = distinct !{!111, !59}
!112 = distinct !{!112, !59}
!113 = distinct !{!113, !59}
!114 = distinct !{!114, !59}
!115 = distinct !{!115, !59}
!116 = distinct !{!116, !60}
!117 = distinct !{!117, !59, !61, !62}
!118 = distinct !{!118, !59, !62, !61}
!119 = distinct !{!119, !59}
!120 = distinct !{!120, !59}
!121 = distinct !{!121, !59, !65}
!122 = distinct !{!122, !59}
!123 = distinct !{!123, !59}
!124 = distinct !{!124, !59}
!125 = !{!28, !28, i64 0}
!126 = !{i64 0, i64 8, !125, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14}
!127 = !{!39, !9, i64 8}
!128 = !{!22, !8, i64 28}
!129 = !{!22, !8, i64 29}
!130 = !{!22, !8, i64 30}
!131 = !{!22, !8, i64 31}
!132 = !{!22, !8, i64 32}
!133 = !{!22, !8, i64 33}
!134 = !{!15, !8, i64 0}
!135 = !{!15, !8, i64 1}
!136 = !{!15, !8, i64 3}
!137 = !{!15, !8, i64 4}
!138 = !{!22, !9, i64 104}
!139 = !{!"branch_weights", i32 4, i32 12}
!140 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!141 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!142 = !{!"long", !8, i64 0}
!143 = !{!"AVRational", !9, i64 0, !9, i64 4}
!144 = !{!"p1 short", !12, i64 0}
!145 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!146 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!147 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!148 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!149 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!150 = !{!"p1 int", !12, i64 0}
!151 = !{!"any p2 pointer", !12, i64 0}
!152 = !{!"p2 _ZTS15AVFrameSideData", !151, i64 0}
!153 = !{!"AVCodecContext", !50, i64 0, !9, i64 8, !9, i64 12, !140, i64 16, !9, i64 24, !9, i64 28, !12, i64 32, !141, i64 40, !12, i64 48, !142, i64 56, !9, i64 64, !9, i64 68, !28, i64 72, !9, i64 80, !143, i64 84, !143, i64 92, !143, i64 100, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !143, i64 128, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !12, i64 184, !12, i64 192, !9, i64 200, !26, i64 204, !26, i64 208, !26, i64 212, !26, i64 216, !26, i64 220, !26, i64 224, !26, i64 228, !26, i64 232, !26, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !144, i64 288, !144, i64 296, !144, i64 304, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 336, !9, i64 340, !9, i64 344, !9, i64 348, !35, i64 352, !9, i64 376, !9, i64 380, !9, i64 384, !9, i64 388, !9, i64 392, !9, i64 396, !9, i64 400, !9, i64 404, !12, i64 408, !9, i64 416, !9, i64 420, !9, i64 424, !26, i64 428, !26, i64 432, !9, i64 436, !9, i64 440, !9, i64 444, !9, i64 448, !9, i64 452, !145, i64 456, !142, i64 464, !142, i64 472, !26, i64 480, !26, i64 484, !9, i64 488, !9, i64 492, !28, i64 496, !28, i64 504, !9, i64 512, !9, i64 516, !9, i64 520, !9, i64 524, !9, i64 528, !146, i64 536, !12, i64 544, !147, i64 552, !147, i64 560, !9, i64 568, !9, i64 572, !8, i64 576, !9, i64 640, !9, i64 644, !9, i64 648, !9, i64 652, !9, i64 656, !9, i64 660, !9, i64 664, !12, i64 672, !12, i64 680, !9, i64 688, !9, i64 692, !9, i64 696, !9, i64 700, !9, i64 704, !9, i64 708, !9, i64 712, !9, i64 716, !9, i64 720, !148, i64 728, !28, i64 736, !9, i64 744, !9, i64 748, !28, i64 752, !28, i64 760, !28, i64 768, !149, i64 776, !9, i64 784, !9, i64 788, !142, i64 792, !9, i64 800, !9, i64 804, !142, i64 808, !12, i64 816, !142, i64 824, !150, i64 832, !9, i64 840, !152, i64 848, !9, i64 856, !9, i64 860}
!154 = !{!153, !9, i64 688}
!155 = !{!56, !9, i64 36436}
!156 = distinct !{!156, !59}
!157 = distinct !{!157, !59}
!158 = distinct !{!158, !59}
!159 = distinct !{!159, !59, !200}
!160 = distinct !{!160, !59}
!161 = distinct !{!161, !59}
!162 = distinct !{!162, !59}
!163 = distinct !{!163, !60}
!164 = distinct !{!164, !59}
!165 = distinct !{!165, !59}
!166 = distinct !{null}
!167 = distinct !{!167, !59}
!168 = distinct !{!168, !59}
!169 = distinct !{!169, !59}
!170 = distinct !{!170, !59}
!171 = distinct !{null}
!172 = distinct !{!172, !59}
!173 = distinct !{!173, !59}
!174 = distinct !{!174, !59}
!175 = distinct !{!175, !59}
!176 = distinct !{!176, !60}
!177 = distinct !{!177, !59}
!178 = distinct !{!178, !59}
!179 = distinct !{!179, !60}
!180 = distinct !{!180, !59}
!181 = distinct !{!181, !59}
!182 = distinct !{!182, !59}
!183 = distinct !{!183, !59}
!184 = distinct !{!184, !59}
!185 = distinct !{null}
!186 = distinct !{!186, !59}
!187 = distinct !{!187, !59}
!188 = distinct !{!188, !59}
!189 = distinct !{!189, !59}
!190 = distinct !{!190, !59, !61, !62}
!191 = distinct !{!191, !59, !62, !61}
!192 = distinct !{!192, !59}
!193 = distinct !{!193, !59}
!194 = distinct !{!194, !59}
!195 = distinct !{!195, !59}
!196 = distinct !{!196, !59}
!197 = distinct !{!197, !59}
!198 = distinct !{!198, !59}
!199 = distinct !{!199, !59}
!200 = !{!"llvm.loop.unswitch.partial.disable"}
!201 = !{!22, !19, i64 438672}
!202 = !{!22, !12, i64 438680}
!203 = !{!25, !9, i64 30992}
!204 = !{!78, !12, i64 24}
!205 = !{!20, !12, i64 0}
!206 = !{!20, !12, i64 24}
!207 = !{!20, !12, i64 32}
!208 = !{!22, !12, i64 438816}
!209 = !{!22, !12, i64 438840}
!210 = !{!22, !12, i64 438768}
!211 = !{!22, !12, i64 438712}
!212 = !{!22, !12, i64 438824}
!213 = !{!22, !12, i64 438832}
!214 = !{!22, !9, i64 213456}
!215 = !{!22, !19, i64 438688}
!216 = !{!22, !12, i64 438696}
!217 = distinct !{!217, !59}
!218 = !{!20, !12, i64 40}
!219 = !{!20, !12, i64 16}
!220 = !{!20, !12, i64 48}
!221 = !{!78, !12, i64 16}
!222 = !{!78, !12, i64 32}
!223 = distinct !{!223, !59}
!224 = distinct !{!224, !60}
!225 = distinct !{!225, !59}
!226 = distinct !{!226, !59}
!227 = distinct !{!227, !59}
!228 = distinct !{!228, !59}
!229 = distinct !{!229, !59}
!230 = distinct !{!230, !59}
!231 = distinct !{!231, !59}
!232 = distinct !{!232, !59}
!233 = distinct !{!233, !59}
!234 = distinct !{!234, !59}
!235 = distinct !{!235, !59}
!236 = distinct !{!236, !59}
!237 = distinct !{!237, !59}
!238 = distinct !{!238, !59, !65}
!239 = distinct !{!239, !59}
!240 = distinct !{!240, !59}
!241 = !{!"p1 _ZTS7VLCElem", !12, i64 0}
!242 = !{!241, !241, i64 0}
!243 = !{!22, !9, i64 20}
!244 = distinct !{!244, !59}
!245 = distinct !{!245, !59}
!246 = distinct !{!246, !59}
!247 = distinct !{!247, !59}
!248 = distinct !{!248, !59}
!249 = distinct !{!249, !59}
!250 = distinct !{!250, !59}
!251 = distinct !{!251, !59}
!252 = distinct !{!252, !59}
!253 = distinct !{!253, !59}
!254 = distinct !{!254, !59}
!255 = distinct !{!255, !59}
!256 = distinct !{!256, !59}
!257 = !{!25, !9, i64 106652}
!258 = !{!22, !12, i64 438776}
!259 = distinct !{!259, !59}
!260 = distinct !{!260, !59}
!261 = distinct !{!261, !59}
!262 = distinct !{!262, !59}
!263 = distinct !{!263, !59}
!264 = distinct !{!264, !59}
!265 = distinct !{!265, !59}
!266 = distinct !{!266, !59}
!267 = distinct !{!267, !59}
!268 = !{!20, !12, i64 56}
end_hunk_2
