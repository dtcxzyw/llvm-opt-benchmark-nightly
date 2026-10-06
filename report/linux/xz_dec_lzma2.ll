Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xz_dec_lzma2?download=true
inline.NumInlined: 34
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@xz_dec_lzma2_run:bb.a

.critedge:                                        ; preds = %bb.b
  switch i32 %.pre, label %.backedge [
    i32 0, label %bb.d
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.u
    i32 5, label %bb.v
    i32 6, label %bb.aa
    i32 7, label %.critedge._crit_edge
    i32 8, label %bb.bg
  ]

.critedge._crit_edge:                             ; preds = %bb.c, %.critedge
  %.pre109 = load i32, ptr %i.e, align 4
  br label %bb.ad

bb.d:                                             ; preds = %.critedge
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = add nuw i64 %i.af, 1
  store i64 %i.ak, ptr %i.a, align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.af
  %i.am = load i8, ptr %i.al, align 1             ; 8 uses
  %i.an = zext i8 %i.am to i32
  %i.ao = icmp eq i8 %i.am, 0
  br i1 %i.ao, label %rc_read_init.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp ugt i8 %i.am, -33
  %i.aq = icmp eq i8 %i.am, 1
  %or.cond = or i1 %i.ap, %i.aq
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.ae, align 1
  store i8 0, ptr %i.ad, align 8
  %i.ar = load i32, ptr %i.k, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.g, label %dict_reset.exit

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.l, align 8
  %i.au = load i64, ptr %i.f, align 8
  %i.av = getelementptr i8, ptr %i.at, i64 %i.au
  store ptr %i.av, ptr %i.d, align 8
  %i.aw = load i64, ptr %i.g, align 8
  %i.ax = load i64, ptr %i.f, align 8
  %i.ay = sub i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.h, align 8
  br label %dict_reset.exit

dict_reset.exit:                                  ; preds = %bb.f, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.az = load i8, ptr %i.ad, align 8, !range !16, !noundef !17
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %rc_read_init.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %dict_reset.exit
  %i.bb = icmp slt i8 %i.am, 0
  br i1 %i.bb, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bc = shl nuw nsw i32 %i.an, 16
  %i.bd = and i32 %i.bc, 2031616
  store i32 %i.bd, ptr %i.u, align 8
  store i32 1, ptr %i.c, align 8
  %i.be = icmp samesign ugt i8 %i.am, -65
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.ae, align 1
  store i32 5, ptr %i.ac, align 4
  br label %.backedge

bb.l:                                             ; preds = %bb.j
  %i.bf = load i8, ptr %i.ae, align 1, !range !16, !noundef !17
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %rc_read_init.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 6, ptr %i.ac, align 4
  %i.bh = icmp samesign ugt i8 %i.am, -97
  br i1 %i.bh, label %bb.n, label %.backedge

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.011.i = phi i64 [ 0, %bb.n ], [ %i.bl, %bb.o ] ; 3 uses
  %i.bi = getelementptr [2 x i8], ptr %i.r, i64 %.011.i
  store i16 1024, ptr %i.bi, align 2
  %i.bj = getelementptr [2 x i8], ptr %i.r, i64 %.011.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 2
  store i16 1024, ptr %i.bk, align 2
  %i.bl = add nuw nsw i64 %.011.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bl, 14134
  br i1 %exitcond.not.i.1, label %lzma_reset.exit, label %bb.o, !llvm.loop !12

lzma_reset.exit:                                  ; preds = %bb.o
  store i32 -1, ptr %0, align 8
  store i32 0, ptr %i.s, align 4
  store i32 5, ptr %i.t, align 8
  br label %.backedge

bb.p:                                             ; preds = %bb.i
  %i.bm = icmp samesign ugt i8 %i.am, 2
  br i1 %i.bm, label %rc_read_init.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 3, ptr %i.c, align 8
  store i32 8, ptr %i.ac, align 4
  br label %.backedge

bb.r:                                             ; preds = %.critedge
  %i.bn = load ptr, ptr %1, align 8
  %i.bo = add nuw i64 %i.af, 1
  store i64 %i.bo, ptr %i.a, align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 %i.af
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = load i32, ptr %i.u, align 8
  %i.bu = add i32 %i.bs, %i.bt
  store i32 %i.bu, ptr %i.u, align 8
  store i32 2, ptr %i.c, align 8
  br label %.backedge

bb.s:                                             ; preds = %.critedge
  %i.bv = load ptr, ptr %1, align 8
  %i.bw = add nuw i64 %i.af, 1
  store i64 %i.bw, ptr %i.a, align 8
  %i.bx = getelementptr i8, ptr %i.bv, i64 %i.af
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32
  %i.ca = add nuw nsw i32 %i.bz, 1
  %i.cb = load i32, ptr %i.u, align 8
  %i.cc = add i32 %i.ca, %i.cb
  store i32 %i.cc, ptr %i.u, align 8
  store i32 3, ptr %i.c, align 8
  br label %.backedge

bb.t:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %1, align 8
  %i.ce = add nuw i64 %i.af, 1
  store i64 %i.ce, ptr %i.a, align 8
  %i.cf = getelementptr i8, ptr %i.cd, i64 %i.af
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  store i32 %i.ci, ptr %i.e, align 4
  store i32 4, ptr %i.c, align 8
  br label %.backedge

bb.u:                                             ; preds = %.critedge
  %i.cj = load ptr, ptr %1, align 8
  %i.ck = add nuw i64 %i.af, 1
  store i64 %i.ck, ptr %i.a, align 8
  %i.cl = getelementptr i8, ptr %i.cj, i64 %i.af
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i32
  %i.co = add nuw nsw i32 %i.cn, 1
  %i.cp = load i32, ptr %i.e, align 4
  %i.cq = add i32 %i.co, %i.cp
  store i32 %i.cq, ptr %i.e, align 4
  %i.cr = load i32, ptr %i.ac, align 4
  store i32 %i.cr, ptr %i.c, align 8
  br label %.backedge

bb.v:                                             ; preds = %.critedge
  %i.cs = load ptr, ptr %1, align 8
  %i.ct = add nuw i64 %i.af, 1
  store i64 %i.ct, ptr %i.a, align 8
  %i.cu = getelementptr i8, ptr %i.cs, i64 %i.af
  %i.cv = load i8, ptr %i.cu, align 1             ; 4 uses
  %i.cw = icmp ugt i8 %i.cv, -32
  br i1 %i.cw, label %rc_read_init.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = icmp ugt i8 %i.cv, 44
  br i1 %i.cx, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.w
  %i.cy = add i8 %i.cv, -45                       ; 2 uses
  %i.cz = urem i8 %i.cy, 45
  %i.da = udiv i8 %i.cy, 45
  %narrow.i = add nuw nsw i8 %i.da, 1
  %i.db = zext nneg i8 %narrow.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.w
  %storemerge.lcssa24.i = phi i32 [ 0, %bb.w ], [ %i.db, %.lr.ph.preheader.i ]
  %.0.lcssa.i = phi i8 [ %i.cv, %bb.w ], [ %i.cz, %.lr.ph.preheader.i ] ; 2 uses
  %notmask.i = shl nsw i32 -1, %storemerge.lcssa24.i
  %i.dc = xor i32 %notmask.i, -1
  store i32 %i.dc, ptr %i.n, align 4
  %i.dd = zext nneg i8 %.0.lcssa.i to i32         ; 3 uses
  %i.de = icmp samesign ugt i8 %.0.lcssa.i, 8
  br i1 %i.de, label %.lr.ph33.preheader.i, label %._crit_edge34.i

.lr.ph33.preheader.i:                             ; preds = %._crit_edge.i
  %i.df = add nsw i32 %i.dd, -9
  %2 = tail call i32 @llvm.usub.sat.i32(i32 %i.dd, i32 17)
  %i.dg = trunc nuw nsw i32 %2 to i8
  %.lhs.trunc.i = add nuw nsw i8 %i.dg, 8
  %i.dh = udiv i8 %.lhs.trunc.i, 9
  %.zext.i = zext nneg i8 %i.dh to i32            ; 2 uses
  %.neg.i = mul nsw i32 %.zext.i, -9
  %i.di = add nsw i32 %i.df, %.neg.i
  %i.dj = add nuw nsw i32 %.zext.i, 1
  br label %._crit_edge34.i

._crit_edge34.i:                                  ; preds = %.lr.ph33.preheader.i, %._crit_edge.i
  %storemerge22.lcssa29.i = phi i32 [ 0, %._crit_edge.i ], [ %i.dj, %.lr.ph33.preheader.i ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %i.dd, %._crit_edge.i ], [ %i.di, %.lr.ph33.preheader.i ] ; 2 uses
  store i32 %storemerge22.lcssa29.i, ptr %i.o, align 8
  store i32 %.1.lcssa.i, ptr %i.p, align 4
  %i.dk = add nsw i32 %.1.lcssa.i, %storemerge22.lcssa29.i
  %i.dl = icmp ugt i32 %i.dk, 4
  br i1 %i.dl, label %rc_read_init.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge34.i
  %notmask23.i = shl nsw i32 -1, %storemerge22.lcssa29.i
  %i.dm = xor i32 %notmask23.i, -1
  store i32 %i.dm, ptr %i.o, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.011.i.i = phi i64 [ 0, %bb.x ], [ %i.dq, %bb.y ] ; 3 uses
  %i.dn = getelementptr [2 x i8], ptr %i.r, i64 %.011.i.i
  store i16 1024, ptr %i.dn, align 2
  %i.do = getelementptr [2 x i8], ptr %i.r, i64 %.011.i.i
  %i.dp = getelementptr i8, ptr %i.do, i64 2
  store i16 1024, ptr %i.dp, align 2
  %i.dq = add nuw nsw i64 %.011.i.i, 2            ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.dq, 14134
  br i1 %exitcond.not.i.i.1, label %bb.z, label %bb.y, !llvm.loop !12

bb.z:                                             ; preds = %bb.y
  store i32 -1, ptr %0, align 8
  store i32 0, ptr %i.s, align 4
  store i32 5, ptr %i.t, align 8
  store i32 6, ptr %i.c, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge
  %i.dr = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ds = icmp ult i32 %i.dr, 5
  br i1 %i.ds, label %rc_read_init.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = load i32, ptr %i.t, align 8
  %.not10.i = icmp eq i32 %i.dt, 0
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %bb.ac
  %i.du = load i64, ptr %i.a, align 8             ; 3 uses
  %i.dv = load i64, ptr %i.b, align 8
  %.not14.i = icmp eq i64 %i.du, %i.dv
  br i1 %.not14.i, label %rc_read_init.exit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i
  %i.dw = load i32, ptr %i.s, align 4
  %i.dx = shl i32 %i.dw, 8
  %i.dy = load ptr, ptr %1, align 8
  %i.dz = add i64 %i.du, 1
  store i64 %i.dz, ptr %i.a, align 8
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.du
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i32
  %i.ed = or disjoint i32 %i.dx, %i.ec
  store i32 %i.ed, ptr %i.s, align 4
  %i.ee = load i32, ptr %i.t, align 8
  %i.ef = add i32 %i.ee, -1                       ; 2 uses
  store i32 %i.ef, ptr %i.t, align 8
  %.not.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i, label %.loopexit.loopexit, label %.lr.ph.i, !llvm.loop !13

.loopexit.loopexit:                               ; preds = %bb.ac
  %.pre108 = load i32, ptr %i.e, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ab
  %i.eg = phi i32 [ %.pre108, %.loopexit.loopexit ], [ %i.dr, %bb.ab ]
  %i.eh = add i32 %i.eg, -5                       ; 2 uses
  store i32 %i.eh, ptr %i.e, align 4
  store i32 7, ptr %i.c, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge._crit_edge, %.loopexit
  %i.ei = phi i32 [ %.pre109, %.critedge._crit_edge ], [ %i.eh, %.loopexit ] ; 3 uses
  %i.ej = load i64, ptr %i.g, align 8
  %i.ek = load i64, ptr %i.f, align 8
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = load i32, ptr %i.u, align 8
  %i.en = zext i32 %i.em to i64
  %i.eo = tail call i64 @llvm.umin.i64(i64 %i.el, i64 %i.en) ; 2 uses
  %i.ep = load i64, ptr %i.h, align 8             ; 2 uses
  %i.eq = load i64, ptr %i.i, align 8             ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq
  %.not.i90 = icmp ugt i64 %i.er, %i.eo
  %i.es = add i64 %i.eq, %i.eo
  %spec.select.i = select i1 %.not.i90, i64 %i.es, i64 %i.ep
  store i64 %spec.select.i, ptr %i.v, align 8
  %i.et = load i64, ptr %i.b, align 8
  %i.eu = load i64, ptr %i.a, align 8             ; 3 uses
  %i.ev = sub i64 %i.et, %i.eu                    ; 2 uses
  %i.ew = load i32, ptr %i.w, align 4             ; 4 uses
  %.not.i91 = icmp eq i32 %i.ew, 0
  br i1 %.not.i91, label %bb.ae, label %._crit_edge.i92

bb.ae:                                            ; preds = %bb.ad
  %i.ex = icmp eq i32 %i.ei, 0
  br i1 %i.ex, label %._crit_edge.i92, label %bb.ao

._crit_edge.i92:                                  ; preds = %bb.ae, %bb.ad
  %i.ey = phi i32 [ 0, %bb.ae ], [ %i.ei, %bb.ad ]
  %i.ez = sub i32 42, %i.ew
  %i.fa = sub i32 %i.ey, %i.ew
  %spec.select.i93 = tail call i32 @llvm.umin.i32(i32 %i.ez, i32 %i.fa)
  %i.fb = zext i32 %spec.select.i93 to i64
  %.1114.i = tail call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.fb) ; 5 uses
  %.1.i = trunc nuw i64 %.1114.i to i32           ; 3 uses
  %i.fc = zext i32 %i.ew to i64
  %i.fd = getelementptr i8, ptr %i.x, i64 %i.fc
  %i.fe = load ptr, ptr %1, align 8
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr align 1 %i.ff, i64 %.1114.i, i1 false)
  %i.fg = load i32, ptr %i.w, align 4             ; 2 uses
  %i.fh = add i32 %i.fg, %.1.i                    ; 4 uses
  %i.fi = load i32, ptr %i.e, align 4
  %i.fj = icmp eq i32 %i.fh, %i.fi
  br i1 %i.fj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i92
  %i.fk = zext i32 %i.fg to i64                   ; 2 uses
  %i.fl = getelementptr i8, ptr %i.x, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 %.1114.i
  %i.fn = add nuw nsw i64 %.1114.i, %i.fk
  %i.fo = sub nsw i64 63, %i.fn
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fm, i8 0, i64 %i.fo, i1 false)
  %i.fp = load i32, ptr %i.w, align 4
  %i.fq = add i32 %i.fp, %.1.i
  br label %bb.aj

bb.ag:                                            ; preds = %._crit_edge.i92
  %i.fr = icmp ult i32 %i.fh, 21
  br i1 %i.fr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.fh, ptr %i.w, align 4
  %i.fs = load i64, ptr %i.a, align 8
  %i.ft = add i64 %i.fs, %.1114.i
  store i64 %i.ft, ptr %i.a, align 8
  br label %bb.av

bb.ai:                                            ; preds = %bb.ag
  %i.fu = add i32 %i.fh, -21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.sink130.i = phi i32 [ %i.fu, %bb.ai ], [ %i.fq, %bb.af ]
  %i.fv = zext i32 %.sink130.i to i64
  store i64 %i.fv, ptr %i.y, align 8
  store ptr %i.x, ptr %i.z, align 8
  store i64 0, ptr %i.aa, align 8
  %i.fw = tail call fastcc zeroext i1 @lzma_main(ptr noundef %0) #8, !srcloc !18
  br i1 %i.fw, label %bb.ak, label %rc_read_init.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fx = load i64, ptr %i.aa, align 8            ; 5 uses
  %i.fy = load i32, ptr %i.w, align 4             ; 3 uses
  %i.fz = add i32 %i.fy, %.1.i
  %i.ga = zext i32 %i.fz to i64
  %i.gb = icmp ugt i64 %i.fx, %i.ga
  br i1 %i.gb, label %rc_read_init.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = load i32, ptr %i.e, align 4
  %i.gd = trunc nuw i64 %i.fx to i32              ; 2 uses
  %i.ge = sub i32 %i.gc, %i.gd
  store i32 %i.ge, ptr %i.e, align 4
  %i.gf = zext i32 %i.fy to i64                   ; 2 uses
  %i.gg = icmp samesign ult i64 %i.fx, %i.gf
  br i1 %i.gg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gh = sub nuw i32 %i.fy, %i.gd                ; 2 uses
  store i32 %i.gh, ptr %i.w, align 4
  %i.gi = getelementptr i8, ptr %i.x, i64 %i.fx
  %i.gj = zext i32 %i.gh to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.x, ptr align 1 %i.gi, i64 %i.gj, i1 false)
  br label %bb.av

bb.an:                                            ; preds = %bb.al
  %i.gk = sub nuw nsw i64 %i.fx, %i.gf
  %i.gl = load i64, ptr %i.a, align 8
  %i.gm = add i64 %i.gk, %i.gl
  store i64 %i.gm, ptr %i.a, align 8
  store i32 0, ptr %i.w, align 4
  %.pre117.i = load i64, ptr %i.b, align 8
  %.pre118.i = load i64, ptr %i.a, align 8        ; 2 uses
  %.pre120.i = sub i64 %.pre117.i, %.pre118.i
  %.pre111.pre = load i32, ptr %i.e, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ae
  %.pre111 = phi i32 [ %.pre111.pre, %bb.an ], [ %i.ei, %bb.ae ] ; 3 uses
end_hunk_0
begin_hunk_1_@lzma_len:bb.a
  %i.d = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = shl i32 %i.e, 8
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr i8, ptr %i.h, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.f, %i.n               ; 2 uses
  store i32 %i.o, ptr %i.d, align 4
  br label %rc_normalize.exit

rc_normalize.exit:                                ; preds = %.rc_normalize.exit_crit_edge, %bb.b
  %i.p = phi i32 [ %.pre, %.rc_normalize.exit_crit_edge ], [ %i.o, %bb.b ] ; 2 uses
  %i.q = phi i32 [ %i.a, %.rc_normalize.exit_crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %i.r = lshr i32 %i.q, 11
  %i.s = load i16, ptr %1, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = mul i32 %i.r, %i.t                       ; 4 uses
  %i.v = getelementptr i8, ptr %0, i64 4          ; 7 uses
  %i.w = icmp ult i32 %i.p, %i.u
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rc_normalize.exit
  store i32 %i.u, ptr %0, align 8
  %i.x = load i16, ptr %1, align 2                ; 2 uses
  %i.y = zext i16 %i.x to i32
  %i.z = sub nsw i32 2048, %i.y
  %i.aa = lshr i32 %i.z, 5
  %i.ab = trunc i32 %i.aa to i16
  %i.ac = add i16 %i.x, %i.ab
  store i16 %i.ac, ptr %1, align 2
  %i.ad = getelementptr i8, ptr %1, i64 4
  %i.ae = zext i32 %2 to i64
  %i.af = getelementptr [16 x i8], ptr %i.ad, i64 %i.ae
  br label %bb.h

bb.d:                                             ; preds = %rc_normalize.exit
  %i.ag = sub i32 %i.q, %i.u
  store i32 %i.ag, ptr %0, align 8
  %i.ah = sub nuw i32 %i.p, %i.u
  store i32 %i.ah, ptr %i.v, align 4
  %i.ai = load i16, ptr %1, align 2               ; 2 uses
  %i.aj = lshr i16 %i.ai, 5
  %i.ak = sub i16 %i.ai, %i.aj
  store i16 %i.ak, ptr %1, align 2
  %i.al = getelementptr i8, ptr %1, i64 2         ; 5 uses
  %i.am = load i32, ptr %0, align 8               ; 3 uses
  %i.an = icmp ult i32 %i.am, 16777216
  %.pre32 = load i32, ptr %i.v, align 4           ; 2 uses
  br i1 %i.an, label %bb.e, label %rc_normalize.exit21

bb.e:                                             ; preds = %bb.d
  %i.ao = shl nuw i32 %i.am, 8                    ; 2 uses
  store i32 %i.ao, ptr %0, align 8
  %i.ap = shl i32 %.pre32, 8
  %i.aq = getelementptr i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8
  %i.av = getelementptr i8, ptr %i.ar, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.ap, %i.ax            ; 2 uses
  store i32 %i.ay, ptr %i.v, align 4
  br label %rc_normalize.exit21

rc_normalize.exit21:                              ; preds = %bb.d, %bb.e
  %i.az = phi i32 [ %.pre32, %bb.d ], [ %i.ay, %bb.e ] ; 2 uses
  %i.ba = phi i32 [ %i.am, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.bb = lshr i32 %i.ba, 11
  %i.bc = load i16, ptr %i.al, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = mul i32 %i.bb, %i.bd                    ; 4 uses
  %i.bf = icmp ult i32 %i.az, %i.be
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rc_normalize.exit21
  store i32 %i.be, ptr %0, align 8
  %i.bg = load i16, ptr %i.al, align 2            ; 2 uses
  %i.bh = zext i16 %i.bg to i32
  %i.bi = sub nsw i32 2048, %i.bh
  %i.bj = lshr i32 %i.bi, 5
  %i.bk = trunc i32 %i.bj to i16
  %i.bl = add i16 %i.bg, %i.bk
  store i16 %i.bl, ptr %i.al, align 2
  %i.bm = getelementptr i8, ptr %1, i64 260
  %i.bn = zext i32 %2 to i64
  %i.bo = getelementptr [16 x i8], ptr %i.bm, i64 %i.bn
  br label %bb.h

bb.g:                                             ; preds = %rc_normalize.exit21
  %i.bp = sub i32 %i.ba, %i.be
  store i32 %i.bp, ptr %0, align 8
  %i.bq = sub nuw i32 %i.az, %i.be
  store i32 %i.bq, ptr %i.v, align 4
  %i.br = load i16, ptr %i.al, align 2            ; 2 uses
  %i.bs = lshr i16 %i.br, 5
  %i.bt = sub i16 %i.br, %i.bs
  store i16 %i.bt, ptr %i.al, align 2
  %i.bu = getelementptr i8, ptr %1, i64 516
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.sink50 = phi i32 [ 10, %bb.f ], [ 18, %bb.g ], [ 2, %bb.c ]
  %.016 = phi ptr [ %i.bo, %bb.f ], [ %i.bu, %bb.g ], [ %i.af, %bb.c ]
  %.0 = phi i32 [ 8, %bb.f ], [ 256, %bb.g ], [ 8, %bb.c ] ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 144
  store i32 %.sink50, ptr %i.bv, align 8
  %i.bw = getelementptr i8, ptr %0, i64 16
  %i.bx = getelementptr i8, ptr %0, i64 24        ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.0.i22 = phi i32 [ 1, %bb.h ], [ %i.df, %bb.l ] ; 2 uses
  %i.by = zext i32 %.0.i22 to i64
  %i.bz = getelementptr [2 x i8], ptr %.016, i64 %i.by ; 4 uses
  %i.ca = load i32, ptr %0, align 8               ; 3 uses
  %i.cb = icmp ult i32 %i.ca, 16777216
  %.pre33 = load i32, ptr %i.v, align 4           ; 2 uses
  br i1 %i.cb, label %bb.j, label %rc_normalize.exit.i

bb.j:                                             ; preds = %bb.i
  %i.cc = shl nuw i32 %i.ca, 8                    ; 2 uses
  store i32 %i.cc, ptr %0, align 8
  %i.cd = shl i32 %.pre33, 8
  %i.ce = load ptr, ptr %i.bw, align 8
  %i.cf = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.bx, align 8
  %i.ch = getelementptr i8, ptr %i.ce, i64 %i.cf
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cd, %i.cj            ; 2 uses
  store i32 %i.ck, ptr %i.v, align 4
  br label %rc_normalize.exit.i

rc_normalize.exit.i:                              ; preds = %bb.j, %bb.i
  %i.cl = phi i32 [ %i.ck, %bb.j ], [ %.pre33, %bb.i ] ; 2 uses
  %i.cm = phi i32 [ %i.cc, %bb.j ], [ %i.ca, %bb.i ] ; 2 uses
  %i.cn = lshr i32 %i.cm, 11
  %i.co = load i16, ptr %i.bz, align 2
  %i.cp = zext i16 %i.co to i32
  %i.cq = mul i32 %i.cn, %i.cp                    ; 4 uses
  %i.cr = icmp ult i32 %i.cl, %i.cq
  %i.cs = shl i32 %.0.i22, 1                      ; 2 uses
  br i1 %i.cr, label %bb.k, label %rc_bit.exit.i

rc_bit.exit.i:                                    ; preds = %rc_normalize.exit.i
  %i.ct = sub i32 %i.cm, %i.cq
  store i32 %i.ct, ptr %0, align 8
  %i.cu = sub nuw i32 %i.cl, %i.cq
  store i32 %i.cu, ptr %i.v, align 4
  %i.cv = load i16, ptr %i.bz, align 2            ; 2 uses
  %i.cw = lshr i16 %i.cv, 5
  %i.cx = sub i16 %i.cv, %i.cw
  %i.cy = or disjoint i32 %i.cs, 1
  br label %bb.l

bb.k:                                             ; preds = %rc_normalize.exit.i
  store i32 %i.cq, ptr %0, align 8
  %i.cz = load i16, ptr %i.bz, align 2            ; 2 uses
  %i.da = zext i16 %i.cz to i32
  %i.db = sub nsw i32 2048, %i.da
  %i.dc = lshr i32 %i.db, 5
  %i.dd = trunc i32 %i.dc to i16
  %i.de = add i16 %i.cz, %i.dd
  br label %bb.l

bb.l:                                             ; preds = %rc_bit.exit.i, %bb.k
  %.sink = phi i16 [ %i.de, %bb.k ], [ %i.cx, %rc_bit.exit.i ]
  %i.df = phi i32 [ %i.cs, %bb.k ], [ %i.cy, %rc_bit.exit.i ] ; 3 uses
  store i16 %.sink, ptr %i.bz, align 2
  %i.dg = icmp ult i32 %i.df, %.0
  br i1 %i.dg, label %bb.i, label %rc_bittree.exit, !llvm.loop !0

rc_bittree.exit:                                  ; preds = %bb.l
  %i.dh = sub nuw i32 %i.df, %.0
  %i.di = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = add i32 %i.dh, %i.dj
  store i32 %i.dk, ptr %i.di, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_large_noprof(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noredzone "no-builtin-wcslen" }
attributes #9 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{i64 22982}
!19 = !{i64 23621}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = !{i64 18746}
!25 = !{i64 17196}
end_hunk_1
