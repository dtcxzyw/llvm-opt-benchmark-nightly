Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdcolor-12?download=true
inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@ycc_rgb565D_convert:bb.a
  %i.fa = sext i16 %i.en to i64                   ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !48
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.eq
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !48
  %i.ff = add nsw i64 %i.fe, %i.fc
  %i.fg = lshr i64 %i.ff, 16
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = add nsw i32 %i.fh, %i.el
  %i.fj = sext i32 %i.fi to i64
  %i.fk = lshr i64 %i.ev, 1
  %i.fl = getelementptr [2 x i8], ptr %i.d, i64 %i.fk
  %i.fm = getelementptr [2 x i8], ptr %i.fl, i64 %i.fj
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !54
  %i.fo = sext i16 %i.fn to i32
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.fa
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !43
  %i.fr = add nsw i32 %i.fq, %i.el
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [2 x i8], ptr %i.ew, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !54
  %i.fv = sext i16 %i.fu to i32
  %i.fw = shl nuw nsw i64 %i.ev, 24
  %i.fx = lshr exact i64 %i.eb, 8
  %i.fy = or disjoint i64 %i.fx, %i.fw            ; 2 uses
  %i.fz = shl nsw i32 %i.ez, 8
  %i.ga = and i32 %i.fz, 63488
  %i.gb = shl nsw i32 %i.fo, 3
  %i.gc = and i32 %i.gb, 2016
  %i.gd = or disjoint i32 %i.gc, %i.ga
  %i.ge = lshr i32 %i.fv, 3
  %i.gf = or i32 %i.gd, %i.ge
  %i.gg = shl i32 %i.gf, 16
  %i.gh = or i32 %i.ei, %i.gg
  store i32 %i.gh, ptr %.1137.i9, align 4, !tbaa !43
  %i.gi = getelementptr inbounds nuw i8, ptr %.1137.i9, i64 8 ; 2 uses
  %i.gj = add nuw nsw i32 %.0129.i13, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.gj, %i.ck
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !209

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.1137.i.lcssa = phi ptr [ %.0136.i, %bb.d ], [ %i.gi, %.lr.ph ]
  %.1135.i.lcssa = phi ptr [ %.0134.i, %bb.d ], [ %i.ej, %.lr.ph ]
  %.1133.i.lcssa = phi ptr [ %.0132.i, %bb.d ], [ %i.em, %.lr.ph ]
  %.1131.i.lcssa = phi ptr [ %.0130.i, %bb.d ], [ %i.eo, %.lr.ph ]
  %.1.i.lcssa = phi i64 [ %.0.i22, %bb.d ], [ %i.fy, %.lr.ph ] ; 2 uses
  %i.gk = and i32 %.1128.i, 1
  %.not142.i = icmp eq i32 %i.gk, 0
  br i1 %.not142.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.gl = load i16, ptr %.1135.i.lcssa, align 2, !tbaa !54
  %i.gm = sext i16 %i.gl to i32                   ; 3 uses
  %i.gn = load i16, ptr %.1133.i.lcssa, align 2, !tbaa !54
  %i.go = load i16, ptr %.1131.i.lcssa, align 2, !tbaa !54
  %i.gp = sext i16 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !43
  %i.gs = add nsw i32 %i.gr, %i.gm
  %i.gt = sext i32 %i.gs to i64
  %i.gu = and i64 %.1.i.lcssa, 255                ; 2 uses
  %i.gv = getelementptr [2 x i8], ptr %i.d, i64 %i.gu ; 2 uses
  %i.gw = getelementptr [2 x i8], ptr %i.gv, i64 %i.gt
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !54
  %i.gy = sext i16 %i.gx to i32
  %i.gz = sext i16 %i.gn to i64                   ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !48
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.gp
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !48
  %i.he = add nsw i64 %i.hd, %i.hb
  %i.hf = lshr i64 %i.he, 16
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = add nsw i32 %i.hg, %i.gm
  %i.hi = sext i32 %i.hh to i64
  %i.hj = lshr i64 %i.gu, 1
  %i.hk = getelementptr [2 x i8], ptr %i.d, i64 %i.hj
  %i.hl = getelementptr [2 x i8], ptr %i.hk, i64 %i.hi
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !54
  %i.hn = sext i16 %i.hm to i32
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.gz
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !43
  %i.hq = add nsw i32 %i.hp, %i.gm
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr [2 x i8], ptr %i.gv, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !54
  %i.hu = sext i16 %i.ht to i32
  %i.hv = shl nsw i32 %i.gy, 8
  %i.hw = and i32 %i.hv, 63488
  %i.hx = shl nsw i32 %i.hn, 3
  %i.hy = and i32 %i.hx, 2016
  %i.hz = or disjoint i32 %i.hy, %i.hw
  %i.ia = lshr i32 %i.hu, 3
  %i.ib = or i32 %i.hz, %i.ia
  %i.ic = trunc i32 %i.ib to i16
  store i16 %i.ic, ptr %.1137.i.lcssa, align 2, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.id = icmp samesign ugt i32 %.in, 1
  br i1 %i.id, label %bb.b, label %ycc_rgb565D_convert_le.exit, !llvm.loop !210

ycc_rgb565D_convert_le.exit:                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @gray_rgb565D_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph20, label %gray_rgb565D_convert_le.exit

.lr.ph20:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60
  %i.f = and i32 %i.e, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @dither_matrix, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !52
  %i.l = load ptr, ptr %1, align 8, !tbaa !51
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph20, %bb.f
  %.in = phi i32 [ %4, %.lr.ph20 ], [ %i.m, %bb.f ] ; 2 uses
  %.0.i18 = phi i64 [ %i.i, %.lr.ph20 ], [ %.1.i.lcssa, %bb.f ] ; 3 uses
  %.053.i17 = phi i32 [ %i.k, %.lr.ph20 ], [ %.154.i, %bb.f ] ; 2 uses
  %.061.i16 = phi ptr [ %3, %.lr.ph20 ], [ %i.r, %bb.f ] ; 2 uses
  %.062.i15 = phi i32 [ %2, %.lr.ph20 ], [ %i.n, %bb.f ] ; 2 uses
  %i.m = add nsw i32 %.in, -1
  %i.n = add i32 %.062.i15, 1
  %i.o = zext i32 %.062.i15 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.061.i16, i64 8
  %i.s = load ptr, ptr %.061.i16, align 8, !tbaa !56 ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 3
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.w = load i16, ptr %i.q, align 2, !tbaa !54
  %i.x = sext i16 %i.w to i64
  %i.y = and i64 %i.x, 4294967295
  %i.z = and i64 %.0.i18, 255
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.y
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !54
  %i.ad = sext i16 %i.ac to i32                   ; 3 uses
  %i.ae = shl nsw i32 %i.ad, 8
  %i.af = and i32 %i.ae, 63488
  %i.ag = shl nsw i32 %i.ad, 3
  %i.ah = and i32 %i.ag, 2016
  %i.ai = lshr i32 %i.ad, 3
  %i.aj = or i32 %i.ah, %i.ai
  %i.ak = or i32 %i.aj, %i.af
  %i.al = trunc i32 %i.ak to i16
  store i16 %i.al, ptr %i.s, align 2, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.an = add i32 %.053.i17, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.058.i = phi ptr [ %i.v, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.056.i = phi ptr [ %i.am, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  %.154.i = phi i32 [ %i.an, %bb.c ], [ %.053.i17, %bb.b ] ; 3 uses
  %i.ao = lshr i32 %.154.i, 1                     ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.1.i12 = phi i64 [ %i.ca, %.lr.ph ], [ %.0.i18, %bb.d ] ; 2 uses
  %.055.i11 = phi i32 [ %i.cc, %.lr.ph ], [ 0, %bb.d ]
  %.157.i10 = phi ptr [ %i.cb, %.lr.ph ], [ %.056.i, %bb.d ] ; 2 uses
  %.159.i9 = phi ptr [ %i.bb, %.lr.ph ], [ %.058.i, %bb.d ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.159.i9, i64 2
  %i.aq = load i16, ptr %.159.i9, align 2, !tbaa !54
  %i.ar = sext i16 %i.aq to i64
  %i.as = and i64 %i.ar, 4294967295
  %i.at = and i64 %.1.i12, 255                    ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.as
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.at
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !54
  %i.ax = shl nuw nsw i64 %i.at, 24
  %i.ay = lshr i64 %.1.i12, 8                     ; 2 uses
  %i.az = and i64 %i.ay, 16776960
  %i.ba = or disjoint i64 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.159.i9, i64 4 ; 2 uses
  %i.bc = load i16, ptr %i.ap, align 2, !tbaa !54
  %i.bd = sext i16 %i.bc to i64
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = and i64 %i.ay, 255                      ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.be
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !54
  %i.bj = sext i16 %i.bi to i32
  %i.bk = sext i16 %i.aw to i32
  %i.bl = insertelement <2 x i32> poison, i32 %i.bk, i64 0
  %i.bm = insertelement <2 x i32> %i.bl, i32 %i.bj, i64 1 ; 3 uses
  %i.bn = shl nsw <2 x i32> %i.bm, splat (i32 8)
  %i.bo = and <2 x i32> %i.bn, splat (i32 63488)
  %i.bp = shl nsw <2 x i32> %i.bm, splat (i32 3)
  %i.bq = and <2 x i32> %i.bp, splat (i32 2016)
  %i.br = lshr <2 x i32> %i.bm, splat (i32 3)
  %i.bs = or <2 x i32> %i.bq, %i.br
  %i.bt = or <2 x i32> %i.bs, %i.bo               ; 2 uses
  %i.bu = extractelement <2 x i32> %i.bt, i64 1
  %i.bv = shl i32 %i.bu, 16
  %i.bw = extractelement <2 x i32> %i.bt, i64 0
  %i.bx = or i32 %i.bw, %i.bv
  %i.by = shl nuw nsw i64 %i.bf, 24
  %i.bz = lshr exact i64 %i.ba, 8
  %i.ca = or disjoint i64 %i.bz, %i.by            ; 2 uses
  store i32 %i.bx, ptr %.157.i10, align 4, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %.157.i10, i64 8 ; 2 uses
  %i.cc = add nuw nsw i32 %.055.i11, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cc, %i.ao
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !211

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.159.i.lcssa = phi ptr [ %.058.i, %bb.d ], [ %i.bb, %.lr.ph ]
  %.157.i.lcssa = phi ptr [ %.056.i, %bb.d ], [ %i.cb, %.lr.ph ]
  %.1.i.lcssa = phi i64 [ %.0.i18, %bb.d ], [ %i.ca, %.lr.ph ] ; 2 uses
  %i.cd = and i32 %.154.i, 1
  %.not64.i = icmp eq i32 %i.cd, 0
  br i1 %.not64.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ce = load i16, ptr %.159.i.lcssa, align 2, !tbaa !54
  %i.cf = sext i16 %i.ce to i64
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = and i64 %.1.i.lcssa, 255
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cg
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !54
  %i.cl = sext i16 %i.ck to i32                   ; 3 uses
  %i.cm = shl nsw i32 %i.cl, 8
  %i.cn = and i32 %i.cm, 63488
  %i.co = shl nsw i32 %i.cl, 3
  %i.cp = and i32 %i.co, 2016
  %i.cq = lshr i32 %i.cl, 3
  %i.cr = or i32 %i.cp, %i.cq
  %i.cs = or i32 %i.cr, %i.cn
  %i.ct = trunc i32 %i.cs to i16
  store i16 %i.ct, ptr %.157.i.lcssa, align 2, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.cu = icmp samesign ugt i32 %.in, 1
  br i1 %i.cu, label %bb.b, label %gray_rgb565D_convert_le.exit, !llvm.loop !212

gray_rgb565D_convert_le.exit:                     ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_rgb565D_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 8 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph24, label %rgb_rgb565D_convert_le.exit

.lr.ph24:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60
  %i.f = and i32 %i.e, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @dither_matrix, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !52
  %i.l = load ptr, ptr %1, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph24, %bb.f
  %.in = phi i32 [ %4, %.lr.ph24 ], [ %i.q, %bb.f ] ; 2 uses
  %.0.i22 = phi i64 [ %i.i, %.lr.ph24 ], [ %.1.i.lcssa, %bb.f ] ; 3 uses
  %.078.i21 = phi i32 [ %i.k, %.lr.ph24 ], [ %.179.i, %bb.f ] ; 2 uses
  %.090.i20 = phi ptr [ %3, %.lr.ph24 ], [ %i.z, %bb.f ] ; 2 uses
  %.091.i19 = phi i32 [ %2, %.lr.ph24 ], [ %i.y, %bb.f ] ; 2 uses
  %i.q = add nsw i32 %.in, -1
  %i.r = zext i32 %.091.i19 to i64                ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.r
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56   ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56   ; 3 uses
  %i.y = add i32 %.091.i19, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.090.i20, i64 8
  %i.aa = load ptr, ptr %.090.i20, align 8, !tbaa !56 ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = and i64 %i.ab, 3
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ae = load i16, ptr %i.t, align 2, !tbaa !54
  %i.af = sext i16 %i.ae to i64
  %i.ag = and i64 %.0.i22, 255                    ; 2 uses
  %i.ah = getelementptr [2 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.af
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !54
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.am = load i16, ptr %i.v, align 2, !tbaa !54
  %i.an = sext i16 %i.am to i64
  %i.ao = lshr i64 %i.ag, 1
  %i.ap = getelementptr [2 x i8], ptr %i.b, i64 %i.ao
  %i.aq = getelementptr [2 x i8], ptr %i.ap, i64 %i.an
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !54
  %i.as = sext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.au = load i16, ptr %i.x, align 2, !tbaa !54
  %i.av = sext i16 %i.au to i64
  %i.aw = getelementptr [2 x i8], ptr %i.ah, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !54
  %i.ay = sext i16 %i.ax to i32
  %i.az = shl nsw i32 %i.ak, 8
  %i.ba = and i32 %i.az, 63488
  %i.bb = shl nsw i32 %i.as, 3
  %i.bc = and i32 %i.bb, 2016
  %i.bd = or disjoint i32 %i.bc, %i.ba
  %i.be = lshr i32 %i.ay, 3
  %i.bf = or i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i16
  store i16 %i.bg, ptr %i.aa, align 2, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.bi = add i32 %.078.i21, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.087.i = phi ptr [ %i.bh, %bb.c ], [ %i.aa, %bb.b ] ; 2 uses
  %.085.i = phi ptr [ %i.ad, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.083.i = phi ptr [ %i.al, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.081.i = phi ptr [ %i.at, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  %.179.i = phi i32 [ %i.bi, %bb.c ], [ %.078.i21, %bb.b ] ; 3 uses
  %i.bj = lshr i32 %.179.i, 1                     ; 2 uses
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.1.i14 = phi i64 [ %i.dp, %.lr.ph ], [ %.0.i22, %bb.d ] ; 2 uses
  %.080.i13 = phi i32 [ %i.ea, %.lr.ph ], [ 0, %bb.d ]
  %.182.i12 = phi ptr [ %i.dh, %.lr.ph ], [ %.081.i, %bb.d ] ; 3 uses
  %.184.i11 = phi ptr [ %i.cz, %.lr.ph ], [ %.083.i, %bb.d ] ; 3 uses
  %.186.i10 = phi ptr [ %i.cr, %.lr.ph ], [ %.085.i, %bb.d ] ; 3 uses
  %.188.i9 = phi ptr [ %i.dz, %.lr.ph ], [ %.087.i, %bb.d ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.186.i10, i64 2
  %i.bl = load i16, ptr %.186.i10, align 2, !tbaa !54
  %i.bm = sext i16 %i.bl to i64
  %i.bn = and i64 %.1.i14, 255                    ; 3 uses
  %i.bo = getelementptr [2 x i8], ptr %i.b, i64 %i.bn ; 2 uses
  %i.bp = getelementptr [2 x i8], ptr %i.bo, i64 %i.bm
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !54
  %i.br = sext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.184.i11, i64 2
  %i.bt = load i16, ptr %.184.i11, align 2, !tbaa !54
  %i.bu = sext i16 %i.bt to i64
  %i.bv = lshr i64 %i.bn, 1
  %i.bw = getelementptr [2 x i8], ptr %i.b, i64 %i.bv
  %i.bx = getelementptr [2 x i8], ptr %i.bw, i64 %i.bu
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !54
  %i.bz = sext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.182.i12, i64 2
  %i.cb = load i16, ptr %.182.i12, align 2, !tbaa !54
  %i.cc = sext i16 %i.cb to i64
  %i.cd = getelementptr [2 x i8], ptr %i.bo, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !54
  %i.cf = sext i16 %i.ce to i32
  %i.cg = shl nuw nsw i64 %i.bn, 24
  %i.ch = lshr i64 %.1.i14, 8                     ; 2 uses
  %i.ci = and i64 %i.ch, 16776960
  %i.cj = or disjoint i64 %i.cg, %i.ci
  %i.ck = shl nsw i32 %i.br, 8
  %i.cl = and i32 %i.ck, 63488
  %i.cm = shl nsw i32 %i.bz, 3
  %i.cn = and i32 %i.cm, 2016
  %i.co = or disjoint i32 %i.cn, %i.cl
  %i.cp = lshr i32 %i.cf, 3
  %i.cq = or i32 %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.186.i10, i64 4 ; 2 uses
  %i.cs = load i16, ptr %i.bk, align 2, !tbaa !54
  %i.ct = sext i16 %i.cs to i64
  %i.cu = and i64 %i.ch, 255                      ; 3 uses
  %i.cv = getelementptr [2 x i8], ptr %i.b, i64 %i.cu ; 2 uses
  %i.cw = getelementptr [2 x i8], ptr %i.cv, i64 %i.ct
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !54
  %i.cy = sext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %.184.i11, i64 4 ; 2 uses
  %i.da = load i16, ptr %i.bs, align 2, !tbaa !54
  %i.db = sext i16 %i.da to i64
  %i.dc = lshr i64 %i.cu, 1
end_hunk_0
