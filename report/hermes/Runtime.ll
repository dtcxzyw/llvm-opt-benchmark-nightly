inline.NumInlined: 3789
inline.NumDeleted: 2145
begin_hunk_0_@_ZN4llvh7hashing6detail23hash_combine_range_implIKhEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  br label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit

_ZN4llvh7hashing6detail18get_execution_seedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !18 ; 8 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh7hashing6detail23hash_combine_range_implIKhEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 15) ; 2 uses
  %i.x = mul i64 %i.f, -5435081209227447693
  %i.y = lshr i64 %i.f, 47
  %i.z = xor i64 %i.y, %i.f                       ; 4 uses
  %i.aa = xor i64 %i.z, %i.x
  %i.ab = mul i64 %i.aa, -7070675565921424023     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.z, %i.ac
  %i.ae = xor i64 %i.ad, %i.ab
  %i.af = mul i64 %i.ae, -7070675565921424023     ; 2 uses
  %i.ag = lshr i64 %i.af, 47
end_hunk_1
begin_hunk_2_@_ZN4llvh7hashing6detail23hash_combine_range_implIKhEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.bl = add i64 %i.bk, %i.bc
  %i.bm = add i64 %i.bl, %i.bg                    ; 2 uses
  %i.bn = add i64 %i.bj, %.0.copyload.i15.i.i.i   ; 2 uses
  %i.bo = add i64 %i.az, %i.ai
  %i.bp = add i64 %i.aw, %.0.copyload.i17.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bq, align 1, !noalias !1246
end_hunk_2
begin_hunk_3_@_ZN4llvh7hashing6detail23hash_combine_range_implIN6hermes2vm10StringView14const_iteratorEEENS_9hash_codeET_S8_:bb.a
  br label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit

_ZN4llvh7hashing6detail18get_execution_seedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !18 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %bb.d
end_hunk_3
begin_hunk_4_@_ZN4llvh7hashing6detail23hash_combine_range_implIN6hermes2vm10StringView14const_iteratorEEENS_9hash_codeET_S8_:bb.a
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 15) ; 2 uses
  %i.y = mul i64 %i.g, -5435081209227447693
  %i.z = lshr i64 %i.g, 47
  %i.aa = xor i64 %i.z, %i.g                      ; 4 uses
  %i.ab = xor i64 %i.aa, %i.y
  %i.ac = mul i64 %i.ab, -7070675565921424023     ; 2 uses
  %i.ad = lshr i64 %i.ac, 47
  %i.ae = xor i64 %i.aa, %i.ad
  %i.af = xor i64 %i.ae, %i.ac
  %i.ag = mul i64 %i.af, -7070675565921424023     ; 2 uses
  %i.ah = lshr i64 %i.ag, 47
end_hunk_4
begin_hunk_5_@_ZN4llvh7hashing6detail23hash_combine_range_implIN6hermes2vm10StringView14const_iteratorEEENS_9hash_codeET_S8_:bb.a
  %i.bm = add i64 %i.bl, %i.bd
  %i.bn = add i64 %i.bm, %i.bh                    ; 2 uses
  %i.bo = add i64 %i.bk, %.0.copyload.i15.i.i.i   ; 2 uses
  %i.bp = add i64 %i.ba, %i.aj
  %i.bq = add i64 %i.ax, %.0.copyload.i17.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.0.copyload.i.i10.i.i = load i64, ptr %i.br, align 16, !noalias !1251
end_hunk_5
