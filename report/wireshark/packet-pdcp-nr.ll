Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-pdcp-nr?download=true
inline.NumInlined: 58
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@uat_ue_keys_records_ueid_set_cb:bb.a

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_ueid_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.278, i32 noundef %i.a) ; 2 uses
  store ptr %i.b, ptr %1, align 8
  %i.c = tail call i64 @strlen(ptr noundef %i.b) #16
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_fld_chk_str(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_rrcCipherKeyString_set_cb(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a)
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  store ptr %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_rrcCipherKeyString_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit8

g_strdup_inline.exit8:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #16
  %i.f = trunc i64 %i.e to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #17 ; 2 uses
  store i8 0, ptr %i.g, align 1
  store ptr %i.g, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit8
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.f, %g_strdup_inline.exit8 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_upCipherKeyString_set_cb(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a)
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  store ptr %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_upCipherKeyString_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit8

g_strdup_inline.exit8:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #16
  %i.f = trunc i64 %i.e to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #17 ; 2 uses
  store i8 0, ptr %i.g, align 1
  store ptr %i.g, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit8
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.f, %g_strdup_inline.exit8 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_rrcIntegrityKeyString_set_cb(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a)
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  store ptr %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_rrcIntegrityKeyString_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit8

g_strdup_inline.exit8:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #16
  %i.f = trunc i64 %i.e to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #17 ; 2 uses
  store i8 0, ptr %i.g, align 1
  store ptr %i.g, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit8
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.f, %g_strdup_inline.exit8 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_upIntegrityKeyString_set_cb(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a)
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  store ptr %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_upIntegrityKeyString_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %g_strdup_inline.exit8

g_strdup_inline.exit8:                            ; preds = %bb.a
  %i.c = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.b)
  store ptr %i.c, ptr %1, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #16
  %i.f = trunc i64 %i.e to i32
  br label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #17 ; 2 uses
  store i8 0, ptr %i.g, align 1
  store ptr %i.g, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit8
  %storemerge = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.f, %g_strdup_inline.exit8 ]
  store i32 %storemerge, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_pdcp_nr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 10 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i8, align 1                       ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 12 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = getelementptr i8, ptr %1, i64 8          ; 14 uses
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @col_set_str(ptr noundef %i.r, i32 noundef 35, ptr noundef @.str.188)
  %i.s = tail call ptr @wmem_file_scope()
  %i.t = load i32, ptr @proto_pdcp_nr, align 4
  %i.u = tail call ptr @p_get_proto_data(ptr noundef %i.s, ptr noundef %1, i32 noundef %i.t, i32 noundef 0) ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.le, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0371 = phi ptr [ %i.u, %bb.a ], [ %3, %bb.b ] ; 75 uses
  %i.w = getelementptr i8, ptr %.0371, i64 12     ; 16 uses
  %i.x = load i32, ptr %i.w, align 4
  switch i32 %i.x, label %.thread [
    i32 1, label %bb.d
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %.0371, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %.0371, i64 16
  store i8 12, ptr %i.ab, align 8
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %.0371, i64 2
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = getelementptr i8, ptr %.0371, i64 8
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = tail call ptr @get_rlc_nr_drb_pdcp_mapping(i16 noundef zeroext %i.ad, i8 noundef zeroext %i.af) ; 7 uses
  %.not389 = icmp eq ptr %i.ag, null
  br i1 %.not389, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %.0371, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  %i.aj = getelementptr i8, ptr %.0371, i64 16    ; 2 uses
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %i.ag, i64 4
  %i.al = load i8, ptr %i.ak, align 4
  store i8 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr i8, ptr %i.ag, i64 6
  %i.an = load i8, ptr %i.am, align 2, !range !7, !noundef !8
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.sink.split, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %i.ag, i64 5
  %i.aq = load i8, ptr %i.ap, align 1
  store i8 %i.aq, ptr %i.aj, align 8
  %i.ar = getelementptr i8, ptr %i.ag, i64 7
  %i.as = load i8, ptr %i.ar, align 1, !range !7, !noundef !8
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.h
  %.sink731 = phi i8 [ 1, %bb.h ], [ 2, %bb.i ]
  %i.au = getelementptr i8, ptr %.0371, i64 19    ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = or i8 %i.av, %.sink731
  store i8 %i.aw, ptr %i.au, align 1
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.h
  %i.ax = getelementptr i8, ptr %i.ag, i64 8
  %i.ay = load i8, ptr %i.ax, align 4, !range !7, !noundef !8
  %i.az = getelementptr i8, ptr %.0371, i64 17
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = getelementptr i8, ptr %i.ag, i64 9
  %i.bb = load i8, ptr %i.ba, align 1, !range !7, !noundef !8
  %i.bc = getelementptr i8, ptr %.0371, i64 18
  store i8 %i.bb, ptr %i.bc, align 2
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.f, %bb.j, %bb.e
  %i.bd = load i32, ptr @global_pdcp_nr_layer_to_show, align 4
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.bf = tail call ptr @wmem_file_scope()
  %i.bg = load i32, ptr @proto_rlc_nr, align 4
  %i.bh = tail call ptr @p_get_proto_data(ptr noundef %i.bf, ptr noundef %1, i32 noundef %i.bg, i32 noundef 0)
  %.not390 = icmp eq ptr %i.bh, null
  br i1 %.not390, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %.thread
  %i.bi = load ptr, ptr %i.q, align 8
  tail call void @col_clear(ptr noundef %i.bi, i32 noundef 25)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink732 = phi i1 [ true, %bb.l ], [ false, %bb.k ]
  %i.bj = load ptr, ptr %i.q, align 8
  tail call void @col_set_writable(ptr noundef %i.bj, i32 noundef 25, i1 noundef zeroext %.sink732)
  %i.bk = load i32, ptr %i.w, align 4
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr i8, ptr %.0371, i64 4
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr i8, ptr %.0371, i64 17
  store i8 1, ptr %i.bp, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.not391 = icmp eq ptr %2, null
  br i1 %.not391, label %.thread504, label %bb.q

.thread504:                                       ; preds = %bb.p
  %i.bq = getelementptr i8, ptr %.0371, i64 24
  %i.br = getelementptr i8, ptr %.0371, i64 28
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = tail call ptr @val_to_str_const(i32 noundef %i.bs, ptr noundef @rohc_mode_vals, ptr noundef @.str.280)
  br label %bb.bm

bb.q:                                             ; preds = %bb.p
  %i.bu = load i32, ptr @proto_pdcp_nr, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.bu, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.bw = load i32, ptr @ett_pdcp, align 4
  %i.bx = tail call ptr @proto_item_add_subtree(ptr noundef %i.bv, i32 noundef %i.bw) ; 3 uses
  %i.by = getelementptr i8, ptr %.0371, i64 24    ; 5 uses
  %i.bz = getelementptr i8, ptr %.0371, i64 28    ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = tail call ptr @val_to_str_const(i32 noundef %i.ca, ptr noundef @rohc_mode_vals, ptr noundef @.str.280) ; 2 uses
  %.not392 = icmp eq ptr %i.bx, null
  br i1 %.not392, label %bb.bm, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = load i32, ptr @hf_pdcp_nr_configuration, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.bx, i32 noundef %i.cc, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 9 uses
  %i.ce = load i32, ptr @ett_pdcp_configuration, align 4
  %i.cf = tail call ptr @proto_item_add_subtree(ptr noundef %i.cd, i32 noundef %i.ce) ; 16 uses
  %i.cg = load i32, ptr @hf_pdcp_nr_direction, align 4
  %i.ch = load i8, ptr %.0371, align 8
  %i.ci = zext i8 %i.ch to i32
  %i.cj = tail call ptr @proto_tree_add_uint(ptr noundef %i.cf, i32 noundef %i.cg, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ci) ; 2 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %proto_item_set_generated.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.cl, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr i8, ptr %i.cl, i64 28     ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = or i32 %i.cn, 2
  store i32 %i.co, ptr %i.cm, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.t, %bb.s, %bb.r
  %i.cp = load i32, ptr @hf_pdcp_nr_plane, align 4
  %i.cq = load i32, ptr %i.w, align 4
  %i.cr = tail call ptr @proto_tree_add_uint(ptr noundef %i.cf, i32 noundef %i.cp, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cq) ; 2 uses
  %.not.i101.i = icmp eq ptr %i.cr, null
  br i1 %.not.i101.i, label %proto_item_set_generated.exit103.i, label %bb.u

bb.u:                                             ; preds = %proto_item_set_generated.exit.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not5.i102.i = icmp eq ptr %i.ct, null
  br i1 %.not5.i102.i, label %proto_item_set_generated.exit103.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr i8, ptr %i.ct, i64 28     ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = or i32 %i.cv, 2
  store i32 %i.cw, ptr %i.cu, align 4
  br label %proto_item_set_generated.exit103.i
end_hunk_0
begin_hunk_1_@dissect_pdcp_nr:bb.a
  %i.acw = load i32, ptr @hf_pdcp_nr_sequence_analysis_skipped, align 4
  %i.acx = call ptr @proto_tree_add_boolean(ptr noundef %i.abc, i32 noundef %i.acw, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 4 uses
  %.not.i177.i = icmp eq ptr %i.acx, null
  br i1 %.not.i177.i, label %proto_item_set_generated.exit179.i, label %bb.fk

bb.fk:                                            ; preds = %proto_item_set_generated.exit176.i
  %i.acy = getelementptr i8, ptr %i.acx, i64 40
  %i.acz = load ptr, ptr %i.acy, align 8          ; 2 uses
  %.not5.i178.i = icmp eq ptr %i.acz, null
  br i1 %.not5.i178.i, label %proto_item_set_generated.exit179.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ada = getelementptr i8, ptr %i.acz, i64 28   ; 2 uses
  %i.adb = load i32, ptr %i.ada, align 4
  %i.adc = or i32 %i.adb, 2
  store i32 %i.adc, ptr %i.ada, align 4
  br label %proto_item_set_generated.exit179.i

proto_item_set_generated.exit179.i:               ; preds = %bb.fl, %bb.fk, %proto_item_set_generated.exit176.i
  %i.add = getelementptr i8, ptr %.sink.i, i64 20 ; 2 uses
  %i.ade = load i32, ptr %i.add, align 4          ; 3 uses
  %i.adf = getelementptr i8, ptr %.sink.i, i64 16 ; 3 uses
  %i.adg = load i32, ptr %i.adf, align 4          ; 2 uses
  %.not157.i = icmp eq i32 %i.ade, %i.adg
  %i.adh = load i8, ptr %.0371, align 8           ; 2 uses
  %i.adi = zext i8 %i.adh to i32
  %i.adj = icmp eq i8 %i.adh, 0
  %i.adk = select i1 %i.adj, ptr @ei_pdcp_nr_sequence_analysis_sn_missing_ul, ptr @ei_pdcp_nr_sequence_analysis_sn_missing_dl ; 2 uses
  %i.adl = call ptr @val_to_str_const(i32 noundef %i.adi, ptr noundef @direction_vals, ptr noundef @.str.284) ; 2 uses
  %i.adm = load i16, ptr %i.lp, align 2
  %i.adn = zext i16 %i.adm to i32                 ; 2 uses
  %i.ado = getelementptr i8, ptr %.0371, i64 4
  %i.adp = load i32, ptr %i.ado, align 4
  %i.adq = call ptr @val_to_str_const(i32 noundef %i.adp, ptr noundef @bearer_type_vals, ptr noundef @.str.284) ; 2 uses
  %i.adr = getelementptr i8, ptr %.0371, i64 8
  %i.ads = load i8, ptr %i.adr, align 8
  %i.adt = zext i8 %i.ads to i32                  ; 2 uses
  br i1 %.not157.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %proto_item_set_generated.exit179.i
  %i.adu = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.acx, ptr noundef nonnull %i.adk, ptr noundef @.str.315, i32 noundef %i.adg, i32 noundef %i.ade, ptr noundef %i.adl, i32 noundef %i.adn, ptr noundef %i.adq, i32 noundef %i.adt) ; 0 uses
  %i.adv = load i32, ptr %i.adf, align 4
  %i.adw = load i32, ptr %i.add, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aba, ptr noundef @.str.316, i32 noundef %i.adv, i32 noundef %i.adw)
  br label %bb.fu

bb.fn:                                            ; preds = %proto_item_set_generated.exit179.i
  %i.adx = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.acx, ptr noundef nonnull %i.adk, ptr noundef @.str.317, i32 noundef %i.ade, ptr noundef %i.adl, i32 noundef %i.adn, ptr noundef %i.adq, i32 noundef %i.adt) ; 0 uses
  %i.ady = load i32, ptr %i.adf, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aba, ptr noundef @.str.318, i32 noundef %i.ady)
  br label %bb.fu

bb.fo:                                            ; preds = %bb.fa
  %i.adz = load i32, ptr @hf_pdcp_nr_sequence_analysis_ok, align 4
  %i.aea = call ptr @proto_tree_add_boolean(ptr noundef %i.abc, i32 noundef %i.adz, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef 0) ; 2 uses
  %.not.i180.i = icmp eq ptr %i.aea, null
  br i1 %.not.i180.i, label %proto_item_set_generated.exit182.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aeb = getelementptr i8, ptr %i.aea, i64 40
  %i.aec = load ptr, ptr %i.aeb, align 8          ; 2 uses
  %.not5.i181.i = icmp eq ptr %i.aec, null
  br i1 %.not5.i181.i, label %proto_item_set_generated.exit182.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aed = getelementptr i8, ptr %i.aec, i64 28   ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 4
  %i.aef = or i32 %i.aee, 2
  store i32 %i.aef, ptr %i.aed, align 4
  br label %proto_item_set_generated.exit182.i

proto_item_set_generated.exit182.i:               ; preds = %bb.fq, %bb.fp, %bb.fo
  %i.aeg = load i32, ptr @hf_pdcp_nr_sequence_analysis_repeated, align 4
  %i.aeh = call ptr @proto_tree_add_boolean(ptr noundef %i.abc, i32 noundef %i.aeg, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 3 uses
  %.not.i183.i = icmp eq ptr %i.aeh, null
  br i1 %.not.i183.i, label %proto_item_set_generated.exit185.i, label %bb.fr

bb.fr:                                            ; preds = %proto_item_set_generated.exit182.i
  %i.aei = getelementptr i8, ptr %i.aeh, i64 40
  %i.aej = load ptr, ptr %i.aei, align 8          ; 2 uses
  %.not5.i184.i = icmp eq ptr %i.aej, null
  br i1 %.not5.i184.i, label %proto_item_set_generated.exit185.i, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aek = getelementptr i8, ptr %i.aej, i64 28   ; 2 uses
  %i.ael = load i32, ptr %i.aek, align 4
  %i.aem = or i32 %i.ael, 2
  store i32 %i.aem, ptr %i.aek, align 4
  br label %proto_item_set_generated.exit185.i

proto_item_set_generated.exit185.i:               ; preds = %bb.fs, %bb.fr, %proto_item_set_generated.exit182.i
  %i.aen = load i8, ptr %.0371, align 8           ; 2 uses
  %i.aeo = zext i8 %i.aen to i32
  %i.aep = icmp eq i8 %i.aen, 0
  %i.aeq = select i1 %i.aep, ptr @ei_pdcp_nr_sequence_analysis_sn_repeated_ul, ptr @ei_pdcp_nr_sequence_analysis_sn_repeated_dl
  %i.aer = getelementptr i8, ptr %.sink.i, i64 16 ; 2 uses
  %i.aes = load i32, ptr %i.aer, align 4
  %i.aet = call ptr @val_to_str_const(i32 noundef %i.aeo, ptr noundef @direction_vals, ptr noundef @.str.284)
  %i.aeu = load i16, ptr %i.lp, align 2
  %i.aev = zext i16 %i.aeu to i32
  %i.aew = getelementptr i8, ptr %.0371, i64 4
  %i.aex = load i32, ptr %i.aew, align 4
  %i.aey = call ptr @val_to_str_const(i32 noundef %i.aex, ptr noundef @bearer_type_vals, ptr noundef @.str.284)
  %i.aez = getelementptr i8, ptr %.0371, i64 8
  %i.afa = load i8, ptr %i.aez, align 8
  %i.afb = zext i8 %i.afa to i32
  %i.afc = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aeh, ptr noundef nonnull %i.aeq, ptr noundef @.str.319, i32 noundef %i.aes, ptr noundef %i.aet, i32 noundef %i.aev, ptr noundef %i.aey, i32 noundef %i.afb) ; 0 uses
  %i.afd = load i32, ptr %i.aer, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aba, ptr noundef @.str.320, i32 noundef %i.afd)
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fa
  %i.afe = load i8, ptr %.0371, align 8           ; 2 uses
  %i.aff = zext i8 %i.afe to i32
  %i.afg = icmp eq i8 %i.afe, 0
  %i.afh = select i1 %i.afg, ptr @ei_pdcp_nr_sequence_analysis_wrong_sequence_number_ul, ptr @ei_pdcp_nr_sequence_analysis_wrong_sequence_number_dl
  %i.afi = call ptr @val_to_str_const(i32 noundef %i.aff, ptr noundef @direction_vals, ptr noundef @.str.284)
  %i.afj = load i16, ptr %i.lp, align 2
  %i.afk = zext i16 %i.afj to i32
  %i.afl = getelementptr i8, ptr %.0371, i64 4
  %i.afm = load i32, ptr %i.afl, align 4
  %i.afn = call ptr @val_to_str_const(i32 noundef %i.afm, ptr noundef @bearer_type_vals, ptr noundef @.str.284)
  %i.afo = getelementptr i8, ptr %.0371, i64 8
  %i.afp = load i8, ptr %i.afo, align 8
  %i.afq = zext i8 %i.afp to i32
  %i.afr = load i32, ptr %i.abn, align 4
  %i.afs = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.abp, ptr noundef nonnull %i.afh, ptr noundef @.str.321, ptr noundef %i.afi, i32 noundef %i.afk, ptr noundef %i.afn, i32 noundef %i.afq, i32 noundef %i.vr, i32 noundef %i.afr) ; 0 uses
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %proto_item_set_generated.exit185.i, %bb.fn, %bb.fm, %bb.fg, %proto_item_set_generated.exit173.i
  %.not159.i = icmp eq i32 %.sroa.0.0, 0
  %.not160.i = icmp eq i32 %.sroa.7.0, 0
  %or.cond546 = select i1 %.not159.i, i1 %.not160.i, i1 false
  br i1 %or.cond546, label %.critedge421, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aft = load i32, ptr @hf_pdcp_nr_security_bearer, align 4
  %i.afu = getelementptr i8, ptr %.0371, i64 8    ; 2 uses
  %i.afv = load i8, ptr %i.afu, align 8
  %i.afw = zext i8 %i.afv to i32
  %i.afx = add nsw i32 %i.afw, -1
  %i.afy = call ptr @proto_tree_add_uint(ptr noundef %.0369, i32 noundef %i.aft, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.afx) ; 2 uses
  %.not.i186.i = icmp eq ptr %i.afy, null
  br i1 %.not.i186.i, label %proto_item_set_generated.exit188.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.afz = getelementptr i8, ptr %i.afy, i64 40
  %i.aga = load ptr, ptr %i.afz, align 8          ; 2 uses
  %.not5.i187.i = icmp eq ptr %i.aga, null
  br i1 %.not5.i187.i, label %proto_item_set_generated.exit188.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.agb = getelementptr i8, ptr %i.aga, i64 28   ; 2 uses
  %i.agc = load i32, ptr %i.agb, align 4
  %i.agd = or i32 %i.agc, 2
  store i32 %i.agd, ptr %i.agb, align 4
  br label %proto_item_set_generated.exit188.i

proto_item_set_generated.exit188.i:               ; preds = %bb.fx, %bb.fw, %bb.fv
  %i.age = load i8, ptr %i.afu, align 8
  %i.agf = add i8 %i.age, -1                      ; 4 uses
  %i.agg = load i32, ptr @hf_pdcp_nr_security_direction, align 4
  %i.agh = load i8, ptr %.0371, align 8
  %i.agi = zext i8 %i.agh to i32
  %i.agj = call ptr @proto_tree_add_uint(ptr noundef %.0369, i32 noundef %i.agg, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.agi) ; 2 uses
  %.not.i189.i = icmp eq ptr %i.agj, null
  br i1 %.not.i189.i, label %proto_item_set_generated.exit191.i, label %bb.fy

bb.fy:                                            ; preds = %proto_item_set_generated.exit188.i
  %i.agk = getelementptr i8, ptr %i.agj, i64 40
  %i.agl = load ptr, ptr %i.agk, align 8          ; 2 uses
  %.not5.i190.i = icmp eq ptr %i.agl, null
  br i1 %.not5.i190.i, label %proto_item_set_generated.exit191.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.agm = getelementptr i8, ptr %i.agl, i64 28   ; 2 uses
  %i.agn = load i32, ptr %i.agm, align 4
  %i.ago = or i32 %i.agn, 2
  store i32 %i.ago, ptr %i.agm, align 4
  br label %proto_item_set_generated.exit191.i

proto_item_set_generated.exit191.i:               ; preds = %bb.fz, %bb.fy, %proto_item_set_generated.exit188.i
  %i.agp = load i8, ptr %i.abv, align 8
  switch i8 %i.agp, label %bb.gb [
    i8 12, label %bb.gc
    i8 18, label %bb.ga
  ]

bb.ga:                                            ; preds = %proto_item_set_generated.exit191.i
  br label %bb.gc

bb.gb:                                            ; preds = %proto_item_set_generated.exit191.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.312, ptr noundef @.str.313, i32 noundef 969) #18
  unreachable

bb.gc:                                            ; preds = %bb.ga, %proto_item_set_generated.exit191.i
  %.0150.i = phi i32 [ 262144, %bb.ga ], [ 4096, %proto_item_set_generated.exit191.i ]
  %i.agq = getelementptr i8, ptr %.sink.i, i64 24
  %i.agr = load i32, ptr %i.agq, align 4
  %i.ags = mul i32 %i.agr, %.0150.i
  %i.agt = add i32 %i.ags, %i.vr                  ; 3 uses
  %i.agu = load i32, ptr @hf_pdcp_nr_security_count, align 4
  %i.agv = call ptr @proto_tree_add_uint(ptr noundef %.0369, i32 noundef %i.agu, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.agt) ; 2 uses
  %.not.i192.i = icmp eq ptr %i.agv, null
  br i1 %.not.i192.i, label %proto_item_set_generated.exit194.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.agw = getelementptr i8, ptr %i.agv, i64 40
  %i.agx = load ptr, ptr %i.agw, align 8          ; 2 uses
  %.not5.i193.i = icmp eq ptr %i.agx, null
  br i1 %.not5.i193.i, label %proto_item_set_generated.exit194.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.agy = getelementptr i8, ptr %i.agx, i64 28   ; 2 uses
  %i.agz = load i32, ptr %i.agy, align 4
  %i.aha = or i32 %i.agz, 2
  store i32 %i.aha, ptr %i.agy, align 4
  br label %proto_item_set_generated.exit194.i

proto_item_set_generated.exit194.i:               ; preds = %bb.ge, %bb.gd, %bb.gc
  %.sroa.21588.sroa.0.0.extract.trunc = trunc i32 %i.agt to i24 ; 4 uses
  %.sroa.21588.sroa.6.0.extract.shift = lshr i32 %i.agt, 24
  %.sroa.21588.sroa.6.0.extract.trunc = trunc nuw i32 %.sroa.21588.sroa.6.0.extract.shift to i8 ; 4 uses
  %i.ahb = load i16, ptr %i.lp, align 2           ; 2 uses
  %i.ahc = load i32, ptr %i.lr, align 4
  %i.ahd = load ptr, ptr @pdcp_security_key_hash, align 8
  %i.ahe = zext i16 %i.ahb to i32                 ; 2 uses
  %i.ahf = zext i16 %i.ahb to i64
  %i.ahg = inttoptr i64 %i.ahf to ptr
  %i.ahh = call ptr @wmem_map_lookup(ptr noundef %i.ahd, ptr noundef %i.ahg) ; 3 uses
  %.not.i195.i = icmp eq ptr %i.ahh, null
  br i1 %.not.i195.i, label %.preheader.i.i, label %bb.gf

.preheader.i.i:                                   ; preds = %proto_item_set_generated.exit194.i
  %i.ahi = load i32, ptr @num_ue_keys_uat, align 4 ; 2 uses
  %.not63.i.i = icmp eq i32 %i.ahi, 0
  br i1 %.not63.i.i, label %.critedge421, label %.lr.ph60.i.i

.lr.ph60.i.i:                                     ; preds = %.preheader.i.i
  %i.ahj = load ptr, ptr @uat_ue_keys_records, align 8
  %wide.trip.count.i.i = zext i32 %i.ahi to i64
  br label %bb.gr

bb.gf:                                            ; preds = %proto_item_set_generated.exit194.i
  %i.ahk = call ptr @wmem_file_scope()
  %i.ahl = call noalias dereferenceable_or_null(112) ptr @wmem_alloc0(ptr noundef %i.ahk, i64 noundef 112) #15 ; 15 uses
  store i32 %i.ahe, ptr %i.ahl, align 8
  %i.ahm = load i32, ptr %i.ahh, align 8          ; 2 uses
  %i.ahn = icmp sgt i32 %i.ahm, 0
  br i1 %i.ahn, label %.lr.ph.i.i, label %look_up_keys_record.exit.i

.lr.ph.i.i:                                       ; preds = %bb.gf
  %i.aho = getelementptr i8, ptr %i.ahl, i64 107  ; 2 uses
  %i.ahp = getelementptr i8, ptr %i.ahl, i64 32
  %i.ahq = getelementptr i8, ptr %i.ahl, i64 91
  %i.ahr = getelementptr i8, ptr %i.ahl, i64 73   ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.ahl, i64 16
  %i.aht = getelementptr i8, ptr %i.ahl, i64 57
  %i.ahu = getelementptr i8, ptr %i.ahl, i64 90   ; 2 uses
  %i.ahv = getelementptr i8, ptr %i.ahl, i64 24
  %i.ahw = getelementptr i8, ptr %i.ahl, i64 74
  %i.ahx = getelementptr i8, ptr %i.ahl, i64 56   ; 2 uses
  %i.ahy = getelementptr i8, ptr %i.ahl, i64 8
  %i.ahz = getelementptr i8, ptr %i.ahl, i64 40
  %i.aia = zext nneg i32 %i.ahm to i64
  br label %bb.gg

bb.gg:                                            ; preds = %.sink.split.i.i, %.lr.ph.i.i
  %.0222.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1223.i, %.sink.split.i.i ] ; 9 uses
  %.0218.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1219.i, %.sink.split.i.i ] ; 9 uses
  %.0214.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1215.i, %.sink.split.i.i ] ; 9 uses
  %.0211.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1212.i, %.sink.split.i.i ] ; 9 uses
  %indvars.iv.i.i = phi i64 [ %i.aia, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.sink.split.i.i ] ; 3 uses
  %i.aib = getelementptr [40 x i8], ptr %i.ahh, i64 %indvars.iv.i.i ; 14 uses
  %i.aic = getelementptr i8, ptr %i.aib, i64 4
  %i.aid = load i32, ptr %i.aic, align 4          ; 5 uses
  %i.aie = icmp ugt i32 %i.ahc, %i.aid
  br i1 %i.aie, label %bb.gh, label %.sink.split.i.i

bb.gh:                                            ; preds = %bb.gg
  %i.aif = getelementptr i8, ptr %i.aib, i64 -32
  %i.aig = load i32, ptr %i.aif, align 8
  switch i32 %i.aig, label %.sink.split.i.i [
    i32 0, label %bb.gi
    i32 1, label %bb.gk
    i32 2, label %bb.gm
    i32 3, label %bb.go
  ]

bb.gi:                                            ; preds = %bb.gh
  %i.aih = load i8, ptr %i.ahx, align 8, !range !7, !noundef !8
  %i.aii = trunc nuw i8 %i.aih to i1
  br i1 %i.aii, label %.sink.split.i.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aij = getelementptr i8, ptr %i.aib, i64 -24
  %i.aik = load ptr, ptr %i.aij, align 8
  store ptr %i.aik, ptr %i.ahy, align 8
  %i.ail = getelementptr i8, ptr %i.aib, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ahz, ptr noundef align 8 dereferenceable(16) %i.ail, i64 noundef 16, i1 noundef false) #14
  %i.aim = load i8, ptr %i.aib, align 8, !range !7, !noundef !8
  store i8 %i.aim, ptr %i.ahx, align 8
  br label %.sink.split.i.i

bb.gk:                                            ; preds = %bb.gh
  %i.ain = load i8, ptr %i.ahu, align 2, !range !7, !noundef !8
  %i.aio = trunc nuw i8 %i.ain to i1
  br i1 %i.aio, label %.sink.split.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aip = getelementptr i8, ptr %i.aib, i64 -24
  %i.aiq = load ptr, ptr %i.aip, align 8
  store ptr %i.aiq, ptr %i.ahv, align 8
  %i.air = getelementptr i8, ptr %i.aib, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(16) %i.ahw, ptr noundef align 8 dereferenceable(16) %i.air, i64 noundef 16, i1 noundef false) #14
  %i.ais = load i8, ptr %i.aib, align 8, !range !7, !noundef !8
  store i8 %i.ais, ptr %i.ahu, align 2
  br label %.sink.split.i.i

bb.gm:                                            ; preds = %bb.gh
  %i.ait = load i8, ptr %i.ahr, align 1, !range !7, !noundef !8
  %i.aiu = trunc nuw i8 %i.ait to i1
  br i1 %i.aiu, label %.sink.split.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.aiv = getelementptr i8, ptr %i.aib, i64 -24
  %i.aiw = load ptr, ptr %i.aiv, align 8
  store ptr %i.aiw, ptr %i.ahs, align 8
  %i.aix = getelementptr i8, ptr %i.aib, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %i.aht, ptr noundef align 8 dereferenceable(16) %i.aix, i64 noundef 16, i1 noundef false) #14
  %i.aiy = load i8, ptr %i.aib, align 8, !range !7, !noundef !8
  store i8 %i.aiy, ptr %i.ahr, align 1
  br label %.sink.split.i.i

bb.go:                                            ; preds = %bb.gh
  %i.aiz = load i8, ptr %i.aho, align 1, !range !7, !noundef !8
  %i.aja = trunc nuw i8 %i.aiz to i1
  br i1 %i.aja, label %.sink.split.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajb = getelementptr i8, ptr %i.aib, i64 -24
  %i.ajc = load ptr, ptr %i.ajb, align 8
  store ptr %i.ajc, ptr %i.ahp, align 8
  %i.ajd = getelementptr i8, ptr %i.aib, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %i.ahq, ptr noundef align 8 dereferenceable(16) %i.ajd, i64 noundef 16, i1 noundef false) #14
  %i.aje = load i8, ptr %i.aib, align 8, !range !7, !noundef !8
  store i8 %i.aje, ptr %i.aho, align 1
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg
  %.1223.i = phi i32 [ %.0222.i, %bb.gh ], [ %.0222.i, %bb.gi ], [ %.0222.i, %bb.gg ], [ %.0222.i, %bb.gk ], [ %.0222.i, %bb.gm ], [ %.0222.i, %bb.go ], [ %i.aid, %bb.gj ], [ %.0222.i, %bb.gl ], [ %.0222.i, %bb.gn ], [ %.0222.i, %bb.gp ] ; 2 uses
  %.1219.i = phi i32 [ %.0218.i, %bb.gh ], [ %.0218.i, %bb.gi ], [ %.0218.i, %bb.gg ], [ %.0218.i, %bb.gk ], [ %.0218.i, %bb.gm ], [ %.0218.i, %bb.go ], [ %.0218.i, %bb.gj ], [ %i.aid, %bb.gl ], [ %.0218.i, %bb.gn ], [ %.0218.i, %bb.gp ] ; 2 uses
  %.1215.i = phi i32 [ %.0214.i, %bb.gh ], [ %.0214.i, %bb.gi ], [ %.0214.i, %bb.gg ], [ %.0214.i, %bb.gk ], [ %.0214.i, %bb.gm ], [ %.0214.i, %bb.go ], [ %.0214.i, %bb.gj ], [ %.0214.i, %bb.gl ], [ %i.aid, %bb.gn ], [ %.0214.i, %bb.gp ] ; 2 uses
  %.1212.i = phi i32 [ %.0211.i, %bb.gh ], [ %.0211.i, %bb.gi ], [ %.0211.i, %bb.gg ], [ %.0211.i, %bb.gk ], [ %.0211.i, %bb.gm ], [ %.0211.i, %bb.go ], [ %.0211.i, %bb.gj ], [ %.0211.i, %bb.gl ], [ %.0211.i, %bb.gn ], [ %i.aid, %bb.gp ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.ajf = icmp sgt i64 %indvars.iv.i.i, 1
  br i1 %i.ajf, label %bb.gg, label %look_up_keys_record.exit.i, !llvm.loop !11

bb.gq:                                            ; preds = %bb.gr
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next67.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge421, label %bb.gr, !llvm.loop !12

bb.gr:                                            ; preds = %bb.gq, %.lr.ph60.i.i
  %indvars.iv66.i.i = phi i64 [ 0, %.lr.ph60.i.i ], [ %indvars.iv.next67.i.i, %bb.gq ] ; 2 uses
  %i.ajg = getelementptr [112 x i8], ptr %i.ahj, i64 %indvars.iv66.i.i ; 2 uses
  %i.ajh = load i32, ptr %i.ajg, align 8
  %i.aji = icmp eq i32 %i.ajh, %i.ahe
  br i1 %i.aji, label %look_up_keys_record.exit.i, label %bb.gq

look_up_keys_record.exit.i:                       ; preds = %.sink.split.i.i, %bb.gr, %bb.gf
  %.3225.i = phi i32 [ 0, %bb.gr ], [ 0, %bb.gf ], [ %.1223.i, %.sink.split.i.i ]
  %.3221.i = phi i32 [ 0, %bb.gr ], [ 0, %bb.gf ], [ %.1219.i, %.sink.split.i.i ]
  %.3217.i = phi i32 [ 0, %bb.gr ], [ 0, %bb.gf ], [ %.1215.i, %.sink.split.i.i ]
  %.3.i = phi i32 [ 0, %bb.gr ], [ 0, %bb.gf ], [ %.1212.i, %.sink.split.i.i ]
  %.055.i.i = phi ptr [ %i.ajg, %bb.gr ], [ %i.ahl, %bb.gf ], [ %i.ahl, %.sink.split.i.i ] ; 11 uses
  %.not161.i = icmp eq ptr %.055.i.i, null
  br i1 %.not161.i, label %.critedge421, label %bb.gs

bb.gs:                                            ; preds = %look_up_keys_record.exit.i
  %i.ajj = load i32, ptr %i.w, align 4
  %i.ajk = icmp eq i32 %i.ajj, 1
  br i1 %i.ajk, label %bb.gt, label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  %i.ajl = getelementptr i8, ptr %.055.i.i, i64 56
  %i.ajm = load i8, ptr %i.ajl, align 8, !range !7, !noundef !8
  %i.ajn = trunc nuw i8 %i.ajm to i1              ; 3 uses
  br i1 %i.ajn, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.ajo = getelementptr i8, ptr %.055.i.i, i64 8
  %i.ajp = load ptr, ptr %i.ajo, align 8
  %i.ajq = getelementptr i8, ptr %.055.i.i, i64 40
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %.sroa.11.0 = phi ptr [ %i.ajq, %bb.gu ], [ null, %bb.gt ] ; 2 uses
  %.0147.i = phi ptr [ %i.ajp, %bb.gu ], [ null, %bb.gt ] ; 2 uses
  %.0145.i = phi i32 [ %.3225.i, %bb.gu ], [ 0, %bb.gt ] ; 2 uses
  %i.ajr = getelementptr i8, ptr %.055.i.i, i64 90
  %i.ajs = load i8, ptr %i.ajr, align 2, !range !7, !noundef !8
  %i.ajt = trunc nuw i8 %i.ajs to i1
  br i1 %i.ajt, label %.sink.split.i451, label %bb.gz

bb.gw:                                            ; preds = %bb.gs
  %i.aju = getelementptr i8, ptr %.055.i.i, i64 73
  %i.ajv = load i8, ptr %i.aju, align 1, !range !7, !noundef !8
  %i.ajw = trunc nuw i8 %i.ajv to i1              ; 3 uses
  br i1 %i.ajw, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.ajx = getelementptr i8, ptr %.055.i.i, i64 16
  %i.ajy = load ptr, ptr %i.ajx, align 8
  %i.ajz = getelementptr i8, ptr %.055.i.i, i64 57
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.sroa.11.1 = phi ptr [ %i.ajz, %bb.gx ], [ null, %bb.gw ] ; 2 uses
  %.1148.i = phi ptr [ %i.ajy, %bb.gx ], [ null, %bb.gw ] ; 2 uses
  %.1.i449 = phi i32 [ %.3217.i, %bb.gx ], [ 0, %bb.gw ] ; 2 uses
  %i.aka = getelementptr i8, ptr %.055.i.i, i64 107
  %i.akb = load i8, ptr %i.aka, align 1, !range !7, !noundef !8
  %i.akc = trunc nuw i8 %i.akb to i1
  br i1 %i.akc, label %.sink.split.i451, label %bb.gz

.sink.split.i451:                                 ; preds = %bb.gy, %bb.gv
  %.sroa.11.2 = phi ptr [ %.sroa.11.0, %bb.gv ], [ %.sroa.11.1, %bb.gy ]
  %.sroa.16.2 = phi i1 [ %i.ajn, %bb.gv ], [ %i.ajw, %bb.gy ]
  %.sink279.i = phi i64 [ 24, %bb.gv ], [ 32, %bb.gy ]
  %.sink278.i = phi i64 [ 74, %bb.gv ], [ 91, %bb.gy ]
  %.2149.ph.i = phi ptr [ %.0147.i, %bb.gv ], [ %.1148.i, %bb.gy ]
  %.2.ph.i = phi i32 [ %.0145.i, %bb.gv ], [ %.1.i449, %bb.gy ]
  %.0.ph.i = phi i32 [ %.3221.i, %bb.gv ], [ %.3.i, %bb.gy ]
  %i.akd = getelementptr i8, ptr %.055.i.i, i64 %.sink279.i
  %i.ake = load ptr, ptr %i.akd, align 8
  %i.akf = getelementptr i8, ptr %.055.i.i, i64 %.sink278.i
  br label %bb.gz

bb.gz:                                            ; preds = %.sink.split.i451, %bb.gy, %bb.gv
  %.sroa.11.3 = phi ptr [ %.sroa.11.2, %.sink.split.i451 ], [ %.sroa.11.0, %bb.gv ], [ %.sroa.11.1, %bb.gy ]
  %.sroa.14.0 = phi ptr [ %i.akf, %.sink.split.i451 ], [ null, %bb.gv ], [ null, %bb.gy ]
  %.sroa.16.3 = phi i1 [ %.sroa.16.2, %.sink.split.i451 ], [ %i.ajn, %bb.gv ], [ %i.ajw, %bb.gy ]
  %.sroa.19.0 = phi i1 [ true, %.sink.split.i451 ], [ false, %bb.gv ], [ false, %bb.gy ]
  %.2149.i = phi ptr [ %.2149.ph.i, %.sink.split.i451 ], [ %.0147.i, %bb.gv ], [ %.1148.i, %bb.gy ] ; 2 uses
  %.0146.i = phi ptr [ %i.ake, %.sink.split.i451 ], [ null, %bb.gv ], [ null, %bb.gy ] ; 2 uses
  %.2.i = phi i32 [ %.2.ph.i, %.sink.split.i451 ], [ %.0145.i, %bb.gv ], [ %.1.i449, %bb.gy ] ; 2 uses
  %.0.i450 = phi i32 [ %.0.ph.i, %.sink.split.i451 ], [ 0, %bb.gv ], [ 0, %bb.gy ] ; 2 uses
  %.not162.i = icmp eq ptr %.2149.i, null
  br i1 %.not162.i, label %proto_item_set_generated.exit201.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.akg = load i32, ptr @hf_pdcp_nr_security_cipher_key, align 4
  %i.akh = call ptr @proto_tree_add_string(ptr noundef %.0369, i32 noundef %i.akg, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %.2149.i) ; 2 uses
  %.not.i196.i = icmp eq ptr %i.akh, null
  br i1 %.not.i196.i, label %proto_item_set_generated.exit198.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aki = getelementptr i8, ptr %i.akh, i64 40
  %i.akj = load ptr, ptr %i.aki, align 8          ; 2 uses
  %.not5.i197.i = icmp eq ptr %i.akj, null
  br i1 %.not5.i197.i, label %proto_item_set_generated.exit198.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.akk = getelementptr i8, ptr %i.akj, i64 28   ; 2 uses
  %i.akl = load i32, ptr %i.akk, align 4
  %i.akm = or i32 %i.akl, 2
  store i32 %i.akm, ptr %i.akk, align 4
  br label %proto_item_set_generated.exit198.i

proto_item_set_generated.exit198.i:               ; preds = %bb.hc, %bb.hb, %bb.ha
  %.not163.i = icmp eq i32 %.2.i, 0
  br i1 %.not163.i, label %proto_item_set_generated.exit201.i, label %bb.hd

bb.hd:                                            ; preds = %proto_item_set_generated.exit198.i
  %i.akn = load i32, ptr @hf_pdcp_nr_security_cipher_key_setup_frame, align 4
  %i.ako = call ptr @proto_tree_add_uint(ptr noundef %.0369, i32 noundef %i.akn, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.2.i) ; 2 uses
  %.not.i199.i = icmp eq ptr %i.ako, null
  br i1 %.not.i199.i, label %proto_item_set_generated.exit201.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.akp = getelementptr i8, ptr %i.ako, i64 40
  %i.akq = load ptr, ptr %i.akp, align 8          ; 2 uses
  %.not5.i200.i = icmp eq ptr %i.akq, null
  br i1 %.not5.i200.i, label %proto_item_set_generated.exit201.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.akr = getelementptr i8, ptr %i.akq, i64 28   ; 2 uses
  %i.aks = load i32, ptr %i.akr, align 4
  %i.akt = or i32 %i.aks, 2
  store i32 %i.akt, ptr %i.akr, align 4
  br label %proto_item_set_generated.exit201.i

proto_item_set_generated.exit201.i:               ; preds = %bb.hf, %bb.he, %bb.hd, %proto_item_set_generated.exit198.i, %bb.gz
  %.not164.i = icmp eq ptr %.0146.i, null
  br i1 %.not164.i, label %proto_item_set_generated.exit207.i, label %bb.hg

bb.hg:                                            ; preds = %proto_item_set_generated.exit201.i
  %i.aku = load i32, ptr @hf_pdcp_nr_security_integrity_key, align 4
  %i.akv = call ptr @proto_tree_add_string(ptr noundef %.0369, i32 noundef %i.aku, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %.0146.i) ; 2 uses
  %.not.i202.i = icmp eq ptr %i.akv, null
  br i1 %.not.i202.i, label %proto_item_set_generated.exit204.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.akw = getelementptr i8, ptr %i.akv, i64 40
  %i.akx = load ptr, ptr %i.akw, align 8          ; 2 uses
  %.not5.i203.i = icmp eq ptr %i.akx, null
  br i1 %.not5.i203.i, label %proto_item_set_generated.exit204.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.aky = getelementptr i8, ptr %i.akx, i64 28   ; 2 uses
  %i.akz = load i32, ptr %i.aky, align 4
  %i.ala = or i32 %i.akz, 2
  store i32 %i.ala, ptr %i.aky, align 4
  br label %proto_item_set_generated.exit204.i

proto_item_set_generated.exit204.i:               ; preds = %bb.hi, %bb.hh, %bb.hg
  %.not165.i = icmp eq i32 %.0.i450, 0
  br i1 %.not165.i, label %proto_item_set_generated.exit207.i, label %bb.hj

bb.hj:                                            ; preds = %proto_item_set_generated.exit204.i
  %i.alb = load i32, ptr @hf_pdcp_nr_security_integrity_key_setup_frame, align 4
  %i.alc = call ptr @proto_tree_add_uint(ptr noundef %.0369, i32 noundef %i.alb, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.0.i450) ; 2 uses
  %.not.i205.i = icmp eq ptr %i.alc, null
  br i1 %.not.i205.i, label %proto_item_set_generated.exit207.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ald = getelementptr i8, ptr %i.alc, i64 40
  %i.ale = load ptr, ptr %i.ald, align 8          ; 2 uses
  %.not5.i206.i = icmp eq ptr %i.ale, null
  br i1 %.not5.i206.i, label %proto_item_set_generated.exit207.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.alf = getelementptr i8, ptr %i.ale, i64 28   ; 2 uses
  %i.alg = load i32, ptr %i.alf, align 4
  %i.alh = or i32 %i.alg, 2
  store i32 %i.alh, ptr %i.alf, align 4
  br label %proto_item_set_generated.exit207.i

proto_item_set_generated.exit207.i:               ; preds = %bb.hl, %bb.hk, %bb.hj, %proto_item_set_generated.exit204.i, %proto_item_set_generated.exit201.i
  %i.ali = load i8, ptr %.0371, align 8
  br label %.critedge421

.critedge421:                                     ; preds = %bb.gq, %bb.fu, %bb.ec, %.preheader.i.i, %look_up_keys_record.exit.i, %proto_item_set_generated.exit207.i, %.split, %.thread516, %bb.ea, %bb.dz, %bb.dy
  %.sroa.11.4 = phi ptr [ null, %bb.dy ], [ null, %bb.fu ], [ null, %.preheader.i.i ], [ null, %look_up_keys_record.exit.i ], [ %.sroa.11.3, %proto_item_set_generated.exit207.i ], [ null, %.thread516 ], [ null, %bb.ec ], [ null, %.split ], [ null, %bb.dz ], [ null, %bb.ea ], [ null, %bb.gq ] ; 5 uses
  %.sroa.14.1 = phi ptr [ null, %bb.dy ], [ null, %bb.fu ], [ null, %.preheader.i.i ], [ null, %look_up_keys_record.exit.i ], [ %.sroa.14.0, %proto_item_set_generated.exit207.i ], [ null, %.thread516 ], [ null, %bb.ec ], [ null, %.split ], [ null, %bb.dz ], [ null, %bb.ea ], [ null, %bb.gq ] ; 5 uses
  %.sroa.16.4 = phi i1 [ false, %bb.dy ], [ false, %bb.fu ], [ false, %.preheader.i.i ], [ false, %look_up_keys_record.exit.i ], [ %.sroa.16.3, %proto_item_set_generated.exit207.i ], [ false, %.thread516 ], [ false, %bb.ec ], [ false, %.split ], [ false, %bb.dz ], [ false, %bb.ea ], [ false, %bb.gq ] ; 5 uses
  %.sroa.19.1 = phi i1 [ false, %bb.dy ], [ false, %bb.fu ], [ false, %.preheader.i.i ], [ false, %look_up_keys_record.exit.i ], [ %.sroa.19.0, %proto_item_set_generated.exit207.i ], [ false, %.thread516 ], [ false, %bb.ec ], [ false, %.split ], [ false, %bb.dz ], [ false, %bb.ea ], [ false, %bb.gq ] ; 5 uses
  %.sroa.21588.sroa.0.sroa.0.0 = phi i24 [ 0, %bb.dy ], [ 0, %bb.fu ], [ %.sroa.21588.sroa.0.0.extract.trunc, %.preheader.i.i ], [ %.sroa.21588.sroa.0.0.extract.trunc, %look_up_keys_record.exit.i ], [ %.sroa.21588.sroa.0.0.extract.trunc, %proto_item_set_generated.exit207.i ], [ 0, %.thread516 ], [ 0, %bb.ec ], [ 0, %.split ], [ 0, %bb.dz ], [ 0, %bb.ea ], [ %.sroa.21588.sroa.0.0.extract.trunc, %bb.gq ] ; 5 uses
  %.sroa.21588.sroa.6.0 = phi i8 [ 0, %bb.dy ], [ 0, %bb.fu ], [ %.sroa.21588.sroa.6.0.extract.trunc, %.preheader.i.i ], [ %.sroa.21588.sroa.6.0.extract.trunc, %look_up_keys_record.exit.i ], [ %.sroa.21588.sroa.6.0.extract.trunc, %proto_item_set_generated.exit207.i ], [ 0, %.thread516 ], [ 0, %bb.ec ], [ 0, %.split ], [ 0, %bb.dz ], [ 0, %bb.ea ], [ %.sroa.21588.sroa.6.0.extract.trunc, %bb.gq ] ; 5 uses
  %.sroa.24.0 = phi i8 [ 0, %bb.dy ], [ 0, %bb.fu ], [ %i.agf, %.preheader.i.i ], [ %i.agf, %look_up_keys_record.exit.i ], [ %i.agf, %proto_item_set_generated.exit207.i ], [ 0, %.thread516 ], [ 0, %bb.ec ], [ 0, %.split ], [ 0, %bb.dz ], [ 0, %bb.ea ], [ %i.agf, %bb.gq ] ; 5 uses
  %.sroa.27.0 = phi i8 [ 0, %bb.dy ], [ 0, %bb.fu ], [ 0, %.preheader.i.i ], [ 0, %look_up_keys_record.exit.i ], [ %i.ali, %proto_item_set_generated.exit207.i ], [ 0, %.thread516 ], [ 0, %bb.ec ], [ 0, %.split ], [ 0, %bb.dz ], [ 0, %bb.ea ], [ 0, %bb.gq ] ; 5 uses
  %.3530.ph = phi i32 [ %.3.ph, %bb.dy ], [ %.3.ph, %bb.fu ], [ %.3.ph, %.preheader.i.i ], [ %.3.ph, %look_up_keys_record.exit.i ], [ %.3.ph, %proto_item_set_generated.exit207.i ], [ %.1500, %.thread516 ], [ %.3.ph, %bb.ec ], [ %.3.ph, %.split ], [ %.3.ph, %bb.dz ], [ %.3.ph, %bb.ea ], [ %.3.ph, %bb.gq ] ; 5 uses
  %.pr = load i32, ptr %i.w, align 4              ; 2 uses
  %i.alj = icmp eq i32 %.pr, 2
  br i1 %i.alj, label %bb.hm, label %.thread534

bb.hm:                                            ; preds = %.critedge421
  %i.alk = load i8, ptr %.0371, align 8
  switch i8 %i.alk, label %.thread534 [
    i8 0, label %bb.hn
    i8 1, label %bb.ho
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.all = getelementptr i8, ptr %.0371, i64 19
  %i.alm = load i8, ptr %i.all, align 1
  %i.aln = and i8 %i.alm, 1
  %.not411 = icmp eq i8 %i.aln, 0
  br i1 %.not411, label %.thread534, label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  %i.alo = getelementptr i8, ptr %.0371, i64 19
  %i.alp = load i8, ptr %i.alo, align 1
  %i.alq = and i8 %i.alp, 2
  %.not412 = icmp eq i8 %i.alq, 0
  br i1 %.not412, label %.thread534, label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  br label %.thread534

.thread534:                                       ; preds = %bb.hm, %bb.ch, %bb.hn, %bb.ho, %bb.hp, %.critedge421
  %.sroa.11.5 = phi ptr [ null, %bb.ch ], [ %.sroa.11.4, %bb.hm ], [ %.sroa.11.4, %bb.hn ], [ %.sroa.11.4, %bb.hp ], [ %.sroa.11.4, %bb.ho ], [ %.sroa.11.4, %.critedge421 ]
  %.sroa.14.2 = phi ptr [ null, %bb.ch ], [ %.sroa.14.1, %bb.hm ], [ %.sroa.14.1, %bb.hn ], [ %.sroa.14.1, %bb.hp ], [ %.sroa.14.1, %bb.ho ], [ %.sroa.14.1, %.critedge421 ]
  %.sroa.16.5 = phi i1 [ false, %bb.ch ], [ %.sroa.16.4, %bb.hm ], [ %.sroa.16.4, %bb.hn ], [ %.sroa.16.4, %bb.hp ], [ %.sroa.16.4, %bb.ho ], [ %.sroa.16.4, %.critedge421 ]
  %.sroa.19.2 = phi i1 [ false, %bb.ch ], [ %.sroa.19.1, %bb.hm ], [ %.sroa.19.1, %bb.hn ], [ %.sroa.19.1, %bb.hp ], [ %.sroa.19.1, %bb.ho ], [ %.sroa.19.1, %.critedge421 ]
  %.sroa.21588.sroa.0.sroa.0.1 = phi i24 [ 0, %bb.ch ], [ %.sroa.21588.sroa.0.sroa.0.0, %bb.hm ], [ %.sroa.21588.sroa.0.sroa.0.0, %bb.hn ], [ %.sroa.21588.sroa.0.sroa.0.0, %bb.hp ], [ %.sroa.21588.sroa.0.sroa.0.0, %bb.ho ], [ %.sroa.21588.sroa.0.sroa.0.0, %.critedge421 ] ; 4 uses
  %.sroa.21588.sroa.6.1 = phi i8 [ 0, %bb.ch ], [ %.sroa.21588.sroa.6.0, %bb.hm ], [ %.sroa.21588.sroa.6.0, %bb.hn ], [ %.sroa.21588.sroa.6.0, %bb.hp ], [ %.sroa.21588.sroa.6.0, %bb.ho ], [ %.sroa.21588.sroa.6.0, %.critedge421 ] ; 2 uses
  %.sroa.24.1 = phi i8 [ 0, %bb.ch ], [ %.sroa.24.0, %bb.hm ], [ %.sroa.24.0, %bb.hn ], [ %.sroa.24.0, %bb.hp ], [ %.sroa.24.0, %bb.ho ], [ %.sroa.24.0, %.critedge421 ] ; 2 uses
  %.sroa.27.1 = phi i8 [ 0, %bb.ch ], [ %.sroa.27.0, %bb.hm ], [ %.sroa.27.0, %bb.hn ], [ %.sroa.27.0, %bb.hp ], [ %.sroa.27.0, %bb.ho ], [ %.sroa.27.0, %.critedge421 ] ; 2 uses
  %i.alr = phi i1 [ false, %bb.ch ], [ true, %bb.hm ], [ true, %bb.hn ], [ true, %bb.hp ], [ true, %bb.ho ], [ false, %.critedge421 ]
  %.3530533 = phi i32 [ 0, %bb.ch ], [ %.3530.ph, %bb.hm ], [ %.3530.ph, %bb.hn ], [ %.3530.ph, %bb.hp ], [ %.3530.ph, %bb.ho ], [ %.3530.ph, %.critedge421 ] ; 17 uses
  %i.als = phi i32 [ 1, %bb.ch ], [ 2, %bb.hm ], [ 2, %bb.hn ], [ 2, %bb.hp ], [ 2, %bb.ho ], [ %.pr, %.critedge421 ] ; 3 uses
  %.not414 = phi i1 [ true, %bb.ch ], [ true, %bb.hm ], [ true, %bb.hn ], [ false, %bb.hp ], [ true, %bb.ho ], [ true, %.critedge421 ]
  %.0346 = phi i32 [ 0, %bb.ch ], [ 0, %bb.hm ], [ 0, %bb.hn ], [ 1, %bb.hp ], [ 0, %bb.ho ], [ 0, %.critedge421 ] ; 2 uses
  br i1 %.not395, label %bb.ht, label %bb.hq

bb.hq:                                            ; preds = %.thread534
  %i.alt = getelementptr i8, ptr %.0371, i64 18
  %i.alu = load i8, ptr %i.alt, align 2, !range !7, !noundef !8
  %i.alv = trunc nuw i8 %i.alu to i1              ; 2 uses
  %brmerge = or i1 %i.alr, %i.alv
  %not. = xor i1 %i.alv, true
  br i1 %brmerge, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.alw = getelementptr i8, ptr %i.lt, i64 4
  %i.alx = load i8, ptr %i.alw, align 4, !range !7, !noundef !8
  %i.aly = trunc nuw i8 %i.alx to i1
  br i1 %i.aly, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.alz = getelementptr i8, ptr %i.lt, i64 5
  %i.ama = load i8, ptr %i.alz, align 1, !range !7, !noundef !8
  %i.amb = trunc nuw i8 %i.ama to i1
  %i.amc = xor i1 %i.amb, true
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hq, %bb.hr, %bb.hs, %.thread534
  %.0345 = phi i1 [ %not., %bb.hq ], [ false, %.thread534 ], [ %i.amc, %bb.hs ], [ false, %bb.hr ] ; 2 uses
  switch i32 %.sroa.0.0, label %bb.hu [
    i32 0, label %decipher_payload.exit.thread
    i32 999, label %decipher_payload.exit.thread
  ]

bb.hu:                                            ; preds = %bb.ht
  %cond.i = icmp eq i32 %.sroa.0.0, 2
  %or.cond72.i = and i1 %cond.i, %.sroa.16.5
  br i1 %or.cond72.i, label %bb.hv, label %decipher_payload.exit.thread

bb.hv:                                            ; preds = %bb.hu
  %i.amd = icmp ne i32 %i.als, 1
  %i.ame = load i8, ptr @global_pdcp_decipher_signalling, align 1, !range !7
  %i.amf = trunc nuw i8 %i.ame to i1
  %or.cond.i = select i1 %i.amd, i1 true, i1 %i.amf
  br i1 %or.cond.i, label %bb.hw, label %decipher_payload.exit.thread

bb.hw:                                            ; preds = %bb.hv
  %i.amg = icmp ne i32 %i.als, 2                  ; 2 uses
  %i.amh = load i8, ptr @global_pdcp_decipher_userplane, align 1, !range !7
  %i.ami = trunc nuw i8 %i.amh to i1
  %or.cond3.i = select i1 %i.amg, i1 true, i1 %i.ami
  br i1 %or.cond3.i, label %bb.hx, label %decipher_payload.exit.thread

bb.hx:                                            ; preds = %bb.hw
  br i1 %i.amg, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.amj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.amk = icmp sgt i8 %i.amj, -1
  br i1 %i.amk, label %decipher_payload.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.hy
  %.pre.i = load i32, ptr %i.w, align 4
  br label %bb.hz

bb.hz:                                            ; preds = %._crit_edge.i, %bb.hx
  %i.aml = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.als, %bb.hx ]
  %i.amm = icmp eq i32 %i.aml, 1
  br i1 %i.amm, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.amn = getelementptr i8, ptr %.0371, i64 4
  %i.amo = load i32, ptr %i.amn, align 4
  %.not67.i = icmp eq i32 %i.amo, 1
  %brmerge.not.i = and i1 %.0345, %.not67.i
  br i1 %brmerge.not.i, label %bb.ic, label %decipher_payload.exit.thread

bb.ib:                                            ; preds = %bb.hz
  br i1 %.0345, label %bb.ic, label %decipher_payload.exit.thread

bb.ic:                                            ; preds = %bb.ia, %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 noundef 0, i64 noundef 16, i1 noundef false) #14
  store i8 %.sroa.21588.sroa.6.1, ptr %i.d, align 16
  %.sroa.21588.sroa.0.0.insert.ext = zext i24 %.sroa.21588.sroa.0.sroa.0.1 to i32 ; 2 uses
  %4 = lshr i32 %.sroa.21588.sroa.0.0.insert.ext, 16
  %5 = trunc nuw i32 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %5, ptr %6, align 1
  %7 = lshr i32 %.sroa.21588.sroa.0.0.insert.ext, 8
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %8, ptr %9, align 2
  %10 = trunc i24 %.sroa.21588.sroa.0.sroa.0.1 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %10, ptr %11, align 1
  %i.amp = shl i8 %.sroa.24.1, 3
  %i.amq = shl i8 %.sroa.27.1, 2
  %i.amr = add i8 %i.amq, %i.amp
  %i.ams = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 %i.amr, ptr %i.ams, align 4
  %i.amt = call i32 @gcry_cipher_open(ptr noundef nonnull %i.e, i32 noundef 7, i32 noundef 6, i32 noundef 0)
  %.not68.i = icmp eq i32 %i.amt, 0
  br i1 %.not68.i, label %bb.id, label %.critedge.i

bb.id:                                            ; preds = %bb.ic
  %i.amu = load ptr, ptr %i.e, align 8
  %i.amv = call i32 @gcry_cipher_setkey(ptr noundef %i.amu, ptr noundef %.sroa.11.5, i64 noundef 16)
  %.not69.i = icmp eq i32 %i.amv, 0
  %i.amw = load ptr, ptr %i.e, align 8            ; 2 uses
  br i1 %.not69.i, label %bb.ie, label %.critedge.sink.split.i

bb.ie:                                            ; preds = %bb.id
  %i.amx = call i32 @gcry_cipher_setctr(ptr noundef %i.amw, ptr noundef nonnull %i.d, i64 noundef 16)
  %.not70.i = icmp eq i32 %i.amx, 0
  br i1 %.not70.i, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.amy = load ptr, ptr %i.e, align 8
  br label %.critedge.sink.split.i

bb.ig:                                            ; preds = %bb.ie
  %i.amz = add nuw nsw i32 %.0346, %.3530533      ; 2 uses
  %i.ana = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.amz) ; 3 uses
  %i.anb = getelementptr i8, ptr %1, i64 416
  %i.anc = load ptr, ptr %i.anb, align 8
  %i.and = sext i32 %i.ana to i64                 ; 2 uses
  %i.ane = call ptr @tvb_memdup(ptr noundef %i.anc, ptr noundef %0, i32 noundef %i.amz, i64 noundef %i.and) ; 2 uses
  %i.anf = load ptr, ptr %i.e, align 8
  %i.ang = call i32 @gcry_cipher_decrypt(ptr noundef %i.anf, ptr noundef %i.ane, i64 noundef %i.and, ptr noundef null, i64 noundef 0)
  %.not71.i = icmp eq i32 %i.ang, 0
  %i.anh = load ptr, ptr %i.e, align 8
  call void @gcry_cipher_close(ptr noundef %i.anh)
  br i1 %.not71.i, label %bb.ih, label %.critedge.i

.critedge.sink.split.i:                           ; preds = %bb.if, %bb.id
  %.sink.i436 = phi ptr [ %i.amy, %bb.if ], [ %i.amw, %bb.id ]
  call void @gcry_cipher_close(ptr noundef %.sink.i436)
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.sink.split.i, %bb.ig, %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %decipher_payload.exit.thread

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.ani = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.ane, i32 noundef %i.ana, i32 noundef %i.ana) ; 4 uses
  %i.anj = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.ani, ptr noundef @.str.322) ; 0 uses
  %i.ank = load i32, ptr @hf_pdcp_nr_security_deciphered_data, align 4
  %i.anl = call i32 @tvb_reported_length(ptr noundef %i.ani)
  %i.anm = call ptr @proto_tree_add_item(ptr noundef %.0364509, i32 noundef %i.ank, ptr noundef %i.ani, i32 noundef 0, i32 noundef %i.anl, i32 noundef 0) ; 0 uses
  br label %decipher_payload.exit.thread

decipher_payload.exit.thread:                     ; preds = %bb.ht, %bb.ht, %bb.hu, %bb.hv, %bb.hw, %bb.hy, %bb.ib, %bb.ia, %.critedge.i, %bb.ih
  %i.ann = phi i1 [ true, %bb.ih ], [ false, %.critedge.i ], [ false, %bb.ia ], [ false, %bb.ib ], [ false, %bb.hy ], [ false, %bb.hw ], [ false, %bb.hv ], [ false, %bb.hu ], [ false, %bb.ht ], [ false, %bb.ht ] ; 4 uses
  %.165.i541 = phi ptr [ %i.ani, %bb.ih ], [ %0, %.critedge.i ], [ %0, %bb.ia ], [ %0, %bb.ib ], [ %0, %bb.hy ], [ %0, %bb.hw ], [ %0, %bb.hv ], [ %0, %bb.hu ], [ %0, %bb.ht ], [ %0, %bb.ht ] ; 15 uses
  %.7538 = phi i32 [ 0, %bb.ih ], [ %.3530533, %.critedge.i ], [ %.3530533, %bb.ia ], [ %.3530533, %bb.ib ], [ %.3530533, %bb.hy ], [ %.3530533, %bb.hw ], [ %.3530533, %bb.hv ], [ %.3530533, %bb.hu ], [ %.3530533, %bb.ht ], [ %.3530533, %bb.ht ] ; 10 uses
  %i.ano = load i8, ptr %.0371, align 8
  %i.anp = icmp eq i8 %i.ano, 1
  %i.anq = icmp ne ptr %.0370, null               ; 2 uses
  %or.cond6 = and i1 %i.anq, %i.anp
  br i1 %or.cond6, label %bb.ii, label %bb.ik

bb.ii:                                            ; preds = %decipher_payload.exit.thread
  %i.anr = getelementptr i8, ptr %.0370, i64 5    ; 2 uses
  %i.ans = load i8, ptr %i.anr, align 1, !range !7, !noundef !8
  %i.ant = trunc nuw i8 %i.ans to i1
  br i1 %i.ant, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  store i8 0, ptr %i.anr, align 1
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii, %decipher_payload.exit.thread
  %i.anu = load i8, ptr @global_pdcp_check_integrity, align 1, !range !7, !noundef !8
  %i.anv = trunc nuw i8 %i.anu to i1
  br i1 %i.anv, label %bb.il, label %calculate_digest.exit

bb.il:                                            ; preds = %bb.ik
  %i.anw = getelementptr i8, ptr %.0371, i64 17
  %i.anx = load i8, ptr %i.anw, align 1, !range !7, !noundef !8
  %i.any = trunc nuw i8 %i.anx to i1
  br i1 %i.any, label %bb.im, label %calculate_digest.exit

bb.im:                                            ; preds = %bb.il
  %i.anz = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 0, i32 noundef %.3530533) ; 2 uses
  %i.aoa = select i1 %i.ann, i32 0, i32 %.0346    ; 3 uses
  %i.aob = icmp eq i32 %.sroa.7.0, 0
  br i1 %i.aob, label %calculate_digest.exit, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aoc = load i8, ptr @global_pdcp_check_integrity, align 1, !range !7
  %i.aod = trunc nuw i8 %i.aoc to i1
  %or.cond.i437 = select i1 %.sroa.19.2, i1 %i.aod, i1 false
  br i1 %or.cond.i437, label %bb.io, label %calculate_digest.exit

bb.io:                                            ; preds = %bb.in
  %i.aoe = call i32 @tvb_captured_length_remaining(ptr noundef %.165.i541, i32 noundef %.7538) ; 2 uses
  %i.aof = or disjoint i32 %i.aoa, 4
  %i.aog = icmp ult i32 %i.aoe, %i.aof
  br i1 %i.aog, label %calculate_digest.exit, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.aoh = call i32 @tvb_reported_length(ptr noundef %i.anz) ; 2 uses
  %cond.i438 = icmp eq i32 %.sroa.7.0, 2
  br i1 %cond.i438, label %bb.iq, label %calculate_digest.exit

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i64 4, ptr %i.c, align 8
  %i.aoi = call i32 @gcry_mac_open(ptr noundef nonnull %i.a, i32 noundef 201, i32 noundef 0, ptr noundef null)
  %.not.i439 = icmp eq i32 %i.aoi, 0
  br i1 %.not.i439, label %bb.ir, label %bb.iz

bb.ir:                                            ; preds = %bb.iq
  %i.aoj = load ptr, ptr %i.a, align 8
  %i.aok = call i32 @gcry_mac_setkey(ptr noundef %i.aoj, ptr noundef %.sroa.14.2, i64 noundef 16)
  %.not55.i = icmp eq i32 %i.aok, 0
  br i1 %.not55.i, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.aol = load ptr, ptr %i.a, align 8
  call void @gcry_mac_close(ptr noundef %i.aol)
  br label %bb.iz

bb.it:                                            ; preds = %bb.ir
  %i.aom = getelementptr i8, ptr %1, i64 416
  %i.aon = load ptr, ptr %i.aom, align 8
  %reass.sub = sub nuw i32 %i.aoe, %i.aoa         ; 2 uses
  %i.aoo = add i32 %reass.sub, 4
  %i.aop = add i32 %i.aoo, %i.aoh                 ; 2 uses
  %i.aoq = zext i32 %i.aop to i64                 ; 2 uses
  %i.aor = call noalias ptr @wmem_alloc0(ptr noundef %i.aon, i64 noundef %i.aoq) #15 ; 8 uses
  store i8 %.sroa.21588.sroa.6.1, ptr %i.aor, align 1
  %.sroa.21588.sroa.0.0.insert.ext596 = zext i24 %.sroa.21588.sroa.0.sroa.0.1 to i32 ; 2 uses
  %12 = lshr i32 %.sroa.21588.sroa.0.0.insert.ext596, 16
  %13 = trunc nuw i32 %12 to i8
  %14 = getelementptr i8, ptr %i.aor, i64 1
  store i8 %13, ptr %14, align 1
  %15 = lshr i32 %.sroa.21588.sroa.0.0.insert.ext596, 8
  %16 = trunc i32 %15 to i8
  %17 = getelementptr i8, ptr %i.aor, i64 2
  store i8 %16, ptr %17, align 1
  %18 = trunc i24 %.sroa.21588.sroa.0.sroa.0.1 to i8
  %19 = getelementptr i8, ptr %i.aor, i64 3
  store i8 %18, ptr %19, align 1
  %i.aos = shl i8 %.sroa.24.1, 3
  %i.aot = shl i8 %.sroa.27.1, 2
  %i.aou = add i8 %i.aot, %i.aos
  %i.aov = getelementptr i8, ptr %i.aor, i64 4
  store i8 %i.aou, ptr %i.aov, align 1
  %i.aow = getelementptr i8, ptr %i.aor, i64 8    ; 2 uses
  %i.aox = zext i32 %i.aoh to i64                 ; 2 uses
  %i.aoy = call ptr @tvb_memcpy(ptr noundef %i.anz, ptr noundef %i.aow, i32 noundef 0, i64 noundef %i.aox) ; 0 uses
  %i.aoz = getelementptr i8, ptr %i.aow, i64 %i.aox
  %i.apa = add nuw nsw i32 %.7538, %i.aoa
  %i.apb = add i32 %reass.sub, -4
  %i.apc = zext i32 %i.apb to i64
  %i.apd = call ptr @tvb_memcpy(ptr noundef %.165.i541, ptr noundef %i.aoz, i32 noundef %i.apa, i64 noundef %i.apc) ; 0 uses
  %i.ape = load i32, ptr @hf_pdcp_nr_security_integrity_data, align 4
  %i.apf = call ptr @proto_tree_add_bytes_with_length(ptr noundef %.0369, i32 noundef %i.ape, ptr noundef %.165.i541, i32 noundef 0, i32 noundef 0, ptr noundef %i.aor, i32 noundef %i.aop) ; 2 uses
  %.not.i.i441 = icmp eq ptr %i.apf, null
  br i1 %.not.i.i441, label %proto_item_set_generated.exit.i443, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.apg = getelementptr i8, ptr %i.apf, i64 40
  %i.aph = load ptr, ptr %i.apg, align 8          ; 2 uses
  %.not5.i.i442 = icmp eq ptr %i.aph, null
  br i1 %.not5.i.i442, label %proto_item_set_generated.exit.i443, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.api = getelementptr i8, ptr %i.aph, i64 28   ; 2 uses
  %i.apj = load i32, ptr %i.api, align 4
  %i.apk = or i32 %i.apj, 2
  store i32 %i.apk, ptr %i.api, align 4
  br label %proto_item_set_generated.exit.i443

proto_item_set_generated.exit.i443:               ; preds = %bb.iv, %bb.iu, %bb.it
  %i.apl = load ptr, ptr %i.a, align 8
  %i.apm = call i32 @gcry_mac_write(ptr noundef %i.apl, ptr noundef %i.aor, i64 noundef %i.aoq)
  %.not56.i = icmp eq i32 %i.apm, 0
  %i.apn = load ptr, ptr %i.a, align 8            ; 2 uses
  br i1 %.not56.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %proto_item_set_generated.exit.i443
  call void @gcry_mac_close(ptr noundef %i.apn)
  br label %bb.iz

bb.ix:                                            ; preds = %proto_item_set_generated.exit.i443
  %i.apo = call i32 @gcry_mac_read(ptr noundef %i.apn, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %.not57.i = icmp eq i32 %i.apo, 0
  %i.app = load ptr, ptr %i.a, align 8
  call void @gcry_mac_close(ptr noundef %i.app)
  br i1 %.not57.i, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.apq = load i32, ptr %i.b, align 4
  %i.apr = call i32 @llvm.bswap.i32(i32 %i.apq)
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix, %bb.iw, %bb.is, %bb.iq
  %.1497 = phi i1 [ true, %bb.iy ], [ false, %bb.ix ], [ false, %bb.iw ], [ false, %bb.is ], [ false, %bb.iq ]
  %.1.i440 = phi i32 [ %i.apr, %bb.iy ], [ 0, %bb.ix ], [ 0, %bb.iw ], [ 0, %bb.is ], [ 0, %bb.iq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %calculate_digest.exit

calculate_digest.exit:                            ; preds = %bb.iz, %bb.io, %bb.in, %bb.im, %bb.ip, %bb.il, %bb.ik
  %.0496 = phi i1 [ false, %bb.ik ], [ false, %bb.il ], [ false, %bb.in ], [ false, %bb.io ], [ %.1497, %bb.iz ], [ true, %bb.im ], [ false, %bb.ip ]
  %.0344 = phi i32 [ 0, %bb.ik ], [ 0, %bb.il ], [ 0, %bb.in ], [ 0, %bb.io ], [ %.1.i440, %bb.iz ], [ 0, %bb.im ], [ 0, %bb.ip ] ; 3 uses
  %i.aps = load i32, ptr %i.w, align 4
  %i.apt = icmp eq i32 %i.aps, 1
  br i1 %i.apt, label %bb.ja, label %bb.jw

bb.ja:                                            ; preds = %calculate_digest.exit
  %i.apu = call i32 @tvb_reported_length_remaining(ptr noundef %.165.i541, i32 noundef %.7538) ; 2 uses
  %i.apv = getelementptr i8, ptr %.0371, i64 17
  %i.apw = load i8, ptr %i.apv, align 1, !range !7, !noundef !8
  %i.apx = trunc nuw i8 %i.apw to i1
  %i.apy = add i32 %i.apu, -4
  %spec.select422 = select i1 %i.apx, i32 %i.apy, i32 %i.apu ; 4 uses
  %i.apz = load i8, ptr @global_pdcp_dissect_signalling_plane_as_rrc, align 1, !range !7, !noundef !8
  %i.aqa = trunc nuw i8 %i.apz to i1
  br i1 %i.aqa, label %bb.jb, label %bb.jv

bb.jb:                                            ; preds = %bb.ja
  br i1 %.not395, label %bb.jg, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.aqb = getelementptr i8, ptr %i.lt, i64 12
  %i.aqc = load i32, ptr %i.aqb, align 4
  %i.aqd = icmp eq i32 %i.aqc, 0
  %or.cond8 = or i1 %i.ann, %i.aqd
  br i1 %or.cond8, label %bb.jg, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.aqe = getelementptr i8, ptr %.0371, i64 18
  %i.aqf = load i8, ptr %i.aqe, align 2, !range !7, !noundef !8
  %i.aqg = trunc nuw i8 %i.aqf to i1
  br i1 %i.aqg, label %bb.jg, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.aqh = getelementptr i8, ptr %i.lt, i64 4
  %i.aqi = load i8, ptr %i.aqh, align 4, !range !7, !noundef !8
  %i.aqj = trunc nuw i8 %i.aqi to i1
  br i1 %i.aqj, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.aqk = getelementptr i8, ptr %i.lt, i64 5
  %i.aql = load i8, ptr %i.aqk, align 1, !range !7, !noundef !8
  %i.aqm = trunc nuw i8 %i.aql to i1
  br i1 %i.aqm, label %bb.jg, label %bb.jv

bb.jg:                                            ; preds = %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb
  %i.aqn = getelementptr i8, ptr %.0371, i64 4
  %i.aqo = load i32, ptr %i.aqn, align 4
  switch i32 %i.aqo, label %lookup_rrc_dissector_handle.exit.thread [
    i32 4, label %bb.jh
    i32 5, label %bb.jk
    i32 2, label %bb.jl
    i32 3, label %bb.jm
    i32 1, label %bb.jn
  ]

bb.jh:                                            ; preds = %bb.jg
  %i.aqp = load i8, ptr %.0371, align 8
  %i.aqq = icmp eq i8 %i.aqp, 0
  br i1 %i.aqq, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.aqr = icmp eq i32 %spec.select422, 8
  %i.aqs = load ptr, ptr @nr_rrc_ul_ccch1, align 8
  %i.aqt = load ptr, ptr @nr_rrc_ul_ccch, align 8
  %i.aqu = select i1 %i.aqr, ptr %i.aqs, ptr %i.aqt
  br label %lookup_rrc_dissector_handle.exit

bb.jj:                                            ; preds = %bb.jh
  %i.aqv = load ptr, ptr @nr_rrc_dl_ccch, align 8
  br label %lookup_rrc_dissector_handle.exit

bb.jk:                                            ; preds = %bb.jg
  %i.aqw = load ptr, ptr @nr_rrc_pcch, align 8
  br label %lookup_rrc_dissector_handle.exit

bb.jl:                                            ; preds = %bb.jg
  %i.aqx = load ptr, ptr @nr_rrc_bcch_bch, align 8
  br label %lookup_rrc_dissector_handle.exit

bb.jm:                                            ; preds = %bb.jg
  %i.aqy = load ptr, ptr @nr_rrc_bcch_dl_sch, align 8
  br label %lookup_rrc_dissector_handle.exit

bb.jn:                                            ; preds = %bb.jg
  %i.aqz = load i8, ptr %.0371, align 8
  %i.ara = icmp eq i8 %i.aqz, 0
  br i1 %i.ara, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.arb = load ptr, ptr @nr_rrc_ul_dcch, align 8
  br label %lookup_rrc_dissector_handle.exit

bb.jp:                                            ; preds = %bb.jn
  %i.arc = load ptr, ptr @nr_rrc_dl_dcch, align 8
  br label %lookup_rrc_dissector_handle.exit

lookup_rrc_dissector_handle.exit:                 ; preds = %bb.ji, %bb.jj, %bb.jk, %bb.jl, %bb.jm, %bb.jo, %bb.jp
  %.0.i444 = phi ptr [ %i.arc, %bb.jp ], [ %i.aqu, %bb.ji ], [ %i.aqv, %bb.jj ], [ %i.aqw, %bb.jk ], [ %i.aqx, %bb.jl ], [ %i.aqy, %bb.jm ], [ %i.arb, %bb.jo ] ; 2 uses
  %.not417 = icmp eq ptr %.0.i444, null
  br i1 %.not417, label %lookup_rrc_dissector_handle.exit.thread, label %bb.jq

bb.jq:                                            ; preds = %lookup_rrc_dissector_handle.exit
  %i.ard = call ptr @tvb_new_subset_length(ptr noundef %.165.i541, i32 noundef %.7538, i32 noundef %spec.select422)
  %i.are = load ptr, ptr %i.q, align 8
  %i.arf = call zeroext i1 @col_get_writable(ptr noundef %i.are, i32 noundef 25)
  %i.arg = load ptr, ptr %i.q, align 8
  call void @col_set_writable(ptr noundef %i.arg, i32 noundef 25, i1 noundef zeroext true)
  %i.arh = call i32 @call_dissector_only(ptr noundef nonnull %.0.i444, ptr noundef %i.ard, ptr noundef %1, ptr noundef %.0364509, ptr noundef null) ; 0 uses
  %i.ari = load ptr, ptr %i.q, align 8
  call void @col_set_writable(ptr noundef %i.ari, i32 noundef 25, i1 noundef zeroext %i.arf)
  br label %bb.jr

lookup_rrc_dissector_handle.exit.thread:          ; preds = %bb.jg, %lookup_rrc_dissector_handle.exit
  %i.arj = load i32, ptr @hf_pdcp_nr_signalling_data, align 4
  %i.ark = call ptr @proto_tree_add_item(ptr noundef %.0364509, i32 noundef %i.arj, ptr noundef %.165.i541, i32 noundef %.7538, i32 noundef %spec.select422, i32 noundef 0) ; 0 uses
  br label %bb.jr

bb.jr:                                            ; preds = %lookup_rrc_dissector_handle.exit.thread, %bb.jq
  %i.arl = load ptr, ptr %i.ke, align 8
  %i.arm = getelementptr i8, ptr %i.arl, i64 53
  %i.arn = load i16, ptr %i.arm, align 1
  %i.aro = and i16 %i.arn, 8
  %i.arp = icmp eq i16 %i.aro, 0
  %or.cond10 = and i1 %i.anq, %i.arp
  br i1 %or.cond10, label %bb.js, label %bb.kw

bb.js:                                            ; preds = %bb.jr
  %i.arq = getelementptr i8, ptr %.0370, i64 4    ; 2 uses
  %i.arr = load i8, ptr %i.arq, align 4, !range !7, !noundef !8
  %i.ars = trunc nuw i8 %i.arr to i1
  br i1 %i.ars, label %bb.kw, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.art = load i8, ptr %.0371, align 8
  %i.aru = icmp eq i8 %i.art, 0
  br i1 %i.aru, label %bb.ju, label %bb.kw
end_hunk_1
