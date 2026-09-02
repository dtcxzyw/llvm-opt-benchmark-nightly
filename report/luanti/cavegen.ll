Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/cavegen?download=true
inline.NumInlined: 304
inline.NumDeleted: 78
begin_hunk_0_@_ZN15CavesRandomWalk8makeCaveEP8MMVManipN4core8vector3dIsEES4_P12PseudoRandombiPs:bb.a
  %.not52 = icmp eq i16 %i.at, 127
  br i1 %.not52, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.w, align 1, !tbaa !138
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 160
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !217
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.as to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = lshr exact i64 %i.ay, 1
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add i32 %i.ba, -1
  %i.bc = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 0, i32 noundef %i.bb)
  %i.bd = sext i32 %i.bc to i64
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !216
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !30 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i16 %i.bg, ptr %i.bh, align 4, !tbaa !139
  %i.bi = icmp eq i16 %i.bg, 126
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.u, align 2, !tbaa !137
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b, %bb.a
  %i.bj = load i32, ptr %4, align 4, !tbaa !136
  %i.bk = mul i32 %i.bj, 1103515245
  %i.bl = add i32 %i.bk, 12345                    ; 2 uses
  %i.bm = sdiv i32 %i.bl, 65536
  %i.bn = trunc nsw i32 %i.bm to i16
  %.lhs.trunc.i68 = and i16 %i.bn, 32767
  %i.bo = urem i16 %.lhs.trunc.i68, 14
  %narrow179 = add nuw nsw i16 %i.bo, 1
  %i.bp = load i8, ptr %i.f, align 4, !tbaa !133, !range !99, !noundef !100
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = mul i32 %i.bl, 1103515245
  %i.bs = add i32 %i.br, 12345                    ; 3 uses
  %i.bt = sdiv i32 %i.bs, 65536                   ; 2 uses
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bu = trunc nsw i32 %i.bt to i16
  %.lhs.trunc.i70 = and i16 %i.bu, 32767
  %i.bv = urem i16 %.lhs.trunc.i70, 3
  %narrow181 = add nuw nsw i16 %i.bv, 2
  %i.bw = zext nneg i16 %narrow181 to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !140
  %i.by = mul i32 %i.bs, 1103515245
  %i.bz = add i32 %i.by, 12345                    ; 2 uses
  store i32 %i.bz, ptr %4, align 4, !tbaa !136
  %i.ca = sdiv i32 %i.bz, 65536
  %.zext.i73 = and i32 %i.ca, 15
  %i.cb = add nuw nsw i32 %.zext.i73, 15
  %i.cc = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 5, i32 noundef %i.cb)
  %i.cd = trunc i32 %i.cc to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 70
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !218
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i16 5, ptr %i.cf, align 2, !tbaa !141
  %i.cg = load i32, ptr %4, align 4, !tbaa !136
  %i.ch = mul i32 %i.cg, 1103515245
  %i.ci = add i32 %i.ch, 12345                    ; 2 uses
  store i32 %i.ci, ptr %4, align 4, !tbaa !136
  %i.cj = sdiv i32 %i.ci, 65536
  %i.ck = trunc nsw i32 %i.cj to i16
  %.lhs.trunc.i74 = and i16 %i.ck, 32767
  %i.cl = urem i16 %.lhs.trunc.i74, 17
  %narrow182 = add nuw nsw i16 %i.cl, 8
  %i.cm = zext nneg i16 %narrow182 to i32
  %i.cn = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 7, i32 noundef %i.cm)
  %i.co = trunc i32 %i.cn to i16
  %.pre = load i32, ptr %4, align 4, !tbaa !136
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.zext.i77 = and i32 %i.bt, 7
  %i.cp = add nuw nsw i32 %.zext.i77, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !140
  %i.cr = mul i32 %i.bs, 1103515245
  %i.cs = add i32 %i.cr, 12345                    ; 2 uses
  store i32 %i.cs, ptr %4, align 4, !tbaa !136
  %i.ct = sdiv i32 %i.cs, 65536
  %.zext.i79 = and i32 %i.ct, 15
  %i.cu = add nuw nsw i32 %.zext.i79, 15
  %i.cv = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 10, i32 noundef %i.cu)
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 70
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !218
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i16 2, ptr %i.cy, align 2, !tbaa !141
  %i.cz = load i32, ptr %4, align 4, !tbaa !136
  %i.da = mul i32 %i.cz, 1103515245
  %i.db = add i32 %i.da, 12345                    ; 2 uses
  %i.dc = sdiv i32 %i.db, 65536
  %i.dd = trunc nsw i32 %i.dc to i16
  %.lhs.trunc.i80 = and i16 %i.dd, 32767
  %i.de = urem i16 %.lhs.trunc.i80, 5
  %narrow180 = add nuw nsw i16 %i.de, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.df = phi i32 [ %.pre, %bb.g ], [ %i.db, %bb.h ]
  %narrow180.sink = phi i16 [ %i.co, %bb.g ], [ %narrow180, %bb.h ] ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i16 %narrow180.sink, ptr %i.dg, align 4, !tbaa !142
  %i.dh = mul i32 %i.df, 1103515245
  %i.di = add i32 %i.dh, 12345                    ; 2 uses
  store i32 %i.di, ptr %4, align 4, !tbaa !136
  %i.dj = sdiv i32 %i.di, 65536
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.dl = trunc i32 %i.dj to i8
  %i.dm = and i8 %i.dl, 1
  %i.dn = xor i8 %i.dm, 1
  store i8 %i.dn, ptr %i.dk, align 1, !tbaa !143
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <2 x float> zeroinitializer, ptr %i.do, align 8, !tbaa !63
  %.sroa.5164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store float 0.000000e+00, ptr %.sroa.5164.0..sroa_idx, align 8, !tbaa !63
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !144
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ds = load i16, ptr %i.dr, align 4, !tbaa !144
  %i.dt = load i16, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !145
  %i.du = load <2 x i16>, ptr %i.d, align 2, !tbaa !30
  %i.dv = load i16, ptr %.sroa.3.0..sroa_idx46, align 2, !tbaa !145
  %i.dw = load <2 x i16>, ptr %i.c, align 8, !tbaa !30
  %i.dx = add <2 x i16> %i.du, splat (i16 1)
  %i.dy = sub <2 x i16> %i.dx, %i.dw
  %i.dz = add i16 %i.dq, 1
  %i.ea = sub i16 %i.dz, %i.ds
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 110 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ec, ptr noundef nonnull align 8 dereferenceable(6) %i.c, i64 6, i1 false), !tbaa.struct !146
  %i.ed = icmp slt i16 %narrow180.sink, 26
  br i1 %i.ed, label %bb.j, label %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit

bb.j:                                             ; preds = %bb.i
  %.neg = sdiv i16 %narrow180.sink, -2
  %narrow = add nsw i16 %.neg, 14
  br label %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.i, %bb.j
  %i.ee = phi i16 [ %narrow, %bb.j ], [ 1, %bb.i ] ; 4 uses
  %i.ef = shl nuw i16 %i.ee, 1                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.eh = insertelement <2 x i16> poison, i16 %i.ef, i64 0
  %i.ei = shufflevector <2 x i16> %i.eh, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.ej = add <2 x i16> %i.dy, %i.ei              ; 2 uses
  store <2 x i16> %i.ej, ptr %i.eb, align 2, !tbaa !30
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 2 uses
  %i.el = add i16 %i.ea, %i.ef                    ; 2 uses
  store i16 %i.el, ptr %i.ek, align 2, !tbaa !144
  %i.em = load i16, ptr %i.ec, align 8, !tbaa !147
  %i.en = sub i16 %i.em, %i.ee
  store i16 %i.en, ptr %i.ec, align 8, !tbaa !147
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 4 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !145
  %i.eq = sub i16 %i.ep, %i.ee                    ; 4 uses
  store i16 %i.eq, ptr %i.eo, align 2, !tbaa !145
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.es = load i16, ptr %i.er, align 4, !tbaa !144
  %i.et = sub i16 %i.es, %i.ee
  store i16 %i.et, ptr %i.er, align 4, !tbaa !144
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  store i16 0, ptr %i.eu, align 4, !tbaa !148
  %i.ev = sdiv i16 %narrow180.sink, 2
  %i.ew = trunc i32 %6 to i16
  %i.ex = add i16 %i.ew, 7
  %i.ey = add i16 %i.ex, %i.ev
  %i.ez = sub i16 %i.ey, %i.eq                    ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 134 ; 3 uses
  %i.fb = extractelement <2 x i16> %i.ej, i64 1
  %i.fc = zext i16 %i.fb to i32
  %i.fd = add nsw i32 %i.fc, -1                   ; 2 uses
  %i.fe = sext i16 %i.ez to i32
  %i.ff = icmp slt i16 %i.ez, 0
  %sext8.i = shl i32 %i.fd, 16
  %i.fg = ashr exact i32 %sext8.i, 16             ; 3 uses
  %i.fh = icmp slt i32 %i.fg, %i.fe
  %i.fi = trunc i32 %i.fd to i16                  ; 3 uses
  %spec.select.i = select i1 %i.fh, i16 %i.fi, i16 %i.ez
  %.0.i = select i1 %i.ff, i16 0, i16 %spec.select.i ; 2 uses
  store i16 %.0.i, ptr %i.fa, align 2, !tbaa !149
  %i.fj = load i8, ptr %i.f, align 4, !tbaa !133, !range !99, !noundef !100
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.k, label %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125.thread

_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125.thread: ; preds = %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit
  %i.fl = icmp slt i32 %i.fg, 0
  %spec.select.i123210 = select i1 %i.fl, i16 %i.fi, i16 0
  br label %bb.m

bb.k:                                             ; preds = %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit
  %i.fm = sext i16 %i.dv to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !124 ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, %i.fm
  %i.fq = sext i16 %i.dt to i32
  %i.fr = icmp slt i32 %i.fo, %i.fq
  %or.cond = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %or.cond, label %bb.l, label %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125

bb.l:                                             ; preds = %bb.k
  %i.fs = sdiv i16 %narrow180.sink, 3             ; 2 uses
  %8 = trunc nsw i32 %i.fo to i16                 ; 2 uses
  %9 = add i16 %i.eq, %i.fs
  %10 = sub i16 %8, %9
  %i.ft = sub i16 %i.fs, %i.eq
  %i.fu = add i16 %i.ft, %8
  store i16 %i.fu, ptr %i.fa, align 2, !tbaa !149
  %11 = sext i16 %10 to i32
  br label %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125

_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125:        ; preds = %bb.k, %bb.l
  %.048 = phi i32 [ %11, %bb.l ], [ 0, %bb.k ]    ; 2 uses
  %i.fv = sext i16 %narrow180.sink to i32
  %i.fw = add nsw i32 %.048, %i.fv
  %i.fx = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef %.048, i32 noundef %i.fw) ; 2 uses
  %i.fy = trunc i32 %i.fx to i16
  %sext183.mask = and i32 %i.fx, 32768
  %.not184 = icmp eq i32 %sext183.mask, 0
  %i.fz = load i16, ptr %i.fa, align 2
  %.fr = freeze i16 %i.fz                         ; 2 uses
  %..i = tail call i16 @llvm.smin.i16(i16 %i.fy, i16 %.fr)
  %.0.i120 = select i1 %.not184, i16 %..i, i16 0  ; 4 uses
  store i16 %.0.i120, ptr %i.eu, align 4, !tbaa !148
  %.pre194 = load i16, ptr %i.eg, align 8, !tbaa !219
  %.pre195.a = load i16, ptr %i.ek, align 2, !tbaa !150
  %.pre196207 = zext i16 %.pre194 to i32
  %.pre197.a = add nsw i32 %.pre196207, -1        ; 2 uses
  %.pre199 = shl i32 %.pre197.a, 16
  %.pre200.a = ashr exact i32 %.pre199, 16        ; 2 uses
  %.pre202 = trunc i32 %.pre197.a to i16          ; 2 uses
  %i.ga = sext i16 %.0.i120 to i32
  %i.gb = icmp slt i16 %.0.i120, 0
  %i.gc = icmp slt i32 %.pre200.a, %i.ga
  %spec.select.i123 = select i1 %i.gc, i16 %.pre202, i16 %.0.i120
  %spec.select = select i1 %i.gb, i16 0, i16 %spec.select.i123
  br label %bb.m

bb.m:                                             ; preds = %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125.thread
  %i.gd = phi i16 [ %.0.i, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125.thread ], [ %.fr, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125 ] ; 3 uses
  %i.ge = phi i16 [ %i.el, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125.thread ], [ %.pre195.a, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125 ]
  %.pre-phi201213 = phi i32 [ %i.fg, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125.thread ], [ %.pre200.a, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125 ]
  %.pre-phi203212 = phi i16 [ %i.fi, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125.thread ], [ %.pre202, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125 ]
  %i.gf = phi i16 [ %spec.select.i123210, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125.thread ], [ %spec.select, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit125 ] ; 3 uses
  %i.gg = icmp slt i16 %i.gd, %i.gf
  %i.gh = sext i16 %i.gd to i32
  %i.gi = icmp slt i32 %.pre-phi201213, %i.gh
  %spec.select.i127 = select i1 %i.gi, i16 %.pre-phi203212, i16 %i.gd
  %.0.i128 = select i1 %i.gg, i16 %i.gf, i16 %spec.select.i127
  %i.gj = load i32, ptr %4, align 4, !tbaa !136
  %i.gk = mul i32 %i.gj, 1103515245
  %i.gl = add i32 %i.gk, 12345                    ; 2 uses
  store i32 %i.gl, ptr %4, align 4, !tbaa !136
  %i.gm = sdiv i32 %i.gl, 65536
  %i.gn = and i32 %i.gm, 32767
  %i.go = sext i16 %i.ge to i32
  %i.gp = urem i32 %i.gn, %i.go
  %i.gq = uitofp nsz nneg i32 %i.gp to float
  %i.gr = fadd nsz float %i.gq, 5.000000e-01
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store float %i.gr, ptr %i.gt, align 4, !tbaa !151
  %i.gu = sext i16 %i.gf to i32
  %i.gv = sext i16 %.0.i128 to i32
  %i.gw = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef %i.gu, i32 noundef %i.gv)
  %i.gx = sitofp nsz i32 %i.gw to float
  %i.gy = fadd nsz float %i.gx, 5.000000e-01      ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store float %i.gy, ptr %i.gz, align 8, !tbaa !220
  %i.ha = load i32, ptr %4, align 4, !tbaa !136
  %i.hb = mul i32 %i.ha, 1103515245
  %i.hc = add i32 %i.hb, 12345                    ; 2 uses
  store i32 %i.hc, ptr %4, align 4, !tbaa !136
  %i.hd = sdiv i32 %i.hc, 65536
  %i.he = and i32 %i.hd, 32767
  %i.hf = load i16, ptr %i.eb, align 2, !tbaa !152
  %i.hg = sext i16 %i.hf to i32
  %i.hh = urem i32 %i.he, %i.hg
  %i.hi = uitofp nsz nneg i32 %i.hh to float
  %i.hj = fadd nsz float %i.hi, 5.000000e-01      ; 2 uses
  store float %i.hj, ptr %i.gs, align 4, !tbaa !153
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !122 ; 2 uses
  %.not53 = icmp eq ptr %i.hl, null
  br i1 %.not53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hm = load i16, ptr %i.ec, align 8, !tbaa !221
  %i.hn = sitofp i16 %i.hm to float
  %i.ho = fadd nsz float %i.hj, %i.hn
  %i.hp = fptosi float %i.ho to i16
  %i.hq = load float, ptr %i.gt, align 4, !tbaa !151
  %i.hr = load i8, ptr %i.f, align 4, !tbaa !133, !range !99, !noundef !100
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = select i1 %i.hs, i32 4, i32 2
  %i.hu = load <2 x i16>, ptr %i.eo, align 2, !tbaa !30
  %i.hv = sitofp <2 x i16> %i.hu to <2 x float>
  %i.hw = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hx = insertelement <2 x float> %i.hw, float %i.hq, i64 1
  %i.hy = fadd nsz <2 x float> %i.hx, %i.hv
  %i.hz = fptosi <2 x float> %i.hy to <2 x i16>
  %i.ia = zext <2 x i16> %i.hz to <2 x i48>
  %i.ib = shl nuw <2 x i48> %i.ia, <i48 16, i48 32>
  %.sroa.4130.0.insert.insert = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.ib)
  %.sroa.0129.0.insert.ext = zext i16 %i.hp to i48
  %.sroa.0129.0.insert.insert = or disjoint i48 %.sroa.4130.0.insert.insert, %.sroa.0129.0.insert.ext
  %i.ic = tail call noundef zeroext i1 @_ZN16GenerateNotifier8addEventE13GenNotifyTypeN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(104) %i.hl, i32 noundef %i.ht, i48 %.sroa.0129.0.insert.insert) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !218
  %.not193 = icmp eq i16 %i.ie, 0
  br i1 %.not193, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.o
  %i.if = load ptr, ptr %i.hk, align 8, !tbaa !122 ; 2 uses
  %.not54 = icmp eq ptr %i.if, null
  br i1 %.not54, label %bb.q, label %bb.p

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.0192 = phi i16 [ %i.ii, %.lr.ph ], [ 0, %bb.o ] ; 2 uses
  %i.ig = urem i16 %.0192, %narrow179
  %i.ih = icmp eq i16 %i.ig, 0
  tail call void @_ZN15CavesRandomWalk10makeTunnelEb(ptr noundef nonnull align 8 dereferenceable(150) %0, i1 noundef zeroext %i.ih)
  %i.ii = add nuw i16 %.0192, 1                   ; 2 uses
  %i.ij = load i16, ptr %i.id, align 2, !tbaa !218
  %i.ik = icmp ult i16 %i.ii, %i.ij
  br i1 %i.ik, label %.lr.ph, label %._crit_edge, !llvm.loop !215

bb.p:                                             ; preds = %._crit_edge
  %i.il = load i16, ptr %i.ec, align 8, !tbaa !221
  %i.im = sitofp i16 %i.il to float
  %i.in = load float, ptr %i.gs, align 4, !tbaa !153
  %i.io = fadd nsz float %i.in, %i.im
  %i.ip = fptosi float %i.io to i16
  %i.iq = load i8, ptr %i.f, align 4, !tbaa !133, !range !99, !noundef !100
  %i.ir = trunc nuw i8 %i.iq to i1
  %i.is = select i1 %i.ir, i32 5, i32 3
  %i.it = load <2 x i16>, ptr %i.eo, align 2, !tbaa !30
  %i.iu = sitofp <2 x i16> %i.it to <2 x float>
  %i.iv = load <2 x float>, ptr %i.gz, align 8, !tbaa !63
  %i.iw = fadd nsz <2 x float> %i.iv, %i.iu
  %i.ix = fptosi <2 x float> %i.iw to <2 x i16>
  %i.iy = zext <2 x i16> %i.ix to <2 x i48>
  %i.iz = shl nuw <2 x i48> %i.iy, <i48 16, i48 32>
  %.sroa.4.0.insert.insert = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.iz)
  %.sroa.0.0.insert.ext = zext i16 %i.ip to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  %i.ja = tail call noundef zeroext i1 @_ZN16GenerateNotifier8addEventE13GenNotifyTypeN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(104) %i.if, i32 noundef %i.is, i48 %.sroa.0.0.insert.insert) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 4 uses
  %i.a = icmp slt i32 %2, %1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN13PrngExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI13PrngException, ptr nonnull @_ZN13BaseExceptionD2Ev) #22
          to label %bb.m unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %3, align 8, !tbaa !113    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !114
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @__cxa_free_exception(ptr %i.b) #21
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.j = sub nsw i32 %2, %1                       ; 2 uses
  %i.k = icmp ugt i32 %i.j, 6553
  br i1 %i.k, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
end_hunk_0
begin_hunk_1_@_ZN7CavesV68makeCaveEP8MMVManipN4core8vector3dIsEES4_P12PseudoRandomS6_biPs:bb.a
  %.sroa.036.0.extract.trunc = trunc i48 %2 to i16 ; 2 uses
  %.sroa.3.0.extract.shift37 = lshr i48 %2, 16
  %.sroa.3.0.extract.trunc38 = trunc nuw i48 %.sroa.3.0.extract.shift37 to i32
  %.sroa.035.0.extract.trunc = trunc i48 %3 to i16 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i48 %3, 16
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i32
  %i.a = zext i1 %6 to i8
  store ptr %1, ptr %0, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.b, align 8, !tbaa !164
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.c, align 8, !tbaa !165
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 3 uses
  store i16 %.sroa.036.0.extract.trunc, ptr %i.d, align 2, !tbaa !30
  %.sroa.3.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %.sroa.3.0.extract.trunc38, ptr %.sroa.3.0..sroa_idx39, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i16 %.sroa.035.0.extract.trunc, ptr %i.e, align 4, !tbaa !30
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  store i32 %.sroa.3.0.extract.trunc, ptr %.sroa.3.0..sroa_idx, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %8, ptr %i.f, align 8, !tbaa !166
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  store i8 %i.a, ptr %i.g, align 4, !tbaa !167
  %reass.sub = sub i16 %.sroa.035.0.extract.trunc, %.sroa.036.0.extract.trunc
  %i.h = add i16 %reass.sub, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %i.h, ptr %i.i, align 8, !tbaa !168
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  store i16 2, ptr %i.j, align 2, !tbaa !169
  %i.k = load i32, ptr %4, align 4, !tbaa !136
  %i.l = mul i32 %i.k, 1103515245
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.n = add i32 %i.l, 12345                      ; 2 uses
  %i.o = mul i32 %i.n, 1103515245
  %i.p = add i32 %i.o, 12345                      ; 2 uses
  %i.q = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %i.p, i64 1
  %i.s = sdiv <2 x i32> %i.r, splat (i32 65536)
  %i.t = trunc nsw <2 x i32> %i.s to <2 x i16>
  %i.u = and <2 x i16> %i.t, splat (i16 32767)
  %i.v = urem <2 x i16> %i.u, <i16 5, i16 14>
  %i.w = add nuw nsw <2 x i16> %i.v, <i16 2, i16 1> ; 2 uses
  %i.x = extractelement <2 x i16> %i.w, i64 0
  store i16 %i.x, ptr %i.m, align 4, !tbaa !170
  %i.y = mul i32 %i.p, 1103515245
  %i.z = add i32 %i.y, 12345                      ; 3 uses
  %i.aa = sdiv i32 %i.z, 65536                    ; 2 uses
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = trunc nsw i32 %i.aa to i16
  %.lhs.trunc.i48 = and i16 %i.ab, 32767
  %i.ac = urem i16 %.lhs.trunc.i48, 3
  %narrow136 = add nuw nsw i16 %i.ac, 2
  %i.ad = zext nneg i16 %narrow136 to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !171
  %i.af = mul i32 %i.z, 1103515245
  %i.ag = add i32 %i.af, 12345                    ; 2 uses
  store i32 %i.ag, ptr %4, align 4, !tbaa !136
  %i.ah = sdiv i32 %i.ag, 65536
  %.zext.i51 = and i32 %i.ah, 15
  %i.ai = add nuw nsw i32 %.zext.i51, 15
  %i.aj = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 5, i32 noundef %i.ai)
  %i.ak = trunc i32 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 62
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !233
  store i16 5, ptr %i.j, align 2, !tbaa !169
  %i.am = load i32, ptr %4, align 4, !tbaa !136
  %i.an = mul i32 %i.am, 1103515245
  %i.ao = add i32 %i.an, 12345                    ; 2 uses
  store i32 %i.ao, ptr %4, align 4, !tbaa !136
  %i.ap = sdiv i32 %i.ao, 65536
  %i.aq = trunc nsw i32 %i.ap to i16
  %.lhs.trunc.i52 = and i16 %i.aq, 32767
  %i.ar = urem i16 %.lhs.trunc.i52, 17
  %narrow137 = add nuw nsw i16 %i.ar, 8
  %i.as = zext nneg i16 %narrow137 to i32
  %i.at = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 7, i32 noundef %i.as)
  %i.au = trunc i32 %i.at to i16                  ; 2 uses
  store i16 %i.au, ptr %i.m, align 4, !tbaa !170
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.zext.i55 = and i32 %i.aa, 7
  %i.av = add nuw nsw i32 %.zext.i55, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !171
  %i.ax = mul i32 %i.z, 1103515245
  %i.ay = add i32 %i.ax, 12345                    ; 2 uses
  store i32 %i.ay, ptr %4, align 4, !tbaa !136
  %i.az = sdiv i32 %i.ay, 65536
  %.zext.i57 = and i32 %i.az, 15
  %i.ba = add nuw nsw i32 %.zext.i57, 15
  %i.bb = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 10, i32 noundef %i.ba)
  %i.bc = trunc i32 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 62
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !233
  %.pre = load i16, ptr %i.m, align 4, !tbaa !170
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.be = phi i16 [ %.pre, %bb.c ], [ %i.au, %bb.b ] ; 5 uses
  %i.bf = load i32, ptr %4, align 4, !tbaa !136
  %i.bg = mul i32 %i.bf, 1103515245
  %i.bh = add i32 %i.bg, 12345                    ; 2 uses
  store i32 %i.bh, ptr %4, align 4, !tbaa !136
  %i.bi = sdiv i32 %i.bh, 65536
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.bk = trunc i32 %i.bi to i8
  %i.bl = and i8 %i.bk, 1
  %i.bm = xor i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !172
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x float> zeroinitializer, ptr %i.bn, align 8, !tbaa !63
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float 0.000000e+00, ptr %.sroa.5133.0..sroa_idx, align 8, !tbaa !63
  %i.bo = load i16, ptr %i.e, align 4, !tbaa !147
  %i.bp = load i16, ptr %i.d, align 2, !tbaa !147
  %i.bq = load i16, ptr %.sroa.3.0..sroa_idx, align 2, !tbaa !145 ; 2 uses
  %i.br = load i16, ptr %.sroa.3.0..sroa_idx39, align 8, !tbaa !145 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !144
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !144
  %i.bw = add i16 %i.bo, 1
  %i.bx = sub i16 %i.bw, %i.bp                    ; 2 uses
  %i.by = add i16 %i.bq, 1
  %i.bz = sub i16 %i.by, %i.br                    ; 2 uses
  %i.ca = add i16 %i.bt, 1
  %i.cb = sub i16 %i.ca, %i.bv                    ; 2 uses
  %.sroa.3.0.insert.ext.i60 = zext i16 %i.cb to i48
  %.sroa.3.0.insert.shift.i61 = shl nuw i48 %.sroa.3.0.insert.ext.i60, 32
  %.sroa.2.0.insert.ext.i62 = zext i16 %i.bz to i48
  %.sroa.2.0.insert.shift.i63 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i62, 16
  %.sroa.0.0.insert.ext.i65 = zext i16 %i.bx to i48
  %i.cc = or disjoint i48 %.sroa.3.0.insert.shift.i61, %.sroa.0.0.insert.ext.i65
  %.sroa.0.0.insert.insert.i66 = or disjoint i48 %i.cc, %.sroa.2.0.insert.shift.i63
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 102 ; 3 uses
  store i48 %.sroa.0.0.insert.insert.i66, ptr %i.cd, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ce, ptr noundef nonnull align 2 dereferenceable(6) %i.d, i64 6, i1 false), !tbaa.struct !146
  %i.cf = icmp slt i16 %i.be, 10
  br i1 %i.cf, label %bb.e, label %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit

bb.e:                                             ; preds = %bb.d
  %.neg = sdiv i16 %i.be, -2
  %narrow = add nsw i16 %.neg, 6
  br label %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit:           ; preds = %bb.d, %bb.e
  %i.cg = phi i16 [ %narrow, %bb.e ], [ 1, %bb.d ] ; 3 uses
  %i.ch = shl nuw i16 %i.cg, 1                    ; 2 uses
  %i.ci = add i16 %i.bx, %i.ch
  store i16 %i.ci, ptr %i.cd, align 2, !tbaa !147
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  %i.ck = add i16 %i.cb, %i.ch                    ; 2 uses
  store i16 %i.ck, ptr %i.cj, align 2, !tbaa !144
  %i.cl = load i16, ptr %i.ce, align 8, !tbaa !147
  %i.cm = sub i16 %i.cl, %i.cg
  store i16 %i.cm, ptr %i.ce, align 8, !tbaa !147
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 4, !tbaa !144
  %i.cp = sub i16 %i.co, %i.cg
  store i16 %i.cp, ptr %i.cn, align 4, !tbaa !144
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i16 0, ptr %i.cq, align 4, !tbaa !173
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 98 ; 3 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !234 ; 3 uses
  %i.ct = sdiv i16 %i.be, 2
  %i.cu = trunc i32 %7 to i16
  %i.cv = add i16 %i.cu, 7
  %i.cw = add i16 %i.cv, %i.ct
  %i.cx = sub i16 %i.cw, %i.cs                    ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.da = zext i16 %i.bz to i32
  %i.db = add nsw i32 %i.da, -1                   ; 2 uses
  %i.dc = sext i16 %i.cx to i32
  %i.dd = icmp slt i16 %i.cx, 0
  %sext8.i = shl i32 %i.db, 16
  %i.de = ashr exact i32 %sext8.i, 16             ; 3 uses
  %i.df = icmp slt i32 %i.de, %i.dc
  %i.dg = trunc i32 %i.db to i16                  ; 3 uses
  %spec.select.i = select i1 %i.df, i16 %i.dg, i16 %i.cx
  %.0.i = select i1 %i.dd, i16 0, i16 %spec.select.i ; 2 uses
  store i16 %.0.i, ptr %i.cy, align 2, !tbaa !174
  %i.dh = load i8, ptr %i.g, align 4, !tbaa !167, !range !99, !noundef !100
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.f, label %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94.thread

_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94.thread:  ; preds = %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit
  %i.dj = icmp slt i32 %i.de, 0
  %spec.select.i92165 = select i1 %i.dj, i16 %i.dg, i16 0
  br label %bb.h

bb.f:                                             ; preds = %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit
  %i.dk = sext i16 %i.br to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !160 ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, %i.dk
  %i.do = sext i16 %i.bq to i32
  %i.dp = icmp slt i32 %i.dm, %i.do
  %or.cond = select i1 %i.dn, i1 %i.dp, i1 false
  br i1 %or.cond, label %bb.g, label %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94

bb.g:                                             ; preds = %bb.f
  %i.dq = sdiv i16 %i.be, 3                       ; 2 uses
  %9 = trunc nsw i32 %i.dm to i16                 ; 2 uses
  %10 = add i16 %i.cs, %i.dq
  %11 = sub i16 %9, %10
  %i.dr = sub i16 %i.dq, %i.cs
  %i.ds = add i16 %i.dr, %9
  store i16 %i.ds, ptr %i.cy, align 2, !tbaa !174
  %12 = sext i16 %11 to i32
  br label %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94

_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94:         ; preds = %bb.f, %bb.g
  %.041 = phi i32 [ %12, %bb.g ], [ 0, %bb.f ]    ; 2 uses
  %i.dt = sext i16 %i.be to i32
  %i.du = add nsw i32 %.041, %i.dt
  %i.dv = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef %.041, i32 noundef %i.du) ; 2 uses
  %i.dw = trunc i32 %i.dv to i16
  %sext138.mask = and i32 %i.dv, 32768
  %.not139 = icmp eq i32 %sext138.mask, 0
  %i.dx = load i16, ptr %i.cy, align 2
  %.fr = freeze i16 %i.dx                         ; 2 uses
  %..i = tail call i16 @llvm.smin.i16(i16 %i.dw, i16 %.fr)
  %.0.i89 = select i1 %.not139, i16 %..i, i16 0   ; 4 uses
  store i16 %.0.i89, ptr %i.cq, align 4, !tbaa !173
  %.pre149 = load i16, ptr %i.cz, align 8, !tbaa !235
  %.pre150.a = load i16, ptr %i.cj, align 2, !tbaa !175
  %.pre151162 = zext i16 %.pre149 to i32
  %.pre152.a = add nsw i32 %.pre151162, -1        ; 2 uses
  %.pre154 = shl i32 %.pre152.a, 16
  %.pre155.a = ashr exact i32 %.pre154, 16        ; 2 uses
  %.pre157 = trunc i32 %.pre152.a to i16          ; 2 uses
  %i.dy = sext i16 %.0.i89 to i32
  %i.dz = icmp slt i16 %.0.i89, 0
  %i.ea = icmp slt i32 %.pre155.a, %i.dy
  %spec.select.i92 = select i1 %i.ea, i16 %.pre157, i16 %.0.i89
  %spec.select = select i1 %i.dz, i16 0, i16 %spec.select.i92
  br label %bb.h

bb.h:                                             ; preds = %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94.thread
  %i.eb = phi i16 [ %.0.i, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94.thread ], [ %.fr, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94 ] ; 3 uses
  %i.ec = phi i16 [ %i.ck, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94.thread ], [ %.pre150.a, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94 ]
  %.pre-phi156168 = phi i32 [ %i.de, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94.thread ], [ %.pre155.a, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94 ]
  %.pre-phi158167 = phi i16 [ %i.dg, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94.thread ], [ %.pre157, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94 ]
  %i.ed = phi i16 [ %spec.select.i92165, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94.thread ], [ %spec.select, %_Z8rangelimIsiiET_RKS0_RKT0_RKT1_.exit94 ] ; 3 uses
  %i.ee = icmp slt i16 %i.eb, %i.ed
  %i.ef = sext i16 %i.eb to i32
  %i.eg = icmp slt i32 %.pre-phi156168, %i.ef
  %spec.select.i96 = select i1 %i.eg, i16 %.pre-phi158167, i16 %i.eb
  %.0.i97 = select i1 %i.ee, i16 %i.ed, i16 %spec.select.i96
  %i.eh = load i32, ptr %4, align 4, !tbaa !136
  %i.ei = mul i32 %i.eh, 1103515245
  %i.ej = add i32 %i.ei, 12345                    ; 2 uses
  store i32 %i.ej, ptr %4, align 4, !tbaa !136
  %i.ek = sdiv i32 %i.ej, 65536
  %i.el = and i32 %i.ek, 32767
  %i.em = sext i16 %i.ec to i32
  %i.en = urem i32 %i.el, %i.em
  %i.eo = uitofp nsz nneg i32 %i.en to float
  %i.ep = fadd nsz float %i.eo, 5.000000e-01
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  store float %i.ep, ptr %i.er, align 4, !tbaa !176
  %i.es = sext i16 %i.ed to i32
  %i.et = sext i16 %.0.i97 to i32
  %i.eu = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef %i.es, i32 noundef %i.et)
  %i.ev = sitofp nsz i32 %i.eu to float
  %i.ew = fadd nsz float %i.ev, 5.000000e-01      ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store float %i.ew, ptr %i.ex, align 8, !tbaa !177
  %i.ey = load i32, ptr %4, align 4, !tbaa !136
  %i.ez = mul i32 %i.ey, 1103515245
  %i.fa = add i32 %i.ez, 12345                    ; 2 uses
  store i32 %i.fa, ptr %4, align 4, !tbaa !136
  %i.fb = sdiv i32 %i.fa, 65536
  %i.fc = and i32 %i.fb, 32767
  %i.fd = load i16, ptr %i.cd, align 2, !tbaa !178
  %i.fe = sext i16 %i.fd to i32
  %i.ff = urem i32 %i.fc, %i.fe
  %i.fg = uitofp nsz nneg i32 %i.ff to float
  %i.fh = fadd nsz float %i.fg, 5.000000e-01      ; 2 uses
  store float %i.fh, ptr %i.eq, align 4, !tbaa !236
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !159 ; 2 uses
  %.not = icmp eq ptr %i.fj, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fk = load i16, ptr %i.ce, align 8, !tbaa !237
  %i.fl = sitofp i16 %i.fk to float
  %i.fm = fadd nsz float %i.fh, %i.fl
  %i.fn = fptosi float %i.fm to i16
  %i.fo = load float, ptr %i.er, align 4, !tbaa !176
  %i.fp = load i8, ptr %i.g, align 4, !tbaa !167, !range !99, !noundef !100
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = select i1 %i.fq, i32 4, i32 2
  %i.fs = load <2 x i16>, ptr %i.cr, align 2, !tbaa !30
  %i.ft = sitofp <2 x i16> %i.fs to <2 x float>
  %i.fu = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fo, i64 1
  %i.fw = fadd nsz <2 x float> %i.fv, %i.ft
  %i.fx = fptosi <2 x float> %i.fw to <2 x i16>
  %i.fy = zext <2 x i16> %i.fx to <2 x i48>
  %i.fz = shl nuw <2 x i48> %i.fy, <i48 16, i48 32>
  %.sroa.499.0.insert.insert = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.fz)
  %.sroa.098.0.insert.ext = zext i16 %i.fn to i48
  %.sroa.098.0.insert.insert = or disjoint i48 %.sroa.499.0.insert.insert, %.sroa.098.0.insert.ext
  %i.ga = tail call noundef zeroext i1 @_ZN16GenerateNotifier8addEventE13GenNotifyTypeN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(104) %i.fj, i32 noundef %i.fr, i48 %.sroa.098.0.insert.insert) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !233
  %.not148 = icmp eq i16 %i.gc, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.gd = extractelement <2 x i16> %i.w, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  %i.ge = load ptr, ptr %i.fi, align 8, !tbaa !159 ; 2 uses
  %.not45 = icmp eq ptr %i.ge, null
  br i1 %.not45, label %bb.l, label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0147 = phi i16 [ %i.gh, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.gf = urem i16 %.0147, %i.gd
  %i.gg = icmp eq i16 %i.gf, 0
  tail call void @_ZN7CavesV610makeTunnelEb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %i.gg)
  %i.gh = add nuw i16 %.0147, 1                   ; 2 uses
  %i.gi = load i16, ptr %i.gb, align 2, !tbaa !233
  %i.gj = icmp ult i16 %i.gh, %i.gi
  br i1 %i.gj, label %.lr.ph, label %._crit_edge, !llvm.loop !232

bb.k:                                             ; preds = %._crit_edge
  %i.gk = load i16, ptr %i.ce, align 8, !tbaa !237
  %i.gl = sitofp i16 %i.gk to float
  %i.gm = load float, ptr %i.eq, align 4, !tbaa !236
  %i.gn = fadd nsz float %i.gm, %i.gl
  %i.go = fptosi float %i.gn to i16
  %i.gp = load i8, ptr %i.g, align 4, !tbaa !167, !range !99, !noundef !100
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = select i1 %i.gq, i32 5, i32 3
  %i.gs = load <2 x i16>, ptr %i.cr, align 2, !tbaa !30
  %i.gt = sitofp <2 x i16> %i.gs to <2 x float>
  %i.gu = load <2 x float>, ptr %i.ex, align 8, !tbaa !63
  %i.gv = fadd nsz <2 x float> %i.gu, %i.gt
  %i.gw = fptosi <2 x float> %i.gv to <2 x i16>
  %i.gx = zext <2 x i16> %i.gw to <2 x i48>
  %i.gy = shl nuw <2 x i48> %i.gx, <i48 16, i48 32>
  %.sroa.4.0.insert.insert = tail call i48 @llvm.vector.reduce.or.v2i48(<2 x i48> %i.gy)
  %.sroa.0.0.insert.ext = zext i16 %i.go to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  %i.gz = tail call noundef zeroext i1 @_ZN16GenerateNotifier8addEventE13GenNotifyTypeN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(104) %i.ge, i32 noundef %i.gr, i48 %.sroa.0.0.insert.insert) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7CavesV610makeTunnelEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) initializes((108, 110)) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = xor i1 %1, true
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4, !range !99
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !164 ; 3 uses
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %.pre, align 4, !tbaa !136
  %i.e = mul i32 %i.d, 1103515245
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = add i32 %i.e, 12345                      ; 2 uses
  %i.i = mul i32 %i.h, 1103515245
  %i.j = add i32 %i.i, 12345                      ; 2 uses
  %i.k = mul i32 %i.j, 1103515245
  %i.l = add i32 %i.k, 12345                      ; 2 uses
  %i.m = mul i32 %i.l, 1103515245
  %i.n = add i32 %i.m, 12345                      ; 2 uses
  %i.o = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.p = insertelement <2 x i32> %i.o, i32 %i.n, i64 1
  %i.q = sdiv <2 x i32> %i.p, splat (i32 65536)
  %i.r = trunc nsw <2 x i32> %i.q to <2 x i16>
  %i.s = and <2 x i16> %i.r, splat (i16 32767)
  %i.t = urem <2 x i16> %i.s, <i16 20, i16 11>    ; 2 uses
  %i.u = extractelement <2 x i16> %i.t, i64 0
  %.zext = zext nneg i16 %i.u to i32
  %i.v = add nsw i32 %.zext, -10
  %i.w = sitofp i32 %i.v to float
  %i.x = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.y = insertelement <2 x i32> %i.x, i32 %i.j, i64 1
  %i.z = sdiv <2 x i32> %i.y, splat (i32 65536)
  %i.aa = trunc nsw <2 x i32> %i.z to <2 x i16>
  %i.ab = and <2 x i16> %i.aa, splat (i16 32767)
  %i.ac = urem <2 x i16> %i.ab, splat (i16 20)
  %i.ad = trunc nuw nsw <2 x i16> %i.ac to <2 x i8>
  %i.ae = add nsw <2 x i8> %i.ad, splat (i8 -10)
  %i.af = sitofp <2 x i8> %i.ae to <2 x float>
  %i.ag = fdiv nnan nsz <2 x float> %i.af, <float 1.000000e+01, float 3.000000e+01>
  store i32 %i.n, ptr %.pre, align 4, !tbaa !136
  %i.ah = extractelement <2 x i16> %i.t, i64 1
  %i.ai = uitofp nneg i16 %i.ah to float
  %i.aj = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1
  %i.al = fdiv nsz <2 x float> %i.ak, splat (float 1.000000e+01) ; 3 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul nsz <2 x float> %i.ag, %i.am
  store <2 x float> %i.an, ptr %i.f, align 8, !tbaa !63
end_hunk_1
