Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-h265?download=true
inline.NumInlined: 27
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dissect_h265:bb.a
  br i1 %.not.i16.i, label %dissect_h265_sei_rbsp.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = sub nuw nsw i32 8, %i.dc
  %i.de = load i32, ptr @hf_h265_rbsp_trailing_bits, align 4
  %i.df = tail call ptr @proto_tree_add_bits_item(ptr noundef %i.bl, i32 noundef %i.de, ptr noundef %i.aq, i32 noundef %i.db, i32 noundef %i.dd, i32 noundef 0) ; 0 uses
  br label %dissect_h265_sei_rbsp.exit

dissect_h265_sei_rbsp.exit:                       ; preds = %bb.t, %bb.s, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.dg = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %bb.e, %dissect_h265_sei_rbsp.exit
  %.0101 = phi i32 [ %i.dg, %dissect_h265_sei_rbsp.exit ], [ 2, %bb.e ], [ 2, %bb.d ]
  ret i32 %.0101
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_with_description(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_h265_bytestream(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.c = icmp ult i32 %i.b, 4
  br i1 %i.c, label %.loopexit39, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03341 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.a ] ; 4 uses
  %i.d = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %.03341, i32 noundef 0) ; 3 uses
  %.mask = and i32 %i.d, -256
  %i.e = icmp eq i32 %.mask, 256
  %i.f = icmp eq i32 %i.d, 1
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.loopexit39

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %.03341, 2
  %i.h = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.i = icmp ult i32 %i.h, 4
  br i1 %i.i, label %.loopexit39, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @col_set_str(ptr noundef %i.k, i32 noundef 35, ptr noundef @.str.629)
  %i.l = load ptr, ptr %i.j, align 8
  tail call void @col_clear(ptr noundef %i.l, i32 noundef 25)
  %i.m = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.03341)
  %.not3644 = icmp eq i32 %i.m, 0
  br i1 %.not3644, label %._crit_edge, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.d, %.loopexit
  %.145 = phi i32 [ %i.ab, %.loopexit ], [ %.03341, %bb.d ] ; 2 uses
  %i.n = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %.145, i32 noundef 0)
  %.mask38 = and i32 %i.n, -256
  %.not37 = icmp ne i32 %.mask38, 256
  %i.o = zext i1 %.not37 to i32
  %spec.select = add i32 %.145, 3
  %i.p = add i32 %spec.select, %i.o               ; 6 uses
  %i.q = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.p) ; 2 uses
  store i32 %i.p, ptr %i.a, align 4
  %i.r = call zeroext i1 @tvb_find_uint16_remaining(ptr noundef %0, i32 noundef %i.p, i16 noundef zeroext 0, ptr noundef nonnull %i.a)
  br i1 %i.r, label %.lr.ph43, label %.loopexit

.lr.ph43:                                         ; preds = %.lr.ph46, %bb.f
  %i.s = load i32, ptr %i.a, align 4
  %i.t = add i32 %i.s, 1
  %i.u = call zeroext i1 @tvb_find_uint16_length(ptr noundef %0, i32 noundef %i.t, i32 noundef 3, i16 noundef zeroext 1, ptr noundef null)
  %i.v = load i32, ptr %i.a, align 4              ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph43
  %i.w = sub i32 %i.v, %i.p
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph43
  %i.x = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.x, ptr %i.a, align 4
  %i.y = call zeroext i1 @tvb_find_uint16_remaining(ptr noundef %0, i32 noundef %i.x, i16 noundef zeroext 0, ptr noundef nonnull %i.a)
  br i1 %i.y, label %.lr.ph43, label %.loopexit, !llvm.loop !34

.loopexit:                                        ; preds = %bb.f, %.lr.ph46, %bb.e
  %.0 = phi i32 [ %i.w, %bb.e ], [ %i.q, %.lr.ph46 ], [ %i.q, %bb.f ] ; 2 uses
  %i.z = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.p, i32 noundef %.0)
  %i.aa = call i32 @dissect_h265(ptr noundef %i.z, ptr noundef %1, ptr noundef %2, ptr poison) ; 0 uses
  %i.ab = add i32 %.0, %i.p                       ; 2 uses
  %i.ac = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ab)
  %.not36 = icmp eq i32 %i.ac, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph46, !llvm.loop !35

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %i.ad = call i32 @tvb_reported_length(ptr noundef %0)
  br label %.loopexit39

.loopexit39:                                      ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge
  %.034 = phi i32 [ %i.ad, %._crit_edge ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.034
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_h265() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @h265_handle, align 8
  tail call void @dissector_add_string(ptr noundef @.str.634, ptr noundef @.str.635, ptr noundef %i.a)
  %i.b = load ptr, ptr @h265_handle, align 8
  tail call void @dissector_add_uint_range_with_preference(ptr noundef @.str.636, ptr noundef @.str.637, ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_range_with_preference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntoh24(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_bits8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 536870912) i32 @dissect_h265_profile_tier_level(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 536870912) %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 12 uses
  %i.e = alloca [32 x i8], align 16               ; 5 uses
  %i.f = alloca [32 x i8], align 16               ; 4 uses
  %i.g = alloca [32 x [32 x i8]], align 16        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i8 0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.g, i8 0, i64 1024, i1 false)
  %i.h = load i32, ptr @hf_h265_general_profile_space, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.h, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_h265_general_tier_flag, align 4
  %i.k = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %0, i32 noundef %i.j, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.l = load i32, ptr @hf_h265_general_profile_idc, align 4
  %i.m = call ptr @proto_tree_add_item_ret_uint(ptr noundef %0, i32 noundef %i.l, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.n = add nuw nsw i32 %2, 1                    ; 2 uses
  %i.o = load i32, ptr @hf_h265_general_profile_compatibility_flags, align 4
  %i.p = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.o, ptr noundef %1, i32 noundef %i.n, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.q = shl i32 %i.n, 3                          ; 21 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.r = add i32 %i.q, 32
  %i.s = load i32, ptr @hf_h265_general_progressive_source_flag, align 4
  %i.t = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.s, ptr noundef %1, i32 noundef %i.r, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = add i32 %i.q, 33
  %i.v = load i32, ptr @hf_h265_general_interlaced_source_flag, align 4
  %i.w = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.v, ptr noundef %1, i32 noundef %i.u, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = add i32 %i.q, 34
  %i.y = load i32, ptr @hf_h265_general_non_packed_constraint_flag, align 4
  %i.z = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.y, ptr noundef %1, i32 noundef %i.x, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = add i32 %i.q, 35
  %i.ab = load i32, ptr @hf_h265_general_frame_only_constraint_flag, align 4
  %i.ac = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.ab, ptr noundef %1, i32 noundef %i.aa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %i.q, 36                        ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.ae, align 4, !range !9
  %4 = trunc nuw i8 %i.af to i1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.ah = load i32, ptr %i.a, align 4             ; 4 uses
  %5 = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> zeroinitializer
  %.fr7 = freeze <4 x i32> %6
  %i.ai = and <4 x i32> %.fr7, <i32 -2, i32 -1, i32 -1, i32 -1>
  %i.aj = icmp eq <4 x i32> %i.ai, <i32 4, i32 6, i32 7, i32 8>
  %i.ak = load <4 x i8>, ptr %i.ag, align 1
  %.fr = freeze <4 x i8> %i.ak
  %i.al = trunc <4 x i8> %.fr to <4 x i1>         ; 3 uses
  %7 = icmp eq i32 %i.ah, 9
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.an = load i8, ptr %i.am, align 1, !range !9
  %8 = trunc nuw i8 %i.an to i1                   ; 3 uses
  %9 = icmp eq i32 %i.ah, 10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.ap = load i8, ptr %i.ao, align 2, !range !9
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %rdx.op = or <4 x i1> %i.aj, %i.al
  %i.ar = bitcast <4 x i1> %rdx.op to i4
  %i.as = icmp ne i4 %i.ar, 0
  %op.rdx = select i1 %i.as, i1 true, i1 %4
  %10 = select i1 %op.rdx, i1 true, i1 %7
  %op.rdx4 = select i1 %10, i1 true, i1 %8
  %11 = select i1 %op.rdx4, i1 true, i1 %9
  %op.rdx5 = select i1 %11, i1 true, i1 %i.aq
  br i1 %op.rdx5, label %bb.d, label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = add i32 %i.q, %i.at
  %i.av = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.au, i32 noundef 1)
  %i.aw = icmp ne i8 %i.av, 0
  %i.ax = getelementptr i8, ptr %i.d, i64 %indvars.iv
  %i.ay = zext i1 %i.aw to i8
  store i8 %i.ay, ptr %i.ax, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !36

bb.d:                                             ; preds = %bb.b
  %i.az = load i32, ptr @hf_h265_general_max_12bit_constraint_flag, align 4
  %i.ba = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.az, ptr noundef %1, i32 noundef %i.ad, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bb = add i32 %i.q, 37
  %i.bc = load i32, ptr @hf_h265_general_max_10bit_constraint_flag, align 4
  %i.bd = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.bc, ptr noundef %1, i32 noundef %i.bb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.be = add i32 %i.q, 38
  %i.bf = load i32, ptr @hf_h265_general_max_8bit_constraint_flag, align 4
  %i.bg = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.bf, ptr noundef %1, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = add i32 %i.q, 39
  %i.bi = load i32, ptr @hf_h265_general_max_422chroma_constraint_flag, align 4
  %i.bj = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.bi, ptr noundef %1, i32 noundef %i.bh, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bk = add i32 %i.q, 40
  %i.bl = load i32, ptr @hf_h265_general_max_420chroma_constraint_flag, align 4
  %i.bm = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.bl, ptr noundef %1, i32 noundef %i.bk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bn = add i32 %i.q, 41
  %i.bo = load i32, ptr @hf_h265_general_max_monochrome_constraint_flag, align 4
  %i.bp = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.bo, ptr noundef %1, i32 noundef %i.bn, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bq = add i32 %i.q, 42
  %i.br = load i32, ptr @hf_h265_general_intra_constraint_flag, align 4
  %i.bs = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.br, ptr noundef %1, i32 noundef %i.bq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bt = add i32 %i.q, 43
  %i.bu = load i32, ptr @hf_h265_general_one_picture_only_constraint_flag, align 4
  %i.bv = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.bu, ptr noundef %1, i32 noundef %i.bt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bw = add i32 %i.q, 44
  %i.bx = load i32, ptr @hf_h265_general_lower_bit_rate_constraint_flag, align 4
  %i.by = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.bx, ptr noundef %1, i32 noundef %i.bw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bz = add i32 %i.q, 45                        ; 2 uses
  %i.ca = load i32, ptr %i.a, align 4             ; 3 uses
  %i.cb = icmp eq i32 %i.ca, 5
  %i.cc = extractelement <4 x i1> %i.al, i64 0
  %or.cond35 = or i1 %i.cb, %i.cc
  %12 = icmp eq i32 %i.ca, 9
  %or.cond37 = or i1 %12, %or.cond35
  %or.cond40 = select i1 %or.cond37, i1 true, i1 %8
  %13 = icmp eq i32 %i.ca, 10
  %or.cond42 = or i1 %13, %or.cond40
  %or.cond45 = select i1 %or.cond42, i1 true, i1 %i.aq
  br i1 %or.cond45, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cd = load i32, ptr @hf_h265_general_max_14bit_constraint_flag, align 4
  %i.ce = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.cd, ptr noundef %1, i32 noundef %i.bz, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cf = add i32 %i.q, 46
  %i.cg = load i32, ptr @hf_h265_general_reserved_zero_33bits, align 4
  %i.ch = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.cg, ptr noundef %1, i32 noundef %i.cf, i32 noundef 33, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ci = load i32, ptr @hf_h265_general_reserved_zero_34bits, align 4
  %i.cj = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.ci, ptr noundef %1, i32 noundef %i.bz, i32 noundef 34, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.ck = icmp eq i32 %i.ah, 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.cm = load i8, ptr %i.cl, align 2, !range !9
  %i.cn = trunc nuw i8 %i.cm to i1
  %or.cond48 = select i1 %i.ck, i1 true, i1 %i.cn
  br i1 %or.cond48, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = load i32, ptr @hf_h265_general_reserved_zero_7bits, align 4
  %i.cp = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.co, ptr noundef %1, i32 noundef %i.ad, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.cq = add i32 %i.q, 43
  %i.cr = load i32, ptr @hf_h265_general_one_picture_only_constraint_flag, align 4
  %i.cs = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.cr, ptr noundef %1, i32 noundef %i.cq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ct = add i32 %i.q, 44
  %i.cu = load i32, ptr @hf_h265_general_reserved_zero_35bits, align 4
  %i.cv = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.cu, ptr noundef %1, i32 noundef %i.ct, i32 noundef 35, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cw = load i32, ptr @hf_h265_general_reserved_zero_43bits, align 4
  %i.cx = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.cw, ptr noundef %1, i32 noundef %i.ad, i32 noundef 43, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.f
  %.0358 = add i32 %i.q, 79
  %i.cy = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cz = add i32 %i.cy, -1
  %or.cond50 = icmp ult i32 %i.cz, 5
  %i.da = icmp eq i32 %i.cy, 9
  %or.cond52 = or i1 %i.da, %or.cond50
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !range !9
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond55 = select i1 %or.cond52, i1 true, i1 %i.dd
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.df = load i8, ptr %i.de, align 2, !range !9
  %i.dg = trunc nuw i8 %i.df to i1
  %or.cond58 = select i1 %or.cond55, i1 true, i1 %i.dg
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.di = load i8, ptr %i.dh, align 1, !range !9
  %14 = trunc nuw i8 %i.di to i1
  %or.cond61 = select i1 %or.cond58, i1 true, i1 %14
  %or.cond64 = select i1 %or.cond61, i1 true, i1 %4
  %i.dj = extractelement <4 x i1> %i.al, i64 0
  %or.cond67 = or i1 %or.cond64, %i.dj
  %or.cond70 = select i1 %or.cond67, i1 true, i1 %8
  %hf_h265_general_inbld_flag.val = load i32, ptr @hf_h265_general_inbld_flag, align 4
  %hf_h265_general_reserved_zero_bit.val = load i32, ptr @hf_h265_general_reserved_zero_bit, align 4
  %i.dk = select i1 %or.cond70, i32 %hf_h265_general_inbld_flag.val, i32 %hf_h265_general_reserved_zero_bit.val
  %i.dl = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.dk, ptr noundef %1, i32 noundef %.0358, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dm = add i32 %i.q, 80
  %i.dn = load i32, ptr @hf_h265_general_level_idc, align 4
  %i.do = lshr exact i32 %i.dm, 3
  %i.dp = call ptr @proto_tree_add_item_ret_uint(ptr noundef %0, i32 noundef %i.dn, ptr noundef %1, i32 noundef %i.do, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b)
  %i.dq = load i8, ptr %i.c, align 1, !range !9, !noundef !10
  %i.dr = trunc nuw i8 %i.dq to i1
  %h265_level_main_tier_bitrate_values.sink = select i1 %i.dr, ptr @h265_level_high_tier_bitrate_values, ptr @h265_level_main_tier_bitrate_values
  %i.ds = load i32, ptr %i.b, align 4             ; 2 uses
  %i.dt = uitofp i32 %i.ds to double
  %i.du = fdiv double %i.dt, 3.000000e+01
  %i.dv = udiv i32 %i.ds, 3
  %i.dw = call ptr @val_to_str_const(i32 noundef %i.dv, ptr noundef %h265_level_main_tier_bitrate_values.sink, ptr noundef @.str.642)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.dp, ptr noundef @.str.641, double noundef %i.du, ptr noundef %i.dw)
  %i.dx = add i32 %i.q, 88                        ; 2 uses
  %.not17 = icmp eq i32 %3, 0
  br i1 %.not17, label %._crit_edge14, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %or.cond16 = icmp samesign ult i32 %3, 8
  br i1 %or.cond16, label %.lr.ph7, label %.lr.ph13.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv20 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next21, %.lr.ph ] ; 2 uses
  %.13 = phi i32 [ %i.dx, %.lr.ph.preheader ], [ %i.eh, %.lr.ph ] ; 4 uses
  %i.dy = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %.13, i32 noundef 1)
  %i.dz = icmp ne i8 %i.dy, 0
  %i.ea = getelementptr i8, ptr %i.e, i64 %indvars.iv20
  %i.eb = zext i1 %i.dz to i8
  store i8 %i.eb, ptr %i.ea, align 1
  %i.ec = load i32, ptr @hf_h265_sub_layer_profile_present_flag, align 4
  %i.ed = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.ec, ptr noundef %1, i32 noundef %.13, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ee = or disjoint i32 %.13, 1
  %i.ef = load i32, ptr @hf_h265_sub_layer_level_present_flag, align 4
  %i.eg = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.ef, ptr noundef %1, i32 noundef %i.ee, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eh = add i32 %.13, 2                         ; 3 uses
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count
  br i1 %exitcond23.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

.lr.ph7:                                          ; preds = %._crit_edge, %.lr.ph7
  %.03556 = phi i32 [ %i.el, %.lr.ph7 ], [ %3, %._crit_edge ]
  %.25 = phi i32 [ %i.ek, %.lr.ph7 ], [ %i.eh, %._crit_edge ] ; 2 uses
  %i.ei = load i32, ptr @hf_h265_reserved_zero_2bits, align 4
  %i.ej = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.ei, ptr noundef %1, i32 noundef %.25, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ek = add i32 %.25, 2                         ; 2 uses
  %i.el = add nuw nsw i32 %.03556, 1              ; 2 uses
  %exitcond24.not = icmp eq i32 %i.el, 8
  br i1 %exitcond24.not, label %.lr.ph13.preheader, label %.lr.ph7, !llvm.loop !38

.lr.ph13.preheader:                               ; preds = %.lr.ph7, %._crit_edge
  %.3.ph = phi i32 [ %i.eh, %._crit_edge ], [ %i.ek, %.lr.ph7 ]
  %wide.trip.count32 = zext nneg i32 %3 to i64
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %bb.aj
  %indvars.iv29 = phi i64 [ 0, %.lr.ph13.preheader ], [ %indvars.iv.next30, %bb.aj ] ; 4 uses
  %.410 = phi i32 [ %.3.ph, %.lr.ph13.preheader ], [ %.7, %bb.aj ] ; 23 uses
  %i.em = getelementptr i8, ptr %i.e, i64 %indvars.iv29
  %i.en = load i8, ptr %i.em, align 1, !range !9, !noundef !10
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.k, label %bb.ah

bb.k:                                             ; preds = %.lr.ph13
  %i.ep = load i32, ptr @hf_h265_sub_layer_profile_space, align 4
  %i.eq = lshr i32 %.410, 3                       ; 4 uses
  %i.er = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ep, ptr noundef %1, i32 noundef %i.eq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr @hf_h265_sub_layer_tier_flag, align 4
  %i.et = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.es, ptr noundef %1, i32 noundef %i.eq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eu = load i32, ptr @hf_h265_sub_layer_profile_idc, align 4
  %i.ev = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.eu, ptr noundef %1, i32 noundef %i.eq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ew = add nuw nsw i32 %i.eq, 3
  %i.ex = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ew, i32 noundef 5) ; 10 uses
  %i.ey = add i32 %.410, 8                        ; 33 uses
  %i.ez = getelementptr [32 x i8], ptr %i.g, i64 %indvars.iv29 ; 12 uses
  %i.fa = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fb = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fc = getelementptr i8, ptr %i.ez, i64 1
  %i.fd = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fe = getelementptr i8, ptr %i.ez, i64 2      ; 2 uses
  %i.ff = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fg = getelementptr i8, ptr %i.ez, i64 3
  %i.fh = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fi = getelementptr i8, ptr %i.ez, i64 4      ; 2 uses
  %i.fj = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fk = getelementptr i8, ptr %i.ez, i64 5      ; 3 uses
  %i.fl = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fm = getelementptr i8, ptr %i.ez, i64 6
  %i.fn = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fo = getelementptr i8, ptr %i.ez, i64 7
  %i.fp = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fq = getelementptr i8, ptr %i.ez, i64 8
  %i.fr = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fs = getelementptr i8, ptr %i.ez, i64 9      ; 2 uses
  %i.ft = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fu = getelementptr i8, ptr %i.ez, i64 10
  %i.fv = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fw = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fx = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fy = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.fz = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.ga = insertelement <16 x i8> poison, i8 %i.fa, i64 0
  %i.gb = insertelement <16 x i8> %i.ga, i8 %i.fb, i64 1
  %i.gc = insertelement <16 x i8> %i.gb, i8 %i.fd, i64 2
  %i.gd = insertelement <16 x i8> %i.gc, i8 %i.ff, i64 3
  %i.ge = insertelement <16 x i8> %i.gd, i8 %i.fh, i64 4
  %i.gf = insertelement <16 x i8> %i.ge, i8 %i.fj, i64 5
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fl, i64 6
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fn, i64 7
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fp, i64 8
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.fr, i64 9
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.ft, i64 10
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 11
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 12
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 13
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 14
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 15
  %i.gq = icmp ne <16 x i8> %i.gp, zeroinitializer
  %i.gr = zext <16 x i1> %i.gq to <16 x i8>
  store <16 x i8> %i.gr, ptr %i.ez, align 16
  %i.gs = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.gt = getelementptr i8, ptr %i.ez, i64 16
  %i.gu = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.gv = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.gw = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.gx = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.gy = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.gz = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.ha = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.hb = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.hc = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.hd = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.he = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.hf = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.hg = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.hh = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.hi = call zeroext i8 @tvb_get_bits8(ptr noundef %1, i32 noundef %i.ey, i32 noundef 1)
  %i.hj = insertelement <16 x i8> poison, i8 %i.gs, i64 0
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 1
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 2
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 3
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 4
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 5
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 6
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 7
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 8
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 9
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 10
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 11
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 12
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 13
  %i.hx = insertelement <16 x i8> %i.hw, i8 %i.hh, i64 14
  %i.hy = insertelement <16 x i8> %i.hx, i8 %i.hi, i64 15
  %i.hz = icmp ne <16 x i8> %i.hy, zeroinitializer
  %i.ia = zext <16 x i1> %i.hz to <16 x i8>
  store <16 x i8> %i.ia, ptr %i.gt, align 16
  %i.ib = load i32, ptr @hf_h265_sub_layer_profile_compatibility_flag, align 4
  %i.ic = lshr i32 %i.ey, 3
  %i.id = call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.ib, ptr noundef %1, i32 noundef %i.ic, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ie = add i32 %.410, 40
  %i.if = load i32, ptr @hf_h265_sub_layer_progressive_source_flag, align 4
  %i.ig = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.if, ptr noundef %1, i32 noundef %i.ie, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ih = add i32 %.410, 41
  %i.ii = load i32, ptr @hf_h265_sub_layer_interlaced_source_flag, align 4
  %i.ij = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.ii, ptr noundef %1, i32 noundef %i.ih, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ik = add i32 %.410, 42
  %i.il = load i32, ptr @hf_h265_sub_layer_non_packed_constraint_flag, align 4
  %i.im = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.il, ptr noundef %1, i32 noundef %i.ik, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.in = add i32 %.410, 43
  %i.io = load i32, ptr @hf_h265_sub_layer_frame_only_constraint_flag, align 4
  %i.ip = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.io, ptr noundef %1, i32 noundef %i.in, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.iq = add i32 %.410, 44                       ; 3 uses
  %i.ir = icmp eq i8 %i.ex, 4
  br i1 %i.ir, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.is = load i8, ptr %i.fi, align 4, !range !9, !noundef !10
  %i.it = trunc nuw i8 %i.is to i1
  %i.iu = icmp eq i8 %i.ex, 5
  %or.cond = or i1 %i.iu, %i.it
  br i1 %or.cond, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.iv = load i8, ptr %i.fk, align 1, !range !9, !noundef !10
  %i.iw = trunc nuw i8 %i.iv to i1
  %i.ix = icmp eq i8 %i.ex, 6
  %or.cond364 = or i1 %i.ix, %i.iw
  br i1 %or.cond364, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.iy = load i8, ptr %i.fm, align 2, !range !9, !noundef !10
  %i.iz = trunc nuw i8 %i.iy to i1
  %i.ja = icmp eq i8 %i.ex, 7
end_hunk_0
