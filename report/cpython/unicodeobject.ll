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
  call void @PyErr_SetString(ptr noundef %i.cl, ptr noundef nonnull @.str.128) #37
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
  call void @PyErr_SetString(ptr noundef %i.ec, ptr noundef nonnull @.str.129) #37
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
  %i.em = phi i8 [ %.pre500.i, %bb.ad ], [ %i.cu, %.loopexit477.i ], [ %i.cx, %bb.ae ], [ %i.ds, %bb.af ], [ %i.eh, %bb.ah ] ; 3 uses
  %.1317.i = phi i64 [ %spec.store.select.i, %bb.ad ], [ -1, %.loopexit477.i ], [ -1, %bb.ae ], [ %i.dq, %bb.af ], [ %i.ef, %bb.ah ] ; 13 uses
  %.4305.i = phi ptr [ %i.dl, %bb.ad ], [ %.2303.i, %.loopexit477.i ], [ %i.cw, %bb.ae ], [ %i.dr, %bb.af ], [ %i.eg, %bb.ah ] ; 3 uses
  %i.en = call i8 @llvm.fshl.i8(i8 %i.em, i8 %i.em, i8 7)
  switch i8 %i.en, label %bb.al [
    i8 54, label %bb.ai
    i8 61, label %thread-pre-split459.i
    i8 58, label %bb.aj
    i8 53, label %bb.ak
  ]

bb.ai:                                            ; preds = %.loopexit.i
  %i.eo = getelementptr i8, ptr %.4305.i, i64 1   ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !205 ; 2 uses
  %i.eq = icmp eq i8 %i.ep, 108
  br i1 %i.eq, label %thread-pre-split459.i, label %bb.al

bb.aj:                                            ; preds = %.loopexit.i
  br label %thread-pre-split459.i

bb.ak:                                            ; preds = %.loopexit.i
  br label %thread-pre-split459.i

thread-pre-split459.i:                            ; preds = %bb.ak, %bb.aj, %bb.ai, %.loopexit.i
  %.sink571.i = phi i64 [ 2, %bb.ai ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %.loopexit.i ]
  %.0332.ph.i = phi i32 [ 2, %bb.ai ], [ 4, %bb.aj ], [ 5, %bb.ak ], [ 3, %.loopexit.i ]
  %i.er = getelementptr i8, ptr %.4305.i, i64 %.sink571.i ; 2 uses
  %.pr460.i = load i8, ptr %i.er, align 1, !tbaa !205
  br label %bb.al

bb.al:                                            ; preds = %thread-pre-split459.i, %bb.ai, %.loopexit.i
  %i.es = phi i8 [ %.pr460.i, %thread-pre-split459.i ], [ %i.em, %.loopexit.i ], [ %i.ep, %bb.ai ] ; 2 uses
  %or.cond16.i = phi i1 [ true, %thread-pre-split459.i ], [ false, %.loopexit.i ], [ false, %bb.ai ]
  %i.et = phi i1 [ true, %thread-pre-split459.i ], [ false, %.loopexit.i ], [ true, %bb.ai ]
  %.not397.i = phi i1 [ false, %thread-pre-split459.i ], [ true, %.loopexit.i ], [ false, %bb.ai ] ; 3 uses
  %.0332.i = phi i32 [ %.0332.ph.i, %thread-pre-split459.i ], [ 0, %.loopexit.i ], [ 1, %bb.ai ]
  %.5306.i = phi ptr [ %i.er, %thread-pre-split459.i ], [ %.4305.i, %.loopexit.i ], [ %i.eo, %bb.ai ] ; 3 uses
  %.not396.i = icmp eq i8 %i.es, 0
  br i1 %.not396.i, label %.thread564.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eu = getelementptr i8, ptr %.5306.i, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !205
  %i.ew = icmp eq i8 %i.ev, 0
  br i1 %i.ew, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i8 0, ptr %i.h, align 4, !tbaa !347
  %.pre501.i = load i8, ptr %.5306.i, align 1, !tbaa !205
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ex = phi i8 [ %.pre501.i, %bb.an ], [ %i.es, %bb.am ] ; 10 uses
  switch i8 %i.ex, label %.thread564.i [
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
  %i.ey = icmp sgt i64 %.2315.i, -1
  %or.cond.i = select i1 %i.et, i1 true, i1 %i.ey
  %i.ez = icmp sgt i64 %.1317.i, -1
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.ez
  br i1 %or.cond14.i, label %bb.jq, label %bb.ar

bb.aq:                                            ; preds = %bb.ao, %bb.ao
  br i1 %or.cond16.i, label %bb.jq, label %bb.ar

.thread564.i:                                     ; preds = %bb.ao, %bb.al
  %i.fa = phi i8 [ %i.ex, %bb.ao ], [ 0, %bb.al ]
  br i1 %.not397.i, label %bb.ar, label %bb.jq

bb.ar:                                            ; preds = %.thread564.i, %bb.aq, %bb.ap, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.fb = phi i8 [ %i.fa, %.thread564.i ], [ %i.ex, %bb.aq ], [ %i.ex, %bb.ap ], [ %i.ex, %bb.ao ], [ %i.ex, %bb.ao ], [ %i.ex, %bb.ao ], [ %i.ex, %bb.ao ], [ %i.ex, %bb.ao ], [ %i.ex, %bb.ao ] ; 7 uses
  switch i8 %i.fb, label %bb.jq [
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
  %i.fc = load i32, ptr %3, align 16              ; 3 uses
  %i.fd = icmp ult i32 %i.fc, 41
  br i1 %i.fd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fe = load ptr, ptr %i.t, align 16
  %i.ff = zext nneg i32 %i.fc to i64
  %i.fg = getelementptr i8, ptr %i.fe, i64 %i.ff
  %i.fh = add nuw nsw i32 %i.fc, 8
  store i32 %i.fh, ptr %3, align 16
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.fi = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  store ptr %i.fj, ptr %i.s, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fk = phi ptr [ %i.fg, %bb.at ], [ %i.fi, %bb.au ]
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !7  ; 6 uses
  %or.cond18.i = icmp ugt i32 %i.fl, 1114111
  br i1 %or.cond18.i, label %.critedge.i, label %bb.aw

.critedge.i:                                      ; preds = %bb.av
  %i.fm = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.fm, ptr noundef nonnull @.str.130) #37
  br label %.thread56

bb.aw:                                            ; preds = %bb.av
  %i.fn = load i32, ptr %i.w, align 4, !tbaa !276
  %.not.i48 = icmp ugt i32 %i.fl, %i.fn
  br i1 %.not.i48, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fo = load i64, ptr %i.x, align 8, !tbaa !278
  %i.fp = load i64, ptr %i.y, align 8, !tbaa !279 ; 2 uses
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = icmp sgt i64 %i.fq, 0
  br i1 %i.fr, label %.critedge.i50, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fs = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %0, i64 noundef 1, i32 noundef %i.fl) #37
  %i.ft = icmp slt i32 %i.fs, 0
  br i1 %i.ft, label %.thread56, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.ay
  %.pre.i49 = load i64, ptr %i.y, align 8, !tbaa !279
  br label %.critedge.i50

.critedge.i50:                                    ; preds = %..critedge_crit_edge.i, %bb.ax
  %i.fu = phi i64 [ %.pre.i49, %..critedge_crit_edge.i ], [ %i.fp, %bb.ax ] ; 5 uses
  %i.fv = load i32, ptr %i.z, align 8, !tbaa !280
  %i.fw = load ptr, ptr %i.aa, align 8, !tbaa !281 ; 3 uses
  switch i32 %i.fv, label %bb.bb [
    i32 1, label %bb.az
    i32 2, label %bb.ba
  ]

bb.az:                                            ; preds = %.critedge.i50
  %i.fx = trunc i32 %i.fl to i8
  %i.fy = getelementptr i8, ptr %i.fw, i64 %i.fu
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !205
  %.pre11.i = load i64, ptr %i.y, align 8, !tbaa !279
  br label %_PyUnicodeWriter_WriteCharInline.exit.thread

bb.ba:                                            ; preds = %.critedge.i50
  %i.fz = trunc i32 %i.fl to i16
  %i.ga = getelementptr [2 x i8], ptr %i.fw, i64 %i.fu
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !208
  br label %_PyUnicodeWriter_WriteCharInline.exit.thread

bb.bb:                                            ; preds = %.critedge.i50
  %i.gb = getelementptr [4 x i8], ptr %i.fw, i64 %i.fu
  store i32 %i.fl, ptr %i.gb, align 4, !tbaa !7
  br label %_PyUnicodeWriter_WriteCharInline.exit.thread

_PyUnicodeWriter_WriteCharInline.exit.thread:     ; preds = %bb.az, %bb.ba, %bb.bb
  %i.gc = phi i64 [ %.pre11.i, %bb.az ], [ %i.fu, %bb.ba ], [ %i.fu, %bb.bb ]
  %i.gd = add i64 %i.gc, 1
  store i64 %i.gd, ptr %i.y, align 8, !tbaa !279
  br label %bb.jr

bb.bc:                                            ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.ge = load i32, ptr %3, align 16              ; 61 uses
  %i.gf = icmp ult i32 %i.ge, 41                  ; 30 uses
  switch i32 %.0332.i, label %bb.fe [
    i32 1, label %bb.bd
    i32 2, label %bb.by
    i32 3, label %bb.ct
    i32 4, label %bb.do
    i32 5, label %bb.ej
  ]

bb.bd:                                            ; preds = %bb.bc
  switch i8 %i.fb, label %bb.bu [
    i8 111, label %bb.be
    i8 117, label %bb.bi
    i8 120, label %bb.bm
    i8 88, label %bb.bq
  ]

bb.be:                                            ; preds = %bb.bd
  br i1 %i.gf, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
end_hunk_0
