Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/idna?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
begin_hunk_0_@uv__idna_toascii_label:bb.a

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.ax, ptr %2, align 8
  store i8 120, ptr %i.av, align 1
  %.pre = load ptr, ptr %2, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = phi ptr [ %.pre, %bb.o ], [ %i.av, %bb.n ] ; 4 uses
  %i.az = icmp ult ptr %i.ay, %3
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.ba, ptr %2, align 8
  store i8 110, ptr %i.ay, align 1
  %.pre259 = load ptr, ptr %2, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bb = phi ptr [ %.pre259, %bb.q ], [ %i.ay, %bb.p ] ; 4 uses
  %i.bc = icmp ult ptr %i.bb, %3
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bd, ptr %2, align 8
  store i8 45, ptr %i.bb, align 1
  %.pre260 = load ptr, ptr %2, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.be = phi ptr [ %.pre260, %bb.s ], [ %i.bb, %bb.r ] ; 3 uses
  %i.bf = icmp ult ptr %i.be, %3
  br i1 %i.bf, label %bb.u, label %._crit_edge.thread

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bg, ptr %2, align 8
  store i8 45, ptr %i.be, align 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.t, %bb.u, %._crit_edge
  %.not302 = phi i1 [ true, %._crit_edge ], [ false, %bb.t ], [ false, %bb.u ], [ true, %bb.a ]
  %.0103.lcssa301 = phi i32 [ 0, %._crit_edge ], [ %.1104, %bb.t ], [ %.1104, %bb.u ], [ 0, %bb.a ]
  %.0120.lcssa300 = phi i32 [ %.1121, %._crit_edge ], [ %.1121, %bb.t ], [ %.1121, %bb.u ], [ 0, %bb.a ] ; 4 uses
  %i.bh = ptrtoint ptr %1 to i64                  ; 3 uses
  br label %.outer208

.outer208:                                        ; preds = %bb.aj, %._crit_edge.thread
  %.1193.ph = phi ptr [ %.7200, %bb.aj ], [ %0, %._crit_edge.thread ]
  %.0113.ph = phi i32 [ %i.dd, %bb.aj ], [ 0, %._crit_edge.thread ]
  br label %bb.v

bb.v:                                             ; preds = %.outer208, %uv__utf8_decode1.exit158
  %.1193 = phi ptr [ %.7, %uv__utf8_decode1.exit158 ], [ %.1193.ph, %.outer208 ] ; 9 uses
  %i.bi = icmp ult ptr %.1193, %1
  br i1 %i.bi, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %.1193, i64 1 ; 8 uses
  %i.bk = load i8, ptr %.1193, align 1            ; 6 uses
  %i.bl = zext i8 %i.bk to i32                    ; 4 uses
  %i.bm = icmp sgt i8 %i.bk, -1
  br i1 %i.bm, label %uv__utf8_decode1.exit158.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = icmp samesign ugt i8 %i.bk, -9
  br i1 %i.bn, label %uv__utf8_decode1.exit158, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = ptrtoint ptr %i.bj to i64
  %i.bp = sub i64 %i.bh, %i.bo
  switch i64 %i.bp, label %bb.z [
    i64 2, label %bb.ab
    i64 1, label %bb.ad
    i64 0, label %uv__utf8_decode1.exit158
  ]

bb.z:                                             ; preds = %bb.y
  %i.bq = icmp samesign ugt i8 %i.bk, -17
  br i1 %i.bq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %.1193, i64 2
  %i.bs = load i8, ptr %i.bj, align 1
  %i.bt = zext i8 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.1193, i64 3
  %i.bv = load i8, ptr %i.br, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %.1193, i64 4
  %i.by = shl nuw nsw i32 %i.bl, 18
  %i.bz = and i32 %i.by, 1835008
  br label %bb.af

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.ca = icmp samesign ugt i8 %i.bk, -33
  br i1 %i.ca, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cb = and i32 %i.bl, 143
  %i.cc = getelementptr inbounds nuw i8, ptr %.1193, i64 2
  %i.cd = load i8, ptr %i.bj, align 1
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %.1193, i64 3
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab, %bb.y
  %i.cg = icmp samesign ugt i8 %i.bk, -65
  br i1 %i.cg, label %bb.ae, label %uv__utf8_decode1.exit158

bb.ae:                                            ; preds = %bb.ad
  %i.ch = and i32 %i.bl, 159
  %i.ci = getelementptr inbounds nuw i8, ptr %.1193, i64 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.aa
  %.6 = phi ptr [ %i.bx, %bb.aa ], [ %i.cf, %bb.ac ], [ %i.ci, %bb.ae ] ; 3 uses
  %.035.i.i147 = phi i32 [ %i.bz, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ae ]
  %.034.i.i148 = phi i32 [ %i.bt, %bb.aa ], [ %i.cb, %bb.ac ], [ 128, %bb.ae ] ; 2 uses
  %.033.i.i149 = phi i32 [ %i.bw, %bb.aa ], [ %i.ce, %bb.ac ], [ %i.ch, %bb.ae ] ; 2 uses
  %.032.in.in.i.i150 = phi ptr [ %i.bu, %bb.aa ], [ %i.cc, %bb.ac ], [ %i.bj, %bb.ae ]
  %.0.i.i151 = phi i32 [ 65536, %bb.aa ], [ 2048, %bb.ac ], [ 128, %bb.ae ]
  %.032.in.i.i152 = load i8, ptr %.032.in.in.i.i150, align 1
  %.032.i.i153 = zext i8 %.032.in.i.i152 to i32   ; 2 uses
  %i.cj = xor i32 %.033.i.i149, %.034.i.i148
  %i.ck = xor i32 %i.cj, %.032.i.i153
  %i.cl = and i32 %i.ck, 192
  %.not.i.i154 = icmp eq i32 %i.cl, 128
  br i1 %.not.i.i154, label %bb.ag, label %uv__utf8_decode1.exit158

bb.ag:                                            ; preds = %bb.af
  %i.cm = and i32 %.032.i.i153, 63
  %i.cn = shl nuw nsw i32 %.034.i.i148, 12
  %i.co = and i32 %i.cn, 258048
  %i.cp = or disjoint i32 %i.co, %.035.i.i147     ; 3 uses
  %i.cq = shl nuw nsw i32 %.033.i.i149, 6
  %i.cr = and i32 %i.cq, 4032
  %i.cs = or disjoint i32 %i.cr, %i.cm
  %i.ct = or disjoint i32 %i.cs, %i.cp            ; 3 uses
  %i.cu = icmp samesign ult i32 %i.ct, %.0.i.i151
  %i.cv = icmp samesign ugt i32 %i.cp, 1114111
  %or.cond39.i.i155 = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond39.i.i155, label %uv__utf8_decode1.exit158, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = icmp samesign ugt i32 %i.ct, 55295
  %i.cx = icmp samesign ult i32 %i.cp, 57344
  %or.cond.i.i156 = select i1 %i.cw, i1 %i.cx, i1 false
  %..i.i157 = select i1 %or.cond.i.i156, i32 -1, i32 %i.ct
  br label %uv__utf8_decode1.exit158

uv__utf8_decode1.exit158:                         ; preds = %bb.x, %bb.y, %bb.ad, %bb.af, %bb.ag, %bb.ah
  %.7 = phi ptr [ %i.bj, %bb.y ], [ %i.bj, %bb.x ], [ %.6, %bb.ag ], [ %.6, %bb.ah ], [ %.6, %bb.af ], [ %i.bj, %bb.ad ] ; 2 uses
  %.0.i146 = phi i32 [ -1, %bb.y ], [ -1, %bb.x ], [ -1, %bb.ag ], [ %..i.i157, %bb.ah ], [ -1, %bb.af ], [ -1, %bb.ad ] ; 2 uses
  %i.cy = icmp ugt i32 %.0.i146, 127
  br i1 %i.cy, label %bb.v, label %uv__utf8_decode1.exit158.thread, !llvm.loop !8

uv__utf8_decode1.exit158.thread:                  ; preds = %bb.w, %uv__utf8_decode1.exit158
  %.0.i146201 = phi i32 [ %.0.i146, %uv__utf8_decode1.exit158 ], [ %i.bl, %bb.w ]
  %.7200 = phi ptr [ %.7, %uv__utf8_decode1.exit158 ], [ %i.bj, %bb.w ]
  %i.cz = load ptr, ptr %2, align 8               ; 3 uses
  %i.da = icmp ult ptr %i.cz, %3
  br i1 %i.da, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %uv__utf8_decode1.exit158.thread
  %i.db = trunc nuw nsw i32 %.0.i146201 to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store ptr %i.dc, ptr %2, align 8
  store i8 %i.db, ptr %i.cz, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %uv__utf8_decode1.exit158.thread
  %i.dd = add i32 %.0113.ph, 1                    ; 2 uses
  %i.de = icmp eq i32 %i.dd, %.0120.lcssa300
  br i1 %i.de, label %.loopexit, label %.outer208, !llvm.loop !8

.loopexit:                                        ; preds = %bb.aj, %bb.v
  br i1 %.not302, label %uv__utf8_decode1.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %.not141 = icmp eq i32 %.0120.lcssa300, 0
  br i1 %.not141, label %.preheader206.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = load ptr, ptr %2, align 8               ; 3 uses
  %i.dg = icmp ult ptr %i.df, %3
  br i1 %i.dg, label %bb.am, label %.preheader206.preheader

bb.am:                                            ; preds = %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store ptr %i.dh, ptr %2, align 8
  store i8 45, ptr %i.df, align 1
  br label %.preheader206.preheader

.preheader206.preheader:                          ; preds = %bb.al, %bb.am, %bb.ak
  br label %.preheader206

.preheader206:                                    ; preds = %.preheader206.preheader, %bb.br
  %.0247 = phi i1 [ %.1.ph, %bb.br ], [ true, %.preheader206.preheader ]
  %.2105246 = phi i32 [ %.3.ph, %bb.br ], [ %.0103.lcssa301, %.preheader206.preheader ]
  %.0106245 = phi i32 [ %i.in, %bb.br ], [ 0, %.preheader206.preheader ] ; 2 uses
  %.0110244 = phi i32 [ %.1111.ph, %bb.br ], [ 72, %.preheader206.preheader ]
  %.0118243 = phi i32 [ %i.io, %bb.br ], [ 128, %.preheader206.preheader ] ; 2 uses
  %.2122242 = phi i32 [ %.3123.ph, %bb.br ], [ %.0120.lcssa300, %.preheader206.preheader ] ; 2 uses
  br i1 %i.a, label %.lr.ph225, label %._crit_edge226

.lr.ph225:                                        ; preds = %.preheader206, %uv__utf8_decode1.exit171
  %.0116224 = phi i32 [ %.1117, %uv__utf8_decode1.exit171 ], [ -1, %.preheader206 ] ; 2 uses
  %.2223 = phi ptr [ %.9, %uv__utf8_decode1.exit171 ], [ %0, %.preheader206 ] ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.2223, i64 1 ; 8 uses
  %i.dj = load i8, ptr %.2223, align 1            ; 6 uses
  %i.dk = zext i8 %i.dj to i32                    ; 4 uses
  %i.dl = icmp sgt i8 %i.dj, -1
  br i1 %i.dl, label %uv__utf8_decode1.exit171, label %bb.an

bb.an:                                            ; preds = %.lr.ph225
  %i.dm = icmp samesign ugt i8 %i.dj, -9
  br i1 %i.dm, label %uv__utf8_decode1.exit171, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dn = ptrtoint ptr %i.di to i64
  %i.do = sub i64 %i.bh, %i.dn
  switch i64 %i.do, label %bb.ap [
    i64 2, label %bb.ar
    i64 1, label %bb.at
    i64 0, label %uv__utf8_decode1.exit171
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dp = icmp samesign ugt i8 %i.dj, -17
  br i1 %i.dp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dq = getelementptr inbounds nuw i8, ptr %.2223, i64 2
  %i.dr = load i8, ptr %i.di, align 1
  %i.ds = zext i8 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %.2223, i64 3
  %i.du = load i8, ptr %i.dq, align 1
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %.2223, i64 4
  %i.dx = shl nuw nsw i32 %i.dk, 18
  %i.dy = and i32 %i.dx, 1835008
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.dz = icmp samesign ugt i8 %i.dj, -33
  br i1 %i.dz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ea = and i32 %i.dk, 143
  %i.eb = getelementptr inbounds nuw i8, ptr %.2223, i64 2
  %i.ec = load i8, ptr %i.di, align 1
  %i.ed = zext i8 %i.ec to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %.2223, i64 3
  br label %bb.av

bb.at:                                            ; preds = %bb.ar, %bb.ao
  %i.ef = icmp samesign ugt i8 %i.dj, -65
  br i1 %i.ef, label %bb.au, label %uv__utf8_decode1.exit171

bb.au:                                            ; preds = %bb.at
  %i.eg = and i32 %i.dk, 159
  %i.eh = getelementptr inbounds nuw i8, ptr %.2223, i64 2
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as, %bb.aq
  %.8 = phi ptr [ %i.dw, %bb.aq ], [ %i.ee, %bb.as ], [ %i.eh, %bb.au ] ; 3 uses
  %.035.i.i160 = phi i32 [ %i.dy, %bb.aq ], [ 0, %bb.as ], [ 0, %bb.au ]
  %.034.i.i161 = phi i32 [ %i.ds, %bb.aq ], [ %i.ea, %bb.as ], [ 128, %bb.au ] ; 2 uses
  %.033.i.i162 = phi i32 [ %i.dv, %bb.aq ], [ %i.ed, %bb.as ], [ %i.eg, %bb.au ] ; 2 uses
  %.032.in.in.i.i163 = phi ptr [ %i.dt, %bb.aq ], [ %i.eb, %bb.as ], [ %i.di, %bb.au ]
  %.0.i.i164 = phi i32 [ 65536, %bb.aq ], [ 2048, %bb.as ], [ 128, %bb.au ]
  %.032.in.i.i165 = load i8, ptr %.032.in.in.i.i163, align 1
  %.032.i.i166 = zext i8 %.032.in.i.i165 to i32   ; 2 uses
  %i.ei = xor i32 %.033.i.i162, %.034.i.i161
  %i.ej = xor i32 %i.ei, %.032.i.i166
  %i.ek = and i32 %i.ej, 192
  %.not.i.i167 = icmp eq i32 %i.ek, 128
  br i1 %.not.i.i167, label %bb.aw, label %uv__utf8_decode1.exit171

bb.aw:                                            ; preds = %bb.av
  %i.el = and i32 %.032.i.i166, 63
  %i.em = shl nuw nsw i32 %.034.i.i161, 12
  %i.en = and i32 %i.em, 258048
  %i.eo = or disjoint i32 %i.en, %.035.i.i160     ; 3 uses
  %i.ep = shl nuw nsw i32 %.033.i.i162, 6
  %i.eq = and i32 %i.ep, 4032
  %i.er = or disjoint i32 %i.eq, %i.el
  %i.es = or disjoint i32 %i.er, %i.eo            ; 3 uses
  %i.et = icmp samesign ult i32 %i.es, %.0.i.i164
  %i.eu = icmp samesign ugt i32 %i.eo, 1114111
  %or.cond39.i.i168 = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond39.i.i168, label %uv__utf8_decode1.exit171, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ev = icmp samesign ugt i32 %i.es, 55295
  %i.ew = icmp samesign ult i32 %i.eo, 57344
  %or.cond.i.i169 = select i1 %i.ev, i1 %i.ew, i1 false
  %..i.i170 = select i1 %or.cond.i.i169, i32 -1, i32 %i.es
  br label %uv__utf8_decode1.exit171

uv__utf8_decode1.exit171:                         ; preds = %.lr.ph225, %bb.an, %bb.ao, %bb.at, %bb.av, %bb.aw, %bb.ax
  %.9 = phi ptr [ %i.di, %.lr.ph225 ], [ %i.di, %bb.an ], [ %.8, %bb.aw ], [ %.8, %bb.ax ], [ %.8, %bb.av ], [ %i.di, %bb.at ], [ %i.di, %bb.ao ] ; 2 uses
  %.0.i159 = phi i32 [ %i.dk, %.lr.ph225 ], [ -1, %bb.an ], [ -1, %bb.aw ], [ %..i.i170, %bb.ax ], [ -1, %bb.av ], [ -1, %bb.at ], [ -1, %bb.ao ] ; 2 uses
  %.not145.not = icmp ult i32 %.0.i159, %.0118243
  %i.ex = tail call i32 @llvm.umin.i32(i32 %.0.i159, i32 %.0116224)
  %.1117 = select i1 %.not145.not, i32 %.0116224, i32 %i.ex ; 2 uses
  %i.ey = icmp ult ptr %.9, %1
  br i1 %i.ey, label %.lr.ph225, label %._crit_edge226, !llvm.loop !9

._crit_edge226:                                   ; preds = %uv__utf8_decode1.exit171, %.preheader206
  %.0116.lcssa = phi i32 [ -1, %.preheader206 ], [ %.1117, %uv__utf8_decode1.exit171 ] ; 4 uses
  %i.ez = sub nsw i32 %.0116.lcssa, %.0118243     ; 2 uses
  %i.fa = add i32 %.2122242, 1                    ; 2 uses
  %i.fb = xor i32 %.0106245, -1
  %i.fc = udiv i32 %i.fb, %i.fa
  %i.fd = icmp ugt i32 %i.ez, %i.fc
  br i1 %i.fd, label %uv__utf8_decode1.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge226
  %i.fe = mul i32 %i.ez, %i.fa
  %i.ff = add i32 %i.fe, %.0106245
  br label %.outer

.outer:                                           ; preds = %._crit_edge239, %bb.ay
  %.3194.ph = phi ptr [ %.11204, %._crit_edge239 ], [ %0, %bb.ay ]
  %.3123.ph = phi i32 [ %i.ic, %._crit_edge239 ], [ %.2122242, %bb.ay ] ; 2 uses
  %.1111.ph = phi i32 [ %i.il, %._crit_edge239 ], [ %.0110244, %bb.ay ] ; 5 uses
  %.1107.ph = phi i32 [ 0, %._crit_edge239 ], [ %i.ff, %bb.ay ]
  %.3.ph = phi i32 [ %i.im, %._crit_edge239 ], [ %.2105246, %bb.ay ] ; 3 uses
  %.1.ph = phi i1 [ false, %._crit_edge239 ], [ %.0247, %bb.ay ] ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %.outer, %uv__utf8_decode1.exit184.thread
  %.3194 = phi ptr [ %.11204, %uv__utf8_decode1.exit184.thread ], [ %.3194.ph, %.outer ] ; 9 uses
  %.1107 = phi i32 [ %.2108, %uv__utf8_decode1.exit184.thread ], [ %.1107.ph, %.outer ] ; 8 uses
  %i.fg = icmp ult ptr %.3194, %1
  br i1 %i.fg, label %bb.ba, label %bb.br

bb.ba:                                            ; preds = %bb.az
  %i.fh = getelementptr inbounds nuw i8, ptr %.3194, i64 1 ; 8 uses
  %i.fi = load i8, ptr %.3194, align 1            ; 6 uses
  %i.fj = zext i8 %i.fi to i32                    ; 4 uses
  %i.fk = icmp sgt i8 %i.fi, -1
  br i1 %i.fk, label %uv__utf8_decode1.exit184, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fl = icmp samesign ugt i8 %i.fi, -9
  br i1 %i.fl, label %uv__utf8_decode1.exit184.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fm = ptrtoint ptr %i.fh to i64
  %i.fn = sub i64 %i.bh, %i.fm
  switch i64 %i.fn, label %bb.bd [
    i64 2, label %bb.bf
    i64 1, label %bb.bh
    i64 0, label %uv__utf8_decode1.exit184.thread
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.fo = icmp samesign ugt i8 %i.fi, -17
  br i1 %i.fo, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fp = getelementptr inbounds nuw i8, ptr %.3194, i64 2
  %i.fq = load i8, ptr %i.fh, align 1
  %i.fr = zext i8 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %.3194, i64 3
  %i.ft = load i8, ptr %i.fp, align 1
  %i.fu = zext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %.3194, i64 4
  %i.fw = shl nuw nsw i32 %i.fj, 18
  %i.fx = and i32 %i.fw, 1835008
  br label %bb.bj

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.fy = icmp samesign ugt i8 %i.fi, -33
  br i1 %i.fy, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fz = and i32 %i.fj, 143
  %i.ga = getelementptr inbounds nuw i8, ptr %.3194, i64 2
  %i.gb = load i8, ptr %i.fh, align 1
  %i.gc = zext i8 %i.gb to i32
  %i.gd = getelementptr inbounds nuw i8, ptr %.3194, i64 3
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf, %bb.bc
  %i.ge = icmp samesign ugt i8 %i.fi, -65
  br i1 %i.ge, label %bb.bi, label %uv__utf8_decode1.exit184.thread

bb.bi:                                            ; preds = %bb.bh
  %i.gf = and i32 %i.fj, 159
  %i.gg = getelementptr inbounds nuw i8, ptr %.3194, i64 2
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg, %bb.be
  %.10 = phi ptr [ %i.fv, %bb.be ], [ %i.gd, %bb.bg ], [ %i.gg, %bb.bi ] ; 3 uses
  %.035.i.i173 = phi i32 [ %i.fx, %bb.be ], [ 0, %bb.bg ], [ 0, %bb.bi ]
  %.034.i.i174 = phi i32 [ %i.fr, %bb.be ], [ %i.fz, %bb.bg ], [ 128, %bb.bi ] ; 2 uses
  %.033.i.i175 = phi i32 [ %i.fu, %bb.be ], [ %i.gc, %bb.bg ], [ %i.gf, %bb.bi ] ; 2 uses
  %.032.in.in.i.i176 = phi ptr [ %i.fs, %bb.be ], [ %i.ga, %bb.bg ], [ %i.fh, %bb.bi ]
  %.0.i.i177 = phi i32 [ 65536, %bb.be ], [ 2048, %bb.bg ], [ 128, %bb.bi ]
  %.032.in.i.i178 = load i8, ptr %.032.in.in.i.i176, align 1
  %.032.i.i179 = zext i8 %.032.in.i.i178 to i32   ; 2 uses
  %i.gh = xor i32 %.033.i.i175, %.034.i.i174
  %i.gi = xor i32 %i.gh, %.032.i.i179
  %i.gj = and i32 %i.gi, 192
  %.not.i.i180 = icmp eq i32 %i.gj, 128
  br i1 %.not.i.i180, label %bb.bk, label %uv__utf8_decode1.exit184.thread

bb.bk:                                            ; preds = %bb.bj
  %i.gk = and i32 %.032.i.i179, 63
  %i.gl = shl nuw nsw i32 %.034.i.i174, 12
  %i.gm = and i32 %i.gl, 258048
  %i.gn = or disjoint i32 %i.gm, %.035.i.i173     ; 3 uses
  %i.go = shl nuw nsw i32 %.033.i.i175, 6
  %i.gp = and i32 %i.go, 4032
  %i.gq = or disjoint i32 %i.gp, %i.gk
  %i.gr = or disjoint i32 %i.gq, %i.gn            ; 3 uses
  %i.gs = icmp samesign ult i32 %i.gr, %.0.i.i177
  %i.gt = icmp samesign ugt i32 %i.gn, 1114111
  %or.cond39.i.i181 = select i1 %i.gs, i1 true, i1 %i.gt
  br i1 %or.cond39.i.i181, label %uv__utf8_decode1.exit184.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gu = icmp samesign ugt i32 %i.gr, 55295
  %i.gv = icmp samesign ult i32 %i.gn, 57344
  %or.cond.i.i182 = select i1 %i.gu, i1 %i.gv, i1 false
  %..i.i183 = select i1 %or.cond.i.i182, i32 -1, i32 %i.gr
  br label %uv__utf8_decode1.exit184

uv__utf8_decode1.exit184:                         ; preds = %bb.ba, %bb.bl
  %.11 = phi ptr [ %i.fh, %bb.ba ], [ %.10, %bb.bl ] ; 2 uses
  %.0.i172 = phi i32 [ %i.fj, %bb.ba ], [ %..i.i183, %bb.bl ] ; 3 uses
  %i.gw = icmp ult i32 %.0.i172, %.0116.lcssa
  br i1 %i.gw, label %bb.bm, label %uv__utf8_decode1.exit184.thread

bb.bm:                                            ; preds = %uv__utf8_decode1.exit184
  %i.gx = add i32 %.1107, 1                       ; 2 uses
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %uv__utf8_decode1.exit.thread, label %uv__utf8_decode1.exit184.thread

uv__utf8_decode1.exit184.thread:                  ; preds = %bb.bh, %bb.bk, %bb.bj, %bb.bc, %bb.bb, %bb.bm, %uv__utf8_decode1.exit184
  %.0.i172205 = phi i32 [ %.0.i172, %bb.bm ], [ %.0.i172, %uv__utf8_decode1.exit184 ], [ -1, %bb.bb ], [ -1, %bb.bc ], [ -1, %bb.bj ], [ -1, %bb.bk ], [ -1, %bb.bh ]
  %.11204 = phi ptr [ %.11, %bb.bm ], [ %.11, %uv__utf8_decode1.exit184 ], [ %i.fh, %bb.bb ], [ %i.fh, %bb.bc ], [ %.10, %bb.bj ], [ %.10, %bb.bk ], [ %i.fh, %bb.bh ] ; 2 uses
  %.2108 = phi i32 [ %i.gx, %bb.bm ], [ %.1107, %uv__utf8_decode1.exit184 ], [ %.1107, %bb.bb ], [ %.1107, %bb.bc ], [ %.1107, %bb.bj ], [ %.1107, %bb.bk ], [ %.1107, %bb.bh ] ; 6 uses
  %.not143 = icmp eq i32 %.0.i172205, %.0116.lcssa
  br i1 %.not143, label %.preheader, label %bb.az, !llvm.loop !10

.preheader:                                       ; preds = %uv__utf8_decode1.exit184.thread
  %i.gz = icmp ult i32 %.1111.ph, 36
  %i.ha = sub nuw i32 36, %.1111.ph
  %i.hb = tail call i32 @llvm.umin.i32(i32 %i.ha, i32 26)
  %.0114228 = select i1 %i.gz, i32 %i.hb, i32 1   ; 2 uses
  %i.hc = icmp ult i32 %.2108, %.0114228
  %.pre263 = load ptr, ptr %2, align 8            ; 2 uses
  br i1 %i.hc, label %._crit_edge233, label %.lr.ph232

.lr.ph232:                                        ; preds = %.preheader, %bb.bo
  %i.hd = phi ptr [ %i.ho, %bb.bo ], [ %.pre263, %.preheader ] ; 4 uses
  %.0114231 = phi i32 [ %.0114, %bb.bo ], [ %.0114228, %.preheader ] ; 3 uses
  %.0115230 = phi i32 [ %i.hg, %bb.bo ], [ %.2108, %.preheader ]
  %.0119229 = phi i32 [ %i.hp, %bb.bo ], [ 36, %.preheader ]
  %i.he = sub nuw i32 %.0115230, %.0114231        ; 2 uses
  %i.hf = sub nuw nsw i32 36, %.0114231           ; 2 uses
  %i.hg = udiv i32 %i.he, %i.hf                   ; 3 uses
  %i.hh = urem i32 %i.he, %i.hf
  %i.hi = icmp ult ptr %i.hd, %3
  br i1 %i.hi, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph232
  %i.hj = add nuw nsw i32 %i.hh, %.0114231
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr @uv__idna_toascii_label.alphabet, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  store ptr %i.hn, ptr %2, align 8
  store i8 %i.hm, ptr %i.hd, align 1
  %.pre261 = load ptr, ptr %2, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph232, %bb.bn
  %i.ho = phi ptr [ %i.hd, %.lr.ph232 ], [ %.pre261, %bb.bn ] ; 2 uses
  %i.hp = add i32 %.0119229, 36                   ; 3 uses
  %i.hq = icmp ugt i32 %i.hp, %.1111.ph
  %i.hr = sub nuw i32 %i.hp, %.1111.ph
  %i.hs = tail call i32 @llvm.umin.i32(i32 %i.hr, i32 26)
  %.0114 = select i1 %i.hq, i32 %i.hs, i32 1      ; 2 uses
  %i.ht = icmp samesign ult i32 %i.hg, %.0114
  br i1 %i.ht, label %._crit_edge233, label %.lr.ph232

._crit_edge233:                                   ; preds = %bb.bo, %.preheader
  %i.hu = phi ptr [ %.pre263, %.preheader ], [ %i.ho, %bb.bo ] ; 3 uses
  %.0115.lcssa = phi i32 [ %.2108, %.preheader ], [ %i.hg, %bb.bo ]
  %i.hv = icmp ult ptr %i.hu, %3
  br i1 %i.hv, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %._crit_edge233
  %i.hw = zext nneg i32 %.0115.lcssa to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @uv__idna_toascii_label.alphabet, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  store ptr %i.hz, ptr %2, align 8
  store i8 %i.hy, ptr %i.hu, align 1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge233
  %i.ia = lshr i32 %.2108, 1
  %i.ib = udiv i32 %.2108, 700
  %.3109 = select i1 %.1.ph, i32 %i.ib, i32 %i.ia ; 2 uses
  %i.ic = add i32 %.3123.ph, 1                    ; 2 uses
  %i.id = udiv i32 %.3109, %i.ic
  %i.ie = add nuw i32 %i.id, %.3109               ; 3 uses
  %i.if = icmp ugt i32 %i.ie, 455
  br i1 %i.if, label %.lr.ph238, label %._crit_edge239

.lr.ph238:                                        ; preds = %bb.bq, %.lr.ph238
  %.4236 = phi i32 [ %i.ig, %.lr.ph238 ], [ %i.ie, %bb.bq ] ; 2 uses
  %.2112235 = phi i32 [ %i.ih, %.lr.ph238 ], [ 0, %bb.bq ]
  %i.ig = udiv i32 %.4236, 35                     ; 2 uses
  %i.ih = add i32 %.2112235, 36                   ; 2 uses
  %i.ii = icmp ugt i32 %.4236, 15959
  br i1 %i.ii, label %.lr.ph238, label %._crit_edge239, !llvm.loop !11

._crit_edge239:                                   ; preds = %.lr.ph238, %bb.bq
  %.2112.lcssa = phi i32 [ 0, %bb.bq ], [ %i.ih, %.lr.ph238 ]
  %.4.lcssa = phi i32 [ %i.ie, %bb.bq ], [ %i.ig, %.lr.ph238 ]
  %i.ij = trunc nuw i32 %.4.lcssa to i16          ; 2 uses
  %.lhs.trunc = mul nuw i16 %i.ij, 36
  %.rhs.trunc = add nuw nsw i16 %i.ij, 38
  %i.ik = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.ik to i32
  %i.il = add i32 %.2112.lcssa, %.zext
  %i.im = add i32 %.3.ph, -1
  br label %.outer, !llvm.loop !10

bb.br:                                            ; preds = %bb.az
  %i.in = add i32 %.1107, 1
  %i.io = add nsw i32 %.0116.lcssa, 1
  %.not142 = icmp eq i32 %.3.ph, 0
  br i1 %.not142, label %uv__utf8_decode1.exit.thread, label %.preheader206, !llvm.loop !12

uv__utf8_decode1.exit.thread:                     ; preds = %bb.m, %bb.i, %bb.l, %bb.k, %bb.d, %bb.c, %bb.br, %._crit_edge226, %bb.bm, %.loopexit
  %.0124 = phi i32 [ 0, %bb.br ], [ -7, %bb.bm ], [ %.0120.lcssa300, %.loopexit ], [ -7, %._crit_edge226 ], [ -22, %bb.c ], [ -22, %bb.d ], [ -22, %bb.k ], [ -22, %bb.l ], [ -22, %bb.i ], [ -22, %bb.m ]
  ret i32 %.0124
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @uv_wtf8_length_as_utf16(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %uv__wtf8_decode1.exit, %bb.a
  %.09 = phi ptr [ %0, %bb.a ], [ %i.ad, %uv__wtf8_decode1.exit ] ; 5 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ac, %uv__wtf8_decode1.exit ]
  %i.a = load i8, ptr %.09, align 1               ; 7 uses
  %i.b = zext i8 %i.a to i32
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %uv__wtf8_decode1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i8 %i.a, -62
  br i1 %i.d, label %uv__wtf8_decode1.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 192
  %.not.i = icmp eq i32 %i.h, 128
  br i1 %.not.i, label %bb.e, label %uv__wtf8_decode1.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ult i8 %i.a, -32
  br i1 %i.i, label %uv__wtf8_decode1.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.09, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = and i32 %i.l, 192
  %.not27.i = icmp eq i32 %i.m, 128
  br i1 %.not27.i, label %bb.g, label %uv__wtf8_decode1.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = shl nuw nsw i32 %i.b, 12
  %i.o = shl nuw nsw i32 %i.g, 6
  %i.p = and i32 %i.o, 4032
  %i.q = or disjoint i32 %i.p, %i.n
  %i.r = and i32 %i.l, 63
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = icmp samesign ult i8 %i.a, -16
  br i1 %i.t, label %uv__wtf8_decode1.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.09, i64 3 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %.not28.i = icmp slt i8 %i.v, -64
  %i.w = icmp samesign ult i8 %i.a, -11
  %or.cond.i = and i1 %i.w, %.not28.i
  br i1 %or.cond.i, label %bb.i, label %uv__wtf8_decode1.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw nsw i32 %i.s, 6
  %.masked.i = and i32 %i.x, 2097088              ; 2 uses
  %i.y = icmp samesign ult i32 %.masked.i, 1114112
  br i1 %i.y, label %bb.j, label %uv__wtf8_decode1.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.z = icmp samesign ugt i32 %.masked.i, 65535
  %i.aa = zext i1 %i.z to i64
  br label %uv__wtf8_decode1.exit

uv__wtf8_decode1.exit:                            ; preds = %bb.g, %bb.e, %bb.j, %bb.b
  %i.ab = phi i8 [ %i.a, %bb.b ], [ 1, %bb.j ], [ %i.f, %bb.e ], [ %i.k, %bb.g ]
  %.1 = phi ptr [ %.09, %bb.b ], [ %i.u, %bb.j ], [ %i.e, %bb.e ], [ %i.j, %bb.g ]
  %.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.j ], [ 0, %bb.e ], [ 0, %bb.g ]
  %spec.select = add i64 %.0, 1
  %i.ac = add i64 %spec.select, %.0.i             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %uv__wtf8_decode1.exit.thread, label %bb.b, !llvm.loop !13

uv__wtf8_decode1.exit.thread:                     ; preds = %bb.i, %bb.f, %bb.d, %bb.c, %bb.h, %uv__wtf8_decode1.exit
  %.06 = phi i64 [ %i.ac, %uv__wtf8_decode1.exit ], [ -1, %bb.h ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.i ]
  ret i64 %.06
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @uv_wtf8_to_utf16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.013 = phi ptr [ %0, %bb.a ], [ %i.aq, %bb.l ] ; 6 uses
  %.08 = phi ptr [ %1, %bb.a ], [ %.19, %bb.l ]   ; 5 uses
  %i.a = load i8, ptr %.013, align 1              ; 6 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %uv__wtf8_decode1.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i8 %i.a, -62
  br i1 %i.d, label %uv__wtf8_decode1.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 1 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 192
  %.not.i = icmp eq i32 %i.h, 128
  br i1 %.not.i, label %bb.e, label %uv__wtf8_decode1.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i32 %i.b, 6
  %i.j = and i32 %i.g, 63
  %i.k = or disjoint i32 %i.j, %i.i               ; 2 uses
  %i.l = icmp samesign ult i8 %i.a, -32
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = and i32 %i.k, 2047
  br label %uv__wtf8_decode1.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.013, i64 2 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = and i32 %i.p, 192
  %.not27.i = icmp eq i32 %i.q, 128
  br i1 %.not27.i, label %bb.h, label %uv__wtf8_decode1.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.r = shl nuw nsw i32 %i.k, 6
  %i.s = and i32 %i.p, 63
  %i.t = or disjoint i32 %i.s, %i.r               ; 2 uses
  %i.u = icmp samesign ult i8 %i.a, -16
  br i1 %i.u, label %uv__wtf8_decode1.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.013, i64 3 ; 5 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = and i32 %i.x, 192
  %.not28.i = icmp eq i32 %i.y, 128
  %i.z = icmp samesign ult i8 %i.a, -11
  %or.cond.i = and i1 %i.z, %.not28.i
  br i1 %or.cond.i, label %bb.j, label %uv__wtf8_decode1.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = shl nuw nsw i32 %i.t, 6
  %.masked.i = and i32 %i.aa, 2097088             ; 4 uses
  %i.ab = icmp samesign ult i32 %.masked.i, 1114112
  br i1 %i.ab, label %uv__wtf8_decode1.exit, label %uv__wtf8_decode1.exit.thread

uv__wtf8_decode1.exit:                            ; preds = %bb.j
  %i.ac = and i32 %i.x, 63
  %i.ad = or disjoint i32 %i.ac, %.masked.i       ; 2 uses
  %i.ae = icmp samesign ugt i32 %.masked.i, 65535
  br i1 %i.ae, label %bb.k, label %uv__wtf8_decode1.exit.thread

bb.k:                                             ; preds = %uv__wtf8_decode1.exit
  %i.af = add nuw nsw i32 %.masked.i, 67043328
  %i.ag = lshr i32 %i.af, 10
  %i.ah = trunc i32 %i.ag to i16
  %i.ai = add nuw nsw i16 %i.ah, -10240
  %i.aj = getelementptr inbounds nuw i8, ptr %.08, i64 2
  store i16 %i.ai, ptr %.08, align 2
  %i.ak = trunc i32 %i.ad to i16
  %i.al = and i16 %i.ak, 1023
end_hunk_0
