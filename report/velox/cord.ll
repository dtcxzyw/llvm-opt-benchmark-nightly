inline.NumInlined: 1712
inline.NumDeleted: 498
begin_hunk_0_@_ZN4absl12lts_2024011614GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS0_4CordERKT0_m:bb.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.06.0.copyload, i64 %.sroa.0.0.i) ; 3 uses
  %i.dk = tail call i32 @memcmp(ptr noundef %.sroa.3.0.i, ptr noundef %.sroa.27.0.copyload, i64 noundef %.sroa.speculated) #27 ; 2 uses
  %i.dl = icmp eq i64 %.sroa.speculated, %2
  %i.dm = icmp ne i32 %i.dk, 0                    ; 2 uses
  %or.cond = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202401164Cord13GetFirstChunkERKS1_.exit
  %i.dn = tail call noundef i32 @_ZNK4absl12lts_202401164Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.06.0.copyload, ptr %.sroa.27.0.copyload, i64 noundef %.sroa.speculated, i64 noundef %2) ; 2 uses
  %isnotnull.i.i19 = icmp ne i32 %i.dn, 0
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_202401164Cord13GetFirstChunkERKS1_.exit, %bb.o
  %isnotnull.i.i19.sink = phi i1 [ %isnotnull.i.i19, %bb.o ], [ %i.dm, %_ZN4absl12lts_202401164Cord13GetFirstChunkERKS1_.exit ]
  %.lobit.neg.i.i18.sink.in = phi i32 [ %i.dn, %bb.o ], [ %i.dk, %_ZN4absl12lts_202401164Cord13GetFirstChunkERKS1_.exit ]
  %.lobit.neg.i.i18.sink = ashr i32 %.lobit.neg.i.i18.sink.in, 31
  %isnotnull.zext.i.i20 = zext i1 %isnotnull.i.i19.sink to i32
  %3 = or i32 %.lobit.neg.i.i18.sink, %isnotnull.zext.i.i20
  ret i32 %3
}

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011614GenericCompareIiNS0_4CordEEET_RKS2_RKT0_m:bb.a
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i16, i64 %.sroa.0.0.i) ; 3 uses
  %i.hu = tail call i32 @memcmp(ptr noundef %.sroa.3.0.i, ptr noundef %.sroa.3.0.i17, i64 noundef %.sroa.speculated) #27 ; 2 uses
  %i.hv = icmp eq i64 %.sroa.speculated, %2
  %i.hw = icmp ne i32 %i.hu, 0                    ; 2 uses
  %or.cond = select i1 %i.hv, i1 true, i1 %i.hw
  br i1 %or.cond, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_202401164Cord13GetFirstChunkERKS1_.exit44
  %i.hx = tail call noundef i32 @_ZNK4absl12lts_202401164Cord15CompareSlowPathERKS1_mm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.sroa.speculated, i64 noundef %2) ; 2 uses
  %isnotnull.i.i46 = icmp ne i32 %i.hx, 0
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl12lts_202401164Cord13GetFirstChunkERKS1_.exit44, %bb.ab
  %isnotnull.i.i46.sink = phi i1 [ %isnotnull.i.i46, %bb.ab ], [ %i.hw, %_ZN4absl12lts_202401164Cord13GetFirstChunkERKS1_.exit44 ]
  %.lobit.neg.i.i45.sink.in = phi i32 [ %i.hx, %bb.ab ], [ %i.hu, %_ZN4absl12lts_202401164Cord13GetFirstChunkERKS1_.exit44 ]
  %.lobit.neg.i.i45.sink = ashr i32 %.lobit.neg.i.i45.sink.in, 31
  %isnotnull.zext.i.i47 = zext i1 %isnotnull.i.i46.sink to i32
  %3 = or i32 %.lobit.neg.i.i45.sink, %isnotnull.zext.i.i47
  ret i32 %3
}

end_hunk_1
begin_hunk_2_@bcmp
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_2
