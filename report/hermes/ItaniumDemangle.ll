inline.NumInlined: 2019
inline.NumDeleted: 419
begin_hunk_0_@_ZNK4llvh16itanium_demangle16FloatLiteralImplIdE9printLeftER12OutputStream:bb.a
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229  ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
end_hunk_0
begin_hunk_1_@_ZNK4llvh16itanium_demangle16FloatLiteralImplIdE9printLeftER12OutputStream:bb.a
  %i.y = shl i8 %i.x, 4
  %i.z = add i8 %i.u, %i.y
  %.sroa.0.5.insert.ext = zext i8 %i.z to i64
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %2 = load i8, ptr %.ptr.3, align 1, !tbaa !7
  %.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %3 = load i8, ptr %.0.ptr.3, align 1, !tbaa !7
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %4 = load i8, ptr %.ptr, align 1, !tbaa !7
  %5 = load i8, ptr %i.c, align 1, !tbaa !7
  %6 = load <4 x i8>, ptr %.0.ptr.1, align 1, !tbaa !7 ; 2 uses
  %7 = shufflevector <4 x i8> %6, <4 x i8> poison, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %8 = insertelement <4 x i8> %7, i8 %4, i64 0
  %9 = insertelement <4 x i8> %8, i8 %2, i64 3    ; 2 uses
  %i.aa = sext <4 x i8> %9 to <4 x i32>
  %i.ab = add nsw <4 x i32> %i.aa, splat (i32 -48)
  %i.ac = icmp ult <4 x i32> %i.ab, splat (i32 10)
  %i.ad = select <4 x i1> %i.ac, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %i.ae = add <4 x i8> %i.ad, %9
  %10 = shufflevector <4 x i8> %6, <4 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %11 = insertelement <4 x i8> %10, i8 %5, i64 0
  %12 = insertelement <4 x i8> %11, i8 %3, i64 3  ; 2 uses
  %i.af = sext <4 x i8> %12 to <4 x i32>
  %i.ag = add nsw <4 x i32> %i.af, splat (i32 -48)
  %i.ah = icmp ult <4 x i32> %i.ag, splat (i32 10)
  %i.ai = select <4 x i1> %i.ah, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.aj = add <4 x i8> %i.ai, %12
  %i.ak = shl <4 x i8> %i.aj, splat (i8 4)
  %i.al = add <4 x i8> %i.ae, %i.ak               ; 4 uses
  %i.am = shl nuw nsw i64 %.sroa.0.5.insert.ext, 16
end_hunk_1
