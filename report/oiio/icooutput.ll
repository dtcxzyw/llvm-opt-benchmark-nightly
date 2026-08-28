Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/icooutput?download=true
inline.NumInlined: 2979
inline.NumDeleted: 772
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_19ICOOutput14write_scanlineEiiNS0_8TypeDescEPKvl:bb.a
bb.a:
  %6 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %i.a = alloca [4 x i8], align 4                 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %3, ptr %6, align 8
  %i.e = icmp eq i64 %5, -9223372036854775808
  br i1 %i.e, label %bb.b, label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %3, 8
  %i.g = lshr i64 %3, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = sext i32 %i.d to i64
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.j = and i64 %i.f, 255
  %i.k = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %6) #30
  %i.l = mul nuw nsw i64 %i.j, %spec.select.i.i
  %i.m = mul i64 %i.l, %i.i
  %i.n = mul i64 %i.m, %i.k
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit

_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit: ; preds = %bb.a, %bb.b
  %.084 = phi i64 [ %i.n, %bb.b ], [ %5, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.q = load i32, ptr %i.p, align 8, !tbaa !89
  %i.r = call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput18to_native_scanlineENS0_8TypeDescEPKvlRSt6vectorIhSaIhEEjii(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %3, ptr noundef %4, i64 noundef %.084, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i32 noundef %i.q, i32 noundef %1, i32 noundef %2) ; 4 uses
  %i.s = icmp eq ptr %i.r, %4
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit
  %i.t = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i1 noundef zeroext false) #30
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef %i.r, ptr noundef %i.u)
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit
  %.066 = phi ptr [ %i.v, %bb.c ], [ %i.r, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit ] ; 13 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.x = load i8, ptr %i.w, align 4, !tbaa !85, !range !82, !noundef !83
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aa = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17PNG_pvt9write_rowERP14png_struct_defPh(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %.066)
  br i1 %i.aa, label %bb.am, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.14)
  br label %bb.am

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !94
  %i.af = sext i32 %i.ae to i64
  %i.ag = add nsw i64 %i.af, 40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !71
  %i.aj = xor i32 %1, -1                          ; 2 uses
  %i.ak = add i32 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !103
  %i.an = mul nsw i32 %i.ak, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = add nsw i64 %i.ag, %i.ao
  %i.aq = call i32 @fseek(ptr noundef %i.ac, i64 noundef %i.ap, i32 noundef 0) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !84
  %.not86 = icmp sgt i32 %i.as, 0
  br i1 %.not86, label %.lr.ph, label %.critedge76

.lr.ph:                                           ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %bb.i

bb.h:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !84
  %i.ay = sext i32 %i.ax to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %.not, label %bb.i, label %.critedge76, !llvm.loop !155

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.06087 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.h ]
  %i.az = load i32, ptr %i.at, align 8, !tbaa !87
  switch i32 %i.az, label %bb.n [
    i32 0, label %bb.j
    i32 4, label %bb.k
    i32 2, label %bb.l
    i32 6, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.066, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16  ; 3 uses
  store i8 %i.bb, ptr %i.av, align 2, !tbaa !16
  store i8 %i.bb, ptr %i.au, align 1, !tbaa !16
  store i8 %i.bb, ptr %i.a, align 4, !tbaa !16
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bc = shl nuw nsw i64 %indvars.iv, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.066, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16  ; 3 uses
  store i8 %i.be, ptr %i.av, align 2, !tbaa !16
  store i8 %i.be, ptr %i.au, align 1, !tbaa !16
  store i8 %i.be, ptr %i.a, align 4, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  store i8 %i.bg, ptr %i.aw, align 1, !tbaa !16
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.bh = mul nuw nsw i64 %indvars.iv, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.066, i64 %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  store i8 %i.bk, ptr %i.a, align 4, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  store i8 %i.bm, ptr %i.au, align 1, !tbaa !16
  %i.bn = load i8, ptr %i.bi, align 1, !tbaa !16
  store i8 %i.bn, ptr %i.av, align 2, !tbaa !16
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.bo = shl nuw nsw i64 %indvars.iv, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %.066, i64 %i.bo
  %i.bq = load <4 x i8>, ptr %i.bp, align 1, !tbaa !16
  %i.br = shufflevector <4 x i8> %i.bq, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x i8> %i.br, ptr %i.a, align 4, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.1 = phi i64 [ %.06087, %bb.i ], [ 3, %bb.j ], [ 4, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ] ; 3 uses
  %i.bs = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.bt = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %.1, ptr noundef %i.bs)
  %.not.i = icmp eq i64 %i.bt, %.1
  br i1 %.not.i, label %bb.h, label %.loopexit

.critedge76:                                      ; preds = %bb.h, %bb.g
  %i.bu = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.bv = load i32, ptr %i.ad, align 8, !tbaa !94
  %i.bw = sext i32 %i.bv to i64
  %i.bx = add nsw i64 %i.bw, 40
  %i.by = load i32, ptr %i.ah, align 8, !tbaa !71 ; 2 uses
  %i.bz = load i32, ptr %i.al, align 4, !tbaa !103
  %i.ca = mul nsw i32 %i.bz, %i.by
  %i.cb = sext i32 %i.ca to i64
  %i.cc = add nsw i64 %i.bx, %i.cb
  %i.cd = add i32 %i.by, %i.aj
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !104
  %i.cg = mul nsw i32 %i.cf, %i.cd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add nsw i64 %i.cc, %i.ch
  %i.cj = call i32 @fseek(ptr noundef %i.bu, i64 noundef %i.ci, i32 noundef 0) ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !87
  switch i32 %i.cl, label %.preheader [
    i32 0, label %.critedge80
    i32 2, label %.critedge80
  ]

.preheader:                                       ; preds = %.critedge76
  %i.cm = load i32, ptr %i.ar, align 4, !tbaa !84 ; 2 uses
  %.not7391 = icmp sgt i32 %i.cm, 0
  br i1 %.not7391, label %.lr.ph93, label %.critedge80

bb.o:                                             ; preds = %.critedge
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 8 ; 2 uses
  %i.cn = load i32, ptr %i.ar, align 4, !tbaa !84 ; 2 uses
  %i.co = trunc nuw i64 %indvars.iv.next98 to i32
  %.not73 = icmp sgt i32 %i.cn, %i.co
  br i1 %.not73, label %.lr.ph93, label %.critedge80, !llvm.loop !156

.lr.ph93:                                         ; preds = %.preheader, %bb.o
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %bb.o ], [ 0, %.preheader ] ; 10 uses
  %i.cp = phi i32 [ %i.cn, %bb.o ], [ %i.cm, %.preheader ]
  %i.cq = sext i32 %i.cp to i64                   ; 8 uses
  %i.cr = icmp slt i64 %indvars.iv97, %i.cq
  br i1 %i.cr, label %bb.p, label %.critedge

.critedge.sink.split:                             ; preds = %bb.ak, %bb.al
  %.sink = phi i64 [ 1, %bb.al ], [ 2, %bb.ak ]
  %.sink113 = phi i64 [ 1, %bb.al ], [ 3, %bb.ak ]
  %i.cs = shl nsw i64 %i.fk, %.sink
  %i.ct = getelementptr inbounds nuw i8, ptr %.066, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sink113
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !16
  %.inv.7 = icmp sgt i8 %i.cv, -1
  %i.cw = zext i1 %.inv.7 to i8
  %i.cx = or i8 %i.fj, %i.cw
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.ak, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %.lr.ph93
  %.lcssa = phi i8 [ %i.ei, %bb.aa ], [ 0, %.lr.ph93 ], [ %i.dh, %bb.r ], [ %i.fj, %bb.aj ], [ %i.dq, %bb.u ], [ %i.er, %bb.ad ], [ %i.dz, %bb.x ], [ %i.fa, %bb.ag ], [ %i.fj, %bb.ak ], [ %i.cx, %.critedge.sink.split ]
  store i8 %.lcssa, ptr %i.a, align 4
  %i.cy = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.cz = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.cy)
  %.not.i81 = icmp eq i64 %i.cz, 1
  br i1 %.not.i81, label %bb.o, label %.loopexit

bb.p:                                             ; preds = %.lr.ph93
  %i.da = load i32, ptr %i.ck, align 8, !tbaa !87 ; 8 uses
  switch i32 %i.da, label %bb.r [
    i32 4, label %.sink.split
    i32 6, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.q
  %.sink121 = phi i64 [ 2, %bb.q ], [ 1, %bb.p ]
  %.sink119 = phi i64 [ 3, %bb.q ], [ 1, %bb.p ]
  %i.db = shl nsw i64 %indvars.iv97, %.sink121
  %i.dc = getelementptr inbounds nuw i8, ptr %.066, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sink119
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !16
  %i.df = and i8 %i.de, -128
  %i.dg = xor i8 %i.df, -128
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.p
  %i.dh = phi i8 [ 0, %bb.p ], [ %i.dg, %.sink.split ] ; 3 uses
  %i.di = or disjoint i64 %indvars.iv97, 1        ; 2 uses
  %i.dj = icmp slt i64 %i.di, %i.cq
  br i1 %i.dj, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  switch i32 %i.da, label %bb.u [
    i32 4, label %bb.t
    i32 6, label %.sink.split122
  ]

bb.t:                                             ; preds = %bb.s
  br label %.sink.split122

.sink.split122:                                   ; preds = %bb.s, %bb.t
  %.sink129 = phi i64 [ 1, %bb.t ], [ 2, %bb.s ]
  %.sink127 = phi i64 [ 1, %bb.t ], [ 3, %bb.s ]
  %i.dk = shl nsw i64 %i.di, %.sink129
  %i.dl = getelementptr inbounds nuw i8, ptr %.066, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sink127
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !16
  %.inv74.1 = icmp slt i8 %i.dn, 0
  %i.do = select i1 %.inv74.1, i8 0, i8 64
  %i.dp = or i8 %i.do, %i.dh
  br label %bb.u

bb.u:                                             ; preds = %.sink.split122, %bb.s
  %i.dq = phi i8 [ %i.dh, %bb.s ], [ %i.dp, %.sink.split122 ] ; 3 uses
  %i.dr = or disjoint i64 %indvars.iv97, 2        ; 2 uses
  %i.ds = icmp slt i64 %i.dr, %i.cq
  br i1 %i.ds, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  switch i32 %i.da, label %bb.x [
    i32 4, label %bb.w
    i32 6, label %.sink.split130
  ]

bb.w:                                             ; preds = %bb.v
  br label %.sink.split130

.sink.split130:                                   ; preds = %bb.v, %bb.w
  %.sink137 = phi i64 [ 1, %bb.w ], [ 2, %bb.v ]
  %.sink135 = phi i64 [ 1, %bb.w ], [ 3, %bb.v ]
  %i.dt = shl nsw i64 %i.dr, %.sink137
  %i.du = getelementptr inbounds nuw i8, ptr %.066, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sink135
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16
  %.inv74.2 = icmp slt i8 %i.dw, 0
  %i.dx = select i1 %.inv74.2, i8 0, i8 32
  %i.dy = or i8 %i.dx, %i.dq
  br label %bb.x

bb.x:                                             ; preds = %.sink.split130, %bb.v
  %i.dz = phi i8 [ %i.dq, %bb.v ], [ %i.dy, %.sink.split130 ] ; 3 uses
  %i.ea = or disjoint i64 %indvars.iv97, 3        ; 2 uses
  %i.eb = icmp slt i64 %i.ea, %i.cq
  br i1 %i.eb, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  switch i32 %i.da, label %bb.aa [
    i32 4, label %bb.z
    i32 6, label %.sink.split138
  ]

bb.z:                                             ; preds = %bb.y
  br label %.sink.split138

.sink.split138:                                   ; preds = %bb.y, %bb.z
  %.sink145 = phi i64 [ 1, %bb.z ], [ 2, %bb.y ]
  %.sink143 = phi i64 [ 1, %bb.z ], [ 3, %bb.y ]
  %i.ec = shl nsw i64 %i.ea, %.sink145
  %i.ed = getelementptr inbounds nuw i8, ptr %.066, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.sink143
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !16
  %.inv74.3 = icmp slt i8 %i.ef, 0
  %i.eg = select i1 %.inv74.3, i8 0, i8 16
  %i.eh = or i8 %i.eg, %i.dz
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split138, %bb.y
  %i.ei = phi i8 [ %i.dz, %bb.y ], [ %i.eh, %.sink.split138 ] ; 3 uses
  %i.ej = or disjoint i64 %indvars.iv97, 4        ; 2 uses
  %i.ek = icmp slt i64 %i.ej, %i.cq
  br i1 %i.ek, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  switch i32 %i.da, label %bb.ad [
    i32 4, label %bb.ac
    i32 6, label %.sink.split146
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %.sink.split146

.sink.split146:                                   ; preds = %bb.ab, %bb.ac
  %.sink153 = phi i64 [ 1, %bb.ac ], [ 2, %bb.ab ]
  %.sink151 = phi i64 [ 1, %bb.ac ], [ 3, %bb.ab ]
  %i.el = shl nsw i64 %i.ej, %.sink153
  %i.em = getelementptr inbounds nuw i8, ptr %.066, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sink151
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !16
  %.inv74.4 = icmp slt i8 %i.eo, 0
  %i.ep = select i1 %.inv74.4, i8 0, i8 8
  %i.eq = or i8 %i.ep, %i.ei
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split146, %bb.ab
  %i.er = phi i8 [ %i.ei, %bb.ab ], [ %i.eq, %.sink.split146 ] ; 3 uses
  %i.es = or disjoint i64 %indvars.iv97, 5        ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.cq
  br i1 %i.et, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  switch i32 %i.da, label %bb.ag [
    i32 4, label %bb.af
    i32 6, label %.sink.split154
  ]

bb.af:                                            ; preds = %bb.ae
  br label %.sink.split154

.sink.split154:                                   ; preds = %bb.ae, %bb.af
  %.sink161 = phi i64 [ 1, %bb.af ], [ 2, %bb.ae ]
  %.sink159 = phi i64 [ 1, %bb.af ], [ 3, %bb.ae ]
  %i.eu = shl nsw i64 %i.es, %.sink161
  %i.ev = getelementptr inbounds nuw i8, ptr %.066, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.sink159
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !16
  %.inv74.5 = icmp slt i8 %i.ex, 0
  %i.ey = select i1 %.inv74.5, i8 0, i8 4
  %i.ez = or i8 %i.ey, %i.er
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split154, %bb.ae
  %i.fa = phi i8 [ %i.er, %bb.ae ], [ %i.ez, %.sink.split154 ] ; 3 uses
  %i.fb = or disjoint i64 %indvars.iv97, 6        ; 2 uses
  %i.fc = icmp slt i64 %i.fb, %i.cq
  br i1 %i.fc, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  switch i32 %i.da, label %bb.aj [
    i32 4, label %bb.ai
    i32 6, label %.sink.split162
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %.sink.split162

.sink.split162:                                   ; preds = %bb.ah, %bb.ai
  %.sink169 = phi i64 [ 1, %bb.ai ], [ 2, %bb.ah ]
  %.sink167 = phi i64 [ 1, %bb.ai ], [ 3, %bb.ah ]
  %i.fd = shl nsw i64 %i.fb, %.sink169
  %i.fe = getelementptr inbounds nuw i8, ptr %.066, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sink167
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !16
  %.inv74.6 = icmp slt i8 %i.fg, 0
  %i.fh = select i1 %.inv74.6, i8 0, i8 2
  %i.fi = or i8 %i.fh, %i.fa
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split162, %bb.ah
  %i.fj = phi i8 [ %i.fa, %bb.ah ], [ %i.fi, %.sink.split162 ] ; 3 uses
  %i.fk = or disjoint i64 %indvars.iv97, 7        ; 2 uses
  %i.fl = icmp slt i64 %i.fk, %i.cq
  br i1 %i.fl, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.aj
  switch i32 %i.da, label %.critedge [
    i32 4, label %bb.al
    i32 6, label %.critedge.sink.split
  ]

bb.al:                                            ; preds = %bb.ak
  br label %.critedge.sink.split

.critedge80:                                      ; preds = %bb.o, %.preheader, %.critedge76, %.critedge76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.am

.loopexit:                                        ; preds = %bb.n, %.critedge
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull @.str.111)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.am

bb.am:                                            ; preds = %bb.e, %.critedge80, %.loopexit, %bb.f
  %.4 = phi i1 [ false, %.loopexit ], [ false, %bb.f ], [ true, %.critedge80 ], [ true, %bb.e ]
  ret i1 %.4
}

declare noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput18to_native_scanlineENS0_8TypeDescEPKvlRSt6vectorIhSaIhEEjii(ptr noundef nonnull align 8 dereferenceable(184), i64, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_17PNG_pvt9write_rowERP14png_struct_defPh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127
  %i.b = call ptr @png_set_longjmp_fn(ptr noundef %i.a, ptr noundef nonnull @longjmp, i64 noundef 200)
  %i.c = call i32 @_setjmp(ptr noundef %i.b) #34
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !127
  call void @png_write_row(ptr noundef %i.d, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19ICOOutput10write_tileEiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput25copy_tile_to_image_bufferEiiiNS0_8TypeDescEPKvlllPvS2_(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef nonnull %i.b, i64 256)
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput25copy_tile_to_image_bufferEiiiNS0_8TypeDescEPKvlllPvS2_(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK11OpenImageIO4v3_19ICOOutput11format_nameEv(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #3 align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %3, i32 noundef 0)
  ret i1 %i.d
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_imageENS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput14write_scanlineEiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10write_tileEiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_tilesEiiiiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_rectangleEiiiiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput20write_deep_scanlinesEiiiRKNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput16write_deep_tilesEiiiiiiRKNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput16write_deep_imageERKNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput13set_thumbnailERKNS0_8ImageBufE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 %1) unnamed_addr #3 align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_rectangleEiiiiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_imageENS0_8TypeDescEPKvlllPFbPvfES5_(ptr noundef nonnull align 8 dereferenceable(184), i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10copy_imageEPNS0_10ImageInputE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN11OpenImageIO4v3_111ImageOutput14send_to_outputEPKcz(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, ...) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11set_ioproxyEPNS0_10Filesystem7IOProxyE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

declare noundef i64 @_ZNK11OpenImageIO4v3_111ImageOutput8heapsizeEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

declare noundef i64 @_ZNK11OpenImageIO4v3_111ImageOutput9footprintEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #10 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !9
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !121
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !64
  %i.g = load i64, ptr %i.a, align 8, !tbaa !121
  store i64 %i.g, ptr %i.b, align 8, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.i, ptr %i.h, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !13
  %i.l = load ptr, ptr %0, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare noalias ptr @png_create_write_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1
end_hunk_0
