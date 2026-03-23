begin_hunk_0
          to label %51 unwind label %.loopexit.split-lp

51:                                               ; preds = %46, %42, %38
  %.not46.peel = phi i1 [ false, %38 ], [ false, %42 ], [ true, %46 ] ; 2 uses
  %.133.peel = phi i32 [ 2, %38 ], [ 2, %42 ], [ %50, %46 ] ; 2 uses
  %52 = icmp eq i32 %.133.peel, 1
  %or.cond.not.peel = and i1 %.not46.peel, %52
  %53 = load ptr, ptr %35, align 8, !tbaa !22     ; 8 uses
end_hunk_0
begin_hunk_1

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel: ; preds = %67, %66, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel, %51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %or.cond.not.peel, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.039 = phi i64 [ %78, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %39, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ] ; 4 uses
  %75 = load i64, ptr %8, align 8, !tbaa !44      ; 2 uses
  %76 = icmp ult i64 %.039, %75
  br i1 %76, label %77, label %.thread82

77:                                               ; preds = %.peel.next
  %78 = add i64 %.039, %.sroa.speculated51        ; 2 uses
end_hunk_1
begin_hunk_2
91:                                               ; preds = %85, %81, %77
  %.not46 = phi i1 [ false, %77 ], [ false, %81 ], [ true, %85 ]
  %.133 = phi i32 [ 1, %77 ], [ 1, %81 ], [ %89, %85 ] ; 2 uses
  %92 = icmp eq i32 %.133, 1
  %or.cond.not = and i1 %.not46, %92
  %93 = load ptr, ptr %35, align 8, !tbaa !22     ; 8 uses
end_hunk_2
begin_hunk_3

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %91, %99, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %114
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %or.cond.not, label %.peel.next, label %.loopexit.thread85, !llvm.loop !45

.thread:                                          ; preds = %6, %4
  %115 = zext i1 %.not to i32
  br label %.thread82

.loopexit:                                        ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel
  %116 = icmp eq i32 %.133.peel, 0
  %. = select i1 %116, i32 0, i32 2
  %spec.select93 = select i1 %.not46.peel, i32 %., i32 1
  br label %.thread82

.loopexit.thread85:                               ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %117 = icmp eq i32 %.133, 0
  %spec.select = select i1 %117, i32 0, i32 2
  br label %.thread82

.thread82:                                        ; preds = %.peel.next, %.loopexit, %.loopexit.thread85, %_ZNK22photos_editing_formats8image_io9DataRange8ContainsERKS1_.exit.thread, %.thread59, %.thread
  %118 = phi i32 [ %115, %.thread ], [ %27, %.thread59 ], [ %spec.select93, %.loopexit ], [ 1, %_ZNK22photos_editing_formats8image_io9DataRange8ContainsERKS1_.exit.thread ], [ %spec.select, %.loopexit.thread85 ], [ 2, %.peel.next ]
  ret i32 %118
}

declare i32 @__gxx_personality_v0(...)
end_hunk_3
