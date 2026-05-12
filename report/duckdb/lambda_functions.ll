inline.NumInlined: 1310
inline.NumDeleted: 761
begin_hunk_0_@_ZN6duckdb15LambdaFunctions18ListFilterFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %6 = alloca %"class.duckdb::vector.24", align 8 ; 8 uses
  %7 = alloca %"struct.duckdb::LambdaFunctions::ColumnInfo", align 8 ; 11 uses
  %8 = alloca %"struct.duckdb::LambdaExecuteInfo", align 8 ; 16 uses
  %9 = alloca %"struct.duckdb::ListFilterInfo", align 8 ; 16 uses
  %10 = alloca %"class.duckdb::Vector", align 8   ; 9 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb15LambdaFunctions18ListFilterFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %.not181.i, label %_ZN6duckdb17ListFilterFunctor17ReserveNewLengthsERNS_6vectorImLb1ESaImEEEm.exit.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i: ; preds = %bb.q
  %i.ai = shl nuw nsw i64 %i.af, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #22
          to label %.noexc81.i.a unwind label %bb.z ; 3 uses

.noexc81.i.a:                                     ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.aj, ptr %9, align 8, !tbaa !272
  store ptr %i.aj, ptr %13, align 8, !tbaa !274
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.af
end_hunk_1
