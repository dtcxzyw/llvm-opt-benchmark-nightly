inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@unicode_from_format:bb.a
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.y, align 8, !tbaa !279
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
  br label %.loopexit477.i

bb.v:                                             ; preds = %bb.q
  %i.bw = zext i8 %i.bg to i64
  %i.bx = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = and i32 %i.by, 4
  %.not.i47 = icmp eq i32 %i.bz, 0
  br i1 %.not.i47, label %.loopexit477.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = add nsw i64 %i.bi, -48                  ; 2 uses
  %i.cb = load i8, ptr %i.bh, align 1, !tbaa !205 ; 3 uses
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = and i32 %i.ce, 4
  %.not393484.i = icmp eq i32 %i.cf, 0
  br i1 %.not393484.i, label %.loopexit477.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %bb.y
  %i.cg = phi i8 [ %i.cp, %bb.y ], [ %i.cb, %bb.w ]
  %.1302486.i = phi ptr [ %.1302.i, %bb.y ], [ %i.bh, %bb.w ]
  %.1314485.i = phi i64 [ %i.co, %bb.y ], [ %i.ca, %bb.w ] ; 2 uses
  %i.ch = sext i8 %i.cg to i64                    ; 2 uses
  %i.ci = sub i64 -9223372036854775761, %i.ch
  %i.cj = sdiv i64 %i.ci, 10
  %i.ck = icmp sgt i64 %.1314485.i, %i.cj
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i
  %i.cl = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.cl, ptr noundef nonnull @.str.128) #33
  br label %.thread56

bb.y:                                             ; preds = %.lr.ph.i
  %i.cm = mul i64 %.1314485.i, 10
  %i.cn = add nsw i64 %i.ch, -48
  %i.co = add i64 %i.cn, %i.cm                    ; 2 uses
  %.1302.i = getelementptr i8, ptr %.1302486.i, i64 1 ; 3 uses
  %i.cp = load i8, ptr %.1302.i, align 1, !tbaa !205 ; 3 uses
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = and i32 %i.cs, 4
  %.not393.i = icmp eq i32 %i.ct, 0
  br i1 %.not393.i, label %.loopexit477.i, label %.lr.ph.i, !llvm.loop !349

.loopexit477.i:                                   ; preds = %bb.y, %bb.w, %bb.v, %bb.u
  %i.cu = phi i8 [ %.pre.i, %bb.u ], [ %i.bg, %bb.v ], [ %i.cb, %bb.w ], [ %i.cp, %bb.y ] ; 2 uses
  %.2315.i = phi i64 [ %.0313.i, %bb.u ], [ -1, %bb.v ], [ %i.ca, %bb.w ], [ %i.co, %bb.y ] ; 13 uses
  %.2312.i = phi i32 [ %.1311.i, %bb.u ], [ %.0310.i, %bb.v ], [ %.0310.i, %bb.w ], [ %.0310.i, %bb.y ] ; 15 uses
  %.2303.i = phi ptr [ %i.bh, %bb.u ], [ %.0301.i, %bb.v ], [ %i.bh, %bb.w ], [ %.1302.i, %bb.y ] ; 4 uses
  %i.cv = icmp eq i8 %i.cu, 46
  br i1 %i.cv, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %.loopexit477.i
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
  %.pre500.i = load i8, ptr %i.dl, align 1, !tbaa !205
  br label %.loopexit.i

bb.ae:                                            ; preds = %bb.z
  %i.dm = zext i8 %i.cx to i64
  %i.dn = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !7
  %i.dp = and i32 %i.do, 4
  %.not394.i = icmp eq i32 %i.dp, 0
  br i1 %.not394.i, label %.loopexit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = add nsw i64 %i.cy, -48                  ; 2 uses
  %i.dr = getelementptr i8, ptr %.2303.i, i64 2   ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !205 ; 3 uses
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7
  %i.dw = and i32 %i.dv, 4
  %.not395488.i = icmp eq i32 %i.dw, 0
  br i1 %.not395488.i, label %.loopexit.i, label %.lr.ph491.i

.lr.ph491.i:                                      ; preds = %bb.af, %bb.ah
  %i.dx = phi i8 [ %i.eh, %bb.ah ], [ %i.ds, %bb.af ]
  %.3304490.i = phi ptr [ %i.eg, %bb.ah ], [ %i.dr, %bb.af ]
  %.0316489.i = phi i64 [ %i.ef, %bb.ah ], [ %i.dq, %bb.af ] ; 2 uses
  %i.dy = sext i8 %i.dx to i64                    ; 2 uses
  %i.dz = sub i64 -9223372036854775761, %i.dy
  %i.ea = sdiv i64 %i.dz, 10
  %i.eb = icmp sgt i64 %.0316489.i, %i.ea
  br i1 %i.eb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph491.i
  %i.ec = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.ec, ptr noundef nonnull @.str.129) #33
  br label %.thread56

bb.ah:                                            ; preds = %.lr.ph491.i
  %i.ed = mul i64 %.0316489.i, 10
  %i.ee = add nsw i64 %i.dy, -48
  %i.ef = add i64 %i.ee, %i.ed                    ; 2 uses
  %i.eg = getelementptr i8, ptr %.3304490.i, i64 1 ; 3 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !205 ; 3 uses
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7
  %i.el = and i32 %i.ek, 4
  %.not395.i = icmp eq i32 %i.el, 0
  br i1 %.not395.i, label %.loopexit.i, label %.lr.ph491.i, !llvm.loop !350

.loopexit.i:                                      ; preds = %bb.ah, %bb.af, %bb.ae, %bb.ad, %.loopexit477.i
  %i.em = phi i8 [ %.pre500.i, %bb.ad ], [ %i.cu, %.loopexit477.i ], [ %i.cx, %bb.ae ], [ %i.ds, %bb.af ], [ %i.eh, %bb.ah ] ; 2 uses
  %.1317.i = phi i64 [ %spec.store.select.i, %bb.ad ], [ -1, %.loopexit477.i ], [ -1, %bb.ae ], [ %i.dq, %bb.af ], [ %i.ef, %bb.ah ] ; 13 uses
  %.4305.i = phi ptr [ %i.dl, %bb.ad ], [ %.2303.i, %.loopexit477.i ], [ %i.cw, %bb.ae ], [ %i.dr, %bb.af ], [ %i.eg, %bb.ah ] ; 3 uses
  %4 = add i8 %i.em, -106                         ; 2 uses
  %5 = call i8 @llvm.fshl.i8(i8 %4, i8 %4, i8 7)
  switch i8 %5, label %bb.al [
    i8 1, label %bb.ai
    i8 8, label %thread-pre-split459.i
    i8 5, label %bb.aj
    i8 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %.loopexit.i
  %i.en = getelementptr i8, ptr %.4305.i, i64 1   ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !205 ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 108
  br i1 %i.ep, label %thread-pre-split459.i, label %bb.al

bb.aj:                                            ; preds = %.loopexit.i
  br label %thread-pre-split459.i

bb.ak:                                            ; preds = %.loopexit.i
  br label %thread-pre-split459.i

thread-pre-split459.i:                            ; preds = %bb.ak, %bb.aj, %bb.ai, %.loopexit.i
  %.sink571.i = phi i64 [ 2, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %.loopexit.i ]
  %.0332.ph.i = phi i32 [ 2, %bb.ai ], [ 4, %bb.aj ], [ 5, %bb.ak ], [ 3, %.loopexit.i ]
  %6 = getelementptr i8, ptr %.4305.i, i64 %.sink571.i ; 2 uses
  %.pr460.i = load i8, ptr %6, align 1, !tbaa !205
  br label %bb.al

bb.al:                                            ; preds = %thread-pre-split459.i, %bb.ai, %.loopexit.i
  %7 = phi i8 [ %.pr460.i, %thread-pre-split459.i ], [ %i.em, %.loopexit.i ], [ %i.eo, %bb.ai ] ; 2 uses
  %or.cond16.i = phi i1 [ true, %thread-pre-split459.i ], [ false, %.loopexit.i ], [ false, %bb.ai ]
  %8 = phi i1 [ true, %thread-pre-split459.i ], [ false, %.loopexit.i ], [ true, %bb.ai ]
  %.not397.i = phi i1 [ false, %thread-pre-split459.i ], [ true, %.loopexit.i ], [ false, %bb.ai ] ; 3 uses
  %.0332.i = phi i32 [ %.0332.ph.i, %thread-pre-split459.i ], [ 0, %.loopexit.i ], [ 1, %bb.ai ]
  %.5306.i = phi ptr [ %6, %thread-pre-split459.i ], [ %.4305.i, %.loopexit.i ], [ %i.en, %bb.ai ] ; 3 uses
  %.not396.i = icmp eq i8 %7, 0
  br i1 %.not396.i, label %.thread564.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = getelementptr i8, ptr %.5306.i, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !205
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i8 0, ptr %i.h, align 4, !tbaa !347
  %.pre501.i = load i8, ptr %.5306.i, align 1, !tbaa !205
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.et = phi i8 [ %.pre501.i, %bb.an ], [ %7, %bb.am ] ; 10 uses
  switch i8 %i.et, label %.thread564.i [
    i8 100, label %bb.ar
    i8 105, label %bb.ar
    i8 111, label %bb.ar
    i8 117, label %bb.ar
    i8 120, label %bb.ar
    i8 88, label %bb.ar
    i8 99, label %bb.ap
    i8 112, label %bb.ap
    i8 115, label %bb.aq
    i8 86, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.eu = icmp sgt i64 %.2315.i, -1
  %or.cond.i = select i1 %8, i1 true, i1 %i.eu
  %i.ev = icmp sgt i64 %.1317.i, -1
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.ev
  br i1 %or.cond14.i, label %bb.jq, label %bb.ar

bb.aq:                                            ; preds = %bb.ao, %bb.ao
  br i1 %or.cond16.i, label %bb.jq, label %bb.ar

.thread564.i:                                     ; preds = %bb.ao, %bb.al
  %i.ew = phi i8 [ %i.et, %bb.ao ], [ 0, %bb.al ]
  br i1 %.not397.i, label %bb.ar, label %bb.jq

bb.ar:                                            ; preds = %.thread564.i, %bb.aq, %bb.ap, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.ex = phi i8 [ %i.ew, %.thread564.i ], [ %i.et, %bb.aq ], [ %i.et, %bb.ap ], [ %i.et, %bb.ao ], [ %i.et, %bb.ao ], [ %i.et, %bb.ao ], [ %i.et, %bb.ao ], [ %i.et, %bb.ao ], [ %i.et, %bb.ao ] ; 7 uses
  switch i8 %i.ex, label %bb.jq [
    i8 99, label %bb.as
    i8 100, label %bb.bc
    i8 105, label %bb.bc
    i8 111, label %bb.bc
    i8 117, label %bb.bc
    i8 120, label %bb.bc
    i8 88, label %bb.bc
    i8 112, label %bb.gp
    i8 115, label %bb.gw
    i8 85, label %bb.hf
    i8 86, label %bb.hj
    i8 83, label %bb.hw
    i8 82, label %bb.id
    i8 65, label %bb.ik
    i8 84, label %bb.ir
    i8 78, label %bb.je
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ey = load i32, ptr %3, align 16              ; 3 uses
  %i.ez = icmp ult i32 %i.ey, 41
  br i1 %i.ez, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fa = load ptr, ptr %i.t, align 16
  %i.fb = zext nneg i32 %i.ey to i64
  %i.fc = getelementptr i8, ptr %i.fa, i64 %i.fb
  %i.fd = add nuw nsw i32 %i.ey, 8
  store i32 %i.fd, ptr %3, align 16
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.fe = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 8
  store ptr %i.ff, ptr %i.s, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fg = phi ptr [ %i.fc, %bb.at ], [ %i.fe, %bb.au ]
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !7  ; 6 uses
  %or.cond18.i = icmp ugt i32 %i.fh, 1114111
  br i1 %or.cond18.i, label %.critedge.i, label %bb.aw

.critedge.i:                                      ; preds = %bb.av
  %i.fi = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.fi, ptr noundef nonnull @.str.130) #33
  br label %.thread56

bb.aw:                                            ; preds = %bb.av
  %i.fj = load i32, ptr %i.w, align 4, !tbaa !276
  %.not.i48 = icmp ugt i32 %i.fh, %i.fj
  br i1 %.not.i48, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fk = load i64, ptr %i.x, align 8, !tbaa !278
  %i.fl = load i64, ptr %i.y, align 8, !tbaa !279 ; 2 uses
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = icmp sgt i64 %i.fm, 0
  br i1 %i.fn, label %.critedge.i50, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fo = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef 1, i32 noundef %i.fh) #33
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %.thread56, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.ay
  %.pre.i49 = load i64, ptr %i.y, align 8, !tbaa !279
  br label %.critedge.i50

.critedge.i50:                                    ; preds = %..critedge_crit_edge.i, %bb.ax
  %i.fq = phi i64 [ %.pre.i49, %..critedge_crit_edge.i ], [ %i.fl, %bb.ax ] ; 5 uses
  %i.fr = load i32, ptr %i.z, align 8, !tbaa !280
  %i.fs = load ptr, ptr %i.aa, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.fr, label %bb.bb [
    i32 1, label %bb.az
    i32 2, label %bb.ba
  ]

bb.az:                                            ; preds = %.critedge.i50
  %i.ft = trunc i32 %i.fh to i8
  %i.fu = getelementptr i8, ptr %i.fs, i64 %i.fq
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !205
  %.pre11.i = load i64, ptr %i.y, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit.thread

bb.ba:                                            ; preds = %.critedge.i50
  %i.fv = trunc i32 %i.fh to i16
  %i.fw = getelementptr [2 x i8], ptr %i.fs, i64 %i.fq
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit.thread

bb.bb:                                            ; preds = %.critedge.i50
  %i.fx = getelementptr [4 x i8], ptr %i.fs, i64 %i.fq
  store i32 %i.fh, ptr %i.fx, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit.thread

_PyUnicodeWriter_WriteCharInline.exit.thread:     ; preds = %bb.az, %bb.ba, %bb.bb
  %i.fy = phi i64 [ %.pre11.i, %bb.az ], [ %i.fq, %bb.ba ], [ %i.fq, %bb.bb ]
  %i.fz = add i64 %i.fy, 1
  store i64 %i.fz, ptr %i.y, align 8, !tbaa !279
  br label %bb.jr

bb.bc:                                            ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ga = load i32, ptr %3, align 16              ; 61 uses
  %i.gb = icmp ult i32 %i.ga, 41                  ; 30 uses
  switch i32 %.0332.i, label %bb.fe [
    i32 1, label %bb.bd
    i32 2, label %bb.by
    i32 3, label %bb.ct
    i32 4, label %bb.do
    i32 5, label %bb.ej
  ]

bb.bd:                                            ; preds = %bb.bc
  switch i8 %i.ex, label %bb.bu [
    i8 111, label %bb.be
    i8 117, label %bb.bi
    i8 120, label %bb.bm
    i8 88, label %bb.bq
  ]

bb.be:                                            ; preds = %bb.bd
  br i1 %i.gb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gc = load ptr, ptr %i.t, align 16
  %i.gd = zext nneg i32 %i.ga to i64
  %i.ge = getelementptr i8, ptr %i.gc, i64 %i.gd
  %i.gf = add nuw nsw i32 %i.ga, 8
  store i32 %i.gf, ptr %3, align 16
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.gg = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  store ptr %i.gh, ptr %i.s, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.gi = phi ptr [ %i.ge, %bb.bf ], [ %i.gg, %bb.bg ]
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !193
  %i.gk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.131, i64 noundef %i.gj) #33
  br label %bb.fz

bb.bi:                                            ; preds = %bb.bd
  br i1 %i.gb, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gl = load ptr, ptr %i.t, align 16
  %i.gm = zext nneg i32 %i.ga to i64
  %i.gn = getelementptr i8, ptr %i.gl, i64 %i.gm
  %i.go = add nuw nsw i32 %i.ga, 8
  store i32 %i.go, ptr %3, align 16
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.gp = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 8
  store ptr %i.gq, ptr %i.s, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.gr = phi ptr [ %i.gn, %bb.bj ], [ %i.gp, %bb.bk ]
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !193
  %i.gt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.132, i64 noundef %i.gs) #33
  br label %bb.fz

bb.bm:                                            ; preds = %bb.bd
  br i1 %i.gb, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gu = load ptr, ptr %i.t, align 16
  %i.gv = zext nneg i32 %i.ga to i64
  %i.gw = getelementptr i8, ptr %i.gu, i64 %i.gv
  %i.gx = add nuw nsw i32 %i.ga, 8
  store i32 %i.gx, ptr %3, align 16
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.gy = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 8
  store ptr %i.gz, ptr %i.s, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
end_hunk_0
begin_hunk_1_@_PyMem_RawWcsdup

declare i32 @_Py_SetFileSystemEncoding(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @formatter_field_name_split(ptr readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct.SubString, align 8          ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !197 ; 2 uses
  %i.c = getelementptr i8, ptr %.val21, i64 168
  %.val22 = load i64, ptr %i.c, align 8, !tbaa !198
  %i.d = and i64 %.val22, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.f = getelementptr i8, ptr %.val21, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !378
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.330, ptr noundef %i.g) #33 ; 0 uses
  br label %Py_XDECREF.exit26

bb.c:                                             ; preds = %bb.a
  %i.i = tail call ptr @_PyObject_New(ptr noundef nonnull @PyFieldNameIter_Type) #33 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_XDECREF.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %1, align 8, !tbaa !205    ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %1, align 8, !tbaa !205
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.e
  %i.n = getelementptr i8, ptr %i.i, i64 16
  store ptr %1, ptr %i.n, align 8, !tbaa !1010
  %i.o = getelementptr i8, ptr %1, i64 16
  %.val23 = load i64, ptr %i.o, align 8, !tbaa !207
  %i.p = getelementptr i8, ptr %i.i, i64 24
  %i.q = call fastcc i32 @field_name_split(ptr noundef nonnull %1, i64 noundef 0, i64 noundef %.val23, ptr noundef %2, ptr noundef %i.a, ptr noundef %i.p, ptr noundef null)
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit
  %i.r = load i64, ptr %i.a, align 8, !tbaa !193  ; 2 uses
  %.not20 = icmp eq i64 %i.r, -1
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.r) #33
  br label %SubString_new_object.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %2, align 8, !tbaa !940    ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %SubString_new_object.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !942
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !943
  %i.z = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %i.t, i64 noundef %i.w, i64 noundef %i.y), !inline_history !1012
  br label %SubString_new_object.exit

SubString_new_object.exit:                        ; preds = %bb.i, %bb.g
  %.015 = phi ptr [ %i.s, %bb.g ], [ %i.z, %bb.i ] ; 2 uses
  %i.aa = icmp eq ptr %.015, null
  br i1 %i.aa, label %bb.j, label %SubString_new_object.exit.thread

SubString_new_object.exit.thread:                 ; preds = %bb.h, %SubString_new_object.exit
  %.01528 = phi ptr [ %.015, %SubString_new_object.exit ], [ @_Py_NoneStruct, %bb.h ] ; 2 uses
  %i.ab = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %.01528, ptr noundef nonnull %i.i) #33
  br label %bb.j

bb.j:                                             ; preds = %SubString_new_object.exit.thread, %_Py_NewRef.exit, %SubString_new_object.exit
  %.1 = phi ptr [ null, %SubString_new_object.exit ], [ %.01528, %SubString_new_object.exit.thread ], [ null, %_Py_NewRef.exit ] ; 4 uses
  %.0 = phi ptr [ null, %SubString_new_object.exit ], [ %i.ab, %SubString_new_object.exit.thread ], [ null, %_Py_NewRef.exit ] ; 4 uses
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !205 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i, label %bb.k, label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.i, align 8, !tbaa !205
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %Py_XDECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.j, %bb.k, %bb.l
  %.not.i24 = icmp eq ptr %.1, null
  br i1 %.not.i24, label %Py_XDECREF.exit26, label %bb.m

bb.m:                                             ; preds = %Py_XDECREF.exit
  %i.af = load i32, ptr %.1, align 8, !tbaa !205  ; 2 uses
  %.not.i.i25 = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i25, label %bb.n, label %Py_XDECREF.exit26

bb.n:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %.1, align 8, !tbaa !205
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %Py_XDECREF.exit26

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #33
  br label %Py_XDECREF.exit26

Py_XDECREF.exit26:                                ; preds = %bb.o, %bb.n, %bb.m, %Py_XDECREF.exit, %bb.c, %bb.b
  %.016 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.0, %Py_XDECREF.exit ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ %.0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %.016
}

; Function Attrs: nounwind uwtable
define internal ptr @formatter_parser(ptr readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %i.b = getelementptr i8, ptr %.val11, i64 168
  %.val12 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val12, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.e = getelementptr i8, ptr %.val11, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !378
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.330, ptr noundef %i.f) #33 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @_PyObject_New(ptr noundef nonnull @PyFormatterIter_Type) #33 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 8, !tbaa !205    ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %1, align 8, !tbaa !205
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.e
  %i.m = getelementptr i8, ptr %i.h, i64 16
  store ptr %1, ptr %i.m, align 8, !tbaa !1013
  %i.n = getelementptr i8, ptr %i.h, i64 24
  %i.o = getelementptr i8, ptr %1, i64 16
  %.val13 = load i64, ptr %i.o, align 8, !tbaa !207
  store ptr %1, ptr %i.n, align 8, !tbaa !940
  %i.p = getelementptr i8, ptr %i.h, i64 32
  store i64 0, ptr %i.p, align 8, !tbaa !942
  %i.q = getelementptr i8, ptr %i.h, i64 40
  store i64 %.val13, ptr %i.q, align 8, !tbaa !943
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_Py_NewRef.exit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %_Py_NewRef.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @_PyObject_New(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.and.v4i16(<4 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.smin.v2i64(<2 x i64>) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.vector.extract.last.active.v2i64(<2 x i64>, <2 x i1>, i64) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nounwind }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS3_is", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !29, i64 224840}
!15 = !{!"_is", !16, i64 0, !12, i64 7264, !17, i64 7272, !17, i64 7280, !8, i64 7288, !17, i64 7296, !8, i64 7304, !8, i64 7308, !8, i64 7312, !17, i64 7320, !22, i64 7328, !24, i64 7376, !20, i64 7384, !17, i64 7392, !25, i64 7400, !29, i64 7680, !29, i64 7688, !30, i64 7696, !34, i64 7832, !17, i64 8040, !35, i64 8048, !36, i64 8080, !17, i64 8536, !29, i64 8544, !29, i64 8552, !29, i64 8560, !13, i64 8568, !9, i64 8576, !9, i64 8640, !17, i64 8648, !9, i64 8656, !41, i64 10696, !29, i64 10744, !29, i64 10752, !29, i64 10760, !46, i64 10768, !47, i64 10832, !49, i64 10848, !52, i64 10872, !55, i64 10928, !21, i64 10944, !57, i64 10952, !29, i64 10960, !9, i64 10968, !9, i64 11032, !9, i64 11096, !9, i64 11160, !9, i64 11161, !58, i64 11168, !61, i64 11832, !66, i64 11888, !67, i64 11896, !69, i64 14336, !70, i64 79880, !72, i64 79896, !73, i64 79968, !74, i64 80000, !75, i64 80024, !76, i64 82008, !80, i64 223296, !9, i64 223328, !50, i64 223384, !50, i64 223385, !81, i64 223386, !83, i64 223400, !83, i64 223408, !83, i64 223416, !83, i64 223424, !17, i64 223432, !84, i64 223440, !13, i64 223448, !85, i64 223456, !51, i64 223472, !51, i64 223473, !17, i64 223480, !17, i64 223488, !9, i64 223496, !9, i64 224712, !9, i64 224776, !86, i64 224840, !88, i64 224928, !17, i64 225064, !93, i64 225072}
!16 = !{!"_ceval_state", !17, i64 0, !8, i64 8, !18, i64 16, !8, i64 24, !19, i64 32}
!17 = !{!"long", !9, i64 0}
!18 = !{!"p1 _ZTS18_gil_runtime_state", !13, i64 0}
!19 = !{!"_pending_calls", !20, i64 0, !21, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 7224, !8, i64 7228}
!20 = !{!"p1 _ZTS3_ts", !13, i64 0}
!21 = !{!"PyMutex", !9, i64 0}
!22 = !{!"pythreads", !17, i64 0, !20, i64 8, !23, i64 16, !20, i64 24, !17, i64 32, !17, i64 40}
!23 = !{!"p1 _ZTS18_PyThreadStateImpl", !13, i64 0}
!24 = !{!"p1 _ZTS14pyruntimestate", !13, i64 0}
!25 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !26, i64 8, !9, i64 32, !26, i64 80, !9, i64 104, !8, i64 224, !28, i64 232, !29, i64 240, !29, i64 248, !17, i64 256, !17, i64 264, !8, i64 272, !8, i64 276}
!26 = !{!"gc_generation", !27, i64 0, !8, i64 16, !8, i64 20}
!27 = !{!"", !17, i64 0, !17, i64 8}
!28 = !{!"p1 _ZTS19_PyInterpreterFrame", !13, i64 0}
!29 = !{!"p1 _ZTS7_object", !13, i64 0}
!30 = !{!"_import_state", !29, i64 0, !29, i64 8, !29, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !29, i64 40, !29, i64 48, !8, i64 56, !29, i64 64, !29, i64 72, !29, i64 80, !31, i64 88, !33, i64 112}
!31 = !{!"", !21, i64 0, !32, i64 8, !17, i64 16}
!32 = !{!"long long", !9, i64 0}
!33 = !{!"", !8, i64 0, !17, i64 8, !8, i64 16}
!34 = !{!"_gil_runtime_state", !17, i64 0, !20, i64 8, !8, i64 16, !17, i64 24, !9, i64 32, !9, i64 80, !9, i64 120, !9, i64 168}
!35 = !{!"codecs_state", !29, i64 0, !29, i64 8, !29, i64 16, !8, i64 24}
!36 = !{!"PyConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !17, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !37, i64 64, !8, i64 72, !8, i64 76, !37, i64 80, !37, i64 88, !37, i64 96, !8, i64 104, !38, i64 112, !38, i64 128, !38, i64 144, !38, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !37, i64 288, !37, i64 296, !37, i64 304, !37, i64 312, !8, i64 320, !38, i64 328, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !8, i64 400, !37, i64 408, !37, i64 416, !37, i64 424, !37, i64 432, !8, i64 440, !8, i64 444, !8, i64 448}
!37 = !{!"p1 int", !13, i64 0}
!38 = !{!"", !17, i64 0, !39, i64 8}
!39 = !{!"p2 int", !40, i64 0}
!40 = !{!"any p2 pointer", !13, i64 0}
!41 = !{!"", !42, i64 0, !45, i64 24}
!42 = !{!"_xid_lookup_state", !43, i64 0}
!43 = !{!"", !8, i64 0, !8, i64 4, !21, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTS12_xid_regitem", !13, i64 0}
!45 = !{!"xi_exceptions", !29, i64 0, !29, i64 8, !29, i64 16}
!46 = !{!"_warnings_runtime_state", !29, i64 0, !29, i64 8, !29, i64 16, !31, i64 24, !17, i64 48, !29, i64 56}
!47 = !{!"atexit_state", !48, i64 0, !29, i64 8}
!48 = !{!"p1 _ZTS15atexit_callback", !13, i64 0}
!49 = !{!"_stoptheworld_state", !21, i64 0, !50, i64 1, !50, i64 2, !50, i64 3, !51, i64 4, !17, i64 8, !20, i64 16}
!50 = !{!"_Bool", !9, i64 0}
!51 = !{!"", !9, i64 0}
!52 = !{!"_qsbr_shared", !17, i64 0, !17, i64 8, !53, i64 16, !13, i64 24, !17, i64 32, !21, i64 40, !54, i64 48}
!53 = !{!"p1 _ZTS9_qsbr_pad", !13, i64 0}
!54 = !{!"p1 _ZTS18_qsbr_thread_state", !13, i64 0}
!55 = !{!"llist_node", !56, i64 0, !56, i64 8}
!56 = !{!"p1 _ZTS10llist_node", !13, i64 0}
!57 = !{!"p1 _ZTS15_obmalloc_state", !13, i64 0}
!58 = !{!"_py_object_state", !59, i64 0, !8, i64 656}
!59 = !{!"_Py_freelists", !60, i64 0, !60, i64 16, !60, i64 32, !9, i64 48, !60, i64 368, !60, i64 384, !60, i64 400, !60, i64 416, !60, i64 432, !60, i64 448, !60, i64 464, !60, i64 480, !60, i64 496, !60, i64 512, !60, i64 528, !60, i64 544, !60, i64 560, !60, i64 576, !60, i64 592, !60, i64 608, !60, i64 624, !60, i64 640}
!60 = !{!"_Py_freelist", !13, i64 0, !17, i64 8}
!61 = !{!"_Py_unicode_state", !62, i64 0, !13, i64 32, !64, i64 40}
!62 = !{!"_Py_unicode_fs_codec", !63, i64 0, !8, i64 8, !63, i64 16, !8, i64 24}
!63 = !{!"p1 omnipotent char", !13, i64 0}
!64 = !{!"_Py_unicode_ids", !17, i64 0, !65, i64 8}
!65 = !{!"p2 _ZTS7_object", !40, i64 0}
!66 = !{!"_Py_long_state", !8, i64 0}
!67 = !{!"_dtoa_state", !9, i64 0, !9, i64 64, !9, i64 128, !68, i64 2432}
!68 = !{!"p1 double", !13, i64 0}
!69 = !{!"_py_func_state", !8, i64 0, !9, i64 8}
!70 = !{!"_py_code_state", !21, i64 0, !71, i64 8}
!71 = !{!"p1 _ZTS15_Py_hashtable_t", !13, i64 0}
!72 = !{!"_Py_dict_state", !8, i64 0, !9, i64 8}
!73 = !{!"_Py_exc_state", !29, i64 0, !13, i64 8, !8, i64 16, !29, i64 24}
!74 = !{!"_Py_mem_interp_free_queue", !8, i64 0, !21, i64 4, !55, i64 8}
!75 = !{!"ast_state", !51, i64 0, !8, i64 4, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56, !29, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !29, i64 96, !29, i64 104, !29, i64 112, !29, i64 120, !29, i64 128, !29, i64 136, !29, i64 144, !29, i64 152, !29, i64 160, !29, i64 168, !29, i64 176, !29, i64 184, !29, i64 192, !29, i64 200, !29, i64 208, !29, i64 216, !29, i64 224, !29, i64 232, !29, i64 240, !29, i64 248, !29, i64 256, !29, i64 264, !29, i64 272, !29, i64 280, !29, i64 288, !29, i64 296, !29, i64 304, !29, i64 312, !29, i64 320, !29, i64 328, !29, i64 336, !29, i64 344, !29, i64 352, !29, i64 360, !29, i64 368, !29, i64 376, !29, i64 384, !29, i64 392, !29, i64 400, !29, i64 408, !29, i64 416, !29, i64 424, !29, i64 432, !29, i64 440, !29, i64 448, !29, i64 456, !29, i64 464, !29, i64 472, !29, i64 480, !29, i64 488, !29, i64 496, !29, i64 504, !29, i64 512, !29, i64 520, !29, i64 528, !29, i64 536, !29, i64 544, !29, i64 552, !29, i64 560, !29, i64 568, !29, i64 576, !29, i64 584, !29, i64 592, !29, i64 600, !29, i64 608, !29, i64 616, !29, i64 624, !29, i64 632, !29, i64 640, !29, i64 648, !29, i64 656, !29, i64 664, !29, i64 672, !29, i64 680, !29, i64 688, !29, i64 696, !29, i64 704, !29, i64 712, !29, i64 720, !29, i64 728, !29, i64 736, !29, i64 744, !29, i64 752, !29, i64 760, !29, i64 768, !29, i64 776, !29, i64 784, !29, i64 792, !29, i64 800, !29, i64 808, !29, i64 816, !29, i64 824, !29, i64 832, !29, i64 840, !29, i64 848, !29, i64 856, !29, i64 864, !29, i64 872, !29, i64 880, !29, i64 888, !29, i64 896, !29, i64 904, !29, i64 912, !29, i64 920, !29, i64 928, !29, i64 936, !29, i64 944, !29, i64 952, !29, i64 960, !29, i64 968, !29, i64 976, !29, i64 984, !29, i64 992, !29, i64 1000, !29, i64 1008, !29, i64 1016, !29, i64 1024, !29, i64 1032, !29, i64 1040, !29, i64 1048, !29, i64 1056, !29, i64 1064, !29, i64 1072, !29, i64 1080, !29, i64 1088, !29, i64 1096, !29, i64 1104, !29, i64 1112, !29, i64 1120, !29, i64 1128, !29, i64 1136, !29, i64 1144, !29, i64 1152, !29, i64 1160, !29, i64 1168, !29, i64 1176, !29, i64 1184, !29, i64 1192, !29, i64 1200, !29, i64 1208, !29, i64 1216, !29, i64 1224, !29, i64 1232, !29, i64 1240, !29, i64 1248, !29, i64 1256, !29, i64 1264, !29, i64 1272, !29, i64 1280, !29, i64 1288, !29, i64 1296, !29, i64 1304, !29, i64 1312, !29, i64 1320, !29, i64 1328, !29, i64 1336, !29, i64 1344, !29, i64 1352, !29, i64 1360, !29, i64 1368, !29, i64 1376, !29, i64 1384, !29, i64 1392, !29, i64 1400, !29, i64 1408, !29, i64 1416, !29, i64 1424, !29, i64 1432, !29, i64 1440, !29, i64 1448, !29, i64 1456, !29, i64 1464, !29, i64 1472, !29, i64 1480, !29, i64 1488, !29, i64 1496, !29, i64 1504, !29, i64 1512, !29, i64 1520, !29, i64 1528, !29, i64 1536, !29, i64 1544, !29, i64 1552, !29, i64 1560, !29, i64 1568, !29, i64 1576, !29, i64 1584, !29, i64 1592, !29, i64 1600, !29, i64 1608, !29, i64 1616, !29, i64 1624, !29, i64 1632, !29, i64 1640, !29, i64 1648, !29, i64 1656, !29, i64 1664, !29, i64 1672, !29, i64 1680, !29, i64 1688, !29, i64 1696, !29, i64 1704, !29, i64 1712, !29, i64 1720, !29, i64 1728, !29, i64 1736, !29, i64 1744, !29, i64 1752, !29, i64 1760, !29, i64 1768, !29, i64 1776, !29, i64 1784, !29, i64 1792, !29, i64 1800, !29, i64 1808, !29, i64 1816, !29, i64 1824, !29, i64 1832, !29, i64 1840, !29, i64 1848, !29, i64 1856, !29, i64 1864, !29, i64 1872, !29, i64 1880, !29, i64 1888, !29, i64 1896, !29, i64 1904, !29, i64 1912, !29, i64 1920, !29, i64 1928, !29, i64 1936, !29, i64 1944, !29, i64 1952, !29, i64 1960, !29, i64 1968, !29, i64 1976}
!76 = !{!"types_state", !8, i64 0, !77, i64 8, !78, i64 98312, !79, i64 108016, !21, i64 108512, !9, i64 108520}
!77 = !{!"type_cache", !9, i64 0}
!78 = !{!"", !17, i64 0, !9, i64 8}
!79 = !{!"", !17, i64 0, !17, i64 8, !9, i64 16}
!80 = !{!"callable_cache", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!81 = !{!"_PyOptimizationConfig", !82, i64 0, !82, i64 2, !82, i64 4, !82, i64 6, !50, i64 8, !50, i64 9}
!82 = !{!"short", !9, i64 0}
!83 = !{!"p1 _ZTS17_PyExecutorObject", !13, i64 0}
!84 = !{!"_rare_events", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4}
!85 = !{!"_Py_GlobalMonitors", !9, i64 0}
!86 = !{!"_Py_interp_cached_objects", !29, i64 0, !29, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !87, i64 40, !87, i64 48, !87, i64 56, !87, i64 64, !29, i64 72, !29, i64 80}
!87 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!88 = !{!"_Py_interp_static_objects", !89, i64 0}
!89 = !{!"", !8, i64 0, !27, i64 8, !90, i64 24, !92, i64 64}
!90 = !{!"", !91, i64 0, !13, i64 16, !29, i64 24, !17, i64 32}
!91 = !{!"_object", !9, i64 0, !87, i64 8}
!92 = !{!"", !91, i64 0, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56, !9, i64 64}
!93 = !{!"_PyThreadStateImpl", !94, i64 0, !101, i64 848, !17, i64 936, !17, i64 944, !17, i64 952, !17, i64 960, !17, i64 968, !17, i64 976, !29, i64 984, !29, i64 992, !8, i64 1000, !55, i64 1008, !54, i64 1024, !55, i64 1032}
!94 = !{!"_ts", !20, i64 0, !20, i64 8, !12, i64 16, !17, i64 24, !95, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !28, i64 72, !28, i64 80, !28, i64 88, !13, i64 96, !13, i64 104, !29, i64 112, !29, i64 120, !29, i64 128, !96, i64 136, !29, i64 144, !8, i64 152, !29, i64 160, !17, i64 168, !17, i64 176, !29, i64 184, !17, i64 192, !8, i64 200, !29, i64 208, !29, i64 216, !29, i64 224, !17, i64 232, !17, i64 240, !97, i64 248, !65, i64 256, !65, i64 264, !98, i64 272, !29, i64 288, !99, i64 296, !17, i64 304, !29, i64 312, !29, i64 320, !100, i64 328}
!95 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!96 = !{!"p1 _ZTS14_err_stackitem", !13, i64 0}
!97 = !{!"p1 _ZTS12_stack_chunk", !13, i64 0}
!98 = !{!"_err_stackitem", !29, i64 0, !96, i64 8}
!99 = !{!"p1 _ZTS11_PyExitData", !13, i64 0}
!100 = !{!"", !8, i64 0, !9, i64 4}
!101 = !{!"_PyInterpreterFrame", !9, i64 0, !28, i64 8, !9, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !102, i64 48, !13, i64 56, !103, i64 64, !82, i64 72, !9, i64 74, !9, i64 75, !9, i64 80}
!102 = !{!"p1 _ZTS6_frame", !13, i64 0}
!103 = !{!"p1 _ZTS11_PyStackRef", !13, i64 0}
!104 = !{!105, !71, i64 14128}
!105 = !{!"pyruntimestate", !106, i64 0, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !8, i64 840, !20, i64 848, !17, i64 856, !127, i64 864, !17, i64 896, !20, i64 904, !128, i64 912, !129, i64 936, !135, i64 1240, !136, i64 1256, !138, i64 1280, !140, i64 1320, !142, i64 2400, !38, i64 2408, !143, i64 2424, !145, i64 2488, !146, i64 2760, !149, i64 2800, !154, i64 10144, !155, i64 10160, !157, i64 10168, !158, i64 10176, !163, i64 10352, !166, i64 10568, !110, i64 10584, !49, i64 10592, !167, i64 10616, !13, i64 10656, !13, i64 10664, !168, i64 10672, !170, i64 10688, !171, i64 10692, !172, i64 10704, !174, i64 10720, !175, i64 14120, !176, i64 14128, !177, i64 14136, !15, i64 119552}
!106 = !{!"_Py_DebugOffsets", !9, i64 0, !17, i64 8, !17, i64 16, !107, i64 24, !108, i64 48, !109, i64 176, !110, i64 296, !111, i64 304, !112, i64 368, !113, i64 456, !114, i64 472, !115, i64 504, !116, i64 528, !117, i64 552, !118, i64 584, !119, i64 608, !120, i64 624, !121, i64 648, !122, i64 672, !123, i64 704, !124, i64 728, !125, i64 760, !126, i64 776}
!107 = !{!"_runtime_state", !17, i64 0, !17, i64 8, !17, i64 16}
!108 = !{!"_interpreter_state", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120}
!109 = !{!"_thread_state", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112}
!110 = !{!"", !17, i64 0}
!111 = !{!"_interpreter_frame", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56}
!112 = !{!"_code_object", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80}
!113 = !{!"_pyobject", !17, i64 0, !17, i64 8}
!114 = !{!"_type_object", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
end_hunk_1
