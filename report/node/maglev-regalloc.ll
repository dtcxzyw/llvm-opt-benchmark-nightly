inline.NumInlined: 3627
inline.NumDeleted: 1327
begin_hunk_0_@_ZN2v88internal6maglev32StraightForwardRegisterAllocator15HoistLoopSpillsEPNS1_10BasicBlockE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev32StraightForwardRegisterAllocator15HoistLoopSpillsEPNS1_10BasicBlockE:bb.a
  br i1 %i.am, label %.thread33.i.i, label %bb.f, !prof !25

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.aj ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev32StraightForwardRegisterAllocator16HoistLoopReloadsINS0_8RegisterEEEvPNS1_10BasicBlockERNS1_18RegisterFrameStateIT_EE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal6maglev32StraightForwardRegisterAllocator16HoistLoopReloadsINS0_8RegisterEEEvPNS1_10BasicBlockERNS1_18RegisterFrameStateIT_EE:bb.a
  br i1 %i.am, label %.thread33.i.i, label %bb.f, !prof !25

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.aj ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal6maglev32StraightForwardRegisterAllocator16HoistLoopReloadsINS0_11XMMRegisterEEEvPNS1_10BasicBlockERNS1_18RegisterFrameStateIT_EE:bb.a

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal6maglev32StraightForwardRegisterAllocator16HoistLoopReloadsINS0_11XMMRegisterEEEvPNS1_10BasicBlockERNS1_18RegisterFrameStateIT_EE:bb.a
  br i1 %i.am, label %.thread33.i.i, label %bb.f, !prof !25

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.aj ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal6maglev17RegallocBlockInfo16RegallocLoopInfoEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjS7_EEE10find_largeIjEENSI_8iteratorERSF_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_5
