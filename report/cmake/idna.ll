Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/idna?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
begin_hunk_0_@uv__idna_toascii_label:bb.a
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
  %.1111.ph = phi i32 [ %i.ik, %._crit_edge239 ], [ %.0110244, %bb.ay ] ; 5 uses
  %.1107.ph = phi i32 [ 0, %._crit_edge239 ], [ %i.ff, %bb.ay ]
  %.3.ph = phi i32 [ %i.il, %._crit_edge239 ], [ %.2105246, %bb.ay ] ; 3 uses
  %.1.ph = phi i32 [ 0, %._crit_edge239 ], [ %.0247, %bb.ay ] ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %.outer, %uv__utf8_decode1.exit184.thread
  %.3194 = phi ptr [ %.11204, %uv__utf8_decode1.exit184.thread ], [ %.3194.ph, %.outer ] ; 9 uses
  %.1107 = phi i32 [ %.2108, %uv__utf8_decode1.exit184.thread ], [ %.1107.ph, %.outer ] ; 8 uses
  %i.fg = icmp ult ptr %.3194, %1
  br i1 %i.fg, label %bb.ba, label %bb.br

bb.ba:                                            ; preds = %bb.az
  %i.fh = getelementptr inbounds nuw i8, ptr %.3194, i64 1 ; 8 uses
  %i.fi = load i8, ptr %.3194, align 1, !tbaa !13 ; 6 uses
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
  %i.fq = load i8, ptr %i.fh, align 1, !tbaa !13
  %i.fr = zext i8 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %.3194, i64 3
  %i.ft = load i8, ptr %i.fp, align 1, !tbaa !13
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
  %i.gb = load i8, ptr %i.fh, align 1, !tbaa !13
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
  %.032.in.i.i178 = load i8, ptr %.032.in.in.i.i176, align 1, !tbaa !13
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
  br i1 %.not143, label %.preheader, label %bb.az, !llvm.loop !21

.preheader:                                       ; preds = %uv__utf8_decode1.exit184.thread
  %i.gz = icmp ult i32 %.1111.ph, 36
  %i.ha = sub nuw i32 36, %.1111.ph
  %i.hb = tail call i32 @llvm.umin.i32(i32 %i.ha, i32 26)
  %.0114228 = select i1 %i.gz, i32 %i.hb, i32 1   ; 2 uses
  %i.hc = icmp ult i32 %.2108, %.0114228
  %.pre263 = load ptr, ptr %2, align 8, !tbaa !12 ; 2 uses
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
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !13
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  store ptr %i.hn, ptr %2, align 8, !tbaa !12
  store i8 %i.hm, ptr %i.hd, align 1, !tbaa !13
  %.pre261 = load ptr, ptr %2, align 8, !tbaa !12
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
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !13
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  store ptr %i.hz, ptr %2, align 8, !tbaa !12
  store i8 %i.hy, ptr %i.hu, align 1, !tbaa !13
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge233
  %i.ia = lshr i32 %.2108, 1
  %.not144 = icmp eq i32 %.1.ph, 0
  %i.ib = udiv i32 %.2108, 700
  %.3109 = select i1 %.not144, i32 %i.ia, i32 %i.ib ; 2 uses
  %i.ic = add i32 %.3123.ph, 1                    ; 2 uses
  %i.id = udiv i32 %.3109, %i.ic
  %i.ie = add nuw i32 %i.id, %.3109               ; 3 uses
  %i.if = icmp ugt i32 %i.ie, 455
  br i1 %i.if, label %.lr.ph238.a, label %._crit_edge239

.lr.ph238.a:                                      ; preds = %bb.bq, %.lr.ph238.a
  %.4236 = phi i32 [ %i.ig, %.lr.ph238.a ], [ %i.ie, %bb.bq ] ; 2 uses
  %.2112235 = phi i32 [ %4, %.lr.ph238.a ], [ 0, %bb.bq ]
  %i.ig = udiv i32 %.4236, 35                     ; 2 uses
  %4 = add i32 %.2112235, 36                      ; 2 uses
  %i.ih = icmp ugt i32 %.4236, 15959
  br i1 %i.ih, label %.lr.ph238.a, label %._crit_edge239, !llvm.loop !22

._crit_edge239:                                   ; preds = %.lr.ph238.a, %bb.bq
  %.2112.lcssa = phi i32 [ 0, %bb.bq ], [ %4, %.lr.ph238.a ]
  %.4.lcssa = phi i32 [ %i.ie, %bb.bq ], [ %i.ig, %.lr.ph238.a ]
  %i.ii = trunc nuw i32 %.4.lcssa to i16          ; 2 uses
  %.lhs.trunc = mul nuw i16 %i.ii, 36
  %.rhs.trunc = add nuw nsw i16 %i.ii, 38
  %i.ij = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.ij to i32
  %i.ik = add i32 %.2112.lcssa, %.zext
  %i.il = add i32 %.3.ph, -1
  br label %.outer, !llvm.loop !21

bb.br:                                            ; preds = %bb.az
  %i.im = add i32 %.1107, 1
  %i.in = add nsw i32 %.0116.lcssa, 1
  %.not142 = icmp eq i32 %.3.ph, 0
  br i1 %.not142, label %uv__utf8_decode1.exit.thread, label %.preheader206, !llvm.loop !23

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
  %i.a = load i8, ptr %.09, align 1, !tbaa !13    ; 7 uses
  %i.b = zext i8 %i.a to i32
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %uv__wtf8_decode1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i8 %i.a, -62
  br i1 %i.d, label %uv__wtf8_decode1.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13    ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 192
  %.not.i = icmp eq i32 %i.h, 128
  br i1 %.not.i, label %bb.e, label %uv__wtf8_decode1.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ult i8 %i.a, -32
  br i1 %i.i, label %uv__wtf8_decode1.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.09, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13    ; 2 uses
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
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
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
  br i1 %.not, label %uv__wtf8_decode1.exit.thread, label %bb.b, !llvm.loop !24

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
  %i.a = load i8, ptr %.013, align 1, !tbaa !13   ; 6 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %uv__wtf8_decode1.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i8 %i.a, -62
  br i1 %i.d, label %uv__wtf8_decode1.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 1 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
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
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
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
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
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
  store i16 %i.ai, ptr %.08, align 2, !tbaa !16
  %i.ak = trunc i32 %i.ad to i16
  %i.al = and i16 %i.ak, 1023
  %i.am = or disjoint i16 %i.al, -9216
  %i.an = getelementptr inbounds nuw i8, ptr %.08, i64 4
  store i16 %i.am, ptr %i.aj, align 2, !tbaa !16
  br label %bb.l

uv__wtf8_decode1.exit.thread:                     ; preds = %bb.h, %bb.j, %bb.g, %bb.d, %bb.f, %bb.c, %bb.b, %bb.i, %uv__wtf8_decode1.exit
  %.0.i19 = phi i32 [ %i.ad, %uv__wtf8_decode1.exit ], [ -1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.d ], [ %i.m, %bb.f ], [ -1, %bb.c ], [ %i.b, %bb.b ], [ %i.t, %bb.h ]
  %.11418 = phi ptr [ %i.v, %uv__wtf8_decode1.exit ], [ %i.v, %bb.j ], [ %i.n, %bb.g ], [ %i.v, %bb.i ], [ %i.e, %bb.d ], [ %i.e, %bb.f ], [ %.013, %bb.c ], [ %.013, %bb.b ], [ %i.n, %bb.h ]
  %i.ao = trunc i32 %.0.i19 to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %.08, i64 2
  store i16 %i.ao, ptr %.08, align 2, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %uv__wtf8_decode1.exit.thread
  %.11417 = phi ptr [ %i.v, %bb.k ], [ %.11418, %uv__wtf8_decode1.exit.thread ] ; 2 uses
  %.19 = phi ptr [ %i.an, %bb.k ], [ %i.ap, %uv__wtf8_decode1.exit.thread ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.11417, i64 1
  %i.ar = load i8, ptr %.11417, align 1, !tbaa !13
  %.not = icmp eq i8 %i.ar, 0
  br i1 %.not, label %bb.m, label %bb.b, !llvm.loop !25

bb.m:                                             ; preds = %bb.l
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @uv_utf16_length_as_wtf8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not37 = icmp eq i64 %1, 0
  br i1 %.not37, label %uv__get_surrogate_value.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.040 = phi i64 [ %.1, %bb.h ], [ 0, %bb.a ]    ; 5 uses
  %.01939 = phi i64 [ %spec.select24, %bb.h ], [ %1, %bb.a ] ; 7 uses
  %.02138 = phi ptr [ %i.q, %bb.h ], [ %0, %bb.a ] ; 5 uses
  %i.a = load i16, ptr %.02138, align 2, !tbaa !16 ; 4 uses
  %i.b = and i16 %i.a, -1024
  %or.cond.i = icmp eq i16 %i.b, -10240
  %i.c = icmp ne i64 %.01939, 1
  %or.cond4.i = and i1 %i.c, %or.cond.i
  br i1 %or.cond4.i, label %bb.b, label %uv__get_surrogate_value.exit

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.02138, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !16
  %i.f = and i16 %i.e, -1024
  %or.cond7.i = icmp eq i16 %i.f, -9216
  br i1 %or.cond7.i, label %bb.g, label %.thread35

uv__get_surrogate_value.exit:                     ; preds = %.lr.ph
  %i.g = icmp slt i64 %.01939, 0
  %i.h = icmp eq i16 %i.a, 0
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %uv__get_surrogate_value.exit._crit_edge, label %bb.c

bb.c:                                             ; preds = %uv__get_surrogate_value.exit
  %i.i = icmp ult i16 %i.a, 128
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %.040, 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ult i16 %i.a, 2048
  br i1 %i.k, label %bb.f, label %.thread35

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %.040, 2
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.m = add i64 %.040, 4
  %i.n = icmp sgt i64 %.01939, 0
  %i.o = sext i1 %i.n to i64
  %spec.select = add nsw i64 %.01939, %i.o
  br label %bb.h

.thread35:                                        ; preds = %bb.e, %bb.b
  %i.p = add i64 %.040, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread35, %bb.d
  %.122 = phi ptr [ %.02138, %bb.d ], [ %.02138, %bb.f ], [ %.02138, %.thread35 ], [ %i.d, %bb.g ]
  %.120 = phi i64 [ %.01939, %bb.d ], [ %.01939, %bb.f ], [ %.01939, %.thread35 ], [ %spec.select, %bb.g ] ; 2 uses
  %.1 = phi i64 [ %i.j, %bb.d ], [ %i.l, %bb.f ], [ %i.p, %.thread35 ], [ %i.m, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.122, i64 2
  %i.r = icmp sgt i64 %.120, 0
  %i.s = sext i1 %i.r to i64
  %spec.select24 = add nsw i64 %.120, %i.s        ; 2 uses
  %.not = icmp eq i64 %spec.select24, 0
  br i1 %.not, label %uv__get_surrogate_value.exit._crit_edge, label %.lr.ph, !llvm.loop !0

uv__get_surrogate_value.exit._crit_edge:          ; preds = %bb.h, %uv__get_surrogate_value.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.040, %uv__get_surrogate_value.exit ], [ %.1, %bb.h ]
  ret i64 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -105, 1) i32 @uv_utf16_to_wtf8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %.thread145

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not37.i = icmp eq i64 %1, 0
  br i1 %.not37.i, label %uv_utf16_length_as_wtf8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.j
  %.040.i = phi i64 [ %.1.i, %bb.j ], [ 0, %bb.c ] ; 5 uses
  %.01939.i = phi i64 [ %spec.select24.i, %bb.j ], [ %1, %bb.c ] ; 7 uses
  %.02138.i = phi ptr [ %i.t, %bb.j ], [ %0, %bb.c ] ; 5 uses
  %i.d = load i16, ptr %.02138.i, align 2, !tbaa !16 ; 4 uses
  %i.e = and i16 %i.d, -1024
  %or.cond.i.i = icmp eq i16 %i.e, -10240
  %i.f = icmp ne i64 %.01939.i, 1
  %or.cond4.i.i = and i1 %i.f, %or.cond.i.i
  br i1 %or.cond4.i.i, label %bb.d, label %uv__get_surrogate_value.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.02138.i, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !16
  %i.i = and i16 %i.h, -1024
  %or.cond7.i.i = icmp eq i16 %i.i, -9216
  br i1 %or.cond7.i.i, label %bb.i, label %.thread35.i

uv__get_surrogate_value.exit.i:                   ; preds = %.lr.ph.i
  %i.j = icmp slt i64 %.01939.i, 0
  %i.k = icmp eq i16 %i.d, 0
  %or.cond.i = and i1 %i.j, %i.k
  br i1 %or.cond.i, label %uv_utf16_length_as_wtf8.exit, label %bb.e

bb.e:                                             ; preds = %uv__get_surrogate_value.exit.i
  %i.l = icmp ult i16 %i.d, 128
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %.040.i, 1
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.n = icmp ult i16 %i.d, 2048
  br i1 %i.n, label %bb.h, label %.thread35.i

bb.h:                                             ; preds = %bb.g
  %i.o = add i64 %.040.i, 2
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.p = add i64 %.040.i, 4
  %i.q = icmp sgt i64 %.01939.i, 0
  %i.r = sext i1 %i.q to i64
  %spec.select.i = add nsw i64 %.01939.i, %i.r
  br label %bb.j

.thread35.i:                                      ; preds = %bb.g, %bb.d
  %i.s = add i64 %.040.i, 3
  br label %bb.j

bb.j:                                             ; preds = %.thread35.i, %bb.i, %bb.h, %bb.f
  %.122.i = phi ptr [ %.02138.i, %bb.f ], [ %.02138.i, %bb.h ], [ %.02138.i, %.thread35.i ], [ %i.g, %bb.i ]
  %.120.i = phi i64 [ %.01939.i, %bb.f ], [ %.01939.i, %bb.h ], [ %.01939.i, %.thread35.i ], [ %spec.select.i, %bb.i ] ; 2 uses
  %.1.i = phi i64 [ %i.m, %bb.f ], [ %i.o, %bb.h ], [ %i.s, %.thread35.i ], [ %i.p, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.122.i, i64 2
  %i.u = icmp sgt i64 %.120.i, 0
  %i.v = sext i1 %i.u to i64
  %spec.select24.i = add nsw i64 %.120.i, %i.v    ; 2 uses
  %.not.i = icmp eq i64 %spec.select24.i, 0
  br i1 %.not.i, label %uv_utf16_length_as_wtf8.exit, label %.lr.ph.i, !llvm.loop !0

uv_utf16_length_as_wtf8.exit:                     ; preds = %uv__get_surrogate_value.exit.i, %bb.j, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.1.i, %bb.j ], [ %.040.i, %uv__get_surrogate_value.exit.i ] ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %uv_utf16_length_as_wtf8.exit
  store i64 %.0.lcssa.i, ptr %3, align 8, !tbaa !28
  br label %bb.l

.thread145:                                       ; preds = %bb.b
  %i.w = load i64, ptr %3, align 8, !tbaa !28
  br label %bb.p

bb.l:                                             ; preds = %uv_utf16_length_as_wtf8.exit, %bb.k
  br i1 %i.a, label %bb.ao, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pr = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.x = icmp eq ptr %.pr, null
  br i1 %i.x, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.y = add i64 %.0.lcssa.i, 1
  %i.z = tail call ptr @uv__malloc(i64 noundef %i.y) #7 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.ao, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.z, ptr %2, align 8, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %.thread145, %bb.m, %bb.o
  %.087144147 = phi i64 [ %.0.lcssa.i, %bb.o ], [ %.0.lcssa.i, %bb.m ], [ %i.w, %.thread145 ] ; 4 uses
  %.0 = phi ptr [ %i.z, %bb.o ], [ %.pr, %bb.m ], [ %i.b, %.thread145 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 %.087144147 ; 8 uses
  %i.ac = icmp samesign ne i64 %.087144147, 0
  %i.ad = icmp ne i64 %1, 0
  %i.ae = and i1 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph, label %uv__get_surrogate_value.exit._crit_edge

.lr.ph:                                           ; preds = %bb.p, %bb.ac
  %.1165 = phi ptr [ %.2, %bb.ac ], [ %.0, %bb.p ] ; 15 uses
  %.188164 = phi i64 [ %i.cu, %bb.ac ], [ %.087144147, %bb.p ] ; 7 uses
  %.090163 = phi ptr [ %i.cv, %bb.ac ], [ %0, %bb.p ] ; 12 uses
  %.092162 = phi i64 [ %spec.select119, %bb.ac ], [ %1, %bb.p ] ; 13 uses
  %i.af = load i16, ptr %.090163, align 2, !tbaa !16 ; 11 uses
  %i.ag = zext i16 %i.af to i32
  %i.ah = and i16 %i.af, -1024
  %or.cond.i123 = icmp eq i16 %i.ah, -10240
  %i.ai = icmp ne i64 %.092162, 1
  %or.cond4.i = and i1 %i.ai, %or.cond.i123
  br i1 %or.cond4.i, label %bb.q, label %uv__get_surrogate_value.exit

bb.q:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.090163, i64 2 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !16 ; 3 uses
  %i.al = and i16 %i.ak, -1024
  %or.cond7.i = icmp eq i16 %i.al, -9216
  br i1 %or.cond7.i, label %bb.w, label %.thread160

uv__get_surrogate_value.exit:                     ; preds = %.lr.ph
  %i.am = icmp slt i64 %.092162, 0
  %i.an = icmp eq i16 %i.af, 0
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %uv__get_surrogate_value.exit._crit_edge, label %bb.r

bb.r:                                             ; preds = %uv__get_surrogate_value.exit
  %i.ao = icmp ult i16 %i.af, 128
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = trunc nuw nsw i16 %i.af to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.1165, i64 1
  store i8 %i.ap, ptr %.1165, align 1, !tbaa !13
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.ar = icmp ult i16 %i.af, 2048
  br i1 %i.ar, label %bb.u, label %.thread160

bb.u:                                             ; preds = %bb.t
  %i.as = lshr i16 %i.af, 6
  %i.at = trunc nuw nsw i16 %i.as to i8
  %i.au = or disjoint i8 %i.at, -64
  %i.av = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.au, ptr %.1165, align 1, !tbaa !13
  %i.aw = icmp eq ptr %i.av, %i.ab
  br i1 %i.aw, label %uv__get_surrogate_value.exit._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = trunc i16 %i.af to i8
  %i.ay = and i8 %i.ax, 63
  %i.az = or disjoint i8 %i.ay, -128
  %i.ba = getelementptr inbounds nuw i8, ptr %.1165, i64 2
  store i8 %i.az, ptr %i.av, align 1, !tbaa !13
  br label %bb.ac

bb.w:                                             ; preds = %bb.q
  %i.bb = zext i16 %i.ak to i32
  %i.bc = shl nuw nsw i32 %i.ag, 10
  %i.bd = add nsw i32 %i.bc, -56613888
  %i.be = add nuw nsw i32 %i.bd, %i.bb            ; 3 uses
  %i.bf = lshr i32 %i.be, 18
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, -16
  %i.bi = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.bh, ptr %.1165, align 1, !tbaa !13
  %i.bj = icmp eq ptr %i.bi, %i.ab
  br i1 %i.bj, label %uv__get_surrogate_value.exit._crit_edge, label %bb.z

.thread160:                                       ; preds = %bb.t, %bb.q
  %i.bk = lshr i16 %i.af, 12
  %i.bl = trunc nuw nsw i16 %i.bk to i8
  %i.bm = or disjoint i8 %i.bl, -32
  %i.bn = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.bm, ptr %.1165, align 1, !tbaa !13
  %i.bo = icmp eq ptr %i.bn, %i.ab
  br i1 %i.bo, label %uv__get_surrogate_value.exit._crit_edge, label %bb.x

bb.x:                                             ; preds = %.thread160
  %i.bp = lshr i16 %i.af, 6
  %i.bq = trunc i16 %i.bp to i8
  %i.br = and i8 %i.bq, 63
  %i.bs = or disjoint i8 %i.br, -128
  %i.bt = getelementptr inbounds nuw i8, ptr %.1165, i64 2 ; 3 uses
  store i8 %i.bs, ptr %i.bn, align 1, !tbaa !13
  %i.bu = icmp eq ptr %i.bt, %i.ab
  br i1 %i.bu, label %uv__get_surrogate_value.exit._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = trunc i16 %i.af to i8
  %i.bw = and i8 %i.bv, 63
  %i.bx = or disjoint i8 %i.bw, -128
  %i.by = getelementptr inbounds nuw i8, ptr %.1165, i64 3
  store i8 %i.bx, ptr %i.bt, align 1, !tbaa !13
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.bz = lshr i32 %i.be, 12
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = and i8 %i.ca, 63
  %i.cc = or disjoint i8 %i.cb, -128
  %i.cd = getelementptr inbounds nuw i8, ptr %.1165, i64 2 ; 3 uses
  store i8 %i.cc, ptr %i.bi, align 1, !tbaa !13
  %i.ce = icmp eq ptr %i.cd, %i.ab
  br i1 %i.ce, label %uv__get_surrogate_value.exit._crit_edge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = lshr i32 %i.be, 6
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = and i8 %i.cg, 63
  %i.ci = or disjoint i8 %i.ch, -128
  %i.cj = getelementptr inbounds nuw i8, ptr %.1165, i64 3 ; 3 uses
  store i8 %i.ci, ptr %i.cd, align 1, !tbaa !13
  %i.ck = icmp eq ptr %i.cj, %i.ab
  br i1 %i.ck, label %uv__get_surrogate_value.exit._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = trunc i16 %i.ak to i8
  %i.cm = and i8 %i.cl, 63
  %i.cn = or disjoint i8 %i.cm, -128
  %i.co = getelementptr inbounds nuw i8, ptr %.1165, i64 4
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !13
  %i.cp = icmp sgt i64 %.092162, 0
  %i.cq = sext i1 %i.cp to i64
  %spec.select = add nsw i64 %.092162, %i.cq
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.v, %bb.y, %bb.s
  %.193 = phi i64 [ %.092162, %bb.s ], [ %.092162, %bb.v ], [ %.092162, %bb.y ], [ %spec.select, %bb.ab ] ; 2 uses
  %.191 = phi ptr [ %.090163, %bb.s ], [ %.090163, %bb.v ], [ %.090163, %bb.y ], [ %i.aj, %bb.ab ]
  %.2 = phi ptr [ %i.aq, %bb.s ], [ %i.ba, %bb.v ], [ %i.by, %bb.y ], [ %i.co, %bb.ab ] ; 4 uses
  %i.cr = load ptr, ptr %2, align 8, !tbaa !12
  %i.cs = ptrtoint ptr %.2 to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.191, i64 2 ; 2 uses
  %i.cw = icmp sgt i64 %.193, 0
  %i.cx = sext i1 %i.cw to i64
  %spec.select119 = add nsw i64 %.193, %i.cx      ; 3 uses
  %i.cy = icmp ne ptr %.2, %i.ab
  %i.cz = icmp ne i64 %spec.select119, 0
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %.lr.ph, label %uv__get_surrogate_value.exit._crit_edge, !llvm.loop !26

uv__get_surrogate_value.exit._crit_edge:          ; preds = %bb.ac, %bb.u, %.thread160, %bb.x, %bb.w, %bb.z, %bb.aa, %uv__get_surrogate_value.exit, %bb.p
  %.090.lcssa = phi ptr [ %0, %bb.p ], [ %.090163, %uv__get_surrogate_value.exit ], [ %.090163, %bb.aa ], [ %.090163, %bb.z ], [ %.090163, %bb.w ], [ %.090163, %bb.x ], [ %.090163, %.thread160 ], [ %.090163, %bb.u ], [ %i.cv, %bb.ac ] ; 2 uses
  %.188.lcssa = phi i64 [ %.087144147, %bb.p ], [ %.188164, %uv__get_surrogate_value.exit ], [ %.188164, %bb.aa ], [ %.188164, %bb.z ], [ %.188164, %bb.w ], [ %.188164, %bb.x ], [ %.188164, %.thread160 ], [ %.188164, %bb.u ], [ %i.cu, %bb.ac ]
  %.395 = phi i64 [ %1, %bb.p ], [ 0, %uv__get_surrogate_value.exit ], [ %.092162, %bb.aa ], [ %.092162, %bb.z ], [ %.092162, %bb.w ], [ %.092162, %bb.x ], [ %.092162, %.thread160 ], [ %.092162, %bb.u ], [ %spec.select119, %bb.ac ] ; 3 uses
  %.3 = phi ptr [ %.0, %bb.p ], [ %.1165, %uv__get_surrogate_value.exit ], [ %i.cj, %bb.aa ], [ %i.cd, %bb.z ], [ %i.bi, %bb.w ], [ %i.bt, %bb.x ], [ %i.bn, %.thread160 ], [ %i.av, %bb.u ], [ %.2, %bb.ac ] ; 3 uses
  %i.db = icmp ne ptr %.3, %i.ab                  ; 2 uses
  %i.dc = icmp ne ptr %3, null                    ; 2 uses
  %or.cond3 = and i1 %i.dc, %i.db
  br i1 %or.cond3, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %uv__get_surrogate_value.exit._crit_edge
  %i.dd = load ptr, ptr %2, align 8, !tbaa !12
  %i.de = ptrtoint ptr %.3 to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  store i64 %i.dg, ptr %3, align 8, !tbaa !28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %uv__get_surrogate_value.exit._crit_edge
  %i.dh = icmp sgt i64 %.395, -1
  %or.cond120.not = or i1 %i.dh, %i.db
  br i1 %or.cond120.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = load i16, ptr %.090.lcssa, align 2, !tbaa !16
  %i.dj = icmp eq i16 %i.di, 0
  %spec.select121 = select i1 %i.dj, i64 0, i64 %.395
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.4 = phi i64 [ %.395, %bb.ae ], [ %spec.select121, %bb.af ] ; 2 uses
  store i8 0, ptr %.3, align 1, !tbaa !13
  %.not118 = icmp ne i64 %.4, 0                   ; 2 uses
  %brmerge.not = and i1 %i.dc, %.not118
  %.mux = select i1 %.not118, i32 -105, i32 0
  br i1 %brmerge.not, label %.lr.ph.i125, label %bb.ao

.lr.ph.i125:                                      ; preds = %bb.ag, %bb.an
  %.040.i126 = phi i64 [ %.1.i136, %bb.an ], [ 0, %bb.ag ] ; 5 uses
  %.01939.i127 = phi i64 [ %spec.select24.i137, %bb.an ], [ %.4, %bb.ag ] ; 7 uses
  %.02138.i128 = phi ptr [ %i.ea, %bb.an ], [ %.090.lcssa, %bb.ag ] ; 5 uses
  %i.dk = load i16, ptr %.02138.i128, align 2, !tbaa !16 ; 4 uses
  %i.dl = and i16 %i.dk, -1024
  %or.cond.i.i129 = icmp eq i16 %i.dl, -10240
  %i.dm = icmp ne i64 %.01939.i127, 1
  %or.cond4.i.i130 = and i1 %i.dm, %or.cond.i.i129
  br i1 %or.cond4.i.i130, label %bb.ah, label %uv__get_surrogate_value.exit.i131

bb.ah:                                            ; preds = %.lr.ph.i125
  %i.dn = getelementptr inbounds nuw i8, ptr %.02138.i128, i64 2 ; 2 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !16
  %i.dp = and i16 %i.do, -1024
  %or.cond7.i.i140 = icmp eq i16 %i.dp, -9216
  br i1 %or.cond7.i.i140, label %bb.am, label %.thread35.i133

uv__get_surrogate_value.exit.i131:                ; preds = %.lr.ph.i125
  %i.dq = icmp slt i64 %.01939.i127, 0
  %i.dr = icmp eq i16 %i.dk, 0
  %or.cond.i132 = and i1 %i.dq, %i.dr
  br i1 %or.cond.i132, label %uv_utf16_length_as_wtf8.exit142, label %bb.ai

bb.ai:                                            ; preds = %uv__get_surrogate_value.exit.i131
  %i.ds = icmp ult i16 %i.dk, 128
  br i1 %i.ds, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dt = add i64 %.040.i126, 1
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.du = icmp ult i16 %i.dk, 2048
  br i1 %i.du, label %bb.al, label %.thread35.i133

bb.al:                                            ; preds = %bb.ak
  %i.dv = add i64 %.040.i126, 2
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.dw = add i64 %.040.i126, 4
  %i.dx = icmp sgt i64 %.01939.i127, 0
  %i.dy = sext i1 %i.dx to i64
  %spec.select.i141 = add nsw i64 %.01939.i127, %i.dy
  br label %bb.an

.thread35.i133:                                   ; preds = %bb.ak, %bb.ah
  %i.dz = add i64 %.040.i126, 3
  br label %bb.an

bb.an:                                            ; preds = %.thread35.i133, %bb.am, %bb.al, %bb.aj
  %.122.i134 = phi ptr [ %.02138.i128, %bb.aj ], [ %.02138.i128, %bb.al ], [ %.02138.i128, %.thread35.i133 ], [ %i.dn, %bb.am ]
  %.120.i135 = phi i64 [ %.01939.i127, %bb.aj ], [ %.01939.i127, %bb.al ], [ %.01939.i127, %.thread35.i133 ], [ %spec.select.i141, %bb.am ] ; 2 uses
  %.1.i136 = phi i64 [ %i.dt, %bb.aj ], [ %i.dv, %bb.al ], [ %i.dz, %.thread35.i133 ], [ %i.dw, %bb.am ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.122.i134, i64 2
  %i.eb = icmp sgt i64 %.120.i135, 0
  %i.ec = sext i1 %i.eb to i64
  %spec.select24.i137 = add nsw i64 %.120.i135, %i.ec ; 2 uses
  %.not.i138 = icmp eq i64 %spec.select24.i137, 0
  br i1 %.not.i138, label %uv_utf16_length_as_wtf8.exit142, label %.lr.ph.i125, !llvm.loop !0

uv_utf16_length_as_wtf8.exit142:                  ; preds = %uv__get_surrogate_value.exit.i131, %bb.an
  %.0.lcssa.i139 = phi i64 [ %.1.i136, %bb.an ], [ %.040.i126, %uv__get_surrogate_value.exit.i131 ]
  %i.ed = add i64 %.0.lcssa.i139, %.188.lcssa
  store i64 %i.ed, ptr %3, align 8, !tbaa !28
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ag, %uv_utf16_length_as_wtf8.exit142, %bb.n, %bb.l
  %.089 = phi i32 [ %.mux, %bb.ag ], [ 0, %bb.l ], [ -12, %bb.n ], [ -105, %uv_utf16_length_as_wtf8.exit142 ]
  ret i32 %.089
}

declare ptr @uv__malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !14}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"short", !6, i64 0}
!16 = !{!15, !15, i64 0}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = !{!"long", !6, i64 0}
!28 = !{!27, !27, i64 0}
end_hunk_0
