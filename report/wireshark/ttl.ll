Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ttl?download=true
inline.NumInlined: 52
inline.NumDeleted: 20
begin_hunk_0_@ttl_lookup_interface_int:bb.a
.critedge:                                        ; preds = %bb.i, %bb.g, %bb.f, %bb.b, %bb.c, %bb.a, %ttl_is_chb_addr.exit, %bb.e
  %.2 = phi ptr [ null, %bb.i ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.b ], [ %i.l, %bb.f ], [ %i.ad, %ttl_is_chb_addr.exit ], [ null, %bb.c ], [ null, %bb.g ]
  ret ptr %.2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 3) i32 @ttl_read_eth_data_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i16 noundef zeroext range(i16 0, 4080) %4, i16 noundef zeroext range(i16 0, 8192) %5, ptr nofree noundef readonly captures(address_is_null) %6, i16 noundef zeroext %7, i64 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -21, ptr %1, align 4
  %i.b = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef @.str.203)
  store ptr %i.b, ptr %2, align 8
  br label %ttl_skip_bytes.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %7, -32768
  br i1 %i.c, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  switch i32 %i.e, label %bb.j [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %3, align 8
  %i.g = zext nneg i16 %4 to i32
  %i.h = tail call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %i.f, ptr noundef null, i32 noundef %i.g, ptr noundef %1, ptr noundef %2)
  br i1 %i.h, label %ttl_skip_bytes.exit, label %ttl_skip_bytes.exit.thread

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i16 %4, 0
  br i1 %.not.i.i, label %ttl_skip_bytes.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = zext nneg i16 %4 to i32
  %i.j = getelementptr i8, ptr %3, i64 12         ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, %i.i                       ; 2 uses
  %i.m = getelementptr i8, ptr %3, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp ugt i32 %i.l, %i.n
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 -12, ptr %1, align 4
  %i.p = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef @.str.199)
  br label %ttl_skip_bytes.exit.thread.sink.split

bb.i:                                             ; preds = %bb.g
  store i32 %i.l, ptr %i.j, align 4
  br label %ttl_skip_bytes.exit

bb.j:                                             ; preds = %bb.d
  store i32 -21, ptr %1, align 4
  %i.q = load i32, ptr %i.d, align 8
  %i.r = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.200, i32 noundef %i.q)
  br label %ttl_skip_bytes.exit.thread.sink.split

ttl_skip_bytes.exit.thread.sink.split:            ; preds = %bb.h, %bb.j
  %.sink = phi ptr [ %i.r, %bb.j ], [ %i.p, %bb.h ]
  store ptr %.sink, ptr %2, align 8
  br label %ttl_skip_bytes.exit.thread

ttl_skip_bytes.exit.thread:                       ; preds = %ttl_skip_bytes.exit.thread.sink.split, %bb.e
  br label %ttl_skip_bytes.exit

bb.k:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i16 %4, 2
  br i1 %i.s, label %ttl_skip_bytes.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr i8, ptr %3, i64 16         ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  switch i32 %i.u, label %bb.q [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %3, align 8
  %i.w = tail call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %i.v, ptr noundef null, i32 noundef 2, ptr noundef %1, ptr noundef %2)
  br i1 %i.w, label %ttl_skip_bytes.exit33, label %ttl_skip_bytes.exit

bb.n:                                             ; preds = %bb.l
  %i.x = getelementptr i8, ptr %3, i64 12         ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, 2                          ; 2 uses
  %i.aa = getelementptr i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp ugt i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 -12, ptr %1, align 4
  %i.ad = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef @.str.199)
  store ptr %i.ad, ptr %2, align 8
  br label %ttl_skip_bytes.exit

bb.p:                                             ; preds = %bb.n
  store i32 %i.z, ptr %i.x, align 4
  br label %ttl_skip_bytes.exit33

bb.q:                                             ; preds = %bb.l
  store i32 -21, ptr %1, align 4
  %i.ae = load i32, ptr %i.t, align 8
  %i.af = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.200, i32 noundef %i.ae)
  store ptr %i.af, ptr %2, align 8
  br label %ttl_skip_bytes.exit

ttl_skip_bytes.exit33:                            ; preds = %bb.p, %bb.m
  %i.ag = add nsw i16 %4, -2                      ; 4 uses
  %i.ah = zext nneg i16 %i.ag to i32
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %.split, label %bb.r

bb.r:                                             ; preds = %ttl_skip_bytes.exit33
  %i.ai = getelementptr i8, ptr %0, i64 264       ; 2 uses
  %i.aj = zext nneg i16 %i.ag to i64              ; 2 uses
  tail call void @ws_buffer_assure_space(ptr noundef %i.ai, i64 noundef %i.aj)
  %.val.i = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %0, i64 288       ; 3 uses
  %.val9.i = load i64, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %.val.i, i64 %.val9.i
  %i.am = tail call fastcc zeroext i1 @ttl_read_bytes(ptr noundef %3, ptr noundef %i.al, i16 noundef zeroext range(i16 0, 4080) %i.ag, ptr noundef %1, ptr noundef %2)
  br i1 %i.am, label %.split28, label %ttl_skip_bytes.exit

.split28:                                         ; preds = %bb.r
  %i.an = load i64, ptr %i.ak, align 8
  %i.ao = add i64 %i.an, %i.aj
  store i64 %i.ao, ptr %i.ak, align 8
  br label %.split

.split:                                           ; preds = %ttl_skip_bytes.exit33, %.split28
  %.sink48 = phi i32 [ %i.ah, %.split28 ], [ 0, %ttl_skip_bytes.exit33 ] ; 2 uses
  %i.ap = load i32, ptr %6, align 4
  %i.aq = getelementptr i8, ptr %6, i64 8
  %i.ar = load i32, ptr %i.aq, align 4
  tail call void @wtap_setup_packet_rec(ptr noundef %0, i32 noundef %i.ap)
  %i.as = tail call ptr @wtap_block_create(i32 noundef 5) ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 216
  store ptr %i.as, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %0, i64 4
  store i32 7, ptr %i.au, align 4
  %i.av = getelementptr i8, ptr %0, i64 32
  store i32 6, ptr %i.av, align 8
  %i.aw = udiv i64 %8, 1000000
  %i.ax = getelementptr i8, ptr %0, i64 16
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = urem i64 %8, 1000000
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = mul nuw nsw i32 %i.az, 1000
  %i.bb = getelementptr i8, ptr %0, i64 24
  store i32 %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %0, i64 48
  store i32 %.sink48, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %0, i64 52
  store i32 %.sink48, ptr %i.bd, align 4
  %i.be = getelementptr i8, ptr %0, i64 60
  store i32 %i.ar, ptr %i.be, align 4
  %i.bf = zext nneg i16 %5 to i32
  %i.bg = tail call i32 @wtap_block_add_uint32_option(ptr noundef %i.as, i32 noundef 6, i32 noundef %i.bf) ; 0 uses
  %i.bh = zext i16 %7 to i32                      ; 2 uses
  %i.bi = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.bh)
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %.split.i, label %ttl_add_eth_dir_option.exit

.split.i:                                         ; preds = %.split
  %i.bk = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bh, i1 true) ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bk, 15
  br i1 %i.bl, label %switch.lookup, label %ttl_add_eth_dir_option.exit

switch.lookup:                                    ; preds = %.split.i
  %i.bm = zext nneg i32 %i.bk to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ttl_read_eth_data_entry, i64 %i.bm
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %ttl_add_eth_dir_option.exit

ttl_add_eth_dir_option.exit:                      ; preds = %switch.lookup, %.split.i, %.split
  %.0.i = phi i32 [ 0, %.split.i ], [ %switch.ext, %switch.lookup ], [ 0, %.split ]
  %i.bn = getelementptr i8, ptr %0, i64 216
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call i32 @wtap_block_add_uint32_option(ptr noundef %i.bo, i32 noundef 2, i32 noundef %.0.i) ; 0 uses
  br label %ttl_skip_bytes.exit

ttl_skip_bytes.exit:                              ; preds = %bb.m, %bb.o, %bb.q, %bb.r, %ttl_skip_bytes.exit.thread, %bb.i, %bb.f, %bb.e, %bb.k, %ttl_add_eth_dir_option.exit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 2, %bb.k ], [ 1, %bb.e ], [ -1, %bb.r ], [ 0, %ttl_add_eth_dir_option.exit ], [ -1, %ttl_skip_bytes.exit.thread ], [ 1, %bb.i ], [ 1, %bb.f ], [ -1, %bb.q ], [ -1, %bb.o ], [ -1, %bb.m ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 3) i32 @ttl_read_can_data_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i16 noundef zeroext range(i16 0, 4080) %4, i16 noundef zeroext range(i16 0, 8192) %5, ptr nofree noundef readonly captures(address_is_null) %6, i16 noundef zeroext %7, i64 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = alloca [8 x i8], align 4                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 0, ptr %i.c, align 8
  %i.d = icmp eq ptr %6, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -21, ptr %1, align 4
  %i.e = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef @.str.204)
  store ptr %i.e, ptr %2, align 8
  br label %ttl_read_bytes_buffer.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i16 %7 to i32                       ; 5 uses
  %i.g = lshr i16 %7, 8
  %i.h = trunc nuw i16 %i.g to i8
  %i.i = and i8 %i.h, 15                          ; 2 uses
  %i.j = trunc i16 %7 to i8
  %i.k = lshr i8 %i.j, 4
  %i.l = and i8 %i.k, 7                           ; 2 uses
  %i.m = and i32 %i.f, 1
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i16 %4, 4
  br i1 %i.n, label %ttl_read_bytes_buffer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call fastcc zeroext i1 @ttl_read_bytes(ptr noundef %3, ptr noundef nonnull %i.a, i16 noundef zeroext 4, ptr noundef %1, ptr noundef %2)
  br i1 %i.o, label %bb.f, label %ttl_read_bytes_buffer.exit

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i16 %4, -4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.057 = phi i16 [ %i.p, %bb.f ], [ %4, %bb.c ]  ; 7 uses
  %.not61 = icmp eq i8 %i.l, 0                    ; 2 uses
  br i1 %.not61, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = and i32 %i.f, 4
  %.not67 = icmp eq i32 %i.q, 0
  %spec.select = select i1 %.not67, i32 536870912, i32 536870976 ; 7 uses
  switch i8 %i.l, label %default.unreachable78 [
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 5, label %bb.m
    i8 6, label %bb.n
    i8 7, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = or disjoint i32 %spec.select, 8          ; 2 uses
  store i32 %i.r, ptr %i.a, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 4, ptr %i.s, align 2
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.t = or disjoint i32 %spec.select, 8          ; 2 uses
  store i32 %i.t, ptr %i.a, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 2, ptr %i.u, align 2
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.v = or disjoint i32 %spec.select, 32         ; 2 uses
  store i32 %i.v, ptr %i.a, align 4
  br label %bb.x

bb.l:                                             ; preds = %bb.h
  %i.w = or disjoint i32 %spec.select, 8          ; 2 uses
  store i32 %i.w, ptr %i.a, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 16, ptr %i.x, align 2
  br label %bb.x

bb.m:                                             ; preds = %bb.h
  %i.y = or disjoint i32 %spec.select, 8          ; 2 uses
  store i32 %i.y, ptr %i.a, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 8, ptr %i.z, align 2
  br label %bb.x

bb.n:                                             ; preds = %bb.h
  %i.aa = or disjoint i32 %spec.select, 8         ; 2 uses
  store i32 %i.aa, ptr %i.a, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 8, ptr %i.ab, align 1
  br label %bb.x

bb.o:                                             ; preds = %bb.h
  %i.ac = or disjoint i32 %spec.select, 8         ; 2 uses
  store i32 %i.ac, ptr %i.a, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 11, ptr %i.ad, align 1
  br label %bb.x

bb.p:                                             ; preds = %bb.g
  %i.ae = and i32 %i.f, 2
  %.not62 = icmp eq i32 %i.ae, 0
  br i1 %.not62, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load i32, ptr %i.a, align 4
  %i.ag = or i32 %i.af, 1073741824
  store i32 %i.ag, ptr %i.a, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ah = and i32 %i.f, 4096
  %.not63 = icmp eq i32 %i.ah, 0
  br i1 %.not63, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = load i32, ptr %i.a, align 4
  %i.aj = or i32 %i.ai, -2147483648
  store i32 %i.aj, ptr %i.a, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ak = and i32 %i.f, 8192
  %.not64 = icmp eq i32 %i.ak, 0
  br i1 %.not64, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = zext nneg i8 %i.i to i64
  %i.am = getelementptr i8, ptr @canfd_dlc_to_length, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ao = call i8 @llvm.umin.i8(i8 %i.i, i8 8)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.054 = phi i8 [ %i.an, %bb.u ], [ %i.ao, %bb.v ]
  %.0 = phi i8 [ 4, %bb.u ], [ 0, %bb.v ]
  %i.ap = lshr i16 %7, 14
  %i.aq = trunc nuw nsw i16 %i.ap to i8
  %i.ar = and i8 %i.aq, 1
  %spec.select70 = or disjoint i8 %.0, %i.ar      ; 2 uses
  %i.as = or disjoint i8 %spec.select70, 2
  %.not6673 = icmp slt i16 %7, 0
  %spec.select71 = select i1 %.not6673, i8 %i.as, i8 %spec.select70
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.x

default.unreachable78:                            ; preds = %bb.h
  unreachable

bb.x:                                             ; preds = %bb.w, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %i.at = phi i32 [ %.pre, %bb.w ], [ %i.r, %bb.i ], [ %i.t, %bb.j ], [ %i.v, %bb.k ], [ %i.w, %bb.l ], [ %i.y, %bb.m ], [ %i.aa, %bb.n ], [ %i.ac, %bb.o ]
  %.155 = phi i8 [ %.054, %bb.w ], [ 8, %bb.i ], [ 8, %bb.j ], [ 8, %bb.k ], [ 8, %bb.l ], [ 8, %bb.m ], [ 8, %bb.n ], [ 8, %bb.o ] ; 2 uses
  %.2 = phi i8 [ %spec.select71, %bb.w ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ]
  %9 = call i32 @llvm.bswap.i32(i32 %i.at)
  store i32 %9, ptr %i.b, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %.155, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %.2, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 0, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 0, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %0, i64 264       ; 4 uses
  call void @ws_buffer_append(ptr noundef %i.ay, ptr noundef nonnull %i.b, i64 noundef 8)
  br i1 %.not61, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ws_buffer_append(ptr noundef %i.ay, ptr noundef nonnull %i.c, i64 noundef 8)
  %.not69 = icmp eq i16 %.057, 0
  br i1 %.not69, label %ttl_skip_bytes.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8
  switch i32 %i.ba, label %bb.ae [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bb = load ptr, ptr %3, align 8
  %i.bc = zext nneg i16 %.057 to i32
  %i.bd = call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %i.bb, ptr noundef null, i32 noundef %i.bc, ptr noundef %1, ptr noundef %2)
  br i1 %i.bd, label %ttl_skip_bytes.exit, label %ttl_read_bytes_buffer.exit

bb.ab:                                            ; preds = %bb.z
  %i.be = zext nneg i16 %.057 to i32
  %i.bf = getelementptr i8, ptr %3, i64 12        ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = add i32 %i.bg, %i.be                    ; 2 uses
  %i.bi = getelementptr i8, ptr %3, i64 8
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = icmp ugt i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 -12, ptr %1, align 4
  %i.bl = call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef @.str.199)
  store ptr %i.bl, ptr %2, align 8
  br label %ttl_read_bytes_buffer.exit

bb.ad:                                            ; preds = %bb.ab
  store i32 %i.bh, ptr %i.bf, align 4
  br label %ttl_skip_bytes.exit

bb.ae:                                            ; preds = %bb.z
  store i32 -21, ptr %1, align 4
  %i.bm = load i32, ptr %i.az, align 8
  %i.bn = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.200, i32 noundef %i.bm)
  store ptr %i.bn, ptr %2, align 8
  br label %ttl_read_bytes_buffer.exit

bb.af:                                            ; preds = %bb.x
  %.not68 = icmp eq i16 %.057, 0
  br i1 %.not68, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = zext nneg i16 %.057 to i64              ; 2 uses
  call void @ws_buffer_assure_space(ptr noundef %i.ay, i64 noundef %i.bo)
  %.val.i = load ptr, ptr %i.ay, align 8
  %i.bp = getelementptr i8, ptr %0, i64 288       ; 3 uses
  %.val9.i = load i64, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %.val.i, i64 %.val9.i
  %i.br = call fastcc zeroext i1 @ttl_read_bytes(ptr noundef %3, ptr noundef %i.bq, i16 noundef zeroext range(i16 0, 4080) %.057, ptr noundef %1, ptr noundef %2)
  br i1 %i.br, label %ttl_read_bytes_buffer.exit.thread, label %ttl_read_bytes_buffer.exit

ttl_read_bytes_buffer.exit.thread:                ; preds = %bb.ag
  %i.bs = load i64, ptr %i.bp, align 8
  %i.bt = add i64 %i.bs, %i.bo
  store i64 %i.bt, ptr %i.bp, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %ttl_read_bytes_buffer.exit.thread, %bb.af
  %i.bu = zext nneg i16 %.057 to i32
  %i.bv = add nuw nsw i32 %i.bu, 8
  %i.bw = zext i8 %.155 to i32
  %i.bx = add nuw nsw i32 %i.bw, 8
  br label %ttl_skip_bytes.exit

ttl_skip_bytes.exit:                              ; preds = %bb.y, %bb.aa, %bb.ad, %bb.ah
  %.sink84 = phi i32 [ %i.bv, %bb.ah ], [ 16, %bb.ad ], [ 16, %bb.aa ], [ 16, %bb.y ]
  %.sink82 = phi i32 [ %i.bx, %bb.ah ], [ 16, %bb.ad ], [ 16, %bb.aa ], [ 16, %bb.y ]
  %.sink80.in = getelementptr i8, ptr %6, i64 8
  %.sink80 = load i32, ptr %.sink80.in, align 4
  %.sink = load i32, ptr %6, align 4
  call void @wtap_setup_packet_rec(ptr noundef %0, i32 noundef %.sink)
  %i.by = call ptr @wtap_block_create(i32 noundef 5) ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 216
  store ptr %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %0, i64 4
  store i32 7, ptr %i.ca, align 4
  %i.cb = getelementptr i8, ptr %0, i64 32
  store i32 6, ptr %i.cb, align 8
  %i.cc = udiv i64 %8, 1000000
  %i.cd = getelementptr i8, ptr %0, i64 16
  store i64 %i.cc, ptr %i.cd, align 8
  %i.ce = urem i64 %8, 1000000
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = mul nuw nsw i32 %i.cf, 1000
  %i.ch = getelementptr i8, ptr %0, i64 24
  store i32 %i.cg, ptr %i.ch, align 8
  %i.ci = getelementptr i8, ptr %0, i64 48
  store i32 %.sink84, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %0, i64 52
  store i32 %.sink82, ptr %i.cj, align 4
  %i.ck = getelementptr i8, ptr %0, i64 60
  store i32 %.sink80, ptr %i.ck, align 4
  %i.cl = zext nneg i16 %5 to i32
  %i.cm = call i32 @wtap_block_add_uint32_option(ptr noundef %i.by, i32 noundef 6, i32 noundef %i.cl) ; 0 uses
  %i.cn = getelementptr i8, ptr %0, i64 216
  %.val = load ptr, ptr %i.cn, align 8
  %i.co = call i32 @wtap_block_add_uint32_option(ptr noundef %.val, i32 noundef 2, i32 noundef 1) ; 0 uses
  br label %ttl_read_bytes_buffer.exit

ttl_read_bytes_buffer.exit:                       ; preds = %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.e, %bb.d, %ttl_skip_bytes.exit, %bb.b
  %.056 = phi i32 [ -1, %bb.b ], [ 2, %bb.d ], [ 0, %ttl_skip_bytes.exit ], [ -1, %bb.e ], [ -1, %bb.ag ], [ -1, %bb.ae ], [ -1, %bb.ac ], [ -1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.056
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @ttl_read_lin_data_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i16 noundef zeroext range(i16 0, 4080) %4, i16 noundef zeroext range(i16 0, 8192) %5, ptr nofree noundef readonly captures(address_is_null) %6, i16 noundef zeroext %7, i64 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 8 uses
  %i.b = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = icmp eq ptr %6, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -21, ptr %1, align 4
  %i.d = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef @.str.205)
  store ptr %i.d, ptr %2, align 8
  br label %ttl_skip_bytes.exit.thread

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i16 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i16 @llvm.umin.i16(i16 %4, i16 9)
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = add nsw i8 %i.f, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = phi i8 [ %i.g, %bb.d ], [ 0, %bb.c ]     ; 5 uses
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.a, align 4
  %i.i = zext nneg i8 %i.h to i16                 ; 2 uses
  %i.j = shl nuw i8 %i.h, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.j, ptr %i.k, align 4
  %i.l = trunc i16 %7 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.l, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 0, ptr %i.n, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.p = lshr i16 %7, 6
  %i.q = trunc i16 %i.p to i8
  %spec.select = and i8 %i.q, 4
  %i.r = lshr i16 %7, 8
  %i.s = trunc nuw i16 %i.r to i8
  %i.t = and i8 %i.s, 2
  %spec.select57 = or disjoint i8 %spec.select, %i.t
  %i.u = lshr i16 %7, 12
  %i.v = trunc nuw nsw i16 %i.u to i8
  %i.w = and i8 %i.v, 1
  %spec.select63 = or disjoint i8 %spec.select57, %i.w
  %i.x = lshr i16 %7, 12
  %i.y = trunc nuw nsw i16 %i.x to i8
  %i.z = and i8 %i.y, 2
  %i.aa = or i8 %spec.select63, %i.z              ; 2 uses
  %i.ab = and i16 %7, 3072
  %i.ac = icmp eq i16 %i.ab, 3072
  %i.ad = or disjoint i8 %i.aa, 8
  %storemerge = select i1 %i.ac, i8 %i.ad, i8 %i.aa
  store i8 %storemerge, ptr %i.o, align 1
  %.not51 = icmp eq i8 %i.h, 0                    ; 2 uses
  br i1 %.not51, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = call fastcc zeroext i1 @ttl_read_bytes(ptr noundef %3, ptr noundef nonnull %i.b, i16 noundef zeroext %i.i, ptr noundef %1, ptr noundef %2)
  br i1 %i.ae, label %bb.g, label %ttl_skip_bytes.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.af = sub nsw i16 %4, %i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.042 = phi i16 [ %i.af, %bb.g ], [ %4, %bb.e ] ; 2 uses
  %.not52 = icmp eq i16 %.042, 0
  br i1 %.not52, label %ttl_skip_bytes.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call fastcc zeroext i1 @ttl_read_bytes(ptr noundef %3, ptr noundef nonnull %i.n, i16 noundef zeroext 1, ptr noundef %1, ptr noundef %2)
  br i1 %i.ag, label %bb.j, label %ttl_skip_bytes.exit.thread
end_hunk_0
begin_hunk_1_@ttl_read_flexray_data_entry:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.al = getelementptr i8, ptr %0, i64 264       ; 3 uses
  call void @ws_buffer_append(ptr noundef %i.al, ptr noundef nonnull %i.a, i64 noundef 2)
  %.not36 = icmp eq i16 %4, 0
  br i1 %.not36, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = zext nneg i16 %4 to i64                 ; 2 uses
  call void @ws_buffer_assure_space(ptr noundef %i.al, i64 noundef %i.am)
  %.val.i = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %0, i64 288       ; 3 uses
  %.val9.i = load i64, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.val.i, i64 %.val9.i
  %i.ap = call fastcc zeroext i1 @ttl_read_bytes(ptr noundef %3, ptr noundef %i.ao, i16 noundef zeroext range(i16 0, 4080) %4, ptr noundef %1, ptr noundef %2)
  br i1 %i.ap, label %ttl_read_bytes_buffer.exit.thread, label %ttl_skip_bytes.exit

ttl_read_bytes_buffer.exit.thread:                ; preds = %bb.p
  %i.aq = load i64, ptr %i.an, align 8
  %i.ar = add i64 %i.aq, %i.am
  store i64 %i.ar, ptr %i.an, align 8
  br label %bb.q

bb.q:                                             ; preds = %ttl_read_bytes_buffer.exit.thread, %bb.o
  %i.as = load i32, ptr %6, align 4
  %i.at = getelementptr i8, ptr %6, i64 8
  %i.au = load i32, ptr %i.at, align 4
  %narrow = add nuw nsw i16 %4, 2
  %i.av = zext nneg i16 %narrow to i32            ; 2 uses
  call void @wtap_setup_packet_rec(ptr noundef %0, i32 noundef %i.as)
  %i.aw = call ptr @wtap_block_create(i32 noundef 5) ; 2 uses
  %i.ax = getelementptr i8, ptr %0, i64 216       ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %0, i64 4
  store i32 7, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %0, i64 32
  store i32 6, ptr %i.az, align 8
  %i.ba = udiv i64 %8, 1000000
  %i.bb = getelementptr i8, ptr %0, i64 16
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = urem i64 %8, 1000000
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.bd, 1000
  %i.bf = getelementptr i8, ptr %0, i64 24
  store i32 %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %0, i64 48
  store i32 %i.av, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %0, i64 52
  store i32 %i.av, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %0, i64 60
  store i32 %i.au, ptr %i.bi, align 4
  %i.bj = zext nneg i16 %5 to i32
  %i.bk = call i32 @wtap_block_add_uint32_option(ptr noundef %i.aw, i32 noundef 6, i32 noundef %i.bj) ; 0 uses
  %.val = load ptr, ptr %i.ax, align 8
  %i.bl = call i32 @wtap_block_add_uint32_option(ptr noundef %.val, i32 noundef 2, i32 noundef 1) ; 0 uses
  br label %ttl_skip_bytes.exit

ttl_skip_bytes.exit:                              ; preds = %bb.p, %ttl_skip_bytes.exit.thread, %bb.i, %bb.f, %bb.e, %bb.q, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.q ], [ 1, %bb.e ], [ -1, %ttl_skip_bytes.exit.thread ], [ 1, %bb.i ], [ 1, %bb.f ], [ -1, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ttl_create_interface(ptr noundef nonnull %0, i32 noundef range(i32 1, 126) %1, i16 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wtap_block_create(i32 noundef 1) ; 5 uses
  %i.b = tail call ptr @wtap_block_get_mandatory_data(ptr noundef %i.a) ; 7 uses
  store i32 %1, ptr %i.b, align 8
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #12
  %i.d = tail call i32 @wtap_block_add_string_option(ptr noundef %i.a, i32 noundef 2, ptr noundef nonnull %3, i64 noundef %i.c) ; 0 uses
  br label %ttl_add_interface_name.exit

bb.c:                                             ; preds = %bb.a
  %i.e = lshr i16 %2, 10
  %i.f = and i16 %i.e, 7
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr [8 x i8], ptr @ttl_cascade_names, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext i16 %2 to i32                       ; 2 uses
  %i.k = and i32 %i.j, 7168
  %i.l = icmp eq i32 %i.k, 0
  %i.m = lshr i32 %i.j, 6
  %i.n = and i32 %i.m, 15                         ; 4 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i32 %i.n, 8
  br i1 %i.o, label %switch.lookup, label %ttl_get_device_name.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = icmp samesign ult i32 %i.n, 9
  br i1 %i.p, label %switch.lookup1, label %ttl_get_device_name.exit.i

switch.lookup:                                    ; preds = %bb.d
  %i.q = zext nneg i32 %i.n to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_create_interface, i64 %i.q
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %ttl_get_device_name.exit.i

switch.lookup1:                                   ; preds = %bb.e
  %i.r = zext nneg i32 %i.n to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ttl_create_interface.29, i64 %i.r
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  br label %ttl_get_device_name.exit.i

ttl_get_device_name.exit.i:                       ; preds = %bb.d, %bb.e, %switch.lookup1, %switch.lookup
  %.0.i.i = phi ptr [ %switch.load3, %switch.lookup1 ], [ %switch.load, %switch.lookup ], [ @.str.8, %bb.e ], [ @.str.8, %bb.d ]
  %i.s = tail call ptr @ttl_get_function_name(i16 noundef zeroext %2)
  %i.t = tail call i32 (ptr, i32, ptr, ...) @wtap_block_add_string_option_format(ptr noundef %i.a, i32 noundef 2, ptr noundef @.str.202, ptr noundef %i.i, ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.s) ; 0 uses
  br label %ttl_add_interface_name.exit

ttl_add_interface_name.exit:                      ; preds = %bb.b, %ttl_get_device_name.exit.i
  %i.u = getelementptr i8, ptr %i.b, i64 8
  store i64 1000000, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.b, i64 16
  store i32 6, ptr %i.v, align 8
  %i.w = tail call i32 @wtap_block_add_uint8_option(ptr noundef %i.a, i32 noundef 9, i8 noundef zeroext 6) ; 0 uses
  %i.x = getelementptr i8, ptr %i.b, i64 20
  store i32 262144, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %i.b, i64 24
  store i8 0, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.b, i64 32
  store ptr null, ptr %i.z, align 8
  tail call void @wtap_add_idb(ptr noundef nonnull %0, ptr noundef %i.a)
  %i.aa = getelementptr i8, ptr %0, i64 168       ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -2
  %i.ad = load i32, ptr %i.b, align 8             ; 2 uses
  br i1 %i.ac, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %ttl_add_interface_name.exit
  %.not = icmp eq i32 %i.ab, %i.ad
  br i1 %.not, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %ttl_add_interface_name.exit
  %.sink = phi i32 [ %i.ad, %ttl_add_interface_name.exit ], [ -1, %bb.f ]
  store i32 %.sink, ptr %i.aa, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_get_mandatory_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_uint8_option(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_add_idb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_string_option(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_string_option_format(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_assure_space(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_packet_rec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_uint32_option(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_append(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{null}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"branch_weights", !"expected", i32 2147450111, i32 33537}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{i8 0, i8 2}
!18 = !{}
end_hunk_1
