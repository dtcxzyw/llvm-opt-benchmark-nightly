Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicode_format?download=true
inline.NumInlined: 83
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PyUnicode_Format:bb.a
bb.dc:                                            ; preds = %bb.da
  %i.lk = getelementptr [2 x i8], ptr %i.lf, i64 %i.lg
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !39
  %i.lm = zext i16 %i.ll to i32
  br label %PyUnicode_READ.exit219.i.i

bb.dd:                                            ; preds = %bb.da
  %i.ln = getelementptr [4 x i8], ptr %i.lf, i64 %i.lg
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !10
  br label %PyUnicode_READ.exit219.i.i

PyUnicode_READ.exit219.i.i:                       ; preds = %bb.dd, %bb.dc, %bb.db
  %.0.i218.i.i = phi i32 [ %i.lj, %bb.db ], [ %i.lm, %bb.dc ], [ %i.lo, %bb.dd ] ; 2 uses
  store i32 %.0.i218.i.i, ptr %2, align 8, !tbaa !41
  %i.lp = add i64 %i.lg, 1
  store i64 %i.lp, ptr %i.u, align 8, !tbaa !81
  br label %.loopexit.thread.i.i

bb.de:                                            ; preds = %thread-pre-split230.i.i
  %i.lq = add i32 %.0.i216.i.i, -48               ; 3 uses
  %or.cond204.i.i = icmp ult i32 %i.lq, 10
  br i1 %or.cond204.i.i, label %bb.df, label %.loopexit.thread.i.i

bb.df:                                            ; preds = %bb.de
  store i32 %i.lq, ptr %i.aq, align 8, !tbaa !48
  %i.lr = add i64 %i.je, -2                       ; 3 uses
  store i64 %i.lr, ptr %i.t, align 8, !tbaa !80
  %i.ls = icmp sgt i64 %i.lr, -1
  br i1 %i.ls, label %.lr.ph250.i.i, label %.thread239.i.i

.lr.ph250.i.i:                                    ; preds = %bb.df, %bb.dl
  %i.lt = phi i32 [ %i.mn, %bb.dl ], [ %i.lq, %bb.df ] ; 5 uses
  %i.lu = phi i64 [ %i.mo, %bb.dl ], [ %i.lr, %bb.df ] ; 3 uses
  %i.lv = phi i64 [ %i.me, %bb.dl ], [ %i.jv, %bb.df ] ; 4 uses
  switch i32 %i.jk, label %bb.di [
    i32 1, label %bb.dg
    i32 2, label %bb.dh
  ]

bb.dg:                                            ; preds = %.lr.ph250.i.i
  %i.lw = getelementptr i8, ptr %i.jl, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !14
  %i.ly = zext i8 %i.lx to i32
  br label %PyUnicode_READ.exit221.i.i

bb.dh:                                            ; preds = %.lr.ph250.i.i
  %i.lz = getelementptr [2 x i8], ptr %i.jl, i64 %i.lv
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !39
  %i.mb = zext i16 %i.ma to i32
  br label %PyUnicode_READ.exit221.i.i

bb.di:                                            ; preds = %.lr.ph250.i.i
  %i.mc = getelementptr [4 x i8], ptr %i.jl, i64 %i.lv
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !10
  br label %PyUnicode_READ.exit221.i.i

PyUnicode_READ.exit221.i.i:                       ; preds = %bb.di, %bb.dh, %bb.dg
  %.0.i220.i.i = phi i32 [ %i.ly, %bb.dg ], [ %i.mb, %bb.dh ], [ %i.md, %bb.di ] ; 7 uses
  %i.me = add i64 %i.lv, 1                        ; 2 uses
  store i64 %i.me, ptr %i.u, align 8, !tbaa !81
  %i.mf = add i32 %.0.i220.i.i, -58
  %or.cond205.i.i = icmp ult i32 %i.mf, -10
  br i1 %or.cond205.i.i, label %.loopexit.thread.i.loopexit.i, label %bb.dj

bb.dj:                                            ; preds = %PyUnicode_READ.exit221.i.i
  %i.mg = sub nuw i32 -2147483601, %.0.i220.i.i
  %i.mh = udiv i32 %i.mg, 10
  %i.mi = icmp sgt i32 %i.lt, %i.mh
  br i1 %i.mi, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 %.0.i220.i.i, ptr %2, align 8, !tbaa !41
  store i32 %i.lt, ptr %i.aq, align 8
  %i.mj = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !13
  %i.mk = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.mj, ptr noundef nonnull @.str.21, i64 noundef %i.bd) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.i

bb.dl:                                            ; preds = %bb.dj
  %i.ml = mul i32 %i.lt, 10
  %i.mm = add i32 %i.ml, -48
  %i.mn = add i32 %i.mm, %.0.i220.i.i             ; 2 uses
  %i.mo = add nsw i64 %i.lu, -1                   ; 2 uses
  store i64 %i.mo, ptr %i.t, align 8, !tbaa !80
  %i.mp = icmp sgt i64 %i.lu, 0
  br i1 %i.mp, label %.lr.ph250.i.i, label %.thread239.i.loopexit.i, !llvm.loop !65

.loopexit.i.i:                                    ; preds = %thread-pre-split228.i.i
  %i.mq = icmp sgt i64 %i.je, -1
  br i1 %i.mq, label %.loopexit.thread.i.i, label %.thread239.i.i

.loopexit.thread.i.loopexit.i:                    ; preds = %PyUnicode_READ.exit221.i.i
  store i32 %.0.i220.i.i, ptr %2, align 8, !tbaa !41
  store i32 %i.lt, ptr %i.aq, align 8
  br label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %.loopexit.thread.i.loopexit.i, %.loopexit.i.i, %bb.de, %PyUnicode_READ.exit219.i.i
  %i.mr = phi i64 [ %i.je, %.loopexit.i.i ], [ %i.lc, %PyUnicode_READ.exit219.i.i ], [ %i.ji, %bb.de ], [ %i.lu, %.loopexit.thread.i.loopexit.i ] ; 3 uses
  %i.ms = phi i32 [ -1, %.loopexit.i.i ], [ %i.la, %PyUnicode_READ.exit219.i.i ], [ 0, %bb.de ], [ %i.lt, %.loopexit.thread.i.loopexit.i ] ; 9 uses
  %i.mt = phi i32 [ %.pr231.i.i, %.loopexit.i.i ], [ %.0.i218.i.i, %PyUnicode_READ.exit219.i.i ], [ %.0.i216.i.i, %bb.de ], [ %.0.i220.i.i, %.loopexit.thread.i.loopexit.i ] ; 2 uses
  switch i32 %i.mt, label %unicode_format_arg_parse.exit.i [
    i32 104, label %bb.dm
    i32 108, label %bb.dm
    i32 76, label %bb.dm
  ]

bb.dm:                                            ; preds = %.loopexit.thread.i.i, %.loopexit.thread.i.i, %.loopexit.thread.i.i
  %i.mu = add nsw i64 %i.mr, -1                   ; 2 uses
  store i64 %i.mu, ptr %i.t, align 8, !tbaa !80
  %.not243.i.i = icmp eq i64 %i.mr, 0
  br i1 %.not243.i.i, label %.thread239.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.mv = load i32, ptr %i.r, align 8, !tbaa !79
  %i.mw = load ptr, ptr %i.o, align 8, !tbaa !78  ; 3 uses
  %i.mx = load i64, ptr %i.u, align 8, !tbaa !81  ; 4 uses
  switch i32 %i.mv, label %bb.dq [
    i32 1, label %bb.do
    i32 2, label %bb.dp
  ]

bb.do:                                            ; preds = %bb.dn
  %i.my = getelementptr i8, ptr %i.mw, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !14
  %i.na = zext i8 %i.mz to i32
  br label %.thread.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.nb = getelementptr [2 x i8], ptr %i.mw, i64 %i.mx
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !39
  %i.nd = zext i16 %i.nc to i32
  br label %.thread.i.i

bb.dq:                                            ; preds = %bb.dn
  %i.ne = getelementptr [4 x i8], ptr %i.mw, i64 %i.mx
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !10
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.dq, %bb.dp, %bb.do
  %.0.i222.i.i = phi i32 [ %i.na, %bb.do ], [ %i.nd, %bb.dp ], [ %i.nf, %bb.dq ] ; 2 uses
  store i32 %.0.i222.i.i, ptr %2, align 8, !tbaa !41
  %i.ng = add i64 %i.mx, 1
  store i64 %i.ng, ptr %i.u, align 8, !tbaa !81
  br label %unicode_format_arg_parse.exit.i

.thread239.i.loopexit.i:                          ; preds = %bb.dl
  store i32 %.0.i220.i.i, ptr %2, align 8, !tbaa !41
  store i32 %i.mn, ptr %i.aq, align 8
  br label %.thread239.i.i

.thread239.i.loopexit121.i:                       ; preds = %bb.cc
  store i32 %.0.i214.i.i, ptr %2, align 8, !tbaa !41
  store i64 %i.jb, ptr %i.ap, align 8
  br label %.thread239.i.i

.thread239.i.i:                                   ; preds = %bb.dm, %.loopexit.i.i, %bb.df, %bb.cz, %bb.cd, %bb.bv, %bb.bp, %.thread239.i.loopexit121.i, %.thread239.i.loopexit.i
  %i.nh = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !13
  %i.ni = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.nh, ptr noundef nonnull @.str.22, i64 noundef %i.bd) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.i

unicode_format_arg_parse.exit.i:                  ; preds = %.thread.i.i, %.loopexit.thread.i.i
  %i.nj = phi i64 [ %i.mu, %.thread.i.i ], [ %i.mr, %.loopexit.thread.i.i ]
  %.0.i69.i = phi i32 [ %.0.i222.i.i, %.thread.i.i ], [ %i.mt, %.loopexit.thread.i.i ] ; 35 uses
  %i.nk = icmp eq i64 %i.nj, 0
  br i1 %i.nk, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %unicode_format_arg_parse.exit.i
  store i8 0, ptr %i.z, align 4, !tbaa !83
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %unicode_format_arg_parse.exit.i
  %i.nl = load i64, ptr %i.af, align 8, !tbaa !37 ; 3 uses
  %i.nm = load i64, ptr %i.ae, align 8, !tbaa !36 ; 4 uses
  %i.nn = icmp slt i64 %i.nl, %i.nm
  br i1 %i.nn, label %bb.dt, label %unicode_format_getnextarg.exit.thread.i24.i

bb.dt:                                            ; preds = %bb.ds
  %i.no = icmp sgt i64 %i.nm, -1
  %i.np = add nsw i64 %i.nl, 1
  store i64 %i.np, ptr %i.af, align 8, !tbaa !37
  %i.nq = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  br i1 %i.no, label %bb.du, label %unicode_format_getnextarg.exit.i27.i

bb.du:                                            ; preds = %bb.dt
  %i.nr = call ptr @PyTuple_GetItem(ptr noundef %i.nq, i64 noundef %i.nl) #8
  br label %unicode_format_getnextarg.exit.i27.i

unicode_format_getnextarg.exit.thread.i24.i:      ; preds = %bb.ds
  %i.ns = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.nt = icmp slt i64 %i.nm, 0
  %spec.select.i.i25.i = select i1 %i.nt, i64 1, i64 %i.nm
  %i.nu = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ns, ptr noundef nonnull @.str.23, i64 noundef %spec.select.i.i25.i) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.i

unicode_format_getnextarg.exit.i27.i:             ; preds = %bb.du, %bb.dt
  %.0.i.i28.i = phi ptr [ %i.nr, %bb.du ], [ %i.nq, %bb.dt ] ; 40 uses
  %i.nv = icmp eq ptr %.0.i.i28.i, null
  br i1 %i.nv, label %unicode_format_arg_parse.exit.thread.i, label %bb.dv

bb.dv:                                            ; preds = %unicode_format_getnextarg.exit.i27.i
  switch i32 %.0.i69.i, label %bb.go [
    i32 115, label %bb.dw
    i32 114, label %bb.dw
    i32 97, label %bb.dw
    i32 105, label %bb.ee
    i32 100, label %bb.ee
    i32 117, label %bb.ee
    i32 111, label %bb.ee
    i32 120, label %bb.ee
    i32 88, label %bb.ee
    i32 101, label %bb.fd
    i32 69, label %bb.fd
    i32 102, label %bb.fd
    i32 70, label %bb.fd
    i32 103, label %bb.fd
    i32 71, label %bb.fd
    i32 99, label %bb.fg
  ]

bb.dw:                                            ; preds = %bb.dv, %bb.dv, %bb.dv
  %4 = getelementptr i8, ptr %.0.i.i28.i, i64 8
  %.val93.i.i = load ptr, ptr %4, align 8, !tbaa !25 ; 2 uses
  %.not112.i.i = icmp eq ptr %.val93.i.i, @PyLong_Type
  %i.nw = icmp eq i64 %i.jf, -1
  %or.cond.i = select i1 %.not112.i.i, i1 %i.nw, i1 false
  %i.nx = icmp eq i32 %i.ms, -1
  %or.cond.i.a = select i1 %or.cond.i, i1 %i.nx, i1 false
  br i1 %or.cond.i.a, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ny = and i32 %i.jg, 8
  %i.nz = call i32 @_PyLong_FormatWriter(ptr noundef nonnull %i.v, ptr noundef nonnull %.0.i.i28.i, i32 noundef 10, i32 noundef %i.ny) #8
  %i.oa = icmp eq i32 %i.nz, -1
  br i1 %i.oa, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread94.i

bb.dy:                                            ; preds = %bb.dw
  %i.ob = icmp eq ptr %.val93.i.i, @PyUnicode_Type
  %i.oc = icmp eq i32 %.0.i69.i, 115
  %or.cond111.i.i = and i1 %i.oc, %i.ob
  br i1 %or.cond111.i.i, label %bb.dz, label %.thread.i32.i

bb.dz:                                            ; preds = %bb.dy
  %i.od = load i32, ptr %.0.i.i28.i, align 8, !tbaa !14 ; 2 uses
  %i.oe = icmp ugt i32 %i.od, -1073741825
  br i1 %i.oe, label %unicode_format_arg_format.exit.thread100.thread.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.of = add nuw i32 %i.od, 1
  store i32 %i.of, ptr %.0.i.i28.i, align 8, !tbaa !14
  br label %unicode_format_arg_format.exit.thread100.thread.i

unicode_format_arg_format.exit.thread100.thread.i: ; preds = %bb.ea, %bb.dz
  store ptr %.0.i.i28.i, ptr %i.b, align 8, !tbaa !13
  br label %unicode_format_arg_format.exit.thread100.i

.thread.i32.i:                                    ; preds = %bb.dy
  switch i32 %.0.i69.i, label %bb.ed [
    i32 115, label %bb.eb
    i32 114, label %bb.ec
  ]

bb.eb:                                            ; preds = %.thread.i32.i
  %i.og = call ptr @PyObject_Str(ptr noundef nonnull %.0.i.i28.i) #8
  br label %unicode_format_arg_format.exit.i

bb.ec:                                            ; preds = %.thread.i32.i
  %i.oh = call ptr @PyObject_Repr(ptr noundef nonnull %.0.i.i28.i) #8
  br label %unicode_format_arg_format.exit.i

bb.ed:                                            ; preds = %.thread.i32.i
  %i.oi = call ptr @PyObject_ASCII(ptr noundef nonnull %.0.i.i28.i) #8
  br label %unicode_format_arg_format.exit.i

bb.ee:                                            ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv
  %i.oj = call i32 @PyNumber_Check(ptr noundef nonnull %.0.i.i28.i) #8
  %.not.i.i31.i = icmp eq i32 %i.oj, 0
  br i1 %.not.i.i31.i, label %.loopexit54, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ok = getelementptr i8, ptr %.0.i.i28.i, i64 8 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ok, align 8, !tbaa !25 ; 3 uses
  %i.ol = getelementptr i8, ptr %.val.i.i.i, i64 168
  %.val79.i.i.i = load i64, ptr %i.ol, align 8, !tbaa !33
  %i.om = and i64 %.val79.i.i.i, 16777216
  %.not69.i.i.i = icmp eq i64 %i.om, 0
  br i1 %.not69.i.i.i, label %bb.eg, label %bb.el

bb.eg:                                            ; preds = %bb.ef
  %i.on = icmp eq i32 %.0.i69.i, 111
  %i.oo = and i32 %.0.i69.i, 223
  %i.op = icmp eq i32 %i.oo, 88
  %or.cond5.i.i.i = or i1 %i.on, %i.op
  br i1 %or.cond5.i.i.i, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.oq = call ptr @_PyNumber_Index(ptr noundef nonnull %.0.i.i28.i) #8
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.or = call ptr @PyNumber_Long(ptr noundef nonnull %.0.i.i28.i) #8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.060.i.i.i = phi ptr [ %i.oq, %bb.eh ], [ %i.or, %bb.ei ] ; 2 uses
  %i.os = icmp eq ptr %.060.i.i.i, null
  br i1 %i.os, label %bb.ek, label %._Py_NewRef.exit_crit_edge.i.i.i

._Py_NewRef.exit_crit_edge.i.i.i:                 ; preds = %bb.ej
  %.val80.pre.i.i.i = load ptr, ptr %i.ok, align 8, !tbaa !25
  br label %_Py_NewRef.exit.i.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.ot = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.ou = call i32 @PyErr_ExceptionMatches(ptr noundef %i.ot) #8
  %.not70.i.i.i = icmp eq i32 %i.ou, 0
  br i1 %.not70.i.i.i, label %unicode_format_arg_parse.exit.thread.i, label %.loopexit54

bb.el:                                            ; preds = %bb.ef
  %i.ov = load i32, ptr %.0.i.i28.i, align 8, !tbaa !14 ; 2 uses
  %i.ow = icmp ugt i32 %i.ov, -1073741825
  br i1 %i.ow, label %_Py_NewRef.exit.i.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ox = add nuw i32 %i.ov, 1
  store i32 %i.ox, ptr %.0.i.i28.i, align 8, !tbaa !14
  br label %_Py_NewRef.exit.i.i.i

_Py_NewRef.exit.i.i.i:                            ; preds = %bb.em, %bb.el, %._Py_NewRef.exit_crit_edge.i.i.i
  %.val80.i.i.i = phi ptr [ %.val80.pre.i.i.i, %._Py_NewRef.exit_crit_edge.i.i.i ], [ %.val.i.i.i, %bb.el ], [ %.val.i.i.i, %bb.em ]
  %.1.i.i.i = phi ptr [ %.060.i.i.i, %._Py_NewRef.exit_crit_edge.i.i.i ], [ %.0.i.i28.i, %bb.el ], [ %.0.i.i28.i, %bb.em ] ; 7 uses
  %.not81.i.i.i = icmp eq ptr %.val80.i.i.i, @PyLong_Type
  %i.oy = icmp eq i64 %i.jf, -1
  %or.cond111.i = select i1 %.not81.i.i.i, i1 %i.oy, i1 false
  %i.oz = icmp eq i32 %i.ms, -1
  %or.cond112.i = select i1 %or.cond111.i, i1 %i.oz, i1 false
  br i1 %or.cond112.i, label %bb.en, label %bb.eq

bb.en:                                            ; preds = %_Py_NewRef.exit.i.i.i
  %i.pa = and i32 %i.jg, 6
  %i.pb = icmp eq i32 %i.pa, 0
  %i.pc = icmp ne i32 %.0.i69.i, 88
  %or.cond8.i.i.i = and i1 %i.pb, %i.pc
  br i1 %or.cond8.i.i.i, label %switch.lookup782, label %bb.eq

switch.lookup782:                                 ; preds = %bb.en
  %i.pd = and i32 %i.jg, 8
  %i.pe = sext i32 %.0.i69.i to i64
  %i.pf = getelementptr i8, ptr @switch.table.PyUnicode_Format.12, i64 %i.pe
  %switch.gep783 = getelementptr i8, ptr %i.pf, i64 -100
  %switch.load784 = load i8, ptr %switch.gep783, align 1
  %switch.ext785 = zext i8 %switch.load784 to i32
  %i.pg = call i32 @_PyLong_FormatWriter(ptr noundef nonnull %i.v, ptr noundef nonnull %.0.i.i28.i, i32 noundef %switch.ext785, i32 noundef %i.pd) #8
  %i.ph = icmp eq i32 %i.pg, -1
  %i.pi = load i32, ptr %.1.i.i.i, align 8, !tbaa !14 ; 2 uses
  %.not.i76.i.i.i = icmp sgt i32 %i.pi, -1
  br i1 %.not.i76.i.i.i, label %bb.eo, label %Py_DECREF.exit77.i.i.i

bb.eo:                                            ; preds = %switch.lookup782
  %i.pj = add nsw i32 %i.pi, -1                   ; 2 uses
  store i32 %i.pj, ptr %.1.i.i.i, align 8, !tbaa !14
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %bb.ep, label %Py_DECREF.exit77.i.i.i

bb.ep:                                            ; preds = %bb.eo
  call void @_Py_Dealloc(ptr noundef nonnull %.1.i.i.i) #8
  br label %Py_DECREF.exit77.i.i.i

Py_DECREF.exit77.i.i.i:                           ; preds = %bb.ep, %bb.eo, %switch.lookup782
  br i1 %i.ph, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread94.i

bb.eq:                                            ; preds = %bb.en, %_Py_NewRef.exit.i.i.i
  %i.pl = and i32 %i.jg, 8
  %i.pm = call ptr @_PyUnicode_FormatLong(ptr noundef nonnull %.1.i.i.i, i32 noundef %i.pl, i32 noundef %i.ms, i32 noundef %.0.i69.i) ; 3 uses
  %i.pn = load i32, ptr %.1.i.i.i, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.pn, -1
  br i1 %.not.i.i.i.i, label %bb.er, label %Py_DECREF.exit.i.i.i

bb.er:                                            ; preds = %bb.eq
  %i.po = add nsw i32 %i.pn, -1                   ; 2 uses
  store i32 %i.po, ptr %.1.i.i.i, align 8, !tbaa !14
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %bb.es, label %Py_DECREF.exit.i.i.i

bb.es:                                            ; preds = %bb.er
  call void @_Py_Dealloc(ptr noundef nonnull %.1.i.i.i) #8
  br label %Py_DECREF.exit.i.i.i

Py_DECREF.exit.i.i.i:                             ; preds = %bb.es, %bb.er, %bb.eq
  %i.pq = icmp eq ptr %i.pm, null
  br i1 %i.pq, label %unicode_format_arg_parse.exit.thread.i, label %unicode_format_arg_format.exit.thread100.thread104.i

.loopexit54:                                      ; preds = %bb.ee, %bb.ek
  %.not72.i.i.i = icmp eq ptr %i.ev, null         ; 2 uses
  switch i32 %.0.i69.i, label %bb.ey [
    i32 111, label %bb.et
    i32 120, label %bb.et
    i32 88, label %bb.et
  ]

bb.et:                                            ; preds = %.loopexit54, %.loopexit54, %.loopexit54
  br i1 %.not72.i.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.pr = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.ps = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.pr, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.ev, i32 noundef %.0.i69.i, ptr noundef nonnull %.0.i.i28.i) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.thread109.i

bb.ev:                                            ; preds = %bb.et
  %i.pt = load i64, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.pu = icmp sgt i64 %i.pt, -1
  %i.pv = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13 ; 2 uses
  br i1 %i.pu, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.pw = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.pv, ptr noundef nonnull @.str.30, i64 noundef %i.pt, i32 noundef %.0.i69.i, ptr noundef nonnull %.0.i.i28.i) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

bb.ex:                                            ; preds = %bb.ev
  %i.px = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.pv, ptr noundef nonnull @.str.31, i32 noundef %.0.i69.i, ptr noundef nonnull %.0.i.i28.i) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

bb.ey:                                            ; preds = %.loopexit54
  br i1 %.not72.i.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.py = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13
  %i.pz = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.py, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.ev, i32 noundef %.0.i69.i, ptr noundef nonnull %.0.i.i28.i) #8 ; 0 uses
  br label %unicode_format_arg_parse.exit.thread.thread109.i

bb.fa:                                            ; preds = %bb.ey
  %i.qa = load i64, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.qb = icmp sgt i64 %i.qa, -1
  %i.qc = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !13 ; 2 uses
  br i1 %i.qb, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.qd = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.qc, ptr noundef nonnull @.str.33, i64 noundef %i.qa, i32 noundef %.0.i69.i, ptr noundef nonnull %.0.i.i28.i) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

bb.fc:                                            ; preds = %bb.fa
  %i.qe = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.qc, ptr noundef nonnull @.str.34, i32 noundef %.0.i69.i, ptr noundef nonnull %.0.i.i28.i) #8 ; 0 uses
  br label %unicode_format_arg.exit.thread

unicode_format_arg_format.exit.thread100.thread104.i: ; preds = %Py_DECREF.exit.i.i.i
  store ptr %i.pm, ptr %i.b, align 8, !tbaa !13
  store i32 1, ptr %i.ar, align 4, !tbaa !87
  br label %unicode_format_arg_format.exit.thread100.thread249.i

bb.fd:                                            ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv
  %i.qf = icmp eq i64 %i.jf, -1
  %i.qg = icmp eq i32 %i.ms, -1
  %or.cond113.i = select i1 %i.qf, i1 %i.qg, i1 false
  %i.qh = and i32 %i.jg, 6
  %.not.i30.i = icmp eq i32 %i.qh, 0
  %or.cond114.i = select i1 %or.cond113.i, i1 %.not.i30.i, i1 false
  br i1 %or.cond114.i, label %bb.fe, label %bb.ff
end_hunk_0
