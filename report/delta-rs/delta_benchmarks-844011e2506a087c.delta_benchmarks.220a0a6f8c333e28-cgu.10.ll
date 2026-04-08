inline.NumInlined: 5211
inline.NumDeleted: 2104
begin_hunk_0_@_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %.sroa.01.019.i.i = phi i64 [ %i.au, %.lr.ph.i.i ], [ %i.an, %bb.h ] ; 2 uses
  %.sroa.05.018.i.i = phi i64 [ %i.at, %.lr.ph.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.ao = lshr i64 %.sroa.01.019.i.i, 1           ; 2 uses
  %i.ap = add nuw i64 %i.ao, %.sroa.05.018.i.i    ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.ap
  %.val16.i.i = load double, ptr %i.ar, align 8, !alias.scope !8041, !noalias !8044, !noundef !8
  %i.as = fcmp ogt double %.val16.i.i, %i.ae
  %i.at = select i1 %i.as, i64 %.sroa.05.018.i.i, i64 %i.ap, !unpredictable !8 ; 2 uses
  %i.au = sub i64 %.sroa.01.019.i.i, %i.ao        ; 2 uses
  %i.av = icmp ugt i64 %i.au, 1
  br i1 %i.av, label %.lr.ph.i.i, label %._crit_edge.i.i

end_hunk_0
