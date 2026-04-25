inline.NumInlined: 318
inline.NumDeleted: 153
begin_hunk_0_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj:bb.a
_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214.thread: ; preds = %bb.bf, %bb.bg, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit214
  %i.kv = load ptr, ptr %i.fn, align 8
  %i.kw = load ptr, ptr %i.ih, align 8
  %3 = load <6 x ptr>, ptr %i.ig, align 8
  %i.kx = insertelement <8 x ptr> poison, ptr %i.kw, i64 6
  %i.ky = insertelement <8 x ptr> %i.kx, ptr %i.kv, i64 7
  %4 = shufflevector <6 x ptr> %3, <6 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %5 = shufflevector <8 x ptr> %4, <8 x ptr> %i.ky, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %i.kz = icmp ne <8 x ptr> %5, zeroinitializer
  %i.la = bitcast <8 x i1> %i.kz to i8            ; 2 uses
  %i.lb = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.la) ; 3 uses
  %i.lc = zext nneg i8 %i.lb to i64               ; 2 uses
end_hunk_1
