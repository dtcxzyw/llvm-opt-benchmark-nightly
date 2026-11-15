Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-pcep?download=true
inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@dissect_pcep_obj_monitoring:bb.a
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.n, ptr noundef %2, i32 noundef %i.f, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_pcep_obj_monitoring_flags_p, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.p, ptr noundef %2, i32 noundef %i.f, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_pcep_obj_monitoring_flags_g, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.r, ptr noundef %2, i32 noundef %i.f, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_pcep_obj_monitoring_flags_l, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.t, ptr noundef %2, i32 noundef %i.f, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_pcep_obj_monitoring_monitoring_id_number, align 4
  %i.w = add i32 %3, 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.v, ptr noundef %2, i32 noundef %i.w, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.y = add i32 %3, 8
  %i.z = add nsw i32 %4, -12
  %i.aa = load i32, ptr @ett_pcep_obj_monitoring, align 4
  tail call fastcc void @dissect_pcep_tlvs_with_scope(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %i.y, i32 noundef range(i32 0, 2147483640) %i.z, i32 noundef %i.aa, i16 noundef zeroext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_obj_pcc_id_req(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 noundef %6) #0 {
bb.a:
  switch i32 %6, label %bb.h [
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not26 = icmp eq i32 %4, 8
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1441, i32 noundef %4, i32 noundef 8) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.b = load i32, ptr @hf_pcep_obj_pcc_id_req_ipv4, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.b, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 20
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1442, i32 noundef %4, i32 noundef 20) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.e = load i32, ptr @hf_pcep_obj_pcc_id_req_ipv6, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %2, i32 noundef %3, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.g = add i32 %4, -4
  %i.h = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_non_defined_subobject, ptr noundef %2, i32 noundef %3, i32 noundef %i.g, ptr noundef @.str.1198, i32 noundef %6) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_of_obj(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) #0 {
bb.a:
  %i.a = icmp slt i32 %4, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1443, i32 noundef %4, i32 noundef 8) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_pcep_obj_of_code, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.e = add i32 %3, 4
  %i.f = add nsw i32 %4, -8
  %i.g = load i32, ptr @ett_pcep_obj_open, align 4
  tail call fastcc void @dissect_pcep_tlvs_with_scope(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %i.e, i32 noundef range(i32 0, 2147483640) %i.f, i32 noundef %i.g, i16 noundef zeroext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_obj_pce_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 noundef %6) #0 {
bb.a:
  switch i32 %6, label %bb.h [
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not26 = icmp eq i32 %4, 8
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1444, i32 noundef %4, i32 noundef 8) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.b = load i32, ptr @hf_pcep_obj_pce_id_ipv4, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.b, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 20
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1445, i32 noundef %4, i32 noundef 20) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.e = load i32, ptr @hf_pcep_obj_pce_id_ipv6, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %2, i32 noundef %3, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.g = add i32 %4, -4
  %i.h = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_non_defined_subobject, ptr noundef %2, i32 noundef %3, i32 noundef %i.g, ptr noundef @.str.1198, i32 noundef %6) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_obj_proc_time(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) #0 {
bb.a:
  %.not = icmp eq i32 %4, 28
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1446, i32 noundef %4, i32 noundef 28) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_pcep_obj_proc_time_reserved, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.b, ptr noundef %2, i32 noundef %3, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_pcep_obj_proc_time_flags, align 4
  %i.e = add i32 %3, 2                            ; 3 uses
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.d, ptr noundef %2, i32 noundef %i.e, i32 noundef 2, i32 noundef 0)
  %i.g = load i32, ptr @ett_pcep_obj_proc_time, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 2 uses
  %i.i = load i32, ptr @hf_pcep_obj_proc_time_flags_reserved, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %2, i32 noundef %i.e, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_pcep_obj_proc_time_flags_e, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %2, i32 noundef %i.e, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_pcep_obj_proc_time_cur_proc_time, align 4
  %i.n = add i32 %3, 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.m, ptr noundef %2, i32 noundef %i.n, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_pcep_obj_proc_time_min_proc_time, align 4
  %i.q = add i32 %3, 8
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.p, ptr noundef %2, i32 noundef %i.q, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_pcep_obj_proc_time_max_proc_time, align 4
  %i.t = add i32 %3, 12
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.s, ptr noundef %2, i32 noundef %i.t, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_pcep_obj_proc_time_ave_proc_time, align 4
  %i.w = add i32 %3, 16
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.v, ptr noundef %2, i32 noundef %i.w, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_pcep_obj_proc_time_var_proc_time, align 4
  %i.z = add i32 %3, 20
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.y, ptr noundef %2, i32 noundef %i.z, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_obj_overload(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) #0 {
bb.a:
  %.not = icmp eq i32 %4, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1447, i32 noundef %4, i32 noundef 8) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_pcep_obj_overload_flags, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.b, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_pcep_obj_overload_reserved, align 4
  %i.e = add i32 %3, 1
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.d, ptr noundef %2, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_pcep_obj_overload_duration, align 4
  %i.h = add i32 %3, 2
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.g, ptr noundef %2, i32 noundef %i.h, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_obj_unreach_destination(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 noundef %6) #0 {
bb.a:
  %i.a = add i32 %4, -4                           ; 3 uses
  %switch.selectcmp = icmp eq i32 %6, 2
  %switch.select = select i1 %switch.selectcmp, i32 16, i32 4 ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  switch i32 %6, label %.loopexit [
    i32 1, label %.lr.ph.split.us
    i32 2, label %.lr.ph.split.us44
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.042.us = phi i32 [ %i.g, %bb.b ], [ %i.a, %.lr.ph ] ; 4 uses
  %.03441.us = phi i32 [ %i.f, %bb.b ], [ %3, %.lr.ph ] ; 3 uses
  %i.c = icmp samesign ult i32 %.042.us, 4
  br i1 %i.c, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.d = load i32, ptr @hf_pcep_unreach_destination_obj_ipv4_address, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.d, ptr noundef %2, i32 noundef %.03441.us, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.f = add i32 %.03441.us, %switch.select
  %i.g = sub nsw i32 %.042.us, %switch.select     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !18

.lr.ph.split.us44:                                ; preds = %.lr.ph, %bb.c
  %.042.us45 = phi i32 [ %i.l, %bb.c ], [ %i.a, %.lr.ph ] ; 4 uses
  %.03441.us46 = phi i32 [ %7, %bb.c ], [ %3, %.lr.ph ] ; 3 uses
  %i.i = icmp samesign ult i32 %.042.us45, 16
  br i1 %i.i, label %.split48.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us44
  %i.j = load i32, ptr @hf_pcep_unreach_destination_obj_ipv6_address, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.j, ptr noundef %2, i32 noundef %.03441.us46, i32 noundef 16, i32 noundef 0) ; 0 uses
  %7 = add i32 %.03441.us46, %switch.select
  %i.l = sub nuw nsw i32 %.042.us45, %switch.select ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.split.us44, !llvm.loop !18

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.m = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %.03441.us, i32 noundef %.042.us, ptr noundef @.str.1448, i32 noundef %.042.us, i32 noundef 4) ; 0 uses
  br label %.loopexit

.split48.us:                                      ; preds = %.lr.ph.split.us44
  %i.n = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %.03441.us46, i32 noundef %.042.us45, ptr noundef @.str.1449, i32 noundef %.042.us45, i32 noundef 16) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %.lr.ph, %bb.a, %.split48.us, %.split.us
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_obj_branch_node_capability(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #0 {
bb.a:
  %i.a = add i32 %4, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %.045 = phi i32 [ %3, %bb.a ], [ %i.p, %bb.l ]  ; 7 uses
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.q, %bb.l ]  ; 4 uses
  switch i32 %.0, label %bb.d [
    i32 0, label %.loopexit
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %0, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef @.str.1450) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %.045)
  %i.d = add i32 %.045, 1
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.d) ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 9 uses
  %i.g = icmp ult i8 %i.e, 2
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %0, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef @.str.1451, i32 noundef %i.f) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.i = and i8 %i.c, 127                         ; 2 uses
  %i.j = zext nneg i8 %i.i to i32
  %i.k = icmp ult i32 %.0, %i.f
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %.045, i32 noundef %i.f, ptr noundef @.str.1452, i32 noundef %i.f, i32 noundef %.0) ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  switch i8 %i.i, label %bb.k [
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.m = load i32, ptr @ett_pcep_obj_branch_node_capability, align 4
  tail call fastcc void @dissect_subobj_ipv4(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.045, i32 noundef %5, i32 noundef %i.m, i32 noundef %i.f)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.n = load i32, ptr @ett_pcep_obj_branch_node_capability, align 4
  tail call fastcc void @dissect_subobj_ipv6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.045, i32 noundef %5, i32 noundef %i.n, i32 noundef %i.f)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.o = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_non_defined_subobject, ptr noundef %2, i32 noundef %.045, i32 noundef %i.f, ptr noundef @.str.1204, i32 noundef %i.j) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.p = add i32 %.045, %i.f
  %i.q = sub nuw i32 %.0, %i.f
  br label %bb.b, !llvm.loop !19

.loopexit:                                        ; preds = %bb.b, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_obj_lsp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) #0 {
bb.a:
  %i.a = icmp slt i32 %4, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1453, i32 noundef %4, i32 noundef 8) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_pcep_obj_lsp_plsp_id, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, i32 noundef %3, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.e = add i32 %3, 2
  %i.f = load i32, ptr @hf_pcep_obj_lsp_flags, align 4
  %i.g = load i32, ptr @ett_pcep_obj_lsp, align 4
  %i.h = tail call ptr @proto_tree_add_bitmask(ptr noundef %0, ptr noundef %2, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.g, ptr noundef @dissect_pcep_obj_lsp.lsp_flags, i32 noundef 0) ; 0 uses
  %i.i = add i32 %3, 4
  %i.j = add nsw i32 %4, -8
  %i.k = load i32, ptr @ett_pcep_obj_lsp, align 4
  tail call fastcc void @dissect_pcep_tlvs_with_scope(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %i.i, i32 noundef range(i32 0, 2147483640) %i.j, i32 noundef %i.k, i16 noundef zeroext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_obj_srp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) #0 {
bb.a:
  %i.a = icmp slt i32 %4, 12
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1454, i32 noundef %4, i32 noundef 12) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_pcep_obj_srp_flags, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef 0)
  %i.e = load i32, ptr @ett_pcep_obj_srp, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e)
  %i.g = load i32, ptr @hf_pcep_obj_srp_flags_r, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_pcep_obj_srp_id_number, align 4
  %i.j = add i32 %3, 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.i, ptr noundef %2, i32 noundef %i.j, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.l = add i32 %3, 8
  %i.m = add nsw i32 %4, -12
  %i.n = load i32, ptr @ett_pcep_obj_srp, align 4
  tail call fastcc void @dissect_pcep_tlvs_with_scope(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %i.l, i32 noundef range(i32 0, 2147483640) %i.m, i32 noundef %i.n, i16 noundef zeroext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_obj_vendor_information(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) #0 {
bb.a:
  %i.a = icmp slt i32 %4, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1455, i32 noundef %4, i32 noundef 8) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_pcep_enterprise_number, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_pcep_enterprise_specific_info, align 4
  %i.f = add i32 %3, 4
  %i.g = add nsw i32 %4, -8
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %2, i32 noundef %i.f, i32 noundef %i.g, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_obj_bu(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) #0 {
bb.a:
  %.not = icmp eq i32 %4, 12
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1456, i32 noundef %4, i32 noundef 12) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_pcep_bu_reserved, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.b, ptr noundef %2, i32 noundef %3, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_pcep_bu_butype, align 4
  %i.e = add i32 %3, 3
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.d, ptr noundef %2, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_pcep_bu_utilization, align 4
  %i.h = add i32 %3, 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.g, ptr noundef %2, i32 noundef %i.h, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_association_obj(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 noundef %6) #0 {
bb.a:
  %i.a = icmp eq i32 %6, 1
  %i.b = icmp slt i32 %4, 16
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1457, i32 noundef %4, i32 noundef 16) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %6, 2
  %i.e = icmp slt i32 %4, 28
  %or.cond3 = and i1 %i.e, %i.d
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef @.str.1458, i32 noundef %4, i32 noundef 16) ; 0 uses
end_hunk_0
