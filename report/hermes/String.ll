inline.NumInlined: 2420
inline.NumDeleted: 745
begin_hunk_0_@_ZN6hermes2vm24stringPrototypeSubstringEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.bg = fptoui double %.sroa.speculated44 to i64 ; 2 uses
  %.sroa.speculated24 = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bd) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.bg)
  %4 = sub nuw i64 %.sroa.speculated, %.sroa.speculated24
  %i.bh = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i, i64 noundef %.sroa.speculated24, i64 noundef %4) #14 ; 2 uses
  %i.bi = extractvalue { i32, i64 } %i.bh, 0
  %i.bj = extractvalue { i32, i64 } %i.bh, 1
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %.09.i = phi i32 [ %i.cn, %.lr.ph.i ], [ %i.ch, %bb.t ] ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.cm, i32 %.09.i) ; 2 uses
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %.0.i.i.i.i.i.i36, i32 noundef %.sroa.speculated.i)
  %i.cn = sub nuw i32 %.09.i, %.sroa.speculated.i ; 2 uses
  %.not.i42 = icmp eq i32 %i.cn, 0
  br i1 %.not.i42, label %"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit", label %.lr.ph.i, !llvm.loop !252

end_hunk_1
begin_hunk_2_@_ZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %.09.i48 = phi i32 [ %i.de, %.lr.ph.i47 ], [ %i.cy, %bb.u ] ; 2 uses
  %.sroa.speculated.i49 = call i32 @llvm.umin.i32(i32 %i.dd, i32 %.09.i48) ; 2 uses
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %.0.i.i.i.i.i.i36, i32 noundef %.sroa.speculated.i49)
  %i.de = sub nuw i32 %.09.i48, %.sroa.speculated.i49 ; 2 uses
  %.not.i51 = icmp eq i32 %i.de, 0
  br i1 %.not.i51, label %"_ZZN6hermes2vm18stringPrototypePadEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clERNS0_13StringBuilderE.exit52", label %.lr.ph.i47, !llvm.loop !252

end_hunk_2
