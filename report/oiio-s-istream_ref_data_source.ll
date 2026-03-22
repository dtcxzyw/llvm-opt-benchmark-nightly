begin_hunk_0
  %25 = tail call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %14) ; [#uses=1 type=i32]
  %26 = icmp eq i32 %25, 0                        ; [#uses=1 type=i1]
  %27 = select i1 %26, i32 0, i32 2               ; [#uses=1 type=i32]
  br label %.loopexit.thread.thread83

_ZNK22photos_editing_formats8image_io9DataRange8ContainsERKS1_.exit.thread: ; preds = %_ZNK22photos_editing_formats8image_io9DataRange8ContainsERKS1_.exit, %15, %11
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=1 type=ptr]
end_hunk_0
begin_hunk_1
  %35 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; [#uses=2 type=ptr]
  %36 = load i64, ptr %8, align 8, !tbaa !44      ; [#uses=2 type=i64]
  %37 = icmp ult i64 %34, %36                     ; [#uses=1 type=i1]
  br i1 %37, label %38, label %.loopexit.thread.thread83

38:                                               ; preds = %_ZNK22photos_editing_formats8image_io9DataRange8ContainsERKS1_.exit.thread
  %39 = add i64 %34, %.sroa.speculated51          ; [#uses=2 type=i64]
end_hunk_1
begin_hunk_2
          to label %51 unwind label %.loopexit.split-lp ; [#uses=1 type=i32]

51:                                               ; preds = %46, %42, %38
  %.not46.peel = phi i1 [ false, %38 ], [ false, %42 ], [ true, %46 ] ; [#uses=2 type=i1]
  %.133.peel = phi i32 [ 2, %38 ], [ 2, %42 ], [ %50, %46 ] ; [#uses=2 type=i32]
  %52 = icmp eq i32 %.133.peel, 1                 ; [#uses=1 type=i1]
  %or.cond.not.peel = and i1 %.not46.peel, %52    ; [#uses=1 type=i1]
  %53 = load ptr, ptr %35, align 8, !tbaa !22     ; [#uses=8 type=ptr]
end_hunk_2
begin_hunk_3

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel: ; preds = %67, %66, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel, %51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %or.cond.not.peel, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.039 = phi i64 [ %78, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %39, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ] ; [#uses=4 type=i64]
  %75 = load i64, ptr %8, align 8, !tbaa !44      ; [#uses=2 type=i64]
  %76 = icmp ult i64 %.039, %75                   ; [#uses=1 type=i1]
  br i1 %76, label %77, label %.loopexit.thread.thread83

77:                                               ; preds = %.peel.next
  %78 = add i64 %.039, %.sroa.speculated51        ; [#uses=2 type=i64]
end_hunk_3
begin_hunk_4
91:                                               ; preds = %85, %81, %77
  %.not46 = phi i1 [ false, %77 ], [ false, %81 ], [ true, %85 ] ; [#uses=1 type=i1]
  %.133 = phi i32 [ 1, %77 ], [ 1, %81 ], [ %89, %85 ] ; [#uses=2 type=i32]
  %92 = icmp eq i32 %.133, 1                      ; [#uses=1 type=i1]
  %or.cond.not = and i1 %.not46, %92              ; [#uses=1 type=i1]
  %93 = load ptr, ptr %35, align 8, !tbaa !22     ; [#uses=8 type=ptr]
end_hunk_4
begin_hunk_5

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %91, %99, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %114
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %or.cond.not, label %.peel.next, label %.loopexit.thread85, !llvm.loop !45

.thread:                                          ; preds = %6, %4
  %115 = zext i1 %.not to i32                     ; [#uses=1 type=i32]
  br label %.loopexit.thread.thread83

.loopexit:                                        ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel
  %116 = icmp eq i32 %.133.peel, 0                ; [#uses=1 type=i1]
  %. = select i1 %116, i32 0, i32 2               ; [#uses=1 type=i32]
  %spec.select93 = select i1 %.not46.peel, i32 %., i32 1 ; [#uses=1 type=i32]
  br label %.loopexit.thread.thread83

.loopexit.thread85:                               ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %117 = icmp eq i32 %.133, 0                     ; [#uses=1 type=i1]
  %spec.select = select i1 %117, i32 0, i32 2     ; [#uses=1 type=i32]
  br label %.loopexit.thread.thread83

.loopexit.thread.thread83:                        ; preds = %.peel.next, %.loopexit, %.loopexit.thread85, %_ZNK22photos_editing_formats8image_io9DataRange8ContainsERKS1_.exit.thread, %.thread59, %.thread
  %118 = phi i32 [ %115, %.thread ], [ %27, %.thread59 ], [ %spec.select93, %.loopexit ], [ 1, %_ZNK22photos_editing_formats8image_io9DataRange8ContainsERKS1_.exit.thread ], [ %spec.select, %.loopexit.thread85 ], [ 2, %.peel.next ] ; [#uses=1 type=i32]
  ret i32 %118
}

; [#uses=8]
end_hunk_5
