Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tsvector?download=true
inline.NumInlined: 25
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tsvectorin:bb.a
bb.e:                                             ; preds = %bb.d
  %i.x = call zeroext i1 @errsave_start(ptr noundef %i.i, ptr noundef null) #8
  br i1 %i.x, label %bb.f, label %bb.ax

bb.f:                                             ; preds = %bb.e
  %i.y = call i32 @errcode(i32 noundef 261) #8    ; 0 uses
  %i.z = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.2, i64 noundef %i.v, i64 noundef 1048575) #8 ; 0 uses
  call void @errsave_finish(ptr noundef %i.i, ptr noundef nonnull @.str.1, i32 noundef 221, ptr noundef nonnull @__func__.tsvectorin) #8
  br label %bb.ax

bb.g:                                             ; preds = %bb.d
  %.not129 = icmp slt i32 %.0118162, %.0120161
  br i1 %.not129, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = shl i32 %.0120161, 1                    ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, 24
  %i.ad = call ptr @repalloc(ptr noundef %.0122160, i64 noundef %i.ac) #8
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi i32 [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %.1123 = phi ptr [ %i.ad, %bb.h ], [ %.0122160, %bb.g ] ; 3 uses
  %.1121 = phi i32 [ %i.aa, %bb.h ], [ %.0120161, %bb.g ]
  %i.af = sext i32 %i.ae to i64
  %i.ag = add i64 %i.v, %i.af
  %i.ah = sext i32 %.0135159 to i64
  %.not130152 = icmp slt i64 %i.ag, %i.ah
  br i1 %.not130152, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ai = shl i64 %i.v, 32
  %i.aj = ashr exact i64 %i.ai, 32                ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1114154 = phi ptr [ %i.am, %.lr.ph ], [ %.0113163, %.lr.ph.preheader ]
  %.1136153 = phi i32 [ %i.ak, %.lr.ph ], [ %.0135159, %.lr.ph.preheader ]
  %i.ak = shl i32 %.1136153, 1                    ; 3 uses
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = call ptr @repalloc(ptr noundef %.1114154, i64 noundef %i.al) #8 ; 3 uses
  %i.an = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = add nsw i64 %i.aj, %i.ao
  %.not130 = icmp slt i64 %i.ap, %i.al
  br i1 %.not130, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !5

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.aj
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.1136.lcssa = phi i32 [ %.0135159, %bb.i ], [ %i.ak, %._crit_edge.loopexit ]
  %.1114.lcssa = phi ptr [ %.0113163, %bb.i ], [ %i.am, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0112164, %bb.i ], [ %i.aq, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa142 = phi i64 [ %i.v, %bb.i ], [ %i.aj, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.ae, %bb.i ], [ %i.an, %._crit_edge.loopexit ]
  %i.ar = sext i32 %.0118162 to i64
  %i.as = getelementptr inbounds [24 x i8], ptr %.1123, i64 %i.ar ; 7 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = shl i32 %.lcssa, 1
  %i.av = and i32 %i.at, 1
  %i.aw = trunc i64 %.lcssa142 to i32
  %i.ax = shl i32 %i.aw, 12
  %.masked = and i32 %i.au, 4094
  %i.ay = or disjoint i32 %.masked, %i.av
  %i.az = or disjoint i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 8
  %i.ba = load ptr, ptr %i.a, align 8
  %i.bb = load i32, ptr %i.b, align 4
  %i.bc = sext i32 %i.bb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1.lcssa, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  %i.bd = load i32, ptr %i.b, align 4
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %.1.lcssa, i64 %i.be
  %i.bg = load i32, ptr %i.d, align 4
  %.not131 = icmp eq i32 %i.bg, 0
  %i.bh = load i32, ptr %i.as, align 8            ; 2 uses
  br i1 %.not131, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bi = or i32 %i.bh, 1
  store i32 %i.bi, ptr %i.as, align 8
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = load i32, ptr %i.d, align 4
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.bl = and i32 %i.bh, -2
  store i32 %i.bl, ptr %i.as, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink184 = phi ptr [ null, %bb.k ], [ %i.bj, %bb.j ]
  %.sink = phi i32 [ 0, %bb.k ], [ %i.bk, %bb.j ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sink184, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 %.sink, ptr %i.bn, align 8
  %i.bo = add i32 %.0118162, 1                    ; 2 uses
  %i.bp = call zeroext i1 @gettoken_tsvector(ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null) #8
  br i1 %i.bp, label %.lr.ph166, label %._crit_edge167, !llvm.loop !6

._crit_edge167:                                   ; preds = %bb.l, %bb.a
  %.0122.lcssa = phi ptr [ %i.k, %bb.a ], [ %.1123, %bb.l ] ; 8 uses
  %.0118.lcssa = phi i32 [ 0, %bb.a ], [ %i.bo, %bb.l ] ; 4 uses
  %.0113.lcssa = phi ptr [ %i.l, %bb.a ], [ %.1114.lcssa, %bb.l ] ; 4 uses
  call void @close_tsvector_parser(ptr noundef %i.j) #8
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %._crit_edge167
  %i.bq = load i32, ptr %i.i, align 4
  %i.br = icmp eq i32 %i.bq, 468
  br i1 %i.br, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bt = load i8, ptr %i.bs, align 4, !range !10, !noundef !11
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.bv, align 4
  br label %bb.ax

bb.p:                                             ; preds = %bb.n, %bb.m, %._crit_edge167
  %i.bw = icmp sgt i32 %.0118.lcssa, 0
  br i1 %i.bw, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.not141 = icmp eq i32 %.0118.lcssa, 1
  br i1 %.not141, label %._crit_edge91.i, label %.lr.ph.preheader.i

._crit_edge91.i:                                  ; preds = %bb.q
  %i.bx = ptrtoint ptr %.0122.lcssa to i64
  br label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.by = zext nneg i32 %.0118.lcssa to i64       ; 2 uses
  call void @qsort_arg(ptr noundef %.0122.lcssa, i64 noundef %i.by, i64 noundef 24, ptr noundef nonnull @compareentry, ptr noundef %.0113.lcssa) #8
  %i.bz = ptrtoint ptr %.0122.lcssa to i64        ; 2 uses
  %.06484.i = getelementptr inbounds nuw i8, ptr %.0122.lcssa, i64 24
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah, %.lr.ph.preheader.i
  %.06488.i = phi ptr [ %.064.i, %bb.ah ], [ %.06484.i, %.lr.ph.preheader.i ] ; 4 uses
  %.087.i = phi i32 [ %.2.i, %bb.ah ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.06286.i = phi ptr [ %.163.i, %bb.ah ], [ %.0122.lcssa, %.lr.ph.preheader.i ] ; 13 uses
  %.pn85.i = phi ptr [ %.06488.i, %bb.ah ], [ %.0122.lcssa, %.lr.ph.preheader.i ] ; 5 uses
  %i.ca = load i32, ptr %.06488.i, align 8        ; 3 uses
  %i.cb = lshr i32 %i.ca, 1
  %i.cc = and i32 %i.cb, 2047                     ; 2 uses
  %i.cd = load i32, ptr %.06286.i, align 8        ; 5 uses
  %i.ce = lshr i32 %i.cd, 1
  %i.cf = and i32 %i.ce, 2047                     ; 2 uses
  %i.cg = icmp eq i32 %i.cc, %i.cf
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.ch = lshr i32 %i.ca, 12
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.0113.lcssa, i64 %i.ci
  %i.ck = lshr i32 %i.cd, 12
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.0113.lcssa, i64 %i.cl
  %i.cn = zext nneg i32 %i.cc to i64
  %i.co = call i32 @strncmp(ptr noundef %i.cj, ptr noundef %i.cm, i64 noundef %i.cn) #9
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i
  %i.cq = add i32 %i.cf, %.087.i                  ; 2 uses
  %i.cr = and i32 %i.cd, 1
  %.not69.i = icmp eq i32 %i.cr, 0
  br i1 %.not69.i, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %.06286.i, i64 16 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8            ; 3 uses
  %i.cu = icmp slt i32 %i.ct, 2
  br i1 %i.cu, label %uniquePos.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.06286.i, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8            ; 5 uses
  %i.cx = zext nneg i32 %i.ct to i64              ; 2 uses
  call void @pg_qsort(ptr noundef %i.cw, i64 noundef %i.cx, i64 noundef 2, ptr noundef nonnull @compareWordEntryPos) #8
  %i.cy = ptrtoint ptr %i.cw to i64               ; 3 uses
  %.02532.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %.pre.i.i = load i16, ptr %i.cw, align 2
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  %i.cz = phi i16 [ %.pre.i.i, %bb.u ], [ %i.dn, %bb.z ] ; 2 uses
  %.02534.i.i = phi ptr [ %.02532.i.i, %bb.u ], [ %.025.i.i, %bb.z ] ; 2 uses
  %.033.i.i = phi ptr [ %i.cw, %bb.u ], [ %.1.i.i, %bb.z ] ; 4 uses
  %i.da = load i16, ptr %.02534.i.i, align 2      ; 5 uses
  %i.db = zext i16 %i.da to i32                   ; 2 uses
  %i.dc = and i32 %i.db, 16383                    ; 2 uses
  %i.dd = zext i16 %i.cz to i32                   ; 2 uses
  %i.de = and i32 %i.dd, 16383
  %.not.i.i = icmp eq i32 %i.dc, %i.de
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %.033.i.i, i64 2 ; 4 uses
  store i16 %i.da, ptr %i.df, align 2
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.cy
  %i.di = icmp sgt i64 %i.dh, 508
  %i.dj = icmp eq i32 %i.dc, 16383
  %or.cond.i.i = or i1 %i.di, %i.dj
  br i1 %or.cond.i.i, label %bb.aa, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.dk = lshr i32 %i.db, 14
  %i.dl = lshr i32 %i.dd, 14
  %i.dm = icmp samesign ugt i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i16 %i.da, ptr %.033.i.i, align 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.dn = phi i16 [ %i.da, %bb.w ], [ %i.da, %bb.y ], [ %i.cz, %bb.x ]
  %.1.i.i = phi ptr [ %i.df, %bb.w ], [ %.033.i.i, %bb.y ], [ %.033.i.i, %bb.x ] ; 2 uses
  %.025.i.i = getelementptr inbounds nuw i8, ptr %.02534.i.i, i64 2 ; 2 uses
  %i.do = ptrtoint ptr %.025.i.i to i64
  %i.dp = sub i64 %i.do, %i.cy
  %i.dq = ashr exact i64 %i.dp, 1
  %i.dr = icmp slt i64 %i.dq, %i.cx
  br i1 %i.dr, label %bb.v, label %bb.aa, !llvm.loop !7

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.2.i.i = phi ptr [ %i.df, %bb.w ], [ %.1.i.i, %bb.z ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 2
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.cy
  %i.dv = lshr exact i64 %i.du, 1
  %i.dw = trunc i64 %i.dv to i32
  br label %uniquePos.exit.i

uniquePos.exit.i:                                 ; preds = %bb.aa, %bb.t
  %.026.i.i = phi i32 [ %i.dw, %bb.aa ], [ %i.ct, %bb.t ] ; 2 uses
  store i32 %.026.i.i, ptr %i.cs, align 8
  %i.dx = add i32 %i.cq, 1
  %i.dy = and i32 %i.dx, -2
  %i.dz = shl i32 %.026.i.i, 1
  %i.ea = add i32 %i.dy, 2
  %i.eb = add i32 %i.ea, %i.dz
  br label %bb.ab

bb.ab:                                            ; preds = %uniquePos.exit.i, %bb.s
  %.1.i = phi i32 [ %i.eb, %uniquePos.exit.i ], [ %i.cq, %bb.s ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.06286.i, i64 24 ; 3 uses
  %.not70.i = icmp eq ptr %.06286.i, %.pn85.i
  br i1 %.not70.i, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %.06488.i, i64 24, i1 false)
  br label %bb.ah

bb.ad:                                            ; preds = %bb.r
  %i.ed = and i32 %i.ca, 1
  %.not71.i = icmp eq i32 %i.ed, 0
  br i1 %.not71.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = and i32 %i.cd, 1
  %.not72.i = icmp eq i32 %i.ee, 0
  br i1 %.not72.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = getelementptr inbounds nuw i8, ptr %.pn85.i, i64 40 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.06286.i, i64 16 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = add i32 %i.ei, %i.eg                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.06286.i, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = sext i32 %i.ej to i64
  %i.en = shl nsw i64 %i.em, 1
  %i.eo = call ptr @repalloc(ptr noundef %i.el, i64 noundef %i.en) #8 ; 2 uses
  store ptr %i.eo, ptr %i.ek, align 8
  %i.ep = load i32, ptr %i.eh, align 8
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.pn85.i, i64 32 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = load i32, ptr %i.ef, align 8
  %i.ev = sext i32 %i.eu to i64
  %i.ew = shl nsw i64 %i.ev, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.er, ptr align 2 %i.et, i64 %i.ew, i1 false)
  store i32 %i.ej, ptr %i.eh, align 8
  %i.ex = load ptr, ptr %i.es, align 8
  call void @pfree(ptr noundef %i.ex) #8
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ey = or disjoint i32 %i.cd, 1
  store i32 %i.ey, ptr %.06286.i, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn85.i, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.06286.i, i64 8
  store ptr %i.fa, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn85.i, i64 40
  %i.fd = load i32, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.06286.i, i64 16
  store i32 %i.fd, ptr %i.fe, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.ab
  %.163.i = phi ptr [ %.06286.i, %bb.af ], [ %.06286.i, %bb.ag ], [ %.06286.i, %bb.ad ], [ %i.ec, %bb.ac ], [ %i.ec, %bb.ab ] ; 2 uses
  %.2.i = phi i32 [ %.087.i, %bb.af ], [ %.087.i, %bb.ag ], [ %.087.i, %bb.ad ], [ %.1.i, %bb.ac ], [ %.1.i, %bb.ab ] ; 2 uses
  %.064.i = getelementptr inbounds nuw i8, ptr %.06488.i, i64 24 ; 2 uses
  %i.ff = ptrtoint ptr %.064.i to i64
  %i.fg = sub i64 %i.ff, %i.bz
  %i.fh = sdiv exact i64 %i.fg, 24
  %i.fi = icmp slt i64 %i.fh, %i.by
  br i1 %i.fi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %bb.ah, %._crit_edge91.i
  %i.fj = phi i64 [ %i.bx, %._crit_edge91.i ], [ %i.bz, %bb.ah ]
  %.062.lcssa.i = phi ptr [ %.0122.lcssa, %._crit_edge91.i ], [ %.163.i, %bb.ah ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %._crit_edge91.i ], [ %.2.i, %bb.ah ]
  %i.fk = load i32, ptr %.062.lcssa.i, align 8    ; 2 uses
  %i.fl = lshr i32 %i.fk, 1
  %i.fm = and i32 %i.fl, 2047
  %i.fn = add i32 %i.fm, %.0.lcssa.i              ; 2 uses
  %i.fo = and i32 %i.fk, 1
  %.not.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.062.lcssa.i, i64 16 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8            ; 3 uses
  %i.fr = icmp slt i32 %i.fq, 2
  br i1 %i.fr, label %uniquePos.exit83.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fs = getelementptr inbounds nuw i8, ptr %.062.lcssa.i, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8            ; 5 uses
  %i.fu = zext nneg i32 %i.fq to i64              ; 2 uses
  call void @pg_qsort(ptr noundef %i.ft, i64 noundef %i.fu, i64 noundef 2, ptr noundef nonnull @compareWordEntryPos) #8
  %i.fv = ptrtoint ptr %i.ft to i64               ; 3 uses
  %.02532.i73.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  %.pre.i74.i = load i16, ptr %i.ft, align 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ao, %bb.aj
  %i.fw = phi i16 [ %.pre.i74.i, %bb.aj ], [ %i.gk, %bb.ao ] ; 2 uses
  %.02534.i75.i = phi ptr [ %.02532.i73.i, %bb.aj ], [ %.025.i80.i, %bb.ao ] ; 2 uses
  %.033.i76.i = phi ptr [ %i.ft, %bb.aj ], [ %.1.i79.i, %bb.ao ] ; 4 uses
  %i.fx = load i16, ptr %.02534.i75.i, align 2    ; 5 uses
  %i.fy = zext i16 %i.fx to i32                   ; 2 uses
  %i.fz = and i32 %i.fy, 16383                    ; 2 uses
  %i.ga = zext i16 %i.fw to i32                   ; 2 uses
  %i.gb = and i32 %i.ga, 16383
  %.not.i77.i = icmp eq i32 %i.fz, %i.gb
  br i1 %.not.i77.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = getelementptr inbounds nuw i8, ptr %.033.i76.i, i64 2 ; 4 uses
  store i16 %i.fx, ptr %i.gc, align 2
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = sub i64 %i.gd, %i.fv
  %i.gf = icmp sgt i64 %i.ge, 508
  %i.gg = icmp eq i32 %i.fz, 16383
  %or.cond.i78.i = or i1 %i.gf, %i.gg
  br i1 %or.cond.i78.i, label %bb.ap, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.gh = lshr i32 %i.fy, 14
  %i.gi = lshr i32 %i.ga, 14
  %i.gj = icmp samesign ugt i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i16 %i.fx, ptr %.033.i76.i, align 2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.gk = phi i16 [ %i.fx, %bb.al ], [ %i.fx, %bb.an ], [ %i.fw, %bb.am ]
  %.1.i79.i = phi ptr [ %i.gc, %bb.al ], [ %.033.i76.i, %bb.an ], [ %.033.i76.i, %bb.am ] ; 2 uses
  %.025.i80.i = getelementptr inbounds nuw i8, ptr %.02534.i75.i, i64 2 ; 2 uses
  %i.gl = ptrtoint ptr %.025.i80.i to i64
  %i.gm = sub i64 %i.gl, %i.fv
  %i.gn = ashr exact i64 %i.gm, 1
  %i.go = icmp slt i64 %i.gn, %i.fu
  br i1 %i.go, label %bb.ak, label %bb.ap, !llvm.loop !7

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.2.i81.i = phi ptr [ %i.gc, %bb.al ], [ %.1.i79.i, %bb.ao ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.2.i81.i, i64 2
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = sub i64 %i.gq, %i.fv
  %i.gs = lshr exact i64 %i.gr, 1
  %i.gt = trunc i64 %i.gs to i32
  br label %uniquePos.exit83.i

uniquePos.exit83.i:                               ; preds = %bb.ap, %bb.ai
  %.026.i82.i = phi i32 [ %i.gt, %bb.ap ], [ %i.fq, %bb.ai ] ; 2 uses
  store i32 %.026.i82.i, ptr %i.fp, align 8
  %i.gu = add i32 %i.fn, 1
  %i.gv = and i32 %i.gu, -2
  %i.gw = shl i32 %.026.i82.i, 1
  %i.gx = add i32 %i.gv, 2
  %i.gy = add i32 %i.gx, %i.gw
  br label %bb.aq

bb.aq:                                            ; preds = %uniquePos.exit83.i, %._crit_edge.i
  %.3.i = phi i32 [ %i.gy, %uniquePos.exit83.i ], [ %i.fn, %._crit_edge.i ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.062.lcssa.i, i64 24
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = sub i64 %i.ha, %i.fj
  %i.hc = sdiv exact i64 %i.hb, 24
  %i.hd = trunc i64 %i.hc to i32
  %i.he = icmp sgt i32 %.3.i, 1048575
  br i1 %i.he, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.hf = call zeroext i1 @errsave_start(ptr noundef %i.i, ptr noundef null) #8
  br i1 %i.hf, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.hg = call i32 @errcode(i32 noundef 261) #8   ; 0 uses
  %i.hh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3, i32 noundef %.3.i, i32 noundef 1048575) #8 ; 0 uses
  call void @errsave_finish(ptr noundef %i.i, ptr noundef nonnull @.str.1, i32 noundef 274, ptr noundef nonnull @__func__.tsvectorin) #8
  br label %bb.ax

.thread:                                          ; preds = %bb.p, %bb.aq
  %.1119140 = phi i32 [ %i.hd, %bb.aq ], [ %.0118.lcssa, %bb.p ] ; 5 uses
  %.2139 = phi i32 [ %.3.i, %bb.aq ], [ 0, %bb.p ]
  %i.hi = sext i32 %.1119140 to i64
  %i.hj = shl i32 %.1119140, 2
  %i.hk = add i32 %i.hj, 8
  %i.hl = add i32 %i.hk, %.2139                   ; 2 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = call ptr @palloc0(i64 noundef %i.hm) #8 ; 4 uses
  %i.ho = shl i32 %i.hl, 2
  store i32 %i.ho, ptr %i.hn, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store i32 %.1119140, ptr %i.hp, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hi ; 3 uses
  %i.hs = icmp sgt i32 %.1119140, 0
  br i1 %i.hs, label %.lr.ph173.preheader, label %._crit_edge174

.lr.ph173.preheader:                              ; preds = %.thread
  %wide.trip.count = zext nneg i32 %.1119140 to i64
  br label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %bb.aw
  %indvars.iv = phi i64 [ 0, %.lr.ph173.preheader ], [ %indvars.iv.next, %bb.aw ] ; 3 uses
  %.0115172 = phi i32 [ 0, %.lr.ph173.preheader ], [ %.1116, %bb.aw ] ; 3 uses
  %i.ht = sext i32 %.0115172 to i64
  %i.hu = getelementptr inbounds i8, ptr %i.hr, i64 %i.ht
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %.0122.lcssa, i64 %indvars.iv ; 6 uses
  %i.hw = load i32, ptr %i.hv, align 8            ; 2 uses
  %i.hx = lshr i32 %i.hw, 12
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %.0113.lcssa, i64 %i.hy
  %i.ia = lshr i32 %i.hw, 1
  %i.ib = and i32 %i.ia, 2047
  %i.ic = zext nneg i32 %i.ib to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hu, ptr align 1 %i.hz, i64 %i.ic, i1 false)
  %i.id = load i32, ptr %i.hv, align 8            ; 3 uses
  %i.ie = shl i32 %.0115172, 12
  %i.if = and i32 %i.id, 4095
  %i.ig = or disjoint i32 %i.if, %i.ie            ; 2 uses
  store i32 %i.ig, ptr %i.hv, align 8
  %i.ih = lshr i32 %i.id, 1
  %i.ii = and i32 %i.ih, 2047
  %i.ij = add i32 %i.ii, %.0115172                ; 2 uses
  %i.ik = and i32 %i.id, 1
  %.not128 = icmp eq i32 %i.ik, 0
  br i1 %.not128, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %.lr.ph173
  %i.il = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 3 uses
  %i.im = load i32, ptr %i.il, align 8            ; 2 uses
  %i.in = icmp sgt i32 %i.im, 65535
  br i1 %i.in, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.io = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ip = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 292, ptr noundef nonnull @__func__.tsvectorin) #8
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.iq = add i32 %i.ij, 1
  %i.ir = and i32 %i.iq, -2                       ; 2 uses
  %i.is = trunc i32 %i.im to i16
  %i.it = sext i32 %i.ir to i64
  %i.iu = getelementptr inbounds i8, ptr %i.hr, i64 %i.it
  store i16 %i.is, ptr %i.iu, align 2
  %i.iv = add i32 %i.ir, 2                        ; 2 uses
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds i8, ptr %i.hr, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = load i32, ptr %i.il, align 8
  %i.jb = sext i32 %i.ja to i64
  %i.jc = shl nsw i64 %i.jb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr align 2 %i.iz, i64 %i.jc, i1 false)
  %i.jd = load i32, ptr %i.il, align 8
  %i.je = shl i32 %i.jd, 1
  %i.jf = add i32 %i.je, %i.iv
  %i.jg = load ptr, ptr %i.iy, align 8
  call void @pfree(ptr noundef %i.jg) #8
  %.pre185 = load i32, ptr %i.hv, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph173
  %i.jh = phi i32 [ %.pre185, %bb.av ], [ %i.ig, %.lr.ph173 ]
  %.1116 = phi i32 [ %i.jf, %bb.av ], [ %i.ij, %.lr.ph173 ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv
  store i32 %i.jh, ptr %i.ji, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge174, label %.lr.ph173, !llvm.loop !9

._crit_edge174:                                   ; preds = %bb.aw, %.thread
  %i.jj = ptrtoint ptr %i.hn to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ar, %bb.as, %bb.e, %bb.f, %bb.b, %bb.c, %._crit_edge174, %bb.o
  %.0 = phi i64 [ %i.jj, %._crit_edge174 ], [ 0, %bb.b ], [ 0, %bb.o ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.as ], [ 0, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

declare ptr @init_tsvector_parser(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @gettoken_tsvector(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @errsave_start(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #3

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @errsave_finish(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @close_tsvector_parser(ptr noundef) local_unnamed_addr #3

declare ptr @palloc0(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @pfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @tsvectorout(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1                          ; 2 uses
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

end_hunk_0
begin_hunk_1_@tsvectorsend:bb.a
  %i.i = load ptr, ptr %1, align 8, !alias.scope !34
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !34 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  store i32 %i.h, ptr %i.m, align 1, !noalias !34
  %i.n = add i32 %i.k, 4
  store i32 %i.n, ptr %i.j, align 8, !alias.scope !34
  %i.o = load i32, ptr %i.f, align 4              ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %i.q = phi i32 [ %i.bu, %.loopexit ], [ %i.o, %bb.a ]
  %.034 = phi ptr [ %i.bs, %.loopexit ], [ %i.e, %bb.a ] ; 4 uses
  %.02733 = phi i32 [ %i.bt, %.loopexit ], [ 0, %bb.a ]
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.r
  %i.t = load i32, ptr %.034, align 4             ; 2 uses
  %i.u = lshr i32 %i.t, 12
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = lshr i32 %i.t, 1
  %i.y = and i32 %i.x, 2047
  call void @pq_sendtext(ptr noundef nonnull %1, ptr noundef nonnull %i.w, i32 noundef %i.y) #8
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 1) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !35
  %i.aa = load i32, ptr %i.j, align 8, !alias.scope !35 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !noalias !35
  %i.ad = add i32 %i.aa, 1
  store i32 %i.ad, ptr %i.j, align 8, !alias.scope !35
  %i.ae = load i32, ptr %.034, align 4            ; 3 uses
  %i.af = and i32 %i.ae, 1
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ag = load i32, ptr %i.f, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ah
  %i.aj = lshr i32 %i.ae, 12
  %i.ak = lshr i32 %i.ae, 1
  %i.al = and i32 %i.ak, 2047
  %i.am = add nuw nsw i32 %i.aj, 1
  %narrow = add nuw nsw i32 %i.am, %i.al
  %i.an = and i32 %narrow, 4194302
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.ar = phi i16 [ %i.aq, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 2) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.as = call i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = load ptr, ptr %1, align 8, !alias.scope !36
  %i.au = load i32, ptr %i.j, align 8, !alias.scope !36 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  store i16 %i.as, ptr %i.aw, align 1, !noalias !36
  %i.ax = add i32 %i.au, 2
  store i32 %i.ax, ptr %i.j, align 8, !alias.scope !36
  %.not30 = icmp eq i16 %i.ar, 0
  br i1 %.not30, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.f, align 4
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.az
  %i.bb = load i32, ptr %.034, align 4            ; 2 uses
  %i.bc = lshr i32 %i.bb, 12
  %i.bd = lshr i32 %i.bb, 1
  %i.be = and i32 %i.bd, 2047
  %i.bf = add nuw nsw i32 %i.bc, 1
  %narrow31 = add nuw nsw i32 %i.bf, %i.be
  %i.bg = and i32 %narrow31, 4194302
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %wide.trip.count = zext i16 %i.ar to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load i16, ptr %i.bk, align 2
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 2) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.bm = call i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = load ptr, ptr %1, align 8, !alias.scope !37
  %i.bo = load i32, ptr %i.j, align 8, !alias.scope !37 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp
  store i16 %i.bm, ptr %i.bq, align 1, !noalias !37
  %i.br = add i32 %i.bo, 2
  store i32 %i.br, ptr %i.j, align 8, !alias.scope !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !32

.loopexit:                                        ; preds = %bb.e, %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %.034, i64 4
  %i.bt = add nuw nsw i32 %.02733, 1              ; 2 uses
  %i.bu = load i32, ptr %i.f, align 4             ; 2 uses
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.bw = call ptr @pq_endtypsend(ptr noundef nonnull %1) #8
  %i.bx = ptrtoint ptr %i.bw to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i64 %i.bx
}

declare void @pq_begintypsend(ptr noundef) local_unnamed_addr #3

declare void @pq_sendtext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pq_endtypsend(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @tsvectorrecv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 4) #8 ; 5 uses
  %i.e = icmp ugt i32 %i.d, 268435455
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 462, ptr noundef nonnull @__func__.tsvectorrecv) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i32 %i.d, 2
  %narrow = add nuw nsw i32 %i.h, 8               ; 2 uses
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = tail call ptr @palloc0(i64 noundef %i.j) #8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.d, ptr %i.l, align 4
  %.not144 = icmp eq i32 %i.d, 0
  br i1 %.not144, label %._crit_edge140.thread, label %.lr.ph139

._crit_edge140.thread:                            ; preds = %bb.c
  store i32 32, ptr %i.k, align 4
  br label %bb.r

.lr.ph139:                                        ; preds = %bb.c
  %i.m = or disjoint i64 %i.i, 2
  %wide.trip.count154 = zext nneg i32 %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph139, %bb.p
  %indvars.iv152 = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next153, %bb.p ] ; 3 uses
  %.088137 = phi i1 [ false, %.lr.ph139 ], [ %.1, %bb.p ] ; 2 uses
  %.089136 = phi i64 [ %i.j, %.lr.ph139 ], [ %.190.lcssa, %bb.p ] ; 3 uses
  %.091135 = phi i32 [ 0, %.lr.ph139 ], [ %.2, %bb.p ] ; 3 uses
  %.094133 = phi ptr [ %i.k, %.lr.ph139 ], [ %.195.lcssa, %bb.p ] ; 2 uses
  %i.n = tail call ptr @pq_getmsgstring(ptr noundef %i.c) #8 ; 2 uses
  %i.o = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 2) #8 ; 3 uses
  %i.p = trunc i32 %i.o to i16
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #9 ; 4 uses
  %i.r = icmp ugt i64 %i.q, 2047
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 484, ptr noundef nonnull @__func__.tsvectorrecv) #8
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = icmp sgt i32 %.091135, 1048575
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.w = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 487, ptr noundef nonnull @__func__.tsvectorrecv) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = and i32 %i.o, 65535                      ; 4 uses
  %i.y = icmp samesign ugt i32 %i.x, 256
  br i1 %i.y, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.z = sext i32 %.091135 to i64                 ; 2 uses
  %i.aa = add nsw i64 %i.q, %i.z                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, 1
  %i.ac = and i64 %i.ab, -2                       ; 3 uses
  %.mask = shl i32 %i.o, 1
  %i.ad = and i32 %.mask, 131070
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = add nuw nsw i64 %i.m, %i.ae
  %i.ag = add nsw i64 %i.af, %i.ac                ; 2 uses
  %.not124 = icmp ult i64 %i.ag, %.089136
  br i1 %.not124, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 490, ptr noundef nonnull @__func__.tsvectorrecv) #8
  unreachable

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.190126 = phi i64 [ %i.aj, %.lr.ph ], [ %.089136, %.preheader ]
  %.195125 = phi ptr [ %i.ak, %.lr.ph ], [ %.094133, %.preheader ]
  %i.aj = shl i64 %.190126, 1                     ; 4 uses
  %i.ak = tail call ptr @repalloc(ptr noundef %.195125, i64 noundef %i.aj) #8 ; 2 uses
  %.not = icmp ult i64 %i.ag, %i.aj
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.195.lcssa = phi ptr [ %.094133, %.preheader ], [ %i.ak, %.lr.ph ] ; 8 uses
  %.190.lcssa = phi i64 [ %.089136, %.preheader ], [ %i.aj, %.lr.ph ]
  %.not103 = icmp ne i32 %i.x, 0                  ; 2 uses
  %i.al = zext i1 %.not103 to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv152 ; 4 uses
  %i.ao = trunc nuw nsw i64 %i.q to i32
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = or disjoint i32 %i.ap, %i.al
  %i.ar = shl i32 %.091135, 12
  %i.as = or disjoint i32 %i.aq, %i.ar
  store i32 %i.as, ptr %i.an, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 4 ; 5 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %i.n, i64 %i.q, i1 false)
  %.not104 = icmp eq i64 %indvars.iv152, 0
  br i1 %.not104, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ay = getelementptr i8, ptr %i.an, i64 -4
  %i.az = load i32, ptr %i.at, align 4
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.an, align 4            ; 2 uses
  %i.bd = lshr i32 %i.bc, 12
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = lshr i32 %i.bc, 1
  %i.bh = and i32 %i.bg, 2047
  %i.bi = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.bj = lshr i32 %i.bi, 12
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = lshr i32 %i.bi, 1
  %i.bn = and i32 %i.bm, 2047
  %i.bo = tail call i32 @tsCompareString(ptr noundef nonnull %i.bf, i32 noundef %i.bh, ptr noundef nonnull %i.bl, i32 noundef %i.bn, i1 noundef zeroext false) #8
  %i.bp = icmp slt i32 %i.bo, 1
  %spec.select = select i1 %i.bp, i1 true, i1 %.088137
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %.1 = phi i1 [ %.088137, %._crit_edge ], [ %spec.select, %bb.j ] ; 2 uses
  br i1 %.not103, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.not105 = icmp eq i64 %i.aa, %i.ac
  br i1 %.not105, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %i.at, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.aa
  store i8 0, ptr %i.bt, align 1
  %sext = shl i64 %i.ac, 32
  %i.bu = ashr exact i64 %sext, 32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.192 = phi i64 [ %i.bu, %bb.m ], [ %i.aa, %bb.l ] ; 2 uses
  %i.bv = load i32, ptr %i.at, align 4
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.192
  store i16 %i.p, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.at, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ca
  %i.cc = load i32, ptr %i.an, align 4            ; 2 uses
  %i.cd = lshr i32 %i.cc, 12
  %i.ce = lshr i32 %i.cc, 1
  %i.cf = and i32 %i.ce, 2047
  %i.cg = add nuw nsw i32 %i.cd, 1
  %narrow106 = add nuw nsw i32 %i.cg, %i.cf
  %i.ch = and i32 %narrow106, 4194302
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.x to i64
  %i.cl = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 2) #8
  %i.cm = trunc i32 %i.cl to i16
  store i16 %i.cm, ptr %i.ck, align 2
  %exitcond.peel.not = icmp eq i32 %i.x, 1
  br i1 %exitcond.peel.not, label %.loopexit150, label %.peel.next

.peel.next:                                       ; preds = %bb.n, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 1, %bb.n ] ; 2 uses
  %i.cn = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 2) #8 ; 2 uses
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  store i16 %i.co, ptr %i.cp, align 2
  %i.cq = and i32 %i.cn, 16383
  %i.cr = getelementptr i8, ptr %i.cp, i64 -2
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = and i16 %i.cs, 16383
  %i.cu = zext nneg i16 %i.ct to i32
  %.not108 = icmp samesign ugt i32 %i.cq, %i.cu
  br i1 %.not108, label %bb.o, label %.loopexit

.loopexit:                                        ; preds = %.peel.next
  %i.cv = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.cw = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 541, ptr noundef nonnull @__func__.tsvectorrecv) #8
  unreachable

bb.o:                                             ; preds = %.peel.next
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit150, label %.peel.next, !llvm.loop !39

.loopexit150:                                     ; preds = %bb.o, %bb.n
  %1 = add nuw nsw i64 %i.ae, 2
  %2 = add nsw i64 %1, %.192
  br label %bb.p

bb.p:                                             ; preds = %.loopexit150, %bb.k
  %.2.in = phi i64 [ %2, %.loopexit150 ], [ %i.aa, %bb.k ]
  %.2 = trunc i64 %.2.in to i32                   ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge140, label %bb.d, !llvm.loop !40

._crit_edge140:                                   ; preds = %bb.p
  %i.cx = add i32 %narrow, %.2
  %i.cy = shl i32 %i.cx, 2
  store i32 %i.cy, ptr %.195.lcssa, align 4
  br i1 %.1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge140
  %i.cz = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.195.lcssa, i64 4
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dc
  tail call void @qsort_arg(ptr noundef nonnull %i.cz, i64 noundef %i.dc, i64 noundef 4, ptr noundef nonnull @compareentry, ptr noundef nonnull %i.dd) #8
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge140.thread, %bb.q, %._crit_edge140
  %.094.lcssa168 = phi ptr [ %i.k, %._crit_edge140.thread ], [ %.195.lcssa, %bb.q ], [ %.195.lcssa, %._crit_edge140 ]
  %i.de = ptrtoint ptr %.094.lcssa168 to i64
  ret i64 %i.de
}

declare i32 @pq_getmsgint(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pq_getmsgstring(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @compareentry(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = lshr i32 %i.a, 12
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %i.e = lshr i32 %i.a, 1
  %i.f = and i32 %i.e, 2047
  %i.g = load i32, ptr %1, align 4                ; 2 uses
  %i.h = lshr i32 %i.g, 12
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  %i.k = lshr i32 %i.g, 1
  %i.l = and i32 %i.k, 2047
  %i.m = tail call i32 @tsCompareString(ptr noundef %i.d, i32 noundef %i.f, ptr noundef %i.j, i32 noundef %i.l, i1 noundef zeroext false) #8
  ret i32 %i.m
}

declare void @qsort_arg(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #3

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

declare i32 @tsCompareString(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4, !20, !21}
!15 = distinct !{!15, !4, !20, !21}
!16 = distinct !{!16, !23}
!17 = distinct !{!17, !4, !20}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 28}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !"pq_writeint32"}
!25 = distinct !{!25, !24, !"pq_writeint32: argument 0"}
!26 = distinct !{!26, !"pq_writeint8"}
!27 = distinct !{!27, !26, !"pq_writeint8: argument 0"}
!28 = distinct !{!28, !"pq_writeint16"}
!29 = distinct !{!29, !28, !"pq_writeint16: argument 0"}
!30 = distinct !{!30, !"pq_writeint16"}
!31 = distinct !{!31, !30, !"pq_writeint16: argument 0"}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = !{!25}
!35 = !{!27}
!36 = !{!29}
!37 = !{!31}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !4, !41}
!40 = distinct !{!40, !4}
!41 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
