inline.NumInlined: 479
inline.NumDeleted: 218
begin_hunk_0_@_ZN5folly10symbolizer7ElfFile11openNoThrowEPKcRKNS1_7OptionsE:bb.a
  %i.p = load i64, ptr %i.o, align 16, !tbaa !35
  %i.q = add nsw i64 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.s = load i64, ptr %i.r, align 16, !tbaa !36  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %4 = load <2 x i64>, ptr %3, align 16, !tbaa !36
  store <2 x i64> %4, ptr %i.t, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %i.s, ptr %i.u, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i64 %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !36
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store i64 %i.s, ptr %5, align 8, !tbaa !37
  %i.v = load i8, ptr %2, align 1, !tbaa !27, !range !30, !noundef !31
  %i.w = trunc nuw i8 %i.v to i1
  %spec.select = select i1 %i.w, i32 3, i32 1
end_hunk_0
begin_hunk_1_@_ZN5folly10symbolizer7ElfFile11openNoThrowEPKcRKNS1_7OptionsE:bb.a
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %5, align 8, !tbaa !37
  %i.ag = tail call i32 @munmap(ptr noundef %i.ae, i64 noundef %i.af) #31 ; 0 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %i.z, align 8, !tbaa !18
  br label %bb.k
end_hunk_1
