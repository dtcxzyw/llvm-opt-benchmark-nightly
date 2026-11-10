Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dcerpc-pn-io?download=true
inline.NumInlined: 136
inline.NumDeleted: 40
begin_hunk_0_@dissect_CIMSNMPReal_block:bb.a
bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_pn_io_snmp_control, align 4
  %i.g = load i8, ptr %5, align 1
  %i.h = and i8 %i.g, 16
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl nuw i32 %i.i, 27
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.f, ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef %i.j) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_CIMCLRPC_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i16 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i8 %5, 1
  %i.b = icmp ne i8 %6, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %6 to i32
  %i.d = zext i8 %5 to i32
  %i.e = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %4, ptr noundef @ei_pn_io_block_version, ptr noundef @.str.1736, i32 noundef %i.d, i32 noundef %i.c) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_pn_io_clrpc_control, align 4
  %i.g = load i32, ptr @ett_pn_io_cim_capability_id, align 4
  %i.h = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef %i.f, i32 noundef %i.g, ptr noundef @pn_io_clrpc_control_fields, i32 noundef 0) ; 0 uses
  %i.i = icmp ugt i16 %7, 2
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %1, 2
  %i.k = zext i16 %7 to i32
  %i.l = add nsw i32 %i.k, -2
  %i.m = tail call i32 @dissect_pn_padding(ptr noundef %0, i32 noundef %i.j, ptr noundef %2, ptr noundef %3, i32 noundef %i.l) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_CIMDCP_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i16 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i8 %5, 1
  %i.b = icmp ne i8 %6, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %6 to i32
  %i.d = zext i8 %5 to i32
  %i.e = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %4, ptr noundef @ei_pn_io_block_version, ptr noundef @.str.1736, i32 noundef %i.d, i32 noundef %i.c) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_pn_io_dcp_set_control, align 4
  %i.g = load i32, ptr @ett_pn_io_cim_capability_id, align 4
  %i.h = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef %i.f, i32 noundef %i.g, ptr noundef @pn_io_dcp_set_control_fields, i32 noundef 0) ; 0 uses
  %i.i = add i32 %1, 2
  %i.j = load i32, ptr @hf_pn_io_dcp_get_control, align 4
  %i.k = load i32, ptr @ett_pn_io_cim_capability_id, align 4
  %i.l = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.k, ptr noundef @pn_io_dcp_get_control_fields, i32 noundef 0) ; 0 uses
  %i.m = add i32 %1, 4
  %i.n = load i32, ptr @hf_pn_io_dcp_multicast_control, align 4
  %i.o = load i32, ptr @ett_pn_io_cim_capability_id, align 4
  %i.p = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, ptr noundef @pn_io_dcp_multicast_control_fields, i32 noundef 0) ; 0 uses
  %i.q = icmp ugt i16 %7, 6
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %1, 6
  %i.s = zext i16 %7 to i32
  %i.t = add nsw i32 %i.s, -6
  %i.u = tail call i32 @dissect_pn_padding(ptr noundef %0, i32 noundef %i.r, ptr noundef %2, ptr noundef %3, i32 noundef %i.t) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_CIMLockdown_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i16 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i8 %5, 1
  %i.b = icmp ne i8 %6, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %6 to i32
  %i.d = zext i8 %5 to i32
  %i.e = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %4, ptr noundef @ei_pn_io_block_version, ptr noundef @.str.1736, i32 noundef %i.d, i32 noundef %i.c) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_pn_io_lockdown_control, align 4
  %i.g = load i32, ptr @ett_pn_io_cim_capability_id, align 4
  %i.h = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef %i.f, i32 noundef %i.g, ptr noundef @pn_io_lockdown_control_fields, i32 noundef 0) ; 0 uses
  %i.i = icmp ugt i16 %7, 2
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %1, 2
  %i.k = zext i16 %7 to i32
  %i.l = add nsw i32 %i.k, -2
  %i.m = tail call i32 @dissect_pn_padding(ptr noundef %0, i32 noundef %i.j, ptr noundef %2, ptr noundef %3, i32 noundef %i.l) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_CIMPortSAP_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i16 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i8 %5, 1
  %i.b = icmp ne i8 %6, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %6 to i32
  %i.d = zext i8 %5 to i32
  %i.e = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %4, ptr noundef @ei_pn_io_block_version, ptr noundef @.str.1736, i32 noundef %i.d, i32 noundef %i.c) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_pn_io_port_control, align 4
  %i.g = load i32, ptr @ett_pn_io_cim_capability_id, align 4
  %i.h = tail call ptr @proto_tree_add_bitmask(ptr noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef %i.f, i32 noundef %i.g, ptr noundef @pn_io_port_control_fields, i32 noundef 0) ; 0 uses
  %i.i = icmp ugt i16 %7, 2
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %1, 2
  %i.k = zext i16 %7 to i32
  %i.l = add nsw i32 %i.k, -2
  %i.m = tail call i32 @dissect_pn_padding(ptr noundef %0, i32 noundef %i.j, ptr noundef %2, ptr noundef %3, i32 noundef %i.l) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_CIMCallingHomeAdjust_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i16 noundef zeroext %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i16, align 2                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.g = icmp ne i8 %6, 1
  %i.h = icmp ne i8 %7, 0
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext i8 %7 to i32
  %i.j = zext i8 %6 to i32
  %i.k = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %4, ptr noundef @ei_pn_io_block_version, ptr noundef @.str.1736, i32 noundef %i.j, i32 noundef %i.i) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.l = zext i16 %8 to i32
  %i.m = add i32 %1, %i.l                         ; 3 uses
  %i.n = load i32, ptr @hf_pn_io_sxp_ch_number_of_entries, align 4
  %i.o = call i32 @dissect_dcerpc_uint16(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, i32 noundef %i.n, ptr noundef nonnull %i.a) ; 2 uses
  %i.p = load i16, ptr %i.a, align 2
  %i.q = icmp ne i16 %i.p, 0
  %i.r = icmp slt i32 %i.o, %i.m
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %bb.n
  %indvars.iv = phi i32 [ %i.ac, %bb.n ], [ 0, %bb.c ]
  %.0110125 = phi i32 [ %spec.select, %bb.n ], [ %i.o, %bb.c ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.t = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.0110125)
  %i.u = icmp ult i32 %i.t, 6
  br i1 %i.u, label %bb.m, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = add i32 %.0110125, 2
  %i.w = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.v) ; 2 uses
  store i16 %i.w, ptr %i.c, align 2
  %i.x = add i32 %.0110125, 4
  %i.y = zext i16 %i.w to i32
  %i.z = add i32 %i.x, %i.y                       ; 2 uses
  %spec.select = call i32 @llvm.smin.i32(i32 %i.z, i32 %i.m) ; 6 uses
  %i.aa = sub i32 %spec.select, %.0110125
  %i.ab = load i32, ptr @ett_pn_io_sxp_ch_entry, align 4
  %i.ac = add nuw nsw i32 %indvars.iv, 1          ; 3 uses
  %i.ad = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %3, ptr noundef %0, i32 noundef %.0110125, i32 noundef %i.aa, i32 noundef %i.ab, ptr noundef null, ptr noundef @.str.1999, i32 noundef %i.ac) ; 10 uses
  %i.ae = load i32, ptr @hf_pn_io_block_type, align 4
  %i.af = call i32 @dissect_dcerpc_uint16(ptr noundef %0, i32 noundef %.0110125, ptr noundef %2, ptr noundef %i.ad, ptr noundef %5, i32 noundef %i.ae, ptr noundef nonnull %i.b)
  %i.ag = load i32, ptr @hf_pn_io_block_length, align 4
  %i.ah = call i32 @dissect_dcerpc_uint16(ptr noundef %0, i32 noundef %i.af, ptr noundef %2, ptr noundef %i.ad, ptr noundef %5, i32 noundef %i.ag, ptr noundef nonnull %i.c)
  %i.ai = load i32, ptr @hf_pn_io_block_version_high, align 4
  %i.aj = call i32 @dissect_dcerpc_uint8(ptr noundef %0, i32 noundef %i.ah, ptr noundef %2, ptr noundef %i.ad, ptr noundef %5, i32 noundef %i.ai, ptr noundef nonnull %i.d)
  %i.ak = load i32, ptr @hf_pn_io_block_version_low, align 4
  %i.al = call i32 @dissect_dcerpc_uint8(ptr noundef %0, i32 noundef %i.aj, ptr noundef %2, ptr noundef %i.ad, ptr noundef %5, i32 noundef %i.ak, ptr noundef nonnull %i.e) ; 3 uses
  %i.am = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.al)
  %i.an = load i32, ptr @hf_pn_io_sxp_ch_flags, align 4
  %i.ao = load i32, ptr @ett_pn_io_sxp_ch_flags, align 4
  %i.ap = call ptr @proto_tree_add_bitmask(ptr noundef %i.ad, ptr noundef %0, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ao, ptr noundef @pn_io_sxp_ch_flags_fields, i32 noundef 0) ; 0 uses
  %i.aq = add i32 %i.al, 2
  %i.ar = load i32, ptr @hf_pn_io_sxp_ch_station_name_length, align 4
  %i.as = call i32 @dissect_dcerpc_uint16(ptr noundef %0, i32 noundef %i.aq, ptr noundef %2, ptr noundef %i.ad, ptr noundef %5, i32 noundef %i.ar, ptr noundef nonnull %i.f) ; 5 uses
  %i.at = load i16, ptr %i.f, align 2
  %.not = icmp eq i16 %i.at, 0
  br i1 %.not, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.as)
  %i.av = load i16, ptr %i.f, align 2
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %.not115 = icmp ult i32 %i.au, %i.aw
  br i1 %.not115, label %.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr @hf_pn_io_sxp_ch_station_name, align 4
  %i.ay = call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.as, i32 noundef %i.aw, i32 noundef 0) ; 0 uses
  %i.az = load i16, ptr %i.f, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = add i32 %i.as, %i.ba
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.e, %bb.d
  %.2.ph = phi i32 [ %i.bb, %bb.f ], [ %i.as, %bb.e ], [ %i.as, %bb.d ] ; 4 uses
  %smax = call i32 @llvm.smax.i32(i32 %.2.ph, i32 %spec.select)
  %9 = sub i32 %smax, %.2.ph
  %10 = sub i32 0, %.2.ph
  %i.bc = and i32 %10, 3
  %umin = call i32 @llvm.umin.i32(i32 %9, i32 %i.bc)
  %11 = add i32 %.2.ph, %umin                     ; 9 uses
  %.exit.not = icmp slt i32 %11, %spec.select
  br i1 %.exit.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.preheader
  %i.bd = zext i16 %i.am to i32                   ; 2 uses
  %i.be = and i32 %i.bd, 1
  %.not117 = icmp eq i32 %i.be, 0
  br i1 %.not117, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %11)
  %i.bg = icmp ugt i32 %i.bf, 3
  br i1 %i.bg, label %.sink.split, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bh = and i32 %i.bd, 2
  %.not118 = icmp eq i32 %i.bh, 0
  br i1 %.not118, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %11)
  %i.bj = icmp ugt i32 %i.bi, 5
  br i1 %i.bj, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.h
  %hf_pn_io_sxp_ch_station_ip.sink = phi ptr [ @hf_pn_io_sxp_ch_station_ip, %bb.h ], [ @hf_pn_io_sxp_ch_station_mac, %bb.j ]
  %.sink134 = phi i32 [ 4, %bb.h ], [ 6, %bb.j ]  ; 2 uses
  %i.bk = load i32, ptr %hf_pn_io_sxp_ch_station_ip.sink, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.bk, ptr noundef %0, i32 noundef %11, i32 noundef %.sink134, i32 noundef 0) ; 0 uses
  %i.bm = add i32 %11, %.sink134
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.h, %bb.j, %bb.i, %.preheader
  %.3 = phi i32 [ %11, %bb.i ], [ %11, %bb.h ], [ %11, %.preheader ], [ %11, %bb.j ], [ %i.bm, %.sink.split ] ; 4 uses
  %i.bn = icmp slt i32 %.3, %spec.select
  br i1 %i.bn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bo = sub i32 %spec.select, %.3
  %i.bp = call i32 @dissect_pn_padding(ptr noundef %0, i32 noundef %.3, ptr noundef %2, ptr noundef %i.ad, i32 noundef %i.bo)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.loopexit

bb.n:                                             ; preds = %bb.k, %bb.l
  %.4 = phi i32 [ %i.bp, %bb.l ], [ %.3, %bb.k ]
  %i.bq = sub i32 %.4, %.0110125
  call void @proto_item_set_len(ptr noundef %i.ad, i32 noundef %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.br = load i16, ptr %i.a, align 2
  %i.bs = zext i16 %i.br to i32
  %i.bt = icmp samesign ult i32 %i.ac, %i.bs
  %i.bu = icmp slt i32 %i.z, %i.m
  %i.bv = and i1 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph, label %.loopexit, !llvm.loop !101

.loopexit:                                        ; preds = %bb.n, %bb.c, %bb.m, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_CIMCapabilities_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i16 noundef zeroext %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.e = icmp ne i8 %6, 1
  %i.f = icmp ne i8 %7, 0
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext i8 %7 to i32
  %i.h = zext i8 %6 to i32
  %i.i = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %4, ptr noundef @ei_pn_io_block_version, ptr noundef @.str.1736, i32 noundef %i.h, i32 noundef %i.g) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.j = zext i16 %8 to i32
  %i.k = add i32 %1, %i.j                         ; 2 uses
  %i.l = load i32, ptr @hf_pn_io_cim_capabilities_number_of_entries, align 4
  %i.m = call i32 @dissect_dcerpc_uint16(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, i32 noundef %i.l, ptr noundef nonnull %i.a) ; 2 uses
  %i.n = load i16, ptr %i.a, align 2
  %i.o = icmp ne i16 %i.n, 0
  %i.p = icmp slt i32 %i.m, %i.k
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %indvars.iv = phi i32 [ %i.w, %bb.k ], [ 0, %bb.c ]
  %.06874 = phi i32 [ %.1, %bb.k ], [ %i.m, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.r = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.06874)
  %i.s = icmp ult i32 %i.r, 8
  br i1 %i.s, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.06874) ; 2 uses
  store i8 %i.t, ptr %i.b, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = load i32, ptr @ett_pn_io_cim_capability_entry, align 4
  %i.w = add nuw nsw i32 %indvars.iv, 1           ; 3 uses
  %i.x = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %3, ptr noundef %0, i32 noundef %.06874, i32 noundef %i.u, i32 noundef %i.v, ptr noundef null, ptr noundef @.str.2000, i32 noundef %i.w) ; 7 uses
  %i.y = load i32, ptr @hf_pn_io_cim_cap_entry_length, align 4
  %i.z = call i32 @dissect_dcerpc_uint8(ptr noundef %0, i32 noundef %.06874, ptr noundef %2, ptr noundef %i.x, ptr noundef %5, i32 noundef %i.y, ptr noundef nonnull %i.b)
  %i.aa = load i32, ptr @hf_pn_io_cim_cap_namespace_format, align 4
  %i.ab = call i32 @dissect_dcerpc_uint8(ptr noundef %0, i32 noundef %i.z, ptr noundef %2, ptr noundef %i.x, ptr noundef %5, i32 noundef %i.aa, ptr noundef nonnull %i.c)
  %i.ac = load i32, ptr @hf_pn_io_cim_cap_namespace_id, align 4
  %i.ad = call i32 @dissect_dcerpc_uint16(ptr noundef %0, i32 noundef %i.ab, ptr noundef %2, ptr noundef %i.x, ptr noundef %5, i32 noundef %i.ac, ptr noundef nonnull %i.d) ; 4 uses
  %i.ae = load i8, ptr %i.c, align 1
  %i.af = icmp eq i8 %i.ae, 0
  %i.ag = load i16, ptr %i.d, align 2
  %i.ah = icmp eq i16 %i.ag, 0
  %or.cond5 = select i1 %i.af, i1 %i.ah, i1 false
  %i.ai = load i32, ptr @hf_pn_io_cim_capability_id, align 4 ; 2 uses
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr @ett_pn_io_cim_capability_id, align 4
  %i.ak = call ptr @proto_tree_add_bitmask(ptr noundef %i.x, ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.ai, i32 noundef %i.aj, ptr noundef @pn_io_cim_capability_id_fields, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ad, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = add i32 %i.ad, 4                        ; 4 uses
  %i.an = load i8, ptr %i.b, align 1
  %i.ao = icmp eq i8 %i.an, 16
  br i1 %i.ao, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ap = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.am)
  %i.aq = icmp ugt i32 %i.ap, 7
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr @hf_pn_io_cim_cap_instance, align 4
  %i.as = call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.am, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.at = add i32 %i.ad, 12
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.loopexit

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i32 [ %i.at, %bb.i ], [ %i.am, %bb.h ], [ %i.am, %bb.g ] ; 3 uses
  %i.au = sub i32 %.1, %.06874
  call void @proto_item_set_len(ptr noundef %i.x, i32 noundef %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.av = load i16, ptr %i.a, align 2
  %i.aw = zext i16 %i.av to i32
  %i.ax = icmp samesign ult i32 %i.w, %i.aw
  %i.ay = icmp slt i32 %.1, %i.k
  %i.az = and i1 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph, label %.loopexit, !llvm.loop !102

.loopexit:                                        ; preds = %bb.k, %bb.c, %bb.j, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_MultipleBlockHeader_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i16 noundef zeroext %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.g = icmp ne i8 %6, 1
  %i.h = icmp ne i8 %7, 0
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext i8 %7 to i32
  %i.j = zext i8 %6 to i32
  %i.k = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %4, ptr noundef @ei_pn_io_block_version, ptr noundef @.str.1736, i32 noundef %i.j, i32 noundef %i.i) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i32 @dissect_pn_align4(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %i.m = load i32, ptr @hf_pn_io_api, align 4
  %i.n = call i32 @dissect_dcerpc_uint32(ptr noundef %0, i32 noundef %i.l, ptr noundef %2, ptr noundef %3, ptr noundef %5, i32 noundef %i.m, ptr noundef nonnull %i.d)
  %i.o = load i32, ptr @hf_pn_io_slot_nr, align 4
  %i.p = call i32 @dissect_dcerpc_uint16(ptr noundef %0, i32 noundef %i.n, ptr noundef %2, ptr noundef %3, ptr noundef %5, i32 noundef %i.o, ptr noundef nonnull %i.e)
  %i.q = load i32, ptr @hf_pn_io_subslot_nr, align 4
  %i.r = call i32 @dissect_dcerpc_uint16(ptr noundef %0, i32 noundef %i.p, ptr noundef %2, ptr noundef %3, ptr noundef %5, i32 noundef %i.q, ptr noundef nonnull %i.f)
  %i.s = load i32, ptr %i.d, align 4
  %i.t = load i16, ptr %i.e, align 2
  %i.u = zext i16 %i.t to i32
  %i.v = load i16, ptr %i.f, align 2
  %i.w = zext i16 %i.v to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef @.str.2001, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w)
  %i.x = zext i16 %8 to i32
  %i.y = add nsw i32 %i.x, -10
  %i.z = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.y) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i16 0, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8
  %i.aa = call i32 @tvb_reported_length_remaining(ptr noundef %i.z, i32 noundef 0), !inline_history !10
  %.not.i37 = icmp eq i32 %i.aa, 0
  br i1 %.not.i37, label %dissect_blocks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0.i38 = phi i32 [ %i.ab, %.lr.ph ], [ 0, %bb.c ]
end_hunk_0
begin_hunk_1_@fread
declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare ptr @g_markup_parse_context_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_markup_parse_context_parse(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_markup_parse_context_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_list_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @copy_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wmem_list_new(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @wmem_list_head(ptr noundef nonnull %1) ; 2 uses
  %.not1718 = icmp eq ptr %i.b, null
  br i1 %.not1718, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.019 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.b ] ; 2 uses
  %i.c = tail call ptr @wmem_list_frame_data(ptr noundef nonnull %.019) ; 3 uses
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @wmem_alloc(ptr noundef %0, i64 noundef 4) #18 ; 4 uses
  %i.e = load i8, ptr %i.c, align 2, !range !11, !noundef !12
  store i8 %i.e, ptr %i.d, align 2
  %i.f = getelementptr i8, ptr %i.c, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !11, !noundef !12
  %i.h = getelementptr i8, ptr %i.d, i64 1
  store i8 %i.g, ptr %i.h, align 1
  %i.i = getelementptr i8, ptr %i.c, i64 2
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr i8, ptr %i.d, i64 2
  store i16 %i.j, ptr %i.k, align 2
  tail call void @wmem_list_append(ptr noundef %i.a, ptr noundef %i.d)
  %i.l = tail call ptr @wmem_list_frame_next(ptr noundef nonnull %.019) ; 2 uses
  %.not17 = icmp eq ptr %i.l, null
  br i1 %.not17, label %.loopexit, label %.lr.ph, !llvm.loop !177

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid
declare void @wmem_list_remove_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @parser_conv_start_element(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef %1, ptr noundef dereferenceable(13) @.str.3846) #20
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %4, i64 16         ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.d, i64 noundef 16) #18 ; 5 uses
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  %.not48 = icmp eq ptr %i.f, null
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.i, %bb.b
  %i.h = load ptr, ptr %i.e, align 8
  %.not46 = icmp eq ptr %i.h, null
  br i1 %.not46, label %bb.n, label %bb.j

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %i.i = phi ptr [ %i.f, %.lr.ph ], [ %i.ax, %bb.i ] ; 2 uses
  %i.j = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.i ] ; 2 uses
  %.049 = phi i32 [ 0, %.lr.ph ], [ %i.au, %bb.i ]
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef dereferenceable(7) @.str.3847) #20
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr [8 x i8], ptr %3, i64 %i.j
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = tail call noalias dereferenceable_or_null(6) ptr @wmem_alloc(ptr noundef %i.o, i64 noundef 6) #18 ; 7 uses
  %i.q = getelementptr i8, ptr %i.p, i64 1
  %i.r = getelementptr i8, ptr %i.p, i64 2
  %i.s = getelementptr i8, ptr %i.p, i64 3
  %i.t = getelementptr i8, ptr %i.p, i64 4
  %i.u = getelementptr i8, ptr %i.p, i64 5
  %i.v = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.n, ptr noundef @.str.3848, ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.u) #16
  %i.w = icmp eq i32 %i.v, 6
  br i1 %i.w, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.x, i64 noundef 24) #18 ; 5 uses
  store i32 1, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 4
  store i32 6, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  store ptr %i.p, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  store ptr null, ptr %i.ab, align 8
  store ptr %i.y, ptr %i.e, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef dereferenceable(11) @.str.3735) #20
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr [8 x i8], ptr %3, i64 %i.j
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.c, align 8
  %i.ah = tail call noalias dereferenceable_or_null(6) ptr @wmem_alloc(ptr noundef %i.ag, i64 noundef 6) #18 ; 7 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  %i.aj = getelementptr i8, ptr %i.ah, i64 2
  %i.ak = getelementptr i8, ptr %i.ah, i64 3
  %i.al = getelementptr i8, ptr %i.ah, i64 4
  %i.am = getelementptr i8, ptr %i.ah, i64 5
  %i.an = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.af, ptr noundef @.str.3848, ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %i.am) #16
  %i.ao = icmp eq i32 %i.an, 6
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.ap, i64 noundef 24) #18 ; 5 uses
  store i32 1, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  store i32 6, ptr %i.ar, align 4
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  store ptr %i.ah, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %i.aq, i64 16
  store ptr null, ptr %i.at, align 8
  store ptr %i.aq, ptr %i.g, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.e, %bb.f
  %i.au = add i32 %.049, 1                        ; 2 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !178

bb.j:                                             ; preds = %._crit_edge
  %i.ay = getelementptr i8, ptr %i.e, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %.not47 = icmp eq ptr %i.az, null
  br i1 %.not47, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr i8, ptr %4, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void @wmem_list_append(ptr noundef %i.bb, ptr noundef %i.e)
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.bc = tail call i32 @strcmp(ptr noundef %1, ptr noundef dereferenceable(22) @.str.3798) #20
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %4, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.j, %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_SecurityMetaData_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_SecurityChecksum(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { alwaysinline nobuiltin null_pointer_is_valid sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { allocsize(1) }
attributes #19 = { allocsize(2) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !9}
!1 = distinct !{!1, !9}
!2 = distinct !{null}
!3 = !{i32 8, !"cf-protection-return", i32 1}
!4 = !{i32 8, !"cf-protection-branch", i32 1}
!5 = !{i32 4, !"probe-stack", !"inline-asm"}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{ptr @dissect_blocks}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = distinct !{!31, !9}
!32 = distinct !{null, null}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
!55 = distinct !{null}
!56 = distinct !{null, null}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !9}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !9}
!75 = distinct !{!75, !9}
!76 = distinct !{!76, !9}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !9}
!79 = distinct !{!79, !9}
!80 = distinct !{!80, !9}
!81 = distinct !{!81, !9}
!82 = distinct !{!82, !9}
!83 = distinct !{!83, !9}
!84 = distinct !{!84, !9}
!85 = distinct !{!85, !9}
!86 = distinct !{!86, !9}
!87 = distinct !{!87, !9}
!88 = distinct !{!88, !9}
!89 = distinct !{!89, !9}
!90 = distinct !{!90, !9}
!91 = distinct !{!91, !9}
!92 = distinct !{!92, !9}
!93 = distinct !{!93, !9}
!94 = distinct !{!94, !9}
!95 = distinct !{!95, !9}
!96 = distinct !{!96, !9}
!97 = distinct !{!97, !9}
!98 = distinct !{!98, !9}
!99 = distinct !{!99, !9}
!100 = distinct !{!100, !9}
!101 = distinct !{!101, !9}
!102 = distinct !{!102, !9}
!103 = distinct !{!103, !9}
!104 = distinct !{!104, !9}
!105 = distinct !{!105, !9}
!106 = distinct !{!106, !9}
!107 = distinct !{!107, !9}
!108 = distinct !{!108, !9}
!109 = distinct !{!109, !9}
!110 = distinct !{!110, !9}
!111 = distinct !{!111, !9}
!112 = distinct !{!112, !9}
!113 = distinct !{!113, !9}
!114 = distinct !{!114, !9}
!115 = distinct !{!115, !9}
!116 = distinct !{!116, !9}
!117 = distinct !{!117, !9}
!118 = distinct !{!118, !9}
!119 = distinct !{!119, !9}
!120 = distinct !{!120, !9}
!121 = distinct !{!121, !9}
!122 = distinct !{!122, !9}
!123 = distinct !{!123, !9}
!124 = distinct !{!124, !9}
!125 = distinct !{!125, !9}
!126 = distinct !{!126, !9}
!127 = distinct !{!127, !9}
!128 = distinct !{!128, !9}
!129 = distinct !{!129, !9}
!130 = distinct !{!130, !9}
!131 = distinct !{!131, !9}
!132 = distinct !{!132, !9}
!133 = distinct !{!133, !9}
!134 = distinct !{!134, !9}
!135 = distinct !{!135, !9}
!136 = distinct !{!136, !9}
!137 = distinct !{!137, !9}
!138 = distinct !{!138, !9}
!139 = distinct !{!139, !9}
!140 = distinct !{!140, !9}
!141 = distinct !{!141, !9}
!142 = distinct !{!142, !9}
!143 = distinct !{!143, !9}
!144 = distinct !{!144, !9}
!145 = distinct !{!145, !9}
!146 = distinct !{!146, !9}
!147 = distinct !{!147, !9}
!148 = distinct !{!148, !9}
!149 = distinct !{!149, !9}
!150 = distinct !{!150, !9}
!151 = distinct !{!151, !9}
!152 = distinct !{!152, !9}
!153 = distinct !{!153, !9}
!154 = distinct !{!154, !9}
!155 = distinct !{!155, !9}
!156 = distinct !{!156, !9}
!157 = distinct !{!157, !9}
!158 = distinct !{!158, !9}
!159 = distinct !{!159, !9}
!160 = distinct !{!160, !9}
!161 = distinct !{!161, !9}
!162 = distinct !{!162, !9}
!163 = distinct !{!163, !9}
!164 = distinct !{!164, !9}
!165 = distinct !{!165, !9}
!166 = distinct !{!166, !9}
!167 = distinct !{!167, !9}
!168 = distinct !{!168, !9}
!169 = distinct !{!169, !9}
!170 = distinct !{!170, !9}
!171 = distinct !{!171, !9}
end_hunk_1
