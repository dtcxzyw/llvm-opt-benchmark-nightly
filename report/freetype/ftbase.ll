Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@FT_Outline_EmboldenXY:bb.a
  %.021.i136 = tail call i64 @llvm.abs.i64(i64 %i.q, i1 true)
  %i.r = icmp slt i64 %2, -1
  %wide.trip.count = zext i16 %i.k to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph185, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0110183 = phi i32 [ -1, %.lr.ph185 ], [ %i.v, %._crit_edge ]
  %i.s = add nsw i32 %.0110183, 1                 ; 4 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2, !tbaa !75
  %i.v = zext i16 %i.u to i32                     ; 5 uses
  %.not187 = icmp eq i32 %i.s, %i.v
  br i1 %.not187, label %._crit_edge, label %.lr.ph181

.lr.ph181:                                        ; preds = %bb.f, %FT_Vector_NormLen.exit.thread
  %.0179 = phi i32 [ %.3, %FT_Vector_NormLen.exit.thread ], [ -1, %bb.f ] ; 6 uses
  %.097178 = phi i32 [ %i.gj, %FT_Vector_NormLen.exit.thread ], [ %i.s, %bb.f ] ; 9 uses
  %.098177 = phi i32 [ %.3101, %FT_Vector_NormLen.exit.thread ], [ %i.v, %bb.f ] ; 6 uses
  %.0103175 = phi i64 [ %.3106, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.0108174 = phi i64 [ %.1109, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.sroa.052.0172 = phi i64 [ %.sroa.052.3, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.sroa.5.0170 = phi i64 [ %.sroa.5.3, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 5 uses
  %.sroa.056.0169 = phi i64 [ %.sroa.056.1, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 6 uses
  %.sroa.8.0168 = phi i64 [ %.sroa.8.1, %FT_Vector_NormLen.exit.thread ], [ 0, %bb.f ] ; 6 uses
  %.not118 = icmp eq i32 %.097178, %.0179
  br i1 %.not118, label %bb.r, label %bb.g

bb.g:                                             ; preds = %.lr.ph181
  %i.w = sext i32 %.097178 to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !173
  %i.z = sext i32 %.098177 to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.z ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !173
  %i.ac = sub nsw i64 %i.y, %i.ab                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !176
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !176
  %i.ah = sub nsw i64 %i.ae, %i.ag                ; 2 uses
  %i.ai = trunc i64 %i.ac to i32                  ; 3 uses
  %i.aj = trunc i64 %i.ah to i32                  ; 3 uses
  %i.ak = icmp slt i32 %i.ai, 0                   ; 2 uses
  %.088.i = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 false) ; 6 uses
  %i.al = icmp slt i32 %i.aj, 0                   ; 2 uses
  %.086.i = tail call i32 @llvm.abs.i32(i32 %i.aj, i1 false) ; 6 uses
  %i.am = icmp eq i32 %i.ai, 0
  %.not102.i = icmp eq i32 %i.aj, 0               ; 2 uses
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.i = select i1 %i.al, i64 -65536, i64 65536
  br i1 %.not102.i, label %FT_Vector_NormLen.exit.thread, label %FT_Vector_NormLen.exit

bb.i:                                             ; preds = %bb.g
  %.084.i = select i1 %i.ak, i64 -65536, i64 65536
  br i1 %.not102.i, label %FT_Vector_NormLen.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp ugt i32 %.088.i, %.086.i
  %i.ao = lshr i32 %.086.i, 1
  %i.ap = add nuw i32 %i.ao, %.088.i
  %i.aq = lshr i32 %.088.i, 1
  %i.ar = add nuw i32 %.086.i, %i.aq
  %i.as = select i1 %i.an, i32 %i.ap, i32 %i.ar   ; 3 uses
  %i.at = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.as, i1 true) ; 2 uses
  %i.au = zext i32 %i.as to i64
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = lshr i64 2863311530, %i.av
  %.not.i = icmp samesign ugt i64 %i.aw, %i.au
  %.neg.i = select i1 %.not.i, i32 -15, i32 -16
  %i.ax = add nsw i32 %.neg.i, %i.at              ; 7 uses
  %i.ay = icmp sgt i32 %i.ax, 0                   ; 2 uses
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = shl i32 %.088.i, %i.ax                  ; 4 uses
  %i.ba = shl i32 %.086.i, %i.ax                  ; 4 uses
  %i.bb = icmp ugt i32 %i.az, %i.ba
  %i.bc = lshr i32 %i.ba, 1
  %i.bd = add i32 %i.bc, %i.az
  %i.be = lshr i32 %i.az, 1
  %i.bf = add i32 %i.be, %i.ba
  %i.bg = select i1 %i.bb, i32 %i.bd, i32 %i.bf
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bh = sub nsw i32 0, %i.ax                    ; 3 uses
  %i.bi = lshr i32 %.088.i, %i.bh
  %i.bj = lshr i32 %.086.i, %i.bh
  %i.bk = lshr i32 %i.as, %i.bh
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.189.i = phi i32 [ %i.az, %bb.k ], [ %i.bi, %bb.l ] ; 3 uses
  %.187.i = phi i32 [ %i.ba, %bb.k ], [ %i.bj, %bb.l ] ; 3 uses
  %.085.i = phi i32 [ %i.bg, %bb.k ], [ %i.bk, %bb.l ]
  %i.bl = sub nsw i32 65536, %.085.i
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.090.i = phi i32 [ %i.bl, %bb.m ], [ %i.ca, %bb.n ] ; 4 uses
  %i.bm = mul nsw i32 %.090.i, %.189.i
  %i.bn = ashr i32 %i.bm, 16
  %i.bo = add nsw i32 %i.bn, %.189.i              ; 4 uses
  %i.bp = mul nsw i32 %.090.i, %.187.i
  %i.bq = ashr i32 %i.bp, 16
  %i.br = add nsw i32 %i.bq, %.187.i              ; 4 uses
  %i.bs = mul i32 %i.bo, %i.bo
  %i.bt = mul i32 %i.br, %i.br
  %i.bu = add i32 %i.bs, %i.bt
  %i.bv = sdiv i32 %i.bu, -512
  %i.bw = add nsw i32 %.090.i, 65536
  %i.bx = ashr i32 %i.bw, 8
  %i.by = mul nsw i32 %i.bv, %i.bx                ; 2 uses
  %i.bz = lshr i32 %i.by, 16
  %i.ca = add nsw i32 %i.bz, %.090.i
  %i.cb = icmp sgt i32 %i.by, 65535
  br i1 %i.cb, label %bb.n, label %bb.o, !llvm.loop !21

bb.o:                                             ; preds = %bb.n
  %i.cc = zext i32 %i.bo to i64                   ; 2 uses
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = select i1 %i.ak, i64 %i.cd, i64 %i.cc   ; 2 uses
  %i.cf = zext i32 %i.br to i64                   ; 2 uses
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = select i1 %i.al, i64 %i.cg, i64 %i.cf   ; 2 uses
  %i.ci = mul i32 %i.bo, %.189.i
  %i.cj = mul i32 %i.br, %.187.i
  %i.ck = add i32 %i.ci, %i.cj
  %i.cl = sdiv i32 %i.ck, 65536
  %i.cm = add nsw i32 %i.cl, 65536                ; 2 uses
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cn = add nsw i32 %i.ax, -1
  %i.co = shl nuw nsw i32 1, %i.cn
  %i.cp = add nuw nsw i32 %i.cm, %i.co
  %i.cq = lshr i32 %i.cp, %i.ax
  br label %FT_Vector_NormLen.exit

bb.q:                                             ; preds = %bb.o
  %i.cr = sub nsw i32 0, %i.ax
  %i.cs = shl i32 %i.cm, %i.cr
  br label %FT_Vector_NormLen.exit

FT_Vector_NormLen.exit:                           ; preds = %bb.h, %bb.i, %bb.p, %bb.q
  %.sroa.11.1161 = phi i64 [ %i.ah, %bb.i ], [ %i.ch, %bb.p ], [ %i.ch, %bb.q ], [ %.0.i, %bb.h ]
  %.sroa.0.1159 = phi i64 [ %.084.i, %bb.i ], [ %i.ce, %bb.p ], [ %i.ce, %bb.q ], [ %i.ac, %bb.h ]
  %.091.i = phi i32 [ %.088.i, %bb.i ], [ %i.cq, %bb.p ], [ %i.cs, %bb.q ], [ %.086.i, %bb.h ] ; 2 uses
  %i.ct = zext i32 %.091.i to i64
  %i.cu = icmp eq i32 %.091.i, 0
  br i1 %i.cu, label %FT_Vector_NormLen.exit.thread, label %bb.r

bb.r:                                             ; preds = %.lr.ph181, %FT_Vector_NormLen.exit
  %.sroa.11.0160 = phi i64 [ %.sroa.11.1161, %FT_Vector_NormLen.exit ], [ %.sroa.5.0170, %.lr.ph181 ] ; 6 uses
  %.sroa.0.0158 = phi i64 [ %.sroa.0.1159, %FT_Vector_NormLen.exit ], [ %.sroa.052.0172, %.lr.ph181 ] ; 6 uses
  %.0107 = phi i64 [ %i.ct, %FT_Vector_NormLen.exit ], [ %.0103175, %.lr.ph181 ] ; 4 uses
  %.not119 = icmp eq i64 %.0108174, 0
  br i1 %.not119, label %FT_Vector_NormLen.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = icmp slt i32 %.0179, 0
  br i1 %i.cv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.5.1 = phi i64 [ %.sroa.8.0168, %bb.t ], [ %.sroa.5.0170, %bb.s ] ; 2 uses
  %.sroa.052.1 = phi i64 [ %.sroa.056.0169, %bb.t ], [ %.sroa.052.0172, %bb.s ] ; 2 uses
  %.1104 = phi i64 [ %.0108174, %bb.t ], [ %.0103175, %bb.s ] ; 2 uses
  %.1 = phi i32 [ %.098177, %bb.t ], [ %.0179, %bb.s ] ; 2 uses
  %i.cw = mul i64 %.sroa.0.0158, %.sroa.056.0169  ; 2 uses
  %i.cx = ashr i64 %i.cw, 63
  %i.cy = add i64 %i.cw, 32768
  %i.cz = add i64 %i.cy, %i.cx
  %i.da = ashr i64 %i.cz, 16
  %i.db = mul i64 %.sroa.11.0160, %.sroa.8.0168   ; 2 uses
  %i.dc = ashr i64 %i.db, 63
  %i.dd = add i64 %i.db, 32768
  %i.de = add i64 %i.dd, %i.dc
  %i.df = ashr i64 %i.de, 16
  %i.dg = add nsw i64 %i.da, %i.df                ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, -61440
  br i1 %i.dh, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.di = add nsw i64 %i.dg, 65536                ; 5 uses
  %i.dj = add nsw i64 %.sroa.11.0160, %.sroa.8.0168 ; 4 uses
  %i.dk = add nsw i64 %.sroa.0.0158, %.sroa.056.0169 ; 4 uses
  %i.dl = sub nsw i64 0, %i.dj
  %i.dm = sub nsw i64 0, %i.dk
  %.sroa.11.0 = select i1 %i.n, i64 %i.dk, i64 %i.dm ; 2 uses
  %.sroa.0.0 = select i1 %i.n, i64 %i.dl, i64 %i.dj ; 2 uses
  %i.dn = mul i64 %.sroa.0.0158, %.sroa.8.0168    ; 2 uses
  %i.do = ashr i64 %i.dn, 63
  %i.dp = add i64 %i.dn, 32768
  %i.dq = add i64 %i.dp, %i.do
  %i.dr = ashr i64 %i.dq, 16                      ; 3 uses
  %i.ds = mul i64 %.sroa.11.0160, %.sroa.056.0169 ; 2 uses
  %i.dt = ashr i64 %i.ds, 63
  %i.du = add i64 %i.ds, 32768
  %i.dv = add i64 %i.du, %i.dt
  %i.dw = ashr i64 %i.dv, 16                      ; 3 uses
  %i.dx = sub nsw i64 %i.dr, %i.dw                ; 4 uses
  %i.dy = sub nsw i64 0, %i.dx
  %.0102 = select i1 %i.n, i64 %i.dy, i64 %i.dx   ; 4 uses
  %i.dz = tail call i64 @llvm.smin.i64(i64 %.0108174, i64 %.0107) ; 3 uses
  %i.ea = mul i64 %.0102, %i.o                    ; 2 uses
  %i.eb = ashr i64 %i.ea, 63
  %i.ec = add i64 %i.ea, 32768
  %i.ed = add i64 %i.ec, %i.eb
  %i.ee = ashr i64 %i.ed, 16
  %i.ef = mul i64 %i.di, %i.dz                    ; 2 uses
  %i.eg = ashr i64 %i.ef, 63
  %i.eh = add i64 %i.ef, 32768
  %i.ei = add i64 %i.eh, %i.eg
  %i.ej = ashr i64 %i.ei, 16                      ; 2 uses
  %.not120 = icmp sgt i64 %i.ee, %i.ej
  br i1 %.not120, label %bb.w, label %FT_MulDiv.exit

FT_MulDiv.exit:                                   ; preds = %bb.v
  %.022.i = tail call i64 @llvm.abs.i64(i64 %i.dj, i1 false)
  %i.ek = mul i64 %.022.i, %.021.i
  %i.el = lshr i64 %i.di, 1
  %i.em = add i64 %i.el, %i.ek
  %i.en = udiv i64 %i.em, %i.di                   ; 2 uses
  %i.eo = icmp slt i64 %.sroa.0.0, 0
  %i.ep = xor i1 %i.p, %i.eo
  %i.eq = sub nsw i64 0, %i.en
  %i.er = select i1 %i.ep, i64 %i.eq, i64 %i.en
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %.not.i126 = icmp eq i64 %i.dr, %i.dw
  br i1 %.not.i126, label %FT_MulDiv.exit133, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.0.i127 = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 true) ; 2 uses
  %.021.i128 = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.022.i129 = tail call i64 @llvm.abs.i64(i64 %i.dj, i1 false)
  %i.es = mul i64 %.021.i128, %.022.i129
  %i.et = lshr i64 %.0.i127, 1
  %i.eu = add i64 %i.et, %i.es
  %i.ev = udiv i64 %i.eu, %.0.i127
  br label %FT_MulDiv.exit133

FT_MulDiv.exit133:                                ; preds = %bb.w, %bb.x
  %i.ew = phi i64 [ %i.ev, %bb.x ], [ 2147483647, %bb.w ] ; 2 uses
  %i.ex = xor i64 %.sroa.0.0, %.0102
  %i.ey = icmp slt i64 %i.ex, 0
  %i.ez = sub i64 0, %i.ew
  %i.fa = select i1 %i.ey, i64 %i.ez, i64 %i.ew
  br label %bb.y

bb.y:                                             ; preds = %FT_MulDiv.exit133, %FT_MulDiv.exit
  %.sroa.0.1 = phi i64 [ %i.er, %FT_MulDiv.exit ], [ %i.fa, %FT_MulDiv.exit133 ] ; 2 uses
  %i.fb = mul i64 %.0102, %i.q                    ; 2 uses
  %i.fc = ashr i64 %i.fb, 63
  %i.fd = add i64 %i.fb, 32768
  %i.fe = add i64 %i.fd, %i.fc
  %i.ff = ashr i64 %i.fe, 16
  %.not121 = icmp sgt i64 %i.ff, %i.ej
  br i1 %.not121, label %bb.z, label %FT_MulDiv.exit141

FT_MulDiv.exit141:                                ; preds = %bb.y
  %.022.i137 = tail call i64 @llvm.abs.i64(i64 %i.dk, i1 false)
  %i.fg = mul i64 %.022.i137, %.021.i136
  %i.fh = lshr i64 %i.di, 1
  %i.fi = add i64 %i.fh, %i.fg
  %i.fj = udiv i64 %i.fi, %i.di                   ; 2 uses
  %i.fk = icmp slt i64 %.sroa.11.0, 0
  %i.fl = xor i1 %i.r, %i.fk
  %i.fm = sub nsw i64 0, %i.fj
  %i.fn = select i1 %i.fl, i64 %i.fm, i64 %i.fj
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not.i142 = icmp eq i64 %i.dr, %i.dw
  br i1 %.not.i142, label %FT_MulDiv.exit149, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.0.i143 = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 true) ; 2 uses
  %.021.i144 = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.022.i145 = tail call i64 @llvm.abs.i64(i64 %i.dk, i1 false)
  %i.fo = mul i64 %.021.i144, %.022.i145
  %i.fp = lshr i64 %.0.i143, 1
  %i.fq = add i64 %i.fp, %i.fo
  %i.fr = udiv i64 %i.fq, %.0.i143
  br label %FT_MulDiv.exit149

FT_MulDiv.exit149:                                ; preds = %bb.z, %bb.aa
  %i.fs = phi i64 [ %i.fr, %bb.aa ], [ 2147483647, %bb.z ] ; 2 uses
  %i.ft = xor i64 %.sroa.11.0, %.0102
  %i.fu = icmp slt i64 %i.ft, 0
  %i.fv = sub i64 0, %i.fs
  %i.fw = select i1 %i.fu, i64 %i.fv, i64 %i.fs
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %FT_MulDiv.exit141, %FT_MulDiv.exit149
  %.sroa.11.1 = phi i64 [ %i.fn, %FT_MulDiv.exit141 ], [ %i.fw, %FT_MulDiv.exit149 ], [ 0, %bb.u ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %FT_MulDiv.exit141 ], [ %.sroa.0.1, %FT_MulDiv.exit149 ], [ 0, %bb.u ]
  %.not122166 = icmp eq i32 %.098177, %.097178
  br i1 %.not122166, label %FT_Vector_NormLen.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.fx = insertelement <2 x i64> poison, i64 %.sroa.0.2, i64 0
  %i.fy = insertelement <2 x i64> %i.fx, i64 %.sroa.11.1, i64 1
  %i.fz = add nsw <2 x i64> %i.fy, %i.c
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ac
  %.199167 = phi i32 [ %.098177, %.lr.ph ], [ %i.gg, %bb.ac ] ; 3 uses
  %i.ga = sext i32 %.199167 to i64
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ga ; 2 uses
  %i.gc = load <2 x i64>, ptr %i.gb, align 8, !tbaa !69
  %i.gd = add nsw <2 x i64> %i.fz, %i.gc
  store <2 x i64> %i.gd, ptr %i.gb, align 8, !tbaa !69
  %i.ge = icmp slt i32 %.199167, %i.v
  %i.gf = add nsw i32 %.199167, 1
  %i.gg = select i1 %i.ge, i32 %i.gf, i32 %i.s    ; 2 uses
  %.not122 = icmp eq i32 %i.gg, %.097178
  br i1 %.not122, label %FT_Vector_NormLen.exit.thread, label %bb.ac, !llvm.loop !586

FT_Vector_NormLen.exit.thread:                    ; preds = %bb.ac, %bb.ab, %bb.h, %bb.r, %FT_Vector_NormLen.exit
  %.sroa.8.1 = phi i64 [ %.sroa.8.0168, %FT_Vector_NormLen.exit ], [ %.sroa.8.0168, %bb.h ], [ %.sroa.11.0160, %bb.r ], [ %.sroa.11.0160, %bb.ab ], [ %.sroa.11.0160, %bb.ac ]
  %.sroa.056.1 = phi i64 [ %.sroa.056.0169, %FT_Vector_NormLen.exit ], [ %.sroa.056.0169, %bb.h ], [ %.sroa.0.0158, %bb.r ], [ %.sroa.0.0158, %bb.ab ], [ %.sroa.0.0158, %bb.ac ]
  %.sroa.5.3 = phi i64 [ %.sroa.5.0170, %FT_Vector_NormLen.exit ], [ %.sroa.5.0170, %bb.h ], [ %.sroa.5.0170, %bb.r ], [ %.sroa.5.1, %bb.ab ], [ %.sroa.5.1, %bb.ac ]
  %.sroa.052.3 = phi i64 [ %.sroa.052.0172, %FT_Vector_NormLen.exit ], [ %.sroa.052.0172, %bb.h ], [ %.sroa.052.0172, %bb.r ], [ %.sroa.052.1, %bb.ab ], [ %.sroa.052.1, %bb.ac ]
  %.1109 = phi i64 [ %.0108174, %FT_Vector_NormLen.exit ], [ %.0108174, %bb.h ], [ %.0107, %bb.r ], [ %.0107, %bb.ab ], [ %.0107, %bb.ac ]
  %.3106 = phi i64 [ %.0103175, %FT_Vector_NormLen.exit ], [ %.0103175, %bb.h ], [ %.0103175, %bb.r ], [ %.1104, %bb.ab ], [ %.1104, %bb.ac ]
  %.3101 = phi i32 [ %.098177, %FT_Vector_NormLen.exit ], [ %.098177, %bb.h ], [ %.097178, %bb.r ], [ %.097178, %bb.ab ], [ %.097178, %bb.ac ] ; 3 uses
  %.3 = phi i32 [ %.0179, %FT_Vector_NormLen.exit ], [ %.0179, %bb.h ], [ %.0179, %bb.r ], [ %.1, %bb.ab ], [ %.1, %bb.ac ] ; 2 uses
  %i.gh = icmp slt i32 %.097178, %i.v
  %i.gi = add nsw i32 %.097178, 1
  %i.gj = select i1 %i.gh, i32 %i.gi, i32 %i.s    ; 2 uses
  %i.gk = icmp ne i32 %i.gj, %.3101
  %i.gl = icmp ne i32 %.3101, %.3
  %i.gm = and i1 %i.gk, %i.gl
  br i1 %i.gm, label %.lr.ph181, label %._crit_edge, !llvm.loop !587

._crit_edge:                                      ; preds = %FT_Vector_NormLen.exit.thread, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !588

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %bb.d, %bb.b, %bb.a
  %.0112 = phi i32 [ 20, %bb.a ], [ %., %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %._crit_edge ]
  ret i32 %.0112
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 3) i32 @FT_Outline_Get_Orientation(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %FT_Outline_Get_CBox.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !143  ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %FT_Outline_Get_CBox.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142  ; 9 uses
  %i.f = zext i16 %i.b to i64
  %.idx.i = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not.i = icmp eq i16 %i.b, 1
  br i1 %.not.i, label %FT_Outline_Get_CBox.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !176  ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !173  ; 2 uses
  %.051.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.057.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.051.i, %.lr.ph.preheader.i ] ; 3 uses
  %.pn56.i = phi ptr [ %.057.i, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %.03455.i = phi i64 [ %.1.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.03554.i = phi i64 [ %.136.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.03853.i = phi i64 [ %.139.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.04152.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %i.k = load i64, ptr %.057.i, align 8, !tbaa !173 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %.04152.i) ; 4 uses
  %.136.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 %.03554.i) ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn56.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !176  ; 2 uses
  %.139.i = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.03853.i) ; 4 uses
  %.1.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %.03455.i) ; 4 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.057.i, i64 16 ; 2 uses
  %i.n = icmp ult ptr %.0.i, %i.g
  br i1 %i.n, label %.lr.ph.i, label %FT_Outline_Get_CBox.exit, !llvm.loop !4

FT_Outline_Get_CBox.exit:                         ; preds = %.lr.ph.i
  %i.o = icmp eq i64 %spec.select.i, %.136.i
  %i.p = icmp eq i64 %.139.i, %.1.i
  %or.cond58 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond58, label %FT_Outline_Get_CBox.exit.thread, label %bb.d

bb.d:                                             ; preds = %FT_Outline_Get_CBox.exit
  %i.q = icmp slt i64 %spec.select.i, -16777216
  %i.r = icmp slt i64 %.139.i, -16777216
  %or.cond = or i1 %i.q, %i.r
  %i.s = icmp sgt i64 %.136.i, 16777216
  %or.cond5 = or i1 %i.s, %or.cond
  %i.t = icmp sgt i64 %.1.i, 16777216
  %or.cond8 = or i1 %i.t, %or.cond5
  br i1 %or.cond8, label %FT_Outline_Get_CBox.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i16, ptr %0, align 8, !tbaa !146    ; 2 uses
  %.not72 = icmp eq i16 %i.u, 0
  br i1 %.not72, label %.thread, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.e
  %i.v = sub nsw i64 %.1.i, %.139.i
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = sub nsw i32 17, %i.x
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %i.aa = tail call i64 @llvm.abs.i64(i64 %.136.i, i1 true)
  %i.ab = tail call i64 @llvm.abs.i64(i64 %spec.select.i, i1 true)
  %i.ac = or i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 true)
  %i.af = sub nsw i32 17, %i.ae
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !145
  %i.aj = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ak = zext nneg i32 %i.z to i64               ; 4 uses
  %wide.trip.count77 = zext i16 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph69, %._crit_edge
  %indvars.iv74 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next75, %._crit_edge ] ; 2 uses
  %.067 = phi i64 [ 0, %.lr.ph69 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.04366 = phi i32 [ -1, %.lr.ph69 ], [ %i.an, %._crit_edge ] ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv74
  %i.am = load i16, ptr %i.al, align 2, !tbaa !75 ; 3 uses
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %.not53.not60 = icmp slt i32 %.04366, %i.an
  br i1 %.not53.not60, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ao = zext i16 %i.am to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !176
  %i.as = ashr i64 %i.ar, %i.ak                   ; 2 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !173
  %i.au = ashr i64 %i.at, %i.aj                   ; 2 uses
  %i.av = sext i32 %.04366 to i64                 ; 4 uses
  %wide.trip.count = zext i16 %i.am to i64        ; 3 uses
  %i.aw = sub nsw i64 %wide.trip.count, %i.av
  %xtraiter = and i64 %i.aw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next.prol = add nsw i64 %i.av, 1    ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.e, i64 %indvars.iv.next.prol ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !173
  %i.az = ashr i64 %i.ay, %i.aj                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !176
  %i.bc = ashr i64 %i.bb, %i.ak                   ; 2 uses
  %i.bd = sub nsw i64 %i.bc, %i.as
  %i.be = add nsw i64 %i.az, %i.au
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = add i64 %i.bf, %.067
  %i.bh = freeze i64 %i.bg                        ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
end_hunk_0
