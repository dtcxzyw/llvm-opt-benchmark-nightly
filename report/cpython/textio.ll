Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/textio?download=true
inline.NumInlined: 326
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_io_TextIOWrapper_tell:bb.a
  store ptr %i.bx, ptr %i.e, align 8, !tbaa !197
  %i.by = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 85720), ptr noundef nonnull %i.e, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_io_TextIOWrapper_tell_impl.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = getelementptr i8, ptr %0, i64 160
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !273
  %i.cc = sitofp i64 %i.bu to double
  %i.cd = fmul double %i.cb, %i.cc
  %i.ce = fptosi double %i.cd to i64              ; 2 uses
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !197
  %i.cg = getelementptr i8, ptr %i.cf, i64 32
  %i.ch = icmp sgt i64 %i.ce, 0
  br i1 %i.ch, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ad, %bb.ay
  %.0136314.i = phi i64 [ %.1137.i, %bb.ay ], [ 1, %bb.ad ] ; 2 uses
  %.0138313.i = phi i64 [ %.1139.i, %bb.ay ], [ %i.ce, %bb.ad ] ; 3 uses
  %.val249.i = load i64, ptr %2, align 8, !tbaa !287
  %.val250.i = load i32, ptr %i.bn, align 8
  %i.ci = call fastcc i32 @_textiowrapper_decoder_setstate(ptr noundef nonnull %0, i64 %.val249.i, i32 %.val250.i)
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %Py_DECREF.exit209.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i
  %i.ck = load ptr, ptr %i.bb, align 8, !tbaa !256
  %i.cl = call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef %i.ck, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 80456), ptr noundef nonnull @.str.106, ptr noundef %i.cg, i64 noundef %.0138313.i) #10 ; 5 uses
  %i.cm = call fastcc i32 @check_decoded(ptr noundef %i.cl)
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %Py_DECREF.exit209.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr i8, ptr %i.cl, i64 16
  %.val240.i = load i64, ptr %i.co, align 8, !tbaa !213 ; 2 uses
  %i.cp = load i32, ptr %i.cl, align 8, !tbaa !199 ; 2 uses
  %.not.i208.i = icmp sgt i32 %i.cp, -1
  br i1 %.not.i208.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cq, ptr %i.cl, align 8, !tbaa !199
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.cl) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.not170.i = icmp sgt i64 %.val240.i, %i.bu
  br i1 %.not170.i, label %bb.ax, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.cs = load ptr, ptr %i.bb, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.cs, ptr %i.d, align 8, !tbaa !197
  %i.ct = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 85720), ptr noundef nonnull %i.d, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %Py_DECREF.exit207.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cv = getelementptr i8, ptr %i.ct, i64 8
  %.val233.i = load ptr, ptr %i.cv, align 8, !tbaa !200
  %i.cw = getelementptr i8, ptr %.val233.i, i64 168
  %.val237.i = load i64, ptr %i.cw, align 8, !tbaa !209
  %i.cx = and i64 %.val237.i, 67108864
  %.not171.i = icmp eq i64 %i.cx, 0
  br i1 %.not171.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cy = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !197
  call void @PyErr_SetString(ptr noundef %i.cy, ptr noundef nonnull @.str.27) #10
  %i.cz = load i32, ptr %i.ct, align 8, !tbaa !199 ; 2 uses
  %.not.i206.i = icmp sgt i32 %i.cz, -1
  br i1 %.not.i206.i, label %bb.am, label %Py_DECREF.exit207.thread.i

bb.am:                                            ; preds = %bb.al
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.ct, align 8, !tbaa !199
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %Py_DECREF.exit207.thread.sink.split.i, label %Py_DECREF.exit207.thread.i

bb.an:                                            ; preds = %bb.ak
  %i.dc = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %i.ct, ptr noundef nonnull @.str.107, ptr noundef nonnull %i.i, ptr noundef nonnull %i.h) #10
  %.not172.i = icmp eq i32 %i.dc, 0
  br i1 %.not172.i, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dd = load i32, ptr %i.ct, align 8, !tbaa !199 ; 2 uses
  %.not.i204.i = icmp sgt i32 %i.dd, -1
  br i1 %.not.i204.i, label %bb.ap, label %Py_DECREF.exit207.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.de = add nsw i32 %i.dd, -1                   ; 2 uses
  store i32 %i.de, ptr %i.ct, align 8, !tbaa !199
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %Py_DECREF.exit207.thread.sink.split.i, label %Py_DECREF.exit207.thread.i

bb.aq:                                            ; preds = %bb.an
  %i.dg = load ptr, ptr %i.i, align 8, !tbaa !197 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %.val232.i = load ptr, ptr %i.dh, align 8, !tbaa !200 ; 2 uses
  %i.di = getelementptr i8, ptr %.val232.i, i64 168
  %.val236.i = load i64, ptr %i.di, align 8, !tbaa !209
  %i.dj = and i64 %.val236.i, 134217728
  %.not173.i = icmp eq i64 %i.dj, 0
  br i1 %.not173.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.dk = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !197
  %i.dl = getelementptr i8, ptr %.val232.i, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !210
  %i.dn = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dk, ptr noundef nonnull @.str.53, ptr noundef %i.dm) #10 ; 0 uses
  %i.do = load i32, ptr %i.ct, align 8, !tbaa !199 ; 2 uses
  %.not.i202.i = icmp sgt i32 %i.do, -1
  br i1 %.not.i202.i, label %bb.as, label %Py_DECREF.exit207.thread.i

bb.as:                                            ; preds = %bb.ar
  %i.dp = add nsw i32 %i.do, -1                   ; 2 uses
  store i32 %i.dp, ptr %i.ct, align 8, !tbaa !199
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %Py_DECREF.exit207.thread.sink.split.i, label %Py_DECREF.exit207.thread.i

bb.at:                                            ; preds = %bb.aq
  %i.dr = getelementptr i8, ptr %i.dg, i64 16
  %.val245.i = load i64, ptr %i.dr, align 8, !tbaa !217 ; 2 uses
  %i.ds = load i32, ptr %i.ct, align 8, !tbaa !199 ; 2 uses
  %.not.i200.i = icmp sgt i32 %i.ds, -1
  br i1 %.not.i200.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.dt = add nsw i32 %i.ds, -1                   ; 2 uses
  store i32 %i.dt, ptr %i.ct, align 8, !tbaa !199
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @_Py_Dealloc(ptr noundef nonnull %i.ct) #10
  br label %bb.aw

Py_DECREF.exit207.thread.sink.split.i:            ; preds = %bb.as, %bb.ap, %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.ct) #10
  br label %Py_DECREF.exit207.thread.i

Py_DECREF.exit207.thread.i:                       ; preds = %bb.aj, %Py_DECREF.exit207.thread.sink.split.i, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %Py_DECREF.exit209.i

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  %i.dv = icmp eq i64 %.val245.i, 0
  br i1 %i.dv, label %bb.az, label %bb.ay

bb.ax:                                            ; preds = %bb.ai
  %i.dw = shl i64 %.0136314.i, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.1126.pn.i = phi i64 [ %.0136314.i, %bb.ax ], [ %.val245.i, %bb.aw ]
  %.1137.i = phi i64 [ %i.dw, %bb.ax ], [ 1, %bb.aw ]
  %.1139.i = sub i64 %.0138313.i, %.1126.pn.i     ; 2 uses
  %i.dx = icmp sgt i64 %.1139.i, 0
  br i1 %i.dx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !435

bb.az:                                            ; preds = %bb.aw
  %i.dy = load i32, ptr %i.h, align 4, !tbaa !10
  store i32 %i.dy, ptr %i.bn, align 8, !tbaa !290
  %i.dz = sub i64 %i.bu, %.val240.i
  br label %bb.ba

._crit_edge.i:                                    ; preds = %bb.ay, %bb.ad
  %.val247.i = load i64, ptr %2, align 8, !tbaa !287
  %.val248.i = load i32, ptr %i.bn, align 8
  %i.ea = call fastcc i32 @_textiowrapper_decoder_setstate(ptr noundef nonnull %0, i64 %.val247.i, i32 %.val248.i)
  %i.eb = icmp slt i32 %i.ea, 0
  br i1 %i.eb, label %Py_DECREF.exit209.i, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.i, %bb.az
  %.0147260.i = phi i64 [ %i.bu, %._crit_edge.i ], [ %i.dz, %bb.az ] ; 4 uses
  %.2140.i = phi i64 [ 0, %._crit_edge.i ], [ %.0138313.i, %bb.az ] ; 2 uses
  %i.ec = load i64, ptr %2, align 8, !tbaa !287
  %i.ed = add i64 %i.ec, %.2140.i
  store i64 %i.ed, ptr %2, align 8, !tbaa !287
  %i.ee = trunc i64 %.0147260.i to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 %i.ee, ptr %i.ef, align 8, !tbaa !288
  %i.eg = icmp eq i64 %.0147260.i, 0
  br i1 %i.eg, label %bb.ca, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eh = load ptr, ptr %i.g, align 8, !tbaa !197 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 32     ; 2 uses
  %i.ej = getelementptr i8, ptr %i.eh, i64 16
  %.val244.i = load i64, ptr %i.ej, align 8, !tbaa !217
  %i.ek = getelementptr i8, ptr %i.ei, i64 %.val244.i ; 3 uses
  %i.el = getelementptr i8, ptr %i.ei, i64 %.2140.i ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.en = icmp ult ptr %i.el, %i.ek
  br i1 %i.en, label %.lr.ph, label %Py_DECREF.exit199.thread277.i

Py_DECREF.exit199.i:                              ; preds = %bb.bu
  %i.eo = getelementptr i8, ptr %.0132.i132, i64 1 ; 3 uses
  %i.ep = icmp ult ptr %i.eo, %i.ek
  br i1 %i.ep, label %.lr.ph, label %Py_DECREF.exit199.thread277.i

.lr.ph:                                           ; preds = %bb.bb, %Py_DECREF.exit199.i
  %.0132.i132 = phi ptr [ %i.eo, %Py_DECREF.exit199.i ], [ %i.el, %bb.bb ] ; 3 uses
  %.2143.i131 = phi i64 [ %.3144.i, %Py_DECREF.exit199.i ], [ 0, %bb.bb ]
  %.1148.i130 = phi i64 [ %.2149.i, %Py_DECREF.exit199.i ], [ %.0147260.i, %bb.bb ] ; 3 uses
  %i.eq = load ptr, ptr %i.bb, align 8, !tbaa !256
  %i.er = call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef %i.eq, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 80456), ptr noundef nonnull @.str.106, ptr noundef %.0132.i132, i64 noundef 1) #10 ; 5 uses
  %i.es = call fastcc i32 @check_decoded(ptr noundef %i.er)
  %i.et = icmp sgt i32 %i.es, -1
  br i1 %i.et, label %bb.bc, label %Py_DECREF.exit209.i

bb.bc:                                            ; preds = %.lr.ph
  %i.eu = getelementptr i8, ptr %i.er, i64 16
  %.val239.i = load i64, ptr %i.eu, align 8, !tbaa !213
  %i.ev = load i32, ptr %i.er, align 8, !tbaa !199 ; 2 uses
  %.not.i198.i = icmp sgt i32 %i.ev, -1
  br i1 %.not.i198.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.er, align 8, !tbaa !199
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %i.er) #10
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.ey = add i64 %.val239.i, %.2143.i131         ; 3 uses
  %i.ez = load i32, ptr %i.em, align 4, !tbaa !289
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.em, align 4, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.fb = load ptr, ptr %i.bb, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.fb, ptr %i.c, align 8, !tbaa !197
  %i.fc = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 85720), ptr noundef nonnull %i.c, i64 noundef -9223372036854775807, ptr noundef null) #10 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %Py_DECREF.exit197.thread.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fe = getelementptr i8, ptr %i.fc, i64 8
  %.val230.i = load ptr, ptr %i.fe, align 8, !tbaa !200
  %i.ff = getelementptr i8, ptr %.val230.i, i64 168
  %.val235.i = load i64, ptr %i.ff, align 8, !tbaa !209
  %i.fg = and i64 %.val235.i, 67108864
  %.not174.i = icmp eq i64 %i.fg, 0
  br i1 %.not174.i, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.fh = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !197
  call void @PyErr_SetString(ptr noundef %i.fh, ptr noundef nonnull @.str.27) #10
  %i.fi = load i32, ptr %i.fc, align 8, !tbaa !199 ; 2 uses
  %.not.i196.i = icmp sgt i32 %i.fi, -1
  br i1 %.not.i196.i, label %bb.bi, label %Py_DECREF.exit197.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr %i.fc, align 8, !tbaa !199
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %Py_DECREF.exit197.thread.sink.split.i, label %Py_DECREF.exit197.thread.i

bb.bj:                                            ; preds = %bb.bg
  %i.fl = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.107, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h) #10
  %.not175.i = icmp eq i32 %i.fl, 0
  br i1 %.not175.i, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.fm = load i32, ptr %i.fc, align 8, !tbaa !199 ; 2 uses
  %.not.i194.i = icmp sgt i32 %i.fm, -1
  br i1 %.not.i194.i, label %bb.bl, label %Py_DECREF.exit197.thread.i

bb.bl:                                            ; preds = %bb.bk
  %i.fn = add nsw i32 %i.fm, -1                   ; 2 uses
  store i32 %i.fn, ptr %i.fc, align 8, !tbaa !199
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %Py_DECREF.exit197.thread.sink.split.i, label %Py_DECREF.exit197.thread.i

bb.bm:                                            ; preds = %bb.bj
  %i.fp = load ptr, ptr %i.j, align 8, !tbaa !197 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  %.val229.i = load ptr, ptr %i.fq, align 8, !tbaa !200 ; 2 uses
  %i.fr = getelementptr i8, ptr %.val229.i, i64 168
  %.val234.i = load i64, ptr %i.fr, align 8, !tbaa !209
  %i.fs = and i64 %.val234.i, 134217728
  %.not176.i = icmp eq i64 %i.fs, 0
  br i1 %.not176.i, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.ft = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !197
  %i.fu = getelementptr i8, ptr %.val229.i, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !210
  %i.fw = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ft, ptr noundef nonnull @.str.53, ptr noundef %i.fv) #10 ; 0 uses
  %i.fx = load i32, ptr %i.fc, align 8, !tbaa !199 ; 2 uses
  %.not.i192.i = icmp sgt i32 %i.fx, -1
  br i1 %.not.i192.i, label %bb.bo, label %Py_DECREF.exit197.thread.i

bb.bo:                                            ; preds = %bb.bn
  %i.fy = add nsw i32 %i.fx, -1                   ; 2 uses
  store i32 %i.fy, ptr %i.fc, align 8, !tbaa !199
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %Py_DECREF.exit197.thread.sink.split.i, label %Py_DECREF.exit197.thread.i

bb.bp:                                            ; preds = %bb.bm
  %i.ga = getelementptr i8, ptr %i.fp, i64 16
  %.val243.i = load i64, ptr %i.ga, align 8, !tbaa !217
  %i.gb = load i32, ptr %i.fc, align 8, !tbaa !199 ; 2 uses
  %.not.i190.i = icmp sgt i32 %i.gb, -1
  br i1 %.not.i190.i, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.gc = add nsw i32 %i.gb, -1                   ; 2 uses
  store i32 %i.gc, ptr %i.fc, align 8, !tbaa !199
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @_Py_Dealloc(ptr noundef nonnull %i.fc) #10
  br label %bb.bs

Py_DECREF.exit197.thread.sink.split.i:            ; preds = %bb.bo, %bb.bl, %bb.bi
  call void @_Py_Dealloc(ptr noundef nonnull %i.fc) #10
  br label %Py_DECREF.exit197.thread.i

Py_DECREF.exit197.thread.i:                       ; preds = %bb.bf, %Py_DECREF.exit197.thread.sink.split.i, %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br label %Py_DECREF.exit209.i

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  %i.ge = icmp ne i64 %.val243.i, 0
  %.not177.i = icmp sgt i64 %i.ey, %.1148.i130
  %or.cond.i = select i1 %i.ge, i1 true, i1 %.not177.i
  br i1 %or.cond.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gf = load i32, ptr %i.em, align 4, !tbaa !289
  %i.gg = sext i32 %i.gf to i64
  %i.gh = load i64, ptr %2, align 8, !tbaa !287
  %i.gi = add i64 %i.gh, %i.gg
  store i64 %i.gi, ptr %2, align 8, !tbaa !287
  %i.gj = sub i64 %.1148.i130, %i.ey
  %i.gk = load i32, ptr %i.h, align 4, !tbaa !10
  store i32 %i.gk, ptr %i.bn, align 8, !tbaa !290
  store i32 0, ptr %i.em, align 4, !tbaa !289
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.2149.i = phi i64 [ %i.gj, %bb.bt ], [ %.1148.i130, %bb.bs ] ; 4 uses
  %.3144.i = phi i64 [ 0, %bb.bt ], [ %i.ey, %bb.bs ] ; 4 uses
  %.not178.i = icmp slt i64 %.3144.i, %.2149.i
  br i1 %.not178.i, label %Py_DECREF.exit199.i, label %Py_DECREF.exit199.thread277.i

Py_DECREF.exit199.thread277.i:                    ; preds = %Py_DECREF.exit199.i, %bb.bu, %bb.bb
  %.0132.i.lcssa = phi ptr [ %i.el, %bb.bb ], [ %i.eo, %Py_DECREF.exit199.i ], [ %.0132.i132, %bb.bu ]
  %.4151.i = phi i64 [ %.0147260.i, %bb.bb ], [ %.2149.i, %bb.bu ], [ %.2149.i, %Py_DECREF.exit199.i ] ; 3 uses
  %.5146.i = phi i64 [ 0, %bb.bb ], [ %.3144.i, %bb.bu ], [ %.3144.i, %Py_DECREF.exit199.i ]
  %i.gl = icmp eq ptr %.0132.i.lcssa, %i.ek
  br i1 %i.gl, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %Py_DECREF.exit199.thread277.i
  %i.gm = load ptr, ptr %i.bb, align 8, !tbaa !256
  %i.gn = call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef %i.gm, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 80456), ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.11, ptr noundef nonnull @_Py_TrueStruct) #10 ; 5 uses
  %i.go = call fastcc i32 @check_decoded(ptr noundef %i.gn)
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %Py_DECREF.exit209.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gq = getelementptr i8, ptr %i.gn, i64 16
  %.val238.i = load i64, ptr %i.gq, align 8, !tbaa !213
  %i.gr = add i64 %.val238.i, %.5146.i
  %i.gs = load i32, ptr %i.gn, align 8, !tbaa !199 ; 2 uses
  %.not.i188.i = icmp sgt i32 %i.gs, -1
  br i1 %.not.i188.i, label %bb.bx, label %Py_DECREF.exit189.i

bb.bx:                                            ; preds = %bb.bw
  %i.gt = add nsw i32 %i.gs, -1                   ; 2 uses
  store i32 %i.gt, ptr %i.gn, align 8, !tbaa !199
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.by, label %Py_DECREF.exit189.i

bb.by:                                            ; preds = %bb.bx
  call void @_Py_Dealloc(ptr noundef nonnull %i.gn) #10
  br label %Py_DECREF.exit189.i

Py_DECREF.exit189.i:                              ; preds = %bb.by, %bb.bx, %bb.bw
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 1, ptr %i.gv, align 4, !tbaa !291
  %i.gw = icmp slt i64 %i.gr, %.4151.i
  br i1 %i.gw, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %Py_DECREF.exit189.i
  %i.gx = load ptr, ptr @PyExc_OSError, align 8, !tbaa !197
  call void @PyErr_SetString(ptr noundef %i.gx, ptr noundef nonnull @.str.109) #10
  br label %Py_DECREF.exit209.i

bb.ca:                                            ; preds = %Py_DECREF.exit189.i, %Py_DECREF.exit199.thread277.i, %bb.ba
  %.5152.i = phi i64 [ 0, %bb.ba ], [ %.4151.i, %Py_DECREF.exit199.thread277.i ], [ %.4151.i, %Py_DECREF.exit189.i ]
  %i.gy = load ptr, ptr %i.bb, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr %i.gy, ptr %i.b, align 16, !tbaa !197
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.by, ptr %i.gz, align 8, !tbaa !197
  %i.ha = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 99432), ptr noundef nonnull %i.b, i64 noundef -9223372036854775806, ptr noundef null) #10 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.hb = load i32, ptr %i.by, align 8, !tbaa !199 ; 2 uses
  %.not.i186.i = icmp sgt i32 %i.hb, -1
  br i1 %.not.i186.i, label %bb.cb, label %Py_DECREF.exit187.i

bb.cb:                                            ; preds = %bb.ca
  %i.hc = add nsw i32 %i.hb, -1                   ; 2 uses
  store i32 %i.hc, ptr %i.by, align 8, !tbaa !199
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.cc, label %Py_DECREF.exit187.i

bb.cc:                                            ; preds = %bb.cb
  call void @_Py_Dealloc(ptr noundef nonnull %i.by) #10
  br label %Py_DECREF.exit187.i

Py_DECREF.exit187.i:                              ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.he = icmp eq ptr %i.ha, null
  br i1 %i.he, label %_io_TextIOWrapper_tell_impl.exit, label %bb.cd

bb.cd:                                            ; preds = %Py_DECREF.exit187.i
  %i.hf = load i32, ptr %i.ha, align 8, !tbaa !199 ; 2 uses
  %.not.i184.i = icmp sgt i32 %i.hf, -1
  br i1 %.not.i184.i, label %bb.ce, label %Py_DECREF.exit185.i

bb.ce:                                            ; preds = %bb.cd
  %i.hg = add nsw i32 %i.hf, -1                   ; 2 uses
  store i32 %i.hg, ptr %i.ha, align 8, !tbaa !199
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.cf, label %Py_DECREF.exit185.i

bb.cf:                                            ; preds = %bb.ce
  call void @_Py_Dealloc(ptr noundef nonnull %i.ha) #10
  br label %Py_DECREF.exit185.i

Py_DECREF.exit185.i:                              ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.hi = trunc i64 %.5152.i to i32
  store i32 %i.hi, ptr %i.ef, align 8, !tbaa !288
  %i.hj = call fastcc ptr @textiowrapper_build_cookie(ptr noundef %2)
  br label %_io_TextIOWrapper_tell_impl.exit

Py_DECREF.exit209.i:                              ; preds = %bb.ae, %.lr.ph.i, %.lr.ph, %bb.bz, %bb.bv, %Py_DECREF.exit197.thread.i, %._crit_edge.i, %Py_DECREF.exit207.thread.i
  %i.hk = call ptr @PyErr_GetRaisedException() #10
  %i.hl = load ptr, ptr %i.bb, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr %i.hl, ptr %i.a, align 16, !tbaa !197
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.by, ptr %i.hm, align 8, !tbaa !197
  %i.hn = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 99432), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #10 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @_PyErr_ChainExceptions1(ptr noundef %i.hk) #10
  %i.ho = load i32, ptr %i.by, align 8, !tbaa !199 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ho, -1
  br i1 %.not.i.i, label %bb.cg, label %Py_DECREF.exit.i

bb.cg:                                            ; preds = %Py_DECREF.exit209.i
  %i.hp = add nsw i32 %i.ho, -1                   ; 2 uses
  store i32 %i.hp, ptr %i.by, align 8, !tbaa !199
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.ch, label %Py_DECREF.exit.i

bb.ch:                                            ; preds = %bb.cg
  call void @_Py_Dealloc(ptr noundef nonnull %i.by) #10
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.ch, %bb.cg, %Py_DECREF.exit209.i
  %.not.i252.i = icmp eq ptr %i.hn, null
  br i1 %.not.i252.i, label %_io_TextIOWrapper_tell_impl.exit, label %bb.ci

bb.ci:                                            ; preds = %Py_DECREF.exit.i
  %i.hr = load i32, ptr %i.hn, align 8, !tbaa !199 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.hr, -1
  br i1 %.not.i.i.i, label %bb.cj, label %_io_TextIOWrapper_tell_impl.exit

bb.cj:                                            ; preds = %bb.ci
  %i.hs = add nsw i32 %i.hr, -1                   ; 2 uses
  store i32 %i.hs, ptr %i.hn, align 8, !tbaa !199
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.ck, label %_io_TextIOWrapper_tell_impl.exit

bb.ck:                                            ; preds = %bb.cj
  call void @_Py_Dealloc(ptr noundef nonnull %i.hn) #10
  br label %_io_TextIOWrapper_tell_impl.exit

_io_TextIOWrapper_tell_impl.exit:                 ; preds = %bb.b, %bb.d, %_io_TextIOWrapper_closed_get_impl.exit.i, %Py_DECREF.exit213.i, %bb.l, %bb.m, %bb.o, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %Py_DECREF.exit211.i, %bb.z, %bb.ab, %bb.ac, %Py_DECREF.exit187.i, %Py_DECREF.exit185.i, %Py_DECREF.exit.i, %bb.ci, %bb.cj, %bb.ck
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.q ], [ null, %Py_DECREF.exit187.i ], [ null, %bb.r ], [ %i.bw, %bb.ab ], [ %i.az, %bb.u ], [ %i.az, %bb.v ], [ %i.hj, %Py_DECREF.exit185.i ], [ null, %bb.ck ], [ null, %bb.m ], [ null, %_io_TextIOWrapper_closed_get_impl.exit.i ], [ null, %Py_DECREF.exit213.i ], [ null, %bb.l ], [ null, %Py_DECREF.exit.i ], [ null, %bb.ci ], [ null, %bb.cj ], [ null, %bb.s ], [ null, %bb.t ], [ null, %Py_DECREF.exit211.i ], [ null, %bb.ac ], [ null, %bb.o ], [ null, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_TextIOWrapper_truncate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !437 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.67, i64 noundef %2, i64 noundef 0, i64 noundef 1) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_io_TextIOWrapper_truncate_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = icmp slt i64 %2, 1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8, !tbaa !197
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.d, %bb.d ]
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !252
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !197
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper_truncate_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !263
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !197
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.48) #10
  br label %_io_TextIOWrapper_truncate_impl.exit

bb.i:                                             ; preds = %bb.g
  %i.l = tail call i32 @_PyFile_Flush(ptr noundef nonnull %0) #10
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %_io_TextIOWrapper_truncate_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr i8, ptr %0, i64 32
end_hunk_0
begin_hunk_1_@_textiowrapper_encoder_reset:bb.a

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.07 = phi i32 [ -1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @textiowrapper_parse_cookie(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1) unnamed_addr #0 !guid !455 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call ptr @PyNumber_Long(ptr noundef %1) #10 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @_PyLong_AsByteArray(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 21, i32 noundef 1, i32 noundef 0, i32 noundef 1) #10
  %i.e = icmp slt i32 %i.d, 0
  %i.f = load i32, ptr %i.b, align 8, !tbaa !199  ; 3 uses
  %.not.i11 = icmp sgt i32 %i.f, -1               ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i11, label %bb.d, label %Py_DECREF.exit12

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !199
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_DECREF.exit12

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit12

bb.f:                                             ; preds = %bb.b
  br i1 %.not.i11, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.i = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.i, ptr %i.b, align 8, !tbaa !199
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.g, %bb.h
  %i.k = load i64, ptr %i.a, align 16
  store i64 %i.k, ptr %0, align 8
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load <2 x i32>, ptr %i.m, align 8
  store <2 x i32> %i.n, ptr %i.l, align 8
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i32, ptr %i.p, align 16
  store i32 %i.q, ptr %i.o, align 8
  %i.r = getelementptr i8, ptr %0, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.t = load i8, ptr %i.s, align 4
  store i8 %i.t, ptr %i.r, align 4
  br label %Py_DECREF.exit12

Py_DECREF.exit12:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %Py_DECREF.exit
  %.0 = phi i32 [ 0, %Py_DECREF.exit ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_textiowrapper_decoder_setstate(ptr nofree noundef readonly captures(none) %0, i64 %.0.val, i32 %.8.val) unnamed_addr #0 !guid !456 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %.0.val, 0
  %i.c = icmp eq i32 %.8.val, 0
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  %i.d = getelementptr i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !256  ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8, !tbaa !197
  %i.f = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97896), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef %i.e, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 99432), ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.11, i32 noundef %.8.val) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]  ; 4 uses
  %i.h = icmp eq ptr %.0, null
  br i1 %i.h, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %.0, align 8, !tbaa !199   ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %.0, align 8, !tbaa !199
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %.0) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.07 = phi i32 [ -1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.07
}

declare i64 @PyUnicode_GetLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_textiowrapper_encoder_setstate(ptr nofree noundef captures(none) initializes((112, 113)) %0, i64 %.0.val, i32 %.8.val) unnamed_addr #0 !guid !457 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq i64 %.0.val, 0
  br i1 %i.c, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !255
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %.8.val, 0
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !255  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8, !tbaa !197
  %i.h = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97896), ptr noundef nonnull %i.b, i64 noundef -9223372036854775807, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %.thread, %bb.b
  %i.i = phi ptr [ %i.e, %.thread ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr %i.i, ptr %i.a, align 16, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), ptr %i.j, align 8, !tbaa !197
  %i.k = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 99432), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi i8 [ 0, %bb.d ], [ 1, %bb.c ]
  %.0.i = phi ptr [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 4 uses
  %i.l = getelementptr i8, ptr %0, i64 112
  store i8 %.sink.i, ptr %i.l, align 8, !tbaa !278
  %i.m = icmp eq ptr %.0.i, null
  br i1 %i.m, label %_textiowrapper_encoder_reset.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %.0.i, align 8, !tbaa !199 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i, label %bb.g, label %_textiowrapper_encoder_reset.exit

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %.0.i, align 8, !tbaa !199
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %_textiowrapper_encoder_reset.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #10
  br label %_textiowrapper_encoder_reset.exit

_textiowrapper_encoder_reset.exit:                ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.07.i = phi i32 [ -1, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.07.i
}

declare ptr @PyNumber_Long(ptr noundef) local_unnamed_addr #2

declare i32 @_PyLong_AsByteArray(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal fastcc ptr @textiowrapper_build_cookie(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 !guid !458 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i64, ptr %0, align 8
  store i64 %i.b, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr i8, ptr %0, i64 8
  %1 = load <2 x i32>, ptr %i.d, align 8
  store <2 x i32> %1, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  store i32 %i.g, ptr %i.e, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = load i8, ptr %i.i, align 4
  store i8 %i.j, ptr %i.h, align 4
  %i.k = call ptr @_PyLong_FromByteArray(ptr noundef nonnull %i.a, i64 noundef 21, i32 noundef 1, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %i.k
}

declare ptr @_PyLong_FromByteArray(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_io_TextIOWrapper_name_get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !459 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !252
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !197
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper_name_get_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !263
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !197
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.48) #10
  br label %_io_TextIOWrapper_name_get_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !254
  %i.j = tail call ptr @PyObject_GetAttr(ptr noundef %i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 92600)) #10
  br label %_io_TextIOWrapper_name_get_impl.exit

_io_TextIOWrapper_name_get_impl.exit:             ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_TextIOWrapper_closed_get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !460 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !252
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !197
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper_closed_get_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !263
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !197
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.48) #10
  br label %_io_TextIOWrapper_closed_get_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !254
  %i.j = tail call ptr @PyObject_GetAttr(ptr noundef %i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 77912)) #10
  br label %_io_TextIOWrapper_closed_get_impl.exit

_io_TextIOWrapper_closed_get_impl.exit:           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_TextIOWrapper_newlines_get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !461 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !252
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !197
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper_newlines_get_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !263
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !197
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.48) #10
  br label %_io_TextIOWrapper_newlines_get_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !256  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_io_TextIOWrapper_newlines_get_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = call i32 @PyObject_GetOptionalAttr(ptr noundef nonnull %i.j, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 93128), ptr noundef nonnull %i.a) #10
  %i.m = icmp eq i32 %i.l, 0
  %i.n = load ptr, ptr %i.a, align 8
  %spec.select.i = select i1 %i.m, ptr @_Py_NoneStruct, ptr %i.n
  br label %_io_TextIOWrapper_newlines_get_impl.exit

_io_TextIOWrapper_newlines_get_impl.exit:         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ @_Py_NoneStruct, %bb.e ], [ %spec.select.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_io_TextIOWrapper_errors_get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !462 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !252
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !197
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper_errors_get_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !261  ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !199  ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_io_TextIOWrapper_errors_get_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.f, align 8, !tbaa !199
  br label %_io_TextIOWrapper_errors_get_impl.exit

_io_TextIOWrapper_errors_get_impl.exit:           ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ null, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_io_TextIOWrapper__CHUNK_SIZE_get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !463 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !252
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !197
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.42) #10
  br label %_io_TextIOWrapper__CHUNK_SIZE_get_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !263
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !197
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.48) #10
  br label %_io_TextIOWrapper__CHUNK_SIZE_get_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !274
  %i.j = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.i) #10
  br label %_io_TextIOWrapper__CHUNK_SIZE_get_impl.exit

_io_TextIOWrapper__CHUNK_SIZE_get_impl.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_io_TextIOWrapper__CHUNK_SIZE_set(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 !guid !464 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !252
end_hunk_1
