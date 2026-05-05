inline.NumInlined: 71
inline.NumDeleted: 38
begin_hunk_0_@_ZN2cl16MemorySizeParser5parseERN4llvh2cl6OptionENS1_9StringRefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_10MemorySizeE:bb.a
  %i.c = call i64 @__isoc23_strtol(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 0) #8
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  store i32 %i.d, ptr %5, align 4, !tbaa !13
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %bb.b, label %.preheader.outer.preheader

end_hunk_0
begin_hunk_1_@_ZN2cl16MemorySizeParser5parseERN4llvh2cl6OptionENS1_9StringRefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_10MemorySizeE:bb.a
  br label %.preheader.outer, !llvm.loop !53

.preheader.outer:                                 ; preds = %.preheader.outer.preheader, %select.unfold.sink.split
  %lsr.iv = phi ptr [ %scevgep, %.preheader.outer.preheader ], [ %scevgep137, %select.unfold.sink.split ] ; 6 uses
  %.not.ph = phi i1 [ false, %select.unfold.sink.split ], [ true, %.preheader.outer.preheader ]
  %.ph = phi i1 [ true, %select.unfold.sink.split ], [ false, %.preheader.outer.preheader ]
  %.ph96 = phi ptr [ %scevgep138.a, %select.unfold.sink.split ], [ %i.e, %.preheader.outer.preheader ]
  %.ph97 = phi i32 [ %i.ed, %select.unfold.sink.split ], [ %i.d, %.preheader.outer.preheader ]
  %scevgep138 = getelementptr i8, ptr %lsr.iv, i64 -1
  %scevgep138.a = getelementptr inbounds nuw i8, ptr %.ph96, i64 1 ; 4 uses
  store ptr %lsr.iv, ptr %i.a, align 8, !tbaa !15
  %i.ee = load i8, ptr %scevgep138, align 1, !tbaa !24 ; 2 uses
  switch i8 %i.ee, label %.loopexit.loopexit125 [
    i8 0, label %.thread.loopexit
    i8 105, label %bb.t
end_hunk_1
begin_hunk_2_@_ZN2cl16MemorySizeParser5parseERN4llvh2cl6OptionENS1_9StringRefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_10MemorySizeE:bb.a
  br i1 %.ph.lcssa134, label %.preheader.outer.peel.newph, label %select.unfold88

.preheader.outer.peel.newph.loopexitsplit:        ; preds = %bb.s
  %lsr.iv.lcssa143.a = phi ptr [ %scevgep138.a, %bb.s ]
  %.be.peel.ph.ph = phi i1 [ false, %bb.s ]
  %.be98.peel.ph.ph = phi i1 [ true, %bb.s ]
  br label %.preheader.outer.peel.newph.loopexit

.preheader.outer..preheader.outer.peel.newph.loopexit_crit_edge: ; preds = %.preheader.outer, %.preheader.outer
  %lsr.iv.lcssa141 = phi ptr [ %lsr.iv, %.preheader.outer ], [ %lsr.iv, %.preheader.outer ]
  %split = phi ptr [ %scevgep138.a, %.preheader.outer ], [ %scevgep138.a, %.preheader.outer ] ; 0 uses
  %split139 = phi i1 [ true, %.preheader.outer ], [ true, %.preheader.outer ]
  %split140 = phi i1 [ false, %.preheader.outer ], [ false, %.preheader.outer ]
  br label %.preheader.outer.peel.newph.loopexit

.preheader.outer.peel.newph.loopexit:             ; preds = %.preheader.outer.peel.newph.loopexitsplit, %.preheader.outer..preheader.outer.peel.newph.loopexit_crit_edge
  %.lcssa131 = phi ptr [ %lsr.iv.lcssa141, %.preheader.outer..preheader.outer.peel.newph.loopexit_crit_edge ], [ %lsr.iv.lcssa143.a, %.preheader.outer.peel.newph.loopexitsplit ]
  %.be.peel.ph = phi i1 [ %split139, %.preheader.outer..preheader.outer.peel.newph.loopexit_crit_edge ], [ %.be.peel.ph.ph, %.preheader.outer.peel.newph.loopexitsplit ]
  %.be98.peel.ph = phi i1 [ %split140, %.preheader.outer..preheader.outer.peel.newph.loopexit_crit_edge ], [ %.be98.peel.ph.ph, %.preheader.outer.peel.newph.loopexitsplit ]
  br label %.preheader.outer.peel.newph

.preheader.outer.peel.newph:                      ; preds = %.preheader.outer.peel.newph.loopexit, %bb.t
end_hunk_2
