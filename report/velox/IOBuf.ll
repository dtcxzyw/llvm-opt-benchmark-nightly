inline.NumInlined: 545
inline.NumDeleted: 270
begin_hunk_0_@_ZN5folly5IOBufC2ENS0_15TakeOwnershipOpEPvmmmPFvS2_S2_ES2_b
define void @_ZN5folly5IOBufC2ENS0_15TakeOwnershipOpEPvmmmPFvS2_S2_ES2_b(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 32)) %0, i32 %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i8, align 1                       ; 2 uses
  %9 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 9 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !3821
end_hunk_0
begin_hunk_1_@_ZN5folly5IOBufC2ENS0_15TakeOwnershipOpEPvmmmPFvS2_S2_ES2_b:bb.a
          to label %bb.b unwind label %bb.c       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %10 = load ptr, ptr %i.b, align 8, !tbaa !3821
  %11 = load ptr, ptr %i.c, align 8, !tbaa !3821
  invoke void @_ZN5folly5IOBuf10SharedInfoC1EPFvPvS2_ES2_NS1_11StorageTypeE(ptr noundef nonnull align 8 dereferenceable(31) %i.n, ptr noundef %10, ptr noundef %11, i8 noundef zeroext 1)
          to label %"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EED2Ev.exit" unwind label %bb.d

"_ZN5folly6detail14ScopeGuardImplIZNS_5IOBufC1ENS2_15TakeOwnershipOpEPvmmmPFvS4_S4_ES4_bE3$_0Lb1EED2Ev.exit": ; preds = %bb.b
end_hunk_1
