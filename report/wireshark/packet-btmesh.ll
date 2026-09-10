Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-btmesh?download=true
inline.NumInlined: 30
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 20
begin_hunk_0_@dissect_btmesh_msg:bb.a
  %i.gu = mul i32 %i.ga, 12
  %i.gv = call i32 @tvb_captured_length_remaining(ptr noundef nonnull %i.av, i32 noundef 6)
  %i.gw = add i32 %i.gv, %i.gu
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0.i = phi i32 [ %i.gw, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.gx = call ptr @fragment_get(ptr noundef nonnull @upper_transport_reassembly_table, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5)
  %i.gy = icmp ne ptr %i.gx, null
  %i.gz = icmp ne i32 %.0.i, 0                    ; 2 uses
  %or.cond5.i = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %or.cond5.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @fragment_set_tot_len(ptr noundef nonnull @upper_transport_reassembly_table, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5, i32 noundef %.0.i)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ha = load i32, ptr %i.f, align 4
  %i.hb = mul i32 %i.ha, 12
  %i.hc = call i32 @tvb_captured_length_remaining(ptr noundef nonnull %i.av, i32 noundef 6)
  %i.hd = load i32, ptr %i.g, align 4
  %i.he = icmp ne i32 %i.hd, 0
  %i.hf = call ptr @fragment_add(ptr noundef nonnull @upper_transport_reassembly_table, ptr noundef nonnull %i.av, i32 noundef 6, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5, i32 noundef %i.hb, i32 noundef %i.hc, i1 noundef zeroext %i.he)
  %i.hg = icmp eq ptr %i.hf, null
  %or.cond7.i = select i1 %i.hg, i1 %i.gz, i1 false
  br i1 %or.cond7.i, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  call void @fragment_set_tot_len(ptr noundef nonnull @upper_transport_reassembly_table, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5, i32 noundef %.0.i)
  br label %bb.al

bb.ag:                                            ; preds = %bb.z
  %i.hh = call ptr @fragment_get(ptr noundef nonnull @upper_transport_reassembly_table, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5) ; 3 uses
  %.not196.i = icmp eq ptr %i.hh, null
  br i1 %.not196.i, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hi = getelementptr i8, ptr %i.hh, i64 48
  %i.hj = load i32, ptr %i.hi, align 8
  %i.hk = and i32 %i.hj, 1
  %.not197.i = icmp eq i32 %i.hk, 0
  br i1 %.not197.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hl = call ptr @process_reassembled_data(ptr noundef nonnull %i.av, i32 noundef 6, ptr noundef %1, ptr noundef nonnull @.str.2226, ptr noundef nonnull %i.hh, ptr noundef nonnull @btmesh_segmented_access_frag_items, ptr noundef null, ptr noundef %i.bs) ; 2 uses
  %.not198.i = icmp eq ptr %i.hl, null
  br i1 %.not198.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hm = load i32, ptr %i.j, align 4
  %.not199.i = icmp eq i32 %i.hm, 0
  %i.hn = select i1 %.not199.i, i32 4, i32 8
  %i.ho = getelementptr i8, ptr %i.ae, i64 48
  store i32 %i.hn, ptr %i.ho, align 4
  call fastcc void @dissect_btmesh_transport_access_message(ptr noundef %i.hl, ptr noundef %1, ptr noundef %i.v, i32 noundef 0, ptr noundef %i.ae)
  %i.hp = load ptr, ptr %i.q, align 8
  call void @col_append_str(ptr noundef %i.hp, i32 noundef 25, ptr noundef nonnull @.str.2223)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.hq = load ptr, ptr %i.q, align 8
  call void @col_clear(ptr noundef %i.hq, i32 noundef 25)
  %i.hr = load ptr, ptr %i.q, align 8
  %i.hs = load i32, ptr %i.f, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.hr, i32 noundef 25, ptr noundef nonnull @.str.2227, i32 noundef %i.hs)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.an

bb.am:                                            ; preds = %bb.w
  %i.ht = load ptr, ptr %i.a, align 8
  call void @proto_item_set_len(ptr noundef %i.ht, i32 noundef 1)
  %i.hu = getelementptr i8, ptr %i.ae, i64 48
  store i32 4, ptr %i.hu, align 4
  call fastcc void @dissect_btmesh_transport_access_message(ptr noundef nonnull %i.av, ptr noundef %1, ptr noundef %i.v, i32 noundef 3, ptr noundef %i.ae)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %dissect_btmesh_transport_pdu.exit

dissect_btmesh_transport_pdu.exit:                ; preds = %bb.f, %bb.s, %bb.u, %bb.v, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ap

bb.ao:                                            ; preds = %bb.a
  %i.hv = load i32, ptr @hf_btmesh_obfuscated, align 4
  %i.hw = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.hv, ptr noundef %0, i32 noundef 1, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.hx = load i32, ptr @hf_btmesh_encrypted, align 4
  %i.hy = tail call ptr @proto_tree_add_item(ptr noundef %i.x, i32 noundef %i.hx, ptr noundef %0, i32 noundef 7, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.hz = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.b, %dissect_btmesh_transport_pdu.exit, %bb.ao
  %.0 = phi i32 [ %i.hz, %bb.ao ], [ %i.bh, %dissect_btmesh_transport_pdu.exit ], [ %i.bh, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_cipher_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare ptr @abs_time_secs_to_str_ex(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_stpcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @compute_ascii_key(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 2, 17) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %i.b = trunc i64 %i.a to i32                    ; 5 uses
  %i.c = shl nuw nsw i32 %3, 1                    ; 2 uses
  %i.d = add nuw nsw i32 %i.c, 2
  %i.e = icmp eq i32 %i.d, %i.b
  %i.f = or disjoint i32 %i.c, 1
  %i.g = icmp eq i32 %i.f, %i.b
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 1
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1
  switch i8 %i.k, label %bb.o [
    i8 120, label %bb.e
    i8 88, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = and i32 %i.b, 1
  %.not80 = icmp eq i32 %i.l, 0
  %i.m = add nsw i32 %i.b, -2
  %i.n = lshr i32 %i.m, 1                         ; 4 uses
  br i1 %.not80, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nuw nsw i32 %i.n, 2
  %i.p = zext nneg i32 %i.o to i64
  %i.q = tail call noalias ptr @g_malloc(i64 noundef %i.p) #17 ; 3 uses
  store ptr %i.q, ptr %0, align 8
  %i.r = getelementptr i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %i.t = tail call i32 @g_ascii_xdigit_value(i8 noundef signext %i.s) #18 ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @g_free(ptr noundef %i.q)
  store ptr null, ptr %0, align 8
  %i.v = getelementptr i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1
  %i.x = sext i8 %i.w to i32
  %i.y = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.2215, ptr noundef nonnull %1, i32 noundef %i.x)
  store ptr %i.y, ptr %4, align 8
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.z = add nuw nsw i32 %i.n, 1
  %i.aa = trunc i32 %i.t to i8
  store i8 %i.aa, ptr %i.q, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ab = add nuw nsw i32 %i.n, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = tail call noalias ptr @g_malloc(i64 noundef %i.ac) #17
  store ptr %i.ad, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.071 = phi i32 [ %i.z, %bb.h ], [ %i.n, %bb.i ]
  %.069 = phi i32 [ 3, %bb.h ], [ 2, %bb.i ]
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %bb.i ]
  %i.ae = add nsw i32 %i.b, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.n
  %.189 = phi i32 [ %i.bh, %bb.n ], [ %.0, %bb.j ] ; 2 uses
  %.17088 = phi i32 [ %i.ba, %bb.n ], [ %.069, %bb.j ] ; 3 uses
  %i.af = zext i32 %.17088 to i64                 ; 2 uses
  %i.ag = getelementptr i8, ptr %1, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = tail call i32 @g_ascii_xdigit_value(i8 noundef signext %i.ah) #18 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.ak = getelementptr i8, ptr %1, i64 %i.af
  %i.al = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.al)
  store ptr null, ptr %0, align 8
  %i.am = load i8, ptr %i.ak, align 1
  %i.an = sext i8 %i.am to i32
  %i.ao = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.2216, ptr noundef %2, ptr noundef nonnull %1, i32 noundef %i.an)
  store ptr %i.ao, ptr %4, align 8
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph
  %i.ap = add nuw i32 %.17088, 1
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = tail call i32 @g_ascii_xdigit_value(i8 noundef signext %i.as) #18 ; 2 uses
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr i8, ptr %1, i64 %i.aq
  %i.aw = load ptr, ptr %0, align 8
  tail call void @g_free(ptr noundef %i.aw)
  store ptr null, ptr %0, align 8
  %i.ax = load i8, ptr %i.av, align 1
  %i.ay = sext i8 %i.ax to i32
  %i.az = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.2216, ptr noundef %2, ptr noundef nonnull %1, i32 noundef %i.ay)
  store ptr %i.az, ptr %4, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ba = add i32 %.17088, 2                      ; 2 uses
  %i.bb = shl i32 %i.ai, 4
  %i.bc = or i32 %i.at, %i.bb
  %i.bd = trunc i32 %i.bc to i8
  %i.be = load ptr, ptr %0, align 8
  %i.bf = zext i32 %.189 to i64
  %i.bg = getelementptr i8, ptr %i.be, i64 %i.bf
  store i8 %i.bd, ptr %i.bg, align 1
  %i.bh = add i32 %.189, 1                        ; 2 uses
  %i.bi = icmp ult i32 %i.ba, %i.ae
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.n
  %.pre = load ptr, ptr %0, align 8
  %i.bj = zext i32 %i.bh to i64
  %i.bk = getelementptr i8, ptr %.pre, i64 %i.bj
  store i8 0, ptr %i.bk, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.d, %bb.b, %bb.c
  store ptr null, ptr %0, align 8
  %i.bl = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.2217, ptr noundef %2, ptr noundef nonnull %1, i32 noundef %3)
  store ptr %i.bl, ptr %4, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %._crit_edge, %bb.o, %bb.m, %bb.k, %bb.g
  %.073 = phi i32 [ -1, %bb.g ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.o ], [ %.071, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.073
}

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_strong_hash(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_ascii_xdigit_value(i8 noundef signext) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @s1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 16, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = call i32 @gcry_mac_open(ptr noundef nonnull %i.a, i32 noundef 201, i32 noundef 0, ptr noundef null)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call i32 @gcry_mac_setkey(ptr noundef %i.e, ptr noundef nonnull %i.c, i64 noundef 16)
  %.not7 = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %.not7, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @gcry_mac_write(ptr noundef %i.g, ptr noundef %0, i64 noundef 4)
  %.not8 = icmp eq i32 %i.h, 0
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %.not8, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @gcry_mac_read(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %i.b)
  %.not9 = icmp eq i32 %i.j, 0
  %i.k = load ptr, ptr %i.a, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.d
  %.sink = phi ptr [ %i.k, %bb.d ], [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %.0.ph = phi i1 [ %.not9, %bb.d ], [ false, %bb.b ], [ false, %bb.c ]
  call void @gcry_mac_close(ptr noundef %.sink)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_setkey(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_mac_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mac_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_btmesh_transport_control_message(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 7) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @val_to_str_const(i32 noundef %4, ptr noundef nonnull @btmesh_ctrl_opcode_vals, ptr noundef nonnull @.str.2225)
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef %i.c)
  %i.d = load i32, ptr @ett_btmesh_transp_ctrl_msg, align 4
  %i.e = tail call ptr @val_to_str_const(i32 noundef %4, ptr noundef nonnull @btmesh_ctrl_opcode_vals, ptr noundef nonnull @.str.1788)
  %i.f = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef nonnull %0, i32 noundef %3, i32 noundef -1, i32 noundef %i.d, ptr noundef null, ptr noundef nonnull @.str.2228, ptr noundef %i.e) ; 39 uses
  switch i32 %4, label %bb.l [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @hf_btmesh_cntr_padding, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_btmesh_cntr_fsn, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr @hf_btmesh_cntr_key_refresh_flag, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_btmesh_cntr_iv_update_flag, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_btmesh_cntr_flags_rfu, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = add nuw nsw i32 %3, 1
  %i.r = load i32, ptr @hf_btmesh_cntr_iv_index, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.r, ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.t = add nuw nsw i32 %3, 5
  %i.u = load i32, ptr @hf_btmesh_cntr_md, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.u, ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.w = load i32, ptr @hf_btmesh_cntr_criteria_rfu, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_btmesh_cntr_criteria_rssifactor, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.y, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_btmesh_cntr_criteria_receivewindowfactor, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.aa, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr @hf_btmesh_cntr_criteria_minqueuesizelog, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ac, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ae = add nuw nsw i32 %3, 1
  %i.af = load i32, ptr @hf_btmesh_cntr_receivedelay, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.af, ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ah = add nuw nsw i32 %3, 2
  %i.ai = load i32, ptr @hf_btmesh_cntr_polltimeout, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ai, ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ak = add nuw nsw i32 %3, 5
  %i.al = load i32, ptr @hf_btmesh_cntr_previousaddress, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.al, ptr noundef nonnull %0, i32 noundef %i.ak, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.an = add nuw nsw i32 %3, 7
  %i.ao = load i32, ptr @hf_btmesh_cntr_numelements, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ao, ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aq = or disjoint i32 %3, 8
  %i.ar = load i32, ptr @hf_btmesh_cntr_lpncounter, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ar, ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.at = load i32, ptr @hf_btmesh_cntr_receivewindow, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.at, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = add nuw nsw i32 %3, 1
  %i.aw = load i32, ptr @hf_btmesh_cntr_queuesize, align 4
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.aw, ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ay = add nuw nsw i32 %3, 2
  %i.az = load i32, ptr @hf_btmesh_cntr_subscriptionlistsize, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.az, ptr noundef nonnull %0, i32 noundef %i.ay, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bb = add nuw nsw i32 %3, 3
  %i.bc = load i32, ptr @hf_btmesh_cntr_rssi, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bc, ptr noundef nonnull %0, i32 noundef %i.bb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.be = add nuw nsw i32 %3, 4
  %i.bf = load i32, ptr @hf_btmesh_cntr_friendcounter, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bf, ptr noundef nonnull %0, i32 noundef %i.be, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.bh = load i32, ptr @hf_btmesh_cntr_lpnaddress, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.bh, ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bj = add nuw nsw i32 %3, 2
  %i.bk = load i32, ptr @hf_btmesh_cntr_lpncounter, align 4
end_hunk_0
