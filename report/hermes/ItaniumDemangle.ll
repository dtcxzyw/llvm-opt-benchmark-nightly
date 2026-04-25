inline.NumInlined: 2019
inline.NumDeleted: 419
begin_hunk_0_@_ZNK4llvh16itanium_demangle16FloatLiteralImplIdE9printLeftER12OutputStream:bb.a
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229  ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
end_hunk_0
begin_hunk_1_@_ZNK4llvh16itanium_demangle16FloatLiteralImplIdE9printLeftER12OutputStream:bb.a
  %i.y = shl i8 %i.x, 4
  %i.z = add i8 %i.u, %i.y
  %.sroa.0.5.insert.ext = zext i8 %i.z to i64
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aa = load i8, ptr %.ptr, align 1, !tbaa !7
  %i.ab = load i8, ptr %i.c, align 1, !tbaa !7
  %2 = load <6 x i8>, ptr %.0.ptr.1, align 1, !tbaa !7 ; 2 uses
  %3 = shufflevector <6 x i8> %2, <6 x i8> poison, <4 x i32> <i32 poison, i32 1, i32 3, i32 5>
  %i.ac = insertelement <4 x i8> %3, i8 %i.aa, i64 0 ; 2 uses
  %i.ad = sext <4 x i8> %i.ac to <4 x i32>
  %i.ae = add nsw <4 x i32> %i.ad, splat (i32 -48)
  %i.af = icmp ult <4 x i32> %i.ae, splat (i32 10)
  %i.ag = select <4 x i1> %i.af, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %i.ah = add <4 x i8> %i.ag, %i.ac
  %4 = shufflevector <6 x i8> %2, <6 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 4>
  %i.ai = insertelement <4 x i8> %4, i8 %i.ab, i64 0 ; 2 uses
  %i.aj = sext <4 x i8> %i.ai to <4 x i32>
  %i.ak = add nsw <4 x i32> %i.aj, splat (i32 -48)
  %i.al = icmp ult <4 x i32> %i.ak, splat (i32 10)
end_hunk_1
