inline.NumInlined: 197
inline.NumDeleted: 95
begin_hunk_0_@_ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi:bb.a

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.025129 = phi i64 [ 0, %.lr.ph ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ] ; 3 uses
  %.sroa.0115.0128 = phi ptr [ %i.bq, %.lr.ph ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ] ; 2 uses
  %i.ce = load i64, ptr %i.e, align 8, !tbaa !12  ; 5 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.j, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi:bb.a
  %i.cz = load ptr, ptr %i.x, align 8, !tbaa !62, !nonnull !63, !align !64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !93
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.025129 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !12
  %i.df = icmp eq i64 %i.de, 0
end_hunk_1
