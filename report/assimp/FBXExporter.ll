begin_hunk_0
; Function Attrs: mustprogress uwtable
define hidden void @_Z15WritePropDoublePK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.aiString, align 4           ; 6 uses
  %5 = alloca %struct.aiString, align 4           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %.not = icmp eq ptr %i.b, null
end_hunk_0
begin_hunk_1
  %i.g = and i64 %i.d, 4294966272
  %.not.i.i = icmp eq i64 %i.g, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.e, i32 1023 ; 3 uses
  %i.h = load ptr, ptr %2, align 8                ; 3 uses
  %i.i = zext i32 %spec.select.i.i to i64         ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 1 %i.h, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  store i8 0, ptr %i.j, align 1
  %i.k = load i32, ptr %i.b, align 8              ; 3 uses
  %.not.i3.i = icmp eq i32 %i.k, 0
  br i1 %.not.i3.i, label %_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.thread

.thread30:                                        ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
end_hunk_2
begin_hunk_3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 1 %i.h, i64 %i.i, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.i
  store i8 0, ptr %i.aa, align 1
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %7 = load ptr, ptr %6, align 8
  %wide.trip.count.i.i19 = zext i32 %i.k to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i21, %.thread30
  %indvars.iv.i.i20 = phi i64 [ 0, %.thread30 ], [ %indvars.iv.next.i.i22, %_ZNK8aiStringeqERKS_.exit.thread.i.i21 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [1028 x i8], ptr %7, i64 %indvars.iv.i.i20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.ac, %spec.select.i.i
end_hunk_3
begin_hunk_4
  %exitcond.not.i.i23 = icmp eq i64 %indvars.iv.next.i.i22, %wide.trip.count.i.i19
  br i1 %exitcond.not.i.i23, label %_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread, label %bb.f, !llvm.loop !339

_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread.critedge: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %8, i8 0, i64 1024, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %8, ptr align 1 %i.h, i64 %i.i, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %i.i
  store i8 0, ptr %9, align 1
  br label %_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread

_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread: ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i21, %_ZNK10aiMetadata3GetIfEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERT_.exit.thread.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.thread

end_hunk_4
