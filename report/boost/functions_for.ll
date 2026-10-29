Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/functions_for?download=true
inline.NumInlined: 1491
inline.NumDeleted: 594
begin_hunk_0_@_Z27test_some_comparable_structI17comparable_structEvv:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ai = icmp eq i32 %i.af, %i.ag
  br i1 %i.ai, label %bb.i, label %_ZleRK17comparable_structS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.g, align 4, !tbaa !12  ; 2 uses
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !12  ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %_ZleRK17comparable_structS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp eq i32 %i.aj, %i.ak
  br i1 %i.am, label %bb.k, label %_ZleRK17comparable_structS1_.exit

bb.k:                                             ; preds = %bb.j
  %i.an = load i32, ptr %i.h, align 4, !tbaa !12  ; 2 uses
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !12  ; 2 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %_ZleRK17comparable_structS1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp eq i32 %i.an, %i.ao
  br i1 %i.aq, label %bb.m, label %_ZleRK17comparable_structS1_.exit

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !12  ; 2 uses
  %i.as = load i32, ptr %i.q, align 4, !tbaa !12  ; 2 uses
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %_ZleRK17comparable_structS1_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = icmp eq i32 %i.ar, %i.as
  br i1 %i.au, label %bb.o, label %_ZleRK17comparable_structS1_.exit

bb.o:                                             ; preds = %bb.n
  %i.av = load i32, ptr %i.j, align 4, !tbaa !12  ; 2 uses
  %i.aw = load i32, ptr %i.r, align 4, !tbaa !12  ; 2 uses
  %i.ax = icmp slt i32 %i.av, %i.aw
  br i1 %i.ax, label %_ZleRK17comparable_structS1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp eq i32 %i.av, %i.aw
  br i1 %i.ay, label %bb.q, label %_ZleRK17comparable_structS1_.exit

bb.q:                                             ; preds = %bb.p
  %i.az = load i32, ptr %i.k, align 4, !tbaa !12
  %i.ba = load i32, ptr %i.s, align 4, !tbaa !12
  %i.bb = icmp sle i32 %i.az, %i.ba
  br label %_ZleRK17comparable_structS1_.exit

_ZleRK17comparable_structS1_.exit:                ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %i.bc = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.f ], [ true, %bb.g ], [ false, %bb.h ], [ true, %bb.i ], [ false, %bb.j ], [ true, %bb.k ], [ false, %bb.l ], [ true, %bb.m ], [ false, %bb.n ], [ true, %bb.o ], [ false, %bb.p ], [ %i.bb, %bb.q ]
  %i.bd = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 40, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structI17comparable_structEvv, i1 noundef zeroext %i.bc) ; 0 uses
  %i.be = load i32, ptr %4, align 4, !tbaa !12    ; 2 uses
  %i.bf = load i32, ptr %5, align 4, !tbaa !12    ; 2 uses
  %i.bg = icmp sgt i32 %i.be, %i.bf
  br i1 %i.bg, label %_ZgeRK17comparable_structS1_.exit, label %bb.r

bb.r:                                             ; preds = %_ZleRK17comparable_structS1_.exit
  %i.bh = icmp eq i32 %i.be, %i.bf
  br i1 %i.bh, label %bb.s, label %_ZgeRK17comparable_structS1_.exit

bb.s:                                             ; preds = %bb.r
  %i.bi = load i16, ptr %i.d, align 4, !tbaa !14  ; 2 uses
  %i.bj = load i16, ptr %i.l, align 4, !tbaa !14  ; 2 uses
  %i.bk = icmp sgt i16 %i.bi, %i.bj
  br i1 %i.bk, label %_ZgeRK17comparable_structS1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = icmp eq i16 %i.bi, %i.bj
  br i1 %i.bl, label %bb.u, label %_ZgeRK17comparable_structS1_.exit

bb.u:                                             ; preds = %bb.t
  %i.bm = load i8, ptr %i.e, align 2, !tbaa !16, !range !17, !noundef !18 ; 2 uses
  %i.bn = load i8, ptr %i.m, align 2, !tbaa !16, !range !17, !noundef !18 ; 2 uses
  %i.bo = icmp samesign ugt i8 %i.bm, %i.bn
  br i1 %i.bo, label %_ZgeRK17comparable_structS1_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = icmp eq i8 %i.bm, %i.bn
  br i1 %i.bp, label %bb.w, label %_ZgeRK17comparable_structS1_.exit

bb.w:                                             ; preds = %bb.v
  %i.bq = load i32, ptr %i.f, align 4, !tbaa !12  ; 2 uses
  %i.br = load i32, ptr %i.n, align 4, !tbaa !12  ; 2 uses
  %i.bs = icmp sgt i32 %i.bq, %i.br
  br i1 %i.bs, label %_ZgeRK17comparable_structS1_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = icmp eq i32 %i.bq, %i.br
  br i1 %i.bt, label %bb.y, label %_ZgeRK17comparable_structS1_.exit

bb.y:                                             ; preds = %bb.x
  %i.bu = load i32, ptr %i.g, align 4, !tbaa !12  ; 2 uses
  %i.bv = load i32, ptr %i.o, align 4, !tbaa !12  ; 2 uses
  %i.bw = icmp sgt i32 %i.bu, %i.bv
  br i1 %i.bw, label %_ZgeRK17comparable_structS1_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bx, label %bb.aa, label %_ZgeRK17comparable_structS1_.exit

bb.aa:                                            ; preds = %bb.z
  %i.by = load i32, ptr %i.h, align 4, !tbaa !12  ; 2 uses
  %i.bz = load i32, ptr %i.p, align 4, !tbaa !12  ; 2 uses
  %i.ca = icmp sgt i32 %i.by, %i.bz
  br i1 %i.ca, label %_ZgeRK17comparable_structS1_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = icmp eq i32 %i.by, %i.bz
  br i1 %i.cb, label %bb.ac, label %_ZgeRK17comparable_structS1_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i32, ptr %i.i, align 4, !tbaa !12  ; 2 uses
  %i.cd = load i32, ptr %i.q, align 4, !tbaa !12  ; 2 uses
  %i.ce = icmp sgt i32 %i.cc, %i.cd
  br i1 %i.ce, label %_ZgeRK17comparable_structS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = icmp eq i32 %i.cc, %i.cd
  br i1 %i.cf, label %bb.ae, label %_ZgeRK17comparable_structS1_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cg = load i32, ptr %i.j, align 4, !tbaa !12  ; 2 uses
  %i.ch = load i32, ptr %i.r, align 4, !tbaa !12  ; 2 uses
  %i.ci = icmp sgt i32 %i.cg, %i.ch
  br i1 %i.ci, label %_ZgeRK17comparable_structS1_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = icmp eq i32 %i.cg, %i.ch
  br i1 %i.cj, label %bb.ag, label %_ZgeRK17comparable_structS1_.exit

bb.ag:                                            ; preds = %bb.af
  %i.ck = load i32, ptr %i.k, align 4, !tbaa !12
  %i.cl = load i32, ptr %i.s, align 4, !tbaa !12
  %i.cm = icmp sge i32 %i.ck, %i.cl
  br label %_ZgeRK17comparable_structS1_.exit

_ZgeRK17comparable_structS1_.exit:                ; preds = %_ZleRK17comparable_structS1_.exit, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %i.cn = phi i1 [ true, %_ZleRK17comparable_structS1_.exit ], [ false, %bb.r ], [ true, %bb.s ], [ false, %bb.t ], [ true, %bb.u ], [ false, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.z ], [ true, %bb.aa ], [ false, %bb.ab ], [ true, %bb.ac ], [ false, %bb.ad ], [ true, %bb.ae ], [ false, %bb.af ], [ %i.cm, %bb.ag ]
  %i.co = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 41, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structI17comparable_structEvv, i1 noundef zeroext %i.cn) ; 0 uses
  %i.cp = load i32, ptr %4, align 4, !tbaa !12
  %i.cq = load i32, ptr %5, align 4, !tbaa !12
  %.not.i.i.i.i = icmp eq i32 %i.cp, %i.cq
  br i1 %.not.i.i.i.i, label %bb.ah, label %_ZneRK17comparable_structS1_.exit

bb.ah:                                            ; preds = %_ZgeRK17comparable_structS1_.exit
  %i.cr = load i16, ptr %i.d, align 4, !tbaa !14
  %i.cs = load i16, ptr %i.l, align 4, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i16 %i.cr, %i.cs
  br i1 %.not.i.i.i.i.i, label %bb.ai, label %_ZneRK17comparable_structS1_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ct = load i8, ptr %i.e, align 2, !tbaa !16, !range !17, !noundef !18
  %i.cu = load i8, ptr %i.m, align 2, !tbaa !16, !range !17, !noundef !18
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ct, %i.cu
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %_ZneRK17comparable_structS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cv = load i32, ptr %i.f, align 4, !tbaa !12
  %i.cw = load i32, ptr %i.n, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.cv, %i.cw
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %_ZneRK17comparable_structS1_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cx = load i32, ptr %i.g, align 4, !tbaa !12
  %i.cy = load i32, ptr %i.o, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.cx, %i.cy
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.al, label %_ZneRK17comparable_structS1_.exit

bb.al:                                            ; preds = %bb.ak
  %i.cz = load i32, ptr %i.h, align 4, !tbaa !12
  %i.da = load i32, ptr %i.p, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cz, %i.da
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.am, label %_ZneRK17comparable_structS1_.exit

bb.am:                                            ; preds = %bb.al
  %i.db = load i32, ptr %i.i, align 4, !tbaa !12
  %i.dc = load i32, ptr %i.q, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.db, %i.dc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.an, label %_ZneRK17comparable_structS1_.exit

bb.an:                                            ; preds = %bb.am
  %i.dd = load i32, ptr %i.j, align 4, !tbaa !12
  %i.de = load i32, ptr %i.r, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dd, %i.de
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %_ZneRK17comparable_structS1_.exit

bb.ao:                                            ; preds = %bb.an
  %i.df = load i32, ptr %i.k, align 4, !tbaa !12
  %i.dg = load i32, ptr %i.s, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.df, %i.dg
  br label %_ZneRK17comparable_structS1_.exit

_ZneRK17comparable_structS1_.exit:                ; preds = %_ZgeRK17comparable_structS1_.exit, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %i.dh = phi i1 [ false, %_ZgeRK17comparable_structS1_.exit ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.aj ], [ false, %bb.ak ], [ false, %bb.al ], [ false, %bb.am ], [ false, %bb.an ], [ %.not.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ao ]
  %i.di = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 42, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structI17comparable_structEvv, i1 noundef zeroext %i.dh) ; 0 uses
  %i.dj = load i16, ptr %i.d, align 4
  %i.dk = icmp eq i16 %i.dj, 1
  %i.dl = load i8, ptr %i.e, align 2, !range !17
  %i.dm = icmp eq i8 %i.dl, 0
  %i.dn = load <5 x i32>, ptr %4, align 4
  %i.do = shufflevector <5 x i32> %i.dn, <5 x i32> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %.fr = freeze <4 x i32> %i.do
  %i.dp = load i32, ptr %i.i, align 4
  %i.dq = icmp eq i32 %i.dp, 9
  %i.dr = load i32, ptr %i.j, align 4
  %i.ds = icmp eq i32 %i.dr, 10
  %i.dt = icmp ne <4 x i32> %.fr, <i32 0, i32 6, i32 7, i32 8>
  %i.du = bitcast <4 x i1> %i.dt to i4
  %i.dv = icmp eq i4 %i.du, 0
  %op.rdx165 = select i1 %i.dv, i1 %i.dk, i1 false
  %8 = select i1 %op.rdx165, i1 %i.dm, i1 false
  %op.rdx167 = select i1 %8, i1 %i.dq, i1 false
  %op.rdx168 = select i1 %op.rdx167, i1 %i.ds, i1 false
  br i1 %op.rdx168, label %bb.ap, label %_ZeqRK17comparable_structS1_.exit

bb.ap:                                            ; preds = %_ZneRK17comparable_structS1_.exit
  %i.dw = load i32, ptr %i.k, align 4, !tbaa !12
  %i.dx = icmp ne i32 %i.dw, 11111
  br label %_ZeqRK17comparable_structS1_.exit

_ZeqRK17comparable_structS1_.exit:                ; preds = %_ZneRK17comparable_structS1_.exit, %bb.ap
  %i.dy = phi i1 [ true, %_ZneRK17comparable_structS1_.exit ], [ %i.dx, %bb.ap ]
  %i.dz = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structI17comparable_structEvv, i1 noundef zeroext %i.dy) ; 0 uses
  %i.ea = load i16, ptr %i.d, align 4
  %.not.i.i.i.i.i4 = icmp eq i16 %i.ea, 1
  %i.eb = load i8, ptr %i.e, align 2, !range !17
  %.not.i.i.i.i.i.i5 = icmp eq i8 %i.eb, 0
  %i.ec = load <5 x i32>, ptr %4, align 4
  %i.ed = shufflevector <5 x i32> %i.ec, <5 x i32> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %.fr174 = freeze <4 x i32> %i.ed
  %i.ee = load i32, ptr %i.i, align 4
  %.not.i.i.i.i.i.i.i.i.i.i9 = icmp eq i32 %i.ee, 9
  %i.ef = load i32, ptr %i.j, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i10 = icmp eq i32 %i.ef, 10
  %i.eg = icmp ne <4 x i32> %.fr174, <i32 0, i32 6, i32 7, i32 8>
  %i.eh = bitcast <4 x i1> %i.eg to i4
  %i.ei = icmp eq i4 %i.eh, 0
  %op.rdx = select i1 %i.ei, i1 %.not.i.i.i.i.i4, i1 false
  %9 = select i1 %op.rdx, i1 %.not.i.i.i.i.i.i5, i1 false
  %op.rdx163 = select i1 %9, i1 %.not.i.i.i.i.i.i.i.i.i.i9, i1 false
  %op.rdx164 = select i1 %op.rdx163, i1 %.not.i.i.i.i.i.i.i.i.i.i.i10, i1 false
  br i1 %op.rdx164, label %bb.aq, label %_ZneRK17comparable_structS1_.exit12

bb.aq:                                            ; preds = %_ZeqRK17comparable_structS1_.exit
  %i.ej = load i32, ptr %i.k, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i.i.i.i11 = icmp ne i32 %i.ej, 11111
  br label %_ZneRK17comparable_structS1_.exit12

_ZneRK17comparable_structS1_.exit12:              ; preds = %_ZeqRK17comparable_structS1_.exit, %bb.aq
  %i.ek = phi i1 [ true, %_ZeqRK17comparable_structS1_.exit ], [ %.not.i.i.i.i.i.i.i.i.i.i.i.i11, %bb.aq ]
  %i.el = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 44, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structI17comparable_structEvv, i1 noundef zeroext %i.ek) ; 0 uses
  %i.em = load i32, ptr %4, align 4, !tbaa !12    ; 2 uses
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %_ZltRK17comparable_structS1_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZneRK17comparable_structS1_.exit12
  %i.eo = icmp eq i32 %i.em, 0
  br i1 %i.eo, label %bb.as, label %_ZltRK17comparable_structS1_.exit

bb.as:                                            ; preds = %bb.ar
  %i.ep = load i16, ptr %i.d, align 4, !tbaa !14  ; 2 uses
  %i.eq = icmp slt i16 %i.ep, 1
  br i1 %i.eq, label %_ZltRK17comparable_structS1_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.er = icmp eq i16 %i.ep, 1
  %i.es = load i8, ptr %i.e, align 2, !range !17
  %i.et = icmp eq i8 %i.es, 0
  %or.cond92 = select i1 %i.er, i1 %i.et, i1 false
  br i1 %or.cond92, label %bb.au, label %_ZltRK17comparable_structS1_.exit

bb.au:                                            ; preds = %bb.at
  %i.eu = load i32, ptr %i.f, align 4, !tbaa !12  ; 2 uses
  %i.ev = icmp slt i32 %i.eu, 6
  br i1 %i.ev, label %_ZltRK17comparable_structS1_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ew = icmp eq i32 %i.eu, 6
  br i1 %i.ew, label %bb.aw, label %_ZltRK17comparable_structS1_.exit

bb.aw:                                            ; preds = %bb.av
  %i.ex = load i32, ptr %i.g, align 4, !tbaa !12  ; 2 uses
  %i.ey = icmp slt i32 %i.ex, 7
  br i1 %i.ey, label %_ZltRK17comparable_structS1_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ez = icmp eq i32 %i.ex, 7
  br i1 %i.ez, label %bb.ay, label %_ZltRK17comparable_structS1_.exit

bb.ay:                                            ; preds = %bb.ax
  %i.fa = load i32, ptr %i.h, align 4, !tbaa !12  ; 2 uses
  %i.fb = icmp slt i32 %i.fa, 8
  br i1 %i.fb, label %_ZltRK17comparable_structS1_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fc = icmp eq i32 %i.fa, 8
  br i1 %i.fc, label %bb.ba, label %_ZltRK17comparable_structS1_.exit

bb.ba:                                            ; preds = %bb.az
  %i.fd = load i32, ptr %i.i, align 4, !tbaa !12  ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 9
  br i1 %i.fe, label %_ZltRK17comparable_structS1_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ff = icmp eq i32 %i.fd, 9
  br i1 %i.ff, label %bb.bc, label %_ZltRK17comparable_structS1_.exit

bb.bc:                                            ; preds = %bb.bb
  %i.fg = load i32, ptr %i.j, align 4, !tbaa !12  ; 2 uses
  %i.fh = icmp slt i32 %i.fg, 10
  br i1 %i.fh, label %_ZltRK17comparable_structS1_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fi = icmp eq i32 %i.fg, 10
  br i1 %i.fi, label %bb.be, label %_ZltRK17comparable_structS1_.exit

bb.be:                                            ; preds = %bb.bd
  %i.fj = load i32, ptr %i.k, align 4, !tbaa !12
  %i.fk = icmp slt i32 %i.fj, 11111
  br label %_ZltRK17comparable_structS1_.exit

_ZltRK17comparable_structS1_.exit:                ; preds = %_ZneRK17comparable_structS1_.exit12, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be
  %i.fl = phi i1 [ true, %_ZneRK17comparable_structS1_.exit12 ], [ false, %bb.ar ], [ true, %bb.as ], [ false, %bb.at ], [ %i.fk, %bb.be ], [ false, %bb.bd ], [ true, %bb.au ], [ false, %bb.av ], [ true, %bb.aw ], [ false, %bb.ax ], [ true, %bb.ay ], [ false, %bb.az ], [ true, %bb.ba ], [ false, %bb.bb ], [ true, %bb.bc ]
  %i.fm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structI17comparable_structEvv, i1 noundef zeroext %i.fl) ; 0 uses
  %i.fn = load i32, ptr %5, align 4, !tbaa !12    ; 2 uses
  %i.fo = icmp slt i32 %i.fn, 0
  br i1 %i.fo, label %_ZgtRK17comparable_structS1_.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZltRK17comparable_structS1_.exit
  %i.fp = icmp eq i32 %i.fn, 0
  br i1 %i.fp, label %bb.bg, label %_ZgtRK17comparable_structS1_.exit

bb.bg:                                            ; preds = %bb.bf
  %i.fq = load i16, ptr %i.l, align 4, !tbaa !14  ; 2 uses
  %i.fr = icmp slt i16 %i.fq, 1
  br i1 %i.fr, label %_ZgtRK17comparable_structS1_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fs = icmp eq i16 %i.fq, 1
  %i.ft = load i8, ptr %i.m, align 2, !range !17
  %i.fu = icmp eq i8 %i.ft, 0
  %or.cond94 = select i1 %i.fs, i1 %i.fu, i1 false
  br i1 %or.cond94, label %bb.bi, label %_ZgtRK17comparable_structS1_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.fv = load i32, ptr %i.n, align 4, !tbaa !12  ; 2 uses
  %i.fw = icmp slt i32 %i.fv, 6
  br i1 %i.fw, label %_ZgtRK17comparable_structS1_.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fx = icmp eq i32 %i.fv, 6
  br i1 %i.fx, label %bb.bk, label %_ZgtRK17comparable_structS1_.exit

bb.bk:                                            ; preds = %bb.bj
  %i.fy = load i32, ptr %i.o, align 4, !tbaa !12  ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 7
  br i1 %i.fz, label %_ZgtRK17comparable_structS1_.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ga = icmp eq i32 %i.fy, 7
  br i1 %i.ga, label %bb.bm, label %_ZgtRK17comparable_structS1_.exit

bb.bm:                                            ; preds = %bb.bl
  %i.gb = load i32, ptr %i.p, align 4, !tbaa !12  ; 2 uses
  %i.gc = icmp slt i32 %i.gb, 8
  br i1 %i.gc, label %_ZgtRK17comparable_structS1_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gd = icmp eq i32 %i.gb, 8
  br i1 %i.gd, label %bb.bo, label %_ZgtRK17comparable_structS1_.exit

bb.bo:                                            ; preds = %bb.bn
  %i.ge = load i32, ptr %i.q, align 4, !tbaa !12  ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 9
  br i1 %i.gf, label %_ZgtRK17comparable_structS1_.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gg = icmp eq i32 %i.ge, 9
  br i1 %i.gg, label %bb.bq, label %_ZgtRK17comparable_structS1_.exit

bb.bq:                                            ; preds = %bb.bp
  %i.gh = load i32, ptr %i.r, align 4, !tbaa !12  ; 2 uses
  %i.gi = icmp slt i32 %i.gh, 10
  br i1 %i.gi, label %_ZgtRK17comparable_structS1_.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gj = icmp eq i32 %i.gh, 10
  br i1 %i.gj, label %bb.bs, label %_ZgtRK17comparable_structS1_.exit

bb.bs:                                            ; preds = %bb.br
  %i.gk = load i32, ptr %i.s, align 4, !tbaa !12
  %i.gl = icmp slt i32 %i.gk, 11111
  br label %_ZgtRK17comparable_structS1_.exit

_ZgtRK17comparable_structS1_.exit:                ; preds = %_ZltRK17comparable_structS1_.exit, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs
  %i.gm = phi i1 [ true, %_ZltRK17comparable_structS1_.exit ], [ false, %bb.bf ], [ true, %bb.bg ], [ false, %bb.bh ], [ %i.gl, %bb.bs ], [ false, %bb.br ], [ true, %bb.bi ], [ false, %bb.bj ], [ true, %bb.bk ], [ false, %bb.bl ], [ true, %bb.bm ], [ false, %bb.bn ], [ true, %bb.bo ], [ false, %bb.bp ], [ true, %bb.bq ]
  %i.gn = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structI17comparable_structEvv, i1 noundef zeroext %i.gm) ; 0 uses
  %i.go = load i32, ptr %4, align 4, !tbaa !12    ; 2 uses
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %_ZleRK17comparable_structS1_.exit13, label %bb.bt

bb.bt:                                            ; preds = %_ZgtRK17comparable_structS1_.exit
  %i.gq = icmp eq i32 %i.go, 0
  br i1 %i.gq, label %bb.bu, label %_ZleRK17comparable_structS1_.exit13

bb.bu:                                            ; preds = %bb.bt
  %i.gr = load i16, ptr %i.d, align 4, !tbaa !14  ; 2 uses
  %i.gs = icmp slt i16 %i.gr, 1
  br i1 %i.gs, label %_ZleRK17comparable_structS1_.exit13, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gt = icmp eq i16 %i.gr, 1
  %i.gu = load i8, ptr %i.e, align 2, !range !17
  %i.gv = icmp eq i8 %i.gu, 0
  %or.cond96 = select i1 %i.gt, i1 %i.gv, i1 false
  br i1 %or.cond96, label %bb.bw, label %_ZleRK17comparable_structS1_.exit13

bb.bw:                                            ; preds = %bb.bv
  %i.gw = load i32, ptr %i.f, align 4, !tbaa !12  ; 2 uses
  %i.gx = icmp slt i32 %i.gw, 6
  br i1 %i.gx, label %_ZleRK17comparable_structS1_.exit13, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gy = icmp eq i32 %i.gw, 6
  br i1 %i.gy, label %bb.by, label %_ZleRK17comparable_structS1_.exit13

bb.by:                                            ; preds = %bb.bx
  %i.gz = load i32, ptr %i.g, align 4, !tbaa !12  ; 2 uses
  %i.ha = icmp slt i32 %i.gz, 7
  br i1 %i.ha, label %_ZleRK17comparable_structS1_.exit13, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hb = icmp eq i32 %i.gz, 7
  br i1 %i.hb, label %bb.ca, label %_ZleRK17comparable_structS1_.exit13

bb.ca:                                            ; preds = %bb.bz
  %i.hc = load i32, ptr %i.h, align 4, !tbaa !12  ; 2 uses
  %i.hd = icmp slt i32 %i.hc, 8
  br i1 %i.hd, label %_ZleRK17comparable_structS1_.exit13, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
end_hunk_0
begin_hunk_1_@main:bb.a
bb.j:                                             ; preds = %bb.i
  %i.am = icmp eq i32 %i.aj, %i.ak
  br i1 %i.am, label %bb.k, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.an = load i32, ptr %i.k, align 4, !tbaa !12  ; 2 uses
  %i.ao = load i32, ptr %i.s, align 4, !tbaa !12  ; 2 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp eq i32 %i.an, %i.ao
  br i1 %i.aq, label %bb.m, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.l, align 4, !tbaa !12  ; 2 uses
  %i.as = load i32, ptr %i.t, align 4, !tbaa !12  ; 2 uses
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = icmp eq i32 %i.ar, %i.as
  br i1 %i.au, label %bb.o, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.av = load i32, ptr %i.m, align 4, !tbaa !12  ; 2 uses
  %i.aw = load i32, ptr %i.u, align 4, !tbaa !12  ; 2 uses
  %i.ax = icmp slt i32 %i.av, %i.aw
  br i1 %i.ax, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp eq i32 %i.av, %i.aw
  br i1 %i.ay, label %bb.q, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.az = load i32, ptr %i.n, align 4, !tbaa !12  ; 2 uses
  %i.ba = load i32, ptr %i.v, align 4, !tbaa !12  ; 2 uses
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = icmp eq i32 %i.az, %i.ba
  br i1 %i.bc, label %bb.s, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.bd = load i32, ptr %i.o, align 4, !tbaa !12
  %i.be = load i32, ptr %i.w, align 4, !tbaa !12
  %i.bf = icmp sle i32 %i.bd, %i.be
  br label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i

_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %_Z17test_empty_structv.exit
  %i.bg = phi i1 [ true, %_Z17test_empty_structv.exit ], [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.f ], [ true, %bb.g ], [ false, %bb.h ], [ true, %bb.i ], [ false, %bb.j ], [ true, %bb.k ], [ false, %bb.l ], [ true, %bb.m ], [ false, %bb.n ], [ true, %bb.o ], [ false, %bb.p ], [ true, %bb.q ], [ false, %bb.r ], [ %i.bf, %bb.s ]
  %i.bh = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 40, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structIN12_GLOBAL__N_127anonymous_comparable_structEEvv, i1 noundef zeroext %i.bg) ; 0 uses
  %i.bi = load i32, ptr %1, align 4, !tbaa !12    ; 2 uses
  %i.bj = load i32, ptr %2, align 4, !tbaa !12    ; 2 uses
  %i.bk = icmp sgt i32 %i.bi, %i.bj
  br i1 %i.bk, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i
  %i.bl = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bl, label %bb.u, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.bm = load i16, ptr %i.h, align 4, !tbaa !14  ; 2 uses
  %i.bn = load i16, ptr %i.p, align 4, !tbaa !14  ; 2 uses
  %i.bo = icmp sgt i16 %i.bm, %i.bn
  br i1 %i.bo, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = icmp eq i16 %i.bm, %i.bn
  br i1 %i.bp, label %bb.w, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.bq = load i8, ptr %i.i, align 2, !tbaa !16, !range !17, !noundef !18 ; 2 uses
  %i.br = load i8, ptr %i.q, align 2, !tbaa !16, !range !17, !noundef !18 ; 2 uses
  %i.bs = icmp samesign ugt i8 %i.bq, %i.br
  br i1 %i.bs, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = icmp eq i8 %i.bq, %i.br
  br i1 %i.bt, label %bb.y, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.bu = load i32, ptr %i.j, align 4, !tbaa !12  ; 2 uses
  %i.bv = load i32, ptr %i.r, align 4, !tbaa !12  ; 2 uses
  %i.bw = icmp sgt i32 %i.bu, %i.bv
  br i1 %i.bw, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bx, label %bb.aa, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.by = load i32, ptr %i.k, align 4, !tbaa !12  ; 2 uses
  %i.bz = load i32, ptr %i.s, align 4, !tbaa !12  ; 2 uses
  %i.ca = icmp sgt i32 %i.by, %i.bz
  br i1 %i.ca, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = icmp eq i32 %i.by, %i.bz
  br i1 %i.cb, label %bb.ac, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load i32, ptr %i.l, align 4, !tbaa !12  ; 2 uses
  %i.cd = load i32, ptr %i.t, align 4, !tbaa !12  ; 2 uses
  %i.ce = icmp sgt i32 %i.cc, %i.cd
  br i1 %i.ce, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = icmp eq i32 %i.cc, %i.cd
  br i1 %i.cf, label %bb.ae, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cg = load i32, ptr %i.m, align 4, !tbaa !12  ; 2 uses
  %i.ch = load i32, ptr %i.u, align 4, !tbaa !12  ; 2 uses
  %i.ci = icmp sgt i32 %i.cg, %i.ch
  br i1 %i.ci, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = icmp eq i32 %i.cg, %i.ch
  br i1 %i.cj, label %bb.ag, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ck = load i32, ptr %i.n, align 4, !tbaa !12  ; 2 uses
  %i.cl = load i32, ptr %i.v, align 4, !tbaa !12  ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, %i.cl
  br i1 %i.cm, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cn, label %bb.ai, label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.co = load i32, ptr %i.o, align 4, !tbaa !12
  %i.cp = load i32, ptr %i.w, align 4, !tbaa !12
  %i.cq = icmp sge i32 %i.co, %i.cp
  br label %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i

_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i
  %i.cr = phi i1 [ true, %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit.i.i ], [ false, %bb.t ], [ true, %bb.u ], [ false, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ false, %bb.z ], [ true, %bb.aa ], [ false, %bb.ab ], [ true, %bb.ac ], [ false, %bb.ad ], [ true, %bb.ae ], [ false, %bb.af ], [ true, %bb.ag ], [ false, %bb.ah ], [ %i.cq, %bb.ai ]
  %i.cs = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 41, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structIN12_GLOBAL__N_127anonymous_comparable_structEEvv, i1 noundef zeroext %i.cr) ; 0 uses
  %i.ct = load i32, ptr %1, align 4, !tbaa !12
  %i.cu = load i32, ptr %2, align 4, !tbaa !12
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ct, %i.cu
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.aj:                                            ; preds = %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i
  %i.cv = load i16, ptr %i.h, align 4, !tbaa !14
  %i.cw = load i16, ptr %i.p, align 4, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.cv, %i.cw
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.cx = load i8, ptr %i.i, align 2, !tbaa !16, !range !17, !noundef !18
  %i.cy = load i8, ptr %i.q, align 2, !tbaa !16, !range !17, !noundef !18
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cx, %i.cy
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.al, label %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.cz = load i32, ptr %i.j, align 4, !tbaa !12
  %i.da = load i32, ptr %i.r, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cz, %i.da
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.am, label %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.db = load i32, ptr %i.k, align 4, !tbaa !12
  %i.dc = load i32, ptr %i.s, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.db, %i.dc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.an, label %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.dd = load i32, ptr %i.l, align 4, !tbaa !12
  %i.de = load i32, ptr %i.t, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dd, %i.de
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.df = load i32, ptr %i.m, align 4, !tbaa !12
  %i.dg = load i32, ptr %i.u, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.df, %i.dg
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.dh = load i32, ptr %i.n, align 4, !tbaa !12
  %i.di = load i32, ptr %i.v, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dh, %i.di
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.dj = load i32, ptr %i.o, align 4, !tbaa !12
  %i.dk = load i32, ptr %i.w, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dj, %i.dk
  br label %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i

_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i
  %i.dl = phi i1 [ false, %_ZN12_GLOBAL__N_1geERKNS_27anonymous_comparable_structES2_.exit.i.i ], [ false, %bb.aj ], [ false, %bb.ak ], [ false, %bb.al ], [ false, %bb.am ], [ false, %bb.an ], [ false, %bb.ao ], [ false, %bb.ap ], [ %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq ]
  %i.dm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 42, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structIN12_GLOBAL__N_127anonymous_comparable_structEEvv, i1 noundef zeroext %i.dl) ; 0 uses
  %i.dn = load i16, ptr %i.h, align 4
  %i.do = icmp eq i16 %i.dn, 1
  %i.dp = load i8, ptr %i.i, align 2, !range !17
  %i.dq = icmp eq i8 %i.dp, 0
  %i.dr = load <5 x i32>, ptr %1, align 4
  %i.ds = shufflevector <5 x i32> %i.dr, <5 x i32> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %.fr = freeze <4 x i32> %i.ds
  %i.dt = load i32, ptr %i.m, align 4
  %i.du = icmp eq i32 %i.dt, 9
  %i.dv = load i32, ptr %i.n, align 4
  %i.dw = icmp eq i32 %i.dv, 10
  %i.dx = icmp ne <4 x i32> %.fr, <i32 0, i32 6, i32 7, i32 8>
  %i.dy = bitcast <4 x i1> %i.dx to i4
  %i.dz = icmp eq i4 %i.dy, 0
  %op.rdx74 = select i1 %i.dz, i1 %i.do, i1 false
  %5 = select i1 %op.rdx74, i1 %i.dq, i1 false
  %op.rdx76 = select i1 %5, i1 %i.du, i1 false
  %op.rdx77 = select i1 %op.rdx76, i1 %i.dw, i1 false
  br i1 %op.rdx77, label %bb.ar, label %_ZN12_GLOBAL__N_1eqERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i
  %i.ea = load i32, ptr %i.o, align 4, !tbaa !12
  %i.eb = icmp ne i32 %i.ea, 11111
  br label %_ZN12_GLOBAL__N_1eqERKNS_27anonymous_comparable_structES2_.exit.i.i

_ZN12_GLOBAL__N_1eqERKNS_27anonymous_comparable_structES2_.exit.i.i: ; preds = %bb.ar, %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i
  %i.ec = phi i1 [ true, %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit.i.i ], [ %i.eb, %bb.ar ]
  %i.ed = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structIN12_GLOBAL__N_127anonymous_comparable_structEEvv, i1 noundef zeroext %i.ec) ; 0 uses
  %i.ee = load i16, ptr %i.h, align 4
  %.not.i.i.i.i.i4.i.i = icmp eq i16 %i.ee, 1
  %i.ef = load i8, ptr %i.i, align 2, !range !17
  %.not.i.i.i.i.i.i5.i.i = icmp eq i8 %i.ef, 0
  %i.eg = load <5 x i32>, ptr %1, align 4
  %i.eh = shufflevector <5 x i32> %i.eg, <5 x i32> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %.fr83 = freeze <4 x i32> %i.eh
  %i.ei = load i32, ptr %i.m, align 4
  %.not.i.i.i.i.i.i.i.i.i.i9.i.i = icmp eq i32 %i.ei, 9
  %i.ej = load i32, ptr %i.n, align 4
  %.not.i.i.i.i.i.i.i.i.i.i.i10.i.i = icmp eq i32 %i.ej, 10
  %i.ek = icmp ne <4 x i32> %.fr83, <i32 0, i32 6, i32 7, i32 8>
  %i.el = bitcast <4 x i1> %i.ek to i4
  %i.em = icmp eq i4 %i.el, 0
  %op.rdx = select i1 %i.em, i1 %.not.i.i.i.i.i4.i.i, i1 false
  %6 = select i1 %op.rdx, i1 %.not.i.i.i.i.i.i5.i.i, i1 false
  %op.rdx72 = select i1 %6, i1 %.not.i.i.i.i.i.i.i.i.i.i9.i.i, i1 false
  %op.rdx73 = select i1 %op.rdx72, i1 %.not.i.i.i.i.i.i.i.i.i.i.i10.i.i, i1 false
  br i1 %op.rdx73, label %bb.as, label %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit12.i.i

bb.as:                                            ; preds = %_ZN12_GLOBAL__N_1eqERKNS_27anonymous_comparable_structES2_.exit.i.i
  %i.en = load i32, ptr %i.o, align 4, !tbaa !12
  %.not.i.i.i.i.i.i.i.i.i.i.i.i11.i.i = icmp ne i32 %i.en, 11111
  br label %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit12.i.i

_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit12.i.i: ; preds = %bb.as, %_ZN12_GLOBAL__N_1eqERKNS_27anonymous_comparable_structES2_.exit.i.i
  %i.eo = phi i1 [ true, %_ZN12_GLOBAL__N_1eqERKNS_27anonymous_comparable_structES2_.exit.i.i ], [ %.not.i.i.i.i.i.i.i.i.i.i.i.i11.i.i, %bb.as ]
  %i.ep = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 44, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structIN12_GLOBAL__N_127anonymous_comparable_structEEvv, i1 noundef zeroext %i.eo) ; 0 uses
  %i.eq = load i32, ptr %1, align 4, !tbaa !12    ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit12.i.i
  %i.es = icmp eq i32 %i.eq, 0
  br i1 %i.es, label %bb.au, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.au:                                            ; preds = %bb.at
  %i.et = load i16, ptr %i.h, align 4, !tbaa !14  ; 2 uses
  %i.eu = icmp slt i16 %i.et, 1
  br i1 %i.eu, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ev = icmp eq i16 %i.et, 1
  %i.ew = load i8, ptr %i.i, align 2, !range !17
  %i.ex = icmp eq i8 %i.ew, 0
  %or.cond100.i.i = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %or.cond100.i.i, label %bb.aw, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.aw:                                            ; preds = %bb.av
  %i.ey = load i32, ptr %i.j, align 4, !tbaa !12  ; 2 uses
  %i.ez = icmp slt i32 %i.ey, 6
  br i1 %i.ez, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fa = icmp eq i32 %i.ey, 6
  br i1 %i.fa, label %bb.ay, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.fb = load i32, ptr %i.k, align 4, !tbaa !12  ; 2 uses
  %i.fc = icmp slt i32 %i.fb, 7
  br i1 %i.fc, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fd = icmp eq i32 %i.fb, 7
  br i1 %i.fd, label %bb.ba, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.fe = load i32, ptr %i.l, align 4, !tbaa !12  ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 8
  br i1 %i.ff, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fg = icmp eq i32 %i.fe, 8
  br i1 %i.fg, label %bb.bc, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.fh = load i32, ptr %i.m, align 4, !tbaa !12  ; 2 uses
  %i.fi = icmp slt i32 %i.fh, 9
  br i1 %i.fi, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fj = icmp eq i32 %i.fh, 9
  br i1 %i.fj, label %bb.be, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.be:                                            ; preds = %bb.bd
  %i.fk = load i32, ptr %i.n, align 4, !tbaa !12  ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 10
  br i1 %i.fl, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fm = icmp eq i32 %i.fk, 10
  br i1 %i.fm, label %bb.bg, label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.fn = load i32, ptr %i.o, align 4, !tbaa !12
  %i.fo = icmp slt i32 %i.fn, 11111
  br label %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i

_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit12.i.i
  %i.fp = phi i1 [ true, %_ZN12_GLOBAL__N_1neERKNS_27anonymous_comparable_structES2_.exit12.i.i ], [ false, %bb.at ], [ true, %bb.au ], [ false, %bb.av ], [ %i.fo, %bb.bg ], [ false, %bb.bf ], [ true, %bb.aw ], [ false, %bb.ax ], [ true, %bb.ay ], [ false, %bb.az ], [ true, %bb.ba ], [ false, %bb.bb ], [ true, %bb.bc ], [ false, %bb.bd ], [ true, %bb.be ]
  %i.fq = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structIN12_GLOBAL__N_127anonymous_comparable_structEEvv, i1 noundef zeroext %i.fp) ; 0 uses
  %i.fr = load i32, ptr %2, align 4, !tbaa !12    ; 2 uses
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i
  %i.ft = icmp eq i32 %i.fr, 0
  br i1 %i.ft, label %bb.bi, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.fu = load i16, ptr %i.p, align 4, !tbaa !14  ; 2 uses
  %i.fv = icmp slt i16 %i.fu, 1
  br i1 %i.fv, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fw = icmp eq i16 %i.fu, 1
  %i.fx = load i8, ptr %i.q, align 2, !range !17
  %i.fy = icmp eq i8 %i.fx, 0
  %or.cond102.i.i = select i1 %i.fw, i1 %i.fy, i1 false
  br i1 %or.cond102.i.i, label %bb.bk, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.fz = load i32, ptr %i.r, align 4, !tbaa !12  ; 2 uses
  %i.ga = icmp slt i32 %i.fz, 6
  br i1 %i.ga, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gb = icmp eq i32 %i.fz, 6
  br i1 %i.gb, label %bb.bm, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.gc = load i32, ptr %i.s, align 4, !tbaa !12  ; 2 uses
  %i.gd = icmp slt i32 %i.gc, 7
  br i1 %i.gd, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ge = icmp eq i32 %i.gc, 7
  br i1 %i.ge, label %bb.bo, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.gf = load i32, ptr %i.t, align 4, !tbaa !12  ; 2 uses
  %i.gg = icmp slt i32 %i.gf, 8
  br i1 %i.gg, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gh = icmp eq i32 %i.gf, 8
  br i1 %i.gh, label %bb.bq, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.gi = load i32, ptr %i.u, align 4, !tbaa !12  ; 2 uses
  %i.gj = icmp slt i32 %i.gi, 9
  br i1 %i.gj, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gk = icmp eq i32 %i.gi, 9
  br i1 %i.gk, label %bb.bs, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.bs:                                            ; preds = %bb.br
  %i.gl = load i32, ptr %i.v, align 4, !tbaa !12  ; 2 uses
  %i.gm = icmp slt i32 %i.gl, 10
  br i1 %i.gm, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gn = icmp eq i32 %i.gl, 10
  br i1 %i.gn, label %bb.bu, label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.go = load i32, ptr %i.w, align 4, !tbaa !12
  %i.gp = icmp slt i32 %i.go, 11111
  br label %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i

_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i: ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i
  %i.gq = phi i1 [ true, %_ZN12_GLOBAL__N_1ltERKNS_27anonymous_comparable_structES2_.exit.i.i ], [ false, %bb.bh ], [ true, %bb.bi ], [ false, %bb.bj ], [ %i.gp, %bb.bu ], [ false, %bb.bt ], [ true, %bb.bk ], [ false, %bb.bl ], [ true, %bb.bm ], [ false, %bb.bn ], [ true, %bb.bo ], [ false, %bb.bp ], [ true, %bb.bq ], [ false, %bb.br ], [ true, %bb.bs ]
  %i.gr = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_some_comparable_structIN12_GLOBAL__N_127anonymous_comparable_structEEvv, i1 noundef zeroext %i.gq) ; 0 uses
  %i.gs = load i32, ptr %1, align 4, !tbaa !12    ; 2 uses
  %i.gt = icmp slt i32 %i.gs, 0
  br i1 %i.gt, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit13.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZN12_GLOBAL__N_1gtERKNS_27anonymous_comparable_structES2_.exit.i.i
  %i.gu = icmp eq i32 %i.gs, 0
  br i1 %i.gu, label %bb.bw, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit13.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.gv = load i16, ptr %i.h, align 4, !tbaa !14  ; 2 uses
  %i.gw = icmp slt i16 %i.gv, 1
  br i1 %i.gw, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit13.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gx = icmp eq i16 %i.gv, 1
  %i.gy = load i8, ptr %i.i, align 2, !range !17
  %i.gz = icmp eq i8 %i.gy, 0
  %or.cond104.i.i = select i1 %i.gx, i1 %i.gz, i1 false
  br i1 %or.cond104.i.i, label %bb.by, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit13.i.i

bb.by:                                            ; preds = %bb.bx
  %i.ha = load i32, ptr %i.j, align 4, !tbaa !12  ; 2 uses
  %i.hb = icmp slt i32 %i.ha, 6
  br i1 %i.hb, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit13.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hc = icmp eq i32 %i.ha, 6
  br i1 %i.hc, label %bb.ca, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit13.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.hd = load i32, ptr %i.k, align 4, !tbaa !12  ; 2 uses
  %i.he = icmp slt i32 %i.hd, 7
  br i1 %i.he, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit13.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hf = icmp eq i32 %i.hd, 7
  br i1 %i.hf, label %bb.cc, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit13.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.hg = load i32, ptr %i.l, align 4, !tbaa !12  ; 2 uses
  %i.hh = icmp slt i32 %i.hg, 8
  br i1 %i.hh, label %_ZN12_GLOBAL__N_1leERKNS_27anonymous_comparable_structES2_.exit13.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
end_hunk_1
