inline.NumInlined: 1
begin_hunk_0_@_ZN13duckdb_brotli25BrotliDecoderStateCleanupEPNS_24BrotliDecoderStateStructE:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  tail call void %i.b(ptr noundef %i.d, ptr noundef %i.f)
  store ptr null, ptr %i.e, align 8, !tbaa !38
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  tail call void %i.g(ptr noundef %i.h, ptr noundef %i.j)
  store ptr null, ptr %i.i, align 8, !tbaa !39
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  tail call void %i.k(ptr noundef %i.l, ptr noundef %i.n)
  store ptr null, ptr %i.m, align 8, !tbaa !31
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  tail call void %i.o(ptr noundef %i.p, ptr noundef %i.r)
  store ptr null, ptr %i.q, align 8, !tbaa !40
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  tail call void %i.s(ptr noundef %i.t, ptr noundef %i.v)
  store ptr null, ptr %i.u, align 8, !tbaa !41
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  tail call void %i.w(ptr noundef %i.x, ptr noundef %i.z)
  store ptr null, ptr %i.y, align 8, !tbaa !42
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !24
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli25BrotliDecoderStateCleanupEPNS_24BrotliDecoderStateStructE:bb.a
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43
  tail call void %i.ak(ptr noundef %i.al, ptr noundef %i.an)
  store ptr null, ptr %i.am, align 8, !tbaa !43
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN13duckdb_brotli33BrotliDecoderHuffmanTreeGroupInitEPNS_24BrotliDecoderStateStructEPNS_16HuffmanTreeGroupEmmm:bb.a
  %i.f = tail call noundef ptr %i.c(ptr noundef %i.e, i64 noundef %reass.mul) ; 3 uses
  %i.g = trunc i64 %2 to i16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.g, ptr %i.h, align 8, !tbaa !44
  %i.i = trunc i64 %3 to i16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.i, ptr %i.j, align 2, !tbaa !45
  %i.k = trunc i64 %4 to i16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i16 %i.k, ptr %i.l, align 4, !tbaa !46
  store ptr %i.f, ptr %1, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !48
  %i.o = icmp ne ptr %i.f, null
  %i.p = zext i1 %i.o to i32
  ret i32 %i.p
end_hunk_2
begin_hunk_3_@llvm.memset.p0.i64
!40 = !{!8, !15, i64 184}
!41 = !{!8, !15, i64 208}
!42 = !{!8, !15, i64 232}
!43 = !{!8, !13, i64 256}
!44 = !{!14, !16, i64 16}
!45 = !{!14, !16, i64 18}
!46 = !{!14, !16, i64 20}
!47 = !{!14, !15, i64 0}
!48 = !{!14, !13, i64 8}
end_hunk_3
