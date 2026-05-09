inline.NumInlined: 881
inline.NumDeleted: 423
begin_hunk_0_@_ZN5folly12EpollBackend18eb_event_base_loopEi:bb.a
  br i1 %.not93, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly12_GLOBAL__N_19EventInfoENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_8listHookEEEEEmLb0EvE5frontEv.exit
  br i1 %.not92, label %select.unfold, label %.thread

bb.ah:                                            ; preds = %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN5folly12_GLOBAL__N_19EventInfoENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_8listHookEEEEEmLb0EvE5frontEv.exit
end_hunk_0
begin_hunk_1_@_ZN5folly12EpollBackend18eb_event_base_loopEi:bb.a
  br i1 %or.cond, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not92, label %select.unfold, label %.thread

bb.aj:                                            ; preds = %bb.ah
  %i.cv = and i32 %i.co, 1
  %.not96 = icmp eq i32 %i.cv, 0
  %or.cond111 = or i1 %.not96, %.not91
  %.271 = select i1 %or.cond111, i16 0, i16 2     ; 2 uses
  %i.cw = and i32 %i.co, 4
  %.not97 = icmp eq i32 %i.cw, 0
  %or.cond112 = or i1 %.not97, %.not92
  br i1 %or.cond112, label %select.unfold, label %.thread

.thread:                                          ; preds = %bb.aj, %bb.ag, %bb.ai
  %.372.ph.in = phi i16 [ %i.cr, %bb.ai ], [ %i.cr, %bb.ag ], [ %.271, %bb.aj ]
  %.372.ph = or disjoint i16 %.372.ph.in, 4       ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !74
  %i.cz = and i16 %i.cy, -9
  store i16 %i.cz, ptr %i.cx, align 2, !tbaa !74
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 106
  store i16 %.372.ph, ptr %i.da, align 2, !tbaa !78
  br label %bb.ak

select.unfold:                                    ; preds = %bb.ai, %bb.ag, %bb.aj
end_hunk_1
begin_hunk_2_@_ZN5folly12EpollBackend18eb_event_base_loopEi:bb.a
  br i1 %.not98, label %_ZNK5boost9intrusive9list_implINS0_8mhtraitsIN5folly12_GLOBAL__N_19EventInfoENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_8listHookEEEEEmLb0EvE5emptyEv.exit, label %bb.ak

bb.ak:                                            ; preds = %.thread, %select.unfold
  %.372134 = phi i16 [ %.372.ph, %.thread ], [ %.372, %select.unfold ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !79
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
end_hunk_2
