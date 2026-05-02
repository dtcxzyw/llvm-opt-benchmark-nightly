inline.NumInlined: 10428
inline.NumDeleted: 4080
begin_hunk_0_@_ZNK8facebook5velox6common10BytesRange9mergeWithEPKNS1_6FilterE:bb.a
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !238, !range !53, !noundef !57 ; 2 uses
  %i.bd = icmp eq i32 %.0.i, 0
  %i.be = or i8 %i.bc, %i.ba
  %i.bf = icmp sgt i32 %.0.i, 0
  %.v = select i1 %i.bf, i8 %i.ba, i8 %i.bc
  %.v81 = select i1 %i.bd, i8 %i.be, i8 %.v       ; 2 uses
  store i8 %.v81, ptr %i.e, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox6common10BytesRange9mergeWithEPKNS1_6FilterE:bb.a
  br label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50
  %i.bh = phi i8 [ %i.ak, %bb.i ], [ %i.af, %bb.f ], [ %.v81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50 ] ; 2 uses
  %i.bi = phi i8 [ 0, %bb.i ], [ %i.ad, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit50 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !239, !range !53, !noundef !57
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox6common10BytesRange9mergeWithEPKNS1_6FilterE:bb.a
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !240, !range !53, !noundef !57 ; 2 uses
  %i.cm = icmp eq i32 %.0.i58, 0
  %i.cn = or i8 %i.cl, %i.cj
  %.v81.a = select i1 %i.cg, i8 %i.cj, i8 %i.cl
  %.v83 = select i1 %i.cm, i8 %i.cn, i8 %.v81.a   ; 2 uses
  store i8 %.v83, ptr %i.d, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit52

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit63
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox6common10BytesRange9mergeWithEPKNS1_6FilterE:bb.a
  br label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit52: ; preds = %bb.n, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit65
  %i.cp = phi i8 [ %i.bt, %bb.n ], [ %i.bp, %bb.l ], [ %.v83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit65 ] ; 2 uses
  %i.cq = phi i8 [ 0, %bb.n ], [ %i.bn, %bb.l ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit65 ]
  %i.cr = or i8 %i.bi, %i.cq
  %or.cond.not = icmp eq i8 %i.cr, 0
end_hunk_3
