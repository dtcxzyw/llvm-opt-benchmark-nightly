Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ubx-galileo_e1b_inav?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@fmt_a1:bb.a
bb.a:
  %i.a = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.9, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define hidden void @fmt_lat_correction(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.10, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define hidden void @fmt_semi_circles_rate(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.11, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_ubx_gal_inav() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.276) ; 2 uses
  store i32 %i.a, ptr @proto_ubx_gal_inav, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_ubx_gal_inav.hf, i32 noundef 136)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_ubx_gal_inav.ett, i32 noundef 22)
  %i.b = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.c = tail call ptr @register_dissector(ptr noundef nonnull @.str.277, ptr noundef nonnull @dissect_ubx_gal_inav, i32 noundef %i.b) ; 0 uses
  %i.d = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.e = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.279, i32 noundef %i.d, i32 noundef 4, i32 noundef 1)
  store ptr %i.e, ptr @ubx_gal_inav_word_dissector_table, align 8
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_t0e(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = mul i32 %1, 60
  %i.b = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.340, i32 noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_semi_circles(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.341, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_e(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.342, i64 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_sqrt_a(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.343, i64 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_orbit_correction(ptr noundef %0, i16 noundef signext %1) #0 {
bb.a:
  %i.a = sext i16 %1 to i32
  %i.b = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.344, i32 noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_sisa(ptr noundef %0, i8 noundef zeroext %1) #0 {
bb.a:
  %i.a = zext i8 %1 to i32                        ; 4 uses
  %i.b = icmp ult i8 %1, 50
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.345, i32 noundef %i.a) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i8 %1, 75
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = shl nuw nsw i32 %i.a, 1
  %i.f = add nsw i32 %i.e, -50
  %i.g = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.345, i32 noundef %i.f) ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i8 %1, 100
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = shl nuw nsw i32 %i.a, 2
  %i.j = add nsw i32 %i.i, -200
  %i.k = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.345, i32 noundef %i.j) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.l = icmp ult i8 %1, 126
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = shl nuw nsw i32 %i.a, 4
  %i.n = add nsw i32 %i.m, -1400
  %i.o = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.345, i32 noundef %i.n) ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i8 %1, -1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.172) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.q = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.346) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.h, %bb.k, %bb.j, %bb.f, %bb.b
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_clk_correction(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = mul i32 %1, 60
  %i.b = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.347, i32 noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_sv_clk_bias(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.348, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_sv_clk_drift(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.349, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_sv_clk_drift_rate(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.350, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @fmt_t_0t(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = mul i32 %1, 3600
  %i.b = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.351, i32 noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_gal_inav(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 9 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %4 = alloca [4 x %struct.conversation_element], align 16 ; 13 uses
  %5 = alloca [4 x %struct.conversation_element], align 16 ; 11 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %6 = alloca [4 x %struct.conversation_element], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #8
  store i64 0, ptr %i.n, align 8
  %i.r = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @col_set_str(ptr noundef %i.s, i32 noundef 35, ptr noundef nonnull @.str.352)
  %i.t = load ptr, ptr %i.r, align 8
  tail call void @col_clear(ptr noundef %i.t, i32 noundef 25)
  %i.u = load i32, ptr @ett_ubx_gal_inav, align 4
  %i.v = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 32, i32 noundef %i.u, ptr noundef null, ptr noundef nonnull @.str.352) ; 19 uses
  %i.w = load i32, ptr @hf_ubx_gal_inav_even_odd, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.w, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_ubx_gal_inav_page_type, align 4
  %i.z = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.v, i32 noundef %i.y, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.aa = load i32, ptr %i.d, align 4
  switch i32 %i.aa, label %bb.d [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.ab = load i32, ptr @hf_ubx_gal_inav_reserved_1, align 4
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.ab, ptr noundef %0, i32 noundef 0, i32 noundef 15, i32 noundef 0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = load i32, ptr @hf_ubx_gal_inav_type, align 4
  %i.ae = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.v, i32 noundef %i.ad, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.af = load i32, ptr @hf_ubx_gal_inav_data_122_67, align 4
  %i.ag = call ptr @proto_tree_add_item_ret_uint64(ptr noundef %i.v, i32 noundef %i.af, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %i.l) ; 0 uses
  %i.ah = load i32, ptr @hf_ubx_gal_inav_data_66_17, align 4
  %i.ai = call ptr @proto_tree_add_item_ret_uint64(ptr noundef %i.v, i32 noundef %i.ah, ptr noundef %0, i32 noundef 8, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %i.m) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.aj = load i32, ptr @hf_ubx_gal_inav_tail, align 4
  %i.ak = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.aj, ptr noundef %0, i32 noundef 14, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.al = load i32, ptr @hf_ubx_gal_inav_pad, align 4
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.al, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.an = load i32, ptr @hf_ubx_gal_inav_even_odd, align 4
  %i.ao = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.an, ptr noundef %0, i32 noundef 16, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ap = load i32, ptr @hf_ubx_gal_inav_page_type, align 4
  %i.aq = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.v, i32 noundef %i.ap, ptr noundef %0, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  %i.ar = load i32, ptr %i.e, align 4
  switch i32 %i.ar, label %bb.br [
    i32 1, label %bb.e
    i32 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.as = load i32, ptr @hf_ubx_gal_inav_reserved_1, align 4
  %i.at = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.as, ptr noundef %0, i32 noundef 16, i32 noundef 11, i32 noundef 0) ; 0 uses
  br label %bb.br

bb.f:                                             ; preds = %bb.d
  %i.au = load i32, ptr @hf_ubx_gal_inav_data_16_1, align 4
  %i.av = call ptr @proto_tree_add_item_ret_uint64(ptr noundef %i.v, i32 noundef %i.au, ptr noundef %0, i32 noundef 16, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %i.n) ; 0 uses
  %i.aw = load i32, ptr @ett_ubx_gal_inav_osnma, align 4
  %i.ax = call ptr @proto_tree_add_subtree(ptr noundef %i.v, ptr noundef %0, i32 noundef 18, i32 noundef 6, i32 noundef %i.aw, ptr noundef null, ptr noundef nonnull @.str.353) ; 6 uses
  %i.ay = load i32, ptr @hf_ubx_gal_inav_osnma_hkroot, align 4
  %i.az = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ax, i32 noundef %i.ay, ptr noundef %0, i32 noundef 18, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.f) ; 0 uses
  %i.ba = load i32, ptr @hf_ubx_gal_inav_osnma_mack, align 4
  %i.bb = call ptr @proto_tree_add_item_ret_uint64(ptr noundef %i.ax, i32 noundef %i.ba, ptr noundef %0, i32 noundef 18, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %i.h) ; 0 uses
  %i.bc = icmp ne ptr %3, null                    ; 2 uses
  %i.bd = load i32, ptr %i.d, align 4
  %i.be = icmp eq i32 %i.bd, 0
  %or.cond = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bf = load i32, ptr %i.f, align 4
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = load i64, ptr %i.h, align 8
  %i.bi = icmp ne i64 %i.bh, 0
  %or.cond3 = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond3, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.sroa.6328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6328.0..sroa_idx, i8 0, i64 20, i1 false)
  %i.bj = load i8, ptr %3, align 1
  %i.bk = zext i8 %i.bj to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.constellation.366, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.constellation.366, i64 32, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 6, ptr %i.bm, align 16
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 0, ptr %.sroa.5326.0..sroa_idx, align 4
  %.sroa.5327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %i.bk, ptr %.sroa.5327.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.end.368, i64 32, i1 false)
  %i.bo = getelementptr i8, ptr %1, i64 20        ; 8 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = call ptr @find_conversation_full(i32 noundef %i.bp, ptr noundef nonnull %4) ; 21 uses
  %i.br = icmp eq ptr %i.bq, null
  %i.bs = load i32, ptr %i.c, align 4
  %i.bt = icmp eq i32 %i.bs, 2                    ; 2 uses
  %or.cond5 = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %or.cond5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = load i32, ptr %i.bo, align 4
  %i.bv = call ptr @conversation_new_full(i32 noundef %i.bu, ptr noundef nonnull %4) ; 2 uses
  %i.bw = call ptr @wmem_file_scope()
  %i.bx = call noalias dereferenceable_or_null(180) ptr @wmem_alloc0(ptr noundef %i.bw, i64 noundef 180) #9 ; 5 uses
  %i.by = load i32, ptr %i.bo, align 4
  store i32 %i.by, ptr %i.bx, align 4
  %i.bz = load i32, ptr %i.f, align 4
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr i8, ptr %i.bx, i64 4
  store i8 %i.ca, ptr %i.cb, align 4
  %i.cc = load i64, ptr %i.h, align 8
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = getelementptr i8, ptr %i.bx, i64 8
  store i32 %i.cd, ptr %i.ce, align 4
  %i.cf = load i32, ptr @proto_ubx_gal_inav, align 4
  call void @conversation_add_proto_data(ptr noundef %i.bv, i32 noundef %i.cf, ptr noundef %i.bx)
  br label %.loopexit601

bb.j:                                             ; preds = %bb.h
  %i.cg = icmp ne ptr %i.bq, null                 ; 2 uses
  %or.cond7 = select i1 %i.cg, i1 %i.bt, i1 false
  br i1 %or.cond7, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ch = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.ci = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.bq, i32 noundef %i.ch) ; 3 uses
  %.not578 = icmp eq ptr %i.ci, null
  br i1 %.not578, label %.critedge.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = load i32, ptr %i.bo, align 4            ; 2 uses
  %.not579 = icmp eq i32 %i.cj, %i.ck
  br i1 %.not579, label %.loopexit601, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = call ptr @conversation_new_full(i32 noundef %i.ck, ptr noundef nonnull %4) ; 2 uses
  %i.cm = call ptr @wmem_file_scope()
  %i.cn = call noalias dereferenceable_or_null(180) ptr @wmem_alloc0(ptr noundef %i.cm, i64 noundef 180) #9 ; 5 uses
  %i.co = load i32, ptr %i.bo, align 4
  store i32 %i.co, ptr %i.cn, align 4
  %i.cp = load i32, ptr %i.f, align 4
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr i8, ptr %i.cn, i64 4
  store i8 %i.cq, ptr %i.cr, align 4
  %i.cs = load i64, ptr %i.h, align 8
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr i8, ptr %i.cn, i64 8
  store i32 %i.ct, ptr %i.cu, align 4
  %i.cv = load i32, ptr @proto_ubx_gal_inav, align 4
  call void @conversation_add_proto_data(ptr noundef %i.cl, i32 noundef %i.cv, ptr noundef %i.cn)
  br label %.loopexit601

bb.n:                                             ; preds = %bb.j
  br i1 %i.cg, label %bb.o, label %.critedge.critedge

bb.o:                                             ; preds = %bb.n
  %i.cw = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.cx = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.bq, i32 noundef %i.cw) ; 33 uses
  %.not577 = icmp eq ptr %i.cx, null
  br i1 %.not577, label %.critedge.critedge, label %.preheader600.preheader

.preheader600.preheader:                          ; preds = %bb.o
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  %.pre = load i32, ptr %i.bo, align 4            ; 15 uses
  br i1 %i.cz, label %bb.ac, label %bb.ad

.preheader600.1:                                  ; preds = %bb.ad
  %i.da = getelementptr i8, ptr %i.cx, i64 12     ; 2 uses
  %i.db = load i32, ptr %i.da, align 4            ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ac, label %bb.p

bb.p:                                             ; preds = %.preheader600.1
  %i.dd = icmp eq i32 %i.db, %.pre
  br i1 %i.dd, label %.loopexit601, label %.preheader600.2

.preheader600.2:                                  ; preds = %bb.p
  %i.de = getelementptr i8, ptr %i.cx, i64 24     ; 2 uses
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %.preheader600.2
  %i.dh = icmp eq i32 %i.df, %.pre
  br i1 %i.dh, label %.loopexit601, label %.preheader600.3

.preheader600.3:                                  ; preds = %bb.q
  %i.di = getelementptr i8, ptr %i.cx, i64 36     ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %.preheader600.3
  %i.dl = icmp eq i32 %i.dj, %.pre
  br i1 %i.dl, label %.loopexit601, label %.preheader600.4

.preheader600.4:                                  ; preds = %bb.r
  %i.dm = getelementptr i8, ptr %i.cx, i64 48     ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4            ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %.preheader600.4
  %i.dp = icmp eq i32 %i.dn, %.pre
  br i1 %i.dp, label %.loopexit601, label %.preheader600.5

.preheader600.5:                                  ; preds = %bb.s
  %i.dq = getelementptr i8, ptr %i.cx, i64 60     ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4            ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %.preheader600.5
  %i.dt = icmp eq i32 %i.dr, %.pre
  br i1 %i.dt, label %.loopexit601, label %.preheader600.6

.preheader600.6:                                  ; preds = %bb.t
  %i.du = getelementptr i8, ptr %i.cx, i64 72     ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %.preheader600.6
  %i.dx = icmp eq i32 %i.dv, %.pre
  br i1 %i.dx, label %.loopexit601, label %.preheader600.7

.preheader600.7:                                  ; preds = %bb.u
  %i.dy = getelementptr i8, ptr %i.cx, i64 84     ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4            ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %.preheader600.7
  %i.eb = icmp eq i32 %i.dz, %.pre
  br i1 %i.eb, label %.loopexit601, label %.preheader600.8

.preheader600.8:                                  ; preds = %bb.v
  %i.ec = getelementptr i8, ptr %i.cx, i64 96     ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %.preheader600.8
  %i.ef = icmp eq i32 %i.ed, %.pre
  br i1 %i.ef, label %.loopexit601, label %.preheader600.9

.preheader600.9:                                  ; preds = %bb.w
  %i.eg = getelementptr i8, ptr %i.cx, i64 108    ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4            ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %.preheader600.9
  %i.ej = icmp eq i32 %i.eh, %.pre
  br i1 %i.ej, label %.loopexit601, label %.preheader600.10

.preheader600.10:                                 ; preds = %bb.x
  %i.ek = getelementptr i8, ptr %i.cx, i64 120    ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4            ; 2 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.preheader600.10
  %i.en = icmp eq i32 %i.el, %.pre
  br i1 %i.en, label %.loopexit601, label %.preheader600.11

.preheader600.11:                                 ; preds = %bb.y
  %i.eo = getelementptr i8, ptr %i.cx, i64 132    ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4            ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.preheader600.11
  %i.er = icmp eq i32 %i.ep, %.pre
  br i1 %i.er, label %.loopexit601, label %.preheader600.12

.preheader600.12:                                 ; preds = %bb.z
  %i.es = getelementptr i8, ptr %i.cx, i64 144    ; 2 uses
  %i.et = load i32, ptr %i.es, align 4            ; 2 uses
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.preheader600.12
  %i.ev = icmp eq i32 %i.et, %.pre
  br i1 %i.ev, label %.loopexit601, label %.preheader600.13

.preheader600.13:                                 ; preds = %bb.aa
  %i.ew = getelementptr i8, ptr %i.cx, i64 156    ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4            ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.preheader600.13
  %i.ez = icmp eq i32 %i.ex, %.pre
  br i1 %i.ez, label %.loopexit601, label %.preheader600.14

.preheader600.14:                                 ; preds = %bb.ab
  %i.fa = getelementptr i8, ptr %i.cx, i64 168    ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.ac, label %.loopexit601

bb.ac:                                            ; preds = %.preheader600.14, %.preheader600.13, %.preheader600.12, %.preheader600.11, %.preheader600.10, %.preheader600.9, %.preheader600.8, %.preheader600.7, %.preheader600.6, %.preheader600.5, %.preheader600.4, %.preheader600.3, %.preheader600.2, %.preheader600.1, %.preheader600.preheader
  %.lcssa617 = phi ptr [ %i.cx, %.preheader600.preheader ], [ %i.da, %.preheader600.1 ], [ %i.de, %.preheader600.2 ], [ %i.di, %.preheader600.3 ], [ %i.dm, %.preheader600.4 ], [ %i.dq, %.preheader600.5 ], [ %i.du, %.preheader600.6 ], [ %i.dy, %.preheader600.7 ], [ %i.ec, %.preheader600.8 ], [ %i.eg, %.preheader600.9 ], [ %i.ek, %.preheader600.10 ], [ %i.eo, %.preheader600.11 ], [ %i.es, %.preheader600.12 ], [ %i.ew, %.preheader600.13 ], [ %i.fa, %.preheader600.14 ] ; 3 uses
  store i32 %.pre, ptr %.lcssa617, align 4
  %i.fd = load i32, ptr %i.f, align 4
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = getelementptr i8, ptr %.lcssa617, i64 4
  store i8 %i.fe, ptr %i.ff, align 4
  %i.fg = load i64, ptr %i.h, align 8
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = getelementptr i8, ptr %.lcssa617, i64 8
  store i32 %i.fh, ptr %i.fi, align 4
  br label %.loopexit601

bb.ad:                                            ; preds = %.preheader600.preheader
  %i.fj = icmp eq i32 %i.cy, %.pre
  br i1 %i.fj, label %.loopexit601, label %.preheader600.1

.loopexit601:                                     ; preds = %.preheader600.14, %bb.ad, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.m, %bb.l, %bb.ac, %bb.i
  %.0550 = phi ptr [ %i.bx, %bb.i ], [ %i.cn, %bb.m ], [ %i.ci, %bb.l ], [ %i.cx, %bb.ac ], [ %i.cx, %bb.ad ], [ %i.cx, %bb.p ], [ %i.cx, %bb.ab ], [ %i.cx, %bb.aa ], [ %i.cx, %bb.z ], [ %i.cx, %bb.y ], [ %i.cx, %bb.x ], [ %i.cx, %bb.w ], [ %i.cx, %bb.v ], [ %i.cx, %bb.u ], [ %i.cx, %bb.t ], [ %i.cx, %bb.s ], [ %i.cx, %bb.r ], [ %i.cx, %bb.q ], [ %i.cx, %.preheader600.14 ] ; 46 uses
  %.0545 = phi ptr [ %i.bv, %bb.i ], [ %i.cl, %bb.m ], [ %i.bq, %bb.l ], [ %i.bq, %bb.ac ], [ %i.bq, %bb.ad ], [ %i.bq, %bb.p ], [ %i.bq, %bb.ab ], [ %i.bq, %bb.aa ], [ %i.bq, %bb.z ], [ %i.bq, %bb.y ], [ %i.bq, %bb.x ], [ %i.bq, %bb.w ], [ %i.bq, %bb.v ], [ %i.bq, %bb.u ], [ %i.bq, %bb.t ], [ %i.bq, %bb.s ], [ %i.bq, %bb.r ], [ %i.bq, %bb.q ], [ %i.bq, %.preheader600.14 ]
  %i.fk = icmp ne ptr %.0545, null
  %i.fl = icmp ne ptr %.0550, null
  %or.cond9 = and i1 %i.fl, %i.fk
  br i1 %or.cond9, label %.preheader599.preheader, label %.critedge.critedge

.preheader599.preheader:                          ; preds = %.loopexit601
  %i.fm = load i32, ptr %.0550, align 4
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %.critedge.critedge, label %.preheader599.1

.preheader599.1:                                  ; preds = %.preheader599.preheader
  %i.fo = getelementptr i8, ptr %.0550, i64 12
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %.critedge.critedge, label %.preheader599.2

.preheader599.2:                                  ; preds = %.preheader599.1
  %i.fr = getelementptr i8, ptr %.0550, i64 24
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %.critedge.critedge, label %.preheader599.3

.preheader599.3:                                  ; preds = %.preheader599.2
  %i.fu = getelementptr i8, ptr %.0550, i64 36
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %.critedge.critedge, label %.preheader599.4

.preheader599.4:                                  ; preds = %.preheader599.3
  %i.fx = getelementptr i8, ptr %.0550, i64 48
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.critedge.critedge, label %.preheader599.5

.preheader599.5:                                  ; preds = %.preheader599.4
  %i.ga = getelementptr i8, ptr %.0550, i64 60
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %.critedge.critedge, label %.preheader599.6

.preheader599.6:                                  ; preds = %.preheader599.5
  %i.gd = getelementptr i8, ptr %.0550, i64 72
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %.critedge.critedge, label %.preheader599.7

.preheader599.7:                                  ; preds = %.preheader599.6
  %i.gg = getelementptr i8, ptr %.0550, i64 84
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %.critedge.critedge, label %.preheader599.8

.preheader599.8:                                  ; preds = %.preheader599.7
  %i.gj = getelementptr i8, ptr %.0550, i64 96
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %.critedge.critedge, label %.preheader599.9

.preheader599.9:                                  ; preds = %.preheader599.8
  %i.gm = getelementptr i8, ptr %.0550, i64 108
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %.critedge.critedge, label %.preheader599.10

.preheader599.10:                                 ; preds = %.preheader599.9
  %i.gp = getelementptr i8, ptr %.0550, i64 120
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %.critedge.critedge, label %.preheader599.11

.preheader599.11:                                 ; preds = %.preheader599.10
  %i.gs = getelementptr i8, ptr %.0550, i64 132
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %.critedge.critedge, label %.preheader599.12

.preheader599.12:                                 ; preds = %.preheader599.11
  %i.gv = getelementptr i8, ptr %.0550, i64 144
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %.critedge.critedge, label %.preheader599.13

.preheader599.13:                                 ; preds = %.preheader599.12
  %i.gy = getelementptr i8, ptr %.0550, i64 156
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %.critedge.critedge, label %.preheader599.14

.preheader599.14:                                 ; preds = %.preheader599.13
  %i.hb = getelementptr i8, ptr %.0550, i64 168
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %.critedge.critedge, label %bb.ae

bb.ae:                                            ; preds = %.preheader599.14
  %i.he = getelementptr i8, ptr %1, i64 416       ; 3 uses
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = call noalias dereferenceable_or_null(15) ptr @wmem_alloc(ptr noundef %i.hf, i64 noundef 15) #9 ; 16 uses
  %i.hh = getelementptr i8, ptr %.0550, i64 4
  %i.hi = load i8, ptr %i.hh, align 4
  store i8 %i.hi, ptr %i.hg, align 1
  %i.hj = getelementptr i8, ptr %.0550, i64 16
  %i.hk = load i8, ptr %i.hj, align 4
  %i.hl = getelementptr i8, ptr %i.hg, i64 1
  store i8 %i.hk, ptr %i.hl, align 1
  %i.hm = getelementptr i8, ptr %.0550, i64 28
  %i.hn = load i8, ptr %i.hm, align 4
  %i.ho = getelementptr i8, ptr %i.hg, i64 2      ; 2 uses
  store i8 %i.hn, ptr %i.ho, align 1
  %i.hp = getelementptr i8, ptr %.0550, i64 40
  %i.hq = load i8, ptr %i.hp, align 4
  %i.hr = getelementptr i8, ptr %i.hg, i64 3
  store i8 %i.hq, ptr %i.hr, align 1
  %i.hs = getelementptr i8, ptr %.0550, i64 52
  %i.ht = load i8, ptr %i.hs, align 4
  %i.hu = getelementptr i8, ptr %i.hg, i64 4
  store i8 %i.ht, ptr %i.hu, align 1
  %i.hv = getelementptr i8, ptr %.0550, i64 64
  %i.hw = load i8, ptr %i.hv, align 4
  %i.hx = getelementptr i8, ptr %i.hg, i64 5
  store i8 %i.hw, ptr %i.hx, align 1
  %i.hy = getelementptr i8, ptr %.0550, i64 76
  %i.hz = load i8, ptr %i.hy, align 4
  %i.ia = getelementptr i8, ptr %i.hg, i64 6
  store i8 %i.hz, ptr %i.ia, align 1
  %i.ib = getelementptr i8, ptr %.0550, i64 88
  %i.ic = load i8, ptr %i.ib, align 4
  %i.id = getelementptr i8, ptr %i.hg, i64 7
  store i8 %i.ic, ptr %i.id, align 1
  %i.ie = getelementptr i8, ptr %.0550, i64 100
  %i.if = load i8, ptr %i.ie, align 4
  %i.ig = getelementptr i8, ptr %i.hg, i64 8
  store i8 %i.if, ptr %i.ig, align 1
  %i.ih = getelementptr i8, ptr %.0550, i64 112
  %i.ii = load i8, ptr %i.ih, align 4
  %i.ij = getelementptr i8, ptr %i.hg, i64 9
  store i8 %i.ii, ptr %i.ij, align 1
  %i.ik = getelementptr i8, ptr %.0550, i64 124
  %i.il = load i8, ptr %i.ik, align 4
  %i.im = getelementptr i8, ptr %i.hg, i64 10
  store i8 %i.il, ptr %i.im, align 1
  %i.in = getelementptr i8, ptr %.0550, i64 136
  %i.io = load i8, ptr %i.in, align 4
  %i.ip = getelementptr i8, ptr %i.hg, i64 11
  store i8 %i.io, ptr %i.ip, align 1
  %i.iq = getelementptr i8, ptr %.0550, i64 148
  %i.ir = load i8, ptr %i.iq, align 4
  %i.is = getelementptr i8, ptr %i.hg, i64 12
  store i8 %i.ir, ptr %i.is, align 1
  %i.it = getelementptr i8, ptr %.0550, i64 160
  %i.iu = load i8, ptr %i.it, align 4
  %i.iv = getelementptr i8, ptr %i.hg, i64 13
  store i8 %i.iu, ptr %i.iv, align 1
  %i.iw = getelementptr i8, ptr %.0550, i64 172
  %i.ix = load i8, ptr %i.iw, align 4
  %i.iy = getelementptr i8, ptr %i.hg, i64 14
  store i8 %i.ix, ptr %i.iy, align 1
  %i.iz = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.hg, i32 noundef 15, i32 noundef 15) ; 9 uses
  %i.ja = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.iz, ptr noundef nonnull @.str.354) ; 0 uses
  %i.jb = load i32, ptr @ett_ubx_gal_inav_osnma_hkroot_msg, align 4
  %i.jc = call ptr @proto_tree_add_subtree(ptr noundef %i.ax, ptr noundef %i.iz, i32 noundef 0, i32 noundef 15, i32 noundef %i.jb, ptr noundef null, ptr noundef nonnull @.str.355) ; 7 uses
  %i.jd = load i32, ptr @hf_ubx_gal_inav_osnma_nmas, align 4
  %i.je = call ptr @proto_tree_add_item(ptr noundef %i.jc, i32 noundef %i.jd, ptr noundef %i.iz, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jf = load i32, ptr @hf_ubx_gal_inav_osnma_cid, align 4
  %i.jg = call ptr @proto_tree_add_item(ptr noundef %i.jc, i32 noundef %i.jf, ptr noundef %i.iz, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jh = load i32, ptr @hf_ubx_gal_inav_osnma_cpks, align 4
  %i.ji = call ptr @proto_tree_add_item(ptr noundef %i.jc, i32 noundef %i.jh, ptr noundef %i.iz, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jj = load i32, ptr @hf_ubx_gal_inav_osnma_reserved, align 4
  %i.jk = call ptr @proto_tree_add_item(ptr noundef %i.jc, i32 noundef %i.jj, ptr noundef %i.iz, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jl = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_id, align 4
  %i.jm = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.jc, i32 noundef %i.jl, ptr noundef %i.iz, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.i) ; 0 uses
  %i.jn = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_blk_id, align 4
  %i.jo = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.jc, i32 noundef %i.jn, ptr noundef %i.iz, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.j) ; 0 uses
  %i.jp = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_blk, align 4
  %i.jq = call ptr @proto_tree_add_item(ptr noundef %i.jc, i32 noundef %i.jp, ptr noundef %i.iz, i32 noundef 2, i32 noundef 13, i32 noundef 0) ; 0 uses
  %i.jr = load ptr, ptr %i.he, align 8
  %i.js = call noalias dereferenceable_or_null(60) ptr @wmem_alloc(ptr noundef %i.jr, i64 noundef 60) #9 ; 61 uses
  %i.jt = getelementptr i8, ptr %.0550, i64 8
  %i.ju = load i32, ptr %i.jt, align 4            ; 4 uses
  %i.jv = lshr i32 %i.ju, 24
  %i.jw = trunc nuw i32 %i.jv to i8
  store i8 %i.jw, ptr %i.js, align 1
  %i.jx = lshr i32 %i.ju, 16
  %i.jy = trunc i32 %i.jx to i8
  %i.jz = getelementptr i8, ptr %i.js, i64 1
  store i8 %i.jy, ptr %i.jz, align 1
  %i.ka = lshr i32 %i.ju, 8
  %i.kb = trunc i32 %i.ka to i8
  %i.kc = getelementptr i8, ptr %i.js, i64 2
  store i8 %i.kb, ptr %i.kc, align 1
  %i.kd = trunc i32 %i.ju to i8
  %i.ke = getelementptr i8, ptr %i.js, i64 3
  store i8 %i.kd, ptr %i.ke, align 1
  %i.kf = getelementptr i8, ptr %i.js, i64 4
  %i.kg = getelementptr i8, ptr %.0550, i64 20
  %i.kh = load i32, ptr %i.kg, align 4            ; 4 uses
  %i.ki = lshr i32 %i.kh, 24
  %i.kj = trunc nuw i32 %i.ki to i8
  store i8 %i.kj, ptr %i.kf, align 1
  %i.kk = lshr i32 %i.kh, 16
  %i.kl = trunc i32 %i.kk to i8
  %i.km = getelementptr i8, ptr %i.js, i64 5
  store i8 %i.kl, ptr %i.km, align 1
  %i.kn = lshr i32 %i.kh, 8
  %i.ko = trunc i32 %i.kn to i8
  %i.kp = getelementptr i8, ptr %i.js, i64 6
  store i8 %i.ko, ptr %i.kp, align 1
  %i.kq = trunc i32 %i.kh to i8
  %i.kr = getelementptr i8, ptr %i.js, i64 7
  store i8 %i.kq, ptr %i.kr, align 1
  %i.ks = getelementptr i8, ptr %i.js, i64 8
  %i.kt = getelementptr i8, ptr %.0550, i64 32
  %i.ku = load i32, ptr %i.kt, align 4            ; 4 uses
  %i.kv = lshr i32 %i.ku, 24
  %i.kw = trunc nuw i32 %i.kv to i8
  store i8 %i.kw, ptr %i.ks, align 1
  %i.kx = lshr i32 %i.ku, 16
  %i.ky = trunc i32 %i.kx to i8
  %i.kz = getelementptr i8, ptr %i.js, i64 9
  store i8 %i.ky, ptr %i.kz, align 1
  %i.la = lshr i32 %i.ku, 8
  %i.lb = trunc i32 %i.la to i8
  %i.lc = getelementptr i8, ptr %i.js, i64 10
  store i8 %i.lb, ptr %i.lc, align 1
  %i.ld = trunc i32 %i.ku to i8
  %i.le = getelementptr i8, ptr %i.js, i64 11
  store i8 %i.ld, ptr %i.le, align 1
  %i.lf = getelementptr i8, ptr %i.js, i64 12
  %i.lg = getelementptr i8, ptr %.0550, i64 44
  %i.lh = load i32, ptr %i.lg, align 4            ; 4 uses
  %i.li = lshr i32 %i.lh, 24
  %i.lj = trunc nuw i32 %i.li to i8
  store i8 %i.lj, ptr %i.lf, align 1
  %i.lk = lshr i32 %i.lh, 16
  %i.ll = trunc i32 %i.lk to i8
  %i.lm = getelementptr i8, ptr %i.js, i64 13
  store i8 %i.ll, ptr %i.lm, align 1
  %i.ln = lshr i32 %i.lh, 8
  %i.lo = trunc i32 %i.ln to i8
  %i.lp = getelementptr i8, ptr %i.js, i64 14
  store i8 %i.lo, ptr %i.lp, align 1
  %i.lq = trunc i32 %i.lh to i8
  %i.lr = getelementptr i8, ptr %i.js, i64 15
  store i8 %i.lq, ptr %i.lr, align 1
  %i.ls = getelementptr i8, ptr %i.js, i64 16
  %i.lt = getelementptr i8, ptr %.0550, i64 56
  %i.lu = load i32, ptr %i.lt, align 4            ; 4 uses
  %i.lv = lshr i32 %i.lu, 24
  %i.lw = trunc nuw i32 %i.lv to i8
  store i8 %i.lw, ptr %i.ls, align 1
  %i.lx = lshr i32 %i.lu, 16
  %i.ly = trunc i32 %i.lx to i8
  %i.lz = getelementptr i8, ptr %i.js, i64 17
  store i8 %i.ly, ptr %i.lz, align 1
  %i.ma = lshr i32 %i.lu, 8
  %i.mb = trunc i32 %i.ma to i8
  %i.mc = getelementptr i8, ptr %i.js, i64 18
  store i8 %i.mb, ptr %i.mc, align 1
  %i.md = trunc i32 %i.lu to i8
  %i.me = getelementptr i8, ptr %i.js, i64 19
  store i8 %i.md, ptr %i.me, align 1
  %i.mf = getelementptr i8, ptr %i.js, i64 20
  %i.mg = getelementptr i8, ptr %.0550, i64 68
  %i.mh = load i32, ptr %i.mg, align 4            ; 4 uses
  %i.mi = lshr i32 %i.mh, 24
  %i.mj = trunc nuw i32 %i.mi to i8
  store i8 %i.mj, ptr %i.mf, align 1
  %i.mk = lshr i32 %i.mh, 16
  %i.ml = trunc i32 %i.mk to i8
  %i.mm = getelementptr i8, ptr %i.js, i64 21
  store i8 %i.ml, ptr %i.mm, align 1
  %i.mn = lshr i32 %i.mh, 8
  %i.mo = trunc i32 %i.mn to i8
  %i.mp = getelementptr i8, ptr %i.js, i64 22
  store i8 %i.mo, ptr %i.mp, align 1
  %i.mq = trunc i32 %i.mh to i8
  %i.mr = getelementptr i8, ptr %i.js, i64 23
  store i8 %i.mq, ptr %i.mr, align 1
  %i.ms = getelementptr i8, ptr %i.js, i64 24
  %i.mt = getelementptr i8, ptr %.0550, i64 80
  %i.mu = load i32, ptr %i.mt, align 4            ; 4 uses
  %i.mv = lshr i32 %i.mu, 24
  %i.mw = trunc nuw i32 %i.mv to i8
  store i8 %i.mw, ptr %i.ms, align 1
  %i.mx = lshr i32 %i.mu, 16
  %i.my = trunc i32 %i.mx to i8
  %i.mz = getelementptr i8, ptr %i.js, i64 25
  store i8 %i.my, ptr %i.mz, align 1
  %i.na = lshr i32 %i.mu, 8
  %i.nb = trunc i32 %i.na to i8
  %i.nc = getelementptr i8, ptr %i.js, i64 26
  store i8 %i.nb, ptr %i.nc, align 1
  %i.nd = trunc i32 %i.mu to i8
  %i.ne = getelementptr i8, ptr %i.js, i64 27
  store i8 %i.nd, ptr %i.ne, align 1
  %i.nf = getelementptr i8, ptr %i.js, i64 28
  %i.ng = getelementptr i8, ptr %.0550, i64 92
  %i.nh = load i32, ptr %i.ng, align 4            ; 4 uses
  %i.ni = lshr i32 %i.nh, 24
  %i.nj = trunc nuw i32 %i.ni to i8
  store i8 %i.nj, ptr %i.nf, align 1
  %i.nk = lshr i32 %i.nh, 16
  %i.nl = trunc i32 %i.nk to i8
  %i.nm = getelementptr i8, ptr %i.js, i64 29
  store i8 %i.nl, ptr %i.nm, align 1
  %i.nn = lshr i32 %i.nh, 8
  %i.no = trunc i32 %i.nn to i8
  %i.np = getelementptr i8, ptr %i.js, i64 30
  store i8 %i.no, ptr %i.np, align 1
  %i.nq = trunc i32 %i.nh to i8
  %i.nr = getelementptr i8, ptr %i.js, i64 31
  store i8 %i.nq, ptr %i.nr, align 1
  %i.ns = getelementptr i8, ptr %i.js, i64 32
  %i.nt = getelementptr i8, ptr %.0550, i64 104
  %i.nu = load i32, ptr %i.nt, align 4            ; 4 uses
  %i.nv = lshr i32 %i.nu, 24
  %i.nw = trunc nuw i32 %i.nv to i8
  store i8 %i.nw, ptr %i.ns, align 1
  %i.nx = lshr i32 %i.nu, 16
  %i.ny = trunc i32 %i.nx to i8
  %i.nz = getelementptr i8, ptr %i.js, i64 33
  store i8 %i.ny, ptr %i.nz, align 1
  %i.oa = lshr i32 %i.nu, 8
  %i.ob = trunc i32 %i.oa to i8
  %i.oc = getelementptr i8, ptr %i.js, i64 34
  store i8 %i.ob, ptr %i.oc, align 1
  %i.od = trunc i32 %i.nu to i8
  %i.oe = getelementptr i8, ptr %i.js, i64 35
  store i8 %i.od, ptr %i.oe, align 1
  %i.of = getelementptr i8, ptr %i.js, i64 36
  %i.og = getelementptr i8, ptr %.0550, i64 116
  %i.oh = load i32, ptr %i.og, align 4            ; 4 uses
  %i.oi = lshr i32 %i.oh, 24
  %i.oj = trunc nuw i32 %i.oi to i8
  store i8 %i.oj, ptr %i.of, align 1
  %i.ok = lshr i32 %i.oh, 16
  %i.ol = trunc i32 %i.ok to i8
  %i.om = getelementptr i8, ptr %i.js, i64 37
  store i8 %i.ol, ptr %i.om, align 1
  %i.on = lshr i32 %i.oh, 8
  %i.oo = trunc i32 %i.on to i8
  %i.op = getelementptr i8, ptr %i.js, i64 38
  store i8 %i.oo, ptr %i.op, align 1
  %i.oq = trunc i32 %i.oh to i8
  %i.or = getelementptr i8, ptr %i.js, i64 39
  store i8 %i.oq, ptr %i.or, align 1
  %i.os = getelementptr i8, ptr %i.js, i64 40
  %i.ot = getelementptr i8, ptr %.0550, i64 128
  %i.ou = load i32, ptr %i.ot, align 4            ; 4 uses
  %i.ov = lshr i32 %i.ou, 24
  %i.ow = trunc nuw i32 %i.ov to i8
  store i8 %i.ow, ptr %i.os, align 1
  %i.ox = lshr i32 %i.ou, 16
  %i.oy = trunc i32 %i.ox to i8
  %i.oz = getelementptr i8, ptr %i.js, i64 41
  store i8 %i.oy, ptr %i.oz, align 1
  %i.pa = lshr i32 %i.ou, 8
  %i.pb = trunc i32 %i.pa to i8
  %i.pc = getelementptr i8, ptr %i.js, i64 42
  store i8 %i.pb, ptr %i.pc, align 1
  %i.pd = trunc i32 %i.ou to i8
  %i.pe = getelementptr i8, ptr %i.js, i64 43
  store i8 %i.pd, ptr %i.pe, align 1
  %i.pf = getelementptr i8, ptr %i.js, i64 44
  %i.pg = getelementptr i8, ptr %.0550, i64 140
  %i.ph = load i32, ptr %i.pg, align 4            ; 4 uses
  %i.pi = lshr i32 %i.ph, 24
  %i.pj = trunc nuw i32 %i.pi to i8
  store i8 %i.pj, ptr %i.pf, align 1
  %i.pk = lshr i32 %i.ph, 16
  %i.pl = trunc i32 %i.pk to i8
  %i.pm = getelementptr i8, ptr %i.js, i64 45
  store i8 %i.pl, ptr %i.pm, align 1
  %i.pn = lshr i32 %i.ph, 8
  %i.po = trunc i32 %i.pn to i8
  %i.pp = getelementptr i8, ptr %i.js, i64 46
  store i8 %i.po, ptr %i.pp, align 1
  %i.pq = trunc i32 %i.ph to i8
  %i.pr = getelementptr i8, ptr %i.js, i64 47
  store i8 %i.pq, ptr %i.pr, align 1
  %i.ps = getelementptr i8, ptr %i.js, i64 48
  %i.pt = getelementptr i8, ptr %.0550, i64 152
  %i.pu = load i32, ptr %i.pt, align 4            ; 4 uses
  %i.pv = lshr i32 %i.pu, 24
  %i.pw = trunc nuw i32 %i.pv to i8
  store i8 %i.pw, ptr %i.ps, align 1
  %i.px = lshr i32 %i.pu, 16
  %i.py = trunc i32 %i.px to i8
  %i.pz = getelementptr i8, ptr %i.js, i64 49
  store i8 %i.py, ptr %i.pz, align 1
  %i.qa = lshr i32 %i.pu, 8
  %i.qb = trunc i32 %i.qa to i8
  %i.qc = getelementptr i8, ptr %i.js, i64 50
  store i8 %i.qb, ptr %i.qc, align 1
  %i.qd = trunc i32 %i.pu to i8
  %i.qe = getelementptr i8, ptr %i.js, i64 51
  store i8 %i.qd, ptr %i.qe, align 1
  %i.qf = getelementptr i8, ptr %i.js, i64 52
  %i.qg = getelementptr i8, ptr %.0550, i64 164
  %i.qh = load i32, ptr %i.qg, align 4            ; 4 uses
  %i.qi = lshr i32 %i.qh, 24
  %i.qj = trunc nuw i32 %i.qi to i8
  store i8 %i.qj, ptr %i.qf, align 1
  %i.qk = lshr i32 %i.qh, 16
  %i.ql = trunc i32 %i.qk to i8
  %i.qm = getelementptr i8, ptr %i.js, i64 53
  store i8 %i.ql, ptr %i.qm, align 1
  %i.qn = lshr i32 %i.qh, 8
  %i.qo = trunc i32 %i.qn to i8
  %i.qp = getelementptr i8, ptr %i.js, i64 54
  store i8 %i.qo, ptr %i.qp, align 1
  %i.qq = trunc i32 %i.qh to i8
  %i.qr = getelementptr i8, ptr %i.js, i64 55
  store i8 %i.qq, ptr %i.qr, align 1
  %i.qs = getelementptr i8, ptr %i.js, i64 56
  %i.qt = getelementptr i8, ptr %.0550, i64 176
  %i.qu = load i32, ptr %i.qt, align 4            ; 4 uses
  %i.qv = lshr i32 %i.qu, 24
  %i.qw = trunc nuw i32 %i.qv to i8
  store i8 %i.qw, ptr %i.qs, align 1
  %i.qx = lshr i32 %i.qu, 16
  %i.qy = trunc i32 %i.qx to i8
  %i.qz = getelementptr i8, ptr %i.js, i64 57
  store i8 %i.qy, ptr %i.qz, align 1
  %i.ra = lshr i32 %i.qu, 8
  %i.rb = trunc i32 %i.ra to i8
  %i.rc = getelementptr i8, ptr %i.js, i64 58
  store i8 %i.rb, ptr %i.rc, align 1
  %i.rd = trunc i32 %i.qu to i8
  %i.re = getelementptr i8, ptr %i.js, i64 59
  store i8 %i.rd, ptr %i.re, align 1
  %i.rf = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.js, i32 noundef 60, i32 noundef 60) ; 32 uses
  %i.rg = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.rf, ptr noundef nonnull @.str.356) ; 0 uses
  %i.rh = load i32, ptr @ett_ubx_gal_inav_osnma_mack_msg, align 4
  %i.ri = call ptr @proto_tree_add_subtree(ptr noundef %i.ax, ptr noundef %i.rf, i32 noundef 0, i32 noundef 60, i32 noundef %i.rh, ptr noundef null, ptr noundef nonnull @.str.357) ; 10 uses
  %i.rj = load i32, ptr @hf_ubx_gal_inav_osnma_tag0, align 4
  %i.rk = call ptr @proto_tree_add_item(ptr noundef %i.ri, i32 noundef %i.rj, ptr noundef %i.rf, i32 noundef 0, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.rl = load i32, ptr @hf_ubx_gal_inav_osnma_macseq, align 4
  %i.rm = call ptr @proto_tree_add_item(ptr noundef %i.ri, i32 noundef %i.rl, ptr noundef %i.rf, i32 noundef 5, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.rn = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.ro = call ptr @proto_tree_add_item(ptr noundef %i.ri, i32 noundef %i.rn, ptr noundef %i.rf, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.rp = load i32, ptr @ett_ubx_gal_inav_osnma_mack_tag, align 16
  %i.rq = call ptr @proto_tree_add_subtree(ptr noundef %i.ri, ptr noundef %i.rf, i32 noundef 7, i32 noundef 7, i32 noundef %i.rp, ptr noundef null, ptr noundef nonnull @.str.358) ; 4 uses
  %i.rr = load i32, ptr @hf_ubx_gal_inav_osnma_tag, align 4
  %i.rs = call ptr @proto_tree_add_item(ptr noundef %i.rq, i32 noundef %i.rr, ptr noundef %i.rf, i32 noundef 7, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.rt = load i32, ptr @hf_ubx_gal_inav_osnma_prn_d, align 4
  %i.ru = call ptr @proto_tree_add_item(ptr noundef %i.rq, i32 noundef %i.rt, ptr noundef %i.rf, i32 noundef 12, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.rv = load i32, ptr @hf_ubx_gal_inav_osnma_adkd, align 4
  %i.rw = call ptr @proto_tree_add_item(ptr noundef %i.rq, i32 noundef %i.rv, ptr noundef %i.rf, i32 noundef 13, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.rx = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.ry = call ptr @proto_tree_add_item(ptr noundef %i.rq, i32 noundef %i.rx, ptr noundef %i.rf, i32 noundef 13, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.rz = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_ubx_gal_inav_osnma_mack_tag, i64 4), align 4
  %i.sa = call ptr @proto_tree_add_subtree(ptr noundef %i.ri, ptr noundef %i.rf, i32 noundef 14, i32 noundef 7, i32 noundef %i.rz, ptr noundef null, ptr noundef nonnull @.str.358) ; 4 uses
  %i.sb = load i32, ptr @hf_ubx_gal_inav_osnma_tag, align 4
  %i.sc = call ptr @proto_tree_add_item(ptr noundef %i.sa, i32 noundef %i.sb, ptr noundef %i.rf, i32 noundef 14, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.sd = load i32, ptr @hf_ubx_gal_inav_osnma_prn_d, align 4
  %i.se = call ptr @proto_tree_add_item(ptr noundef %i.sa, i32 noundef %i.sd, ptr noundef %i.rf, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sf = load i32, ptr @hf_ubx_gal_inav_osnma_adkd, align 4
  %i.sg = call ptr @proto_tree_add_item(ptr noundef %i.sa, i32 noundef %i.sf, ptr noundef %i.rf, i32 noundef 20, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sh = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.si = call ptr @proto_tree_add_item(ptr noundef %i.sa, i32 noundef %i.sh, ptr noundef %i.rf, i32 noundef 20, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sj = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_ubx_gal_inav_osnma_mack_tag, i64 8), align 8
  %i.sk = call ptr @proto_tree_add_subtree(ptr noundef %i.ri, ptr noundef %i.rf, i32 noundef 21, i32 noundef 7, i32 noundef %i.sj, ptr noundef null, ptr noundef nonnull @.str.358) ; 4 uses
  %i.sl = load i32, ptr @hf_ubx_gal_inav_osnma_tag, align 4
  %i.sm = call ptr @proto_tree_add_item(ptr noundef %i.sk, i32 noundef %i.sl, ptr noundef %i.rf, i32 noundef 21, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.sn = load i32, ptr @hf_ubx_gal_inav_osnma_prn_d, align 4
  %i.so = call ptr @proto_tree_add_item(ptr noundef %i.sk, i32 noundef %i.sn, ptr noundef %i.rf, i32 noundef 26, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sp = load i32, ptr @hf_ubx_gal_inav_osnma_adkd, align 4
  %i.sq = call ptr @proto_tree_add_item(ptr noundef %i.sk, i32 noundef %i.sp, ptr noundef %i.rf, i32 noundef 27, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sr = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.ss = call ptr @proto_tree_add_item(ptr noundef %i.sk, i32 noundef %i.sr, ptr noundef %i.rf, i32 noundef 27, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.st = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_ubx_gal_inav_osnma_mack_tag, i64 12), align 4
  %i.su = call ptr @proto_tree_add_subtree(ptr noundef %i.ri, ptr noundef %i.rf, i32 noundef 28, i32 noundef 7, i32 noundef %i.st, ptr noundef null, ptr noundef nonnull @.str.358) ; 4 uses
  %i.sv = load i32, ptr @hf_ubx_gal_inav_osnma_tag, align 4
  %i.sw = call ptr @proto_tree_add_item(ptr noundef %i.su, i32 noundef %i.sv, ptr noundef %i.rf, i32 noundef 28, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.sx = load i32, ptr @hf_ubx_gal_inav_osnma_prn_d, align 4
  %i.sy = call ptr @proto_tree_add_item(ptr noundef %i.su, i32 noundef %i.sx, ptr noundef %i.rf, i32 noundef 33, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sz = load i32, ptr @hf_ubx_gal_inav_osnma_adkd, align 4
  %i.ta = call ptr @proto_tree_add_item(ptr noundef %i.su, i32 noundef %i.sz, ptr noundef %i.rf, i32 noundef 34, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tb = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.tc = call ptr @proto_tree_add_item(ptr noundef %i.su, i32 noundef %i.tb, ptr noundef %i.rf, i32 noundef 34, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.td = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_ubx_gal_inav_osnma_mack_tag, i64 16), align 16
  %i.te = call ptr @proto_tree_add_subtree(ptr noundef %i.ri, ptr noundef %i.rf, i32 noundef 35, i32 noundef 7, i32 noundef %i.td, ptr noundef null, ptr noundef nonnull @.str.358) ; 4 uses
  %i.tf = load i32, ptr @hf_ubx_gal_inav_osnma_tag, align 4
  %i.tg = call ptr @proto_tree_add_item(ptr noundef %i.te, i32 noundef %i.tf, ptr noundef %i.rf, i32 noundef 35, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.th = load i32, ptr @hf_ubx_gal_inav_osnma_prn_d, align 4
  %i.ti = call ptr @proto_tree_add_item(ptr noundef %i.te, i32 noundef %i.th, ptr noundef %i.rf, i32 noundef 40, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tj = load i32, ptr @hf_ubx_gal_inav_osnma_adkd, align 4
  %i.tk = call ptr @proto_tree_add_item(ptr noundef %i.te, i32 noundef %i.tj, ptr noundef %i.rf, i32 noundef 41, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tl = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.tm = call ptr @proto_tree_add_item(ptr noundef %i.te, i32 noundef %i.tl, ptr noundef %i.rf, i32 noundef 41, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tn = load i32, ptr @hf_ubx_gal_inav_osnma_key, align 4
  %i.to = call ptr @proto_tree_add_item(ptr noundef %i.ri, i32 noundef %i.tn, ptr noundef %i.rf, i32 noundef 42, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.tp = load i32, ptr @hf_ubx_gal_inav_osnma_padding, align 4
  %i.tq = call ptr @proto_tree_add_item(ptr noundef %i.ri, i32 noundef %i.tp, ptr noundef %i.rf, i32 noundef 58, i32 noundef 2, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6253.0..sroa_idx, i8 0, i64 20, i1 false)
  %i.tr = load i32, ptr %i.i, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.constellation.366, i64 32, i1 false)
  %i.ts = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ts, ptr noundef nonnull align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.type.360, i64 32, i1 false)
  %i.tt = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 6, ptr %i.tt, align 16
  %.sroa.5251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 0, ptr %.sroa.5251.0..sroa_idx, align 4
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 %i.tr, ptr %.sroa.5252.0..sroa_idx, align 8
  %i.tu = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.tu, ptr noundef nonnull align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.end.368, i64 32, i1 false)
  %i.tv = load i32, ptr %i.bo, align 4
  %i.tw = call ptr @find_conversation_full(i32 noundef %i.tv, ptr noundef nonnull %5) ; 2 uses
  %i.tx = icmp eq ptr %i.tw, null
  br i1 %i.tx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ty = load i32, ptr %i.bo, align 4
  %i.tz = call ptr @conversation_new_full(i32 noundef %i.ty, ptr noundef nonnull %5)
  %i.ua = call ptr @wmem_file_scope()
  %i.ub = call noalias dereferenceable_or_null(224) ptr @wmem_alloc0(ptr noundef %i.ua, i64 noundef 224) #9 ; 2 uses
  %i.uc = load i32, ptr @proto_ubx_gal_inav, align 4
  call void @conversation_add_proto_data(ptr noundef %i.tz, i32 noundef %i.uc, ptr noundef %i.ub)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ud = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.ue = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.tw, i32 noundef %i.ud)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0549 = phi ptr [ %i.ub, %bb.af ], [ %i.ue, %bb.ag ] ; 21 uses
  %.not580 = icmp eq ptr %.0549, null
  br i1 %.not580, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.uf = load i32, ptr %i.j, align 4
  %i.ug = zext i32 %i.uf to i64
  %i.uh = getelementptr [14 x i8], ptr %.0549, i64 %i.ug
  store i8 1, ptr %i.uh, align 1
  %i.ui = load i32, ptr %i.j, align 4
  %i.uj = zext i32 %i.ui to i64
  %i.uk = getelementptr [14 x i8], ptr %.0549, i64 %i.uj
  %i.ul = getelementptr i8, ptr %i.uk, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(13) %i.ul, ptr noundef align 1 dereferenceable(13) %i.ho, i64 noundef 13, i1 noundef false) #8
  %i.um = load i8, ptr %.0549, align 1, !range !12, !noundef !13
  %i.un = trunc nuw i8 %i.um to i1
  br i1 %i.un, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.uo = getelementptr i8, ptr %.0549, i64 1
  %i.up = load i8, ptr %i.uo, align 1             ; 2 uses
  %.not581 = icmp eq i8 %i.up, 0
  br i1 %.not581, label %.thread, label %.preheader598.1

.preheader598.1:                                  ; preds = %bb.aj
  %i.uq = getelementptr i8, ptr %.0549, i64 14
  %i.ur = load i8, ptr %i.uq, align 1, !range !12, !noundef !13
  %i.us = trunc nuw i8 %i.ur to i1
  br i1 %i.us, label %.preheader598.2, label %.thread

.preheader598.2:                                  ; preds = %.preheader598.1
  %i.ut = getelementptr i8, ptr %.0549, i64 28
  %i.uu = load i8, ptr %i.ut, align 1, !range !12, !noundef !13
  %i.uv = trunc nuw i8 %i.uu to i1
  br i1 %i.uv, label %.preheader598.3, label %.thread

.preheader598.3:                                  ; preds = %.preheader598.2
  %i.uw = getelementptr i8, ptr %.0549, i64 42
  %i.ux = load i8, ptr %i.uw, align 1, !range !12, !noundef !13
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %.preheader598.4, label %.thread

.preheader598.4:                                  ; preds = %.preheader598.3
  %i.uz = getelementptr i8, ptr %.0549, i64 56
  %i.va = load i8, ptr %i.uz, align 1, !range !12, !noundef !13
  %i.vb = trunc nuw i8 %i.va to i1
  br i1 %i.vb, label %.preheader598.5, label %.thread

.preheader598.5:                                  ; preds = %.preheader598.4
  %i.vc = getelementptr i8, ptr %.0549, i64 70
  %i.vd = load i8, ptr %i.vc, align 1, !range !12, !noundef !13
  %i.ve = trunc nuw i8 %i.vd to i1
  br i1 %i.ve, label %.preheader598.6, label %.thread

.preheader598.6:                                  ; preds = %.preheader598.5
  %i.vf = getelementptr i8, ptr %.0549, i64 84
  %i.vg = load i8, ptr %i.vf, align 1, !range !12, !noundef !13
  %i.vh = trunc nuw i8 %i.vg to i1
  br i1 %i.vh, label %.preheader598.7, label %bb.ak

.preheader598.7:                                  ; preds = %.preheader598.6
  %i.vi = getelementptr i8, ptr %.0549, i64 98
  %i.vj = load i8, ptr %i.vi, align 1, !range !12, !noundef !13
  %i.vk = trunc nuw i8 %i.vj to i1
  br i1 %i.vk, label %.preheader598.8, label %bb.ak

.preheader598.8:                                  ; preds = %.preheader598.7
  %i.vl = getelementptr i8, ptr %.0549, i64 112
  %i.vm = load i8, ptr %i.vl, align 1, !range !12, !noundef !13
  %i.vn = trunc nuw i8 %i.vm to i1
  br i1 %i.vn, label %.preheader598.9, label %bb.ak

.preheader598.9:                                  ; preds = %.preheader598.8
  %i.vo = getelementptr i8, ptr %.0549, i64 126
  %i.vp = load i8, ptr %i.vo, align 1, !range !12, !noundef !13
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %.preheader598.10, label %bb.ak

.preheader598.10:                                 ; preds = %.preheader598.9
  %i.vr = getelementptr i8, ptr %.0549, i64 140
  %i.vs = load i8, ptr %i.vr, align 1, !range !12, !noundef !13
  %i.vt = trunc nuw i8 %i.vs to i1
  br i1 %i.vt, label %.preheader598.11, label %bb.ak

.preheader598.11:                                 ; preds = %.preheader598.10
  %i.vu = getelementptr i8, ptr %.0549, i64 154
  %i.vv = load i8, ptr %i.vu, align 1, !range !12, !noundef !13
  %i.vw = trunc nuw i8 %i.vv to i1
  br i1 %i.vw, label %.preheader598.12, label %bb.ak

.preheader598.12:                                 ; preds = %.preheader598.11
  %i.vx = getelementptr i8, ptr %.0549, i64 168
  %i.vy = load i8, ptr %i.vx, align 1, !range !12, !noundef !13
  %i.vz = trunc nuw i8 %i.vy to i1
  br i1 %i.vz, label %.preheader598.13, label %bb.ak

.preheader598.13:                                 ; preds = %.preheader598.12
  %i.wa = getelementptr i8, ptr %.0549, i64 182
  %i.wb = load i8, ptr %i.wa, align 1, !range !12, !noundef !13
  %i.wc = trunc nuw i8 %i.wb to i1
  br i1 %i.wc, label %.preheader598.14, label %bb.ak

.preheader598.14:                                 ; preds = %.preheader598.13
  %i.wd = getelementptr i8, ptr %.0549, i64 196
  %i.we = load i8, ptr %i.wd, align 1, !range !12, !noundef !13
  %i.wf = trunc nuw i8 %i.we to i1
  br i1 %i.wf, label %.preheader598.15, label %bb.ak

.preheader598.15:                                 ; preds = %.preheader598.14
  %i.wg = getelementptr i8, ptr %.0549, i64 210
  %i.wh = load i8, ptr %i.wg, align 1, !range !12, !noundef !13
  %spec.select = add nuw nsw i8 %i.wh, 15
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader598.15, %.preheader598.14, %.preheader598.13, %.preheader598.12, %.preheader598.11, %.preheader598.10, %.preheader598.9, %.preheader598.8, %.preheader598.7, %.preheader598.6
  %.0544.lcssa = phi i8 [ 8, %.preheader598.8 ], [ 12, %.preheader598.12 ], [ 13, %.preheader598.13 ], [ %spec.select, %.preheader598.15 ], [ 6, %.preheader598.6 ], [ 10, %.preheader598.10 ], [ 11, %.preheader598.11 ], [ 14, %.preheader598.14 ], [ 7, %.preheader598.7 ], [ 9, %.preheader598.9 ] ; 3 uses
  %i.wi = lshr i8 %i.up, 4
  %narrow = add nuw nsw i8 %i.wi, 6
  %i.wj = icmp eq i8 %.0544.lcssa, %narrow
  br i1 %i.wj, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.wk = zext nneg i8 %.0544.lcssa to i32
  %i.wl = load ptr, ptr %i.he, align 8
  %i.wm = mul nuw nsw i32 %i.wk, 13               ; 6 uses
  %i.wn = zext nneg i32 %i.wm to i64              ; 2 uses
  %i.wo = call noalias ptr @wmem_alloc(ptr noundef %i.wl, i64 noundef %i.wn) #9 ; 2 uses
  %i.wp = zext nneg i8 %.0544.lcssa to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.am
  %.6612 = phi i64 [ 0, %bb.al ], [ %i.wv, %bb.am ] ; 3 uses
  %i.wq = mul nuw nsw i64 %.6612, 13              ; 2 uses
  %i.wr = getelementptr i8, ptr %i.wo, i64 %i.wq
  %i.ws = getelementptr [14 x i8], ptr %.0549, i64 %.6612
  %i.wt = getelementptr i8, ptr %i.ws, i64 1
  %7 = sub nuw nsw i64 %i.wn, %i.wq
  %i.wu = call ptr @__memcpy_chk(ptr noundef %i.wr, ptr noundef %i.wt, i64 noundef 13, i64 noundef %7) #8, !alias.scope !14 ; 0 uses
  %i.wv = add nuw nsw i64 %.6612, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.wv, %i.wp
  br i1 %exitcond.not, label %bb.an, label %bb.am, !llvm.loop !9

bb.an:                                            ; preds = %bb.am
  %i.ww = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.wo, i32 noundef %i.wm, i32 noundef %i.wm) ; 29 uses
  %i.wx = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.ww, ptr noundef nonnull @.str.362) ; 0 uses
  %i.wy = load i32, ptr %i.i, align 4
  %i.wz = icmp ult i32 %i.wy, 12
  br i1 %i.wz, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.xa = load i32, ptr @ett_ubx_gal_inav_osnma_dsm, align 4
  %i.xb = call ptr @proto_tree_add_subtree(ptr noundef %i.ax, ptr noundef %i.ww, i32 noundef 0, i32 noundef %i.wm, i32 noundef %i.xa, ptr noundef null, ptr noundef nonnull @.str.363) ; 16 uses
  %i.xc = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_nb_dk, align 4
  %i.xd = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.xc, ptr noundef %i.ww, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xe = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_pkid, align 4
  %i.xf = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.xe, ptr noundef %i.ww, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xg = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_cidkr, align 4
  %i.xh = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.xg, ptr noundef %i.ww, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xi = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_reserved1, align 4
  %i.xj = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.xi, ptr noundef %i.ww, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xk = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_hf, align 4
  %i.xl = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.xk, ptr noundef %i.ww, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xm = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_mf, align 4
  %i.xn = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.xm, ptr noundef %i.ww, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xo = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_ks, align 4
  %i.xp = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.xb, i32 noundef %i.xo, ptr noundef %i.ww, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.k) ; 0 uses
  %i.xq = load i32, ptr %i.k, align 4             ; 4 uses
  %i.xr = icmp ult i32 %i.xq, 5
  %i.xs = add nuw nsw i32 %i.xq, 12
  %i.xt = icmp ult i32 %i.xq, 9
  %i.xu = shl nuw nsw i32 %i.xq, 2
  %spec.select.i = select i1 %i.xt, i32 %i.xu, i32 0
  %.0.i = select i1 %i.xr, i32 %i.xs, i32 %spec.select.i ; 5 uses
  %i.xv = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_ts, align 4
  %i.xw = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.xv, ptr noundef %i.ww, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xx = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_maclt, align 4
  %i.xy = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.xx, ptr noundef %i.ww, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.xz = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_reserved2, align 4
  %i.ya = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.xz, ptr noundef %i.ww, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.yb = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_wn_k, align 4
  %i.yc = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.yb, ptr noundef %i.ww, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.yd = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_towh_k, align 4
  %i.ye = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.yd, ptr noundef %i.ww, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.yf = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_alpha, align 4
  %i.yg = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.yf, ptr noundef %i.ww, i32 noundef 7, i32 noundef 6, i32 noundef 0) ; 0 uses
  %.not582 = icmp eq i32 %.0.i, 0
  br i1 %.not582, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.yh = add nsw i32 %i.wm, -77
  %i.yi = sub i32 %i.yh, %.0.i
  %i.yj = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_kroot, align 4
  %i.yk = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.yj, ptr noundef %i.ww, i32 noundef 13, i32 noundef %.0.i, i32 noundef 0) ; 0 uses
  %i.yl = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_ds, align 4
  %i.ym = add nuw nsw i32 %.0.i, 13
  %i.yn = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.yl, ptr noundef %i.ww, i32 noundef %i.ym, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.yo = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_p_dk, align 4
  %i.yp = add nuw nsw i32 %.0.i, 77
  %i.yq = call ptr @proto_tree_add_item(ptr noundef %i.xb, i32 noundef %i.yo, ptr noundef %i.ww, i32 noundef %i.yp, i32 noundef %i.yi, i32 noundef 0) ; 0 uses
  br label %.thread

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #8
  %i.yr = load i32, ptr @ett_ubx_gal_inav_osnma_dsm, align 4
  %i.ys = call ptr @proto_tree_add_subtree(ptr noundef %i.ax, ptr noundef %i.ww, i32 noundef 0, i32 noundef %i.wm, i32 noundef %i.yr, ptr noundef null, ptr noundef nonnull @.str.364) ; 10 uses
  %i.yt = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_nb_dp, align 4
  %i.yu = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ys, i32 noundef %i.yt, ptr noundef %i.ww, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.o) ; 0 uses
  %i.yv = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_mid, align 4
  %i.yw = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ys, i32 noundef %i.yv, ptr noundef %i.ww, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.p) ; 0 uses
  %i.yx = load i32, ptr %i.p, align 4             ; 5 uses
  %i.yy = icmp ult i32 %i.yx, 16
  br i1 %i.yy, label %switch.lookup, label %bb.ar

switch.lookup:                                    ; preds = %bb.aq
  %i.yz = zext nneg i32 %i.yx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ubx_gal_inav, i64 %i.yz
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.za = zext nneg i32 %i.yx to i64
  %switch.gep659 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ubx_gal_inav.1, i64 %i.za
  %switch.load660 = load ptr, ptr %switch.gep659, align 8
  %i.zb = zext nneg i32 %i.yx to i64
  %switch.gep661 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ubx_gal_inav.2, i64 %i.zb
  %switch.load662 = load ptr, ptr %switch.gep661, align 8
  %i.zc = zext nneg i32 %i.yx to i64
  %switch.gep663 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ubx_gal_inav.3, i64 %i.zc
  %switch.load664 = load ptr, ptr %switch.gep663, align 8
  %i.zd = load i32, ptr %switch.load, align 4
  %i.ze = call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.zd, ptr noundef %i.ww, i32 noundef 1, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.zf = load i32, ptr %switch.load660, align 4
  %i.zg = call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.zf, ptr noundef %i.ww, i32 noundef 33, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.zh = load i32, ptr %switch.load662, align 4
  %i.zi = call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.zh, ptr noundef %i.ww, i32 noundef 65, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.zj = load i32, ptr %switch.load664, align 4
  %i.zk = call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.zj, ptr noundef %i.ww, i32 noundef 97, i32 noundef 32, i32 noundef 0) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %switch.lookup
  %i.zl = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_npkt, align 4
  %i.zm = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ys, i32 noundef %i.zl, ptr noundef %i.ww, i32 noundef 129, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.q) ; 0 uses
  %i.zn = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_npkid, align 4
  %i.zo = call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.zn, ptr noundef %i.ww, i32 noundef 129, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zp = load i32, ptr %i.o, align 4             ; 3 uses
  %i.zq = add i32 %i.zp, -7
  %or.cond11 = icmp ult i32 %i.zq, 4
  br i1 %or.cond11, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.zr = load i32, ptr %i.q, align 4
  switch i32 %i.zr, label %bb.aw [
    i32 1, label %bb.av
    i32 4, label %bb.at
    i32 3, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.zs = mul nuw nsw i32 %i.zp, 104
  %i.zt = add nsw i32 %i.zs, -416
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.at, %bb.au
  %.0541 = phi i32 [ %i.zt, %bb.au ], [ 536, %bb.at ], [ 264, %bb.as ] ; 2 uses
  %i.zu = mul nuw nsw i32 %i.zp, 104
  %i.zv = add nsw i32 %i.zu, -416
  %i.zw = sub nsw i32 %i.zv, %.0541
  %i.zx = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_npk, align 4
  %i.zy = lshr i32 %.0541, 3                      ; 2 uses
  %i.zz = call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.zx, ptr noundef %i.ww, i32 noundef 130, i32 noundef %i.zy, i32 noundef 0) ; 0 uses
  %i.aaa = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_p_dp, align 4
  %i.aab = add nuw nsw i32 %i.zy, 130
  %i.aac = lshr i32 %i.zw, 3
  %i.aad = call ptr @proto_tree_add_item(ptr noundef %i.ys, i32 noundef %i.aaa, ptr noundef %i.ww, i32 noundef %i.aab, i32 noundef %i.aac, i32 noundef 0) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %bb.av, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  br label %.thread

.thread:                                          ; preds = %.preheader598.5, %.preheader598.4, %.preheader598.3, %.preheader598.2, %.preheader598.1, %bb.ak, %bb.ao, %bb.ap, %bb.aw, %bb.ai, %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %.critedge

.critedge.critedge:                               ; preds = %.preheader599.preheader, %.preheader599.1, %.preheader599.2, %.preheader599.3, %.preheader599.4, %.preheader599.5, %.preheader599.6, %.preheader599.7, %.preheader599.8, %.preheader599.9, %.preheader599.10, %.preheader599.11, %.preheader599.12, %.preheader599.13, %.preheader599.14, %bb.o, %bb.k, %bb.n, %.loopexit601
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.critedge, %bb.g, %bb.f, %.thread
  %i.aae = load i32, ptr @ett_ubx_gal_inav_sar, align 4
  %i.aaf = call ptr @proto_tree_add_subtree(ptr noundef %i.v, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef %i.aae, ptr noundef null, ptr noundef nonnull @.str.365) ; 4 uses
  %i.aag = load i32, ptr @hf_ubx_gal_inav_sar_start_bit, align 4
  %i.aah = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.aaf, i32 noundef %i.aag, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.aai = load i32, ptr @hf_ubx_gal_inav_sar_long_rlm, align 4
  %i.aaj = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.aaf, i32 noundef %i.aai, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.aak = load i32, ptr @hf_ubx_gal_inav_sar_rlm_data, align 4
  %i.aal = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.aaf, i32 noundef %i.aak, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.g) ; 0 uses
  br i1 %i.bc, label %bb.ax, label %bb.bq

bb.ax:                                            ; preds = %.critedge
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx, i8 0, i64 20, i1 false)
  %i.aam = load i8, ptr %3, align 1
  %i.aan = zext i8 %i.aam to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.constellation.366, i64 32, i1 false)
  %i.aao = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aao, ptr noundef nonnull align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.type.367, i64 32, i1 false)
  %i.aap = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 6, ptr %i.aap, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i32 %i.aan, ptr %.sroa.545.0..sroa_idx, align 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aaq, ptr noundef nonnull align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.end.368, i64 32, i1 false)
  %i.aar = getelementptr i8, ptr %1, i64 20       ; 6 uses
  %i.aas = load i32, ptr %i.aar, align 4
  %i.aat = call ptr @find_conversation_full(i32 noundef %i.aas, ptr noundef nonnull %6) ; 8 uses
  %i.aau = icmp eq ptr %i.aat, null
  %i.aav = load i8, ptr %i.a, align 1, !range !12
  %i.aaw = trunc nuw i8 %i.aav to i1              ; 2 uses
  %or.cond17 = select i1 %i.aau, i1 %i.aaw, i1 false
  br i1 %or.cond17, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.aax = load i32, ptr %i.aar, align 4
  %i.aay = call ptr @conversation_new_full(i32 noundef %i.aax, ptr noundef nonnull %6) ; 2 uses
  %i.aaz = call ptr @wmem_file_scope()
  %i.aba = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.abb = trunc nuw i8 %i.aba to i1
  %i.abc = select i1 %i.abb, i64 96, i64 48
  %i.abd = call noalias ptr @wmem_alloc0(ptr noundef %i.aaz, i64 noundef %i.abc) #9 ; 5 uses
  %i.abe = load i32, ptr %i.aar, align 4
  store i32 %i.abe, ptr %i.abd, align 4
  %i.abf = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.abg = getelementptr i8, ptr %i.abd, i64 4
  store i8 %i.abf, ptr %i.abg, align 4
  %i.abh = load i32, ptr %i.g, align 4
  %i.abi = getelementptr i8, ptr %i.abd, i64 8
  store i32 %i.abh, ptr %i.abi, align 4
  %i.abj = load i32, ptr @proto_ubx_gal_inav, align 4
  call void @conversation_add_proto_data(ptr noundef %i.aay, i32 noundef %i.abj, ptr noundef %i.abd)
  br label %.loopexit

bb.az:                                            ; preds = %bb.ax
  %i.abk = icmp ne ptr %i.aat, null               ; 2 uses
  %or.cond19 = select i1 %i.abk, i1 %i.aaw, i1 false
  br i1 %or.cond19, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.abl = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.abm = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.aat, i32 noundef %i.abl) ; 3 uses
  %.not584 = icmp eq ptr %i.abm, null
  br i1 %.not584, label %.thread593, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.abn = load i32, ptr %i.abm, align 4
  %i.abo = load i32, ptr %i.aar, align 4          ; 2 uses
  %.not585 = icmp eq i32 %i.abn, %i.abo
  br i1 %.not585, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.abp = call ptr @conversation_new_full(i32 noundef %i.abo, ptr noundef nonnull %6) ; 2 uses
  %i.abq = call ptr @wmem_file_scope()
  %i.abr = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.abs = trunc nuw i8 %i.abr to i1
  %i.abt = select i1 %i.abs, i64 96, i64 48
  %i.abu = call noalias ptr @wmem_alloc0(ptr noundef %i.abq, i64 noundef %i.abt) #9 ; 5 uses
  %i.abv = load i32, ptr %i.aar, align 4
  store i32 %i.abv, ptr %i.abu, align 4
  %i.abw = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.abx = getelementptr i8, ptr %i.abu, i64 4
  store i8 %i.abw, ptr %i.abx, align 4
  %i.aby = load i32, ptr %i.g, align 4
  %i.abz = getelementptr i8, ptr %i.abu, i64 8
  store i32 %i.aby, ptr %i.abz, align 4
  %i.aca = load i32, ptr @proto_ubx_gal_inav, align 4
  call void @conversation_add_proto_data(ptr noundef %i.abp, i32 noundef %i.aca, ptr noundef %i.abu)
  br label %.loopexit

bb.bd:                                            ; preds = %bb.az
  br i1 %i.abk, label %bb.be, label %.thread593

bb.be:                                            ; preds = %bb.bd
  %i.acb = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.acc = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.aat, i32 noundef %i.acb) ; 6 uses
  %.not583 = icmp eq ptr %i.acc, null
  br i1 %.not583, label %.thread593, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.acd = getelementptr i8, ptr %i.acc, i64 4
  %i.ace = load i8, ptr %i.acd, align 4, !range !12, !noundef !13 ; 3 uses
  %i.acf = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.acg = icmp eq i8 %i.ace, %i.acf
  br i1 %i.acg, label %.preheader597, label %.loopexit

.preheader597:                                    ; preds = %bb.bf
  %i.ach = trunc nuw i8 %i.ace to i1
  %i.aci = select i1 %i.ach, i64 8, i64 4
  %i.acj = load i32, ptr %i.aar, align 4          ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %.preheader597
  %.7613 = phi i64 [ 0, %.preheader597 ], [ %i.acr, %bb.bi ] ; 2 uses
  %i.ack = getelementptr [12 x i8], ptr %i.acc, i64 %.7613 ; 4 uses
  %i.acl = load i32, ptr %i.ack, align 4          ; 2 uses
  %i.acm = icmp eq i32 %i.acl, 0
  br i1 %i.acm, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.acj, ptr %i.ack, align 4
  %i.acn = getelementptr i8, ptr %i.ack, i64 4
  store i8 %i.ace, ptr %i.acn, align 4
  %i.aco = load i32, ptr %i.g, align 4
  %i.acp = getelementptr i8, ptr %i.ack, i64 8
  store i32 %i.aco, ptr %i.acp, align 4
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.acq = icmp eq i32 %i.acl, %i.acj
  %i.acr = add nuw nsw i64 %.7613, 1              ; 2 uses
  %exitcond620.not = icmp eq i64 %i.acr, %i.aci
  %or.cond657 = select i1 %i.acq, i1 true, i1 %exitcond620.not
  br i1 %or.cond657, label %.loopexit, label %bb.bg, !llvm.loop !10

.loopexit:                                        ; preds = %bb.bi, %bb.bc, %bb.bb, %bb.bf, %bb.bh, %bb.ay
  %.0548 = phi ptr [ %i.abd, %bb.ay ], [ %i.abu, %bb.bc ], [ %i.abm, %bb.bb ], [ %i.acc, %bb.bf ], [ %i.acc, %bb.bh ], [ %i.acc, %bb.bi ] ; 9 uses
  %.0540 = phi ptr [ %i.aay, %bb.ay ], [ %i.abp, %bb.bc ], [ %i.aat, %bb.bb ], [ %i.aat, %bb.bf ], [ %i.aat, %bb.bh ], [ %i.aat, %bb.bi ]
  %i.acs = icmp ne ptr %.0540, null
  %i.act = icmp ne ptr %.0548, null
  %or.cond21 = and i1 %i.act, %i.acs
  br i1 %or.cond21, label %.preheader, label %.thread593

.preheader:                                       ; preds = %.loopexit
  %i.acu = load i8, ptr %i.b, align 1, !range !12, !noundef !13
  %i.acv = trunc nuw i8 %i.acu to i1              ; 2 uses
  %i.acw = select i1 %i.acv, i64 8, i64 4         ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bn, %.preheader
  %.8614 = phi i64 [ 0, %.preheader ], [ %i.adm, %bb.bn ] ; 6 uses
  %i.acx = getelementptr [12 x i8], ptr %.0548, i64 %.8614
  %i.acy = load i32, ptr %i.acx, align 4
  %i.acz = icmp eq i32 %i.acy, 0
  br i1 %i.acz, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ada = or disjoint i64 %.8614, 1              ; 2 uses
  %i.adb = getelementptr [12 x i8], ptr %.0548, i64 %i.ada
  %i.adc = load i32, ptr %i.adb, align 4
  %i.add = icmp eq i32 %i.adc, 0
  br i1 %i.add, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ade = or disjoint i64 %.8614, 2              ; 2 uses
  %i.adf = getelementptr [12 x i8], ptr %.0548, i64 %i.ade
  %i.adg = load i32, ptr %i.adf, align 4
  %i.adh = icmp eq i32 %i.adg, 0
  br i1 %i.adh, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.adi = or disjoint i64 %.8614, 3              ; 2 uses
  %i.adj = getelementptr [12 x i8], ptr %.0548, i64 %i.adi
  %i.adk = load i32, ptr %i.adj, align 4
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.adm = add nuw nsw i64 %.8614, 4              ; 2 uses
  %exitcond621.not.3 = icmp eq i64 %i.adm, %i.acw
  br i1 %exitcond621.not.3, label %bb.bo, label %bb.bj, !llvm.loop !11

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %.8.lcssa = phi i64 [ %.8614, %bb.bj ], [ %i.acw, %bb.bn ], [ %i.ada, %bb.bk ], [ %i.adi, %bb.bm ], [ %i.ade, %bb.bl ]
  %i.adn = icmp ne i64 %.8.lcssa, 4
  %or.cond23.not = or i1 %i.adn, %i.acv
  br i1 %or.cond23.not, label %.thread593, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ado = getelementptr i8, ptr %1, i64 416
  %i.adp = load ptr, ptr %i.ado, align 8
  %i.adq = call noalias dereferenceable_or_null(10) ptr @wmem_alloc(ptr noundef %i.adp, i64 noundef 10) #9 ; 11 uses
  %i.adr = getelementptr i8, ptr %.0548, i64 8
  %i.ads = load i32, ptr %i.adr, align 4
  %i.adt = shl i32 %i.ads, 12                     ; 2 uses
  %i.adu = getelementptr i8, ptr %.0548, i64 20
  %i.adv = load i32, ptr %i.adu, align 4          ; 2 uses
  %i.adw = lshr i32 %i.adv, 8                     ; 2 uses
  %i.adx = or i32 %i.adw, %i.adt                  ; 2 uses
  %i.ady = lshr i32 %i.adt, 24
  %i.adz = trunc nuw i32 %i.ady to i8
  store i8 %i.adz, ptr %i.adq, align 1
  %i.aea = lshr i32 %i.adx, 16
  %i.aeb = trunc i32 %i.aea to i8
  %i.aec = getelementptr i8, ptr %i.adq, i64 1
  store i8 %i.aeb, ptr %i.aec, align 1
  %i.aed = lshr i32 %i.adx, 8
  %i.aee = trunc i32 %i.aed to i8
  %i.aef = getelementptr i8, ptr %i.adq, i64 2
  store i8 %i.aee, ptr %i.aef, align 1
  %i.aeg = trunc i32 %i.adw to i8
  %i.aeh = getelementptr i8, ptr %i.adq, i64 3
  store i8 %i.aeg, ptr %i.aeh, align 1
  %i.aei = getelementptr i8, ptr %i.adq, i64 4
  %i.aej = shl i32 %i.adv, 24
  %i.aek = getelementptr i8, ptr %.0548, i64 32
  %i.ael = load i32, ptr %i.aek, align 4
  %i.aem = shl i32 %i.ael, 4                      ; 2 uses
  %i.aen = or i32 %i.aem, %i.aej                  ; 2 uses
  %i.aeo = getelementptr i8, ptr %.0548, i64 44
  %i.aep = load i32, ptr %i.aeo, align 4          ; 3 uses
  %i.aeq = lshr i32 %i.aep, 16
  %i.aer = or i32 %i.aen, %i.aeq                  ; 2 uses
  %i.aes = lshr i32 %i.aen, 24
  %i.aet = trunc nuw i32 %i.aes to i8
  store i8 %i.aet, ptr %i.aei, align 1
  %i.aeu = lshr i32 %i.aem, 16
  %i.aev = trunc i32 %i.aeu to i8
  %i.aew = getelementptr i8, ptr %i.adq, i64 5
  store i8 %i.aev, ptr %i.aew, align 1
  %i.aex = lshr i32 %i.aer, 8
  %i.aey = trunc i32 %i.aex to i8
  %i.aez = getelementptr i8, ptr %i.adq, i64 6
  store i8 %i.aey, ptr %i.aez, align 1
  %i.afa = trunc i32 %i.aer to i8
  %i.afb = getelementptr i8, ptr %i.adq, i64 7
  store i8 %i.afa, ptr %i.afb, align 1
  %i.afc = getelementptr i8, ptr %i.adq, i64 8
  %i.afd = lshr i32 %i.aep, 8
  %i.afe = trunc i32 %i.afd to i8
  store i8 %i.afe, ptr %i.afc, align 1
  %i.aff = trunc i32 %i.aep to i8
  %i.afg = getelementptr i8, ptr %i.adq, i64 9
  store i8 %i.aff, ptr %i.afg, align 1
  %i.afh = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.adq, i32 noundef 10, i32 noundef 10) ; 4 uses
  %i.afi = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.afh, ptr noundef nonnull @.str.369) ; 0 uses
  %i.afj = load i32, ptr @ett_ubx_gal_inav_sar_rlm, align 4
  %i.afk = call ptr @proto_tree_add_subtree(ptr noundef %i.aaf, ptr noundef %i.afh, i32 noundef 0, i32 noundef 10, i32 noundef %i.afj, ptr noundef null, ptr noundef nonnull @.str.370) ; 2 uses
  %i.afl = load i32, ptr @hf_ubx_gal_inav_sar_beacon_id, align 4
  %i.afm = call ptr @proto_tree_add_item(ptr noundef %i.afk, i32 noundef %i.afl, ptr noundef %i.afh, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.afn = load i32, ptr @hf_ubx_gal_inav_sar_msg_code, align 4
  %i.afo = call ptr @proto_tree_add_item(ptr noundef %i.afk, i32 noundef %i.afn, ptr noundef %i.afh, i32 noundef 6, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread593

.thread593:                                       ; preds = %bb.be, %bb.ba, %bb.bd, %bb.bo, %bb.bp, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.bq

bb.bq:                                            ; preds = %.thread593, %.critedge
  %i.afp = load i32, ptr @hf_ubx_gal_inav_spare, align 4
  %i.afq = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.afp, ptr noundef %0, i32 noundef 26, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.d, %bb.bq, %bb.e
  %i.afr = load i32, ptr @hf_ubx_gal_inav_crc, align 4
  %i.afs = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.afr, ptr noundef %0, i32 noundef 26, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aft = load i32, ptr @hf_ubx_gal_inav_ssp, align 4
  %i.afu = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.aft, ptr noundef %0, i32 noundef 28, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.afv = load i32, ptr @hf_ubx_gal_inav_tail, align 4
  %i.afw = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.afv, ptr noundef %0, i32 noundef 30, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afx = load i32, ptr @hf_ubx_gal_inav_pad, align 4
  %i.afy = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.afx, ptr noundef %0, i32 noundef 31, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afz = load i32, ptr %i.d, align 4
  %i.aga = icmp eq i32 %i.afz, 0
  %i.agb = load i32, ptr %i.e, align 4
  %i.agc = icmp eq i32 %i.agb, 0
  %or.cond27 = select i1 %i.aga, i1 %i.agc, i1 false
  br i1 %or.cond27, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.agd = getelementptr i8, ptr %1, i64 416
  %i.age = load ptr, ptr %i.agd, align 8
  %i.agf = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.age, i64 noundef 16) #9 ; 17 uses
  %i.agg = getelementptr i8, ptr %i.agf, i64 14
  %i.agh = load i64, ptr %i.n, align 8            ; 2 uses
  %i.agi = lshr i64 %i.agh, 8
  %i.agj = trunc i64 %i.agi to i8
  store i8 %i.agj, ptr %i.agg, align 1
  %i.agk = trunc i64 %i.agh to i8
  %i.agl = getelementptr i8, ptr %i.agf, i64 15
  store i8 %i.agk, ptr %i.agl, align 1
  %i.agm = getelementptr i8, ptr %i.agf, i64 6
  %i.agn = load i64, ptr %i.m, align 8            ; 7 uses
  %i.ago = lshr i64 %i.agn, 48
  %i.agp = getelementptr i8, ptr %i.agf, i64 7
  %i.agq = lshr i64 %i.agn, 40
  %i.agr = trunc i64 %i.agq to i8
  %i.ags = getelementptr i8, ptr %i.agf, i64 8
  store i8 %i.agr, ptr %i.ags, align 1
  %i.agt = lshr i64 %i.agn, 32
  %i.agu = trunc i64 %i.agt to i8
  %i.agv = getelementptr i8, ptr %i.agf, i64 9
  store i8 %i.agu, ptr %i.agv, align 1
  %i.agw = lshr i64 %i.agn, 24
  %i.agx = trunc i64 %i.agw to i8
  %i.agy = getelementptr i8, ptr %i.agf, i64 10
  store i8 %i.agx, ptr %i.agy, align 1
  %i.agz = lshr i64 %i.agn, 16
  %i.aha = trunc i64 %i.agz to i8
  %i.ahb = getelementptr i8, ptr %i.agf, i64 11
  store i8 %i.aha, ptr %i.ahb, align 1
  %i.ahc = lshr i64 %i.agn, 8
  %i.ahd = trunc i64 %i.ahc to i8
  %i.ahe = getelementptr i8, ptr %i.agf, i64 12
  store i8 %i.ahd, ptr %i.ahe, align 1
  %i.ahf = trunc i64 %i.agn to i8
  %i.ahg = getelementptr i8, ptr %i.agf, i64 13
  store i8 %i.ahf, ptr %i.ahg, align 1
  %i.ahh = load i32, ptr %i.c, align 4
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = shl i64 %i.ahi, 58
  %i.ahk = load i64, ptr %i.l, align 8
  %i.ahl = shl i64 %i.ahk, 2                      ; 6 uses
  %i.ahm = or i64 %i.ahj, %i.ahl                  ; 2 uses
  %i.ahn = or i64 %i.ahm, %i.ago                  ; 2 uses
  %i.aho = lshr i64 %i.ahm, 56
  %i.ahp = trunc nuw i64 %i.aho to i8
  store i8 %i.ahp, ptr %i.agf, align 1
  %i.ahq = lshr i64 %i.ahl, 48
  %i.ahr = trunc i64 %i.ahq to i8
  %i.ahs = getelementptr i8, ptr %i.agf, i64 1
  store i8 %i.ahr, ptr %i.ahs, align 1
  %i.aht = lshr i64 %i.ahl, 40
  %i.ahu = trunc i64 %i.aht to i8
  %i.ahv = getelementptr i8, ptr %i.agf, i64 2
  store i8 %i.ahu, ptr %i.ahv, align 1
  %i.ahw = lshr i64 %i.ahl, 32
  %i.ahx = trunc i64 %i.ahw to i8
  %i.ahy = getelementptr i8, ptr %i.agf, i64 3
  store i8 %i.ahx, ptr %i.ahy, align 1
  %i.ahz = lshr i64 %i.ahl, 24
  %i.aia = trunc i64 %i.ahz to i8
  %i.aib = getelementptr i8, ptr %i.agf, i64 4
  store i8 %i.aia, ptr %i.aib, align 1
  %i.aic = lshr i64 %i.ahl, 16
  %i.aid = trunc i64 %i.aic to i8
  %i.aie = getelementptr i8, ptr %i.agf, i64 5
  store i8 %i.aid, ptr %i.aie, align 1
  %i.aif = lshr i64 %i.ahn, 8
  %i.aig = trunc i64 %i.aif to i8
  store i8 %i.aig, ptr %i.agm, align 1
  %i.aih = trunc i64 %i.ahn to i8
  store i8 %i.aih, ptr %i.agp, align 1
  %i.aii = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.agf, i32 noundef 16, i32 noundef 16) ; 3 uses
  %i.aij = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.aii, ptr noundef nonnull @.str.279) ; 0 uses
  %i.aik = load ptr, ptr @ubx_gal_inav_word_dissector_table, align 8
  %i.ail = load i32, ptr %i.c, align 4
  %i.aim = call i32 @dissector_try_uint(ptr noundef %i.aik, i32 noundef %i.ail, ptr noundef %i.aii, ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.aim, 0
  br i1 %.not, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ain = call i32 @call_data_dissector(ptr noundef %i.aii, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.br
  %i.aio = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.aio
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ubx_gal_inav() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.b = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_ubx_gal_inav, i32 noundef %i.a)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.280, i32 noundef 2, ptr noundef %i.b)
  %i.c = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.d = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_ubx_gal_inav_word0, i32 noundef %i.c)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.278, i32 noundef 0, ptr noundef %i.d)
  %i.e = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.f = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_ubx_gal_inav_word1, i32 noundef %i.e)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.278, i32 noundef 1, ptr noundef %i.f)
  %i.g = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.h = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_ubx_gal_inav_word2, i32 noundef %i.g)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.278, i32 noundef 2, ptr noundef %i.h)
  %i.i = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.j = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_ubx_gal_inav_word3, i32 noundef %i.i)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.278, i32 noundef 3, ptr noundef %i.j)
  %i.k = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.l = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_ubx_gal_inav_word4, i32 noundef %i.k)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.278, i32 noundef 4, ptr noundef %i.l)
  %i.m = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.n = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_ubx_gal_inav_word6, i32 noundef %i.m)
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.278, i32 noundef 6, ptr noundef %i.n)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @create_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_gal_inav_word0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.184)
  %i.c = load i32, ptr @hf_ubx_gal_inav_word0, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.e = load i32, ptr @ett_ubx_gal_inav_word0, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 5 uses
  %i.g = load i32, ptr @hf_ubx_gal_inav_word_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ubx_gal_inav_word0_time, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ubx_gal_inav_word0_spare, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 1, i32 noundef 11, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ubx_gal_inav_word0_wn, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_ubx_gal_inav_word0_tow, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.q = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.q
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_gal_inav_word1(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.193)
  %i.c = load i32, ptr @hf_ubx_gal_inav_word1, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.e = load i32, ptr @ett_ubx_gal_inav_word1, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 7 uses
  %i.g = load i32, ptr @hf_ubx_gal_inav_word_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ubx_gal_inav_word1_iodnav, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ubx_gal_inav_word1_t0e, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ubx_gal_inav_word1_m0, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %0, i32 noundef 3, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_ubx_gal_inav_word1_e, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 7, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_ubx_gal_inav_word1_sqrta, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.q, ptr noundef %0, i32 noundef 8, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_ubx_gal_inav_word1_reserved, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.s, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.u
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_gal_inav_word2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.206)
  %i.c = load i32, ptr @hf_ubx_gal_inav_word2, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.e = load i32, ptr @ett_ubx_gal_inav_word2, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 7 uses
  %i.g = load i32, ptr @hf_ubx_gal_inav_word_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ubx_gal_inav_word2_iodnav, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ubx_gal_inav_word2_omega0, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ubx_gal_inav_word2_i0, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %0, i32 noundef 6, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_ubx_gal_inav_word2_omega, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 10, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_ubx_gal_inav_word2_incl_angle_rate, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.q, ptr noundef %0, i32 noundef 14, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_ubx_gal_inav_word2_reserved, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.s, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.u
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_gal_inav_word3(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.218)
  %i.c = load i32, ptr @hf_ubx_gal_inav_word3, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.e = load i32, ptr @ett_ubx_gal_inav_word3, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 9 uses
  %i.g = load i32, ptr @hf_ubx_gal_inav_word_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ubx_gal_inav_word3_iodnav, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ubx_gal_inav_word3_omega_rate, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ubx_gal_inav_word3_delta_n, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_ubx_gal_inav_word3_c_uc, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_ubx_gal_inav_word3_c_us, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.q, ptr noundef %0, i32 noundef 9, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_ubx_gal_inav_word3_c_rc, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.s, ptr noundef %0, i32 noundef 11, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_ubx_gal_inav_word3_c_rs, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.u, ptr noundef %0, i32 noundef 13, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_ubx_gal_inav_word3_sisa_e1_e5b, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.y
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_gal_inav_word4(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.235)
  %i.c = load i32, ptr @hf_ubx_gal_inav_word4, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.e = load i32, ptr @ett_ubx_gal_inav_word4, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 10 uses
  %i.g = load i32, ptr @hf_ubx_gal_inav_word_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ubx_gal_inav_word4_iodnav, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ubx_gal_inav_word4_svid, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ubx_gal_inav_word4_c_ic, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_ubx_gal_inav_word4_c_is, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_ubx_gal_inav_word4_t_0c, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.q, ptr noundef %0, i32 noundef 6, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_ubx_gal_inav_word4_a_f0, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.s, ptr noundef %0, i32 noundef 8, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_ubx_gal_inav_word4_a_f1, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.u, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_ubx_gal_inav_word4_a_f2, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_ubx_gal_inav_word4_spare, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.y, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.aa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_gal_inav_word6(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.253)
  %i.c = load i32, ptr @hf_ubx_gal_inav_word6, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.e = load i32, ptr @ett_ubx_gal_inav_word6, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 11 uses
  %i.g = load i32, ptr @hf_ubx_gal_inav_word_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ubx_gal_inav_word6_a0, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ubx_gal_inav_word6_a1, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ubx_gal_inav_word6_delta_t_ls, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_ubx_gal_inav_word6_t_0t, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_ubx_gal_inav_word6_wn_0t, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.q, ptr noundef %0, i32 noundef 9, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_ubx_gal_inav_word6_wn_lsf, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.s, ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_ubx_gal_inav_word6_dn, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.u, ptr noundef %0, i32 noundef 11, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_ubx_gal_inav_word6_delta_t_lsf, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_ubx_gal_inav_word6_tow, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.y, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_ubx_gal_inav_word6_spare, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.aa, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.ac
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation_full(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_new_full(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !"memcpy.inline"}
!7 = distinct !{!7, !6, !"memcpy.inline: argument 1"}
!8 = distinct !{!8, !6, !"memcpy.inline: argument 0"}
!9 = distinct !{!9, !15}
!10 = distinct !{!10, !15}
!11 = distinct !{!11, !15}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!8, !7}
!15 = !{!"llvm.loop.mustprogress"}
end_hunk_0
