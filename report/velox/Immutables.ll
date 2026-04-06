begin_hunk_0_@_ZN5folly8settings16freezeImmutablesENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22, !noalias !40
  %i.cd = load i64, ptr %i.q, align 8, !tbaa !31  ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %4 = and i64 %i.cd, 255
  %5 = add i64 %i.ce, -256
  %i.cf = or disjoint i64 %5, %4
  store i64 %i.cf, ptr %i.q, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.512.4.i.i.i ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !45
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JS9_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESF_ImmERKT_DpOT0_:bb.a
  store i8 0, ptr %i.dq, align 8, !tbaa !45
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.eb = and i64 %i.ea, -256
  %6 = and i64 %i.ea, 255
  %7 = add i64 %i.eb, 256
  %i.ec = or disjoint i64 %7, %6
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !31
  br label %bb.p

end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSD_EEvOT_:bb.a
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !45
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.bx = and i64 %i.bw, -256
  %3 = and i64 %i.bw, 255
  %4 = add i64 %i.bx, 256
  %i.by = or disjoint i64 %4, %3                  ; 2 uses
  store i64 %i.by, ptr %i.d, align 8, !tbaa !31
  %i.bz = add i64 %.03662, 1
  %.not57 = icmp eq i32 %.sroa.0.1, 0
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_:bb.a
  store i32 %i.as, ptr %i.bz, align 4, !tbaa !7
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %4 = and i64 %i.cb, 255
  %5 = add i64 %i.cc, 256
  %i.cd = or disjoint i64 %5, %4
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !31
  %.not129 = icmp eq i32 %.sroa.088.2, 0
  br i1 %.not129, label %.loopexit, label %.lr.ph152, !llvm.loop !146
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_:bb.a
  store i32 %i.ck, ptr %i.hu, align 4, !tbaa !7
  %i.hw = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.hx = and i64 %i.hw, -256
  %6 = and i64 %i.hw, 255
  %7 = add i64 %i.hx, 256
  %i.hy = or disjoint i64 %7, %6
  store i64 %i.hy, ptr %i.a, align 8, !tbaa !31
  %.not128 = icmp eq i32 %.sroa.088.3, 0
  br i1 %.not128, label %.loopexit, label %.lr.ph148, !llvm.loop !147
end_hunk_4
