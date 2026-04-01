begin_hunk_0
  %62 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %63 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %64 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.e = icmp ult i64 %2, %3
  br i1 %i.e, label %.lr.ph, label %._crit_edge

end_hunk_0
begin_hunk_1

bb.b:                                             ; preds = %.lr.ph, %bb.fa
  %.0608 = phi i64 [ %2, %.lr.ph ], [ %i.co, %bb.fa ] ; 7 uses
  %65 = sub nuw i64 %.0608, %2
  %i.o = add i64 %65, %1                          ; 19 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
end_hunk_1
