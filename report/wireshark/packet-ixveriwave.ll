Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ixveriwave?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
begin_hunk_0_@p_get_proto_data

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_none_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_float(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_float_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare signext i8 @tvb_get_int8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 22, 41) i32 @decode_ht_sig(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 16, 35) %2, ptr nofree noundef captures(none) initializes((24, 28)) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.f = load i32, ptr @hf_radiotap_ht_mcsindex, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.f, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.h = load i32, ptr @hf_radiotap_ht_bw, align 4
  %i.i = call ptr @proto_tree_add_item_ret_uint(ptr noundef %0, i32 noundef %i.h, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.j = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %3, i64 12         ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = or i8 %i.l, 2
  store i8 %i.m, ptr %i.k, align 4
  %i.n = getelementptr i8, ptr %3, i64 16
  store i32 1, ptr %i.n, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = load i32, ptr @hf_radiotap_ht_length, align 4
  %i.p = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.o, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.q = add nuw nsw i32 %2, 3                    ; 9 uses
  %i.r = load i32, ptr @hf_radiotap_ht_smoothing, align 4
  %i.s = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.r, ptr noundef %1, i32 noundef %i.q, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.t = load i32, ptr @hf_radiotap_ht_notsounding, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.t, ptr noundef %1, i32 noundef %i.q, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.v = load i32, ptr @hf_radiotap_ht_aggregation, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.v, ptr noundef %1, i32 noundef %i.q, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.x = load i32, ptr @hf_radiotap_ht_stbc, align 4
  %i.y = call ptr @proto_tree_add_item_ret_uint(ptr noundef %0, i32 noundef %i.x, ptr noundef %1, i32 noundef %i.q, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.z = getelementptr i8, ptr %3, i64 12         ; 8 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = or i8 %i.aa, 32
  store i8 %i.ab, ptr %i.z, align 4
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = getelementptr i8, ptr %3, i64 20        ; 6 uses
  %i.ae = trunc i32 %i.ac to i8
  %i.af = load i8, ptr %i.ad, align 4
  %i.ag = shl i8 %i.ae, 3
  %i.ah = and i8 %i.ag, 24
  %i.ai = and i8 %i.af, -25
  %i.aj = or disjoint i8 %i.ah, %i.ai
  store i8 %i.aj, ptr %i.ad, align 4
  %i.ak = load i32, ptr @hf_radiotap_ht_feccoding, align 4
  %i.al = call ptr @proto_tree_add_item_ret_uint(ptr noundef %0, i32 noundef %i.ak, ptr noundef %1, i32 noundef %i.q, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.am = load i8, ptr %i.z, align 4
  %i.an = or i8 %i.am, 16
  store i8 %i.an, ptr %i.z, align 4
  %i.ao = load i32, ptr %i.c, align 4
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = load i8, ptr %i.ad, align 4
  %i.ar = shl i8 %i.ap, 2
  %i.as = and i8 %i.ar, 4
  %i.at = and i8 %i.aq, -5
  %i.au = or disjoint i8 %i.as, %i.at
  store i8 %i.au, ptr %i.ad, align 4
  %i.av = load i32, ptr @hf_radiotap_ht_short_gi, align 4
  %i.aw = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %0, i32 noundef %i.av, ptr noundef %1, i32 noundef %i.q, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.ax = load i8, ptr %i.z, align 4
  %i.ay = or i8 %i.ax, 4
  store i8 %i.ay, ptr %i.z, align 4
  %i.az = load i8, ptr %i.d, align 1, !range !6, !noundef !7
  %i.ba = load i8, ptr %i.ad, align 4
  %i.bb = and i8 %i.ba, -2
  %i.bc = or disjoint i8 %i.bb, %i.az
  store i8 %i.bc, ptr %i.ad, align 4
  %i.bd = load i32, ptr @hf_radiotap_ht_ness, align 4
  %i.be = call ptr @proto_tree_add_item_ret_uint(ptr noundef %0, i32 noundef %i.bd, ptr noundef %1, i32 noundef %i.q, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.e) ; 0 uses
  %i.bf = load i8, ptr %i.z, align 4
  %i.bg = or i8 %i.bf, 64
  store i8 %i.bg, ptr %i.z, align 4
  %i.bh = load i32, ptr %i.e, align 4
  %i.bi = getelementptr i8, ptr %3, i64 24
  store i32 %i.bh, ptr %i.bi, align 4
  %i.bj = load i32, ptr @hf_radiotap_ht_crc, align 4
  %i.bk = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bj, ptr noundef %1, i32 noundef %i.q, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.bl = load i32, ptr @hf_radiotap_ht_tail, align 4
  %i.bm = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.bl, ptr noundef %1, i32 noundef %i.q, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.bn = add nuw nsw i32 %2, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.bn
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 29, 45) i32 @decode_vht_sig(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 19, 35) %2, ptr nofree noundef captures(none) initializes((24, 25)) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.j = load i32, ptr @hf_radiotap_vht_bw, align 4
  %i.k = call ptr @proto_tree_add_item_ret_uint(ptr noundef %0, i32 noundef %i.j, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.l = load i32, ptr %i.a, align 4              ; 2 uses
  %i.m = icmp ult i32 %i.l, 3
  br i1 %i.m, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %switch.cast = trunc nuw i32 %i.l to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 262400, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %i.n = getelementptr i8, ptr %3, i64 12         ; 2 uses
  %i.o = load i16, ptr %i.n, align 4
  %i.p = or i16 %i.o, 64
  store i16 %i.p, ptr %i.n, align 4
  %i.q = getelementptr i8, ptr %3, i64 14
  store i8 %switch.masked, ptr %i.q, align 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %i.r = load i32, ptr @hf_radiotap_vht_stbc, align 4
  %i.s = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %0, i32 noundef %i.r, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.t = getelementptr i8, ptr %3, i64 12         ; 16 uses
  %i.u = load i16, ptr %i.t, align 4
  %i.v = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.w = zext nneg i8 %i.v to i16
  %i.x = shl nuw nsw i16 %i.w, 10
  %i.y = and i16 %i.u, -1026
  %i.z = or disjoint i16 %i.y, 1
  %i.aa = or disjoint i16 %i.x, %i.z
  store i16 %i.aa, ptr %i.t, align 4
  %i.ab = load i32, ptr @hf_radiotap_vht_group_id, align 4
  %i.ac = call ptr @proto_tree_add_item_ret_uint(ptr noundef %0, i32 noundef %i.ab, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.ad = load i16, ptr %i.t, align 4
  %i.ae = or i16 %i.ad, 256
  store i16 %i.ae, ptr %i.t, align 4
  %i.af = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr i8, ptr %3, i64 24
  store i8 %i.ag, ptr %i.ah, align 4
  switch i32 %i.af, label %bb.d [
    i32 63, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.ai = load i32, ptr @hf_radiotap_vht_su_nsts, align 4
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ai, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.ak = load i32, ptr @hf_radiotap_vht_su_partial_aid, align 4
  %i.al = call ptr @proto_tree_add_item_ret_uint(ptr noundef %0, i32 noundef %i.ak, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.am = load i16, ptr %i.t, align 4
  %i.an = or i16 %i.am, 512
  store i16 %i.an, ptr %i.t, align 4
  %i.ao = load i32, ptr %i.d, align 4
  %i.ap = trunc i32 %i.ao to i16
  %i.aq = getelementptr i8, ptr %3, i64 26
  store i16 %i.ap, ptr %i.aq, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ar = load i32, ptr @hf_radiotap_vht_u0_nsts, align 4
  %i.as = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ar, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.at = load i32, ptr @hf_radiotap_vht_u1_nsts, align 4
  %i.au = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.at, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.av = load i32, ptr @hf_radiotap_vht_u2_nsts, align 4
  %i.aw = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.av, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.ax = load i32, ptr @hf_radiotap_vht_u3_nsts, align 4
  %i.ay = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ax, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.az = load i32, ptr @hf_radiotap_vht_txop_ps_not_allowed, align 4
  %i.ba = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %0, i32 noundef %i.az, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.e) ; 0 uses
  %i.bb = load i16, ptr %i.t, align 4
  %i.bc = load i8, ptr %i.e, align 1, !range !6, !noundef !7
  %i.bd = zext nneg i8 %i.bc to i16
  %i.be = shl nuw nsw i16 %i.bd, 11
  %i.bf = and i16 %i.bb, -2051
  %i.bg = or disjoint i16 %i.bf, 2
  %i.bh = or disjoint i16 %i.be, %i.bg
  store i16 %i.bh, ptr %i.t, align 4
  %i.bi = add nuw nsw i32 %2, 3                   ; 11 uses
  %i.bj = load i32, ptr @hf_radiotap_vht_short_gi, align 4
  %i.bk = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %0, i32 noundef %i.bj, ptr noundef %1, i32 noundef %i.bi, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.f) ; 0 uses
  %i.bl = load i16, ptr %i.t, align 4
  %i.bm = load i8, ptr %i.f, align 1, !range !6, !noundef !7
  %i.bn = zext nneg i8 %i.bm to i16
  %i.bo = shl nuw nsw i16 %i.bn, 12
  %i.bp = and i16 %i.bl, -4101
  %i.bq = or disjoint i16 %i.bp, 4
  %i.br = or disjoint i16 %i.bo, %i.bq
  store i16 %i.br, ptr %i.t, align 4
  %i.bs = load i32, ptr @hf_radiotap_vht_short_gi_nsym_disambig, align 4
  %i.bt = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %0, i32 noundef %i.bs, ptr noundef %1, i32 noundef %i.bi, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.g) ; 0 uses
  %i.bu = load i16, ptr %i.t, align 4
  %i.bv = load i8, ptr %i.g, align 1, !range !6, !noundef !7
  %i.bw = zext nneg i8 %i.bv to i16
  %i.bx = shl nuw nsw i16 %i.bw, 13
  %i.by = and i16 %i.bu, -8201
  %i.bz = or disjoint i16 %i.by, 8
  %i.ca = or disjoint i16 %i.bx, %i.bz
  store i16 %i.ca, ptr %i.t, align 4
  %i.cb = load i32, ptr %i.c, align 4             ; 2 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.cb, 63
  %switch.selectcmp.case2 = icmp eq i32 %i.cb, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %hf_radiotap_vht_su_coding_type.val = load i32, ptr @hf_radiotap_vht_su_coding_type, align 4
  %hf_radiotap_vht_u0_coding_type.val = load i32, ptr @hf_radiotap_vht_u0_coding_type, align 4
  %i.cc = select i1 %switch.selectcmp, i32 %hf_radiotap_vht_su_coding_type.val, i32 %hf_radiotap_vht_u0_coding_type.val
  %i.cd = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.cc, ptr noundef %1, i32 noundef %i.bi, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.ce = load i32, ptr @hf_radiotap_vht_ldpc_ofdmsymbol, align 4
  %i.cf = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %0, i32 noundef %i.ce, ptr noundef %1, i32 noundef %i.bi, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.h) ; 0 uses
  %i.cg = load i16, ptr %i.t, align 4
  %i.ch = load i8, ptr %i.h, align 1, !range !6, !noundef !7
  %i.ci = zext nneg i8 %i.ch to i16
  %i.cj = shl nuw nsw i16 %i.ci, 14
  %i.ck = and i16 %i.cg, -16401
  %i.cl = or disjoint i16 %i.ck, 16
  %i.cm = or disjoint i16 %i.cj, %i.cl
  store i16 %i.cm, ptr %i.t, align 4
  %i.cn = load i32, ptr %i.c, align 4
  switch i32 %i.cn, label %bb.g [
    i32 63, label %bb.f
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.co = load i32, ptr @hf_radiotap_vht_su_mcs, align 4
  %i.cp = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.co, ptr noundef %1, i32 noundef %i.bi, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.cq = load i32, ptr @hf_radiotap_vht_beamformed, align 4
  %i.cr = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %0, i32 noundef %i.cq, ptr noundef %1, i32 noundef %i.bi, i32 noundef 3, i32 noundef -2147483648, ptr noundef nonnull %i.i) ; 0 uses
  %i.cs = load i16, ptr %i.t, align 4
  %i.ct = load i8, ptr %i.i, align 1, !range !6, !noundef !7
  %i.cu = zext nneg i8 %i.ct to i16
  %i.cv = shl nuw i16 %i.cu, 15
  %i.cw = and i16 %i.cs, 32735
  %i.cx = or disjoint i16 %i.cw, 32
  %i.cy = or disjoint i16 %i.cv, %i.cx
  store i16 %i.cy, ptr %i.t, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cz = load i32, ptr @hf_radiotap_vht_u1_coding_type, align 4
  %i.da = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.cz, ptr noundef %1, i32 noundef %i.bi, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.db = load i32, ptr @hf_radiotap_vht_u2_coding_type, align 4
  %i.dc = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.db, ptr noundef %1, i32 noundef %i.bi, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.dd = load i32, ptr @hf_radiotap_vht_u3_coding_type, align 4
  %i.de = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.dd, ptr noundef %1, i32 noundef %i.bi, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.df = load i32, ptr @hf_radiotap_vht_crc, align 4
  %i.dg = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.df, ptr noundef %1, i32 noundef %i.bi, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.dh = load i32, ptr @hf_radiotap_vht_tail, align 4
  %i.di = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.dh, ptr noundef %1, i32 noundef %i.bi, i32 noundef 3, i32 noundef -2147483648) ; 0 uses
  %i.dj = add nuw nsw i32 %2, 6                   ; 4 uses
  %i.dk = load i32, ptr %i.c, align 4
  %i.dl = load i32, ptr %i.a, align 4             ; 3 uses
  switch i32 %i.dk, label %bb.j [
    i32 63, label %bb.i
    i32 0, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.dm = icmp ult i32 %i.dl, 4
  br i1 %i.dm, label %switch.lookup133, label %bb.n

bb.j:                                             ; preds = %bb.h
  switch i32 %i.dl, label %bb.n [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.dn = load i32, ptr @hf_radiotap_vht_mu_sig_b_length_20_mhz, align 4
  %i.do = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.dn, ptr noundef %1, i32 noundef %i.dj, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.sink.split131

bb.l:                                             ; preds = %bb.j
  %i.dp = load i32, ptr @hf_radiotap_vht_mu_sig_b_length_40_mhz, align 4
  %i.dq = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.dp, ptr noundef %1, i32 noundef %i.dj, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.sink.split131

bb.m:                                             ; preds = %bb.j, %bb.j
  %i.dr = load i32, ptr @hf_radiotap_vht_mu_sig_b_length_80_160_mhz, align 4
  %i.ds = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.dr, ptr noundef %1, i32 noundef %i.dj, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %.sink.split131

switch.lookup133:                                 ; preds = %bb.i
  %i.dt = zext nneg i32 %i.dl to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.decode_vht_sig, i64 %i.dt
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.sink.split131

.sink.split131:                                   ; preds = %switch.lookup133, %bb.m, %bb.l, %bb.k
  %hf_radiotap_vht_mu_mcs_20_mhz.sink = phi ptr [ @hf_radiotap_vht_mu_mcs_20_mhz, %bb.k ], [ @hf_radiotap_vht_mu_mcs_40_mhz, %bb.l ], [ @hf_radiotap_vht_mu_mcs_80_160_mhz, %bb.m ], [ %switch.load, %switch.lookup133 ]
  %i.du = load i32, ptr %hf_radiotap_vht_mu_mcs_20_mhz.sink, align 4
  %i.dv = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.du, ptr noundef %1, i32 noundef %i.dj, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %.sink.split131, %bb.j
  %i.dw = add nuw nsw i32 %2, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.dw
}

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_with_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
end_hunk_0
