inline.NumInlined: 99
inline.NumDeleted: 50
begin_hunk_0_@_ZL9enumCountP12UEnumerationP10UErrorCode:bb.a

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.g, null
  %.b = load i1, ptr @_ZL19fCSRecognizers_size, align 4 ; 2 uses
  br i1 %.not19, label %.preheader, label %.preheader23
end_hunk_0
begin_hunk_1_@_ZL9enumCountP12UEnumerationP10UErrorCode:bb.a
  br i1 %.b, label %.lr.ph.split.preheader, label %.loopexit

.lr.ph.split.preheader:                           ; preds = %.preheader23
  %2 = load <28 x i8>, ptr %i.g, align 1
  %3 = icmp ne <28 x i8> %2, zeroinitializer
  %i.h = bitcast <28 x i1> %3 to i28
  %i.i = tail call range(i28 0, 29) i28 @llvm.ctpop.i28(i28 %i.h)
  %i.j = zext nneg i28 %i.i to i32
  br label %.loopexit
end_hunk_1
begin_hunk_2_@_ZL9enumCountP12UEnumerationP10UErrorCode:bb.a
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i8, ptr %i.bu, align 8
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = load i8, ptr %6, align 8
  %8 = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load i8, ptr %10, align 8
  %12 = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = load i8, ptr %14, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i8, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i8, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i8, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i8, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i8, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i8, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i8, ptr %i.da, align 8
  %16 = getelementptr inbounds nuw i8, ptr %i.k, i64 216
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load i8, ptr %18, align 8
  %20 = insertelement <28 x i8> poison, i8 %i.n, i64 0
  %21 = insertelement <28 x i8> %20, i8 %i.r, i64 1
  %22 = insertelement <28 x i8> %21, i8 %i.v, i64 2
  %23 = insertelement <28 x i8> %22, i8 %i.z, i64 3
  %24 = insertelement <28 x i8> %23, i8 %i.ad, i64 4
  %25 = insertelement <28 x i8> %24, i8 %i.ah, i64 5
  %26 = insertelement <28 x i8> %25, i8 %i.al, i64 6
  %27 = insertelement <28 x i8> %26, i8 %i.ap, i64 7
  %28 = insertelement <28 x i8> %27, i8 %i.at, i64 8
  %29 = insertelement <28 x i8> %28, i8 %i.ax, i64 9
  %30 = insertelement <28 x i8> %29, i8 %i.bb, i64 10
  %31 = insertelement <28 x i8> %30, i8 %i.bf, i64 11
  %32 = insertelement <28 x i8> %31, i8 %i.bj, i64 12
  %33 = insertelement <28 x i8> %32, i8 %i.bn, i64 13
  %34 = insertelement <28 x i8> %33, i8 %i.br, i64 14
  %35 = insertelement <28 x i8> %34, i8 %i.bv, i64 15
  %36 = insertelement <28 x i8> %35, i8 %7, i64 16
  %37 = insertelement <28 x i8> %36, i8 %11, i64 17
  %38 = insertelement <28 x i8> %37, i8 %15, i64 18
  %39 = insertelement <28 x i8> %38, i8 %i.bz, i64 19
  %40 = insertelement <28 x i8> %39, i8 %i.cd, i64 20
  %41 = insertelement <28 x i8> %40, i8 %i.ch, i64 21
  %42 = insertelement <28 x i8> %41, i8 %i.cl, i64 22
  %43 = insertelement <28 x i8> %42, i8 %i.cp, i64 23
  %44 = insertelement <28 x i8> %43, i8 %i.ct, i64 24
  %45 = insertelement <28 x i8> %44, i8 %i.cx, i64 25
  %46 = insertelement <28 x i8> %45, i8 %i.db, i64 26
  %47 = insertelement <28 x i8> %46, i8 %19, i64 27
  %48 = icmp ne <28 x i8> %47, zeroinitializer
  %i.dc = bitcast <28 x i1> %48 to i28
  %i.dd = tail call range(i28 0, 29) i28 @llvm.ctpop.i28(i28 %i.dc)
  %i.de = zext nneg i28 %i.dd to i32
  br label %.loopexit
end_hunk_2
