Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ecmp?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
begin_hunk_0_@file_info:bb.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @file_pos(i32 noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_ecmp_file_handle, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.a, ptr noundef %2, i32 noundef %0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.c = add i32 %0, 2                            ; 2 uses
  %i.d = load i32, ptr @ett_ecmp_file_position, align 4
  %i.e = tail call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %2, i32 noundef %i.c, i32 noundef 5, i32 noundef %i.d, ptr noundef null, ptr noundef nonnull @.str.646) ; 2 uses
  %i.f = load i32, ptr @hf_ecmp_file_ref_point, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %2, i32 noundef %i.c, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr @hf_ecmp_file_status, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.h, ptr noundef %2, i32 noundef %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = tail call signext i8 @tvb_get_int8(ptr noundef %2, i32 noundef %0)
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink25 = phi i32 [ 3, %bb.b ], [ 1, %bb.c ]
  %.sink = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ]
  %i.l = add i32 %0, %.sink25
  %i.m = load i32, ptr @hf_ecmp_ref_offset, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %.sink, i32 noundef %i.m, ptr noundef %2, i32 noundef %i.l, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @file_list(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_ecmp_file_handle, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.c, ptr noundef %3, i32 noundef %1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.e = add i32 %1, 2
  %i.f = load i32, ptr @hf_ecmp_number_of_files_to_list, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.f, ptr noundef %3, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr @hf_ecmp_file_status, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.h, ptr noundef %3, i32 noundef %1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = tail call signext i8 @tvb_get_int8(ptr noundef %3, i32 noundef %1)
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %1, 1                            ; 2 uses
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.l) ; 2 uses
  %i.n = load i32, ptr @hf_ecmp_number_of_files_to_list, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.n, ptr noundef %3, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.p = add i32 %1, 2
  %i.q = load i32, ptr @hf_ecmp_file_hash, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.q, ptr noundef %3, i32 noundef %i.p, i32 noundef 2, i32 noundef 0)
  store ptr %i.r, ptr %i.a, align 8
  %i.s = add i32 %1, 3                            ; 2 uses
  %i.t = add i32 %1, 4
  %i.u = zext i8 %i.m to i32                      ; 2 uses
  %i.v = load i32, ptr @ett_ecmp_file_list_no, align 4
  %i.w = call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %3, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.647)
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %indvars.iv = phi i32 [ %i.ae, %bb.h ], [ 0, %bb.d ]
  %.06062 = phi i32 [ %i.an, %bb.h ], [ %i.s, %bb.d ] ; 3 uses
  %i.x = add i32 %.06062, 1                       ; 4 uses
  %i.y = call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.x)
  %i.z = add i32 %.06062, 2                       ; 3 uses
  %i.aa = call zeroext i16 @tvb_get_ntohs(ptr noundef %3, i32 noundef %i.z)
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = add nuw nsw i32 %i.ab, 2
  %i.ad = load i32, ptr @ett_ecmp_file_list, align 4
  %i.ae = add nuw nsw i32 %indvars.iv, 1          ; 3 uses
  %i.af = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.w, ptr noundef %3, i32 noundef %i.x, i32 noundef %i.ac, i32 noundef %i.ad, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.648, i32 noundef %i.ae) ; 3 uses
  %i.ag = load i32, ptr @hf_ecmp_item_type, align 4
  %i.ah = call ptr @proto_tree_add_item(ptr noundef %i.af, i32 noundef %i.ag, ptr noundef %3, i32 noundef %i.x, i32 noundef 1, i32 noundef 0)
  switch i8 %i.y, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.ai = load i32, ptr @hf_ecmp_file_name, align 4
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %i.af, i32 noundef %i.ai, ptr noundef %3, i32 noundef %i.z, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.ak = load i32, ptr @hf_ecmp_directory, align 4
  %i.al = call ptr @proto_tree_add_item(ptr noundef %i.af, i32 noundef %i.ak, ptr noundef %3, i32 noundef %i.z, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.am = call ptr @expert_add_info(ptr noundef %0, ptr noundef %i.ah, ptr noundef nonnull @ei_ecmp_item_type) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.an = add i32 %i.x, %i.ab                     ; 3 uses
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = sub i32 %i.an, %.06062
  call void @proto_item_set_len(ptr noundef %i.ao, i32 noundef %i.ap)
  %exitcond.not = icmp eq i32 %i.ae, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %.060.lcssa = phi i32 [ %i.s, %bb.d ], [ %i.an, %bb.h ]
  %i.aq = load ptr, ptr %i.a, align 8
  %reass.sub = sub i32 %.060.lcssa, %1
  %i.ar = add i32 %reass.sub, -3
  call void @proto_item_set_len(ptr noundef %i.aq, i32 noundef %i.ar)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @cyclic_setup(ptr noundef %0, i16 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %3) ; 3 uses
  %i.b = trunc i32 %i.a to i16                    ; 2 uses
  %i.c = add i16 %1, 1                            ; 2 uses
  %i.d = zext i16 %1 to i32                       ; 2 uses
  br i1 %2, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_ecmp_cyclic_setup_linkno, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.e, ptr noundef %3, i32 noundef %i.d, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = zext i16 %i.c to i32                     ; 2 uses
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.g) ; 2 uses
  %i.i = load i32, ptr @hf_ecmp_cyclic_setup_mode, align 4
  %i.j = add i16 %1, 2                            ; 7 uses
  %i.k = zext i8 %i.h to i32
  %i.l = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %i.i, ptr noundef %3, i32 noundef %i.g, i32 noundef 1, i32 noundef %i.k) ; 0 uses
  switch i8 %i.h, label %bb.i [
    i8 0, label %bb.c
    i8 10, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.d
    i8 3, label %bb.d
    i8 4, label %bb.d
    i8 5, label %bb.e
    i8 12, label %bb.h
    i8 11, label %bb.f
    i8 6, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.m = load i32, ptr @hf_ecmp_cyclic_setup_dir, align 4
  %i.n = add i16 %1, 3
  %i.o = zext i16 %i.j to i32
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.m, ptr noundef %3, i32 noundef %i.o, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = zext i16 %i.n to i32
  tail call fastcc void @add_cyclic_setup_attributes(ptr noundef %0, i32 noundef %i.q, i16 noundef zeroext %i.b, ptr noundef %3, ptr noundef %4)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.r = load i32, ptr @hf_ecmp_cyclic_setup_dir, align 4
  %i.s = zext i16 %i.j to i32
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.r, ptr noundef %3, i32 noundef %i.s, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.u = load i32, ptr @hf_ecmp_data, align 4
  %i.v = zext i16 %i.j to i32                     ; 2 uses
  %i.w = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %i.v)
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.u, ptr noundef %3, i32 noundef %i.v, i32 noundef %i.w, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.y = load i32, ptr @hf_ecmp_cyclic_setup_dir, align 4
  %i.z = add i16 %1, 3
  %i.aa = zext i16 %i.j to i32
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.y, ptr noundef %3, i32 noundef %i.aa, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %.0118 = phi i16 [ %i.z, %bb.f ], [ %i.j, %bb.b ] ; 2 uses
  %i.ac = load i32, ptr @hf_ecmp_cyclic_setup_attrib_count, align 4
  %i.ad = zext i16 %.0118 to i32
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.ac, ptr noundef %3, i32 noundef %i.ad, i32 noundef 1, i32 noundef 0)
  %i.af = load i32, ptr @ett_cyclic_setup_attribs, align 4
  %i.ag = tail call ptr @proto_item_add_subtree(ptr noundef %i.ae, i32 noundef %i.af)
  %i.ah = and i32 %i.a, 65535                     ; 2 uses
  %.1134 = add i16 %.0118, 1                      ; 2 uses
  %i.ai = zext i16 %.1134 to i32                  ; 2 uses
  %i.aj = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph137, label %.loopexit

.lr.ph137:                                        ; preds = %bb.g, %.lr.ph137
  %i.ak = phi i32 [ %5, %.lr.ph137 ], [ %i.ai, %bb.g ]
  %.1135 = phi i16 [ %.1, %.lr.ph137 ], [ %.1134, %bb.g ]
  %i.al = load i32, ptr @hf_ecmp_cyclic_setup_attrib, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.ag, i32 noundef %i.al, ptr noundef %3, i32 noundef %i.ak, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.1 = add nuw i16 %.1135, 1                     ; 2 uses
  %5 = zext i16 %.1 to i32                        ; 2 uses
  %i.an = icmp samesign ugt i32 %i.ah, %5
  br i1 %i.an, label %.lr.ph137, label %.loopexit, !llvm.loop !17

bb.h:                                             ; preds = %bb.b
  %i.ao = load i32, ptr @hf_ecmp_cyclic_setup_dir, align 4
  %i.ap = add i16 %1, 3
  %i.aq = zext i16 %i.j to i32
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.ao, ptr noundef %3, i32 noundef %i.aq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.as = load i32, ptr @hf_ecmp_cyclic_setup_max_mappings, align 4
  %i.at = add i16 %1, 4
  %i.au = zext i16 %i.ap to i32
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.as, ptr noundef %3, i32 noundef %i.au, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aw = load i32, ptr @hf_ecmp_cyclic_setup_start_offset, align 4
  %i.ax = zext i16 %i.at to i32
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.aw, ptr noundef %3, i32 noundef %i.ax, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.b
  %i.az = load i32, ptr @hf_ecmp_data, align 4
  %i.ba = zext i16 %i.j to i32                    ; 2 uses
  %i.bb = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %i.ba)
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.az, ptr noundef %3, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.bd = load i32, ptr @hf_ecmp_cyclic_setup_rsp_status, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.bd, ptr noundef %3, i32 noundef %i.d, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @hf_ecmp_cyclic_setup_rsp_err_idx, align 4
  %i.bg = add i16 %1, 2
  %i.bh = zext i16 %i.c to i32
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.bf, ptr noundef %3, i32 noundef %i.bh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bj = zext i16 %i.bg to i32                   ; 2 uses
  %i.bk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bj) ; 2 uses
  %i.bl = load i32, ptr @hf_ecmp_cyclic_setup_mode, align 4
  %i.bm = add i16 %1, 3                           ; 5 uses
  %i.bn = zext i8 %i.bk to i32
  %i.bo = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %i.bl, ptr noundef %3, i32 noundef %i.bj, i32 noundef 1, i32 noundef %i.bn) ; 0 uses
  switch i8 %i.bk, label %bb.o [
    i8 0, label %.loopexit
    i8 1, label %.loopexit
    i8 2, label %.loopexit
    i8 3, label %.loopexit
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
    i8 12, label %bb.n
    i8 6, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.bp = load i32, ptr @hf_ecmp_cyclic_setup_link_exists, align 4
  %i.bq = zext i16 %i.bm to i32
  %i.br = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.bp, ptr noundef %3, i32 noundef %i.bq, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bs = zext i16 %i.bm to i32                   ; 2 uses
  %i.bt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bs) ; 2 uses
  %i.bu = load i32, ptr @hf_ecmp_cyclic_setup_tx_count, align 4
  %i.bv = add i16 %1, 4                           ; 2 uses
  %i.bw = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.bu, ptr noundef %3, i32 noundef %i.bs, i32 noundef 1, i32 noundef 0)
  %i.bx = load i32, ptr @ett_cyclic_setup_attribs, align 4
  %i.by = tail call ptr @proto_item_add_subtree(ptr noundef %i.bw, i32 noundef %i.bx)
  %.not125 = icmp eq i8 %i.bt, 0
  br i1 %.not125, label %._crit_edge, label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.l, %.lr.ph128
  %.0117127 = phi i8 [ %i.cf, %.lr.ph128 ], [ %i.bt, %bb.l ]
  %.2126 = phi i16 [ %i.cc, %.lr.ph128 ], [ %i.bv, %bb.l ] ; 2 uses
  %i.bz = zext i16 %.2126 to i32                  ; 2 uses
  %i.ca = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.bz)
  %i.cb = load i32, ptr @hf_ecmp_cyclic_setup_linkno, align 4
  %i.cc = add i16 %.2126, 1                       ; 2 uses
  %i.cd = zext i8 %i.ca to i32
  %i.ce = tail call ptr @proto_tree_add_uint(ptr noundef %i.by, i32 noundef %i.cb, ptr noundef %3, i32 noundef %i.bz, i32 noundef 1, i32 noundef %i.cd) ; 0 uses
  %i.cf = add i8 %.0117127, -1                    ; 2 uses
  %.not = icmp eq i8 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph128, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph128, %bb.l
  %.2.lcssa = phi i16 [ %i.bv, %bb.l ], [ %i.cc, %.lr.ph128 ] ; 2 uses
  %i.cg = zext i16 %.2.lcssa to i32               ; 2 uses
  %i.ch = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.cg) ; 2 uses
  %i.ci = load i32, ptr @hf_ecmp_cyclic_setup_rx_count, align 4
  %i.cj = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.ci, ptr noundef %3, i32 noundef %i.cg, i32 noundef 1, i32 noundef 0)
  %i.ck = load i32, ptr @ett_cyclic_setup_attribs, align 4
  %i.cl = tail call ptr @proto_item_add_subtree(ptr noundef %i.cj, i32 noundef %i.ck)
  %.not121129 = icmp eq i8 %i.ch, 0
  br i1 %.not121129, label %.loopexit, label %.lr.ph133

.lr.ph133:                                        ; preds = %._crit_edge, %.lr.ph133
  %.0131 = phi i8 [ %i.cr, %.lr.ph133 ], [ %i.ch, %._crit_edge ]
  %.3.in130 = phi i16 [ %.3, %.lr.ph133 ], [ %.2.lcssa, %._crit_edge ]
  %.3 = add i16 %.3.in130, 1                      ; 2 uses
  %i.cm = zext i16 %.3 to i32                     ; 2 uses
  %i.cn = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.cm)
  %i.co = load i32, ptr @hf_ecmp_cyclic_setup_linkno, align 4
  %i.cp = zext i8 %i.cn to i32
  %i.cq = tail call ptr @proto_tree_add_uint(ptr noundef %i.cl, i32 noundef %i.co, ptr noundef %3, i32 noundef %i.cm, i32 noundef 1, i32 noundef %i.cp) ; 0 uses
  %i.cr = add i8 %.0131, -1                       ; 2 uses
  %.not121 = icmp eq i8 %i.cr, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph133, !llvm.loop !19

bb.m:                                             ; preds = %bb.j
  %i.cs = load i32, ptr @hf_ecmp_cyclic_setup_attrib_count, align 4
  %i.ct = add i16 %1, 4                           ; 2 uses
  %i.cu = zext i16 %i.bm to i32
  %i.cv = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.cs, ptr noundef %3, i32 noundef %i.cu, i32 noundef 1, i32 noundef 0)
  %i.cw = load i32, ptr @ett_cyclic_setup_attribs, align 4
  %i.cx = tail call ptr @proto_item_add_subtree(ptr noundef %i.cv, i32 noundef %i.cw)
  %i.cy = and i32 %i.a, 65535                     ; 2 uses
  %i.cz = zext i16 %i.ct to i32                   ; 2 uses
  %i.da = icmp samesign ugt i32 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %i.db = phi i32 [ %7, %.lr.ph ], [ %i.cz, %bb.m ]
  %.4124 = phi i16 [ %6, %.lr.ph ], [ %i.ct, %bb.m ]
  %i.dc = load i32, ptr @hf_ecmp_cyclic_setup_attrib, align 4
  %6 = add nuw i16 %.4124, 1                      ; 2 uses
  %i.dd = tail call ptr @proto_tree_add_item(ptr noundef %i.cx, i32 noundef %i.dc, ptr noundef %3, i32 noundef %i.db, i32 noundef 1, i32 noundef 0) ; 0 uses
  %7 = zext i16 %6 to i32                         ; 2 uses
  %i.de = icmp samesign ugt i32 %i.cy, %7
  br i1 %i.de, label %.lr.ph, label %.loopexit, !llvm.loop !20

bb.n:                                             ; preds = %bb.j, %bb.j, %bb.j
  %i.df = zext i16 %i.bm to i32
  tail call fastcc void @add_cyclic_setup_attributes(ptr noundef %0, i32 noundef %i.df, i16 noundef zeroext %i.b, ptr noundef %3, ptr noundef %4)
  br label %.loopexit

bb.o:                                             ; preds = %bb.j
  %i.dg = load i32, ptr @hf_ecmp_data, align 4
  %i.dh = zext i16 %i.bm to i32                   ; 2 uses
  %i.di = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %i.dh)
  %i.dj = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.dg, ptr noundef %3, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph133, %.lr.ph137, %bb.m, %._crit_edge, %bb.g, %bb.k, %bb.n, %bb.o, %bb.j, %bb.j, %bb.j, %bb.j, %bb.c, %bb.d, %bb.e, %bb.h, %bb.i
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @program_control(i32 noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ett_ecmp_program_control_message, align 4 ; 2 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %2, i32 noundef %0, i32 noundef 3, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.649) ; 3 uses
  %i.c = load i32, ptr @hf_ecmp_program_control_target, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %2, i32 noundef %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = add i32 %0, 1
  %i.f = load i32, ptr @hf_ecmp_program_control_command, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.f, ptr noundef %2, i32 noundef %i.e, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = add i32 %0, 2
  %i.i = load i32, ptr @hf_ecmp_program_control_sub_command, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.i, ptr noundef %2, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %2, i32 noundef %0, i32 noundef 1, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.650)
  %i.l = load i32, ptr @hf_ecmp_program_control_status, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %2, i32 noundef %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @program_status(i32 noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ett_ecmp_program_status_message, align 4 ; 2 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %2, i32 noundef %0, i32 noundef 1, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.651)
  %i.c = load i32, ptr @hf_ecmp_program_status_target, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %i.b, i32 noundef %i.c, ptr noundef %2, i32 noundef %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @proto_tree_add_subtree(ptr noundef %3, ptr noundef %2, i32 noundef %0, i32 noundef 2, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.652) ; 2 uses
  %i.f = load i32, ptr @hf_ecmp_program_status_status, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %2, i32 noundef %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = add i32 %0, 1
  %i.i = load i32, ptr @hf_ecmp_program_status_additional_items, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.i, ptr noundef %2, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @tunnel_frame(i32 noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_ecmp_tunnel_control, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.a, ptr noundef %2, i32 noundef %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_ecmp_tunnel_start_flag, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.c, ptr noundef %2, i32 noundef %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_ecmp_tunnel_end_flag, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %2, i32 noundef %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @hf_ecmp_tunnel_check_output_flag, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.g, ptr noundef %2, i32 noundef %0, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = add i32 %0, 1
  %i.j = load i32, ptr @hf_ecmp_tunnel_size, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.j, ptr noundef %2, i32 noundef %i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.l = add i32 %0, 3                            ; 2 uses
  %i.m = load i32, ptr @hf_ecmp_data, align 4
  %i.n = tail call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef %i.l)
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.m, ptr noundef %2, i32 noundef %i.l, i32 noundef %i.n, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @modbus_pdu(i32 noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %5 = alloca %struct.modbus_data_t, align 4      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i16 0, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.b = load i32, ptr @hf_ecmp_modbus_pdu_size, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %4, i32 noundef %i.b, ptr noundef %2, i32 noundef %0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = add i32 %0, 2
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 6
  %not. = xor i1 %1, true
  %. = zext i1 %not. to i32
  store i32 %., ptr %5, align 4
  store i16 0, ptr %i.e, align 4
  store i8 0, ptr %i.f, align 2
  %i.g = load i16, ptr %i.a, align 2
  %i.h = zext i16 %i.g to i32
  %i.i = call ptr @tvb_new_subset_length(ptr noundef %2, i32 noundef %i.d, i32 noundef %i.h)
  %i.j = load ptr, ptr @modbus_handle, align 8
  %i.k = call i32 @call_dissector_with_data(ptr noundef %i.j, ptr noundef %i.i, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare signext i8 @tvb_get_int8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @add_category_codes(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %0) ; 2 uses
  %i.b = load i32, ptr @hf_ecmp_category, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %1, i32 noundef %0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.d = load i32, ptr @ett_ecmp_category, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 5 uses
  %i.f = add i32 %0, 1
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.f) ; 3 uses
  %i.h = add i32 %0, 2                            ; 4 uses
  %i.i = zext i8 %i.g to i32                      ; 2 uses
  %i.j = icmp eq i8 %i.g, 2
  %i.k = icmp eq i8 %i.a, 1
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @hf_ecmp_category_id, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.l, ptr noundef %1, i32 noundef %i.h, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = add i32 %0, 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i8 %i.g, 4
  %i.p = icmp eq i8 %i.a, 0
  %or.cond5 = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @hf_ecmp_drive_type, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.q, ptr noundef %1, i32 noundef %i.h, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_ecmp_drive_derivative, align 4
  %i.t = add i32 %0, 3
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.s, ptr noundef %1, i32 noundef %i.t, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_ecmp_drive_factory_fit_category_id, align 4
  %i.w = add i32 %0, 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.v, ptr noundef %1, i32 noundef %i.w, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.y = add i32 %0, 6
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = load i32, ptr @hf_ecmp_data, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.z, ptr noundef %1, i32 noundef %i.h, i32 noundef %i.i, i32 noundef 0) ; 0 uses
  %i.ab = add i32 %i.h, %i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ %i.y, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ac = sub i32 %.0, %0
  tail call void @proto_item_set_len(ptr noundef %i.c, i32 noundef %i.ac)
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @add_info_response(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %1)
  %i.b = load i32, ptr @ett_ecmp_info_type, align 4
  %i.c = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %1, i32 noundef %0, i32 noundef 6, i32 noundef %i.b, ptr noundef null, ptr noundef nonnull @.str.653) ; 3 uses
  %i.d = load i32, ptr @hf_ecmp_buffer_size, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %1, i32 noundef %0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.f = add i32 %0, 2
  %i.g = load i32, ptr @hf_ecmp_max_response, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.g, ptr noundef %1, i32 noundef %i.f, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.i = add i32 %0, 4
  %i.j = load i32, ptr @hf_ecmp_max_handle, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.c, i32 noundef %i.j, ptr noundef %1, i32 noundef %i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
end_hunk_0
