inline.NumInlined: 1310
inline.NumDeleted: 761
begin_hunk_0_@_ZN6duckdb15LambdaFunctions18ListFilterFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %6 = alloca %"class.duckdb::vector.24", align 8 ; 8 uses
  %7 = alloca %"struct.duckdb::LambdaFunctions::ColumnInfo", align 8 ; 11 uses
  %8 = alloca %"struct.duckdb::LambdaExecuteInfo", align 8 ; 16 uses
  %9 = alloca %"struct.duckdb::ListFilterInfo", align 8 ; 17 uses
  %10 = alloca %"class.duckdb::Vector", align 8   ; 9 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb15LambdaFunctions18ListFilterFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %.not181.i, label %_ZN6duckdb17ListFilterFunctor17ReserveNewLengthsERNS_6vectorImLb1ESaImEEEm.exit.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i: ; preds = %bb.q
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ai = shl nuw nsw i64 %i.af, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #22
          to label %.noexc81.i unwind label %bb.z ; 4 uses

.noexc81.i:                                       ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i
  %14 = load ptr, ptr %9, align 8, !tbaa !272     ; 4 uses
  %15 = load ptr, ptr %13, align 8, !tbaa !274
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %14 to i64
  %18 = sub i64 %16, %17                          ; 2 uses
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i.i

20:                                               ; preds = %.noexc81.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %14, i64 %18, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i.i: ; preds = %20, %.noexc81.i
  %.not.i8.i.i.i = icmp eq ptr %14, null
  br i1 %.not.i8.i.i.i, label %.noexc81.i.a, label %21

21:                                               ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %14) #21
  br label %.noexc81.i.a

.noexc81.i.a:                                     ; preds = %21, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i.i
  store ptr %i.aj, ptr %9, align 8, !tbaa !272
  store ptr %i.aj, ptr %13, align 8, !tbaa !274
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.af
end_hunk_1
