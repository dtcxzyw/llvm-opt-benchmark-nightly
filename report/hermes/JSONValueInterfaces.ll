inline.NumInlined: 383
inline.NumDeleted: 296
begin_hunk_0_@_ZN6hermes18SourceErrorManagerD2Ev:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.010.i.i) ]
  %i.ao = load i32, ptr %.010.i.i, align 4, !tbaa !4
  %switch.i.i = icmp ugt i32 %i.ao, -3
  br i1 %switch.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN6hermes18SourceErrorManagerD2Ev:bb.a
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, %.lr.ph.preheader.i.i10
  %.010.i.i13 = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16 ], [ %.pre1.i9, %.lr.ph.preheader.i.i10 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.010.i.i13) ]
  %i.bd = load i32, ptr %.010.i.i13, align 4, !tbaa !4
  %switch.i.i14 = icmp ugt i32 %i.bd, -3
  br i1 %switch.i.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, label %bb.e
end_hunk_1
begin_hunk_2_@_ZN8facebook6hermes3cdp10jsonValsEQEPKN6hermes6parser9JSONValueES6_:bb.a
  %.06483 = phi ptr [ %i.j, %.lr.ph84 ], [ %i.n, %bb.f ] ; 2 uses
  %i.o = load ptr, ptr %.06483, align 8, !tbaa !121
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !123, !nonnull !115, !noundef !115 ; 2 uses
  %.sroa.027.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !128 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !120 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8facebook6hermes3cdp10jsonValsEQEPKN6hermes6parser9JSONValueES6_:bb.a

bb.l:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !123, !nonnull !115, !noundef !115 ; 2 uses
  %.sroa.09.0.copyload = load ptr, ptr %i.au, align 8, !tbaa !128
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.410.0.copyload = load i64, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !120 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !123, !nonnull !115, !noundef !115 ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !120
end_hunk_3
begin_hunk_4_@_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE:bb.a
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123, !nonnull !115, !noundef !115 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !120 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE:bb.a
bb.c:                                             ; preds = %_ZSt11lower_boundIPKPN6hermes6parser10JSONStringEN4llvh9StringRefENS1_15JSONHiddenClass14NameComparatorEET_SA_SA_RKT0_T1_.exit
  %i.u = load ptr, ptr %.0.lcssa.i.i, align 8, !tbaa !121
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123, !nonnull !115, !noundef !115 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !128
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !120
end_hunk_5
