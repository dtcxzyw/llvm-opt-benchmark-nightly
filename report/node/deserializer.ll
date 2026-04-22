inline.NumInlined: 3442
inline.NumDeleted: 1307
begin_hunk_0
@.str.76 = private unnamed_addr constant [21 x i8] c"%*sHotObject [%u] : \00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"%*sFixedRawData [%u] :\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"%*sFixedRepeat [%u] : \00", align 1
@switch.table._ZN2v88internal12DeserializerINS0_12LocalIsolateEE11SynchronizeENS0_22VisitorSynchronization7SyncTagE = private unnamed_addr constant [27 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], align 8
@switch.table._ZN2v88internal12DeserializerINS0_12LocalIsolateEE13ReadNewObjectINS0_24SlotAccessorForRootSlotsEEEihT_ = private unnamed_addr constant [4 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], align 8

@_ZN2v88internal12DeserializerINS0_7IsolateEED1Ev = weak_odr hidden unnamed_addr alias void (ptr), ptr @_ZN2v88internal12DeserializerINS0_7IsolateEED2Ev
@_ZN2v88internal12DeserializerINS0_7IsolateEEC1EPS2_NS_4base6VectorIKhEEjbb = weak_odr hidden unnamed_addr alias void (ptr, ptr, ptr, i64, i32, i1, i1), ptr @_ZN2v88internal12DeserializerINS0_7IsolateEEC2EPS2_NS_4base6VectorIKhEEjbb
end_hunk_0
begin_hunk_1_@_ZN2v88internal12DeserializerINS0_7IsolateEE11SynchronizeENS0_22VisitorSynchronization7SyncTagE:bb.a

switch.lookup:                                    ; preds = %bb.d
  %i.m = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal12DeserializerINS0_12LocalIsolateEE11SynchronizeENS0_22VisitorSynchronization7SyncTagE, i64 %i.m
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.e

end_hunk_1
begin_hunk_2_@_ZN2v88internal12DeserializerINS0_7IsolateEE22ReadSingleBytecodeDataINS0_25SlotAccessorForHeapObjectEEEihT_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal12DeserializerINS0_12LocalIsolateEE13ReadNewObjectINS0_24SlotAccessorForRootSlotsEEEihT_, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.44, i32 noundef %i.g, ptr noundef nonnull @.str.37, ptr noundef nonnull %switch.load) #18, !inline_history !53
  %i.i = load i32, ptr %i.f, align 4
end_hunk_2
begin_hunk_3_@_ZN2v88internal12DeserializerINS0_12LocalIsolateEE22ReadSingleBytecodeDataINS0_25SlotAccessorForHeapObjectEEEihT_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal12DeserializerINS0_12LocalIsolateEE13ReadNewObjectINS0_24SlotAccessorForRootSlotsEEEihT_, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.44, i32 noundef %i.g, ptr noundef nonnull @.str.37, ptr noundef nonnull %switch.load) #18, !inline_history !159
  %i.i = load i32, ptr %i.f, align 4
end_hunk_3
begin_hunk_4_@_ZN2v88internal12DeserializerINS0_7IsolateEE13ReadNewObjectINS0_21SlotAccessorForHandleIS2_EEEEihT_:bb.a

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal12DeserializerINS0_12LocalIsolateEE13ReadNewObjectINS0_24SlotAccessorForRootSlotsEEEihT_, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117SnapshotSpaceNameENS0_13SnapshotSpaceE.exit

end_hunk_4
begin_hunk_5_@_ZN2v88internal12DeserializerINS0_7IsolateEE13ReadNewObjectINS0_24SlotAccessorForRootSlotsEEEihT_:bb.a

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal12DeserializerINS0_12LocalIsolateEE13ReadNewObjectINS0_24SlotAccessorForRootSlotsEEEihT_, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117SnapshotSpaceNameENS0_13SnapshotSpaceE.exit

end_hunk_5
begin_hunk_6_@_ZN2v88internal12DeserializerINS0_12LocalIsolateEE13ReadNewObjectINS0_21SlotAccessorForHandleIS2_EEEEihT_:bb.a

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal12DeserializerINS0_12LocalIsolateEE13ReadNewObjectINS0_24SlotAccessorForRootSlotsEEEihT_, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117SnapshotSpaceNameENS0_13SnapshotSpaceE.exit

end_hunk_6
