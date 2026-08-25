Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@PyUnicode_DecodeCharmap:bb.a
  br label %PyUnicode_DecodeLatin1.exit

bb.l:                                             ; preds = %bb.a
  %i.an = icmp eq i64 %1, 0
  br i1 %i.an, label %PyUnicode_DecodeLatin1.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %4) #33
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %1, ptr %i.ao, align 8, !tbaa !346
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 8 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !276
  %i.ar = icmp ugt i32 %i.aq, 126
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !278
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !279
  %i.aw = sub i64 %i.at, %i.av
  %.not = icmp sgt i64 %1, %i.aw
  br i1 %.not, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ax = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef %1, i32 noundef 127) #33
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %bb.dh, label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.o
  %i.az = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.az, align 8, !tbaa !197
  %.not55 = icmp eq ptr %.val, @PyUnicode_Type
  br i1 %.not55, label %bb.p, label %bb.az

bb.p:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %0, ptr %i.i, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store ptr %0, ptr %i.j, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #33
  store ptr null, ptr %i.n, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #33
  store ptr null, ptr %i.o, align 8, !tbaa !194
  %i.ba = getelementptr i8, ptr %2, i64 16
  %.val.i = load i64, ptr %i.ba, align 8, !tbaa !207 ; 2 uses
  %i.bb = getelementptr i8, ptr %2, i64 32
  %.val.i.i = load i32, ptr %i.bb, align 8        ; 3 uses
  %i.bc = and i32 %.val.i.i, 32
  %.not.i.i20 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = and i32 %.val.i.i, 64
  %.not.i.i.i21 = icmp eq i32 %i.bd, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i21, i64 56, i64 40
  %.0.i.i.i22 = getelementptr i8, ptr %2, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.r:                                             ; preds = %bb.p
  %i.be = getelementptr i8, ptr %2, i64 56
  %.val4.i.i = load ptr, ptr %i.be, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.r, %bb.q
  %.0.i.i23 = phi ptr [ %.0.i.i.i22, %bb.q ], [ %.val4.i.i, %bb.r ] ; 6 uses
  %i.bf = lshr i32 %.val.i.i, 2
  %i.bg = and i32 %i.bf, 7                        ; 3 uses
  %i.bh = getelementptr i8, ptr %0, i64 %1        ; 4 uses
  store ptr %i.bh, ptr %i.k, align 8, !tbaa !355
  %i.bi = icmp eq i32 %i.bg, 1
  %i.bj = icmp sgt i64 %.val.i, 255               ; 2 uses
  %or.cond.i = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond.i, label %bb.s, label %.preheader.i

.preheader.i:                                     ; preds = %_PyUnicode_DATA.exit.i
  %i.bk = icmp ult ptr %0, %i.bh
  br i1 %i.bk, label %.lr.ph124.i, label %.thread.i

.lr.ph124.i:                                      ; preds = %.preheader.i
  %i.bl = icmp eq i32 %i.bg, 2
  %or.cond3.i = select i1 %i.bl, i1 %i.bj, i1 false
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.y

bb.s:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.br = icmp ult ptr %0, %i.bh
  br i1 %i.br, label %.lr.ph127.i, label %charmap_decode_string.exit.thread

.lr.ph127.i:                                      ; preds = %bb.s
  %i.bs = load i32, ptr %i.ap, align 4, !tbaa !276
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !281
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph127.i
  %i.bw = phi ptr [ %0, %.lr.ph127.i ], [ %i.cs, %bb.x ]
  %.062126.i = phi i32 [ %i.bs, %.lr.ph127.i ], [ %.163.i, %bb.x ] ; 2 uses
  %.064125.i = phi ptr [ %i.bt, %.lr.ph127.i ], [ %.165.i, %bb.x ]
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !205
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr i8, ptr %.0.i.i23, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !205 ; 2 uses
  %i.cb = zext i8 %i.ca to i32
  %i.cc = icmp ult i32 %.062126.i, %i.cb
  br i1 %i.cc, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cd = load i32, ptr %i.ap, align 4, !tbaa !276 ; 2 uses
  %i.ce = icmp ugt i32 %i.cd, 254
  br i1 %i.ce, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cf = load i64, ptr %i.bu, align 8, !tbaa !278
  %i.cg = load i64, ptr %i.bv, align 8, !tbaa !279
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cj = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef 255) #33
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %_PyUnicodeWriter_WriteCharInline.exit.thread.i, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.w
  %.pre147.i = load i32, ptr %i.ap, align 4, !tbaa !276
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.v
  %i.cl = phi i32 [ %.pre147.i, %..critedge_crit_edge.i ], [ %i.cd, %bb.v ]
  %i.cm = load ptr, ptr %i.bq, align 8, !tbaa !281
  br label %bb.x

bb.x:                                             ; preds = %.critedge.i, %bb.t
  %.165.i = phi ptr [ %i.cm, %.critedge.i ], [ %.064125.i, %bb.t ] ; 2 uses
  %.163.i = phi i32 [ %i.cl, %.critedge.i ], [ %.062126.i, %bb.t ]
  %i.cn = load i64, ptr %i.bv, align 8, !tbaa !279
  %i.co = getelementptr i8, ptr %.165.i, i64 %i.cn
  store i8 %i.ca, ptr %i.co, align 1, !tbaa !205
  %i.cp = load i64, ptr %i.bv, align 8, !tbaa !279
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.bv, align 8, !tbaa !279
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !355
  %i.cs = getelementptr i8, ptr %i.cr, i64 1      ; 3 uses
  store ptr %i.cs, ptr %i.i, align 8, !tbaa !355
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !355
  %i.cu = icmp ult ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.t, label %charmap_decode_string.exit.thread, !llvm.loop !518

bb.y:                                             ; preds = %.backedge.i, %.lr.ph124.i
  %i.cv = phi ptr [ %i.bh, %.lr.ph124.i ], [ %i.fm, %.backedge.i ] ; 5 uses
  %i.cw = phi ptr [ %0, %.lr.ph124.i ], [ %i.fn, %.backedge.i ] ; 9 uses
  br i1 %or.cond3.i, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cx = load i32, ptr %i.bm, align 8, !tbaa !280
  switch i32 %i.cx, label %bb.ae [
    i32 1, label %bb.aa
    i32 2, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cy = load ptr, ptr %i.bn, align 8, !tbaa !281
  %i.cz = load i32, ptr %i.ap, align 4, !tbaa !276
  %i.da = icmp ult ptr %i.cw, %i.cv
  br i1 %i.da, label %.lr.ph120.i, label %.thread.i

.lr.ph120.i:                                      ; preds = %bb.aa, %bb.ab
  %i.db = phi ptr [ %i.dn, %bb.ab ], [ %i.cw, %bb.aa ] ; 4 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !205
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr [2 x i8], ptr %.0.i.i23, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !208 ; 2 uses
  %i.dg = zext i16 %i.df to i32                   ; 2 uses
  %i.dh = icmp ult i32 %i.cz, %i.dg
  br i1 %i.dh, label %PyUnicode_READ.exit.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph120.i
  %i.di = trunc i16 %i.df to i8
  %i.dj = load i64, ptr %i.bo, align 8, !tbaa !279
  %i.dk = getelementptr i8, ptr %i.cy, i64 %i.dj
  store i8 %i.di, ptr %i.dk, align 1, !tbaa !205
  %i.dl = load i64, ptr %i.bo, align 8, !tbaa !279
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.bo, align 8, !tbaa !279
  %i.dn = getelementptr i8, ptr %i.db, i64 1      ; 2 uses
  %exitcond144.not.i = icmp eq ptr %i.dn, %i.cv
  br i1 %exitcond144.not.i, label %.thread.i, label %.lr.ph120.i, !llvm.loop !519

bb.ac:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %i.bn, align 8, !tbaa !281
  %i.dp = icmp ult ptr %i.cw, %i.cv
  br i1 %i.dp, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.ac, %bb.ad
  %i.dq = phi ptr [ %i.dy, %bb.ad ], [ %i.cw, %bb.ac ] ; 4 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !205
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr [2 x i8], ptr %.0.i.i23, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !208 ; 2 uses
  %i.dv = icmp eq i16 %i.du, -2
  br i1 %i.dv, label %PyUnicode_READ.exit.thread.loopexit.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i
  %5 = load i64, ptr %i.bo, align 8, !tbaa !279   ; 2 uses
  %i.dw = getelementptr [2 x i8], ptr %i.do, i64 %5
  store i16 %i.du, ptr %i.dw, align 2, !tbaa !208
  %i.dx = add i64 %5, 1
  store i64 %i.dx, ptr %i.bo, align 8, !tbaa !279
  %i.dy = getelementptr i8, ptr %i.dq, i64 1      ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.dy, %i.cv
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph.i, !llvm.loop !520

bb.ae:                                            ; preds = %bb.z, %bb.y
  %i.dz = load i8, ptr %i.cw, align 1, !tbaa !205
  %i.ea = zext i8 %i.dz to i64                    ; 4 uses
  %i.eb = icmp sgt i64 %.val.i, %i.ea
  br i1 %i.eb, label %bb.af, label %PyUnicode_READ.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  switch i32 %i.bg, label %bb.ah [
    i32 1, label %PyUnicode_READ.exit.thread104.i
    i32 2, label %bb.ag
  ]

PyUnicode_READ.exit.thread104.i:                  ; preds = %bb.af
  %i.ec = getelementptr i8, ptr %.0.i.i23, i64 %i.ea
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !205
  %i.ee = zext i8 %i.ed to i32
  br label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ef = getelementptr [2 x i8], ptr %.0.i.i23, i64 %i.ea
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !208
  %i.eh = zext i16 %i.eg to i32
  br label %PyUnicode_READ.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.ei = getelementptr [4 x i8], ptr %.0.i.i23, i64 %i.ea
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !7
  br label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.loopexit.i:                   ; preds = %.lr.ph120.i
  store ptr %i.db, ptr %i.i, align 8
  br label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.i:                            ; preds = %PyUnicode_READ.exit.loopexit.i, %bb.ah, %bb.ag
  %i.ek = phi ptr [ %i.cw, %bb.ah ], [ %i.cw, %bb.ag ], [ %i.db, %PyUnicode_READ.exit.loopexit.i ] ; 2 uses
  %.6.i = phi i32 [ %i.ej, %bb.ah ], [ %i.eh, %bb.ag ], [ %i.dg, %PyUnicode_READ.exit.loopexit.i ] ; 2 uses
  %i.el = icmp eq i32 %.6.i, 65534
  br i1 %i.el, label %PyUnicode_READ.exit.thread.i, label %bb.ai

PyUnicode_READ.exit.thread.loopexit.i:            ; preds = %.lr.ph.i
  store ptr %i.dq, ptr %i.i, align 8
  br label %PyUnicode_READ.exit.thread.i

PyUnicode_READ.exit.thread.i:                     ; preds = %PyUnicode_READ.exit.thread.loopexit.i, %PyUnicode_READ.exit.i, %bb.ae
  %i.em = phi ptr [ %i.dq, %PyUnicode_READ.exit.thread.loopexit.i ], [ %i.cw, %bb.ae ], [ %i.ek, %PyUnicode_READ.exit.i ]
  %i.en = load ptr, ptr %i.j, align 8, !tbaa !355
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 2 uses
  store i64 %i.eq, ptr %i.l, align 8, !tbaa !193
  %i.er = add i64 %i.eq, 1
  store i64 %i.er, ptr %i.m, align 8, !tbaa !193
  %i.es = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %3, ptr noundef %i.n, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.i, ptr noundef nonnull %4)
  %.not.i = icmp eq i32 %i.es, 0
  br i1 %.not.i, label %PyUnicode_READ.exit.thread..backedge_crit_edge.i, label %_PyUnicodeWriter_WriteCharInline.exit.thread.i

PyUnicode_READ.exit.thread..backedge_crit_edge.i: ; preds = %PyUnicode_READ.exit.thread.i
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !355
  %.pre146.i = load ptr, ptr %i.k, align 8, !tbaa !355
  br label %.backedge.i

bb.ai:                                            ; preds = %PyUnicode_READ.exit.i, %PyUnicode_READ.exit.thread104.i
  %i.et = phi ptr [ %i.cw, %PyUnicode_READ.exit.thread104.i ], [ %i.ek, %PyUnicode_READ.exit.i ]
  %.6106.i = phi i32 [ %i.ee, %PyUnicode_READ.exit.thread104.i ], [ %.6.i, %PyUnicode_READ.exit.i ] ; 5 uses
  %i.eu = load i32, ptr %i.ap, align 4, !tbaa !276
  %.not.i84.i = icmp ugt i32 %.6106.i, %i.eu
  br i1 %.not.i84.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ev = load i64, ptr %i.bp, align 8, !tbaa !278
  %i.ew = load i64, ptr %i.bo, align 8, !tbaa !279 ; 2 uses
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp sgt i64 %i.ex, 0
  br i1 %i.ey, label %.critedge.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ez = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 1, i32 noundef %.6106.i) #33
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %_PyUnicodeWriter_WriteCharInline.exit.thread.i, label %..critedge_crit_edge.i.i

..critedge_crit_edge.i.i:                         ; preds = %bb.ak
  %.pre.i.i = load i64, ptr %i.bo, align 8, !tbaa !279
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %bb.aj
  %i.fb = phi i64 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.ew, %bb.aj ] ; 5 uses
  %i.fc = load i32, ptr %i.bm, align 8, !tbaa !280
  %i.fd = load ptr, ptr %i.bn, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.fc, label %bb.an [
    i32 1, label %bb.al
    i32 2, label %bb.am
  ]

bb.al:                                            ; preds = %.critedge.i.i
  %i.fe = trunc i32 %.6106.i to i8
  %i.ff = getelementptr i8, ptr %i.fd, i64 %i.fb
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !205
  %.pre11.i.i = load i64, ptr %i.bo, align 8, !tbaa !279
  br label %bb.ao

bb.am:                                            ; preds = %.critedge.i.i
  %i.fg = trunc i32 %.6106.i to i16
  %i.fh = getelementptr [2 x i8], ptr %i.fd, i64 %i.fb
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !208
  br label %bb.ao

bb.an:                                            ; preds = %.critedge.i.i
  %i.fi = getelementptr [4 x i8], ptr %i.fd, i64 %i.fb
  store i32 %.6106.i, ptr %i.fi, align 4, !tbaa !7
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.fj = phi i64 [ %.pre11.i.i, %bb.al ], [ %i.fb, %bb.am ], [ %i.fb, %bb.an ]
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.bo, align 8, !tbaa !279
  %i.fl = getelementptr i8, ptr %i.et, i64 1      ; 2 uses
  store ptr %i.fl, ptr %i.i, align 8, !tbaa !355
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ao, %PyUnicode_READ.exit.thread..backedge_crit_edge.i
  %i.fm = phi ptr [ %.pre146.i, %PyUnicode_READ.exit.thread..backedge_crit_edge.i ], [ %i.cv, %bb.ao ] ; 2 uses
  %i.fn = phi ptr [ %.pre.i, %PyUnicode_READ.exit.thread..backedge_crit_edge.i ], [ %i.fl, %bb.ao ] ; 2 uses
  %i.fo = icmp ult ptr %i.fn, %i.fm
  br i1 %i.fo, label %bb.y, label %.thread.i, !llvm.loop !521

.thread.i:                                        ; preds = %.backedge.i, %bb.ac, %bb.aa, %bb.ad, %bb.ab, %.preheader.i
  %i.fp = load ptr, ptr %i.n, align 8, !tbaa !194 ; 4 uses
  %.not.i86.i = icmp eq ptr %i.fp, null
  br i1 %.not.i86.i, label %Py_XDECREF.exit.i, label %bb.ap

bb.ap:                                            ; preds = %.thread.i
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !205 ; 2 uses
  %.not.i.i87.i = icmp sgt i32 %i.fq, -1
  br i1 %.not.i.i87.i, label %bb.aq, label %Py_XDECREF.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.fr = add nsw i32 %i.fq, -1                   ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 8, !tbaa !205
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ar, label %Py_XDECREF.exit.i

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.fp) #33
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.ar, %bb.aq, %bb.ap, %.thread.i
  %i.ft = load ptr, ptr %i.o, align 8, !tbaa !194 ; 4 uses
  %.not.i88.i = icmp eq ptr %i.ft, null
  br i1 %.not.i88.i, label %charmap_decode_string.exit.thread, label %bb.as

bb.as:                                            ; preds = %Py_XDECREF.exit.i
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !205 ; 2 uses
  %.not.i.i89.i = icmp sgt i32 %i.fu, -1
  br i1 %.not.i.i89.i, label %bb.at, label %charmap_decode_string.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.fv = add nsw i32 %i.fu, -1                   ; 2 uses
  store i32 %i.fv, ptr %i.ft, align 8, !tbaa !205
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %charmap_decode_string.exit, label %charmap_decode_string.exit.thread

_PyUnicodeWriter_WriteCharInline.exit.thread.i:   ; preds = %bb.ak, %PyUnicode_READ.exit.thread.i, %bb.w
  %i.fx = load ptr, ptr %i.n, align 8, !tbaa !194 ; 4 uses
  %.not.i91.i = icmp eq ptr %i.fx, null
  br i1 %.not.i91.i, label %Py_XDECREF.exit93.i, label %bb.au

bb.au:                                            ; preds = %_PyUnicodeWriter_WriteCharInline.exit.thread.i
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !205 ; 2 uses
  %.not.i.i92.i = icmp sgt i32 %i.fy, -1
  br i1 %.not.i.i92.i, label %bb.av, label %Py_XDECREF.exit93.i

bb.av:                                            ; preds = %bb.au
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.fz, ptr %i.fx, align 8, !tbaa !205
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.aw, label %Py_XDECREF.exit93.i

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.fx) #33
  br label %Py_XDECREF.exit93.i

Py_XDECREF.exit93.i:                              ; preds = %bb.aw, %bb.av, %bb.au, %_PyUnicodeWriter_WriteCharInline.exit.thread.i
  %i.gb = load ptr, ptr %i.o, align 8, !tbaa !194 ; 4 uses
  %.not.i94.i = icmp eq ptr %i.gb, null
  br i1 %.not.i94.i, label %charmap_decode_string.exit.thread43, label %bb.ax

bb.ax:                                            ; preds = %Py_XDECREF.exit93.i
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !205 ; 2 uses
  %.not.i.i95.i = icmp sgt i32 %i.gc, -1
  br i1 %.not.i.i95.i, label %bb.ay, label %charmap_decode_string.exit.thread43

bb.ay:                                            ; preds = %bb.ax
  %i.gd = add nsw i32 %i.gc, -1                   ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 8, !tbaa !205
  %i.ge = icmp eq i32 %i.gd, 0
end_hunk_0
begin_hunk_1_@MarkupIterator_next:bb.a
  ]

PyUnicode_READ_CHAR.exit._crit_edge._crit_edge.i: ; preds = %PyUnicode_READ_CHAR.exit._crit_edge.i
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !943
  br label %bb.cg

bb.bj:                                            ; preds = %PyUnicode_READ_CHAR.exit._crit_edge.i
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !943 ; 4 uses
  %.not58.i = icmp slt i64 %i.dl, %i.dn
  br i1 %.not58.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.do = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.do, ptr noundef nonnull @.str.279) #33
  br label %parse_field.exit

bb.bl:                                            ; preds = %bb.bj
  %i.dp = add nsw i64 %i.dl, 1                    ; 6 uses
  store i64 %i.dp, ptr %i.g, align 8, !tbaa !942
  %i.dq = load i32, ptr %i.bw, align 8            ; 5 uses
  %i.dr = lshr i32 %i.dq, 2
  %i.ds = and i32 %i.dr, 7
  %i.dt = and i32 %i.dq, 32
  %.not.i19.i81.i = icmp eq i32 %i.dt, 0          ; 3 uses
  switch i32 %i.ds, label %bb.bs [
    i32 1, label %bb.bm
    i32 2, label %bb.bp
  ]

bb.bm:                                            ; preds = %bb.bl
  br i1 %.not.i19.i81.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.du = and i32 %i.dq, 64
  %.not.i.i.i89.i = icmp eq i32 %i.du, 0
  %.0.v.i.i.i90.i = select i1 %.not.i.i.i89.i, i64 56, i64 40
  %.0.i.i.i91.i = getelementptr i8, ptr %i.bs, i64 %.0.v.i.i.i90.i
  br label %_PyUnicode_DATA.exit.i92.i

bb.bo:                                            ; preds = %bb.bm
  %.val4.i.i94.i = load ptr, ptr %i.bx, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i92.i

_PyUnicode_DATA.exit.i92.i:                       ; preds = %bb.bo, %bb.bn
  %.0.i.i93.i = phi ptr [ %.0.i.i.i91.i, %bb.bn ], [ %.val4.i.i94.i, %bb.bo ]
  %i.dv = getelementptr i8, ptr %.0.i.i93.i, i64 %i.dl
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !205
  %i.dx = zext i8 %i.dw to i32
  br label %PyUnicode_READ_CHAR.exit101.i

bb.bp:                                            ; preds = %bb.bl
  br i1 %.not.i19.i81.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dy = and i32 %i.dq, 64
  %.not.i.i12.i82.i = icmp eq i32 %i.dy, 0
  %.0.v.i.i13.i83.i = select i1 %.not.i.i12.i82.i, i64 56, i64 40
  %.0.i.i14.i84.i = getelementptr i8, ptr %i.bs, i64 %.0.v.i.i13.i83.i
  br label %_PyUnicode_DATA.exit17.i85.i

bb.br:                                            ; preds = %bb.bp
  %.val4.i16.i88.i = load ptr, ptr %i.bx, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit17.i85.i

_PyUnicode_DATA.exit17.i85.i:                     ; preds = %bb.br, %bb.bq
  %.0.i15.i86.i = phi ptr [ %.0.i.i14.i84.i, %bb.bq ], [ %.val4.i16.i88.i, %bb.br ]
  %i.dz = getelementptr [2 x i8], ptr %.0.i15.i86.i, i64 %i.dl
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !208
  %i.eb = zext i16 %i.ea to i32
  br label %PyUnicode_READ_CHAR.exit101.i

bb.bs:                                            ; preds = %bb.bl
  br i1 %.not.i19.i81.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ec = and i32 %i.dq, 64
  %.not.i.i20.i95.i = icmp eq i32 %i.ec, 0
  %.0.v.i.i21.i96.i = select i1 %.not.i.i20.i95.i, i64 56, i64 40
  %.0.i.i22.i97.i = getelementptr i8, ptr %i.bs, i64 %.0.v.i.i21.i96.i
  br label %_PyUnicode_DATA.exit25.i98.i

bb.bu:                                            ; preds = %bb.bs
  %.val4.i24.i100.i = load ptr, ptr %i.bx, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit25.i98.i

_PyUnicode_DATA.exit25.i98.i:                     ; preds = %bb.bu, %bb.bt
  %.0.i23.i99.i = phi ptr [ %.0.i.i22.i97.i, %bb.bt ], [ %.val4.i24.i100.i, %bb.bu ]
  %i.ed = getelementptr [4 x i8], ptr %.0.i23.i99.i, i64 %i.dl
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit101.i

PyUnicode_READ_CHAR.exit101.i:                    ; preds = %_PyUnicode_DATA.exit25.i98.i, %_PyUnicode_DATA.exit17.i85.i, %_PyUnicode_DATA.exit.i92.i
  %.0.i87.i = phi i32 [ %i.dx, %_PyUnicode_DATA.exit.i92.i ], [ %i.eb, %_PyUnicode_DATA.exit17.i85.i ], [ %i.ee, %_PyUnicode_DATA.exit25.i98.i ]
  store i32 %.0.i87.i, ptr %5, align 4, !tbaa !7
  %i.ef = icmp slt i64 %i.dp, %i.dn
  br i1 %i.ef, label %bb.bv, label %bb.cg

bb.bv:                                            ; preds = %PyUnicode_READ_CHAR.exit101.i
  %i.eg = add nsw i64 %i.dl, 2                    ; 2 uses
  store i64 %i.eg, ptr %i.g, align 8, !tbaa !942
  %i.eh = load i32, ptr %i.bw, align 8            ; 5 uses
  %i.ei = lshr i32 %i.eh, 2
  %i.ej = and i32 %i.ei, 7
  %i.ek = and i32 %i.eh, 32
  %.not.i19.i102.i = icmp eq i32 %i.ek, 0         ; 3 uses
  switch i32 %i.ej, label %bb.cc [
    i32 1, label %bb.bw
    i32 2, label %bb.bz
  ]

bb.bw:                                            ; preds = %bb.bv
  br i1 %.not.i19.i102.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.el = and i32 %i.eh, 64
  %.not.i.i.i110.i = icmp eq i32 %i.el, 0
  %.0.v.i.i.i111.i = select i1 %.not.i.i.i110.i, i64 56, i64 40
  %.0.i.i.i112.i = getelementptr i8, ptr %i.bs, i64 %.0.v.i.i.i111.i
  br label %_PyUnicode_DATA.exit.i113.i

bb.by:                                            ; preds = %bb.bw
  %.val4.i.i115.i = load ptr, ptr %i.bx, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i113.i

_PyUnicode_DATA.exit.i113.i:                      ; preds = %bb.by, %bb.bx
  %.0.i.i114.i = phi ptr [ %.0.i.i.i112.i, %bb.bx ], [ %.val4.i.i115.i, %bb.by ]
  %i.em = getelementptr i8, ptr %.0.i.i114.i, i64 %i.dp
  %i.en = load i8, ptr %i.em, align 1, !tbaa !205
  %i.eo = zext i8 %i.en to i32
  br label %PyUnicode_READ_CHAR.exit122.i

bb.bz:                                            ; preds = %bb.bv
  br i1 %.not.i19.i102.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ep = and i32 %i.eh, 64
  %.not.i.i12.i103.i = icmp eq i32 %i.ep, 0
  %.0.v.i.i13.i104.i = select i1 %.not.i.i12.i103.i, i64 56, i64 40
  %.0.i.i14.i105.i = getelementptr i8, ptr %i.bs, i64 %.0.v.i.i13.i104.i
  br label %_PyUnicode_DATA.exit17.i106.i

bb.cb:                                            ; preds = %bb.bz
  %.val4.i16.i109.i = load ptr, ptr %i.bx, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit17.i106.i

_PyUnicode_DATA.exit17.i106.i:                    ; preds = %bb.cb, %bb.ca
  %.0.i15.i107.i = phi ptr [ %.0.i.i14.i105.i, %bb.ca ], [ %.val4.i16.i109.i, %bb.cb ]
  %i.eq = getelementptr [2 x i8], ptr %.0.i15.i107.i, i64 %i.dp
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !208
  %i.es = zext i16 %i.er to i32
  br label %PyUnicode_READ_CHAR.exit122.i

bb.cc:                                            ; preds = %bb.bv
  br i1 %.not.i19.i102.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.et = and i32 %i.eh, 64
  %.not.i.i20.i116.i = icmp eq i32 %i.et, 0
  %.0.v.i.i21.i117.i = select i1 %.not.i.i20.i116.i, i64 56, i64 40
  %.0.i.i22.i118.i = getelementptr i8, ptr %i.bs, i64 %.0.v.i.i21.i117.i
  br label %_PyUnicode_DATA.exit25.i119.i

bb.ce:                                            ; preds = %bb.cc
  %.val4.i24.i121.i = load ptr, ptr %i.bx, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit25.i119.i

_PyUnicode_DATA.exit25.i119.i:                    ; preds = %bb.ce, %bb.cd
  %.0.i23.i120.i = phi ptr [ %.0.i.i22.i118.i, %bb.cd ], [ %.val4.i24.i121.i, %bb.ce ]
  %i.eu = getelementptr [4 x i8], ptr %.0.i23.i120.i, i64 %i.dp
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit122.i

PyUnicode_READ_CHAR.exit122.i:                    ; preds = %_PyUnicode_DATA.exit25.i119.i, %_PyUnicode_DATA.exit17.i106.i, %_PyUnicode_DATA.exit.i113.i
  %.0.i108.i = phi i32 [ %i.eo, %_PyUnicode_DATA.exit.i113.i ], [ %i.es, %_PyUnicode_DATA.exit17.i106.i ], [ %i.ev, %_PyUnicode_DATA.exit25.i119.i ]
  switch i32 %.0.i108.i, label %bb.cf [
    i32 125, label %parse_field.exit
    i32 58, label %bb.cg
  ]

bb.cf:                                            ; preds = %PyUnicode_READ_CHAR.exit122.i
  %i.ew = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.ew, ptr noundef nonnull @.str.280) #33
  br label %parse_field.exit

bb.cg:                                            ; preds = %PyUnicode_READ_CHAR.exit122.i, %PyUnicode_READ_CHAR.exit101.i, %PyUnicode_READ_CHAR.exit._crit_edge._crit_edge.i
  %i.ex = phi i64 [ %.pre.i, %PyUnicode_READ_CHAR.exit._crit_edge._crit_edge.i ], [ %i.dn, %PyUnicode_READ_CHAR.exit122.i ], [ %i.dn, %PyUnicode_READ_CHAR.exit101.i ] ; 2 uses
  %i.ey = phi i64 [ %i.dl, %PyUnicode_READ_CHAR.exit._crit_edge._crit_edge.i ], [ %i.eg, %PyUnicode_READ_CHAR.exit122.i ], [ %i.dp, %PyUnicode_READ_CHAR.exit101.i ]
  store ptr %i.bs, ptr %4, align 8, !tbaa !940
  store i64 %i.ey, ptr %i.e, align 8, !tbaa !942
  %.promoted156.i = load i64, ptr %i.g, align 8, !tbaa !942 ; 2 uses
  %i.ez = icmp slt i64 %.promoted156.i, %i.ex
  br i1 %i.ez, label %.lr.ph159.i, label %._crit_edge160.i

.lr.ph159.i:                                      ; preds = %bb.cg
  %i.fa = load ptr, ptr %0, align 8, !tbaa !940   ; 5 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 32
  %i.fc = getelementptr i8, ptr %i.fa, i64 56     ; 3 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cu, %.lr.ph159.i
  %.0157.i = phi i64 [ %.promoted156.i, %.lr.ph159.i ], [ %i.fe, %bb.cu ] ; 5 uses
  %i.fd = phi i64 [ 1, %.lr.ph159.i ], [ %.1.i, %bb.cu ] ; 3 uses
  %i.fe = add i64 %.0157.i, 1                     ; 3 uses
  store i64 %i.fe, ptr %i.g, align 8, !tbaa !942
  %i.ff = load i32, ptr %i.fb, align 8            ; 5 uses
  %i.fg = lshr i32 %i.ff, 2
  %i.fh = and i32 %i.fg, 7
  %i.fi = and i32 %i.ff, 32
  %.not.i19.i123.i = icmp eq i32 %i.fi, 0         ; 3 uses
  switch i32 %i.fh, label %bb.co [
    i32 1, label %bb.ci
    i32 2, label %bb.cl
  ]

bb.ci:                                            ; preds = %bb.ch
  br i1 %.not.i19.i123.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fj = and i32 %i.ff, 64
  %.not.i.i.i131.i = icmp eq i32 %i.fj, 0
  %.0.v.i.i.i132.i = select i1 %.not.i.i.i131.i, i64 56, i64 40
  %.0.i.i.i133.i = getelementptr i8, ptr %i.fa, i64 %.0.v.i.i.i132.i
  br label %_PyUnicode_DATA.exit.i134.i

bb.ck:                                            ; preds = %bb.ci
  %.val4.i.i136.i = load ptr, ptr %i.fc, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i134.i

_PyUnicode_DATA.exit.i134.i:                      ; preds = %bb.ck, %bb.cj
  %.0.i.i135.i = phi ptr [ %.0.i.i.i133.i, %bb.cj ], [ %.val4.i.i136.i, %bb.ck ]
  %i.fk = getelementptr i8, ptr %.0.i.i135.i, i64 %.0157.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !205
  %i.fm = zext i8 %i.fl to i32
  br label %PyUnicode_READ_CHAR.exit143.i

bb.cl:                                            ; preds = %bb.ch
  br i1 %.not.i19.i123.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fn = and i32 %i.ff, 64
  %.not.i.i12.i124.i = icmp eq i32 %i.fn, 0
  %.0.v.i.i13.i125.i = select i1 %.not.i.i12.i124.i, i64 56, i64 40
  %.0.i.i14.i126.i = getelementptr i8, ptr %i.fa, i64 %.0.v.i.i13.i125.i
  br label %_PyUnicode_DATA.exit17.i127.i

bb.cn:                                            ; preds = %bb.cl
  %.val4.i16.i130.i = load ptr, ptr %i.fc, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit17.i127.i

_PyUnicode_DATA.exit17.i127.i:                    ; preds = %bb.cn, %bb.cm
  %.0.i15.i128.i = phi ptr [ %.0.i.i14.i126.i, %bb.cm ], [ %.val4.i16.i130.i, %bb.cn ]
  %i.fo = getelementptr [2 x i8], ptr %.0.i15.i128.i, i64 %.0157.i
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !208
  %i.fq = zext i16 %i.fp to i32
  br label %PyUnicode_READ_CHAR.exit143.i

bb.co:                                            ; preds = %bb.ch
  br i1 %.not.i19.i123.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fr = and i32 %i.ff, 64
  %.not.i.i20.i137.i = icmp eq i32 %i.fr, 0
  %.0.v.i.i21.i138.i = select i1 %.not.i.i20.i137.i, i64 56, i64 40
  %.0.i.i22.i139.i = getelementptr i8, ptr %i.fa, i64 %.0.v.i.i21.i138.i
  br label %_PyUnicode_DATA.exit25.i140.i

bb.cq:                                            ; preds = %bb.co
  %.val4.i24.i142.i = load ptr, ptr %i.fc, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit25.i140.i

_PyUnicode_DATA.exit25.i140.i:                    ; preds = %bb.cq, %bb.cp
  %.0.i23.i141.i = phi ptr [ %.0.i.i22.i139.i, %bb.cp ], [ %.val4.i24.i142.i, %bb.cq ]
  %i.fs = getelementptr [4 x i8], ptr %.0.i23.i141.i, i64 %.0157.i
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit143.i

PyUnicode_READ_CHAR.exit143.i:                    ; preds = %_PyUnicode_DATA.exit25.i140.i, %_PyUnicode_DATA.exit17.i127.i, %_PyUnicode_DATA.exit.i134.i
  %.0.i129.i = phi i32 [ %i.fm, %_PyUnicode_DATA.exit.i134.i ], [ %i.fq, %_PyUnicode_DATA.exit17.i127.i ], [ %i.ft, %_PyUnicode_DATA.exit25.i140.i ]
  switch i32 %.0.i129.i, label %bb.cu [
    i32 123, label %bb.cr
    i32 125, label %bb.cs
  ]

bb.cr:                                            ; preds = %PyUnicode_READ_CHAR.exit143.i
  store i32 1, ptr %6, align 4, !tbaa !7
  %i.fu = add i64 %i.fd, 1
  br label %bb.cu

bb.cs:                                            ; preds = %PyUnicode_READ_CHAR.exit143.i
  %i.fv = add i64 %i.fd, -1                       ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i64 %.0157.i, ptr %i.f, align 8, !tbaa !943
  br label %parse_field.exit

bb.cu:                                            ; preds = %bb.cs, %bb.cr, %PyUnicode_READ_CHAR.exit143.i
  %.1.i = phi i64 [ %i.fd, %PyUnicode_READ_CHAR.exit143.i ], [ %i.fu, %bb.cr ], [ %i.fv, %bb.cs ]
  %exitcond163.not.i = icmp eq i64 %i.fe, %i.ex
  br i1 %exitcond163.not.i, label %._crit_edge160.i, label %bb.ch, !llvm.loop !1001

._crit_edge160.i:                                 ; preds = %bb.cu, %bb.cg
  %i.fx = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.fx, ptr noundef nonnull @.str.281) #33
  br label %parse_field.exit

.sink.split:                                      ; preds = %bb.bi, %bb.an
  %.sink184 = phi i64 [ %i.bt, %bb.an ], [ %i.bu, %bb.bi ]
  %i.fy = add i64 %.sink184, -1
  store i64 %i.fy, ptr %i.d, align 8, !tbaa !943
  br label %bb.cv

bb.cv:                                            ; preds = %.sink.split, %PyUnicode_READ_CHAR.exit._crit_edge.i
  %i.fz = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.fz, ptr noundef nonnull @.str.282) #33
  br label %parse_field.exit

parse_field.exit:                                 ; preds = %bb.am, %PyUnicode_READ_CHAR.exit._crit_edge.i, %PyUnicode_READ_CHAR.exit122.i, %bb.ct, %bb.ay, %bb.cv, %bb.bk, %._crit_edge160.i, %bb.cf, %.thread114, %bb.a, %bb.aa, %bb.y
  %.048 = phi i32 [ 1, %bb.a ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 2, %bb.am ], [ 2, %.thread114 ], [ 2, %bb.ct ], [ 2, %PyUnicode_READ_CHAR.exit._crit_edge.i ], [ 2, %PyUnicode_READ_CHAR.exit122.i ], [ 0, %bb.ay ], [ 0, %bb.cv ], [ 0, %bb.bk ], [ 0, %._crit_edge160.i ], [ 0, %bb.cf ]
  ret i32 %.048
}

declare i32 @_PyUnicodeWriter_WriteSubstring(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @field_name_split(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef captures(address_is_null) %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %2, i64 %1) ; 3 uses
  %exitcond.not48.not = icmp slt i64 %1, %2
  br i1 %exitcond.not48.not, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8              ; 5 uses
  %i.d = lshr i32 %i.c, 2
  %i.e = and i32 %i.d, 7
  %i.f = and i32 %i.c, 32
  %.not.i19.i = icmp eq i32 %i.f, 0               ; 3 uses
  %i.g = and i32 %i.c, 64
  %.not.i.i12.i = icmp eq i32 %i.g, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %0, i64 %.0.v.i.i13.i
  %i.h = and i32 %i.c, 64
  %.not.i.i.i = icmp eq i32 %i.h, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  %i.i = and i32 %i.c, 64
  %.not.i.i20.i = icmp eq i32 %i.i, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %0, i64 %.0.v.i.i21.i
  br label %.lr.ph

bb.b:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %exitcond.not = icmp eq i64 %i.j, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1002

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.049 = phi i64 [ %i.j, %bb.b ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %i.j = add i64 %.049, 1                         ; 2 uses
  switch i32 %i.e, label %bb.g [
    i32 1, label %bb.c
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i, label %bb.d, label %_PyUnicode_DATA.exit.i

bb.d:                                             ; preds = %bb.c
  %.val4.i.i = load ptr, ptr %i.b, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %.val4.i.i, %bb.d ], [ %.0.i.i.i, %bb.c ]
  %i.k = getelementptr i8, ptr %.0.i.i, i64 %.049
  %i.l = load i8, ptr %i.k, align 1, !tbaa !205
  %i.m = zext i8 %i.l to i32
  br label %PyUnicode_READ_CHAR.exit

bb.e:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i, label %bb.f, label %_PyUnicode_DATA.exit17.i

bb.f:                                             ; preds = %bb.e
  %.val4.i16.i = load ptr, ptr %i.b, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.e, %bb.f
  %.0.i15.i = phi ptr [ %.val4.i16.i, %bb.f ], [ %.0.i.i14.i, %bb.e ]
  %i.n = getelementptr [2 x i8], ptr %.0.i15.i, i64 %.049
  %i.o = load i16, ptr %i.n, align 2, !tbaa !208
  %i.p = zext i16 %i.o to i32
  br label %PyUnicode_READ_CHAR.exit

bb.g:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i, label %bb.h, label %_PyUnicode_DATA.exit25.i

bb.h:                                             ; preds = %bb.g
  %.val4.i24.i = load ptr, ptr %i.b, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.g, %bb.h
  %.0.i23.i = phi ptr [ %.val4.i24.i, %bb.h ], [ %.0.i.i22.i, %bb.g ]
  %i.q = getelementptr [4 x i8], ptr %.0.i23.i, i64 %.049
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.m, %_PyUnicode_DATA.exit.i ], [ %i.p, %_PyUnicode_DATA.exit17.i ], [ %i.r, %_PyUnicode_DATA.exit25.i ]
  switch i32 %.0.i, label %bb.b [
    i32 91, label %PyUnicode_READ_CHAR.exit._crit_edge
    i32 46, label %PyUnicode_READ_CHAR.exit._crit_edge
  ], !llvm.loop !1002

PyUnicode_READ_CHAR.exit._crit_edge:              ; preds = %PyUnicode_READ_CHAR.exit, %PyUnicode_READ_CHAR.exit
  br label %._crit_edge, !llvm.loop !1002

._crit_edge:                                      ; preds = %bb.b, %PyUnicode_READ_CHAR.exit._crit_edge, %bb.a
  %.0.lcssa = phi i64 [ %.049, %PyUnicode_READ_CHAR.exit._crit_edge ], [ %smax, %bb.a ], [ %smax, %bb.b ] ; 3 uses
  store ptr %0, ptr %3, align 8, !tbaa !940
  %i.s = getelementptr i8, ptr %3, i64 8          ; 2 uses
  store i64 %1, ptr %i.s, align 8, !tbaa !942
  %i.t = getelementptr i8, ptr %3, i64 16         ; 2 uses
  store i64 %.0.lcssa, ptr %i.t, align 8, !tbaa !943
  store ptr %0, ptr %5, align 8, !tbaa !940
  %i.u = getelementptr i8, ptr %5, i64 8
  store i64 %.0.lcssa, ptr %i.u, align 8, !tbaa !942
  %i.v = getelementptr i8, ptr %5, i64 16
  store i64 %2, ptr %i.v, align 8, !tbaa !943
  %i.w = getelementptr i8, ptr %5, i64 24
  store i64 %.0.lcssa, ptr %i.w, align 8, !tbaa !1003
  %i.x = tail call fastcc i64 @get_integer(ptr noundef %3) ; 2 uses
  store i64 %i.x, ptr %4, align 8, !tbaa !193
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.z = tail call ptr @PyErr_Occurred() #33
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !942
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !943
  %.not45 = icmp slt i64 %i.aa, %i.ab             ; 5 uses
  br i1 %.not45, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %4, align 8, !tbaa !193
  %i.ad = icmp ne i64 %i.ac, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = phi i1 [ true, %bb.j ], [ %i.ad, %bb.k ] ; 2 uses
  %.not35 = icmp eq ptr %6, null
  br i1 %.not35, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %6, align 4, !tbaa !938   ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  %or.cond = select i1 %i.ag, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = select i1 %.not45, i32 2, i32 1         ; 2 uses
  store i32 %i.ah, ptr %6, align 4, !tbaa !938
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = phi i32 [ %i.ah, %bb.n ], [ %i.af, %bb.m ]
  br i1 %i.ae, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %.not45, label %.critedge, label %autonumber_state_error.exit.thread

bb.r:                                             ; preds = %bb.p
  br i1 %.not45, label %autonumber_state_error.exit.thread, label %.critedge46

autonumber_state_error.exit.thread:               ; preds = %bb.q, %bb.r
  %.str.287.sink.i = phi ptr [ @.str.286, %bb.q ], [ @.str.287, %bb.r ]
  %i.ak = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.ak, ptr noundef nonnull %.str.287.sink.i) #33
  br label %.critedge

bb.s:                                             ; preds = %bb.o
  br i1 %.not45, label %.critedge, label %.critedge46

.critedge46:                                      ; preds = %bb.r, %bb.s
  %i.al = getelementptr i8, ptr %6, i64 4         ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !939 ; 2 uses
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !939
  %i.ao = sext i32 %i.am to i64
  store i64 %i.ao, ptr %4, align 8, !tbaa !193
  br label %.critedge
end_hunk_1
