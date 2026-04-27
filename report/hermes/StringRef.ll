inline.NumInlined: 344
inline.NumDeleted: 125
begin_hunk_0_@_ZN4llvh7hashing6detail23hash_combine_range_implIKcEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  br label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit

_ZN4llvh7hashing6detail18get_execution_seedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !12 ; 10 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh7hashing6detail23hash_combine_range_implIKcEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 15) ; 2 uses
  %i.x = mul i64 %i.f, -5435081209227447693
  %i.y = lshr i64 %i.f, 47
  %i.z = xor i64 %i.y, %i.f                       ; 3 uses
  %i.aa = xor i64 %i.z, %i.x
  %i.ab = mul i64 %i.aa, -7070675565921424023     ; 2 uses
  %2 = xor i64 %i.ab, %i.f
  %i.ac = lshr i64 %2, 47
  %i.ad = xor i64 %i.f, %i.ac
  %i.ae = xor i64 %i.ad, %i.ab
  %i.af = mul i64 %i.ae, -7070675565921424023     ; 2 uses
  %i.ag = lshr i64 %i.af, 47
end_hunk_1
begin_hunk_2_@_ZN4llvh7hashing6detail23hash_combine_range_implIKcEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.bl = add i64 %i.bk, %i.bc
  %i.bm = add i64 %i.bl, %i.bg                    ; 2 uses
  %i.bn = add i64 %i.bj, %.0.copyload.i15.i.i.i   ; 2 uses
  %i.bo = add i64 %i.ai, %i.az
  %i.bp = add i64 %i.aw, %.0.copyload.i17.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bq, align 1, !noalias !76
end_hunk_2
