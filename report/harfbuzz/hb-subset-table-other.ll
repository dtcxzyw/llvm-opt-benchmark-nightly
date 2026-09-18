Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN2OT4hdmx9serializeI13hb_map_iter_tI15hb_range_iter_tIjjEZNKS0_6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELS9_0EEEbP22hb_serialize_context_tjSC_10hb_array_tIK9hb_pair_tIjjEEj:bb.a
  br i1 %i.ap, label %.lr.ph.split.us, label %.lr.ph.split, !prof !74

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not19.i.not, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %.promoted108 = load i32, ptr %i.a, align 4, !tbaa !150
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit.us.us.us

_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit.us.us.us: ; preds = %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us.us, %.lr.ph.split.us.split.us
  %i.aq = phi i32 [ %.promoted108, %.lr.ph.split.us.split.us ], [ %i.ar, %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us.us ] ; 2 uses
  %.sroa.050.077.us.us.us = phi i32 [ %.sroa.057.0.copyload, %.lr.ph.split.us.split.us ], [ %i.as, %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us.us ]
  %.not11.i.i.i14.us.us.us = icmp eq i32 %i.aq, 0
  br i1 %.not11.i.i.i14.us.us.us, label %select.unfold.sink.split.i.us.us.us, label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us.us, !prof !175

select.unfold.sink.split.i.us.us.us:              ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit.us.us.us
  store i32 1, ptr %i.a, align 4, !tbaa !150
  br label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us.us

_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us.us: ; preds = %select.unfold.sink.split.i.us.us.us, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit.us.us.us
  %i.ar = phi i32 [ 1, %select.unfold.sink.split.i.us.us.us ], [ %i.aq, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit.us.us.us ]
  %i.as = add i32 %.sroa.050.077.us.us.us, %i.u   ; 2 uses
  %.not.us.us.us = icmp eq i32 %i.as, %.sroa.458.0.copyload
  br i1 %.not.us.us.us, label %._crit_edge, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit.us.us.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %i.am, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split, !prof !74

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %.promoted = load i32, ptr %i.a, align 4, !tbaa !150
  br label %.thread.i.us.us

.thread.i.us.us:                                  ; preds = %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us84, %.lr.ph.split.us.split.split.us
  %i.at = phi i32 [ %.promoted, %.lr.ph.split.us.split.split.us ], [ %i.au, %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us84 ] ; 2 uses
  %.sroa.050.077.us.us78 = phi i32 [ %.sroa.057.0.copyload, %.lr.ph.split.us.split.split.us ], [ %i.av, %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us84 ]
  %.not11.i.i.i14.us.us82 = icmp eq i32 %i.at, 0
  br i1 %.not11.i.i.i14.us.us82, label %select.unfold.sink.split.i.us.us83, label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us84, !prof !175

select.unfold.sink.split.i.us.us83:               ; preds = %.thread.i.us.us
  store i32 1, ptr %i.a, align 4, !tbaa !150
  br label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us84

_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us84: ; preds = %select.unfold.sink.split.i.us.us83, %.thread.i.us.us
  %i.au = phi i32 [ 1, %select.unfold.sink.split.i.us.us83 ], [ %i.at, %.thread.i.us.us ]
  %i.av = add i32 %.sroa.050.077.us.us78, %i.u    ; 2 uses
  %.not.us.us87 = icmp eq i32 %i.av, %.sroa.458.0.copyload
  br i1 %.not.us.us87, label %._crit_edge, label %.thread.i.us.us

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  br i1 %.not.i.i.i, label %.thread.i.us.us88, label %.thread.i.us, !prof !74

.thread.i.us.us88:                                ; preds = %.lr.ph.split.us.split.split, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us.us98
  %.sroa.050.077.us.us89 = phi i32 [ %i.ay, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us.us98 ], [ %.sroa.057.0.copyload, %.lr.ph.split.us.split.split ]
  %i.aw = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 0) #15 ; 2 uses
  %.not22.i.us.us.not = icmp eq ptr %i.aw, null
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !150
  %.not11.i.i.i14.us.us94 = icmp eq i32 %i.ax, 0
  br i1 %.not11.i.i.i14.us.us94, label %select.unfold.sink.split.i.us.us95, label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us96, !prof !175

select.unfold.sink.split.i.us.us95:               ; preds = %.thread.i.us.us88
  store i32 1, ptr %i.a, align 4, !tbaa !150
  br label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us96

_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us96: ; preds = %select.unfold.sink.split.i.us.us95, %.thread.i.us.us88
  br i1 %.not22.i.us.us.not, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us.us98, label %bb.g

bb.g:                                             ; preds = %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us96
  tail call void @hb_free(ptr noundef nonnull %i.aw) #15
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us.us98

_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us.us98: ; preds = %bb.g, %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us96
  %i.ay = add i32 %.sroa.050.077.us.us89, %i.u    ; 2 uses
  %.not.us.us99 = icmp eq i32 %i.ay, %.sroa.458.0.copyload
  br i1 %.not.us.us99, label %._crit_edge, label %.thread.i.us.us88

.thread.i.us:                                     ; preds = %.lr.ph.split.us.split.split, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us
  %.sroa.050.077.us = phi i32 [ %i.bb, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us ], [ %.sroa.057.0.copyload, %.lr.ph.split.us.split.split ]
  %i.az = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ao) #15 ; 3 uses
  %.not22.i.us.not = icmp eq ptr %i.az, null      ; 2 uses
  br i1 %.not22.i.us.not, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit.us, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit.us, !prof !158

_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit.us: ; preds = %.thread.i.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr readonly align 1 %4, i64 %i.ao, i1 false), !alias.scope !2678
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit.us

_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit.us: ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit.us, %.thread.i.us
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !150
  %.not11.i.i.i14.us = icmp eq i32 %i.ba, 0
  br i1 %.not11.i.i.i14.us, label %select.unfold.sink.split.i.us, label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us, !prof !175

select.unfold.sink.split.i.us:                    ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit.us
  store i32 1, ptr %i.a, align 4, !tbaa !150
  br label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us

_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us: ; preds = %select.unfold.sink.split.i.us, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit.us
  br i1 %.not22.i.us.not, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us, label %bb.h

bb.h:                                             ; preds = %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us
  tail call void @hb_free(ptr noundef nonnull %i.az) #15
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us

_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us: ; preds = %bb.h, %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us
  %i.bb = add i32 %.sroa.050.077.us, %i.u         ; 2 uses
  %.not.us = icmp eq i32 %i.bb, %.sroa.458.0.copyload
  br i1 %.not.us, label %._crit_edge, label %.thread.i.us

._crit_edge:                                      ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit.us.us98, %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us84, %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit.us.us.us, %_ZNK9hb_iter_tI13hb_map_iter_tI15hb_range_iter_tIjjEZNK2OT4hdmx6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELPv0EE9hb_pair_tIjS0_I17hb_sorted_array_tIKSB_IjjEEZZNKS4_6subsetES6_ENKS7_clEjEUlSD_E_LS8_0ELS9_0EEEE3lenEv.exit
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !150
  %.not.i = icmp eq i32 %i.bc, 0
  br label %select.unfold

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit
  %.sroa.050.077 = phi i32 [ %i.cx, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit ], [ %.sroa.057.0.copyload, %.lr.ph ] ; 2 uses
  %i.bd = load i32, ptr %i.ak, align 1, !tbaa !178, !noalias !2679
  %i.be = tail call noundef i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = mul i32 %i.be, %.sroa.050.077
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bg ; 3 uses
  %i.bi = load ptr, ptr %i.al, align 8, !tbaa !167, !noalias !2679 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 196
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.bj, align 4, !tbaa !182, !noalias !2679 ; 6 uses
  %i.bk = getelementptr i8, ptr %i.bi, i64 200
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !181, !noalias !2679 ; 3 uses
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !304, !noalias !2679
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !151 ; 4 uses
  br i1 %.not19.i.not, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.split
  br i1 %i.am, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !74

_ZN11hb_vector_tI9hb_pair_tIjjELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.bn = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ao) #15 ; 2 uses
  %.not22.i = icmp eq ptr %i.bn, null
  br i1 %.not22.i, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit, !prof !158

_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %.lr.ph.split
  %.sroa.13.1 = phi ptr [ null, %.lr.ph.split ], [ %i.bn, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ] ; 3 uses
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit, label %bb.i, !prof !74

bb.i:                                             ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.13.1, ptr readonly align 1 %4, i64 %i.ao, i1 false), !alias.scope !2678
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit

_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %.thread.i, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit, %bb.i
  %.sroa.13.175 = phi ptr [ %.sroa.13.1, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit ], [ %.sroa.13.1, %bb.i ], [ null, %.thread.i ], [ null, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ] ; 3 uses
  %.sroa.0.074 = phi i32 [ %.sroa.22.8.extract.trunc.i, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit ], [ %.sroa.22.8.extract.trunc.i, %bb.i ], [ -1, %.thread.i ], [ -1, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ]
  %.sroa.6.0 = phi i32 [ %.sroa.22.8.extract.trunc.i, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE5allocEjb.exit ], [ %.sroa.22.8.extract.trunc.i, %bb.i ], [ 0, %.thread.i ], [ 0, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ] ; 2 uses
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !150
  %.not11.i.i.i14 = icmp eq i32 %i.bo, 0
  br i1 %.not11.i.i.i14, label %bb.j, label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit, !prof !175

bb.j:                                             ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ag ; 2 uses
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !151 ; 4 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = icmp ugt i64 %i.bt, 2147483647
  br i1 %i.bu, label %select.unfold.sink.split.i, label %bb.k, !prof !74

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.j, align 8, !tbaa !152
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.bs
  %i.by = icmp slt i64 %i.bx, %i.bt
  br i1 %i.by, label %select.unfold.sink.split.i, label %bb.l, !prof !74

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.not.i.i15 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i.i.not.i.i15, label %_ZL9hb_memsetPvij.exit.i.i.i.i17, label %bb.m, !prof !131

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 0, i64 %i.bt, i1 false)
  %.pre.i.i.i.i16 = load ptr, ptr %i.d, align 8, !tbaa !151
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i17

_ZL9hb_memsetPvij.exit.i.i.i.i17:                 ; preds = %bb.m, %bb.l
  %i.bz = phi ptr [ %.pre.i.i.i.i16, %bb.m ], [ %i.bq, %bb.l ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bt
  store ptr %i.ca, ptr %i.d, align 8, !tbaa !151
  %i.cb = icmp eq ptr %i.bz, null
  br i1 %i.cb, label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit, label %_ZN22hb_serialize_context_t6extendIN2OT12DeviceRecordEJRjEEEPT_S5_DpOT0_.exit.i, !prof !74

_ZN22hb_serialize_context_t6extendIN2OT12DeviceRecordEJRjEEEPT_S5_DpOT0_.exit.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i17
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !239
  %.not4.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i, 0
  br i1 %.not4.i.i.i, label %"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.i", label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i

_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i: ; preds = %_ZN22hb_serialize_context_t6extendIN2OT12DeviceRecordEJRjEEEPT_S5_DpOT0_.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 3 uses
  %xtraiter = and i32 %.val.i.i.i.i.i.i.i, 1
  %i.cd = icmp eq i32 %.val.i.i.i.i.i.i.i, 1
  br i1 %i.cd, label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i.epil.preheader, label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i.new

_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i.new: ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i
  %unroll_iter = and i32 %.val.i.i.i.i.i.i.i, -2
  br label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i

_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i: ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i.new
  %.05.i.i.i = phi i8 [ 0, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i.new ], [ %spec.select.i.i.i.i.1, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i ]
  %i.ce = phi ptr [ %.val3.i.i.i.i.i.i.i, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i.new ], [ %i.ci, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i ] ; 3 uses
  %niter = phi i32 [ 0, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i.new ], [ %niter.next.1, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i ]
  %.val2.i.i.i.i.i = load i64, ptr %i.ce, align 4
  %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i.i.i = lshr i64 %.val2.i.i.i.i.i, 32 ; 2 uses
  %.sroa.1.0.extract.trunc.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i.i.i to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i32 %.sroa.11.0.copyload, %.sroa.1.0.extract.trunc.i.i.i.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cf, ptr @_hb_NullPool, !prof !175
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !239
  %spec.select.i.i.i.i = tail call i8 @llvm.umax.i8(i8 %.05.i.i.i, i8 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.val2.i.i.i.i.i.1 = load i64, ptr %i.cg, align 4
  %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i.i.i.1 = lshr i64 %.val2.i.i.i.i.i.1, 32 ; 2 uses
  %.sroa.1.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.1 = trunc nuw i64 %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i.i.i.1 to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp ugt i32 %.sroa.11.0.copyload, %.sroa.1.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i.i.i.1
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.ch, ptr @_hb_NullPool, !prof !175
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.1 = load i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.1, align 1, !tbaa !239
  %spec.select.i.i.i.i.1 = tail call i8 @llvm.umax.i8(i8 %spec.select.i.i.i.i, i8 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.1) ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.loopexit.i.unr-lcssa", label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i, !llvm.loop !2676

"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.loopexit.i.unr-lcssa": ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.i", label %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i.epil.preheader

_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i.epil.preheader: ; preds = %"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.loopexit.i.unr-lcssa", %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i
  %.05.i.i.i.epil.init = phi i8 [ 0, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i ], [ %spec.select.i.i.i.i.1, %"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.loopexit.i.unr-lcssa" ]
  %.epil.init154 = phi ptr [ %.val3.i.i.i.i.i.i.i, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.lr.ph.i.i.i ], [ %i.ci, %"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.loopexit.i.unr-lcssa" ]
  %lcmp.mod156 = trunc i32 %.val.i.i.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %.val2.i.i.i.i.i.epil = load i64, ptr %.epil.init154, align 4
  %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i.i.i.epil = lshr i64 %.val2.i.i.i.i.i.epil, 32 ; 2 uses
  %.sroa.1.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.epil = trunc nuw i64 %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i.i.i.epil to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.epil = icmp ugt i32 %.sroa.11.0.copyload, %.sroa.1.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.epil
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i.i.i.epil
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.epil = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.epil, ptr %i.cj, ptr @_hb_NullPool, !prof !175
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.epil = load i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 1, !tbaa !239
  %spec.select.i.i.i.i.epil = tail call i8 @llvm.umax.i8(i8 %.05.i.i.i.epil.init, i8 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.epil)
  br label %"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.i"

"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.i": ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i.epil.preheader, %"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.loopexit.i.unr-lcssa", %_ZN22hb_serialize_context_t6extendIN2OT12DeviceRecordEJRjEEEPT_S5_DpOT0_.exit.i
  %.0.lcssa.i.i.i = phi i8 [ 0, %_ZN22hb_serialize_context_t6extendIN2OT12DeviceRecordEJRjEEEPT_S5_DpOT0_.exit.i ], [ %spec.select.i.i.i.i.1, %"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.loopexit.i.unr-lcssa" ], [ %spec.select.i.i.i.i.epil, %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEv.exit.i.i.i.epil.preheader ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 %.0.lcssa.i.i.i, ptr %i.ck, align 1, !tbaa !239
  %i.cl = zext nneg i32 %.sroa.6.0 to i64
  %.idx.i = shl nuw nsw i64 %i.cl, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.13.175, i64 %.idx.i
  %.not1231.i = icmp eq i32 %.sroa.6.0, 0
  br i1 %.not1231.i, label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.i"
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  br label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEi.exit.i

_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEi.exit.i: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEi.exit.i, %.lr.ph.i
  %.01133.i = phi ptr [ %.sroa.13.175, %.lr.ph.i ], [ %i.cv, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEi.exit.i ] ; 2 uses
  %i.cp = phi i32 [ %.val.i.i.i.i.i.i.i, %.lr.ph.i ], [ %i.cq, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEi.exit.i ] ; 2 uses
  %.sroa.0.0.copyload2932.i = phi ptr [ %.val3.i.i.i.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.copyload28.i, %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEi.exit.i ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cp, 0        ; 2 uses
  %.sroa.0.0.copyload28.i.idx = select i1 %.not.i.i.i.i.i.i, i64 0, i64 8, !prof !74
  %.sroa.0.0.copyload28.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload2932.i, i64 %.sroa.0.0.copyload28.i.idx
  %i.cq = tail call i32 @llvm.usub.sat.i32(i32 %i.cp, i32 1)
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %.sroa.0.0.copyload2932.i, !prof !74
  %.val2.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 4
  %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i = lshr i64 %.val2.i.i.i, 32 ; 2 uses
  %.sroa.1.0.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i32 %.sroa.11.0.copyload, %.sroa.1.0.extract.trunc.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.1.0.extract.shift.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, ptr %i.cr, ptr @_hb_NullPool, !prof !175
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !239
  %i.cs = load i32, ptr %.01133.i, align 4, !tbaa !270
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ct
  store i8 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, ptr %i.cu, align 1, !tbaa !239
  %i.cv = getelementptr inbounds nuw i8, ptr %.01133.i, i64 8 ; 2 uses
  %.not12.i = icmp eq ptr %i.cv, %i.cm
  br i1 %.not12.i, label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit, label %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEi.exit.i

select.unfold.sink.split.i:                       ; preds = %bb.k, %bb.j
  store i32 4, ptr %i.a, align 4, !tbaa !150
  br label %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit

_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit: ; preds = %_ZN9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EENS6_7NumTypeILb1EhLj1EEEEppEi.exit.i, %_ZN11hb_vector_tI9hb_pair_tIjjELb0EEC2E10hb_array_tIKS1_E.exit, %_ZL9hb_memsetPvij.exit.i.i.i.i17, %"_ZorI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNK2OT4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS3_E_L24hb_function_sortedness_t0ELPv0EE11hb_reduce_tIRK3$_0jETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit.i", %select.unfold.sink.split.i
  %i.cw = add i32 %.sroa.0.074, -1
  %spec.select.i.i.i = icmp ult i32 %i.cw, -2
  br i1 %spec.select.i.i.i, label %bb.n, label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit

bb.n:                                             ; preds = %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit
  tail call void @hb_free(ptr noundef %.sroa.13.175) #15
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit

_ZN11hb_vector_tI9hb_pair_tIjjELb0EED2Ev.exit:    ; preds = %_ZN2OT12DeviceRecord9serializeI13hb_map_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEEZZNKS_4hdmx6subsetEP19hb_subset_context_tENKUljE_clEjEUlS5_E_L24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSH_6item_tEEE5valueEvE4typeELSE_0EEEbP22hb_serialize_context_tjSH_11hb_vector_tIS5_Lb0EEj.exit, %bb.n
  %i.cx = add i32 %.sroa.050.077, %i.u            ; 2 uses
  %.not = icmp eq i32 %i.cx, %.sroa.458.0.copyload
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

select.unfold:                                    ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i, %.critedge.i.i.i.i, %bb.a, %._crit_edge
  %.0 = phi i1 [ %.not.i, %._crit_edge ], [ false, %bb.a ], [ false, %.critedge.i.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN16hb_subset_plan_t19source_table_loaderIKN2OT4nameEEclEPS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.hb::unique_ptr", align 8   ; 5 uses
  %3 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3088 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 3 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #15 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !191
  br label %_ZN9hb_lock_tC2EP10hb_mutex_t.exit

_ZN9hb_lock_tC2EP10hb_mutex_t.exit:               ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ null, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2256
  %i.h = select i1 %.not14, ptr %i.g, ptr %i.f    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !192, !range !169, !noundef !193
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN21hb_sanitize_context_t15reference_tableIKN2OT4nameEEEP9hb_blob_tPK9hb_face_tj.exit

bb.c:                                             ; preds = %_ZN9hb_lock_tC2EP10hb_mutex_t.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !194  ; 5 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN21hb_sanitize_context_t15reference_tableIKN2OT4nameEEEP9hb_blob_tPK9hb_face_tj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !195
  %i.p = urem i32 885284821, %i.o                 ; 3 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = and i32 %i.t, 2
  %.not15.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not15.i.i.i, label %_ZN21hb_sanitize_context_t15reference_tableIKN2OT4nameEEEP9hb_blob_tPK9hb_face_tj.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !174
  %i.y = icmp eq i32 %i.x, 1851878757
  br i1 %i.y, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.z = load i32, ptr %i.af, align 4, !tbaa !174
  %i.aa = icmp eq i32 %i.z, 1851878757
  br i1 %i.aa, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit, label %.lr.ph.i.i, !llvm.loop !2

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.01016.i20.i.i = phi i32 [ %i.ad, %bb.e ], [ %i.p, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.ab, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.ab = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.ac = add i32 %i.ab, %.01016.i20.i.i
  %i.ad = and i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = and i32 %i.ah, 2
  %.not.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i, label %_ZN21hb_sanitize_context_t15reference_tableIKN2OT4nameEEEP9hb_blob_tPK9hb_face_tj.exit, label %bb.e, !llvm.loop !2

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit: ; preds = %bb.e
  %i.aj = trunc i32 %i.ah to i1
  br i1 %i.aj, label %.lr.ph.i.i19, label %_ZN21hb_sanitize_context_t15reference_tableIKN2OT4nameEEEP9hb_blob_tPK9hb_face_tj.exit

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i.i
  %i.ak = trunc i32 %i.t to i1
  br i1 %i.ak, label %._crit_edge.i.i, label %_ZN21hb_sanitize_context_t15reference_tableIKN2OT4nameEEEP9hb_blob_tPK9hb_face_tj.exit

bb.f:                                             ; preds = %.lr.ph.i.i19
  %i.al = load i32, ptr %i.av, align 4, !tbaa !174
  %i.am = icmp eq i32 %i.al, 1851878757
  br i1 %i.am, label %._crit_edge.i.i, label %.lr.ph.i.i19, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.f, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread
  %.lcssa10.i.i = phi i32 [ %i.t, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread ], [ %i.ax, %bb.f ]
  %i.an = phi i64 [ %i.q, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread ], [ %i.au, %bb.f ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.an
  %i.ap = trunc i32 %.lcssa10.i.i to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %spec.select.i.i = select i1 %i.ap, ptr %i.aq, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit

.lr.ph.i.i19:                                     ; preds = %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit, %bb.f
  %.01016.i13.i.i = phi i32 [ %i.at, %bb.f ], [ %i.p, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit ]
  %.017.i12.i.i = phi i32 [ %i.ar, %bb.f ], [ 0, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit ]
  %i.ar = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.as = add i32 %i.ar, %.01016.i13.i.i
  %i.at = and i32 %i.as, %i.w                     ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.ay = and i32 %i.ax, 2
  %.not.i.i.i20 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i20, label %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit, label %bb.f, !llvm.loop !2

_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3getERKj.exit: ; preds = %.lr.ph.i.i19, %._crit_edge.i.i
  %.0.i21 = phi ptr [ %spec.select.i.i, %._crit_edge.i.i ], [ @_hb_NullPool, %.lr.ph.i.i19 ]
  %i.az = load ptr, ptr %.0.i21, align 8, !tbaa !197
  %i.ba = tail call ptr @hb_blob_reference(ptr noundef %i.az) #15
  br label %bb.h

_ZN21hb_sanitize_context_t15reference_tableIKN2OT4nameEEEP9hb_blob_tPK9hb_face_tj.exit: ; preds = %.lr.ph.i.i, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit.thread, %bb.d, %bb.c, %_ZN9hb_lock_tC2EP10hb_mutex_t.exit, %_ZNK12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE3hasIS3_EEbRKjPPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i32 0, ptr %3, align 8, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !249
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bb, i8 0, i64 33, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 61
  store i8 0, ptr %i.bf, align 1, !tbaa !250
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !130 ; 2 uses
  %i.bi = tail call i32 @hb_face_get_glyph_count(ptr noundef %i.bh) #15
  store i32 %i.bi, ptr %i.bd, align 8, !tbaa !251
  store i8 1, ptr %i.be, align 4, !tbaa !252
  %i.bj = tail call ptr @hb_face_reference_table(ptr noundef %i.bh, i32 noundef 1851878757) #15
  %i.bk = call noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIKN2OT4nameEEEP9hb_blob_tS5_(ptr noundef nonnull align 8 dereferenceable(62) %3, ptr noundef %i.bj) ; 2 uses
  store ptr %i.bk, ptr %2, align 8, !tbaa !197
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !249 ; 2 uses
  %.not.i22 = icmp eq ptr %i.bl, null
  br i1 %.not.i22, label %_ZN21hb_sanitize_context_tD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN21hb_sanitize_context_t15reference_tableIKN2OT4nameEEEP9hb_blob_tPK9hb_face_tj.exit
  call void @hb_blob_destroy(ptr noundef nonnull %i.bl) #15
  br label %_ZN21hb_sanitize_context_tD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZNK2OT4post6subsetEP19hb_subset_context_t:bb.a
  %.19.ph.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.y, %bb.d ], [ %.07.i.i.i, %bb.i ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !75
  %i.al = icmp ult i32 %i.ak, 12
  %spec.select.i.i.i.i.i = select i1 %i.al, ptr @_hb_NullPool, ptr %i.ai ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 10 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !180
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = sitofp i16 %i.ap to float
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !167 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2360
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !262
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 2356
  %i.av = load i32, ptr %i.au, align 4, !tbaa !263
  %i.aw = tail call noundef float @_ZNK2OT4MVAR7get_varEjPKij(ptr noundef nonnull align 1 dereferenceable(13) %spec.select.i.i.i.i.i, i32 noundef 1970168947, ptr noundef %i.at, i32 noundef %i.av)
  %i.ax = fadd float %i.aw, %i.aq
  %i.ay = fadd float %i.ax, 5.000000e-01
  %i.az = tail call noundef float @llvm.floor.f32(float %i.ay) ; 2 uses
  %i.ba = fptosi float %i.az to i16               ; 2 uses
  %i.bb = tail call i16 @llvm.bswap.i16(i16 %i.ba)
  store i16 %i.bb, ptr %i.an, align 1, !tbaa !239
  %i.bc = sext i16 %i.ba to i64
  %i.bd = fptosi float %i.az to i64
  %.not.i.i = icmp eq i64 %i.bc, %i.bd
  br i1 %.not.i.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT4MVARE22hb_table_lazy_loader_tIS1_Lj22ELb1EE9hb_face_tLj22E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 44 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !150
  %i.bg = or i32 %i.bf, 8
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !150
  br label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit: ; preds = %_ZNK16hb_lazy_loader_tIN2OT4MVARE22hb_table_lazy_loader_tIS1_Lj22ELb1EE9hb_face_tLj22E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit, %bb.k
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !180
  %i.bk = tail call noundef i16 @llvm.bswap.i16(i16 %i.bj)
  %i.bl = sitofp i16 %i.bk to float
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !167 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2360
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !262
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 2356
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !263
  %i.br = tail call noundef float @_ZNK2OT4MVAR7get_varEjPKij(ptr noundef nonnull align 1 dereferenceable(13) %spec.select.i.i.i.i.i, i32 noundef 1970168943, ptr noundef %i.bo, i32 noundef %i.bq)
  %i.bs = fadd float %i.br, %i.bl
  %i.bt = fadd float %i.bs, 5.000000e-01
  %i.bu = tail call noundef float @llvm.floor.f32(float %i.bt) ; 2 uses
  %i.bv = fptosi float %i.bu to i16               ; 2 uses
  %i.bw = tail call i16 @llvm.bswap.i16(i16 %i.bv)
  store i16 %i.bw, ptr %i.bi, align 1, !tbaa !239
  %i.bx = sext i16 %i.bv to i64
  %i.by = fptosi float %i.bu to i64
  %.not.i.i30 = icmp eq i64 %i.bx, %i.by
  br i1 %.not.i.i30, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit33, label %bb.l

bb.l:                                             ; preds = %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 44 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !150
  %i.cb = or i32 %i.ca, 8
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !150
  br label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit33

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit33: ; preds = %bb.l, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit, %_ZNK2OT4post9serializeEP22hb_serialize_context_tb.exit
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !167 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2408
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !264 ; 4 uses
  %.not.i34 = icmp eq ptr %i.ce, null
  br i1 %.not.i34, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit33
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 2400
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !696
  %i.ch = urem i32 555299380, %i.cg               ; 2 uses
  %i.ci = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = and i32 %i.cl, 2
  %.not15.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 2396
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = load i32, ptr %i.cj, align 4, !tbaa !174
  %i.cq = icmp eq i32 %i.cp, 1936486004
  br i1 %i.cq, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.cr = load i32, ptr %i.cx, align 4, !tbaa !174
  %i.cs = icmp eq i32 %i.cr, 1936486004
  br i1 %i.cs, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !53

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i35, %bb.n
  %.01016.i20.i.i = phi i32 [ %i.cv, %bb.n ], [ %i.ch, %.lr.ph.i.i.i35 ]
  %.017.i19.i.i = phi i32 [ %i.ct, %bb.n ], [ 0, %.lr.ph.i.i.i35 ]
  %i.ct = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.cu = add i32 %i.ct, %.01016.i20.i.i
  %i.cv = and i32 %i.cu, %i.co                    ; 2 uses
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = and i32 %i.cz, 2
  %.not.i.i.i36 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i36, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %bb.n, !llvm.loop !53

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.n, %.lr.ph.i.i.i35
  %.lcssa17.i.i = phi i32 [ %i.cl, %.lr.ph.i.i.i35 ], [ %i.cz, %bb.n ]
  %i.db = phi i64 [ %i.ci, %.lr.ph.i.i.i35 ], [ %i.cw, %bb.n ]
  %i.dc = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.dc, label %bb.o, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread

bb.o:                                             ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load double, ptr %i.de, align 8, !tbaa !697 ; 2 uses
  %i.dg = fcmp ole double %i.df, 9.000000e+01
  %i.dh = select i1 %i.dg, double %i.df, double 9.000000e+01 ; 2 uses
  %i.di = fcmp ole double %i.dh, -9.000000e+01
  %.sroa.speculated = select i1 %i.di, double -9.000000e+01, double %i.dh
  %i.dj = fptrunc double %.sroa.speculated to float ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !178
  %i.dm = tail call noundef i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dn = sitofp i32 %i.dm to float
  %i.do = fmul nnan float %i.dn, f0x37800000
  %i.dp = fcmp une float %i.do, %i.dj
  br i1 %i.dp, label %bb.p, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.dq = fmul float %i.dj, 6.553600e+04
  %i.dr = fadd float %i.dq, 5.000000e-01
  %i.ds = tail call noundef float @llvm.floor.f32(float %i.dr)
  %i.dt = fptosi float %i.ds to i32
  %i.du = tail call i32 @llvm.bswap.i32(i32 %i.dt)
  store i32 %i.du, ptr %i.dk, align 1, !tbaa !239
  br label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, %bb.m, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit33, %bb.o, %bb.p
  br i1 %.not, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread
  %i.dv = load i16, ptr %0, align 1, !tbaa !180
  %i.dw = icmp eq i16 %i.dv, 512
  br i1 %i.dw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !283
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dy = tail call noundef zeroext i1 @_ZNK2OT10postV2Tail6subsetEP19hb_subset_context_t(ptr noundef nonnull align 1 dereferenceable(4) %i.dx, ptr noundef %1) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, %bb.a, %.critedge.i.i.i, %_ZN22hb_serialize_context_t12allocate_minIN2OT4postEEEPT_v.exit.i
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN22hb_serialize_context_t12allocate_minIN2OT4postEEEPT_v.exit.i ], [ false, %.critedge.i.i.i ], [ %i.dy, %bb.r ], [ true, %bb.q ], [ true, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK2OT10postV2Tail6subsetEP19hb_subset_context_t(ptr noundef nonnull align 1 dereferenceable(4), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!54, !55}
!llvm.ident = !{!56}
!llvm.errno.tbaa = !{!61}

!0 = distinct !{!0, !132}
!1 = distinct !{!1, !132}
!2 = distinct !{!2, !132}
!3 = distinct !{!3, !132}
!4 = distinct !{!4, !132}
!5 = distinct !{!5, !132}
!6 = distinct !{!6, !132}
!7 = distinct !{!7, !132}
!8 = distinct !{!8, !132}
!9 = distinct !{!9, !132}
!10 = distinct !{!10, !132}
!11 = distinct !{!11, !132}
!12 = distinct !{!12, !132}
!13 = distinct !{!13, !132}
!14 = distinct !{!14, !132}
!15 = distinct !{!15, !132}
!16 = distinct !{!16, !132}
!17 = distinct !{!17, !132}
!18 = distinct !{!18, !132}
!19 = distinct !{!19, !132}
!20 = distinct !{!20, !132}
!21 = distinct !{!21, !132}
!22 = distinct !{!22, !132}
!23 = distinct !{!23, !132}
!24 = distinct !{!24, !132}
!25 = distinct !{!25, !132}
!26 = distinct !{!26, !132}
!27 = distinct !{!27, !132}
!28 = distinct !{!28, !132}
!29 = distinct !{!29, !132}
!30 = distinct !{!30, !132}
!31 = distinct !{!31, !132}
!32 = distinct !{!32, !132}
!33 = distinct !{!33, !132}
!34 = distinct !{!34, !132}
!35 = distinct !{!35, !132}
!36 = distinct !{!36, !132}
!37 = distinct !{!37, !132}
!38 = distinct !{!38, !132}
!39 = distinct !{!39, !132}
!40 = distinct !{!40, !132}
!41 = distinct !{!41, !132}
!42 = distinct !{!42, !132}
!43 = distinct !{!43, !132}
!44 = distinct !{!44, !132}
!45 = distinct !{!45, !132}
!46 = distinct !{!46, !132}
!47 = distinct !{!47, !132}
!48 = distinct !{!48, !132}
!49 = distinct !{!49, !132}
!50 = distinct !{!50, !132}
!51 = distinct !{!51, !132}
!52 = distinct !{!52, !132}
!53 = distinct !{!53, !132}
!54 = !{i32 8, !"PIC Level", i32 2}
!55 = !{i32 7, !"uwtable", i32 2}
!56 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!57 = !{!"Simple C++ TBAA"}
!58 = !{!"omnipotent char", !57, i64 0}
!59 = !{!"int", !58, i64 0}
!60 = !{!"__libc_errno", !59, i64 0}
!61 = !{!60, !59, i64 0}
!62 = !{!"_ZTS11hb_atomic_tIiE", !59, i64 0}
!63 = !{!"_ZTS20hb_reference_count_t", !62, i64 0}
!64 = !{!"bool", !58, i64 0}
!65 = !{!"_ZTS11hb_atomic_tIbE", !64, i64 0}
!66 = !{!"any pointer", !58, i64 0}
!67 = !{!"p1 _ZTS20hb_user_data_array_t", !66, i64 0}
!68 = !{!"_ZTS11hb_atomic_tIP20hb_user_data_array_tE", !67, i64 0}
!69 = !{!"_ZTS18hb_object_header_t", !63, i64 0, !65, i64 4, !68, i64 8}
!70 = !{!"p1 omnipotent char", !66, i64 0}
!71 = !{!"_ZTS16hb_memory_mode_t", !58, i64 0}
!72 = !{!"_ZTS9hb_blob_t", !69, i64 0, !70, i64 16, !59, i64 24, !71, i64 28, !66, i64 32, !66, i64 40}
!73 = !{!72, !70, i64 16}
!74 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!75 = !{!72, !59, i64 24}
!76 = !{!"p1 _ZTS8hb_map_t", !66, i64 0}
!77 = !{!"p1 _ZTS9hb_face_t", !66, i64 0}
!78 = !{!"p1 _ZTSN2OT25cff1_subset_accelerator_tE", !66, i64 0}
!79 = !{!"_ZTS11hb_atomic_tIPN2OT25cff1_subset_accelerator_tEE", !78, i64 0}
!80 = !{!"_ZTS16hb_lazy_loader_tIN2OT25cff1_subset_accelerator_tE21hb_face_lazy_loader_tIS1_Lj1EE9hb_face_tLj1ES1_E", !79, i64 0}
!81 = !{!"_ZTS21hb_face_lazy_loader_tIN2OT25cff1_subset_accelerator_tELj1EE", !80, i64 0}
!82 = !{!"p1 _ZTSN2OT25cff2_subset_accelerator_tE", !66, i64 0}
!83 = !{!"_ZTS11hb_atomic_tIPN2OT25cff2_subset_accelerator_tEE", !82, i64 0}
!84 = !{!"_ZTS16hb_lazy_loader_tIN2OT25cff2_subset_accelerator_tE21hb_face_lazy_loader_tIS1_Lj2EE9hb_face_tLj2ES1_E", !83, i64 0}
!85 = !{!"_ZTS21hb_face_lazy_loader_tIN2OT25cff2_subset_accelerator_tELj2EE", !84, i64 0}
!86 = !{!"_ZTS11hb_atomic_tIjE", !59, i64 0}
!87 = !{!"p1 _ZTSN12hb_bit_set_t10page_map_tE", !66, i64 0}
!88 = !{!"_ZTS11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE", !59, i64 0, !59, i64 4, !87, i64 8}
!89 = !{!"p1 _ZTS13hb_bit_page_t", !66, i64 0}
!90 = !{!"_ZTS11hb_vector_tI13hb_bit_page_tLb0EE", !59, i64 0, !59, i64 4, !89, i64 8}
!91 = !{!"_ZTS12hb_bit_set_t", !64, i64 0, !59, i64 4, !86, i64 8, !88, i64 16, !90, i64 32}
!92 = !{!"_ZTS23hb_bit_set_invertible_t", !91, i64 0, !64, i64 48}
!93 = !{!"_ZTS14hb_sparseset_tI23hb_bit_set_invertible_tE", !69, i64 0, !92, i64 16}
!94 = !{!"_ZTS8hb_set_t", !93, i64 0}
!95 = !{!"p1 _ZTS9hb_pair_tIjjE", !66, i64 0}
!96 = !{!"_ZTS11hb_vector_tI9hb_pair_tIjjELb1EE", !59, i64 0, !59, i64 4, !95, i64 8}
!97 = !{!"short", !58, i64 0}
!98 = !{!"p1 _ZTSN12hb_hashmap_tIjjLb1EE6item_tE", !66, i64 0}
!99 = !{!"_ZTS12hb_hashmap_tIjjLb1EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !98, i64 40}
!100 = !{!"_ZTS8hb_map_t", !99, i64 0}
!101 = !{!"p1 _ZTSN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE6item_tE", !66, i64 0}
!102 = !{!"_ZTS12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !101, i64 40}
!103 = !{!"p1 _ZTSN12hb_hashmap_tIjN2hb10shared_ptrI8hb_set_tEELb0EE6item_tE", !66, i64 0}
!104 = !{!"_ZTS12hb_hashmap_tIjN2hb10shared_ptrI8hb_set_tEELb0EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !103, i64 40}
!105 = !{!"p1 _ZTSN12hb_hashmap_tIjPKN2OT7FeatureELb0EE6item_tE", !66, i64 0}
!106 = !{!"_ZTS12hb_hashmap_tIjPKN2OT7FeatureELb0EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !105, i64 40}
!107 = !{!"p1 _ZTSN12hb_hashmap_tIj9hb_pair_tIPKvS2_ELb0EE6item_tE", !66, i64 0}
!108 = !{!"_ZTS12hb_hashmap_tIj9hb_pair_tIPKvS2_ELb0EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !107, i64 40}
!109 = !{!"p1 _ZTS14hb_inc_bimap_t", !66, i64 0}
!110 = !{!"_ZTS11hb_vector_tI14hb_inc_bimap_tLb0EE", !59, i64 0, !59, i64 4, !109, i64 8}
!111 = !{!"p1 _ZTSN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tE", !66, i64 0}
!112 = !{!"_ZTS12hb_hashmap_tIj9hb_pair_tIjiELb0EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !111, i64 40}
!113 = !{!"p1 _ZTSN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE6item_tE", !66, i64 0}
!114 = !{!"_ZTS12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !113, i64 40}
!115 = !{!"p1 _ZTSN12hb_hashmap_tIj6TripleLb0EE6item_tE", !66, i64 0}
!116 = !{!"_ZTS12hb_hashmap_tIj6TripleLb0EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !115, i64 40}
!117 = !{!"p1 int", !66, i64 0}
!118 = !{!"_ZTS11hb_vector_tIiLb0EE", !59, i64 0, !59, i64 4, !117, i64 8}
!119 = !{!"p1 _ZTSN12hb_hashmap_tIj15TripleDistancesLb0EE6item_tE", !66, i64 0}
!120 = !{!"_ZTS12hb_hashmap_tIj15TripleDistancesLb0EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !119, i64 40}
!121 = !{!"p1 _ZTSN12hb_hashmap_tIjdLb0EE6item_tE", !66, i64 0}
!122 = !{!"_ZTS12hb_hashmap_tIjdLb0EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !121, i64 40}
!123 = !{!"_ZTS11hb_vector_tIjLb0EE", !59, i64 0, !59, i64 4, !117, i64 8}
!124 = !{!"p1 _ZTSN12hb_hashmap_tIj22contour_point_vector_tLb0EE6item_tE", !66, i64 0}
!125 = !{!"_ZTS12hb_hashmap_tIj22contour_point_vector_tLb0EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !124, i64 40}
!126 = !{!"_ZTS16head_maxp_info_t", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !64, i64 40}
!127 = !{!"_ZTS10os2_info_t", !59, i64 0, !59, i64 4}
!128 = !{!"p1 _ZTS23hb_subset_accelerator_t", !66, i64 0}
!129 = !{!"_ZTS16hb_subset_plan_t", !69, i64 0, !64, i64 16, !59, i64 20, !64, i64 24, !64, i64 25, !76, i64 32, !76, i64 40, !76, i64 48, !77, i64 56, !81, i64 64, !85, i64 72, !77, i64 80, !59, i64 88, !64, i64 92, !64, i64 93, !64, i64 94, !64, i64 95, !64, i64 96, !64, i64 97, !64, i64 98, !94, i64 104, !96, i64 176, !96, i64 192, !94, i64 208, !94, i64 280, !94, i64 352, !94, i64 424, !94, i64 496, !94, i64 568, !94, i64 640, !100, i64 712, !94, i64 760, !94, i64 832, !94, i64 904, !94, i64 976, !94, i64 1048, !100, i64 1120, !100, i64 1168, !100, i64 1216, !102, i64 1264, !102, i64 1312, !100, i64 1360, !100, i64 1408, !100, i64 1456, !100, i64 1504, !104, i64 1552, !104, i64 1600, !106, i64 1648, !106, i64 1696, !94, i64 1744, !94, i64 1816, !108, i64 1888, !108, i64 1936, !100, i64 1984, !100, i64 2032, !110, i64 2080, !112, i64 2096, !100, i64 2144, !112, i64 2192, !110, i64 2240, !114, i64 2256, !116, i64 2304, !118, i64 2352, !116, i64 2368, !120, i64 2416, !100, i64 2464, !116, i64 2512, !116, i64 2560, !122, i64 2608, !100, i64 2656, !123, i64 2704, !112, i64 2720, !112, i64 2768, !123, i64 2816, !123, i64 2832, !125, i64 2848, !94, i64 2896, !112, i64 2968, !110, i64 3016, !126, i64 3032, !127, i64 3076, !128, i64 3088, !128, i64 3096}
!130 = !{!129, !77, i64 56}
!131 = !{!"branch_weights", i32 2002, i32 2000}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{!"branch_weights", !"expected", i32 1913573, i32 2145570075}
!134 = !{!"branch_weights", i32 0, i32 -2147483648}
!135 = !{!"_ZTS20hb_serialize_error_t", !58, i64 0}
!136 = !{!"p1 _ZTSN22hb_serialize_context_t8object_tE", !66, i64 0}
!137 = !{!"any p2 pointer", !66, i64 0}
!138 = !{!"p2 _ZTSN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tE", !137, i64 0}
!139 = !{!"_ZTS11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE", !59, i64 0, !59, i64 4, !138, i64 8}
!140 = !{!"_ZTS14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE", !136, i64 0, !139, i64 8}
!141 = !{!"p2 _ZTSN22hb_serialize_context_t8object_tE", !137, i64 0}
!142 = !{!"_ZTS11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE", !59, i64 0, !59, i64 4, !141, i64 8}
!143 = !{!"p1 _ZTSN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_tE", !66, i64 0}
!144 = !{!"_ZTS12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE", !69, i64 0, !64, i64 16, !97, i64 18, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !143, i64 40}
end_hunk_1
