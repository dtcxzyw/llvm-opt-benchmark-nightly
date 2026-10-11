Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/opcua?download=true
inline.NumInlined: 13
inline.NumDeleted: 7
begin_hunk_0_@dissect_opcua_message:bb.a
bb.n:                                             ; preds = %bb.m
  %i.at = load i32, ptr %i.d, align 4
  %i.au = add i32 %i.at, 8
  %i.av = call i32 @getServiceNodeId(ptr noundef %0, i32 noundef %i.au)
  %i.aw = call ptr @val_to_str_const(i32 noundef %i.av, ptr noundef nonnull @g_requesttypes, ptr noundef nonnull @.str.47)
  %i.ax = call i32 @strcmp(ptr noundef %i.aw, ptr noundef nonnull dereferenceable(10) @.str.47) #12
  %i.ay = icmp eq i32 %i.ax, 0
  %. = select i1 %i.ay, i32 3, i32 2              ; 2 uses
  store i32 %., ptr %i.b, align 4
  %i.az = load i8, ptr %i.c, align 1
  call void @store_encryption_info(ptr noundef %1, i32 noundef %., i8 noundef zeroext %i.az)
  %.pr = load i32, ptr %i.b, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ba = phi i32 [ %.pr, %bb.n ], [ %i.ar, %bb.m ]
  switch i32 %i.ba, label %bb.y [
    i32 3, label %bb.p
    i32 2, label %bb.x
  ]

bb.p:                                             ; preds = %bb.o
  %i.bb = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.bc = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 12)
  %i.bd = call i32 @tvb_ensure_captured_length_remaining(ptr noundef %0, i32 noundef 16) ; 6 uses
  %i.be = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 16, i32 noundef %i.bd)
  %i.bf = getelementptr i8, ptr %1, i64 416
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = zext i32 %i.bd to i64                   ; 3 uses
  %i.bi = call noalias ptr @wmem_alloc(ptr noundef %i.bg, i64 noundef %i.bh) #15 ; 3 uses
  %i.bj = zext i32 %i.bb to i64
  %i.bk = shl nuw i64 %i.bj, 32
  %i.bl = zext i32 %i.bc to i64
  %i.bm = or disjoint i64 %i.bk, %i.bl
  %i.bn = call ptr @ua_keysets_lookup(i64 noundef %i.bm) ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %decrypt_opcua.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %..i = select i1 %.0191, i64 24, i64 8
  %.54.i = select i1 %.0191, i64 108, i64 104
  %.55.i = select i1 %.0191, i64 72, i64 40
  %.56.i = select i1 %.0191, i64 116, i64 112
  %i.bp = getelementptr i8, ptr %i.bn, i64 %..i
  %i.bq = getelementptr i8, ptr %i.bn, i64 %.54.i
  %i.br = getelementptr i8, ptr %i.bn, i64 %.55.i
  %i.bs = getelementptr i8, ptr %i.bn, i64 %.56.i
  %.044.i = load i32, ptr %i.bq, align 4          ; 2 uses
  %storemerge.in.i = load i32, ptr %i.bs, align 4
  %storemerge.i = trunc i32 %storemerge.in.i to i8
  store i8 %storemerge.i, ptr %i.c, align 1
  switch i32 %.044.i, label %decrypt_opcua.exit.thread [
    i32 16, label %bb.s
    i32 32, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.040.i = phi i32 [ 9, %bb.r ], [ 7, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bt = call i32 @gcry_cipher_open(ptr noundef nonnull %i.a, i32 noundef %.040.i, i32 noundef 3, i32 noundef 4)
  %.not.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i, label %bb.t, label %decrypt_opcua.exit.thread221

bb.t:                                             ; preds = %bb.s
  %i.bu = load ptr, ptr %i.a, align 8
  %i.bv = zext nneg i32 %.044.i to i64
  %i.bw = call i32 @gcry_cipher_setkey(ptr noundef %i.bu, ptr noundef %i.br, i64 noundef %i.bv)
  %.not47.i = icmp eq i32 %i.bw, 0
  %i.bx = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not47.i, label %bb.u, label %decrypt_opcua.exit.thread221.sink.split

bb.u:                                             ; preds = %bb.t
  %i.by = call i32 @gcry_cipher_setiv(ptr noundef %i.bx, ptr noundef %i.bp, i64 noundef 16)
  %.not48.i = icmp eq i32 %i.by, 0
  %i.bz = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not48.i, label %bb.v, label %decrypt_opcua.exit.thread221.sink.split

bb.v:                                             ; preds = %bb.u
  %i.ca = call i32 @gcry_cipher_decrypt(ptr noundef %i.bz, ptr noundef %i.bi, i64 noundef %i.bh, ptr noundef %i.be, i64 noundef %i.bh)
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = load ptr, ptr %i.a, align 8
  call void @gcry_cipher_close(ptr noundef %i.cc)
  br i1 %i.cb, label %bb.w, label %decrypt_opcua.exit.thread221

decrypt_opcua.exit.thread221.sink.split:          ; preds = %bb.u, %bb.t
  %.sink = phi ptr [ %i.bx, %bb.t ], [ %i.bz, %bb.u ]
  call void @gcry_cipher_close(ptr noundef %.sink)
  br label %decrypt_opcua.exit.thread221

decrypt_opcua.exit.thread221:                     ; preds = %decrypt_opcua.exit.thread221.sink.split, %bb.s, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %decrypt_opcua.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.cd = load i8, ptr %i.c, align 1
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = xor i32 %i.ce, -1
  %i.cg = add i32 %i.bd, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.bi, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %.neg250 = add i32 %i.bd, -9
  %i.cl = add nuw nsw i32 %i.ck, %i.ce
  %i.cm = sub i32 %.neg250, %i.cl
  %i.cn = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.bi, i32 noundef %i.bd, i32 noundef %i.bd) ; 3 uses
  %i.co = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.cn, ptr noundef nonnull @.str.48) ; 0 uses
  store i32 0, ptr %i.d, align 4
  br label %bb.z

decrypt_opcua.exit.thread:                        ; preds = %bb.q, %bb.p, %decrypt_opcua.exit.thread221
  store i8 1, ptr %4, align 1
  br label %bb.z

bb.x:                                             ; preds = %bb.o
  %i.cp = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 8)
  %i.cq = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef 12)
  %i.cr = call i32 @tvb_ensure_captured_length_remaining(ptr noundef %0, i32 noundef 24)
  %i.cs = zext i32 %i.cp to i64
  %i.ct = shl nuw i64 %i.cs, 32
  %i.cu = zext i32 %i.cq to i64
  %i.cv = or disjoint i64 %i.ct, %i.cu
  %i.cw = call ptr @ua_keysets_lookup(i64 noundef %i.cv) ; 2 uses
  %.not.i211 = icmp eq ptr %i.cw, null
  br i1 %.not.i211, label %.opcua_get_footer_info.exit_crit_edge, label %.sink.split.i

.opcua_get_footer_info.exit_crit_edge:            ; preds = %bb.x
  %.pre = load i8, ptr %i.c, align 1
  br label %opcua_get_footer_info.exit

.sink.split.i:                                    ; preds = %bb.x
  %.sink8.in.i.v = select i1 %.0191, i64 116, i64 112
  %.sink8.in.i = getelementptr i8, ptr %i.cw, i64 %.sink8.in.i.v
  %.sink8.i = load i32, ptr %.sink8.in.i, align 4
  %i.cx = trunc i32 %.sink8.i to i8               ; 2 uses
  store i8 %i.cx, ptr %i.c, align 1
  br label %opcua_get_footer_info.exit

opcua_get_footer_info.exit:                       ; preds = %.opcua_get_footer_info.exit_crit_edge, %.sink.split.i
  %i.cy = phi i8 [ %.pre, %.opcua_get_footer_info.exit_crit_edge ], [ %i.cx, %.sink.split.i ]
  %i.cz = zext i8 %i.cy to i32
  %i.da = sub i32 %i.cr, %i.cz
  br label %bb.z

bb.y:                                             ; preds = %bb.o
  %i.db = call i32 @tvb_ensure_captured_length_remaining(ptr noundef %0, i32 noundef 24)
  store i8 0, ptr %i.c, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %decrypt_opcua.exit.thread, %opcua_get_footer_info.exit, %bb.y
  %.0213 = phi i32 [ 0, %bb.y ], [ %i.ck, %bb.w ], [ 0, %decrypt_opcua.exit.thread ], [ 0, %opcua_get_footer_info.exit ]
  %.1195 = phi ptr [ %0, %bb.y ], [ %i.cn, %bb.w ], [ %0, %decrypt_opcua.exit.thread ], [ %0, %opcua_get_footer_info.exit ] ; 10 uses
  %.1189 = phi i1 [ false, %bb.y ], [ true, %bb.w ], [ false, %decrypt_opcua.exit.thread ], [ false, %opcua_get_footer_info.exit ]
  %.1186 = phi ptr [ null, %bb.y ], [ %i.cn, %bb.w ], [ null, %decrypt_opcua.exit.thread ], [ %0, %opcua_get_footer_info.exit ] ; 2 uses
  %.2173 = phi i32 [ %i.db, %bb.y ], [ %i.cm, %bb.w ], [ 0, %decrypt_opcua.exit.thread ], [ %i.da, %opcua_get_footer_info.exit ] ; 3 uses
  %i.dc = load i32, ptr %i.d, align 4
  %i.dd = call i32 @tvb_get_letohl(ptr noundef %.1195, i32 noundef %i.dc) ; 3 uses
  %i.de = load i32, ptr %i.d, align 4
  %i.df = add i32 %i.de, 4
  %i.dg = call i32 @tvb_get_letohl(ptr noundef %.1195, i32 noundef %i.df) ; 5 uses
  call void @parseSequenceHeader(ptr noundef %i.am, ptr noundef %.1195, ptr noundef nonnull %i.d, ptr noundef nonnull %4)
  %.not208 = icmp eq i8 %i.ao, 65
  br i1 %.not208, label %bb.ax, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = call ptr @fragment_get(ptr noundef nonnull @opcua_reassembly_table, ptr noundef %1, i32 noundef %i.dg, ptr noundef null) ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dj = call ptr @fragment_get_reassembled_id(ptr noundef nonnull @opcua_reassembly_table, ptr noundef %1, i32 noundef %i.dg) ; 2 uses
  %i.dk = icmp ne ptr %i.dj, null
  %i.dl = icmp eq i8 %i.ao, 67
  %or.cond5 = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond5, label %.thread, label %bb.ah

.thread:                                          ; preds = %bb.aa, %bb.ab
  %.0170226 = phi ptr [ %i.dj, %bb.ab ], [ %i.dh, %bb.aa ]
  %i.dm = getelementptr i8, ptr %1, i64 272       ; 3 uses
  %i.dn = load i8, ptr %i.dm, align 8, !range !15, !noundef !16
  store i8 1, ptr %i.dm, align 8
  %i.do = icmp eq ptr %.0170226, null             ; 3 uses
  %i.dp = icmp ne i8 %i.ao, 70
  %i.dq = select i1 %i.do, i32 0, i32 %i.dd
  %.0169 = select i1 %i.do, i1 true, i1 %i.dp
  %i.dr = load i32, ptr %i.d, align 4
  %i.ds = call ptr @fragment_add_seq_check(ptr noundef nonnull @opcua_reassembly_table, ptr noundef %.1195, i32 noundef %i.dr, ptr noundef %1, i32 noundef %i.dg, ptr noundef null, i32 noundef %i.dq, i32 noundef %.2173, i1 noundef zeroext %.0169)
  br i1 %i.do, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread
  call void @fragment_add_seq_offset(ptr noundef nonnull @opcua_reassembly_table, ptr noundef %1, i32 noundef %i.dg, ptr noundef null, i32 noundef %i.dd)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread
  %i.dt = load i32, ptr %i.d, align 4
  %i.du = call ptr @process_reassembled_data(ptr noundef %.1195, i32 noundef %i.dt, ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef %i.ds, ptr noundef nonnull @opcua_frag_items, ptr noundef null, ptr noundef %i.am) ; 2 uses
  %.not207 = icmp ne ptr %i.du, null              ; 3 uses
  br i1 %.not207, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.d, align 4
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dv = load ptr, ptr %i.k, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.dv, i32 noundef 25, ptr noundef nonnull @.str.51, i32 noundef %i.dd)
  %i.dw = call ptr @tvb_new_subset_remaining(ptr noundef %.1195, i32 noundef 0)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2196 = phi ptr [ %i.du, %bb.ae ], [ %i.dw, %bb.af ]
  store i8 %i.dn, ptr %i.dm, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ab
  %.4.ph = phi ptr [ %.1195, %bb.ab ], [ %.2196, %bb.ag ] ; 6 uses
  %.2181.ph.not = phi i1 [ true, %bb.ab ], [ %.not207, %bb.ag ]
  %.2177.ph = phi i1 [ false, %bb.ab ], [ %.not207, %bb.ag ]
  %i.dx = load i8, ptr %4, align 1, !range !15, !noundef !16
  %i.dy = trunc nuw i8 %i.dx to i1
  %.not = xor i1 %i.dy, true
  %or.cond7 = and i1 %.2181.ph.not, %.not
  br i1 %or.cond7, label %bb.ai, label %.thread232

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.af, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dz = call i32 @parseService(ptr noundef %i.am, ptr noundef %.4.ph, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %4) ; 2 uses
  switch i32 %i.dz, label %bb.am [
    i32 452, label %bb.ak
    i32 455, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ea = load ptr, ptr %i.k, align 8
  call void @col_append_str(ptr noundef %i.ea, i32 noundef 25, ptr noundef nonnull @.str.52)
  br label %bb.as

bb.al:                                            ; preds = %bb.aj
  %i.eb = load ptr, ptr %i.k, align 8
  call void @col_append_str(ptr noundef %i.eb, i32 noundef 25, ptr noundef nonnull @.str.53)
  br label %bb.as

bb.am:                                            ; preds = %bb.aj
  %i.ec = getelementptr i8, ptr %1, i64 416
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call ptr @val_to_str(ptr noundef %i.ed, i32 noundef %i.dz, ptr noundef nonnull @g_requesttypes, ptr noundef nonnull @.str.54)
  %i.ef = load ptr, ptr %i.k, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ef, i32 noundef 25, ptr noundef nonnull @.str.55, ptr noundef %i.ee)
  br label %bb.as

bb.an:                                            ; preds = %bb.ai
  br i1 %i.ae, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.eg = call i32 @parseService(ptr noundef %i.am, ptr noundef %.4.ph, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %4) ; 2 uses
  %.not209 = icmp eq i32 %i.eg, -1
  br i1 %.not209, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eh = getelementptr i8, ptr %1, i64 416
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = call ptr @val_to_str(ptr noundef %i.ei, i32 noundef %i.eg, ptr noundef nonnull @g_requesttypes, ptr noundef nonnull @.str.54) ; 2 uses
  %i.ek = load ptr, ptr %i.k, align 8             ; 2 uses
  br i1 %.2177.ph, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ek, i32 noundef 25, ptr noundef nonnull @.str.56, ptr noundef %i.ej)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ek, i32 noundef 25, ptr noundef nonnull @.str.57, ptr noundef %i.ej)
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.an, %bb.ao, %bb.ak, %bb.am, %bb.al
  %i.el = load i32, ptr %i.b, align 4             ; 2 uses
  %i.em = icmp eq i32 %i.el, 3
  %or.cond9 = and i1 %.1189, %i.em
  br i1 %or.cond9, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.en = add i32 %.2173, 8
  %i.eo = load i8, ptr %i.c, align 1
  %i.ep = zext i8 %i.eo to i32
  call void @parseSecurityFooterSAE(ptr noundef %i.am, ptr noundef %.1186, i32 noundef %i.en, i32 noundef %.0213, i32 noundef %i.ep)
  br label %.thread232

bb.au:                                            ; preds = %bb.as
  %i.eq = icmp eq i32 %i.el, 2
  br i1 %i.eq, label %bb.av, label %.thread232

bb.av:                                            ; preds = %bb.au
  %i.er = add i32 %.2173, 24
  %i.es = load i8, ptr %i.c, align 1
  %i.et = zext i8 %i.es to i32
  call void @parseSecurityFooterSO(ptr noundef %i.am, ptr noundef %.1186, i32 noundef %i.er, i32 noundef %i.et)
  br label %.thread232

.thread232:                                       ; preds = %bb.l, %bb.at, %bb.av, %bb.au, %bb.ah
  %.5242 = phi ptr [ %.4.ph, %bb.ah ], [ %.4.ph, %bb.at ], [ %.4.ph, %bb.av ], [ %.4.ph, %bb.au ], [ %0, %bb.l ]
  %i.eu = load i8, ptr %4, align 1, !range !15, !noundef !16
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %.sink.split, label %bb.aw

bb.aw:                                            ; preds = %.thread232
  %i.ew = load i32, ptr %i.b, align 4
  %i.ex = icmp eq i32 %i.ew, 3
  br i1 %i.ex, label %.sink.split, label %bb.ay

bb.ax:                                            ; preds = %bb.z
  %i.ey = call ptr @fragment_delete(ptr noundef nonnull @opcua_reassembly_table, ptr noundef %1, i32 noundef %i.dg, ptr noundef null) ; 0 uses
  %i.ez = load ptr, ptr %i.k, align 8
  call void @col_clear_fence(ptr noundef %i.ez, i32 noundef 25)
  %i.fa = load ptr, ptr %i.k, align 8
  call void @col_set_str(ptr noundef %i.fa, i32 noundef 25, ptr noundef nonnull @.str.49)
  store i32 0, ptr %i.d, align 4
  %i.fb = call i32 %.0193(ptr noundef %i.am, ptr noundef %.1195, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %4) ; 0 uses
  %i.fc = call i32 @parseAbort(ptr noundef %i.am, ptr noundef %.1195, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %4) ; 0 uses
  %i.fd = call i32 @tvb_reported_length(ptr noundef %.1195)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.az

.sink.split:                                      ; preds = %bb.aw, %.thread232
  %.str.59.sink = phi ptr [ @.str.58, %.thread232 ], [ @.str.59, %bb.aw ]
  %i.fe = load ptr, ptr %i.k, align 8
  call void @col_append_str(ptr noundef %i.fe, i32 noundef 25, ptr noundef nonnull %.str.59.sink)
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.ff = call i32 @tvb_reported_length(ptr noundef %.5242)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.k
  %.3 = phi i32 [ %i.ff, %bb.ay ], [ %i.fd, %bb.ax ], [ %i.ad, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i32 %.3
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_get_range_value(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @value_is_in_range(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @get_encryption_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_memeql(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @parseHello(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @parseAcknowledge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @parseError(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @parseReverseHello(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @parseMessage(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @parseOpenSecureChannel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @parseCloseSecureChannel(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @parseSecurityHeader(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @getServiceNodeId(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @store_encryption_info(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_ensure_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @parseSequenceHeader(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_delete(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @col_clear_fence(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @parseAbort(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_get_reassembled_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_seq_check(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @fragment_add_seq_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @process_reassembled_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @parseService(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @parseSecurityFooterSAE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
end_hunk_0
