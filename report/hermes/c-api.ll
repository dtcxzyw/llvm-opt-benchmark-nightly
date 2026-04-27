inline.NumInlined: 358
inline.NumDeleted: 238
begin_hunk_0_@_ZN6hermes18SourceErrorManagerD2Ev:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.010.i.i) ]
  %i.ao = load i32, ptr %.010.i.i, align 4, !tbaa !3
  %switch.i.i = icmp ugt i32 %i.ao, -3
  br i1 %switch.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN6hermes18SourceErrorManagerD2Ev:bb.a
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, %.lr.ph.preheader.i.i10
  %.010.i.i13 = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16 ], [ %.pre1.i9, %.lr.ph.preheader.i.i10 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.010.i.i13) ]
  %i.bd = load i32, ptr %.010.i.i13, align 4, !tbaa !3
  %switch.i.i14 = icmp ugt i32 %i.bd, -3
  br i1 %switch.i.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, label %bb.e
end_hunk_1
begin_hunk_2_@hermes_source_map_get_full_path:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.l = zext i32 %1 to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.l ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !14, !noalias !92
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_2
