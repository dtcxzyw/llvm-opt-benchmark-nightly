inline.NumInlined: 116
inline.NumDeleted: 38
begin_hunk_0_@dialect_new:bb.a

Py_XINCREF.exit189:                               ; preds = %Py_XINCREF.exit187, %bb.ab, %bb.ac
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !10  ; 3 uses
  %.not.i190 = icmp eq ptr %i.cn, null
  br i1 %.not.i190, label %Py_XINCREF.exit191, label %bb.ad

bb.ad:                                            ; preds = %Py_XINCREF.exit189
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !29 ; 2 uses
  %i.cp = icmp ugt i32 %i.co, -1073741825
  br i1 %i.cp, label %Py_XINCREF.exit191, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = add nuw i32 %i.co, 1
  store i32 %i.cq, ptr %i.cn, align 8, !tbaa !29
  br label %Py_XINCREF.exit191

Py_XINCREF.exit191:                               ; preds = %Py_XINCREF.exit189, %bb.ad, %bb.ae
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !10  ; 3 uses
  %.not.i192 = icmp eq ptr %i.cr, null
  br i1 %.not.i192, label %Py_XINCREF.exit193, label %bb.af

bb.af:                                            ; preds = %Py_XINCREF.exit191
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !29 ; 2 uses
  %i.ct = icmp ugt i32 %i.cs, -1073741825
  br i1 %i.ct, label %Py_XINCREF.exit193, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = add nuw i32 %i.cs, 1
  store i32 %i.cu, ptr %i.cr, align 8, !tbaa !29
  br label %Py_XINCREF.exit193

Py_XINCREF.exit193:                               ; preds = %Py_XINCREF.exit191, %bb.af, %bb.ag
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %.not117 = icmp eq ptr %i.cv, null
  br i1 %.not117, label %bb.bf, label %bb.ah

bb.ah:                                            ; preds = %Py_XINCREF.exit193
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cy = call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.cv, ptr noundef nonnull @.str.9) #5 ; 2 uses
  store ptr %i.cy, ptr %i.c, align 8, !tbaa !10
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @PyErr_Clear() #5
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.aj, %bb.ai
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.dd = call ptr @PyObject_GetAttrString(ptr noundef %i.dc, ptr noundef nonnull @.str.6) #5 ; 2 uses
  store ptr %i.dd, ptr %i.d, align 8, !tbaa !10
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @PyErr_Clear() #5
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am, %bb.al
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.di = call ptr @PyObject_GetAttrString(ptr noundef %i.dh, ptr noundef nonnull @.str.10) #5 ; 2 uses
  store ptr %i.di, ptr %i.e, align 8, !tbaa !10
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @PyErr_Clear() #5
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ap, %bb.ao
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.dn = call ptr @PyObject_GetAttrString(ptr noundef %i.dm, ptr noundef nonnull @.str.11) #5 ; 2 uses
  store ptr %i.dn, ptr %i.f, align 8, !tbaa !10
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @PyErr_Clear() #5
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.as, %bb.ar
  %i.dp = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.ds = call ptr @PyObject_GetAttrString(ptr noundef %i.dr, ptr noundef nonnull @.str.12) #5 ; 2 uses
  store ptr %i.ds, ptr %i.g, align 8, !tbaa !10
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @PyErr_Clear() #5
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.av, %bb.au
  %i.du = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.dw = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.dx = call ptr @PyObject_GetAttrString(ptr noundef %i.dw, ptr noundef nonnull @.str.13) #5 ; 2 uses
  store ptr %i.dx, ptr %i.h, align 8, !tbaa !10
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @PyErr_Clear() #5
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ay, %bb.ax
  %i.dz = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.ec = call ptr @PyObject_GetAttrString(ptr noundef %i.eb, ptr noundef nonnull @.str.5) #5 ; 2 uses
  store ptr %i.ec, ptr %i.i, align 8, !tbaa !10
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @PyErr_Clear() #5
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.bb, %bb.ba
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.eh = call ptr @PyObject_GetAttrString(ptr noundef %i.eg, ptr noundef nonnull @.str.7) #5 ; 2 uses
  store ptr %i.eh, ptr %i.j, align 8, !tbaa !10
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @PyErr_Clear() #5
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.be, %bb.bd, %Py_XINCREF.exit193
  %i.ej = getelementptr i8, ptr %i.bi, i64 24     ; 3 uses
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !10  ; 11 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_set_char.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.em = getelementptr i8, ptr %i.ek, i64 8
  %.val.i = load ptr, ptr %i.em, align 8, !tbaa !14
  %i.en = getelementptr i8, ptr %.val.i, i64 168
  %.val18.i = load i64, ptr %i.en, align 8, !tbaa !17
  %i.eo = and i64 %.val18.i, 268435456
  %.not.i194 = icmp eq i64 %i.eo, 0
  br i1 %.not.i194, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ep = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.eq = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ep, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.ek) #5 ; 0 uses
  br label %_set_bool.exitthread-pre-split

bb.bi:                                            ; preds = %bb.bg
  %i.er = call i64 @PyUnicode_GetLength(ptr noundef nonnull %i.ek) #5 ; 3 uses
  %i.es = icmp slt i64 %i.er, 0
  br i1 %i.es, label %_set_bool.exitthread-pre-split, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.not17.i = icmp eq i64 %i.er, 1
  br i1 %.not17.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.et = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.eu = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.et, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.9, i64 noundef %i.er) #5 ; 0 uses
  br label %_set_bool.exitthread-pre-split

bb.bl:                                            ; preds = %bb.bj
  %i.ev = getelementptr i8, ptr %i.ek, i64 32
  %i.ew = load i32, ptr %i.ev, align 8            ; 5 uses
  %3 = lshr i32 %i.ew, 2
  %i.ex = and i32 %3, 7
  %i.ey = and i32 %i.ew, 32
  %.not.i19.i.i = icmp eq i32 %i.ey, 0            ; 3 uses
  switch i32 %i.ex, label %bb.bs [
    i32 1, label %bb.bm
    i32 2, label %bb.bp
  ]

bb.bm:                                            ; preds = %bb.bl
  br i1 %.not.i19.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ez = and i32 %i.ew, 64
  %.not.i.i.i.i = icmp eq i32 %i.ez, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.ek, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.fa = getelementptr i8, ptr %i.ek, i64 56
  %.val4.i.i.i = load ptr, ptr %i.fa, align 8, !tbaa !29
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.bo, %bb.bn
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.bn ], [ %.val4.i.i.i, %bb.bo ]
  %i.fb = load i8, ptr %.0.i.i.i, align 1, !tbaa !29
  %i.fc = zext i8 %i.fb to i32
  br label %_set_char.exit

bb.bp:                                            ; preds = %bb.bl
  br i1 %.not.i19.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fd = and i32 %i.ew, 64
  %.not.i.i12.i.i = icmp eq i32 %i.fd, 0
  %.0.v.i.i13.i.i = select i1 %.not.i.i12.i.i, i64 56, i64 40
  %.0.i.i14.i.i = getelementptr i8, ptr %i.ek, i64 %.0.v.i.i13.i.i
  br label %_PyUnicode_DATA.exit17.i.i

bb.br:                                            ; preds = %bb.bp
  %i.fe = getelementptr i8, ptr %i.ek, i64 56
  %.val4.i16.i.i = load ptr, ptr %i.fe, align 8, !tbaa !29
  br label %_PyUnicode_DATA.exit17.i.i

_PyUnicode_DATA.exit17.i.i:                       ; preds = %bb.br, %bb.bq
  %.0.i15.i.i = phi ptr [ %.0.i.i14.i.i, %bb.bq ], [ %.val4.i16.i.i, %bb.br ]
  %i.ff = load i16, ptr %.0.i15.i.i, align 2, !tbaa !34
  %i.fg = zext i16 %i.ff to i32
  br label %_set_char.exit

bb.bs:                                            ; preds = %bb.bl
  br i1 %.not.i19.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fh = and i32 %i.ew, 64
  %.not.i.i20.i.i = icmp eq i32 %i.fh, 0
  %.0.v.i.i21.i.i = select i1 %.not.i.i20.i.i, i64 56, i64 40
  %.0.i.i22.i.i = getelementptr i8, ptr %i.ek, i64 %.0.v.i.i21.i.i
  br label %_PyUnicode_DATA.exit25.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.fi = getelementptr i8, ptr %i.ek, i64 56
  %.val4.i24.i.i = load ptr, ptr %i.fi, align 8, !tbaa !29
  br label %_PyUnicode_DATA.exit25.i.i

_PyUnicode_DATA.exit25.i.i:                       ; preds = %bb.bu, %bb.bt
  %.0.i23.i.i = phi ptr [ %.0.i.i22.i.i, %bb.bt ], [ %.val4.i24.i.i, %bb.bu ]
  %i.fj = load i32, ptr %.0.i23.i.i, align 4, !tbaa !6
  br label %_set_char.exit

_set_char.exit:                                   ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_DATA.exit17.i.i, %_PyUnicode_DATA.exit25.i.i, %bb.bf
  %storemerge = phi i32 [ 44, %bb.bf ], [ %i.fc, %_PyUnicode_DATA.exit.i.i ], [ %i.fg, %_PyUnicode_DATA.exit17.i.i ], [ %i.fj, %_PyUnicode_DATA.exit25.i.i ]
  store i32 %storemerge, ptr %i.ej, align 4, !tbaa !6
  %i.fk = getelementptr i8, ptr %i.bi, i64 16
  %i.fl = load ptr, ptr %i.d, align 8, !tbaa !10  ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_set_char.exit
  %i.fn = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.fl) #5 ; 2 uses
  %i.fo = icmp slt i32 %i.fn, 0
  br i1 %i.fo, label %_set_bool.exitthread-pre-split, label %.thread.i

.thread.i:                                        ; preds = %bb.bv
  %i.fp = trunc i32 %i.fn to i8
  br label %bb.bw

bb.bw:                                            ; preds = %.thread.i, %_set_char.exit
  %.sink.i = phi i8 [ %i.fp, %.thread.i ], [ 1, %_set_char.exit ]
  store i8 %.sink.i, ptr %i.fk, align 1, !tbaa !29
  %i.fq = getelementptr i8, ptr %i.bi, i64 32     ; 3 uses
  %i.fr = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.fs = call fastcc i32 @_set_char_or_none(ptr noundef nonnull @.str.10, ptr noundef %i.fq, ptr noundef %i.fr, i32 noundef -1)
  %.not120 = icmp eq i32 %i.fs, 0
  br i1 %.not120, label %bb.bx, label %_set_bool.exitthread-pre-split

bb.bx:                                            ; preds = %bb.bw
  %i.ft = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.fu = call fastcc i32 @_set_str(ptr noundef nonnull %i.bo, ptr noundef %i.ft)
  %.not121 = icmp eq i32 %i.fu, 0
  br i1 %.not121, label %bb.by, label %_set_bool.exitthread-pre-split

bb.by:                                            ; preds = %bb.bx
  %i.fv = getelementptr i8, ptr %i.bi, i64 28     ; 4 uses
  %i.fw = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.fx = call fastcc i32 @_set_char_or_none(ptr noundef nonnull @.str.12, ptr noundef %i.fv, ptr noundef %i.fw, i32 noundef 34)
  %.not122 = icmp eq i32 %i.fx, 0
  br i1 %.not122, label %bb.bz, label %_set_bool.exitthread-pre-split

bb.bz:                                            ; preds = %bb.by
  %i.fy = getelementptr i8, ptr %i.bi, i64 20     ; 3 uses
  %i.fz = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.ga = call fastcc i32 @_set_int(ptr noundef %i.fy, ptr noundef %i.fz)
  %.not123 = icmp eq i32 %i.ga, 0
  br i1 %.not123, label %bb.ca, label %_set_bool.exitthread-pre-split

bb.ca:                                            ; preds = %bb.bz
  %i.gb = getelementptr i8, ptr %i.bi, i64 17     ; 3 uses
  %i.gc = load ptr, ptr %i.i, align 8, !tbaa !10  ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ge = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.gc) #5 ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %_set_bool.exitthread-pre-split, label %.thread.i197

.thread.i197:                                     ; preds = %bb.cb
  %i.gg = trunc i32 %i.ge to i8
  br label %bb.cc

bb.cc:                                            ; preds = %.thread.i197, %bb.ca
  %.sink.i199 = phi i8 [ %i.gg, %.thread.i197 ], [ 0, %bb.ca ]
  store i8 %.sink.i199, ptr %i.gb, align 1, !tbaa !29
  %i.gh = getelementptr i8, ptr %i.bi, i64 18
  %i.gi = load ptr, ptr %i.j, align 8, !tbaa !10  ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gk = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.gi) #5 ; 2 uses
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %_set_bool.exitthread-pre-split, label %.thread.i202

.thread.i202:                                     ; preds = %bb.cd
  %i.gm = trunc i32 %i.gk to i8
  br label %bb.ce

bb.ce:                                            ; preds = %.thread.i202, %bb.cc
  %.sink.i204 = phi i8 [ %i.gm, %.thread.i202 ], [ 0, %bb.cc ]
  store i8 %.sink.i204, ptr %i.gh, align 1, !tbaa !29
  %i.gn = load i32, ptr %i.fy, align 4, !tbaa !35 ; 2 uses
  %switch.i = icmp ult i32 %i.gn, 6
  br i1 %switch.i, label %bb.cf, label %dialect_check_quoting.exit

dialect_check_quoting.exit:                       ; preds = %bb.ce
  %i.go = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.gp = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.go, ptr noundef nonnull @.str.27) #5 ; 0 uses
  br label %_set_bool.exitthread-pre-split

bb.cf:                                            ; preds = %bb.ce
  %i.gq = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.gr = icmp eq ptr %i.gq, @_Py_NoneStruct
  %i.gs = load ptr, ptr %i.h, align 8
  %i.gt = icmp eq ptr %i.gs, null
  %or.cond17 = select i1 %i.gr, i1 %i.gt, i1 false
  br i1 %or.cond17, label %.thread, label %bb.cg

.thread:                                          ; preds = %bb.cf
  store i32 3, ptr %i.fy, align 4, !tbaa !35
  br label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %.not127 = icmp eq i32 %i.gn, 3
  br i1 %.not127, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gu = load i32, ptr %i.fv, align 4, !tbaa !36
  %i.gv = icmp eq i32 %i.gu, -1
  br i1 %i.gv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.gw = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.gw, ptr noundef nonnull @.str.17) #5
  br label %_set_bool.exitthread-pre-split

bb.cj:                                            ; preds = %.thread, %bb.ch, %bb.cg
  %i.gx = load i32, ptr %i.ej, align 8, !tbaa !37
  %i.gy = call fastcc i32 @dialect_check_char(ptr noundef nonnull @.str.9, i32 noundef %i.gx, ptr noundef %i.bi, i1 noundef zeroext true)
  %.not128 = icmp eq i32 %i.gy, 0
  br i1 %.not128, label %bb.ck, label %_set_bool.exitthread-pre-split

bb.ck:                                            ; preds = %bb.cj
  %i.gz = load i32, ptr %i.fq, align 8, !tbaa !38
  %i.ha = load i8, ptr %i.gb, align 1, !tbaa !39
  %.not129 = icmp eq i8 %i.ha, 0
  %i.hb = call fastcc i32 @dialect_check_char(ptr noundef nonnull @.str.10, i32 noundef %i.gz, ptr noundef %i.bi, i1 noundef zeroext %.not129)
  %.not130 = icmp eq i32 %i.hb, 0
  br i1 %.not130, label %bb.cl, label %_set_bool.exitthread-pre-split

bb.cl:                                            ; preds = %bb.ck
  %i.hc = load i32, ptr %i.fv, align 4, !tbaa !36
  %i.hd = load i8, ptr %i.gb, align 1, !tbaa !39
  %.not131 = icmp eq i8 %i.hd, 0
  %i.he = call fastcc i32 @dialect_check_char(ptr noundef nonnull @.str.12, i32 noundef %i.hc, ptr noundef %i.bi, i1 noundef zeroext %.not131)
  %.not132 = icmp eq i32 %i.he, 0
end_hunk_0
begin_hunk_1_@Dialect_clear:bb.a
bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !29
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @Dialect_traverse(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #5 ; 2 uses
  %.not19 = icmp eq i32 %i.c, 0
  br i1 %.not19, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val22 = load ptr, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %.not20 = icmp eq ptr %.val22, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull %.val22, ptr noundef %2) #5 ; 2 uses
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.e, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal ptr @Dialect_get_delimiter(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %get_char_or_None.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyUnicode_FromOrdinal(i32 noundef %i.b) #5
  br label %get_char_or_None.exit

get_char_or_None.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @Dialect_get_escapechar(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %get_char_or_None.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyUnicode_FromOrdinal(i32 noundef %i.b) #5
  br label %get_char_or_None.exit

get_char_or_None.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @Dialect_get_lineterminator(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_Py_XNewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_XNewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 8, !tbaa !29
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @Dialect_get_quotechar(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %get_char_or_None.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyUnicode_FromOrdinal(i32 noundef %i.b) #5
  br label %get_char_or_None.exit

get_char_or_None.exit:                            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @Dialect_get_quoting(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @PyLong_FromLong(i64 noundef %i.c) #5
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @PyUnicode_FromOrdinal(i32 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

declare i32 @PyArg_ParseTupleAndKeywords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyErr_Clear() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_set_char_or_none(ptr noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef %2, i32 noundef range(i32 -1, 35) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %3, ptr %1, align 4, !tbaa !6
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %1, align 4, !tbaa !6
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val20 = load i64, ptr %i.d, align 8, !tbaa !17
  %i.e = and i64 %.val20, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.23, ptr noundef %0, ptr noundef nonnull %2) #5 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.h = tail call i64 @PyUnicode_GetLength(ptr noundef nonnull %2) #5 ; 3 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not19 = icmp eq i64 %i.h, 1
  br i1 %.not19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.24, ptr noundef %0, i64 noundef %i.h) #5 ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i32, ptr %i.l, align 8              ; 5 uses
  %4 = lshr i32 %i.m, 2
  %i.n = and i32 %4, 7
  %i.o = and i32 %i.m, 32
  %.not.i19.i = icmp eq i32 %i.o, 0               ; 3 uses
  switch i32 %i.n, label %bb.q [
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = and i32 %i.m, 64
  %.not.i.i.i = icmp eq i32 %i.p, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.m:                                             ; preds = %bb.k
  %i.q = getelementptr i8, ptr %2, i64 56
  %.val4.i.i = load ptr, ptr %i.q, align 8, !tbaa !29
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.l ], [ %.val4.i.i, %bb.m ]
  %i.r = load i8, ptr %.0.i.i, align 1, !tbaa !29
  %i.s = zext i8 %i.r to i32
  br label %bb.t

bb.n:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = and i32 %i.m, 64
  %.not.i.i12.i = icmp eq i32 %i.t, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %2, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.p:                                             ; preds = %bb.n
  %i.u = getelementptr i8, ptr %2, i64 56
  %.val4.i16.i = load ptr, ptr %i.u, align 8, !tbaa !29
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.p, %bb.o
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.o ], [ %.val4.i16.i, %bb.p ]
  %i.v = load i16, ptr %.0.i15.i, align 2, !tbaa !34
  %i.w = zext i16 %i.v to i32
  br label %bb.t

bb.q:                                             ; preds = %bb.j
  br i1 %.not.i19.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.x = and i32 %i.m, 64
  %.not.i.i20.i = icmp eq i32 %i.x, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %2, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.s:                                             ; preds = %bb.q
  %i.y = getelementptr i8, ptr %2, i64 56
  %.val4.i24.i = load ptr, ptr %i.y, align 8, !tbaa !29
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.s, %bb.r
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.r ], [ %.val4.i24.i, %bb.s ]
  %i.z = load i32, ptr %.0.i23.i, align 4, !tbaa !6
  br label %bb.t

bb.t:                                             ; preds = %_PyUnicode_DATA.exit25.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit.i
  %.0.i = phi i32 [ %i.s, %_PyUnicode_DATA.exit.i ], [ %i.w, %_PyUnicode_DATA.exit17.i ], [ %i.z, %_PyUnicode_DATA.exit25.i ]
  store i32 %.0.i, ptr %1, align 4, !tbaa !6
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.b, %bb.d, %bb.t, %bb.f
  %.1 = phi i32 [ -1, %bb.f ], [ 0, %bb.b ], [ 0, %bb.t ], [ 0, %bb.d ], [ -1, %bb.i ], [ -1, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_set_str(ptr noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyUnicode_DecodeASCII(ptr noundef nonnull @.str.16, i64 noundef 2, ptr noundef null) #5
  store ptr %i.b, ptr %0, align 8, !tbaa !10
  br label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val13 = load i64, ptr %i.d, align 8, !tbaa !17
  %i.e = and i64 %.val13, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.11, ptr noundef nonnull %1) #5 ; 0 uses
  br label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %1, align 8, !tbaa !29
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.f
  store ptr %1, ptr %0, align 8, !tbaa !10
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.g

bb.g:                                             ; preds = %_Py_NewRef.exit
  %i.l = load i32, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i, label %bb.h, label %Py_XDECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.h, align 8, !tbaa !29
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %Py_XDECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #5
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.i, %bb.h, %bb.g, %_Py_NewRef.exit, %bb.b, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.b ], [ 0, %_Py_NewRef.exit ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_set_int(ptr noundef writeonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !6
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !14
  %.not = icmp eq ptr %.val, @PyLong_Type
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.d = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.c, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.13, ptr noundef nonnull %1) #5 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @PyLong_AsInt(ptr noundef nonnull %1) #5 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @PyErr_Occurred() #5
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  store i32 %i.e, ptr %0, align 4, !tbaa !6
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.b, %bb.g
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.g ], [ -1, %bb.d ], [ -1, %bb.f ]
  ret i32 %.1
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @dialect_check_char(ptr noundef %0, i32 noundef %1, ptr noundef nonnull readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 13, label %.sink.split
    i32 10, label %.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ne i32 %1, 32
  %or.cond3 = or i1 %i.a, %3
  br i1 %or.cond3, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %2, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %.val = load i64, ptr %i.d, align 8, !tbaa !41
  %i.e = tail call i64 @PyUnicode_FindChar(ptr noundef %i.c, i32 noundef %1, i64 noundef 0, i64 noundef %.val, i32 noundef 1) #5
  %i.f = icmp sgt i64 %i.e, -1
  br i1 %i.f, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.a, %bb.a
end_hunk_1
begin_hunk_2_@Dialect_reduce:bb.a
  ret ptr null
}

declare ptr @_PyType_Name(ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_Del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @Reader_traverse(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #5 ; 2 uses
  %.not41 = icmp eq i32 %i.c, 0
  br i1 %.not41, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %.not42 = icmp eq ptr %i.e, null
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #5 ; 2 uses
  %.not43 = icmp eq i32 %i.f, 0
  br i1 %.not43, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %.not44 = icmp eq ptr %i.h, null
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #5 ; 2 uses
  %.not45 = icmp eq i32 %i.i, 0
  br i1 %.not45, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val48 = load ptr, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %.not46 = icmp eq ptr %.val48, null
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 %1(ptr noundef nonnull %.val48, ptr noundef %2) #5 ; 2 uses
  %.not47 = icmp eq i32 %i.k, 0
  br i1 %.not47, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.i
  %.7 = phi i32 [ 0, %bb.i ], [ %i.k, %bb.h ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.7
}

declare ptr @PyObject_SelfIter(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @Reader_iternext(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val52.i = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.b = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val52.i, ptr noundef nonnull @_csvmodule) #5, !inline_history !50 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Reader_iternext_lock_held.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyModule_GetState(ptr noundef nonnull %i.b) #5, !inline_history !50 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_csv_state_from_type.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !10
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.43) #5, !inline_history !50 ; 0 uses
  br label %Reader_iternext_lock_held.exit

_csv_state_from_type.exit.i:                      ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10   ; 4 uses
  %i.j = tail call ptr @PyList_New(i64 noundef 0) #5, !inline_history !51 ; 3 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !10
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %Py_XDECREF.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_csv_state_from_type.exit.i
  %i.k = load i32, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %Py_XDECREF.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.i, align 8, !tbaa !29
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %Py_XDECREF.exitthread-pre-split.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #5, !inline_history !51
  br label %Py_XDECREF.exitthread-pre-split.i.i

Py_XDECREF.exitthread-pre-split.i.i:              ; preds = %bb.f, %bb.e
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %Py_XDECREF.exitthread-pre-split.i.i, %bb.d, %_csv_state_from_type.exit.i
  %i.n = phi ptr [ %.pr.i.i, %Py_XDECREF.exitthread-pre-split.i.i ], [ %i.j, %_csv_state_from_type.exit.i ], [ %i.j, %bb.d ]
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %Reader_iternext_lock_held.exit, label %parse_reset.exit.i

parse_reset.exit.i:                               ; preds = %Py_XDECREF.exit.i.i
  %i.p = getelementptr i8, ptr %0, i64 64         ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr i8, ptr %0, i64 40         ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !53
  %i.r = getelementptr i8, ptr %0, i64 72
  store i8 0, ptr %i.r, align 8, !tbaa !54
  %i.s = getelementptr i8, ptr %0, i64 16
  %i.t = getelementptr i8, ptr %0, i64 80         ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.ab, %parse_reset.exit.i
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.v = tail call ptr @PyIter_Next(ptr noundef %i.u) #5, !inline_history !51 ; 15 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @PyErr_Occurred() #5, !inline_history !51
  %.not42.i = icmp eq ptr %i.x, null
  br i1 %.not42.i, label %bb.i, label %Reader_iternext_lock_held.exit

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.p, align 8, !tbaa !52
  %.not43.i = icmp eq i64 %i.y, 0
  br i1 %.not43.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = load i32, ptr %i.q, align 8, !tbaa !53
  %i.aa = icmp eq i32 %i.z, 4
  br i1 %i.aa, label %bb.k, label %Reader_iternext_lock_held.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = getelementptr i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %i.ac, i64 18
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !55
  %.not44.i = icmp eq i8 %i.ae, 0
  br i1 %.not44.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !28
  tail call void @PyErr_SetString(ptr noundef %i.af, ptr noundef nonnull @.str.44) #5, !inline_history !51
  br label %Reader_iternext_lock_held.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = tail call fastcc i32 @parse_save_field(ptr noundef nonnull %0), !inline_history !51
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %.loopexit.i, label %Reader_iternext_lock_held.exit

bb.n:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %i.v, i64 8
  %.val51.i = load ptr, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.aj = getelementptr i8, ptr %.val51.i, i64 168
  %.val53.i = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.ak = and i64 %.val53.i, 268435456
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.am = getelementptr i8, ptr %.val51.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56
  %i.ao = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.al, ptr noundef nonnull @.str.45, ptr noundef %i.an) #5, !inline_history !51 ; 0 uses
  %i.ap = load i32, ptr %i.v, align 8, !tbaa !29  ; 2 uses
  %.not.i47.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i47.i, label %bb.p, label %Reader_iternext_lock_held.exit

bb.p:                                             ; preds = %bb.o
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.v, align 8, !tbaa !29
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.q, label %Reader_iternext_lock_held.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #5, !inline_history !51
  br label %Reader_iternext_lock_held.exit

bb.r:                                             ; preds = %bb.n
  %i.as = load i64, ptr %i.t, align 8, !tbaa !57
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.t, align 8, !tbaa !57
  %i.au = getelementptr i8, ptr %i.v, i64 32
  %i.av = load i32, ptr %i.au, align 8            ; 3 uses
  %1 = lshr i32 %i.av, 2
  %2 = and i32 %1, 7
  %i.aw = and i32 %i.av, 32
  %.not.i55.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i55.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = and i32 %i.av, 64
  %.not.i.i56.i = icmp eq i32 %i.ax, 0
  %.0.v.i.i.i = select i1 %.not.i.i56.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.v, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %i.v, i64 56
  %.val4.i.i = load ptr, ptr %i.ay, align 8, !tbaa !29
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.t, %bb.s
  %.0.i57.i = phi ptr [ %.0.i.i.i, %bb.s ], [ %.val4.i.i, %bb.t ] ; 3 uses
  %i.az = getelementptr i8, ptr %i.v, i64 16
  %.val54.i = load i64, ptr %i.az, align 8, !tbaa !41 ; 2 uses
  %.not4068.i = icmp eq i64 %.val54.i, 0
  br i1 %.not4068.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_PyUnicode_DATA.exit.i
  %i.ba = add i64 %.val54.i, -1                   ; 3 uses
  switch i32 %2, label %PyUnicode_READ.exit.i [
    i32 1, label %PyUnicode_READ.exit.us.i
    i32 2, label %PyUnicode_READ.exit.us75.i
  ]

PyUnicode_READ.exit.us.i:                         ; preds = %.lr.ph.i, %bb.u
  %i.bb = phi i64 [ %i.bi, %bb.u ], [ %i.ba, %.lr.ph.i ] ; 2 uses
  %.03669.us.i = phi i64 [ %i.bh, %bb.u ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bc = getelementptr i8, ptr %.0.i57.i, i64 %.03669.us.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !29
  %i.be = zext i8 %i.bd to i32
  %i.bf = tail call fastcc i32 @parse_process_char(ptr noundef %0, ptr noundef %i.d, i32 noundef %i.be), !inline_history !51
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.split.us.i, label %bb.u

bb.u:                                             ; preds = %PyUnicode_READ.exit.us.i
  %i.bh = add nuw i64 %.03669.us.i, 1
  %i.bi = add i64 %i.bb, -1
  %.not40.us.i = icmp eq i64 %i.bb, 0
  br i1 %.not40.us.i, label %._crit_edge.i, label %PyUnicode_READ.exit.us.i, !llvm.loop !58

PyUnicode_READ.exit.us75.i:                       ; preds = %.lr.ph.i, %bb.v
  %i.bj = phi i64 [ %i.bq, %bb.v ], [ %i.ba, %.lr.ph.i ] ; 2 uses
  %.03669.us71.i = phi i64 [ %i.bp, %bb.v ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bk = getelementptr [2 x i8], ptr %.0.i57.i, i64 %.03669.us71.i
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !34
  %i.bm = zext i16 %i.bl to i32
  %i.bn = tail call fastcc i32 @parse_process_char(ptr noundef %0, ptr noundef %i.d, i32 noundef %i.bm), !inline_history !51
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %.split.us.i, label %bb.v

bb.v:                                             ; preds = %PyUnicode_READ.exit.us75.i
  %i.bp = add nuw i64 %.03669.us71.i, 1
  %i.bq = add i64 %i.bj, -1
  %.not40.us74.i = icmp eq i64 %i.bj, 0
  br i1 %.not40.us74.i, label %._crit_edge.i, label %PyUnicode_READ.exit.us75.i, !llvm.loop !58

bb.w:                                             ; preds = %PyUnicode_READ.exit.i
  %i.br = add nuw i64 %.03669.i, 1
  %i.bs = add i64 %i.bt, -1
  %.not40.i = icmp eq i64 %i.bt, 0
  br i1 %.not40.i, label %._crit_edge.i, label %PyUnicode_READ.exit.i, !llvm.loop !58

PyUnicode_READ.exit.i:                            ; preds = %.lr.ph.i, %bb.w
  %i.bt = phi i64 [ %i.bs, %bb.w ], [ %i.ba, %.lr.ph.i ] ; 2 uses
  %.03669.i = phi i64 [ %i.br, %bb.w ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %.0.i57.i, i64 %.03669.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !6
  %i.bw = tail call fastcc i32 @parse_process_char(ptr noundef %0, ptr noundef %i.d, i32 noundef %i.bv), !inline_history !51
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.split.us.i, label %bb.w

.split.us.i:                                      ; preds = %PyUnicode_READ.exit.us75.i, %PyUnicode_READ.exit.us.i, %PyUnicode_READ.exit.i
  %i.by = load i32, ptr %i.v, align 8, !tbaa !29  ; 2 uses
  %.not.i45.i = icmp sgt i32 %i.by, -1
  br i1 %.not.i45.i, label %bb.x, label %Reader_iternext_lock_held.exit

bb.x:                                             ; preds = %.split.us.i
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.v, align 8, !tbaa !29
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.y, label %Reader_iternext_lock_held.exit

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #5, !inline_history !51
  br label %Reader_iternext_lock_held.exit

._crit_edge.i:                                    ; preds = %bb.v, %bb.u, %bb.w, %_PyUnicode_DATA.exit.i
  %i.cb = load i32, ptr %i.v, align 8, !tbaa !29  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i.i, label %bb.z, label %Py_DECREF.exit.i

bb.z:                                             ; preds = %._crit_edge.i
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.v, align 8, !tbaa !29
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.aa, label %Py_DECREF.exit.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #5, !inline_history !51
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.aa, %bb.z, %._crit_edge.i
  %i.ce = tail call fastcc i32 @parse_process_char(ptr noundef %0, ptr noundef %i.d, i32 noundef -2), !inline_history !51
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %Reader_iternext_lock_held.exit, label %bb.ab

bb.ab:                                            ; preds = %Py_DECREF.exit.i
  %i.cg = load i32, ptr %i.q, align 8, !tbaa !53
  %.not41.i = icmp eq i32 %i.cg, 0
  br i1 %.not41.i, label %.loopexit.i, label %bb.g, !llvm.loop !60

.loopexit.i:                                      ; preds = %bb.ab, %bb.m
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !49
  store ptr null, ptr %i.h, align 8, !tbaa !49
  br label %Reader_iternext_lock_held.exit

Reader_iternext_lock_held.exit:                   ; preds = %Py_DECREF.exit.i, %bb.a, %bb.c, %Py_XDECREF.exit.i.i, %bb.h, %bb.j, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %.split.us.i, %bb.x, %bb.y, %.loopexit.i
  %.0.i = phi ptr [ null, %Py_XDECREF.exit.i.i ], [ null, %bb.y ], [ null, %bb.c ], [ null, %bb.h ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.j ], [ %i.ch, %.loopexit.i ], [ null, %bb.q ], [ null, %bb.o ], [ null, %bb.p ], [ null, %.split.us.i ], [ null, %bb.x ], [ null, %bb.a ], [ null, %Py_DECREF.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @Reader_clear(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !61
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not.i22 = icmp sgt i32 %i.c, -1
  br i1 %.not.i22, label %bb.c, label %Py_DECREF.exit23

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !29
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit23

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #5
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 4 uses
  %.not18 = icmp eq ptr %i.g, null
  br i1 %.not18, label %Py_DECREF.exit21, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit23
  store ptr null, ptr %i.f, align 8, !tbaa !10
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %.not.i20 = icmp sgt i32 %i.h, -1
  br i1 %.not.i20, label %bb.f, label %Py_DECREF.exit21

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !29
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit21

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #5
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit23
  %i.k = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 4 uses
  %.not19 = icmp eq ptr %i.l, null
  br i1 %.not19, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit21
  store ptr null, ptr %i.k, align 8, !tbaa !10
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !29
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @Reader_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #5
  %i.b = getelementptr i8, ptr %.val, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = tail call i32 %i.c(ptr noundef %0) #5    ; 0 uses
  %i.e = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMem_Free(ptr noundef nonnull %i.f) #5
  store ptr null, ptr %i.e, align 8, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @PyObject_GC_Del(ptr noundef nonnull %0) #5
  %i.g = load i32, ptr %.val, align 8, !tbaa !29  ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %.val, align 8, !tbaa !29
  %i.i = icmp eq i32 %i.h, 0
end_hunk_2
begin_hunk_3_@csv_writerow:bb.a
  br i1 %.not.i86.i, label %bb.m, label %Py_DECREF.exit87.i

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.r, align 8, !tbaa !29
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %Py_DECREF.exit87.sink.split.i, label %Py_DECREF.exit87.i

bb.n:                                             ; preds = %bb.k
  br i1 %i.ac, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ak = tail call fastcc i32 @join_append(ptr noundef %0, ptr noundef null, i32 noundef %.053.i) ; 3 uses
  %i.al = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !29 ; 2 uses
  %.not.i84.i = icmp sgt i32 %i.al, -1
  br i1 %.not.i84.i, label %bb.p, label %Py_DECREF.exit87.i

bb.p:                                             ; preds = %bb.o
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr @_Py_NoneStruct, align 8, !tbaa !29
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %Py_DECREF.exit87.sink.split.i, label %Py_DECREF.exit87.i

bb.q:                                             ; preds = %bb.n
  %i.ao = tail call ptr @PyObject_Str(ptr noundef nonnull %i.r) #5 ; 5 uses
  %i.ap = load i32, ptr %i.r, align 8, !tbaa !29  ; 2 uses
  %.not.i82.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i82.i, label %bb.r, label %Py_DECREF.exit83.i

bb.r:                                             ; preds = %bb.q
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.r, align 8, !tbaa !29
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %Py_DECREF.exit83.i

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #5
  br label %Py_DECREF.exit83.i

Py_DECREF.exit83.i:                               ; preds = %bb.s, %bb.r, %bb.q
  %.not71.i = icmp eq ptr %i.ao, null
  br i1 %.not71.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %Py_DECREF.exit83.i
  %i.as = load i32, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %.not.i80.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i80.i, label %bb.u, label %csv_writerow_lock_held.exit

bb.u:                                             ; preds = %bb.t
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.c, align 8, !tbaa !29
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.v, label %csv_writerow_lock_held.exit

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #5
  br label %csv_writerow_lock_held.exit

bb.w:                                             ; preds = %Py_DECREF.exit83.i
  %i.av = tail call fastcc i32 @join_append(ptr noundef %0, ptr noundef nonnull %i.ao, i32 noundef %.053.i) ; 3 uses
  %i.aw = load i32, ptr %i.ao, align 8, !tbaa !29 ; 2 uses
  %.not.i78.i = icmp sgt i32 %i.aw, -1
  br i1 %.not.i78.i, label %bb.x, label %Py_DECREF.exit87.i

bb.x:                                             ; preds = %bb.w
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.ao, align 8, !tbaa !29
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %Py_DECREF.exit87.sink.split.i, label %Py_DECREF.exit87.i

Py_DECREF.exit87.sink.split.i:                    ; preds = %bb.x, %bb.p, %bb.m
  %.sink.i = phi ptr [ @_Py_NoneStruct, %bb.p ], [ %i.r, %bb.m ], [ %i.ao, %bb.x ]
  %.256.ph.i = phi i32 [ %i.ak, %bb.p ], [ %i.ag, %bb.m ], [ %i.av, %bb.x ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #5
  br label %Py_DECREF.exit87.i

Py_DECREF.exit87.i:                               ; preds = %Py_DECREF.exit87.sink.split.i, %bb.x, %bb.w, %bb.p, %bb.o, %bb.m, %bb.l
  %.256.i = phi i32 [ %i.av, %bb.w ], [ %i.av, %bb.x ], [ %i.ag, %bb.l ], [ %i.ag, %bb.m ], [ %i.ak, %bb.o ], [ %i.ak, %bb.p ], [ %.256.ph.i, %Py_DECREF.exit87.sink.split.i ]
  %.not72.i = icmp eq i32 %.256.i, 0
  br i1 %.not72.i, label %bb.y, label %bb.e, !llvm.loop !75

bb.y:                                             ; preds = %Py_DECREF.exit87.i
  %i.az = load i32, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %.not.i76.i = icmp sgt i32 %i.az, -1
  br i1 %.not.i76.i, label %bb.z, label %csv_writerow_lock_held.exit

bb.z:                                             ; preds = %bb.y
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr %i.c, align 8, !tbaa !29
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.aa, label %csv_writerow_lock_held.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #5
  br label %csv_writerow_lock_held.exit

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %.060.lcssa.i = phi i1 [ false, %bb.d ], [ %i.ac, %bb.e ]
  %i.bc = load i32, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %.not.i74.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i74.i, label %bb.ab, label %Py_DECREF.exit75.i

bb.ab:                                            ; preds = %._crit_edge.i
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.c, align 8, !tbaa !29
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ac, label %Py_DECREF.exit75.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #5
  br label %Py_DECREF.exit75.i

Py_DECREF.exit75.i:                               ; preds = %bb.ac, %bb.ab, %._crit_edge.i
  %i.bf = tail call ptr @PyErr_Occurred() #5
  %.not66.i = icmp eq ptr %i.bf, null
  br i1 %.not66.i, label %bb.ad, label %csv_writerow_lock_held.exit

bb.ad:                                            ; preds = %Py_DECREF.exit75.i
  %i.bg = load i32, ptr %i.n, align 8, !tbaa !74  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.bi = load i64, ptr %i.m, align 8, !tbaa !73
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.bk = getelementptr i8, ptr %i.b, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !35 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 3
  br i1 %i.bm, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bn = and i32 %i.bl, -2
  %switch.i = icmp eq i32 %i.bn, 4
  %or.cond.i = and i1 %.060.lcssa.i, %switch.i
  br i1 %or.cond.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bo = getelementptr i8, ptr %0, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !71
  %i.bq = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bp, ptr noundef nonnull @.str.56) #5 ; 0 uses
  br label %csv_writerow_lock_held.exit

bb.ai:                                            ; preds = %bb.ag
  %i.br = add nsw i32 %i.bg, -1
  store i32 %i.br, ptr %i.n, align 8, !tbaa !74
  %i.bs = tail call fastcc i32 @join_append(ptr noundef nonnull %0, ptr noundef null, i32 noundef 1)
  %.not67.i = icmp eq i32 %i.bs, 0
  br i1 %.not67.i, label %csv_writerow_lock_held.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae, %bb.ad
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.bu = getelementptr i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !32 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %.val.i.i = load i64, ptr %i.bw, align 8, !tbaa !41 ; 22 uses
  %i.bx = icmp eq i64 %.val.i.i, -1
  br i1 %i.bx, label %csv_writerow_lock_held.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.by = load i64, ptr %i.m, align 8, !tbaa !73
  %i.bz = add i64 %i.by, %.val.i.i                ; 2 uses
  %i.ca = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !76
  %i.cc = icmp sgt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cd = sdiv i64 %i.bz, 32768
  %i.ce = shl nsw i64 %i.cd, 15
  %i.cf = add i64 %i.ce, 32768                    ; 3 uses
  %i.cg = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ch = icmp ugt i64 %i.cf, 2305843009213693951
  br i1 %i.ch, label %join_check_rec_size.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !72
  %i.cj = shl nuw nsw i64 %i.cf, 2
  %i.ck = tail call ptr @PyMem_Realloc(ptr noundef %i.ci, i64 noundef %i.cj) #5 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %join_check_rec_size.exit.i.i, label %.thread17.i.i.i

.thread17.i.i.i:                                  ; preds = %bb.am
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !72
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !76
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !68
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.pre.i.i, i64 40
  %.pre32.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !32
  br label %bb.an

join_check_rec_size.exit.i.i:                     ; preds = %bb.am, %bb.al
  %i.cm = tail call ptr @PyErr_NoMemory() #5      ; 0 uses
  br label %csv_writerow_lock_held.exit

bb.an:                                            ; preds = %.thread17.i.i.i, %bb.ak
  %i.cn = phi ptr [ %.pre32.i.i, %.thread17.i.i.i ], [ %i.bv, %bb.ak ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 32
  %i.cp = load i32, ptr %i.co, align 8            ; 3 uses
  %2 = lshr i32 %i.cp, 2
  %3 = and i32 %2, 7
  %i.cq = and i32 %i.cp, 32
  %.not.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cr = and i32 %i.cp, 64
  %.not.i.i.i.i = icmp eq i32 %i.cr, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.cn, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.ap:                                            ; preds = %bb.an
  %i.cs = getelementptr i8, ptr %i.cn, i64 56
  %.val4.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !29
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.ap, %bb.ao
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.ao ], [ %.val4.i.i.i, %bb.ap ] ; 17 uses
  %.0.i.i.i53 = ptrtoaddr ptr %.0.i.i.i to i64
  %i.ct = icmp sgt i64 %.val.i.i, 0
  %.pre33.i.i = load i64, ptr %i.m, align 8, !tbaa !73 ; 4 uses
  %4 = getelementptr i8, ptr %0, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !72       ; 4 uses
  %6 = ptrtoaddr ptr %5 to i64
  br i1 %i.ct, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %_PyUnicode_DATA.exit.i.i
  %i.cu = getelementptr [4 x i8], ptr %5, i64 %.pre33.i.i ; 15 uses
  switch i32 %3, label %PyUnicode_READ.exit.i.i.preheader [
    i32 1, label %PyUnicode_READ.exit.us.i.i.preheader
    i32 2, label %PyUnicode_READ.exit.us26.i.i.preheader
  ]

PyUnicode_READ.exit.us26.i.i.preheader:           ; preds = %.lr.ph.i.i
  %min.iters.check = icmp ult i64 %.val.i.i, 8
  br i1 %min.iters.check, label %PyUnicode_READ.exit.us26.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %PyUnicode_READ.exit.us26.i.i.preheader
  %n.vec = and i64 %.val.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %wide.load = load <4 x i16>, ptr %i.cv, align 2, !tbaa !34
  %wide.load37 = load <4 x i16>, ptr %i.cw, align 2, !tbaa !34
  %i.cx = zext <4 x i16> %wide.load to <4 x i32>
  %i.cy = zext <4 x i16> %wide.load37 to <4 x i32>
  %i.cz = getelementptr [4 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store <4 x i32> %i.cx, ptr %i.cz, align 4, !tbaa !6
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val.i.i, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %PyUnicode_READ.exit.us26.i.i.preheader70

PyUnicode_READ.exit.us26.i.i.preheader70:         ; preds = %PyUnicode_READ.exit.us26.i.i.preheader, %middle.block
  %.01823.us25.i.i.ph = phi i64 [ 0, %PyUnicode_READ.exit.us26.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %PyUnicode_READ.exit.us26.i.i

PyUnicode_READ.exit.us.i.i.preheader:             ; preds = %.lr.ph.i.i
  %min.iters.check40 = icmp ult i64 %.val.i.i, 16
  br i1 %min.iters.check40, label %PyUnicode_READ.exit.us.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %PyUnicode_READ.exit.us.i.i.preheader
  %i.dc = add i64 %.val.i.i, %.pre33.i.i
  %i.dd = shl i64 %i.dc, 2
  %scevgep = getelementptr i8, ptr %5, i64 %i.dd
  %scevgep38 = getelementptr i8, ptr %.0.i.i.i, i64 %.val.i.i
  %bound0 = icmp ult ptr %i.cu, %scevgep38
  %bound1 = icmp ult ptr %.0.i.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %PyUnicode_READ.exit.us.i.i.preheader68, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec43 = and i64 %.val.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph41
  %index45 = phi i64 [ 0, %vector.ph41 ], [ %index.next48, %vector.body44 ] ; 3 uses
  %i.de = getelementptr i8, ptr %.0.i.i.i, i64 %index45 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %wide.load46 = load <4 x i8>, ptr %i.de, align 1, !tbaa !29, !alias.scope !80
  %wide.load47 = load <4 x i8>, ptr %i.df, align 1, !tbaa !29, !alias.scope !80
  %i.dg = zext <4 x i8> %wide.load46 to <4 x i32>
  %i.dh = zext <4 x i8> %wide.load47 to <4 x i32>
  %i.di = getelementptr [4 x i8], ptr %i.cu, i64 %index45 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store <4 x i32> %i.dg, ptr %i.di, align 4, !tbaa !6, !alias.scope !83, !noalias !80
  store <4 x i32> %i.dh, ptr %i.dj, align 4, !tbaa !6, !alias.scope !83, !noalias !80
  %index.next48 = add nuw i64 %index45, 8         ; 2 uses
  %i.dk = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.dk, label %middle.block49, label %vector.body44, !llvm.loop !85

middle.block49:                                   ; preds = %vector.body44
  %cmp.n50 = icmp eq i64 %.val.i.i, %n.vec43
  br i1 %cmp.n50, label %.loopexit.i, label %PyUnicode_READ.exit.us.i.i.preheader68

PyUnicode_READ.exit.us.i.i.preheader68:           ; preds = %vector.memcheck, %PyUnicode_READ.exit.us.i.i.preheader, %middle.block49
  %.01823.us.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %PyUnicode_READ.exit.us.i.i.preheader ], [ %n.vec43, %middle.block49 ] ; 3 uses
  %xtraiter = and i64 %.val.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %PyUnicode_READ.exit.us.i.i.prol.loopexit, label %PyUnicode_READ.exit.us.i.i.prol

PyUnicode_READ.exit.us.i.i.prol:                  ; preds = %PyUnicode_READ.exit.us.i.i.preheader68, %PyUnicode_READ.exit.us.i.i.prol
  %.01823.us.i.i.prol = phi i64 [ %i.dp, %PyUnicode_READ.exit.us.i.i.prol ], [ %.01823.us.i.i.ph, %PyUnicode_READ.exit.us.i.i.preheader68 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %PyUnicode_READ.exit.us.i.i.prol ], [ 0, %PyUnicode_READ.exit.us.i.i.preheader68 ]
  %i.dl = getelementptr i8, ptr %.0.i.i.i, i64 %.01823.us.i.i.prol
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !29
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr [4 x i8], ptr %i.cu, i64 %.01823.us.i.i.prol
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !6
  %i.dp = add nuw nsw i64 %.01823.us.i.i.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %PyUnicode_READ.exit.us.i.i.prol.loopexit, label %PyUnicode_READ.exit.us.i.i.prol, !llvm.loop !86

PyUnicode_READ.exit.us.i.i.prol.loopexit:         ; preds = %PyUnicode_READ.exit.us.i.i.prol, %PyUnicode_READ.exit.us.i.i.preheader68
  %.01823.us.i.i.unr = phi i64 [ %.01823.us.i.i.ph, %PyUnicode_READ.exit.us.i.i.preheader68 ], [ %i.dp, %PyUnicode_READ.exit.us.i.i.prol ]
  %i.dq = sub nsw i64 %.01823.us.i.i.ph, %.val.i.i
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %.loopexit.i, label %PyUnicode_READ.exit.us.i.i

PyUnicode_READ.exit.i.i.preheader:                ; preds = %.lr.ph.i.i
  %min.iters.check55 = icmp ult i64 %.val.i.i, 12
  br i1 %min.iters.check55, label %PyUnicode_READ.exit.i.i.preheader67, label %vector.memcheck52

vector.memcheck52:                                ; preds = %PyUnicode_READ.exit.i.i.preheader
  %i.ds = shl i64 %.pre33.i.i, 2
  %i.dt = add i64 %i.ds, %6
  %i.du = sub i64 %i.dt, %.0.i.i.i53
  %diff.check = icmp ult i64 %i.du, 32
  br i1 %diff.check, label %PyUnicode_READ.exit.i.i.preheader67, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck52
  %n.vec58 = and i64 %.val.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next63, %vector.body59 ] ; 3 uses
  %i.dv = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %index60 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  %wide.load61 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !6
  %wide.load62 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !6
  %i.dx = getelementptr [4 x i8], ptr %i.cu, i64 %index60 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  store <4 x i32> %wide.load61, ptr %i.dx, align 4, !tbaa !6
  store <4 x i32> %wide.load62, ptr %i.dy, align 4, !tbaa !6
  %index.next63 = add nuw i64 %index60, 8         ; 2 uses
  %i.dz = icmp eq i64 %index.next63, %n.vec58
  br i1 %i.dz, label %middle.block64, label %vector.body59, !llvm.loop !88

middle.block64:                                   ; preds = %vector.body59
  %cmp.n65 = icmp eq i64 %.val.i.i, %n.vec58
  br i1 %cmp.n65, label %.loopexit.i, label %PyUnicode_READ.exit.i.i.preheader67

PyUnicode_READ.exit.i.i.preheader67:              ; preds = %vector.memcheck52, %PyUnicode_READ.exit.i.i.preheader, %middle.block64
  %.01823.i.i.ph = phi i64 [ 0, %vector.memcheck52 ], [ 0, %PyUnicode_READ.exit.i.i.preheader ], [ %n.vec58, %middle.block64 ] ; 3 uses
  %xtraiter74 = and i64 %.val.i.i, 3              ; 2 uses
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %PyUnicode_READ.exit.i.i.prol.loopexit, label %PyUnicode_READ.exit.i.i.prol

PyUnicode_READ.exit.i.i.prol:                     ; preds = %PyUnicode_READ.exit.i.i.preheader67, %PyUnicode_READ.exit.i.i.prol
  %.01823.i.i.prol = phi i64 [ %i.ed, %PyUnicode_READ.exit.i.i.prol ], [ %.01823.i.i.ph, %PyUnicode_READ.exit.i.i.preheader67 ] ; 3 uses
  %prol.iter76 = phi i64 [ %prol.iter76.next, %PyUnicode_READ.exit.i.i.prol ], [ 0, %PyUnicode_READ.exit.i.i.preheader67 ]
  %i.ea = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %.01823.i.i.prol
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !6
  %i.ec = getelementptr [4 x i8], ptr %i.cu, i64 %.01823.i.i.prol
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !6
  %i.ed = add nuw nsw i64 %.01823.i.i.prol, 1     ; 2 uses
  %prol.iter76.next = add i64 %prol.iter76, 1     ; 2 uses
  %prol.iter76.cmp.not = icmp eq i64 %prol.iter76.next, %xtraiter74
  br i1 %prol.iter76.cmp.not, label %PyUnicode_READ.exit.i.i.prol.loopexit, label %PyUnicode_READ.exit.i.i.prol, !llvm.loop !89

PyUnicode_READ.exit.i.i.prol.loopexit:            ; preds = %PyUnicode_READ.exit.i.i.prol, %PyUnicode_READ.exit.i.i.preheader67
  %.01823.i.i.unr = phi i64 [ %.01823.i.i.ph, %PyUnicode_READ.exit.i.i.preheader67 ], [ %i.ed, %PyUnicode_READ.exit.i.i.prol ]
  %i.ee = sub nsw i64 %.01823.i.i.ph, %.val.i.i
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %.loopexit.i, label %PyUnicode_READ.exit.i.i

PyUnicode_READ.exit.us.i.i:                       ; preds = %PyUnicode_READ.exit.us.i.i.prol.loopexit, %PyUnicode_READ.exit.us.i.i
  %.01823.us.i.i = phi i64 [ %i.ez, %PyUnicode_READ.exit.us.i.i ], [ %.01823.us.i.i.unr, %PyUnicode_READ.exit.us.i.i.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr i8, ptr %.0.i.i.i, i64 %.01823.us.i.i
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !29
  %i.ei = zext i8 %i.eh to i32
  %i.ej = getelementptr [4 x i8], ptr %i.cu, i64 %.01823.us.i.i
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !6
  %i.ek = add nuw nsw i64 %.01823.us.i.i, 1       ; 2 uses
  %i.el = getelementptr i8, ptr %.0.i.i.i, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !29
  %i.en = zext i8 %i.em to i32
  %i.eo = getelementptr [4 x i8], ptr %i.cu, i64 %i.ek
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !6
  %i.ep = add nuw nsw i64 %.01823.us.i.i, 2       ; 2 uses
  %i.eq = getelementptr i8, ptr %.0.i.i.i, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !29
  %i.es = zext i8 %i.er to i32
  %i.et = getelementptr [4 x i8], ptr %i.cu, i64 %i.ep
  store i32 %i.es, ptr %i.et, align 4, !tbaa !6
  %i.eu = add nuw nsw i64 %.01823.us.i.i, 3       ; 2 uses
  %i.ev = getelementptr i8, ptr %.0.i.i.i, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !29
  %i.ex = zext i8 %i.ew to i32
  %i.ey = getelementptr [4 x i8], ptr %i.cu, i64 %i.eu
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !6
  %i.ez = add nuw nsw i64 %.01823.us.i.i, 4       ; 2 uses
  %exitcond30.not.i.i.3 = icmp eq i64 %i.ez, %.val.i.i
  br i1 %exitcond30.not.i.i.3, label %.loopexit.i, label %PyUnicode_READ.exit.us.i.i, !llvm.loop !90

PyUnicode_READ.exit.us26.i.i:                     ; preds = %PyUnicode_READ.exit.us26.i.i.preheader70, %PyUnicode_READ.exit.us26.i.i
  %.01823.us25.i.i = phi i64 [ %i.fe, %PyUnicode_READ.exit.us26.i.i ], [ %.01823.us25.i.i.ph, %PyUnicode_READ.exit.us26.i.i.preheader70 ] ; 3 uses
  %i.fa = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %.01823.us25.i.i
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !34
  %i.fc = zext i16 %i.fb to i32
  %i.fd = getelementptr [4 x i8], ptr %i.cu, i64 %.01823.us25.i.i
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !6
  %i.fe = add nuw nsw i64 %.01823.us25.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fe, %.val.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %PyUnicode_READ.exit.us26.i.i, !llvm.loop !91

PyUnicode_READ.exit.i.i:                          ; preds = %PyUnicode_READ.exit.i.i.prol.loopexit, %PyUnicode_READ.exit.i.i
  %.01823.i.i = phi i64 [ %i.fu, %PyUnicode_READ.exit.i.i ], [ %.01823.i.i.unr, %PyUnicode_READ.exit.i.i.prol.loopexit ] ; 6 uses
  %i.ff = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %.01823.i.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !6
  %i.fh = getelementptr [4 x i8], ptr %i.cu, i64 %.01823.i.i
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !6
  %i.fi = add nuw nsw i64 %.01823.i.i, 1          ; 2 uses
  %i.fj = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !6
  %i.fl = getelementptr [4 x i8], ptr %i.cu, i64 %i.fi
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !6
  %i.fm = add nuw nsw i64 %.01823.i.i, 2          ; 2 uses
  %i.fn = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !6
  %i.fp = getelementptr [4 x i8], ptr %i.cu, i64 %i.fm
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !6
  %i.fq = add nuw nsw i64 %.01823.i.i, 3          ; 2 uses
  %i.fr = getelementptr [4 x i8], ptr %.0.i.i.i, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !6
  %i.ft = getelementptr [4 x i8], ptr %i.cu, i64 %i.fq
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !6
  %i.fu = add nuw nsw i64 %.01823.i.i, 4          ; 2 uses
  %exitcond31.not.i.i.3 = icmp eq i64 %i.fu, %.val.i.i
  br i1 %exitcond31.not.i.i.3, label %.loopexit.i, label %PyUnicode_READ.exit.i.i, !llvm.loop !92

.loopexit.i:                                      ; preds = %PyUnicode_READ.exit.us26.i.i, %PyUnicode_READ.exit.us.i.i.prol.loopexit, %PyUnicode_READ.exit.us.i.i, %PyUnicode_READ.exit.i.i.prol.loopexit, %PyUnicode_READ.exit.i.i, %middle.block, %middle.block49, %middle.block64, %_PyUnicode_DATA.exit.i.i
  %i.fv = add i64 %.pre33.i.i, %.val.i.i          ; 2 uses
  store i64 %i.fv, ptr %i.m, align 8, !tbaa !73
  %i.fw = tail call ptr @PyUnicode_FromKindAndData(i32 noundef 4, ptr noundef %5, i64 noundef %i.fv) #5 ; 5 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %csv_writerow_lock_held.exit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit.i
  %i.fy = getelementptr i8, ptr %0, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !70
  %i.ga = tail call ptr @PyObject_CallOneArg(ptr noundef %i.fz, ptr noundef nonnull %i.fw) #5 ; 3 uses
  %i.gb = load i32, ptr %i.fw, align 8, !tbaa !29 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.gb, -1
  br i1 %.not.i.i, label %bb.ar, label %csv_writerow_lock_held.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gc = add nsw i32 %i.gb, -1                   ; 2 uses
  store i32 %i.gc, ptr %i.fw, align 8, !tbaa !29
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.as, label %csv_writerow_lock_held.exit

bb.as:                                            ; preds = %bb.ar
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.fw) #5
  br label %csv_writerow_lock_held.exit

csv_writerow_lock_held.exit:                      ; preds = %bb.b, %bb.c, %bb.t, %bb.u, %bb.v, %bb.y, %bb.z, %bb.aa, %Py_DECREF.exit75.i, %bb.ah, %bb.ai, %bb.aj, %join_check_rec_size.exit.i.i, %.loopexit.i, %bb.aq, %bb.ar, %bb.as
  %.4.i = phi ptr [ null, %Py_DECREF.exit75.i ], [ null, %.loopexit.i ], [ null, %bb.b ], [ null, %bb.ah ], [ null, %bb.t ], [ null, %bb.aa ], [ null, %bb.ai ], [ null, %bb.c ], [ %i.ga, %bb.as ], [ null, %bb.y ], [ null, %bb.z ], [ %i.ga, %bb.aq ], [ %i.ga, %bb.ar ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.aj ], [ null, %join_check_rec_size.exit.i.i ]
  ret ptr %.4.i
}

; Function Attrs: nounwind uwtable
define internal ptr @csv_writerows(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @PyObject_GetIter(ptr noundef %1) #5 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = tail call ptr @PyIter_Next(ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not24 = icmp eq ptr %i.c, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %Py_DECREF.exit16
  %i.d = phi ptr [ %i.o, %Py_DECREF.exit16 ], [ %i.c, %.preheader ] ; 4 uses
  %i.e = tail call ptr @csv_writerow(ptr noundef %0, ptr noundef nonnull %i.d) ; 4 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %.not.i19 = icmp sgt i32 %i.f, -1
  br i1 %.not.i19, label %bb.b, label %Py_DECREF.exit20

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !29
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %Py_DECREF.exit20

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #5
  br label %Py_DECREF.exit20

Py_DECREF.exit20:                                 ; preds = %.lr.ph, %bb.b, %bb.c
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.d, label %bb.g

bb.d:                                             ; preds = %Py_DECREF.exit20
  %i.i = load i32, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i17 = icmp sgt i32 %i.i, -1
  br i1 %.not.i17, label %bb.e, label %Py_DECREF.exit18

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !29
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %Py_DECREF.exit18

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit18

bb.g:                                             ; preds = %Py_DECREF.exit20
  %i.l = load i32, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.not.i15 = icmp sgt i32 %i.l, -1
  br i1 %.not.i15, label %bb.h, label %Py_DECREF.exit16

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !29
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %Py_DECREF.exit16

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #5
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %bb.g, %bb.h, %bb.i
  %i.o = tail call ptr @PyIter_Next(ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %Py_DECREF.exit16, %.preheader
  %i.p = load i32, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %._crit_edge
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.a, align 8, !tbaa !29
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %._crit_edge, %bb.j, %bb.k
  %i.s = tail call ptr @PyErr_Occurred() #5
  %.not13 = icmp eq ptr %i.s, null
  %_Py_NoneStruct. = select i1 %.not13, ptr @_Py_NoneStruct, ptr null
  br label %Py_DECREF.exit18

Py_DECREF.exit18:                                 ; preds = %bb.f, %bb.e, %bb.d, %Py_DECREF.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %_Py_NoneStruct., %Py_DECREF.exit ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ]
  ret ptr %.0
}

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #1

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #1

declare i32 @PyNumber_Check(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @join_append(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !6
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i32 %i.e, 2
  %i.g = and i32 %i.f, 7                          ; 2 uses
  %i.h = and i32 %i.e, 32
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.e, 64
  %.not.i.i = icmp eq i32 %i.i, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 56
  %.val4.i = load ptr, ptr %i.j, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.c ], [ %.val4.i, %bb.d ] ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %.not32 = icmp eq i64 %.val, 0
  br i1 %.not32, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.a, %bb.e
  %.02742 = phi ptr [ %.0.i, %bb.e ], [ null, %bb.a ] ; 3 uses
  %.02840 = phi i32 [ %i.g, %bb.e ], [ -1, %bb.a ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.c, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !37
  %i.n = icmp eq i32 %i.m, 32
  br i1 %i.n, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.thread
  %i.o = getelementptr i8, ptr %i.c, i64 17
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39
  %.not33 = icmp eq i8 %i.p, 0
  br i1 %.not33, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.c, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !35   ; 2 uses
  %i.s = icmp eq i32 %i.r, 3
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = and i32 %i.r, -2
  %switch = icmp eq i32 %i.t, 4
  %or.cond = and i1 %.not, %switch
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = getelementptr i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71
  %i.w = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.57) #5 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  store i32 1, ptr %i.a, align 4, !tbaa !6
  br label %bb.k

end_hunk_3
