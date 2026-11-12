Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dof?download=true
inline.NumInlined: 284
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@dissect_dsp:bb.a
  %i.bp = select i1 %i.bo, ptr @.str.180, ptr @.str.747
  %i.bq = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.j, ptr noundef %0, i32 noundef %i.an, i32 noundef %i.bm, i32 noundef %i.bn, ptr noundef null, ptr noundef @.str.746, i32 noundef %i.bm, ptr noundef nonnull %i.bp)
  %i.br = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.bs = icmp slt i32 %i.an, %i.br
  br i1 %i.bs, label %.lr.ph.i, label %dissect_options.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.01.i = phi i32 [ %i.by, %.lr.ph.i ], [ %i.an, %bb.m ] ; 3 uses
  %i.bt = load i32, ptr @ett_2008_1_dsp_12_option, align 4
  %i.bu = tail call ptr @proto_tree_add_subtree(ptr noundef %i.bq, ptr noundef %0, i32 noundef %.01.i, i32 noundef 0, i32 noundef %i.bt, ptr noundef null, ptr noundef @.str.748) ; 2 uses
  %i.bv = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.01.i)
  %i.bw = tail call fastcc i32 @dissect_2008_1_dsp_1(ptr noundef %i.bv, ptr noundef %1, ptr noundef %i.bu) ; 2 uses
  %i.bx = tail call ptr @proto_tree_get_parent(ptr noundef %i.bu)
  tail call void @proto_item_set_len(ptr noundef %i.bx, i32 noundef %i.bw)
  %i.by = add i32 %i.bw, %.01.i                   ; 3 uses
  %i.bz = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph.i, label %dissect_options.exit, !llvm.loop !82

dissect_options.exit:                             ; preds = %validate_c2.exit74, %.lr.ph.i, %bb.i, %bb.m, %bb.h, %bb.b, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.sink.i, %bb.g ], [ %i.an, %bb.h ], [ %i.by, %.lr.ph.i ], [ %i.an, %bb.m ], [ %i.an, %bb.i ], [ %.015.ph.i70, %validate_c2.exit74 ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 4, 260) i32 @dissect_2008_1_dsp_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_get_parent(ptr noundef %2)
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.c = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1)
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.e = load i32, ptr @hf_2008_1_dsp_attribute_code, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_2008_1_dsp_attribute_data, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_2008_1_dsp_value_length, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = getelementptr i8, ptr %1, i64 416
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = zext i8 %i.b to i32                      ; 2 uses
  %i.n = tail call ptr @val_to_str(ptr noundef %i.l, i32 noundef %i.m, ptr noundef @strings_2008_1_dsp_attribute_codes, ptr noundef @.str.750)
  %i.o = zext i16 %i.c to i32                     ; 2 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.a, ptr noundef @.str.749, ptr noundef %i.n, i32 noundef %i.o)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr @hf_2008_1_dsp_value_data, align 4
  %i.q = zext i8 %i.d to i32                      ; 2 uses
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef 4, i32 noundef %i.q, i32 noundef 0) ; 0 uses
  %i.s = add nuw nsw i32 %i.q, 4                  ; 2 uses
  tail call void @tvb_set_reported_length(ptr noundef %0, i32 noundef %i.s)
  %i.t = load ptr, ptr @dsp_option_dissectors, align 8
  %i.u = shl nuw nsw i32 %i.m, 16
  %i.v = or disjoint i32 %i.u, %i.o
  %i.w = tail call i32 @dissector_try_uint(ptr noundef %i.t, i32 noundef %i.v, ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.pre-phi26 = phi i32 [ %i.s, %bb.b ], [ 4, %bb.a ]
  ret i32 %.pre-phi26
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_reported_length(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_ccm_app(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef @.str.751)
  %i.c = load i32, ptr @proto_ccm_app, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.e = load i32, ptr @ett_ccm, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 2 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp slt i8 %i.g, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = and i8 %i.g, 127
  %i.i = zext nneg i8 %i.h to i16
  %i.j = shl nuw nsw i16 %i.i, 8
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.l = zext i8 %i.k to i16
  %i.m = or disjoint i16 %i.j, %i.l
  br label %read_c2.exit

bb.c:                                             ; preds = %bb.a
  %i.n = zext nneg i8 %i.g to i16
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]   ; 3 uses
  %.0.ph.i = phi i16 [ %i.m, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.o = load i32, ptr @hf_2008_1_app_version, align 4
  %i.p = zext nneg i16 %.0.ph.i to i32
  %i.q = tail call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef %.sink.i, i32 noundef %i.p)
  %i.r = icmp samesign ult i16 %.0.ph.i, 128
  %or.cond.i = and i1 %.not.i, %i.r
  br i1 %or.cond.i, label %bb.d, label %validate_c2.exit

bb.d:                                             ; preds = %read_c2.exit
  %i.s = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.q, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %read_c2.exit, %bb.d
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.sink.i)
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr i8, ptr %1, i64 416
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = zext i8 %i.t to i32
  %i.y = tail call ptr @val_to_str(ptr noundef %i.w, i32 noundef %i.x, ptr noundef @ccm_opcode_strings, ptr noundef @.str.741)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.u, i32 noundef 25, ptr noundef @.str.740, ptr noundef %i.y)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %validate_c2.exit
  %i.z = load i32, ptr @hf_ccm_opcode, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.z, ptr noundef %0, i32 noundef %.sink.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %validate_c2.exit
  ret i32 1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 2, 1) i32 @dissect_ccm_dsp(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = tail call ptr @proto_tree_get_parent(ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef @.str.752)
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.d = load i32, ptr @hf_ccm_dsp_option, align 4
  %i.e = zext i8 %i.c to i32
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 4, i32 noundef %i.e, i32 noundef 0)
  %i.g = load i32, ptr @ett_ccm_dsp_option, align 4
  %i.h = tail call ptr @proto_item_add_subtree(ptr noundef %i.f, i32 noundef %i.g) ; 6 uses
  %i.i = load i32, ptr @hf_ccm_dsp_strength_count, align 4
  %i.j = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.h, i32 noundef %i.i, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.k = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.033 = phi i8 [ %i.o, %.lr.ph ], [ 0, %bb.a ]
  %.03132 = phi i32 [ %i.m, %.lr.ph ], [ 5, %bb.a ] ; 2 uses
  %i.l = load i32, ptr @hf_ccm_dsp_strength, align 4
  %i.m = add nuw nsw i32 %.03132, 1               ; 2 uses
  %i.n = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.l, ptr noundef %0, i32 noundef %.03132, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = add nuw i8 %.033, 1                      ; 2 uses
  %i.p = load i8, ptr %i.a, align 1
  %i.q = icmp ult i8 %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.031.lcssa = phi i32 [ 5, %bb.a ], [ %i.m, %.lr.ph ] ; 5 uses
  %i.r = load i32, ptr @hf_ccm_dsp_e_flag, align 4
  %i.s = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.r, ptr noundef %0, i32 noundef %.031.lcssa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr @hf_ccm_dsp_m_flag, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.t, ptr noundef %0, i32 noundef %.031.lcssa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_ccm_dsp_tmax, align 4
  %i.w = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.v, ptr noundef %0, i32 noundef %.031.lcssa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.x = load i32, ptr @hf_ccm_dsp_tmin, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %i.h, i32 noundef %i.x, ptr noundef %0, i32 noundef %.031.lcssa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.z = add i32 %.031.lcssa, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %i.z
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ccm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca [11 x i8], align 4                ; 7 uses
  %i.o = icmp eq ptr %3, null
  br i1 %i.o, label %.critedge371, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %3, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 7 uses
  %i.r = getelementptr i8, ptr %3, i64 4
  %i.s = load i32, ptr %i.r, align 4
  switch i32 %i.s, label %.critedge371 [
    i32 0, label %bb.c
    i32 1, label %bb.af
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not351 = icmp eq ptr %i.u, null
  br i1 %.not351, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @wmem_file_scope()
  %i.w = tail call noalias dereferenceable_or_null(48) ptr @wmem_alloc0(ptr noundef %i.v, i64 noundef 48) #22 ; 11 uses
  %.not352 = icmp eq ptr %i.w, null
  br i1 %.not352, label %.critedge371, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call ptr @wmem_file_scope()
  %i.y = tail call i32 @wmem_register_callback(ptr noundef %i.x, ptr noundef @dof_sessions_destroy_cb, ptr noundef nonnull %i.w) ; 0 uses
  store ptr %i.w, ptr %i.t, align 8
  %i.z = getelementptr i8, ptr %i.q, i64 16       ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %.not353 = icmp eq ptr %i.aa, null
  br i1 %.not353, label %.critedge371, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.q, i64 12      ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp ult i32 %i.ac, 3
  br i1 %i.ad, label %.critedge371, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 24577, ptr %i.w, align 8
  %i.ae = load ptr, ptr %i.z, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %i.w, i64 36
  store i8 %i.ag, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.z, align 8
  %i.aj = load i32, ptr %i.ab, align 4
  %i.ak = add i32 %i.aj, -1
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.ai, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr i8, ptr %i.w, i64 37
  %.lobit = lshr i8 %i.an, 7
  store i8 %.lobit, ptr %i.ao, align 1
  %i.ap = load ptr, ptr %i.z, align 8
  %i.aq = load i32, ptr %i.ab, align 4
  %i.ar = add i32 %i.aq, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = shl i8 %i.au, 1
  %i.aw = and i8 %i.av, 14
  %narrow = add nuw nsw i8 %i.aw, 2
  %i.ax = getelementptr i8, ptr %i.w, i64 38
  store i8 %narrow, ptr %i.ax, align 2
  %i.ay = getelementptr i8, ptr %i.w, i64 40
  store i32 0, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %i.w, i64 44
  store i32 0, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %i.w, i64 8
  %i.bb = tail call i32 @gcry_cipher_open(ptr noundef %i.ba, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not354 = icmp eq i32 %i.bb, 0
  br i1 %.not354, label %bb.h, label %.critedge371

bb.h:                                             ; preds = %bb.g, %bb.c
  %.0317 = phi ptr [ %i.u, %bb.c ], [ %i.w, %bb.g ] ; 11 uses
  %i.bc = getelementptr i8, ptr %3, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 49
  %i.bg = load i8, ptr %i.bf, align 1, !range !12, !noundef !13
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bi = load i32, ptr %.0317, align 8
  %cond10 = icmp eq i32 %i.bi, 24577
  br i1 %cond10, label %bb.j, label %.critedge371

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr i8, ptr %.0317, i64 8     ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr i8, ptr %i.q, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call i32 @gcry_cipher_setkey(ptr noundef %i.bk, ptr noundef %i.bm, i64 noundef 32)
  %.not363 = icmp eq i32 %i.bn, 0
  br i1 %.not363, label %.critedge371, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.bj, align 8
  tail call void @gcry_cipher_close(ptr noundef %i.bo)
  store ptr null, ptr %i.bj, align 8
  br label %.critedge371

bb.l:                                             ; preds = %bb.h
  %i.bp = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not.i = icmp sgt i8 %i.bp, -1
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = and i8 %i.bp, 127
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.bu = zext i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu
  br label %read_c2.exit

bb.n:                                             ; preds = %bb.l
  %i.bw = zext nneg i8 %i.bp to i32
  br label %read_c2.exit

read_c2.exit:                                     ; preds = %bb.m, %bb.n
  %.015.i = phi i32 [ 1, %bb.n ], [ 2, %bb.m ]    ; 2 uses
  %.0.i = phi i32 [ %i.bw, %bb.n ], [ %i.bv, %bb.m ]
  %i.bx = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.015.i)
  %i.by = lshr i8 %i.bx, 4
  %i.bz = and i8 %i.by, 7                         ; 2 uses
  %i.ca = getelementptr i8, ptr %.0317, i64 16    ; 5 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.o, label %bb.t

bb.o:                                             ; preds = %read_c2.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.cd = call i32 @gcry_cipher_open(ptr noundef nonnull %i.a, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not361 = icmp eq i32 %i.cd, 0
  br i1 %.not361, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.ce = call ptr @g_hash_table_new_full(ptr noundef @g_direct_hash, ptr noundef @g_direct_equal, ptr noundef null, ptr noundef @dof_cipher_data_destroy)
  store ptr %i.ce, ptr %i.ca, align 8
  %i.cf = getelementptr i8, ptr %.0317, i64 24    ; 2 uses
  store i32 1, ptr %i.cf, align 8
  %i.cg = getelementptr i8, ptr %.0317, i64 28
  %i.ch = zext nneg i8 %i.bz to i64
  %i.ci = getelementptr i8, ptr %i.cg, i64 %i.ch
  store i8 1, ptr %i.ci, align 1
  %i.cj = load i32, ptr %.0317, align 8
  %cond8 = icmp eq i32 %i.cj, 24577
  %i.ck = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %cond8, label %bb.q, label %.critedge.sink.split

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr i8, ptr %i.q, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call i32 @gcry_cipher_setkey(ptr noundef %i.ck, ptr noundef %i.cm, i64 noundef 32)
  %.not362 = icmp eq i32 %i.cn, 0
  br i1 %.not362, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.a, align 8
  br label %.critedge.sink.split

bb.s:                                             ; preds = %bb.q
  %i.cp = load ptr, ptr %i.ca, align 8
  %i.cq = load i32, ptr %i.cf, align 8
  %i.cr = zext i32 %i.cq to i64
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load ptr, ptr %i.a, align 8
  %i.cu = call i32 @g_hash_table_insert(ptr noundef %i.cp, ptr noundef %i.cs, ptr noundef %i.ct) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.critedge372

bb.t:                                             ; preds = %read_c2.exit
  %i.cv = getelementptr i8, ptr %.0317, i64 28
  %i.cw = zext nneg i8 %i.bz to i64
  %i.cx = getelementptr i8, ptr %i.cv, i64 %i.cw  ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1             ; 2 uses
  %.not355 = icmp eq i8 %i.cy, 0
  br i1 %.not355, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.cz = call i32 @gcry_cipher_open(ptr noundef nonnull %i.b, i32 noundef 7, i32 noundef 1, i32 noundef 0)
  %.not356 = icmp eq i32 %i.cz, 0
  br i1 %.not356, label %bb.v, label %.critedge365

bb.v:                                             ; preds = %bb.u
  %i.da = load i32, ptr %.0317, align 8
  %cond1 = icmp eq i32 %i.da, 24577
  %i.db = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %cond1, label %bb.w, label %.critedge365.sink.split

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr i8, ptr %i.q, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call i32 @gcry_cipher_setkey(ptr noundef %i.db, ptr noundef %i.dd, i64 noundef 32)
end_hunk_0
begin_hunk_1_@dissect_ccm:bb.a
  br label %.critedge371

.critedge372:                                     ; preds = %bb.y, %bb.z, %bb.ae, %bb.s
  %i.eu = add nuw nsw i32 %.0.i, %.015.i
  br label %.critedge371

bb.af:                                            ; preds = %bb.b
  %i.ev = getelementptr i8, ptr %3, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.ey = getelementptr i8, ptr %3, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ew, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8            ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i16 0, ptr %i.e, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.fc = getelementptr i8, ptr %i.fb, i64 200    ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8            ; 2 uses
  %.not = icmp eq ptr %i.fd, null
  br i1 %.not, label %bb.ag, label %.thread382

bb.ag:                                            ; preds = %bb.af
  %i.fe = getelementptr i8, ptr %i.ex, i64 48
  %i.ff = load i8, ptr %i.fe, align 8, !range !12, !noundef !13
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = getelementptr i8, ptr %i.ez, i64 16
  %.0325392 = load ptr, ptr %i.fh, align 8        ; 6 uses
  br i1 %i.fg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.not337393 = icmp eq ptr %.0325392, null
  br i1 %.not337393, label %.critedge374, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.fi = getelementptr i8, ptr %i.fb, i64 49
  %i.fj = load i8, ptr %i.fi, align 1, !range !12, !noundef !13
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = getelementptr i8, ptr %i.fb, i64 12
  %i.fm = load i32, ptr %i.fl, align 4            ; 2 uses
  br i1 %i.fk, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread.us
  %.0325394.us = phi ptr [ %.0325.us, %.thread.us ], [ %.0325392, %.lr.ph ] ; 3 uses
  %i.fn = load i32, ptr %.0325394.us, align 8
  %i.fo = icmp ugt i32 %i.fm, %i.fn
  br i1 %i.fo, label %.split.us, label %.thread.us

.thread.us:                                       ; preds = %.lr.ph.split.us
  %i.fp = getelementptr i8, ptr %.0325394.us, i64 40
  %.0325.us = load ptr, ptr %i.fp, align 8        ; 2 uses
  %.not337.us = icmp eq ptr %.0325.us, null
  br i1 %.not337.us, label %.critedge374, label %.lr.ph.split.us, !llvm.loop !84

.lr.ph.split:                                     ; preds = %.lr.ph, %.thread
  %.0325394 = phi ptr [ %.0325, %.thread ], [ %.0325392, %.lr.ph ] ; 3 uses
  %i.fq = getelementptr i8, ptr %.0325394, i64 4
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = icmp ugt i32 %i.fm, %i.fr
  br i1 %i.fs, label %.split.us, label %.thread

.thread:                                          ; preds = %.lr.ph.split
  %i.ft = getelementptr i8, ptr %.0325394, i64 40
  %.0325 = load ptr, ptr %i.ft, align 8           ; 2 uses
  %.not337 = icmp eq ptr %.0325, null
  br i1 %.not337, label %.critedge374, label %.lr.ph.split, !llvm.loop !84

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.0325394.us, %.lr.ph.split.us ], [ %.0325394, %.lr.ph.split ] ; 2 uses
  store ptr %.us-phi, ptr %i.fc, align 8
  br label %.thread382

.critedge374:                                     ; preds = %.thread, %.thread.us, %bb.ah
  %i.fu = getelementptr i8, ptr %i.fb, i64 192
  store ptr @.str.733, ptr %i.fu, align 8
  br label %bb.bw

bb.ai:                                            ; preds = %bb.ag
  store ptr %.0325392, ptr %i.fc, align 8
  %.not338 = icmp eq ptr %.0325392, null
  br i1 %.not338, label %bb.ak, label %.thread382

.thread382:                                       ; preds = %bb.af, %.split.us, %bb.ai
  %.1326385 = phi ptr [ %.0325392, %bb.ai ], [ %i.fd, %bb.af ], [ %.us-phi, %.split.us ] ; 2 uses
  %i.fv = getelementptr i8, ptr %.1326385, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8
  %.not339 = icmp eq ptr %i.fw, null
  br i1 %.not339, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.thread382
  %i.fx = getelementptr i8, ptr %.1326385, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8            ; 9 uses
  %.not340 = icmp eq ptr %i.fy, null
  br i1 %.not340, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %.thread382, %bb.ai
  %i.fz = getelementptr i8, ptr %i.fb, i64 192
  store ptr @.str.733, ptr %i.fz, align 8
  br label %bb.bw

bb.al:                                            ; preds = %bb.aj
  %i.ga = getelementptr i8, ptr %3, i64 8         ; 5 uses
  %i.gb = load i32, ptr %i.ga, align 8            ; 9 uses
  %i.gc = load i32, ptr @proto_ccm, align 4
  %i.gd = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.gc, ptr noundef %0, i32 noundef %i.gb, i32 noundef 0, ptr noundef @.str.753) ; 2 uses
  %i.ge = load i32, ptr @ett_header, align 4
  %i.gf = tail call ptr @proto_item_add_subtree(ptr noundef %i.gd, i32 noundef %i.ge) ; 11 uses
  %i.gg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gb) ; 4 uses
  %i.gh = load i32, ptr @hf_epp_v1_ccm_flags, align 4
  %i.gi = zext i8 %i.gg to i32                    ; 4 uses
  %i.gj = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.gh, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef %i.gi, ptr noundef @.str.714, i32 noundef %i.gi)
  %i.gk = load i32, ptr @ett_epp_v1_ccm_flags, align 4
  %i.gl = tail call ptr @proto_item_add_subtree(ptr noundef %i.gj, i32 noundef %i.gk) ; 5 uses
  %i.gm = load i32, ptr @hf_epp_v1_ccm_flags_manager, align 4
  %i.gn = tail call ptr @proto_tree_add_item(ptr noundef %i.gl, i32 noundef %i.gm, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.go = load i32, ptr @hf_epp_v1_ccm_flags_period, align 4
  %i.gp = tail call ptr @proto_tree_add_item(ptr noundef %i.gl, i32 noundef %i.go, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gq = load i32, ptr @hf_epp_v1_ccm_flags_target, align 4
  %i.gr = tail call ptr @proto_tree_add_item(ptr noundef %i.gl, i32 noundef %i.gq, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gs = load i32, ptr @hf_epp_v1_ccm_flags_next_nid, align 4
  %i.gt = tail call ptr @proto_tree_add_item(ptr noundef %i.gl, i32 noundef %i.gs, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gu = load i32, ptr @hf_epp_v1_ccm_flags_packet, align 4
  %i.gv = tail call ptr @proto_tree_add_item(ptr noundef %i.gl, i32 noundef %i.gu, ptr noundef %0, i32 noundef %i.gb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gw = add i32 %i.gb, 1                        ; 7 uses
  %.not341 = trunc i8 %i.gg to i1
  %i.gx = getelementptr i8, ptr %i.fb, i64 208    ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8            ; 2 uses
  %.not342 = icmp eq ptr %i.gy, null
  br i1 %.not342, label %bb.am, label %bb.av

bb.am:                                            ; preds = %bb.al
  %i.gz = tail call ptr @wmem_file_scope()
  %i.ha = tail call noalias dereferenceable_or_null(12) ptr @wmem_alloc0(ptr noundef %i.gz, i64 noundef 12) #22 ; 6 uses
  %.not343 = icmp eq ptr %i.ha, null
  br i1 %.not343, label %bb.au, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.ha, ptr %i.gx, align 8
  %i.hb = getelementptr i8, ptr %i.ex, i64 49
  %i.hc = load i8, ptr %i.hb, align 1, !range !12, !noundef !13
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.he = getelementptr i8, ptr %i.fb, i64 49
  %i.hf = load i8, ptr %i.he, align 1, !range !12, !noundef !13
  %i.hg = trunc nuw i8 %i.hf to i1
  %.not341.mask344 = and i8 %i.gg, 1
  %i.hh = icmp eq i8 %.not341.mask344, 0          ; 2 uses
  br i1 %i.hg, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ha, align 4
  br i1 %i.hh, label %bb.aq, label %.sink.split

bb.aq:                                            ; preds = %bb.ap
  %i.hi = getelementptr i8, ptr %i.fy, i64 40     ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8
  %i.hk = add i32 %i.hj, 1                        ; 2 uses
  store i32 %i.hk, ptr %i.hi, align 8
  br label %.sink.split

bb.ar:                                            ; preds = %bb.ao
  store i32 1, ptr %i.ha, align 4
  br i1 %i.hh, label %bb.as, label %.sink.split

bb.as:                                            ; preds = %bb.ar
  %i.hl = getelementptr i8, ptr %i.fy, i64 44     ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = add i32 %i.hm, 1                        ; 2 uses
  store i32 %i.hn, ptr %i.hl, align 4
  br label %.sink.split

bb.at:                                            ; preds = %bb.an
  %i.ho = lshr i8 %i.gg, 4
  %i.hp = and i8 %i.ho, 7
  %i.hq = getelementptr i8, ptr %i.fy, i64 28
  %i.hr = zext nneg i8 %i.hp to i64
  %i.hs = getelementptr i8, ptr %i.hq, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = zext i8 %i.ht to i32
  br label %.sink.split

bb.au:                                            ; preds = %bb.am
  %i.hv = load i32, ptr %i.ga, align 8
  %i.hw = sub i32 %i.gw, %i.hv
  br label %bb.bw

.sink.split:                                      ; preds = %bb.ar, %bb.ap, %bb.at, %bb.as, %bb.aq
  %.sink426 = phi i64 [ 4, %bb.aq ], [ 8, %bb.at ], [ 4, %bb.as ], [ 4, %bb.ap ], [ 4, %bb.ar ]
  %.sink424 = phi i32 [ %i.hk, %bb.aq ], [ %i.hu, %bb.at ], [ %i.hn, %bb.as ], [ 0, %bb.ap ], [ 0, %bb.ar ]
  %i.hx = getelementptr i8, ptr %i.ha, i64 %.sink426
  store i32 %.sink424, ptr %i.hx, align 4
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.al
  %.0323.ph = phi ptr [ %i.gy, %bb.al ], [ %i.ha, %.sink.split ] ; 7 uses
  %i.hy = getelementptr i8, ptr %i.ez, i64 52     ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 4, !range !12, !noundef !13
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.ib = call fastcc i32 @read_c4(ptr noundef %0, i32 noundef %i.gw, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i) ; 0 uses
  %i.ic = load i32, ptr %i.d, align 4
  %i.id = lshr i32 %i.ic, 1                       ; 4 uses
  store i32 %i.id, ptr %.0323.ph, align 4
  %i.ie = load i32, ptr @hf_epp_v1_ccm_nid, align 4
  %i.if = load i32, ptr %i.i, align 4             ; 3 uses
  %i.ig = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.ie, ptr noundef %0, i32 noundef %i.gw, i32 noundef %i.if, i32 noundef %i.id, ptr noundef @.str.754, i32 noundef %i.id)
  call fastcc void @validate_c4(ptr noundef %1, ptr noundef %i.ig, i32 noundef %i.id, i32 noundef %i.if)
  %i.ih = add i32 %i.if, %i.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %proto_item_set_generated.exit

bb.ax:                                            ; preds = %bb.av
  %i.ii = load i32, ptr @hf_epp_v1_ccm_nid, align 4
  %i.ij = load i32, ptr %.0323.ph, align 4        ; 2 uses
  %i.ik = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.ii, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ij, ptr noundef @.str.754, i32 noundef %i.ij) ; 2 uses
  %.not.i375 = icmp eq ptr %i.ik, null
  br i1 %.not.i375, label %proto_item_set_generated.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.il = getelementptr i8, ptr %i.ik, i64 40
  %i.im = load ptr, ptr %i.il, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.im, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.in = getelementptr i8, ptr %i.im, i64 28     ; 2 uses
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = or i32 %i.io, 2
  store i32 %i.ip, ptr %i.in, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %.0318 = phi i32 [ %i.ih, %bb.aw ], [ %i.gw, %bb.ax ], [ %i.gw, %bb.ay ], [ %i.gw, %bb.az ] ; 6 uses
  %i.iq = load i8, ptr %i.hy, align 4, !range !12, !noundef !13
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %proto_item_set_generated.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  call fastcc void @read_c2(ptr noundef %0, i32 noundef %.0318, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j)
  %i.is = load i32, ptr @hf_epp_v1_ccm_slot, align 4
  %i.it = load i32, ptr %i.j, align 4             ; 3 uses
  %i.iu = load i16, ptr %i.e, align 2             ; 3 uses
  %i.iv = zext i16 %i.iu to i32                   ; 2 uses
  %i.iw = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.is, ptr noundef %0, i32 noundef %.0318, i32 noundef %i.it, i32 noundef %i.iv, ptr noundef @.str.755, i32 noundef %i.iv)
  %i.ix = icmp sgt i32 %i.it, 1
  %i.iy = icmp ult i16 %i.iu, 128
  %or.cond.i = and i1 %i.ix, %i.iy
  br i1 %or.cond.i, label %bb.bb, label %validate_c2.exit

bb.bb:                                            ; preds = %bb.ba
  %i.iz = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.iw, ptr noundef @ei_c2_c3_c4_format, ptr noundef @.str.738) ; 0 uses
  br label %validate_c2.exit

validate_c2.exit:                                 ; preds = %bb.ba, %bb.bb
  %i.ja = add i32 %i.it, %.0318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  br label %proto_item_set_generated.exit378

bb.bc:                                            ; preds = %proto_item_set_generated.exit
  %i.jb = load i32, ptr @hf_epp_v1_ccm_slot, align 4
  %i.jc = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.jb, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef @.str.756, i32 noundef 0) ; 2 uses
  %.not.i376 = icmp eq ptr %i.jc, null
  br i1 %.not.i376, label %proto_item_set_generated.exit378, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jd = getelementptr i8, ptr %i.jc, i64 40
  %i.je = load ptr, ptr %i.jd, align 8            ; 2 uses
  %.not5.i377 = icmp eq ptr %i.je, null
  br i1 %.not5.i377, label %proto_item_set_generated.exit378, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jf = getelementptr i8, ptr %i.je, i64 28     ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = or i32 %i.jg, 2
  store i32 %i.jh, ptr %i.jf, align 4
  br label %proto_item_set_generated.exit378

proto_item_set_generated.exit378:                 ; preds = %bb.be, %bb.bd, %bb.bc, %validate_c2.exit
  %i.ji = phi i16 [ %i.iu, %validate_c2.exit ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %bb.be ] ; 2 uses
  %.1319 = phi i32 [ %i.ja, %validate_c2.exit ], [ %.0318, %bb.bc ], [ %.0318, %bb.bd ], [ %.0318, %bb.be ] ; 6 uses
  br i1 %.not341, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %proto_item_set_generated.exit378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  %i.jj = call fastcc i32 @read_c4(ptr noundef %0, i32 noundef %.1319, ptr noundef nonnull %i.f, ptr noundef nonnull %i.k) ; 0 uses
  %i.jk = load i32, ptr @hf_epp_v1_ccm_pn, align 4
  %i.jl = load i32, ptr %i.k, align 4             ; 3 uses
  %i.jm = load i32, ptr %i.f, align 4             ; 4 uses
  %i.jn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.jk, ptr noundef %0, i32 noundef %.1319, i32 noundef %i.jl, i32 noundef %i.jm, ptr noundef @.str.757, i32 noundef %i.jm)
  call fastcc void @validate_c4(ptr noundef %1, ptr noundef %i.jn, i32 noundef %i.jm, i32 noundef %i.jl)
  %i.jo = getelementptr i8, ptr %.0323.ph, i64 4
  store i32 %i.jm, ptr %i.jo, align 4
  %i.jp = add i32 %i.jl, %.1319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %proto_item_set_generated.exit381

bb.bg:                                            ; preds = %proto_item_set_generated.exit378
  %i.jq = load i32, ptr @hf_epp_v1_ccm_pn, align 4
  %i.jr = getelementptr i8, ptr %.0323.ph, i64 4
  %i.js = load i32, ptr %i.jr, align 4            ; 2 uses
  %i.jt = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.jq, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.js, ptr noundef @.str.757, i32 noundef %i.js) ; 2 uses
  %.not.i379 = icmp eq ptr %i.jt, null
  br i1 %.not.i379, label %proto_item_set_generated.exit381, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ju = getelementptr i8, ptr %i.jt, i64 40
  %i.jv = load ptr, ptr %i.ju, align 8            ; 2 uses
  %.not5.i380 = icmp eq ptr %i.jv, null
  br i1 %.not5.i380, label %proto_item_set_generated.exit381, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jw = getelementptr i8, ptr %i.jv, i64 28     ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = or i32 %i.jx, 2
  store i32 %i.jy, ptr %i.jw, align 4
  br label %proto_item_set_generated.exit381

proto_item_set_generated.exit381:                 ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.2320 = phi i32 [ %i.jp, %bb.bf ], [ %.1319, %bb.bg ], [ %.1319, %bb.bh ], [ %.1319, %bb.bi ] ; 4 uses
  %i.jz = and i32 %i.gi, 8
  %.not346 = icmp eq i32 %i.jz, 0
  br i1 %.not346, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %proto_item_set_generated.exit381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  %i.ka = call fastcc i32 @read_c4(ptr noundef %0, i32 noundef %.2320, ptr noundef nonnull %i.g, ptr noundef nonnull %i.l) ; 0 uses
  %i.kb = load i32, ptr @hf_epp_v1_ccm_tnid, align 4
  %i.kc = load i32, ptr %i.l, align 4             ; 3 uses
  %i.kd = load i32, ptr %i.g, align 4             ; 3 uses
  %i.ke = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.kb, ptr noundef %0, i32 noundef %.2320, i32 noundef %i.kc, i32 noundef %i.kd, ptr noundef @.str.758, i32 noundef %i.kd)
  call fastcc void @validate_c4(ptr noundef %1, ptr noundef %i.ke, i32 noundef %i.kd, i32 noundef %i.kc)
  %i.kf = add i32 %i.kc, %.2320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %proto_item_set_generated.exit381
  %.3321 = phi i32 [ %i.kf, %bb.bj ], [ %.2320, %proto_item_set_generated.exit381 ] ; 4 uses
  %i.kg = and i32 %i.gi, 2
  %.not347 = icmp eq i32 %i.kg, 0
  br i1 %.not347, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  %i.kh = call fastcc i32 @read_c4(ptr noundef %0, i32 noundef %.3321, ptr noundef nonnull %i.h, ptr noundef nonnull %i.m) ; 0 uses
  %i.ki = load i32, ptr @hf_epp_v1_ccm_nnid, align 4
  %i.kj = load i32, ptr %i.m, align 4             ; 3 uses
  %i.kk = load i32, ptr %i.h, align 4             ; 3 uses
  %i.kl = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.gf, i32 noundef %i.ki, ptr noundef %0, i32 noundef %.3321, i32 noundef %i.kj, i32 noundef %i.kk, ptr noundef @.str.759, i32 noundef %i.kk)
  call fastcc void @validate_c4(ptr noundef %1, ptr noundef %i.kl, i32 noundef %i.kk, i32 noundef %i.kj)
  %i.km = add i32 %i.kj, %.3321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.4322 = phi i32 [ %i.km, %bb.bl ], [ %.3321, %bb.bk ] ; 9 uses
  %i.kn = load i32, ptr %i.ga, align 8
  %i.ko = sub i32 %.4322, %i.kn
  call void @proto_item_set_len(ptr noundef %i.gd, i32 noundef %i.ko)
  %i.kp = getelementptr i8, ptr %i.fb, i64 240    ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8            ; 2 uses
  %.not348 = icmp eq ptr %i.kq, null
  br i1 %.not348, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kr = getelementptr i8, ptr %1, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void @col_set_str(ptr noundef %i.ks, i32 noundef 25, ptr noundef nonnull %i.kq)
  %i.kt = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.gf, ptr noundef @ei_decode_failure) ; 0 uses
  %i.ku = load i32, ptr %i.ga, align 8
  %i.kv = sub i32 %.4322, %i.ku
  br label %bb.bw

bb.bo:                                            ; preds = %bb.bm
  %i.kw = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 0, i32 noundef %.4322)
  %i.kx = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.4322) ; 6 uses
  %i.ky = getelementptr i8, ptr %1, i64 416
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = zext i32 %i.kx to i64
  %i.lb = call ptr @tvb_memdup(ptr noundef %i.kz, ptr noundef %0, i32 noundef %.4322, i64 noundef %i.la) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  %i.lc = load i32, ptr %.0323.ph, align 4
  %i.ld = call i32 @llvm.bswap.i32(i32 %i.lc)
  store i32 %i.ld, ptr %i.n, align 4
  %i.le = lshr i16 %i.ji, 8
  %i.lf = trunc nuw i16 %i.le to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i8 %i.lf, ptr %i.lg, align 4
  %i.lh = trunc i16 %i.ji to i8
  %i.li = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  store i8 %i.lh, ptr %i.li, align 1
  %i.lj = getelementptr i8, ptr %.0323.ph, i64 4
  %i.lk = load i32, ptr %i.lj, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %4 = call i32 @llvm.bswap.i32(i32 %i.lk)
  store i32 %4, ptr %i.ll, align 1
  call void @proto_item_set_end(ptr noundef %i.gf, ptr noundef %0, i32 noundef %.4322)
  %i.lm = getelementptr i8, ptr %i.fy, i64 37
  %i.ln = load i8, ptr %i.lm, align 1, !range !12, !noundef !13
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lp = getelementptr i8, ptr %i.fy, i64 38
  %i.lq = load i8, ptr %i.lp, align 2
  %i.lr = zext i8 %i.lq to i32
  %i.ls = sub i32 %i.kx, %i.lr
  %i.lt = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.4322, i32 noundef %i.ls)
  %i.lu = getelementptr i8, ptr %i.fb, i64 224
  store ptr %i.lt, ptr %i.lu, align 8
  %i.lv = getelementptr i8, ptr %i.fb, i64 232
  store i16 0, ptr %i.lv, align 8
  br label %bb.bv

bb.bq:                                            ; preds = %bb.bo
  %i.lw = getelementptr i8, ptr %i.fb, i64 216    ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %.not349 = icmp eq ptr %i.lx, null
  br i1 %.not349, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ly = getelementptr i8, ptr %i.fy, i64 38
  %i.lz = load i8, ptr %i.ly, align 2
  %i.ma = zext i8 %i.lz to i32
  %i.mb = sub i32 %i.kx, %i.ma                    ; 2 uses
  %i.mc = call ptr @tvb_new_real_data(ptr noundef nonnull %i.lx, i32 noundef %i.mb, i32 noundef %i.mb) ; 3 uses
  call void @tvb_set_child_real_data_tvbuff(ptr noundef %0, ptr noundef %i.mc)
  %i.md = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.mc, ptr noundef @.str.760) ; 0 uses
  %i.me = getelementptr i8, ptr %i.fb, i64 224
  store ptr %i.mc, ptr %i.me, align 8
  %i.mf = getelementptr i8, ptr %i.fb, i64 232
  store i16 0, ptr %i.mf, align 8
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  %i.mg = call fastcc i32 @decrypt(ptr noundef %i.fy, ptr noundef %.0323.ph, ptr noundef nonnull %i.n, ptr noundef %i.kw, i32 noundef %.4322, ptr noundef %i.lb, i32 noundef %i.kx)
  %.not350 = icmp eq i32 %i.mg, 0
  br i1 %.not350, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mh = call ptr @wmem_file_scope()
  %i.mi = getelementptr i8, ptr %i.fy, i64 38     ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 2
  %i.mk = zext i8 %i.mj to i32
  %i.ml = sub i32 %i.kx, %i.mk
  %i.mm = zext i32 %i.ml to i64                   ; 2 uses
  %i.mn = call noalias ptr @wmem_alloc0(ptr noundef %i.mh, i64 noundef %i.mm) #22 ; 3 uses
  %i.mo = load i8, ptr %i.mi, align 2
  %i.mp = zext i8 %i.mo to i32
  %i.mq = sub i32 %i.kx, %i.mp                    ; 3 uses
  %i.mr = zext i32 %i.mq to i64
  %i.ms = call ptr @__memcpy_chk(ptr noundef %i.mn, ptr noundef %i.lb, i64 noundef %i.mr, i64 noundef %i.mm) #26, !alias.scope !88 ; 0 uses
  %i.mt = call ptr @tvb_new_real_data(ptr noundef %i.mn, i32 noundef %i.mq, i32 noundef %i.mq) ; 3 uses
  call void @tvb_set_child_real_data_tvbuff(ptr noundef %0, ptr noundef %i.mt)
  %i.mu = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.mt, ptr noundef @.str.760) ; 0 uses
  store ptr %i.mn, ptr %i.lw, align 8
  %i.mv = getelementptr i8, ptr %i.fb, i64 232
  store i16 0, ptr %i.mv, align 8
  %i.mw = getelementptr i8, ptr %i.fb, i64 224
  store ptr %i.mt, ptr %i.mw, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  store ptr @.str.761, ptr %i.kp, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.br, %bb.bu, %bb.bt, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  %i.mx = load i32, ptr %i.ga, align 8
  %i.my = sub i32 %.4322, %i.mx
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bn, %bb.au, %bb.ak, %.critedge374
  %.10 = phi i32 [ %i.kv, %bb.bn ], [ %i.my, %bb.bv ], [ %i.hw, %bb.au ], [ 0, %bb.ak ], [ 0, %.critedge374 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %.critedge371

.critedge371:                                     ; preds = %bb.k, %.critedge372, %bb.d, %bb.f, %bb.e, %bb.g, %bb.i, %bb.j, %.critedge365, %.critedge367, %.critedge, %bb.b, %bb.a, %bb.bw
  %.11 = phi i32 [ %.10, %bb.bw ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %.critedge ], [ %i.eu, %.critedge372 ], [ 2, %bb.j ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %.critedge365 ], [ 0, %.critedge367 ]
  ret i32 %.11
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_register_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dof_sessions_destroy_cb(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @gcry_cipher_close(ptr noundef %i.b)
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_open(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @gcry_cipher_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dof_cipher_data_destroy(ptr noundef %0) #0 {
bb.a:
  tail call void @gcry_cipher_close(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_real_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_child_real_data_tvbuff(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @decrypt(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %.sroa.5 = alloca [11 x i8], align 1            ; 5 uses
  %i.a = alloca [16 x i8], align 16               ; 30 uses
  %i.b = alloca [16 x i8], align 16               ; 21 uses
  %i.c = alloca [16 x i8], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.d = icmp eq ptr %5, null
  %i.e = icmp eq i32 %6, 0
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 38         ; 5 uses
  %i.g = load i8, ptr %i.f, align 2
  %i.h = add i8 %i.g, -17
  %or.cond47 = icmp ult i8 %i.h, -13
  br i1 %or.cond47, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = zext i32 %i.j to i64
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call ptr @g_hash_table_lookup(ptr noundef %i.o, ptr noundef nonnull %i.q)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ %i.r, %bb.e ]
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.5, ptr noundef align 1 dereferenceable(11) %2, i64 11, i1 false)
  %i.s = load i8, ptr %i.f, align 2               ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = sub i32 %6, %i.t
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge
end_hunk_1
