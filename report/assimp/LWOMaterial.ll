inline.NumInlined: 941
inline.NumDeleted: 358
begin_hunk_0_@_ZN6Assimp11LWOImporter20LoadLWO2TextureBlockEPNS_3IFF14SubChunkHeaderEj:bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds i8, ptr %i.d, i64 -328
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.e, ptr %3, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11LWOImporter20LoadLWO2TextureBlockEPNS_3IFF14SubChunkHeaderEj:bb.a
  br label %.body32

bb.q:                                             ; preds = %bb.g, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.sink = phi i64 [ 288, %bb.m ], [ 168, %bb.h ], [ 192, %bb.i ], [ 264, %bb.j ], [ 240, %bb.k ], [ 216, %bb.l ], [ 144, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %.sink ; 4 uses
  %i.ap = load ptr, ptr %i.w, align 8
  br label %bb.r

end_hunk_1
