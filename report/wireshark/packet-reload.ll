Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-reload?download=true
inline.NumInlined: 65
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_leavereq:bb.a
  %i.t = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.m) ; 2 uses
  %i.u = add i32 %i.g, 2
  %i.v = and i32 %i.u, 65535
  %i.w = add nuw nsw i32 %i.v, %3                 ; 4 uses
  %i.x = load i32, ptr @hf_reload_chordleave, align 4
  %i.y = zext i16 %i.t to i32
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.q, i32 noundef %i.x, ptr noundef %0, i32 noundef range(i32 6, 262185) %i.w, i32 noundef %i.y, i32 noundef 0)
  %i.aa = load i32, ptr @ett_reload_chordleave, align 4
  %i.ab = tail call ptr @proto_item_add_subtree(ptr noundef %i.z, i32 noundef %i.aa) ; 2 uses
  %i.ac = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 6, 262185) %i.w) ; 2 uses
  %i.ad = load i32, ptr @hf_reload_chordleave_type, align 4
  %i.ae = zext i8 %i.ac to i32
  %i.af = tail call ptr @proto_tree_add_uint(ptr noundef %i.ab, i32 noundef %i.ad, ptr noundef %0, i32 noundef range(i32 6, 262185) %i.w, i32 noundef 1, i32 noundef %i.ae) ; 0 uses
  switch i8 %i.ac, label %dissect_chordleavedata.exit [
    i8 1, label %.sink.split.i
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %hf_reload_chordleave_predecessors.sink.i = phi ptr [ @hf_reload_chordleave_predecessors, %bb.c ], [ @hf_reload_chordleave_successors, %bb.b ]
  %i.ag = add nuw nsw i32 %i.w, 1
  %i.ah = add i16 %i.t, -1
  %i.ai = load i32, ptr %hf_reload_chordleave_predecessors.sink.i, align 4
  %i.aj = tail call fastcc i32 @dissect_nodeid_list(ptr noundef %0, ptr noundef %1, ptr noundef %i.ab, i32 noundef %i.ag, i16 noundef zeroext %i.ah, i32 noundef %i.ai) ; 0 uses
  br label %dissect_chordleavedata.exit

bb.d:                                             ; preds = %bb.a
  %i.ak = load i32, ptr @reload_nodeid_length, align 4
  %i.al = add i32 %i.ak, %3
  %i.am = and i32 %i.g, 65535
  %i.an = sub nsw i32 %i.b, %i.am
  %i.ao = tail call fastcc noundef i32 @dissect_opaque_string_or_data(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.k, i32 noundef %i.al, i16 noundef zeroext 2, i32 noundef %i.an, i1 noundef zeroext false) ; 0 uses
  br label %dissect_chordleavedata.exit

dissect_chordleavedata.exit:                      ; preds = %.sink.split.i, %bb.b, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_joinreq(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 6, 196650) %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_reload_joinreq, align 4
  %i.b = zext i16 %4 to i32                       ; 2 uses
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef %i.b, i32 noundef 0)
  %i.d = load i32, ptr @ett_reload_joinreq, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 2 uses
  %i.f = load i32, ptr @hf_reload_joinreq_joining_peer_id, align 4
  %i.g = tail call fastcc i32 @dissect_nodeid(i32 noundef %i.f, ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %3, i16 noundef zeroext %4)
  %i.h = load i32, ptr @hf_reload_overlay_specific, align 4
  %i.i = and i32 %i.g, 65535                      ; 2 uses
  %i.j = add nuw nsw i32 %i.i, %3
  %i.k = sub nsw i32 %i.b, %i.i
  %i.l = tail call fastcc noundef i32 @dissect_opaque_string_or_data(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.h, i32 noundef %i.j, i16 noundef zeroext 2, i32 noundef %i.k, i1 noundef zeroext false) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_joinans(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 6, 196650) %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_reload_joinans, align 4
  %i.b = zext i16 %4 to i32                       ; 2 uses
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef %i.b, i32 noundef 0)
  %i.d = load i32, ptr @ett_reload_joinans, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d)
  %i.f = load i32, ptr @hf_reload_overlay_specific, align 4
  %i.g = tail call fastcc noundef i32 @dissect_opaque_string_or_data(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.f, i32 noundef %3, i16 noundef zeroext 2, i32 noundef %i.b, i1 noundef zeroext false) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_chordupdate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 6, 196650) %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_reload_chordupdate, align 4
  %i.b = zext i16 %4 to i32
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef %i.b, i32 noundef 0)
  %i.d = load i32, ptr @ett_reload_chordupdate, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 6 uses
  %i.f = load i32, ptr @hf_reload_uptime, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.h = add nuw nsw i32 %3, 4                    ; 2 uses
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.h) ; 2 uses
  %i.j = load i32, ptr @hf_reload_chordupdate_type, align 4
  %i.k = zext i8 %i.i to i32
  %i.l = tail call ptr @proto_tree_add_uint(ptr noundef %i.e, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.h, i32 noundef 1, i32 noundef %i.k) ; 0 uses
  switch i8 %i.i, label %bb.d [
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw nsw i32 %3, 5
  %i.n = add i16 %4, -5
  %i.o = load i32, ptr @hf_reload_chordupdate_predecessors, align 4
  %i.p = tail call fastcc i32 @dissect_nodeid_list(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.m, i16 noundef zeroext %i.n, i32 noundef %i.o)
  %i.q = add nuw nsw i32 %i.p, 5
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.r = add nuw nsw i32 %3, 5
  %i.s = add i16 %4, -5
  %i.t = load i32, ptr @hf_reload_chordupdate_predecessors, align 4
  %i.u = tail call fastcc i32 @dissect_nodeid_list(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.r, i16 noundef zeroext %i.s, i32 noundef %i.t)
  %i.v = add nuw nsw i32 %i.u, 5                  ; 3 uses
  %i.w = and i32 %i.v, 65535
  %i.x = add nuw nsw i32 %i.w, %3
  %i.y = trunc i32 %i.v to i16
  %i.z = sub i16 %4, %i.y
  %i.aa = load i32, ptr @hf_reload_chordupdate_successors, align 4
  %i.ab = tail call fastcc i32 @dissect_nodeid_list(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.x, i16 noundef zeroext %i.z, i32 noundef %i.aa)
  %i.ac = add nuw nsw i32 %i.ab, %i.v
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink65 = phi i32 [ %i.ac, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %hf_reload_chordupdate_fingers.sink = phi ptr [ @hf_reload_chordupdate_fingers, %bb.c ], [ @hf_reload_chordupdate_successors, %bb.b ]
  %i.ad = and i32 %.sink65, 65535
  %i.ae = add nuw nsw i32 %i.ad, %3
  %i.af = trunc i32 %.sink65 to i16
  %i.ag = sub i16 %4, %i.af
  %i.ah = load i32, ptr %hf_reload_chordupdate_fingers.sink, align 4
  %i.ai = tail call fastcc i32 @dissect_nodeid_list(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.ae, i16 noundef zeroext %i.ag, i32 noundef %i.ah) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_pathtrackreq(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 6, 196650) %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_reload_pathtrackreq, align 4
  %i.b = zext i16 %4 to i32
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef %i.b, i32 noundef 0)
  %i.d = load i32, ptr @ett_reload_pathtrackreq, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 2 uses
  %i.f = load i32, ptr @hf_reload_pathtrackreq_destination, align 4
  %i.g = tail call fastcc i32 @dissect_destination(i32 noundef %i.f, ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %3, i16 noundef zeroext %4) ; 2 uses
  %i.h = load i32, ptr @hf_reload_pathtrackreq_request, align 4
  %i.i = add nuw nsw i32 %i.g, %3
  %i.j = trunc nuw nsw i32 %i.g to i16
  %i.k = sub i16 %4, %i.j
  %i.l = tail call fastcc i32 @dissect_diagnosticrequest(i32 noundef %i.h, ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.i, i16 noundef zeroext %i.k) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_pathtrackans(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 6, 196650) %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_reload_pathtrackans, align 4
  %i.b = zext i16 %4 to i32
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %3, i32 noundef %i.b, i32 noundef 0)
  %i.d = load i32, ptr @ett_reload_pathtrackans, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 2 uses
  %i.f = load i32, ptr @hf_reload_pathtrackans_next_hop, align 4
  %i.g = tail call fastcc i32 @dissect_destination(i32 noundef %i.f, ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %3, i16 noundef zeroext %4) ; 2 uses
  %i.h = load i32, ptr @hf_reload_pathtrackans_response, align 4
  %i.i = add nuw nsw i32 %i.g, %3
  %i.j = trunc nuw nsw i32 %i.g to i16
  %i.k = sub i16 %4, %i.j
  %i.l = tail call fastcc i32 @dissect_diagnosticresponse(i32 noundef %i.h, ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.i, i16 noundef zeroext %i.k) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_kindid_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 6, 196906) %3, i16 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 3 uses
  %i.d = zext i16 %4 to i32                       ; 3 uses
  %.not = icmp samesign ult i32 %i.c, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_reload_kindid_list, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef %i.d, i32 noundef 0)
  %i.g = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_reload_truncated_field, ptr noundef nonnull @.str.857) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr @hf_reload_kindid_list, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %3, i32 noundef %i.d, i32 noundef 0) ; 3 uses
  %i.j = load i32, ptr @ett_reload_kindid_list, align 4
  %i.k = tail call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.i, ptr noundef nonnull @.str.858, i32 noundef %i.c)
  %i.l = load i32, ptr @hf_reload_length_uint8, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %0, i32 noundef range(i32 6, 262202) %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not40 = icmp eq i8 %i.b, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = add nuw nsw i32 %3, 1
  %i.o = add nsw i32 %i.c, -1
  %i.p = lshr i32 %i.o, 2                         ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.03339 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03438 = phi i32 [ 0, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.q = add nuw nsw i32 %i.n, %.03438
  call fastcc void @dissect_kindid(i32 noundef -1, ptr noundef %0, ptr noundef %i.k, i32 noundef %i.q, ptr noundef nonnull %i.a)
  %i.r = add nuw nsw i32 %.03339, 1
  %i.s = add nuw nsw i32 %.03438, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %exitcond.not = icmp eq i32 %.03339, %i.p
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.d
  %5 = add nuw nsw i32 %i.p, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.033.lcssa = phi i32 [ 0, %bb.c ], [ %5, %._crit_edge.loopexit ]
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.i, ptr noundef nonnull @.str.699, i32 noundef %.033.lcssa)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint16(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 65536) i32 @dissect_diagnosticrequest(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_reload_diagnosticrequest, align 4
  %i.b = icmp slt i32 %0, 0
  %spec.select = select i1 %i.b, i32 %i.a, i32 %0
  %i.c = zext i16 %5 to i32                       ; 3 uses
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %spec.select, ptr noundef %1, i32 noundef %4, i32 noundef %i.c, i32 noundef 0) ; 2 uses
  %i.e = load i32, ptr @ett_reload_diagnosticrequest, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 5 uses
  %i.g = load i32, ptr @hf_reload_diagnostic_expiration, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %1, i32 noundef %4, i32 noundef 8, i32 noundef 20) ; 0 uses
  %i.i = load i32, ptr @hf_reload_diagnosticrequest_timestampinitiated, align 4
  %i.j = add i32 %4, 8
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %1, i32 noundef %i.j, i32 noundef 8, i32 noundef 20) ; 0 uses
  %i.l = add i32 %4, 16                           ; 2 uses
  %i.m = shl i32 %i.l, 3                          ; 15 uses
  %i.n = load i32, ptr @hf_reload_dmflags, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.n, ptr noundef %1, i32 noundef %i.l, i32 noundef 8, i32 noundef 0)
  %i.p = load i32, ptr @ett_reload_dmflags, align 4
  %i.q = tail call ptr @proto_item_add_subtree(ptr noundef %i.o, i32 noundef %i.p) ; 15 uses
  %i.r = add i32 %i.m, 63
  %i.s = load i32, ptr @hf_reload_dmflag_status_info, align 4
  %i.t = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.s, ptr noundef %1, i32 noundef %i.r, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_reload_dmflag_routing_table_size, align 4
  %i.v = add i32 %i.m, 62
  %i.w = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.u, ptr noundef %1, i32 noundef %i.v, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_reload_dmflag_process_power, align 4
  %i.y = add i32 %i.m, 61
  %i.z = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.x, ptr noundef %1, i32 noundef %i.y, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_reload_dmflag_bandwidth, align 4
  %i.ab = add i32 %i.m, 60
  %i.ac = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.aa, ptr noundef %1, i32 noundef %i.ab, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = load i32, ptr @hf_reload_dmflag_software_version, align 4
  %i.ae = add i32 %i.m, 59
  %i.af = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.ad, ptr noundef %1, i32 noundef %i.ae, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ag = load i32, ptr @hf_reload_dmflag_machine_uptime, align 4
  %i.ah = add i32 %i.m, 58
  %i.ai = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.ag, ptr noundef %1, i32 noundef %i.ah, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = load i32, ptr @hf_reload_dmflag_app_uptime, align 4
  %i.ak = add i32 %i.m, 57
  %i.al = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.aj, ptr noundef %1, i32 noundef %i.ak, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.am = load i32, ptr @hf_reload_dmflag_memory_footprint, align 4
  %i.an = add i32 %i.m, 56
  %i.ao = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.am, ptr noundef %1, i32 noundef %i.an, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ap = load i32, ptr @hf_reload_dmflag_datasize_stored, align 4
  %i.aq = add i32 %i.m, 55
  %i.ar = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.ap, ptr noundef %1, i32 noundef %i.aq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.as = load i32, ptr @hf_reload_dmflag_instances_stored, align 4
  %i.at = add i32 %i.m, 54
  %i.au = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.as, ptr noundef %1, i32 noundef %i.at, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = load i32, ptr @hf_reload_dmflag_messages_sent_rcvd, align 4
  %i.aw = add i32 %i.m, 53
  %i.ax = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.av, ptr noundef %1, i32 noundef %i.aw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ay = load i32, ptr @hf_reload_dmflag_ewma_bytes_sent, align 4
  %i.az = add i32 %i.m, 52
  %i.ba = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.ay, ptr noundef %1, i32 noundef %i.az, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bb = load i32, ptr @hf_reload_dmflag_ewma_bytes_rcvd, align 4
  %i.bc = add i32 %i.m, 51
  %i.bd = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.bb, ptr noundef %1, i32 noundef %i.bc, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.be = load i32, ptr @hf_reload_dmflag_underlay_hop, align 4
  %i.bf = add i32 %i.m, 50
  %i.bg = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.be, ptr noundef %1, i32 noundef %i.bf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = load i32, ptr @hf_reload_dmflag_battery_status, align 4
  %i.bi = add i32 %i.m, 49
  %i.bj = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.q, i32 noundef %i.bh, ptr noundef %1, i32 noundef %i.bi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bk = add i32 %4, 24                          ; 2 uses
  %i.bl = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.bk) ; 2 uses
  %i.bm = load i32, ptr @hf_reload_length_uint32, align 4
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bm, ptr noundef %1, i32 noundef %i.bk, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bo = add i32 %i.bl, 28
  %i.bp = icmp ugt i32 %i.bo, %i.c
  br i1 %i.bp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bq = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.d, ptr noundef nonnull @ei_reload_truncated_field, ptr noundef nonnull @.str.859) ; 0 uses
  %i.br = add nsw i32 %i.c, -28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.082 = phi i32 [ %i.br, %bb.b ], [ %i.bl, %bb.a ] ; 5 uses
  %.not = icmp eq i32 %.082, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bs = load i32, ptr @hf_reload_diagnosticrequest_extensions, align 4
  %i.bt = add i32 %4, 28                          ; 3 uses
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bs, ptr noundef %1, i32 noundef %i.bt, i32 noundef %.082, i32 noundef 0) ; 4 uses
  %i.bv = load i32, ptr @ett_reload_diagnosticrequest_extensions, align 4
  %i.bw = tail call ptr @proto_item_add_subtree(ptr noundef %i.bu, i32 noundef %i.bv) ; 2 uses
  %i.bx = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.bt) ; 2 uses
  %i.by = add i32 %i.bx, 4
  %i.bz = icmp ugt i32 %i.by, %.082
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ca = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.bu, ptr noundef nonnull @ei_reload_truncated_field, ptr noundef nonnull @.str.860) ; 0 uses
  %i.cb = add nsw i32 %.082, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.078 = phi i32 [ %i.cb, %bb.e ], [ %i.bx, %bb.d ] ; 3 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bu, ptr noundef nonnull @.str.861, i32 noundef %.078)
  %i.cc = load i32, ptr @hf_reload_length_uint32, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.cc, ptr noundef %1, i32 noundef %i.bt, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ce = add i32 %4, 32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.079 = phi i32 [ 0, %bb.f ], [ %i.cz, %bb.h ]  ; 4 uses
  %.077 = phi i32 [ 0, %bb.f ], [ %i.da, %bb.h ]  ; 2 uses
  %i.cf = icmp ult i32 %.079, %.078
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cg = add i32 %i.ce, %.079                    ; 3 uses
  %i.ch = sub nuw i32 %.078, %.079
  %i.ci = add i32 %i.cg, 2                        ; 2 uses
  %i.cj = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.ci)
  %i.ck = add i32 %i.cj, 6
  %i.cl = load i32, ptr @hf_reload_diagnosticextension, align 4
  %i.cm = and i32 %i.ck, 65535
  %i.cn = tail call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.cl, ptr noundef %1, i32 noundef %i.cg, i32 noundef %i.cm, i32 noundef 0)
  %i.co = load i32, ptr @ett_reload_diagnosticextension, align 4
  %i.cp = tail call ptr @proto_item_add_subtree(ptr noundef %i.cn, i32 noundef %i.co) ; 2 uses
  %i.cq = load i32, ptr @hf_reload_diagnosticextension_type, align 4
  %i.cr = tail call ptr @proto_tree_add_item(ptr noundef %i.cp, i32 noundef %i.cq, ptr noundef %1, i32 noundef %i.cg, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cs = load i32, ptr @hf_reload_diagnosticextension_contents, align 4
  %i.ct = and i32 %i.ch, 65535
  %i.cu = add nsw i32 %i.ct, -2
  %i.cv = tail call fastcc noundef i32 @dissect_opaque_string_or_data(ptr noundef %1, ptr noundef %2, ptr noundef %i.cp, i32 noundef %i.cs, i32 noundef %i.ci, i16 noundef zeroext 4, i32 noundef %i.cu, i1 noundef zeroext false)
  %i.cw = add i32 %i.cv, 2
  %i.cx = and i32 %i.cw, 65535                    ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = add i32 %i.cx, %.079
  %i.da = add i32 %.077, 1
  br i1 %i.cy, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bu, ptr noundef nonnull @.str.862, i32 noundef %.077)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.db = add i32 %.082, 28
  %i.dc = and i32 %i.db, 65535
  ret i32 %i.dc
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef range(i32 0, 65536) i32 @dissect_diagnosticresponse(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load i32, ptr @hf_reload_diagnosticresponse, align 4
  %i.d = icmp slt i32 %0, 0
  %spec.select = select i1 %i.d, i32 %i.c, i32 %0
  %i.e = zext i16 %5 to i32                       ; 3 uses
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %spec.select, ptr noundef %1, i32 noundef %4, i32 noundef %i.e, i32 noundef 0) ; 3 uses
  %i.g = load i32, ptr @ett_reload_diagnosticresponse, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 4 uses
  %i.i = load i32, ptr @hf_reload_diagnostic_expiration, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %1, i32 noundef %4, i32 noundef 8, i32 noundef 20) ; 0 uses
  %i.k = load i32, ptr @hf_reload_diagnosticresponse_timestampreceived, align 4
  %i.l = add i32 %4, 8
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %1, i32 noundef %i.l, i32 noundef 8, i32 noundef 20) ; 0 uses
  %i.n = load i32, ptr @hf_reload_diagnosticresponse_hopcounter, align 4
  %i.o = add i32 %4, 16                           ; 4 uses
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.n, ptr noundef %1, i32 noundef %i.o, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %i.o) ; 2 uses
  %i.r = add i32 %i.q, 20
  %i.s = icmp ugt i32 %i.r, %i.e
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.f, ptr noundef nonnull @ei_reload_truncated_field, ptr noundef nonnull @.str.863) ; 0 uses
  %i.u = add nsw i32 %i.e, -20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.064 = phi i32 [ %i.u, %bb.b ], [ %i.q, %bb.a ] ; 5 uses
  %i.v = load i32, ptr @hf_reload_diagnosticresponse_diagnostic_info_list, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.v, ptr noundef %1, i32 noundef %i.o, i32 noundef %.064, i32 noundef 0) ; 2 uses
  %i.x = load i32, ptr @ett_reload_diagnosticresponse_diagnostic_info_list, align 4
  %i.y = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.x) ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.w, ptr noundef nonnull @.str.864, i32 noundef %.064)
  %i.z = load i32, ptr @hf_reload_length_uint32, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.z, ptr noundef %1, i32 noundef %i.o, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ab = add i32 %4, 20
  br label %bb.d

end_hunk_0
