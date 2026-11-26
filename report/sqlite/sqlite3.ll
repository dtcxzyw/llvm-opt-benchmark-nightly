Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10220
inline.NumDeleted: 1303
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 375
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3GetToken:bb.a
  br label %.loopexit277

bb.p:                                             ; preds = %bb.a
  store i32 111, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.q:                                             ; preds = %bb.a
  store i32 54, ptr %1, align 4, !tbaa !566
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !729
  %i.al = icmp eq i8 %i.ak, 61
  %i.am = select i1 %i.al, i64 2, i64 1
  br label %.loopexit277

bb.r:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !729
  switch i8 %i.ao, label %bb.v [
    i8 61, label %bb.s
    i8 62, label %bb.t
    i8 60, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  store i32 56, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.t:                                             ; preds = %bb.r
  store i32 53, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.u:                                             ; preds = %bb.r
  store i32 105, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.v:                                             ; preds = %bb.r
  store i32 57, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.w:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !729
  switch i8 %i.aq, label %bb.z [
    i8 61, label %bb.x
    i8 62, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  store i32 58, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.y:                                             ; preds = %bb.w
  store i32 106, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.z:                                             ; preds = %bb.w
  store i32 55, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.aa:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !729
  %.not263 = icmp eq i8 %i.as, 61
  br i1 %.not263, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 186, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.ac:                                            ; preds = %bb.aa
  store i32 53, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.ad:                                            ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !729
  %.not262 = icmp eq i8 %i.au, 124
  br i1 %.not262, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 104, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.af:                                            ; preds = %bb.ad
  store i32 112, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.ag:                                            ; preds = %bb.a
  store i32 25, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.ah:                                            ; preds = %bb.a
  store i32 103, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.ai:                                            ; preds = %bb.a
  store i32 115, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

.lr.ph325:                                        ; preds = %.preheader276, %bb.ak
  %i.av = phi i8 [ %i.bd, %bb.ak ], [ %i.f, %.preheader276 ]
  %.4324 = phi i64 [ %i.bb, %bb.ak ], [ 1, %.preheader276 ] ; 2 uses
  %i.aw = icmp eq i8 %i.av, %i.a
  br i1 %i.aw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph325
  %i.ax = add nsw i64 %.4324, 1                   ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !729
  %i.ba = icmp eq i8 %i.az, %i.a
  br i1 %i.ba, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %.lr.ph325
  %.5 = phi i64 [ %.4324, %.lr.ph325 ], [ %i.ax, %bb.aj ]
  %i.bb = add nsw i64 %.5, 1                      ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !729 ; 2 uses
  %.not261 = icmp eq i8 %i.bd, 0
  br i1 %.not261, label %._crit_edge, label %.lr.ph325, !llvm.loop !3299

bb.al:                                            ; preds = %bb.aj
  %i.be = icmp eq i8 %i.a, 39
  br i1 %i.be, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 118, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.an:                                            ; preds = %bb.al
  store i32 60, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

._crit_edge:                                      ; preds = %bb.ak, %.preheader276
  %.4.lcssa = phi i64 [ 1, %.preheader276 ], [ %i.bb, %bb.ak ]
  store i32 186, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.ao:                                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !729
  %i.bh = add i8 %i.bg, -58
  %.not256 = icmp ult i8 %i.bh, -10
  br i1 %.not256, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 142, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.aq:                                            ; preds = %bb.ao, %bb.a
  store i32 156, ptr %1, align 4, !tbaa !566
  %i.bi = load i8, ptr %0, align 1, !tbaa !729    ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 48
  br i1 %i.bj, label %bb.ar, label %.preheader427

.preheader427:                                    ; preds = %bb.ar, %bb.as, %bb.aq
  br label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !729
  switch i8 %i.bl, label %.preheader427 [
    i8 120, label %bb.as
    i8 88, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !729
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !729
  %i.br = and i8 %i.bq, 8
  %.not257 = icmp eq i8 %i.br, 0
  br i1 %.not257, label %.preheader427, label %.preheader281

.preheader281:                                    ; preds = %bb.as, %bb.av
  %.6 = phi i64 [ %i.ca, %bb.av ], [ 3, %bb.as ]  ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !729 ; 3 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !729
  %i.bx = and i8 %i.bw, 8
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.preheader281
  %i.bz = icmp eq i8 %i.bt, 95
  br i1 %i.bz, label %bb.au, label %.loopexit278

bb.au:                                            ; preds = %bb.at
  store i32 183, ptr %1, align 4, !tbaa !566
  br label %bb.av

bb.av:                                            ; preds = %.preheader281, %bb.au
  %i.ca = add nuw nsw i64 %.6, 1
  br label %.preheader281

bb.aw:                                            ; preds = %.preheader427, %bb.az
  %i.cb = phi i32 [ %i.cf, %bb.az ], [ 156, %.preheader427 ] ; 4 uses
  %i.cc = phi i8 [ %.pre, %bb.az ], [ %i.bi, %.preheader427 ] ; 2 uses
  %.7 = phi i64 [ %i.cg, %bb.az ], [ 0, %.preheader427 ] ; 4 uses
  %i.cd = add i8 %i.cc, -58
  %i.ce = icmp ult i8 %i.cd, -10
  br i1 %i.ce, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  switch i8 %i.cc, label %.loopexit279 [
    i8 95, label %bb.ay
    i8 46, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  store i32 183, ptr %1, align 4, !tbaa !566
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ay
  %i.cf = phi i32 [ %i.cb, %bb.aw ], [ 183, %bb.ay ]
  %i.cg = add nuw nsw i64 %.7, 1                  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !729
  br label %bb.aw

bb.ba:                                            ; preds = %bb.ax
  %i.ch = icmp eq i32 %i.cb, 156
  br i1 %i.ch, label %.sink.split, label %.preheader424

.sink.split:                                      ; preds = %bb.ba, %bb.bc
  %.sink = phi i32 [ 183, %bb.bc ], [ 154, %bb.ba ] ; 2 uses
  %.8.in.ph = phi i64 [ %.8, %bb.bc ], [ %.7, %bb.ba ]
  store i32 %.sink, ptr %1, align 4, !tbaa !566
  br label %.preheader424

.preheader424:                                    ; preds = %bb.ba, %.sink.split
  %.ph = phi i32 [ %.sink, %.sink.split ], [ %i.cb, %bb.ba ]
  %.8.in.ph425 = phi i64 [ %.8.in.ph, %.sink.split ], [ %.7, %bb.ba ]
  br label %bb.bb

bb.bb:                                            ; preds = %.preheader424, %bb.bb
  %.8.in = phi i64 [ %.8, %bb.bb ], [ %.8.in.ph425, %.preheader424 ]
  %.8 = add nuw nsw i64 %.8.in, 1                 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %.8
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !729 ; 2 uses
  %i.ck = add i8 %i.cj, -58
  %i.cl = icmp ult i8 %i.ck, -10
  br i1 %i.cl, label %bb.bc, label %bb.bb

bb.bc:                                            ; preds = %bb.bb
  %i.cm = icmp eq i8 %i.cj, 95
  br i1 %i.cm, label %.sink.split, label %.loopexit279

.loopexit279:                                     ; preds = %bb.ax, %bb.bc
  %i.cn = phi i32 [ %.ph, %bb.bc ], [ %i.cb, %bb.ax ]
  %.9 = phi i64 [ %.8, %bb.bc ], [ %.7, %bb.ax ]  ; 5 uses
  %i.co = getelementptr inbounds i8, ptr %0, i64 %.9 ; 3 uses
  %2 = load i8, ptr %i.co, align 1, !tbaa !729    ; 4 uses
  switch i8 %2, label %.loopexit278 [
    i8 101, label %bb.bd
    i8 69, label %bb.bd
  ]

bb.bd:                                            ; preds = %.loopexit279, %.loopexit279
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !729 ; 2 uses
  %i.cr = add i8 %i.cq, -58
  %.not258 = icmp ult i8 %i.cr, -10
  br i1 %.not258, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  switch i8 %i.cq, label %.loopexit278 [
    i8 43, label %bb.bf
    i8 45, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  %i.cs = getelementptr i8, ptr %i.co, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !729
  %i.cu = add i8 %i.ct, -58
  %.not259 = icmp ult i8 %i.cu, -10
  br i1 %.not259, label %.loopexit278, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %i.cv = icmp eq i32 %i.cn, 156
  br i1 %i.cv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 154, ptr %1, align 4, !tbaa !566
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.cw = add nsw i64 %.9, 2
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bm, %bb.bi
  %.10 = phi i64 [ %i.cw, %bb.bi ], [ %i.dc, %bb.bm ] ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %0, i64 %.10
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !729 ; 3 uses
  %i.cz = add i8 %i.cy, -58
  %i.da = icmp ult i8 %i.cz, -10
  br i1 %i.da, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.db = icmp eq i8 %i.cy, 95
  br i1 %i.db, label %bb.bl, label %.loopexit278

bb.bl:                                            ; preds = %bb.bk
  store i32 183, ptr %1, align 4, !tbaa !566
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bl
  %i.dc = add nsw i64 %.10, 1
  br label %bb.bj

.loopexit278:                                     ; preds = %bb.at, %bb.bk, %bb.be, %.loopexit279, %bb.bf
  %i.dd = phi i8 [ %i.cy, %bb.bk ], [ %2, %.loopexit279 ], [ %2, %bb.bf ], [ %2, %bb.be ], [ %i.bt, %bb.at ]
  %.11 = phi i64 [ %.10, %bb.bk ], [ %.9, %.loopexit279 ], [ %.9, %bb.bf ], [ %.9, %bb.be ], [ %.6, %bb.at ] ; 2 uses
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !729
  %i.dh = and i8 %i.dg, 70
  %.not260319 = icmp eq i8 %i.dh, 0
  br i1 %.not260319, label %.loopexit277, label %.lr.ph321

.lr.ph321:                                        ; preds = %.loopexit278
  store i32 186, ptr %1, align 4, !tbaa !566
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph321, %bb.bn
  %.12320 = phi i64 [ %.11, %.lr.ph321 ], [ %i.di, %bb.bn ]
  %i.di = add nsw i64 %.12320, 1                  ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %0, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !729
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !729
  %i.do = and i8 %i.dn, 70
  %.not260 = icmp eq i8 %i.do, 0
  br i1 %.not260, label %.loopexit277, label %bb.bn, !llvm.loop !3300

.lr.ph313:                                        ; preds = %.preheader283, %bb.bo
  %.13312 = phi i64 [ %i.dr, %bb.bo ], [ 1, %.preheader283 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %.13312
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !729 ; 2 uses
  %.not255 = icmp eq i8 %i.dq, 0
  br i1 %.not255, label %.critedge2, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph313
  %i.dr = add nuw nsw i64 %.13312, 1              ; 2 uses
  %.not254 = icmp eq i8 %i.dq, 93
  br i1 %.not254, label %.critedge2, label %.lr.ph313, !llvm.loop !3301

.critedge2:                                       ; preds = %.lr.ph313, %bb.bo, %.preheader283
  %.13.lcssa = phi i64 [ 1, %.preheader283 ], [ %i.dr, %bb.bo ], [ %.13312, %.lr.ph313 ]
  %i.ds = phi i32 [ 60, %.preheader283 ], [ 60, %bb.bo ], [ 186, %.lr.ph313 ]
  store i32 %i.ds, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.bp:                                            ; preds = %bb.a
  store i32 157, ptr %1, align 4, !tbaa !566
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %.14 = phi i64 [ 1, %bb.bp ], [ %i.dw, %bb.bq ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %.14
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !729
  %i.dv = add i8 %i.du, -58
  %.not253 = icmp ult i8 %i.dv, -10
  %i.dw = add nuw nsw i64 %.14, 1
  br i1 %.not253, label %.loopexit277, label %bb.bq, !llvm.loop !3302

bb.br:                                            ; preds = %bb.a, %bb.a
  store i32 157, ptr %1, align 4, !tbaa !566
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !729 ; 2 uses
  %.not250301 = icmp eq i8 %i.dy, 0
  br i1 %.not250301, label %.loopexit287.thread363, label %.lr.ph

.lr.ph:                                           ; preds = %bb.br, %bb.by
  %i.dz = phi i8 [ %i.ey, %bb.by ], [ %i.dy, %bb.br ] ; 3 uses
  %.0303 = phi i64 [ %.1, %bb.by ], [ 0, %bb.br ] ; 5 uses
  %.15302 = phi i64 [ %i.ew, %bb.by ], [ 1, %bb.br ] ; 5 uses
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !729
  %i.ed = and i8 %i.ec, 70
  %.not251 = icmp eq i8 %i.ed, 0
  br i1 %.not251, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph
  %i.ee = add nsw i64 %.0303, 1
  br label %bb.by

bb.bt:                                            ; preds = %.lr.ph
  %i.ef = icmp eq i8 %i.dz, 40
  %i.eg = icmp sgt i64 %.0303, 0
  %or.cond = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond, label %.preheader285, label %bb.bw

.preheader285:                                    ; preds = %bb.bt, %bb.bu
  %.16 = phi i64 [ %i.eh, %bb.bu ], [ %.15302, %bb.bt ] ; 2 uses
  %i.eh = add nsw i64 %.16, 1                     ; 3 uses
  %i.ei = getelementptr inbounds i8, ptr %0, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !729 ; 3 uses
  %cond = icmp eq i8 %i.ej, 0
  br i1 %cond, label %.loopexit286, label %bb.bu

bb.bu:                                            ; preds = %.preheader285
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !729
  %i.en = and i8 %i.em, 1
  %i.eo = icmp eq i8 %i.en, 0
  %i.ep = icmp ne i8 %i.ej, 41                    ; 2 uses
  %or.cond9 = and i1 %i.ep, %i.eo
  br i1 %or.cond9, label %.preheader285, label %.critedge5, !llvm.loop !3303

.critedge5:                                       ; preds = %bb.bu
  br i1 %i.ep, label %.loopexit286, label %bb.bv

bb.bv:                                            ; preds = %.critedge5
  %i.eq = add nsw i64 %.16, 2
  br label %.loopexit277

.loopexit286:                                     ; preds = %.preheader285, %.critedge5
  store i32 186, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.bw:                                            ; preds = %bb.bt
  %i.er = icmp eq i8 %i.dz, 58
  br i1 %i.er, label %bb.bx, label %.loopexit287

bb.bx:                                            ; preds = %bb.bw
  %i.es = add nsw i64 %.15302, 1                  ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %0, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !729
  %i.ev = icmp eq i8 %i.eu, 58
  br i1 %i.ev, label %bb.by, label %.loopexit287

bb.by:                                            ; preds = %bb.bx, %bb.bs
  %.17 = phi i64 [ %.15302, %bb.bs ], [ %i.es, %bb.bx ]
  %.1 = phi i64 [ %i.ee, %bb.bs ], [ %.0303, %bb.bx ] ; 2 uses
  %i.ew = add nsw i64 %.17, 1                     ; 3 uses
  %i.ex = getelementptr inbounds i8, ptr %0, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !729 ; 2 uses
  %.not250 = icmp eq i8 %i.ey, 0
  br i1 %.not250, label %.loopexit287, label %.lr.ph, !llvm.loop !3304

.loopexit287:                                     ; preds = %bb.by, %bb.bx, %bb.bw
  %.0298.ph = phi i64 [ %.0303, %bb.bw ], [ %.0303, %bb.bx ], [ %.1, %bb.by ]
  %.18.ph = phi i64 [ %.15302, %bb.bw ], [ %.15302, %bb.bx ], [ %i.ew, %bb.by ] ; 2 uses
  %i.ez = icmp eq i64 %.0298.ph, 0
  br i1 %i.ez, label %.loopexit287.thread363, label %.loopexit277

.loopexit287.thread363:                           ; preds = %bb.br, %.loopexit287
  %.18366 = phi i64 [ %.18.ph, %.loopexit287 ], [ 1, %bb.br ]
  store i32 186, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.bz:                                            ; preds = %bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !729
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @aiClass, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !729
  %i.ff = icmp ugt i8 %i.fe, 2
  br i1 %i.ff, label %.preheader442, label %.preheader288

.preheader442:                                    ; preds = %bb.ca, %bb.cj, %bb.ck, %bb.a, %bb.a, %bb.cc, %bb.bz
  %.25.ph = phi i64 [ %i.fm, %bb.ca ], [ 1, %bb.ck ], [ 1, %bb.a ], [ 1, %bb.cc ], [ 1, %bb.bz ], [ 1, %bb.cj ], [ 1, %bb.a ]
  br label %bb.co

.preheader288:                                    ; preds = %bb.bz, %.preheader288
  %.19 = phi i64 [ %i.fm, %.preheader288 ], [ 2, %bb.bz ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %.19
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !729
  %i.fi = zext i8 %i.fh to i64                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr @aiClass, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !729
  %i.fl = icmp ult i8 %i.fk, 3
  %i.fm = add nuw nsw i64 %.19, 1                 ; 2 uses
  br i1 %i.fl, label %.preheader288, label %bb.ca, !llvm.loop !3305

bb.ca:                                            ; preds = %.preheader288
  %i.fn = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.fi
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !729
  %i.fp = and i8 %i.fo, 70
  %.not248 = icmp eq i8 %i.fp, 0
  br i1 %.not248, label %bb.cb, label %.preheader442

bb.cb:                                            ; preds = %bb.ca
  store i32 60, ptr %1, align 4, !tbaa !566
  %i.fq = tail call fastcc i64 @keywordCode(ptr noundef nonnull %0, i64 noundef %.19, ptr noundef %1) ; 0 uses
  br label %.loopexit277

bb.cc:                                            ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !729
  %i.ft = icmp eq i8 %i.fs, 39
  br i1 %i.ft, label %bb.cd, label %.preheader442

bb.cd:                                            ; preds = %bb.cc
  store i32 155, ptr %1, align 4, !tbaa !566
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %bb.cd
  %.20 = phi i64 [ 2, %bb.cd ], [ %i.ga, %bb.ce ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 %.20
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !729 ; 2 uses
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !729
  %i.fz = and i8 %i.fy, 8
  %.not = icmp eq i8 %i.fz, 0
  %i.ga = add nuw nsw i64 %.20, 1
  br i1 %.not, label %bb.cf, label %bb.ce, !llvm.loop !3306

bb.cf:                                            ; preds = %bb.ce
  %.not243 = icmp eq i8 %i.fv, 39
  %i.gb = and i64 %.20, 1
  %.not244 = icmp eq i64 %i.gb, 0
  %or.cond270 = and i1 %.not243, %.not244
  br i1 %or.cond270, label %.critedge7, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 186, ptr %1, align 4, !tbaa !566
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %.21 = phi i64 [ %.20, %bb.cg ], [ %i.ge, %bb.ci ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 %.21
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !729
  switch i8 %i.gd, label %bb.ci [
    i8 0, label %.critedge7
    i8 39, label %.critedge7
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.ge = add nuw nsw i64 %.21, 1
  br label %bb.ch, !llvm.loop !3307

.critedge7:                                       ; preds = %bb.ch, %bb.ch, %bb.cf
  %.22 = phi i64 [ %.20, %bb.cf ], [ %.21, %bb.ch ], [ %.21, %bb.ch ] ; 2 uses
  %3 = getelementptr inbounds i8, ptr %0, i64 %.22
  %4 = load i8, ptr %3, align 1, !tbaa !729
  %.not247 = icmp ne i8 %4, 0
  %5 = zext i1 %.not247 to i64
  %spec.select271 = add nsw i64 %.22, %5
  br label %.loopexit277

bb.cj:                                            ; preds = %bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !729
  %i.gh = icmp eq i8 %i.gg, -69
  br i1 %i.gh, label %bb.ck, label %.preheader442

bb.ck:                                            ; preds = %bb.cj
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !729
  %i.gk = icmp eq i8 %i.gj, -65
  br i1 %i.gk, label %bb.cl, label %.preheader442

bb.cl:                                            ; preds = %bb.ck
  store i32 184, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.cm:                                            ; preds = %bb.a
  store i32 186, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.cn:                                            ; preds = %bb.a
  store i32 186, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

bb.co:                                            ; preds = %.preheader442, %bb.co
  %.25 = phi i64 [ %i.gr, %bb.co ], [ %.25.ph, %.preheader442 ] ; 3 uses
  %i.gl = getelementptr inbounds i8, ptr %0, i64 %.25
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !729
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !729
  %i.gq = and i8 %i.gp, 70
  %.not249 = icmp eq i8 %i.gq, 0
  %i.gr = add nsw i64 %.25, 1
  br i1 %.not249, label %bb.cp, label %bb.co, !llvm.loop !3308

bb.cp:                                            ; preds = %bb.co
  store i32 60, ptr %1, align 4, !tbaa !566
  br label %.loopexit277

.loopexit277:                                     ; preds = %bb.bq, %bb.bn, %.loopexit286, %bb.bv, %.loopexit278, %.loopexit287, %.loopexit287.thread363, %bb.am, %bb.an, %._crit_edge, %bb.cp, %bb.cn, %bb.cm, %bb.cl, %.critedge7, %bb.cb, %.critedge2, %bb.ap, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %.loopexit, %bb.o, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b
  %.1225 = phi i64 [ 1, %bb.cn ], [ %.0220, %bb.b ], [ %.1221, %bb.e ], [ %i.v, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.o ], [ %i.ai, %.loopexit ], [ 1, %bb.p ], [ %i.am, %bb.q ], [ 2, %bb.s ], [ 2, %bb.t ], [ 2, %bb.u ], [ 1, %bb.v ], [ 2, %bb.x ], [ 2, %bb.y ], [ 1, %bb.z ], [ 1, %bb.ab ], [ 2, %bb.ac ], [ 1, %bb.ae ], [ 2, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 0, %bb.cm ], [ %.4.lcssa, %._crit_edge ], [ 1, %bb.ap ], [ %.13.lcssa, %.critedge2 ], [ %.18.ph, %.loopexit287 ], [ %i.di, %bb.bn ], [ %.25, %bb.cp ], [ %.19, %bb.cb ], [ %spec.select271, %.critedge7 ], [ 3, %bb.cl ], [ %i.ax, %bb.am ], [ %i.ax, %bb.an ], [ %.18366, %.loopexit287.thread363 ], [ %.11, %.loopexit278 ], [ %i.eq, %bb.bv ], [ %i.eh, %.loopexit286 ], [ %.14, %bb.bq ]
  ret i64 %.1225
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3RunParser(ptr noundef initializes((24, 28), (344, 352)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Token, align 8              ; 5 uses
  %3 = alloca %union.YYMINORTYPE, align 8         ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.yyParser, align 8           ; 26 uses
  %5 = alloca %struct.Token, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #57
  %i.f = load ptr, ptr %0, align 8, !tbaa !977    ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #57
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !566
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.k = load i32, ptr %i.j, align 8, !tbaa !902
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  store atomic volatile i32 0, ptr %i.m monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  store i32 0, ptr %i.n, align 8, !tbaa !775
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  store ptr %1, ptr %i.o, align 8, !tbaa !798
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  store ptr %0, ptr %i.p, align 8, !tbaa !3323
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 13 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !3324
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 1208
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !3325
  store ptr %i.q, ptr %4, align 8, !tbaa !1256
  store i16 0, ptr %i.q, align 8, !tbaa !1258
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 34
  store i16 0, ptr %i.u, align 2, !tbaa !1259
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !764
  store ptr %0, ptr %i.v, align 8, !tbaa !764
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 197
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %sqlite3Parser.exit, %bb.c
  %.082.ph = phi i32 [ %i.ct, %sqlite3Parser.exit ], [ -1, %bb.c ] ; 3 uses
  %.081.ph = phi i64 [ %i.aj, %sqlite3Parser.exit ], [ %i.i, %bb.c ]
  %.0.ph = phi ptr [ %i.ih, %sqlite3Parser.exit ], [ %1, %bb.c ] ; 3 uses
  %i.ad = call fastcc i64 @sqlite3GetToken(ptr noundef %.0.ph, ptr noundef %i.e) ; 2 uses
  %i.ae = sub nsw i64 %.081.ph, %i.ad             ; 2 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %.outer._crit_edge, label %.lr.ph

.outer._crit_edge:                                ; preds = %.outer, %.backedge
  %.0.lcssa = phi ptr [ %.0.be, %.backedge ], [ %.0.ph, %.outer ]
  store i32 18, ptr %i.n, align 8, !tbaa !775
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !776
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !776
  br label %.loopexit

.lr.ph:                                           ; preds = %.outer, %.backedge
  %i.aj = phi i64 [ %i.at, %.backedge ], [ %i.ae, %.outer ] ; 2 uses
  %i.ak = phi i64 [ %i.as, %.backedge ], [ %i.ad, %.outer ] ; 12 uses
  %.0186 = phi ptr [ %.0.be, %.backedge ], [ %.0.ph, %.outer ] ; 16 uses
  %i.al = load i32, ptr %i.e, align 4, !tbaa !566 ; 5 uses
  %i.am = icmp sgt i32 %i.al, 164
  br i1 %i.am, label %bb.d, label %.loopexit149

bb.d:                                             ; preds = %.lr.ph
  %i.an = load atomic volatile i32, ptr %i.x monotonic, align 8
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 9, ptr %i.n, align 8, !tbaa !775
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !776
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !776
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ar = icmp eq i32 %i.al, 184
  br i1 %i.ar, label %.backedge, label %bb.g

.backedge:                                        ; preds = %bb.ad, %bb.ae, %bb.f
  %.0.be = getelementptr inbounds i8, ptr %.0186, i64 %i.ak ; 3 uses
  %i.as = call fastcc i64 @sqlite3GetToken(ptr noundef %.0.be, ptr noundef %i.e) ; 2 uses
  %i.at = sub nsw i64 %i.aj, %i.as                ; 2 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %.outer._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.av = load i8, ptr %.0186, align 1, !tbaa !729
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  switch i32 %.082.ph, label %bb.i [
    i32 1, label %.loopexit149.sink.split
    i32 0, label %.loopexit
  ]

bb.i:                                             ; preds = %bb.h
  br label %.loopexit149.sink.split

bb.j:                                             ; preds = %bb.g
  switch i32 %i.al, label %.thread [
    i32 165, label %bb.k
    i32 166, label %bb.s
    i32 167, label %bb.x
    i32 185, label %bb.ad
    i32 183, label %.loopexit149
  ]

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.0186, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #57
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %i.ax, %bb.k ], [ %i.az, %bb.l ] ; 2 uses
  %i.ay = call fastcc i64 @sqlite3GetToken(ptr noundef %.0.i.i, ptr noundef %i.d)
  %i.az = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.d, align 4, !tbaa !566 ; 4 uses
  %i.bb = and i32 %i.ba, -2
  %i.bc = icmp eq i32 %i.bb, 184
  br i1 %i.bc, label %bb.l, label %bb.m, !llvm.loop !3309

bb.m:                                             ; preds = %bb.l
  switch i32 %i.ba, label %bb.n [
    i32 166, label %getToken.exit.thread.i
    i32 165, label %getToken.exit.thread.i
    i32 119, label %getToken.exit.thread.i
    i32 118, label %getToken.exit.thread.i
    i32 60, label %getToken.exit.thread.i
  ]

end_hunk_0
begin_hunk_1_@sqlite3PagerSavepoint:bb.a
  br i1 %.not.i.i, label %thread-pre-split.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hf, align 4, !tbaa !566
  %i.hk = load i32, ptr %i.hi, align 8, !tbaa !1570
  store i32 %i.hk, ptr %i.hg, align 4, !tbaa !566
  br label %bb.aq

thread-pre-split.i.i:                             ; preds = %bb.ao
  %.pr.i.i = load i32, ptr %i.hf, align 4, !tbaa !566
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split.i.i, %bb.ap
  %i.hl = phi i32 [ %.pr.i.i, %thread-pre-split.i.i ], [ 0, %bb.ap ] ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 88 ; 4 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !1556
  %i.ho = icmp ult i32 %i.hl, %i.hn
  br i1 %i.ho, label %bb.ar, label %.lr.ph115.preheader.i

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.hl, ptr %i.hm, align 8, !tbaa !1556
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !566
  %i.hr = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  store i32 %i.hq, ptr %i.hr, align 8, !tbaa !566
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gw, i64 44
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !566
  %i.hu = getelementptr inbounds nuw i8, ptr %i.he, i64 100
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !566
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  %i.hv = icmp eq i32 %i.hl, 0
  br i1 %i.hv, label %walCleanupHash.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hw = add i32 %i.hl, 4096
  %i.hx = zext i32 %i.hw to i64
  %i.hy = add nuw nsw i64 %i.hx, 17592186040353
  %i.hz = lshr i64 %i.hy, 12                      ; 2 uses
  %i.ia = trunc i64 %i.hz to i32                  ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !1559
  %.not.i.i.i.i90.i = icmp sgt i32 %i.id, %i.ia
  br i1 %.not.i.i.i.i90.i, label %bb.at, label %walIndexPage.exit.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.ie = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !1476
  %sext.i.i.i = shl i64 %i.hz, 32
  %i.ig = ashr exact i64 %sext.i.i.i, 29
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !782 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %walIndexPage.exit.i.i.i.i, label %walIndexPage.exit.thread.i.i.thread.i.i

walIndexPage.exit.i.i.i.i:                        ; preds = %bb.at, %bb.as
  %i.ik = call fastcc i32 @walIndexPageRealloc(ptr noundef nonnull %i.he, i32 noundef %i.ia, ptr noundef nonnull %i.ib), !inline_history !3627
  %.pr.i.i.i.i = load ptr, ptr %i.ib, align 8, !tbaa !1561 ; 2 uses
  %.not.i.i.i91.i = icmp ne ptr %.pr.i.i.i.i, null
  %.not.i.i92.i = icmp eq i32 %i.ik, 0
  %or.cond.i.i = select i1 %.not.i.i.i91.i, i1 %.not.i.i92.i, i1 false
  %.pre120.i = load i32, ptr %i.hm, align 8, !tbaa !1556 ; 2 uses
  br i1 %or.cond.i.i, label %walIndexPage.exit.thread.i.i.thread.i.i, label %walCleanupHash.exit.i.i

walIndexPage.exit.thread.i.i.thread.i.i:          ; preds = %walIndexPage.exit.i.i.i.i, %bb.at
  %i.il = phi i32 [ %i.hl, %bb.at ], [ %.pre120.i, %walIndexPage.exit.i.i.i.i ]
  %i.im = phi ptr [ %i.ii, %bb.at ], [ %.pr.i.i.i.i, %walIndexPage.exit.i.i.i.i ] ; 2 uses
  %i.in = icmp eq i32 %i.ia, 0                    ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 16384 ; 2 uses
  %i.ip = shl i32 %i.ia, 12
  %i.iq = add i32 %i.ip, -34
  %i.ir = select i1 %i.in, i32 0, i32 %i.iq
  %i.is = sub i32 %i.il, %i.ir                    ; 3 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.ay, %walIndexPage.exit.thread.i.i.thread.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %walIndexPage.exit.thread.i.i.thread.i.i ], [ %indvars.iv.next.i.i.i.1, %bb.ay ] ; 3 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %indvars.iv.i.i.i ; 2 uses
  %i.iu = load volatile i16, ptr %i.it, align 2, !tbaa !779
  %i.iv = zext i16 %i.iu to i32
  %i.iw = icmp slt i32 %i.is, %i.iv
  br i1 %i.iw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store volatile i16 0, ptr %i.it, align 2, !tbaa !779
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %indvars.iv.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 2 ; 2 uses
  %i.iz = load volatile i16, ptr %i.iy, align 2, !tbaa !779
  %i.ja = zext i16 %i.iz to i32
  %i.jb = icmp slt i32 %i.is, %i.ja
  br i1 %i.jb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store volatile i16 0, ptr %i.iy, align 2, !tbaa !779
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 8192
  br i1 %exitcond.not.i.i.i.1, label %bb.az, label %bb.au, !llvm.loop !182

bb.az:                                            ; preds = %bb.ay
  %.idx.i.i.i = select i1 %i.in, i64 136, i64 0
  %i.jc = sext i32 %i.is to i64
  %.idx19.i.i.i = shl nsw i64 %i.jc, 2
  %i.jd = add nsw i64 %.idx19.i.i.i, %.idx.i.i.i  ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %i.im, i64 %i.jd
  %i.jf = shl i64 %i.jd, 32
  %i.jg = sub i64 70368744177664, %i.jf
  %i.jh = ashr exact i64 %i.jg, 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.je, i8 0, i64 %i.jh, i1 false)
  %.pre.i = load i32, ptr %i.hm, align 8, !tbaa !1556
  br label %walCleanupHash.exit.i.i

walCleanupHash.exit.i.i:                          ; preds = %bb.az, %walIndexPage.exit.i.i.i.i, %bb.ar
  %i.ji = phi i32 [ %.pre.i, %bb.az ], [ %.pre120.i, %walIndexPage.exit.i.i.i.i ], [ 0, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #57
  %i.jj = getelementptr inbounds nuw i8, ptr %i.he, i64 124 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !1508
  %i.jl = icmp ugt i32 %i.jk, %i.ji
  br i1 %i.jl, label %bb.ba, label %.lr.ph115.preheader.i

bb.ba:                                            ; preds = %walCleanupHash.exit.i.i
  store i32 0, ptr %i.jj, align 4, !tbaa !1508
  br label %.lr.ph115.preheader.i

sqlite3WalSavepointUndo.exit.i:                   ; preds = %.critedge2.i.thread
  %i.jm = icmp eq i32 %.2.lcssa.i83, 0
  br i1 %i.jm, label %.lr.ph115.preheader.i, label %.critedge6.i

.lr.ph115.preheader.i:                            ; preds = %bb.aq, %walCleanupHash.exit.i.i, %bb.ba, %sqlite3WalSavepointUndo.exit.i
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.jo = load i32, ptr %i.gx, align 4, !tbaa !1567
  br label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %bb.bb, %.lr.ph115.preheader.i
  %.0114.i = phi i32 [ %i.js, %bb.bb ], [ %i.jo, %.lr.ph115.preheader.i ] ; 2 uses
  %i.jp = load i32, ptr %i.jn, align 4, !tbaa !1546
  %i.jq = icmp ult i32 %.0114.i, %i.jp
  br i1 %i.jq, label %bb.bb, label %.critedge6.i

bb.bb:                                            ; preds = %.lr.ph115.i
  %i.jr = call fastcc i32 @pager_playback_one_page(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef %.07195100144.i81, i32 noundef 0, i32 noundef 1), !inline_history !3627 ; 2 uses
  %i.js = add nuw i32 %.0114.i, 1
  %i.jt = icmp eq i32 %i.jr, 0
  br i1 %i.jt, label %.lr.ph115.i, label %.critedge6.i, !llvm.loop !3635

.critedge6.i:                                     ; preds = %bb.bb, %.lr.ph115.i, %sqlite3WalSavepointUndo.exit.i
  %.5.lcssa.i = phi i32 [ %.2.lcssa.i83, %sqlite3WalSavepointUndo.exit.i ], [ 0, %.lr.ph115.i ], [ %i.jr, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #57
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge6.i, %.critedge2.i
  %i.ju = phi i64 [ %i.gu, %.critedge6.i ], [ %.ph.i, %.critedge2.i ]
  %i.jv = phi ptr [ %i.gv, %.critedge6.i ], [ %.ph140.i, %.critedge2.i ]
  %.07195100144.i82 = phi ptr [ %.07195100144.i81, %.critedge6.i ], [ %.07195100.ph.i, %.critedge2.i ]
  %.6.i = phi i32 [ %.5.lcssa.i, %.critedge6.i ], [ %.2.lcssa.i, %.critedge2.i ] ; 2 uses
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %.07195100144.i82), !inline_history !3627
  %i.jw = icmp eq i32 %.6.i, 0
  br i1 %i.jw, label %bb.bd, label %pagerPlaybackSavepoint.exit

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !1481
  br label %pagerPlaybackSavepoint.exit

pagerPlaybackSavepoint.exit:                      ; preds = %.lr.ph.i.i, %bb.bd, %bb.bc, %sqlite3WalUndo.exit.i.i, %bb.n, %bb.k, %bb.i, %bb.f, %bb.e, %bb.b, %bb.a
  %.3 = phi i32 [ %i.e, %bb.a ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.e ], [ %.0, %bb.i ], [ 0, %bb.f ], [ 7, %bb.n ], [ %.6.i, %bb.bc ], [ 0, %bb.bd ], [ %.1.i.i.i, %sqlite3WalUndo.exit.i.i ], [ %i.et, %.lr.ph.i.i ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pagerUndoCallback(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !628
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %.val7.i = load ptr, ptr %i.c, align 8, !tbaa !631
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 224), align 8, !tbaa !1539
  %i.e = tail call ptr %i.d(ptr noundef %.val7.i, i32 noundef %1, i32 noundef 0) #57, !inline_history !179 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %sqlite3PagerUnrefNotNull.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !628  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1540 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1438
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %sqlite3PagerLookup.exit, label %sqlite3PagerLookup.exit.thread18

sqlite3PagerLookup.exit.thread18:                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1064
  %i.m = add nsw i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !1064
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1312
  %i.p = add nsw i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !1312
  br label %bb.c

sqlite3PagerLookup.exit:                          ; preds = %bb.b
  %i.q = tail call fastcc ptr @pcacheFetchFinishWithInit(ptr noundef %i.g, i32 noundef %1, ptr noundef nonnull %i.e), !inline_history !171 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %sqlite3PagerUnrefNotNull.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3PagerLookup.exit.thread18, %sqlite3PagerLookup.exit
  %.0.i21 = phi ptr [ %i.i, %sqlite3PagerLookup.exit.thread18 ], [ %i.q, %sqlite3PagerLookup.exit ] ; 16 uses
  %2 = getelementptr i8, ptr %.0.i21, i64 56
  %.val = load i64, ptr %2, align 8, !tbaa !1312
  %i.r = icmp eq i64 %.val, 1
  br i1 %i.r, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i21, i64 52
  %i.t = load i16, ptr %i.s, align 4, !tbaa !891
  %i.u = and i16 %i.t, 2
  %.not.i = icmp eq i16 %i.u, 0
  %.phi.trans.insert5.i = getelementptr inbounds nuw i8, ptr %.0.i21, i64 24
  %.pre6.i = load ptr, ptr %.phi.trans.insert5.i, align 8, !tbaa !1435 ; 7 uses
  br i1 %.not.i, label %sqlite3PcacheDrop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1439
  %i.x = icmp eq ptr %i.w, %.0.i21
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i21, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1440 ; 5 uses
  br i1 %i.x, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.z, ptr %i.v, align 8, !tbaa !1439
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i21, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1441 ; 4 uses
  %.not37.i.i = icmp eq ptr %i.ab, null
  %.not38.i.i = icmp eq ptr %i.z, null            ; 2 uses
  br i1 %.not37.i.i, label %bb.g, label %.thread.i.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 8
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !1442
  br i1 %.not38.i.i, label %bb.i, label %bb.h

.thread.i.i:                                      ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !1440
  br i1 %.not38.i.i, label %.thread44.i.i, label %bb.h

.thread44.i.i:                                    ; preds = %.thread.i.i
  store ptr %i.ab, ptr %.pre6.i, align 8, !tbaa !1444
  br label %sqlite3PcacheDrop.exit

bb.h:                                             ; preds = %.thread.i.i, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !1441
  br label %sqlite3PcacheDrop.exit

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %.pre6.i, align 8, !tbaa !1444
  %i.af = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 49
  store i8 2, ptr %i.af, align 1, !tbaa !1443
  br label %sqlite3PcacheDrop.exit

sqlite3PcacheDrop.exit:                           ; preds = %bb.d, %.thread44.i.i, %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1064
  %i.ai = add nsw i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !1064
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 232), align 8, !tbaa !1437
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !631
  %i.am = load ptr, ptr %.0.i21, align 8, !tbaa !1438
  tail call void %i.aj(ptr noundef %i.al, ptr noundef %i.am, i32 noundef 1) #57, !inline_history !180
  br label %sqlite3PagerUnrefNotNull.exit

bb.j:                                             ; preds = %bb.c
  %i.an = tail call fastcc i32 @readDbPage(ptr noundef nonnull %.0.i21) ; 3 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1528
  tail call void %i.aq(ptr noundef nonnull %.0.i21) #57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i21, i64 52
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !891
  %i.at = and i16 %i.as, 32
  %.not.i13 = icmp eq i16 %i.at, 0
  br i1 %.not.i13, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i21, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !892 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 152 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !893
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !893
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 168 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !894
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i21, i64 32
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !895
  store ptr %.0.i21, ptr %i.az, align 8, !tbaa !894
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !896 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i21, i64 48
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !897
  %i.bg = add i32 %i.bf, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 200
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !626
  %i.bk = mul nsw i64 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i21, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !890
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !859
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !899
  %i.bq = tail call i32 %i.bp(ptr noundef nonnull %i.bd, i64 noundef %i.bk, ptr noundef %i.bm) #57, !inline_history !51 ; 0 uses
  br label %sqlite3PagerUnrefNotNull.exit

bb.n:                                             ; preds = %bb.l
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.0.i21)
  br label %sqlite3PagerUnrefNotNull.exit

sqlite3PagerUnrefNotNull.exit:                    ; preds = %bb.a, %bb.n, %bb.m, %sqlite3PcacheDrop.exit, %sqlite3PagerLookup.exit
  %.0 = phi i32 [ 0, %sqlite3PcacheDrop.exit ], [ %i.an, %bb.n ], [ 0, %sqlite3PagerLookup.exit ], [ %i.an, %bb.m ], [ 0, %bb.a ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1038 ; 2 uses
  %.not4.i = icmp eq ptr %i.bs, null
  br i1 %.not4.i, label %sqlite3BackupRestart.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sqlite3PagerUnrefNotNull.exit, %.lr.ph.i
  %.05.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.bs, %sqlite3PagerUnrefNotNull.exit ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  store i32 1, ptr %i.bt, align 8, !tbaa !971
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !997 ; 2 uses
  %.not.i14 = icmp eq ptr %i.bv, null
  br i1 %.not.i14, label %sqlite3BackupRestart.exit, label %.lr.ph.i, !llvm.loop !63

sqlite3BackupRestart.exit:                        ; preds = %.lr.ph.i, %sqlite3PagerUnrefNotNull.exit
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sqlite3PcacheDirtyList(ptr nofree noundef readonly captures(none) %0) unnamed_addr #16 {
bb.a:
  %1 = alloca %struct.PgHdr, align 8              ; 4 uses
  %2 = alloca %struct.PgHdr, align 8              ; 4 uses
  %3 = alloca %struct.PgHdr, align 8              ; 4 uses
  %i.a = alloca [32 x ptr], align 16              ; 9 uses
  %.0.pr = load ptr, ptr %0, align 8, !tbaa !886  ; 3 uses
  %.not9 = icmp eq ptr %.0.pr, null
  br i1 %.not9, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  br label %._crit_edge.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %i.c, %.lr.ph ], [ %.0.pr, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.010, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !886  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.010, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !895
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.lr.ph.i, label %.lr.ph, !llvm.loop !3636

.lr.ph.i:                                         ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.lr.ph.i
  %.02551.i = phi ptr [ %.0.pr, %.lr.ph.i ], [ %i.i, %bb.l ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02551.i, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !895  ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !895
  br label %bb.c

bb.c:                                             ; preds = %pcacheMergeDirtyList.exit.i, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %pcacheMergeDirtyList.exit.i ] ; 2 uses
  %.02348.i = phi ptr [ %.02551.i, %bb.b ], [ %i.z, %pcacheMergeDirtyList.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !886  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  store ptr %.02348.i, ptr %i.j, align 8, !tbaa !886
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  br label %.outer32

.outer32:                                         ; preds = %bb.f, %bb.d
  %.018.i.i.ph = phi ptr [ %i.t, %bb.f ], [ %i.k, %bb.d ] ; 6 uses
  %.016.i.i.ph = phi ptr [ %.016.i.i, %bb.f ], [ %.02348.i, %bb.d ]
  %.0.i.i.ph = phi ptr [ %.018.i.i.ph, %bb.f ], [ %3, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i.i.ph, i64 48
end_hunk_1
begin_hunk_2_@btreeComputeFreeSpace:bb.a
  %i.at = icmp sgt i32 %.051, %i.ag
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75362, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.e:                                             ; preds = %.preheader
  %i.au = zext nneg i32 %.051 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.au ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !729
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !729
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.az, %i.bc            ; 3 uses
  %i.be = icmp samesign ult i32 %i.bd, 4
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75368, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.bf = load i8, ptr %i.av, align 1, !tbaa !729
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !729
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, %i.bk            ; 3 uses
  %i.bm = add i32 %i.bd, %.050                    ; 2 uses
  %i.bn = add nuw nsw i32 %i.bd, %.051            ; 2 uses
  %i.bo = add nuw nsw i32 %i.bn, 4
  %i.bp = icmp samesign ult i32 %i.bl, %i.bo
  br i1 %i.bp, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %.not60 = icmp eq i32 %i.bl, 0
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75376, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.bq = icmp ugt i32 %i.bn, %i.d
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75380, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.l:                                             ; preds = %bb.j, %bb.a
  %.2 = phi i32 [ %i.as, %bb.a ], [ %i.bm, %bb.j ] ; 3 uses
  %i.br = icmp sgt i32 %.2, %i.d
  %i.bs = icmp slt i32 %.2, %i.af
  %or.cond = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75392, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.bt = sub nuw nsw i32 %.2, %i.af
  %i.bu = and i32 %i.bt, 65535
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !1487
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.f, %bb.d, %bb.c, %bb.n, %bb.m
  %.153 = phi i32 [ 11, %bb.m ], [ 0, %bb.n ], [ 11, %bb.c ], [ 11, %bb.d ], [ 11, %bb.f ], [ 11, %bb.i ], [ 11, %bb.k ]
  ret i32 %.153
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dropCell(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !566
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !985  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1114
  %i.f = shl nsw i32 %1, 1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !729
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !729
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1063
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = add i32 %i.o, %2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1062
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1057
  %i.x = icmp ugt i32 %i.s, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 80514, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  store i32 11, ptr %3, align 4, !tbaa !566
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.y = tail call fastcc i32 @freeSpace(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %2) ; 2 uses
  %.not44 = icmp eq i32 %i.y, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.y, ptr %3, align 4, !tbaa !566
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !1497
  %i.ab = add i16 %i.aa, -1                       ; 3 uses
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !1497
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i32 0, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 7
  store i8 0, ptr %i.af, align 1, !tbaa !729
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !1062
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1057
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !729
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !1062
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1057
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !729
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !1062
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1057
  %i.au = load i8, ptr %i.p, align 1, !tbaa !1063
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !1489
  %i.ay = zext i8 %i.ax to i32
  %.neg46 = add i32 %i.at, -8
  %i.az = add nuw nsw i32 %i.av, %i.ay
  %i.ba = sub i32 %.neg46, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !1487
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bc = zext i16 %i.ab to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.be = sub nsw i32 %i.bc, %1
  %i.bf = shl nsw i32 %i.be, 1
  %i.bg = sext i32 %i.bf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.bd, i64 %i.bg, i1 false)
  %i.bh = load i16, ptr %i.z, align 8, !tbaa !1497
  %i.bi = lshr i16 %i.bh, 8
  %i.bj = trunc nuw i16 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !729
  %i.bm = load i16, ptr %i.z, align 8, !tbaa !1497
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !729
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !1487
  %i.br = add nsw i32 %i.bq, 2
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !1487
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @balance(ptr nofree noundef captures(address) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.CellInfo, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 21 uses
  %i.b = alloca [3 x ptr], align 16               ; 13 uses
  %i.c = alloca [5 x ptr], align 16               ; 27 uses
  %i.d = alloca [2 x ptr], align 16               ; 5 uses
  %i.e = alloca [5 x i32], align 16               ; 14 uses
  %i.f = alloca [5 x i32], align 16               ; 7 uses
  %i.g = alloca [5 x i32], align 16               ; 11 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca [5 x i8], align 1                 ; 4 uses
  %i.j = alloca [5 x i32], align 16               ; 8 uses
  %2 = alloca %struct.CellArray, align 8          ; 24 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.CellInfo, align 8           ; 4 uses
  %4 = alloca %struct.CellInfo, align 8           ; 6 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 8 uses
  %i.p = alloca i16, align 2                      ; 7 uses
  %5 = alloca %struct.CellArray, align 8          ; 11 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %i.r = alloca ptr, align 8                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 7 uses
  %i.t = alloca [13 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #57
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 100
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.al = ptrtoint ptr %i.t to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !1111
  br label %bb.b

bb.b:                                             ; preds = %bb.ho, %bb.a
  %i.aw = phi ptr [ %.pre, %bb.a ], [ %storemerge, %bb.ho ] ; 38 uses
  %.057 = phi ptr [ null, %bb.a ], [ %.3, %bb.ho ] ; 13 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 20 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !1487
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = call fastcc i32 @btreeComputeFreeSpace(ptr noundef nonnull %i.aw)
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.d, label %.thread118

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 7 uses
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !1496
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.be = load i32, ptr %i.ax, align 4, !tbaa !1487
  %i.bf = mul nsw i32 %i.be, 3
  %i.bg = load ptr, ptr %i.w, align 8, !tbaa !1216
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1057
  %i.bj = shl nsw i32 %i.bi, 1
  %.not68 = icmp sgt i32 %i.bf, %i.bj
  br i1 %.not68, label %bb.f, label %.thread118

bb.f:                                             ; preds = %bb.e
  %i.bk = load i8, ptr %i.v, align 4, !tbaa !1609 ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %.thread118, label %bb.ad

.thread:                                          ; preds = %bb.d
  %i.bm = load i8, ptr %i.v, align 4, !tbaa !1609 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.ad

bb.g:                                             ; preds = %.thread
  %i.bo = load ptr, ptr %i.w, align 8, !tbaa !1216
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.011.i = load ptr, ptr %i.bp, align 8, !tbaa !1052 ; 2 uses
  %.not12.i = icmp eq ptr %.011.i, null
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.j
  %.013.i = phi ptr [ %.0.i, %bb.j ], [ %.011.i, %bb.g ] ; 4 uses
  %.not10.i = icmp eq ptr %.013.i, %0
  br i1 %.not10.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bq = load i8, ptr %.013.i, align 8, !tbaa !1116
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1111
  %i.bu = load ptr, ptr %i.u, align 8, !tbaa !1111
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %anotherValidCursor.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i, i64 40
  %.0.i = load ptr, ptr %i.bw, align 8, !tbaa !1052 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !4264

anotherValidCursor.exit:                          ; preds = %bb.i
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82339, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !4265
  br label %.thread118

.loopexit:                                        ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #57
  store ptr null, ptr %i.r, align 8, !tbaa !1510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #57
  store i32 0, ptr %i.s, align 4, !tbaa !566
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 72 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1062 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1006 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !892 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 52
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !891
  %i.cf = and i16 %i.ce, 4
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !998
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !897
  %.not13.i.i = icmp ult i32 %i.ch, %i.cj
  br i1 %.not13.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !988
  %.not15.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not15.i.i, label %sqlite3PagerWrite.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.ca), !inline_history !4266
  br label %sqlite3PagerWrite.exit.i

bb.n:                                             ; preds = %bb.k, %.loopexit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !1000 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.co, 0
  br i1 %.not14.i.i, label %bb.o, label %.thread.thread.i

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 184
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !1001
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !626
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = icmp ugt i32 %i.cq, %i.ct
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cv = call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.ca), !inline_history !4266
  br label %sqlite3PagerWrite.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cw = call fastcc i32 @pager_write(ptr noundef nonnull %i.ca), !inline_history !4266
  br label %sqlite3PagerWrite.exit.i

sqlite3PagerWrite.exit.i:                         ; preds = %bb.q, %bb.p, %bb.m
  %.0.i.i = phi i32 [ %i.cm, %bb.m ], [ %i.cw, %bb.q ], [ %i.cv, %bb.p ] ; 2 uses
  %i.cx = icmp eq i32 %.0.i.i, 0
  br i1 %i.cx, label %sqlite3PagerWrite.exit.thread.i, label %.thread.thread.i

sqlite3PagerWrite.exit.thread.i:                  ; preds = %sqlite3PagerWrite.exit.i, %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !1061
  %i.da = call fastcc i32 @allocateBtreePage(ptr noundef %i.by, ptr noundef %i.r, ptr noundef %i.s, i32 noundef %i.cz, i8 noundef zeroext 0), !inline_history !4267 ; 3 uses
  store i32 %i.da, ptr %i.q, align 4, !tbaa !566
  %i.db = load ptr, ptr %i.r, align 8, !tbaa !1510 ; 14 uses
  %i.dc = icmp eq i32 %i.da, 0
  br i1 %i.dc, label %bb.r, label %copyNodeContent.exit.i

bb.r:                                             ; preds = %sqlite3PagerWrite.exit.thread.i
end_hunk_2
begin_hunk_3_@balance:bb.a
  %.not604.i = icmp eq i32 %i.aoo, 0
  br i1 %.not604.i, label %bb.ex, label %.thread692.loopexit.split.loop.exit1171.i

bb.ex:                                            ; preds = %bb.ew
  %i.aop = load ptr, ptr %i.k, align 8, !tbaa !1510 ; 16 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 80
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !985 ; 5 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aop, i64 72
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !1062 ; 4 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aop, i64 9
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !1063 ; 2 uses
  %i.aow = zext i8 %i.aov to i32                  ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aot, i64 40
  %i.aoy = load i16, ptr %i.aox, align 8, !tbaa !1032
  %i.aoz = and i16 %i.aoy, 12
  %.not.i652.i = icmp eq i16 %i.aoz, 0
  %.pre.i.i100 = zext i8 %i.aov to i64            ; 2 uses
  br i1 %.not.i652.i, label %zeroPage.exit.i101, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aor, i64 %.pre.i.i100
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aot, i64 56
  %i.apc = load i32, ptr %i.apb, align 8, !tbaa !1057
  %i.apd = sub i32 %i.apc, %i.aow
  %i.ape = zext i32 %i.apd to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.apa, i8 0, i64 %i.ape, i1 false)
  br label %zeroPage.exit.i101

zeroPage.exit.i101:                               ; preds = %bb.ey, %bb.ex
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aor, i64 %.pre.i.i100 ; 5 uses
  store i8 %i.amt, ptr %i.apf, align 1, !tbaa !729
  %i.apg = add nuw nsw i32 %i.amz, %i.aow         ; 3 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apf, i64 1
  store i32 0, ptr %i.aph, align 1
  %i.api = getelementptr inbounds nuw i8, ptr %i.apf, i64 7
  store i8 0, ptr %i.api, align 1, !tbaa !729
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aot, i64 56 ; 3 uses
  %i.apk = load i32, ptr %i.apj, align 8, !tbaa !1057
  %i.apl = lshr i32 %i.apk, 8
  %i.apm = trunc i32 %i.apl to i8
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apf, i64 5
  store i8 %i.apm, ptr %i.apn, align 1, !tbaa !729
  %i.apo = load i32, ptr %i.apj, align 8, !tbaa !1057
  %i.app = trunc i32 %i.apo to i8
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apf, i64 6
  store i8 %i.app, ptr %i.apq, align 1, !tbaa !729
  %i.apr = load i32, ptr %i.apj, align 8, !tbaa !1057
  %i.aps = sub i32 %i.apr, %i.apg
  %i.apt = and i32 %i.aps, 65535
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aop, i64 20
  store i32 %i.apt, ptr %i.apu, align 4, !tbaa !1487
  %i.apv = call fastcc i32 @decodeFlags(ptr noundef nonnull %i.aop, i32 noundef range(i32 0, 256) %i.amu), !inline_history !4296 ; 0 uses
  %i.apw = trunc nuw nsw i32 %i.apg to i16
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aop, i64 18
  store i16 %i.apw, ptr %i.apx, align 2, !tbaa !1494
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aot, i64 52
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !653 ; 2 uses
  %i.aqa = zext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aqa
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aop, i64 88
  store ptr %i.aqb, ptr %i.aqc, align 8, !tbaa !1119
  %i.aqd = zext nneg i32 %i.apg to i64
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aqd
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aop, i64 96
  store ptr %i.aqe, ptr %i.aqf, align 8, !tbaa !1114
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aop, i64 10
  %i.aqh = load i8, ptr %i.aqg, align 2, !tbaa !1489
  %i.aqi = zext i8 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aqi
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aop, i64 104
  store ptr %i.aqj, ptr %i.aqk, align 8, !tbaa !1495
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aop, i64 12
  store i8 0, ptr %i.aql, align 4, !tbaa !1496
  %i.aqm = trunc i32 %i.apz to i16
  %i.aqn = add i16 %i.aqm, -1
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aop, i64 26
  store i16 %i.aqn, ptr %i.aqo, align 2, !tbaa !1113
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aop, i64 24
  store i16 0, ptr %i.aqp, align 8, !tbaa !1497
  store i8 1, ptr %i.aop, align 8, !tbaa !1498
  %i.aqq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv976.i
  store ptr %i.aop, ptr %i.aqq, align 8, !tbaa !1510
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv976.i
  store i32 %i.agk, ptr %i.aqr, align 4, !tbaa !566
  %i.aqs = load i8, ptr %i.ana, align 1, !tbaa !1051
  %.not605.i = icmp eq i8 %i.aqs, 0
  br i1 %.not605.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %zeroPage.exit.i101
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aop, i64 4
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !1061
  %i.aqv = load i32, ptr %i.anb, align 4, !tbaa !1061
  call fastcc void @ptrmapPut(ptr noundef nonnull %i.tr, i32 noundef %i.aqu, i8 noundef zeroext 5, i32 noundef %i.aqv, ptr noundef %i.a), !inline_history !4278
  %i.aqw = load i32, ptr %i.a, align 4, !tbaa !566 ; 2 uses
  %.not606.i = icmp eq i32 %i.aqw, 0
  br i1 %.not606.i, label %bb.fa, label %.thread692.loopexit.split.loop.exit.i

.thread692.loopexit.split.loop.exit.i:            ; preds = %bb.ez
  %indvars979.le1178.i = trunc i64 %indvars.iv976.i to i32
  %i.aqx = add nuw nsw i32 %indvars979.le1178.i, 1
  br label %.thread692.i

.thread692.loopexit.split.loop.exit1168.i:        ; preds = %bb.ev
  %indvars979.le1176.i.a = trunc nuw nsw i64 %indvars.iv976.i to i32
  %i.aqy = add nuw nsw i32 %indvars979.le1176.i.a, 1
  br label %.thread692.i

.thread692.loopexit.split.loop.exit1171.i:        ; preds = %bb.ew
  %indvars979.le1180.i = trunc i64 %indvars.iv976.i to i32
  br label %.thread692.i

.thread692.i:                                     ; preds = %.thread692.loopexit.split.loop.exit1171.i, %.thread692.loopexit.split.loop.exit1168.i, %.thread692.loopexit.split.loop.exit.i, %.thread689.i
  %i.aqz = phi i32 [ 11, %.thread689.i ], [ %.pr.i98, %.thread692.loopexit.split.loop.exit1168.i ], [ %i.aqw, %.thread692.loopexit.split.loop.exit.i ], [ %i.aoo, %.thread692.loopexit.split.loop.exit1171.i ]
  %.2498.ph.i = phi i32 [ %i.aol, %.thread689.i ], [ %i.aqy, %.thread692.loopexit.split.loop.exit1168.i ], [ %i.aqx, %.thread692.loopexit.split.loop.exit.i ], [ %indvars979.le1180.i, %.thread692.loopexit.split.loop.exit1171.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #57
  br label %.thread705.i

bb.fa:                                            ; preds = %bb.ez, %zeroPage.exit.i101, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #57
  %indvars.iv.next977.i = add nuw nsw i64 %indvars.iv976.i, 1 ; 2 uses
  %exitcond983.not.i = icmp eq i64 %indvars.iv.next977.i, %wide.trip.count982.i
  br i1 %exitcond983.not.i, label %.lr.ph814.i.preheader, label %bb.em, !llvm.loop !4297

.lr.ph814.i.preheader:                            ; preds = %bb.fa
  %xtraiter488 = and i64 %wide.trip.count982.i, 3 ; 3 uses
  %i.ara = icmp ult i32 %.8545.ph.i, 4
  br i1 %i.ara, label %.lr.ph814.i.epil.preheader, label %.lr.ph814.i.preheader.new

.lr.ph814.i.preheader.new:                        ; preds = %.lr.ph814.i.preheader
  %unroll_iter491 = and i64 %wide.trip.count982.i, 2147483644
  br label %.lr.ph814.i

.preheader721.i.unr-lcssa:                        ; preds = %.lr.ph814.i
  %lcmp.mod489.not = icmp eq i64 %xtraiter488, 0
  br i1 %lcmp.mod489.not, label %.preheader721.i, label %.lr.ph814.i.epil.preheader

.lr.ph814.i.epil.preheader:                       ; preds = %.preheader721.i.unr-lcssa, %.lr.ph814.i.preheader
  %indvars.iv984.i.epil.init = phi i64 [ 0, %.lr.ph814.i.preheader ], [ %indvars.iv.next985.i.3, %.preheader721.i.unr-lcssa ]
  %lcmp.mod490 = icmp ne i64 %xtraiter488, 0
  call void @llvm.assume(i1 %lcmp.mod490)
  br label %.lr.ph814.i.epil

.lr.ph814.i.epil:                                 ; preds = %.lr.ph814.i.epil, %.lr.ph814.i.epil.preheader
  %indvars.iv984.i.epil = phi i64 [ %indvars.iv.next985.i.epil, %.lr.ph814.i.epil ], [ %indvars.iv984.i.epil.init, %.lr.ph814.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph814.i.epil ], [ 0, %.lr.ph814.i.epil.preheader ]
  %i.arb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv984.i.epil
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !1510
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 4
  %i.are = load i32, ptr %i.ard, align 4, !tbaa !1061
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv984.i.epil
  store i32 %i.are, ptr %i.arf, align 4, !tbaa !566
  %indvars.iv.next985.i.epil = add nuw nsw i64 %indvars.iv984.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter488
  br i1 %epil.iter.cmp.not, label %.preheader721.i, label %.lr.ph814.i.epil, !llvm.loop !4298

.preheader721.i:                                  ; preds = %.lr.ph814.i.epil, %.preheader721.i.unr-lcssa
  %.not1183.i = icmp eq i32 %.8545.ph.i, 1
  br i1 %.not1183.i, label %._crit_edge823.i, label %.lr.ph818.preheader.i.preheader

.lr.ph818.preheader.i.preheader:                  ; preds = %.preheader721.i
  %i.arg = add nsw i64 %wide.trip.count982.i, -2
  br label %.lr.ph818.preheader.i

.lr.ph814.i:                                      ; preds = %.lr.ph814.i, %.lr.ph814.i.preheader.new
  %indvars.iv984.i = phi i64 [ 0, %.lr.ph814.i.preheader.new ], [ %indvars.iv.next985.i.3, %.lr.ph814.i ] ; 6 uses
  %niter492 = phi i64 [ 0, %.lr.ph814.i.preheader.new ], [ %niter492.next.3, %.lr.ph814.i ]
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv984.i
  %i.ari = load ptr, ptr %i.arh, align 16, !tbaa !1510
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 4
  %i.ark = load i32, ptr %i.arj, align 4, !tbaa !1061
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv984.i
  store i32 %i.ark, ptr %i.arl, align 16, !tbaa !566
  %indvars.iv.next985.i = or disjoint i64 %indvars.iv984.i, 1 ; 2 uses
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next985.i
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !1510
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 4
  %i.arp = load i32, ptr %i.aro, align 4, !tbaa !1061
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next985.i
  store i32 %i.arp, ptr %i.arq, align 4, !tbaa !566
  %indvars.iv.next985.i.1 = or disjoint i64 %indvars.iv984.i, 2 ; 2 uses
  %i.arr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next985.i.1
  %i.ars = load ptr, ptr %i.arr, align 16, !tbaa !1510
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 4
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !1061
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next985.i.1
  store i32 %i.aru, ptr %i.arv, align 8, !tbaa !566
  %indvars.iv.next985.i.2 = or disjoint i64 %indvars.iv984.i, 3 ; 2 uses
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next985.i.2
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !1510
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 4
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !1061
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next985.i.2
  store i32 %i.arz, ptr %i.asa, align 4, !tbaa !566
  %indvars.iv.next985.i.3 = add nuw nsw i64 %indvars.iv984.i, 4 ; 2 uses
  %niter492.next.3 = add i64 %niter492, 4         ; 2 uses
  %niter492.ncmp.3 = icmp eq i64 %niter492.next.3, %unroll_iter491
  br i1 %niter492.ncmp.3, label %.preheader721.i.unr-lcssa, label %.lr.ph814.i, !llvm.loop !4299

.lr.ph818.preheader.i:                            ; preds = %.lr.ph818.preheader.i.preheader, %bb.fc
  %indvars.iv998.i = phi i64 [ %indvars.iv.next999.i, %bb.fc ], [ 0, %.lr.ph818.preheader.i.preheader ] ; 7 uses
  %indvars.iv990.i = phi i64 [ %indvars.iv.next991.i, %bb.fc ], [ 1, %.lr.ph818.preheader.i.preheader ] ; 5 uses
  %i.asb = trunc nuw nsw i64 %indvars.iv998.i to i32 ; 2 uses
  %i.asc = sub nsw i64 %indvars.iv998.i, %wide.trip.count982.i
  %i.asd = and i64 %i.asc, 1
  %lcmp.mod494.not.not = icmp eq i64 %i.asd, 0
  br i1 %lcmp.mod494.not.not, label %.lr.ph818.i.prol, label %.lr.ph818.i.prol.loopexit

.lr.ph818.i.prol:                                 ; preds = %.lr.ph818.preheader.i
  %i.ase = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv990.i
  %6 = load ptr, ptr %i.ase, align 8, !tbaa !1510
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !1061
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv998.i
  %i.asf = load ptr, ptr %9, align 8, !tbaa !1510
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 4
  %i.ash = load i32, ptr %i.asg, align 4, !tbaa !1061
  %i.asi = icmp ult i32 %8, %i.ash
  %i.asj = trunc nuw nsw i64 %indvars.iv990.i to i32
  %spec.select628.i.prol = select i1 %i.asi, i32 %i.asj, i32 %i.asb ; 2 uses
  %indvars.iv.next993.i.prol = add nuw nsw i64 %indvars.iv990.i, 1
  br label %.lr.ph818.i.prol.loopexit

.lr.ph818.i.prol.loopexit:                        ; preds = %.lr.ph818.i.prol, %.lr.ph818.preheader.i
  %spec.select628.i.lcssa.unr = phi i32 [ poison, %.lr.ph818.preheader.i ], [ %spec.select628.i.prol, %.lr.ph818.i.prol ]
  %indvars.iv992.i.unr = phi i64 [ %indvars.iv990.i, %.lr.ph818.preheader.i ], [ %indvars.iv.next993.i.prol, %.lr.ph818.i.prol ]
  %.0503816.i.unr = phi i32 [ %i.asb, %.lr.ph818.preheader.i ], [ %spec.select628.i.prol, %.lr.ph818.i.prol ]
  %i.ask = icmp eq i64 %i.arg, %indvars.iv998.i
  br i1 %i.ask, label %._crit_edge819.i, label %.lr.ph818.i

.lr.ph818.i:                                      ; preds = %.lr.ph818.i.prol.loopexit, %.lr.ph818.i
  %indvars.iv992.i = phi i64 [ %indvars.iv.next993.i.1, %.lr.ph818.i ], [ %indvars.iv992.i.unr, %.lr.ph818.i.prol.loopexit ] ; 4 uses
  %i.asl = phi i32 [ %spec.select628.i.1, %.lr.ph818.i ], [ %.0503816.i.unr, %.lr.ph818.i.prol.loopexit ] ; 2 uses
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv992.i
  %11 = load ptr, ptr %10, align 8, !tbaa !1510
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !1061
  %14 = sext i32 %i.asl to i64
  %i.asm = getelementptr inbounds [8 x i8], ptr %i.c, i64 %14
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !1510
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 4
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !1061
  %i.asq = icmp ult i32 %13, %i.asp
  %i.asr = trunc nuw nsw i64 %indvars.iv992.i to i32
  %spec.select628.i = select i1 %i.asq, i32 %i.asr, i32 %i.asl ; 2 uses
  %indvars.iv.next993.i = add nuw nsw i64 %indvars.iv992.i, 1 ; 2 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next993.i
  %16 = load ptr, ptr %15, align 8, !tbaa !1510
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !1061
  %19 = sext i32 %spec.select628.i to i64
  %i.ass = getelementptr inbounds [8 x i8], ptr %i.c, i64 %19
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !1510
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 4
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !1061
  %i.asw = icmp ult i32 %18, %i.asv
  %i.asx = trunc nuw nsw i64 %indvars.iv.next993.i to i32
  %spec.select628.i.1 = select i1 %i.asw, i32 %i.asx, i32 %spec.select628.i ; 2 uses
  %indvars.iv.next993.i.1 = add nuw nsw i64 %indvars.iv992.i, 2 ; 2 uses
  %exitcond997.not.i.1 = icmp eq i64 %indvars.iv.next993.i.1, %wide.trip.count982.i
  br i1 %exitcond997.not.i.1, label %._crit_edge819.i, label %.lr.ph818.i, !llvm.loop !4300

._crit_edge819.i:                                 ; preds = %.lr.ph818.i, %.lr.ph818.i.prol.loopexit
  %spec.select628.i.lcssa = phi i32 [ %spec.select628.i.lcssa.unr, %.lr.ph818.i.prol.loopexit ], [ %spec.select628.i.1, %.lr.ph818.i ] ; 2 uses
  %indvars.iv.next999.i = add nuw nsw i64 %indvars.iv998.i, 1 ; 2 uses
  %i.asy = zext i32 %spec.select628.i.lcssa to i64
  %.not601.i = icmp eq i64 %indvars.iv998.i, %i.asy
  br i1 %.not601.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %._crit_edge819.i
  %20 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv998.i
  %21 = load ptr, ptr %20, align 8, !tbaa !1510   ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %23 = load i32, ptr %22, align 4, !tbaa !1061   ; 2 uses
  %i.asz = sext i32 %spec.select628.i.lcssa to i64
  %i.ata = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.asz
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !1510 ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 4 ; 2 uses
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !1061 ; 2 uses
  %i.ate = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !566
  %i.atf = load i32, ptr %i.zo, align 4, !tbaa !653
  %i.atg = udiv i32 %i.ate, %i.atf
  %i.ath = add i32 %i.atg, 1
  %i.ati = getelementptr inbounds nuw i8, ptr %21, i64 112 ; 2 uses
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !1006 ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 52 ; 2 uses
  %i.atl = load i16, ptr %i.atk, align 4, !tbaa !891
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atb, i64 112 ; 2 uses
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !1006
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 52
  %i.atp = load i16, ptr %i.ato, align 4, !tbaa !891 ; 2 uses
  store i16 %i.atp, ptr %i.atk, align 4, !tbaa !891
  call fastcc void @sqlite3PcacheMove(ptr noundef %i.atj, i32 noundef %i.ath), !inline_history !4278
  %i.atq = load ptr, ptr %i.atm, align 8, !tbaa !1006 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 52
  store i16 %i.atl, ptr %i.atr, align 4, !tbaa !891
  call fastcc void @sqlite3PcacheMove(ptr noundef %i.atq, i32 noundef %23), !inline_history !4278
  %i.ats = load ptr, ptr %i.ati, align 8, !tbaa !1006 ; 2 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 52
  store i16 %i.atp, ptr %i.att, align 4, !tbaa !891
  call fastcc void @sqlite3PcacheMove(ptr noundef %i.ats, i32 noundef %i.atd), !inline_history !4278
  store i32 %i.atd, ptr %22, align 4, !tbaa !1061
  store i32 %23, ptr %i.atc, align 4, !tbaa !1061
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %._crit_edge819.i
  %indvars.iv.next991.i = add nuw nsw i64 %indvars.iv990.i, 1
  %exitcond1003.not.i = icmp eq i64 %indvars.iv.next999.i, %i.akx
  br i1 %exitcond1003.not.i, label %._crit_edge823.i, label %.lr.ph818.preheader.i, !llvm.loop !4301

._crit_edge823.i:                                 ; preds = %bb.fc, %.._crit_edge823.i_crit_edge, %.preheader721.i
  %.pre-phi = phi i32 [ %.pre240, %.._crit_edge823.i_crit_edge ], [ %i.amx, %.preheader721.i ], [ %i.amx, %bb.fc ]
  %i.atu = phi i1 [ false, %.._crit_edge823.i_crit_edge ], [ false, %.preheader721.i ], [ true, %bb.fc ]
  %i.atv = phi i32 [ -1, %.._crit_edge823.i_crit_edge ], [ 0, %.preheader721.i ], [ %i.aku, %bb.fc ] ; 2 uses
  %.0496.lcssa11331135.i = phi i32 [ 0, %.._crit_edge823.i_crit_edge ], [ 1, %.preheader721.i ], [ %.8545.ph.i, %bb.fc ] ; 16 uses
  %i.atw = sext i32 %i.atv to i64
  %i.atx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.atw
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !1510 ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 4
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !1061
  %i.aub = call i32 @llvm.bswap.i32(i32 %i.aua)
  store i32 %i.aub, ptr %.0528.i, align 1, !tbaa !729
  %i.auc = icmp ne i32 %.pre-phi, 0
  %.not579.i = icmp eq i32 %i.ug, %.0496.lcssa11331135.i
  %or.cond629.i = select i1 %i.auc, i1 true, i1 %.not579.i
  br i1 %or.cond629.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %._crit_edge823.i
  %i.aud = icmp sgt i32 %.0496.lcssa11331135.i, %i.ug
  %.0494.in.v.i = select i1 %i.aud, ptr %i.c, ptr %i.b
  %.0494.in.i = getelementptr inbounds nuw [8 x i8], ptr %.0494.in.v.i, i64 %i.vr
  %.0494.i = load ptr, ptr %.0494.in.i, align 8, !tbaa !1510
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aty, i64 80
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !985
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 8
  %i.auh = getelementptr inbounds nuw i8, ptr %.0494.i, i64 80
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !985
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 8
  %i.auk = load i32, ptr %i.auj, align 1
  store i32 %i.auk, ptr %i.aug, align 1
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %._crit_edge823.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.tr, i64 33 ; 2 uses
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !1051
  %.not580.i = icmp ne i8 %i.aum, 0
  %i.aun = icmp sgt i32 %i.agk, 0
  %or.cond1182.i = select i1 %.not580.i, i1 %i.aun, i1 false
  br i1 %or.cond1182.i, label %.lr.ph841.i, label %.thread702.i

.lr.ph841.i:                                      ; preds = %bb.fe
  %i.auo = load ptr, ptr %i.c, align 16, !tbaa !1510 ; 4 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 12
  %i.auq = load i8, ptr %i.aup, align 4, !tbaa !1496
  %i.aur = zext i8 %i.auq to i32
  %i.aus = getelementptr inbounds nuw i8, ptr %i.auo, i64 24
  %i.aut = load i16, ptr %i.aus, align 8, !tbaa !1497
  %i.auu = zext i16 %i.aut to i32
  %i.auv = add nuw nsw i32 %i.auu, %i.aur
  %i.auw = zext i1 %.not1048.i to i32
  %.not585.i = icmp eq i8 %i.zz, 0
  %i.aux = zext nneg i32 %.0496.lcssa11331135.i to i64
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fu, %.lr.ph841.i
  %i.auy = phi i32 [ %i.agk, %.lr.ph841.i ], [ %i.axv, %bb.fu ] ; 2 uses
  %indvars.iv1008.i = phi i64 [ 0, %.lr.ph841.i ], [ %indvars.iv.next1009.i, %bb.fu ] ; 7 uses
  %.0484839.i = phi i32 [ 0, %.lr.ph841.i ], [ %.1.lcssa.i, %bb.fu ] ; 2 uses
  %.0485838.i = phi i32 [ 0, %.lr.ph841.i ], [ %.2.ph.i, %bb.fu ] ; 3 uses
  %.0487837.i = phi i32 [ %i.auv, %.lr.ph841.i ], [ %.1488.lcssa.i, %bb.fu ] ; 3 uses
  %.0489836.i = phi ptr [ %i.auo, %.lr.ph841.i ], [ %.2491.ph.i, %bb.fu ]
  %.0492835.i = phi ptr [ %i.auo, %.lr.ph841.i ], [ %.1493.lcssa.i, %bb.fu ]
  %i.auz = load ptr, ptr %i.ap, align 8, !tbaa !1855
  %i.ava = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %indvars.iv1008.i
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !737 ; 7 uses
  %i.avc = zext i32 %.0487837.i to i64
  %i.avd = icmp eq i64 %indvars.iv1008.i, %i.avc
  br i1 %i.avd, label %.lr.ph828.preheader.i, label %._crit_edge829.i

.lr.ph828.preheader.i:                            ; preds = %bb.ff
  %i.ave = sext i32 %.0484839.i to i64
  br label %.lr.ph828.i

.lr.ph828.i:                                      ; preds = %.lr.ph828.i, %.lr.ph828.preheader.i
  %indvars.iv1004.i = phi i64 [ %i.ave, %.lr.ph828.preheader.i ], [ %indvars.iv.next1005.i, %.lr.ph828.i ]
  %.1488825.i = phi i32 [ %.0487837.i, %.lr.ph828.preheader.i ], [ %i.avp, %.lr.ph828.i ]
  %indvars.iv.next1005.i = add nsw i64 %indvars.iv1004.i, 1 ; 4 uses
  %i.avf = icmp slt i64 %indvars.iv.next1005.i, %i.aux
  %.in.v.i = select i1 %i.avf, ptr %i.c, ptr %i.b
  %.in.i = getelementptr inbounds [8 x i8], ptr %.in.v.i, i64 %indvars.iv.next1005.i
  %i.avg = load ptr, ptr %.in.i, align 8, !tbaa !1510 ; 3 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 24
  %i.avi = load i16, ptr %i.avh, align 8, !tbaa !1497
  %i.avj = zext i16 %i.avi to i32
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avg, i64 12
  %i.avl = load i8, ptr %i.avk, align 4, !tbaa !1496
  %i.avm = zext i8 %i.avl to i32
  %i.avn = add i32 %.1488825.i, %i.auw
  %i.avo = add i32 %i.avn, %i.avj
  %i.avp = add i32 %i.avo, %i.avm                 ; 3 uses
  %i.avq = zext i32 %i.avp to i64
  %i.avr = icmp eq i64 %indvars.iv1008.i, %i.avq
  br i1 %i.avr, label %.lr.ph828.i, label %._crit_edge829.loopexit.i, !llvm.loop !4302

._crit_edge829.loopexit.i:                        ; preds = %.lr.ph828.i
  %i.avs = trunc nsw i64 %indvars.iv.next1005.i to i32
  br label %._crit_edge829.i

._crit_edge829.i:                                 ; preds = %._crit_edge829.loopexit.i, %bb.ff
  %.1493.lcssa.i = phi ptr [ %.0492835.i, %bb.ff ], [ %i.avg, %._crit_edge829.loopexit.i ] ; 4 uses
  %.1488.lcssa.i = phi i32 [ %.0487837.i, %bb.ff ], [ %i.avp, %._crit_edge829.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.0484839.i, %bb.ff ], [ %i.avs, %._crit_edge829.loopexit.i ] ; 3 uses
  %i.avt = sext i32 %.0485838.i to i64
  %i.avu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.avt
  %i.avv = load i32, ptr %i.avu, align 4, !tbaa !566
  %i.avw = zext i32 %i.avv to i64
  %i.avx = icmp eq i64 %indvars.iv1008.i, %i.avw
  br i1 %i.avx, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %._crit_edge829.i
  %i.avy = add nsw i32 %.0485838.i, 1             ; 3 uses
  %i.avz = sext i32 %i.avy to i64
  %i.awa = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.avz
  %i.awb = load ptr, ptr %i.awa, align 8, !tbaa !1510 ; 2 uses
  br i1 %i.aag, label %bb.fh, label %bb.fu

bb.fh:                                            ; preds = %bb.fg, %._crit_edge829.i
  %.1490.i = phi ptr [ %i.awb, %bb.fg ], [ %.0489836.i, %._crit_edge829.i ] ; 9 uses
  %.1486.i = phi i32 [ %i.avy, %bb.fg ], [ %.0485838.i, %._crit_edge829.i ] ; 2 uses
  %.not582.i = icmp slt i32 %.1.lcssa.i, %.0496.lcssa11331135.i
  br i1 %.not582.i, label %bb.fi, label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.awc = getelementptr inbounds nuw i8, ptr %.1490.i, i64 4
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !1061
  %i.awe = sext i32 %.1.lcssa.i to i64
  %i.awf = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.awe
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !566
  %.not583.i = icmp eq i32 %i.awd, %i.awg
  br i1 %.not583.i, label %bb.fj, label %bb.fl

bb.fj:                                            ; preds = %bb.fi
  %i.awh = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 80
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !985
  %.not584.i = icmp ult ptr %i.avb, %i.awi
  br i1 %.not584.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.awj = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 88
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !1119
  %i.awl = icmp ult ptr %i.avb, %i.awk
  br i1 %i.awl, label %bb.fu, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fh
  br i1 %.not585.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.awm = load i32, ptr %i.avb, align 1
  %i.awn = call i32 @llvm.bswap.i32(i32 %i.awm)
  %i.awo = getelementptr inbounds nuw i8, ptr %.1490.i, i64 4
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !1061
  call fastcc void @ptrmapPut(ptr noundef %i.tr, i32 noundef %i.awn, i8 noundef zeroext 5, i32 noundef %i.awp, ptr noundef %i.a), !inline_history !4278
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.awq = load ptr, ptr %i.aq, align 8, !tbaa !1856
  %i.awr = getelementptr inbounds nuw [2 x i8], ptr %i.awq, i64 %indvars.iv1008.i
  %i.aws = load i16, ptr %i.awr, align 2, !tbaa !779 ; 2 uses
  %.not.i653.i = icmp eq i16 %i.aws, 0
  br i1 %.not.i653.i, label %bb.fo, label %cachedCellSize.exit655.i

bb.fo:                                            ; preds = %bb.fn
  %i.awt = trunc nuw nsw i64 %indvars.iv1008.i to i32
  %i.awu = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.awt), !inline_history !4278
  br label %cachedCellSize.exit655.i

cachedCellSize.exit655.i:                         ; preds = %bb.fo, %bb.fn
  %.0.i654.i = phi i16 [ %i.awu, %bb.fo ], [ %i.aws, %bb.fn ]
  %i.awv = getelementptr inbounds nuw i8, ptr %.1490.i, i64 16
  %i.aww = load i16, ptr %i.awv, align 8, !tbaa !1587
  %i.awx = icmp ugt i16 %.0.i654.i, %i.aww
  %.pre1059.i = load i32, ptr %i.a, align 4, !tbaa !566 ; 2 uses
  br i1 %i.awx, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %cachedCellSize.exit655.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #57
  %.not.i656.i = icmp eq i32 %.pre1059.i, 0
  br i1 %.not.i656.i, label %bb.fq, label %ptrmapPutOvflPtr.exit.i92

bb.fq:                                            ; preds = %bb.fp
  %i.awy = getelementptr inbounds nuw i8, ptr %.1490.i, i64 128
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !1492
  call void %i.awz(ptr noundef nonnull %.1490.i, ptr noundef %i.avb, ptr noundef nonnull %1) #57, !inline_history !4303
  %i.axa = load i16, ptr %i.at, align 4, !tbaa !1592 ; 2 uses
  %i.axb = zext i16 %i.axa to i32
  %i.axc = load i32, ptr %i.au, align 8, !tbaa !1589
  %i.axd = icmp ugt i32 %i.axc, %i.axb
  br i1 %i.axd, label %bb.fr, label %ptrmapPutOvflPtr.exit.i92

bb.fr:                                            ; preds = %bb.fq
  %i.axe = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 88
  %i.axf = load ptr, ptr %i.axe, align 8, !tbaa !1119 ; 2 uses
  %i.axg = icmp ult ptr %i.avb, %i.axf
end_hunk_3
begin_hunk_4_@fts3FilterMethod:bb.a
bb.x:                                             ; preds = %bb.v
  %i.bj = and i32 %i.bb, 18
  %.not9.i.i.i121 = icmp eq i32 %i.bj, 0
  br i1 %.not9.i.i.i121, label %fts3DocidRange.exit123, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %.085, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !758
  %.not10.i.i.i122 = icmp eq ptr %i.bl, null
  br i1 %.not10.i.i.i122, label %fts3DocidRange.exit123, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = tail call fastcc i64 @memIntValue(ptr noundef nonnull readonly %.085), !inline_history !5901
  br label %fts3DocidRange.exit123

fts3DocidRange.exit123:                           ; preds = %fts3DocidRange.exit, %bb.s, %bb.u, %bb.w, %bb.x, %bb.y, %bb.z
  %.1.i116 = phi i64 [ 9223372036854775807, %fts3DocidRange.exit ], [ 9223372036854775807, %bb.s ], [ 0, %bb.x ], [ 0, %bb.y ], [ %i.bm, %bb.z ], [ %.0.i.i.i.i120, %bb.w ], [ %i.bd, %bb.u ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 %.1.i116, ptr %i.bn, align 8, !tbaa !2707
  %.not105 = icmp eq ptr %2, null
  br i1 %.not105, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %fts3DocidRange.exit123
  %i.bo = load i8, ptr %2, align 1, !tbaa !729
  %i.bp = icmp eq i8 %i.bo, 68
  %i.bq = zext i1 %i.bp to i8
  br label %bb.ac

bb.ab:                                            ; preds = %fts3DocidRange.exit123
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 463
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !2666
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink = phi i8 [ %i.bs, %bb.ab ], [ %i.bq, %bb.aa ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  store i8 %.sink, ptr %i.bt, align 4, !tbaa !2708
  %i.bu = trunc i32 %1 to i16                     ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.bu, ptr %i.bv, align 8, !tbaa !2709
  %or.cond = icmp samesign ugt i32 %i.q, 1
  br i1 %or.cond, label %bb.ad, label %bb.en

bb.ad:                                            ; preds = %bb.ac
  %i.bw = add nsw i32 %i.q, -2
  %.not.i.i = icmp eq ptr %.088, null
  br i1 %.not.i.i, label %sqlite3_value_text.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bx = getelementptr inbounds nuw i8, ptr %.088, i64 20
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !682 ; 2 uses
  %i.bz = and i16 %i.by, 514
  %i.ca = icmp eq i16 %i.bz, 514
  br i1 %i.ca, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %.088, i64 22
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !783
  %i.cd = icmp eq i8 %i.cc, 1
  br i1 %i.cd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %.088, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !758
  br label %sqlite3_value_text.exit

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.cg = and i16 %i.by, 1
  %.not9.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not9.i.i, label %bb.ai, label %sqlite3_value_text.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ch = tail call fastcc ptr @valueToText(ptr noundef nonnull %.088, i8 noundef zeroext 1), !inline_history !943
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.ag, %bb.ai
  %.0.i.i = phi ptr [ %i.cf, %bb.ag ], [ %i.ch, %bb.ai ] ; 2 uses
  %i.ci = icmp eq ptr %.0.i.i, null
  br i1 %i.ci, label %sqlite3_value_text.exit.thread, label %bb.aj

sqlite3_value_text.exit.thread:                   ; preds = %bb.ah, %bb.ad, %sqlite3_value_text.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.088, i64 20
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !682
  %i.cl = and i16 %i.ck, 63
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, -6148914691236517206
  %.not107.not = icmp eq i64 %i.co, 0
  br i1 %.not107.not, label %sqlite3Fts3ExprParse.exit.thread144, label %bb.aj

bb.aj:                                            ; preds = %sqlite3_value_text.exit.thread, %sqlite3_value_text.exit
  %i.cp = phi i1 [ true, %sqlite3_value_text.exit.thread ], [ false, %sqlite3_value_text.exit ]
  %.0.i.i139 = phi ptr [ null, %sqlite3_value_text.exit.thread ], [ %.0.i.i, %sqlite3_value_text.exit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.cq, align 8, !tbaa !2710
  %.not108 = icmp eq ptr %.087, null
  br i1 %.not108, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cr = getelementptr inbounds nuw i8, ptr %.087, i64 20
  %i.cs = load i16, ptr %i.cr, align 4, !tbaa !682
  %i.ct = zext i16 %i.cs to i32                   ; 3 uses
  %i.cu = and i32 %i.ct, 36
  %.not.i.i124 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i124, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cv = load i64, ptr %.087, align 8, !tbaa !729
  br label %sqlite3_value_int.exit

bb.am:                                            ; preds = %bb.ak
  %i.cw = and i32 %i.ct, 8
  %.not8.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not8.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cx = load double, ptr %.087, align 8, !tbaa !729 ; 3 uses
  %i.cy = fcmp olt double %i.cx, f0xC3DFFFFFFFFFFFFF
  %i.cz = fcmp ogt double %i.cx, f0x43DFFFFFFFFFFFFF
  %i.da = fptosi double %i.cx to i64
  %spec.select.i.i.i = select i1 %i.cz, i64 9223372036854775807, i64 %i.da
  %.0.i.i.i = select i1 %i.cy, i64 -9223372036854775808, i64 %spec.select.i.i.i
  br label %sqlite3_value_int.exit

bb.ao:                                            ; preds = %bb.am
  %i.db = and i32 %i.ct, 18
  %.not9.i.i126 = icmp eq i32 %i.db, 0
  br i1 %.not9.i.i126, label %sqlite3_value_int.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dc = getelementptr inbounds nuw i8, ptr %.087, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !758
  %.not10.i.i = icmp eq ptr %i.dd, null
  br i1 %.not10.i.i, label %sqlite3_value_int.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.de = tail call fastcc i64 @memIntValue(ptr noundef nonnull readonly %.087)
  br label %sqlite3_value_int.exit

sqlite3_value_int.exit:                           ; preds = %bb.al, %bb.an, %bb.ao, %bb.ap, %bb.aq
  %.0.i.i125 = phi i64 [ %i.cv, %bb.al ], [ %.0.i.i.i, %bb.an ], [ %i.de, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.ao ]
  %i.df = trunc i64 %.0.i.i125 to i32             ; 2 uses
  store i32 %i.df, ptr %i.cq, align 8, !tbaa !2710
  br label %bb.ar

bb.ar:                                            ; preds = %sqlite3_value_int.exit, %bb.aj
  %i.dg = phi i32 [ %i.df, %sqlite3_value_int.exit ], [ 0, %bb.aj ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2698
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !2711
  %i.dl = getelementptr inbounds nuw i8, ptr %i.n, i64 460
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !2712
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !2623
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #57
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, i8 0, i64 48, i1 false)
  store ptr %i.di, ptr %5, align 8, !tbaa !2714
  store i32 %i.dg, ptr %i.ds, align 8, !tbaa !2715
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.dk, ptr %i.dt, align 8, !tbaa !5934
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  store i32 %i.dp, ptr %i.du, align 4, !tbaa !5935
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store i32 %i.bw, ptr %i.dv, align 8, !tbaa !5936
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %i.dn, ptr %i.dw, align 8, !tbaa !2716
  br i1 %i.cp, label %.thread.i, label %bb.as

.thread.i:                                        ; preds = %bb.ar
  store ptr null, ptr %i.dq, align 8, !tbaa !2717
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #57
  br label %bb.ed

bb.as:                                            ; preds = %bb.ar
  %i.dx = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i139) #58, !inline_history !5902
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %getNextNode.exit.thread.i.i.i, %bb.as
  %.082328.i.i.i = phi i32 [ 1, %bb.as ], [ %.486.i.i.i, %getNextNode.exit.thread.i.i.i ] ; 6 uses
  %.093324.i.i.i = phi ptr [ %.0.i.i139, %bb.as ], [ %i.rg, %getNextNode.exit.thread.i.i.i ] ; 5 uses
  %.095320.i.i.i = phi i32 [ %i.dy, %bb.as ], [ %i.re, %getNextNode.exit.thread.i.i.i ] ; 6 uses
  %.097319.i.i.i = phi ptr [ null, %bb.as ], [ %.4101.i.i.i, %getNextNode.exit.thread.i.i.i ] ; 7 uses
  %.0104316.i.i.i = phi ptr [ null, %bb.as ], [ %.5109.i.i.i, %getNextNode.exit.thread.i.i.i ] ; 6 uses
  %.0152315.i.i.i = phi ptr [ null, %bb.as ], [ %.7159.i.i.i, %getNextNode.exit.thread.i.i.i ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #57
  store ptr null, ptr %i.l, align 8, !tbaa !2717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #57
  store i32 0, ptr %i.m, align 4, !tbaa !566
  store i32 0, ptr %i.dz, align 4, !tbaa !2718
  %i.ea = icmp sgt i32 %.095320.i.i.i, 0
  br i1 %i.ea, label %.lr.ph.i.i.i.i, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.at, %fts3isspace.exit.thread.i.i.i.i
  %.0104190.i.i.i.i = phi i32 [ %i.ec, %fts3isspace.exit.thread.i.i.i.i ], [ %.095320.i.i.i, %bb.at ] ; 7 uses
  %.0105189.i.i.i.i = phi ptr [ %i.ed, %fts3isspace.exit.thread.i.i.i.i ], [ %.093324.i.i.i, %bb.at ] ; 13 uses
  %i.eb = load i8, ptr %.0105189.i.i.i.i, align 1, !tbaa !729 ; 2 uses
  switch i8 %i.eb, label %bb.au [
    i8 32, label %fts3isspace.exit.thread.i.i.i.i
    i8 13, label %fts3isspace.exit.thread.i.i.i.i
    i8 11, label %fts3isspace.exit.thread.i.i.i.i
    i8 10, label %fts3isspace.exit.thread.i.i.i.i
    i8 9, label %fts3isspace.exit.thread.i.i.i.i
    i8 12, label %fts3isspace.exit.thread.i.i.i.i
  ]

fts3isspace.exit.thread.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ec = add nsw i32 %.0104190.i.i.i.i, -1
  %i.ed = getelementptr inbounds nuw i8, ptr %.0105189.i.i.i.i, i64 1
  %i.ee = icmp sgt i32 %.0104190.i.i.i.i, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i, label %getNextNode.exit.thread.thread.i.i.i, !llvm.loop !5903

.critedge.i.i.i.i:                                ; preds = %bb.at
  %i.ef = icmp eq i32 %.095320.i.i.i, 0
  br i1 %i.ef, label %getNextNode.exit.thread.thread.i.i.i, label %.thread304.i.i.i.i

bb.au:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.0105189.i.i.i.i, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.0105189.i.i.i.i, i64 5 ; 2 uses
  %i.ei = ptrtoint ptr %.0105189.i.i.i.i to i64
  %i.ej = ptrtoint ptr %.093324.i.i.i to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 5 uses
  %i.el = trunc i64 %i.ek to i32                  ; 5 uses
  %.not123.i.i.i.i = icmp samesign ult i32 %.0104190.i.i.i.i, 2
  br i1 %.not123.i.i.i.i, label %.thread304.i.thread.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.em = load i16, ptr %.0105189.i.i.i.i, align 1
  %i.en = icmp ne i16 %i.em, 21071
  %i.eo = zext i1 %i.en to i32
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.eq = getelementptr inbounds nuw i8, ptr %.0105189.i.i.i.i, i64 2
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !729 ; 4 uses
  %i.es = icmp ult i8 %i.er, 42
  %switch.maskindex = zext nneg i8 %i.er to i64
  %switch.shifted = lshr i64 3320009735681, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond426 = select i1 %i.es, i1 %switch.lobit, i1 false
  br i1 %or.cond426, label %switch.lookup, label %switch.early.test131.i.i.i.i

switch.lookup:                                    ; preds = %bb.aw
  %switch.cast = zext nneg i8 %i.er to i42
  %switch.downshift = lshr i42 -1082331758591, %switch.cast
  %switch.masked = trunc i42 %switch.downshift to i1 ; 2 uses
  %i.et = call i32 @sqlite3_initialize(), !inline_history !5904
  %.not.i.i.i.i.i.i = icmp eq i32 %i.et, 0
  br i1 %.not.i.i.i.i.i.i, label %sqlite3_malloc64.exit.i.i.i.i.i, label %bb.ax

sqlite3_malloc64.exit.i.i.i.i.i:                  ; preds = %switch.lookup
  %i.eu = call fastcc ptr @sqlite3Malloc(i64 noundef 64), !inline_history !5904 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %sqlite3_malloc64.exit.i.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.ev, i8 0, i64 56, i1 false)
  store i32 4, ptr %i.eu, align 8, !tbaa !2721
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 10, ptr %i.ew, align 4, !tbaa !2722
  store ptr %i.eu, ptr %i.l, align 8, !tbaa !2717
  %i.ex = add i32 %i.el, 2
  store i32 %i.ex, ptr %i.m, align 4, !tbaa !566
  br i1 %switch.masked, label %switch.early.test131.i.i.i.i, label %getNextNode.exit.i.i.i

bb.ax:                                            ; preds = %sqlite3_malloc64.exit.i.i.i.i.i, %switch.lookup
  br i1 %switch.masked, label %switch.early.test131.i.i.i.i, label %getNextNode.exit.thread.thread.i.i.i

switch.early.test131.i.i.i.i:                     ; preds = %bb.aw, %bb.ax, %.split.i.i.i.i
  %i.ey = phi ptr [ %i.eu, %.split.i.i.i.i ], [ null, %bb.ax ], [ null, %bb.aw ] ; 5 uses
  %.1116149.i.i.i.i = phi i32 [ 0, %.split.i.i.i.i ], [ 7, %bb.ax ], [ undef, %bb.aw ] ; 5 uses
  switch i8 %i.er, label %bb.ay [
    i8 41, label %getNextNode.exit.i.i.i
    i8 40, label %getNextNode.exit.i.i.i
    i8 34, label %getNextNode.exit.i.i.i
    i8 0, label %getNextNode.exit.i.i.i
  ]

bb.ay:                                            ; preds = %switch.early.test131.i.i.i.i, %bb.av
  %i.ez = phi ptr [ null, %bb.av ], [ %i.ey, %switch.early.test131.i.i.i.i ] ; 2 uses
  %.3.i.i.i.i = phi i32 [ undef, %bb.av ], [ %.1116149.i.i.i.i, %switch.early.test131.i.i.i.i ]
  %.not123.3.i.i.i.i = icmp samesign ult i32 %.0104190.i.i.i.i, 4
  br i1 %.not123.3.i.i.i.i, label %.thread304.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fa = load i32, ptr %.0105189.i.i.i.i, align 1
  %i.fb = icmp ne i32 %i.fa, 1380009294
  %i.fc = zext i1 %i.fb to i32
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ba, label %.thread304.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.fe = load i8, ptr %i.eg, align 1, !tbaa !729
  %i.ff = icmp eq i8 %i.fe, 47
  br i1 %i.ff, label %bb.bb, label %switch.hole_check

bb.bb:                                            ; preds = %bb.ba
  %i.fg = load i8, ptr %i.eh, align 1, !tbaa !729 ; 2 uses
  %i.fh = add i8 %i.fg, -48
  %or.cond.3.i.i.i.i = icmp ult i8 %i.fh, 10
  br i1 %or.cond.3.i.i.i.i, label %.lr.ph.i.3.i.i.i.i, label %switch.hole_check

.lr.ph.i.3.i.i.i.i:                               ; preds = %bb.bb, %bb.bc
  %indvars.iv.i.3.i.i.i.i = phi i64 [ %indvars.iv.next.i.3.i.i.i.i, %bb.bc ], [ 0, %bb.bb ]
  %i.fi = phi i8 [ %i.fo, %bb.bc ], [ %i.fg, %bb.bb ]
  %.01219.i.3.i.i.i.i = phi i64 [ %i.fl, %bb.bc ], [ 0, %bb.bb ]
  %i.fj = mul i64 %.01219.i.3.i.i.i.i, 10
  %narrow.i.3.i.i.i.i = add nsw i8 %i.fi, -48
  %i.fk = zext nneg i8 %narrow.i.3.i.i.i.i to i64
  %i.fl = add nuw nsw i64 %i.fj, %i.fk            ; 4 uses
  %i.fm = icmp ugt i64 %i.fl, 2147483647
  br i1 %i.fm, label %switch.hole_check, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.3.i.i.i.i
  %indvars.iv.next.i.3.i.i.i.i = add nuw nsw i64 %indvars.iv.i.3.i.i.i.i, 1 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv.next.i.3.i.i.i.i
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !729 ; 2 uses
  %i.fp = add i8 %i.fo, -48
  %or.cond.i.3.i.i.i.i = icmp ult i8 %i.fp, 10
  br i1 %or.cond.i.3.i.i.i.i, label %.lr.ph.i.3.i.i.i.i, label %sqlite3Fts3ReadInt.exit.3.i.i.i.i, !llvm.loop !495

sqlite3Fts3ReadInt.exit.3.i.i.i.i:                ; preds = %bb.bc
  %i.fq = trunc nuw i64 %indvars.iv.next.i.3.i.i.i.i to i32
  %i.fr = trunc nuw nsw i64 %i.fl to i32
  %i.fs = add i32 %i.fq, 5
  %i.ft = icmp samesign ugt i64 %i.fl, 999999999
  %spec.select.3.i.i.i.i = select i1 %i.ft, i32 1000000000, i32 %i.fr
  br label %switch.hole_check

switch.hole_check:                                ; preds = %.lr.ph.i.3.i.i.i.i, %sqlite3Fts3ReadInt.exit.3.i.i.i.i, %bb.bb, %bb.ba
  %.0141.3.i.i.i.i = phi i32 [ 10, %bb.ba ], [ %spec.select.3.i.i.i.i, %sqlite3Fts3ReadInt.exit.3.i.i.i.i ], [ 10, %bb.bb ], [ 10, %.lr.ph.i.3.i.i.i.i ]
  %.0.3.i.i.i.i = phi i32 [ 4, %bb.ba ], [ %i.fs, %sqlite3Fts3ReadInt.exit.3.i.i.i.i ], [ 4, %bb.bb ], [ 4, %.lr.ph.i.3.i.i.i.i ] ; 2 uses
  %6 = sext i32 %.0.3.i.i.i.i to i64
  %7 = getelementptr inbounds i8, ptr %.0105189.i.i.i.i, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !729       ; 4 uses
  %9 = icmp ult i8 %8, 42
  %switch.maskindex429 = zext nneg i8 %8 to i64
  %switch.shifted430 = lshr i64 3320009735681, %switch.maskindex429
  %switch.lobit431 = trunc i64 %switch.shifted430 to i1
  %or.cond435 = select i1 %9, i1 %switch.lobit431, i1 false
  br i1 %or.cond435, label %switch.lookup428, label %switch.early.test131.3.i.i.i.i

switch.lookup428:                                 ; preds = %switch.hole_check
  %switch.cast432 = zext nneg i8 %8 to i42
  %switch.downshift434 = lshr i42 -1082331758591, %switch.cast432
  %switch.masked435 = trunc i42 %switch.downshift434 to i1 ; 2 uses
  %i.fu = call i32 @sqlite3_initialize(), !inline_history !5904
  %.not.i.i.3.i.i.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not.i.i.3.i.i.i.i, label %sqlite3_malloc64.exit.i.3.i.i.i.i, label %bb.bd

sqlite3_malloc64.exit.i.3.i.i.i.i:                ; preds = %switch.lookup428
  %i.fv = call fastcc ptr @sqlite3Malloc(i64 noundef 64), !inline_history !5904 ; 7 uses
  %.not.i.3.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.3.i.i.i.i, label %bb.bd, label %.split.3.i.i.i.i

.split.3.i.i.i.i:                                 ; preds = %sqlite3_malloc64.exit.i.3.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.fw, i8 0, i64 56, i1 false)
  store i32 1, ptr %i.fv, align 8, !tbaa !2721
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %.0141.3.i.i.i.i, ptr %i.fx, align 4, !tbaa !2722
  store ptr %i.fv, ptr %i.l, align 8, !tbaa !2717
  %i.fy = add i32 %.0.3.i.i.i.i, %i.el
  store i32 %i.fy, ptr %i.m, align 4, !tbaa !566
  br i1 %switch.masked435, label %switch.early.test131.3.i.i.i.i, label %getNextNode.exit.i.i.i

bb.bd:                                            ; preds = %sqlite3_malloc64.exit.i.3.i.i.i.i, %switch.lookup428
  br i1 %switch.masked435, label %switch.early.test131.3.i.i.i.i, label %getNextNode.exit.thread.thread.i.i.i

switch.early.test131.3.i.i.i.i:                   ; preds = %switch.hole_check, %bb.bd, %.split.3.i.i.i.i
  %10 = phi ptr [ %i.fv, %.split.3.i.i.i.i ], [ %i.ez, %bb.bd ], [ %i.ez, %switch.hole_check ] ; 4 uses
  %.1116149.3.i.i.i.i = phi i32 [ 0, %.split.3.i.i.i.i ], [ 7, %bb.bd ], [ %.3.i.i.i.i, %switch.hole_check ] ; 4 uses
  switch i8 %8, label %.thread304.i.i.i.i [
    i8 41, label %getNextNode.exit.i.i.i
    i8 40, label %getNextNode.exit.i.i.i
    i8 34, label %getNextNode.exit.i.i.i
    i8 0, label %getNextNode.exit.i.i.i
  ]

.thread304.i.i.i.i:                               ; preds = %switch.early.test131.3.i.i.i.i, %bb.az, %bb.ay, %.critedge.i.i.i.i
  %.0104.lcssa295299310.i.i.i.i = phi i32 [ %.0104190.i.i.i.i, %switch.early.test131.3.i.i.i.i ], [ %.0104190.i.i.i.i, %bb.az ], [ %.0104190.i.i.i.i, %bb.ay ], [ %.095320.i.i.i, %.critedge.i.i.i.i ] ; 4 uses
  %.0105.lcssa294300309.i.i.i.i = phi ptr [ %.0105189.i.i.i.i, %switch.early.test131.3.i.i.i.i ], [ %.0105189.i.i.i.i, %bb.az ], [ %.0105189.i.i.i.i, %bb.ay ], [ %.093324.i.i.i, %.critedge.i.i.i.i ] ; 4 uses
  %11 = phi i64 [ %i.ek, %switch.early.test131.3.i.i.i.i ], [ %i.ek, %bb.az ], [ %i.ek, %bb.ay ], [ 0, %.critedge.i.i.i.i ]
  %12 = phi i32 [ %i.el, %switch.early.test131.3.i.i.i.i ], [ %i.el, %bb.az ], [ %i.el, %bb.ay ], [ 0, %.critedge.i.i.i.i ]
  %i.fz = load i8, ptr %.0105.lcssa294300309.i.i.i.i, align 1, !tbaa !729
  %i.ga = icmp eq i8 %i.fz, 34
  br i1 %i.ga, label %.preheader.i.i.i.i, label %bb.cv

.thread304.i.thread.i.i.i:                        ; preds = %bb.au
  %i.gb = icmp eq i8 %i.eb, 34
  br i1 %i.gb, label %getNextNode.exit.thread.thread.i.i.i, label %bb.cv

.preheader.i.i.i.i:                               ; preds = %.thread304.i.i.i.i
  %i.gc = icmp sgt i32 %.0104.lcssa295299310.i.i.i.i, 1
  br i1 %i.gc, label %.lr.ph200.preheader.i.i.i.i, label %.critedge13.i.i.i.i

.lr.ph200.preheader.i.i.i.i:                      ; preds = %.preheader.i.i.i.i
  %wide.trip.count245.i.i.i.i = zext nneg i32 %.0104.lcssa295299310.i.i.i.i to i64
  br label %.lr.ph200.i.i.i.i

.lr.ph200.i.i.i.i:                                ; preds = %bb.be, %.lr.ph200.preheader.i.i.i.i
  %indvars.iv242.i.i.i.i = phi i64 [ 1, %.lr.ph200.preheader.i.i.i.i ], [ %indvars.iv.next243.i.i.i.i, %bb.be ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0105.lcssa294300309.i.i.i.i, i64 %indvars.iv242.i.i.i.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !729
  %.not121.i.i.i.i = icmp eq i8 %i.ge, 34
  br i1 %.not121.i.i.i.i, label %.critedge13.loopexit.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph200.i.i.i.i
  %indvars.iv.next243.i.i.i.i = add nuw nsw i64 %indvars.iv242.i.i.i.i, 1 ; 2 uses
  %exitcond246.not.i.i.i.i = icmp eq i64 %indvars.iv.next243.i.i.i.i, %wide.trip.count245.i.i.i.i
  br i1 %exitcond246.not.i.i.i.i, label %getNextNode.exit.thread.thread.i.i.i, label %.lr.ph200.i.i.i.i, !llvm.loop !5905

.critedge13.loopexit.i.i.i.i:                     ; preds = %.lr.ph200.i.i.i.i
  %i.gf = trunc nuw nsw i64 %indvars.iv242.i.i.i.i to i32
  br label %.critedge13.i.i.i.i

.critedge13.i.i.i.i:                              ; preds = %.critedge13.loopexit.i.i.i.i, %.preheader.i.i.i.i
  %.1113.lcssa.i.i.i.i = phi i32 [ 1, %.preheader.i.i.i.i ], [ %i.gf, %.critedge13.loopexit.i.i.i.i ] ; 3 uses
  %i.gg = add i32 %12, 1
  %i.gh = add i32 %i.gg, %.1113.lcssa.i.i.i.i
  store i32 %i.gh, ptr %i.m, align 4, !tbaa !566
  %i.gi = icmp eq i32 %.1113.lcssa.i.i.i.i, %.0104.lcssa295299310.i.i.i.i
  br i1 %i.gi, label %getNextNode.exit.thread.thread.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.critedge13.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.0105.lcssa294300309.i.i.i.i, i64 1 ; 3 uses
  %i.gk = add nsw i32 %.1113.lcssa.i.i.i.i, -1    ; 2 uses
  %i.gl = load ptr, ptr %5, align 8, !tbaa !2714  ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !2699 ; 6 uses
  %i.gn = load i32, ptr %i.ds, align 8, !tbaa !2715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #57
  store ptr null, ptr %i.f, align 8, !tbaa !2589
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !2723
  %i.gq = call i32 %i.gp(ptr noundef nonnull %i.gl, ptr noundef nonnull %i.gj, i32 noundef range(i32 -2147483648, 2147483647) %i.gk, ptr noundef nonnull %i.f) #57, !inline_history !5906 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 0
  %.pre16.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !2589 ; 4 uses
  br i1 %i.gr, label %bb.bg, label %sqlite3Fts3OpenTokenizer.exit.thread.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.gl, ptr %.pre16.i.i.i.i.i.i, align 8, !tbaa !2686
  %i.gs = load i32, ptr %i.gm, align 8, !tbaa !2724
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %bb.bh, label %sqlite3Fts3OpenTokenizer.exit.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !2725
  %i.gw = call i32 %i.gv(ptr noundef nonnull %.pre16.i.i.i.i.i.i, i32 noundef %i.gn) #57, !inline_history !5906 ; 2 uses
  %.not.i.i136.i.i.i.i = icmp eq i32 %i.gw, 0
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !2589 ; 2 uses
  br i1 %.not.i.i136.i.i.i.i, label %sqlite3Fts3OpenTokenizer.exit.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !2726
  %i.gz = call i32 %i.gy(ptr noundef %.pre.i.i.i.i.i.i) #57, !inline_history !5906 ; 0 uses
  br label %sqlite3Fts3OpenTokenizer.exit.thread.i.i.i.i.i

sqlite3Fts3OpenTokenizer.exit.thread.i.i.i.i.i:   ; preds = %bb.bi, %bb.bf
  %.ph.i.i.i.i.i = phi ptr [ %.pre16.i.i.i.i.i.i, %bb.bf ], [ null, %bb.bi ]
  %.0.i.ph.i.i.i.i.i = phi i32 [ %i.gq, %bb.bf ], [ %i.gw, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  br label %.thread179.i.i.i.i.i

sqlite3Fts3OpenTokenizer.exit.i.i.i.i.i:          ; preds = %bb.bh, %bb.bg
  %i.ha = phi ptr [ %.pre16.i.i.i.i.i.i, %bb.bg ], [ %.pre.i.i.i.i.i.i, %bb.bh ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #57
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gm, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #57
  store i32 0, ptr %i.h, align 4, !tbaa !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #57
  store i32 0, ptr %i.i, align 4, !tbaa !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #57
  store i32 0, ptr %i.j, align 4, !tbaa !566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #57
  store i32 0, ptr %i.k, align 4, !tbaa !566
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !2727
  %i.hd = call i32 %i.hc(ptr noundef %i.ha, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #57, !inline_history !5907 ; 2 uses
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph209.i.i.i.i, label %.thread179.loopexit.i.i.i.i.i

.lr.ph209.i.i.i.i:                                ; preds = %sqlite3Fts3OpenTokenizer.exit.i.i.i.i.i, %bb.bx
  %.092200.i208.i.i.i.i = phi ptr [ %.0.i7.i.i.i.i.i.i, %bb.bx ], [ null, %sqlite3Fts3OpenTokenizer.exit.i.i.i.i.i ] ; 5 uses
  %.086201.i207.i.i.i.i = phi ptr [ %i.ic, %bb.bx ], [ null, %sqlite3Fts3OpenTokenizer.exit.i.i.i.i.i ] ; 5 uses
  %.080202.i206.i.i.i.i = phi i64 [ %i.ja, %bb.bx ], [ 0, %sqlite3Fts3OpenTokenizer.exit.i.i.i.i.i ] ; 3 uses
  %indvars.iv.i134204.i.i.i.i = phi i64 [ %i.jv, %bb.bx ], [ 0, %sqlite3Fts3OpenTokenizer.exit.i.i.i.i.i ] ; 3 uses
  %i.hf = call i32 @sqlite3_initialize(), !inline_history !5908
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i.i.i.i.i.i, label %sqlite3_realloc64.exit.i.i.i.i.i.i, label %sqlite3_realloc64.exit.thread.i.i.i.i.i.i

sqlite3_realloc64.exit.i.i.i.i.i.i:               ; preds = %.lr.ph209.i.i.i.i
  %i.hg = mul nuw nsw i64 %indvars.iv.i134204.i.i.i.i, 40
  %i.hh = add nuw nsw i64 %i.hg, 192
  %i.hi = call fastcc ptr @sqlite3Realloc(ptr noundef %.092200.i208.i.i.i.i, i64 noundef %i.hh), !inline_history !5908 ; 2 uses
  %.not.i120.i.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i120.i.i.i.i.i, label %sqlite3_realloc64.exit.thread.i.i.i.i.i.i, label %fts3ReallocOrFree.exit.i.i.i.i.i

sqlite3_realloc64.exit.thread.i.i.i.i.i.i:        ; preds = %sqlite3_realloc64.exit.i.i.i.i.i.i, %.lr.ph209.i.i.i.i
  %i.hj = icmp eq ptr %.092200.i208.i.i.i.i, null
  br i1 %i.hj, label %fts3ReallocOrFree.exit.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %sqlite3_realloc64.exit.thread.i.i.i.i.i.i
  %i.hk = load i32, ptr @sqlite3Config, align 8, !tbaa !693
  %.not.i4.i.i.i.i.i.i = icmp eq i32 %i.hk, 0
  br i1 %.not.i4.i.i.i.i.i.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hl = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !559
  call void %i.hm(ptr noundef nonnull %i.hl) #57, !inline_history !5909
  br label %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i.i.i.i:           ; preds = %bb.bl, %bb.bk
  %i.hn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !633
  %i.ho = call i32 %i.hn(ptr noundef nonnull %.092200.i208.i.i.i.i) #57, !inline_history !5910
  %i.hp = sext i32 %i.ho to i64
  %i.hq = load i64, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.hr = sub nsw i64 %i.hq, %i.hp
  store i64 %i.hr, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.hs = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.ht = add nsw i64 %i.hs, -1
  store i64 %i.ht, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.hu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.hu(ptr noundef nonnull %.092200.i208.i.i.i.i) #57, !inline_history !5911
  %i.hv = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i4.i.i.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i4.i.i.i.i.i.i.i, label %fts3ReallocOrFree.exit.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i
  %i.hw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  call void %i.hw(ptr noundef nonnull %i.hv) #57, !inline_history !5912
  br label %fts3ReallocOrFree.exit.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bj
  %i.hx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.hx(ptr noundef nonnull %.092200.i208.i.i.i.i) #57, !inline_history !5911
  br label %fts3ReallocOrFree.exit.i.i.i.i.i

fts3ReallocOrFree.exit.i.i.i.i.i:                 ; preds = %bb.bn, %bb.bm, %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i, %sqlite3_realloc64.exit.thread.i.i.i.i.i.i, %sqlite3_realloc64.exit.i.i.i.i.i.i
  %.0.i7.i.i.i.i.i.i = phi ptr [ %i.hi, %sqlite3_realloc64.exit.i.i.i.i.i.i ], [ null, %sqlite3_realloc64.exit.thread.i.i.i.i.i.i ], [ null, %sqlite3_mutex_enter.exit.i.i.i.i.i.i.i ], [ null, %bb.bm ], [ null, %bb.bn ] ; 5 uses
  %i.hy = load i32, ptr %i.h, align 4, !tbaa !566
  %i.hz = call i32 @sqlite3_initialize(), !inline_history !5908
  %.not.i.i121.i.i.i.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not.i.i121.i.i.i.i.i, label %sqlite3_realloc64.exit.i128.i.i.i.i.i, label %sqlite3_realloc64.exit.thread.i122.i.i.i.i.i

sqlite3_realloc64.exit.i128.i.i.i.i.i:            ; preds = %fts3ReallocOrFree.exit.i.i.i.i.i
  %i.ia = sext i32 %i.hy to i64
  %i.ib = add nsw i64 %.080202.i206.i.i.i.i, %i.ia
  %i.ic = call fastcc ptr @sqlite3Realloc(ptr noundef %.086201.i207.i.i.i.i, i64 noundef %i.ib), !inline_history !5908 ; 5 uses
  %.not.i129.i.i.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i129.i.i.i.i.i, label %sqlite3_realloc64.exit.thread.i122.i.i.i.i.i, label %fts3ReallocOrFree.exit130.i.i.i.i.i

sqlite3_realloc64.exit.thread.i122.i.i.i.i.i:     ; preds = %sqlite3_realloc64.exit.i128.i.i.i.i.i, %fts3ReallocOrFree.exit.i.i.i.i.i
  %i.id = icmp eq ptr %.086201.i207.i.i.i.i, null
  br i1 %i.id, label %fts3ReallocOrFree.exit130.thread.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %sqlite3_realloc64.exit.thread.i122.i.i.i.i.i
  %i.ie = load i32, ptr @sqlite3Config, align 8, !tbaa !693
  %.not.i4.i123.i.i.i.i.i = icmp eq i32 %i.ie, 0
  br i1 %.not.i4.i123.i.i.i.i.i, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.if = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i.i.i124.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i124.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i125.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ig = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !559
  call void %i.ig(ptr noundef nonnull %i.if) #57, !inline_history !5909
  br label %sqlite3_mutex_enter.exit.i.i125.i.i.i.i.i

sqlite3_mutex_enter.exit.i.i125.i.i.i.i.i:        ; preds = %bb.bq, %bb.bp
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !633
  %i.ii = call i32 %i.ih(ptr noundef nonnull %.086201.i207.i.i.i.i) #57, !inline_history !5910
  %i.ij = sext i32 %i.ii to i64
  %i.ik = load i64, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.il = sub nsw i64 %i.ik, %i.ij
  store i64 %i.il, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.im = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.in = add nsw i64 %i.im, -1
  store i64 %i.in, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.io(ptr noundef nonnull %.086201.i207.i.i.i.i) #57, !inline_history !5911
  %i.ip = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i4.i.i126.i.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i4.i.i126.i.i.i.i.i, label %fts3ReallocOrFree.exit130.thread.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %sqlite3_mutex_enter.exit.i.i125.i.i.i.i.i
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  call void %i.iq(ptr noundef nonnull %i.ip) #57, !inline_history !5912
  br label %fts3ReallocOrFree.exit130.thread.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bo
  %i.ir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.ir(ptr noundef nonnull %.086201.i207.i.i.i.i) #57, !inline_history !5911
  br label %fts3ReallocOrFree.exit130.thread.i.i.i.i.i

fts3ReallocOrFree.exit130.i.i.i.i.i:              ; preds = %sqlite3_realloc64.exit.i128.i.i.i.i.i
  %.not.i135.i.i.i.i = icmp eq ptr %.0.i7.i.i.i.i.i.i, null
  br i1 %.not.i135.i.i.i.i, label %fts3ReallocOrFree.exit130.thread.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %fts3ReallocOrFree.exit130.i.i.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i7.i.i.i.i.i.i, i64 152
  %i.it = getelementptr inbounds nuw [40 x i8], ptr %i.is, i64 %indvars.iv.i134204.i.i.i.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.it, i8 0, i64 40, i1 false)
  %i.iu = getelementptr inbounds i8, ptr %i.ic, i64 %.080202.i206.i.i.i.i
  %i.iv = load ptr, ptr %i.g, align 8, !tbaa !737
  %i.iw = load i32, ptr %i.h, align 4, !tbaa !566
  %i.ix = sext i32 %i.iw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iu, ptr align 1 %i.iv, i64 %i.ix, i1 false)
  %i.iy = load i32, ptr %i.h, align 4, !tbaa !566 ; 2 uses
  %i.iz = sext i32 %i.iy to i64
  %i.ja = add nsw i64 %.080202.i206.i.i.i.i, %i.iz ; 2 uses
end_hunk_4
begin_hunk_5_@fts3FilterMethod:bb.a

bb.cf:                                            ; preds = %bb.ce, %fts3ReallocOrFree.exit140.i.i.i.i.i
  %i.le = phi ptr [ %.pre.i.i.i.i.i, %bb.ce ], [ %i.kx, %fts3ReallocOrFree.exit140.i.i.i.i.i ] ; 7 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 80
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !566 ; 3 uses
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %.lr.ph.i133.i.i.i.i, label %fts3ReallocOrFree.exit140.thread.i.i.i.i.i

.lr.ph.i133.i.i.i.i:                              ; preds = %bb.cf
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 88 ; 5 uses
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.lg to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i.i, 3 ; 3 uses
  %i.lj = icmp ult i32 %i.lg, 4
  br i1 %i.lj, label %.epil.preheader, label %.lr.ph.i133.i.i.i.i.new

.lr.ph.i133.i.i.i.i.new:                          ; preds = %.lr.ph.i133.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i.i, 2147483644
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %.lr.ph.i133.i.i.i.i.new
  %indvars.iv215.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i133.i.i.i.i.new ], [ %indvars.iv.next216.i.i.i.i.i.3, %bb.cg ] ; 6 uses
  %.0206.i.i.i.i.i = phi ptr [ %i.ld, %.lr.ph.i133.i.i.i.i.new ], [ %i.mh, %bb.cg ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i133.i.i.i.i.new ], [ %niter.next.3, %bb.cg ]
  %i.lk = getelementptr inbounds nuw [40 x i8], ptr %i.li, i64 %indvars.iv215.i.i.i.i.i
  store ptr %.0206.i.i.i.i.i, ptr %i.lk, align 8, !tbaa !2734
  %i.ll = getelementptr inbounds nuw [40 x i8], ptr %i.le, i64 %indvars.iv215.i.i.i.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 96
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !2730
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds i8, ptr %.0206.i.i.i.i.i, i64 %i.lo ; 2 uses
  %indvars.iv.next216.i.i.i.i.i = or disjoint i64 %indvars.iv215.i.i.i.i.i, 1 ; 2 uses
  %i.lq = getelementptr inbounds nuw [40 x i8], ptr %i.li, i64 %indvars.iv.next216.i.i.i.i.i
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !2734
  %i.lr = getelementptr inbounds nuw [40 x i8], ptr %i.le, i64 %indvars.iv.next216.i.i.i.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 96
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !2730
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds i8, ptr %i.lp, i64 %i.lu ; 2 uses
  %indvars.iv.next216.i.i.i.i.i.1 = or disjoint i64 %indvars.iv215.i.i.i.i.i, 2 ; 2 uses
  %i.lw = getelementptr inbounds nuw [40 x i8], ptr %i.li, i64 %indvars.iv.next216.i.i.i.i.i.1
  store ptr %i.lv, ptr %i.lw, align 8, !tbaa !2734
  %i.lx = getelementptr inbounds nuw [40 x i8], ptr %i.le, i64 %indvars.iv.next216.i.i.i.i.i.1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 96
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !2730
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds i8, ptr %i.lv, i64 %i.ma ; 2 uses
  %indvars.iv.next216.i.i.i.i.i.2 = or disjoint i64 %indvars.iv215.i.i.i.i.i, 3 ; 2 uses
  %i.mc = getelementptr inbounds nuw [40 x i8], ptr %i.li, i64 %indvars.iv.next216.i.i.i.i.i.2
  store ptr %i.mb, ptr %i.mc, align 8, !tbaa !2734
  %i.md = getelementptr inbounds nuw [40 x i8], ptr %i.le, i64 %indvars.iv.next216.i.i.i.i.i.2
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 96
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !2730
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds i8, ptr %i.mb, i64 %i.mg ; 2 uses
  %indvars.iv.next216.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv215.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %fts3ReallocOrFree.exit140.thread.i.i.i.i.i.loopexit.unr-lcssa, label %bb.cg, !llvm.loop !5914

fts3ReallocOrFree.exit140.thread.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.cg
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %fts3ReallocOrFree.exit140.thread.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %fts3ReallocOrFree.exit140.thread.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i133.i.i.i.i
  %indvars.iv215.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i133.i.i.i.i ], [ %indvars.iv.next216.i.i.i.i.i.3, %fts3ReallocOrFree.exit140.thread.i.i.i.i.i.loopexit.unr-lcssa ]
  %.0206.i.i.i.i.i.epil.init = phi ptr [ %i.ld, %.lr.ph.i133.i.i.i.i ], [ %i.mh, %fts3ReallocOrFree.exit140.thread.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod489 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod489)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.epil.preheader
  %indvars.iv215.i.i.i.i.i.epil = phi i64 [ %indvars.iv215.i.i.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next216.i.i.i.i.i.epil, %bb.ch ] ; 3 uses
  %.0206.i.i.i.i.i.epil = phi ptr [ %.0206.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.mn, %bb.ch ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ch ]
  %i.mi = getelementptr inbounds nuw [40 x i8], ptr %i.li, i64 %indvars.iv215.i.i.i.i.i.epil
  store ptr %.0206.i.i.i.i.i.epil, ptr %i.mi, align 8, !tbaa !2734
  %i.mj = getelementptr inbounds nuw [40 x i8], ptr %i.le, i64 %indvars.iv215.i.i.i.i.i.epil
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 96
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !2730
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds i8, ptr %.0206.i.i.i.i.i.epil, i64 %i.mm
  %indvars.iv.next216.i.i.i.i.i.epil = add nuw nsw i64 %indvars.iv215.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %fts3ReallocOrFree.exit140.thread.i.i.i.i.i, label %bb.ch, !llvm.loop !5915

fts3ReallocOrFree.exit140.thread.i.i.i.i.i:       ; preds = %fts3ReallocOrFree.exit140.thread.i.i.i.i.i.loopexit.unr-lcssa, %bb.ch, %bb.cf, %bb.cd, %bb.cc, %sqlite3_mutex_enter.exit.i.i135.i.i.i.i.i, %sqlite3_realloc64.exit.thread.i132.i.i.i.i.i, %.thread179.i.i.i.i.i, %fts3ReallocOrFree.exit130.thread.i.i.i.i.i
  %i.mo = phi ptr [ %i.ha, %fts3ReallocOrFree.exit130.thread.i.i.i.i.i ], [ %i.ka, %.thread179.i.i.i.i.i ], [ %i.ka, %bb.cd ], [ %i.ka, %sqlite3_realloc64.exit.thread.i132.i.i.i.i.i ], [ %i.ka, %sqlite3_mutex_enter.exit.i.i135.i.i.i.i.i ], [ %i.ka, %bb.cc ], [ %i.ka, %bb.cf ], [ %i.ka, %bb.ch ], [ %i.ka, %fts3ReallocOrFree.exit140.thread.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.7.i.i.i.i.i = phi i32 [ 7, %fts3ReallocOrFree.exit130.thread.i.i.i.i.i ], [ %.5103.i.i.i.i.i, %.thread179.i.i.i.i.i ], [ 7, %bb.cd ], [ 7, %sqlite3_realloc64.exit.thread.i132.i.i.i.i.i ], [ 7, %sqlite3_mutex_enter.exit.i.i135.i.i.i.i.i ], [ 7, %bb.cc ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %fts3ReallocOrFree.exit140.thread.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.597.i.i.i.i.i = phi ptr [ %.0.i7.i.i.i.i.i.i, %fts3ReallocOrFree.exit130.thread.i.i.i.i.i ], [ %.496.i.i.i.i.i, %.thread179.i.i.i.i.i ], [ null, %bb.cd ], [ null, %sqlite3_realloc64.exit.thread.i132.i.i.i.i.i ], [ null, %sqlite3_mutex_enter.exit.i.i135.i.i.i.i.i ], [ null, %bb.cc ], [ %i.kh, %bb.cf ], [ %i.kh, %bb.ch ], [ %i.kh, %fts3ReallocOrFree.exit140.thread.i.i.i.i.i.loopexit.unr-lcssa ] ; 5 uses
  %.591.i.i.i.i.i = phi ptr [ %.0.i7.i127153.ph.i.i.i.i.i, %fts3ReallocOrFree.exit130.thread.i.i.i.i.i ], [ %.490.i.i.i.i.i, %.thread179.i.i.i.i.i ], [ %.490.i.i.i.i.i, %bb.cd ], [ %.490.i.i.i.i.i, %sqlite3_realloc64.exit.thread.i132.i.i.i.i.i ], [ %.490.i.i.i.i.i, %sqlite3_mutex_enter.exit.i.i135.i.i.i.i.i ], [ %.490.i.i.i.i.i, %bb.cc ], [ %.490.i.i.i.i.i, %bb.cf ], [ %.490.i.i.i.i.i, %bb.ch ], [ %.490.i.i.i.i.i, %fts3ReallocOrFree.exit140.thread.i.i.i.i.i.loopexit.unr-lcssa ] ; 4 uses
  %.not117.i.i.i.i.i = icmp eq ptr %i.mo, null
  br i1 %.not117.i.i.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %fts3ReallocOrFree.exit140.thread.i.i.i.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !2726
  %i.mr = call i32 %i.mq(ptr noundef nonnull %i.mo) #57, !inline_history !5907 ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %fts3ReallocOrFree.exit140.thread.i.i.i.i.i
  %i.ms = icmp eq ptr %.591.i.i.i.i.i, null
  br i1 %i.ms, label %sqlite3_free.exit.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mt = load i32, ptr @sqlite3Config, align 8, !tbaa !693
  %.not.i141.i.i.i.i.i = icmp eq i32 %i.mt, 0
  br i1 %.not.i141.i.i.i.i.i, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mu = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i.i142.i.i.i.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i.i142.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !559
  call void %i.mv(ptr noundef nonnull %i.mu) #57, !inline_history !5916
  br label %sqlite3_mutex_enter.exit.i.i.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i.i.i:             ; preds = %bb.cm, %bb.cl
  %i.mw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !633
  %i.mx = call i32 %i.mw(ptr noundef nonnull %.591.i.i.i.i.i) #57, !inline_history !5917
  %i.my = sext i32 %i.mx to i64
  %i.mz = load i64, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.na = sub nsw i64 %i.mz, %i.my
  store i64 %i.na, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.nb = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.nc = add nsw i64 %i.nb, -1
  store i64 %i.nc, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.nd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.nd(ptr noundef nonnull %.591.i.i.i.i.i) #57, !inline_history !5918
  %i.ne = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i4.i143.i.i.i.i.i = icmp eq ptr %i.ne, null
  br i1 %.not.i4.i143.i.i.i.i.i, label %sqlite3_free.exit.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i.i.i.i
  %i.nf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  call void %i.nf(ptr noundef nonnull %i.ne) #57, !inline_history !5919
  br label %sqlite3_free.exit.i.i.i.i.i

bb.co:                                            ; preds = %bb.ck
  %i.ng = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.ng(ptr noundef nonnull %.591.i.i.i.i.i) #57, !inline_history !5918
  br label %sqlite3_free.exit.i.i.i.i.i

sqlite3_free.exit.i.i.i.i.i:                      ; preds = %bb.co, %bb.cn, %sqlite3_mutex_enter.exit.i.i.i.i.i.i, %bb.cj
  %.not118.i.i.i.i.i = icmp eq i32 %.7.i.i.i.i.i, 0
  br i1 %.not118.i.i.i.i.i, label %getNextString.exit.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %sqlite3_free.exit.i.i.i.i.i
  %i.nh = icmp eq ptr %.597.i.i.i.i.i, null
  br i1 %i.nh, label %getNextString.exit.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ni = load i32, ptr @sqlite3Config, align 8, !tbaa !693
  %.not.i144.i.i.i.i.i = icmp eq i32 %i.ni, 0
  br i1 %.not.i144.i.i.i.i.i, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nj = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i.i145.i.i.i.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i.i145.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i146.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !559
  call void %i.nk(ptr noundef nonnull %i.nj) #57, !inline_history !5916
  br label %sqlite3_mutex_enter.exit.i146.i.i.i.i.i

sqlite3_mutex_enter.exit.i146.i.i.i.i.i:          ; preds = %bb.cs, %bb.cr
  %i.nl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !633
  %i.nm = call i32 %i.nl(ptr noundef nonnull %.597.i.i.i.i.i) #57, !inline_history !5917
  %i.nn = sext i32 %i.nm to i64
  %i.no = load i64, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.np = sub nsw i64 %i.no, %i.nn
  store i64 %i.np, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.nq = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.nr = add nsw i64 %i.nq, -1
  store i64 %i.nr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.ns = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.ns(ptr noundef nonnull %.597.i.i.i.i.i) #57, !inline_history !5918
  %i.nt = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i4.i147.i.i.i.i.i = icmp eq ptr %i.nt, null
  br i1 %.not.i4.i147.i.i.i.i.i, label %getNextString.exit.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %sqlite3_mutex_enter.exit.i146.i.i.i.i.i
  %i.nu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  call void %i.nu(ptr noundef nonnull %i.nt) #57, !inline_history !5919
  br label %getNextString.exit.i.i.i.i

bb.cu:                                            ; preds = %bb.cq
  %i.nv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.nv(ptr noundef nonnull %.597.i.i.i.i.i) #57, !inline_history !5918
  br label %getNextString.exit.i.i.i.i

getNextString.exit.i.i.i.i:                       ; preds = %bb.cu, %bb.ct, %sqlite3_mutex_enter.exit.i146.i.i.i.i.i, %bb.cp, %sqlite3_free.exit.i.i.i.i.i
  %.6.i.i.i.i.i = phi ptr [ %.597.i.i.i.i.i, %sqlite3_free.exit.i.i.i.i.i ], [ null, %bb.cp ], [ null, %sqlite3_mutex_enter.exit.i146.i.i.i.i.i ], [ null, %bb.ct ], [ null, %bb.cu ] ; 2 uses
  store ptr %.6.i.i.i.i.i, ptr %i.l, align 8, !tbaa !2717
  br label %getNextNode.exit.i.i.i

bb.cv:                                            ; preds = %.thread304.i.thread.i.i.i, %.thread304.i.i.i.i
  %i.nw = phi i64 [ %i.ek, %.thread304.i.thread.i.i.i ], [ %11, %.thread304.i.i.i.i ]
  %.0105.lcssa294300309.i167.i.i.i = phi ptr [ %.0105189.i.i.i.i, %.thread304.i.thread.i.i.i ], [ %.0105.lcssa294300309.i.i.i.i, %.thread304.i.i.i.i ] ; 2 uses
  %.0104.lcssa295299310.i165.i.i.i = phi i32 [ 1, %.thread304.i.thread.i.i.i ], [ %.0104.lcssa295299310.i.i.i.i, %.thread304.i.i.i.i ]
  %i.nx = load i32, ptr %i.dv, align 8, !tbaa !5936 ; 2 uses
  %i.ny = load i32, ptr %i.du, align 4, !tbaa !5935 ; 2 uses
  %i.nz = icmp sgt i32 %i.ny, 0
  br i1 %i.nz, label %.lr.ph198.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph198.i.i.i.i:                                ; preds = %bb.cv
  %i.oa = load ptr, ptr %i.dt, align 8, !tbaa !5934
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ny to i64
  br label %bb.cw

bb.cw:                                            ; preds = %bb.db, %.lr.ph198.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph198.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.db ] ; 3 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %indvars.iv.i.i.i.i
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !737 ; 2 uses
  %i.od = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.oc) #58, !inline_history !5920 ; 3 uses
  %i.oe = trunc i64 %i.od to i32                  ; 3 uses
  %i.of = icmp sgt i32 %.0104.lcssa295299310.i165.i.i.i, %i.oe
  br i1 %i.of, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  %sext.i.i.i.i = shl i64 %i.od, 32
  %i.og = ashr exact i64 %sext.i.i.i.i, 32
  %i.oh = getelementptr inbounds i8, ptr %.0105.lcssa294300309.i167.i.i.i, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !729
  %i.oj = icmp eq i8 %i.oi, 58
  br i1 %i.oj, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.ok = icmp sgt i32 %i.oe, 0
  br i1 %i.ok, label %.lr.ph.i138.i.i.i.i, label %sqlite3_strnicmp.exit.thread.i.i.i.i

.lr.ph.i138.i.i.i.i:                              ; preds = %bb.cy, %bb.da
  %.in.i.i.i.i.i = phi i32 [ %i.ol, %bb.da ], [ %i.oe, %bb.cy ] ; 2 uses
  %.023.i.i.i.i.i = phi ptr [ %i.ow, %bb.da ], [ %.0105.lcssa294300309.i167.i.i.i, %bb.cy ] ; 3 uses
  %.01422.i.i.i.i.i = phi ptr [ %i.ov, %bb.da ], [ %i.oc, %bb.cy ] ; 2 uses
  %i.ol = add nsw i32 %.in.i.i.i.i.i, -1
  %i.om = load i8, ptr %.01422.i.i.i.i.i, align 1, !tbaa !729 ; 2 uses
  %.not.i139.i.i.i.i = icmp eq i8 %i.om, 0
  br i1 %.not.i139.i.i.i.i, label %sqlite3_strnicmp.exit.loopexit.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i138.i.i.i.i
  %i.on = zext i8 %i.om to i64
  %i.oo = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !729 ; 2 uses
  %i.oq = load i8, ptr %.023.i.i.i.i.i, align 1, !tbaa !729
  %i.or = zext i8 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !729 ; 2 uses
  %i.ou = icmp eq i8 %i.op, %i.ot
  br i1 %i.ou, label %bb.da, label %split.i.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.ov = getelementptr inbounds nuw i8, ptr %.01422.i.i.i.i.i, i64 1
  %i.ow = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 1
  %i.ox = icmp samesign ugt i32 %.in.i.i.i.i.i, 1
  br i1 %i.ox, label %.lr.ph.i138.i.i.i.i, label %sqlite3_strnicmp.exit.thread.i.i.i.i, !llvm.loop !21

split.i.i.i.i.i:                                  ; preds = %bb.cz
  %i.oy = zext i8 %i.op to i32
  br label %sqlite3_strnicmp.exit.i.i.i.i

sqlite3_strnicmp.exit.loopexit.i.i.i.i:           ; preds = %.lr.ph.i138.i.i.i.i
  %.pre.i.i.i.i = load i8, ptr %.023.i.i.i.i.i, align 1, !tbaa !729
  %.phi.trans.insert.i.i.i.i = zext i8 %.pre.i.i.i.i to i64
  %.phi.trans.insert253.i.i.i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert.i.i.i.i
  %.pre254.i.i.i.i = load i8, ptr %.phi.trans.insert253.i.i.i.i, align 1, !tbaa !729
  br label %sqlite3_strnicmp.exit.i.i.i.i

sqlite3_strnicmp.exit.i.i.i.i:                    ; preds = %sqlite3_strnicmp.exit.loopexit.i.i.i.i, %split.i.i.i.i.i
  %i.oz = phi i8 [ %i.ot, %split.i.i.i.i.i ], [ %.pre254.i.i.i.i, %sqlite3_strnicmp.exit.loopexit.i.i.i.i ]
  %i.pa = phi i32 [ %i.oy, %split.i.i.i.i.i ], [ 0, %sqlite3_strnicmp.exit.loopexit.i.i.i.i ]
  %i.pb = zext i8 %i.oz to i32
  %i.pc = icmp eq i32 %i.pa, %i.pb
  br i1 %i.pc, label %sqlite3_strnicmp.exit.thread.i.i.i.i, label %bb.db

sqlite3_strnicmp.exit.thread.i.i.i.i:             ; preds = %sqlite3_strnicmp.exit.i.i.i.i, %bb.cy, %bb.da
  %i.pd = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  %i.pe = add i64 %i.od, %i.nw
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = add i32 %i.pf, 1
  br label %.loopexit.i.i.i.i

bb.db:                                            ; preds = %sqlite3_strnicmp.exit.i.i.i.i, %bb.cx, %bb.cw
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.cw, !llvm.loop !5921

.loopexit.i.i.i.i:                                ; preds = %bb.db, %sqlite3_strnicmp.exit.thread.i.i.i.i, %bb.cv
  %.2111.i.i.i.i = phi i32 [ %i.pd, %sqlite3_strnicmp.exit.thread.i.i.i.i ], [ %i.nx, %bb.cv ], [ %i.nx, %bb.db ]
  %.2108.i.i.i.i = phi i32 [ %i.pg, %sqlite3_strnicmp.exit.thread.i.i.i.i ], [ 0, %bb.cv ], [ 0, %bb.db ] ; 3 uses
  %i.ph = sext i32 %.2108.i.i.i.i to i64
  %i.pi = getelementptr inbounds i8, ptr %.093324.i.i.i, i64 %i.ph
  %i.pj = sub nsw i32 %.095320.i.i.i, %.2108.i.i.i.i
  %i.pk = call fastcc i32 @getNextToken(ptr noundef nonnull %5, i32 noundef %.2111.i.i.i.i, ptr noundef %i.pi, i32 noundef %i.pj, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m), !inline_history !5920
  %i.pl = load i32, ptr %i.m, align 4, !tbaa !566
  %i.pm = add nsw i32 %i.pl, %.2108.i.i.i.i
  store i32 %i.pm, ptr %i.m, align 4, !tbaa !566
  %.pre377.i.i.i = load ptr, ptr %i.l, align 8
  br label %getNextNode.exit.i.i.i

getNextNode.exit.i.i.i:                           ; preds = %.loopexit.i.i.i.i, %getNextString.exit.i.i.i.i, %switch.early.test131.3.i.i.i.i, %switch.early.test131.3.i.i.i.i, %switch.early.test131.3.i.i.i.i, %switch.early.test131.3.i.i.i.i, %.split.3.i.i.i.i, %switch.early.test131.i.i.i.i, %switch.early.test131.i.i.i.i, %switch.early.test131.i.i.i.i, %switch.early.test131.i.i.i.i, %.split.i.i.i.i
  %i.pn = phi ptr [ %.pre377.i.i.i, %.loopexit.i.i.i.i ], [ %10, %switch.early.test131.3.i.i.i.i ], [ %10, %switch.early.test131.3.i.i.i.i ], [ %.6.i.i.i.i.i, %getNextString.exit.i.i.i.i ], [ %10, %switch.early.test131.3.i.i.i.i ], [ %i.fv, %.split.3.i.i.i.i ], [ %i.eu, %.split.i.i.i.i ], [ %i.ey, %switch.early.test131.i.i.i.i ], [ %i.ey, %switch.early.test131.i.i.i.i ], [ %i.ey, %switch.early.test131.i.i.i.i ], [ %10, %switch.early.test131.3.i.i.i.i ], [ %i.ey, %switch.early.test131.i.i.i.i ] ; 16 uses
  %.4.i.i.i.i = phi i32 [ %i.pk, %.loopexit.i.i.i.i ], [ %.1116149.3.i.i.i.i, %switch.early.test131.3.i.i.i.i ], [ %.1116149.3.i.i.i.i, %switch.early.test131.3.i.i.i.i ], [ %.7.i.i.i.i.i, %getNextString.exit.i.i.i.i ], [ %.1116149.3.i.i.i.i, %switch.early.test131.3.i.i.i.i ], [ 0, %.split.3.i.i.i.i ], [ 0, %.split.i.i.i.i ], [ %.1116149.i.i.i.i, %switch.early.test131.i.i.i.i ], [ %.1116149.i.i.i.i, %switch.early.test131.i.i.i.i ], [ %.1116149.i.i.i.i, %switch.early.test131.i.i.i.i ], [ %.1116149.3.i.i.i.i, %switch.early.test131.3.i.i.i.i ], [ %.1116149.i.i.i.i, %switch.early.test131.i.i.i.i ] ; 2 uses
  %i.po = icmp eq i32 %.4.i.i.i.i, 0
  %i.pp = icmp ne ptr %i.pn, null
  %or.cond16.i.i.i = select i1 %i.po, i1 %i.pp, i1 false
  br i1 %or.cond16.i.i.i, label %bb.dc, label %getNextNode.exit.thread.i.i.i

bb.dc:                                            ; preds = %getNextNode.exit.i.i.i
  %i.pq = load i32, ptr %i.pn, align 8, !tbaa !2721 ; 2 uses
  %i.pr = icmp ne i32 %i.pq, 5                    ; 2 uses
  br i1 %i.pr, label %bb.dh, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ps = load i32, ptr %i.dz, align 4, !tbaa !2718
  %.not118.i.i.i = icmp eq i32 %i.ps, 0
  br i1 %.not118.i.i.i, label %.thread187.i.i.i, label %bb.de

.thread187.i.i.i:                                 ; preds = %bb.dd
  %i.pt = icmp ne i32 %.082328.i.i.i, 0
  br label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.pu = call i32 @sqlite3_initialize(), !inline_history !5922
  %.not.i.i127.i.i.i = icmp eq i32 %i.pu, 0
  br i1 %.not.i.i127.i.i.i, label %sqlite3_malloc64.exit.i.i.i.i, label %.thread235.i.i.i

sqlite3_malloc64.exit.i.i.i.i:                    ; preds = %bb.de
  %i.pv = call fastcc ptr @sqlite3Malloc(i64 noundef 64), !inline_history !5922 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i.i, label %.thread235.i.i.i, label %bb.df

bb.df:                                            ; preds = %sqlite3_malloc64.exit.i.i.i.i
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.pw, i8 0, i64 60, i1 false)
  store i32 2, ptr %i.pv, align 8, !tbaa !2721
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  store ptr %i.pn, ptr %i.px, align 8, !tbaa !2735
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store ptr %i.pv, ptr %i.py, align 8, !tbaa !2736
  %.not124.i.i.i = icmp eq ptr %.097319.i.i.i, null
  br i1 %.not124.i.i.i, label %getNextNode.exit.thread.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store ptr %.097319.i.i.i, ptr %i.pz, align 8, !tbaa !2737
  %i.qa = getelementptr inbounds nuw i8, ptr %.097319.i.i.i, i64 8
  store ptr %i.pv, ptr %i.qa, align 8, !tbaa !2736
  br label %getNextNode.exit.thread.i.i.i

bb.dh:                                            ; preds = %bb.dc
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !2737
  %i.qd = icmp ne ptr %i.qc, null                 ; 2 uses
  %i.qe = xor i1 %i.qd, true                      ; 2 uses
  %i.qf = icmp ne i32 %.082328.i.i.i, 0           ; 2 uses
  %or.cond.i.i.i = select i1 %i.qe, i1 %i.qf, i1 false
  br i1 %or.cond.i.i.i, label %.thread235.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh, %.thread187.i.i.i
  %i.qg = phi i1 [ %i.pt, %.thread187.i.i.i ], [ %i.qf, %bb.dh ]
  %i.qh = phi i1 [ false, %.thread187.i.i.i ], [ %i.qe, %bb.dh ] ; 2 uses
  %i.qi = phi i1 [ true, %.thread187.i.i.i ], [ %i.qd, %bb.dh ] ; 3 uses
  %or.cond6.i.i.i = select i1 %i.qh, i1 true, i1 %i.qg
  br i1 %or.cond6.i.i.i, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qj = call i32 @sqlite3_initialize(), !inline_history !5922
  %.not.i.i128.i.i.i = icmp eq i32 %i.qj, 0
  br i1 %.not.i.i128.i.i.i, label %sqlite3_malloc64.exit.i130.i.i.i, label %.thread235.i.i.i

sqlite3_malloc64.exit.i130.i.i.i:                 ; preds = %bb.dj
  %i.qk = call fastcc ptr @sqlite3Malloc(i64 noundef 64), !inline_history !5922 ; 7 uses
  %.not.i131.i.i.i = icmp eq ptr %i.qk, null
  br i1 %.not.i131.i.i.i, label %.thread235.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %sqlite3_malloc64.exit.i130.i.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.ql, i8 0, i64 60, i1 false)
  store i32 3, ptr %i.qk, align 8, !tbaa !2721
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i131 = phi ptr [ %.0104316.i.i.i, %bb.dk ], [ %i.qn, %bb.dl ] ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i131, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !2736 ; 2 uses
  %.not.i133.i.i.i = icmp eq ptr %i.qn, null
  br i1 %.not.i133.i.i.i, label %.thread199.i.i.i, label %bb.dl, !llvm.loop !5923

.thread199.i.i.i:                                 ; preds = %bb.dl
  %i.qo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i131, i64 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  store ptr %.0.i.i.i.i131, ptr %i.qp, align 8, !tbaa !2737
  store ptr %i.qk, ptr %i.qo, align 8, !tbaa !2736
  br label %bb.dn

bb.dm:                                            ; preds = %bb.di
  %.not120.i.i.i = icmp eq ptr %.0104316.i.i.i, null
  br i1 %.not120.i.i.i, label %bb.dr, label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.thread199.i.i.i
  %.2106206.i.i.i = phi ptr [ %i.qk, %.thread199.i.i.i ], [ %.0104316.i.i.i, %bb.dm ] ; 4 uses
  %.2154204.i.i.i = phi ptr [ %i.qk, %.thread199.i.i.i ], [ %.0152315.i.i.i, %bb.dm ] ; 4 uses
  %i.qq = icmp ne i32 %i.pq, 1
  %or.cond8.i.i.i = or i1 %i.qq, %i.qi
  br i1 %or.cond8.i.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.qr = load i32, ptr %.2106206.i.i.i, align 8, !tbaa !2721
  %.not121.i.i.i = icmp eq i32 %i.qr, 5
  br i1 %.not121.i.i.i, label %bb.dp, label %.thread235.i.i.i

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %or.cond10.i.i.i = and i1 %i.pr, %i.qi
  br i1 %or.cond10.i.i.i, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.qs = load i32, ptr %.2106206.i.i.i, align 8, !tbaa !2721
  %i.qt = icmp eq i32 %i.qs, 1
  br i1 %i.qt, label %.thread235.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.dm
  %.2106207.i.i.i = phi ptr [ %.2106206.i.i.i, %bb.dq ], [ %.2106206.i.i.i, %bb.dp ], [ null, %bb.dm ] ; 3 uses
  %.2154205.i.i.i = phi ptr [ %.2154204.i.i.i, %bb.dq ], [ %.2154204.i.i.i, %bb.dp ], [ %.0152315.i.i.i, %bb.dm ] ; 3 uses
  br i1 %i.qi, label %bb.ds, label %.preheader250.i.i.i

bb.ds:                                            ; preds = %bb.dr
  %.not122.i.i.i = icmp eq ptr %.2154205.i.i.i, null
  br i1 %.not122.i.i.i, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qu = getelementptr inbounds nuw i8, ptr %.2106207.i.i.i, i64 24
  store ptr %i.pn, ptr %i.qu, align 8, !tbaa !2735
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store ptr %.2106207.i.i.i, ptr %i.qv, align 8, !tbaa !2736
  br label %bb.dv

.preheader250.i.i.i:                              ; preds = %bb.dr, %bb.du
  %.0.i135.i.i.i = phi ptr [ %i.qx, %bb.du ], [ %.2106207.i.i.i, %bb.dr ] ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.0.i135.i.i.i, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !2736 ; 5 uses
  %.not.i136.i.i.i = icmp eq ptr %i.qx, null
  br i1 %.not.i136.i.i.i, label %insertBinaryOperator.exit147.i.i.i, label %bb.du

bb.du:                                            ; preds = %.preheader250.i.i.i
  %.val20.i137.i.i.i = load i32, ptr %i.qx, align 8, !tbaa !2721 ; 2 uses
  %switch.selectcmp.i.i138.i.i.i = icmp ne i32 %.val20.i137.i.i.i, 4
  %switch.selectcmp3.i.i139.i.i.i = icmp ne i32 %.val20.i137.i.i.i, 1
  %.val.i140.i.i.i = load i32, ptr %i.pn, align 8, !tbaa !2721 ; 2 uses
  %switch.selectcmp.i21.i141.i.i.i = icmp eq i32 %.val.i140.i.i.i, 4
  %switch.selectcmp3.i23.i142.i.i.i = icmp eq i32 %.val.i140.i.i.i, 1
  %.not182526.i143.i.i.i = select i1 %switch.selectcmp.i.i138.i.i.i, i1 %switch.selectcmp.i21.i141.i.i.i, i1 false
  %.not1825.i144.i.i.i = or i1 %switch.selectcmp3.i23.i142.i.i.i, %.not182526.i143.i.i.i
  %.not18.i145.i.i.i = select i1 %switch.selectcmp3.i.i139.i.i.i, i1 %.not1825.i144.i.i.i, i1 false
  br i1 %.not18.i145.i.i.i, label %.critedge.i146.i.i.i, label %.preheader250.i.i.i, !llvm.loop !5923

.critedge.i146.i.i.i:                             ; preds = %bb.du
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  store ptr %i.pn, ptr %i.qy, align 8, !tbaa !2735
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store ptr %i.qx, ptr %i.qz, align 8, !tbaa !2736
  br label %insertBinaryOperator.exit147.i.i.i

insertBinaryOperator.exit147.i.i.i:               ; preds = %.preheader250.i.i.i, %.critedge.i146.i.i.i
  %.13.i.i.i = phi ptr [ %.2154205.i.i.i, %.critedge.i146.i.i.i ], [ %i.pn, %.preheader250.i.i.i ]
  %i.ra = getelementptr inbounds nuw i8, ptr %.0.i135.i.i.i, i64 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  store ptr %.0.i135.i.i.i, ptr %i.rb, align 8, !tbaa !2737
  store ptr %i.pn, ptr %i.ra, align 8, !tbaa !2736
  br label %bb.dv

bb.dv:                                            ; preds = %insertBinaryOperator.exit147.i.i.i, %bb.dt, %bb.ds
  %.3155.i.i.i = phi ptr [ %.13.i.i.i, %insertBinaryOperator.exit147.i.i.i ], [ %.2154205.i.i.i, %bb.dt ], [ %i.pn, %bb.ds ]
  %i.rc = zext i1 %i.qh to i32
  br label %getNextNode.exit.thread.i.i.i

.thread235.i.i.i:                                 ; preds = %bb.dq, %bb.do, %sqlite3_malloc64.exit.i130.i.i.i, %bb.dj, %bb.dh, %sqlite3_malloc64.exit.i.i.i.i, %bb.de
  %.6158.ph.i.i.i = phi ptr [ %.0152315.i.i.i, %sqlite3_malloc64.exit.i.i.i.i ], [ %.0152315.i.i.i, %bb.dh ], [ %.0152315.i.i.i, %sqlite3_malloc64.exit.i130.i.i.i ], [ %.0152315.i.i.i, %bb.de ], [ %.0152315.i.i.i, %bb.dj ], [ %.2154204.i.i.i, %bb.dq ], [ %.2154204.i.i.i, %bb.do ]
  %.6.ph.i.i.i = phi i32 [ 7, %sqlite3_malloc64.exit.i.i.i.i ], [ 1, %bb.dh ], [ 7, %sqlite3_malloc64.exit.i130.i.i.i ], [ 7, %bb.de ], [ 7, %bb.dj ], [ 1, %bb.dq ], [ 1, %bb.do ]
  call fastcc void @sqlite3Fts3ExprFree(ptr noundef nonnull %i.pn), !inline_history !5924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #57
  br label %fts3ExprParseUnbalanced.exit.i

getNextNode.exit.thread.thread.i.i.i:             ; preds = %.critedge13.i.i.i.i, %.thread304.i.thread.i.i.i, %bb.bd, %bb.ax, %.critedge.i.i.i.i, %fts3isspace.exit.thread.i.i.i.i, %bb.be
  %.7.ph.i.i.i = phi i32 [ 101, %fts3isspace.exit.thread.i.i.i.i ], [ 1, %bb.be ], [ 7, %bb.bd ], [ 7, %bb.ax ], [ 101, %.critedge.i.i.i.i ], [ 1, %.critedge13.i.i.i.i ], [ 1, %.thread304.i.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #57
  br label %.loopexit.i.i.i

getNextNode.exit.thread.i.i.i:                    ; preds = %bb.dv, %bb.dg, %bb.df, %getNextNode.exit.i.i.i
  %.7159.i.i.i = phi ptr [ %.3155.i.i.i, %bb.dv ], [ %.0152315.i.i.i, %getNextNode.exit.i.i.i ], [ %.0152315.i.i.i, %bb.df ], [ %.0152315.i.i.i, %bb.dg ] ; 2 uses
  %.5109.i.i.i = phi ptr [ %i.pn, %bb.dv ], [ %.0104316.i.i.i, %getNextNode.exit.i.i.i ], [ %.0104316.i.i.i, %bb.df ], [ %.0104316.i.i.i, %bb.dg ]
  %.4101.i.i.i = phi ptr [ %.097319.i.i.i, %bb.dv ], [ %.097319.i.i.i, %getNextNode.exit.i.i.i ], [ %i.pv, %bb.df ], [ %i.pv, %bb.dg ] ; 2 uses
  %.7.i.i.i = phi i32 [ 0, %bb.dv ], [ %.4.i.i.i.i, %getNextNode.exit.i.i.i ], [ 0, %bb.df ], [ 0, %bb.dg ] ; 2 uses
  %.486.i.i.i = phi i32 [ %i.rc, %bb.dv ], [ %.082328.i.i.i, %getNextNode.exit.i.i.i ], [ %.082328.i.i.i, %bb.df ], [ %.082328.i.i.i, %bb.dg ] ; 2 uses
  %i.rd = load i32, ptr %i.m, align 4, !tbaa !566 ; 2 uses
  %i.re = sub nsw i32 %.095320.i.i.i, %i.rd
  %i.rf = sext i32 %i.rd to i64
  %i.rg = getelementptr inbounds i8, ptr %.093324.i.i.i, i64 %i.rf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #57
end_hunk_5
begin_hunk_6_@fts3SegmentMerge:bb.a
  %i.qf = sext i32 %i.qe to i64
  %i.qg = load i64, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.qh = sub nsw i64 %i.qg, %i.qf
  store i64 %i.qh, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.qi = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.qj = add nsw i64 %i.qi, -1
  store i64 %i.qj, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.qk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.qk(ptr noundef nonnull %i.py) #57, !inline_history !6209
  %i.ql = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i4.i8.i = icmp eq ptr %i.ql, null
  br i1 %.not.i4.i8.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %sqlite3_mutex_enter.exit.i7.i
  %i.qm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  call void %i.qm(ptr noundef nonnull %i.ql) #57, !inline_history !6210
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.qn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.qn(ptr noundef nonnull %i.py) #57, !inline_history !6209
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %sqlite3_mutex_enter.exit.i7.i, %sqlite3_free.exit.i
  %i.qo = load ptr, ptr %.093179, align 8, !tbaa !6222
  call fastcc void @fts3NodeFree(ptr noundef %i.qo)
  %i.qp = load i32, ptr @sqlite3Config, align 8, !tbaa !693
  %.not.i10.i = icmp eq i32 %i.qp, 0
  br i1 %.not.i10.i, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qq = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i.i11.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i11.i, label %sqlite3_mutex_enter.exit.i12.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !559
  call void %i.qr(ptr noundef nonnull %i.qq) #57, !inline_history !6207
  br label %sqlite3_mutex_enter.exit.i12.i

sqlite3_mutex_enter.exit.i12.i:                   ; preds = %bb.cr, %bb.cq
  %i.qs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !633
  %i.qt = call i32 %i.qs(ptr noundef nonnull %.093179) #57, !inline_history !6208
  %i.qu = sext i32 %i.qt to i64
  %i.qv = load i64, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.qw = sub nsw i64 %i.qv, %i.qu
  store i64 %i.qw, ptr @sqlite3Stat, align 8, !tbaa !561
  %i.qx = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.qy = add nsw i64 %i.qx, -1
  store i64 %i.qy, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !561
  %i.qz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.qz(ptr noundef nonnull %.093179) #57, !inline_history !6209
  %i.ra = load ptr, ptr @mem0, align 8, !tbaa !695 ; 2 uses
  %.not.i4.i13.i = icmp eq ptr %i.ra, null
  br i1 %.not.i4.i13.i, label %fts3SegWriterFree.exit, label %bb.cs

bb.cs:                                            ; preds = %sqlite3_mutex_enter.exit.i12.i
  %i.rb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  call void %i.rb(ptr noundef nonnull %i.ra) #57, !inline_history !6210
  br label %fts3SegWriterFree.exit

bb.ct:                                            ; preds = %bb.cp
  %i.rc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !696
  call void %i.rc(ptr noundef nonnull %.093179) #57, !inline_history !6209
  br label %fts3SegWriterFree.exit

fts3SegWriterFree.exit:                           ; preds = %.thread115, %.thread127, %fts3SegmentMaxLevel.exit.thread, %fts3SegmentMaxLevel.exit, %bb.x, %bb.bt, %bb.p, %bb.a, %.thread138, %sqlite3_mutex_enter.exit.i12.i, %bb.cs, %bb.ct
  %.4149 = phi i32 [ %.4157, %bb.ct ], [ %.4, %.thread138 ], [ %.4157, %sqlite3_mutex_enter.exit.i12.i ], [ %.4157, %bb.cs ], [ %.116.i.ph, %.thread127 ], [ %i.k, %fts3SegmentMaxLevel.exit.thread ], [ 101, %bb.p ], [ %i.cq, %bb.x ], [ 0, %bb.bt ], [ %i.ay, %fts3SegmentMaxLevel.exit ], [ %i.e, %bb.a ], [ %i.cw, %.thread115 ]
  call fastcc void @sqlite3Fts3SegReaderFinish(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #57
  ret i32 %.4149
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3PromoteSegments(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.d = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 37, ptr noundef %i.a, ptr noundef null) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i64 %1, 1024
  %i.g = shl nsw i64 %i.f, 10
  %i.h = or disjoint i64 %i.g, 1023               ; 2 uses
  %i.i = mul nsw i64 %2, 3
  %i.j = sdiv i64 %i.i, 2
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !885  ; 20 uses
  %i.l = add nsw i64 %1, 1                        ; 2 uses
  %i.m = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.k, i32 noundef 0), !inline_history !1132
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %sqlite3_bind_int64.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !689  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 2 uses
  %i.r = load i16, ptr %i.q, align 4, !tbaa !682
  %i.s = and i16 %i.r, -28672
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.p, i64 noundef %i.l), !inline_history !1132
  br label %sqlite3VdbeMemSetInt64.exit.i

bb.e:                                             ; preds = %bb.c
  store i64 %i.l, ptr %i.p, align 8, !tbaa !729
  store i16 4, ptr %i.q, align 4, !tbaa !682
  br label %sqlite3VdbeMemSetInt64.exit.i

sqlite3VdbeMemSetInt64.exit.i:                    ; preds = %bb.e, %bb.d
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !675
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !590  ; 2 uses
  %.not.i8.i = icmp eq ptr %i.v, null
  br i1 %.not.i8.i, label %sqlite3_bind_int64.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  tail call void %i.w(ptr noundef nonnull %i.v) #57, !inline_history !1133
  br label %sqlite3_bind_int64.exit

sqlite3_bind_int64.exit:                          ; preds = %bb.b, %sqlite3VdbeMemSetInt64.exit.i, %bb.f
  %i.x = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.k, i32 noundef 1), !inline_history !1132
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %sqlite3_bind_int64.exit34

bb.g:                                             ; preds = %sqlite3_bind_int64.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !689 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 76 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !682
  %i.ae = and i16 %i.ad, -28672
  %.not.i.i31 = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ab, i64 noundef %i.h), !inline_history !1132
  br label %sqlite3VdbeMemSetInt64.exit.i32

bb.i:                                             ; preds = %bb.g
  store i64 %i.h, ptr %i.ab, align 8, !tbaa !729
  store i16 4, ptr %i.ac, align 4, !tbaa !682
  br label %sqlite3VdbeMemSetInt64.exit.i32

sqlite3VdbeMemSetInt64.exit.i32:                  ; preds = %bb.i, %bb.h
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !675
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !590 ; 2 uses
  %.not.i8.i33 = icmp eq ptr %i.ah, null
  br i1 %.not.i8.i33, label %sqlite3_bind_int64.exit34, label %bb.j

bb.j:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i32
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  tail call void %i.ai(ptr noundef nonnull %i.ah) #57, !inline_history !1133
  br label %sqlite3_bind_int64.exit34

sqlite3_bind_int64.exit34:                        ; preds = %sqlite3_bind_int64.exit, %sqlite3VdbeMemSetInt64.exit.i32, %bb.j
  %i.aj = tail call i32 @sqlite3_step(ptr noundef %i.k)
  %i.ak = icmp eq i32 %i.aj, 100
  br i1 %i.ak, label %.lr.ph, label %fts3ReadEndBlockField.exit._crit_edge.thread

bb.k:                                             ; preds = %fts3ReadEndBlockField.exit
  %i.al = tail call i32 @sqlite3_step(ptr noundef %i.k)
  %i.am = icmp eq i32 %i.al, 100
  br i1 %i.am, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %sqlite3_bind_int64.exit34, %bb.k
  %i.an = tail call ptr @sqlite3_column_text(ptr noundef %i.k, i32 noundef 2), !inline_history !6223 ; 6 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !729
  %i.ap = add i8 %i.ao, -48
  %or.cond42.i = icmp ult i8 %i.ap, 10
  br i1 %or.cond42.i, label %.lr.ph.i, label %.critedge.i.preheader

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !729
  %i.as = add i8 %i.ar, -48
  %or.cond.i = icmp ult i8 %i.as, 10
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.preheader, !llvm.loop !510

.critedge.i.preheader:                            ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv54.i.ph = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.preheader, %bb.l
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %bb.l ], [ %indvars.iv54.i.ph, %.critedge.i.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv54.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !729
  switch i8 %i.au, label %.loopexit.i [
    i8 32, label %bb.l
    i8 45, label %bb.m
  ]

bb.l:                                             ; preds = %.critedge.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1
  br label %.critedge.i, !llvm.loop !511

bb.m:                                             ; preds = %.critedge.i
  %i.av = shl i64 %indvars.iv54.i, 32
  %sext.i = add i64 %i.av, 4294967296
  %.phi.trans.insert.i = ashr exact i64 %sext.i, 32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.critedge.i, %bb.m
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %bb.m ], [ %indvars.iv54.i, %.critedge.i ] ; 2 uses
  %.032.i = phi i64 [ -1, %bb.m ], [ 1, %.critedge.i ]
  %3 = getelementptr inbounds i8, ptr %i.an, i64 %.pre-phi.i
  %4 = load i8, ptr %3, align 1, !tbaa !729       ; 2 uses
  %i.aw = add i8 %4, -48
  %or.cond4046.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond4046.i, label %.lr.ph49.i, label %.thread

.lr.ph49.i:                                       ; preds = %.loopexit.i, %.lr.ph49.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %.lr.ph49.i ], [ %.pre-phi.i, %.loopexit.i ]
  %i.ax = phi i8 [ %i.bd, %.lr.ph49.i ], [ %4, %.loopexit.i ]
  %.148.i = phi i64 [ %i.bb, %.lr.ph49.i ], [ 0, %.loopexit.i ]
  %.fr.i = freeze i8 %i.ax
  %i.ay = zext i8 %.fr.i to i64
  %i.az = mul i64 %.148.i, 10
  %i.ba = add i64 %i.az, -48
  %i.bb = add i64 %i.ba, %i.ay                    ; 3 uses
  %indvars.iv.next58.i = add nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.an, i64 %indvars.iv.next58.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !729 ; 2 uses
  %i.be = add i8 %i.bd, -48
  %or.cond40.i = icmp ult i8 %i.be, 10
  br i1 %or.cond40.i, label %.lr.ph49.i, label %fts3ReadEndBlockField.exit, !llvm.loop !512

.thread:                                          ; preds = %.loopexit.i, %.lr.ph
  %i.bf = tail call i32 @sqlite3_reset(ptr noundef %i.k)
  br label %bb.aq

fts3ReadEndBlockField.exit:                       ; preds = %.lr.ph49.i
  %i.bg = icmp eq i64 %i.bb, -9223372036854775808
  %spec.select.i = select i1 %i.bg, i64 1, i64 %.032.i
  %i.bh = mul nsw i64 %spec.select.i, %i.bb       ; 2 uses
  %i.bi = icmp slt i64 %i.bh, 1
  %i.bj = icmp sgt i64 %i.bh, %i.j
  %or.cond = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond, label %fts3ReadEndBlockField.exit._crit_edge.thread, label %bb.k

fts3ReadEndBlockField.exit._crit_edge.thread:     ; preds = %fts3ReadEndBlockField.exit, %sqlite3_bind_int64.exit34
  %i.bk = tail call i32 @sqlite3_reset(ptr noundef %i.k)
  br label %bb.aq

bb.n:                                             ; preds = %bb.k
  %i.bl = tail call i32 @sqlite3_reset(ptr noundef %i.k) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #57
  store ptr null, ptr %i.b, align 8, !tbaa !885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #57
  store ptr null, ptr %i.c, align 8, !tbaa !885
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %.thread64

bb.o:                                             ; preds = %bb.n
  %i.bn = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 38, ptr noundef %i.b, ptr noundef null) ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.p, label %.thread64

bb.p:                                             ; preds = %bb.o
  %i.bp = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 39, ptr noundef %i.c, ptr noundef null) ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %.thread64

bb.q:                                             ; preds = %bb.p
  %i.br = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.k, i32 noundef 0), !inline_history !1132
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.r, label %sqlite3_bind_int64.exit38

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !689 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !682
  %i.bx = and i16 %i.bw, -28672
  %.not.i.i35 = icmp eq i16 %i.bx, 0
  br i1 %.not.i.i35, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.bu, i64 noundef %1), !inline_history !1132
  br label %sqlite3VdbeMemSetInt64.exit.i36

bb.t:                                             ; preds = %bb.r
  store i64 %1, ptr %i.bu, align 8, !tbaa !729
  store i16 4, ptr %i.bv, align 4, !tbaa !682
  br label %sqlite3VdbeMemSetInt64.exit.i36

sqlite3VdbeMemSetInt64.exit.i36:                  ; preds = %bb.t, %bb.s
  %i.by = load ptr, ptr %i.k, align 8, !tbaa !675
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !590 ; 2 uses
  %.not.i8.i37 = icmp eq ptr %i.ca, null
  br i1 %.not.i8.i37, label %sqlite3_bind_int64.exit38, label %bb.u

bb.u:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i36
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  tail call void %i.cb(ptr noundef nonnull %i.ca) #57, !inline_history !1133
  br label %sqlite3_bind_int64.exit38

sqlite3_bind_int64.exit38:                        ; preds = %bb.q, %sqlite3VdbeMemSetInt64.exit.i36, %bb.u
  %i.cc = load ptr, ptr %i.b, align 8             ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %sqlite3_bind_int.exit46, %sqlite3_bind_int64.exit38
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3_bind_int.exit46 ], [ 0, %sqlite3_bind_int64.exit38 ] ; 3 uses
  %i.ce = tail call i32 @sqlite3_step(ptr noundef %i.k)
  %i.cf = icmp eq i32 %i.ce, 100
  br i1 %i.cf, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cg = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.cc, i32 noundef 0), !inline_history !2796
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.x, label %sqlite3_bind_int.exit

bb.x:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !689 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 20 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !682
  %i.cl = and i16 %i.ck, -28672
  %.not.i.i.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ci, i64 noundef %indvars.iv), !inline_history !2796
  br label %sqlite3VdbeMemSetInt64.exit.i.i

bb.z:                                             ; preds = %bb.x
  store i64 %indvars.iv, ptr %i.ci, align 8, !tbaa !729
  store i16 4, ptr %i.cj, align 4, !tbaa !682
  br label %sqlite3VdbeMemSetInt64.exit.i.i

sqlite3VdbeMemSetInt64.exit.i.i:                  ; preds = %bb.z, %bb.y
  %i.cm = load ptr, ptr %i.cc, align 8, !tbaa !675
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !590 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i8.i.i, label %sqlite3_bind_int.exit, label %bb.aa

bb.aa:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  tail call void %i.cp(ptr noundef nonnull %i.co) #57, !inline_history !2797
  br label %sqlite3_bind_int.exit

sqlite3_bind_int.exit:                            ; preds = %bb.w, %sqlite3VdbeMemSetInt64.exit.i.i, %bb.aa
  %i.cq = tail call i32 @sqlite3_column_int(ptr noundef %i.k, i32 noundef 0)
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.cc, i32 noundef 1), !inline_history !2796
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ab, label %sqlite3_bind_int.exit42

bb.ab:                                            ; preds = %sqlite3_bind_int.exit
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !689 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 76 ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 4, !tbaa !682
  %i.cy = and i16 %i.cx, -28672
  %.not.i.i.i39 = icmp eq i16 %i.cy, 0
  br i1 %.not.i.i.i39, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.cv, i64 noundef %i.cr), !inline_history !2796
  br label %sqlite3VdbeMemSetInt64.exit.i.i40

bb.ad:                                            ; preds = %bb.ab
  store i64 %i.cr, ptr %i.cv, align 8, !tbaa !729
  store i16 4, ptr %i.cw, align 4, !tbaa !682
  br label %sqlite3VdbeMemSetInt64.exit.i.i40

sqlite3VdbeMemSetInt64.exit.i.i40:                ; preds = %bb.ad, %bb.ac
  %i.cz = load ptr, ptr %i.cc, align 8, !tbaa !675
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !590 ; 2 uses
  %.not.i8.i.i41 = icmp eq ptr %i.db, null
  br i1 %.not.i8.i.i41, label %sqlite3_bind_int.exit42, label %bb.ae

bb.ae:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i40
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  tail call void %i.dc(ptr noundef nonnull %i.db) #57, !inline_history !2797
  br label %sqlite3_bind_int.exit42

sqlite3_bind_int.exit42:                          ; preds = %sqlite3_bind_int.exit, %sqlite3VdbeMemSetInt64.exit.i.i40, %bb.ae
  %i.dd = tail call i32 @sqlite3_column_int(ptr noundef %i.k, i32 noundef 1)
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.cc, i32 noundef 2), !inline_history !2796
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.af, label %sqlite3_bind_int.exit46

bb.af:                                            ; preds = %sqlite3_bind_int.exit42
  %i.dh = load ptr, ptr %i.cd, align 8, !tbaa !689 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 112 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 132 ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 4, !tbaa !682
  %i.dl = and i16 %i.dk, -28672
  %.not.i.i.i43 = icmp eq i16 %i.dl, 0
  br i1 %.not.i.i.i43, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.di, i64 noundef %i.de), !inline_history !2796
  br label %sqlite3VdbeMemSetInt64.exit.i.i44

bb.ah:                                            ; preds = %bb.af
  store i64 %i.de, ptr %i.di, align 8, !tbaa !729
  store i16 4, ptr %i.dj, align 4, !tbaa !682
  br label %sqlite3VdbeMemSetInt64.exit.i.i44

sqlite3VdbeMemSetInt64.exit.i.i44:                ; preds = %bb.ah, %bb.ag
  %i.dm = load ptr, ptr %i.cc, align 8, !tbaa !675
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !590 ; 2 uses
  %.not.i8.i.i45 = icmp eq ptr %i.do, null
  br i1 %.not.i8.i.i45, label %sqlite3_bind_int.exit46, label %bb.ai

bb.ai:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i44
end_hunk_6
begin_hunk_7_@sqlite3Fts3Incrmerge:bb.a
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bt, %bb.bs
  %.pre-phi.i.i = phi i64 [ %i.lp, %bb.bt ], [ 0, %bb.bs ]
  %i.lq = getelementptr inbounds i8, ptr %i.ll, i64 %.pre-phi.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.lq, i8 0, i64 20, i1 false)
  br label %sqlite3Fts3SegReaderNew.exit.i

bb.bu:                                            ; preds = %bb.br
  %i.lr = add nsw i64 %i.ku, -1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !2652
  br label %sqlite3Fts3SegReaderNew.exit.i

sqlite3Fts3SegReaderNew.exit.i:                   ; preds = %bb.bu, %._crit_edge.i.i
  store ptr %i.lg, ptr %i.la, align 8, !tbaa !2635
  %i.lt = load i32, ptr %i.bc, align 8, !tbaa !2632
  %i.lu = add nsw i32 %i.lt, 1
  store i32 %i.lu, ptr %i.bc, align 8, !tbaa !2632
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i351, 1 ; 2 uses
  %i.lv = call i32 @sqlite3_step(ptr noundef %i.kh), !inline_history !6273
  %i.lw = icmp ne i32 %i.lv, 100
  %i.lx = icmp samesign uge i64 %indvars.iv.next.i, %i.ka
  %or.cond.not.i = select i1 %i.lw, i1 true, i1 %i.lx
  br i1 %or.cond.not.i, label %thread-pre-split, label %.lr.ph, !llvm.loop !6277

.critedge.i144:                                   ; preds = %bb.bo, %bb.bq, %sqlite3_malloc64.exit.i.i
  %.032.i.ph.i = phi i32 [ 7, %bb.bq ], [ 7, %sqlite3_malloc64.exit.i.i ], [ 267, %bb.bo ]
  %i.ly = load i32, ptr %i.bc, align 8, !tbaa !2632
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.bc, align 8, !tbaa !2632
  %i.ma = call i32 @sqlite3_reset(ptr noundef %i.kh), !inline_history !6273 ; 0 uses
  br label %thread-pre-split.thread560

thread-pre-split.thread560:                       ; preds = %sqlite3_malloc64.exit.thread.i, %bb.bi, %sqlite3_malloc64.exit.i, %.critedge.i144
  %.3.i.ph = phi i32 [ %.032.i.ph.i, %.critedge.i144 ], [ 7, %sqlite3_malloc64.exit.i ], [ %i.kf, %bb.bi ], [ 7, %sqlite3_malloc64.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #57
  store i32 %.3.i.ph, ptr %i.n, align 4, !tbaa !566
  br label %.thread274

thread-pre-split:                                 ; preds = %sqlite3Fts3SegReaderNew.exit.i, %sqlite3_bind_int64.exit.i143
  %i.mb = call i32 @sqlite3_reset(ptr noundef %i.kh), !inline_history !6273 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #57
  store i32 %i.mb, ptr %i.n, align 4, !tbaa !566
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.bv, label %.thread274

bb.bv:                                            ; preds = %thread-pre-split
  %i.md = load i32, ptr %i.bc, align 8, !tbaa !2632
  %i.me = icmp eq i32 %i.md, %i.gl
  br i1 %i.me, label %bb.bw, label %.thread274

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.t, ptr %i.bd, align 8, !tbaa !2613
  %i.mf = load ptr, ptr %i.t, align 8, !tbaa !2614
  %i.mg = load i32, ptr %i.be, align 8, !tbaa !2615
  %i.mh = call fastcc i32 @fts3SegReaderStart(ptr noundef %0, ptr noundef nonnull %i.u, ptr noundef %i.mf, i32 noundef %i.mg), !inline_history !474 ; 3 uses
  store i32 %i.mh, ptr %i.n, align 4, !tbaa !566
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.bx, label %.thread274

bb.bx:                                            ; preds = %bb.bw
  %i.mj = call fastcc i32 @sqlite3Fts3SegReaderStep(ptr noundef %0, ptr noundef nonnull %i.u) ; 4 uses
  store i32 %i.mj, ptr %i.n, align 4, !tbaa !566
  %.not118 = icmp eq i32 %i.mj, 0
  switch i32 %i.mj, label %bb.iy [
    i32 100, label %bb.by
    i32 0, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %i.mk = icmp sgt i32 %.0229, 0
  %or.cond6 = select i1 %.193, i1 %i.mk, i1 false
  br i1 %or.cond6, label %bb.bz, label %bb.el

bb.bz:                                            ; preds = %bb.by
  %i.ml = load ptr, ptr %i.bz, align 8, !tbaa !2670 ; 2 uses
  %i.mm = load i32, ptr %i.ca, align 8, !tbaa !2669 ; 3 uses
  %i.mn = add nsw i32 %.0229, -1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #57
  store ptr null, ptr %i.e, align 8, !tbaa !885
  %i.mo = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 32, ptr noundef %i.e, ptr noundef null), !inline_history !6278 ; 2 uses
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %bb.ca, label %fts3IncrmergeLoad.exit

bb.ca:                                            ; preds = %bb.bz
  %i.mq = load ptr, ptr %i.e, align 8, !tbaa !885 ; 18 uses
  %i.mr = add nuw nsw i64 %.3104, 1               ; 2 uses
  %i.ms = call fastcc i32 @vdbeUnbind(ptr noundef %i.mq, i32 noundef 0), !inline_history !6279
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %bb.cb, label %sqlite3_bind_int64.exit.i150

bb.cb:                                            ; preds = %bb.ca
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 128
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !689 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 20 ; 2 uses
  %i.mx = load i16, ptr %i.mw, align 4, !tbaa !682
  %i.my = and i16 %i.mx, -28672
  %.not.i.i.i168 = icmp eq i16 %i.my, 0
  br i1 %.not.i.i.i168, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.mv, i64 noundef %i.mr), !inline_history !6279
  br label %sqlite3VdbeMemSetInt64.exit.i.i169

bb.cd:                                            ; preds = %bb.cb
  store i64 %i.mr, ptr %i.mv, align 8, !tbaa !729
  store i16 4, ptr %i.mw, align 4, !tbaa !682
  br label %sqlite3VdbeMemSetInt64.exit.i.i169

sqlite3VdbeMemSetInt64.exit.i.i169:               ; preds = %bb.cd, %bb.cc
  %i.mz = load ptr, ptr %i.mq, align 8, !tbaa !675
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !590 ; 2 uses
  %.not.i8.i.i170 = icmp eq ptr %i.nb, null
  br i1 %.not.i8.i.i170, label %sqlite3_bind_int64.exit.i150, label %bb.ce

bb.ce:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i169
  %i.nc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  call void %i.nc(ptr noundef nonnull %i.nb) #57, !inline_history !6280
  br label %sqlite3_bind_int64.exit.i150

sqlite3_bind_int64.exit.i150:                     ; preds = %bb.ce, %sqlite3VdbeMemSetInt64.exit.i.i169, %bb.ca
  %i.nd = zext nneg i32 %i.mn to i64              ; 2 uses
  %i.ne = call fastcc i32 @vdbeUnbind(ptr noundef %i.mq, i32 noundef 1), !inline_history !6281
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %bb.cf, label %sqlite3_bind_int.exit.i151

bb.cf:                                            ; preds = %sqlite3_bind_int64.exit.i150
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mq, i64 128
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !689 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 56 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 76 ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 4, !tbaa !682
  %i.nl = and i16 %i.nk, -28672
  %.not.i.i.i.i165 = icmp eq i16 %i.nl, 0
  br i1 %.not.i.i.i.i165, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ni, i64 noundef %i.nd), !inline_history !6281
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i166

bb.ch:                                            ; preds = %bb.cf
  store i64 %i.nd, ptr %i.ni, align 8, !tbaa !729
  store i16 4, ptr %i.nj, align 4, !tbaa !682
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i166

sqlite3VdbeMemSetInt64.exit.i.i.i166:             ; preds = %bb.ch, %bb.cg
  %i.nm = load ptr, ptr %i.mq, align 8, !tbaa !675
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !590 ; 2 uses
  %.not.i8.i.i.i167 = icmp eq ptr %i.no, null
  br i1 %.not.i8.i.i.i167, label %sqlite3_bind_int.exit.i151, label %bb.ci

bb.ci:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i.i166
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  call void %i.np(ptr noundef nonnull %i.no) #57, !inline_history !6282
  br label %sqlite3_bind_int.exit.i151

sqlite3_bind_int.exit.i151:                       ; preds = %bb.ci, %sqlite3VdbeMemSetInt64.exit.i.i.i166, %sqlite3_bind_int64.exit.i150
  %i.nq = call i32 @sqlite3_step(ptr noundef %i.mq), !inline_history !6278
  %i.nr = icmp eq i32 %i.nq, 100
  br i1 %i.nr, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %sqlite3_bind_int.exit.i151
  %i.ns = call i64 @sqlite3_column_int64(ptr noundef %i.mq, i32 noundef 1), !inline_history !6278 ; 8 uses
  %i.nt = call i64 @sqlite3_column_int64(ptr noundef %i.mq, i32 noundef 2), !inline_history !6278
  %i.nu = call ptr @sqlite3_column_text(ptr noundef %i.mq, i32 noundef 3), !inline_history !6283 ; 6 uses
  %.not.i.i152 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i152, label %fts3ReadEndBlockField.exitthread-pre-split.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.cj
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !729 ; 2 uses
  %i.nw = add i8 %i.nv, -48
  %or.cond42.i.i = icmp ult i8 %i.nw, 10
  br i1 %or.cond42.i.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %i.nx = phi i8 [ %i.od, %.lr.ph.i.i ], [ %i.nv, %.preheader.i.i ]
  %.044.i.i = phi i64 [ %i.ob, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %i.ny = zext nneg i8 %i.nx to i64
  %i.nz = mul i64 %.044.i.i, 10
  %i.oa = add nsw i64 %i.ny, -48
  %i.ob = add i64 %i.oa, %i.nz                    ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 %indvars.iv.next.i.i
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !729 ; 2 uses
  %i.oe = add i8 %i.od, -48
  %or.cond.i.i = icmp ult i8 %i.oe, 10
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !510

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.034.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.ob, %.lr.ph.i.i ]
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.critedge.i.i
  %indvars.iv54.i.i = phi i64 [ %indvars.iv.next55.i.i, %bb.cl ], [ %.034.lcssa.i.i, %.critedge.i.i ] ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nu, i64 %indvars.iv54.i.i
  %i.og = load i8, ptr %i.of, align 1, !tbaa !729
  switch i8 %i.og, label %.loopexit.i.i [
    i8 32, label %bb.cl
    i8 45, label %bb.cm
  ]

bb.cl:                                            ; preds = %bb.ck
  %indvars.iv.next55.i.i = add nuw nsw i64 %indvars.iv54.i.i, 1
  br label %bb.ck, !llvm.loop !511

bb.cm:                                            ; preds = %bb.ck
  %i.oh = shl i64 %indvars.iv54.i.i, 32
  %sext.i.i = add i64 %i.oh, 4294967296
  %.phi.trans.insert.i.i.a = ashr exact i64 %sext.i.i, 32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ck, %bb.cm
  %.pre-phi.i.i153 = phi i64 [ %.phi.trans.insert.i.i.a, %bb.cm ], [ %indvars.iv54.i.i, %bb.ck ] ; 2 uses
  %.032.i.i = phi i64 [ -1, %bb.cm ], [ 1, %bb.ck ]
  %6 = getelementptr inbounds i8, ptr %i.nu, i64 %.pre-phi.i.i153
  %7 = load i8, ptr %6, align 1, !tbaa !729       ; 2 uses
  %i.oi = add i8 %7, -48
  %or.cond4046.i.i = icmp ult i8 %i.oi, 10
  br i1 %or.cond4046.i.i, label %.lr.ph49.i.i, label %.critedge2.thread.i.i

.lr.ph49.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph49.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %.lr.ph49.i.i ], [ %.pre-phi.i.i153, %.loopexit.i.i ]
  %i.oj = phi i8 [ %i.op, %.lr.ph49.i.i ], [ %7, %.loopexit.i.i ]
  %.148.i.i = phi i64 [ %i.on, %.lr.ph49.i.i ], [ 0, %.loopexit.i.i ]
  %.fr.i.i = freeze i8 %i.oj
  %i.ok = zext i8 %.fr.i.i to i64
  %i.ol = mul i64 %.148.i.i, 10
  %i.om = add i64 %i.ol, -48
  %i.on = add i64 %i.om, %i.ok                    ; 3 uses
  %indvars.iv.next58.i.i = add nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %i.nu, i64 %indvars.iv.next58.i.i
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !729 ; 2 uses
  %i.oq = add i8 %i.op, -48
  %or.cond40.i.i = icmp ult i8 %i.oq, 10
  br i1 %or.cond40.i.i, label %.lr.ph49.i.i, label %.critedge2.i.i, !llvm.loop !512

.critedge2.i.i:                                   ; preds = %.lr.ph49.i.i
  %i.or = icmp eq i64 %i.on, -9223372036854775808
  %spec.select.i.i = select i1 %i.or, i64 1, i64 %.032.i.i
  %i.os = mul nsw i64 %spec.select.i.i, %i.on
  br label %.critedge2.thread.i.i

.critedge2.thread.i.i:                            ; preds = %.critedge2.i.i, %.loopexit.i.i
  %i.ot = phi i64 [ 0, %.loopexit.i.i ], [ %i.os, %.critedge2.i.i ] ; 2 uses
  store i64 %i.ot, ptr %i.cb, align 8, !tbaa !561
  br label %fts3ReadEndBlockField.exit.i

fts3ReadEndBlockField.exitthread-pre-split.i:     ; preds = %bb.cj
  %.pr.i = load i64, ptr %i.cb, align 8, !tbaa !6327
  br label %fts3ReadEndBlockField.exit.i

fts3ReadEndBlockField.exit.i:                     ; preds = %fts3ReadEndBlockField.exitthread-pre-split.i, %.critedge2.thread.i.i
  %i.ou = phi i64 [ %.pr.i, %fts3ReadEndBlockField.exitthread-pre-split.i ], [ %i.ot, %.critedge2.thread.i.i ] ; 3 uses
  %.0160.i = phi i64 [ 0, %fts3ReadEndBlockField.exitthread-pre-split.i ], [ %.0.lcssa.i.i, %.critedge2.thread.i.i ] ; 4 uses
  %i.ov = icmp slt i64 %i.ou, 0
  br i1 %i.ov, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %fts3ReadEndBlockField.exit.i
  %i.ow = sub nsw i64 0, %i.ou
  store i64 %i.ow, ptr %i.cb, align 8, !tbaa !6327
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %fts3ReadEndBlockField.exit.i
  %i.ox = phi i64 [ 1, %bb.cn ], [ %i.ou, %fts3ReadEndBlockField.exit.i ]
  %i.oy = icmp eq i64 %i.ox, 0
  %i.oz = zext i1 %i.oy to i8
  store i8 %i.oz, ptr %i.cc, align 8, !tbaa !6328
  %i.pa = call i32 @sqlite3_column_bytes(ptr noundef %i.mq, i32 noundef 4), !inline_history !6278 ; 4 uses
  %i.pb = call ptr @sqlite3_column_blob(ptr noundef %i.mq, i32 noundef 4), !inline_history !6278 ; 3 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.pd = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !6278 ; 0 uses
  %.not99.i = icmp eq i32 %i.pa, 0
  %i.pe = select i1 %.not99.i, i32 267, i32 7
  br label %fts3IncrmergeLoad.exit

bb.cq:                                            ; preds = %sqlite3_bind_int.exit.i151
  %i.pf = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !6278
  br label %fts3IncrmergeLoad.exit

bb.cr:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #57
  store ptr null, ptr %i.d, align 8, !tbaa !885
  %i.pg = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 34, ptr noundef %i.d, ptr noundef null), !inline_history !6284 ; 2 uses
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %bb.cs, label %.thread178.i

.thread178.i:                                     ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #57
  %i.pi = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !6278 ; 0 uses
  br label %fts3IncrmergeLoad.exit

bb.cs:                                            ; preds = %bb.cr
  %i.pj = load ptr, ptr %i.d, align 8, !tbaa !885 ; 5 uses
  %i.pk = call fastcc i32 @vdbeUnbind(ptr noundef %i.pj, i32 noundef 0), !inline_history !6285
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %bb.ct, label %fts3IsAppendable.exit.i

bb.ct:                                            ; preds = %bb.cs
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 128
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !689 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 20 ; 2 uses
  %i.pp = load i16, ptr %i.po, align 4, !tbaa !682
  %i.pq = and i16 %i.pp, -28672
  %.not.i.i.i103.i = icmp eq i16 %i.pq, 0
  br i1 %.not.i.i.i103.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.pn, i64 noundef %.0160.i), !inline_history !6285
  br label %sqlite3VdbeMemSetInt64.exit.i.i104.i

bb.cv:                                            ; preds = %bb.ct
  store i64 %.0160.i, ptr %i.pn, align 8, !tbaa !729
  store i16 4, ptr %i.po, align 4, !tbaa !682
  br label %sqlite3VdbeMemSetInt64.exit.i.i104.i

sqlite3VdbeMemSetInt64.exit.i.i104.i:             ; preds = %bb.cv, %bb.cu
  %i.pr = load ptr, ptr %i.pj, align 8, !tbaa !675
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !590 ; 2 uses
  %.not.i8.i.i105.i = icmp eq ptr %i.pt, null
  br i1 %.not.i8.i.i105.i, label %fts3IsAppendable.exit.i, label %bb.cw

bb.cw:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i104.i
  %i.pu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !562
  call void %i.pu(ptr noundef nonnull %i.pt) #57, !inline_history !6286
  br label %fts3IsAppendable.exit.i

fts3IsAppendable.exit.i:                          ; preds = %bb.cw, %sqlite3VdbeMemSetInt64.exit.i.i104.i, %bb.cs
  %i.pv = call i32 @sqlite3_step(ptr noundef %i.pj), !inline_history !6284
  %i.pw = icmp eq i32 %i.pv, 100                  ; 2 uses
  %i.px = call i32 @sqlite3_reset(ptr noundef %i.pj), !inline_history !6284 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #57
  %i.py = icmp eq i32 %i.px, 0
  %or.cond.i = select i1 %i.py, i1 %i.pw, i1 false
  br i1 %or.cond.i, label %bb.cx, label %bb.dl

bb.cx:                                            ; preds = %fts3IsAppendable.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #57
  store ptr null, ptr %i.f, align 8, !tbaa !737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #57
  store i32 0, ptr %i.g, align 4, !tbaa !566
  %i.pz = call fastcc i32 @sqlite3Fts3ReadBlock(ptr noundef %0, i64 noundef %i.nt, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g), !inline_history !6278 ; 2 uses
  %i.qa = icmp eq i32 %i.pz, 0
  %.pre214.i = load ptr, ptr %i.f, align 8, !tbaa !737 ; 8 uses
  br i1 %i.qa, label %bb.cy, label %bb.df

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  %i.qb = load i32, ptr %i.g, align 4, !tbaa !566
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i8 0, i64 48, i1 false)
  store ptr %.pre214.i, ptr %3, align 8, !tbaa !2824
  store i32 %i.qb, ptr %i.cd, align 8, !tbaa !2825
  %.not.i106.i = icmp eq ptr %.pre214.i, null
  br i1 %.not.i106.i, label %._crit_edge.i162, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qc = load i8, ptr %.pre214.i, align 1, !tbaa !729
  %.not12.i.i = icmp eq i8 %i.qc, 0
  br i1 %.not12.i.i, label %nodeReaderInit.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cz
  %i.qd = getelementptr inbounds nuw i8, ptr %.pre214.i, i64 1
  %i.qe = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.qd, ptr noundef nonnull %i.ce), !inline_history !6287
  %i.qf = add nsw i32 %i.qe, 1
  br label %nodeReaderInit.exit.i

nodeReaderInit.exit.i:                            ; preds = %.thread.i.i, %bb.cz
  %.sink.i.i = phi i32 [ %i.qf, %.thread.i.i ], [ 1, %bb.cz ]
  store i32 %.sink.i.i, ptr %i.cf, align 4, !tbaa !2826
  %i.qg = call fastcc i32 @nodeReaderNext(ptr noundef nonnull %3), !inline_history !6287 ; 2 uses
  %.pre.i161 = load ptr, ptr %3, align 8
  %i.qh = icmp ne ptr %.pre.i161, null
  %i.qi = icmp eq i32 %i.qg, 0
  %i.qj = select i1 %i.qi, i1 %i.qh, i1 false
  br i1 %i.qj, label %.lr.ph.i164, label %._crit_edge.i162thread-pre-split

.lr.ph.i164:                                      ; preds = %nodeReaderInit.exit.i, %.lr.ph.i164
  %i.qk = call fastcc i32 @nodeReaderNext(ptr noundef %3), !inline_history !6278 ; 2 uses
  %i.ql = icmp eq i32 %i.qk, 0
  %i.qm = load ptr, ptr %3, align 8
  %i.qn = icmp ne ptr %i.qm, null
  %i.qo = select i1 %i.ql, i1 %i.qn, i1 false
  br i1 %i.qo, label %.lr.ph.i164, label %._crit_edge.i162thread-pre-split, !llvm.loop !6288

._crit_edge.i162thread-pre-split:                 ; preds = %.lr.ph.i164, %nodeReaderInit.exit.i
  %storemerge.lcssa.i.ph = phi i32 [ %i.qg, %nodeReaderInit.exit.i ], [ %i.qk, %.lr.ph.i164 ]
  %.pr = load ptr, ptr %i.cg, align 8, !tbaa !2827
  br label %._crit_edge.i162

._crit_edge.i162:                                 ; preds = %._crit_edge.i162thread-pre-split, %bb.cy
  %i.qp = phi ptr [ %.pr, %._crit_edge.i162thread-pre-split ], [ null, %bb.cy ] ; 5 uses
  %storemerge.lcssa.i = phi i32 [ %storemerge.lcssa.i.ph, %._crit_edge.i162thread-pre-split ], [ 0, %bb.cy ]
  %i.qq = load i32, ptr %i.ch, align 8, !tbaa !2828 ; 3 uses
  %i.qr = call i32 @llvm.smin.i32(i32 %i.mm, i32 %i.qq) ; 2 uses
  %i.qs = icmp ne i32 %i.qr, 0
  %i.qt = icmp ne ptr %i.ml, null
  %or.cond.i107.i = and i1 %i.qt, %i.qs
  %i.qu = icmp ne ptr %i.qp, null                 ; 2 uses
  %or.cond3.i.i = and i1 %i.qu, %or.cond.i107.i
  br i1 %or.cond3.i.i, label %fts3TermCmp.exit.thread.i, label %fts3TermCmp.exit.i

fts3TermCmp.exit.thread.i:                        ; preds = %._crit_edge.i162
  %i.qv = sext i32 %i.qr to i64
  %i.qw = call i32 @memcmp(ptr noundef nonnull readonly %i.ml, ptr noundef nonnull readonly %i.qp, i64 noundef %i.qv) #58, !inline_history !6278
  %.fr.i109.i = freeze i32 %i.qw                  ; 2 uses
  %i.qx = icmp eq i32 %.fr.i109.i, 0
  %i.qy = sub nsw i32 %i.mm, %i.qq
  %spec.select.i110.i = select i1 %i.qx, i32 %i.qy, i32 %.fr.i109.i
  %.inv247.i = icmp sgt i32 %spec.select.i110.i, 0
  br label %bb.da

fts3TermCmp.exit.i:                               ; preds = %._crit_edge.i162
  %.inv.i = icmp sgt i32 %i.mm, %i.qq             ; 2 uses
  br i1 %i.qu, label %bb.da, label %nodeReaderRelease.exit.i

bb.da:                                            ; preds = %fts3TermCmp.exit.i, %fts3TermCmp.exit.thread.i
  %.inv249.i = phi i1 [ %.inv247.i, %fts3TermCmp.exit.thread.i ], [ %.inv.i, %fts3TermCmp.exit.i ] ; 3 uses
  %i.qz = load i32, ptr @sqlite3Config, align 8, !tbaa !693
  %.not.i.i111.i = icmp eq i32 %i.qz, 0
  br i1 %.not.i.i111.i, label %bb.de, label %bb.db
end_hunk_7
