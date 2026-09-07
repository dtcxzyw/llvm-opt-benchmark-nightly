Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/asn?download=true
inline.NumInlined: 284
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 76
begin_hunk_0_@GetASN_Items:bb.a
  %unroll_iter = and i32 %i.bp, 124
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.03760.i = phi i32 [ %i.bj, %.lr.ph.preheader.i.new ], [ %i.cf, %.lr.ph.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cf = add i32 %.03760.i, 4                    ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %i.cg = zext i32 %.03760.i to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !15
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 16
  %i.cl = add i32 %.03760.i, 1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !15
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 8
  %i.cr = or disjoint i32 %i.ck, %i.cq
  %i.cs = add i32 %.03760.i, 2
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !15
  %i.cw = zext i8 %i.cv to i32
  %i.cx = or disjoint i32 %i.cr, %i.cw
  %i.cy = shl nuw i32 %i.cx, 8
  %i.cz = add i32 %.03760.i, 3
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !15
  %i.dd = zext i8 %i.dc to i32
  %i.de = or disjoint i32 %i.cy, %i.dd            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.03760.i.epil.init = phi i32 [ %i.bj, %.lr.ph.preheader.i ], [ %i.cf, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03859.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.de, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod601 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod601)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.03760.i.epil = phi i32 [ %i.df, %.lr.ph.i.epil ], [ %.03760.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.03859.i.epil = phi i32 [ %i.dl, %.lr.ph.i.epil ], [ %.03859.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.df = add i32 %.03760.i.epil, 1
  %i.dg = zext i32 %.03760.i.epil to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !15
  %i.dj = shl i32 %.03859.i.epil, 8
  %i.dk = zext i8 %i.di to i32
  %i.dl = or disjoint i32 %i.dj, %i.dk            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !148

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader.i
  %.07175.i = phi i32 [ %.0.i, %.preheader.i ], [ %.07174.i, %.lr.ph.i.epil ], [ %.07174.i, %._crit_edge.i.loopexit.unr-lcssa ]
  %.038.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.de, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.dl, %.lr.ph.i.epil ] ; 3 uses
  %.037.lcssa.i = phi i32 [ %i.bj, %.preheader.i ], [ %i.cc, %.lr.ph.i.epil ], [ %i.cc, %._crit_edge.i.loopexit.unr-lcssa ]
  %.not48.i = icmp sgt i32 %.038.lcssa.i, -1
  %i.dm = icmp uge i32 %.038.lcssa.i, %.07175.i
  %or.cond57.i = select i1 %.not48.i, i1 %i.dm, i1 false
  br i1 %or.cond57.i, label %bb.t, label %GetLength_ex.exit.thread

bb.t:                                             ; preds = %._crit_edge.i, %bb.n
  %.240.i = phi i32 [ %.038.lcssa.i, %._crit_edge.i ], [ %i.bp, %bb.n ] ; 18 uses
  %.2.i = phi i32 [ %.037.lcssa.i, %._crit_edge.i ], [ %i.bj, %bb.n ] ; 19 uses
  %i.dn = add i32 %.2.i, %.240.i                  ; 3 uses
  %i.do = icmp ugt i32 %i.dn, %i.af
  br i1 %i.do, label %GetLength_ex.exit.thread, label %GetLength_ex.exit

GetLength_ex.exit:                                ; preds = %bb.t
  store i32 %.240.i, ptr %i.o, align 4, !tbaa !30
  %i.dp = icmp eq i8 %i.q, 7
  br i1 %i.dp, label %GetLength_ex.exit.thread, label %bb.u

bb.u:                                             ; preds = %GetLength_ex.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.dn, ptr %i.dq, align 4, !tbaa !26
  %i.dr = icmp samesign ugt i32 %.2, 1
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ds = zext nneg i32 %.2 to i64
  %i.dt = getelementptr i8, ptr %i.c, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -2
  store i8 1, ptr %i.du, align 1, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !23  ; 4 uses
  switch i8 %i.dw, label %bb.ah [
    i8 2, label %bb.x
    i8 3, label %bb.ae
    i8 12, label %bb.ai
  ]

bb.x:                                             ; preds = %bb.w
  %i.dx = and i8 %i.bb, -2
  %narrow = icmp eq i8 %i.dx, 8                   ; 2 uses
  %i.dy = icmp eq i32 %.240.i, 0
  br i1 %i.dy, label %GetLength_ex.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = zext i32 %.2.i to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !15  ; 3 uses
  %i.ec = icmp eq i8 %i.eb, 0
  %i.ed = icmp ne i32 %.240.i, 1                  ; 2 uses
  br i1 %i.ec, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  br i1 %i.ed, label %bb.aa, label %GetASN_UTF8String.exit

bb.aa:                                            ; preds = %bb.z
  %i.ee = add i32 %.2.i, 1
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !15
  %i.ei = icmp sgt i8 %i.eh, -1
  br i1 %i.ei, label %GetLength_ex.exit.thread, label %GetASN_Integer.exit.thread247

bb.ab:                                            ; preds = %bb.y
  %i.ej = icmp eq i8 %i.eb, -1
  %or.cond.i = and i1 %i.ed, %i.ej
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = add i32 %.2.i, 1
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !15
  %.not.i191 = icmp slt i8 %i.en, 0
  %or.cond21.i.not = or i1 %narrow, %.not.i191
  br i1 %or.cond21.i.not, label %GetLength_ex.exit.thread, label %GetASN_Integer.exit.thread247.thread

bb.ad:                                            ; preds = %bb.ab
  %.not17.i = icmp slt i8 %i.eb, 0
  %or.cond22.i.not = and i1 %narrow, %.not17.i
  br i1 %or.cond22.i.not, label %GetLength_ex.exit.thread, label %GetASN_Integer.exit

GetASN_Integer.exit:                              ; preds = %bb.ad
  %.not259 = icmp eq i32 %.240.i, 1
  br i1 %.not259, label %GetASN_UTF8String.exit, label %GetASN_Integer.exit.thread247.thread

GetASN_Integer.exit.thread247.thread:             ; preds = %bb.ac, %GetASN_Integer.exit
  br label %GetASN_UTF8String.exit

GetASN_Integer.exit.thread247:                    ; preds = %bb.aa
  %i.eo = add i32 %.2.i, 1
  %i.ep = add nsw i32 %.240.i, -1
  br label %GetASN_UTF8String.exit

bb.ae:                                            ; preds = %bb.w
  %i.eq = icmp eq i32 %.240.i, 0
  br i1 %i.eq, label %GetLength_ex.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = zext i32 %.2.i to i64
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !15  ; 2 uses
  %i.eu = icmp ugt i8 %i.et, 7
  br i1 %i.eu, label %GetLength_ex.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ev = add nsw i32 %.240.i, -1                 ; 2 uses
  %i.ew = add i32 %i.ev, %.2.i
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !15
  %i.fa = zext i8 %i.ez to i16
  %narrow.i = sub nuw nsw i8 8, %i.et
  %i.fb = zext nneg i8 %narrow.i to i16
  %i.fc = lshr i16 254, %i.fb
  %i.fd = and i16 %i.fc, %i.fa
  %.not.i192 = icmp eq i16 %i.fd, 0
  br i1 %.not.i192, label %GetASN_BitString.exit, label %GetLength_ex.exit.thread

GetASN_BitString.exit:                            ; preds = %bb.ag
  %i.fe = add i32 %.2.i, 1
  br label %GetASN_UTF8String.exit

bb.ah:                                            ; preds = %bb.w
  %i.ff = load i8, ptr %i.ba, align 1, !tbaa !32
  %i.fg = icmp eq i8 %i.ff, 12
  br i1 %i.fg, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.w, %bb.ah
  %.not260 = icmp eq i32 %.240.i, 0
  br i1 %.not260, label %GetASN_UTF8String.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.ai, %._crit_edge.i194
  %.02645.i = phi i32 [ %.127.lcssa.i, %._crit_edge.i194 ], [ 0, %bb.ai ] ; 6 uses
  %i.fh = add i32 %.02645.i, %.2.i
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !15  ; 2 uses
  %i.fl = zext i8 %i.fk to i32                    ; 3 uses
  %i.fm = icmp slt i8 %i.fk, 0
  br i1 %i.fm, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.lr.ph47.i
  %i.fn = and i32 %i.fl, 224
  %.not621 = icmp eq i32 %i.fn, 192               ; 2 uses
  br i1 %.not621, label %.lr.ph.preheader.i195, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = and i32 %i.fl, 240
  %i.fp = icmp eq i32 %i.fo, 224
  br i1 %i.fp, label %.lr.ph.preheader.i195, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fq = and i32 %i.fl, 248
  %i.fr = icmp eq i32 %i.fq, 240
  br i1 %i.fr, label %.lr.ph.preheader.i195, label %GetLength_ex.exit.thread

bb.am:                                            ; preds = %.lr.ph47.i
  %.12735.i = add nsw i32 %.02645.i, 1
  br label %._crit_edge.i194

.lr.ph.preheader.i195:                            ; preds = %bb.al, %bb.ak, %bb.aj
  %7 = phi i1 [ true, %bb.al ], [ false, %bb.aj ], [ false, %bb.ak ]
  %.025.ph.i = phi i32 [ 4, %bb.al ], [ 2, %bb.aj ], [ 3, %bb.ak ]
  %i.fs = add i32 %.025.ph.i, %.02645.i           ; 3 uses
  %.12737.i = add i32 %.02645.i, 1                ; 2 uses
  %i.ft = icmp eq i32 %.12737.i, %.240.i
  br i1 %i.ft, label %GetLength_ex.exit.thread, label %bb.ar

bb.an:                                            ; preds = %bb.ar
  br i1 %.not621, label %._crit_edge.i194, label %.lr.ph.i196.1

.lr.ph.i196.1:                                    ; preds = %bb.an
  %.12737.i.1 = add i32 %.02645.i, 2              ; 2 uses
  %i.fu = icmp eq i32 %.12737.i.1, %.240.i
  br i1 %i.fu, label %GetLength_ex.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i196.1
  %i.fv = add i32 %.12737.i.1, %.2.i
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !15
  %.not.not.i.1 = icmp sgt i8 %i.fy, -1
  br i1 %.not.not.i.1, label %GetLength_ex.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %7, label %.lr.ph.i196.2, label %._crit_edge.i194

.lr.ph.i196.2:                                    ; preds = %bb.ap
  %.12737.i.2 = add i32 %.02645.i, 3              ; 2 uses
  %i.fz = icmp eq i32 %.12737.i.2, %.240.i
  br i1 %i.fz, label %GetLength_ex.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i196.2
  %i.ga = add i32 %.12737.i.2, %.2.i
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !15
  %.not.not.i.2 = icmp sgt i8 %i.gd, -1
  br i1 %.not.not.i.2, label %GetLength_ex.exit.thread, label %._crit_edge.i194

bb.ar:                                            ; preds = %.lr.ph.preheader.i195
  %i.ge = add i32 %.12737.i, %.2.i
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !15
  %.not.not.i = icmp sgt i8 %i.gh, -1
  br i1 %.not.not.i, label %GetLength_ex.exit.thread, label %bb.an

._crit_edge.i194:                                 ; preds = %bb.an, %bb.ap, %bb.aq, %bb.am
  %.127.lcssa.i = phi i32 [ %.12735.i, %bb.am ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.ap ], [ %i.fs, %bb.an ] ; 2 uses
  %i.gi = icmp slt i32 %.127.lcssa.i, %.240.i
  br i1 %i.gi, label %.lr.ph47.i, label %GetASN_UTF8String.exit

bb.as:                                            ; preds = %bb.ah
  %i.gj = icmp eq i8 %i.dw, 6
  br i1 %i.gj, label %bb.at, label %GetASN_UTF8String.exit

bb.at:                                            ; preds = %bb.as
  %i.gk = icmp samesign ult i32 %.240.i, 3
  br i1 %i.gk, label %GetLength_ex.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gl = sext i32 %i.dn to i64
  %i.gm = getelementptr i8, ptr %4, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 -1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !15
  %.not.i197 = icmp sgt i8 %i.go, -1
  br i1 %.not.i197, label %GetASN_UTF8String.exit, label %GetLength_ex.exit.thread

GetASN_UTF8String.exit:                           ; preds = %._crit_edge.i194, %GetASN_Integer.exit.thread247.thread, %bb.z, %bb.au, %bb.ai, %GetASN_BitString.exit, %bb.as, %GetASN_Integer.exit, %GetASN_Integer.exit.thread247
  %.0236 = phi i32 [ %.240.i, %bb.au ], [ 1, %bb.z ], [ %.240.i, %bb.as ], [ %i.ep, %GetASN_Integer.exit.thread247 ], [ %.240.i, %GetASN_Integer.exit.thread247.thread ], [ 1, %GetASN_Integer.exit ], [ %i.ev, %GetASN_BitString.exit ], [ 0, %bb.ai ], [ %.240.i, %._crit_edge.i194 ] ; 30 uses
  %.1 = phi i32 [ %.2.i, %bb.au ], [ %.2.i, %bb.z ], [ %.2.i, %bb.as ], [ %i.eo, %GetASN_Integer.exit.thread247 ], [ %.2.i, %GetASN_Integer.exit.thread247.thread ], [ %.2.i, %GetASN_Integer.exit ], [ %i.fe, %GetASN_BitString.exit ], [ %.2.i, %bb.ai ], [ %.2.i, %._crit_edge.i194 ] ; 20 uses
  %.not122.i = phi i1 [ true, %bb.au ], [ true, %bb.z ], [ true, %bb.as ], [ false, %GetASN_Integer.exit.thread247 ], [ true, %GetASN_Integer.exit.thread247.thread ], [ true, %GetASN_Integer.exit ], [ true, %GetASN_BitString.exit ], [ true, %bb.ai ], [ true, %._crit_edge.i194 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = and i8 %i.gq, 2
  %.not182 = icmp eq i8 %i.gr, 0
  br i1 %.not182, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %GetASN_UTF8String.exit
  %i.gs = zext i32 %.1 to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !15
  %i.gv = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 %.0236, ptr %i.gv, align 8, !tbaa !15
  br label %.loopexit264

bb.aw:                                            ; preds = %GetASN_UTF8String.exit
  switch i8 %i.bb, label %GetASN_StoreData.exit [
    i8 1, label %bb.ax
    i8 2, label %bb.az
    i8 4, label %bb.bc
    i8 5, label %bb.bf
    i8 6, label %bb.bh
    i8 8, label %bb.bj
    i8 10, label %bb.bj
    i8 9, label %bb.bk
    i8 11, label %.preheader.i200
    i8 0, label %bb.bp
  ]

.preheader.i200:                                  ; preds = %bb.aw
  %i.gw = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !15 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !15  ; 2 uses
  %.not117128.i = icmp eq i8 %i.gy, 0
  br i1 %.not117128.i, label %GetLength_ex.exit.thread, label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %.preheader.i200
  %i.gz = load i8, ptr %i.ba, align 1, !tbaa !32
  br label %bb.bn

bb.ax:                                            ; preds = %bb.aw
  %.not124.i = icmp eq i32 %.0236, 1
  br i1 %.not124.i, label %bb.ay, label %GetLength_ex.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.ha = icmp ne i8 %i.dw, 1
  %or.cond.not154.i = and i1 %i.ha, %.not122.i
  %.phi.trans.insert.i = zext i32 %.1 to i64
  %.phi.trans.insert143.i = getelementptr inbounds nuw i8, ptr %4, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert143.i, align 1, !tbaa !15 ; 2 uses
  %i.hb = icmp slt i8 %.pre.i, 0
  %or.cond151.i = select i1 %or.cond.not154.i, i1 %i.hb, i1 false
  br i1 %or.cond151.i, label %GetLength_ex.exit.thread, label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %bb.ay
  %i.hc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !15
  store i8 %.pre.i, ptr %i.hd, align 1, !tbaa !15
  br label %GetASN_StoreData.exit

bb.az:                                            ; preds = %bb.aw
  %i.he = icmp eq i32 %.0236, 0
  %i.hf = icmp sgt i32 %.0236, 2
  %or.cond3.i = or i1 %i.he, %i.hf
  br i1 %or.cond3.i, label %GetLength_ex.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %.not122.i, label %bb.bb, label %.lr.ph133.preheader.i

bb.bb:                                            ; preds = %bb.ba
  %i.hg = zext i32 %.1 to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !15
  %i.hj = icmp slt i8 %i.hi, 0
  br i1 %i.hj, label %GetLength_ex.exit.thread, label %.lr.ph133.preheader.i

.lr.ph133.preheader.i:                            ; preds = %bb.ba, %bb.bb
  %i.hk = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !15
  store i16 0, ptr %i.hl, align 2, !tbaa !34
  %wide.trip.count141.i = zext nneg i32 %.0236 to i64 ; 2 uses
  %xtraiter615 = and i64 %wide.trip.count141.i, 1
  %i.hm = icmp eq i32 %.0236, 1
  br i1 %i.hm, label %.lr.ph133.i.epil.preheader, label %.lr.ph133.preheader.i.new

.lr.ph133.preheader.i.new:                        ; preds = %.lr.ph133.preheader.i
  %unroll_iter619 = and i64 %wide.trip.count141.i, 2147483646
  br label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %.lr.ph133.i, %.lr.ph133.preheader.i.new
  %indvars.iv138.i = phi i64 [ 0, %.lr.ph133.preheader.i.new ], [ %indvars.iv.next139.i.1, %.lr.ph133.i ] ; 3 uses
  %niter620 = phi i64 [ 0, %.lr.ph133.preheader.i.new ], [ %niter620.next.1, %.lr.ph133.i ]
  %i.hn = load ptr, ptr %i.hk, align 8, !tbaa !15 ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !34
  %i.hp = shl i16 %i.ho, 8
  store i16 %i.hp, ptr %i.hn, align 2, !tbaa !34
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !15 ; 2 uses
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !34
  %i.hs = trunc nuw nsw i64 %indvars.iv138.i to i32
  %i.ht = add i32 %.1, %i.hs
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !15
  %i.hx = zext i8 %i.hw to i16
  %i.hy = or i16 %i.hr, %i.hx
  store i16 %i.hy, ptr %i.hq, align 2, !tbaa !34
  %i.hz = load ptr, ptr %i.hk, align 8, !tbaa !15 ; 2 uses
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !34
  %i.ib = shl i16 %i.ia, 8
  store i16 %i.ib, ptr %i.hz, align 2, !tbaa !34
  %i.ic = load ptr, ptr %i.hk, align 8, !tbaa !15 ; 2 uses
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !34
  %i.ie = trunc i64 %indvars.iv138.i to i32
  %i.if = or disjoint i32 %i.ie, 1
  %i.ig = add i32 %.1, %i.if
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !15
  %i.ik = zext i8 %i.ij to i16
  %i.il = or i16 %i.id, %i.ik
  store i16 %i.il, ptr %i.ic, align 2, !tbaa !34
  %indvars.iv.next139.i.1 = add nuw nsw i64 %indvars.iv138.i, 2 ; 2 uses
  %niter620.next.1 = add i64 %niter620, 2         ; 2 uses
  %niter620.ncmp.1 = icmp eq i64 %niter620.next.1, %unroll_iter619
  br i1 %niter620.ncmp.1, label %GetASN_StoreData.exit.loopexit.unr-lcssa, label %.lr.ph133.i, !llvm.loop !149

bb.bc:                                            ; preds = %bb.aw
  %i.im = icmp eq i32 %.0236, 0
  %i.in = icmp sgt i32 %.0236, 4
  %or.cond5.i = or i1 %i.im, %i.in
  br i1 %or.cond5.i, label %GetLength_ex.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not122.i, label %bb.be, label %.lr.ph131.preheader.i

bb.be:                                            ; preds = %bb.bd
  %i.io = zext i32 %.1 to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !15
  %i.ir = icmp slt i8 %i.iq, 0
  br i1 %i.ir, label %GetLength_ex.exit.thread, label %.lr.ph131.preheader.i

.lr.ph131.preheader.i:                            ; preds = %bb.bd, %bb.be
  %i.is = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !15
  store i32 0, ptr %i.it, align 4, !tbaa !26
  %wide.trip.count.i = zext nneg i32 %.0236 to i64 ; 2 uses
  %xtraiter609 = and i64 %wide.trip.count.i, 1
  %i.iu = icmp eq i32 %.0236, 1
  br i1 %i.iu, label %.lr.ph131.i.epil.preheader, label %.lr.ph131.preheader.i.new

.lr.ph131.preheader.i.new:                        ; preds = %.lr.ph131.preheader.i
  %unroll_iter613 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %.lr.ph131.i, %.lr.ph131.preheader.i.new
  %indvars.iv135.i = phi i64 [ 0, %.lr.ph131.preheader.i.new ], [ %indvars.iv.next136.i.1, %.lr.ph131.i ] ; 3 uses
  %niter614 = phi i64 [ 0, %.lr.ph131.preheader.i.new ], [ %niter614.next.1, %.lr.ph131.i ]
  %i.iv = load ptr, ptr %i.is, align 8, !tbaa !15 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !26
  %i.ix = shl i32 %i.iw, 8
  store i32 %i.ix, ptr %i.iv, align 4, !tbaa !26
  %i.iy = trunc nuw nsw i64 %indvars.iv135.i to i32
  %i.iz = add i32 %.1, %i.iy
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !15
  %i.jd = zext i8 %i.jc to i32
  %i.je = load ptr, ptr %i.is, align 8, !tbaa !15 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !26
  %i.jg = or i32 %i.jf, %i.jd
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !26
  %i.jh = load ptr, ptr %i.is, align 8, !tbaa !15 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !26
  %i.jj = shl i32 %i.ji, 8
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !26
  %i.jk = trunc i64 %indvars.iv135.i to i32
end_hunk_0
