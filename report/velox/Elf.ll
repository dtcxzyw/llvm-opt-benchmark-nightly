inline.NumInlined: 479
inline.NumDeleted: 218
begin_hunk_0_@_ZN5folly10symbolizer7ElfFile11openNoThrowEPKcRKNS1_7OptionsE:bb.a
  %i.p = load i64, ptr %i.o, align 16, !tbaa !35
  %i.q = add nsw i64 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.s = load i64, ptr %i.r, align 16, !tbaa !36  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i64 %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %4 = load <2 x i64>, ptr %3, align 16, !tbaa !36
  %5 = shufflevector <2 x i64> %4, <2 x i64> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %6 = insertelement <4 x i64> %5, i64 %i.s, i64 0
  %7 = shufflevector <4 x i64> %6, <4 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x i64> %7, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !36
  %i.u = load i8, ptr %2, align 1, !tbaa !27, !range !30, !noundef !31
  %i.v = trunc nuw i8 %i.u to i1
  %spec.select = select i1 %i.v, i32 3, i32 1
end_hunk_0
begin_hunk_1_@_ZN5folly10symbolizer7ElfFile11openNoThrowEPKcRKNS1_7OptionsE:bb.a
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !37
  %i.af = tail call i32 @munmap(ptr noundef %i.ad, i64 noundef %i.ae) #31 ; 0 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %i.y, align 8, !tbaa !18
  br label %bb.k
end_hunk_1
