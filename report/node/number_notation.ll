begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i32 } @_ZNK6icu_786number18ScientificNotation21withMinExponentDigitsEi(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %or.cond = icmp ult i32 %i.a, 999
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i16, ptr %i.b, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4
  %i.d = shl nuw nsw i32 %1, 16
  %2 = zext i16 %i.c to i32
  %3 = or disjoint i32 %i.d, %2
  %.sroa.0.0.insert.ext = zext nneg i32 %3 to i64
  %4 = shl nuw nsw i64 %.sroa.0.0.insert.ext, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.09.8..sroa.09.8..sroa.09.8..sroa.2.0.copyload = phi i32 [ %.sroa.5.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.013.0.insert.insert = phi i64 [ %4, %bb.b ], [ 282651797749763, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.013.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.09.8..sroa.09.8..sroa.09.8..sroa.2.0.copyload, 1
  ret { i64, i32 } %.fca.1.insert
}
end_hunk_0
