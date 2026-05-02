inline.NumInlined: 1517
inline.NumDeleted: 727
begin_hunk_0_@_ZN6hermes6bigint12_GLOBAL__N_120exponentiateSlowPathENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefEj:bb.a
  %i.cn = getelementptr i8, ptr %.sroa.0135.0166, i64 8
  %.val78.val79 = load ptr, ptr %i.cn, align 8, !tbaa !93
  %.val78.val79.val = load i32, ptr %.val78.val79, align 4, !tbaa !3 ; 2 uses
  %i.co = call noundef i32 @_ZN6hermes6bigint8multiplyENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %.sroa.015.0.copyload, ptr nonnull %.val70.val, ptr %.val78.val, i32 %.val78.val79.val, ptr %.val78.val, i32 %.val78.val79.val)
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %bb.j, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, !prof !104

bb.j:                                             ; preds = %.lr.ph
  %i.cp = and i32 %.046.in168, 2
end_hunk_0
begin_hunk_1_@_ZN6hermes6bigint12_GLOBAL__N_120exponentiateSlowPathENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefEj:bb.a
  %.val73.val84 = load ptr, ptr %i.cm, align 8, !tbaa !93
  %.val73.val84.val = load i32, ptr %.val73.val84, align 4, !tbaa !3
  %i.ec = call noundef i32 @_ZN6hermes6bigint8multiplyENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, ptr %.val74.val, i32 %.val74.val83.val, ptr %.val73.val, i32 %.val73.val84.val) ; 2 uses
  %10 = icmp ne i32 %i.ec, 0
  %i.ed = icmp ugt i32 %.sroa.10.0163, 1023
  %or.cond.i123 = and i1 %i.ed, %10
  br i1 %or.cond.i123, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.r
end_hunk_1
begin_hunk_2_@_ZN6hermes6bigint12_GLOBAL__N_120exponentiateSlowPathENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefEj:bb.a
  call void @llvm.memset.p0.i64(ptr align 8 %i.ex, i8 %i.eu, i64 %i.ey, i1 false)
  br label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit: ; preds = %bb.q, %bb.r, %.lr.ph, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread, %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i, %bb.t, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit, %._crit_edge
  %.0 = phi i32 [ 1, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit ], [ 1, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98 ], [ 0, %._crit_edge ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i ], [ 1, %bb.t ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ], [ 1, %bb.r ], [ 2, %.lr.ph ], [ 2, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
end_hunk_2
