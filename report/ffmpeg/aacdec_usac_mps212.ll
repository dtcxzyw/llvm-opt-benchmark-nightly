Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec_usac_mps212?download=true
inline.NumInlined: 44
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@huff_data_2d:bb.a
  ]

bb.c:                                             ; preds = %huff_dec_1D.exit
  switch i8 %i.ad, label %bb.s [
    i8 3, label %bb.d
    i8 5, label %bb.e
    i8 7, label %bb.f
    i8 9, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.ae = zext nneg i32 %6 to i64
  %i.af = getelementptr inbounds nuw [120 x i8], ptr @ff_aac_hcod2D_CLD_03, i64 %i.ae
  %i.ag = sext i32 %5 to i64
  %i.ah = getelementptr inbounds [60 x i8], ptr %i.af, i64 %i.ag
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.ai = zext nneg i32 %6 to i64
  %i.aj = getelementptr inbounds nuw [280 x i8], ptr @ff_aac_hcod2D_CLD_05, i64 %i.ai
  %i.ak = sext i32 %5 to i64
  %i.al = getelementptr inbounds [140 x i8], ptr %i.aj, i64 %i.ak
  br label %bb.s

bb.f:                                             ; preds = %bb.c
  %i.am = zext nneg i32 %6 to i64
  %i.an = getelementptr inbounds nuw [504 x i8], ptr @ff_aac_hcod2D_CLD_07, i64 %i.am
  %i.ao = sext i32 %5 to i64
  %i.ap = getelementptr inbounds [252 x i8], ptr %i.an, i64 %i.ao
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %i.aq = zext nneg i32 %6 to i64
  %i.ar = getelementptr inbounds nuw [792 x i8], ptr @ff_aac_hcod2D_CLD_09, i64 %i.aq
  %i.as = sext i32 %5 to i64
  %i.at = getelementptr inbounds [396 x i8], ptr %i.ar, i64 %i.as
  br label %bb.s

bb.h:                                             ; preds = %huff_dec_1D.exit
  switch i8 %i.ad, label %bb.s [
    i8 1, label %bb.i
    i8 3, label %bb.j
    i8 5, label %bb.k
    i8 7, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.au = zext nneg i32 %6 to i64
  %i.av = getelementptr inbounds nuw [24 x i8], ptr @ff_aac_hcod2D_ICC_01, i64 %i.au
  %i.aw = sext i32 %5 to i64
  %i.ax = getelementptr inbounds [12 x i8], ptr %i.av, i64 %i.aw
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.ay = zext nneg i32 %6 to i64
  %i.az = getelementptr inbounds nuw [120 x i8], ptr @ff_aac_hcod2D_ICC_03, i64 %i.ay
  %i.ba = sext i32 %5 to i64
  %i.bb = getelementptr inbounds [60 x i8], ptr %i.az, i64 %i.ba
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %i.bc = zext nneg i32 %6 to i64
  %i.bd = getelementptr inbounds nuw [280 x i8], ptr @ff_aac_hcod2D_ICC_05, i64 %i.bc
  %i.be = sext i32 %5 to i64
  %i.bf = getelementptr inbounds [140 x i8], ptr %i.bd, i64 %i.be
  br label %bb.s

bb.l:                                             ; preds = %bb.h
  %i.bg = zext nneg i32 %6 to i64
  %i.bh = getelementptr inbounds nuw [504 x i8], ptr @ff_aac_hcod2D_ICC_07, i64 %i.bg
  %i.bi = sext i32 %5 to i64
  %i.bj = getelementptr inbounds [252 x i8], ptr %i.bh, i64 %i.bi
  br label %bb.s

bb.m:                                             ; preds = %huff_dec_1D.exit
  switch i8 %i.ad, label %bb.s [
    i8 1, label %bb.n
    i8 3, label %bb.o
    i8 5, label %bb.p
    i8 7, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.bk = zext nneg i32 %6 to i64
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr @ff_aac_hcod2D_IPD_01, i64 %i.bk
  %i.bm = sext i32 %5 to i64
  %i.bn = getelementptr inbounds [12 x i8], ptr %i.bl, i64 %i.bm
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.bo = zext nneg i32 %6 to i64
  %i.bp = getelementptr inbounds nuw [120 x i8], ptr @ff_aac_hcod2D_IPD_03, i64 %i.bo
  %i.bq = sext i32 %5 to i64
  %i.br = getelementptr inbounds [60 x i8], ptr %i.bp, i64 %i.bq
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.bs = zext nneg i32 %6 to i64
  %i.bt = getelementptr inbounds nuw [280 x i8], ptr @ff_aac_hcod2D_IPD_05, i64 %i.bs
  %i.bu = sext i32 %5 to i64
  %i.bv = getelementptr inbounds [140 x i8], ptr %i.bt, i64 %i.bu
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.bw = zext nneg i32 %6 to i64
  %i.bx = getelementptr inbounds nuw [504 x i8], ptr @ff_aac_hcod2D_IPD_07, i64 %i.bw
  %i.by = sext i32 %5 to i64
  %i.bz = getelementptr inbounds [252 x i8], ptr %i.bx, i64 %i.by
  br label %bb.s

bb.r:                                             ; preds = %huff_dec_1D.exit
  unreachable

bb.s:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.071 = phi ptr [ @ff_aac_hcod_firstband_CLD, %bb.c ], [ @ff_aac_hcod_firstband_CLD, %bb.d ], [ @ff_aac_hcod_firstband_CLD, %bb.e ], [ @ff_aac_hcod_firstband_CLD, %bb.f ], [ @ff_aac_hcod_firstband_CLD, %bb.g ], [ @ff_aac_hcod_firstband_ICC, %bb.h ], [ @ff_aac_hcod_firstband_ICC, %bb.i ], [ @ff_aac_hcod_firstband_ICC, %bb.j ], [ @ff_aac_hcod_firstband_ICC, %bb.k ], [ @ff_aac_hcod_firstband_ICC, %bb.l ], [ @ff_aac_hcod_firstband_IPD, %bb.m ], [ @ff_aac_hcod_firstband_IPD, %bb.n ], [ @ff_aac_hcod_firstband_IPD, %bb.o ], [ @ff_aac_hcod_firstband_IPD, %bb.p ], [ @ff_aac_hcod_firstband_IPD, %bb.q ] ; 2 uses
  %.070 = phi ptr [ undef, %bb.c ], [ %i.ah, %bb.d ], [ %i.al, %bb.e ], [ %i.ap, %bb.f ], [ %i.at, %bb.g ], [ undef, %bb.h ], [ %i.ax, %bb.i ], [ %i.bb, %bb.j ], [ %i.bf, %bb.k ], [ %i.bj, %bb.l ], [ undef, %bb.m ], [ %i.bn, %bb.n ], [ %i.br, %bb.o ], [ %i.bv, %bb.p ], [ %i.bz, %bb.q ]
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.s, %.preheader
  %spec.select.i5.i76 = phi i32 [ %spec.select.i.i78, %.preheader ], [ %spec.select.i.i, %bb.s ] ; 4 uses
  %.0.i77 = phi i64 [ %i.cp, %.preheader ], [ 0, %bb.s ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.071, i64 %.0.i77
  %i.cb = lshr i32 %spec.select.i5.i76, 3
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !21
  %i.cf = icmp slt i32 %spec.select.i5.i76, %i.f
  %i.cg = zext i1 %i.cf to i32
  %spec.select.i.i78 = add i32 %spec.select.i5.i76, %i.cg ; 3 uses
  %i.ch = zext i8 %i.ce to i32
  %i.ci = and i32 %spec.select.i5.i76, 7
  %i.cj = shl nuw nsw i32 %i.ch, %i.ci
  %i.ck = lshr i32 %i.cj, 7
  store i32 %spec.select.i.i78, ptr %i.c, align 8, !tbaa !20
  %i.cl = and i32 %i.ck, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !23 ; 3 uses
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = icmp sgt i16 %i.co, 0
  br i1 %i.cq, label %.preheader, label %huff_dec_1D.exit79, !llvm.loop !0

huff_dec_1D.exit79:                               ; preds = %.preheader
  %i.cr = xor i16 %i.co, -1
  store i16 %i.cr, ptr %.0.val, align 2, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %huff_dec_1D.exit79, %bb.s
  %.promoted.i80 = phi i32 [ %spec.select.i.i78, %huff_dec_1D.exit79 ], [ %spec.select.i.i, %bb.s ] ; 2 uses
  %.not72 = icmp eq ptr %.8.val, null
  br i1 %.not72, label %bb.u, label %.preheader34

.preheader34:                                     ; preds = %bb.t, %.preheader34
  %spec.select.i5.i81 = phi i32 [ %spec.select.i.i83, %.preheader34 ], [ %.promoted.i80, %bb.t ] ; 4 uses
  %.0.i82 = phi i64 [ %i.dh, %.preheader34 ], [ 0, %bb.t ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.071, i64 %.0.i82
  %i.ct = lshr i32 %spec.select.i5.i81, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !21
  %i.cx = icmp slt i32 %spec.select.i5.i81, %i.f
  %i.cy = zext i1 %i.cx to i32
  %spec.select.i.i83 = add i32 %spec.select.i5.i81, %i.cy ; 3 uses
  %i.cz = zext i8 %i.cw to i32
  %i.da = and i32 %spec.select.i5.i81, 7
  %i.db = shl nuw nsw i32 %i.cz, %i.da
  %i.dc = lshr i32 %i.db, 7
  store i32 %spec.select.i.i83, ptr %i.c, align 8, !tbaa !20
  %i.dd = and i32 %i.dc, 1
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !23 ; 3 uses
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = icmp sgt i16 %i.dg, 0
  br i1 %i.di, label %.preheader34, label %huff_dec_1D.exit84, !llvm.loop !0

huff_dec_1D.exit84:                               ; preds = %.preheader34
  %i.dj = xor i16 %i.dg, -1
  store i16 %i.dj, ptr %.8.val, align 2, !tbaa !23
  br label %bb.u

bb.u:                                             ; preds = %huff_dec_1D.exit84, %bb.t
  %.promoted.i.i22 = phi i32 [ %spec.select.i.i83, %huff_dec_1D.exit84 ], [ %.promoted.i80, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.dk = icmp sgt i32 %2, 0
  br i1 %i.dk, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.u
  %i.dl = zext i8 %i.ad to i32
  %.tr.i = zext i8 %i.ad to i16
  %i.dm = shl nuw nsw i16 %.tr.i, 1
  %i.dn = or disjoint i16 %i.dm, 1
  %.not.i86 = icmp eq i32 %4, 2
  %i.do = zext nneg i32 %3 to i64
  %i.dp = zext nneg i32 %2 to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %symmetry_data.exit
  %.promoted.i.i = phi i32 [ %.promoted.i.i22, %.lr.ph ], [ %.promoted.i.i20, %symmetry_data.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %symmetry_data.exit ] ; 3 uses
  %.06 = phi i32 [ 0, %.lr.ph ], [ %.1, %symmetry_data.exit ] ; 5 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %spec.select.i5.i.i = phi i32 [ %.promoted.i.i, %bb.v ], [ %spec.select.i.i.i, %bb.w ] ; 4 uses
  %.0.i.i = phi i32 [ 0, %bb.v ], [ %i.eg, %bb.w ]
  %i.dq = zext nneg i32 %.0.i.i to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %i.dq
  %i.ds = lshr i32 %spec.select.i5.i.i, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !21
  %i.dw = icmp slt i32 %spec.select.i5.i.i, %i.f
  %i.dx = zext i1 %i.dw to i32
  %spec.select.i.i.i = add i32 %spec.select.i5.i.i, %i.dx ; 9 uses
  %i.dy = zext i8 %i.dv to i32
  %i.dz = and i32 %spec.select.i5.i.i, 7
  %i.ea = shl nuw nsw i32 %i.dy, %i.dz
  %i.eb = lshr i32 %i.ea, 7
  store i32 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !20
  %i.ec = and i32 %i.eb, 1
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !23 ; 3 uses
  %i.eg = sext i16 %i.ef to i32                   ; 2 uses
  %i.eh = icmp sgt i16 %i.ef, 0
  br i1 %i.eh, label %bb.w, label %huff_dec_2D.exit, !llvm.loop !0

huff_dec_2D.exit:                                 ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %.not.i.not = icmp eq i16 %i.ef, 0              ; 3 uses
  %i.ej = xor i32 %i.eg, -1                       ; 2 uses
  %i.ek = lshr i32 %i.ej, 4
  %i.el = trunc nuw nsw i32 %i.ek to i16          ; 3 uses
  %i.em = trunc nuw nsw i32 %i.ej to i16
  %i.en = and i16 %i.em, 15                       ; 3 uses
  %.sink13.i = select i1 %.not.i.not, i16 0, i16 %i.el
  %.sink.i = select i1 %.not.i.not, i16 1, i16 %i.en
  store i16 %.sink13.i, ptr %i.ei, align 2, !tbaa !23
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 2 ; 4 uses
  store i16 %.sink.i, ptr %i.eo, align 2, !tbaa !23
  br i1 %.not.i.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %huff_dec_2D.exit
  %i.ep = add nsw i32 %.06, 1
  %i.eq = sext i32 %.06 to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.eq
  %i.es = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.es, ptr %i.er, align 4, !tbaa !30
  br label %symmetry_data.exit

bb.y:                                             ; preds = %huff_dec_2D.exit
  %i.et = add i16 %i.en, %i.el                    ; 3 uses
  %i.eu = sub i16 %i.el, %i.en                    ; 2 uses
  %i.ev = sext i16 %i.et to i32
  %i.ew = icmp sgt i32 %i.ev, %i.dl               ; 2 uses
  %i.ex = sub i16 %i.dn, %i.et
  %i.ey = sub i16 0, %i.eu
  %i.ez = select i1 %i.ew, i16 %i.ex, i16 %i.et   ; 5 uses
  %storemerge.i = select i1 %i.ew, i16 %i.ey, i16 %i.eu ; 5 uses
  store i16 %i.ez, ptr %i.ei, align 2, !tbaa !23
  store i16 %storemerge.i, ptr %i.eo, align 2, !tbaa !23
  br i1 %.not.i86, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fa = sext i16 %i.ez to i32
  %i.fb = sext i16 %storemerge.i to i32
  %i.fc = sub nsw i32 0, %i.fb
  %.not31.i = icmp eq i32 %i.fa, %i.fc
  br i1 %.not31.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fd = lshr i32 %spec.select.i.i.i, 3
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !21
  %i.fh = icmp slt i32 %spec.select.i.i.i, %i.f
  %i.fi = zext i1 %i.fh to i32
  %spec.select.i.i87 = add i32 %spec.select.i.i.i, %i.fi ; 2 uses
  %i.fj = zext i8 %i.fg to i32
  %i.fk = and i32 %spec.select.i.i.i, 7
  store i32 %spec.select.i.i87, ptr %i.c, align 8, !tbaa !20
  %i.fl = lshr exact i32 128, %i.fk
  %i.fm = and i32 %i.fl, %i.fj
  %.not32.i = icmp eq i32 %i.fm, 0
  %i.fn = select i1 %.not32.i, i16 1, i16 -1      ; 2 uses
  %i.fo = mul i16 %i.fn, %i.ez                    ; 2 uses
  store i16 %i.fo, ptr %i.ei, align 2, !tbaa !23
  %i.fp = mul i16 %i.fn, %storemerge.i            ; 2 uses
  store i16 %i.fp, ptr %i.eo, align 2, !tbaa !23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.fq = phi i32 [ %spec.select.i.i87, %bb.aa ], [ %spec.select.i.i.i, %bb.z ], [ %spec.select.i.i.i, %bb.y ] ; 5 uses
  %i.fr = phi i16 [ %i.fp, %bb.aa ], [ %storemerge.i, %bb.z ], [ %storemerge.i, %bb.y ] ; 2 uses
  %i.fs = phi i16 [ %i.fo, %bb.aa ], [ %i.ez, %bb.z ], [ %i.ez, %bb.y ] ; 2 uses
  %.not33.i = icmp eq i16 %i.fs, %i.fr
  br i1 %.not33.i, label %symmetry_data.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ft = lshr i32 %i.fq, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !21
  %i.fx = icmp slt i32 %i.fq, %i.f
  %i.fy = zext i1 %i.fx to i32
  %spec.select.i35.i = add i32 %i.fq, %i.fy       ; 3 uses
  %i.fz = zext i8 %i.fw to i32
  %i.ga = and i32 %i.fq, 7
  store i32 %spec.select.i35.i, ptr %i.c, align 8, !tbaa !20
  %i.gb = lshr exact i32 128, %i.ga
  %i.gc = and i32 %i.gb, %i.fz
  %.not34.i = icmp eq i32 %i.gc, 0
  br i1 %.not34.i, label %symmetry_data.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i16 %i.fs, ptr %i.eo, align 2, !tbaa !23
  store i16 %i.fr, ptr %i.ei, align 2, !tbaa !23
  br label %symmetry_data.exit

symmetry_data.exit:                               ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.x
  %.promoted.i.i20 = phi i32 [ %spec.select.i.i.i, %bb.x ], [ %i.fq, %bb.ab ], [ %spec.select.i35.i, %bb.ac ], [ %spec.select.i35.i, %bb.ad ]
  %.1 = phi i32 [ %i.ep, %bb.x ], [ %.06, %bb.ab ], [ %.06, %bb.ac ], [ %.06, %bb.ad ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.do ; 2 uses
  %i.gd = icmp samesign ult i64 %indvars.iv.next, %i.dp
  br i1 %i.gd, label %bb.v, label %._crit_edge, !llvm.loop !145

._crit_edge:                                      ; preds = %symmetry_data.exit
  %.not73 = icmp eq i32 %.1, 0
  br i1 %.not73, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 4 uses
  %i.gf = shl nsw i32 %.1, 1
  %i.gg = zext i8 %i.ad to i32
  %i.gh = shl nuw nsw i32 %i.gg, 1
  %i.gi = or disjoint i32 %i.gh, 1
  call fastcc void @pcm_decode(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ge, i16 noundef signext 0, i32 noundef %i.gf, i32 noundef %i.gi)
  %i.gj = icmp sgt i32 %.1, 0
  br i1 %i.gj, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %bb.ae
  %i.gk = zext i8 %i.ad to i16                    ; 6 uses
  %wide.trip.count = zext nneg i32 %.1 to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gl = icmp eq i32 %.1, 1
  br i1 %i.gl, label %.epil.preheader, label %.lr.ph9.new

.lr.ph9.new:                                      ; preds = %.lr.ph9
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph9.new
  %indvars.iv15 = phi i64 [ 0, %.lr.ph9.new ], [ %indvars.iv.next16.1, %bb.af ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph9.new ], [ %niter.next.1, %bb.af ]
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv15
  %i.gn = load i16, ptr %i.gm, align 4, !tbaa !23
  %i.go = sub i16 %i.gn, %i.gk
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv15
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !30
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gr ; 2 uses
  store i16 %i.go, ptr %i.gs, align 2, !tbaa !23
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %indvars.iv15
  %i.gu = load i16, ptr %i.gt, align 4, !tbaa !23
  %i.gv = sub i16 %i.gu, %i.gk
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !23
  %indvars.iv.next16 = or disjoint i64 %indvars.iv15, 1 ; 3 uses
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next16
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !23
  %i.gz = sub i16 %i.gy, %i.gk
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next16
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !30
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hc ; 2 uses
  store i16 %i.gz, ptr %i.hd, align 2, !tbaa !23
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %indvars.iv.next16
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !23
  %i.hg = sub i16 %i.hf, %i.gk
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  store i16 %i.hg, ptr %i.hh, align 2, !tbaa !23
  %indvars.iv.next16.1 = add nuw nsw i64 %indvars.iv15, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.af, !llvm.loop !146

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.af
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph9
  %indvars.iv15.epil.init = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next16.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod43 = trunc i32 %.1 to i1
  call void @llvm.assume(i1 %lcmp.mod43)
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv15.epil.init
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !23
  %i.hk = sub i16 %i.hj, %i.gk
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv15.epil.init
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !30
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hn ; 2 uses
  store i16 %i.hk, ptr %i.ho, align 2, !tbaa !23
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %indvars.iv15.epil.init
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !23
  %i.hr = sub i16 %i.hq, %i.gk
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.u, %bb.ae, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @huff_data_1d(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  switch i32 %3, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %4 to i64
  %i.b = getelementptr inbounds [120 x i8], ptr @ff_aac_hcod1D_CLD, i64 %i.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %4 to i64
  %i.d = getelementptr inbounds [28 x i8], ptr @ff_aac_hcod1D_IPD, i64 %i.c
  %i.e = icmp eq i32 %2, 1
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %4, 0
  %i.f = zext i1 %.not to i64
  %i.g = getelementptr inbounds nuw [28 x i8], ptr @ff_aac_hcod1D_IPD, i64 %i.f
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.d, %bb.b
  %.025 = phi ptr [ @ff_aac_hcod_firstband_CLD, %bb.b ], [ @ff_aac_hcod_firstband_IPD, %bb.c ], [ @ff_aac_hcod_firstband_IPD, %bb.d ], [ @ff_aac_hcod_firstband_ICC, %bb.a ]
  %.024 = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.c ], [ %i.g, %bb.d ], [ @ff_aac_hcod1D_ICC, %bb.a ] ; 2 uses
  %.not27 = icmp eq i32 %5, 0
  br i1 %.not27, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  %.promoted.i = load i32, ptr %i.h, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %spec.select.i5.i = phi i32 [ %.promoted.i, %bb.g ], [ %spec.select.i.i, %bb.h ] ; 4 uses
  %.0.i = phi i64 [ 0, %bb.g ], [ %i.aa, %bb.h ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.025, i64 %.0.i
  %i.m = lshr i32 %spec.select.i5.i, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = icmp slt i32 %spec.select.i5.i, %i.k
  %i.r = zext i1 %i.q to i32
  %spec.select.i.i = add i32 %spec.select.i5.i, %i.r ; 2 uses
  %i.s = zext i8 %i.p to i32
  %i.t = and i32 %spec.select.i5.i, 7
  %i.u = shl nuw nsw i32 %i.s, %i.t
  %i.v = lshr i32 %i.u, 7
  store i32 %spec.select.i.i, ptr %i.h, align 8, !tbaa !20
  %i.w = and i32 %i.v, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !23   ; 3 uses
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = icmp sgt i16 %i.z, 0
  br i1 %i.ab, label %bb.h, label %huff_dec_1D.exit, !llvm.loop !0

huff_dec_1D.exit:                                 ; preds = %bb.h
  %i.ac = xor i16 %i.z, -1
  store i16 %i.ac, ptr %1, align 2, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %huff_dec_1D.exit, %bb.f
  %i.ad = icmp slt i32 %4, %2
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !18 ; 3 uses
  %.not37 = icmp eq i32 %3, 2
  br i1 %.not37, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %6 = sext i32 %4 to i64
  %wide.trip.count = sext i32 %2 to i64
  %.promoted.i29.pre = load i32, ptr %i.ae, align 8, !tbaa !20
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.promoted = load i32, ptr %i.ae, align 8, !tbaa !20
  %7 = sext i32 %4 to i64
  %wide.trip.count46 = sext i32 %2 to i64
  br label %bb.j

bb.j:                                             ; preds = %huff_dec_1D.exit33.us, %.lr.ph.split.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %huff_dec_1D.exit33.us ], [ %7, %.lr.ph.split.us ] ; 2 uses
  %spec.select.i.i32.us36 = phi i32 [ %spec.select.i.i32.us, %huff_dec_1D.exit33.us ], [ %.promoted, %.lr.ph.split.us ]
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %spec.select.i5.i30.us = phi i32 [ %spec.select.i.i32.us36, %bb.j ], [ %spec.select.i.i32.us, %bb.k ] ; 4 uses
  %.0.i31.us = phi i64 [ 0, %bb.j ], [ %i.ax, %bb.k ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.024, i64 %.0.i31.us
  %i.aj = lshr i32 %spec.select.i5.i30.us, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !21
  %i.an = icmp slt i32 %spec.select.i5.i30.us, %i.ah
  %i.ao = zext i1 %i.an to i32
  %spec.select.i.i32.us = add i32 %spec.select.i5.i30.us, %i.ao ; 3 uses
  %i.ap = zext i8 %i.am to i32
  %i.aq = and i32 %spec.select.i5.i30.us, 7
  %i.ar = shl nuw nsw i32 %i.ap, %i.aq
  %i.as = lshr i32 %i.ar, 7
  store i32 %spec.select.i.i32.us, ptr %i.ae, align 8, !tbaa !20
  %i.at = and i32 %i.as, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !23 ; 3 uses
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = icmp sgt i16 %i.aw, 0
  br i1 %i.ay, label %bb.k, label %huff_dec_1D.exit33.us, !llvm.loop !0

huff_dec_1D.exit33.us:                            ; preds = %bb.k
  %i.az = xor i16 %i.aw, -1
  %i.ba = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv43
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !23
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %._crit_edge, label %bb.j, !llvm.loop !147

._crit_edge:                                      ; preds = %bb.n, %huff_dec_1D.exit33.us, %bb.i
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.n
  %.promoted.i29 = phi i32 [ %.promoted.i29.pre, %.lr.ph.split.preheader ], [ %.promoted.i2949, %bb.n ]
  %indvars.iv = phi i64 [ %6, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.split
  %spec.select.i5.i30 = phi i32 [ %.promoted.i29, %.lr.ph.split ], [ %spec.select.i.i32, %bb.l ] ; 4 uses
  %.0.i31 = phi i64 [ 0, %.lr.ph.split ], [ %i.bq, %bb.l ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.024, i64 %.0.i31
  %i.bc = lshr i32 %spec.select.i5.i30, 3
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !21
  %i.bg = icmp slt i32 %spec.select.i5.i30, %i.ah
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i32 = add i32 %spec.select.i5.i30, %i.bh ; 7 uses
  %i.bi = zext i8 %i.bf to i32
  %i.bj = and i32 %spec.select.i5.i30, 7
  %i.bk = shl nuw nsw i32 %i.bi, %i.bj
  %i.bl = lshr i32 %i.bk, 7
  store i32 %spec.select.i.i32, ptr %i.ae, align 8, !tbaa !20
  %i.bm = and i32 %i.bl, 1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !23 ; 4 uses
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = icmp sgt i16 %i.bp, 0
  br i1 %i.br, label %bb.l, label %huff_dec_1D.exit33, !llvm.loop !0

huff_dec_1D.exit33:                               ; preds = %bb.l
  %.not38 = icmp eq i16 %i.bp, -1
  br i1 %.not38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %huff_dec_1D.exit33
  %i.bs = xor i16 %i.bp, -1                       ; 2 uses
  %i.bt = lshr i32 %spec.select.i.i32, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !21
  %i.bx = icmp slt i32 %spec.select.i.i32, %i.ah
  %i.by = zext i1 %i.bx to i32
  %spec.select.i = add i32 %spec.select.i.i32, %i.by ; 2 uses
  %i.bz = zext i8 %i.bw to i32
  %i.ca = and i32 %spec.select.i.i32, 7
  store i32 %spec.select.i, ptr %i.ae, align 8, !tbaa !20
  %i.cb = lshr exact i32 128, %i.ca
  %i.cc = and i32 %i.cb, %i.bz
  %.not28 = icmp eq i32 %i.cc, 0
  %i.cd = sub nsw i16 0, %i.bs
  %i.ce = select i1 %.not28, i16 %i.bs, i16 %i.cd
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %huff_dec_1D.exit33
  %.promoted.i2949 = phi i32 [ %spec.select.i, %bb.m ], [ %spec.select.i.i32, %huff_dec_1D.exit33 ]
  %.0 = phi i16 [ %i.ce, %bb.m ], [ 0, %huff_dec_1D.exit33 ]
  %i.cf = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %.0, ptr %i.cf, align 2, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !147
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !24}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_Bool", !6, i64 0}
!11 = !{!"AACMPSLosslessData", !6, i64 0, !6, i64 504, !6, i64 560, !6, i64 578, !6, i64 588, !6, i64 606, !10, i64 624}
!12 = !{!11, !10, i64 624}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"GetBitContext", !16, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!18 = !{!17, !7, i64 16}
!19 = !{!17, !16, i64 0}
!20 = !{!17, !7, i64 8}
!21 = !{!6, !6, i64 0}
!22 = !{!"short", !6, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = !{!10, !10, i64 0}
!29 = !{!"branch_weights", i32 8, i32 8}
!30 = !{!7, !7, i64 0}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !24, !93}
!33 = distinct !{!33, !24, !25, !26}
!34 = distinct !{!34, !24, !25, !26}
!35 = distinct !{!35, !24, !26, !25}
!36 = distinct !{!36, !24, !25, !26}
!37 = distinct !{!37, !24, !25, !26}
!38 = distinct !{!38, !24, !25, !26}
!39 = distinct !{!39, !24, !25, !26}
!40 = distinct !{!40, !24, !26, !25}
!41 = distinct !{!41, !24, !26, !25}
!42 = distinct !{!42, !24, !25, !26}
!43 = distinct !{!43, !24, !25, !26}
!44 = distinct !{!44, !24, !25, !26}
!45 = distinct !{!45, !24, !25, !26}
!46 = distinct !{!46, !24, !26, !25}
!47 = distinct !{!47, !24, !26, !25}
!48 = distinct !{!48, !31}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24, !25, !26}
!52 = distinct !{!52, !24, !25, !26}
!53 = distinct !{!53, !24, !26, !25}
!54 = distinct !{!54, !31}
!55 = distinct !{!55, !"LVerDomain"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !55}
!59 = distinct !{!59, !24, !25, !26}
!60 = distinct !{!60, !24, !25}
!61 = distinct !{!61, !24, !25, !26}
!62 = distinct !{!62, !24, !25, !26}
!63 = distinct !{!63, !24}
!64 = distinct !{!64, !24, !25, !26}
!65 = distinct !{!65, !24, !25, !26}
!66 = distinct !{!66, !24, !26, !25}
!67 = distinct !{!67, !24, !26, !25}
!68 = distinct !{!68, !31}
!69 = distinct !{!69, !24, !25, !26}
!70 = distinct !{!70, !24, !26, !25}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !24, !25, !26}
!73 = distinct !{!73, !24, !25, !26}
!74 = distinct !{!74, !24, !26, !25}
!75 = distinct !{!75, !31}
!76 = distinct !{!76, !31}
!77 = distinct !{!77, !24, !25, !26}
!78 = distinct !{!78, !24, !25, !26}
!79 = distinct !{!79, !24, !26, !25}
!80 = distinct !{!80, !24}
!81 = distinct !{!81, !24, !25, !26}
!82 = distinct !{!82, !24, !25, !26}
!83 = distinct !{!83, !24, !26, !25}
!84 = distinct !{!84, !24}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !24}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24, !25, !26}
!90 = distinct !{!90, !24, !25, !26}
!91 = distinct !{!91, !24, !26, !25}
!92 = distinct !{!92, !24}
!93 = !{!"llvm.loop.peeled.count", i32 1}
!94 = !{!56}
!95 = !{!57}
!96 = !{!58, !56}
!97 = !{!58}
!98 = distinct !{!98, !24}
!99 = distinct !{!99, !24, !25, !26}
!100 = distinct !{!100, !24, !25, !26}
!101 = distinct !{!101, !24, !26, !25}
!102 = distinct !{!102, !24}
!103 = distinct !{!103, !24, !25, !26}
!104 = distinct !{!104, !24, !25, !26}
!105 = distinct !{!105, !24, !26, !25}
!106 = distinct !{!106, !24, !25, !26}
!107 = distinct !{!107, !24, !25, !26}
!108 = distinct !{!108, !24, !26, !25}
!109 = distinct !{!109, !24}
!110 = distinct !{!110, !24, !25, !26}
!111 = distinct !{!111, !24, !25, !26}
!112 = distinct !{!112, !24, !26, !25}
!113 = distinct !{!113, !24, !25, !26}
!114 = distinct !{!114, !24, !26, !25}
!115 = distinct !{!115, !24}
!116 = distinct !{!116, !24}
!117 = distinct !{!117, !31}
!118 = distinct !{!118, !24}
!119 = distinct !{!119, !24, !25, !26}
!120 = distinct !{!120, !24, !25, !26}
!121 = distinct !{!121, !24, !26, !25}
!122 = distinct !{!122, !24}
!123 = distinct !{!123, !24}
!124 = distinct !{!124, !24, !25, !26}
!125 = distinct !{!125, !24, !25, !26}
!126 = distinct !{!126, !31}
!127 = distinct !{!127, !24, !25}
!128 = distinct !{!128, !24}
!129 = distinct !{!129, !24}
!130 = distinct !{!130, !24, !25, !26}
!131 = distinct !{!131, !24, !25, !26}
!132 = distinct !{!132, !24, !25, !26}
!133 = distinct !{!133, !24, !25, !26}
!134 = distinct !{!134, !24, !26, !25}
!135 = distinct !{!135, !24, !26, !25}
!136 = distinct !{!136, !24, !26, !25}
!137 = distinct !{!137, !24}
!138 = distinct !{!138, !24, !26, !25}
!139 = distinct !{!139, !24, !25, !26}
!140 = distinct !{!140, !24, !26, !25}
!141 = distinct !{!141, !24}
!142 = distinct !{!142, !24}
!143 = distinct !{!143, !24}
!144 = distinct !{!144, !24}
!145 = distinct !{!145, !24}
!146 = distinct !{!146, !24}
!147 = distinct !{!147, !24}
end_hunk_0
