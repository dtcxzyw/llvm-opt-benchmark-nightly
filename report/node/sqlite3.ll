Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12434
inline.NumDeleted: 1711
loop-unroll.NumCompletelyUnrolled: 295
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 430
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3GetToken:bb.a
  br label %.loopexit277

bb.p:                                             ; preds = %bb.a
  store i32 111, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.q:                                             ; preds = %bb.a
  store i32 54, ptr %1, align 4, !tbaa !2800
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !2965
  %i.al = icmp eq i8 %i.ak, 61
  %i.am = select i1 %i.al, i64 2, i64 1
  br label %.loopexit277

bb.r:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !2965
  switch i8 %i.ao, label %bb.v [
    i8 61, label %bb.s
    i8 62, label %bb.t
    i8 60, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  store i32 56, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.t:                                             ; preds = %bb.r
  store i32 53, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.u:                                             ; preds = %bb.r
  store i32 105, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.v:                                             ; preds = %bb.r
  store i32 57, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.w:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !2965
  switch i8 %i.aq, label %bb.z [
    i8 61, label %bb.x
    i8 62, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  store i32 58, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.y:                                             ; preds = %bb.w
  store i32 106, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.z:                                             ; preds = %bb.w
  store i32 55, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.aa:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !2965
  %.not263 = icmp eq i8 %i.as, 61
  br i1 %.not263, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 186, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.ac:                                            ; preds = %bb.aa
  store i32 53, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.ad:                                            ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !2965
  %.not262 = icmp eq i8 %i.au, 124
  br i1 %.not262, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 104, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.af:                                            ; preds = %bb.ad
  store i32 112, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.ag:                                            ; preds = %bb.a
  store i32 25, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.ah:                                            ; preds = %bb.a
  store i32 103, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.ai:                                            ; preds = %bb.a
  store i32 115, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

.lr.ph325:                                        ; preds = %.preheader276, %bb.ak
  %i.av = phi i8 [ %i.bd, %bb.ak ], [ %i.f, %.preheader276 ]
  %.4324 = phi i64 [ %i.bb, %bb.ak ], [ 1, %.preheader276 ] ; 2 uses
  %i.aw = icmp eq i8 %i.av, %i.a
  br i1 %i.aw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph325
  %i.ax = add nsw i64 %.4324, 1                   ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !2965
  %i.ba = icmp eq i8 %i.az, %i.a
  br i1 %i.ba, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %.lr.ph325
  %.5 = phi i64 [ %.4324, %.lr.ph325 ], [ %i.ax, %bb.aj ]
  %i.bb = add nsw i64 %.5, 1                      ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !2965 ; 2 uses
  %.not261 = icmp eq i8 %i.bd, 0
  br i1 %.not261, label %._crit_edge, label %.lr.ph325, !llvm.loop !6434

bb.al:                                            ; preds = %bb.aj
  %i.be = icmp eq i8 %i.a, 39
  br i1 %i.be, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 118, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.an:                                            ; preds = %bb.al
  store i32 60, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

._crit_edge:                                      ; preds = %bb.ak, %.preheader276
  %.4.lcssa = phi i64 [ 1, %.preheader276 ], [ %i.bb, %bb.ak ]
  store i32 186, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.ao:                                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !2965
  %i.bh = add i8 %i.bg, -58
  %.not256 = icmp ult i8 %i.bh, -10
  br i1 %.not256, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 142, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.aq:                                            ; preds = %bb.ao, %bb.a
  store i32 156, ptr %1, align 4, !tbaa !2800
  %i.bi = load i8, ptr %0, align 1, !tbaa !2965   ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 48
  br i1 %i.bj, label %bb.ar, label %.preheader427

.preheader427:                                    ; preds = %bb.ar, %bb.as, %bb.aq
  br label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !2965
  switch i8 %i.bl, label %.preheader427 [
    i8 120, label %bb.as
    i8 88, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !2965
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !2965
  %i.br = and i8 %i.bq, 8
  %.not257 = icmp eq i8 %i.br, 0
  br i1 %.not257, label %.preheader427, label %.preheader281

.preheader281:                                    ; preds = %bb.as, %bb.av
  %.6 = phi i64 [ %i.ca, %bb.av ], [ 3, %bb.as ]  ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !2965 ; 3 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !2965
  %i.bx = and i8 %i.bw, 8
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.preheader281
  %i.bz = icmp eq i8 %i.bt, 95
  br i1 %i.bz, label %bb.au, label %.loopexit278

bb.au:                                            ; preds = %bb.at
  store i32 183, ptr %1, align 4, !tbaa !2800
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
  store i32 183, ptr %1, align 4, !tbaa !2800
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ay
  %i.cf = phi i32 [ %i.cb, %bb.aw ], [ 183, %bb.ay ]
  %i.cg = add nuw nsw i64 %.7, 1                  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !2965
  br label %bb.aw

bb.ba:                                            ; preds = %bb.ax
  %i.ch = icmp eq i32 %i.cb, 156
  br i1 %i.ch, label %.sink.split, label %.preheader424

.sink.split:                                      ; preds = %bb.ba, %bb.bc
  %.sink = phi i32 [ 183, %bb.bc ], [ 154, %bb.ba ] ; 2 uses
  %.8.in.ph = phi i64 [ %.8, %bb.bc ], [ %.7, %bb.ba ]
  store i32 %.sink, ptr %1, align 4, !tbaa !2800
  br label %.preheader424

.preheader424:                                    ; preds = %bb.ba, %.sink.split
  %.ph = phi i32 [ %.sink, %.sink.split ], [ %i.cb, %bb.ba ]
  %.8.in.ph425 = phi i64 [ %.8.in.ph, %.sink.split ], [ %.7, %bb.ba ]
  br label %bb.bb

bb.bb:                                            ; preds = %.preheader424, %bb.bb
  %.8.in = phi i64 [ %.8, %bb.bb ], [ %.8.in.ph425, %.preheader424 ]
  %.8 = add nuw nsw i64 %.8.in, 1                 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %.8
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !2965 ; 2 uses
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
  %2 = load i8, ptr %i.co, align 1, !tbaa !2965   ; 4 uses
  switch i8 %2, label %.loopexit278 [
    i8 101, label %bb.bd
    i8 69, label %bb.bd
  ]

bb.bd:                                            ; preds = %.loopexit279, %.loopexit279
  %i.cp = getelementptr i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !2965 ; 2 uses
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
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !2965
  %i.cu = add i8 %i.ct, -58
  %.not259 = icmp ult i8 %i.cu, -10
  br i1 %.not259, label %.loopexit278, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %i.cv = icmp eq i32 %i.cn, 156
  br i1 %i.cv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 154, ptr %1, align 4, !tbaa !2800
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.cw = add nsw i64 %.9, 2
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bm, %bb.bi
  %.10 = phi i64 [ %i.cw, %bb.bi ], [ %i.dc, %bb.bm ] ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %0, i64 %.10
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !2965 ; 3 uses
  %i.cz = add i8 %i.cy, -58
  %i.da = icmp ult i8 %i.cz, -10
  br i1 %i.da, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.db = icmp eq i8 %i.cy, 95
  br i1 %i.db, label %bb.bl, label %.loopexit278

bb.bl:                                            ; preds = %bb.bk
  store i32 183, ptr %1, align 4, !tbaa !2800
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bl
  %i.dc = add nsw i64 %.10, 1
  br label %bb.bj

.loopexit278:                                     ; preds = %bb.at, %bb.bk, %bb.be, %.loopexit279, %bb.bf
  %i.dd = phi i8 [ %i.cy, %bb.bk ], [ %2, %.loopexit279 ], [ %2, %bb.bf ], [ %2, %bb.be ], [ %i.bt, %bb.at ]
  %.11 = phi i64 [ %.10, %bb.bk ], [ %.9, %.loopexit279 ], [ %.9, %bb.bf ], [ %.9, %bb.be ], [ %.6, %bb.at ] ; 2 uses
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !2965
  %i.dh = and i8 %i.dg, 70
  %.not260319 = icmp eq i8 %i.dh, 0
  br i1 %.not260319, label %.loopexit277, label %.lr.ph321

.lr.ph321:                                        ; preds = %.loopexit278
  store i32 186, ptr %1, align 4, !tbaa !2800
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph321, %bb.bn
  %.12320 = phi i64 [ %.11, %.lr.ph321 ], [ %i.di, %bb.bn ]
  %i.di = add nsw i64 %.12320, 1                  ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %0, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !2965
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !2965
  %i.do = and i8 %i.dn, 70
  %.not260 = icmp eq i8 %i.do, 0
  br i1 %.not260, label %.loopexit277, label %bb.bn, !llvm.loop !6435

.lr.ph313:                                        ; preds = %.preheader283, %bb.bo
  %.13312 = phi i64 [ %i.dr, %bb.bo ], [ 1, %.preheader283 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %.13312
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !2965 ; 2 uses
  %.not255 = icmp eq i8 %i.dq, 0
  br i1 %.not255, label %.critedge2, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph313
  %i.dr = add nuw nsw i64 %.13312, 1              ; 2 uses
  %.not254 = icmp eq i8 %i.dq, 93
  br i1 %.not254, label %.critedge2, label %.lr.ph313, !llvm.loop !6436

.critedge2:                                       ; preds = %.lr.ph313, %bb.bo, %.preheader283
  %.13.lcssa = phi i64 [ 1, %.preheader283 ], [ %i.dr, %bb.bo ], [ %.13312, %.lr.ph313 ]
  %i.ds = phi i32 [ 60, %.preheader283 ], [ 60, %bb.bo ], [ 186, %.lr.ph313 ]
  store i32 %i.ds, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.bp:                                            ; preds = %bb.a
  store i32 157, ptr %1, align 4, !tbaa !2800
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %.14 = phi i64 [ 1, %bb.bp ], [ %i.dw, %bb.bq ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %.14
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !2965
  %i.dv = add i8 %i.du, -58
  %.not253 = icmp ult i8 %i.dv, -10
  %i.dw = add nuw nsw i64 %.14, 1
  br i1 %.not253, label %.loopexit277, label %bb.bq, !llvm.loop !6437

bb.br:                                            ; preds = %bb.a, %bb.a
  store i32 157, ptr %1, align 4, !tbaa !2800
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !2965 ; 2 uses
  %.not250301 = icmp eq i8 %i.dy, 0
  br i1 %.not250301, label %.loopexit287.thread363, label %.lr.ph

.lr.ph:                                           ; preds = %bb.br, %bb.by
  %i.dz = phi i8 [ %i.ey, %bb.by ], [ %i.dy, %bb.br ] ; 3 uses
  %.0303 = phi i64 [ %.1, %bb.by ], [ 0, %bb.br ] ; 5 uses
  %.15302 = phi i64 [ %i.ew, %bb.by ], [ 1, %bb.br ] ; 5 uses
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !2965
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
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !2965 ; 3 uses
  %cond = icmp eq i8 %i.ej, 0
  br i1 %cond, label %.loopexit286, label %bb.bu

bb.bu:                                            ; preds = %.preheader285
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !2965
  %i.en = and i8 %i.em, 1
  %i.eo = icmp eq i8 %i.en, 0
  %i.ep = icmp ne i8 %i.ej, 41                    ; 2 uses
  %or.cond9 = and i1 %i.ep, %i.eo
  br i1 %or.cond9, label %.preheader285, label %.critedge5, !llvm.loop !6438

.critedge5:                                       ; preds = %bb.bu
  br i1 %i.ep, label %.loopexit286, label %bb.bv

bb.bv:                                            ; preds = %.critedge5
  %i.eq = add nsw i64 %.16, 2
  br label %.loopexit277

.loopexit286:                                     ; preds = %.preheader285, %.critedge5
  store i32 186, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.bw:                                            ; preds = %bb.bt
  %i.er = icmp eq i8 %i.dz, 58
  br i1 %i.er, label %bb.bx, label %.loopexit287

bb.bx:                                            ; preds = %bb.bw
  %i.es = add nsw i64 %.15302, 1                  ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %0, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !2965
  %i.ev = icmp eq i8 %i.eu, 58
  br i1 %i.ev, label %bb.by, label %.loopexit287

bb.by:                                            ; preds = %bb.bx, %bb.bs
  %.17 = phi i64 [ %.15302, %bb.bs ], [ %i.es, %bb.bx ]
  %.1 = phi i64 [ %i.ee, %bb.bs ], [ %.0303, %bb.bx ] ; 2 uses
  %i.ew = add nsw i64 %.17, 1                     ; 3 uses
  %i.ex = getelementptr inbounds i8, ptr %0, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !2965 ; 2 uses
  %.not250 = icmp eq i8 %i.ey, 0
  br i1 %.not250, label %.loopexit287, label %.lr.ph, !llvm.loop !6439

.loopexit287:                                     ; preds = %bb.by, %bb.bx, %bb.bw
  %.0298.ph = phi i64 [ %.0303, %bb.bw ], [ %.0303, %bb.bx ], [ %.1, %bb.by ]
  %.18.ph = phi i64 [ %.15302, %bb.bw ], [ %.15302, %bb.bx ], [ %i.ew, %bb.by ] ; 2 uses
  %i.ez = icmp eq i64 %.0298.ph, 0
  br i1 %i.ez, label %.loopexit287.thread363, label %.loopexit277

.loopexit287.thread363:                           ; preds = %bb.br, %.loopexit287
  %.18366 = phi i64 [ %.18.ph, %.loopexit287 ], [ 1, %bb.br ]
  store i32 186, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.bz:                                            ; preds = %bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !2965
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @aiClass, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !2965
  %i.ff = icmp ugt i8 %i.fe, 2
  br i1 %i.ff, label %.preheader442, label %.preheader288

.preheader442:                                    ; preds = %bb.ca, %bb.cj, %bb.ck, %bb.a, %bb.a, %bb.cc, %bb.bz
  %.25.ph = phi i64 [ %i.fm, %bb.ca ], [ 1, %bb.ck ], [ 1, %bb.a ], [ 1, %bb.cc ], [ 1, %bb.bz ], [ 1, %bb.cj ], [ 1, %bb.a ]
  br label %bb.co

.preheader288:                                    ; preds = %bb.bz, %.preheader288
  %.19 = phi i64 [ %i.fm, %.preheader288 ], [ 2, %bb.bz ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %.19
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !2965
  %i.fi = zext i8 %i.fh to i64                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr @aiClass, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !2965
  %i.fl = icmp ult i8 %i.fk, 3
  %i.fm = add nuw nsw i64 %.19, 1                 ; 2 uses
  br i1 %i.fl, label %.preheader288, label %bb.ca, !llvm.loop !6440

bb.ca:                                            ; preds = %.preheader288
  %i.fn = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.fi
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !2965
  %i.fp = and i8 %i.fo, 70
  %.not248 = icmp eq i8 %i.fp, 0
  br i1 %.not248, label %bb.cb, label %.preheader442

bb.cb:                                            ; preds = %bb.ca
  store i32 60, ptr %1, align 4, !tbaa !2800
  %i.fq = tail call fastcc i64 @keywordCode(ptr noundef nonnull %0, i64 noundef %.19, ptr noundef %1) ; 0 uses
  br label %.loopexit277

bb.cc:                                            ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !2965
  %i.ft = icmp eq i8 %i.fs, 39
  br i1 %i.ft, label %bb.cd, label %.preheader442

bb.cd:                                            ; preds = %bb.cc
  store i32 155, ptr %1, align 4, !tbaa !2800
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %bb.cd
  %.20 = phi i64 [ 2, %bb.cd ], [ %i.ga, %bb.ce ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 %.20
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !2965 ; 2 uses
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !2965
  %i.fz = and i8 %i.fy, 8
  %.not = icmp eq i8 %i.fz, 0
  %i.ga = add nuw nsw i64 %.20, 1
  br i1 %.not, label %bb.cf, label %bb.ce, !llvm.loop !6441

bb.cf:                                            ; preds = %bb.ce
  %.not243 = icmp eq i8 %i.fv, 39
  %i.gb = and i64 %.20, 1
  %.not244 = icmp eq i64 %i.gb, 0
  %or.cond270 = and i1 %.not243, %.not244
  br i1 %or.cond270, label %.critedge7, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 186, ptr %1, align 4, !tbaa !2800
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %bb.cg
  %.21 = phi i64 [ %.20, %bb.cg ], [ %i.ge, %bb.ci ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 %.21
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !2965
  switch i8 %i.gd, label %bb.ci [
    i8 0, label %.critedge7
    i8 39, label %.critedge7
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.ge = add nuw nsw i64 %.21, 1
  br label %bb.ch, !llvm.loop !6442

.critedge7:                                       ; preds = %bb.ch, %bb.ch, %bb.cf
  %.22 = phi i64 [ %.20, %bb.cf ], [ %.21, %bb.ch ], [ %.21, %bb.ch ] ; 2 uses
  %3 = getelementptr inbounds i8, ptr %0, i64 %.22
  %4 = load i8, ptr %3, align 1, !tbaa !2965
  %.not247 = icmp ne i8 %4, 0
  %5 = zext i1 %.not247 to i64
  %spec.select271 = add nsw i64 %.22, %5
  br label %.loopexit277

bb.cj:                                            ; preds = %bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !2965
  %i.gh = icmp eq i8 %i.gg, -69
  br i1 %i.gh, label %bb.ck, label %.preheader442

bb.ck:                                            ; preds = %bb.cj
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !2965
  %i.gk = icmp eq i8 %i.gj, -65
  br i1 %i.gk, label %bb.cl, label %.preheader442

bb.cl:                                            ; preds = %bb.ck
  store i32 184, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.cm:                                            ; preds = %bb.a
  store i32 186, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.cn:                                            ; preds = %bb.a
  store i32 186, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

bb.co:                                            ; preds = %.preheader442, %bb.co
  %.25 = phi i64 [ %i.gr, %bb.co ], [ %.25.ph, %.preheader442 ] ; 3 uses
  %i.gl = getelementptr inbounds i8, ptr %0, i64 %.25
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !2965
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !2965
  %i.gq = and i8 %i.gp, 70
  %.not249 = icmp eq i8 %i.gq, 0
  %i.gr = add nsw i64 %.25, 1
  br i1 %.not249, label %bb.cp, label %bb.co, !llvm.loop !6443

bb.cp:                                            ; preds = %bb.co
  store i32 60, ptr %1, align 4, !tbaa !2800
  br label %.loopexit277

.loopexit277:                                     ; preds = %bb.bq, %bb.bn, %.loopexit286, %bb.bv, %.loopexit278, %.loopexit287, %.loopexit287.thread363, %bb.am, %bb.an, %._crit_edge, %bb.cp, %bb.cn, %bb.cm, %bb.cl, %.critedge7, %bb.cb, %.critedge2, %bb.ap, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %.loopexit, %bb.o, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b
  %.1225 = phi i64 [ 1, %bb.cn ], [ %.0220, %bb.b ], [ %.1221, %bb.e ], [ %i.v, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.o ], [ %i.ai, %.loopexit ], [ 1, %bb.p ], [ %i.am, %bb.q ], [ 2, %bb.s ], [ 2, %bb.t ], [ 2, %bb.u ], [ 1, %bb.v ], [ 2, %bb.x ], [ 2, %bb.y ], [ 1, %bb.z ], [ 1, %bb.ab ], [ 2, %bb.ac ], [ 1, %bb.ae ], [ 2, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 0, %bb.cm ], [ %.4.lcssa, %._crit_edge ], [ 1, %bb.ap ], [ %.13.lcssa, %.critedge2 ], [ %.18.ph, %.loopexit287 ], [ %i.di, %bb.bn ], [ %.25, %bb.cp ], [ %.19, %bb.cb ], [ %spec.select271, %.critedge7 ], [ 3, %bb.cl ], [ %i.ax, %bb.am ], [ %i.ax, %bb.an ], [ %.18366, %.loopexit287.thread363 ], [ %.11, %.loopexit278 ], [ %i.eq, %bb.bv ], [ %i.eh, %.loopexit286 ], [ %.14, %bb.bq ]
  ret i64 %.1225
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3RunParser(ptr noundef initializes((24, 28), (336, 344)) %0, ptr noundef %1) unnamed_addr #0 !guid !6456 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  %i.f = load ptr, ptr %0, align 8, !tbaa !3226   ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !2800
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.k = load i32, ptr %i.j, align 8, !tbaa !3137
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  store atomic volatile i32 0, ptr %i.m monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  store i32 0, ptr %i.n, align 8, !tbaa !3009
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  store ptr %1, ptr %i.o, align 8, !tbaa !3032
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  store ptr %0, ptr %i.p, align 8, !tbaa !3523
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 13 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !6457
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 1208
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !6458
  store ptr %i.q, ptr %4, align 8, !tbaa !3524
  store i16 0, ptr %i.q, align 8, !tbaa !3526
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 34
  store i16 0, ptr %i.u, align 2, !tbaa !3527
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2998
  store ptr %0, ptr %i.v, align 8, !tbaa !2998
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 197
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288
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
  store i32 18, ptr %i.n, align 8, !tbaa !3009
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3010
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !3010
  br label %.loopexit

.lr.ph:                                           ; preds = %.outer, %.backedge
  %i.aj = phi i64 [ %i.at, %.backedge ], [ %i.ae, %.outer ] ; 2 uses
  %i.ak = phi i64 [ %i.as, %.backedge ], [ %i.ad, %.outer ] ; 12 uses
  %.0179 = phi ptr [ %.0.be, %.backedge ], [ %.0.ph, %.outer ] ; 16 uses
  %i.al = load i32, ptr %i.e, align 4, !tbaa !2800 ; 5 uses
  %i.am = icmp sgt i32 %i.al, 164
  br i1 %i.am, label %bb.d, label %.loopexit142

bb.d:                                             ; preds = %.lr.ph
  %i.an = load atomic volatile i32, ptr %i.x monotonic, align 8
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 9, ptr %i.n, align 8, !tbaa !3009
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3010
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !3010
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ar = icmp eq i32 %i.al, 184
  br i1 %i.ar, label %.backedge, label %bb.g

.backedge:                                        ; preds = %bb.ad, %bb.ae, %bb.f
  %.0.be = getelementptr inbounds i8, ptr %.0179, i64 %i.ak ; 3 uses
  %i.as = call fastcc i64 @sqlite3GetToken(ptr noundef %.0.be, ptr noundef %i.e) ; 2 uses
  %i.at = sub nsw i64 %i.aj, %i.as                ; 2 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %.outer._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.av = load i8, ptr %.0179, align 1, !tbaa !2965
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  switch i32 %.082.ph, label %bb.i [
    i32 1, label %.loopexit142.sink.split
    i32 0, label %.loopexit
  ]

bb.i:                                             ; preds = %bb.h
  br label %.loopexit142.sink.split

bb.j:                                             ; preds = %bb.g
  switch i32 %i.al, label %.thread [
    i32 165, label %bb.k
    i32 166, label %bb.s
    i32 167, label %bb.x
    i32 185, label %bb.ad
    i32 183, label %.loopexit142
  ]

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.0179, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %i.ax, %bb.k ], [ %i.az, %bb.l ] ; 2 uses
  %i.ay = call fastcc i64 @sqlite3GetToken(ptr noundef %.0.i.i, ptr noundef %i.d)
  %i.az = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.d, align 4, !tbaa !2800 ; 4 uses
  %i.bb = and i32 %i.ba, -2
  %i.bc = icmp eq i32 %i.bb, 184
  br i1 %i.bc, label %bb.l, label %bb.m, !llvm.loop !6445

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
  store i32 0, ptr %i.hf, align 4, !tbaa !2800
  %i.hk = load i32, ptr %i.hi, align 8, !tbaa !4034
  store i32 %i.hk, ptr %i.hg, align 4, !tbaa !2800
  br label %bb.aq

thread-pre-split.i.i:                             ; preds = %bb.ao
  %.pr.i.i = load i32, ptr %i.hf, align 4, !tbaa !2800
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split.i.i, %bb.ap
  %i.hl = phi i32 [ %.pr.i.i, %thread-pre-split.i.i ], [ 0, %bb.ap ] ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 88 ; 4 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !4020
  %i.ho = icmp ult i32 %i.hl, %i.hn
  br i1 %i.ho, label %bb.ar, label %.lr.ph115.preheader.i

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.hl, ptr %i.hm, align 8, !tbaa !4020
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !2800
  %i.hr = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  store i32 %i.hq, ptr %i.hr, align 8, !tbaa !2800
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gw, i64 44
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !2800
  %i.hu = getelementptr inbounds nuw i8, ptr %i.he, i64 100
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !2800
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
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
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !4023
  %.not.i.i.i.i90.i = icmp sgt i32 %i.id, %i.ia
  br i1 %.not.i.i.i.i90.i, label %bb.at, label %walIndexPage.exit.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.ie = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !3945
  %sext.i.i.i = shl i64 %i.hz, 32
  %i.ig = ashr exact i64 %sext.i.i.i, 29
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !3018 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %walIndexPage.exit.i.i.i.i, label %walIndexPage.exit.thread.i.i.thread.i.i

walIndexPage.exit.i.i.i.i:                        ; preds = %bb.at, %bb.as
  %i.ik = call fastcc i32 @walIndexPageRealloc(ptr noundef nonnull %i.he, i32 noundef %i.ia, ptr noundef nonnull %i.ib), !inline_history !7278
  %.pr.i.i.i.i = load ptr, ptr %i.ib, align 8, !tbaa !4025 ; 2 uses
  %.not.i.i.i91.i = icmp ne ptr %.pr.i.i.i.i, null
  %.not.i.i92.i = icmp eq i32 %i.ik, 0
  %or.cond.i.i = select i1 %.not.i.i.i91.i, i1 %.not.i.i92.i, i1 false
  %.pre120.i = load i32, ptr %i.hm, align 8, !tbaa !4020 ; 2 uses
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
  %i.iu = load volatile i16, ptr %i.it, align 2, !tbaa !3013
  %i.iv = zext i16 %i.iu to i32
  %i.iw = icmp slt i32 %i.is, %i.iv
  br i1 %i.iw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store volatile i16 0, ptr %i.it, align 2, !tbaa !3013
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %indvars.iv.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 2 ; 2 uses
  %i.iz = load volatile i16, ptr %i.iy, align 2, !tbaa !3013
  %i.ja = zext i16 %i.iz to i32
  %i.jb = icmp slt i32 %i.is, %i.ja
  br i1 %i.jb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store volatile i16 0, ptr %i.iy, align 2, !tbaa !3013
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 8192
  br i1 %exitcond.not.i.i.i.1, label %bb.az, label %bb.au, !llvm.loop !184

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
  %.pre.i = load i32, ptr %i.hm, align 8, !tbaa !4020
  br label %walCleanupHash.exit.i.i

walCleanupHash.exit.i.i:                          ; preds = %bb.az, %walIndexPage.exit.i.i.i.i, %bb.ar
  %i.ji = phi i32 [ %.pre.i, %bb.az ], [ %.pre120.i, %walIndexPage.exit.i.i.i.i ], [ 0, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %i.jj = getelementptr inbounds nuw i8, ptr %i.he, i64 124 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !3974
  %i.jl = icmp ugt i32 %i.jk, %i.ji
  br i1 %i.jl, label %bb.ba, label %.lr.ph115.preheader.i

bb.ba:                                            ; preds = %walCleanupHash.exit.i.i
  store i32 0, ptr %i.jj, align 4, !tbaa !3974
  br label %.lr.ph115.preheader.i

sqlite3WalSavepointUndo.exit.i:                   ; preds = %.critedge2.i.thread
  %i.jm = icmp eq i32 %.2.lcssa.i83, 0
  br i1 %i.jm, label %.lr.ph115.preheader.i, label %.critedge6.i

.lr.ph115.preheader.i:                            ; preds = %bb.aq, %walCleanupHash.exit.i.i, %bb.ba, %sqlite3WalSavepointUndo.exit.i
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.jo = load i32, ptr %i.gx, align 4, !tbaa !4031
  br label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %bb.bb, %.lr.ph115.preheader.i
  %.0114.i = phi i32 [ %i.js, %bb.bb ], [ %i.jo, %.lr.ph115.preheader.i ] ; 2 uses
  %i.jp = load i32, ptr %i.jn, align 4, !tbaa !4010
  %i.jq = icmp ult i32 %.0114.i, %i.jp
  br i1 %i.jq, label %bb.bb, label %.critedge6.i

bb.bb:                                            ; preds = %.lr.ph115.i
  %i.jr = call fastcc i32 @pager_playback_one_page(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef %.07195100144.i81, i32 noundef 0, i32 noundef 1), !inline_history !7278 ; 2 uses
  %i.js = add nuw i32 %.0114.i, 1
  %i.jt = icmp eq i32 %i.jr, 0
  br i1 %i.jt, label %.lr.ph115.i, label %.critedge6.i, !llvm.loop !7284

.critedge6.i:                                     ; preds = %bb.bb, %.lr.ph115.i, %sqlite3WalSavepointUndo.exit.i
  %.5.lcssa.i = phi i32 [ %.2.lcssa.i83, %sqlite3WalSavepointUndo.exit.i ], [ 0, %.lr.ph115.i ], [ %i.jr, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge6.i, %.critedge2.i
  %i.ju = phi i64 [ %i.gu, %.critedge6.i ], [ %.ph.i, %.critedge2.i ]
  %i.jv = phi ptr [ %i.gv, %.critedge6.i ], [ %.ph140.i, %.critedge2.i ]
  %.07195100144.i82 = phi ptr [ %.07195100144.i81, %.critedge6.i ], [ %.07195100.ph.i, %.critedge2.i ]
  %.6.i = phi i32 [ %.5.lcssa.i, %.critedge6.i ], [ %.2.lcssa.i, %.critedge2.i ] ; 2 uses
  tail call fastcc void @sqlite3BitvecDestroy(ptr noundef %.07195100144.i82), !inline_history !7278
  %i.jw = icmp eq i32 %.6.i, 0
  br i1 %i.jw, label %bb.bd, label %pagerPlaybackSavepoint.exit

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !3950
  br label %pagerPlaybackSavepoint.exit

pagerPlaybackSavepoint.exit:                      ; preds = %.lr.ph.i.i, %bb.bd, %bb.bc, %sqlite3WalUndo.exit.i.i, %bb.n, %bb.k, %bb.i, %bb.f, %bb.e, %bb.b, %bb.a
  %.3 = phi i32 [ %i.e, %bb.a ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.e ], [ %.0, %bb.i ], [ 0, %bb.f ], [ 7, %bb.n ], [ %.6.i, %bb.bc ], [ 0, %bb.bd ], [ %.1.i.i.i, %sqlite3WalUndo.exit.i.i ], [ %i.et, %.lr.ph.i.i ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pagerUndoCallback(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 !guid !7286 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2863
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %.val7.i = load ptr, ptr %i.c, align 8, !tbaa !2866
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 224), align 8, !tbaa !4003
  %i.e = tail call ptr %i.d(ptr noundef %.val7.i, i32 noundef %1, i32 noundef 0) #58, !inline_history !181 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %sqlite3PagerUnrefNotNull.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !2863 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4004 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3908
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %sqlite3PagerLookup.exit, label %sqlite3PagerLookup.exit.thread18

sqlite3PagerLookup.exit.thread18:                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !3308
  %i.m = add nsw i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !3308
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !3581
  %i.p = add nsw i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !3581
  br label %bb.c

sqlite3PagerLookup.exit:                          ; preds = %bb.b
  %i.q = tail call fastcc ptr @pcacheFetchFinishWithInit(ptr noundef %i.g, i32 noundef %1, ptr noundef nonnull %i.e), !inline_history !175 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %sqlite3PagerUnrefNotNull.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3PagerLookup.exit.thread18, %sqlite3PagerLookup.exit
  %.0.i21 = phi ptr [ %i.i, %sqlite3PagerLookup.exit.thread18 ], [ %i.q, %sqlite3PagerLookup.exit ] ; 16 uses
  %2 = getelementptr i8, ptr %.0.i21, i64 56
  %.val = load i64, ptr %2, align 8, !tbaa !3581
  %i.r = icmp eq i64 %.val, 1
  br i1 %i.r, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i21, i64 52
  %i.t = load i16, ptr %i.s, align 4, !tbaa !3126
  %i.u = and i16 %i.t, 2
  %.not.i = icmp eq i16 %i.u, 0
  %.phi.trans.insert5.i = getelementptr inbounds nuw i8, ptr %.0.i21, i64 24
  %.pre6.i = load ptr, ptr %.phi.trans.insert5.i, align 8, !tbaa !3905 ; 7 uses
  br i1 %.not.i, label %sqlite3PcacheDrop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3909
  %i.x = icmp eq ptr %i.w, %.0.i21
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i21, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3910 ; 5 uses
  br i1 %i.x, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.z, ptr %i.v, align 8, !tbaa !3909
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i21, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3911 ; 4 uses
  %.not37.i.i = icmp eq ptr %i.ab, null
  %.not38.i.i = icmp eq ptr %i.z, null            ; 2 uses
  br i1 %.not37.i.i, label %bb.g, label %.thread.i.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 8
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !3912
  br i1 %.not38.i.i, label %bb.i, label %bb.h

.thread.i.i:                                      ; preds = %._crit_edge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !3910
  br i1 %.not38.i.i, label %.thread44.i.i, label %bb.h

.thread44.i.i:                                    ; preds = %.thread.i.i
  store ptr %i.ab, ptr %.pre6.i, align 8, !tbaa !3914
  br label %sqlite3PcacheDrop.exit

bb.h:                                             ; preds = %.thread.i.i, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !3911
  br label %sqlite3PcacheDrop.exit

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %.pre6.i, align 8, !tbaa !3914
  %i.af = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 49
  store i8 2, ptr %i.af, align 1, !tbaa !3913
  br label %sqlite3PcacheDrop.exit

sqlite3PcacheDrop.exit:                           ; preds = %bb.d, %.thread44.i.i, %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !3308
  %i.ai = add nsw i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !3308
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 232), align 8, !tbaa !3907
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2866
  %i.am = load ptr, ptr %.0.i21, align 8, !tbaa !3908
  tail call void %i.aj(ptr noundef %i.al, ptr noundef %i.am, i32 noundef 1) #58, !inline_history !182
  br label %sqlite3PagerUnrefNotNull.exit

bb.j:                                             ; preds = %bb.c
  %i.an = tail call fastcc i32 @readDbPage(ptr noundef nonnull %.0.i21) ; 3 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !3992
  tail call void %i.aq(ptr noundef nonnull %.0.i21) #58
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i21, i64 52
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !3126
  %i.at = and i16 %i.as, 32
  %.not.i13 = icmp eq i16 %i.at, 0
  br i1 %.not.i13, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i21, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3127 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 152 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !3128
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !3128
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 168 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3129
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i21, i64 32
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !3130
  store ptr %.0.i21, ptr %i.az, align 8, !tbaa !3129
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !3131 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i21, i64 48
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !3132
  %i.bg = add i32 %i.bf, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 200
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !2861
  %i.bk = mul nsw i64 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i21, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !3125
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !3094
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !3134
  %i.bq = tail call i32 %i.bp(ptr noundef nonnull %i.bd, i64 noundef %i.bk, ptr noundef %i.bm) #58, !inline_history !185 ; 0 uses
  br label %sqlite3PagerUnrefNotNull.exit

bb.n:                                             ; preds = %bb.l
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.0.i21)
  br label %sqlite3PagerUnrefNotNull.exit

sqlite3PagerUnrefNotNull.exit:                    ; preds = %bb.a, %bb.n, %bb.m, %sqlite3PcacheDrop.exit, %sqlite3PagerLookup.exit
  %.0 = phi i32 [ 0, %sqlite3PcacheDrop.exit ], [ %i.an, %bb.n ], [ 0, %sqlite3PagerLookup.exit ], [ %i.an, %bb.m ], [ 0, %bb.a ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !3282 ; 2 uses
  %.not4.i = icmp eq ptr %i.bs, null
  br i1 %.not4.i, label %sqlite3BackupRestart.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sqlite3PagerUnrefNotNull.exit, %.lr.ph.i
  %.05.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.bs, %sqlite3PagerUnrefNotNull.exit ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i, i64 24
  store i32 1, ptr %i.bt, align 8, !tbaa !3220
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !3245 ; 2 uses
  %.not.i14 = icmp eq ptr %i.bv, null
  br i1 %.not.i14, label %sqlite3BackupRestart.exit, label %.lr.ph.i, !llvm.loop !55

sqlite3BackupRestart.exit:                        ; preds = %.lr.ph.i, %sqlite3PagerUnrefNotNull.exit
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sqlite3PcacheDirtyList(ptr nofree noundef readonly captures(none) %0) unnamed_addr #16 !guid !7291 {
bb.a:
  %1 = alloca %struct.PgHdr, align 8              ; 4 uses
  %2 = alloca %struct.PgHdr, align 8              ; 4 uses
  %3 = alloca %struct.PgHdr, align 8              ; 4 uses
  %i.a = alloca [32 x ptr], align 16              ; 9 uses
  %.0.pr = load ptr, ptr %0, align 8, !tbaa !3121 ; 3 uses
  %.not9 = icmp eq ptr %.0.pr, null
  br i1 %.not9, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  br label %._crit_edge.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %i.c, %.lr.ph ], [ %.0.pr, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.010, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3121 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.010, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !3130
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.lr.ph.i, label %.lr.ph, !llvm.loop !7287

.lr.ph.i:                                         ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.lr.ph.i
  %.02551.i = phi ptr [ %.0.pr, %.lr.ph.i ], [ %i.i, %bb.l ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02551.i, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3130 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !3130
  br label %bb.c

bb.c:                                             ; preds = %pcacheMergeDirtyList.exit.i, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %pcacheMergeDirtyList.exit.i ] ; 2 uses
  %.02348.i = phi ptr [ %.02551.i, %bb.b ], [ %i.z, %pcacheMergeDirtyList.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3121 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  store ptr %.02348.i, ptr %i.j, align 8, !tbaa !3121
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  br label %.outer32

.outer32:                                         ; preds = %bb.f, %bb.d
  %.018.i.i.ph = phi ptr [ %i.t, %bb.f ], [ %i.k, %bb.d ] ; 6 uses
  %.016.i.i.ph = phi ptr [ %.016.i.i, %bb.f ], [ %.02348.i, %bb.d ]
  %.0.i.i.ph = phi ptr [ %.018.i.i.ph, %bb.f ], [ %3, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i.i.ph, i64 48
end_hunk_1
begin_hunk_2_@btreeComputeFreeSpace:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74727, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

.preheader:                                       ; preds = %bb.b, %bb.e
  %.050 = phi i32 [ %i.bc, %bb.e ], [ %i.ao, %bb.b ] ; 3 uses
  %.049 = phi i32 [ %i.bl, %bb.e ], [ %i.as, %bb.b ]
  %i.at = icmp sgt i32 %.050, %i.ag
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74732, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

bb.e:                                             ; preds = %.preheader
  %i.au = zext nneg i32 %.050 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.au ; 4 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !2965
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !2965
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.ay, %i.bb            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !2965
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !2965
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bg, %i.bj            ; 2 uses
  %i.bl = add i32 %i.bk, %.049                    ; 2 uses
  %i.bm = add nuw nsw i32 %i.bk, %.050            ; 2 uses
  %i.bn = add nuw nsw i32 %i.bm, 3
  %.not58 = icmp samesign ugt i32 %i.bc, %i.bn
  br i1 %.not58, label %.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not59 = icmp eq i32 %i.bc, 0
  br i1 %.not59, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74742, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.bo = icmp ugt i32 %i.bm, %i.d
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74746, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

bb.j:                                             ; preds = %bb.h, %bb.a
  %.2 = phi i32 [ %i.as, %bb.a ], [ %i.bl, %bb.h ] ; 3 uses
  %i.bp = icmp sgt i32 %.2, %i.d
  %i.bq = icmp slt i32 %.2, %i.af
  %or.cond = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74758, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.br = sub nuw nsw i32 %.2, %i.af
  %i.bs = and i32 %i.br, 65535
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3956
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.g, %bb.d, %bb.c, %bb.l, %bb.k
  %.152 = phi i32 [ 11, %bb.k ], [ 0, %bb.l ], [ 11, %bb.c ], [ 11, %bb.d ], [ 11, %bb.g ], [ 11, %bb.i ]
  ret i32 %.152
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dropCell(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 !guid !8045 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !2800
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3233 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3352
  %i.f = shl nsw i32 %1, 1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !2965
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !2965
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !3307
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = add i32 %i.o, %2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3306
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !3301
  %i.x = icmp ugt i32 %i.s, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 79869, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  store i32 11, ptr %3, align 4, !tbaa !2800
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.y = tail call fastcc i32 @freeSpace(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %2) ; 2 uses
  %.not44 = icmp eq i32 %i.y, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.y, ptr %3, align 4, !tbaa !2800
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !3966
  %i.ab = add i16 %i.aa, -1                       ; 3 uses
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !3966
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i32 0, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 7
  store i8 0, ptr %i.af, align 1, !tbaa !2965
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !3306
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !3301
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !2965
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !3306
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !3301
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !2965
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !3306
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !3301
  %i.au = load i8, ptr %i.p, align 1, !tbaa !3307
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !3958
  %i.ay = zext i8 %i.ax to i32
  %.neg46 = add i32 %i.at, -8
  %i.az = add nuw nsw i32 %i.av, %i.ay
  %i.ba = sub i32 %.neg46, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !3956
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bc = zext i16 %i.ab to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.be = sub nsw i32 %i.bc, %1
  %i.bf = shl nsw i32 %i.be, 1
  %i.bg = sext i32 %i.bf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.bd, i64 %i.bg, i1 false)
  %i.bh = load i16, ptr %i.z, align 8, !tbaa !3966
  %i.bi = lshr i16 %i.bh, 8
  %i.bj = trunc nuw i16 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !2965
  %i.bm = load i16, ptr %i.z, align 8, !tbaa !3966
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !2965
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3956
  %i.br = add nsw i32 %i.bq, 2
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !3956
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @balance(ptr nofree noundef captures(address) %0) unnamed_addr #0 !guid !8095 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #58
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
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !3349
  br label %bb.b

bb.b:                                             ; preds = %bb.ho, %bb.a
  %i.aw = phi ptr [ %.pre, %bb.a ], [ %storemerge, %bb.ho ] ; 38 uses
  %.057 = phi ptr [ null, %bb.a ], [ %.3, %bb.ho ] ; 13 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 20 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3956
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ba = call fastcc i32 @btreeComputeFreeSpace(ptr noundef nonnull %i.aw)
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.d, label %.thread118

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 7 uses
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !3965
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.be = load i32, ptr %i.ax, align 4, !tbaa !3956
  %i.bf = mul nsw i32 %i.be, 3
  %i.bg = load ptr, ptr %i.w, align 8, !tbaa !3483
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !3301
  %i.bj = shl nsw i32 %i.bi, 1
  %.not68 = icmp sgt i32 %i.bf, %i.bj
  br i1 %.not68, label %bb.f, label %.thread118

bb.f:                                             ; preds = %bb.e
  %i.bk = load i8, ptr %i.v, align 4, !tbaa !4073 ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %.thread118, label %bb.ad

.thread:                                          ; preds = %bb.d
  %i.bm = load i8, ptr %i.v, align 4, !tbaa !4073 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.ad

bb.g:                                             ; preds = %.thread
  %i.bo = load ptr, ptr %i.w, align 8, !tbaa !3483
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.011.i = load ptr, ptr %i.bp, align 8, !tbaa !3296 ; 2 uses
  %.not12.i = icmp eq ptr %.011.i, null
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.j
  %.013.i = phi ptr [ %.0.i, %bb.j ], [ %.011.i, %bb.g ] ; 4 uses
  %.not10.i = icmp eq ptr %.013.i, %0
  br i1 %.not10.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bq = load i8, ptr %.013.i, align 8, !tbaa !3354
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !3349
  %i.bu = load ptr, ptr %i.u, align 8, !tbaa !3349
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %anotherValidCursor.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i, i64 40
  %.0.i = load ptr, ptr %i.bw, align 8, !tbaa !3296 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !8046

anotherValidCursor.exit:                          ; preds = %bb.i
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 81694, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread118

.loopexit:                                        ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #58
  store ptr null, ptr %i.r, align 8, !tbaa !3976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #58
  store i32 0, ptr %i.s, align 4, !tbaa !2800
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 72 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !3306 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !3254 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !3127 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 52
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !3126
  %i.cf = and i16 %i.ce, 4
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3246
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !3132
  %.not13.i.i = icmp ult i32 %i.ch, %i.cj
  br i1 %.not13.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !3236
  %.not15.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not15.i.i, label %sqlite3PagerWrite.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.ca), !inline_history !8047
  br label %sqlite3PagerWrite.exit.i

bb.n:                                             ; preds = %bb.k, %.loopexit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !3248 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.co, 0
  br i1 %.not14.i.i, label %bb.o, label %.thread.thread.i

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 184
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !3249
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !2861
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = icmp ugt i32 %i.cq, %i.ct
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cv = call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.ca), !inline_history !8047
  br label %sqlite3PagerWrite.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cw = call fastcc i32 @pager_write(ptr noundef nonnull %i.ca), !inline_history !8047
  br label %sqlite3PagerWrite.exit.i

sqlite3PagerWrite.exit.i:                         ; preds = %bb.q, %bb.p, %bb.m
  %.0.i.i = phi i32 [ %i.cm, %bb.m ], [ %i.cw, %bb.q ], [ %i.cv, %bb.p ] ; 2 uses
  %i.cx = icmp eq i32 %.0.i.i, 0
  br i1 %i.cx, label %sqlite3PagerWrite.exit.thread.i, label %.thread.thread.i

sqlite3PagerWrite.exit.thread.i:                  ; preds = %sqlite3PagerWrite.exit.i, %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3305
  %i.da = call fastcc i32 @allocateBtreePage(ptr noundef %i.by, ptr noundef %i.r, ptr noundef %i.s, i32 noundef %i.cz, i8 noundef zeroext 0), !inline_history !8048 ; 3 uses
  store i32 %i.da, ptr %i.q, align 4, !tbaa !2800
  %i.db = load ptr, ptr %i.r, align 8, !tbaa !3976 ; 14 uses
  %i.dc = icmp eq i32 %i.da, 0
  br i1 %i.dc, label %bb.r, label %copyNodeContent.exit.i

bb.r:                                             ; preds = %sqlite3PagerWrite.exit.thread.i
end_hunk_2
begin_hunk_3_@balance:bb.a
  %.not604.i = icmp eq i32 %i.aoo, 0
  br i1 %.not604.i, label %bb.ex, label %.thread692.loopexit.split.loop.exit1171.i

bb.ex:                                            ; preds = %bb.ew
  %i.aop = load ptr, ptr %i.k, align 8, !tbaa !3976 ; 16 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 80
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !3233 ; 5 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aop, i64 72
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !3306 ; 4 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aop, i64 9
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !3307 ; 2 uses
  %i.aow = zext i8 %i.aov to i32                  ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aot, i64 40
  %i.aoy = load i16, ptr %i.aox, align 8, !tbaa !3276
  %i.aoz = and i16 %i.aoy, 12
  %.not.i652.i = icmp eq i16 %i.aoz, 0
  %.pre.i.i100 = zext i8 %i.aov to i64            ; 2 uses
  br i1 %.not.i652.i, label %zeroPage.exit.i101, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aor, i64 %.pre.i.i100
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aot, i64 56
  %i.apc = load i32, ptr %i.apb, align 8, !tbaa !3301
  %i.apd = sub i32 %i.apc, %i.aow
  %i.ape = zext i32 %i.apd to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.apa, i8 0, i64 %i.ape, i1 false)
  br label %zeroPage.exit.i101

zeroPage.exit.i101:                               ; preds = %bb.ey, %bb.ex
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aor, i64 %.pre.i.i100 ; 5 uses
  store i8 %i.amt, ptr %i.apf, align 1, !tbaa !2965
  %i.apg = add nuw nsw i32 %i.amz, %i.aow         ; 3 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apf, i64 1
  store i32 0, ptr %i.aph, align 1
  %i.api = getelementptr inbounds nuw i8, ptr %i.apf, i64 7
  store i8 0, ptr %i.api, align 1, !tbaa !2965
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aot, i64 56 ; 3 uses
  %i.apk = load i32, ptr %i.apj, align 8, !tbaa !3301
  %i.apl = lshr i32 %i.apk, 8
  %i.apm = trunc i32 %i.apl to i8
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apf, i64 5
  store i8 %i.apm, ptr %i.apn, align 1, !tbaa !2965
  %i.apo = load i32, ptr %i.apj, align 8, !tbaa !3301
  %i.app = trunc i32 %i.apo to i8
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apf, i64 6
  store i8 %i.app, ptr %i.apq, align 1, !tbaa !2965
  %i.apr = load i32, ptr %i.apj, align 8, !tbaa !3301
  %i.aps = sub i32 %i.apr, %i.apg
  %i.apt = and i32 %i.aps, 65535
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aop, i64 20
  store i32 %i.apt, ptr %i.apu, align 4, !tbaa !3956
  %i.apv = call fastcc i32 @decodeFlags(ptr noundef nonnull %i.aop, i32 noundef range(i32 0, 256) %i.amu), !inline_history !8056 ; 0 uses
  %i.apw = trunc nuw nsw i32 %i.apg to i16
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aop, i64 18
  store i16 %i.apw, ptr %i.apx, align 2, !tbaa !3963
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aot, i64 52
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !2889 ; 2 uses
  %i.aqa = zext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aqa
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aop, i64 88
  store ptr %i.aqb, ptr %i.aqc, align 8, !tbaa !3357
  %i.aqd = zext nneg i32 %i.apg to i64
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aqd
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aop, i64 96
  store ptr %i.aqe, ptr %i.aqf, align 8, !tbaa !3352
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aop, i64 10
  %i.aqh = load i8, ptr %i.aqg, align 2, !tbaa !3958
  %i.aqi = zext i8 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aor, i64 %i.aqi
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aop, i64 104
  store ptr %i.aqj, ptr %i.aqk, align 8, !tbaa !3964
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aop, i64 12
  store i8 0, ptr %i.aql, align 4, !tbaa !3965
  %i.aqm = trunc i32 %i.apz to i16
  %i.aqn = add i16 %i.aqm, -1
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aop, i64 26
  store i16 %i.aqn, ptr %i.aqo, align 2, !tbaa !3351
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aop, i64 24
  store i16 0, ptr %i.aqp, align 8, !tbaa !3966
  store i8 1, ptr %i.aop, align 8, !tbaa !3967
  %i.aqq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv976.i
  store ptr %i.aop, ptr %i.aqq, align 8, !tbaa !3976
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv976.i
  store i32 %i.agk, ptr %i.aqr, align 4, !tbaa !2800
  %i.aqs = load i8, ptr %i.ana, align 1, !tbaa !3295
  %.not605.i = icmp eq i8 %i.aqs, 0
  br i1 %.not605.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %zeroPage.exit.i101
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aop, i64 4
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !3305
  %i.aqv = load i32, ptr %i.anb, align 4, !tbaa !3305
  call fastcc void @ptrmapPut(ptr noundef nonnull %i.tr, i32 noundef %i.aqu, i8 noundef zeroext 5, i32 noundef %i.aqv, ptr noundef %i.a), !inline_history !8056
  %i.aqw = load i32, ptr %i.a, align 4, !tbaa !2800 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #58
  br label %.thread705.i

bb.fa:                                            ; preds = %bb.ez, %zeroPage.exit.i101, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #58
  %indvars.iv.next977.i = add nuw nsw i64 %indvars.iv976.i, 1 ; 2 uses
  %exitcond983.not.i = icmp eq i64 %indvars.iv.next977.i, %wide.trip.count982.i
  br i1 %exitcond983.not.i, label %.lr.ph814.i.preheader, label %bb.em, !llvm.loop !8073

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
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !3976
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 4
  %i.are = load i32, ptr %i.ard, align 4, !tbaa !3305
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv984.i.epil
  store i32 %i.are, ptr %i.arf, align 4, !tbaa !2800
  %indvars.iv.next985.i.epil = add nuw nsw i64 %indvars.iv984.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter488
  br i1 %epil.iter.cmp.not, label %.preheader721.i, label %.lr.ph814.i.epil, !llvm.loop !8074

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
  %i.ari = load ptr, ptr %i.arh, align 16, !tbaa !3976
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 4
  %i.ark = load i32, ptr %i.arj, align 4, !tbaa !3305
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv984.i
  store i32 %i.ark, ptr %i.arl, align 16, !tbaa !2800
  %indvars.iv.next985.i = or disjoint i64 %indvars.iv984.i, 1 ; 2 uses
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next985.i
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !3976
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 4
  %i.arp = load i32, ptr %i.aro, align 4, !tbaa !3305
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next985.i
  store i32 %i.arp, ptr %i.arq, align 4, !tbaa !2800
  %indvars.iv.next985.i.1 = or disjoint i64 %indvars.iv984.i, 2 ; 2 uses
  %i.arr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next985.i.1
  %i.ars = load ptr, ptr %i.arr, align 16, !tbaa !3976
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 4
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !3305
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next985.i.1
  store i32 %i.aru, ptr %i.arv, align 8, !tbaa !2800
  %indvars.iv.next985.i.2 = or disjoint i64 %indvars.iv984.i, 3 ; 2 uses
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next985.i.2
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !3976
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 4
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !3305
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next985.i.2
  store i32 %i.arz, ptr %i.asa, align 4, !tbaa !2800
  %indvars.iv.next985.i.3 = add nuw nsw i64 %indvars.iv984.i, 4 ; 2 uses
  %niter492.next.3 = add i64 %niter492, 4         ; 2 uses
  %niter492.ncmp.3 = icmp eq i64 %niter492.next.3, %unroll_iter491
  br i1 %niter492.ncmp.3, label %.preheader721.i.unr-lcssa, label %.lr.ph814.i, !llvm.loop !8075

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
  %6 = load ptr, ptr %i.ase, align 8, !tbaa !3976
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !3305
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv998.i
  %i.asf = load ptr, ptr %9, align 8, !tbaa !3976
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 4
  %i.ash = load i32, ptr %i.asg, align 4, !tbaa !3305
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
  %11 = load ptr, ptr %10, align 8, !tbaa !3976
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !3305
  %14 = sext i32 %i.asl to i64
  %i.asm = getelementptr inbounds [8 x i8], ptr %i.c, i64 %14
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !3976
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 4
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !3305
  %i.asq = icmp ult i32 %13, %i.asp
  %i.asr = trunc nuw nsw i64 %indvars.iv992.i to i32
  %spec.select628.i = select i1 %i.asq, i32 %i.asr, i32 %i.asl ; 2 uses
  %indvars.iv.next993.i = add nuw nsw i64 %indvars.iv992.i, 1 ; 2 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next993.i
  %16 = load ptr, ptr %15, align 8, !tbaa !3976
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %18 = load i32, ptr %17, align 4, !tbaa !3305
  %19 = sext i32 %spec.select628.i to i64
  %i.ass = getelementptr inbounds [8 x i8], ptr %i.c, i64 %19
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !3976
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 4
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !3305
  %i.asw = icmp ult i32 %18, %i.asv
  %i.asx = trunc nuw nsw i64 %indvars.iv.next993.i to i32
  %spec.select628.i.1 = select i1 %i.asw, i32 %i.asx, i32 %spec.select628.i ; 2 uses
  %indvars.iv.next993.i.1 = add nuw nsw i64 %indvars.iv992.i, 2 ; 2 uses
  %exitcond997.not.i.1 = icmp eq i64 %indvars.iv.next993.i.1, %wide.trip.count982.i
  br i1 %exitcond997.not.i.1, label %._crit_edge819.i, label %.lr.ph818.i, !llvm.loop !8076

._crit_edge819.i:                                 ; preds = %.lr.ph818.i, %.lr.ph818.i.prol.loopexit
  %spec.select628.i.lcssa = phi i32 [ %spec.select628.i.lcssa.unr, %.lr.ph818.i.prol.loopexit ], [ %spec.select628.i.1, %.lr.ph818.i ] ; 2 uses
  %indvars.iv.next999.i = add nuw nsw i64 %indvars.iv998.i, 1 ; 2 uses
  %i.asy = zext i32 %spec.select628.i.lcssa to i64
  %.not601.i = icmp eq i64 %indvars.iv998.i, %i.asy
  br i1 %.not601.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %._crit_edge819.i
  %20 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv998.i
  %21 = load ptr, ptr %20, align 8, !tbaa !3976   ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %23 = load i32, ptr %22, align 4, !tbaa !3305   ; 2 uses
  %i.asz = sext i32 %spec.select628.i.lcssa to i64
  %i.ata = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.asz
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !3976 ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 4 ; 2 uses
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !3305 ; 2 uses
  %i.ate = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !2800
  %i.atf = load i32, ptr %i.zo, align 4, !tbaa !2889
  %i.atg = udiv i32 %i.ate, %i.atf
  %i.ath = add i32 %i.atg, 1
  %i.ati = getelementptr inbounds nuw i8, ptr %21, i64 112 ; 2 uses
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !3254 ; 2 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 52 ; 2 uses
  %i.atl = load i16, ptr %i.atk, align 4, !tbaa !3126
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atb, i64 112 ; 2 uses
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !3254
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 52
  %i.atp = load i16, ptr %i.ato, align 4, !tbaa !3126 ; 2 uses
  store i16 %i.atp, ptr %i.atk, align 4, !tbaa !3126
  call fastcc void @sqlite3PcacheMove(ptr noundef %i.atj, i32 noundef %i.ath), !inline_history !8056
  %i.atq = load ptr, ptr %i.atm, align 8, !tbaa !3254 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 52
  store i16 %i.atl, ptr %i.atr, align 4, !tbaa !3126
  call fastcc void @sqlite3PcacheMove(ptr noundef %i.atq, i32 noundef %23), !inline_history !8056
  %i.ats = load ptr, ptr %i.ati, align 8, !tbaa !3254 ; 2 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 52
  store i16 %i.atp, ptr %i.att, align 4, !tbaa !3126
  call fastcc void @sqlite3PcacheMove(ptr noundef %i.ats, i32 noundef %i.atd), !inline_history !8056
  store i32 %i.atd, ptr %22, align 4, !tbaa !3305
  store i32 %23, ptr %i.atc, align 4, !tbaa !3305
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %._crit_edge819.i
  %indvars.iv.next991.i = add nuw nsw i64 %indvars.iv990.i, 1
  %exitcond1003.not.i = icmp eq i64 %indvars.iv.next999.i, %i.akx
  br i1 %exitcond1003.not.i, label %._crit_edge823.i, label %.lr.ph818.preheader.i, !llvm.loop !8077

._crit_edge823.i:                                 ; preds = %bb.fc, %.._crit_edge823.i_crit_edge, %.preheader721.i
  %.pre-phi = phi i32 [ %.pre240, %.._crit_edge823.i_crit_edge ], [ %i.amx, %.preheader721.i ], [ %i.amx, %bb.fc ]
  %i.atu = phi i1 [ false, %.._crit_edge823.i_crit_edge ], [ false, %.preheader721.i ], [ true, %bb.fc ]
  %i.atv = phi i32 [ -1, %.._crit_edge823.i_crit_edge ], [ 0, %.preheader721.i ], [ %i.aku, %bb.fc ] ; 2 uses
  %.0496.lcssa11331135.i = phi i32 [ 0, %.._crit_edge823.i_crit_edge ], [ 1, %.preheader721.i ], [ %.8545.ph.i, %bb.fc ] ; 16 uses
  %i.atw = sext i32 %i.atv to i64
  %i.atx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.atw
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !3976 ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 4
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !3305
  %i.aub = call i32 @llvm.bswap.i32(i32 %i.aua)
  store i32 %i.aub, ptr %.0528.i, align 1, !tbaa !2965
  %i.auc = icmp ne i32 %.pre-phi, 0
  %.not579.i = icmp eq i32 %i.ug, %.0496.lcssa11331135.i
  %or.cond629.i = select i1 %i.auc, i1 true, i1 %.not579.i
  br i1 %or.cond629.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %._crit_edge823.i
  %i.aud = icmp sgt i32 %.0496.lcssa11331135.i, %i.ug
  %.0494.in.v.i = select i1 %i.aud, ptr %i.c, ptr %i.b
  %.0494.in.i = getelementptr inbounds nuw [8 x i8], ptr %.0494.in.v.i, i64 %i.vr
  %.0494.i = load ptr, ptr %.0494.in.i, align 8, !tbaa !3976
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aty, i64 80
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !3233
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 8
  %i.auh = getelementptr inbounds nuw i8, ptr %.0494.i, i64 80
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !3233
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 8
  %i.auk = load i32, ptr %i.auj, align 1
  store i32 %i.auk, ptr %i.aug, align 1
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %._crit_edge823.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.tr, i64 33 ; 2 uses
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !3295
  %.not580.i = icmp ne i8 %i.aum, 0
  %i.aun = icmp sgt i32 %i.agk, 0
  %or.cond1182.i = select i1 %.not580.i, i1 %i.aun, i1 false
  br i1 %or.cond1182.i, label %.lr.ph841.i, label %.thread702.i

.lr.ph841.i:                                      ; preds = %bb.fe
  %i.auo = load ptr, ptr %i.c, align 16, !tbaa !3976 ; 4 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 12
  %i.auq = load i8, ptr %i.aup, align 4, !tbaa !3965
  %i.aur = zext i8 %i.auq to i32
  %i.aus = getelementptr inbounds nuw i8, ptr %i.auo, i64 24
  %i.aut = load i16, ptr %i.aus, align 8, !tbaa !3966
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
  %i.auz = load ptr, ptr %i.ap, align 8, !tbaa !4297
  %i.ava = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %indvars.iv1008.i
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !2971 ; 7 uses
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
  %i.avg = load ptr, ptr %.in.i, align 8, !tbaa !3976 ; 3 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 24
  %i.avi = load i16, ptr %i.avh, align 8, !tbaa !3966
  %i.avj = zext i16 %i.avi to i32
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avg, i64 12
  %i.avl = load i8, ptr %i.avk, align 4, !tbaa !3965
  %i.avm = zext i8 %i.avl to i32
  %i.avn = add i32 %.1488825.i, %i.auw
  %i.avo = add i32 %i.avn, %i.avj
  %i.avp = add i32 %i.avo, %i.avm                 ; 3 uses
  %i.avq = zext i32 %i.avp to i64
  %i.avr = icmp eq i64 %indvars.iv1008.i, %i.avq
  br i1 %i.avr, label %.lr.ph828.i, label %._crit_edge829.loopexit.i, !llvm.loop !8078

._crit_edge829.loopexit.i:                        ; preds = %.lr.ph828.i
  %i.avs = trunc nsw i64 %indvars.iv.next1005.i to i32
  br label %._crit_edge829.i

._crit_edge829.i:                                 ; preds = %._crit_edge829.loopexit.i, %bb.ff
  %.1493.lcssa.i = phi ptr [ %.0492835.i, %bb.ff ], [ %i.avg, %._crit_edge829.loopexit.i ] ; 4 uses
  %.1488.lcssa.i = phi i32 [ %.0487837.i, %bb.ff ], [ %i.avp, %._crit_edge829.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.0484839.i, %bb.ff ], [ %i.avs, %._crit_edge829.loopexit.i ] ; 3 uses
  %i.avt = sext i32 %.0485838.i to i64
  %i.avu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.avt
  %i.avv = load i32, ptr %i.avu, align 4, !tbaa !2800
  %i.avw = zext i32 %i.avv to i64
  %i.avx = icmp eq i64 %indvars.iv1008.i, %i.avw
  br i1 %i.avx, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %._crit_edge829.i
  %i.avy = add nsw i32 %.0485838.i, 1             ; 3 uses
  %i.avz = sext i32 %i.avy to i64
  %i.awa = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.avz
  %i.awb = load ptr, ptr %i.awa, align 8, !tbaa !3976 ; 2 uses
  br i1 %i.aag, label %bb.fh, label %bb.fu

bb.fh:                                            ; preds = %bb.fg, %._crit_edge829.i
  %.1490.i = phi ptr [ %i.awb, %bb.fg ], [ %.0489836.i, %._crit_edge829.i ] ; 9 uses
  %.1486.i = phi i32 [ %i.avy, %bb.fg ], [ %.0485838.i, %._crit_edge829.i ] ; 2 uses
  %.not582.i = icmp slt i32 %.1.lcssa.i, %.0496.lcssa11331135.i
  br i1 %.not582.i, label %bb.fi, label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.awc = getelementptr inbounds nuw i8, ptr %.1490.i, i64 4
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !3305
  %i.awe = sext i32 %.1.lcssa.i to i64
  %i.awf = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.awe
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !2800
  %.not583.i = icmp eq i32 %i.awd, %i.awg
  br i1 %.not583.i, label %bb.fj, label %bb.fl

bb.fj:                                            ; preds = %bb.fi
  %i.awh = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 80
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !3233
  %.not584.i = icmp ult ptr %i.avb, %i.awi
  br i1 %.not584.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.awj = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 88
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !3357
  %i.awl = icmp ult ptr %i.avb, %i.awk
  br i1 %i.awl, label %bb.fu, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fh
  br i1 %.not585.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.awm = load i32, ptr %i.avb, align 1
  %i.awn = call i32 @llvm.bswap.i32(i32 %i.awm)
  %i.awo = getelementptr inbounds nuw i8, ptr %.1490.i, i64 4
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !3305
  call fastcc void @ptrmapPut(ptr noundef %i.tr, i32 noundef %i.awn, i8 noundef zeroext 5, i32 noundef %i.awp, ptr noundef %i.a), !inline_history !8056
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.awq = load ptr, ptr %i.aq, align 8, !tbaa !4298
  %i.awr = getelementptr inbounds nuw [2 x i8], ptr %i.awq, i64 %indvars.iv1008.i
  %i.aws = load i16, ptr %i.awr, align 2, !tbaa !3013 ; 2 uses
  %.not.i653.i = icmp eq i16 %i.aws, 0
  br i1 %.not.i653.i, label %bb.fo, label %cachedCellSize.exit655.i

bb.fo:                                            ; preds = %bb.fn
  %i.awt = trunc nuw nsw i64 %indvars.iv1008.i to i32
  %i.awu = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.awt), !inline_history !8056
  br label %cachedCellSize.exit655.i

cachedCellSize.exit655.i:                         ; preds = %bb.fo, %bb.fn
  %.0.i654.i = phi i16 [ %i.awu, %bb.fo ], [ %i.aws, %bb.fn ]
  %i.awv = getelementptr inbounds nuw i8, ptr %.1490.i, i64 16
  %i.aww = load i16, ptr %i.awv, align 8, !tbaa !4052
  %i.awx = icmp ugt i16 %.0.i654.i, %i.aww
  %.pre1059.i = load i32, ptr %i.a, align 4, !tbaa !2800 ; 2 uses
  br i1 %i.awx, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %cachedCellSize.exit655.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  %.not.i656.i = icmp eq i32 %.pre1059.i, 0
  br i1 %.not.i656.i, label %bb.fq, label %ptrmapPutOvflPtr.exit.i92

bb.fq:                                            ; preds = %bb.fp
  %i.awy = getelementptr inbounds nuw i8, ptr %.1490.i, i64 128
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !3961
  call void %i.awz(ptr noundef nonnull %.1490.i, ptr noundef %i.avb, ptr noundef nonnull %1) #58, !inline_history !8079
  %i.axa = load i16, ptr %i.at, align 4, !tbaa !4057 ; 2 uses
  %i.axb = zext i16 %i.axa to i32
  %i.axc = load i32, ptr %i.au, align 8, !tbaa !4054
  %i.axd = icmp ugt i32 %i.axc, %i.axb
  br i1 %i.axd, label %bb.fr, label %ptrmapPutOvflPtr.exit.i92

bb.fr:                                            ; preds = %bb.fq
  %i.axe = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 88
  %i.axf = load ptr, ptr %i.axe, align 8, !tbaa !3357 ; 2 uses
  %i.axg = icmp ult ptr %i.avb, %i.axf
end_hunk_3
begin_hunk_4_@fts3SegmentMerge:bb.a
  %i.qf = sext i32 %i.qe to i64
  %i.qg = load i64, ptr @sqlite3Stat, align 8, !tbaa !2795
  %i.qh = sub nsw i64 %i.qg, %i.qf
  store i64 %i.qh, ptr @sqlite3Stat, align 8, !tbaa !2795
  %i.qi = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !2795
  %i.qj = add nsw i64 %i.qi, -1
  store i64 %i.qj, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !2795
  %i.qk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !2932
  call void %i.qk(ptr noundef nonnull %i.py) #58, !inline_history !10769
  %i.ql = load ptr, ptr @mem0, align 8, !tbaa !2931 ; 2 uses
  %.not.i4.i8.i = icmp eq ptr %i.ql, null
  br i1 %.not.i4.i8.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %sqlite3_mutex_enter.exit.i7.i
  %i.qm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !2796
  call void %i.qm(ptr noundef nonnull %i.ql) #58, !inline_history !10770
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.qn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !2932
  call void %i.qn(ptr noundef nonnull %i.py) #58, !inline_history !10769
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %sqlite3_mutex_enter.exit.i7.i, %sqlite3_free.exit.i
  %i.qo = load ptr, ptr %.093179, align 8, !tbaa !10783
  call fastcc void @fts3NodeFree(ptr noundef %i.qo)
  %i.qp = load i32, ptr @sqlite3Config, align 8, !tbaa !2929
  %.not.i10.i = icmp eq i32 %i.qp, 0
  br i1 %.not.i10.i, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qq = load ptr, ptr @mem0, align 8, !tbaa !2931 ; 2 uses
  %.not.i.i11.i = icmp eq ptr %i.qq, null
  br i1 %.not.i.i11.i, label %sqlite3_mutex_enter.exit.i12.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !2793
  call void %i.qr(ptr noundef nonnull %i.qq) #58, !inline_history !10767
  br label %sqlite3_mutex_enter.exit.i12.i

sqlite3_mutex_enter.exit.i12.i:                   ; preds = %bb.cr, %bb.cq
  %i.qs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !2868
  %i.qt = call i32 %i.qs(ptr noundef nonnull %.093179) #58, !inline_history !10768
  %i.qu = sext i32 %i.qt to i64
  %i.qv = load i64, ptr @sqlite3Stat, align 8, !tbaa !2795
  %i.qw = sub nsw i64 %i.qv, %i.qu
  store i64 %i.qw, ptr @sqlite3Stat, align 8, !tbaa !2795
  %i.qx = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !2795
  %i.qy = add nsw i64 %i.qx, -1
  store i64 %i.qy, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !2795
  %i.qz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !2932
  call void %i.qz(ptr noundef nonnull %.093179) #58, !inline_history !10769
  %i.ra = load ptr, ptr @mem0, align 8, !tbaa !2931 ; 2 uses
  %.not.i4.i13.i = icmp eq ptr %i.ra, null
  br i1 %.not.i4.i13.i, label %fts3SegWriterFree.exit, label %bb.cs

bb.cs:                                            ; preds = %sqlite3_mutex_enter.exit.i12.i
  %i.rb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !2796
  call void %i.rb(ptr noundef nonnull %i.ra) #58, !inline_history !10770
  br label %fts3SegWriterFree.exit

bb.ct:                                            ; preds = %bb.cp
  %i.rc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !2932
  call void %i.rc(ptr noundef nonnull %.093179) #58, !inline_history !10769
  br label %fts3SegWriterFree.exit

fts3SegWriterFree.exit:                           ; preds = %.thread115, %.thread127, %fts3SegmentMaxLevel.exit.thread, %fts3SegmentMaxLevel.exit, %bb.x, %bb.bt, %bb.p, %bb.a, %.thread138, %sqlite3_mutex_enter.exit.i12.i, %bb.cs, %bb.ct
  %.4149 = phi i32 [ %.4157, %bb.ct ], [ %.4, %.thread138 ], [ %.4157, %sqlite3_mutex_enter.exit.i12.i ], [ %.4157, %bb.cs ], [ %.116.i.ph, %.thread127 ], [ %i.k, %fts3SegmentMaxLevel.exit.thread ], [ 101, %bb.p ], [ %i.cq, %bb.x ], [ 0, %bb.bt ], [ %i.ay, %fts3SegmentMaxLevel.exit ], [ %i.e, %bb.a ], [ %i.cw, %.thread115 ]
  call fastcc void @sqlite3Fts3SegReaderFinish(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret i32 %.4149
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3PromoteSegments(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !guid !10785 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.d = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 37, ptr noundef %i.a, ptr noundef null) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i64 %1, 1024
  %i.g = shl nsw i64 %i.f, 10
  %i.h = or disjoint i64 %i.g, 1023               ; 2 uses
  %i.i = mul nsw i64 %2, 3
  %i.j = sdiv i64 %i.i, 2
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !3120 ; 20 uses
  %i.l = add nsw i64 %1, 1                        ; 2 uses
  %i.m = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.k, i32 noundef 0)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %sqlite3_bind_int64.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2925 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 2 uses
  %i.r = load i16, ptr %i.q, align 4, !tbaa !2918
  %i.s = and i16 %i.r, -28672
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.p, i64 noundef %i.l)
  br label %sqlite3VdbeMemSetInt64.exit.i

bb.e:                                             ; preds = %bb.c
  store i64 %i.l, ptr %i.p, align 8, !tbaa !2965
  store i16 4, ptr %i.q, align 4, !tbaa !2918
  br label %sqlite3VdbeMemSetInt64.exit.i

sqlite3VdbeMemSetInt64.exit.i:                    ; preds = %bb.e, %bb.d
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !2911
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2825 ; 2 uses
  %.not.i8.i = icmp eq ptr %i.v, null
  br i1 %.not.i8.i, label %sqlite3_bind_int64.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !2796
  tail call void %i.w(ptr noundef nonnull %i.v) #58, !inline_history !3369
  br label %sqlite3_bind_int64.exit

sqlite3_bind_int64.exit:                          ; preds = %bb.b, %sqlite3VdbeMemSetInt64.exit.i, %bb.f
  %i.x = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.k, i32 noundef 1)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %sqlite3_bind_int64.exit34

bb.g:                                             ; preds = %sqlite3_bind_int64.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2925 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 76 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !2918
  %i.ae = and i16 %i.ad, -28672
  %.not.i.i31 = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ab, i64 noundef %i.h)
  br label %sqlite3VdbeMemSetInt64.exit.i32

bb.i:                                             ; preds = %bb.g
  store i64 %i.h, ptr %i.ab, align 8, !tbaa !2965
  store i16 4, ptr %i.ac, align 4, !tbaa !2918
  br label %sqlite3VdbeMemSetInt64.exit.i32

sqlite3VdbeMemSetInt64.exit.i32:                  ; preds = %bb.i, %bb.h
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !2911
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2825 ; 2 uses
  %.not.i8.i33 = icmp eq ptr %i.ah, null
  br i1 %.not.i8.i33, label %sqlite3_bind_int64.exit34, label %bb.j

bb.j:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i32
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !2796
  tail call void %i.ai(ptr noundef nonnull %i.ah) #58, !inline_history !3369
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
  %i.an = tail call ptr @sqlite3_column_text(ptr noundef %i.k, i32 noundef 2) ; 6 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !2965
  %i.ap = add i8 %i.ao, -48
  %or.cond40.i = icmp ult i8 %i.ap, 10
  br i1 %or.cond40.i, label %.lr.ph.i, label %.critedge.i.preheader

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !2965
  %i.as = add i8 %i.ar, -48
  %or.cond.i = icmp ult i8 %i.as, 10
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.preheader, !llvm.loop !427

.critedge.i.preheader:                            ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv52.i.ph = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.preheader, %bb.l
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %bb.l ], [ %indvars.iv52.i.ph, %.critedge.i.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv52.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !2965
  switch i8 %i.au, label %.loopexit.i [
    i8 32, label %bb.l
    i8 45, label %bb.m
  ]

bb.l:                                             ; preds = %.critedge.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1
  br label %.critedge.i, !llvm.loop !428

bb.m:                                             ; preds = %.critedge.i
  %i.av = shl i64 %indvars.iv52.i, 32
  %sext.i = add i64 %i.av, 4294967296
  %.phi.trans.insert.i = ashr exact i64 %sext.i, 32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.critedge.i, %bb.m
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %bb.m ], [ %indvars.iv52.i, %.critedge.i ] ; 2 uses
  %.031.i = phi i64 [ -1, %bb.m ], [ 1, %.critedge.i ]
  %3 = getelementptr inbounds i8, ptr %i.an, i64 %.pre-phi.i
  %4 = load i8, ptr %3, align 1, !tbaa !2965      ; 2 uses
  %i.aw = add i8 %4, -48
  %or.cond3844.i = icmp ult i8 %i.aw, 10
  br i1 %or.cond3844.i, label %.lr.ph47.i, label %.thread

.lr.ph47.i:                                       ; preds = %.loopexit.i, %.lr.ph47.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %.lr.ph47.i ], [ %.pre-phi.i, %.loopexit.i ]
  %i.ax = phi i8 [ %i.bd, %.lr.ph47.i ], [ %4, %.loopexit.i ]
  %.146.i = phi i64 [ %i.bb, %.lr.ph47.i ], [ 0, %.loopexit.i ]
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = mul i64 %.146.i, 10
  %i.ba = add nsw i64 %i.ay, -48
  %i.bb = add i64 %i.ba, %i.az                    ; 2 uses
  %indvars.iv.next56.i = add nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.an, i64 %indvars.iv.next56.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !2965 ; 2 uses
  %i.be = add i8 %i.bd, -48
  %or.cond38.i = icmp ult i8 %i.be, 10
  br i1 %or.cond38.i, label %.lr.ph47.i, label %fts3ReadEndBlockField.exit, !llvm.loop !429

.thread:                                          ; preds = %.loopexit.i, %.lr.ph
  %i.bf = tail call i32 @sqlite3_reset(ptr noundef %i.k)
  br label %bb.aq

fts3ReadEndBlockField.exit:                       ; preds = %.lr.ph47.i
  %i.bg = mul nsw i64 %i.bb, %.031.i              ; 2 uses
  %i.bh = icmp slt i64 %i.bg, 1
  %i.bi = icmp sgt i64 %i.bg, %i.j
  %or.cond = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond, label %fts3ReadEndBlockField.exit._crit_edge.thread, label %bb.k

fts3ReadEndBlockField.exit._crit_edge.thread:     ; preds = %fts3ReadEndBlockField.exit, %sqlite3_bind_int64.exit34
  %i.bj = tail call i32 @sqlite3_reset(ptr noundef %i.k)
  br label %bb.aq

bb.n:                                             ; preds = %bb.k
  %i.bk = tail call i32 @sqlite3_reset(ptr noundef %i.k) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store ptr null, ptr %i.b, align 8, !tbaa !3120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  store ptr null, ptr %i.c, align 8, !tbaa !3120
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %.thread64

bb.o:                                             ; preds = %bb.n
  %i.bm = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 38, ptr noundef %i.b, ptr noundef null) ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %.thread64

bb.p:                                             ; preds = %bb.o
  %i.bo = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 39, ptr noundef %i.c, ptr noundef null) ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.q, label %.thread64

bb.q:                                             ; preds = %bb.p
  %i.bq = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.k, i32 noundef 0)
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.r, label %sqlite3_bind_int64.exit38

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !2925 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 20 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !2918
  %i.bw = and i16 %i.bv, -28672
  %.not.i.i35 = icmp eq i16 %i.bw, 0
  br i1 %.not.i.i35, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.bt, i64 noundef %1)
  br label %sqlite3VdbeMemSetInt64.exit.i36

bb.t:                                             ; preds = %bb.r
  store i64 %1, ptr %i.bt, align 8, !tbaa !2965
  store i16 4, ptr %i.bu, align 4, !tbaa !2918
  br label %sqlite3VdbeMemSetInt64.exit.i36

sqlite3VdbeMemSetInt64.exit.i36:                  ; preds = %bb.t, %bb.s
  %i.bx = load ptr, ptr %i.k, align 8, !tbaa !2911
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2825 ; 2 uses
  %.not.i8.i37 = icmp eq ptr %i.bz, null
  br i1 %.not.i8.i37, label %sqlite3_bind_int64.exit38, label %bb.u

bb.u:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i36
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !2796
  tail call void %i.ca(ptr noundef nonnull %i.bz) #58, !inline_history !3369
  br label %sqlite3_bind_int64.exit38

sqlite3_bind_int64.exit38:                        ; preds = %bb.q, %sqlite3VdbeMemSetInt64.exit.i36, %bb.u
  %i.cb = load ptr, ptr %i.b, align 8             ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 128 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %sqlite3_bind_int.exit46, %sqlite3_bind_int64.exit38
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3_bind_int.exit46 ], [ 0, %sqlite3_bind_int64.exit38 ] ; 3 uses
  %i.cd = tail call i32 @sqlite3_step(ptr noundef %i.k)
  %i.ce = icmp eq i32 %i.cd, 100
  br i1 %i.ce, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cf = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.cb, i32 noundef 0)
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.x, label %sqlite3_bind_int.exit

bb.x:                                             ; preds = %bb.w
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !2925 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 20 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 4, !tbaa !2918
  %i.ck = and i16 %i.cj, -28672
  %.not.i.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ch, i64 noundef %indvars.iv)
  br label %sqlite3VdbeMemSetInt64.exit.i.i

bb.z:                                             ; preds = %bb.x
  store i64 %indvars.iv, ptr %i.ch, align 8, !tbaa !2965
  store i16 4, ptr %i.ci, align 4, !tbaa !2918
  br label %sqlite3VdbeMemSetInt64.exit.i.i

sqlite3VdbeMemSetInt64.exit.i.i:                  ; preds = %bb.z, %bb.y
  %i.cl = load ptr, ptr %i.cb, align 8, !tbaa !2911
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2825 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i8.i.i, label %sqlite3_bind_int.exit, label %bb.aa

bb.aa:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !2796
  tail call void %i.co(ptr noundef nonnull %i.cn) #58, !inline_history !5201
  br label %sqlite3_bind_int.exit

sqlite3_bind_int.exit:                            ; preds = %bb.w, %sqlite3VdbeMemSetInt64.exit.i.i, %bb.aa
  %i.cp = tail call i32 @sqlite3_column_int(ptr noundef %i.k, i32 noundef 0)
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.cb, i32 noundef 1)
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ab, label %sqlite3_bind_int.exit42

bb.ab:                                            ; preds = %sqlite3_bind_int.exit
  %i.ct = load ptr, ptr %i.cc, align 8, !tbaa !2925 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 76 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 4, !tbaa !2918
  %i.cx = and i16 %i.cw, -28672
  %.not.i.i.i39 = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i.i39, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.cu, i64 noundef %i.cq)
  br label %sqlite3VdbeMemSetInt64.exit.i.i40

bb.ad:                                            ; preds = %bb.ab
  store i64 %i.cq, ptr %i.cu, align 8, !tbaa !2965
  store i16 4, ptr %i.cv, align 4, !tbaa !2918
  br label %sqlite3VdbeMemSetInt64.exit.i.i40

sqlite3VdbeMemSetInt64.exit.i.i40:                ; preds = %bb.ad, %bb.ac
  %i.cy = load ptr, ptr %i.cb, align 8, !tbaa !2911
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !2825 ; 2 uses
  %.not.i8.i.i41 = icmp eq ptr %i.da, null
  br i1 %.not.i8.i.i41, label %sqlite3_bind_int.exit42, label %bb.ae

bb.ae:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i40
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !2796
  tail call void %i.db(ptr noundef nonnull %i.da) #58, !inline_history !5201
  br label %sqlite3_bind_int.exit42

sqlite3_bind_int.exit42:                          ; preds = %sqlite3_bind_int.exit, %sqlite3VdbeMemSetInt64.exit.i.i40, %bb.ae
  %i.dc = tail call i32 @sqlite3_column_int(ptr noundef %i.k, i32 noundef 1)
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.cb, i32 noundef 2)
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.af, label %sqlite3_bind_int.exit46

bb.af:                                            ; preds = %sqlite3_bind_int.exit42
  %i.dg = load ptr, ptr %i.cc, align 8, !tbaa !2925 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 112 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 132 ; 2 uses
  %i.dj = load i16, ptr %i.di, align 4, !tbaa !2918
  %i.dk = and i16 %i.dj, -28672
  %.not.i.i.i43 = icmp eq i16 %i.dk, 0
  br i1 %.not.i.i.i43, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.dh, i64 noundef %i.dd)
  br label %sqlite3VdbeMemSetInt64.exit.i.i44

bb.ah:                                            ; preds = %bb.af
  store i64 %i.dd, ptr %i.dh, align 8, !tbaa !2965
  store i16 4, ptr %i.di, align 4, !tbaa !2918
  br label %sqlite3VdbeMemSetInt64.exit.i.i44

sqlite3VdbeMemSetInt64.exit.i.i44:                ; preds = %bb.ah, %bb.ag
  %i.dl = load ptr, ptr %i.cb, align 8, !tbaa !2911
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !2825 ; 2 uses
  %.not.i8.i.i45 = icmp eq ptr %i.dn, null
  br i1 %.not.i8.i.i45, label %sqlite3_bind_int.exit46, label %bb.ai

bb.ai:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i44
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !2796
  tail call void %i.do(ptr noundef nonnull %i.dn) #58, !inline_history !5201
  br label %sqlite3_bind_int.exit46
end_hunk_4
begin_hunk_5_@sqlite3Fts3Incrmerge:bb.a
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.bt, %bb.bs
  %.pre-phi.i.i = phi i64 [ %i.lp, %bb.bt ], [ 0, %bb.bs ]
  %i.lq = getelementptr inbounds i8, ptr %i.ll, i64 %.pre-phi.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.lq, i8 0, i64 20, i1 false)
  br label %sqlite3Fts3SegReaderNew.exit.i

bb.bu:                                            ; preds = %bb.br
  %i.lr = add nsw i64 %i.ku, -1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !5054
  br label %sqlite3Fts3SegReaderNew.exit.i

sqlite3Fts3SegReaderNew.exit.i:                   ; preds = %bb.bu, %._crit_edge.i.i
  store ptr %i.lg, ptr %i.la, align 8, !tbaa !5037
  %i.lt = load i32, ptr %i.bc, align 8, !tbaa !5034
  %i.lu = add nsw i32 %i.lt, 1
  store i32 %i.lu, ptr %i.bc, align 8, !tbaa !5034
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i351, 1 ; 2 uses
  %i.lv = call i32 @sqlite3_step(ptr noundef %i.kh), !inline_history !10840
  %i.lw = icmp ne i32 %i.lv, 100
  %i.lx = icmp samesign uge i64 %indvars.iv.next.i, %i.ka
  %or.cond.not.i = select i1 %i.lw, i1 true, i1 %i.lx
  br i1 %or.cond.not.i, label %thread-pre-split, label %.lr.ph, !llvm.loop !10843

.critedge.i144:                                   ; preds = %bb.bo, %bb.bq, %sqlite3_malloc64.exit.i.i
  %.032.i.ph.i = phi i32 [ 7, %bb.bq ], [ 7, %sqlite3_malloc64.exit.i.i ], [ 267, %bb.bo ]
  %i.ly = load i32, ptr %i.bc, align 8, !tbaa !5034
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.bc, align 8, !tbaa !5034
  %i.ma = call i32 @sqlite3_reset(ptr noundef %i.kh), !inline_history !10840 ; 0 uses
  br label %thread-pre-split.thread560

thread-pre-split.thread560:                       ; preds = %sqlite3_malloc64.exit.thread.i, %bb.bi, %sqlite3_malloc64.exit.i, %.critedge.i144
  %.3.i.ph = phi i32 [ %.032.i.ph.i, %.critedge.i144 ], [ 7, %sqlite3_malloc64.exit.i ], [ %i.kf, %bb.bi ], [ 7, %sqlite3_malloc64.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #58
  store i32 %.3.i.ph, ptr %i.n, align 4, !tbaa !2800
  br label %.thread274

thread-pre-split:                                 ; preds = %sqlite3Fts3SegReaderNew.exit.i, %sqlite3_bind_int64.exit.i143
  %i.mb = call i32 @sqlite3_reset(ptr noundef %i.kh), !inline_history !10840 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #58
  store i32 %i.mb, ptr %i.n, align 4, !tbaa !2800
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.bv, label %.thread274

bb.bv:                                            ; preds = %thread-pre-split
  %i.md = load i32, ptr %i.bc, align 8, !tbaa !5034
  %i.me = icmp eq i32 %i.md, %i.gl
  br i1 %i.me, label %bb.bw, label %.thread274

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.t, ptr %i.bd, align 8, !tbaa !5016
  %i.mf = load ptr, ptr %i.t, align 8, !tbaa !5017
  %i.mg = load i32, ptr %i.be, align 8, !tbaa !5018
  %i.mh = call fastcc i32 @fts3SegReaderStart(ptr noundef %0, ptr noundef nonnull %i.u, ptr noundef %i.mf, i32 noundef %i.mg), !inline_history !390 ; 3 uses
  store i32 %i.mh, ptr %i.n, align 4, !tbaa !2800
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.bx, label %.thread274

bb.bx:                                            ; preds = %bb.bw
  %i.mj = call fastcc i32 @sqlite3Fts3SegReaderStep(ptr noundef %0, ptr noundef nonnull %i.u) ; 4 uses
  store i32 %i.mj, ptr %i.n, align 4, !tbaa !2800
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
  %i.ml = load ptr, ptr %i.bz, align 8, !tbaa !5072 ; 2 uses
  %i.mm = load i32, ptr %i.ca, align 8, !tbaa !5071 ; 3 uses
  %i.mn = add nsw i32 %.0229, -1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  store ptr null, ptr %i.e, align 8, !tbaa !3120
  %i.mo = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 32, ptr noundef %i.e, ptr noundef null), !inline_history !10844 ; 2 uses
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %bb.ca, label %fts3IncrmergeLoad.exit

bb.ca:                                            ; preds = %bb.bz
  %i.mq = load ptr, ptr %i.e, align 8, !tbaa !3120 ; 18 uses
  %i.mr = add nuw nsw i64 %.3104, 1               ; 2 uses
  %i.ms = call fastcc i32 @vdbeUnbind(ptr noundef %i.mq, i32 noundef 0), !inline_history !10844
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %bb.cb, label %sqlite3_bind_int64.exit.i150

bb.cb:                                            ; preds = %bb.ca
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 128
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !2925 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 20 ; 2 uses
  %i.mx = load i16, ptr %i.mw, align 4, !tbaa !2918
  %i.my = and i16 %i.mx, -28672
  %.not.i.i.i168 = icmp eq i16 %i.my, 0
  br i1 %.not.i.i.i168, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.mv, i64 noundef %i.mr), !inline_history !10844
  br label %sqlite3VdbeMemSetInt64.exit.i.i169

bb.cd:                                            ; preds = %bb.cb
  store i64 %i.mr, ptr %i.mv, align 8, !tbaa !2965
  store i16 4, ptr %i.mw, align 4, !tbaa !2918
  br label %sqlite3VdbeMemSetInt64.exit.i.i169

sqlite3VdbeMemSetInt64.exit.i.i169:               ; preds = %bb.cd, %bb.cc
  %i.mz = load ptr, ptr %i.mq, align 8, !tbaa !2911
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !2825 ; 2 uses
  %.not.i8.i.i170 = icmp eq ptr %i.nb, null
  br i1 %.not.i8.i.i170, label %sqlite3_bind_int64.exit.i150, label %bb.ce

bb.ce:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i169
  %i.nc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !2796
  call void %i.nc(ptr noundef nonnull %i.nb) #58, !inline_history !10845
  br label %sqlite3_bind_int64.exit.i150

sqlite3_bind_int64.exit.i150:                     ; preds = %bb.ce, %sqlite3VdbeMemSetInt64.exit.i.i169, %bb.ca
  %i.nd = zext nneg i32 %i.mn to i64              ; 2 uses
  %i.ne = call fastcc i32 @vdbeUnbind(ptr noundef %i.mq, i32 noundef 1), !inline_history !10844
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %bb.cf, label %sqlite3_bind_int.exit.i151

bb.cf:                                            ; preds = %sqlite3_bind_int64.exit.i150
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mq, i64 128
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !2925 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 56 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 76 ; 2 uses
  %i.nk = load i16, ptr %i.nj, align 4, !tbaa !2918
  %i.nl = and i16 %i.nk, -28672
  %.not.i.i.i.i165 = icmp eq i16 %i.nl, 0
  br i1 %.not.i.i.i.i165, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ni, i64 noundef %i.nd), !inline_history !10844
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i166

bb.ch:                                            ; preds = %bb.cf
  store i64 %i.nd, ptr %i.ni, align 8, !tbaa !2965
  store i16 4, ptr %i.nj, align 4, !tbaa !2918
  br label %sqlite3VdbeMemSetInt64.exit.i.i.i166

sqlite3VdbeMemSetInt64.exit.i.i.i166:             ; preds = %bb.ch, %bb.cg
  %i.nm = load ptr, ptr %i.mq, align 8, !tbaa !2911
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !2825 ; 2 uses
  %.not.i8.i.i.i167 = icmp eq ptr %i.no, null
  br i1 %.not.i8.i.i.i167, label %sqlite3_bind_int.exit.i151, label %bb.ci

bb.ci:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i.i166
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !2796
  call void %i.np(ptr noundef nonnull %i.no) #58, !inline_history !10846
  br label %sqlite3_bind_int.exit.i151

sqlite3_bind_int.exit.i151:                       ; preds = %bb.ci, %sqlite3VdbeMemSetInt64.exit.i.i.i166, %sqlite3_bind_int64.exit.i150
  %i.nq = call i32 @sqlite3_step(ptr noundef %i.mq), !inline_history !10844
  %i.nr = icmp eq i32 %i.nq, 100
  br i1 %i.nr, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %sqlite3_bind_int.exit.i151
  %i.ns = call i64 @sqlite3_column_int64(ptr noundef %i.mq, i32 noundef 1), !inline_history !10844 ; 8 uses
  %i.nt = call i64 @sqlite3_column_int64(ptr noundef %i.mq, i32 noundef 2), !inline_history !10844
  %i.nu = call ptr @sqlite3_column_text(ptr noundef %i.mq, i32 noundef 3), !inline_history !10844 ; 6 uses
  %.not.i.i152 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i152, label %fts3ReadEndBlockField.exitthread-pre-split.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.cj
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !2965 ; 2 uses
  %i.nw = add i8 %i.nv, -48
  %or.cond40.i.i = icmp ult i8 %i.nw, 10
  br i1 %or.cond40.i.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %i.nx = phi i8 [ %i.od, %.lr.ph.i.i ], [ %i.nv, %.preheader.i.i ]
  %.042.i.i = phi i64 [ %i.ob, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %i.ny = zext nneg i8 %i.nx to i64
  %i.nz = mul i64 %.042.i.i, 10
  %i.oa = add nsw i64 %i.ny, -48
  %i.ob = add i64 %i.oa, %i.nz                    ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 %indvars.iv.next.i.i
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !2965 ; 2 uses
  %i.oe = add i8 %i.od, -48
  %or.cond.i.i = icmp ult i8 %i.oe, 10
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !427

.critedge.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.032.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.ob, %.lr.ph.i.i ]
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.critedge.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %bb.cl ], [ %.032.lcssa.i.i, %.critedge.i.i ] ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nu, i64 %indvars.iv52.i.i
  %i.og = load i8, ptr %i.of, align 1, !tbaa !2965
  switch i8 %i.og, label %.loopexit.i.i [
    i8 32, label %bb.cl
    i8 45, label %bb.cm
  ]

bb.cl:                                            ; preds = %bb.ck
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1
  br label %bb.ck, !llvm.loop !428

bb.cm:                                            ; preds = %bb.ck
  %i.oh = shl i64 %indvars.iv52.i.i, 32
  %sext.i.i = add i64 %i.oh, 4294967296
  %.phi.trans.insert.i.i.a = ashr exact i64 %sext.i.i, 32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ck, %bb.cm
  %.pre-phi.i.i153 = phi i64 [ %.phi.trans.insert.i.i.a, %bb.cm ], [ %indvars.iv52.i.i, %bb.ck ] ; 2 uses
  %.031.i.i = phi i64 [ -1, %bb.cm ], [ 1, %bb.ck ]
  %6 = getelementptr inbounds i8, ptr %i.nu, i64 %.pre-phi.i.i153
  %7 = load i8, ptr %6, align 1, !tbaa !2965      ; 2 uses
  %i.oi = add i8 %7, -48
  %or.cond3844.i.i = icmp ult i8 %i.oi, 10
  br i1 %or.cond3844.i.i, label %.lr.ph47.i.i, label %.critedge2.i.i

.lr.ph47.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph47.i.i
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.lr.ph47.i.i ], [ %.pre-phi.i.i153, %.loopexit.i.i ]
  %i.oj = phi i8 [ %i.op, %.lr.ph47.i.i ], [ %7, %.loopexit.i.i ]
  %.146.i.i = phi i64 [ %i.on, %.lr.ph47.i.i ], [ 0, %.loopexit.i.i ]
  %i.ok = zext nneg i8 %i.oj to i64
  %i.ol = mul i64 %.146.i.i, 10
  %i.om = add nsw i64 %i.ok, -48
  %i.on = add i64 %i.om, %i.ol                    ; 2 uses
  %indvars.iv.next56.i.i = add nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %i.nu, i64 %indvars.iv.next56.i.i
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !2965 ; 2 uses
  %i.oq = add i8 %i.op, -48
  %or.cond38.i.i = icmp ult i8 %i.oq, 10
  br i1 %or.cond38.i.i, label %.lr.ph47.i.i, label %.critedge2.loopexit.i.i, !llvm.loop !429

.critedge2.loopexit.i.i:                          ; preds = %.lr.ph47.i.i
  %i.or = mul nsw i64 %i.on, %.031.i.i
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge2.loopexit.i.i, %.loopexit.i.i
  %.1.lcssa.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %i.or, %.critedge2.loopexit.i.i ] ; 2 uses
  store i64 %.1.lcssa.i.i, ptr %i.cb, align 8, !tbaa !2795
  br label %fts3ReadEndBlockField.exit.i

fts3ReadEndBlockField.exitthread-pre-split.i:     ; preds = %bb.cj
  %.pr.i = load i64, ptr %i.cb, align 8, !tbaa !10886
  br label %fts3ReadEndBlockField.exit.i

fts3ReadEndBlockField.exit.i:                     ; preds = %fts3ReadEndBlockField.exitthread-pre-split.i, %.critedge2.i.i
  %i.os = phi i64 [ %.pr.i, %fts3ReadEndBlockField.exitthread-pre-split.i ], [ %.1.lcssa.i.i, %.critedge2.i.i ] ; 3 uses
  %.0158.i = phi i64 [ 0, %fts3ReadEndBlockField.exitthread-pre-split.i ], [ %.0.lcssa.i.i, %.critedge2.i.i ] ; 4 uses
  %i.ot = icmp slt i64 %i.os, 0
  br i1 %i.ot, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %fts3ReadEndBlockField.exit.i
  %i.ou = sub nsw i64 0, %i.os
  store i64 %i.ou, ptr %i.cb, align 8, !tbaa !10886
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %fts3ReadEndBlockField.exit.i
  %i.ov = phi i64 [ 1, %bb.cn ], [ %i.os, %fts3ReadEndBlockField.exit.i ]
  %i.ow = icmp eq i64 %i.ov, 0
  %i.ox = zext i1 %i.ow to i8
  store i8 %i.ox, ptr %i.cc, align 8, !tbaa !10887
  %i.oy = call i32 @sqlite3_column_bytes(ptr noundef %i.mq, i32 noundef 4), !inline_history !10844 ; 4 uses
  %i.oz = call ptr @sqlite3_column_blob(ptr noundef %i.mq, i32 noundef 4), !inline_history !10844 ; 3 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.pb = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !10844 ; 0 uses
  %.not99.i = icmp eq i32 %i.oy, 0
  %i.pc = select i1 %.not99.i, i32 267, i32 7
  br label %fts3IncrmergeLoad.exit

bb.cq:                                            ; preds = %sqlite3_bind_int.exit.i151
  %i.pd = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !10844
  br label %fts3IncrmergeLoad.exit

bb.cr:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  store ptr null, ptr %i.d, align 8, !tbaa !3120
  %i.pe = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 34, ptr noundef %i.d, ptr noundef null), !inline_history !10847 ; 2 uses
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.cs, label %.thread176.i

.thread176.i:                                     ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  %i.pg = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !10844 ; 0 uses
  br label %fts3IncrmergeLoad.exit

bb.cs:                                            ; preds = %bb.cr
  %i.ph = load ptr, ptr %i.d, align 8, !tbaa !3120 ; 5 uses
  %i.pi = call fastcc i32 @vdbeUnbind(ptr noundef %i.ph, i32 noundef 0), !inline_history !10847
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %bb.ct, label %fts3IsAppendable.exit.i

bb.ct:                                            ; preds = %bb.cs
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 128
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !2925 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 20 ; 2 uses
  %i.pn = load i16, ptr %i.pm, align 4, !tbaa !2918
  %i.po = and i16 %i.pn, -28672
  %.not.i.i.i102.i = icmp eq i16 %i.po, 0
  br i1 %.not.i.i.i102.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.pl, i64 noundef %.0158.i), !inline_history !10847
  br label %sqlite3VdbeMemSetInt64.exit.i.i103.i

bb.cv:                                            ; preds = %bb.ct
  store i64 %.0158.i, ptr %i.pl, align 8, !tbaa !2965
  store i16 4, ptr %i.pm, align 4, !tbaa !2918
  br label %sqlite3VdbeMemSetInt64.exit.i.i103.i

sqlite3VdbeMemSetInt64.exit.i.i103.i:             ; preds = %bb.cv, %bb.cu
  %i.pp = load ptr, ptr %i.ph, align 8, !tbaa !2911
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !2825 ; 2 uses
  %.not.i8.i.i104.i = icmp eq ptr %i.pr, null
  br i1 %.not.i8.i.i104.i, label %fts3IsAppendable.exit.i, label %bb.cw

bb.cw:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i103.i
  %i.ps = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !2796
  call void %i.ps(ptr noundef nonnull %i.pr) #58, !inline_history !10848
  br label %fts3IsAppendable.exit.i

fts3IsAppendable.exit.i:                          ; preds = %bb.cw, %sqlite3VdbeMemSetInt64.exit.i.i103.i, %bb.cs
  %i.pt = call i32 @sqlite3_step(ptr noundef %i.ph), !inline_history !10847
  %i.pu = icmp eq i32 %i.pt, 100                  ; 2 uses
  %i.pv = call i32 @sqlite3_reset(ptr noundef %i.ph), !inline_history !10847 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  %i.pw = icmp eq i32 %i.pv, 0
  %or.cond.i = select i1 %i.pw, i1 %i.pu, i1 false
  br i1 %or.cond.i, label %bb.cx, label %bb.dl

bb.cx:                                            ; preds = %fts3IsAppendable.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  store ptr null, ptr %i.f, align 8, !tbaa !2971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #58
  store i32 0, ptr %i.g, align 4, !tbaa !2800
  %i.px = call fastcc i32 @sqlite3Fts3ReadBlock(ptr noundef %0, i64 noundef %i.nt, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g), !inline_history !10844 ; 2 uses
  %i.py = icmp eq i32 %i.px, 0
  %.pre212.i = load ptr, ptr %i.f, align 8, !tbaa !2971 ; 8 uses
  br i1 %i.py, label %bb.cy, label %bb.df

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.pz = load i32, ptr %i.g, align 4, !tbaa !2800
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, i8 0, i64 48, i1 false)
  store ptr %.pre212.i, ptr %3, align 8, !tbaa !5228
  store i32 %i.pz, ptr %i.cd, align 8, !tbaa !5229
  %.not.i105.i = icmp eq ptr %.pre212.i, null
  br i1 %.not.i105.i, label %._crit_edge.i162, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qa = load i8, ptr %.pre212.i, align 1, !tbaa !2965
  %.not12.i.i = icmp eq i8 %i.qa, 0
  br i1 %.not12.i.i, label %nodeReaderInit.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cz
  %i.qb = getelementptr inbounds nuw i8, ptr %.pre212.i, i64 1
  %i.qc = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.qb, ptr noundef nonnull %i.ce), !inline_history !10849
  %i.qd = add nsw i32 %i.qc, 1
  br label %nodeReaderInit.exit.i

nodeReaderInit.exit.i:                            ; preds = %.thread.i.i, %bb.cz
  %.sink.i.i = phi i32 [ %i.qd, %.thread.i.i ], [ 1, %bb.cz ]
  store i32 %.sink.i.i, ptr %i.cf, align 4, !tbaa !5230
  %i.qe = call fastcc i32 @nodeReaderNext(ptr noundef nonnull %3), !inline_history !10849 ; 2 uses
  %.pre.i161 = load ptr, ptr %3, align 8
  %i.qf = icmp ne ptr %.pre.i161, null
  %i.qg = icmp eq i32 %i.qe, 0
  %i.qh = select i1 %i.qg, i1 %i.qf, i1 false
  br i1 %i.qh, label %.lr.ph.i164, label %._crit_edge.i162thread-pre-split

.lr.ph.i164:                                      ; preds = %nodeReaderInit.exit.i, %.lr.ph.i164
  %i.qi = call fastcc i32 @nodeReaderNext(ptr noundef %3), !inline_history !10844 ; 2 uses
  %i.qj = icmp eq i32 %i.qi, 0
  %i.qk = load ptr, ptr %3, align 8
  %i.ql = icmp ne ptr %i.qk, null
  %i.qm = select i1 %i.qj, i1 %i.ql, i1 false
  br i1 %i.qm, label %.lr.ph.i164, label %._crit_edge.i162thread-pre-split, !llvm.loop !10850

._crit_edge.i162thread-pre-split:                 ; preds = %.lr.ph.i164, %nodeReaderInit.exit.i
  %storemerge.lcssa.i.ph = phi i32 [ %i.qe, %nodeReaderInit.exit.i ], [ %i.qi, %.lr.ph.i164 ]
  %.pr = load ptr, ptr %i.cg, align 8, !tbaa !5231
  br label %._crit_edge.i162

._crit_edge.i162:                                 ; preds = %._crit_edge.i162thread-pre-split, %bb.cy
  %i.qn = phi ptr [ %.pr, %._crit_edge.i162thread-pre-split ], [ null, %bb.cy ] ; 5 uses
  %storemerge.lcssa.i = phi i32 [ %storemerge.lcssa.i.ph, %._crit_edge.i162thread-pre-split ], [ 0, %bb.cy ]
  %i.qo = load i32, ptr %i.ch, align 8, !tbaa !5232 ; 3 uses
  %i.qp = call i32 @llvm.smin.i32(i32 %i.mm, i32 %i.qo) ; 2 uses
  %i.qq = icmp ne i32 %i.qp, 0
  %i.qr = icmp ne ptr %i.ml, null
  %or.cond.i106.i = and i1 %i.qr, %i.qq
  %i.qs = icmp ne ptr %i.qn, null                 ; 2 uses
  %or.cond3.i.i = and i1 %i.qs, %or.cond.i106.i
  br i1 %or.cond3.i.i, label %fts3TermCmp.exit.thread.i, label %fts3TermCmp.exit.i

fts3TermCmp.exit.thread.i:                        ; preds = %._crit_edge.i162
  %i.qt = sext i32 %i.qp to i64
  %i.qu = call i32 @memcmp(ptr noundef nonnull readonly %i.ml, ptr noundef nonnull readonly %i.qn, i64 noundef %i.qt) #59, !inline_history !10844
  %.fr.i.i = freeze i32 %i.qu                     ; 2 uses
  %i.qv = icmp eq i32 %.fr.i.i, 0
  %i.qw = sub nsw i32 %i.mm, %i.qo
  %spec.select.i108.i = select i1 %i.qv, i32 %i.qw, i32 %.fr.i.i
  %.inv245.i = icmp sgt i32 %spec.select.i108.i, 0
  br label %bb.da

fts3TermCmp.exit.i:                               ; preds = %._crit_edge.i162
  %.inv.i = icmp sgt i32 %i.mm, %i.qo             ; 2 uses
  br i1 %i.qs, label %bb.da, label %nodeReaderRelease.exit.i

bb.da:                                            ; preds = %fts3TermCmp.exit.i, %fts3TermCmp.exit.thread.i
  %.inv247.i = phi i1 [ %.inv245.i, %fts3TermCmp.exit.thread.i ], [ %.inv.i, %fts3TermCmp.exit.i ] ; 3 uses
  %i.qx = load i32, ptr @sqlite3Config, align 8, !tbaa !2929
  %.not.i.i109.i = icmp eq i32 %i.qx, 0
  br i1 %.not.i.i109.i, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qy = load ptr, ptr @mem0, align 8, !tbaa !2931 ; 2 uses
end_hunk_5
