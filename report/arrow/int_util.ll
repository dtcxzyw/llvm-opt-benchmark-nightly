inline.NumInlined: 2192
inline.NumDeleted: 629
begin_hunk_0_@_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i8 %1, 10
  %2 = icmp ugt i8 %1, 99                         ; 2 uses
  %i.e = select i1 %2, i64 3, i64 2
  %i.f = select i1 %i.d, i64 1, i64 %i.e          ; 2 uses
  br i1 %2, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.b
  %i.g = urem i8 %1, 100
end_hunk_0
begin_hunk_1_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE0_clEh:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i8 %1, 10
  %6 = icmp ugt i8 %1, 99                         ; 2 uses
  %i.d = select i1 %6, i64 3, i64 2
  %i.e = select i1 %i.c, i64 1, i64 %i.d          ; 2 uses
  br i1 %6, label %._crit_edge.i.i.thread.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.thread.i.i:                       ; preds = %bb.b
  %i.f = urem i8 %1, 100
end_hunk_1
begin_hunk_2_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE0_clEh:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink89.i.i
  store i8 0, ptr %i.z, align 1, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.aa = load i8, ptr %.0.val, align 1, !tbaa !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !1485, !alias.scope !1530
end_hunk_2
begin_hunk_3_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE0_clEh:bb.a

bb.e:                                             ; preds = %_ZN5arrow8internal7ToCharsIhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_.exit
  %i.ad = icmp ult i8 %i.aa, 10
  %7 = icmp ugt i8 %i.aa, 99                      ; 2 uses
  %i.ae = select i1 %7, i64 3, i64 2
  %i.af = select i1 %i.ad, i64 1, i64 %i.ae       ; 2 uses
  br i1 %7, label %._crit_edge.i.i.thread.i.i11, label %._crit_edge.i.i.i.i7

._crit_edge.i.i.thread.i.i11:                     ; preds = %bb.e
  %i.ag = urem i8 %i.aa, 100
end_hunk_3
begin_hunk_4_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE0_clEh:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sink89.i.i10
  store i8 0, ptr %i.ba, align 1, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bb = load i8, ptr %.8.val, align 1, !tbaa !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.bc, ptr %5, align 8, !tbaa !1485, !alias.scope !1533
end_hunk_4
begin_hunk_5_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_9UInt8TypeEhEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUlhE0_clEh:bb.a

bb.i:                                             ; preds = %bb.h
  %i.be = icmp ult i8 %i.bb, 10
  %8 = icmp ugt i8 %i.bb, 99                      ; 2 uses
  %i.bf = select i1 %8, i64 3, i64 2
  %i.bg = select i1 %i.be, i64 1, i64 %i.bf       ; 2 uses
  br i1 %8, label %._crit_edge.i.i.thread.i.i17, label %._crit_edge.i.i.i.i13

._crit_edge.i.i.thread.i.i17:                     ; preds = %bb.i
  %i.bh = urem i8 %i.bb, 100
end_hunk_5
