Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/idna?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
begin_hunk_0_@uv__idna_toascii_label:bb.a
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
  %.3123.ph = phi i32 [ %i.hz, %._crit_edge239 ], [ %.2122242, %bb.ay ] ; 2 uses
  %.1111.ph = phi i32 [ %i.ii, %._crit_edge239 ], [ %.0110244, %bb.ay ] ; 5 uses
  %.1107.ph = phi i32 [ 0, %._crit_edge239 ], [ %i.ff, %bb.ay ]
  %.3.ph = phi i32 [ %i.ij, %._crit_edge239 ], [ %.2105246, %bb.ay ] ; 3 uses
  %.1.ph = phi i32 [ 0, %._crit_edge239 ], [ %.0247, %bb.ay ] ; 2 uses
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
  %4 = phi ptr [ %5, %bb.bo ], [ %.pre263, %.preheader ] ; 4 uses
  %.0114231 = phi i32 [ %.0114, %bb.bo ], [ %.0114228, %.preheader ] ; 3 uses
  %.0115230 = phi i32 [ %i.hf, %bb.bo ], [ %.2108, %.preheader ]
  %.0119229 = phi i32 [ %i.hn, %bb.bo ], [ 36, %.preheader ]
  %i.hd = sub nuw i32 %.0115230, %.0114231        ; 2 uses
  %i.he = sub nuw nsw i32 36, %.0114231           ; 2 uses
  %i.hf = udiv i32 %i.hd, %i.he                   ; 3 uses
  %i.hg = urem i32 %i.hd, %i.he
  %i.hh = icmp ult ptr %4, %3
  br i1 %i.hh, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph232
  %i.hi = add nuw nsw i32 %i.hg, %.0114231
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr @uv__idna_toascii_label.alphabet, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 1
  store ptr %i.hm, ptr %2, align 8
  store i8 %i.hl, ptr %4, align 1
  %.pre261 = load ptr, ptr %2, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph232, %bb.bn
  %5 = phi ptr [ %4, %.lr.ph232 ], [ %.pre261, %bb.bn ] ; 2 uses
  %i.hn = add i32 %.0119229, 36                   ; 3 uses
  %i.ho = icmp ugt i32 %i.hn, %.1111.ph
  %i.hp = sub nuw i32 %i.hn, %.1111.ph
  %i.hq = tail call i32 @llvm.umin.i32(i32 %i.hp, i32 26)
  %.0114 = select i1 %i.ho, i32 %i.hq, i32 1      ; 2 uses
  %i.hr = icmp samesign ult i32 %i.hf, %.0114
  br i1 %i.hr, label %._crit_edge233, label %.lr.ph232

._crit_edge233:                                   ; preds = %bb.bo, %.preheader
  %6 = phi ptr [ %.pre263, %.preheader ], [ %5, %bb.bo ] ; 3 uses
  %.0115.lcssa = phi i32 [ %.2108, %.preheader ], [ %i.hf, %bb.bo ]
  %i.hs = icmp ult ptr %6, %3
  br i1 %i.hs, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %._crit_edge233
  %i.ht = zext nneg i32 %.0115.lcssa to i64
  %i.hu = getelementptr inbounds nuw i8, ptr @uv__idna_toascii_label.alphabet, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 1
  store ptr %i.hw, ptr %2, align 8
  store i8 %i.hv, ptr %6, align 1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge233
  %i.hx = lshr i32 %.2108, 1
  %.not144 = icmp eq i32 %.1.ph, 0
  %i.hy = udiv i32 %.2108, 700
  %.3109 = select i1 %.not144, i32 %i.hx, i32 %i.hy ; 2 uses
  %i.hz = add i32 %.3123.ph, 1                    ; 2 uses
  %i.ia = udiv i32 %.3109, %i.hz
  %i.ib = add nuw i32 %i.ia, %.3109               ; 3 uses
  %i.ic = icmp ugt i32 %i.ib, 455
  br i1 %i.ic, label %.lr.ph238, label %._crit_edge239

.lr.ph238:                                        ; preds = %bb.bq, %.lr.ph238
  %.4236 = phi i32 [ %i.id, %.lr.ph238 ], [ %i.ib, %bb.bq ] ; 2 uses
  %.2112235 = phi i32 [ %i.ie, %.lr.ph238 ], [ 0, %bb.bq ]
  %i.id = udiv i32 %.4236, 35                     ; 2 uses
  %i.ie = add i32 %.2112235, 36                   ; 2 uses
  %i.if = icmp ugt i32 %.4236, 15959
  br i1 %i.if, label %.lr.ph238, label %._crit_edge239, !llvm.loop !11

._crit_edge239:                                   ; preds = %.lr.ph238, %bb.bq
  %.2112.lcssa = phi i32 [ 0, %bb.bq ], [ %i.ie, %.lr.ph238 ]
  %.4.lcssa = phi i32 [ %i.ib, %bb.bq ], [ %i.id, %.lr.ph238 ]
  %i.ig = trunc nuw i32 %.4.lcssa to i16          ; 2 uses
  %.lhs.trunc = mul nuw i16 %i.ig, 36
  %.rhs.trunc = add nuw nsw i16 %i.ig, 38
  %i.ih = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.ih to i32
  %i.ii = add i32 %.2112.lcssa, %.zext
  %i.ij = add i32 %.3.ph, -1
  br label %.outer, !llvm.loop !10

bb.br:                                            ; preds = %bb.az
  %i.ik = add i32 %.1107, 1
  %i.il = add nsw i32 %.0116.lcssa, 1
  %.not142 = icmp eq i32 %.3.ph, 0
  br i1 %.not142, label %uv__utf8_decode1.exit.thread, label %.preheader206, !llvm.loop !12

uv__utf8_decode1.exit.thread:                     ; preds = %bb.m, %bb.i, %bb.l, %bb.k, %bb.d, %bb.c, %bb.br, %._crit_edge226, %bb.bm, %.loopexit
  %.0124 = phi i32 [ 0, %bb.br ], [ -7, %bb.bm ], [ %.0120.lcssa296, %.loopexit ], [ -7, %._crit_edge226 ], [ -22, %bb.c ], [ -22, %bb.d ], [ -22, %bb.k ], [ -22, %bb.l ], [ -22, %bb.i ], [ -22, %bb.m ]
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
end_hunk_0
