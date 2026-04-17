inline.NumInlined: 2019
inline.NumDeleted: 419
begin_hunk_0_@_ZNK4llvh16itanium_demangle16FloatLiteralImplIdE9printLeftER12OutputStream:bb.a
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
end_hunk_0
begin_hunk_1_@_ZNK4llvh16itanium_demangle16FloatLiteralImplIdE9printLeftER12OutputStream:bb.a
  %i.y = shl i8 %i.x, 4
  %i.z = add i8 %i.u, %i.y
  %.sroa.0.5.insert.ext = zext i8 %i.z to i64
  %2 = load <8 x i8>, ptr %i.c, align 1, !tbaa !7 ; 2 uses
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.aa = sext <4 x i8> %3 to <4 x i32>
  %i.ab = add nsw <4 x i32> %i.aa, splat (i32 -48)
  %i.ac = icmp ult <4 x i32> %i.ab, splat (i32 10)
  %i.ad = select <4 x i1> %i.ac, <4 x i8> splat (i8 -48), <4 x i8> splat (i8 -87)
  %i.ae = add <4 x i8> %i.ad, %3
  %4 = shufflevector <8 x i8> %2, <8 x i8> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.af = sext <4 x i8> %4 to <4 x i32>
  %i.ag = add nsw <4 x i32> %i.af, splat (i32 -48)
  %i.ah = icmp ult <4 x i32> %i.ag, splat (i32 10)
  %i.ai = select <4 x i1> %i.ah, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.aj = add <4 x i8> %i.ai, %4
  %i.ak = shl <4 x i8> %i.aj, splat (i8 4)
  %i.al = add <4 x i8> %i.ae, %i.ak               ; 4 uses
  %i.am = shl nuw nsw i64 %.sroa.0.5.insert.ext, 16
end_hunk_1
