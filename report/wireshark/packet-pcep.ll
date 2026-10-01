Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-pcep?download=true
inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@dissect_pcep_lspa_obj:bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_iro_obj(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #0 {
bb.a:
  %i.a = add i32 %4, -4
  br label %bb.b

bb.b:                                             ; preds = %dissect_subobj_exrs.exit, %bb.a
  %.064 = phi i32 [ %3, %bb.a ], [ %i.aw, %dissect_subobj_exrs.exit ] ; 14 uses
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.ax, %dissect_subobj_exrs.exit ] ; 4 uses
  switch i32 %.0, label %bb.d [
    i32 0, label %.loopexit
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ei_pcep_subobject_bad_length, ptr noundef nonnull @.str.1224) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %.064)
  %i.d = add i32 %.064, 1                         ; 2 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.d) ; 3 uses
  %i.f = zext i8 %i.e to i32                      ; 15 uses
  %i.g = icmp ult i8 %i.e, 2
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @ei_pcep_subobject_bad_length, ptr noundef nonnull @.str.1225, i32 noundef %i.f) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.i = and i8 %i.c, 127                         ; 2 uses
  %i.j = zext nneg i8 %i.i to i32
  %i.k = icmp ult i32 %.0, %i.f
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %.064, i32 noundef %i.f, ptr noundef nonnull @.str.1226, i32 noundef %i.f, i32 noundef %.0) ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  switch i8 %i.i, label %bb.z [
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 4, label %bb.k
    i8 32, label %bb.l
    i8 33, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.m = load i32, ptr @ett_pcep_obj_iro, align 4
  tail call fastcc void @dissect_subobj_ipv4(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.064, i32 noundef %5, i32 noundef %i.m, i32 noundef %i.f)
  br label %dissect_subobj_exrs.exit

bb.j:                                             ; preds = %bb.h
  %i.n = load i32, ptr @ett_pcep_obj_iro, align 4
  tail call fastcc void @dissect_subobj_ipv6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.064, i32 noundef %5, i32 noundef %i.n, i32 noundef %i.f)
  br label %dissect_subobj_exrs.exit

bb.k:                                             ; preds = %bb.h
  %i.o = load i32, ptr @ett_pcep_obj_iro, align 4
  tail call fastcc void @dissect_subobj_unnumb_interfaceID(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.064, i32 noundef %5, i32 noundef %i.o, i32 noundef %i.f)
  br label %dissect_subobj_exrs.exit

bb.l:                                             ; preds = %bb.h
  %i.p = load i32, ptr @ett_pcep_obj_iro, align 4
  tail call fastcc void @dissect_subobj_autonomous_sys_num(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.064, i32 noundef %5, i32 noundef %i.p, i32 noundef %i.f)
  br label %dissect_subobj_exrs.exit

bb.m:                                             ; preds = %bb.h
  %i.q = load i32, ptr @ett_pcep_obj_iro, align 4 ; 6 uses
  %i.r = load i32, ptr @hf_PCEPF_SUBOBJ_EXRS, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.r, ptr noundef %2, i32 noundef %.064, i32 noundef range(i32 2, 256) %i.f, i32 noundef 0) ; 3 uses
  %i.t = tail call ptr @proto_item_add_subtree(ptr noundef %i.s, i32 noundef %i.q) ; 10 uses
  %i.u = icmp ult i8 %i.e, 4
  br i1 %i.u, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.v = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.s, ptr noundef nonnull @ei_pcep_subobject_bad_length, ptr noundef nonnull @.str.1227, i32 noundef range(i32 2, 256) %i.f) ; 0 uses
  br label %dissect_subobj_exrs.exit

bb.o:                                             ; preds = %bb.m
  %i.w = load i32, ptr @hf_pcep_subobj_exrs_l, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.w, ptr noundef %2, i32 noundef %.064, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_pcep_subobj_exrs_type, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.y, ptr noundef %2, i32 noundef %.064, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_pcep_subobj_exrs_length, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.aa, ptr noundef %2, i32 noundef %i.d, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @hf_pcep_subobj_exrs_reserved, align 4
  %i.ad = add i32 %.064, 2
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %i.t, i32 noundef %i.ac, ptr noundef %2, i32 noundef %i.ad, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.af = add nsw i32 %i.f, -4                    ; 2 uses
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %dissect_subobj_exrs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.ag = add i32 %.064, 4
  %i.ah = add nsw i32 %i.f, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.y, %.lr.ph.i
  %.086.i = phi i32 [ 0, %.lr.ph.i ], [ %i.as, %bb.y ]
  %.07985.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %i.at, %bb.y ] ; 9 uses
  %i.ai = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %.07985.i)
  %i.aj = add i32 %.07985.i, 1
  %i.ak = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.aj) ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 8 uses
  %i.am = icmp ult i8 %i.ak, 2
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.s, ptr noundef nonnull @ei_pcep_subobject_bad_length, ptr noundef nonnull @.str.1228, i32 noundef %i.al) ; 0 uses
  br label %dissect_subobj_exrs.exit

bb.r:                                             ; preds = %bb.p
  %i.ao = and i8 %i.ai, 127                       ; 2 uses
  switch i8 %i.ao, label %bb.x [
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 4, label %bb.u
    i8 32, label %bb.v
    i8 34, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @dissect_subobj_ipv4(ptr noundef %i.t, ptr noundef %1, ptr noundef %2, i32 noundef %.07985.i, i32 noundef 17, i32 noundef %i.q, i32 noundef %i.al)
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  tail call fastcc void @dissect_subobj_ipv6(ptr noundef %i.t, ptr noundef %1, ptr noundef %2, i32 noundef %.07985.i, i32 noundef 17, i32 noundef %i.q, i32 noundef %i.al)
  br label %bb.y

bb.u:                                             ; preds = %bb.r
  tail call fastcc void @dissect_subobj_unnumb_interfaceID(ptr noundef %i.t, ptr noundef %1, ptr noundef %2, i32 noundef %.07985.i, i32 noundef 17, i32 noundef %i.q, i32 noundef %i.al)
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  tail call fastcc void @dissect_subobj_autonomous_sys_num(ptr noundef %i.t, ptr noundef %1, ptr noundef %2, i32 noundef %.07985.i, i32 noundef 17, i32 noundef %i.q, i32 noundef %i.al)
  br label %bb.y

bb.w:                                             ; preds = %bb.r
  tail call fastcc void @dissect_subobj_srlg(ptr noundef %i.t, ptr noundef %1, ptr noundef %2, i32 noundef %.07985.i, i32 noundef %i.q, i32 noundef %i.al)
  br label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = add i32 %.07985.i, 2
  %i.ar = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.t, ptr noundef %1, ptr noundef nonnull @ei_pcep_non_defined_subobject, ptr noundef %2, i32 noundef %i.aq, i32 noundef %i.ah, ptr noundef nonnull @.str.1204, i32 noundef %i.ap) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.as = add nuw nsw i32 %.086.i, %i.al          ; 2 uses
  %i.at = add i32 %.07985.i, %i.al
  %i.au = icmp ult i32 %i.as, %i.af
  br i1 %i.au, label %bb.p, label %dissect_subobj_exrs.exit, !llvm.loop !13

bb.z:                                             ; preds = %bb.h
  %i.av = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ei_pcep_non_defined_subobject, ptr noundef %2, i32 noundef %.064, i32 noundef %i.f, ptr noundef nonnull @.str.1204, i32 noundef %i.j) ; 0 uses
  br label %dissect_subobj_exrs.exit

dissect_subobj_exrs.exit:                         ; preds = %bb.y, %bb.q, %bb.o, %bb.n, %bb.z, %bb.l, %bb.k, %bb.j, %bb.i
  %i.aw = add i32 %.064, %i.f
  %i.ax = sub nuw i32 %.0, %i.f
  br label %bb.b, !llvm.loop !14

.loopexit:                                        ; preds = %bb.b, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_svec_obj(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) #0 {
bb.a:
  %i.a = icmp slt i32 %4, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @.str.1230, i32 noundef %4, i32 noundef 8) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_pcep_svec_obj_reserved, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_pcep_svec_obj_flags, align 4
  %i.f = add i32 %3, 1                            ; 6 uses
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %2, i32 noundef %i.f, i32 noundef 3, i32 noundef 0)
  %i.h = load i32, ptr @ett_pcep_obj_svec, align 4
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h) ; 5 uses
  %i.j = load i32, ptr @hf_pcep_svec_flags_l, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.j, ptr noundef %2, i32 noundef %i.f, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_pcep_svec_flags_n, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.l, ptr noundef %2, i32 noundef %i.f, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_pcep_svec_flags_s, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.n, ptr noundef %2, i32 noundef %i.f, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_pcep_svec_flags_d, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.p, ptr noundef %2, i32 noundef %i.f, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_pcep_svec_flags_p, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.r, ptr noundef %2, i32 noundef %i.f, i32 noundef 3, i32 noundef 0) ; 0 uses
  %.not = icmp eq i32 %4, 8
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %7 = add nsw i32 %4, -9
  %8 = lshr i32 %7, 2
  %9 = add nuw nsw i32 %8, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.044 = phi i32 [ %i.y, %.lr.ph ], [ 4, %.lr.ph.preheader ] ; 2 uses
  %.04143 = phi i32 [ %i.w, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.t = add i32 %.044, %3                        ; 2 uses
  %i.u = tail call i32 @tvb_get_ntohl(ptr noundef %2, i32 noundef %i.t) ; 2 uses
  %i.v = load i32, ptr @hf_pcep_svec_obj_request_id_number, align 4
  %i.w = add nuw nsw i32 %.04143, 1
  %i.x = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %0, i32 noundef %i.v, ptr noundef %2, i32 noundef %i.t, i32 noundef 4, i32 noundef %i.u, ptr noundef nonnull @.str.1231, i32 noundef %.04143, i32 noundef %i.u) ; 0 uses
  %i.y = add nuw nsw i32 %.044, 4
  %exitcond.not = icmp eq i32 %.04143, %9
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_notification_obj(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) #0 {
bb.a:
  %i.a = icmp slt i32 %4, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @.str.1232, i32 noundef %4, i32 noundef 8) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_pcep_notification_obj_reserved, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_pcep_notification_obj_flags, align 4
  %i.f = add i32 %3, 1
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %2, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = add i32 %3, 2                            ; 3 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.h) ; 2 uses
  %i.j = load i32, ptr @hf_PCEPF_NOTI_TYPE, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.j, ptr noundef %2, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %switch.selectcmp = icmp eq i8 %i.i, 2
  %switch.selectcmp37 = icmp eq i8 %i.i, 1
  %hf_PCEPF_NOTI_VAL1.val = load i32, ptr @hf_PCEPF_NOTI_VAL1, align 4
  %hf_PCEPF_NOTI_VAL2.val = load i32, ptr @hf_PCEPF_NOTI_VAL2, align 4
  %hf_pcep_notification_obj_type.val = load i32, ptr @hf_pcep_notification_obj_type, align 4
  %switch.select.val = select i1 %switch.selectcmp, i32 %hf_PCEPF_NOTI_VAL2.val, i32 %hf_pcep_notification_obj_type.val
  %i.l = select i1 %switch.selectcmp37, i32 %hf_PCEPF_NOTI_VAL1.val, i32 %switch.select.val
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.l, ptr noundef %2, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_pcep_notification_obj_value, align 4
  %i.o = add i32 %3, 3
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.n, ptr noundef %2, i32 noundef %i.o, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = add i32 %3, 4
  %i.r = add nsw i32 %4, -8
  %i.s = load i32, ptr @ett_pcep_obj_notification, align 4
  tail call fastcc void @dissect_pcep_tlvs_with_scope(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %i.q, i32 noundef range(i32 0, 2147483640) %i.r, i32 noundef %i.s, i16 noundef zeroext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_pcep_error_obj(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) #0 {
bb.a:
  %i.a = icmp slt i32 %4, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ei_pcep_subobject_bad_length, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @.str.1233, i32 noundef %4, i32 noundef 8) ; 0 uses
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_pcep_error_obj_reserved, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.c, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_pcep_error_obj_flags, align 4
  %i.f = add i32 %3, 1
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.e, ptr noundef %2, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = add i32 %3, 2                            ; 2 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.h) ; 2 uses
  %i.j = add i32 %3, 3                            ; 2 uses
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.j) ; 25 uses
  %i.l = load i32, ptr @hf_PCEPF_ERROR_TYPE, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.l, ptr noundef %2, i32 noundef %i.h, i32 noundef 1, i32 noundef 0)
  switch i8 %i.i, label %bb.ab [
    i8 1, label %bb.d
    i8 2, label %bb.ac
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.ac
    i8 8, label %bb.ac
    i8 9, label %bb.ac
    i8 10, label %bb.i
    i8 11, label %bb.ac
    i8 12, label %bb.j
    i8 13, label %bb.k
    i8 15, label %bb.l
    i8 16, label %bb.m
    i8 17, label %bb.n
    i8 18, label %bb.o
    i8 19, label %bb.p
    i8 20, label %bb.q
    i8 21, label %bb.r
    i8 23, label %bb.s
    i8 24, label %bb.t
    i8 25, label %bb.u
    i8 26, label %bb.v
    i8 27, label %bb.w
    i8 28, label %bb.x
    i8 29, label %bb.y
    i8 30, label %bb.z
    i8 31, label %bb.aa
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = zext i8 %i.k to i32
  %i.o = tail call ptr @val_to_str_const(i32 noundef %i.n, ptr noundef nonnull @pcep_error_value_1_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.p = zext i8 %i.k to i32
  %i.q = tail call ptr @val_to_str_const(i32 noundef %i.p, ptr noundef nonnull @pcep_error_value_3_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.f:                                             ; preds = %bb.c
  %i.r = zext i8 %i.k to i32
  %i.s = tail call ptr @val_to_str_const(i32 noundef %i.r, ptr noundef nonnull @pcep_error_value_4_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.g:                                             ; preds = %bb.c
  %i.t = zext i8 %i.k to i32
  %i.u = tail call ptr @val_to_str_const(i32 noundef %i.t, ptr noundef nonnull @pcep_error_value_5_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.h:                                             ; preds = %bb.c
  %i.v = zext i8 %i.k to i32
  %i.w = tail call ptr @val_to_str_const(i32 noundef %i.v, ptr noundef nonnull @pcep_error_value_6_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.i:                                             ; preds = %bb.c
  %i.x = zext i8 %i.k to i32
  %i.y = tail call ptr @val_to_str_const(i32 noundef %i.x, ptr noundef nonnull @pcep_error_value_10_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.j:                                             ; preds = %bb.c
  %i.z = zext i8 %i.k to i32
  %i.aa = tail call ptr @val_to_str_const(i32 noundef %i.z, ptr noundef nonnull @pcep_error_value_12_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.k:                                             ; preds = %bb.c
  %i.ab = zext i8 %i.k to i32
  %i.ac = tail call ptr @val_to_str_const(i32 noundef %i.ab, ptr noundef nonnull @pcep_error_value_13_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.l:                                             ; preds = %bb.c
  %i.ad = zext i8 %i.k to i32
  %i.ae = tail call ptr @val_to_str_const(i32 noundef %i.ad, ptr noundef nonnull @pcep_error_value_15_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.m:                                             ; preds = %bb.c
  %i.af = zext i8 %i.k to i32
  %i.ag = tail call ptr @val_to_str_const(i32 noundef %i.af, ptr noundef nonnull @pcep_error_value_16_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.n:                                             ; preds = %bb.c
  %i.ah = zext i8 %i.k to i32
  %i.ai = tail call ptr @val_to_str_const(i32 noundef %i.ah, ptr noundef nonnull @pcep_error_value_17_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.o:                                             ; preds = %bb.c
  %i.aj = zext i8 %i.k to i32
  %i.ak = tail call ptr @val_to_str_const(i32 noundef %i.aj, ptr noundef nonnull @pcep_error_value_18_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.p:                                             ; preds = %bb.c
  %i.al = zext i8 %i.k to i32
  %i.am = tail call ptr @val_to_str_const(i32 noundef %i.al, ptr noundef nonnull @pcep_error_value_19_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.q:                                             ; preds = %bb.c
  %i.an = zext i8 %i.k to i32
  %i.ao = tail call ptr @val_to_str_const(i32 noundef %i.an, ptr noundef nonnull @pcep_error_value_20_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.r:                                             ; preds = %bb.c
  %i.ap = zext i8 %i.k to i32
  %i.aq = tail call ptr @val_to_str_const(i32 noundef %i.ap, ptr noundef nonnull @pcep_error_value_21_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.s:                                             ; preds = %bb.c
  %i.ar = zext i8 %i.k to i32
  %i.as = tail call ptr @val_to_str_const(i32 noundef %i.ar, ptr noundef nonnull @pcep_error_value_23_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.t:                                             ; preds = %bb.c
  %i.at = zext i8 %i.k to i32
  %i.au = tail call ptr @val_to_str_const(i32 noundef %i.at, ptr noundef nonnull @pcep_error_value_24_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.u:                                             ; preds = %bb.c
  %i.av = zext i8 %i.k to i32
  %i.aw = tail call ptr @val_to_str_const(i32 noundef %i.av, ptr noundef nonnull @pcep_error_value_25_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.v:                                             ; preds = %bb.c
  %i.ax = zext i8 %i.k to i32
  %i.ay = tail call ptr @val_to_str_const(i32 noundef %i.ax, ptr noundef nonnull @pcep_error_value_26_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

bb.w:                                             ; preds = %bb.c
  %i.az = zext i8 %i.k to i32
  %i.ba = tail call ptr @val_to_str_const(i32 noundef %i.az, ptr noundef nonnull @pcep_error_value_27_vals, ptr noundef nonnull @.str.1189)
  br label %bb.ac

end_hunk_0
