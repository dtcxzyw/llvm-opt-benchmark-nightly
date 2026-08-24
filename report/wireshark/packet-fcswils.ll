Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-fcswils?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
begin_hunk_0_@dissect_swils_aca:bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not30 = icmp eq i8 %3, 0
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  %i.b = load i32, ptr @hf_swils_domain_id_list_length, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = lshr i16 %i.a, 2                         ; 2 uses
  %i.e = zext nneg i16 %i.d to i32
  %.not33 = icmp eq i16 %i.d, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.032 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.02831 = phi i32 [ %i.m, %.lr.ph ], [ 4, %bb.c ] ; 2 uses
  %i.f = load i32, ptr @hf_swils_aca_domainid, align 4
  %i.g = or disjoint i32 %.02831, 3               ; 3 uses
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.g)
  %i.i = zext i8 %i.h to i32
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.g)
  %i.k = zext i8 %i.j to i32
  %i.l = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef %i.i, ptr noundef nonnull @.str.438, i32 noundef %.032, i32 noundef %i.k) ; 0 uses
  %i.m = add nuw nsw i32 %.02831, 4
  %i.n = add nuw nsw i32 %.032, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr @hf_swils_zone_status, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.o, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_swils_zone_reason, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.q, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_swils_zone_vendor_unique, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.s, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_swils_rca(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i8 noundef zeroext %3) #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp ne i8 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_swils_zone_status, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_swils_zone_reason, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_swils_zone_vendor_unique, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_swils_sfc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) #0 {
bb.a:
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @hf_swils_sfc_opcode, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.c = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.d = load i32, ptr @hf_swils_sfc_zoneset_length, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.not98 = icmp eq i16 %i.c, 0
  br i1 %.not98, label %.loopexit101, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i16 %i.c to i32
  %i.g = getelementptr i8, ptr %1, i64 416
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.j = zext i8 %i.i to i32
  %i.k = tail call ptr @tvb_get_string_enc(ptr noundef %i.h, ptr noundef %0, i32 noundef 8, i32 noundef %i.j, i32 noundef 0)
  %i.l = load i32, ptr @hf_swils_sfc_zonenm, align 4
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.n = zext i8 %i.m to i32
  %i.o = add nuw nsw i32 %i.n, 4
  %i.p = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 4, i32 noundef %i.o, ptr noundef %i.k) ; 0 uses
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.r = zext i8 %i.q to i32
  %.neg100 = add nsw i32 %i.f, -4
  %i.s = sub nsw i32 %.neg100, %i.r
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, 8                  ; 3 uses
  %i.w = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.v) ; 2 uses
  %i.x = load i32, ptr @ett_fcswils_zoneobjlist, align 4
  %i.y = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.v, i32 noundef %i.s, i32 noundef %i.x, ptr noundef null, ptr noundef nonnull @.str.349) ; 2 uses
  %i.z = load i32, ptr @hf_swils_zone_num_zoning_objects, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.y, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.v, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ab = add nuw nsw i32 %i.u, 12                ; 2 uses
  %i.ac = icmp sgt i32 %i.w, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit101

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0103 = phi i32 [ %i.ah, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.094102 = phi i32 [ %i.ag, %.lr.ph ], [ %i.ab, %bb.c ] ; 4 uses
  %i.ad = tail call fastcc i32 @get_zoneobj_len(ptr noundef %0, i32 noundef %.094102) ; 2 uses
  %i.ae = load i32, ptr @ett_fcswils_zoneobj, align 4
  %i.af = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.y, ptr noundef %0, i32 noundef %.094102, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef null, ptr noundef nonnull @.str.435, i32 noundef %.0103)
  tail call fastcc void @dissect_swils_zone_obj(ptr noundef %0, ptr noundef %1, ptr noundef %i.af, i32 noundef %.094102)
  %i.ag = add i32 %i.ad, %.094102                 ; 2 uses
  %i.ah = add nuw nsw i32 %.0103, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.w
  br i1 %exitcond.not, label %.loopexit101, label %.lr.ph, !llvm.loop !16

.loopexit101:                                     ; preds = %.lr.ph, %bb.c, %bb.b
  %.195 = phi i32 [ 4, %bb.b ], [ %i.ab, %bb.c ], [ %i.ag, %.lr.ph ] ; 4 uses
  %i.ai = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.195) ; 2 uses
  %i.aj = load i32, ptr @hf_swils_zone_full_zone_set_length, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef %.195, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.not99 = icmp eq i32 %i.ai, 0
  br i1 %.not99, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit101
  %i.al = add i32 %.195, 4                        ; 3 uses
  %i.am = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.al) ; 2 uses
  %i.an = load i32, ptr @ett_fcswils_zoneobjlist, align 4
  %i.ao = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.al, i32 noundef %i.ai, i32 noundef %i.an, ptr noundef null, ptr noundef nonnull @.str.436) ; 2 uses
  %i.ap = load i32, ptr @hf_swils_zone_num_zoning_objects, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %i.ao, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.al, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ar = icmp sgt i32 %i.am, 0
  br i1 %i.ar, label %.lr.ph106.preheader, label %.loopexit

.lr.ph106.preheader:                              ; preds = %bb.d
  %i.as = add i32 %.195, 8
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %.lr.ph106
  %.1105 = phi i32 [ %i.ax, %.lr.ph106 ], [ 0, %.lr.ph106.preheader ] ; 2 uses
  %.2104 = phi i32 [ %i.aw, %.lr.ph106 ], [ %i.as, %.lr.ph106.preheader ] ; 4 uses
  %i.at = tail call fastcc i32 @get_zoneobj_len(ptr noundef %0, i32 noundef %.2104) ; 2 uses
  %i.au = load i32, ptr @ett_fcswils_zoneobj, align 4
  %i.av = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.ao, ptr noundef %0, i32 noundef %.2104, i32 noundef %i.at, i32 noundef %i.au, ptr noundef null, ptr noundef nonnull @.str.435, i32 noundef %.1105)
  tail call fastcc void @dissect_swils_zone_obj(ptr noundef %0, ptr noundef %1, ptr noundef %i.av, i32 noundef %.2104)
  %i.aw = add i32 %i.at, %.2104
  %i.ax = add nuw nsw i32 %.1105, 1               ; 2 uses
  %exitcond107.not = icmp eq i32 %i.ax, %i.am
  br i1 %exitcond107.not, label %.loopexit, label %.lr.ph106, !llvm.loop !17

bb.e:                                             ; preds = %bb.a
  %i.ay = load i32, ptr @hf_swils_zone_status, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ay, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ba = load i32, ptr @hf_swils_zone_reason, align 4
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ba, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bc = load i32, ptr @hf_swils_zone_vendor_unique, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bc, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph106, %bb.d, %.loopexit101, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_swils_ufc(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i8 noundef zeroext %3) #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp ne i8 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_swils_zone_status, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_swils_zone_reason, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_swils_zone_vendor_unique, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_swils_esc(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i8 noundef zeroext %3) #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not38 = icmp eq i8 %3, 0
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 2 uses
  %4 = zext i16 %i.a to i32
  %i.b = load i32, ptr @hf_swils_esc_payload_length, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_swils_esc_swvendorid, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef 0) ; 0 uses
  %5 = add nsw i32 %4, -12
  %6 = sdiv i32 %5, 12
  %i.f = icmp ugt i16 %i.a, 23
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.040 = phi i32 [ %i.o, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.03639 = phi i32 [ %i.n, %.lr.ph ], [ 12, %bb.c ] ; 4 uses
  %i.g = load i32, ptr @ett_fcswils_esc_pdesc, align 4
  %i.h = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %.03639, i32 noundef 12, i32 noundef %i.g, ptr noundef null, ptr noundef nonnull @.str.439, i32 noundef %.040) ; 2 uses
  %i.i = load i32, ptr @hf_swils_esc_pdesc_vendorid, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %0, i32 noundef %.03639, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_swils_esc_protocolid, align 4
  %i.l = add nuw nsw i32 %.03639, 10
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.l, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = add nuw nsw i32 %.03639, 12
  %i.o = add nuw nsw i32 %.040, 1                 ; 2 uses
  %7 = icmp slt i32 %i.o, %6
  br i1 %7, label %.lr.ph, label %.loopexit, !llvm.loop !18

bb.d:                                             ; preds = %bb.b
  %i.p = load i32, ptr @hf_swils_esc_swvendorid, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.p, ptr noundef %0, i32 noundef 4, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @ett_fcswils_esc_pdesc, align 4
  %i.s = tail call ptr @proto_tree_add_subtree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 12, i32 noundef 12, i32 noundef %i.r, ptr noundef null, ptr noundef nonnull @.str.440) ; 2 uses
  %i.t = load i32, ptr @hf_swils_esc_pdesc_vendorid, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.t, ptr noundef %0, i32 noundef 12, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_swils_esc_protocolid, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %i.s, i32 noundef %i.v, ptr noundef %0, i32 noundef 22, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_swils_ess(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i8 zeroext %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @hf_swils_ess_rev, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_swils_ess_len, align 4
  %i.g = call ptr @proto_tree_add_item_ret_uint(ptr noundef nonnull %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.h = load i32, ptr @ett_fcswils_ieinfo, align 4
  %i.i = call ptr @proto_tree_add_subtree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 12, i32 noundef 256, i32 noundef %i.h, ptr noundef null, ptr noundef nonnull @.str.441) ; 6 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %dissect_swils_interconnect_element_info.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @hf_swils_interconnect_list_len, align 4
  %i.k = call ptr @proto_tree_add_item(ptr noundef nonnull %i.i, i32 noundef %i.j, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.l = call i32 @tvb_strsize(ptr noundef %0, i32 noundef 16) ; 3 uses
  %i.m = load i32, ptr @hf_swils_ess_vendorname, align 4
  %i.n = call ptr @proto_tree_add_item(ptr noundef nonnull %i.i, i32 noundef %i.m, ptr noundef %0, i32 noundef 16, i32 noundef %i.l, i32 noundef 0) ; 0 uses
  %i.o = add i32 %i.l, 16                         ; 3 uses
  %i.p = call i32 @tvb_strsize(ptr noundef %0, i32 noundef %i.o) ; 3 uses
  %i.q = load i32, ptr @hf_swils_ess_modelname, align 4
  %i.r = call ptr @proto_tree_add_item(ptr noundef nonnull %i.i, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef 0) ; 0 uses
  %i.s = add i32 %i.p, %i.o                       ; 3 uses
  %i.t = call i32 @tvb_strsize(ptr noundef %0, i32 noundef %i.s) ; 3 uses
  %i.u = load i32, ptr @hf_swils_ess_relcode, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef nonnull %i.i, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.s, i32 noundef %i.t, i32 noundef 0) ; 0 uses
  %i.w = add i32 %i.l, %i.p
  %i.x = add i32 %i.w, %i.t
  %i.y = sub i32 252, %i.x                        ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader.i, label %dissect_swils_interconnect_element_info.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.aa = add i32 %i.t, %i.s
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.051.i = phi i32 [ %i.af, %.lr.ph.i ], [ %i.y, %.lr.ph.preheader.i ]
  %.04450.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.aa, %.lr.ph.preheader.i ] ; 3 uses
  %i.ab = call i32 @tvb_strsize(ptr noundef %0, i32 noundef %.04450.i) ; 3 uses
  %i.ac = load i32, ptr @hf_swils_ess_vendorspecific, align 4
  %i.ad = call ptr @proto_tree_add_item(ptr noundef nonnull %i.i, i32 noundef %i.ac, ptr noundef %0, i32 noundef %.04450.i, i32 noundef %i.ab, i32 noundef 0) ; 0 uses
  %i.ae = add i32 %i.ab, %.04450.i
  %i.af = sub i32 %.051.i, %i.ab                  ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i, label %dissect_swils_interconnect_element_info.exit, !llvm.loop !19

dissect_swils_interconnect_element_info.exit:     ; preds = %.lr.ph.i, %bb.b, %bb.c
  %i.ah = load i32, ptr %i.c, align 4
  %i.ai = add i32 %i.ah, -256
  store i32 %i.ai, ptr %i.c, align 4
  %i.aj = load i32, ptr @hf_swils_ess_numobj, align 4
  %i.ak = call ptr @proto_tree_add_item_ret_uint(ptr noundef nonnull %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef 268, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.al = load i32, ptr %i.c, align 4
  %i.am = add i32 %i.al, -4                       ; 2 uses
  store i32 %i.am, ptr %i.c, align 4
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = load i32, ptr %i.b, align 4
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %dissect_swils_interconnect_element_info.exit
  %i.ar = getelementptr i8, ptr %1, i64 416
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %dissect_swils_ess_capability_obj.exit
  %.043 = phi i32 [ 272, %.lr.ph ], [ %i.fk, %dissect_swils_ess_capability_obj.exit ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.as = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.043) ; 3 uses
  %.not.i25 = icmp eq i8 %i.as, -32               ; 2 uses
  br i1 %.not.i25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = zext i8 %i.as to i32
  %i.au = add i32 %.043, 3
  %i.av = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.au)
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = shl nuw nsw i32 %i.aw, 3
  %i.ay = or disjoint i32 %i.ax, 4
  %i.az = load i32, ptr @ett_fcswils_capinfo, align 4
  %i.ba = load ptr, ptr %i.ar, align 8
  %i.bb = call ptr @val_to_str(ptr noundef %i.ba, i32 noundef %i.at, ptr noundef nonnull @fc_ct_gstype_vals, ptr noundef nonnull @.str.443)
  %i.bc = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %.043, i32 noundef %i.ay, i32 noundef %i.az, ptr noundef null, ptr noundef nonnull @.str.442, ptr noundef %i.bb)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bd = add i32 %.043, 3
  %i.be = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bd)
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = add nuw nsw i32 %i.bf, 12
  %i.bh = load i32, ptr @ett_fcswils_capinfo, align 4
  %i.bi = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %.043, i32 noundef %i.bg, i32 noundef %i.bh, ptr noundef null, ptr noundef nonnull @.str.444, i32 noundef 224)
  %i.bj = add nuw nsw i32 %i.bf, 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.071.i = phi i32 [ -8, %bb.e ], [ %i.bj, %bb.f ]
  %.069.i = phi i32 [ %i.aw, %bb.e ], [ 0, %bb.f ] ; 8 uses
  %.0.i = phi ptr [ %i.bc, %bb.e ], [ %i.bi, %bb.f ] ; 28 uses
  %i.bk = load i32, ptr @hf_swils_ess_cap_type, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %.0.i, i32 noundef %i.bk, ptr noundef %0, i32 noundef %.043, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bm = load i32, ptr @hf_swils_ess_cap_subtype, align 4
  %i.bn = add i32 %.043, 1
  %i.bo = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0.i, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bn, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  br i1 %.not.i25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = load i32, ptr %i.a, align 4
  %i.bq = trunc i32 %i.bp to i8
  %i.br = call zeroext i8 @get_gs_server(i8 noundef zeroext %i.as, i8 noundef zeroext %i.bq)
  %.fr.i = freeze i8 %i.br                        ; 2 uses
  %i.bs = zext i8 %.fr.i to i32
  %i.bt = load i32, ptr @hf_swils_ess_cap_svc, align 4
  %i.bu = call ptr @proto_tree_add_uint(ptr noundef %.0.i, i32 noundef %i.bt, ptr noundef %0, i32 noundef %.043, i32 noundef 2, i32 noundef %i.bs) ; 0 uses
  %i.bv = load i32, ptr @hf_swils_ess_cap_numentries, align 4
  %i.bw = add i32 %.043, 3
  %i.bx = call ptr @proto_tree_add_item(ptr noundef %.0.i, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.bw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.by = add i32 %.043, 4                        ; 6 uses
  %.not7981.i = icmp eq i32 %.069.i, 0
  br i1 %.not7981.i, label %dissect_swils_ess_capability_obj.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.h
  %.not.i.i = icmp eq ptr %.0.i, null
  %i.bz = shl nuw nsw i32 %.069.i, 3
  %i.ca = or disjoint i32 %i.bz, 4                ; 6 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i26, %dissect_swils_ess_capability.exit.us.i
  %.06884.us.i = phi i32 [ %i.ce, %dissect_swils_ess_capability.exit.us.i ], [ 4, %.lr.ph.i26 ] ; 2 uses
  %.17083.us.i = phi i32 [ %i.cc, %dissect_swils_ess_capability.exit.us.i ], [ %.069.i, %.lr.ph.i26 ]
  %.07382.us.i = phi i32 [ %i.cd, %dissect_swils_ess_capability.exit.us.i ], [ %i.by, %.lr.ph.i26 ] ; 2 uses
  %i.cb = call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.07382.us.i, i32 noundef 8)
  br i1 %i.cb, label %dissect_swils_ess_capability.exit.us.i, label %dissect_swils_ess_capability_obj.exit

dissect_swils_ess_capability.exit.us.i:           ; preds = %.lr.ph.split.us.i
  %i.cc = add nsw i32 %.17083.us.i, -1            ; 2 uses
  %i.cd = add i32 %.07382.us.i, 8
  %i.ce = add nuw nsw i32 %.06884.us.i, 8
  %.not79.us.i = icmp eq i32 %i.cc, 0
  br i1 %.not79.us.i, label %dissect_swils_ess_capability_obj.exit, label %.lr.ph.split.us.i, !llvm.loop !20

.lr.ph.split.i:                                   ; preds = %.lr.ph.i26
  switch i8 %.fr.i, label %.lr.ph.split.split.i [
    i8 1, label %.lr.ph.split.split.us.i
    i8 9, label %.lr.ph.split.split.us97.i
    i8 3, label %.lr.ph.split.split.us107.i
    i8 5, label %.lr.ph.split.split.us117.i
  ]

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %dissect_swils_ess_capability.exit.us91.i
  %.06884.us88.i = phi i32 [ %i.cw, %dissect_swils_ess_capability.exit.us91.i ], [ 4, %.lr.ph.split.i ] ; 2 uses
  %.17083.us89.i = phi i32 [ %i.cu, %dissect_swils_ess_capability.exit.us91.i ], [ %.069.i, %.lr.ph.split.i ]
  %.07382.us90.i = phi i32 [ %i.cv, %dissect_swils_ess_capability.exit.us91.i ], [ %i.by, %.lr.ph.split.i ] ; 4 uses
  %i.cf = call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %.07382.us90.i, i32 noundef 8)
  br i1 %i.cf, label %dissect_swils_ess_capability.exit.us91.i, label %dissect_swils_ess_capability_obj.exit

dissect_swils_ess_capability.exit.us91.i:         ; preds = %.lr.ph.split.split.us.i
  %i.cg = load i32, ptr @hf_swils_ess_dns_zlacc, align 4
  %i.ch = add i32 %.07382.us90.i, 3               ; 5 uses
  %i.ci = call ptr @proto_tree_add_item(ptr noundef nonnull %.0.i, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.ch, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cj = load i32, ptr @hf_swils_ess_dns_obj3h, align 4
  %i.ck = call ptr @proto_tree_add_item(ptr noundef nonnull %.0.i, i32 noundef %i.cj, ptr noundef %0, i32 noundef %i.ch, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cl = load i32, ptr @hf_swils_ess_dns_obj2h, align 4
  %i.cm = call ptr @proto_tree_add_item(ptr noundef nonnull %.0.i, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.ch, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cn = load i32, ptr @hf_swils_ess_dns_obj1h, align 4
  %i.co = call ptr @proto_tree_add_item(ptr noundef nonnull %.0.i, i32 noundef %i.cn, ptr noundef %0, i32 noundef %i.ch, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cp = load i32, ptr @hf_swils_ess_dns_obj0h, align 4
  %i.cq = call ptr @proto_tree_add_item(ptr noundef nonnull %.0.i, i32 noundef %i.cp, ptr noundef %0, i32 noundef %i.ch, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cr = load i32, ptr @hf_swils_ess_dns_vendor, align 4
  %i.cs = add i32 %.07382.us90.i, 4
  %i.ct = call ptr @proto_tree_add_item(ptr noundef nonnull %.0.i, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.cs, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.cu = add nsw i32 %.17083.us89.i, -1          ; 2 uses
end_hunk_0
