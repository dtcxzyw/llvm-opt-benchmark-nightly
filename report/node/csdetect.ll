inline.NumInlined: 99
inline.NumDeleted: 50
begin_hunk_0_@_ZL9enumCountP12UEnumerationP10UErrorCode:bb.a

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %.not19 = icmp eq ptr %i.g, null
  %.b = load i1, ptr @_ZL19fCSRecognizers_size, align 4 ; 2 uses
  br i1 %.not19, label %.preheader, label %.preheader23
end_hunk_0
begin_hunk_1_@_ZL9enumCountP12UEnumerationP10UErrorCode:bb.a
  br i1 %.b, label %.lr.ph.split.preheader, label %.loopexit

.lr.ph.split.preheader:                           ; preds = %.preheader23
  %2 = load <16 x i8>, ptr %i.g, align 1
  %3 = icmp ne <16 x i8> %2, zeroinitializer
  %4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %5 = load <8 x i8>, ptr %4, align 1
  %6 = icmp ne <8 x i8> %5, zeroinitializer
  %7 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %8 = load <4 x i8>, ptr %7, align 1
  %9 = icmp ne <4 x i8> %8, zeroinitializer
  %10 = shufflevector <8 x i1> %6, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %rdx.op36 = shufflevector <16 x i1> %3, <16 x i1> %10, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %11 = shufflevector <4 x i1> %9, <4 x i1> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %rdx.op37 = shufflevector <24 x i1> %rdx.op36, <24 x i1> %11, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.h = bitcast <28 x i1> %rdx.op37 to i28
  %i.i = tail call range(i28 0, 29) i28 @llvm.ctpop.i28(i28 %i.h)
  %i.j = zext nneg i28 %i.i to i32
  br label %.loopexit
end_hunk_1
begin_hunk_2_@_ZL9enumCountP12UEnumerationP10UErrorCode:bb.a
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i8, ptr %i.bu, align 8
  %12 = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %13 = insertelement <16 x i8> %12, i8 %i.r, i64 1
  %14 = insertelement <16 x i8> %13, i8 %i.v, i64 2
  %15 = insertelement <16 x i8> %14, i8 %i.z, i64 3
  %16 = insertelement <16 x i8> %15, i8 %i.ad, i64 4
  %17 = insertelement <16 x i8> %16, i8 %i.ah, i64 5
  %18 = insertelement <16 x i8> %17, i8 %i.al, i64 6
  %19 = insertelement <16 x i8> %18, i8 %i.ap, i64 7
  %20 = insertelement <16 x i8> %19, i8 %i.at, i64 8
  %21 = insertelement <16 x i8> %20, i8 %i.ax, i64 9
  %22 = insertelement <16 x i8> %21, i8 %i.bb, i64 10
  %23 = insertelement <16 x i8> %22, i8 %i.bf, i64 11
  %24 = insertelement <16 x i8> %23, i8 %i.bj, i64 12
  %25 = insertelement <16 x i8> %24, i8 %i.bn, i64 13
  %26 = insertelement <16 x i8> %25, i8 %i.br, i64 14
  %27 = insertelement <16 x i8> %26, i8 %i.bv, i64 15
  %28 = icmp ne <16 x i8> %27, zeroinitializer
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i8, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i8, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i8, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i8, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i8, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i8, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i8, ptr %i.da, align 8
  %29 = insertelement <8 x i8> poison, i8 %i.bz, i64 0
  %30 = insertelement <8 x i8> %29, i8 %i.cd, i64 1
  %31 = insertelement <8 x i8> %30, i8 %i.ch, i64 2
  %32 = insertelement <8 x i8> %31, i8 %i.cl, i64 3
  %33 = insertelement <8 x i8> %32, i8 %i.cp, i64 4
  %34 = insertelement <8 x i8> %33, i8 %i.ct, i64 5
  %35 = insertelement <8 x i8> %34, i8 %i.cx, i64 6
  %36 = insertelement <8 x i8> %35, i8 %i.db, i64 7
  %37 = icmp ne <8 x i8> %36, zeroinitializer
  %38 = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %41 = load i8, ptr %40, align 8
  %42 = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %45 = load i8, ptr %44, align 8
  %46 = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %49 = load i8, ptr %48, align 8
  %50 = getelementptr inbounds nuw i8, ptr %i.k, i64 216
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %53 = load i8, ptr %52, align 8
  %54 = insertelement <4 x i8> poison, i8 %41, i64 0
  %55 = insertelement <4 x i8> %54, i8 %45, i64 1
  %56 = insertelement <4 x i8> %55, i8 %49, i64 2
  %57 = insertelement <4 x i8> %56, i8 %53, i64 3
  %58 = icmp ne <4 x i8> %57, zeroinitializer
  %59 = shufflevector <8 x i1> %37, <8 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %rdx.op = shufflevector <16 x i1> %28, <16 x i1> %59, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %60 = shufflevector <4 x i1> %58, <4 x i1> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %rdx.op35 = shufflevector <24 x i1> %rdx.op, <24 x i1> %60, <28 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.dc = bitcast <28 x i1> %rdx.op35 to i28
  %i.dd = tail call range(i28 0, 29) i28 @llvm.ctpop.i28(i28 %i.dc)
  %i.de = zext nneg i28 %i.dd to i32
  br label %.loopexit
end_hunk_2
