Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-pdcp-nr?download=true
inline.NumInlined: 58
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@uat_ue_keys_records_ueid_set_cb:bb.a
  tail call void @g_free(ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @uat_ue_keys_records_ueid_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.278, i32 noundef %i.a) ; 2 uses
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
  %4 = alloca i32, align 4                        ; 5 uses
  %5 = alloca i32, align 4                        ; 5 uses
  %6 = alloca i32, align 4                        ; 5 uses
  %7 = alloca i32, align 4                        ; 5 uses
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
  tail call void @col_set_str(ptr noundef %i.r, i32 noundef 35, ptr noundef nonnull @.str.188)
  %i.s = tail call ptr @wmem_file_scope()
  %i.t = load i32, ptr @proto_pdcp_nr, align 4
  %i.u = tail call ptr @p_get_proto_data(ptr noundef %i.s, ptr noundef %1, i32 noundef %i.t, i32 noundef 0) ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.lf, label %bb.c

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
  %.sink731.a = phi i8 [ 1, %bb.h ], [ 2, %bb.i ]
  %i.au = getelementptr i8, ptr %.0371, i64 19    ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = or i8 %i.av, %.sink731.a
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
  br i1 %.not391, label %.thread505, label %bb.q

.thread505:                                       ; preds = %bb.p
  %i.bq = getelementptr i8, ptr %.0371, i64 24
  %i.br = getelementptr i8, ptr %.0371, i64 28
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = tail call ptr @val_to_str_const(i32 noundef %i.bs, ptr noundef nonnull @rohc_mode_vals, ptr noundef nonnull @.str.280)
  br label %bb.bm

bb.q:                                             ; preds = %bb.p
  %i.bu = load i32, ptr @proto_pdcp_nr, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.bu, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.bw = load i32, ptr @ett_pdcp, align 4
  %i.bx = tail call ptr @proto_item_add_subtree(ptr noundef %i.bv, i32 noundef %i.bw) ; 3 uses
  %i.by = getelementptr i8, ptr %.0371, i64 24    ; 5 uses
  %i.bz = getelementptr i8, ptr %.0371, i64 28    ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = tail call ptr @val_to_str_const(i32 noundef %i.ca, ptr noundef nonnull @rohc_mode_vals, ptr noundef nonnull @.str.280) ; 2 uses
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
end_hunk_0
begin_hunk_1_@dissect_pdcp_nr:bb.a
bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.2357.2 = phi i32 [ %.2357.1, %bb.dc ], [ %i.rr, %bb.dd ] ; 2 uses
  %.2353.2 = phi i32 [ %i.rn, %bb.dc ], [ %i.rq, %bb.dd ] ; 5 uses
  %i.rs = and i32 %i.pz, 16
  %.not401.3 = icmp eq i32 %i.rs, 0
  %i.rt = zext i32 %.2353.2 to i64                ; 2 uses
  %i.ru = getelementptr i8, ptr %i.pd, i64 %i.rt  ; 2 uses
  %i.rv = sub i32 89, %.2353.2
  %i.rw = zext i32 %i.rv to i64                   ; 2 uses
  br i1 %.not401.3, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rx = sub nsw i64 89, %i.rt
  %i.ry = icmp ugt i32 %.2353.2, 89
  %i.rz = select i1 %i.ry, i64 0, i64 %i.rx       ; 2 uses
  %i.sa = icmp ne i64 %i.rz, -1
  call void @llvm.assume(i1 %i.sa)
  %i.sb = load i32, ptr %i.j, align 4
  %i.sc = or disjoint i32 %i.qa, 4
  %i.sd = add i32 %i.sc, %i.sb
  %i.se = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.ru, i64 noundef %i.rw, i32 noundef 2, i64 noundef %i.rz, ptr noundef nonnull @.str.289, i32 noundef %i.sd)
  %i.sf = add i32 %i.se, %.2353.2
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.sg = call i64 @g_strlcpy(ptr noundef %i.ru, ptr noundef nonnull @.str.290, i64 noundef %i.rw)
  %i.sh = trunc i64 %i.sg to i32
  %i.si = add i32 %.2353.2, %i.sh
  %i.sj = add i32 %.2357.2, 1
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.2357.3 = phi i32 [ %.2357.2, %bb.df ], [ %i.sj, %bb.dg ] ; 2 uses
  %.2353.3 = phi i32 [ %i.sf, %bb.df ], [ %i.si, %bb.dg ] ; 5 uses
  %i.sk = and i32 %i.pz, 8
  %.not401.4 = icmp eq i32 %i.sk, 0
  %i.sl = zext i32 %.2353.3 to i64                ; 2 uses
  %i.sm = getelementptr i8, ptr %i.pd, i64 %i.sl  ; 2 uses
  %i.sn = sub i32 89, %.2353.3
  %i.so = zext i32 %i.sn to i64                   ; 2 uses
  br i1 %.not401.4, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sp = sub nsw i64 89, %i.sl
  %i.sq = icmp ugt i32 %.2353.3, 89
  %i.sr = select i1 %i.sq, i64 0, i64 %i.sp       ; 2 uses
  %i.ss = icmp ne i64 %i.sr, -1
  call void @llvm.assume(i1 %i.ss)
  %i.st = load i32, ptr %i.j, align 4
  %i.su = or disjoint i32 %i.qa, 5
  %i.sv = add i32 %i.su, %i.st
  %i.sw = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.sm, i64 noundef %i.so, i32 noundef 2, i64 noundef %i.sr, ptr noundef nonnull @.str.289, i32 noundef %i.sv)
  %i.sx = add i32 %i.sw, %.2353.3
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.sy = call i64 @g_strlcpy(ptr noundef %i.sm, ptr noundef nonnull @.str.290, i64 noundef %i.so)
  %i.sz = trunc i64 %i.sy to i32
  %i.ta = add i32 %.2353.3, %i.sz
  %i.tb = add i32 %.2357.3, 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.2357.4 = phi i32 [ %.2357.3, %bb.di ], [ %i.tb, %bb.dj ] ; 2 uses
  %.2353.4 = phi i32 [ %i.sx, %bb.di ], [ %i.ta, %bb.dj ] ; 5 uses
  %i.tc = and i32 %i.pz, 4
  %.not401.5 = icmp eq i32 %i.tc, 0
  %i.td = zext i32 %.2353.4 to i64                ; 2 uses
  %i.te = getelementptr i8, ptr %i.pd, i64 %i.td  ; 2 uses
  %i.tf = sub i32 89, %.2353.4
  %i.tg = zext i32 %i.tf to i64                   ; 2 uses
  br i1 %.not401.5, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.th = sub nsw i64 89, %i.td
  %i.ti = icmp ugt i32 %.2353.4, 89
  %i.tj = select i1 %i.ti, i64 0, i64 %i.th       ; 2 uses
  %i.tk = icmp ne i64 %i.tj, -1
  call void @llvm.assume(i1 %i.tk)
  %i.tl = load i32, ptr %i.j, align 4
  %i.tm = or disjoint i32 %i.qa, 6
  %i.tn = add i32 %i.tm, %i.tl
  %i.to = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.te, i64 noundef %i.tg, i32 noundef 2, i64 noundef %i.tj, ptr noundef nonnull @.str.289, i32 noundef %i.tn)
  %i.tp = add i32 %i.to, %.2353.4
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.tq = call i64 @g_strlcpy(ptr noundef %i.te, ptr noundef nonnull @.str.290, i64 noundef %i.tg)
  %i.tr = trunc i64 %i.tq to i32
  %i.ts = add i32 %.2353.4, %i.tr
  %i.tt = add i32 %.2357.4, 1
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.2357.5 = phi i32 [ %.2357.4, %bb.dl ], [ %i.tt, %bb.dm ] ; 2 uses
  %.2353.5 = phi i32 [ %i.tp, %bb.dl ], [ %i.ts, %bb.dm ] ; 5 uses
  %i.tu = and i32 %i.pz, 2
  %.not401.6 = icmp eq i32 %i.tu, 0
  %i.tv = zext i32 %.2353.5 to i64                ; 2 uses
  %i.tw = getelementptr i8, ptr %i.pd, i64 %i.tv  ; 2 uses
  %i.tx = sub i32 89, %.2353.5
  %i.ty = zext i32 %i.tx to i64                   ; 2 uses
  br i1 %.not401.6, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.tz = sub nsw i64 89, %i.tv
  %i.ua = icmp ugt i32 %.2353.5, 89
  %i.ub = select i1 %i.ua, i64 0, i64 %i.tz       ; 2 uses
  %i.uc = icmp ne i64 %i.ub, -1
  call void @llvm.assume(i1 %i.uc)
  %i.ud = load i32, ptr %i.j, align 4
  %i.ue = or disjoint i32 %i.qa, 7
  %i.uf = add i32 %i.ue, %i.ud
  %i.ug = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.tw, i64 noundef %i.ty, i32 noundef 2, i64 noundef %i.ub, ptr noundef nonnull @.str.289, i32 noundef %i.uf)
  %i.uh = add i32 %i.ug, %.2353.5
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.ui = call i64 @g_strlcpy(ptr noundef %i.tw, ptr noundef nonnull @.str.290, i64 noundef %i.ty)
  %i.uj = trunc i64 %i.ui to i32
  %i.uk = add i32 %.2353.5, %i.uj
  %i.ul = add i32 %.2357.5, 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.2357.6 = phi i32 [ %.2357.5, %bb.do ], [ %i.ul, %bb.dp ] ; 2 uses
  %.2353.6 = phi i32 [ %i.uh, %bb.do ], [ %i.uk, %bb.dp ] ; 3 uses
  %i.um = and i32 %i.pz, 1
  %.not401.7 = icmp eq i32 %i.um, 0
  %i.un = zext i32 %.2353.6 to i64                ; 2 uses
  %i.uo = getelementptr i8, ptr %i.pd, i64 %i.un  ; 2 uses
  %i.up = sub i32 89, %.2353.6
  %i.uq = zext i32 %i.up to i64                   ; 2 uses
  br i1 %.not401.7, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ur = sub nsw i64 89, %i.un
  %i.us = icmp ugt i32 %.2353.6, 89
  %i.ut = select i1 %i.us, i64 0, i64 %i.ur       ; 2 uses
  %i.uu = icmp ne i64 %i.ut, -1
  call void @llvm.assume(i1 %i.uu)
  %i.uv = load i32, ptr %i.j, align 4
  %i.uw = add i32 %i.qa, 8
  %i.ux = add i32 %i.uw, %i.uv
  %i.uy = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.uo, i64 noundef %i.uq, i32 noundef 2, i64 noundef %i.ut, ptr noundef nonnull @.str.289, i32 noundef %i.ux) ; 0 uses
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.uz = call i64 @g_strlcpy(ptr noundef %i.uo, ptr noundef nonnull @.str.290, i64 noundef %i.uq) ; 0 uses
  %i.va = add i32 %.2357.6, 1
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.2357.7 = phi i32 [ %.2357.6, %bb.dr ], [ %i.va, %bb.ds ] ; 2 uses
  %i.vb = load i32, ptr @hf_pdcp_nr_bitmap_byte, align 4
  %i.vc = lshr exact i32 %.0349562, 3
  %i.vd = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %.fr, i32 noundef %i.vb, ptr noundef %0, i32 noundef %i.vc, i32 noundef 1, i32 noundef %i.pz, ptr noundef nonnull @.str.291, ptr noundef %i.pd) ; 0 uses
  %i.ve = add i32 %.0349562, 8
  %i.vf = add nuw i32 %.0354561, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.vf, %i.pe
  br i1 %exitcond.not, label %._crit_edge, label %.split556, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.dt, %.split556.us.us.us.us, %bb.cv
  %.0355.lcssa = phi i32 [ 0, %bb.cv ], [ %.2357.us.us.us.us.us.7, %.split556.us.us.us.us ], [ %.2357.7, %bb.dt ] ; 3 uses
  %.not399 = icmp eq ptr %i.oy, null
  br i1 %.not399, label %.thread521, label %bb.du

bb.du:                                            ; preds = %._crit_edge
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %i.oy, ptr noundef nonnull @.str.292, i32 noundef %.0355.lcssa)
  br label %.thread521

.thread521:                                       ; preds = %._crit_edge, %bb.du, %bb.cu
  %.3358516 = phi i32 [ %.0355.lcssa, %._crit_edge ], [ %.0355.lcssa, %bb.du ], [ 0, %bb.cu ]
  %i.vg = load i32, ptr %i.j, align 4
  call void (ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %.0372509, ptr noundef %1, ptr noundef nonnull @.str.293, i32 noundef %i.vg, i32 noundef %.3358516)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %bb.le

bb.dv:                                            ; preds = %bb.cr
  br label %.thread517

.thread517:                                       ; preds = %bb.dv, %bb.cr
  %.1501 = phi i32 [ 0, %bb.cr ], [ 1, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %.critedge421

bb.dw:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %bb.le

bb.dx:                                            ; preds = %bb.cg
  tail call void (ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %.0372509, ptr noundef %1, ptr noundef nonnull @.str.294, i32 noundef %i.nm)
  br label %bb.le

bb.dy:                                            ; preds = %bb.ck, %.thread525
  %.3.ph = phi i32 [ %.sink743, %.thread525 ], [ 2, %bb.ck ] ; 7 uses
  %i.vh = load i32, ptr @global_pdcp_check_sequence_numbers, align 4
  switch i32 %i.vh, label %.critedge421 [
    i32 2, label %.split
    i32 1, label %bb.dz
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.vi = call ptr @wmem_file_scope()
  %i.vj = load i32, ptr @proto_rlc_nr, align 4
  %i.vk = call ptr @p_get_proto_data(ptr noundef %i.vi, ptr noundef %1, i32 noundef %i.vj, i32 noundef 0)
  %.not409 = icmp eq ptr %i.vk, null
  br i1 %.not409, label %.critedge421, label %bb.ea

.split:                                           ; preds = %bb.dy
  %i.vl = call ptr @wmem_file_scope()
  %i.vm = load i32, ptr @proto_rlc_nr, align 4
  %i.vn = call ptr @p_get_proto_data(ptr noundef %i.vl, ptr noundef %1, i32 noundef %i.vm, i32 noundef 0)
  %i.vo = icmp eq ptr %i.vn, null
  br i1 %i.vo, label %bb.eb, label %.critedge421

bb.ea:                                            ; preds = %bb.dz
  %i.vp = getelementptr i8, ptr %.0371, i64 48
  %i.vq = load i8, ptr %i.vp, align 8
  %.not410 = icmp eq i8 %i.vq, 0
  br i1 %.not410, label %bb.eb, label %.critedge421

bb.eb:                                            ; preds = %.split, %bb.ea
  %i.vr = load i32, ptr %i.f, align 4             ; 14 uses
  %i.vs = load ptr, ptr %i.ke, align 8
  %i.vt = getelementptr i8, ptr %i.vs, i64 53
  %i.vu = load i16, ptr %i.vt, align 1
  %i.vv = and i16 %i.vu, 8
  %.not97.i = icmp eq i16 %i.vv, 0
  br i1 %.not97.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.vw = load ptr, ptr @pdcp_nr_sequence_analysis_report_hash, align 8
  %i.vx = load i32, ptr %i.lr, align 4
  store i32 %i.vx, ptr @get_report_hash_key.key, align 4
  %i.vy = and i32 %i.vr, 262143                   ; 2 uses
  store i32 %i.vy, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.vz = load i32, ptr %i.w, align 4
  %i.wa = shl i32 %i.vz, 18
  %i.wb = and i32 %i.wa, 786432
  %i.wc = or disjoint i32 %i.wb, %i.vy            ; 2 uses
  store i32 %i.wc, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.wd = getelementptr i8, ptr %.0371, i64 8
  %i.we = load i8, ptr %i.wd, align 8
  %i.wf = and i8 %i.we, 31
  %i.wg = zext nneg i8 %i.wf to i32
  %i.wh = shl nuw nsw i32 %i.wg, 20
  %i.wi = or disjoint i32 %i.wh, %i.wc            ; 2 uses
  store i32 %i.wi, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.wj = load i8, ptr %.0371, align 8
  %i.wk = and i8 %i.wj, 1
  %i.wl = zext nneg i8 %i.wk to i32
  %i.wm = shl nuw nsw i32 %i.wl, 25
  %i.wn = or disjoint i32 %i.wm, %i.wi
  store i32 %i.wn, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.wo = call ptr @wmem_map_lookup(ptr noundef %i.vw, ptr noundef nonnull @get_report_hash_key.key) ; 2 uses
  %.not100.i434 = icmp eq ptr %i.wo, null
  br i1 %.not100.i434, label %.critedge421, label %.sink.split.i

bb.ed:                                            ; preds = %bb.eb
  %i.wp = load i16, ptr %i.lp, align 2
  %i.wq = zext i16 %i.wp to i32
  %i.wr = load i32, ptr %i.w, align 4
  %i.ws = shl i32 %i.wr, 16
  %i.wt = and i32 %i.ws, 196608
  %i.wu = or disjoint i32 %i.wt, %i.wq
  %i.wv = getelementptr i8, ptr %.0371, i64 8     ; 3 uses
  %i.ww = load i8, ptr %i.wv, align 8
  %i.wx = and i8 %i.ww, 63
  %i.wy = zext nneg i8 %i.wx to i32
  %i.wz = shl nuw nsw i32 %i.wy, 18
  %i.xa = or disjoint i32 %i.wz, %i.wu
  %i.xb = load i8, ptr %.0371, align 8
  %i.xc = and i8 %i.xb, 1
  %i.xd = zext nneg i8 %i.xc to i32
  %i.xe = shl nuw nsw i32 %i.xd, 24
  %i.xf = or disjoint i32 %i.xa, %i.xe
  %i.xg = load ptr, ptr @pdcp_sequence_analysis_bearer_hash, align 8
  %i.xh = zext nneg i32 %i.xf to i64
  %i.xi = inttoptr i64 %i.xh to ptr               ; 2 uses
  %i.xj = call ptr @wmem_map_lookup(ptr noundef %i.xg, ptr noundef %i.xi) ; 2 uses
  %.not108.i = icmp eq ptr %i.xj, null            ; 2 uses
  br i1 %.not108.i, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.xk = call ptr @wmem_file_scope()
  %i.xl = call noalias dereferenceable_or_null(12) ptr @wmem_alloc0(ptr noundef %i.xk, i64 noundef 12) #15 ; 2 uses
  %i.xm = load ptr, ptr @pdcp_sequence_analysis_bearer_hash, align 8
  %i.xn = call ptr @wmem_map_insert(ptr noundef %i.xm, ptr noundef %i.xi, ptr noundef %i.xl) ; 0 uses
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.092.i = phi ptr [ %i.xl, %bb.ee ], [ %i.xj, %bb.ed ] ; 9 uses
  %i.xo = call ptr @wmem_file_scope()
  %i.xp = call noalias dereferenceable_or_null(32) ptr @wmem_alloc(ptr noundef %i.xo, i64 noundef 32) #15 ; 20 uses
  %i.xq = getelementptr i8, ptr %i.xp, i64 12
  store i32 0, ptr %i.xq, align 4
  %i.xr = getelementptr i8, ptr %.0371, i64 16
  %i.xs = load i8, ptr %i.xr, align 8
  switch i8 %i.xs, label %bb.eh [
    i8 12, label %bb.ei
    i8 18, label %bb.eg
  ]

bb.eg:                                            ; preds = %bb.ef
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.313, i32 noundef 1122) #18
  unreachable

bb.ei:                                            ; preds = %bb.eg, %bb.ef
  %.0.i = phi i32 [ 262144, %bb.eg ], [ 4096, %bb.ef ] ; 4 uses
  br i1 %.not108.i, label %.thread105.i, label %bb.ej

.thread105.i:                                     ; preds = %bb.ei
  store i8 1, ptr %i.xp, align 4
  %i.xt = getelementptr i8, ptr %.092.i, i64 8
  %i.xu = load i32, ptr %i.xt, align 4
  %i.xv = getelementptr i8, ptr %i.xp, i64 24
  store i32 %i.xu, ptr %i.xv, align 4
  %i.xw = getelementptr i8, ptr %i.xp, i64 28
  store i32 0, ptr %i.xw, align 4
  %i.xx = getelementptr i8, ptr %i.xp, i64 4
  store i32 %i.vr, ptr %i.xx, align 4
  %i.xy = getelementptr i8, ptr %.092.i, i64 4    ; 2 uses
  %i.xz = load i32, ptr %i.xy, align 4            ; 2 uses
  %i.ya = getelementptr i8, ptr %i.xp, i64 8
  store i32 %i.xz, ptr %i.ya, align 4
  br label %bb.ep

bb.ej:                                            ; preds = %bb.ei
  %i.yb = load i32, ptr %.092.i, align 4
  %i.yc = add i32 %i.yb, 1
  %i.yd = add nsw i32 %.0.i, -1                   ; 2 uses
  %i.ye = and i32 %i.yc, %i.yd                    ; 5 uses
  %i.yf = icmp eq i32 %i.vr, %i.ye                ; 2 uses
  %i.yg = zext i1 %i.yf to i8
  store i8 %i.yg, ptr %i.xp, align 4
  %i.yh = getelementptr i8, ptr %.092.i, i64 8    ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4            ; 2 uses
  %i.yj = getelementptr i8, ptr %i.xp, i64 24     ; 2 uses
  store i32 %i.yi, ptr %i.yj, align 4
  br i1 %i.yf, label %bb.en, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.yk = sub i32 %.0.i, %i.vr
  %i.yl = add i32 %i.yk, %i.ye
  %i.ym = add nsw i32 %.0.i, -16
  %i.yn = and i32 %i.yl, %i.ym
  %.not98.i = icmp eq i32 %i.yn, 0
  %i.yo = getelementptr i8, ptr %i.xp, i64 28     ; 2 uses
  %i.yp = getelementptr i8, ptr %i.xp, i64 16     ; 2 uses
  br i1 %.not98.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store i32 4, ptr %i.yo, align 4
  store i32 %i.ye, ptr %i.yp, align 4
  %i.yq = add i32 %i.vr, -1
  %i.yr = add i32 %i.yq, %.0.i
  %i.ys = and i32 %i.yr, %i.yd
  %i.yt = getelementptr i8, ptr %i.xp, i64 20
  store i32 %i.ys, ptr %i.yt, align 4
  %i.yu = getelementptr i8, ptr %i.xp, i64 4
  store i32 %i.ye, ptr %i.yu, align 4
  %i.yv = getelementptr i8, ptr %.092.i, i64 4    ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 4
  %i.yx = getelementptr i8, ptr %i.xp, i64 8
  store i32 %i.yw, ptr %i.yx, align 4
  %i.yy = load i32, ptr %i.lr, align 4
  store i32 %i.yy, ptr %i.yv, align 4
  store i32 %i.vr, ptr %.092.i, align 4
  br label %bb.es

bb.em:                                            ; preds = %bb.ek
  store i32 1, ptr %i.yo, align 4
  store i32 %i.vr, ptr %i.yp, align 4
  %i.yz = getelementptr i8, ptr %i.xp, i64 4
  store i32 %i.ye, ptr %i.yz, align 4
  %i.za = getelementptr i8, ptr %.092.i, i64 4
  %i.zb = load i32, ptr %i.za, align 4
  %i.zc = getelementptr i8, ptr %i.xp, i64 8
  store i32 %i.zb, ptr %i.zc, align 4
  br label %bb.es

bb.en:                                            ; preds = %bb.ej
  %i.zd = getelementptr i8, ptr %i.xp, i64 28
  store i32 0, ptr %i.zd, align 4
  %i.ze = getelementptr i8, ptr %i.xp, i64 4
  store i32 %i.vr, ptr %i.ze, align 4
  %i.zf = getelementptr i8, ptr %.092.i, i64 4    ; 3 uses
  %i.zg = load i32, ptr %i.zf, align 4            ; 3 uses
  %i.zh = getelementptr i8, ptr %i.xp, i64 8
  store i32 %i.zg, ptr %i.zh, align 4
  %i.zi = icmp eq i32 %i.vr, 0
  br i1 %i.zi, label %bb.eo, label %bb.ep
end_hunk_1
begin_hunk_2_@dissect_pdcp_nr:bb.a

bb.ff:                                            ; preds = %bb.fe
  %i.aci = getelementptr i8, ptr %i.ach, i64 28   ; 2 uses
  %i.acj = load i32, ptr %i.aci, align 4
  %i.ack = or i32 %i.acj, 2
  store i32 %i.ack, ptr %i.aci, align 4
  br label %proto_item_set_generated.exit173.i

proto_item_set_generated.exit173.i:               ; preds = %bb.ff, %bb.fe, %proto_item_set_hidden.exit.i453
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aba, ptr noundef nonnull @.str.314)
  %i.acl = getelementptr i8, ptr %.sink.i, i64 12
  %i.acm = load i32, ptr %i.acl, align 4          ; 2 uses
  %.not158.i = icmp eq i32 %i.acm, 0
  br i1 %.not158.i, label %bb.fu, label %bb.fg

bb.fg:                                            ; preds = %proto_item_set_generated.exit173.i
  %i.acn = load i32, ptr @hf_pdcp_nr_sequence_analysis_next_frame, align 4
  %i.aco = call ptr @proto_tree_add_uint(ptr noundef %i.abc, i32 noundef %i.acn, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.acm) ; 0 uses
  br label %bb.fu

bb.fh:                                            ; preds = %bb.fa
  %i.acp = load i32, ptr @hf_pdcp_nr_sequence_analysis_ok, align 4
  %i.acq = call ptr @proto_tree_add_boolean(ptr noundef %i.abc, i32 noundef %i.acp, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef 0) ; 2 uses
  %.not.i174.i = icmp eq ptr %i.acq, null
  br i1 %.not.i174.i, label %proto_item_set_generated.exit176.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.acr = getelementptr i8, ptr %i.acq, i64 40
  %i.acs = load ptr, ptr %i.acr, align 8          ; 2 uses
  %.not5.i175.i = icmp eq ptr %i.acs, null
  br i1 %.not5.i175.i, label %proto_item_set_generated.exit176.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.act = getelementptr i8, ptr %i.acs, i64 28   ; 2 uses
  %i.acu = load i32, ptr %i.act, align 4
  %i.acv = or i32 %i.acu, 2
  store i32 %i.acv, ptr %i.act, align 4
  br label %proto_item_set_generated.exit176.i

proto_item_set_generated.exit176.i:               ; preds = %bb.fj, %bb.fi, %bb.fh
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
  %i.adl = call ptr @val_to_str_const(i32 noundef %i.adi, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.284) ; 2 uses
  %i.adm = load i16, ptr %i.lp, align 2
  %i.adn = zext i16 %i.adm to i32                 ; 2 uses
  %i.ado = getelementptr i8, ptr %.0371, i64 4
  %i.adp = load i32, ptr %i.ado, align 4
  %i.adq = call ptr @val_to_str_const(i32 noundef %i.adp, ptr noundef nonnull @bearer_type_vals, ptr noundef nonnull @.str.284) ; 2 uses
  %i.adr = getelementptr i8, ptr %.0371, i64 8
  %i.ads = load i8, ptr %i.adr, align 8
  %i.adt = zext i8 %i.ads to i32                  ; 2 uses
  br i1 %.not157.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %proto_item_set_generated.exit179.i
  %i.adu = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.acx, ptr noundef nonnull %i.adk, ptr noundef nonnull @.str.315, i32 noundef %i.adg, i32 noundef %i.ade, ptr noundef %i.adl, i32 noundef %i.adn, ptr noundef %i.adq, i32 noundef %i.adt) ; 0 uses
  %i.adv = load i32, ptr %i.adf, align 4
  %i.adw = load i32, ptr %i.add, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aba, ptr noundef nonnull @.str.316, i32 noundef %i.adv, i32 noundef %i.adw)
  br label %bb.fu

bb.fn:                                            ; preds = %proto_item_set_generated.exit179.i
  %i.adx = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.acx, ptr noundef nonnull %i.adk, ptr noundef nonnull @.str.317, i32 noundef %i.ade, ptr noundef %i.adl, i32 noundef %i.adn, ptr noundef %i.adq, i32 noundef %i.adt) ; 0 uses
  %i.ady = load i32, ptr %i.adf, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aba, ptr noundef nonnull @.str.318, i32 noundef %i.ady)
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
  %i.aet = call ptr @val_to_str_const(i32 noundef %i.aeo, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.284)
  %i.aeu = load i16, ptr %i.lp, align 2
  %i.aev = zext i16 %i.aeu to i32
  %i.aew = getelementptr i8, ptr %.0371, i64 4
  %i.aex = load i32, ptr %i.aew, align 4
  %i.aey = call ptr @val_to_str_const(i32 noundef %i.aex, ptr noundef nonnull @bearer_type_vals, ptr noundef nonnull @.str.284)
  %i.aez = getelementptr i8, ptr %.0371, i64 8
  %i.afa = load i8, ptr %i.aez, align 8
  %i.afb = zext i8 %i.afa to i32
  %i.afc = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aeh, ptr noundef nonnull %i.aeq, ptr noundef nonnull @.str.319, i32 noundef %i.aes, ptr noundef %i.aet, i32 noundef %i.aev, ptr noundef %i.aey, i32 noundef %i.afb) ; 0 uses
  %i.afd = load i32, ptr %i.aer, align 4
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aba, ptr noundef nonnull @.str.320, i32 noundef %i.afd)
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fa
  %i.afe = load i8, ptr %.0371, align 8           ; 2 uses
  %i.aff = zext i8 %i.afe to i32
  %i.afg = icmp eq i8 %i.afe, 0
  %i.afh = select i1 %i.afg, ptr @ei_pdcp_nr_sequence_analysis_wrong_sequence_number_ul, ptr @ei_pdcp_nr_sequence_analysis_wrong_sequence_number_dl
  %i.afi = call ptr @val_to_str_const(i32 noundef %i.aff, ptr noundef nonnull @direction_vals, ptr noundef nonnull @.str.284)
  %i.afj = load i16, ptr %i.lp, align 2
  %i.afk = zext i16 %i.afj to i32
  %i.afl = getelementptr i8, ptr %.0371, i64 4
  %i.afm = load i32, ptr %i.afl, align 4
  %i.afn = call ptr @val_to_str_const(i32 noundef %i.afm, ptr noundef nonnull @bearer_type_vals, ptr noundef nonnull @.str.284)
  %i.afo = getelementptr i8, ptr %.0371, i64 8
  %i.afp = load i8, ptr %i.afo, align 8
  %i.afq = zext i8 %i.afp to i32
  %i.afr = load i32, ptr %i.abn, align 4
  %i.afs = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.abp, ptr noundef nonnull %i.afh, ptr noundef nonnull @.str.321, ptr noundef %i.afi, i32 noundef %i.afk, ptr noundef %i.afn, i32 noundef %i.afq, i32 noundef %i.vr, i32 noundef %i.afr) ; 0 uses
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %proto_item_set_generated.exit185.i, %bb.fn, %bb.fm, %bb.fg, %proto_item_set_generated.exit173.i
  %.not159.i = icmp eq i32 %.sroa.0.0, 0
  %.not160.i = icmp eq i32 %.sroa.7.0, 0
  %or.cond547 = select i1 %.not159.i, i1 %.not160.i, i1 false
  br i1 %or.cond547, label %.critedge421, label %bb.fv

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
  %i.agf = add i8 %i.age, -1
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
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.313, i32 noundef 969) #18
  unreachable

bb.gc:                                            ; preds = %bb.ga, %proto_item_set_generated.exit191.i
  %.0150.i = phi i32 [ 262144, %bb.ga ], [ 4096, %proto_item_set_generated.exit191.i ]
  %i.agq = getelementptr i8, ptr %.sink.i, i64 24
  %i.agr = load i32, ptr %i.agq, align 4
  %i.ags = mul i32 %i.agr, %.0150.i
  %i.agt = add i32 %i.ags, %i.vr                  ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 0, ptr %7, align 4
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
  br i1 %.not63.i.i, label %look_up_keys_record.exit.thread.i, label %.lr.ph60.i.i

.lr.ph60.i.i:                                     ; preds = %.preheader.i.i
  %i.ahj = load ptr, ptr @uat_ue_keys_records, align 8
  %wide.trip.count.i.i = zext i32 %i.ahi to i64
  br label %bb.gs

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

bb.gg:                                            ; preds = %bb.gq, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.aia, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.gq ] ; 3 uses
  %i.aib = getelementptr [40 x i8], ptr %i.ahh, i64 %indvars.iv.i.i ; 14 uses
  %i.aic = getelementptr i8, ptr %i.aib, i64 4
  %i.aid = load i32, ptr %i.aic, align 4          ; 2 uses
  %i.aie = icmp ugt i32 %i.ahc, %i.aid
  br i1 %i.aie, label %bb.gh, label %bb.gq

bb.gh:                                            ; preds = %bb.gg
  %i.aif = getelementptr i8, ptr %i.aib, i64 -32
  %i.aig = load i32, ptr %i.aif, align 8
  switch i32 %i.aig, label %bb.gq [
    i32 0, label %bb.gi
    i32 1, label %bb.gk
    i32 2, label %bb.gm
    i32 3, label %bb.go
  ]

bb.gi:                                            ; preds = %bb.gh
  %i.aih = load i8, ptr %i.ahx, align 8, !range !7, !noundef !8
  %i.aii = trunc nuw i8 %i.aih to i1
  br i1 %i.aii, label %bb.gq, label %bb.gj

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
  br i1 %i.aio, label %bb.gq, label %bb.gl

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
  br i1 %i.aiu, label %bb.gq, label %bb.gn

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
  br i1 %i.aja, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajb = getelementptr i8, ptr %i.aib, i64 -24
  %i.ajc = load ptr, ptr %i.ajb, align 8
  store ptr %i.ajc, ptr %i.ahp, align 8
  %i.ajd = getelementptr i8, ptr %i.aib, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %i.ahq, ptr noundef align 8 dereferenceable(16) %i.ajd, i64 noundef 16, i1 noundef false) #14
  %i.aje = load i8, ptr %i.aib, align 8, !range !7, !noundef !8
  store i8 %i.aje, ptr %i.aho, align 1
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.gp, %bb.gn, %bb.gl, %bb.gj
  %.sink.i.i = phi ptr [ %4, %bb.gj ], [ %5, %bb.gl ], [ %6, %bb.gn ], [ %7, %bb.gp ]
  store i32 %i.aid, ptr %.sink.i.i, align 4
  br label %bb.gq

bb.gq:                                            ; preds = %.sink.split.i.i, %bb.go, %bb.gm, %bb.gk, %bb.gi, %bb.gh, %bb.gg
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.ajf = icmp sgt i64 %indvars.iv.i.i, 1
  br i1 %i.ajf, label %bb.gg, label %look_up_keys_record.exit.i, !llvm.loop !11

bb.gr:                                            ; preds = %bb.gs
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next67.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %look_up_keys_record.exit.thread.i, label %bb.gs, !llvm.loop !12

bb.gs:                                            ; preds = %bb.gr, %.lr.ph60.i.i
  %indvars.iv66.i.i = phi i64 [ 0, %.lr.ph60.i.i ], [ %indvars.iv.next67.i.i, %bb.gr ] ; 2 uses
  %i.ajg = getelementptr [112 x i8], ptr %i.ahj, i64 %indvars.iv66.i.i ; 2 uses
  %i.ajh = load i32, ptr %i.ajg, align 8
  %i.aji = icmp eq i32 %i.ajh, %i.ahe
  br i1 %i.aji, label %look_up_keys_record.exit.i, label %bb.gr

look_up_keys_record.exit.i:                       ; preds = %bb.gq, %bb.gs, %bb.gf
  %.055.i.i = phi ptr [ %i.ajg, %bb.gs ], [ %i.ahl, %bb.gf ], [ %i.ahl, %bb.gq ] ; 11 uses
  %.not161.i = icmp eq ptr %.055.i.i, null
  br i1 %.not161.i, label %look_up_keys_record.exit.thread.i, label %bb.gt

bb.gt:                                            ; preds = %look_up_keys_record.exit.i
  %i.ajj = load i32, ptr %i.w, align 4
  %i.ajk = icmp eq i32 %i.ajj, 1
  br i1 %i.ajk, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.ajl = getelementptr i8, ptr %.055.i.i, i64 56
  %i.ajm = load i8, ptr %i.ajl, align 8, !range !7, !noundef !8
  %i.ajn = trunc nuw i8 %i.ajm to i1              ; 3 uses
  br i1 %i.ajn, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.ajo = getelementptr i8, ptr %.055.i.i, i64 8
  %i.ajp = load ptr, ptr %i.ajo, align 8
  %i.ajq = getelementptr i8, ptr %.055.i.i, i64 40
  %.0..0..0..0..0.210.i = load i32, ptr %4, align 4
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %.sroa.11.0 = phi ptr [ %i.ajq, %bb.gv ], [ null, %bb.gu ] ; 2 uses
  %.0147.i = phi ptr [ %i.ajp, %bb.gv ], [ null, %bb.gu ] ; 2 uses
  %.0145.i = phi i32 [ %.0..0..0..0..0.210.i, %bb.gv ], [ 0, %bb.gu ] ; 2 uses
  %i.ajr = getelementptr i8, ptr %.055.i.i, i64 90
  %i.ajs = load i8, ptr %i.ajr, align 2, !range !7, !noundef !8
  %i.ajt = trunc nuw i8 %i.ajs to i1
  br i1 %i.ajt, label %.sink.split.i451, label %bb.ha

bb.gx:                                            ; preds = %bb.gt
  %i.aju = getelementptr i8, ptr %.055.i.i, i64 73
  %i.ajv = load i8, ptr %i.aju, align 1, !range !7, !noundef !8
  %i.ajw = trunc nuw i8 %i.ajv to i1              ; 3 uses
  br i1 %i.ajw, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.ajx = getelementptr i8, ptr %.055.i.i, i64 16
  %i.ajy = load ptr, ptr %i.ajx, align 8
  %i.ajz = getelementptr i8, ptr %.055.i.i, i64 57
  %.0..0..0..0..0.208.i = load i32, ptr %6, align 4
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %.sroa.11.1 = phi ptr [ %i.ajz, %bb.gy ], [ null, %bb.gx ] ; 2 uses
  %.1148.i = phi ptr [ %i.ajy, %bb.gy ], [ null, %bb.gx ] ; 2 uses
  %.1.i449 = phi i32 [ %.0..0..0..0..0.208.i, %bb.gy ], [ 0, %bb.gx ] ; 2 uses
  %i.aka = getelementptr i8, ptr %.055.i.i, i64 107
  %i.akb = load i8, ptr %i.aka, align 1, !range !7, !noundef !8
  %i.akc = trunc nuw i8 %i.akb to i1
  br i1 %i.akc, label %.sink.split.i451, label %bb.ha

.sink.split.i451:                                 ; preds = %bb.gz, %bb.gw
  %.sroa.11.2 = phi ptr [ %.sroa.11.0, %bb.gw ], [ %.sroa.11.1, %bb.gz ]
  %.sroa.16.2 = phi i1 [ %i.ajn, %bb.gw ], [ %i.ajw, %bb.gz ]
  %.sink263.i = phi i64 [ 24, %bb.gw ], [ 32, %bb.gz ]
  %.sink261.i = phi i64 [ 74, %bb.gw ], [ 91, %bb.gz ]
  %.sink.i452 = phi ptr [ %5, %bb.gw ], [ %7, %bb.gz ]
  %.2149.ph.i = phi ptr [ %.0147.i, %bb.gw ], [ %.1148.i, %bb.gz ]
  %.2.ph.i.a = phi i32 [ %.0145.i, %bb.gw ], [ %.1.i449, %bb.gz ]
  %i.akd = getelementptr i8, ptr %.055.i.i, i64 %.sink263.i
  %i.ake = load ptr, ptr %i.akd, align 8
  %i.akf = getelementptr i8, ptr %.055.i.i, i64 %.sink261.i
  %.0..0..i = load i32, ptr %.sink.i452, align 4
  br label %bb.ha

bb.ha:                                            ; preds = %.sink.split.i451, %bb.gz, %bb.gw
  %.sroa.11.3 = phi ptr [ %.sroa.11.2, %.sink.split.i451 ], [ %.sroa.11.0, %bb.gw ], [ %.sroa.11.1, %bb.gz ]
  %.sroa.14.0 = phi ptr [ %i.akf, %.sink.split.i451 ], [ null, %bb.gw ], [ null, %bb.gz ]
  %.sroa.16.3 = phi i1 [ %.sroa.16.2, %.sink.split.i451 ], [ %i.ajn, %bb.gw ], [ %i.ajw, %bb.gz ]
  %.sroa.19.0 = phi i1 [ true, %.sink.split.i451 ], [ false, %bb.gw ], [ false, %bb.gz ]
  %.2149.i = phi ptr [ %.2149.ph.i, %.sink.split.i451 ], [ %.0147.i, %bb.gw ], [ %.1148.i, %bb.gz ] ; 2 uses
  %.0146.i = phi ptr [ %i.ake, %.sink.split.i451 ], [ null, %bb.gw ], [ null, %bb.gz ] ; 2 uses
  %.2.i = phi i32 [ %.2.ph.i.a, %.sink.split.i451 ], [ %.0145.i, %bb.gw ], [ %.1.i449, %bb.gz ] ; 2 uses
  %.0.i450 = phi i32 [ %.0..0..i, %.sink.split.i451 ], [ 0, %bb.gw ], [ 0, %bb.gz ] ; 2 uses
  %.not162.i = icmp eq ptr %.2149.i, null
  br i1 %.not162.i, label %proto_item_set_generated.exit201.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akg = load i32, ptr @hf_pdcp_nr_security_cipher_key, align 4
  %i.akh = call ptr @proto_tree_add_string(ptr noundef %.0369, i32 noundef %i.akg, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %.2149.i) ; 2 uses
  %.not.i196.i = icmp eq ptr %i.akh, null
  br i1 %.not.i196.i, label %proto_item_set_generated.exit198.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.aki = getelementptr i8, ptr %i.akh, i64 40
  %i.akj = load ptr, ptr %i.aki, align 8          ; 2 uses
  %.not5.i197.i = icmp eq ptr %i.akj, null
  br i1 %.not5.i197.i, label %proto_item_set_generated.exit198.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.akk = getelementptr i8, ptr %i.akj, i64 28   ; 2 uses
  %i.akl = load i32, ptr %i.akk, align 4
  %i.akm = or i32 %i.akl, 2
  store i32 %i.akm, ptr %i.akk, align 4
  br label %proto_item_set_generated.exit198.i

proto_item_set_generated.exit198.i:               ; preds = %bb.hd, %bb.hc, %bb.hb
  %.not163.i = icmp eq i32 %.2.i, 0
  br i1 %.not163.i, label %proto_item_set_generated.exit201.i, label %bb.he

bb.he:                                            ; preds = %proto_item_set_generated.exit198.i
  %i.akn = load i32, ptr @hf_pdcp_nr_security_cipher_key_setup_frame, align 4
  %i.ako = call ptr @proto_tree_add_uint(ptr noundef %.0369, i32 noundef %i.akn, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.2.i) ; 2 uses
  %.not.i199.i = icmp eq ptr %i.ako, null
  br i1 %.not.i199.i, label %proto_item_set_generated.exit201.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.akp = getelementptr i8, ptr %i.ako, i64 40
  %i.akq = load ptr, ptr %i.akp, align 8          ; 2 uses
  %.not5.i200.i = icmp eq ptr %i.akq, null
  br i1 %.not5.i200.i, label %proto_item_set_generated.exit201.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.akr = getelementptr i8, ptr %i.akq, i64 28   ; 2 uses
  %i.aks = load i32, ptr %i.akr, align 4
  %i.akt = or i32 %i.aks, 2
  store i32 %i.akt, ptr %i.akr, align 4
  br label %proto_item_set_generated.exit201.i

proto_item_set_generated.exit201.i:               ; preds = %bb.hg, %bb.hf, %bb.he, %proto_item_set_generated.exit198.i, %bb.ha
  %.not164.i = icmp eq ptr %.0146.i, null
  br i1 %.not164.i, label %proto_item_set_generated.exit207.i, label %bb.hh

bb.hh:                                            ; preds = %proto_item_set_generated.exit201.i
  %i.aku = load i32, ptr @hf_pdcp_nr_security_integrity_key, align 4
  %i.akv = call ptr @proto_tree_add_string(ptr noundef %.0369, i32 noundef %i.aku, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %.0146.i) ; 2 uses
  %.not.i202.i = icmp eq ptr %i.akv, null
  br i1 %.not.i202.i, label %proto_item_set_generated.exit204.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.akw = getelementptr i8, ptr %i.akv, i64 40
  %i.akx = load ptr, ptr %i.akw, align 8          ; 2 uses
  %.not5.i203.i = icmp eq ptr %i.akx, null
  br i1 %.not5.i203.i, label %proto_item_set_generated.exit204.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aky = getelementptr i8, ptr %i.akx, i64 28   ; 2 uses
  %i.akz = load i32, ptr %i.aky, align 4
  %i.ala = or i32 %i.akz, 2
  store i32 %i.ala, ptr %i.aky, align 4
  br label %proto_item_set_generated.exit204.i

proto_item_set_generated.exit204.i:               ; preds = %bb.hj, %bb.hi, %bb.hh
  %.not165.i = icmp eq i32 %.0.i450, 0
  br i1 %.not165.i, label %proto_item_set_generated.exit207.i, label %bb.hk

bb.hk:                                            ; preds = %proto_item_set_generated.exit204.i
  %i.alb = load i32, ptr @hf_pdcp_nr_security_integrity_key_setup_frame, align 4
  %i.alc = call ptr @proto_tree_add_uint(ptr noundef %.0369, i32 noundef %i.alb, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.0.i450) ; 2 uses
  %.not.i205.i = icmp eq ptr %i.alc, null
  br i1 %.not.i205.i, label %proto_item_set_generated.exit207.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ald = getelementptr i8, ptr %i.alc, i64 40
  %i.ale = load ptr, ptr %i.ald, align 8          ; 2 uses
  %.not5.i206.i = icmp eq ptr %i.ale, null
  br i1 %.not5.i206.i, label %proto_item_set_generated.exit207.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.alf = getelementptr i8, ptr %i.ale, i64 28   ; 2 uses
  %i.alg = load i32, ptr %i.alf, align 4
  %i.alh = or i32 %i.alg, 2
  store i32 %i.alh, ptr %i.alf, align 4
  br label %proto_item_set_generated.exit207.i

proto_item_set_generated.exit207.i:               ; preds = %bb.hm, %bb.hl, %bb.hk, %proto_item_set_generated.exit204.i, %proto_item_set_generated.exit201.i
  %i.ali = load i8, ptr %.0371, align 8
  br label %look_up_keys_record.exit.thread.i

look_up_keys_record.exit.thread.i:                ; preds = %bb.gr, %proto_item_set_generated.exit207.i, %look_up_keys_record.exit.i, %.preheader.i.i
  %.sroa.11.4 = phi ptr [ null, %.preheader.i.i ], [ null, %look_up_keys_record.exit.i ], [ %.sroa.11.3, %proto_item_set_generated.exit207.i ], [ null, %bb.gr ]
  %.sroa.14.1 = phi ptr [ null, %.preheader.i.i ], [ null, %look_up_keys_record.exit.i ], [ %.sroa.14.0, %proto_item_set_generated.exit207.i ], [ null, %bb.gr ]
  %.sroa.16.4 = phi i1 [ false, %.preheader.i.i ], [ false, %look_up_keys_record.exit.i ], [ %.sroa.16.3, %proto_item_set_generated.exit207.i ], [ false, %bb.gr ]
  %.sroa.19.1 = phi i1 [ false, %.preheader.i.i ], [ false, %look_up_keys_record.exit.i ], [ %.sroa.19.0, %proto_item_set_generated.exit207.i ], [ false, %bb.gr ]
  %.sroa.27.0 = phi i8 [ 0, %.preheader.i.i ], [ 0, %look_up_keys_record.exit.i ], [ %i.ali, %proto_item_set_generated.exit207.i ], [ 0, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.critedge421

.critedge421:                                     ; preds = %bb.fu, %bb.ec, %look_up_keys_record.exit.thread.i, %.split, %.thread517, %bb.ea, %bb.dz, %bb.dy
  %.sroa.11.5 = phi ptr [ null, %bb.dy ], [ null, %bb.fu ], [ %.sroa.11.4, %look_up_keys_record.exit.thread.i ], [ null, %bb.ec ], [ null, %.split ], [ null, %bb.dz ], [ null, %bb.ea ], [ null, %.thread517 ] ; 5 uses
  %.sroa.14.2 = phi ptr [ null, %bb.dy ], [ null, %bb.fu ], [ %.sroa.14.1, %look_up_keys_record.exit.thread.i ], [ null, %bb.ec ], [ null, %.split ], [ null, %bb.dz ], [ null, %bb.ea ], [ null, %.thread517 ] ; 5 uses
  %.sroa.16.5 = phi i1 [ false, %bb.dy ], [ false, %bb.fu ], [ %.sroa.16.4, %look_up_keys_record.exit.thread.i ], [ false, %bb.ec ], [ false, %.split ], [ false, %bb.dz ], [ false, %bb.ea ], [ false, %.thread517 ] ; 5 uses
  %.sroa.19.2 = phi i1 [ false, %bb.dy ], [ false, %bb.fu ], [ %.sroa.19.1, %look_up_keys_record.exit.thread.i ], [ false, %bb.ec ], [ false, %.split ], [ false, %bb.dz ], [ false, %bb.ea ], [ false, %.thread517 ] ; 5 uses
  %.sroa.21589.0 = phi i32 [ 0, %bb.dy ], [ 0, %bb.fu ], [ %i.agt, %look_up_keys_record.exit.thread.i ], [ 0, %bb.ec ], [ 0, %.split ], [ 0, %bb.dz ], [ 0, %bb.ea ], [ 0, %.thread517 ] ; 5 uses
  %.sroa.24.0 = phi i8 [ 0, %bb.dy ], [ 0, %bb.fu ], [ %i.agf, %look_up_keys_record.exit.thread.i ], [ 0, %bb.ec ], [ 0, %.split ], [ 0, %bb.dz ], [ 0, %bb.ea ], [ 0, %.thread517 ] ; 5 uses
  %.sroa.27.1 = phi i8 [ 0, %bb.dy ], [ 0, %bb.fu ], [ %.sroa.27.0, %look_up_keys_record.exit.thread.i ], [ 0, %bb.ec ], [ 0, %.split ], [ 0, %bb.dz ], [ 0, %bb.ea ], [ 0, %.thread517 ] ; 5 uses
  %.3531.ph = phi i32 [ %.3.ph, %bb.dy ], [ %.3.ph, %bb.fu ], [ %.3.ph, %look_up_keys_record.exit.thread.i ], [ %.3.ph, %bb.ec ], [ %.3.ph, %.split ], [ %.3.ph, %bb.dz ], [ %.3.ph, %bb.ea ], [ %.1501, %.thread517 ] ; 5 uses
  %.pr = load i32, ptr %i.w, align 4              ; 2 uses
  %i.alj = icmp eq i32 %.pr, 2
  br i1 %i.alj, label %bb.hn, label %.thread535

bb.hn:                                            ; preds = %.critedge421
  %i.alk = load i8, ptr %.0371, align 8
  switch i8 %i.alk, label %.thread535 [
    i8 0, label %bb.ho
    i8 1, label %bb.hp
  ]

bb.ho:                                            ; preds = %bb.hn
  %i.all = getelementptr i8, ptr %.0371, i64 19
  %i.alm = load i8, ptr %i.all, align 1
  %i.aln = and i8 %i.alm, 1
  %.not411 = icmp eq i8 %i.aln, 0
  br i1 %.not411, label %.thread535, label %bb.hq

bb.hp:                                            ; preds = %bb.hn
  %i.alo = getelementptr i8, ptr %.0371, i64 19
  %i.alp = load i8, ptr %i.alo, align 1
  %i.alq = and i8 %i.alp, 2
  %.not412 = icmp eq i8 %i.alq, 0
  br i1 %.not412, label %.thread535, label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  br label %.thread535

.thread535:                                       ; preds = %bb.hn, %bb.ch, %bb.ho, %bb.hp, %bb.hq, %.critedge421
  %.sroa.11.6 = phi ptr [ null, %bb.ch ], [ %.sroa.11.5, %bb.hn ], [ %.sroa.11.5, %bb.ho ], [ %.sroa.11.5, %bb.hq ], [ %.sroa.11.5, %bb.hp ], [ %.sroa.11.5, %.critedge421 ]
  %.sroa.14.3 = phi ptr [ null, %bb.ch ], [ %.sroa.14.2, %bb.hn ], [ %.sroa.14.2, %bb.ho ], [ %.sroa.14.2, %bb.hq ], [ %.sroa.14.2, %bb.hp ], [ %.sroa.14.2, %.critedge421 ]
  %.sroa.16.6 = phi i1 [ false, %bb.ch ], [ %.sroa.16.5, %bb.hn ], [ %.sroa.16.5, %bb.ho ], [ %.sroa.16.5, %bb.hq ], [ %.sroa.16.5, %bb.hp ], [ %.sroa.16.5, %.critedge421 ]
  %.sroa.19.3 = phi i1 [ false, %bb.ch ], [ %.sroa.19.2, %bb.hn ], [ %.sroa.19.2, %bb.ho ], [ %.sroa.19.2, %bb.hq ], [ %.sroa.19.2, %bb.hp ], [ %.sroa.19.2, %.critedge421 ]
  %.sroa.21589.1 = phi i32 [ 0, %bb.ch ], [ %.sroa.21589.0, %bb.hn ], [ %.sroa.21589.0, %bb.ho ], [ %.sroa.21589.0, %bb.hq ], [ %.sroa.21589.0, %bb.hp ], [ %.sroa.21589.0, %.critedge421 ] ; 8 uses
  %.sroa.24.1 = phi i8 [ 0, %bb.ch ], [ %.sroa.24.0, %bb.hn ], [ %.sroa.24.0, %bb.ho ], [ %.sroa.24.0, %bb.hq ], [ %.sroa.24.0, %bb.hp ], [ %.sroa.24.0, %.critedge421 ] ; 2 uses
  %.sroa.27.2 = phi i8 [ 0, %bb.ch ], [ %.sroa.27.1, %bb.hn ], [ %.sroa.27.1, %bb.ho ], [ %.sroa.27.1, %bb.hq ], [ %.sroa.27.1, %bb.hp ], [ %.sroa.27.1, %.critedge421 ] ; 2 uses
  %i.alr = phi i1 [ false, %bb.ch ], [ true, %bb.hn ], [ true, %bb.ho ], [ true, %bb.hq ], [ true, %bb.hp ], [ false, %.critedge421 ] ; 2 uses
  %.3531534 = phi i32 [ 0, %bb.ch ], [ %.3531.ph, %bb.hn ], [ %.3531.ph, %bb.ho ], [ %.3531.ph, %bb.hq ], [ %.3531.ph, %bb.hp ], [ %.3531.ph, %.critedge421 ] ; 17 uses
  %i.als = phi i32 [ 1, %bb.ch ], [ 2, %bb.hn ], [ 2, %bb.ho ], [ 2, %bb.hq ], [ 2, %bb.hp ], [ %.pr, %.critedge421 ] ; 3 uses
  %.not414 = phi i1 [ true, %bb.ch ], [ true, %bb.hn ], [ true, %bb.ho ], [ false, %bb.hq ], [ true, %bb.hp ], [ true, %.critedge421 ]
  %.0346 = phi i32 [ 0, %bb.ch ], [ 0, %bb.hn ], [ 0, %bb.ho ], [ 1, %bb.hq ], [ 0, %bb.hp ], [ 0, %.critedge421 ] ; 2 uses
  br i1 %.not395, label %bb.hu, label %bb.hr

bb.hr:                                            ; preds = %.thread535
  %i.alt = getelementptr i8, ptr %.0371, i64 18
  %i.alu = load i8, ptr %i.alt, align 2, !range !7, !noundef !8
  %i.alv = trunc nuw i8 %i.alu to i1              ; 2 uses
  %brmerge = or i1 %i.alr, %i.alv
  %not. = xor i1 %i.alv, true
  br i1 %brmerge, label %bb.hu, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.alw = getelementptr i8, ptr %i.lt, i64 4
  %i.alx = load i8, ptr %i.alw, align 4, !range !7, !noundef !8
  %i.aly = trunc nuw i8 %i.alx to i1
  br i1 %i.aly, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.alz = getelementptr i8, ptr %i.lt, i64 5
  %i.ama = load i8, ptr %i.alz, align 1, !range !7, !noundef !8
  %i.amb = trunc nuw i8 %i.ama to i1
  %i.amc = xor i1 %i.amb, true
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hr, %bb.hs, %bb.ht, %.thread535
  %.0345 = phi i1 [ %not., %bb.hr ], [ false, %.thread535 ], [ %i.amc, %bb.ht ], [ false, %bb.hs ] ; 2 uses
  switch i32 %.sroa.0.0, label %bb.hv [
    i32 0, label %decipher_payload.exit.thread
    i32 999, label %decipher_payload.exit.thread
  ]

bb.hv:                                            ; preds = %bb.hu
  %cond.i = icmp eq i32 %.sroa.0.0, 2
  %or.cond72.i = and i1 %cond.i, %.sroa.16.6
  br i1 %or.cond72.i, label %bb.hw, label %decipher_payload.exit.thread

bb.hw:                                            ; preds = %bb.hv
  %i.amd = icmp ne i32 %i.als, 1
  %i.ame = load i8, ptr @global_pdcp_decipher_signalling, align 1, !range !7
  %i.amf = trunc nuw i8 %i.ame to i1
  %or.cond.i = select i1 %i.amd, i1 true, i1 %i.amf
  br i1 %or.cond.i, label %bb.hx, label %decipher_payload.exit.thread

bb.hx:                                            ; preds = %bb.hw
  %i.amg = icmp ne i32 %i.als, 2
  %i.amh = load i8, ptr @global_pdcp_decipher_userplane, align 1, !range !7
  %i.ami = trunc nuw i8 %i.amh to i1
  %or.cond3.i = select i1 %i.amg, i1 true, i1 %i.ami
  br i1 %or.cond3.i, label %bb.hy, label %decipher_payload.exit.thread

bb.hy:                                            ; preds = %bb.hx
  br i1 %i.alr, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.amj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.amk = icmp sgt i8 %i.amj, -1
  br i1 %i.amk, label %decipher_payload.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.hz
  %.pre.i = load i32, ptr %i.w, align 4
  br label %bb.ia

bb.ia:                                            ; preds = %._crit_edge.i, %bb.hy
  %i.aml = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.als, %bb.hy ]
  %i.amm = icmp eq i32 %i.aml, 1
  br i1 %i.amm, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.amn = getelementptr i8, ptr %.0371, i64 4
  %i.amo = load i32, ptr %i.amn, align 4
  %.not67.i = icmp eq i32 %i.amo, 1
  %brmerge.not.i = and i1 %.0345, %.not67.i
  br i1 %brmerge.not.i, label %bb.id, label %decipher_payload.exit.thread

bb.ic:                                            ; preds = %bb.ia
  br i1 %.0345, label %bb.id, label %decipher_payload.exit.thread

bb.id:                                            ; preds = %bb.ib, %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 noundef 0, i64 noundef 16, i1 noundef false) #14
  %i.amp = lshr i32 %.sroa.21589.1, 24
  %i.amq = trunc nuw i32 %i.amp to i8
  store i8 %i.amq, ptr %i.d, align 16
  %i.amr = lshr i32 %.sroa.21589.1, 16
  %i.ams = trunc i32 %i.amr to i8
  %i.amt = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.ams, ptr %i.amt, align 1
  %i.amu = lshr i32 %.sroa.21589.1, 8
  %i.amv = trunc i32 %i.amu to i8
  %i.amw = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.amv, ptr %i.amw, align 2
  %i.amx = trunc i32 %.sroa.21589.1 to i8
  %i.amy = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.amx, ptr %i.amy, align 1
  %i.amz = shl i8 %.sroa.24.1, 3
  %i.ana = shl i8 %.sroa.27.2, 2
  %i.anb = add i8 %i.ana, %i.amz
  %i.anc = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 %i.anb, ptr %i.anc, align 4
  %i.and = call i32 @gcry_cipher_open(ptr noundef nonnull %i.e, i32 noundef 7, i32 noundef 6, i32 noundef 0)
  %.not68.i = icmp eq i32 %i.and, 0
  br i1 %.not68.i, label %bb.ie, label %.critedge.i

bb.ie:                                            ; preds = %bb.id
  %i.ane = load ptr, ptr %i.e, align 8
  %i.anf = call i32 @gcry_cipher_setkey(ptr noundef %i.ane, ptr noundef %.sroa.11.6, i64 noundef 16)
  %.not69.i = icmp eq i32 %i.anf, 0
  %i.ang = load ptr, ptr %i.e, align 8            ; 2 uses
  br i1 %.not69.i, label %bb.if, label %.critedge.sink.split.i

bb.if:                                            ; preds = %bb.ie
  %i.anh = call i32 @gcry_cipher_setctr(ptr noundef %i.ang, ptr noundef nonnull %i.d, i64 noundef 16)
  %.not70.i = icmp eq i32 %i.anh, 0
  br i1 %.not70.i, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.ani = load ptr, ptr %i.e, align 8
  br label %.critedge.sink.split.i

bb.ih:                                            ; preds = %bb.if
  %i.anj = add nuw nsw i32 %.0346, %.3531534      ; 2 uses
  %i.ank = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.anj) ; 3 uses
  %i.anl = getelementptr i8, ptr %1, i64 416
  %i.anm = load ptr, ptr %i.anl, align 8
  %i.ann = sext i32 %i.ank to i64                 ; 2 uses
  %i.ano = call ptr @tvb_memdup(ptr noundef %i.anm, ptr noundef %0, i32 noundef %i.anj, i64 noundef %i.ann) ; 2 uses
  %i.anp = load ptr, ptr %i.e, align 8
  %i.anq = call i32 @gcry_cipher_decrypt(ptr noundef %i.anp, ptr noundef %i.ano, i64 noundef %i.ann, ptr noundef null, i64 noundef 0)
  %.not71.i = icmp eq i32 %i.anq, 0
  %i.anr = load ptr, ptr %i.e, align 8
  call void @gcry_cipher_close(ptr noundef %i.anr)
  br i1 %.not71.i, label %bb.ii, label %.critedge.i

.critedge.sink.split.i:                           ; preds = %bb.ig, %bb.ie
  %.sink.i436 = phi ptr [ %i.ani, %bb.ig ], [ %i.ang, %bb.ie ]
  call void @gcry_cipher_close(ptr noundef %.sink.i436)
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.sink.split.i, %bb.ih, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %decipher_payload.exit.thread

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.ans = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.ano, i32 noundef %i.ank, i32 noundef %i.ank) ; 4 uses
  %i.ant = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.ans, ptr noundef nonnull @.str.322) ; 0 uses
  %i.anu = load i32, ptr @hf_pdcp_nr_security_deciphered_data, align 4
  %i.anv = call i32 @tvb_reported_length(ptr noundef %i.ans)
  %i.anw = call ptr @proto_tree_add_item(ptr noundef %.0364510, i32 noundef %i.anu, ptr noundef %i.ans, i32 noundef 0, i32 noundef %i.anv, i32 noundef 0) ; 0 uses
  br label %decipher_payload.exit.thread

decipher_payload.exit.thread:                     ; preds = %bb.hu, %bb.hu, %bb.hv, %bb.hw, %bb.hx, %bb.ic, %bb.ib, %.critedge.i, %bb.hz, %bb.ii
  %i.anx = phi i1 [ true, %bb.ii ], [ false, %bb.hz ], [ false, %.critedge.i ], [ false, %bb.ib ], [ false, %bb.ic ], [ false, %bb.hx ], [ false, %bb.hw ], [ false, %bb.hv ], [ false, %bb.hu ], [ false, %bb.hu ] ; 4 uses
  %.165.i542 = phi ptr [ %i.ans, %bb.ii ], [ %0, %bb.hz ], [ %0, %.critedge.i ], [ %0, %bb.ib ], [ %0, %bb.ic ], [ %0, %bb.hx ], [ %0, %bb.hw ], [ %0, %bb.hv ], [ %0, %bb.hu ], [ %0, %bb.hu ] ; 15 uses
  %.7539 = phi i32 [ 0, %bb.ii ], [ %.3531534, %bb.hz ], [ %.3531534, %.critedge.i ], [ %.3531534, %bb.ib ], [ %.3531534, %bb.ic ], [ %.3531534, %bb.hx ], [ %.3531534, %bb.hw ], [ %.3531534, %bb.hv ], [ %.3531534, %bb.hu ], [ %.3531534, %bb.hu ] ; 10 uses
  %i.any = load i8, ptr %.0371, align 8
  %i.anz = icmp eq i8 %i.any, 1
  %i.aoa = icmp ne ptr %.0370, null               ; 2 uses
  %or.cond6 = and i1 %i.aoa, %i.anz
  br i1 %or.cond6, label %bb.ij, label %bb.il

bb.ij:                                            ; preds = %decipher_payload.exit.thread
  %i.aob = getelementptr i8, ptr %.0370, i64 5    ; 2 uses
  %i.aoc = load i8, ptr %i.aob, align 1, !range !7, !noundef !8
  %i.aod = trunc nuw i8 %i.aoc to i1
  br i1 %i.aod, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  store i8 0, ptr %i.aob, align 1
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij, %decipher_payload.exit.thread
  %i.aoe = load i8, ptr @global_pdcp_check_integrity, align 1, !range !7, !noundef !8
  %i.aof = trunc nuw i8 %i.aoe to i1
  br i1 %i.aof, label %bb.im, label %calculate_digest.exit

bb.im:                                            ; preds = %bb.il
  %i.aog = getelementptr i8, ptr %.0371, i64 17
  %i.aoh = load i8, ptr %i.aog, align 1, !range !7, !noundef !8
  %i.aoi = trunc nuw i8 %i.aoh to i1
  br i1 %i.aoi, label %bb.in, label %calculate_digest.exit

bb.in:                                            ; preds = %bb.im
  %i.aoj = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 0, i32 noundef %.3531534) ; 2 uses
  %i.aok = select i1 %i.anx, i32 0, i32 %.0346    ; 3 uses
  %i.aol = icmp eq i32 %.sroa.7.0, 0
  br i1 %i.aol, label %calculate_digest.exit, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.aom = load i8, ptr @global_pdcp_check_integrity, align 1, !range !7
  %i.aon = trunc nuw i8 %i.aom to i1
  %or.cond.i437 = select i1 %.sroa.19.3, i1 %i.aon, i1 false
  br i1 %or.cond.i437, label %bb.ip, label %calculate_digest.exit

bb.ip:                                            ; preds = %bb.io
end_hunk_2
