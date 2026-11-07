Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-drda?download=true
inline.NumInlined: 106
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_drda_pdu:bb.a

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink.i = phi i32 [ %i.fi, %bb.v ], [ %i.fd, %bb.u ]
  %i.fj = getelementptr i8, ptr %i.ek, i64 12
  store i32 %.sink.i, ptr %i.fj, align 4
  %i.fk = load ptr, ptr %i.dr, align 8
  %i.fl = load i32, ptr @proto_drda, align 4
  call void @p_set_proto_data(ptr noundef %i.fk, ptr noundef %1, i32 noundef %i.fl, i32 noundef %i.ef, ptr noundef %i.ek)
  br label %drda_get_pdu_info.exit

drda_get_pdu_info.exit:                           ; preds = %drda_packet_from_server.exit, %bb.w
  %.0.i93 = phi ptr [ %i.ei, %drda_packet_from_server.exit ], [ %i.ek, %bb.w ] ; 10 uses
  %i.fm = load ptr, ptr @drda_opcode_table, align 8
  %i.fn = load i32, ptr %i.e, align 4
  %i.fo = load i32, ptr %i.d, align 4
  %i.fp = add i32 %i.fo, -10
  %i.fq = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 10, i32 noundef %i.fp)
  %i.fr = call i32 @dissector_try_uint_with_data(ptr noundef %i.fm, i32 noundef %i.fn, ptr noundef %i.fq, ptr noundef %1, ptr noundef %i.n, i1 noundef zeroext false, ptr noundef %.0.i93)
  %.not = icmp eq i32 %i.fr, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %drda_get_pdu_info.exit
  %i.fs = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 10)
  %i.ft = icmp ugt i32 %i.fs, 1
  br i1 %i.ft, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.ac
  %.097 = phi i32 [ %i.he, %bb.ac ], [ 10, %.preheader ] ; 6 uses
  %i.fu = load i32, ptr @ett_drda_param, align 4
  %i.fv = call ptr @proto_tree_add_subtree(ptr noundef %i.l, ptr noundef %0, i32 noundef %.097, i32 noundef 4, i32 noundef %i.fu, ptr noundef nonnull %i.a, ptr noundef @.str.831) ; 5 uses
  %i.fw = load i32, ptr @hf_drda_param_length, align 4
  %i.fx = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.fv, i32 noundef %i.fw, ptr noundef %0, i32 noundef %.097, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.h)
  %i.fy = load i32, ptr %i.h, align 4             ; 2 uses
  %or.cond = icmp ult i32 %i.fy, 2
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.fz = load i32, ptr %i.d, align 4
  %i.ga = add i32 %i.fz, -10                      ; 2 uses
  store i32 %i.ga, ptr %i.h, align 4
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.x
  %i.gb = phi i32 [ %i.fy, %.lr.ph ], [ %i.ga, %bb.x ] ; 3 uses
  %i.gc = icmp ult i32 %i.gb, 4
  br i1 %i.gc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gd = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.fx, ptr noundef @ei_drda_opcode_invalid_length, ptr noundef @.str.832, i32 noundef %i.gb) ; 0 uses
  %i.ge = load ptr, ptr %i.a, align 8
  %i.gf = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.097)
  call void @proto_item_set_len(ptr noundef %i.ge, i32 noundef %i.gf)
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %i.gg = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.gg, i32 noundef %i.gb)
  %i.gh = load i32, ptr @hf_drda_param_codepoint, align 4
  %i.gi = add i32 %.097, 2
  %i.gj = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.fv, i32 noundef %i.gh, ptr noundef %0, i32 noundef %i.gi, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.g) ; 0 uses
  %i.gk = load ptr, ptr %i.a, align 8
  %i.gl = load ptr, ptr %i.dr, align 8
  %i.gm = load i32, ptr %i.g, align 4
  %i.gn = call ptr @val_to_str_ext(ptr noundef %i.gl, i32 noundef %i.gm, ptr noundef @drda_opcode_vals_ext, ptr noundef @.str.829)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.gk, ptr noundef @.str.828, ptr noundef %i.gn)
  %i.go = load ptr, ptr @drda_opcode_table, align 8
  %i.gp = load i32, ptr %i.g, align 4
  %i.gq = add i32 %.097, 4                        ; 3 uses
  %i.gr = load i32, ptr %i.h, align 4
  %i.gs = add i32 %i.gr, -4
  %i.gt = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.gq, i32 noundef %i.gs)
  %i.gu = call i32 @dissector_try_uint_with_data(ptr noundef %i.go, i32 noundef %i.gp, ptr noundef %i.gt, ptr noundef %1, ptr noundef %i.fv, i1 noundef zeroext false, ptr noundef %.0.i93)
  %.not89 = icmp eq i32 %i.gu, 0
  br i1 %.not89, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gv = load i32, ptr @hf_drda_param_data, align 4
  %i.gw = load i32, ptr %i.h, align 4
  %i.gx = add i32 %i.gw, -4
  %i.gy = call ptr @proto_tree_add_item(ptr noundef %i.fv, i32 noundef %i.gv, ptr noundef %0, i32 noundef %i.gq, i32 noundef %i.gx, i32 noundef 2) ; 0 uses
  %i.gz = load i32, ptr @hf_drda_param_data_ebcdic, align 4
  %i.ha = load i32, ptr %i.h, align 4
  %i.hb = add i32 %i.ha, -4
  %i.hc = call ptr @proto_tree_add_item(ptr noundef %i.fv, i32 noundef %i.gz, ptr noundef %0, i32 noundef %i.gq, i32 noundef %i.hb, i32 noundef 96) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hd = load i32, ptr %i.h, align 4
  %i.he = add i32 %i.hd, %.097                    ; 2 uses
  %i.hf = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.he)
  %i.hg = icmp ugt i32 %i.hf, 1
  br i1 %i.hg, label %.lr.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %bb.ac, %.preheader, %bb.z, %drda_get_pdu_info.exit
  %i.hh = call fastcc ptr @drda_get_conv_info(ptr noundef %1) ; 4 uses
  %i.hi = load i32, ptr %i.e, align 4
  switch i32 %i.hi, label %drda_update_flow_encoding.exit [
    i32 5187, label %bb.ad
    i32 8193, label %bb.ai
    i32 8705, label %bb.ah
  ]

bb.ad:                                            ; preds = %.loopexit
  %i.hj = getelementptr i8, ptr %i.hh, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = getelementptr i8, ptr %i.hk, i64 8      ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = getelementptr i8, ptr %1, i64 20        ; 4 uses
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = call ptr @wmem_tree_lookup32_le(ptr noundef %i.hm, i32 noundef %i.ho)
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = load i32, ptr %.0.i93, align 4          ; 2 uses
  %.not90 = icmp eq i32 %i.hs, %i.hr
  br i1 %.not90, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ht = load ptr, ptr %i.hl, align 8
  %i.hu = load i32, ptr %i.hn, align 4
  %i.hv = zext i32 %i.hs to i64
  %i.hw = inttoptr i64 %i.hv to ptr
  call void @wmem_tree_insert32(ptr noundef %i.ht, i32 noundef %i.hu, ptr noundef %i.hw)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hx = load ptr, ptr %i.hh, align 8
  %i.hy = getelementptr i8, ptr %i.hx, i64 8      ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = load i32, ptr %i.hn, align 4
  %i.ib = call ptr @wmem_tree_lookup32_le(ptr noundef %i.hz, i32 noundef %i.ia)
  %i.ic = ptrtoint ptr %i.ib to i64
  %i.id = trunc i64 %i.ic to i32
  %i.ie = load i32, ptr %.0.i93, align 4          ; 2 uses
  %.not91 = icmp eq i32 %i.ie, %i.id
  br i1 %.not91, label %drda_update_flow_encoding.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.if = load ptr, ptr %i.hy, align 8
  %i.ig = load i32, ptr %i.hn, align 4
  %i.ih = zext i32 %i.ie to i64
  %i.ii = inttoptr i64 %i.ih to ptr
  call void @wmem_tree_insert32(ptr noundef %i.if, i32 noundef %i.ig, ptr noundef %i.ii)
  br label %drda_update_flow_encoding.exit

bb.ah:                                            ; preds = %.loopexit
  %i.ij = getelementptr i8, ptr %i.hh, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %bb.ah
  %.in = phi ptr [ %i.ij, %bb.ah ], [ %i.hh, %.loopexit ]
  %i.ik = load ptr, ptr %.in, align 8             ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.in = load i32, ptr %i.im, align 4
  %i.io = call ptr @wmem_tree_lookup32_le(ptr noundef %i.il, i32 noundef %i.in) ; 4 uses
  %.not.i94 = icmp eq ptr %i.io, null
  br i1 %.not.i94, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = getelementptr i8, ptr %.0.i93, i64 4
  %i.ir = load i32, ptr %i.iq, align 4
  %i.is = icmp eq i32 %i.ip, %i.ir
  br i1 %i.is, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.it = getelementptr i8, ptr %i.io, i64 4
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = getelementptr i8, ptr %.0.i93, i64 8
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = icmp eq i32 %i.iu, %i.iw
  br i1 %i.ix, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.iy = getelementptr i8, ptr %i.io, i64 8
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = getelementptr i8, ptr %.0.i93, i64 12
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = icmp eq i32 %i.iz, %i.jb
  br i1 %i.jc, label %drda_update_flow_encoding.exit, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.jd = call ptr @wmem_file_scope()
  %i.je = call noalias dereferenceable_or_null(12) ptr @wmem_alloc(ptr noundef %i.jd, i64 noundef 12) #11 ; 4 uses
  %i.jf = getelementptr i8, ptr %.0.i93, i64 12
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = getelementptr i8, ptr %i.je, i64 8
  store i32 %i.jg, ptr %i.jh, align 4
  %i.ji = getelementptr i8, ptr %.0.i93, i64 8
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = getelementptr i8, ptr %i.je, i64 4
  store i32 %i.jj, ptr %i.jk, align 4
  %i.jl = getelementptr i8, ptr %.0.i93, i64 4
  %i.jm = load i32, ptr %i.jl, align 4
  store i32 %i.jm, ptr %i.je, align 4
  %i.jn = load ptr, ptr %i.ik, align 8
  %i.jo = load i32, ptr %i.im, align 4
  call void @wmem_tree_insert32(ptr noundef %i.jn, i32 noundef %i.jo, ptr noundef %i.je)
  br label %drda_update_flow_encoding.exit

drda_update_flow_encoding.exit:                   ; preds = %bb.am, %bb.al, %.loopexit, %bb.af, %bb.ag
  %i.jp = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.an

bb.an:                                            ; preds = %drda_update_flow_encoding.exit, %bb.b
  %.083 = phi i32 [ 2, %bb.b ], [ %i.jp, %drda_update_flow_encoding.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.083
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask_ret_uint64(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_fence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint_with_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @drda_get_conv_info(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @find_or_create_conversation(ptr noundef %0) ; 2 uses
  %i.b = load i32, ptr @proto_drda, align 4
  %i.c = tail call ptr @conversation_get_proto_data(ptr noundef %i.a, i32 noundef %i.b) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @wmem_file_scope()
  %i.f = tail call noalias dereferenceable_or_null(48) ptr @wmem_alloc0(ptr noundef %i.e, i64 noundef 48) #11 ; 4 uses
  %i.g = tail call ptr @wmem_file_scope()         ; 3 uses
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.g, i64 noundef 16) #11 ; 3 uses
  %i.i = tail call ptr @wmem_tree_new(ptr noundef %i.g)
  store ptr %i.i, ptr %i.h, align 8
  %i.j = tail call ptr @wmem_tree_new(ptr noundef %i.g) ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = load i32, ptr @drda_default_sqlam, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = inttoptr i64 %i.o to ptr
  tail call void @wmem_tree_insert32(ptr noundef %i.j, i32 noundef %i.m, ptr noundef %i.p)
  store ptr %i.h, ptr %i.f, align 8
  %i.q = tail call ptr @wmem_file_scope()         ; 3 uses
  %i.r = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.q, i64 noundef 16) #11 ; 3 uses
  %i.s = tail call ptr @wmem_tree_new(ptr noundef %i.q)
  store ptr %i.s, ptr %i.r, align 8
  %i.t = tail call ptr @wmem_tree_new(ptr noundef %i.q) ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 8
  store ptr %i.t, ptr %i.u, align 8
  %i.v = load i32, ptr %i.l, align 4
  %i.w = load i32, ptr @drda_default_sqlam, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = inttoptr i64 %i.x to ptr
  tail call void @wmem_tree_insert32(ptr noundef %i.t, i32 noundef %i.v, ptr noundef %i.y)
  %i.z = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.r, ptr %i.z, align 8
  %i.aa = load i32, ptr @proto_drda, align 4
  tail call void @conversation_add_proto_data(ptr noundef %i.a, i32 noundef %i.aa, ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_tree_insert32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @drda_set_server(ptr nofree noundef writeonly captures(none) initializes((16, 48)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wmem_file_scope()
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load i32, ptr %1, align 8
  %i.d = getelementptr i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 %i.c, ptr %i.b, align 8
  %i.h = icmp eq i32 %i.e, 0
  br i1 %i.h, label %copy_address_wmem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.e to i64
  %i.j = tail call ptr @wmem_memdup(ptr noundef %i.a, ptr noundef %i.g, i64 noundef %i.i) #10 ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 20
  store i32 %i.e, ptr %i.m, align 4
  br label %copy_address_wmem.exit

copy_address_wmem.exit:                           ; preds = %bb.a, %bb.b
  %i.n = getelementptr i8, ptr %0, i64 40
  store i32 %2, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %0, i64 44
  store i32 %3, ptr %i.o, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @mibenum_charset_to_encoding(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @p_set_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
