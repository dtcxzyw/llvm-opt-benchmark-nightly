inline.NumInlined: 12609
inline.NumDeleted: 445
begin_hunk_0_@_ZN5arrow8internal11unpack_avx2IbEEvPKhPT_iii:bb.a
.lr.ph.i.i:                                       ; preds = %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i, %.lr.ph.i.i
  %.031.i.i = phi i32 [ %i.ch, %.lr.ph.i.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ]
  %.02530.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.t, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 2 uses
  %.02629.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.v, %_ZN5arrow8internal12unpack_exactILi1ELb1EbEEiPKhPT1_ii.exit.i.i ] ; 33 uses
  %i.bx = load i32, ptr %.02530.i.i, align 1
  %i.by = insertelement <8 x i32> poison, i32 %i.bx, i64 0
  %i.bz = shufflevector <8 x i32> %i.by, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal11unpack_avx2IbEEvPKhPT_iii:bb.a
  %i.cb = lshr <8 x i32> %i.bz, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = lshr <8 x i32> %i.bz, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cd = lshr <8 x i32> %i.bz, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %5 = bitcast <8 x i32> %i.ca to <256 x i1>      ; 8 uses
  %6 = extractelement <256 x i1> %5, i64 0
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %.02629.i.i, align 1, !tbaa !7
  %8 = extractelement <256 x i1> %5, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 1
  %10 = zext i1 %8 to i8
  store i8 %10, ptr %9, align 1, !tbaa !7
  %11 = extractelement <256 x i1> %5, i64 64
  %12 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 2
  %13 = zext i1 %11 to i8
  store i8 %13, ptr %12, align 1, !tbaa !7
  %14 = extractelement <256 x i1> %5, i64 96
  %15 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 3
  %16 = zext i1 %14 to i8
  store i8 %16, ptr %15, align 1, !tbaa !7
  %17 = extractelement <256 x i1> %5, i64 128
  %18 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 4
  %19 = zext i1 %17 to i8
  store i8 %19, ptr %18, align 1, !tbaa !7
  %20 = extractelement <256 x i1> %5, i64 160
  %21 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 5
  %22 = zext i1 %20 to i8
  store i8 %22, ptr %21, align 1, !tbaa !7
  %23 = extractelement <256 x i1> %5, i64 192
  %24 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 6
  %25 = zext i1 %23 to i8
  store i8 %25, ptr %24, align 1, !tbaa !7
  %26 = extractelement <256 x i1> %5, i64 224
  %27 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 7
  %28 = zext i1 %26 to i8
  store i8 %28, ptr %27, align 1, !tbaa !7
  %29 = bitcast <8 x i32> %i.cb to <256 x i1>     ; 8 uses
  %30 = extractelement <256 x i1> %29, i64 0
  %31 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 8
  %32 = zext i1 %30 to i8
  store i8 %32, ptr %31, align 1, !tbaa !7
  %33 = extractelement <256 x i1> %29, i64 32
  %34 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 9
  %35 = zext i1 %33 to i8
  store i8 %35, ptr %34, align 1, !tbaa !7
  %36 = extractelement <256 x i1> %29, i64 64
  %37 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 10
  %38 = zext i1 %36 to i8
  store i8 %38, ptr %37, align 1, !tbaa !7
  %39 = extractelement <256 x i1> %29, i64 96
  %40 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 11
  %41 = zext i1 %39 to i8
  store i8 %41, ptr %40, align 1, !tbaa !7
  %42 = extractelement <256 x i1> %29, i64 128
  %43 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 12
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 1, !tbaa !7
  %45 = extractelement <256 x i1> %29, i64 160
  %46 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 13
  %47 = zext i1 %45 to i8
  store i8 %47, ptr %46, align 1, !tbaa !7
  %48 = extractelement <256 x i1> %29, i64 192
  %49 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 14
  %50 = zext i1 %48 to i8
  store i8 %50, ptr %49, align 1, !tbaa !7
  %51 = extractelement <256 x i1> %29, i64 224
  %52 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 15
  %53 = zext i1 %51 to i8
  store i8 %53, ptr %52, align 1, !tbaa !7
  %54 = bitcast <8 x i32> %i.cc to <256 x i1>     ; 8 uses
  %55 = extractelement <256 x i1> %54, i64 0
  %56 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 16
  %57 = zext i1 %55 to i8
  store i8 %57, ptr %56, align 1, !tbaa !7
  %58 = extractelement <256 x i1> %54, i64 32
  %59 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 17
  %60 = zext i1 %58 to i8
  store i8 %60, ptr %59, align 1, !tbaa !7
  %61 = extractelement <256 x i1> %54, i64 64
  %62 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 18
  %63 = zext i1 %61 to i8
  store i8 %63, ptr %62, align 1, !tbaa !7
  %64 = extractelement <256 x i1> %54, i64 96
  %65 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 19
  %66 = zext i1 %64 to i8
  store i8 %66, ptr %65, align 1, !tbaa !7
  %67 = extractelement <256 x i1> %54, i64 128
  %68 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 20
  %69 = zext i1 %67 to i8
  store i8 %69, ptr %68, align 1, !tbaa !7
  %70 = extractelement <256 x i1> %54, i64 160
  %71 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 21
  %72 = zext i1 %70 to i8
  store i8 %72, ptr %71, align 1, !tbaa !7
  %73 = extractelement <256 x i1> %54, i64 192
  %74 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 22
  %75 = zext i1 %73 to i8
  store i8 %75, ptr %74, align 1, !tbaa !7
  %76 = extractelement <256 x i1> %54, i64 224
  %77 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 23
  %78 = zext i1 %76 to i8
  store i8 %78, ptr %77, align 1, !tbaa !7
  %79 = bitcast <8 x i32> %i.cd to <256 x i1>     ; 8 uses
  %80 = extractelement <256 x i1> %79, i64 0
  %81 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 24
  %82 = zext i1 %80 to i8
  store i8 %82, ptr %81, align 1, !tbaa !7
  %83 = extractelement <256 x i1> %79, i64 32
  %84 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 25
  %85 = zext i1 %83 to i8
  store i8 %85, ptr %84, align 1, !tbaa !7
  %86 = extractelement <256 x i1> %79, i64 64
  %87 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 26
  %88 = zext i1 %86 to i8
  store i8 %88, ptr %87, align 1, !tbaa !7
  %89 = extractelement <256 x i1> %79, i64 96
  %90 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 27
  %91 = zext i1 %89 to i8
  store i8 %91, ptr %90, align 1, !tbaa !7
  %92 = extractelement <256 x i1> %79, i64 128
  %93 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 28
  %94 = zext i1 %92 to i8
  store i8 %94, ptr %93, align 1, !tbaa !7
  %95 = extractelement <256 x i1> %79, i64 160
  %96 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 29
  %97 = zext i1 %95 to i8
  store i8 %97, ptr %96, align 1, !tbaa !7
  %98 = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 30
  %i.ce = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 31
  %99 = extractelement <256 x i1> %79, i64 192
  %100 = zext i1 %99 to i8
  store i8 %100, ptr %98, align 1, !tbaa !7
  %101 = extractelement <256 x i1> %79, i64 224
  %102 = zext i1 %101 to i8
  store i8 %102, ptr %i.ce, align 1, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.02530.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02629.i.i, i64 32 ; 2 uses
  %i.ch = add nuw nsw i32 %.031.i.i, 1            ; 2 uses
end_hunk_1
