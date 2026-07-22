inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@unicode_from_format:bb.a
  %i.be = getelementptr i8, ptr %.037, i64 2
  br label %unicode_fromformat_arg.exit

thread-pre-split.i:                               ; preds = %bb.p, %bb.o, %.preheader.i46
  %.sink.i = phi i32 [ 8, %bb.p ], [ 16, %bb.o ], [ 1, %.preheader.i46 ]
  %i.bf = or i32 %.sink.i, %.0310.i
  %.pr.i = load i8, ptr %i.bh, align 1, !tbaa !205
  br label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.h, %thread-pre-split.i
  %i.bg = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.an, %bb.h ] ; 5 uses
  %.0310.i = phi i32 [ %i.bf, %thread-pre-split.i ], [ 0, %bb.h ] ; 5 uses
  %.0301.i = phi ptr [ %i.bh, %thread-pre-split.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.bh = getelementptr i8, ptr %.0301.i, i64 1   ; 7 uses
  switch i8 %i.bg, label %bb.q [
    i8 45, label %thread-pre-split.i
    i8 48, label %bb.o
    i8 35, label %bb.p
  ]

bb.o:                                             ; preds = %.preheader.i46
  br label %thread-pre-split.i

bb.p:                                             ; preds = %.preheader.i46
  br label %thread-pre-split.i

bb.q:                                             ; preds = %.preheader.i46
  %i.bi = sext i8 %i.bg to i64
  %i.bj = icmp eq i8 %i.bg, 42
  br i1 %i.bj, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bk = load i32, ptr %3, align 16              ; 3 uses
  %i.bl = icmp ult i32 %i.bk, 41
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.t, align 16
  %i.bn = zext nneg i32 %i.bk to i64
  %i.bo = getelementptr i8, ptr %i.bm, i64 %i.bn
  %i.bp = add nuw nsw i32 %i.bk, 8
  store i32 %i.bp, ptr %3, align 16
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.br, ptr %i.s, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bs = phi ptr [ %i.bo, %bb.s ], [ %i.bq, %bb.t ]
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7  ; 2 uses
  %i.bu = call i32 @llvm.abs.i32(i32 %i.bt, i1 false)
  %.0313.i = zext i32 %i.bu to i64
  %i.bv = lshr i32 %i.bt, 31
  %.1311.i = or i32 %i.bv, %.0310.i
  %.pre.i = load i8, ptr %i.bh, align 1, !tbaa !205
  br label %.loopexit.i

bb.v:                                             ; preds = %bb.q
  %i.bw = zext i8 %i.bg to i64
  %i.bx = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = and i32 %i.by, 4
  %.not.i47 = icmp eq i32 %i.bz, 0
  br i1 %.not.i47, label %.loopexit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = add nsw i64 %i.bi, -48                  ; 2 uses
  %i.cb = load i8, ptr %i.bh, align 1, !tbaa !205 ; 3 uses
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = and i32 %i.ce, 4
  %.not394487.i = icmp eq i32 %i.cf, 0
  br i1 %.not394487.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %bb.y
  %i.cg = phi i8 [ %i.cp, %bb.y ], [ %i.cb, %bb.w ]
  %.1302489.i = phi ptr [ %.1302.i, %bb.y ], [ %i.bh, %bb.w ]
  %.1314488.i = phi i64 [ %i.co, %bb.y ], [ %i.ca, %bb.w ] ; 2 uses
  %i.ch = sext i8 %i.cg to i64                    ; 2 uses
  %i.ci = sub i64 -9223372036854775761, %i.ch
  %i.cj = sdiv i64 %i.ci, 10
  %i.ck = icmp sgt i64 %.1314488.i, %i.cj
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i
  %i.cl = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.cl, ptr noundef nonnull @.str.128) #33
  br label %.thread56

bb.y:                                             ; preds = %.lr.ph.i
  %i.cm = mul i64 %.1314488.i, 10
  %i.cn = add nsw i64 %i.ch, -48
  %i.co = add i64 %i.cn, %i.cm                    ; 2 uses
  %.1302.i = getelementptr i8, ptr %.1302489.i, i64 1 ; 3 uses
  %i.cp = load i8, ptr %.1302.i, align 1, !tbaa !205 ; 3 uses
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = and i32 %i.cs, 4
  %.not394.i = icmp eq i32 %i.ct, 0
  br i1 %.not394.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !349

.loopexit.i:                                      ; preds = %bb.y, %bb.w, %bb.v, %bb.u
  %i.cu = phi i8 [ %.pre.i, %bb.u ], [ %i.bg, %bb.v ], [ %i.cb, %bb.w ], [ %i.cp, %bb.y ] ; 2 uses
  %.2315.i = phi i64 [ %.0313.i, %bb.u ], [ -1, %bb.v ], [ %i.ca, %bb.w ], [ %i.co, %bb.y ] ; 13 uses
  %.2312.i = phi i32 [ %.1311.i, %bb.u ], [ %.0310.i, %bb.v ], [ %.0310.i, %bb.w ], [ %.0310.i, %bb.y ] ; 15 uses
  %.2303.i = phi ptr [ %i.bh, %bb.u ], [ %.0301.i, %bb.v ], [ %i.bh, %bb.w ], [ %.1302.i, %bb.y ] ; 4 uses
  %i.cv = icmp eq i8 %i.cu, 46
  br i1 %i.cv, label %bb.z, label %thread-pre-split461.i

bb.z:                                             ; preds = %.loopexit.i
  %i.cw = getelementptr i8, ptr %.2303.i, i64 1   ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !205 ; 4 uses
  %i.cy = sext i8 %i.cx to i64
  %i.cz = icmp eq i8 %i.cx, 42
  br i1 %i.cz, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.da = load i32, ptr %3, align 16              ; 3 uses
  %i.db = icmp ult i32 %i.da, 41
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.t, align 16
  %i.dd = zext nneg i32 %i.da to i64
  %i.de = getelementptr i8, ptr %i.dc, i64 %i.dd
  %i.df = add nuw nsw i32 %i.da, 8
  store i32 %i.df, ptr %3, align 16
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dg = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  store ptr %i.dh, ptr %i.s, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.di = phi ptr [ %i.de, %bb.ab ], [ %i.dg, %bb.ac ]
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !7  ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 0
  %narrow.i = select i1 %i.dk, i32 -2, i32 %i.dj
  %spec.store.select.i = sext i32 %narrow.i to i64
  %i.dl = getelementptr i8, ptr %.2303.i, i64 2   ; 2 uses
  %.pr462.pre.i = load i8, ptr %i.dl, align 1, !tbaa !205
  br label %thread-pre-split461.i

bb.ae:                                            ; preds = %bb.z
  %i.dm = zext i8 %i.cx to i64
  %i.dn = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !7
  %i.dp = and i32 %i.do, 4
  %.not395.i = icmp eq i32 %i.dp, 0
  br i1 %.not395.i, label %thread-pre-split461.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = add nsw i64 %i.cy, -48                  ; 2 uses
  %i.dr = getelementptr i8, ptr %.2303.i, i64 2   ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !205 ; 3 uses
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7
  %i.dw = and i32 %i.dv, 4
  %.not396491.i = icmp eq i32 %i.dw, 0
  br i1 %.not396491.i, label %thread-pre-split461.i, label %.lr.ph494.i

.lr.ph494.i:                                      ; preds = %bb.af, %bb.ah
  %i.dx = phi i8 [ %i.eh, %bb.ah ], [ %i.ds, %bb.af ]
  %.3304493.i = phi ptr [ %i.eg, %bb.ah ], [ %i.dr, %bb.af ]
  %.0316492.i = phi i64 [ %i.ef, %bb.ah ], [ %i.dq, %bb.af ] ; 2 uses
  %i.dy = sext i8 %i.dx to i64                    ; 2 uses
  %i.dz = sub i64 -9223372036854775761, %i.dy
  %i.ea = sdiv i64 %i.dz, 10
  %i.eb = icmp sgt i64 %.0316492.i, %i.ea
  br i1 %i.eb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph494.i
  %i.ec = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.ec, ptr noundef nonnull @.str.129) #33
  br label %.thread56

bb.ah:                                            ; preds = %.lr.ph494.i
  %i.ed = mul i64 %.0316492.i, 10
  %i.ee = add nsw i64 %i.dy, -48
  %i.ef = add i64 %i.ee, %i.ed                    ; 2 uses
  %i.eg = getelementptr i8, ptr %.3304493.i, i64 1 ; 3 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !205 ; 3 uses
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7
  %i.el = and i32 %i.ek, 4
  %.not396.i = icmp eq i32 %i.el, 0
  br i1 %.not396.i, label %thread-pre-split461.i, label %.lr.ph494.i, !llvm.loop !350

thread-pre-split461.i:                            ; preds = %bb.ah, %bb.af, %bb.ae, %bb.ad, %.loopexit.i
  %i.em = phi i8 [ %i.cu, %.loopexit.i ], [ %i.cx, %bb.ae ], [ %.pr462.pre.i, %bb.ad ], [ %i.ds, %bb.af ], [ %i.eh, %bb.ah ]
  %.1317.i = phi i64 [ -1, %.loopexit.i ], [ -1, %bb.ae ], [ %spec.store.select.i, %bb.ad ], [ %i.dq, %bb.af ], [ %i.ef, %bb.ah ] ; 13 uses
  %.4305.i = phi ptr [ %.2303.i, %.loopexit.i ], [ %i.cw, %bb.ae ], [ %i.dl, %bb.ad ], [ %i.dr, %bb.af ], [ %i.eg, %bb.ah ] ; 25 uses
  switch i8 %i.em, label %bb.ak [
    i8 108, label %bb.ai
    i8 122, label %bb.al
    i8 116, label %bb.am
    i8 106, label %bb.an
  ]

bb.ai:                                            ; preds = %thread-pre-split461.i
  %i.en = getelementptr i8, ptr %.4305.i, i64 1   ; 6 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !205 ; 2 uses
  switch i8 %i.eo, label %bb.ao [
    i8 108, label %bb.aj
    i8 0, label %.thread567.i.jt1
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ep = getelementptr i8, ptr %.4305.i, i64 2   ; 4 uses
  %.pr464.i.jt2 = load i8, ptr %i.ep, align 1, !tbaa !205 ; 2 uses
  %.not397.i.jt2 = icmp eq i8 %.pr464.i.jt2, 0
  br i1 %.not397.i.jt2, label %.thread567.i.jt1, label %bb.ap

bb.ak:                                            ; preds = %thread-pre-split461.i
  %.pr464.i.jt0 = load i8, ptr %.4305.i, align 1, !tbaa !205 ; 2 uses
  %.not397.i.jt0 = icmp eq i8 %.pr464.i.jt0, 0
  br i1 %.not397.i.jt0, label %.thread567.i.jt1, label %bb.aq

bb.al:                                            ; preds = %thread-pre-split461.i
  %i.eq = getelementptr i8, ptr %.4305.i, i64 1   ; 4 uses
  %.pr464.i.jt3 = load i8, ptr %i.eq, align 1, !tbaa !205 ; 2 uses
  %.not397.i.jt3 = icmp eq i8 %.pr464.i.jt3, 0
  br i1 %.not397.i.jt3, label %.thread567.i.jt1, label %bb.ar

bb.am:                                            ; preds = %thread-pre-split461.i
  %i.er = getelementptr i8, ptr %.4305.i, i64 1   ; 4 uses
  %.pr464.i.jt4 = load i8, ptr %i.er, align 1, !tbaa !205 ; 2 uses
  %.not397.i.jt4 = icmp eq i8 %.pr464.i.jt4, 0
  br i1 %.not397.i.jt4, label %.thread567.i.jt1, label %bb.as

bb.an:                                            ; preds = %thread-pre-split461.i
  %i.es = getelementptr i8, ptr %.4305.i, i64 1   ; 4 uses
  %.pr464.i.jt5 = load i8, ptr %i.es, align 1, !tbaa !205 ; 2 uses
  %.not397.i.jt5 = icmp eq i8 %.pr464.i.jt5, 0
  br i1 %.not397.i.jt5, label %.thread567.i.jt1, label %bb.at

bb.ao:                                            ; preds = %bb.ai
  %i.et = getelementptr i8, ptr %.4305.i, i64 2
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !205
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.av, label %bb.au

bb.ap:                                            ; preds = %bb.aj
  %i.ew = getelementptr i8, ptr %.4305.i, i64 3
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !205
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %bb.aw, label %bb.au

bb.aq:                                            ; preds = %bb.ak
  %i.ez = getelementptr i8, ptr %.4305.i, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !205
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %bb.ax, label %bb.au

bb.ar:                                            ; preds = %bb.al
  %i.fc = getelementptr i8, ptr %.4305.i, i64 2
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !205
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %bb.ay, label %bb.au

bb.as:                                            ; preds = %bb.am
  %i.ff = getelementptr i8, ptr %.4305.i, i64 2
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !205
  %i.fh = icmp eq i8 %i.fg, 0
  br i1 %i.fh, label %bb.az, label %bb.au

bb.at:                                            ; preds = %bb.an
  %i.fi = getelementptr i8, ptr %.4305.i, i64 2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !205
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at
  %.5306.i145 = phi ptr [ %i.en, %bb.ao ], [ %i.ep, %bb.ap ], [ %.4305.i, %bb.aq ], [ %i.eq, %bb.ar ], [ %i.er, %bb.as ], [ %i.es, %bb.at ] ; 10 uses
  %.0332.i141 = phi i32 [ 1, %bb.ao ], [ 2, %bb.ap ], [ 0, %bb.aq ], [ 3, %bb.ar ], [ 4, %bb.as ], [ 5, %bb.at ] ; 10 uses
  %.not398.i135 = phi i1 [ false, %bb.ao ], [ false, %bb.ap ], [ true, %bb.aq ], [ false, %bb.ar ], [ false, %bb.as ], [ false, %bb.at ] ; 10 uses
  %i.fl = phi i1 [ true, %bb.ao ], [ true, %bb.ap ], [ false, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.at ] ; 2 uses
  %or.cond16.i133 = phi i1 [ false, %bb.ao ], [ true, %bb.ap ], [ false, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ true, %bb.at ]
  %i.fm = phi i8 [ %i.eo, %bb.ao ], [ %.pr464.i.jt2, %bb.ap ], [ %.pr464.i.jt0, %bb.aq ], [ %.pr464.i.jt3, %bb.ar ], [ %.pr464.i.jt4, %bb.as ], [ %.pr464.i.jt5, %bb.at ] ; 11 uses
  switch i8 %i.fm, label %.thread567.i [
    i8 100, label %.thread189
    i8 105, label %.thread189
    i8 111, label %.thread189
    i8 117, label %.thread189
    i8 120, label %.thread189
    i8 88, label %.thread189
    i8 99, label %bb.bb
    i8 112, label %bb.bb
    i8 115, label %bb.bc
    i8 86, label %bb.bc
  ]

bb.av:                                            ; preds = %bb.ao
  store i8 0, ptr %i.h, align 4, !tbaa !347
  %.pre504.i.jt1 = load i8, ptr %i.en, align 1, !tbaa !205 ; 4 uses
  switch i8 %.pre504.i.jt1, label %.thread567.i.jt1 [
    i8 115, label %.thread189
    i8 86, label %.thread189
    i8 100, label %bb.bo
    i8 105, label %bb.bo
    i8 111, label %bb.bo
    i8 117, label %bb.bo
    i8 120, label %bb.bo
    i8 88, label %bb.bo
  ]

bb.aw:                                            ; preds = %bb.ap
  store i8 0, ptr %i.h, align 4, !tbaa !347
  %.pre504.i.jt2 = load i8, ptr %i.ep, align 1, !tbaa !205 ; 2 uses
  switch i8 %.pre504.i.jt2, label %.thread567.i.jt1 [
    i8 100, label %bb.bp
    i8 105, label %bb.bp
    i8 111, label %bb.bp
    i8 117, label %bb.bp
    i8 120, label %bb.bp
    i8 88, label %bb.bp
  ]

bb.ax:                                            ; preds = %bb.aq
  store i8 0, ptr %i.h, align 4, !tbaa !347
  %.pre504.i.jt0 = load i8, ptr %.4305.i, align 1, !tbaa !205 ; 6 uses
  switch i8 %.pre504.i.jt0, label %.thread567.i.jt1 [
    i8 86, label %.thread189
    i8 115, label %.thread189
    i8 112, label %bb.bb
    i8 99, label %bb.bb
    i8 82, label %bb.iu
    i8 100, label %bb.bq
    i8 105, label %bb.bq
    i8 111, label %bb.bq
    i8 117, label %bb.bq
    i8 120, label %bb.bq
    i8 88, label %bb.bq
    i8 65, label %bb.jb
    i8 84, label %bb.ji
    i8 85, label %bb.hw
    i8 78, label %bb.jv
    i8 83, label %bb.in
  ]

bb.ay:                                            ; preds = %bb.ar
  store i8 0, ptr %i.h, align 4, !tbaa !347
  %.pre504.i.jt3 = load i8, ptr %i.eq, align 1, !tbaa !205 ; 2 uses
  switch i8 %.pre504.i.jt3, label %.thread567.i.jt1 [
    i8 100, label %bb.br
    i8 105, label %bb.br
    i8 111, label %bb.br
    i8 117, label %bb.br
    i8 120, label %bb.br
    i8 88, label %bb.br
  ]

bb.az:                                            ; preds = %bb.as
  store i8 0, ptr %i.h, align 4, !tbaa !347
  %.pre504.i.jt4 = load i8, ptr %i.er, align 1, !tbaa !205 ; 2 uses
  switch i8 %.pre504.i.jt4, label %.thread567.i.jt1 [
    i8 100, label %bb.bs
    i8 105, label %bb.bs
    i8 111, label %bb.bs
    i8 117, label %bb.bs
    i8 120, label %bb.bs
    i8 88, label %bb.bs
  ]

bb.ba:                                            ; preds = %bb.at
  store i8 0, ptr %i.h, align 4, !tbaa !347
  %.pre504.i.jt5 = load i8, ptr %i.es, align 1, !tbaa !205 ; 2 uses
  switch i8 %.pre504.i.jt5, label %.thread567.i.jt1 [
    i8 100, label %bb.bt
    i8 105, label %bb.bt
    i8 111, label %bb.bt
    i8 117, label %bb.bt
    i8 120, label %bb.bt
    i8 88, label %bb.bt
  ]

bb.bb:                                            ; preds = %bb.ax, %bb.ax, %bb.au, %bb.au
  %i.fn = phi i8 [ %.pre504.i.jt0, %bb.ax ], [ %.pre504.i.jt0, %bb.ax ], [ %i.fm, %bb.au ], [ %i.fm, %bb.au ]
  %.5306.i146 = phi ptr [ %.4305.i, %bb.ax ], [ %.4305.i, %bb.ax ], [ %.5306.i145, %bb.au ], [ %.5306.i145, %bb.au ]
  %.0332.i142 = phi i32 [ 0, %bb.ax ], [ 0, %bb.ax ], [ %.0332.i141, %bb.au ], [ %.0332.i141, %bb.au ]
  %.not398.i136 = phi i1 [ true, %bb.ax ], [ true, %bb.ax ], [ %.not398.i135, %bb.au ], [ %.not398.i135, %bb.au ]
  %i.fo = phi i1 [ false, %bb.ax ], [ false, %bb.ax ], [ %i.fl, %bb.au ], [ %i.fl, %bb.au ]
  %i.fp = icmp sgt i64 %.2315.i, -1
  %or.cond.i = select i1 %i.fo, i1 true, i1 %i.fp
  %i.fq = icmp sgt i64 %.1317.i, -1
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.fq
  br i1 %or.cond14.i, label %.thread567.i.jt1, label %.thread189

bb.bc:                                            ; preds = %bb.au, %bb.au
  br i1 %or.cond16.i133, label %.thread567.i.jt1, label %.thread189

.thread567.i:                                     ; preds = %bb.au
  br i1 %.not398.i135, label %.thread189, label %.thread567.i.jt1

.thread189:                                       ; preds = %bb.ax, %bb.ax, %bb.av, %bb.av, %.thread567.i, %bb.bc, %bb.bb, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au
  %.5306.i164 = phi ptr [ %.5306.i145, %.thread567.i ], [ %.5306.i145, %bb.bc ], [ %.5306.i146, %bb.bb ], [ %.5306.i145, %bb.au ], [ %.5306.i145, %bb.au ], [ %.5306.i145, %bb.au ], [ %.5306.i145, %bb.au ], [ %.5306.i145, %bb.au ], [ %.5306.i145, %bb.au ], [ %.4305.i, %bb.ax ], [ %.4305.i, %bb.ax ], [ %i.en, %bb.av ], [ %i.en, %bb.av ] ; 19 uses
  %.0332.i144 = phi i32 [ %.0332.i141, %.thread567.i ], [ %.0332.i141, %bb.bc ], [ %.0332.i142, %bb.bb ], [ %.0332.i141, %bb.au ], [ %.0332.i141, %bb.au ], [ %.0332.i141, %bb.au ], [ %.0332.i141, %bb.au ], [ %.0332.i141, %bb.au ], [ %.0332.i141, %bb.au ], [ 0, %bb.ax ], [ 0, %bb.ax ], [ 1, %bb.av ], [ 1, %bb.av ]
  %.not398.i140 = phi i1 [ true, %.thread567.i ], [ %.not398.i135, %bb.bc ], [ %.not398.i136, %bb.bb ], [ %.not398.i135, %bb.au ], [ %.not398.i135, %bb.au ], [ %.not398.i135, %bb.au ], [ %.not398.i135, %bb.au ], [ %.not398.i135, %bb.au ], [ %.not398.i135, %bb.au ], [ true, %bb.ax ], [ true, %bb.ax ], [ false, %bb.av ], [ false, %bb.av ] ; 2 uses
  %i.fr = phi i8 [ %i.fm, %.thread567.i ], [ %i.fm, %bb.bc ], [ %i.fn, %bb.bb ], [ %i.fm, %bb.au ], [ %i.fm, %bb.au ], [ %i.fm, %bb.au ], [ %i.fm, %bb.au ], [ %i.fm, %bb.au ], [ %i.fm, %bb.au ], [ %.pre504.i.jt0, %bb.ax ], [ %.pre504.i.jt0, %bb.ax ], [ %.pre504.i.jt1, %bb.av ], [ %.pre504.i.jt1, %bb.av ] ; 7 uses
  switch i8 %i.fr, label %.thread567.i.jt1 [
    i8 99, label %bb.bd
    i8 100, label %bb.bn
    i8 105, label %bb.bn
    i8 111, label %bb.bn
    i8 117, label %bb.bn
    i8 120, label %bb.bn
    i8 88, label %bb.bn
    i8 112, label %bb.hg
    i8 115, label %bb.hn
    i8 85, label %bb.hw
    i8 86, label %bb.ia
    i8 83, label %bb.in
    i8 82, label %bb.iu
    i8 65, label %bb.jb
    i8 84, label %bb.ji
    i8 78, label %bb.jv
  ]

bb.bd:                                            ; preds = %.thread189
  %i.fs = load i32, ptr %3, align 16              ; 3 uses
  %i.ft = icmp ult i32 %i.fs, 41
  br i1 %i.ft, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fu = load ptr, ptr %i.t, align 16
  %i.fv = zext nneg i32 %i.fs to i64
  %i.fw = getelementptr i8, ptr %i.fu, i64 %i.fv
  %i.fx = add nuw nsw i32 %i.fs, 8
  store i32 %i.fx, ptr %3, align 16
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.fy = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 8
  store ptr %i.fz, ptr %i.s, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ga = phi ptr [ %i.fw, %bb.be ], [ %i.fy, %bb.bf ]
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !7  ; 6 uses
  %or.cond18.i = icmp ugt i32 %i.gb, 1114111
  br i1 %or.cond18.i, label %.critedge.i, label %bb.bh

.critedge.i:                                      ; preds = %bb.bg
  %i.gc = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.gc, ptr noundef nonnull @.str.130) #33
  br label %.thread56

bb.bh:                                            ; preds = %bb.bg
  %i.gd = load i32, ptr %i.w, align 4, !tbaa !276
  %.not.i48 = icmp ugt i32 %i.gb, %i.gd
  br i1 %.not.i48, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ge = load i64, ptr %i.x, align 8, !tbaa !278
  %i.gf = load i64, ptr %i.y, align 8, !tbaa !279 ; 2 uses
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = icmp sgt i64 %i.gg, 0
  br i1 %i.gh, label %.critedge.i50, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.gi = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef 1, i32 noundef %i.gb) #33
  %i.gj = icmp slt i32 %i.gi, 0
  br i1 %i.gj, label %.thread56, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.bj
  %.pre.i49 = load i64, ptr %i.y, align 8, !tbaa !279
  br label %.critedge.i50

.critedge.i50:                                    ; preds = %..critedge_crit_edge.i, %bb.bi
  %i.gk = phi i64 [ %.pre.i49, %..critedge_crit_edge.i ], [ %i.gf, %bb.bi ] ; 5 uses
  %i.gl = load i32, ptr %i.z, align 8, !tbaa !280
  %i.gm = load ptr, ptr %i.aa, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.gl, label %bb.bm [
    i32 1, label %bb.bk
    i32 2, label %bb.bl
  ]

bb.bk:                                            ; preds = %.critedge.i50
  %i.gn = trunc i32 %i.gb to i8
  %i.go = getelementptr i8, ptr %i.gm, i64 %i.gk
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !205
  %.pre11.i = load i64, ptr %i.y, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit.thread

bb.bl:                                            ; preds = %.critedge.i50
  %i.gp = trunc i32 %i.gb to i16
  %i.gq = getelementptr [2 x i8], ptr %i.gm, i64 %i.gk
  store i16 %i.gp, ptr %i.gq, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit.thread

bb.bm:                                            ; preds = %.critedge.i50
  %i.gr = getelementptr [4 x i8], ptr %i.gm, i64 %i.gk
  store i32 %i.gb, ptr %i.gr, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit.thread

_PyUnicodeWriter_WriteCharInline.exit.thread:     ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.gs = phi i64 [ %.pre11.i, %bb.bk ], [ %i.gk, %bb.bl ], [ %i.gk, %bb.bm ]
  %i.gt = add i64 %i.gs, 1
  store i64 %i.gt, ptr %i.y, align 8, !tbaa !279
  br label %bb.kh

bb.bn:                                            ; preds = %.thread189, %.thread189, %.thread189, %.thread189, %.thread189, %.thread189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.gu = load i32, ptr %3, align 16              ; 7 uses
  %i.gv = icmp ult i32 %i.gu, 41                  ; 6 uses
  switch i32 %.0332.i144, label %bb.fv [
    i32 1, label %bb.bu
    i32 2, label %bb.cp
    i32 3, label %bb.dk
    i32 4, label %bb.ef
    i32 5, label %bb.fa
  ]

bb.bo:                                            ; preds = %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.gw = load i32, ptr %3, align 16              ; 2 uses
  %i.gx = icmp ult i32 %i.gw, 41
  br label %bb.bu

bb.bp:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.gy = load i32, ptr %3, align 16              ; 2 uses
  %i.gz = icmp ult i32 %i.gy, 41
  br label %bb.cp

bb.bq:                                            ; preds = %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ha = load i32, ptr %3, align 16              ; 2 uses
  %i.hb = icmp ult i32 %i.ha, 41
  br label %bb.fv

bb.br:                                            ; preds = %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.hc = load i32, ptr %3, align 16              ; 2 uses
  %i.hd = icmp ult i32 %i.hc, 41
  br label %bb.dk

bb.bs:                                            ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.he = load i32, ptr %3, align 16              ; 2 uses
  %i.hf = icmp ult i32 %i.he, 41
  br label %bb.ef

bb.bt:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.hg = load i32, ptr %3, align 16              ; 2 uses
  %i.hh = icmp ult i32 %i.hg, 41
  br label %bb.fa

bb.bu:                                            ; preds = %bb.bo, %bb.bn
  %i.hi = phi i1 [ %i.gx, %bb.bo ], [ %i.gv, %bb.bn ] ; 5 uses
  %i.hj = phi i32 [ %i.gw, %bb.bo ], [ %i.gu, %bb.bn ] ; 10 uses
  %i.hk = phi i8 [ %.pre504.i.jt1, %bb.bo ], [ %i.fr, %bb.bn ]
  %.5306.i162 = phi ptr [ %i.en, %bb.bo ], [ %.5306.i164, %bb.bn ] ; 5 uses
  switch i8 %i.hk, label %bb.cl [
    i8 111, label %bb.bv
    i8 117, label %bb.bz
    i8 120, label %bb.cd
    i8 88, label %bb.ch
  ]

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.hi, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hl = load ptr, ptr %i.t, align 16
  %i.hm = zext nneg i32 %i.hj to i64
  %i.hn = getelementptr i8, ptr %i.hl, i64 %i.hm
  %i.ho = add nuw nsw i32 %i.hj, 8
  store i32 %i.ho, ptr %3, align 16
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.hp = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 8
  store ptr %i.hq, ptr %i.s, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.hr = phi ptr [ %i.hn, %bb.bw ], [ %i.hp, %bb.bx ]
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !193
  %i.ht = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.131, i64 noundef %i.hs) #33
  br label %bb.gq

bb.bz:                                            ; preds = %bb.bu
  br i1 %i.hi, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.hu = load ptr, ptr %i.t, align 16
  %i.hv = zext nneg i32 %i.hj to i64
  %i.hw = getelementptr i8, ptr %i.hu, i64 %i.hv
  %i.hx = add nuw nsw i32 %i.hj, 8
  store i32 %i.hx, ptr %3, align 16
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.hy = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  store ptr %i.hz, ptr %i.s, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ia = phi ptr [ %i.hw, %bb.ca ], [ %i.hy, %bb.cb ]
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !193
  %i.ic = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.132, i64 noundef %i.ib) #33
  br label %bb.gq

bb.cd:                                            ; preds = %bb.bu
  br i1 %i.hi, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.id = load ptr, ptr %i.t, align 16
  %i.ie = zext nneg i32 %i.hj to i64
  %i.if = getelementptr i8, ptr %i.id, i64 %i.ie
  %i.ig = add nuw nsw i32 %i.hj, 8
  store i32 %i.ig, ptr %3, align 16
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.ih = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 8
  store ptr %i.ii, ptr %i.s, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ij = phi ptr [ %i.if, %bb.ce ], [ %i.ih, %bb.cf ]
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !193
  %i.il = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.133, i64 noundef %i.ik) #33
  br label %bb.gq

bb.ch:                                            ; preds = %bb.bu
  br i1 %i.hi, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.im = load ptr, ptr %i.t, align 16
  %i.in = zext nneg i32 %i.hj to i64
  %i.io = getelementptr i8, ptr %i.im, i64 %i.in
  %i.ip = add nuw nsw i32 %i.hj, 8
  store i32 %i.ip, ptr %3, align 16
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.iq = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 8
  store ptr %i.ir, ptr %i.s, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.is = phi ptr [ %i.io, %bb.ci ], [ %i.iq, %bb.cj ]
  %i.it = load i64, ptr %i.is, align 8, !tbaa !193
  %i.iu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.134, i64 noundef %i.it) #33
  br label %bb.gq

bb.cl:                                            ; preds = %bb.bu
  br i1 %i.hi, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.iv = load ptr, ptr %i.t, align 16
  %i.iw = zext nneg i32 %i.hj to i64
  %i.ix = getelementptr i8, ptr %i.iv, i64 %i.iw
  %i.iy = add nuw nsw i32 %i.hj, 8
  store i32 %i.iy, ptr %3, align 16
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.iz = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 8
  store ptr %i.ja, ptr %i.s, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.jb = phi ptr [ %i.ix, %bb.cm ], [ %i.iz, %bb.cn ]
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !193
  %i.jd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.135, i64 noundef %i.jc) #33
  br label %bb.gq

bb.cp:                                            ; preds = %bb.bp, %bb.bn
  %i.je = phi i1 [ %i.gz, %bb.bp ], [ %i.gv, %bb.bn ] ; 5 uses
  %i.jf = phi i32 [ %i.gy, %bb.bp ], [ %i.gu, %bb.bn ] ; 10 uses
  %i.jg = phi i8 [ %.pre504.i.jt2, %bb.bp ], [ %i.fr, %bb.bn ]
  %.5306.i158 = phi ptr [ %i.ep, %bb.bp ], [ %.5306.i164, %bb.bn ] ; 5 uses
  switch i8 %i.jg, label %bb.dg [
    i8 111, label %bb.cq
    i8 117, label %bb.cu
    i8 120, label %bb.cy
    i8 88, label %bb.dc
  ]

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.je, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.jh = load ptr, ptr %i.t, align 16
  %i.ji = zext nneg i32 %i.jf to i64
  %i.jj = getelementptr i8, ptr %i.jh, i64 %i.ji
  %i.jk = add nuw nsw i32 %i.jf, 8
  store i32 %i.jk, ptr %3, align 16
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.jl = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  store ptr %i.jm, ptr %i.s, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.jn = phi ptr [ %i.jj, %bb.cr ], [ %i.jl, %bb.cs ]
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !351
  %i.jp = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.136, i64 noundef %i.jo) #33
  br label %bb.gq

bb.cu:                                            ; preds = %bb.cp
  br i1 %i.je, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.jq = load ptr, ptr %i.t, align 16
  %i.jr = zext nneg i32 %i.jf to i64
  %i.js = getelementptr i8, ptr %i.jq, i64 %i.jr
  %i.jt = add nuw nsw i32 %i.jf, 8
  store i32 %i.jt, ptr %3, align 16
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.ju = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 8
  store ptr %i.jv, ptr %i.s, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.jw = phi ptr [ %i.js, %bb.cv ], [ %i.ju, %bb.cw ]
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !351
  %i.jy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.137, i64 noundef %i.jx) #33
  br label %bb.gq

bb.cy:                                            ; preds = %bb.cp
  br i1 %i.je, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.jz = load ptr, ptr %i.t, align 16
  %i.ka = zext nneg i32 %i.jf to i64
  %i.kb = getelementptr i8, ptr %i.jz, i64 %i.ka
  %i.kc = add nuw nsw i32 %i.jf, 8
  store i32 %i.kc, ptr %3, align 16
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.kd = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 8
  store ptr %i.ke, ptr %i.s, align 8
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.kf = phi ptr [ %i.kb, %bb.cz ], [ %i.kd, %bb.da ]
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !351
  %i.kh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.138, i64 noundef %i.kg) #33
  br label %bb.gq

bb.dc:                                            ; preds = %bb.cp
  br i1 %i.je, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ki = load ptr, ptr %i.t, align 16
  %i.kj = zext nneg i32 %i.jf to i64
  %i.kk = getelementptr i8, ptr %i.ki, i64 %i.kj
  %i.kl = add nuw nsw i32 %i.jf, 8
  store i32 %i.kl, ptr %3, align 16
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.km = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 8
  store ptr %i.kn, ptr %i.s, align 8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.ko = phi ptr [ %i.kk, %bb.dd ], [ %i.km, %bb.de ]
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !351
  %i.kq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.139, i64 noundef %i.kp) #33
  br label %bb.gq

bb.dg:                                            ; preds = %bb.cp
  br i1 %i.je, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.kr = load ptr, ptr %i.t, align 16
  %i.ks = zext nneg i32 %i.jf to i64
  %i.kt = getelementptr i8, ptr %i.kr, i64 %i.ks
  %i.ku = add nuw nsw i32 %i.jf, 8
  store i32 %i.ku, ptr %3, align 16
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.kv = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 8
  store ptr %i.kw, ptr %i.s, align 8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.kx = phi ptr [ %i.kt, %bb.dh ], [ %i.kv, %bb.di ]
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !351
  %i.kz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.140, i64 noundef %i.ky) #33
  br label %bb.gq

bb.dk:                                            ; preds = %bb.br, %bb.bn
  %i.la = phi i1 [ %i.hd, %bb.br ], [ %i.gv, %bb.bn ] ; 5 uses
  %i.lb = phi i32 [ %i.hc, %bb.br ], [ %i.gu, %bb.bn ] ; 10 uses
  %i.lc = phi i8 [ %.pre504.i.jt3, %bb.br ], [ %i.fr, %bb.bn ]
  %.5306.i161 = phi ptr [ %i.eq, %bb.br ], [ %.5306.i164, %bb.bn ] ; 5 uses
  switch i8 %i.lc, label %bb.eb [
    i8 111, label %bb.dl
    i8 117, label %bb.dp
    i8 120, label %bb.dt
    i8 88, label %bb.dx
  ]

bb.dl:                                            ; preds = %bb.dk
  br i1 %i.la, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.ld = load ptr, ptr %i.t, align 16
  %i.le = zext nneg i32 %i.lb to i64
  %i.lf = getelementptr i8, ptr %i.ld, i64 %i.le
  %i.lg = add nuw nsw i32 %i.lb, 8
  store i32 %i.lg, ptr %3, align 16
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.lh = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.li = getelementptr i8, ptr %i.lh, i64 8
  store ptr %i.li, ptr %i.s, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.lj = phi ptr [ %i.lf, %bb.dm ], [ %i.lh, %bb.dn ]
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !193
  %i.ll = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.141, i64 noundef %i.lk) #33
  br label %bb.gq

bb.dp:                                            ; preds = %bb.dk
  br i1 %i.la, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.lm = load ptr, ptr %i.t, align 16
  %i.ln = zext nneg i32 %i.lb to i64
  %i.lo = getelementptr i8, ptr %i.lm, i64 %i.ln
  %i.lp = add nuw nsw i32 %i.lb, 8
  store i32 %i.lp, ptr %3, align 16
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.lq = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lq, i64 8
  store ptr %i.lr, ptr %i.s, align 8
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.ls = phi ptr [ %i.lo, %bb.dq ], [ %i.lq, %bb.dr ]
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !193
  %i.lu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.142, i64 noundef %i.lt) #33
  br label %bb.gq

bb.dt:                                            ; preds = %bb.dk
  br i1 %i.la, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.lv = load ptr, ptr %i.t, align 16
  %i.lw = zext nneg i32 %i.lb to i64
  %i.lx = getelementptr i8, ptr %i.lv, i64 %i.lw
  %i.ly = add nuw nsw i32 %i.lb, 8
  store i32 %i.ly, ptr %3, align 16
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  %i.lz = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 8
  store ptr %i.ma, ptr %i.s, align 8
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.mb = phi ptr [ %i.lx, %bb.du ], [ %i.lz, %bb.dv ]
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !193
  %i.md = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.143, i64 noundef %i.mc) #33
  br label %bb.gq

bb.dx:                                            ; preds = %bb.dk
  br i1 %i.la, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.me = load ptr, ptr %i.t, align 16
  %i.mf = zext nneg i32 %i.lb to i64
  %i.mg = getelementptr i8, ptr %i.me, i64 %i.mf
  %i.mh = add nuw nsw i32 %i.lb, 8
  store i32 %i.mh, ptr %3, align 16
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.mi = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 8
  store ptr %i.mj, ptr %i.s, align 8
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.mk = phi ptr [ %i.mg, %bb.dy ], [ %i.mi, %bb.dz ]
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !193
  %i.mm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.144, i64 noundef %i.ml) #33
  br label %bb.gq

bb.eb:                                            ; preds = %bb.dk
  br i1 %i.la, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.mn = load ptr, ptr %i.t, align 16
  %i.mo = zext nneg i32 %i.lb to i64
  %i.mp = getelementptr i8, ptr %i.mn, i64 %i.mo
  %i.mq = add nuw nsw i32 %i.lb, 8
  store i32 %i.mq, ptr %3, align 16
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.mr = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mr, i64 8
  store ptr %i.ms, ptr %i.s, align 8
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.mt = phi ptr [ %i.mp, %bb.ec ], [ %i.mr, %bb.ed ]
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !193
  %i.mv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.145, i64 noundef %i.mu) #33
  br label %bb.gq

bb.ef:                                            ; preds = %bb.bs, %bb.bn
  %i.mw = phi i1 [ %i.hf, %bb.bs ], [ %i.gv, %bb.bn ] ; 5 uses
  %i.mx = phi i32 [ %i.he, %bb.bs ], [ %i.gu, %bb.bn ] ; 10 uses
  %i.my = phi i8 [ %.pre504.i.jt4, %bb.bs ], [ %i.fr, %bb.bn ]
  %.5306.i160 = phi ptr [ %i.er, %bb.bs ], [ %.5306.i164, %bb.bn ] ; 5 uses
  switch i8 %i.my, label %bb.ew [
    i8 111, label %bb.eg
    i8 117, label %bb.ek
    i8 120, label %bb.eo
    i8 88, label %bb.es
  ]

bb.eg:                                            ; preds = %bb.ef
  br i1 %i.mw, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.mz = load ptr, ptr %i.t, align 16
  %i.na = zext nneg i32 %i.mx to i64
  %i.nb = getelementptr i8, ptr %i.mz, i64 %i.na
  %i.nc = add nuw nsw i32 %i.mx, 8
  store i32 %i.nc, ptr %3, align 16
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  %i.nd = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ne = getelementptr i8, ptr %i.nd, i64 8
  store ptr %i.ne, ptr %i.s, align 8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.nf = phi ptr [ %i.nb, %bb.eh ], [ %i.nd, %bb.ei ]
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !193
  %i.nh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.146, i64 noundef %i.ng) #33
  br label %bb.gq

bb.ek:                                            ; preds = %bb.ef
  br i1 %i.mw, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ni = load ptr, ptr %i.t, align 16
  %i.nj = zext nneg i32 %i.mx to i64
  %i.nk = getelementptr i8, ptr %i.ni, i64 %i.nj
  %i.nl = add nuw nsw i32 %i.mx, 8
  store i32 %i.nl, ptr %3, align 16
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.nm = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 8
  store ptr %i.nn, ptr %i.s, align 8
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.no = phi ptr [ %i.nk, %bb.el ], [ %i.nm, %bb.em ]
  %i.np = load i64, ptr %i.no, align 8, !tbaa !193
  %i.nq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.147, i64 noundef %i.np) #33
  br label %bb.gq

bb.eo:                                            ; preds = %bb.ef
  br i1 %i.mw, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.nr = load ptr, ptr %i.t, align 16
  %i.ns = zext nneg i32 %i.mx to i64
  %i.nt = getelementptr i8, ptr %i.nr, i64 %i.ns
  %i.nu = add nuw nsw i32 %i.mx, 8
  store i32 %i.nu, ptr %3, align 16
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo
  %i.nv = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.nw = getelementptr i8, ptr %i.nv, i64 8
  store ptr %i.nw, ptr %i.s, align 8
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.nx = phi ptr [ %i.nt, %bb.ep ], [ %i.nv, %bb.eq ]
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !193
  %i.nz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.148, i64 noundef %i.ny) #33
  br label %bb.gq

bb.es:                                            ; preds = %bb.ef
  br i1 %i.mw, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.oa = load ptr, ptr %i.t, align 16
  %i.ob = zext nneg i32 %i.mx to i64
  %i.oc = getelementptr i8, ptr %i.oa, i64 %i.ob
  %i.od = add nuw nsw i32 %i.mx, 8
  store i32 %i.od, ptr %3, align 16
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.oe = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.of = getelementptr i8, ptr %i.oe, i64 8
  store ptr %i.of, ptr %i.s, align 8
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.og = phi ptr [ %i.oc, %bb.et ], [ %i.oe, %bb.eu ]
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !193
  %i.oi = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.149, i64 noundef %i.oh) #33
  br label %bb.gq

bb.ew:                                            ; preds = %bb.ef
  br i1 %i.mw, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.oj = load ptr, ptr %i.t, align 16
  %i.ok = zext nneg i32 %i.mx to i64
  %i.ol = getelementptr i8, ptr %i.oj, i64 %i.ok
  %i.om = add nuw nsw i32 %i.mx, 8
  store i32 %i.om, ptr %3, align 16
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  %i.on = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.oo = getelementptr i8, ptr %i.on, i64 8
  store ptr %i.oo, ptr %i.s, align 8
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.op = phi ptr [ %i.ol, %bb.ex ], [ %i.on, %bb.ey ]
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !193
  %i.or = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.150, i64 noundef %i.oq) #33
  br label %bb.gq

bb.fa:                                            ; preds = %bb.bt, %bb.bn
  %i.os = phi i1 [ %i.hh, %bb.bt ], [ %i.gv, %bb.bn ] ; 5 uses
  %i.ot = phi i32 [ %i.hg, %bb.bt ], [ %i.gu, %bb.bn ] ; 10 uses
  %i.ou = phi i8 [ %.pre504.i.jt5, %bb.bt ], [ %i.fr, %bb.bn ]
  %.5306.i159 = phi ptr [ %i.es, %bb.bt ], [ %.5306.i164, %bb.bn ] ; 5 uses
  switch i8 %i.ou, label %bb.fr [
    i8 111, label %bb.fb
    i8 117, label %bb.ff
    i8 120, label %bb.fj
    i8 88, label %bb.fn
  ]

bb.fb:                                            ; preds = %bb.fa
  br i1 %i.os, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.ov = load ptr, ptr %i.t, align 16
  %i.ow = zext nneg i32 %i.ot to i64
  %i.ox = getelementptr i8, ptr %i.ov, i64 %i.ow
  %i.oy = add nuw nsw i32 %i.ot, 8
  store i32 %i.oy, ptr %3, align 16
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.oz = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.pa = getelementptr i8, ptr %i.oz, i64 8
  store ptr %i.pa, ptr %i.s, align 8
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.pb = phi ptr [ %i.ox, %bb.fc ], [ %i.oz, %bb.fd ]
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !193
  %i.pd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.151, i64 noundef %i.pc) #33
  br label %bb.gq

bb.ff:                                            ; preds = %bb.fa
  br i1 %i.os, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.pe = load ptr, ptr %i.t, align 16
  %i.pf = zext nneg i32 %i.ot to i64
  %i.pg = getelementptr i8, ptr %i.pe, i64 %i.pf
  %i.ph = add nuw nsw i32 %i.ot, 8
  store i32 %i.ph, ptr %3, align 16
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  %i.pi = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.pj = getelementptr i8, ptr %i.pi, i64 8
  store ptr %i.pj, ptr %i.s, align 8
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.pk = phi ptr [ %i.pg, %bb.fg ], [ %i.pi, %bb.fh ]
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !193
  %i.pm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.152, i64 noundef %i.pl) #33
  br label %bb.gq

bb.fj:                                            ; preds = %bb.fa
  br i1 %i.os, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.pn = load ptr, ptr %i.t, align 16
  %i.po = zext nneg i32 %i.ot to i64
  %i.pp = getelementptr i8, ptr %i.pn, i64 %i.po
  %i.pq = add nuw nsw i32 %i.ot, 8
  store i32 %i.pq, ptr %3, align 16
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  %i.pr = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ps = getelementptr i8, ptr %i.pr, i64 8
  store ptr %i.ps, ptr %i.s, align 8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.pt = phi ptr [ %i.pp, %bb.fk ], [ %i.pr, %bb.fl ]
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !193
  %i.pv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.153, i64 noundef %i.pu) #33
  br label %bb.gq

bb.fn:                                            ; preds = %bb.fa
  br i1 %i.os, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.pw = load ptr, ptr %i.t, align 16
  %i.px = zext nneg i32 %i.ot to i64
  %i.py = getelementptr i8, ptr %i.pw, i64 %i.px
  %i.pz = add nuw nsw i32 %i.ot, 8
  store i32 %i.pz, ptr %3, align 16
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.qa = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 8
  store ptr %i.qb, ptr %i.s, align 8
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.qc = phi ptr [ %i.py, %bb.fo ], [ %i.qa, %bb.fp ]
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !193
  %i.qe = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.154, i64 noundef %i.qd) #33
  br label %bb.gq

bb.fr:                                            ; preds = %bb.fa
  br i1 %i.os, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.qf = load ptr, ptr %i.t, align 16
  %i.qg = zext nneg i32 %i.ot to i64
  %i.qh = getelementptr i8, ptr %i.qf, i64 %i.qg
  %i.qi = add nuw nsw i32 %i.ot, 8
  store i32 %i.qi, ptr %3, align 16
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fr
  %i.qj = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.qk = getelementptr i8, ptr %i.qj, i64 8
  store ptr %i.qk, ptr %i.s, align 8
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.ql = phi ptr [ %i.qh, %bb.fs ], [ %i.qj, %bb.ft ]
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !193
  %i.qn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.155, i64 noundef %i.qm) #33
  br label %bb.gq

bb.fv:                                            ; preds = %bb.bq, %bb.bn
  %i.qo = phi i1 [ %i.hb, %bb.bq ], [ %i.gv, %bb.bn ] ; 5 uses
  %i.qp = phi i32 [ %i.ha, %bb.bq ], [ %i.gu, %bb.bn ] ; 10 uses
  %i.qq = phi i8 [ %.pre504.i.jt0, %bb.bq ], [ %i.fr, %bb.bn ]
  %.5306.i163 = phi ptr [ %.4305.i, %bb.bq ], [ %.5306.i164, %bb.bn ] ; 5 uses
  switch i8 %i.qq, label %bb.gm [
    i8 111, label %bb.fw
    i8 117, label %bb.ga
    i8 120, label %bb.ge
    i8 88, label %bb.gi
  ]

bb.fw:                                            ; preds = %bb.fv
  br i1 %i.qo, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.qr = load ptr, ptr %i.t, align 16
  %i.qs = zext nneg i32 %i.qp to i64
  %i.qt = getelementptr i8, ptr %i.qr, i64 %i.qs
  %i.qu = add nuw nsw i32 %i.qp, 8
  store i32 %i.qu, ptr %3, align 16
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  %i.qv = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.qw = getelementptr i8, ptr %i.qv, i64 8
  store ptr %i.qw, ptr %i.s, align 8
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.qx = phi ptr [ %i.qt, %bb.fx ], [ %i.qv, %bb.fy ]
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !7
  %i.qz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.156, i32 noundef %i.qy) #33
  br label %bb.gq

bb.ga:                                            ; preds = %bb.fv
  br i1 %i.qo, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ra = load ptr, ptr %i.t, align 16
  %i.rb = zext nneg i32 %i.qp to i64
  %i.rc = getelementptr i8, ptr %i.ra, i64 %i.rb
  %i.rd = add nuw nsw i32 %i.qp, 8
  store i32 %i.rd, ptr %3, align 16
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %i.re = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.rf = getelementptr i8, ptr %i.re, i64 8
  store ptr %i.rf, ptr %i.s, align 8
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.rg = phi ptr [ %i.rc, %bb.gb ], [ %i.re, %bb.gc ]
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !7
  %i.ri = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.157, i32 noundef %i.rh) #33
  br label %bb.gq

bb.ge:                                            ; preds = %bb.fv
  br i1 %i.qo, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.rj = load ptr, ptr %i.t, align 16
  %i.rk = zext nneg i32 %i.qp to i64
  %i.rl = getelementptr i8, ptr %i.rj, i64 %i.rk
  %i.rm = add nuw nsw i32 %i.qp, 8
  store i32 %i.rm, ptr %3, align 16
  br label %bb.gh

bb.gg:                                            ; preds = %bb.ge
  %i.rn = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ro = getelementptr i8, ptr %i.rn, i64 8
  store ptr %i.ro, ptr %i.s, align 8
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.rp = phi ptr [ %i.rl, %bb.gf ], [ %i.rn, %bb.gg ]
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !7
  %i.rr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.158, i32 noundef %i.rq) #33
  br label %bb.gq

bb.gi:                                            ; preds = %bb.fv
  br i1 %i.qo, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.rs = load ptr, ptr %i.t, align 16
  %i.rt = zext nneg i32 %i.qp to i64
  %i.ru = getelementptr i8, ptr %i.rs, i64 %i.rt
  %i.rv = add nuw nsw i32 %i.qp, 8
  store i32 %i.rv, ptr %3, align 16
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gi
  %i.rw = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.rx = getelementptr i8, ptr %i.rw, i64 8
  store ptr %i.rx, ptr %i.s, align 8
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.ry = phi ptr [ %i.ru, %bb.gj ], [ %i.rw, %bb.gk ]
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !7
  %i.sa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.159, i32 noundef %i.rz) #33
  br label %bb.gq

bb.gm:                                            ; preds = %bb.fv
  br i1 %i.qo, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.sb = load ptr, ptr %i.t, align 16
  %i.sc = zext nneg i32 %i.qp to i64
  %i.sd = getelementptr i8, ptr %i.sb, i64 %i.sc
  %i.se = add nuw nsw i32 %i.qp, 8
  store i32 %i.se, ptr %3, align 16
  br label %bb.gp

bb.go:                                            ; preds = %bb.gm
  %i.sf = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 8
  store ptr %i.sg, ptr %i.s, align 8
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.sh = phi ptr [ %i.sd, %bb.gn ], [ %i.sf, %bb.go ]
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !7
  %i.sj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.160, i32 noundef %i.si) #33
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.gl, %bb.gh, %bb.gd, %bb.fz, %bb.fu, %bb.fq, %bb.fm, %bb.fi, %bb.fe, %bb.ez, %bb.ev, %bb.er, %bb.en, %bb.ej, %bb.ee, %bb.ea, %bb.dw, %bb.ds, %bb.do, %bb.dj, %bb.df, %bb.db, %bb.cx, %bb.ct, %bb.co, %bb.ck, %bb.cg, %bb.cc, %bb.by
  %.5306.i165 = phi ptr [ %.5306.i163, %bb.gp ], [ %.5306.i163, %bb.gl ], [ %.5306.i163, %bb.gh ], [ %.5306.i163, %bb.gd ], [ %.5306.i163, %bb.fz ], [ %.5306.i159, %bb.fu ], [ %.5306.i159, %bb.fq ], [ %.5306.i159, %bb.fm ], [ %.5306.i159, %bb.fi ], [ %.5306.i159, %bb.fe ], [ %.5306.i160, %bb.ez ], [ %.5306.i160, %bb.ev ], [ %.5306.i160, %bb.er ], [ %.5306.i160, %bb.en ], [ %.5306.i160, %bb.ej ], [ %.5306.i161, %bb.ee ], [ %.5306.i161, %bb.ea ], [ %.5306.i161, %bb.dw ], [ %.5306.i161, %bb.ds ], [ %.5306.i161, %bb.do ], [ %.5306.i158, %bb.dj ], [ %.5306.i158, %bb.df ], [ %.5306.i158, %bb.db ], [ %.5306.i158, %bb.cx ], [ %.5306.i158, %bb.ct ], [ %.5306.i162, %bb.co ], [ %.5306.i162, %bb.ck ], [ %.5306.i162, %bb.cg ], [ %.5306.i162, %bb.cc ], [ %.5306.i162, %bb.by ]
  %.0308.in.i = phi i32 [ %i.sj, %bb.gp ], [ %i.sa, %bb.gl ], [ %i.rr, %bb.gh ], [ %i.ri, %bb.gd ], [ %i.qz, %bb.fz ], [ %i.qn, %bb.fu ], [ %i.qe, %bb.fq ], [ %i.pv, %bb.fm ], [ %i.pm, %bb.fi ], [ %i.pd, %bb.fe ], [ %i.or, %bb.ez ], [ %i.oi, %bb.ev ], [ %i.nz, %bb.er ], [ %i.nq, %bb.en ], [ %i.nh, %bb.ej ], [ %i.mv, %bb.ee ], [ %i.mm, %bb.ea ], [ %i.md, %bb.dw ], [ %i.lu, %bb.ds ], [ %i.ll, %bb.do ], [ %i.kz, %bb.dj ], [ %i.kq, %bb.df ], [ %i.kh, %bb.db ], [ %i.jy, %bb.cx ], [ %i.jp, %bb.ct ], [ %i.jd, %bb.co ], [ %i.iu, %bb.ck ], [ %i.il, %bb.cg ], [ %i.ic, %bb.cc ], [ %i.ht, %bb.by ]
  %.0308.i = sext i32 %.0308.in.i to i64
  %i.sk = load i8, ptr %i.a, align 16, !tbaa !205
  %i.sl = icmp eq i8 %i.sk, 45                    ; 4 uses
  %.neg497.i = sext i1 %i.sl to i64
  %i.sm = zext i1 %i.sl to i64                    ; 3 uses
  %i.sn = sub nsw i64 %.0308.i, %i.sm             ; 3 uses
  %i.so = call i64 @llvm.smax.i64(i64 %.1317.i, i64 %i.sn) ; 2 uses
  %i.sp = add i64 %i.so, %i.sm
  %i.sq = call i64 @llvm.smax.i64(i64 %.2315.i, i64 %i.sp) ; 6 uses
  %i.sr = and i32 %.2312.i, 1
  %.not413.i = icmp eq i32 %i.sr, 0               ; 2 uses
  %i.ss = and i32 %.2312.i, 17
  %or.cond418.i = icmp eq i32 %i.ss, 16
  %i.st = sub i64 %i.sq, %i.sm
  %.2318.i = select i1 %or.cond418.i, i64 %i.st, i64 %i.so ; 2 uses
  %.neg480.i = add i64 %i.sq, %.neg497.i
  %i.su = sub i64 %.neg480.i, %.2318.i            ; 2 uses
  %i.sv = call i64 @llvm.smax.i64(i64 %i.su, i64 0) ; 4 uses
  %i.sw = sub i64 %.2318.i, %i.sn                 ; 2 uses
  %i.sx = call i64 @llvm.smax.i64(i64 %i.sw, i64 0) ; 2 uses
  %i.sy = load i32, ptr %i.w, align 4, !tbaa !276
  %i.sz = icmp ugt i32 %i.sy, 126
  br i1 %i.sz, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.ta = load i64, ptr %i.x, align 8, !tbaa !278
  %i.tb = load i64, ptr %i.y, align 8, !tbaa !279
  %i.tc = sub i64 %i.ta, %i.tb
  %i.td = icmp sle i64 %i.sq, %i.tc
  %i.te = icmp eq i64 %i.sq, 0
  %or.cond20.i = or i1 %i.te, %i.td
  br i1 %or.cond20.i, label %.critedge420.i, label %bb.gt

bb.gs:                                            ; preds = %bb.gq
  %.old19.i = icmp eq i64 %i.sq, 0
  br i1 %.old19.i, label %.critedge420.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.tf = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef %i.sq, i32 noundef 127) #33
  %i.tg = icmp eq i32 %i.tf, -1
  br i1 %i.tg, label %.critedge424.i, label %.critedge420.i

.critedge420.i:                                   ; preds = %bb.gt, %bb.gs, %bb.gr
  %.not414.i = icmp slt i64 %i.su, 1              ; 2 uses
  %.not414.not.i = xor i1 %.not414.i, true
  %or.cond421.i = select i1 %.not414.not.i, i1 %.not413.i, i1 false
  br i1 %or.cond421.i, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %.critedge420.i
  %i.th = load ptr, ptr %0, align 8, !tbaa !352
  %i.ti = load i64, ptr %i.y, align 8, !tbaa !279
  %i.tj = call i64 @PyUnicode_Fill(ptr noundef %i.th, i64 noundef %i.ti, i64 noundef %i.sv, i32 noundef 32)
  %i.tk = icmp eq i64 %i.tj, -1
  br i1 %i.tk, label %.critedge424.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.tl = load i64, ptr %i.y, align 8, !tbaa !279
  %i.tm = add i64 %i.tl, %i.sv
  store i64 %i.tm, ptr %i.y, align 8, !tbaa !279
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %.critedge420.i
  br i1 %i.sl, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.tn = call i32 @_PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 45) #33
  %i.to = icmp eq i32 %i.tn, -1
  br i1 %i.to, label %.critedge424.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.not416.i = icmp slt i64 %i.sw, 1
  br i1 %.not416.i, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
end_hunk_0
