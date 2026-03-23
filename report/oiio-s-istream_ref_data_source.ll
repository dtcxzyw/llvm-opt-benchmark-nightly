begin_hunk_0
          to label %51 unwind label %.loopexit.split-lp

51:                                               ; preds = %46, %42, %38
  %.not46.peel = phi i1 [ false, %38 ], [ false, %42 ], [ true, %46 ]
  %.133.peel = phi i32 [ 2, %38 ], [ 2, %42 ], [ %50, %46 ] ; 2 uses
  %.1.peel = phi i8 [ 0, %38 ], [ 0, %42 ], [ 1, %46 ] ; 2 uses
  %52 = icmp eq i32 %.133.peel, 1
  %or.cond.not.peel = and i1 %.not46.peel, %52
  %53 = load ptr, ptr %35, align 8, !tbaa !22     ; 8 uses
end_hunk_0
begin_hunk_1

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel: ; preds = %67, %66, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.peel, %51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %or.cond.not.peel, label %.peel.next, label %117

.peel.next:                                       ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.039 = phi i64 [ %78, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %39, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ] ; 4 uses
  %.031 = phi i8 [ %.1, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.1.peel, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ] ; 3 uses
  %75 = load i64, ptr %8, align 8, !tbaa !44      ; 2 uses
  %76 = icmp ult i64 %.039, %75
  br i1 %76, label %77, label %.loopexit

77:                                               ; preds = %.peel.next
  %78 = add i64 %.039, %.sroa.speculated51        ; 2 uses
end_hunk_1
begin_hunk_2
91:                                               ; preds = %85, %81, %77
  %.not46 = phi i1 [ false, %77 ], [ false, %81 ], [ true, %85 ]
  %.133 = phi i32 [ 1, %77 ], [ 1, %81 ], [ %89, %85 ] ; 2 uses
  %.1 = phi i8 [ %.031, %77 ], [ %.031, %81 ], [ 1, %85 ] ; 2 uses
  %92 = icmp eq i32 %.133, 1
  %or.cond.not = and i1 %.not46, %92
  %93 = load ptr, ptr %35, align 8, !tbaa !22     ; 8 uses
end_hunk_2
begin_hunk_3

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %91, %99, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %114
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %or.cond.not, label %.peel.next, label %.loopexit, !llvm.loop !45

.thread:                                          ; preds = %6, %4
  %115 = zext i1 %.not to i32
  br label %.thread82

.loopexit:                                        ; preds = %.peel.next, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.234.ph = phi i32 [ 1, %.peel.next ], [ %.133, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.2.ph = phi i8 [ %.031, %.peel.next ], [ %.1, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %116 = freeze i8 %.2.ph
  br label %117

117:                                              ; preds = %.loopexit, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel
  %.234 = phi i32 [ %.234.ph, %.loopexit ], [ %.133.peel, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ]
  %.2 = phi i8 [ %116, %.loopexit ], [ %.1.peel, %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.peel ]
  %118 = trunc i8 %.2 to i1
  %119 = icmp eq i32 %.234, 0
  %. = select i1 %119, i32 0, i32 2
  %spec.select = select i1 %118, i32 %., i32 1
  br label %.thread82

.thread82:                                        ; preds = %117, %_ZNK22photos_editing_formats8image_io9DataRange8ContainsERKS1_.exit.thread, %.thread59, %.thread
  %120 = phi i32 [ %115, %.thread ], [ %27, %.thread59 ], [ %spec.select, %117 ], [ 1, %_ZNK22photos_editing_formats8image_io9DataRange8ContainsERKS1_.exit.thread ]
  ret i32 %120
}

declare i32 @__gxx_personality_v0(...)
end_hunk_3
