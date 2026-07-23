inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@PyUnicode_RPartition:bb.a
    i32 4, label %bb.di
  ]

bb.j:                                             ; preds = %bb.i
  %.val63 = load i32, ptr %i.k, align 8
  %i.ae = and i32 %.val63, 64
  %.not61 = icmp eq i32 %i.ae, 0
  br i1 %.not61, label %bb.az, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val = load i32, ptr %i.o, align 8
  %i.af = and i32 %.val, 64
  %.not62 = icmp eq i32 %i.af, 0
  br i1 %.not62, label %bb.az, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %.val64, 0
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.197) #33, !inline_history !659
  br label %asciilib_rpartition.exit

bb.n:                                             ; preds = %bb.l
  %i.ai = tail call ptr @PyTuple_New(i64 noundef 3) #33, !inline_history !659 ; 12 uses
  %.not.i82 = icmp eq ptr %i.ai, null
  br i1 %.not.i82, label %asciilib_rpartition.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp slt i64 %.val64, 2
  br i1 %i.aj, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %.not66.i.i = icmp eq i64 %.val64, 1
  br i1 %.not66.i.i, label %bb.q, label %asciilib_fastsearch.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.ak = load i8, ptr %.054, align 1, !tbaa !205 ; 2 uses
  %i.al = icmp sgt i64 %.val65, 15
  br i1 %i.al, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.am = zext i8 %i.ak to i32
  %i.an = tail call ptr @memrchr(ptr noundef %.0.i73, i32 noundef %i.am, i64 noundef %.val65) #34, !inline_history !659 ; 2 uses
  %.not.i68.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i68.i.i, label %asciilib_fastsearch.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %.0.i73 to i64
  %i.aq = sub i64 %i.ao, %i.ap
  br label %asciilib_fastsearch.exit.i

bb.t:                                             ; preds = %bb.q
  %i.ar = getelementptr i8, ptr %.0.i73, i64 %.val65 ; 2 uses
  %i.as = icmp ugt ptr %i.ar, %.0.i73
  br i1 %i.as, label %.lr.ph, label %asciilib_fastsearch.exit.thread.i

bb.u:                                             ; preds = %.lr.ph
  %i.at = icmp ugt ptr %i.au, %.0.i73
  br i1 %i.at, label %.lr.ph, label %asciilib_fastsearch.exit.thread.i, !llvm.loop !660

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.0.i67.i.i229 = phi ptr [ %i.au, %bb.u ], [ %i.ar, %bb.t ]
  %i.au = getelementptr i8, ptr %.0.i67.i.i229, i64 -1 ; 4 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !205
  %i.aw = icmp eq i8 %i.av, %i.ak
  br i1 %i.aw, label %bb.v, label %bb.u, !llvm.loop !660

bb.v:                                             ; preds = %.lr.ph
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %.0.i73 to i64
  %i.az = sub i64 %i.ax, %i.ay
  br label %asciilib_fastsearch.exit.i

bb.w:                                             ; preds = %bb.o
  %i.ba = add nsw i64 %.val64, -1                 ; 6 uses
  %i.bb = load i8, ptr %.054, align 1, !tbaa !205 ; 5 uses
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd                    ; 2 uses
  %xtraiter = and i64 %i.ba, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i71.i.i.prol.loopexit, label %.lr.ph.i71.i.i.prol

.lr.ph.i71.i.i.prol:                              ; preds = %bb.w
  %i.bf = getelementptr i8, ptr %.054, i64 %i.ba
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !205 ; 2 uses
  %i.bh = and i8 %i.bg, 63
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = or i64 %i.bj, %i.be                     ; 2 uses
  %i.bl = icmp eq i8 %i.bg, %i.bb
  %i.bm = add nsw i64 %.val64, -2                 ; 2 uses
  %spec.select.i.i.i.prol = select i1 %i.bl, i64 %i.bm, i64 %i.ba ; 2 uses
  br label %.lr.ph.i71.i.i.prol.loopexit

.lr.ph.i71.i.i.prol.loopexit:                     ; preds = %.lr.ph.i71.i.i.prol, %bb.w
  %.04660.i.i.i.unr = phi i64 [ %i.ba, %bb.w ], [ %spec.select.i.i.i.prol, %.lr.ph.i71.i.i.prol ]
  %.04759.i.i.i.unr = phi i64 [ %i.be, %bb.w ], [ %i.bk, %.lr.ph.i71.i.i.prol ]
  %.04958.i.i.i.unr = phi i64 [ %i.ba, %bb.w ], [ %i.bm, %.lr.ph.i71.i.i.prol ]
  %.lcssa244.unr = phi i64 [ poison, %bb.w ], [ %i.bk, %.lr.ph.i71.i.i.prol ]
  %spec.select.i.i.i.lcssa.unr = phi i64 [ poison, %bb.w ], [ %spec.select.i.i.i.prol, %.lr.ph.i71.i.i.prol ]
  %i.bn = icmp eq i64 %.val64, 2
  br i1 %i.bn, label %.preheader56.i.i.i, label %.lr.ph.i71.i.i

.preheader56.i.i.i:                               ; preds = %.lr.ph.i71.i.i, %.lr.ph.i71.i.i.prol.loopexit
  %.lcssa244 = phi i64 [ %.lcssa244.unr, %.lr.ph.i71.i.i.prol.loopexit ], [ %i.dc, %.lr.ph.i71.i.i ] ; 2 uses
  %spec.select.i.i.i.lcssa = phi i64 [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i71.i.i.prol.loopexit ], [ %spec.select.i.i.i.1, %.lr.ph.i71.i.i ]
  %i.bo = sub i64 %.val65, %.val64                ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  br i1 %i.bp, label %.lr.ph66.split.us.i.i.i, label %asciilib_fastsearch.exit.thread.i

.lr.ph66.split.us.i.i.i:                          ; preds = %.preheader56.i.i.i, %bb.ab
  %.15065.us.i.i.i = phi i64 [ %i.cl, %bb.ab ], [ %i.bo, %.preheader56.i.i.i ] ; 5 uses
  %i.bq = getelementptr i8, ptr %.0.i73, i64 %.15065.us.i.i.i ; 4 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !205
  %i.bs = icmp eq i8 %i.br, %i.bb
  br i1 %i.bs, label %.preheader.us.i74.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph66.split.us.i.i.i
  %.not.us.i73.i.i = icmp eq i64 %.15065.us.i.i.i, 0
  br i1 %.not.us.i73.i.i, label %asciilib_fastsearch.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr i8, ptr %i.bq, i64 -1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !205
  %i.bv = and i8 %i.bu, 63
  %i.bw = zext nneg i8 %i.bv to i64
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bx, %.lcssa244
  %.not51.us.i.i.i = icmp eq i64 %i.by, 0
  %i.bz = select i1 %.not51.us.i.i.i, i64 %.val64, i64 0
  br label %bb.ab

.preheader.us.i74.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i, %bb.ac
  %.04862.us.i.i.i = phi i64 [ %i.cn, %bb.ac ], [ %i.ba, %.lr.ph66.split.us.i.i.i ] ; 4 uses
  %i.ca = getelementptr i8, ptr %i.bq, i64 %.04862.us.i.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !205
  %i.cc = getelementptr i8, ptr %.054, i64 %.04862.us.i.i.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !205
  %.not52.us.i.i.i = icmp eq i8 %i.cb, %i.cd
  br i1 %.not52.us.i.i.i, label %bb.ac, label %.thread.us.i75.i.i

.thread.us.i75.i.i:                               ; preds = %.preheader.us.i74.i.i
  %.not53.us.i.i.i = icmp eq i64 %.15065.us.i.i.i, 0
  br i1 %.not53.us.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread.us.i75.i.i
  %i.ce = getelementptr i8, ptr %i.bq, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !205
  %i.cg = and i8 %i.cf, 63
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = and i64 %i.ci, %.lcssa244
  %.not54.us.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not54.us.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread.us.i75.i.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i.i.i.lcssa, %bb.aa ], [ %i.bz, %bb.y ], [ %.val64, %bb.z ]
  %i.ck = sub nsw i64 %.15065.us.i.i.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.cl = add nsw i64 %i.ck, -1
  %i.cm = icmp sgt i64 %i.ck, 0
  br i1 %i.cm, label %.lr.ph66.split.us.i.i.i, label %asciilib_fastsearch.exit.thread.i, !llvm.loop !661

bb.ac:                                            ; preds = %.preheader.us.i74.i.i
  %i.cn = add nsw i64 %.04862.us.i.i.i, -1
  %i.co = icmp sgt i64 %.04862.us.i.i.i, 1
  br i1 %i.co, label %.preheader.us.i74.i.i, label %asciilib_fastsearch.exit.i, !llvm.loop !662

.lr.ph.i71.i.i:                                   ; preds = %.lr.ph.i71.i.i.prol.loopexit, %.lr.ph.i71.i.i
  %.04660.i.i.i = phi i64 [ %spec.select.i.i.i.1, %.lr.ph.i71.i.i ], [ %.04660.i.i.i.unr, %.lr.ph.i71.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.dc, %.lr.ph.i71.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i71.i.i.prol.loopexit ]
  %.04958.i.i.i = phi i64 [ %i.de, %.lr.ph.i71.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i71.i.i.prol.loopexit ] ; 4 uses
  %i.cp = getelementptr i8, ptr %.054, i64 %.04958.i.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !205 ; 2 uses
  %i.cr = and i8 %i.cq, 63
  %i.cs = zext nneg i8 %i.cr to i64
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = or i64 %i.ct, %.04759.i.i.i
  %i.cv = icmp eq i8 %i.cq, %i.bb
  %i.cw = add nsw i64 %.04958.i.i.i, -1           ; 2 uses
  %spec.select.i.i.i = select i1 %i.cv, i64 %i.cw, i64 %.04660.i.i.i
  %i.cx = getelementptr i8, ptr %.054, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !205 ; 2 uses
  %i.cz = and i8 %i.cy, 63
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = shl nuw i64 1, %i.da
  %i.dc = or i64 %i.db, %i.cu                     ; 2 uses
  %i.dd = icmp eq i8 %i.cy, %i.bb
  %i.de = add nsw i64 %.04958.i.i.i, -2           ; 2 uses
  %spec.select.i.i.i.1 = select i1 %i.dd, i64 %i.de, i64 %spec.select.i.i.i ; 2 uses
  %i.df = icmp sgt i64 %.04958.i.i.i, 2
  br i1 %i.df, label %.lr.ph.i71.i.i, label %.preheader56.i.i.i, !llvm.loop !663

asciilib_fastsearch.exit.i:                       ; preds = %bb.ac, %bb.v, %bb.s
  %.0.i.i84 = phi i64 [ %i.az, %bb.v ], [ %i.aq, %bb.s ], [ %.15065.us.i.i.i, %bb.ac ] ; 5 uses
  %i.dg = icmp slt i64 %.0.i.i84, 0
  br i1 %i.dg, label %asciilib_fastsearch.exit.thread.i, label %bb.ag

asciilib_fastsearch.exit.thread.i:                ; preds = %bb.ab, %bb.x, %bb.u, %bb.t, %asciilib_fastsearch.exit.i, %.preheader56.i.i.i, %bb.r, %bb.p
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.di = icmp ugt i32 %i.dh, -1073741825
  br i1 %i.di, label %Py_INCREF.exit38.i, label %bb.ad

bb.ad:                                            ; preds = %asciilib_fastsearch.exit.thread.i
  %i.dj = add nuw i32 %i.dh, 1
  store i32 %i.dj, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit38.i

Py_INCREF.exit38.i:                               ; preds = %bb.ad, %asciilib_fastsearch.exit.thread.i
  %i.dk = getelementptr i8, ptr %i.ai, i64 32
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.dk, align 8, !tbaa !194
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205 ; 2 uses
  %i.dm = icmp ugt i32 %i.dl, -1073741825
  br i1 %i.dm, label %Py_INCREF.exit37.i, label %bb.ae

bb.ae:                                            ; preds = %Py_INCREF.exit38.i
  %i.dn = add nuw i32 %i.dl, 1
  store i32 %i.dn, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), align 8, !tbaa !205
  br label %Py_INCREF.exit37.i

Py_INCREF.exit37.i:                               ; preds = %bb.ae, %Py_INCREF.exit38.i
  %i.do = getelementptr i8, ptr %i.ai, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.do, align 8, !tbaa !194
  %i.dp = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.dq = icmp ugt i32 %i.dp, -1073741825
  br i1 %i.dq, label %Py_INCREF.exit36.i, label %bb.af

bb.af:                                            ; preds = %Py_INCREF.exit37.i
  %i.dr = add nuw i32 %i.dp, 1
  store i32 %i.dr, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit36.i

Py_INCREF.exit36.i:                               ; preds = %bb.af, %Py_INCREF.exit37.i
  %i.ds = getelementptr i8, ptr %i.ai, i64 48
  store ptr %0, ptr %i.ds, align 8, !tbaa !194
  br label %asciilib_rpartition.exit

bb.ag:                                            ; preds = %asciilib_fastsearch.exit.i
  %i.dt = icmp eq i64 %.0.i.i84, 1
  br i1 %i.dt, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.du = load i8, ptr %.0.i73, align 1, !tbaa !205 ; 3 uses
  %i.dv = icmp sgt i8 %i.du, -1
  br i1 %i.dv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dw = zext nneg i8 %i.du to i64
  %i.dx = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.dw
  br label %_PyUnicode_FromASCII.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.dy = and i8 %i.du, 127
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.dz
  br label %_PyUnicode_FromASCII.exit.i

bb.ak:                                            ; preds = %bb.ag
  %i.eb = tail call ptr @PyUnicode_New(i64 noundef %.0.i.i84, i32 noundef 127), !inline_history !664 ; 5 uses
  %.not.i39.i = icmp eq ptr %i.eb, null
  br i1 %.not.i39.i, label %_PyUnicode_FromASCII.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ec = getelementptr i8, ptr %i.eb, i64 32
  %.val.i.i.i = load i32, ptr %i.ec, align 8      ; 2 uses
  %i.ed = and i32 %.val.i.i.i, 32
  %.not.i.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ee = and i32 %.val.i.i.i, 64
  %.not.i.i.i.i = icmp eq i32 %i.ee, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.eb, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.ef = getelementptr i8, ptr %i.eb, i64 56
  %.val4.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.an, %bb.am
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.am ], [ %.val4.i.i.i, %bb.an ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i, ptr readonly align 1 %.0.i73, i64 %.0.i.i84, i1 false)
  br label %_PyUnicode_FromASCII.exit.i

_PyUnicode_FromASCII.exit.i:                      ; preds = %_PyUnicode_DATA.exit.i.i, %bb.ak, %bb.aj, %bb.ai
  %.0.i40.i = phi ptr [ null, %bb.ak ], [ %i.eb, %_PyUnicode_DATA.exit.i.i ], [ %i.dx, %bb.ai ], [ %i.ea, %bb.aj ]
  %i.eg = getelementptr i8, ptr %i.ai, i64 32
  store ptr %.0.i40.i, ptr %i.eg, align 8, !tbaa !194
  %i.eh = load i32, ptr %1, align 8, !tbaa !205   ; 2 uses
  %i.ei = icmp ugt i32 %i.eh, -1073741825
  br i1 %i.ei, label %Py_INCREF.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_PyUnicode_FromASCII.exit.i
  %i.ej = add nuw i32 %i.eh, 1
  store i32 %i.ej, ptr %1, align 8, !tbaa !205
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.ao, %_PyUnicode_FromASCII.exit.i
  %i.ek = getelementptr i8, ptr %i.ai, i64 40
  store ptr %1, ptr %i.ek, align 8, !tbaa !194
  %i.el = add i64 %.0.i.i84, %.val64              ; 2 uses
  %i.em = getelementptr i8, ptr %.0.i73, i64 %i.el ; 2 uses
  %i.en = sub i64 %.val65, %i.el                  ; 3 uses
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %Py_INCREF.exit.i
  %i.ep = load i8, ptr %i.em, align 1, !tbaa !205 ; 3 uses
  %i.eq = icmp sgt i8 %i.ep, -1
  br i1 %i.eq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.er = zext nneg i8 %i.ep to i64
  %i.es = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.er
  br label %_PyUnicode_FromASCII.exit51.i

bb.ar:                                            ; preds = %bb.ap
  %i.et = and i8 %i.ep, 127
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.eu
  br label %_PyUnicode_FromASCII.exit51.i

bb.as:                                            ; preds = %Py_INCREF.exit.i
  %i.ew = tail call ptr @PyUnicode_New(i64 noundef %i.en, i32 noundef 127), !inline_history !664 ; 5 uses
  %.not.i41.i = icmp eq ptr %i.ew, null
  br i1 %.not.i41.i, label %_PyUnicode_FromASCII.exit51.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ex = getelementptr i8, ptr %i.ew, i64 32
  %.val.i.i42.i = load i32, ptr %i.ex, align 8    ; 2 uses
  %i.ey = and i32 %.val.i.i42.i, 32
  %.not.i.i43.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i43.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = and i32 %.val.i.i42.i, 64
  %.not.i.i.i44.i = icmp eq i32 %i.ez, 0
  %.0.v.i.i.i45.i = select i1 %.not.i.i.i44.i, i64 56, i64 40
  %.0.i.i.i46.i = getelementptr i8, ptr %i.ew, i64 %.0.v.i.i.i45.i
  br label %_PyUnicode_DATA.exit.i47.i

bb.av:                                            ; preds = %bb.at
  %i.fa = getelementptr i8, ptr %i.ew, i64 56
  %.val4.i.i50.i = load ptr, ptr %i.fa, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i47.i

_PyUnicode_DATA.exit.i47.i:                       ; preds = %bb.av, %bb.au
  %.0.i.i48.i = phi ptr [ %.0.i.i.i46.i, %bb.au ], [ %.val4.i.i50.i, %bb.av ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i48.i, ptr readonly align 1 %i.em, i64 %i.en, i1 false)
  br label %_PyUnicode_FromASCII.exit51.i

_PyUnicode_FromASCII.exit51.i:                    ; preds = %_PyUnicode_DATA.exit.i47.i, %bb.as, %bb.ar, %bb.aq
  %.0.i49.i = phi ptr [ null, %bb.as ], [ %i.ew, %_PyUnicode_DATA.exit.i47.i ], [ %i.es, %bb.aq ], [ %i.ev, %bb.ar ]
  %i.fb = getelementptr i8, ptr %i.ai, i64 48
  store ptr %.0.i49.i, ptr %i.fb, align 8, !tbaa !194
  %i.fc = tail call ptr @PyErr_Occurred() #33, !inline_history !659
  %.not35.i = icmp eq ptr %i.fc, null
  br i1 %.not35.i, label %asciilib_rpartition.exit, label %bb.aw

bb.aw:                                            ; preds = %_PyUnicode_FromASCII.exit51.i
  %i.fd = load i32, ptr %i.ai, align 8, !tbaa !205 ; 2 uses
  %.not.i.i85 = icmp sgt i32 %i.fd, -1
  br i1 %.not.i.i85, label %bb.ax, label %asciilib_rpartition.exit

bb.ax:                                            ; preds = %bb.aw
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.ai, align 8, !tbaa !205
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ay, label %asciilib_rpartition.exit

bb.ay:                                            ; preds = %bb.ax
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #33, !inline_history !659
  br label %asciilib_rpartition.exit

bb.az:                                            ; preds = %bb.k, %bb.j
  %i.fg = icmp eq i64 %.val64, 0
  br i1 %i.fg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fh = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.fh, ptr noundef nonnull @.str.197) #33, !inline_history !665
  br label %asciilib_rpartition.exit

bb.bb:                                            ; preds = %bb.az
  %i.fi = tail call ptr @PyTuple_New(i64 noundef 3) #33, !inline_history !665 ; 12 uses
  %.not.i86 = icmp eq ptr %i.fi, null
  br i1 %.not.i86, label %asciilib_rpartition.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fj = icmp slt i64 %.val64, 2
  br i1 %i.fj, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
end_hunk_0
begin_hunk_1_@ucs1lib_rfind_slice:bb.a
  %.not.us.i79.i.i = icmp eq i64 %.15065.us.i.i.fr.i, 0
  br i1 %.not.us.i79.i.i, label %ucs1lib_rfind.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.v, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !205
  %i.aa = and i8 %i.z, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.ac, %.lcssa
  %.not51.us.i.i.i = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not51.us.i.i.i, i64 %2, i64 0
  br label %bb.h

.preheader.us.i80.i.i:                            ; preds = %.lr.ph66.split.us.i.i.i, %bb.i
  %.04862.us.i.i.i = phi i64 [ %i.as, %bb.i ], [ %i.f, %.lr.ph66.split.us.i.i.i ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.v, i64 %.04862.us.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !205
  %i.ah = getelementptr i8, ptr %1, i64 %.04862.us.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !205
  %.not52.us.i.i.i = icmp eq i8 %i.ag, %i.ai
  br i1 %.not52.us.i.i.i, label %bb.i, label %.thread.us.i.i.i

.thread.us.i.i.i:                                 ; preds = %.preheader.us.i80.i.i
  %.not53.us.i.i.i = icmp eq i64 %.15065.us.i.i.fr.i, 0
  br i1 %.not53.us.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.v, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !205
  %i.al = and i8 %i.ak, 63
  %i.am = zext nneg i8 %i.al to i64
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.an, %.lcssa
  %.not54.us.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not54.us.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.us.i.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %spec.select.lcssa.sink.i.i.i = phi i64 [ %spec.select.i77.i.i.lcssa, %bb.g ], [ %i.ae, %bb.e ], [ %2, %bb.f ]
  %i.ap = sub nsw i64 %.15065.us.i.i.fr.i, %spec.select.lcssa.sink.i.i.i ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = icmp sgt i64 %i.ap, 0
  br i1 %i.ar, label %.lr.ph66.split.us.i.i.i, label %ucs1lib_rfind.exit, !llvm.loop !666

bb.i:                                             ; preds = %.preheader.us.i80.i.i
  %i.as = add nsw i64 %.04862.us.i.i.i, -1
  %i.at = icmp sgt i64 %.04862.us.i.i.i, 1
  br i1 %i.at, label %.preheader.us.i80.i.i, label %ucs1lib_fastsearch.exit.i, !llvm.loop !667

.lr.ph.i76.i.i:                                   ; preds = %.lr.ph.i76.i.i.prol.loopexit, %.lr.ph.i76.i.i
  %.04660.i.i.i = phi i64 [ %spec.select.i77.i.i.1, %.lr.ph.i76.i.i ], [ %.04660.i.i.i.unr, %.lr.ph.i76.i.i.prol.loopexit ]
  %.04759.i.i.i = phi i64 [ %i.bh, %.lr.ph.i76.i.i ], [ %.04759.i.i.i.unr, %.lr.ph.i76.i.i.prol.loopexit ]
  %.04958.i.i.i = phi i64 [ %i.bj, %.lr.ph.i76.i.i ], [ %.04958.i.i.i.unr, %.lr.ph.i76.i.i.prol.loopexit ] ; 4 uses
  %i.au = getelementptr i8, ptr %1, i64 %.04958.i.i.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !205 ; 2 uses
  %i.aw = and i8 %i.av, 63
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = or i64 %i.ay, %.04759.i.i.i
  %i.ba = icmp eq i8 %i.av, %i.g
  %i.bb = add nsw i64 %.04958.i.i.i, -1           ; 2 uses
  %spec.select.i77.i.i = select i1 %i.ba, i64 %i.bb, i64 %.04660.i.i.i
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !205 ; 2 uses
  %i.be = and i8 %i.bd, 63
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = or i64 %i.bg, %i.az                     ; 2 uses
  %i.bi = icmp eq i8 %i.bd, %i.g
  %i.bj = add nsw i64 %.04958.i.i.i, -2           ; 2 uses
  %spec.select.i77.i.i.1 = select i1 %i.bi, i64 %i.bj, i64 %spec.select.i77.i.i ; 2 uses
  %i.bk = icmp sgt i64 %.04958.i.i.i, 2
  br i1 %i.bk, label %.lr.ph.i76.i.i, label %.preheader56.i.i.i, !llvm.loop !668

ucs1lib_fastsearch.exit.i:                        ; preds = %bb.i
  %i.bl = icmp slt i64 %.15065.us.i.i.fr.i, 0
  %i.bm = select i1 %i.bl, i64 0, i64 %3
  %spec.select.i = add i64 %i.bm, %.15065.us.i.i.fr.i
  br label %ucs1lib_rfind.exit

ucs1lib_rfind.exit:                               ; preds = %bb.d, %bb.h, %bb.a, %bb.b, %.preheader56.i.i.i, %ucs1lib_fastsearch.exit.i
  %.011.i = phi i64 [ %4, %bb.a ], [ -1, %bb.b ], [ %spec.select.i, %ucs1lib_fastsearch.exit.i ], [ -1, %.preheader56.i.i.i ], [ -1, %bb.h ], [ -1, %bb.d ]
  ret i64 %.011.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @asciilib_fastsearch(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly %2, i64 noundef range(i64 1, 0) %3, i32 noundef range(i32 1, 3) %4) unnamed_addr #23 {
bb.a:
  %i.a = icmp slt i64 %1, %3
  br i1 %i.a, label %asciilib_find_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %3, 2
  br i1 %i.b, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %.not66 = icmp eq i64 %3, 1
  br i1 %.not66, label %bb.d, label %asciilib_find_char.exit

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %4, 1
  %i.d = load i8, ptr %2, align 1, !tbaa !205     ; 4 uses
  br i1 %i.c, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.f = icmp sgt i64 %1, 15
  br i1 %i.f, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.g = icmp ult ptr %0, %i.e
  br i1 %i.g, label %.lr.ph.i, label %asciilib_find_char.exit

bb.f:                                             ; preds = %bb.e
  %i.h = zext i8 %i.d to i32
  %i.i = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.h, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %asciilib_find_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  br label %asciilib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.01721.i = phi ptr [ %i.r, %bb.i ], [ %0, %.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.01721.i, align 1, !tbaa !205
  %i.n = icmp eq i8 %i.m, %i.d
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.o = ptrtoint ptr %.01721.i to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p
  br label %asciilib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.01721.i, i64 1   ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.r, %i.e
  br i1 %exitcond.not.i, label %asciilib_find_char.exit, label %.lr.ph.i, !llvm.loop !777

bb.j:                                             ; preds = %bb.d
  %i.s = icmp sgt i64 %1, 15
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = zext i8 %i.d to i32
  %i.u = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.t, i64 noundef %1) #34 ; 2 uses
  %.not.i68 = icmp eq ptr %i.u, null
  br i1 %.not.i68, label %asciilib_find_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %asciilib_find_char.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.z = icmp ugt ptr %i.y, %0
  br i1 %i.z, label %.lr.ph, label %asciilib_find_char.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt ptr %i.ab, %0
  br i1 %i.aa, label %.lr.ph, label %asciilib_find_char.exit, !llvm.loop !660

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.0.i6712 = phi ptr [ %i.ab, %bb.n ], [ %i.y, %bb.m ]
  %i.ab = getelementptr i8, ptr %.0.i6712, i64 -1 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !205
  %i.ad = icmp eq i8 %i.ac, %i.d
  br i1 %i.ad, label %bb.o, label %bb.n, !llvm.loop !660

bb.o:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %asciilib_find_char.exit

bb.p:                                             ; preds = %bb.b
  %.not = icmp eq i32 %4, 2
  br i1 %.not, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = icmp slt i64 %1, 2500
  br i1 %i.ah, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = icmp samesign ult i64 %3, 100
  %i.aj = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.aj, %i.ai
  %i.ak = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.ak, %or.cond3
  br i1 %or.cond5, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.al = add nsw i64 %3, -1                      ; 12 uses
  %i.am = getelementptr i8, ptr %2, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !205 ; 5 uses
  %xtraiter = and i64 %i.al, 1
  %i.ao = icmp eq i64 %3, 2
  br i1 %i.ao, label %.lr.ph.i69.epil.preheader, label %.new

.new:                                             ; preds = %bb.s
  %unroll_iter = and i64 %i.al, -2
  br label %.lr.ph.i69

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i69
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i69.epil.preheader

.lr.ph.i69.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.s
  %.068100.i.epil.init = phi i64 [ 0, %bb.s ], [ %i.cw, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.s ], [ %i.cs, %._crit_edge.i.unr-lcssa ]
  %.07898.i.epil.init = phi i64 [ %i.al, %bb.s ], [ %.179.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.ap = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !205 ; 2 uses
  %i.ar = and i8 %i.aq, 63
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = or i64 %i.at, %.06999.i.epil.init
  %i.av = icmp eq i8 %i.aq, %i.an
  %i.aw = xor i64 %.068100.i.epil.init, -1
  %i.ax = add nsw i64 %i.al, %i.aw
  %.179.i.epil = select i1 %i.av, i64 %i.ax, i64 %.07898.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i69.epil.preheader
  %.lcssa24 = phi i64 [ %i.cs, %._crit_edge.i.unr-lcssa ], [ %i.au, %.lr.ph.i69.epil.preheader ]
  %.179.i.lcssa = phi i64 [ %.179.i.1, %._crit_edge.i.unr-lcssa ], [ %.179.i.epil, %.lr.ph.i69.epil.preheader ]
  %i.ay = sub i64 %1, %3                          ; 4 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.al     ; 3 uses
  %i.ba = and i8 %i.an, 63
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = or i64 %.lcssa24, %i.bc                 ; 2 uses
  %.not108.i = icmp slt i64 %i.ay, 0
  br i1 %.not108.i, label %asciilib_find_char.exit, label %.lr.ph111.split.us.i

.lr.ph111.split.us.i:                             ; preds = %._crit_edge.i, %bb.z
  %.066109.us.i = phi i64 [ %i.ca, %bb.z ], [ 0, %._crit_edge.i ] ; 9 uses
  %i.be = getelementptr i8, ptr %i.az, i64 %.066109.us.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !205
  %i.bg = icmp eq i8 %i.bf, %i.an
  br i1 %i.bg, label %.preheader.us.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph111.split.us.i
  %i.bh = add i64 %.066109.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.bh, %i.ay
  br i1 %.not88.us.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr i8, ptr %i.az, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bd
  %.not89.us.i = icmp eq i64 %i.bn, 0
  %i.bo = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.bo, %.066109.us.i
  br label %bb.z

bb.v:                                             ; preds = %.preheader.us.i, %bb.aa
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.cb, %bb.aa ] ; 4 uses
  %i.bp = getelementptr i8, ptr %i.cc, i64 %.0102.us.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !205
  %i.br = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !205
  %.not90.us.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not90.us.i, label %bb.aa, label %._crit_edge104.us.i

._crit_edge104.us.i:                              ; preds = %bb.v
  %5 = icmp eq i64 %.0102.us.i, %i.al
  br i1 %5, label %asciilib_find_char.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge104.us.i
  %i.bt = add i64 %.066109.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.bt, %i.ay
  br i1 %.not91.us.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr i8, ptr %i.az, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !205
  %i.bw = and i8 %i.bv, 63
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = and i64 %i.by, %i.bd
  %.not92.us.i = icmp eq i64 %i.bz, 0
  br i1 %.not92.us.i, label %.thread.us.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.y, %bb.x
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.y ], [ %3, %bb.x ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066109.us.i
  br label %bb.z

bb.z:                                             ; preds = %.thread.us.i, %bb.u, %bb.t
  %.3.us.i = phi i64 [ %.066109.us.i, %bb.t ], [ %.167.us.i, %.thread.us.i ], [ %spec.select.us.i, %bb.u ]
  %i.ca = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.ca, %i.ay
  br i1 %.not.us.i, label %asciilib_find_char.exit, label %.lr.ph111.split.us.i, !llvm.loop !778

bb.aa:                                            ; preds = %bb.v
  %i.cb = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond132.not.i = icmp eq i64 %i.cb, %i.al
  br i1 %exitcond132.not.i, label %asciilib_find_char.exit, label %bb.v, !llvm.loop !779

.preheader.us.i:                                  ; preds = %.lr.ph111.split.us.i
  %i.cc = getelementptr i8, ptr %0, i64 %.066109.us.i
  br label %bb.v

.lr.ph.i69:                                       ; preds = %.lr.ph.i69, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.cw, %.lr.ph.i69 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.cs, %.lr.ph.i69 ]
  %.07898.i = phi i64 [ %i.al, %.new ], [ %.179.i.1, %.lr.ph.i69 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i69 ]
  %i.cd = getelementptr i8, ptr %2, i64 %.068100.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !205 ; 2 uses
  %i.cf = and i8 %i.ce, 63
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = or i64 %i.ch, %.06999.i
  %i.cj = icmp eq i8 %i.ce, %i.an
  %i.ck = xor i64 %.068100.i, -1
  %i.cl = add nsw i64 %i.al, %i.ck
  %.179.i = select i1 %i.cj, i64 %i.cl, i64 %.07898.i
  %i.cm = getelementptr i8, ptr %2, i64 %.068100.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !205 ; 2 uses
  %i.cp = and i8 %i.co, 63
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = or i64 %i.cr, %i.ci                     ; 3 uses
  %i.ct = icmp eq i8 %i.co, %i.an
  %i.cu = xor i64 %.068100.i, -2
  %i.cv = add nsw i64 %i.al, %i.cu
  %.179.i.1 = select i1 %i.ct, i64 %i.cv, i64 %.179.i ; 3 uses
  %i.cw = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i69, !llvm.loop !780

bb.ab:                                            ; preds = %bb.r
  %i.cx = lshr i64 %3, 2
  %i.cy = mul nuw nsw i64 %i.cx, 3
  %i.cz = lshr i64 %1, 2
  %i.da = icmp samesign ult i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.db = tail call fastcc i64 @asciilib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %asciilib_find_char.exit

bb.ad:                                            ; preds = %bb.ab
  %i.dc = tail call fastcc i64 @asciilib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %asciilib_find_char.exit

bb.ae:                                            ; preds = %bb.p
  %i.dd = add nsw i64 %3, -1                      ; 6 uses
  %i.de = load i8, ptr %2, align 1, !tbaa !205    ; 5 uses
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg                    ; 2 uses
  %xtraiter29 = and i64 %i.dd, 1
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i71.prol.loopexit, label %.lr.ph.i71.prol

.lr.ph.i71.prol:                                  ; preds = %bb.ae
  %i.di = getelementptr i8, ptr %2, i64 %i.dd
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !205 ; 2 uses
  %i.dk = and i8 %i.dj, 63
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = or i64 %i.dm, %i.dh                     ; 2 uses
  %i.do = icmp eq i8 %i.dj, %i.de
  %i.dp = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i.prol = select i1 %i.do, i64 %i.dp, i64 %i.dd ; 2 uses
  br label %.lr.ph.i71.prol.loopexit

.lr.ph.i71.prol.loopexit:                         ; preds = %.lr.ph.i71.prol, %bb.ae
  %.04660.i.unr = phi i64 [ %i.dd, %bb.ae ], [ %spec.select.i.prol, %.lr.ph.i71.prol ]
  %.04759.i.unr = phi i64 [ %i.dh, %bb.ae ], [ %i.dn, %.lr.ph.i71.prol ]
  %.04958.i.unr = phi i64 [ %i.dd, %bb.ae ], [ %i.dp, %.lr.ph.i71.prol ]
  %.lcssa19.unr = phi i64 [ poison, %bb.ae ], [ %i.dn, %.lr.ph.i71.prol ]
  %spec.select.i.lcssa.unr = phi i64 [ poison, %bb.ae ], [ %spec.select.i.prol, %.lr.ph.i71.prol ]
  %i.dq = icmp eq i64 %3, 2
  br i1 %i.dq, label %.preheader56.i, label %.lr.ph.i71

.preheader56.i:                                   ; preds = %.lr.ph.i71, %.lr.ph.i71.prol.loopexit
  %.lcssa19 = phi i64 [ %.lcssa19.unr, %.lr.ph.i71.prol.loopexit ], [ %i.ff, %.lr.ph.i71 ] ; 2 uses
  %spec.select.i.lcssa = phi i64 [ %spec.select.i.lcssa.unr, %.lr.ph.i71.prol.loopexit ], [ %spec.select.i.1, %.lr.ph.i71 ]
  %i.dr = sub i64 %1, %3                          ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, -1
  br i1 %i.ds, label %.lr.ph66.split.us.i, label %asciilib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.aj
  %.15065.us.i = phi i64 [ %i.eo, %bb.aj ], [ %i.dr, %.preheader56.i ] ; 5 uses
  %i.dt = getelementptr i8, ptr %0, i64 %.15065.us.i ; 4 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !205
  %i.dv = icmp eq i8 %i.du, %i.de
  br i1 %i.dv, label %.preheader.us.i74, label %bb.af

bb.af:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i73 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i73, label %asciilib_find_char.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = getelementptr i8, ptr %i.dt, i64 -1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !205
  %i.dy = and i8 %i.dx, 63
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %.lcssa19
  %.not51.us.i = icmp eq i64 %i.eb, 0
  %i.ec = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.aj

.preheader.us.i74:                                ; preds = %.lr.ph66.split.us.i, %bb.ak
  %.04862.us.i = phi i64 [ %i.eq, %bb.ak ], [ %i.dd, %.lr.ph66.split.us.i ] ; 4 uses
  %i.ed = getelementptr i8, ptr %i.dt, i64 %.04862.us.i
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !205
  %i.ef = getelementptr i8, ptr %2, i64 %.04862.us.i
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !205
  %.not52.us.i = icmp eq i8 %i.ee, %i.eg
  br i1 %.not52.us.i, label %bb.ak, label %.thread.us.i75

.thread.us.i75:                                   ; preds = %.preheader.us.i74
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread.us.i75
  %i.eh = getelementptr i8, ptr %i.dt, i64 -1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !205
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = and i64 %i.el, %.lcssa19
  %.not54.us.i = icmp eq i64 %i.em, 0
  br i1 %.not54.us.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread.us.i75
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i.lcssa, %bb.ai ], [ %i.ec, %bb.ag ], [ %3, %bb.ah ]
  %i.en = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.eo = add nsw i64 %i.en, -1
  %i.ep = icmp sgt i64 %i.en, 0
  br i1 %i.ep, label %.lr.ph66.split.us.i, label %asciilib_find_char.exit, !llvm.loop !661

bb.ak:                                            ; preds = %.preheader.us.i74
  %i.eq = add nsw i64 %.04862.us.i, -1
  %i.er = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.er, label %.preheader.us.i74, label %asciilib_find_char.exit, !llvm.loop !662

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.prol.loopexit, %.lr.ph.i71
  %.04660.i = phi i64 [ %spec.select.i.1, %.lr.ph.i71 ], [ %.04660.i.unr, %.lr.ph.i71.prol.loopexit ]
  %.04759.i = phi i64 [ %i.ff, %.lr.ph.i71 ], [ %.04759.i.unr, %.lr.ph.i71.prol.loopexit ]
  %.04958.i = phi i64 [ %i.fh, %.lr.ph.i71 ], [ %.04958.i.unr, %.lr.ph.i71.prol.loopexit ] ; 4 uses
  %i.es = getelementptr i8, ptr %2, i64 %.04958.i
  %i.et = load i8, ptr %i.es, align 1, !tbaa !205 ; 2 uses
  %i.eu = and i8 %i.et, 63
  %i.ev = zext nneg i8 %i.eu to i64
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = or i64 %i.ew, %.04759.i
  %i.ey = icmp eq i8 %i.et, %i.de
  %i.ez = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i = select i1 %i.ey, i64 %i.ez, i64 %.04660.i
  %i.fa = getelementptr i8, ptr %2, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !205 ; 2 uses
  %i.fc = and i8 %i.fb, 63
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = or i64 %i.fe, %i.ex                     ; 2 uses
  %i.fg = icmp eq i8 %i.fb, %i.de
  %i.fh = add nsw i64 %.04958.i, -2               ; 2 uses
  %spec.select.i.1 = select i1 %i.fg, i64 %i.fh, i64 %spec.select.i ; 2 uses
  %i.fi = icmp sgt i64 %.04958.i, 2
  br i1 %i.fi, label %.lr.ph.i71, label %.preheader56.i, !llvm.loop !663

asciilib_find_char.exit:                          ; preds = %bb.z, %._crit_edge104.us.i, %bb.aa, %bb.aj, %bb.af, %bb.ak, %bb.n, %bb.i, %bb.m, %.preheader56.i, %._crit_edge.i, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.ad, %bb.ac
  %.0 = phi i64 [ %i.db, %bb.ac ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.n ], [ -1, %bb.i ], [ %i.dc, %bb.ad ], [ -1, %bb.m ], [ %i.l, %bb.g ], [ -1, %bb.f ], [ %i.q, %bb.h ], [ -1, %.preheader.i ], [ %i.x, %bb.l ], [ -1, %bb.k ], [ %i.ag, %bb.o ], [ -1, %._crit_edge.i ], [ %.15065.us.i, %bb.ak ], [ -1, %bb.aj ], [ -1, %.preheader56.i ], [ %.066109.us.i, %bb.aa ], [ -1, %bb.af ], [ %.066109.us.i, %._crit_edge104.us.i ], [ -1, %bb.z ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @asciilib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #24 {
bb.a:
  %4 = alloca %struct.asciilib__pre, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %2, ptr %4, align 8, !tbaa !781
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8, !tbaa !783
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i.i = phi i64 [ %.1.us.i.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.02941.us.i.i.i = phi i64 [ %.130.us.i.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03140.us.i.i.i = phi i64 [ %.132.us.i.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.03339.us.i.i.i = phi i64 [ %.134.us.i.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205   ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 %.042.us.i.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.03339.us.i.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !205   ; 2 uses
  %i.h = icmp ult i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.02941.us.i.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.03339.us.i.i.i, 1              ; 2 uses
  %.not37.us.i.i.i = icmp eq i64 %i.k, %.03140.us.i.i.i ; 2 uses
  %spec.select.us.i.i.i = select i1 %.not37.us.i.i.i, i64 0, i64 %i.k
  %i.l = select i1 %.not37.us.i.i.i, i64 %.03140.us.i.i.i, i64 0
  %spec.select38.us.i.i.i = add i64 %i.l, %.02941.us.i.i.i
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i.i
  %i.m = add i64 %.02941.us.i.i.i, 1
  %i.n = add i64 %i.m, %.03339.us.i.i.i           ; 2 uses
  %i.o = sub i64 %i.n, %.042.us.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select.us.i.i.i, %bb.d ] ; 2 uses
  %.132.us.i.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.03140.us.i.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select38.us.i.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i.i = phi i64 [ %.042.us.i.i.i, %bb.e ], [ %.02941.us.i.i.i, %bb.c ], [ %.042.us.i.i.i, %bb.d ] ; 3 uses
  %i.p = add i64 %.130.us.i.i.i, %.134.us.i.i.i   ; 2 uses
  %i.q = icmp slt i64 %i.p, %3
  br i1 %i.q, label %.split.us.i.i.i, label %.split.i.i.i, !llvm.loop !784

.split.i.i.i:                                     ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i.i = phi i64 [ %.1.i.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %.02941.i.i.i = phi i64 [ %.130.i.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03140.i.i.i = phi i64 [ %.132.i.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.03339.i.i.i = phi i64 [ %.134.i.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !205   ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 %.042.i.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.03339.i.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !205   ; 2 uses
  %i.x = icmp ult i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i.i
  %i.y = add i64 %.02941.i.i.i, 1
  %i.z = add i64 %i.y, %.03339.i.i.i              ; 2 uses
  %i.aa = sub i64 %i.z, %.042.i.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.03339.i.i.i, 1                ; 2 uses
  %.not37.i.i.i = icmp eq i64 %i.ac, %.03140.i.i.i ; 2 uses
  %spec.select.i.i.i = select i1 %.not37.i.i.i, i64 0, i64 %i.ac
  %i.ad = select i1 %.not37.i.i.i, i64 %.03140.i.i.i, i64 0
  %spec.select38.i.i.i = add i64 %i.ad, %.02941.i.i.i
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.02941.i.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select.i.i.i, %bb.i ] ; 2 uses
  %.132.i.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.03140.i.i.i, %bb.i ] ; 2 uses
  %.130.i.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select38.i.i.i, %bb.i ] ; 2 uses
  %.1.i.i.i = phi i64 [ %.042.i.i.i, %bb.g ], [ %.02941.i.i.i, %bb.j ], [ %.042.i.i.i, %bb.i ] ; 3 uses
  %i.af = add i64 %.130.i.i.i, %.134.i.i.i        ; 2 uses
  %i.ag = icmp slt i64 %i.af, %3
  br i1 %i.ag, label %.split.i.i.i, label %asciilib__factorize.exit.i, !llvm.loop !784

asciilib__factorize.exit.i:                       ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ai = icmp sgt i64 %.1.us.i.i.i, %.1.i.i.i
  %..i.i = tail call i64 @llvm.smax.i64(i64 %.1.us.i.i.i, i64 %.1.i.i.i)
  %.fr239.i = freeze i64 %..i.i                   ; 17 uses
  %.0.sroa.speculated.i.i = select i1 %i.ai, i64 %.132.us.i.i.i, i64 %.132.i.i.i ; 3 uses
  store i64 %.0.sroa.speculated.i.i, ptr %i.ah, align 8, !tbaa !193
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.fr239.i, ptr %i.aj, align 8, !tbaa !785
  %i.ak = getelementptr i8, ptr %2, i64 %.0.sroa.speculated.i.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %2, ptr %i.ak, i64 %.fr239.i)
  %i.al = icmp eq i32 %bcmp.i, 0                  ; 3 uses
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !786
  br i1 %i.al, label %.lr.ph.preheader.i, label %bb.l

bb.l:                                             ; preds = %asciilib__factorize.exit.i
  %i.ao = sub i64 %3, %.fr239.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.fr239.i, i64 %i.ao)
  %i.ap = add i64 %..i, 1                         ; 2 uses
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !787
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l, %asciilib__factorize.exit.i
  %i.aq = phi i64 [ %i.ap, %bb.l ], [ %.0.sroa.speculated.i.i, %asciilib__factorize.exit.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 %3, ptr %i.ar, align 8, !tbaa !788
  %i.as = add nsw i64 %3, -1                      ; 3 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !205
  %i.av = add nsw i64 %3, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.preheader.i
  %.059.i = phi i64 [ %i.bb, %.critedge.i ], [ %i.av, %.lr.ph.preheader.i ] ; 4 uses
  %i.aw = getelementptr i8, ptr %2, i64 %.059.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !205
  %i.ay = xor i8 %i.ax, %i.au
  %i.az = and i8 %i.ay, 63
  %.not.i = icmp eq i8 %i.az, 0
  br i1 %.not.i, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.ba = sub nsw i64 %i.as, %.059.i              ; 2 uses
  store i64 %i.ba, ptr %i.ar, align 8, !tbaa !788
  br label %.lr.ph62.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bb = add nsw i64 %.059.i, -1
  %i.bc = icmp sgt i64 %.059.i, 0
  br i1 %i.bc, label %.lr.ph.i, label %.lr.ph62.i, !llvm.loop !789

.lr.ph62.i:                                       ; preds = %.critedge.i, %bb.m
  %i.bd = phi i64 [ %i.ba, %bb.m ], [ %3, %.critedge.i ] ; 4 uses
  %i.be = tail call i64 @llvm.umin.i64(i64 range(i64 6, -9223372036854775808) %3, i64 255) ; 2 uses
  %i.bf = trunc nuw i64 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bg, i8 %i.bf, i64 64, i1 false), !tbaa !205
  %i.bh = sub nsw i64 %3, %i.be
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph62.i
  %.05361.i = phi i64 [ %i.bh, %.lr.ph62.i ], [ %i.bp, %bb.n ] ; 3 uses
  %i.bi = sub i64 %i.as, %.05361.i
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr i8, ptr %2, i64 %.05361.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !205
  %i.bm = and i8 %i.bl, 63
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = getelementptr i8, ptr %i.bg, i64 %i.bn
  store i8 %i.bj, ptr %i.bo, align 1, !tbaa !205
  %i.bp = add nsw i64 %.05361.i, 1                ; 2 uses
  %i.bq = icmp slt i64 %i.bp, %3
  br i1 %i.bq, label %bb.n, label %asciilib__preprocess.exit, !llvm.loop !790

asciilib__preprocess.exit:                        ; preds = %bb.n
  %i.br = getelementptr i8, ptr %0, i64 %3
  %i.bs = getelementptr i8, ptr %i.br, i64 -1     ; 5 uses
  %i.bt = getelementptr i8, ptr %0, i64 %1        ; 9 uses
  %i.bu = add i64 %i.bd, %.fr239.i
  %i.bv = tail call i64 @llvm.smin.i64(i64 %3, i64 %i.bu) ; 2 uses
  br i1 %i.al, label %.preheader184.i, label %bb.t

.preheader184.i:                                  ; preds = %asciilib__preprocess.exit
  %i.bw = icmp ult ptr %i.bs, %i.bt
  br i1 %i.bw, label %.preheader182.lr.ph.i, label %asciilib__two_way.exit

.preheader182.lr.ph.i:                            ; preds = %.preheader184.i
  %i.bx = sub nsw i64 0, %3
  %i.by = sub i64 %3, %i.aq                       ; 2 uses
  %i.bz = tail call i64 @llvm.smax.i64(i64 %.fr239.i, i64 %i.by)
  %reass.sub = sub i64 %i.bz, %.fr239.i
  %i.ca = add i64 %reass.sub, 1
  br label %.preheader182.i

.preheader182.i:                                  ; preds = %.preheader182.i.backedge, %.preheader182.lr.ph.i
end_hunk_1
begin_hunk_2_@asciilib_adaptive_find:.lr.ph.preheader
  %i.bv = icmp eq i64 %i.bu, -1
  %i.bw = add i64 %i.bu, %.092143.us
  %i.bx = select i1 %i.bv, i64 -1, i64 %i.bw
  br label %.thread

.thread:                                          ; preds = %bb.i, %._crit_edge137.us, %bb.j, %._crit_edge, %.split.us
  %spec.select124 = phi i64 [ %i.bx, %.split.us ], [ -1, %._crit_edge ], [ %.092143.us, %bb.j ], [ -1, %bb.i ], [ %.092143.us, %._crit_edge137.us ]
  ret i64 %spec.select124
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib_fastsearch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, i64 noundef range(i64 1, 0) %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i64 %1, %3
  br i1 %i.a, label %ucs1lib_find_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %3, 2
  br i1 %i.b, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %.not66 = icmp eq i64 %3, 1
  br i1 %.not66, label %bb.d, label %ucs1lib_find_char.exit

bb.d:                                             ; preds = %bb.c
  switch i32 %5, label %bb.p [
    i32 1, label %bb.e
    i32 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = load i8, ptr %2, align 1, !tbaa !205     ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.e = icmp sgt i64 %1, 15
  br i1 %i.e, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.f = icmp ult ptr %0, %i.d
  br i1 %i.f, label %.lr.ph.i, label %ucs1lib_find_char.exit

bb.f:                                             ; preds = %bb.e
  %i.g = zext i8 %i.c to i32
  %i.h = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.g, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %ucs1lib_find_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  br label %ucs1lib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.01721.i = phi ptr [ %i.q, %bb.i ], [ %0, %.preheader.i ] ; 3 uses
  %i.l = load i8, ptr %.01721.i, align 1, !tbaa !205
  %i.m = icmp eq i8 %i.l, %i.c
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %.01721.i to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  br label %ucs1lib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr i8, ptr %.01721.i, i64 1   ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.d
  br i1 %exitcond.not.i, label %ucs1lib_find_char.exit, label %.lr.ph.i, !llvm.loop !483

bb.j:                                             ; preds = %bb.d
  %i.r = load i8, ptr %2, align 1, !tbaa !205     ; 2 uses
  %i.s = icmp sgt i64 %1, 15
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = zext i8 %i.r to i32
  %i.u = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.t, i64 noundef %1) #34 ; 2 uses
  %.not.i68 = icmp eq ptr %i.u, null
  br i1 %.not.i68, label %ucs1lib_find_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %ucs1lib_find_char.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.z = icmp ugt ptr %i.y, %0
  br i1 %i.z, label %.lr.ph, label %ucs1lib_find_char.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt ptr %i.ab, %0
  br i1 %i.aa, label %.lr.ph, label %ucs1lib_find_char.exit, !llvm.loop !486

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.0.i67148 = phi ptr [ %i.ab, %bb.n ], [ %i.y, %bb.m ]
  %i.ab = getelementptr i8, ptr %.0.i67148, i64 -1 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !205
  %i.ad = icmp eq i8 %i.ac, %i.r
  br i1 %i.ad, label %bb.o, label %bb.n, !llvm.loop !486

bb.o:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %ucs1lib_find_char.exit

bb.p:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %4, 9223372036854775807
  %i.ai = load i8, ptr %2, align 1, !tbaa !205    ; 3 uses
  br i1 %i.ah, label %.lr.ph.i69.preheader, label %.lr.ph.i71

.lr.ph.i69.preheader:                             ; preds = %bb.p
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i69.preheader151, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i69.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.aj = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  %wide.load = load <2 x i8>, ptr %i.aj, align 1, !tbaa !205
  %wide.load150 = load <2 x i8>, ptr %i.ak, align 1, !tbaa !205
  %i.al = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.am = icmp eq <2 x i8> %wide.load150, %broadcast.splat
  %i.an = zext <2 x i1> %i.al to <2 x i64>
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = add <2 x i64> %vec.phi, %i.an           ; 2 uses
  %i.aq = add <2 x i64> %vec.phi149, %i.ao        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !799

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aq, %i.ap
  %i.as = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ucs1lib_find_char.exit, label %.lr.ph.i69.preheader151

.lr.ph.i69.preheader151:                          ; preds = %.lr.ph.i69.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader151, %.lr.ph.i69
  %.09.i = phi i64 [ %i.ax, %.lr.ph.i69 ], [ %.09.i.ph, %.lr.ph.i69.preheader151 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i69 ], [ %.078.i.ph, %.lr.ph.i69.preheader151 ]
  %i.at = getelementptr i8, ptr %0, i64 %.09.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !205
  %i.av = icmp eq i8 %i.au, %i.ai
  %i.aw = zext i1 %i.av to i64
  %spec.select.i = add i64 %.078.i, %i.aw         ; 2 uses
  %i.ax = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.ax, %1
  br i1 %exitcond.not.i70, label %ucs1lib_find_char.exit, label %.lr.ph.i69, !llvm.loop !800

.lr.ph.i71:                                       ; preds = %bb.p, %bb.r
  %.016.i72 = phi i64 [ %.1.i, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %.01115.i = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %.01115.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !205
  %i.ba = icmp eq i8 %i.az, %i.ai
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i71
  %i.bb = add i64 %.016.i72, 1                    ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %4
  br i1 %i.bc, label %ucs1lib_find_char.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i71
  %.1.i = phi i64 [ %i.bb, %bb.q ], [ %.016.i72, %.lr.ph.i71 ] ; 2 uses
  %i.bd = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not.i73, label %ucs1lib_find_char.exit, label %.lr.ph.i71, !llvm.loop !801

bb.s:                                             ; preds = %bb.b
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.am, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = icmp slt i64 %1, 2500
  br i1 %i.be, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = icmp samesign ult i64 %3, 100
  %i.bg = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bg, %i.bf
  %i.bh = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bh, %or.cond3
  br i1 %or.cond5, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bi = add nsw i64 %3, -1                      ; 13 uses
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !205 ; 5 uses
  %xtraiter = and i64 %i.bi, 1
  %i.bl = icmp eq i64 %3, 2
  br i1 %i.bl, label %.lr.ph.i74.epil.preheader, label %.new

.new:                                             ; preds = %bb.v
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i74

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i74
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i74.epil.preheader

.lr.ph.i74.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.v
  %.068100.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.dw, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.ds, %._crit_edge.i.unr-lcssa ]
  %.07898.i.epil.init = phi i64 [ %i.bi, %bb.v ], [ %.179.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod169 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %i.bm = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !205 ; 2 uses
  %i.bo = and i8 %i.bn, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = or i64 %i.bq, %.06999.i.epil.init
  %i.bs = icmp eq i8 %i.bn, %i.bk
  %i.bt = xor i64 %.068100.i.epil.init, -1
  %i.bu = add nsw i64 %i.bi, %i.bt
  %.179.i.epil = select i1 %i.bs, i64 %i.bu, i64 %.07898.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i74.epil.preheader
  %.lcssa166 = phi i64 [ %i.ds, %._crit_edge.i.unr-lcssa ], [ %i.br, %.lr.ph.i74.epil.preheader ]
  %.179.i.lcssa = phi i64 [ %.179.i.1, %._crit_edge.i.unr-lcssa ], [ %.179.i.epil, %.lr.ph.i74.epil.preheader ]
  %i.bv = sub i64 %1, %3                          ; 4 uses
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi     ; 3 uses
  %i.bx = and i8 %i.bk, 63
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %.lcssa166, %i.bz                ; 2 uses
  %.not108.i = icmp slt i64 %i.bv, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.preheader.i

.lr.ph113.split.us.preheader.i:                   ; preds = %._crit_edge.i
  %.not93.i = icmp eq i32 %5, 0
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.af, %.lr.ph113.split.us.preheader.i
  %.066110.us.i = phi i64 [ %i.da, %bb.af ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.af ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %.066110.us.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !205
  %i.cd = icmp eq i8 %i.cc, %i.bk
  br i1 %i.cd, label %.preheader.us.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph113.split.us.i
  %i.ce = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.ce, %i.bv
  br i1 %.not88.us.i, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !205
  %i.ch = and i8 %i.cg, 63
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, %i.ca
  %.not89.us.i = icmp eq i64 %i.ck, 0
  %i.cl = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cl, %.066110.us.i
  br label %bb.af

bb.y:                                             ; preds = %.preheader.us.i, %bb.ag
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.db, %bb.ag ] ; 4 uses
  %i.cm = getelementptr i8, ptr %i.dc, i64 %.0102.us.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !205
  %i.co = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !205
  %.not90.us.i = icmp eq i8 %i.cn, %i.cp
  br i1 %.not90.us.i, label %bb.ag, label %._crit_edge104.us.i

._crit_edge104.us.i:                              ; preds = %bb.y
  %6 = icmp eq i64 %.0102.us.i, %i.bi
  br i1 %6, label %._crit_edge104.us.thread.i, label %bb.z

bb.z:                                             ; preds = %._crit_edge104.us.i
  %i.cq = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.cq, %i.bv
  br i1 %.not91.us.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr i8, ptr %i.bw, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !205
  %i.ct = and i8 %i.cs, 63
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ca
  %.not92.us.i = icmp eq i64 %i.cw, 0
  br i1 %.not92.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ab ], [ %3, %bb.aa ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.af

._crit_edge104.us.thread.i:                       ; preds = %bb.ag, %._crit_edge104.us.i
  br i1 %.not93.i, label %bb.ad, label %ucs1lib_find_char.exit

bb.ad:                                            ; preds = %._crit_edge104.us.thread.i
  %i.cx = add i64 %.074109.us.i, 1                ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %4
  br i1 %i.cy, label %ucs1lib_find_char.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = add i64 %.066110.us.i, %i.bi
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.x, %bb.w
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.w ], [ %.074109.us.i, %bb.x ], [ %.074109.us.i, %bb.ac ], [ %i.cx, %bb.ae ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.w ], [ %spec.select.us.i, %bb.x ], [ %.167.us.i, %bb.ac ], [ %i.cz, %bb.ae ]
  %i.da = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.da, %i.bv
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !802

bb.ag:                                            ; preds = %bb.y
  %i.db = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.db, %i.bi
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.y, !llvm.loop !803

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dc = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.y

.lr.ph.i74:                                       ; preds = %.lr.ph.i74, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dw, %.lr.ph.i74 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.ds, %.lr.ph.i74 ]
  %.07898.i = phi i64 [ %i.bi, %.new ], [ %.179.i.1, %.lr.ph.i74 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i74 ]
  %i.dd = getelementptr i8, ptr %2, i64 %.068100.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !205 ; 2 uses
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = or i64 %i.dh, %.06999.i
  %i.dj = icmp eq i8 %i.de, %i.bk
  %i.dk = xor i64 %.068100.i, -1
  %i.dl = add nsw i64 %i.bi, %i.dk
  %.179.i = select i1 %i.dj, i64 %i.dl, i64 %.07898.i
  %i.dm = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !205 ; 2 uses
  %i.dp = and i8 %i.do, 63
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = or i64 %i.dr, %i.di                     ; 3 uses
  %i.dt = icmp eq i8 %i.do, %i.bk
  %i.du = xor i64 %.068100.i, -2
  %i.dv = add nsw i64 %i.bi, %i.du
  %.179.i.1 = select i1 %i.dt, i64 %i.dv, i64 %.179.i ; 3 uses
  %i.dw = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i74, !llvm.loop !804

.loopexit.i:                                      ; preds = %bb.af, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.af ]
  %i.dx = icmp eq i32 %5, 0
  %i.dy = select i1 %i.dx, i64 %.377.ph.i, i64 -1
  br label %ucs1lib_find_char.exit

bb.ah:                                            ; preds = %bb.u
  %i.dz = lshr i64 %3, 2
  %i.ea = mul nuw nsw i64 %i.dz, 3
  %i.eb = lshr i64 %1, 2
  %i.ec = icmp samesign ult i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ed = icmp eq i32 %5, 1
  br i1 %i.ed, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ee = tail call fastcc i64 @ucs1lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs1lib_find_char.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ef = tail call fastcc i64 @ucs1lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs1lib_find_char.exit

bb.al:                                            ; preds = %bb.ah
  %i.eg = tail call fastcc i64 @ucs1lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs1lib_find_char.exit

bb.am:                                            ; preds = %bb.s
  %i.eh = add nsw i64 %3, -1                      ; 6 uses
  %i.ei = load i8, ptr %2, align 1, !tbaa !205    ; 5 uses
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek                    ; 2 uses
  %xtraiter171 = and i64 %i.eh, 1
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i76.prol.loopexit, label %.lr.ph.i76.prol

.lr.ph.i76.prol:                                  ; preds = %bb.am
  %i.em = getelementptr i8, ptr %2, i64 %i.eh
  %i.en = load i8, ptr %i.em, align 1, !tbaa !205 ; 2 uses
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = or i64 %i.eq, %i.el                     ; 2 uses
  %i.es = icmp eq i8 %i.en, %i.ei
  %i.et = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i77.prol = select i1 %i.es, i64 %i.et, i64 %i.eh ; 2 uses
  br label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol.loopexit:                         ; preds = %.lr.ph.i76.prol, %bb.am
  %.04660.i.unr = phi i64 [ %i.eh, %bb.am ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %.04759.i.unr = phi i64 [ %i.el, %bb.am ], [ %i.er, %.lr.ph.i76.prol ]
  %.04958.i.unr = phi i64 [ %i.eh, %bb.am ], [ %i.et, %.lr.ph.i76.prol ]
  %.lcssa162.unr = phi i64 [ poison, %bb.am ], [ %i.er, %.lr.ph.i76.prol ]
  %spec.select.i77.lcssa.unr = phi i64 [ poison, %bb.am ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %i.eu = icmp eq i64 %3, 2
  br i1 %i.eu, label %.preheader56.i, label %.lr.ph.i76

.preheader56.i:                                   ; preds = %.lr.ph.i76, %.lr.ph.i76.prol.loopexit
  %.lcssa162 = phi i64 [ %.lcssa162.unr, %.lr.ph.i76.prol.loopexit ], [ %i.gj, %.lr.ph.i76 ] ; 2 uses
  %spec.select.i77.lcssa = phi i64 [ %spec.select.i77.lcssa.unr, %.lr.ph.i76.prol.loopexit ], [ %spec.select.i77.1, %.lr.ph.i76 ]
  %i.ev = sub i64 %1, %3                          ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, -1
  br i1 %i.ew, label %.lr.ph66.split.us.i, label %ucs1lib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ar
  %.15065.us.i = phi i64 [ %i.fs, %bb.ar ], [ %i.ev, %.preheader56.i ] ; 5 uses
  %i.ex = getelementptr i8, ptr %0, i64 %.15065.us.i ; 4 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !205
  %i.ez = icmp eq i8 %i.ey, %i.ei
  br i1 %i.ez, label %.preheader.us.i80, label %bb.an

bb.an:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i79 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i79, label %ucs1lib_find_char.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr i8, ptr %i.ex, i64 -1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !205
  %i.fc = and i8 %i.fb, 63
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fe, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.ff, 0
  %i.fg = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ar

.preheader.us.i80:                                ; preds = %.lr.ph66.split.us.i, %bb.as
  %.04862.us.i = phi i64 [ %i.fu, %bb.as ], [ %i.eh, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fh = getelementptr i8, ptr %i.ex, i64 %.04862.us.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !205
  %i.fj = getelementptr i8, ptr %2, i64 %.04862.us.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !205
  %.not52.us.i = icmp eq i8 %i.fi, %i.fk
  br i1 %.not52.us.i, label %bb.as, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i80
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.thread.us.i
  %i.fl = getelementptr i8, ptr %i.ex, i64 -1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !205
  %i.fn = and i8 %i.fm, 63
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = and i64 %i.fp, %.lcssa162
  %.not54.us.i = icmp eq i64 %i.fq, 0
  br i1 %.not54.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread.us.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i77.lcssa, %bb.aq ], [ %i.fg, %bb.ao ], [ %3, %bb.ap ]
  %i.fr = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fs = add nsw i64 %i.fr, -1
  %i.ft = icmp sgt i64 %i.fr, 0
  br i1 %i.ft, label %.lr.ph66.split.us.i, label %ucs1lib_find_char.exit, !llvm.loop !666

bb.as:                                            ; preds = %.preheader.us.i80
  %i.fu = add nsw i64 %.04862.us.i, -1
  %i.fv = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.fv, label %.preheader.us.i80, label %ucs1lib_find_char.exit, !llvm.loop !667

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76
  %.04660.i = phi i64 [ %spec.select.i77.1, %.lr.ph.i76 ], [ %.04660.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gj, %.lr.ph.i76 ], [ %.04759.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04958.i = phi i64 [ %i.gl, %.lr.ph.i76 ], [ %.04958.i.unr, %.lr.ph.i76.prol.loopexit ] ; 4 uses
  %i.fw = getelementptr i8, ptr %2, i64 %.04958.i
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !205 ; 2 uses
  %i.fy = and i8 %i.fx, 63
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = or i64 %i.ga, %.04759.i
  %i.gc = icmp eq i8 %i.fx, %i.ei
  %i.gd = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i77 = select i1 %i.gc, i64 %i.gd, i64 %.04660.i
  %i.ge = getelementptr i8, ptr %2, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !205 ; 2 uses
end_hunk_2
begin_hunk_3_@ucs2lib_fastsearch:bb.a

bb.e:                                             ; preds = %bb.d
  switch i32 %5, label %bb.v [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.e = load i16, ptr %2, align 2, !tbaa !208
  %i.f = tail call fastcc i64 @ucs2lib_find_char(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %i.e)
  br label %ucs2lib_rfind_char.exit

bb.g:                                             ; preds = %bb.e
  %i.g = load i16, ptr %2, align 2, !tbaa !208    ; 4 uses
  %i.h = icmp sgt i64 %1, 40
  br i1 %i.h, label %bb.h, label %.thread67.i

bb.h:                                             ; preds = %bb.g
  %i.i = and i16 %i.g, 255                        ; 2 uses
  %i.j = zext nneg i16 %i.i to i32
  %.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i, label %.thread67.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %.preheader.i
  %.041.i = phi i64 [ %.142.ph59.i, %bb.r ], [ %1, %.preheader.i ] ; 2 uses
  %i.l = shl nuw i64 %.041.i, 1
  %i.m = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.j, i64 noundef %i.l) #34 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ucs2lib_rfind_char.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.o, -2                         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = sub i64 %i.p, %i.k
  %i.s = ashr exact i64 %i.r, 1                   ; 5 uses
  %i.t = load i16, ptr %i.q, align 2, !tbaa !208
  %i.u = icmp eq i16 %i.t, %i.g
  br i1 %i.u, label %ucs2lib_rfind_char.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = sub i64 %.041.i, %i.s
  %i.w = icmp sgt i64 %i.v, 40
  br i1 %i.w, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = icmp slt i64 %i.s, 41
  br i1 %i.x, label %.thread67.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %i.q, i64 -80
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.046.i = phi ptr [ %i.q, %bb.m ], [ %i.aa, %bb.o ] ; 3 uses
  %i.z = icmp ugt ptr %.046.i, %i.y
  br i1 %i.z, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr i8, ptr %.046.i, i64 -2   ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !208
  %i.ac = icmp eq i16 %i.ab, %i.g
  br i1 %i.ac, label %bb.p, label %bb.n, !llvm.loop !487

bb.p:                                             ; preds = %bb.o
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ad, %i.k
  %i.af = ashr exact i64 %i.ae, 1
  br label %ucs2lib_rfind_char.exit

bb.q:                                             ; preds = %bb.n
  %i.ag = ptrtoint ptr %.046.i to i64
  %i.ah = sub i64 %i.ag, %i.k
  %i.ai = ashr exact i64 %i.ah, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %.142.ph59.i = phi i64 [ %i.s, %bb.k ], [ %i.ai, %bb.q ] ; 3 uses
  %i.aj = icmp sgt i64 %.142.ph59.i, 40
  br i1 %i.aj, label %bb.i, label %.thread67.i, !llvm.loop !488

.thread67.i:                                      ; preds = %bb.r, %bb.l, %bb.h, %bb.g
  %.445.i = phi i64 [ %1, %bb.g ], [ %1, %bb.h ], [ %i.s, %bb.l ], [ %.142.ph59.i, %bb.r ]
  %i.ak = getelementptr [2 x i8], ptr %0, i64 %.445.i
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.thread67.i
  %.147.i = phi ptr [ %i.ak, %.thread67.i ], [ %i.am, %bb.t ] ; 2 uses
  %i.al = icmp ugt ptr %.147.i, %0
  br i1 %i.al, label %bb.t, label %ucs2lib_rfind_char.exit

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr i8, ptr %.147.i, i64 -2   ; 3 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !208
  %i.ao = icmp eq i16 %i.an, %i.g
  br i1 %i.ao, label %bb.u, label %bb.s, !llvm.loop !489

bb.u:                                             ; preds = %bb.t
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 1
  br label %ucs2lib_rfind_char.exit

bb.v:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %4, 9223372036854775807
  %i.au = load i16, ptr %2, align 2, !tbaa !208   ; 3 uses
  br i1 %i.at, label %.lr.ph.i.preheader, label %.lr.ph.i67

.lr.ph.i.preheader:                               ; preds = %bb.v
  %min.iters.check183 = icmp ult i64 %1, 4
  br i1 %min.iters.check183, label %.lr.ph.i.preheader203, label %vector.ph184

vector.ph184:                                     ; preds = %.lr.ph.i.preheader
  %n.vec186 = and i64 %1, -4                      ; 3 uses
  %broadcast.splatinsert187 = insertelement <2 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat188 = shufflevector <2 x i16> %broadcast.splatinsert187, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph184
  %index190 = phi i64 [ 0, %vector.ph184 ], [ %index.next195, %vector.body189 ] ; 2 uses
  %vec.phi191 = phi <2 x i64> [ zeroinitializer, %vector.ph184 ], [ %i.bb, %vector.body189 ]
  %vec.phi192 = phi <2 x i64> [ zeroinitializer, %vector.ph184 ], [ %i.bc, %vector.body189 ]
  %i.av = getelementptr [2 x i8], ptr %0, i64 %index190 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %wide.load193 = load <2 x i16>, ptr %i.av, align 2, !tbaa !208
  %wide.load194 = load <2 x i16>, ptr %i.aw, align 2, !tbaa !208
  %i.ax = icmp eq <2 x i16> %wide.load193, %broadcast.splat188
  %i.ay = icmp eq <2 x i16> %wide.load194, %broadcast.splat188
  %i.az = zext <2 x i1> %i.ax to <2 x i64>
  %i.ba = zext <2 x i1> %i.ay to <2 x i64>
  %i.bb = add <2 x i64> %vec.phi191, %i.az        ; 2 uses
  %i.bc = add <2 x i64> %vec.phi192, %i.ba        ; 2 uses
  %index.next195 = add nuw i64 %index190, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.bd, label %middle.block196, label %vector.body189, !llvm.loop !823

middle.block196:                                  ; preds = %vector.body189
  %bin.rdx197 = add <2 x i64> %i.bc, %i.bb
  %i.be = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx197) ; 2 uses
  %cmp.n198 = icmp eq i64 %1, %n.vec186
  br i1 %cmp.n198, label %ucs2lib_rfind_char.exit, label %.lr.ph.i.preheader203

.lr.ph.i.preheader203:                            ; preds = %.lr.ph.i.preheader, %middle.block196
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec186, %middle.block196 ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.be, %middle.block196 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader203, %.lr.ph.i
  %.09.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader203 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader203 ]
  %i.bf = getelementptr [2 x i8], ptr %0, i64 %.09.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !208
  %i.bh = icmp eq i16 %i.bg, %i.au
  %i.bi = zext i1 %i.bh to i64
  %spec.select.i = add i64 %.078.i, %i.bi         ; 2 uses
  %i.bj = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %1
  br i1 %exitcond.not.i, label %ucs2lib_rfind_char.exit, label %.lr.ph.i, !llvm.loop !824

.lr.ph.i67:                                       ; preds = %bb.v, %bb.x
  %.016.i = phi i64 [ %.1.i, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.01115.i = phi i64 [ %i.bp, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %i.bk = getelementptr [2 x i8], ptr %0, i64 %.01115.i
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !208
  %i.bm = icmp eq i16 %i.bl, %i.au
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i67
  %i.bn = add i64 %.016.i, 1                      ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %4
  br i1 %i.bo, label %ucs2lib_rfind_char.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i67
  %.1.i = phi i64 [ %i.bn, %bb.w ], [ %.016.i, %.lr.ph.i67 ] ; 2 uses
  %i.bp = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %i.bp, %1
  br i1 %exitcond.not.i68, label %ucs2lib_rfind_char.exit, label %.lr.ph.i67, !llvm.loop !825

bb.y:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.as, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = icmp slt i64 %1, 2500
  br i1 %i.bq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = icmp samesign ult i64 %3, 100
  %i.bs = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bs, %i.br
  %i.bt = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bt, %or.cond3
  br i1 %or.cond5, label %bb.ab, label %bb.an

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bu = add nsw i64 %3, -1                      ; 12 uses
  %i.bv = getelementptr [2 x i8], ptr %2, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !208 ; 4 uses
  %min.iters.check = icmp ult i64 %3, 9
  br i1 %min.iters.check, label %.lr.ph.i69.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ab
  %n.vec = and i64 %i.bu, -2                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert149 = insertelement <2 x i16> poison, i16 %i.bw, i64 0
  %broadcast.splat150 = shufflevector <2 x i16> %broadcast.splatinsert149, <2 x i16> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi151 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cj, %vector.body ]
  %i.bx = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %i.by = getelementptr [2 x i8], ptr %2, i64 %index
  %wide.load = load <2 x i16>, ptr %i.by, align 2, !tbaa !208 ; 2 uses
  %i.bz = and <2 x i16> %wide.load, splat (i16 63)
  %i.ca = zext nneg <2 x i16> %i.bz to <2 x i64>
  %i.cb = shl nuw <2 x i64> splat (i64 1), %i.ca
  %i.cc = or <2 x i64> %i.cb, %vec.phi            ; 2 uses
  %i.cd = icmp eq <2 x i16> %wide.load, %broadcast.splat150
  %i.ce = freeze <2 x i1> %i.cd                   ; 2 uses
  %i.cf = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.cg = add nsw <2 x i64> %broadcast.splat, %i.cf
  %i.ch = bitcast <2 x i1> %i.ce to i2
  %.not201 = icmp eq i2 %i.ch, 0                  ; 2 uses
  %i.ci = select i1 %.not201, <2 x i1> %i.bx, <2 x i1> %i.ce ; 2 uses
  %i.cj = select i1 %.not201, <2 x i64> %vec.phi151, <2 x i64> %i.cg ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !826

middle.block:                                     ; preds = %vector.body
  %i.cl = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.cc) ; 2 uses
  %i.cm = tail call i64 @llvm.experimental.vector.extract.last.active.v2i64(<2 x i64> %i.cj, <2 x i1> %i.ci, i64 %i.bu) ; 2 uses
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %bb.ab, %middle.block
  %.068100.i.ph = phi i64 [ 0, %bb.ab ], [ %n.vec, %middle.block ]
  %.06999.i.ph = phi i64 [ 0, %bb.ab ], [ %i.cl, %middle.block ]
  %.07898.i.ph = phi i64 [ %i.bu, %bb.ab ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i69

._crit_edge.i:                                    ; preds = %.lr.ph.i69, %middle.block
  %.lcssa148 = phi i64 [ %i.cl, %middle.block ], [ %i.ea, %.lr.ph.i69 ]
  %.179.i.lcssa = phi i64 [ %i.cm, %middle.block ], [ %.179.i, %.lr.ph.i69 ]
  %i.cn = sub i64 %1, %3                          ; 4 uses
  %i.co = getelementptr [2 x i8], ptr %0, i64 %i.bu ; 3 uses
  %i.cp = and i16 %i.bw, 63
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = or i64 %.lcssa148, %i.cr                ; 2 uses
  %.not108.i = icmp slt i64 %i.cn, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %._crit_edge.i, %bb.al
  %.066110.us.i = phi i64 [ %i.ds, %bb.al ], [ 0, %._crit_edge.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.al ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.ct = getelementptr [2 x i8], ptr %i.co, i64 %.066110.us.i
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !208
  %i.cv = icmp eq i16 %i.cu, %i.bw
  br i1 %i.cv, label %.preheader.us.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph113.split.us.i
  %i.cw = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.cw, %i.cn
  br i1 %.not88.us.i, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = getelementptr [2 x i8], ptr %i.co, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !208
  %i.cz = and i16 %i.cy, 63
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.db, %i.cs
  %.not89.us.i = icmp eq i64 %i.dc, 0
  %i.dd = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.dd, %.066110.us.i
  br label %bb.al

bb.ae:                                            ; preds = %.preheader.us.i, %bb.am
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.dt, %bb.am ] ; 4 uses
  %i.de = getelementptr [2 x i8], ptr %i.du, i64 %.0102.us.i
  %i.df = load i16, ptr %i.de, align 2, !tbaa !208
  %i.dg = getelementptr [2 x i8], ptr %2, i64 %.0102.us.i
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !208
  %.not90.us.i = icmp eq i16 %i.df, %i.dh
  br i1 %.not90.us.i, label %bb.am, label %._crit_edge104.us.i

._crit_edge104.us.i:                              ; preds = %bb.ae
  %6 = icmp eq i64 %.0102.us.i, %i.bu
  br i1 %6, label %._crit_edge104.us.thread.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge104.us.i
  %i.di = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.di, %i.cn
  br i1 %.not91.us.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr [2 x i8], ptr %i.co, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !208
  %i.dl = and i16 %i.dk, 63
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.cs
  %.not92.us.i = icmp eq i64 %i.do, 0
  br i1 %.not92.us.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ah ], [ %3, %bb.ag ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.al

._crit_edge104.us.thread.i:                       ; preds = %bb.am, %._crit_edge104.us.i
  br i1 %i.b, label %bb.aj, label %ucs2lib_rfind_char.exit

bb.aj:                                            ; preds = %._crit_edge104.us.thread.i
  %i.dp = add i64 %.074109.us.i, 1                ; 2 uses
  %i.dq = icmp eq i64 %i.dp, %4
  br i1 %i.dq, label %ucs2lib_rfind_char.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = add i64 %.066110.us.i, %i.bu
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai, %bb.ad, %bb.ac
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.ac ], [ %.074109.us.i, %bb.ad ], [ %.074109.us.i, %bb.ai ], [ %i.dp, %bb.ak ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.ac ], [ %spec.select.us.i, %bb.ad ], [ %.167.us.i, %bb.ai ], [ %i.dr, %bb.ak ]
  %i.ds = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.ds, %i.cn
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !827

bb.am:                                            ; preds = %bb.ae
  %i.dt = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.dt, %i.bu
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.ae, !llvm.loop !828

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.du = getelementptr [2 x i8], ptr %0, i64 %.066110.us.i
  br label %bb.ae

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %.068100.i = phi i64 [ %i.ee, %.lr.ph.i69 ], [ %.068100.i.ph, %.lr.ph.i69.preheader ] ; 3 uses
  %.06999.i = phi i64 [ %i.ea, %.lr.ph.i69 ], [ %.06999.i.ph, %.lr.ph.i69.preheader ]
  %.07898.i = phi i64 [ %.179.i, %.lr.ph.i69 ], [ %.07898.i.ph, %.lr.ph.i69.preheader ]
  %i.dv = getelementptr [2 x i8], ptr %2, i64 %.068100.i
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !208 ; 2 uses
  %i.dx = and i16 %i.dw, 63
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = or i64 %i.dz, %.06999.i                 ; 2 uses
  %i.eb = icmp eq i16 %i.dw, %i.bw
  %i.ec = xor i64 %.068100.i, -1
  %i.ed = add nsw i64 %i.bu, %i.ec
  %.179.i = select i1 %i.eb, i64 %i.ed, i64 %.07898.i ; 2 uses
  %i.ee = add nuw nsw i64 %.068100.i, 1           ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.ee, %i.bu
  br i1 %exitcond.not.i70, label %._crit_edge.i, label %.lr.ph.i69, !llvm.loop !829

.loopexit.i:                                      ; preds = %bb.al, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.al ]
  %i.ef = select i1 %i.b, i64 %.377.ph.i, i64 -1
  br label %ucs2lib_rfind_char.exit

bb.an:                                            ; preds = %bb.aa
  %i.eg = lshr i64 %3, 2
  %i.eh = mul nuw nsw i64 %i.eg, 3
  %i.ei = lshr i64 %1, 2
  %i.ej = icmp samesign ult i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ek = icmp eq i32 %5, 1
  br i1 %i.ek, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.el = tail call fastcc i64 @ucs2lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs2lib_rfind_char.exit

bb.aq:                                            ; preds = %bb.ao
  %i.em = tail call fastcc i64 @ucs2lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs2lib_rfind_char.exit

bb.ar:                                            ; preds = %bb.an
  %i.en = tail call fastcc i64 @ucs2lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs2lib_rfind_char.exit

bb.as:                                            ; preds = %bb.y
  %i.eo = add nsw i64 %3, -1                      ; 9 uses
  %i.ep = load i16, ptr %2, align 2, !tbaa !208   ; 4 uses
  %i.eq = and i16 %i.ep, 63
  %i.er = zext nneg i16 %i.eq to i64
  %i.es = shl nuw i64 1, %i.er                    ; 2 uses
  %min.iters.check154 = icmp ult i64 %3, 5
  br i1 %min.iters.check154, label %.lr.ph.i71.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %bb.as
  %n.vec157 = and i64 %i.eo, -4                   ; 2 uses
  %i.et = and i64 %i.eo, 3
  %i.eu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.es, i64 0
  %broadcast.splatinsert158 = insertelement <2 x i16> poison, i16 %i.ep, i64 0
  %broadcast.splat159 = shufflevector <2 x i16> %broadcast.splatinsert158, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert160 = insertelement <2 x i64> poison, i64 %i.eo, i64 0
  %broadcast.splat161 = shufflevector <2 x i64> %broadcast.splatinsert160, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ev = add nsw <2 x i64> %broadcast.splat161, <i64 0, i64 -1>
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph155
  %index163 = phi i64 [ 0, %vector.ph155 ], [ %index.next174, %vector.body162 ] ; 2 uses
  %vec.phi164.a = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph155 ], [ %i.fk, %vector.body162 ]
  %vec.phi165.a = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph155 ], [ %i.fl, %vector.body162 ]
  %vec.phi166 = phi <2 x i1> [ zeroinitializer, %vector.ph155 ], [ %i.fm, %vector.body162 ]
  %vec.phi167 = phi <2 x i1> [ zeroinitializer, %vector.ph155 ], [ %i.fn, %vector.body162 ]
  %vec.phi168 = phi <2 x i64> [ %i.eu, %vector.ph155 ], [ %i.fg, %vector.body162 ]
  %vec.phi169 = phi <2 x i64> [ zeroinitializer, %vector.ph155 ], [ %i.fh, %vector.body162 ]
  %vec.ind170 = phi <2 x i64> [ %i.ev, %vector.ph155 ], [ %vec.ind.next175, %vector.body162 ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind170, splat (i64 -2)
  %i.ew = sub i64 %i.eo, %index163
  %i.ex = getelementptr [2 x i8], ptr %2, i64 %i.ew ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 -2
  %i.ez = getelementptr i8, ptr %i.ex, i64 -6
  %wide.load171 = load <2 x i16>, ptr %i.ey, align 2, !tbaa !208
  %wide.load172 = load <2 x i16>, ptr %i.ez, align 2, !tbaa !208
  %reverse = shufflevector <2 x i16> %wide.load171, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse173 = shufflevector <2 x i16> %wide.load172, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fa = and <2 x i16> %reverse, splat (i16 63)
  %i.fb = and <2 x i16> %reverse173, splat (i16 63)
  %i.fc = zext nneg <2 x i16> %i.fa to <2 x i64>
  %i.fd = zext nneg <2 x i16> %i.fb to <2 x i64>
  %i.fe = shl nuw <2 x i64> splat (i64 1), %i.fc
  %i.ff = shl nuw <2 x i64> splat (i64 1), %i.fd
  %i.fg = or <2 x i64> %i.fe, %vec.phi168         ; 2 uses
  %i.fh = or <2 x i64> %i.ff, %vec.phi169         ; 2 uses
  %i.fi = icmp eq <2 x i16> %reverse, %broadcast.splat159 ; 2 uses
  %i.fj = icmp eq <2 x i16> %reverse173, %broadcast.splat159 ; 2 uses
  %i.fk = select <2 x i1> %i.fi, <2 x i64> %vec.ind170, <2 x i64> %vec.phi164.a ; 2 uses
  %i.fl = select <2 x i1> %i.fj, <2 x i64> %step.add, <2 x i64> %vec.phi165.a ; 2 uses
  %i.fm = or <2 x i1> %vec.phi166, %i.fi          ; 2 uses
  %i.fn = or <2 x i1> %vec.phi167, %i.fj          ; 2 uses
  %index.next174 = add nuw i64 %index163, 4       ; 2 uses
  %vec.ind.next175 = add nsw <2 x i64> %vec.ind170, splat (i64 -4)
  %i.fo = icmp eq i64 %index.next174, %n.vec157
  br i1 %i.fo, label %middle.block176, label %vector.body162, !llvm.loop !830

middle.block176:                                  ; preds = %vector.body162
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fk, <2 x i64> %i.fl)
  %i.fp = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.fq = add nsw i64 %i.fp, -1
  %bin.rdx = or <2 x i1> %i.fn, %i.fm
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.fr = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not202 = icmp eq i2 %i.fr, 0
  %rdx.select = select i1 %.not202, i64 %i.eo, i64 %i.fq ; 2 uses
  %bin.rdx177 = or <2 x i64> %i.fh, %i.fg
  %i.fs = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx177) ; 2 uses
  %cmp.n178 = icmp eq i64 %i.eo, %n.vec157
  br i1 %cmp.n178, label %.preheader56.i, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %bb.as, %middle.block176
  %.04660.i.ph = phi i64 [ %i.eo, %bb.as ], [ %rdx.select, %middle.block176 ]
  %.04759.i.ph = phi i64 [ %i.es, %bb.as ], [ %i.fs, %middle.block176 ]
  %.04958.i.ph = phi i64 [ %i.eo, %bb.as ], [ %i.et, %middle.block176 ]
  br label %.lr.ph.i71

.preheader56.i:                                   ; preds = %.lr.ph.i71, %middle.block176
  %.lcssa146 = phi i64 [ %i.fs, %middle.block176 ], [ %i.gz, %.lr.ph.i71 ] ; 2 uses
  %spec.select.i72.lcssa = phi i64 [ %rdx.select, %middle.block176 ], [ %spec.select.i72, %.lr.ph.i71 ]
  %i.ft = sub i64 %1, %3                          ; 2 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  br i1 %i.fu, label %.lr.ph66.split.us.i, label %ucs2lib_rfind_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ax
  %.15065.us.i = phi i64 [ %i.gq, %bb.ax ], [ %i.ft, %.preheader56.i ] ; 5 uses
  %i.fv = getelementptr [2 x i8], ptr %0, i64 %.15065.us.i ; 4 uses
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !208
  %i.fx = icmp eq i16 %i.fw, %i.ep
  br i1 %i.fx, label %.preheader.us.i74, label %bb.at

bb.at:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i73 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i73, label %ucs2lib_rfind_char.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = getelementptr i8, ptr %i.fv, i64 -2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !208
  %i.ga = and i16 %i.fz, 63
  %i.gb = zext nneg i16 %i.ga to i64
  %i.gc = shl nuw i64 1, %i.gb
  %i.gd = and i64 %i.gc, %.lcssa146
  %.not51.us.i = icmp eq i64 %i.gd, 0
  %i.ge = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ax

.preheader.us.i74:                                ; preds = %.lr.ph66.split.us.i, %bb.ay
  %.04862.us.i = phi i64 [ %i.gs, %bb.ay ], [ %i.eo, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gf = getelementptr [2 x i8], ptr %i.fv, i64 %.04862.us.i
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !208
  %i.gh = getelementptr [2 x i8], ptr %2, i64 %.04862.us.i
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !208
  %.not52.us.i = icmp eq i16 %i.gg, %i.gi
  br i1 %.not52.us.i, label %bb.ay, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i74
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.thread.us.i
  %i.gj = getelementptr i8, ptr %i.fv, i64 -2
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !208
  %i.gl = and i16 %i.gk, 63
  %i.gm = zext nneg i16 %i.gl to i64
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = and i64 %i.gn, %.lcssa146
  %.not54.us.i = icmp eq i64 %i.go, 0
end_hunk_3
begin_hunk_4_@ucs4lib_fastsearch:bb.a

bb.h:                                             ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %.01721.i to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  br label %ucs4lib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.01721.i, i64 4   ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.d
  br i1 %i.s, label %.lr.ph.i, label %ucs4lib_find_char.exit, !llvm.loop !485

bb.j:                                             ; preds = %bb.d
  %i.t = load i32, ptr %2, align 4, !tbaa !7      ; 4 uses
  %i.u = icmp sgt i64 %1, 40
  br i1 %i.u, label %bb.k, label %.thread67.i

bb.k:                                             ; preds = %bb.j
  %i.v = and i32 %i.t, 255                        ; 2 uses
  %.not.i67 = icmp eq i32 %i.v, 0
  br i1 %.not.i67, label %.thread67.i, label %.preheader.i68

.preheader.i68:                                   ; preds = %bb.k
  %i.w = ptrtoint ptr %0 to i64                   ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.u, %.preheader.i68
  %.041.i = phi i64 [ %.142.ph59.i, %bb.u ], [ %1, %.preheader.i68 ] ; 2 uses
  %i.x = shl i64 %.041.i, 2
  %i.y = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.v, i64 noundef %i.x) #34 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %ucs4lib_find_char.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = and i64 %i.aa, -4                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.w
  %i.ae = ashr exact i64 %i.ad, 2                 ; 5 uses
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ag = icmp eq i32 %i.af, %i.t
  br i1 %i.ag, label %ucs4lib_find_char.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = sub i64 %.041.i, %i.ae
  %i.ai = icmp sgt i64 %i.ah, 40
  br i1 %i.ai, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp slt i64 %i.ae, 41
  br i1 %i.aj, label %.thread67.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr i8, ptr %i.ac, i64 -160
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.046.i = phi ptr [ %i.ac, %bb.p ], [ %i.am, %bb.r ] ; 3 uses
  %i.al = icmp ugt ptr %.046.i, %i.ak
  br i1 %i.al, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr i8, ptr %.046.i, i64 -4   ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = icmp eq i32 %i.an, %i.t
  br i1 %i.ao, label %bb.s, label %bb.q, !llvm.loop !490

bb.s:                                             ; preds = %bb.r
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ap, %i.w
  %i.ar = ashr exact i64 %i.aq, 2
  br label %ucs4lib_find_char.exit

bb.t:                                             ; preds = %bb.q
  %i.as = ptrtoint ptr %.046.i to i64
  %i.at = sub i64 %i.as, %i.w
  %i.au = ashr exact i64 %i.at, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %.142.ph59.i = phi i64 [ %i.ae, %bb.n ], [ %i.au, %bb.t ] ; 3 uses
  %i.av = icmp sgt i64 %.142.ph59.i, 40
  br i1 %i.av, label %bb.l, label %.thread67.i, !llvm.loop !491

.thread67.i:                                      ; preds = %bb.u, %bb.o, %bb.k, %bb.j
  %.445.i = phi i64 [ %1, %bb.j ], [ %1, %bb.k ], [ %i.ae, %bb.o ], [ %.142.ph59.i, %bb.u ]
  %i.aw = getelementptr [4 x i8], ptr %0, i64 %.445.i
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.thread67.i
  %.147.i = phi ptr [ %i.aw, %.thread67.i ], [ %i.ay, %bb.w ] ; 2 uses
  %i.ax = icmp ugt ptr %.147.i, %0
  br i1 %i.ax, label %bb.w, label %ucs4lib_find_char.exit

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr i8, ptr %.147.i, i64 -4   ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = icmp eq i32 %i.az, %i.t
  br i1 %i.ba, label %bb.x, label %bb.v, !llvm.loop !492

bb.x:                                             ; preds = %bb.w
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %0 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  br label %ucs4lib_find_char.exit

bb.y:                                             ; preds = %bb.d
  %i.bf = icmp eq i64 %4, 9223372036854775807
  %i.bg = load i32, ptr %2, align 4, !tbaa !7     ; 3 uses
  br i1 %i.bf, label %.lr.ph.i69.preheader, label %.lr.ph.i70

.lr.ph.i69.preheader:                             ; preds = %bb.y
  %min.iters.check199 = icmp ult i64 %1, 4
  br i1 %min.iters.check199, label %.lr.ph.i69.preheader219, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i69.preheader
  %n.vec202 = and i64 %1, -4                      ; 3 uses
  %broadcast.splatinsert203 = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat204 = shufflevector <2 x i32> %broadcast.splatinsert203, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph200
  %index206 = phi i64 [ 0, %vector.ph200 ], [ %index.next211, %vector.body205 ] ; 2 uses
  %vec.phi207 = phi <2 x i64> [ zeroinitializer, %vector.ph200 ], [ %i.bn, %vector.body205 ]
  %vec.phi208 = phi <2 x i64> [ zeroinitializer, %vector.ph200 ], [ %i.bo, %vector.body205 ]
  %i.bh = getelementptr [4 x i8], ptr %0, i64 %index206 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %wide.load209 = load <2 x i32>, ptr %i.bh, align 4, !tbaa !7
  %wide.load210 = load <2 x i32>, ptr %i.bi, align 4, !tbaa !7
  %i.bj = icmp eq <2 x i32> %wide.load209, %broadcast.splat204
  %i.bk = icmp eq <2 x i32> %wide.load210, %broadcast.splat204
  %i.bl = zext <2 x i1> %i.bj to <2 x i64>
  %i.bm = zext <2 x i1> %i.bk to <2 x i64>
  %i.bn = add <2 x i64> %vec.phi207, %i.bl        ; 2 uses
  %i.bo = add <2 x i64> %vec.phi208, %i.bm        ; 2 uses
  %index.next211 = add nuw i64 %index206, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next211, %n.vec202
  br i1 %i.bp, label %middle.block212, label %vector.body205, !llvm.loop !853

middle.block212:                                  ; preds = %vector.body205
  %bin.rdx213 = add <2 x i64> %i.bo, %i.bn
  %i.bq = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx213) ; 2 uses
  %cmp.n214 = icmp eq i64 %1, %n.vec202
  br i1 %cmp.n214, label %ucs4lib_find_char.exit, label %.lr.ph.i69.preheader219

.lr.ph.i69.preheader219:                          ; preds = %.lr.ph.i69.preheader, %middle.block212
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %n.vec202, %middle.block212 ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %i.bq, %middle.block212 ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader219, %.lr.ph.i69
  %.09.i = phi i64 [ %i.bv, %.lr.ph.i69 ], [ %.09.i.ph, %.lr.ph.i69.preheader219 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i69 ], [ %.078.i.ph, %.lr.ph.i69.preheader219 ]
  %i.br = getelementptr [4 x i8], ptr %0, i64 %.09.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bt = icmp eq i32 %i.bs, %i.bg
  %i.bu = zext i1 %i.bt to i64
  %spec.select.i = add i64 %.078.i, %i.bu         ; 2 uses
  %i.bv = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bv, %1
  br i1 %exitcond.not.i, label %ucs4lib_find_char.exit, label %.lr.ph.i69, !llvm.loop !854

.lr.ph.i70:                                       ; preds = %bb.y, %bb.aa
  %.016.i = phi i64 [ %.1.i, %bb.aa ], [ 0, %bb.y ] ; 2 uses
  %.01115.i = phi i64 [ %i.cb, %bb.aa ], [ 0, %bb.y ] ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %.01115.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = icmp eq i32 %i.bx, %i.bg
  br i1 %i.by, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i70
  %i.bz = add i64 %.016.i, 1                      ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %4
  br i1 %i.ca, label %ucs4lib_find_char.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i70
  %.1.i = phi i64 [ %i.bz, %bb.z ], [ %.016.i, %.lr.ph.i70 ] ; 2 uses
  %i.cb = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i71 = icmp eq i64 %i.cb, %1
  br i1 %exitcond.not.i71, label %ucs4lib_find_char.exit, label %.lr.ph.i70, !llvm.loop !855

bb.ab:                                            ; preds = %bb.b
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.av, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = icmp slt i64 %1, 2500
  br i1 %i.cc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = icmp samesign ult i64 %3, 100
  %i.ce = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.ce, %i.cd
  %i.cf = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.cf, %or.cond3
  br i1 %or.cond5, label %bb.ae, label %bb.aq

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cg = add nsw i64 %3, -1                      ; 12 uses
  %i.ch = getelementptr [4 x i8], ptr %2, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7  ; 4 uses
  %min.iters.check = icmp ult i64 %3, 15
  br i1 %min.iters.check, label %.lr.ph.i72.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ae
  %n.vec = and i64 %i.cg, -2                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat166 = shufflevector <2 x i32> %broadcast.splatinsert165, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.co, %vector.body ]
  %vec.phi167 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cv, %vector.body ]
  %i.cj = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.cu, %vector.body ]
  %i.ck = getelementptr [4 x i8], ptr %2, i64 %index
  %wide.load = load <2 x i32>, ptr %i.ck, align 4, !tbaa !7 ; 2 uses
  %i.cl = and <2 x i32> %wide.load, splat (i32 63)
  %i.cm = zext nneg <2 x i32> %i.cl to <2 x i64>
  %i.cn = shl nuw <2 x i64> splat (i64 1), %i.cm
  %i.co = or <2 x i64> %i.cn, %vec.phi            ; 2 uses
  %i.cp = icmp eq <2 x i32> %wide.load, %broadcast.splat166
  %i.cq = freeze <2 x i1> %i.cp                   ; 2 uses
  %i.cr = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.cs = add nsw <2 x i64> %broadcast.splat, %i.cr
  %i.ct = bitcast <2 x i1> %i.cq to i2
  %.not217 = icmp eq i2 %i.ct, 0                  ; 2 uses
  %i.cu = select i1 %.not217, <2 x i1> %i.cj, <2 x i1> %i.cq ; 2 uses
  %i.cv = select i1 %.not217, <2 x i64> %vec.phi167, <2 x i64> %i.cs ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !856

middle.block:                                     ; preds = %vector.body
  %i.cx = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.co) ; 2 uses
  %i.cy = tail call i64 @llvm.experimental.vector.extract.last.active.v2i64(<2 x i64> %i.cv, <2 x i1> %i.cu, i64 %i.cg) ; 2 uses
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %bb.ae, %middle.block
  %.068100.i.ph = phi i64 [ 0, %bb.ae ], [ %n.vec, %middle.block ]
  %.06999.i.ph = phi i64 [ 0, %bb.ae ], [ %i.cx, %middle.block ]
  %.07898.i.ph = phi i64 [ %i.cg, %bb.ae ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i72

._crit_edge.i:                                    ; preds = %.lr.ph.i72, %middle.block
  %.lcssa164 = phi i64 [ %i.cx, %middle.block ], [ %i.em, %.lr.ph.i72 ]
  %.179.i.lcssa = phi i64 [ %i.cy, %middle.block ], [ %.179.i, %.lr.ph.i72 ]
  %i.cz = sub i64 %1, %3                          ; 4 uses
  %i.da = getelementptr [4 x i8], ptr %0, i64 %i.cg ; 3 uses
  %i.db = and i32 %i.ci, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = or i64 %.lcssa164, %i.dd                ; 2 uses
  %.not108.i = icmp slt i64 %i.cz, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.preheader.i

.lr.ph113.split.us.preheader.i:                   ; preds = %._crit_edge.i
  %.not93.i = icmp eq i32 %5, 0
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.ao, %.lr.ph113.split.us.preheader.i
  %.066110.us.i = phi i64 [ %i.ee, %bb.ao ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.ao ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 4 uses
  %i.df = getelementptr [4 x i8], ptr %i.da, i64 %.066110.us.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = icmp eq i32 %i.dg, %i.ci
  br i1 %i.dh, label %.preheader.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph113.split.us.i
  %i.di = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.di, %i.cz
  br i1 %.not88.us.i, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr [4 x i8], ptr %i.da, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !7
  %i.dl = and i32 %i.dk, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.de
  %.not89.us.i = icmp eq i64 %i.do, 0
  %i.dp = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.dp, %.066110.us.i
  br label %bb.ao

bb.ah:                                            ; preds = %.preheader.us.i, %bb.ap
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.ef, %bb.ap ] ; 4 uses
  %i.dq = getelementptr [4 x i8], ptr %i.eg, i64 %.0102.us.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ds = getelementptr [4 x i8], ptr %2, i64 %.0102.us.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %.not90.us.i = icmp eq i32 %i.dr, %i.dt
  br i1 %.not90.us.i, label %bb.ap, label %._crit_edge104.us.i

._crit_edge104.us.i:                              ; preds = %bb.ah
  %6 = icmp eq i64 %.0102.us.i, %i.cg
  br i1 %6, label %._crit_edge104.us.thread.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge104.us.i
  %i.du = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.du, %i.cz
  br i1 %.not91.us.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = getelementptr [4 x i8], ptr %i.da, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7
  %i.dx = and i32 %i.dw, 63
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = and i64 %i.dz, %i.de
  %.not92.us.i = icmp eq i64 %i.ea, 0
  br i1 %.not92.us.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ak ], [ %3, %bb.aj ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.ao

._crit_edge104.us.thread.i:                       ; preds = %bb.ap, %._crit_edge104.us.i
  br i1 %.not93.i, label %bb.am, label %ucs4lib_find_char.exit

bb.am:                                            ; preds = %._crit_edge104.us.thread.i
  %i.eb = add i64 %.074109.us.i, 1                ; 2 uses
  %i.ec = icmp eq i64 %i.eb, %4
  br i1 %i.ec, label %ucs4lib_find_char.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ed = add i64 %.066110.us.i, %i.cg
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al, %bb.ag, %bb.af
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.af ], [ %.074109.us.i, %bb.ag ], [ %.074109.us.i, %bb.al ], [ %i.eb, %bb.an ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.af ], [ %spec.select.us.i, %bb.ag ], [ %.167.us.i, %bb.al ], [ %i.ed, %bb.an ]
  %i.ee = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.ee, %i.cz
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !857

bb.ap:                                            ; preds = %bb.ah
  %i.ef = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.ef, %i.cg
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.ah, !llvm.loop !858

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.eg = getelementptr [4 x i8], ptr %0, i64 %.066110.us.i
  br label %bb.ah

.lr.ph.i72:                                       ; preds = %.lr.ph.i72.preheader, %.lr.ph.i72
  %.068100.i = phi i64 [ %i.eq, %.lr.ph.i72 ], [ %.068100.i.ph, %.lr.ph.i72.preheader ] ; 3 uses
  %.06999.i = phi i64 [ %i.em, %.lr.ph.i72 ], [ %.06999.i.ph, %.lr.ph.i72.preheader ]
  %.07898.i = phi i64 [ %.179.i, %.lr.ph.i72 ], [ %.07898.i.ph, %.lr.ph.i72.preheader ]
  %i.eh = getelementptr [4 x i8], ptr %2, i64 %.068100.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !7  ; 2 uses
  %i.ej = and i32 %i.ei, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = or i64 %i.el, %.06999.i                 ; 2 uses
  %i.en = icmp eq i32 %i.ei, %i.ci
  %i.eo = xor i64 %.068100.i, -1
  %i.ep = add nsw i64 %i.cg, %i.eo
  %.179.i = select i1 %i.en, i64 %i.ep, i64 %.07898.i ; 2 uses
  %i.eq = add nuw nsw i64 %.068100.i, 1           ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.eq, %i.cg
  br i1 %exitcond.not.i73, label %._crit_edge.i, label %.lr.ph.i72, !llvm.loop !859

.loopexit.i:                                      ; preds = %bb.ao, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.ao ]
  %i.er = icmp eq i32 %5, 0
  %i.es = select i1 %i.er, i64 %.377.ph.i, i64 -1
  br label %ucs4lib_find_char.exit

bb.aq:                                            ; preds = %bb.ad
  %i.et = lshr i64 %3, 2
  %i.eu = mul nuw nsw i64 %i.et, 3
  %i.ev = lshr i64 %1, 2
  %i.ew = icmp samesign ult i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ex = icmp eq i32 %5, 1
  br i1 %i.ex, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ey = tail call fastcc i64 @ucs4lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs4lib_find_char.exit

bb.at:                                            ; preds = %bb.ar
  %i.ez = tail call fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs4lib_find_char.exit

bb.au:                                            ; preds = %bb.aq
  %i.fa = tail call fastcc i64 @ucs4lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs4lib_find_char.exit

bb.av:                                            ; preds = %bb.ab
  %i.fb = add nsw i64 %3, -1                      ; 9 uses
  %i.fc = load i32, ptr %2, align 4, !tbaa !7     ; 4 uses
  %i.fd = and i32 %i.fc, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe                    ; 2 uses
  %min.iters.check170 = icmp ult i64 %3, 7
  br i1 %min.iters.check170, label %.lr.ph.i74.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %bb.av
  %n.vec173 = and i64 %i.fb, -4                   ; 2 uses
  %i.fg = and i64 %i.fb, 3
  %i.fh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ff, i64 0
  %broadcast.splatinsert174 = insertelement <2 x i32> poison, i32 %i.fc, i64 0
  %broadcast.splat175 = shufflevector <2 x i32> %broadcast.splatinsert174, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert176 = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %broadcast.splat177 = shufflevector <2 x i64> %broadcast.splatinsert176, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fi = add nsw <2 x i64> %broadcast.splat177, <i64 0, i64 -1>
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph171
  %index179 = phi i64 [ 0, %vector.ph171 ], [ %index.next190, %vector.body178 ] ; 2 uses
  %vec.phi180.a = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph171 ], [ %i.fx, %vector.body178 ]
  %vec.phi181.a = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph171 ], [ %i.fy, %vector.body178 ]
  %vec.phi182 = phi <2 x i1> [ zeroinitializer, %vector.ph171 ], [ %i.fz, %vector.body178 ]
  %vec.phi183 = phi <2 x i1> [ zeroinitializer, %vector.ph171 ], [ %i.ga, %vector.body178 ]
  %vec.phi184 = phi <2 x i64> [ %i.fh, %vector.ph171 ], [ %i.ft, %vector.body178 ]
  %vec.phi185 = phi <2 x i64> [ zeroinitializer, %vector.ph171 ], [ %i.fu, %vector.body178 ]
  %vec.ind186 = phi <2 x i64> [ %i.fi, %vector.ph171 ], [ %vec.ind.next191, %vector.body178 ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind186, splat (i64 -2)
  %i.fj = sub i64 %i.fb, %index179
  %i.fk = getelementptr [4 x i8], ptr %2, i64 %i.fj ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 -4
  %i.fm = getelementptr i8, ptr %i.fk, i64 -12
  %wide.load187 = load <2 x i32>, ptr %i.fl, align 4, !tbaa !7
  %wide.load188 = load <2 x i32>, ptr %i.fm, align 4, !tbaa !7
  %reverse = shufflevector <2 x i32> %wide.load187, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse189 = shufflevector <2 x i32> %wide.load188, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fn = and <2 x i32> %reverse, splat (i32 63)
  %i.fo = and <2 x i32> %reverse189, splat (i32 63)
  %i.fp = zext nneg <2 x i32> %i.fn to <2 x i64>
  %i.fq = zext nneg <2 x i32> %i.fo to <2 x i64>
  %i.fr = shl nuw <2 x i64> splat (i64 1), %i.fp
  %i.fs = shl nuw <2 x i64> splat (i64 1), %i.fq
  %i.ft = or <2 x i64> %i.fr, %vec.phi184         ; 2 uses
  %i.fu = or <2 x i64> %i.fs, %vec.phi185         ; 2 uses
  %i.fv = icmp eq <2 x i32> %reverse, %broadcast.splat175 ; 2 uses
  %i.fw = icmp eq <2 x i32> %reverse189, %broadcast.splat175 ; 2 uses
  %i.fx = select <2 x i1> %i.fv, <2 x i64> %vec.ind186, <2 x i64> %vec.phi180.a ; 2 uses
  %i.fy = select <2 x i1> %i.fw, <2 x i64> %step.add, <2 x i64> %vec.phi181.a ; 2 uses
  %i.fz = or <2 x i1> %vec.phi182, %i.fv          ; 2 uses
  %i.ga = or <2 x i1> %vec.phi183, %i.fw          ; 2 uses
  %index.next190 = add nuw i64 %index179, 4       ; 2 uses
  %vec.ind.next191 = add nsw <2 x i64> %vec.ind186, splat (i64 -4)
  %i.gb = icmp eq i64 %index.next190, %n.vec173
  br i1 %i.gb, label %middle.block192, label %vector.body178, !llvm.loop !860

middle.block192:                                  ; preds = %vector.body178
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fx, <2 x i64> %i.fy)
  %i.gc = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.gd = add nsw i64 %i.gc, -1
  %bin.rdx = or <2 x i1> %i.ga, %i.fz
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.ge = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not218 = icmp eq i2 %i.ge, 0
  %rdx.select = select i1 %.not218, i64 %i.fb, i64 %i.gd ; 2 uses
  %bin.rdx193 = or <2 x i64> %i.fu, %i.ft
  %i.gf = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx193) ; 2 uses
  %cmp.n194 = icmp eq i64 %i.fb, %n.vec173
  br i1 %cmp.n194, label %.preheader56.i, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %bb.av, %middle.block192
  %.04660.i.ph = phi i64 [ %i.fb, %bb.av ], [ %rdx.select, %middle.block192 ]
  %.04759.i.ph = phi i64 [ %i.ff, %bb.av ], [ %i.gf, %middle.block192 ]
  %.04958.i.ph = phi i64 [ %i.fb, %bb.av ], [ %i.fg, %middle.block192 ]
  br label %.lr.ph.i74

.preheader56.i:                                   ; preds = %.lr.ph.i74, %middle.block192
  %.lcssa162 = phi i64 [ %i.gf, %middle.block192 ], [ %i.hm, %.lr.ph.i74 ] ; 2 uses
  %spec.select.i75.lcssa = phi i64 [ %rdx.select, %middle.block192 ], [ %spec.select.i75, %.lr.ph.i74 ]
  %i.gg = sub i64 %1, %3                          ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, -1
  br i1 %i.gh, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ba
  %.15065.us.i = phi i64 [ %i.hd, %bb.ba ], [ %i.gg, %.preheader56.i ] ; 5 uses
  %i.gi = getelementptr [4 x i8], ptr %0, i64 %.15065.us.i ; 4 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !7
  %i.gk = icmp eq i32 %i.gj, %i.fc
  br i1 %i.gk, label %.preheader.us.i78, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i77 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i77, label %ucs4lib_find_char.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gl = getelementptr i8, ptr %i.gi, i64 -4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !7
  %i.gn = and i32 %i.gm, 63
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = shl nuw i64 1, %i.go
  %i.gq = and i64 %i.gp, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.gq, 0
  %i.gr = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ba

.preheader.us.i78:                                ; preds = %.lr.ph66.split.us.i, %bb.bb
  %.04862.us.i = phi i64 [ %i.hf, %bb.bb ], [ %i.fb, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gs = getelementptr [4 x i8], ptr %i.gi, i64 %.04862.us.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !7
  %i.gu = getelementptr [4 x i8], ptr %2, i64 %.04862.us.i
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !7
  %.not52.us.i = icmp eq i32 %i.gt, %i.gv
  br i1 %.not52.us.i, label %bb.bb, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i78
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.thread.us.i
  %i.gw = getelementptr i8, ptr %i.gi, i64 -4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !7
  %i.gy = and i32 %i.gx, 63
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = shl nuw i64 1, %i.gz
  %i.hb = and i64 %i.ha, %.lcssa162
end_hunk_4
