inline.NumInlined: 851
inline.NumDeleted: 469
begin_hunk_0_@_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EEixEm:bb.a
_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

end_hunk_0
begin_hunk_1_@_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EE5frontEv:bb.a
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !180  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !186    ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
end_hunk_1
begin_hunk_2_@_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EE5frontEv:bb.a
_ZN6duckdb6vectorINS_10shared_ptrINS_9CSVBufferELb1EEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e
}

end_hunk_2
