begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i32 } @_ZNK6icu_786number18ScientificNotation21withMinExponentDigitsEi(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.09 = alloca %"class.icu_78::number::Notation", align 8 ; 4 uses
  %i.a = add i32 %1, -1
  %or.cond = icmp ult i32 %i.a, 999
  br i1 %or.cond, label %bb.b, label %2

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i16, ptr %i.b, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.0.copyload to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %i.d = shl nuw nsw i32 %1, 16
  %.sroa.4.0.insert.shift = zext nneg i32 %i.d to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext i16 %i.c to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  %.sroa.09.4..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.09, i64 4
  store i64 %.sroa.0.0.insert.insert, ptr %.sroa.09.4..sroa_idx16, align 4
  br label %bb.c

2:                                                ; preds = %bb.a
  %.sroa.09.4..sroa_idx17 = getelementptr inbounds nuw i8, ptr %.sroa.09, i64 4
  store i32 65810, ptr %.sroa.09.4..sroa_idx17, align 4
  br label %bb.c

bb.c:                                             ; preds = %2, %bb.b
  %.sroa.09.8..sroa.09.8..sroa.09.8..sroa.2.0.copyload = phi i32 [ %.sroa.5.0.copyload, %bb.b ], [ undef, %2 ]
  %.sink = phi i32 [ 0, %bb.b ], [ 3, %2 ]
  store i32 %.sink, ptr %.sroa.09, align 8
  %.sroa.09.0..sroa.09.0..sroa.09.0..sroa.09.0..sroa.0.0.copyload = load i64, ptr %.sroa.09, align 8
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.09.0..sroa.09.0..sroa.09.0..sroa.09.0..sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.09.8..sroa.09.8..sroa.09.8..sroa.2.0.copyload, 1
  ret { i64, i32 } %.fca.1.insert
}
end_hunk_0
