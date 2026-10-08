Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-silabs-dch?download=true
inline.NumInlined: 13
inline.NumDeleted: 11
begin_hunk_0_@dissect_silabs_ieee802154_pdu:bb.a
bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.0..0..0..0.5 = load volatile i32, ptr %i.b, align 4
  %i.ag = or i32 %.0..0..0..0.5, 1
  store volatile i32 %i.ag, ptr %i.b, align 4
  %.0..0..0..0.13 = load volatile ptr, ptr %i.a, align 8
  %i.ah = getelementptr i8, ptr %.0..0..0..0.13, i64 8
  %i.ai = load volatile i64, ptr %i.ah, align 8
  %.0..0..0..0.14 = load volatile ptr, ptr %i.a, align 8
  %i.aj = getelementptr i8, ptr %.0..0..0..0.14, i64 16
  %i.ak = load volatile ptr, ptr %i.aj, align 8
  call void @show_exception(ptr noundef %i.d, ptr noundef %1, ptr noundef %2, i64 noundef %i.ai, ptr noundef %i.ak)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.i, %bb.h
  %.0..0..0..0.6 = load volatile i32, ptr %i.b, align 4
  %i.al = and i32 %.0..0..0..0.6, 1
  %.not32 = icmp eq i32 %i.al, 0
  br i1 %.not32, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %.0..0..0..0.15 = load volatile ptr, ptr %i.a, align 8
  %.not33 = icmp eq ptr %.0..0..0..0.15, null
  br i1 %.not33, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.0..0..0..0.16 = load volatile ptr, ptr %i.a, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.16) #11
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.an = load volatile ptr, ptr %i.am, align 8
  call void @except_free(ptr noundef %i.an)
  %i.ao = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_silabs_ble_pdu(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 1, 7) %3, i32 noundef range(i32 1, -2147483648) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca [3 x %struct._wmem_tree_key_t], align 16 ; 10 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca [3 x %struct._wmem_tree_key_t], align 16 ; 9 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %struct.btle_context_t, align 8     ; 6 uses
  %i.f = alloca ptr, align 8                      ; 13 uses
  %i.g = alloca i32, align 4                      ; 13 uses
  %9 = alloca %struct.except_stacknode, align 8   ; 3 uses
  %10 = alloca %struct.except_catch, align 8      ; 6 uses
  %i.h = getelementptr i8, ptr %5, i64 4
  %i.i = load i8, ptr %i.h, align 1, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %5, i64 2
  %i.l = load i8, ptr %i.k, align 1, !range !6, !noundef !7 ; 2 uses
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr i8, ptr %5, i64 6
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %3, 1
  %i.r = add nuw i32 %i.q, %4
  %i.s = add nuw i32 %i.r, %i.p                   ; 2 uses
  %i.t = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.s) ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 96
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 4
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %i.v, i64 60
  %i.aa = load i32, ptr %i.z, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ab = phi i32 [ %i.aa, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.ac = call ptr @tvb_new_composite()           ; 9 uses
  %i.ad = getelementptr i8, ptr %5, i64 7
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.af)
  call void @tvb_composite_append(ptr noundef %i.ac, ptr noundef %i.ag)
  %i.ah = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %3, i32 noundef %4)
  call void @tvb_composite_append(ptr noundef %i.ac, ptr noundef %i.ah)
  call void @tvb_composite_finalize(ptr noundef %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.ai = load i8, ptr @pref_ble_sniffer_mode, align 1, !range !6, !noundef !7
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %cond = icmp eq i32 %i.t, -1903575338
  br i1 %cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ak = call zeroext i8 @tvb_get_uint8(ptr noundef %i.ac, i32 noundef 4)
  %i.al = and i8 %i.ak, 15
  %i.am = icmp eq i8 %i.al, 5
  br i1 %i.am, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.an = call i32 @tvb_captured_length(ptr noundef %i.ac)
  %i.ao = icmp ugt i32 %i.an, 21
  br i1 %i.ao, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ap = call i32 @tvb_get_letohl(ptr noundef %i.ac, i32 noundef 18)
  %i.aq = getelementptr i8, ptr %1, i64 80
  %.val = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %.val, i64 53
  %.val.val = load i16, ptr %i.ar, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ab, ptr %i.c, align 4
  store i32 %i.ap, ptr %i.d, align 4
  %i.as = and i16 %.val.val, 8
  %.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.i, label %bb.i, label %store_ble_connection_role.exit

bb.i:                                             ; preds = %bb.h
  %i.at = add nuw nsw i8 %i.l, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store i32 1, ptr %7, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.c, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 1, ptr %i.av, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.d, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 0, ptr %i.ax, align 16
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr null, ptr %i.ay, align 8
  %i.az = call ptr @wmem_file_scope()
  %i.ba = call noalias dereferenceable_or_null(1) ptr @wmem_alloc(ptr noundef %i.az, i64 noundef 1) #9 ; 2 uses
  store i8 %i.at, ptr %i.ba, align 1
  %i.bb = load ptr, ptr @silabs_ble_connections, align 8
  call void @wmem_tree_insert32_array(ptr noundef %i.bb, ptr noundef nonnull %7, ptr noundef %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %store_ble_connection_role.exit

store_ble_connection_role.exit:                   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.j:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 noundef 0, i64 noundef 24, i1 noundef false) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ab, ptr %i.a, align 4
  store i32 %i.t, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store i32 1, ptr %6, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.a, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 1, ptr %i.bd, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.b, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %i.bf, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.bg, align 8
  %i.bh = load ptr, ptr @silabs_ble_connections, align 8
  %i.bi = call ptr @wmem_tree_lookup32_array(ptr noundef %i.bh, ptr noundef nonnull %6) ; 2 uses
  %.not.i72 = icmp eq ptr %i.bi, null
  br i1 %.not.i72, label %lookup_ble_connection_role.exit.thread, label %lookup_ble_connection_role.exit

lookup_ble_connection_role.exit.thread:           ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

lookup_ble_connection_role.exit:                  ; preds = %bb.j
  %i.bj = load i8, ptr %i.bi, align 1             ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not66 = icmp eq i8 %i.bj, 0
  br i1 %.not66, label %bb.n, label %bb.k

bb.k:                                             ; preds = %lookup_ble_connection_role.exit
  br i1 %i.m, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bl = shl i8 %i.bj, 4
  %i.bm = and i8 %i.bl, 48
  store i8 %i.bm, ptr %i.bk, align 4
  %i.bn = icmp ne i8 %i.bj, 1
  %i.bo = zext i1 %i.bn to i32
  %i.bp = getelementptr i8, ptr %1, i64 356
  store i32 %i.bo, ptr %i.bp, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bq = icmp eq i8 %i.bj, 1                     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bs = select i1 %i.bq, i8 32, i8 16
  store i8 %i.bs, ptr %i.br, align 4
  %i.bt = zext i1 %i.bq to i32
  %i.bu = getelementptr i8, ptr %1, i64 356
  store i32 %i.bt, ptr %i.bu, align 4
  br label %bb.n

bb.n:                                             ; preds = %lookup_ble_connection_role.exit.thread, %bb.l, %bb.m, %lookup_ble_connection_role.exit
  store volatile ptr %8, ptr %i.e, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %store_ble_connection_role.exit, %bb.f, %bb.n, %bb.d
  %i.bv = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.ac, ptr noundef nonnull @.str.302) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store volatile i32 0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @except_setup_try(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull @dissect_silabs_ble_pdu.catch_spec, i64 noundef 1)
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bx = call i32 @_setjmp(ptr noundef nonnull %i.bw) #10
  %.not67 = icmp eq i32 %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sink = select i1 %.not67, ptr null, ptr %i.by
  store volatile ptr %.sink, ptr %i.f, align 8
  %.0..0..0..0. = load volatile i32, ptr %i.g, align 4
  %i.bz = and i32 %.0..0..0..0., 1
  %.not68 = icmp eq i32 %i.bz, 0
  br i1 %.not68, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.0..0..0..0.1 = load volatile i32, ptr %i.g, align 4
  %i.ca = or i32 %.0..0..0..0.1, 2
  store volatile i32 %i.ca, ptr %i.g, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0..0..0..0.2 = load volatile i32, ptr %i.g, align 4
  %i.cb = and i32 %.0..0..0..0.2, -2
  store volatile i32 %i.cb, ptr %i.g, align 4
  %.0..0..0..0.3 = load volatile i32, ptr %i.g, align 4
  %i.cc = icmp eq i32 %.0..0..0..0.3, 0
  br i1 %i.cc, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.0..0..0..0.7 = load volatile ptr, ptr %i.f, align 8
  %i.cd = icmp eq ptr %.0..0..0..0.7, null
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr @btle_handle, align 8
  %.0..0..0..0.24 = load volatile ptr, ptr %i.e, align 8
  %i.cf = call i32 @call_dissector_with_data(ptr noundef %i.ce, ptr noundef %i.ac, ptr noundef %1, ptr noundef %2, ptr noundef %.0..0..0..0.24) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.0..0..0..0.4 = load volatile i32, ptr %i.g, align 4
  %i.cg = icmp eq i32 %.0..0..0..0.4, 0
  br i1 %i.cg, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %.0..0..0..0.8 = load volatile ptr, ptr %i.f, align 8
  %.not69 = icmp eq ptr %.0..0..0..0.8, null
  br i1 %.not69, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.0..0..0..0.9 = load volatile ptr, ptr %i.f, align 8
  %i.ch = getelementptr i8, ptr %.0..0..0..0.9, i64 8
  %i.ci = load volatile i64, ptr %i.ch, align 8
  %i.cj = icmp eq i64 %i.ci, 3
  br i1 %i.cj, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.0..0..0..0.10 = load volatile ptr, ptr %i.f, align 8
  %i.ck = getelementptr i8, ptr %.0..0..0..0.10, i64 8
  %i.cl = load volatile i64, ptr %i.ck, align 8
  %i.cm = icmp eq i64 %i.cl, 2
  br i1 %i.cm, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.0..0..0..0.11 = load volatile ptr, ptr %i.f, align 8
  %i.cn = getelementptr i8, ptr %.0..0..0..0.11, i64 8
  %i.co = load volatile i64, ptr %i.cn, align 8
  %i.cp = icmp eq i64 %i.co, 7
  br i1 %i.cp, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.0..0..0..0.12 = load volatile ptr, ptr %i.f, align 8
  %i.cq = getelementptr i8, ptr %.0..0..0..0.12, i64 8
  %i.cr = load volatile i64, ptr %i.cq, align 8
  %i.cs = icmp eq i64 %i.cr, 9
  br i1 %i.cs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.0..0..0..0.5 = load volatile i32, ptr %i.g, align 4
  %i.ct = or i32 %.0..0..0..0.5, 1
  store volatile i32 %i.ct, ptr %i.g, align 4
  %.0..0..0..0.13 = load volatile ptr, ptr %i.f, align 8
  %i.cu = getelementptr i8, ptr %.0..0..0..0.13, i64 8
  %i.cv = load volatile i64, ptr %i.cu, align 8
  %.0..0..0..0.14 = load volatile ptr, ptr %i.f, align 8
  %i.cw = getelementptr i8, ptr %.0..0..0..0.14, i64 16
  %i.cx = load volatile ptr, ptr %i.cw, align 8
  call void @show_exception(ptr noundef %i.ac, ptr noundef %1, ptr noundef %2, i64 noundef %i.cv, ptr noundef %i.cx)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.u, %bb.t
  %.0..0..0..0.6 = load volatile i32, ptr %i.g, align 4
  %i.cy = and i32 %.0..0..0..0.6, 1
  %.not70 = icmp eq i32 %i.cy, 0
  br i1 %.not70, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.0..0..0..0.15 = load volatile ptr, ptr %i.f, align 8
  %.not71 = icmp eq ptr %.0..0..0..0.15, null
  br i1 %.not71, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.0..0..0..0.16 = load volatile ptr, ptr %i.f, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.16) #11
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.da = load volatile ptr, ptr %i.cz, align 8
  call void @except_free(ptr noundef %i.da)
  %i.db = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @bitswap_buf_inplace(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_uint24(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @except_setup_try(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_with_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @show_exception(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_rethrow(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @except_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @except_pop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #1

end_hunk_0
