Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ttl?download=true
inline.NumInlined: 52
inline.NumDeleted: 20
begin_hunk_0_@ttl_read_eth_data_entry:bb.a
  %i.o = icmp ugt i32 %i.l, %i.n
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 -12, ptr %1, align 4
  %i.p = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.199)
  br label %ttl_skip_bytes.exit.thread.sink.split

bb.i:                                             ; preds = %bb.g
  store i32 %i.l, ptr %i.j, align 4
  br label %ttl_skip_bytes.exit

bb.j:                                             ; preds = %bb.d
  store i32 -21, ptr %1, align 4
  %i.q = load i32, ptr %i.d, align 8
  %i.r = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.200, i32 noundef %i.q)
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
  %i.ad = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.199)
  store ptr %i.ad, ptr %2, align 8
  br label %ttl_skip_bytes.exit

bb.p:                                             ; preds = %bb.n
  store i32 %i.z, ptr %i.x, align 4
  br label %ttl_skip_bytes.exit33

bb.q:                                             ; preds = %bb.l
  store i32 -21, ptr %1, align 4
  %i.ae = load i32, ptr %i.t, align 8
  %i.af = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.200, i32 noundef %i.ae)
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
  %i.b = alloca [8 x i8], align 1                 ; 11 uses
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
  %i.e = tail call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.204)
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
  %9 = and i32 %i.f, 4
  %.not67 = icmp eq i32 %9, 0
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
  %i.q = or disjoint i32 %spec.select, 8          ; 2 uses
  store i32 %i.q, ptr %i.a, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 4, ptr %i.r, align 2
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.s = or disjoint i32 %spec.select, 8          ; 2 uses
  store i32 %i.s, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 2, ptr %i.t, align 2
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.u = or disjoint i32 %spec.select, 32         ; 2 uses
  store i32 %i.u, ptr %i.a, align 4
  br label %bb.x

bb.l:                                             ; preds = %bb.h
  %i.v = or disjoint i32 %spec.select, 8          ; 2 uses
  store i32 %i.v, ptr %i.a, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 16, ptr %i.w, align 2
  br label %bb.x

bb.m:                                             ; preds = %bb.h
  %i.x = or disjoint i32 %spec.select, 8          ; 2 uses
  store i32 %i.x, ptr %i.a, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 8, ptr %i.y, align 2
  br label %bb.x

bb.n:                                             ; preds = %bb.h
  %i.z = or disjoint i32 %spec.select, 8          ; 2 uses
  store i32 %i.z, ptr %i.a, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 8, ptr %i.aa, align 1
  br label %bb.x

bb.o:                                             ; preds = %bb.h
  %i.ab = or disjoint i32 %spec.select, 8         ; 2 uses
  store i32 %i.ab, ptr %i.a, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 11, ptr %i.ac, align 1
  br label %bb.x

bb.p:                                             ; preds = %bb.g
  %i.ad = and i32 %i.f, 2
  %.not62 = icmp eq i32 %i.ad, 0
  br i1 %.not62, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = or i32 %i.ae, 1073741824
  store i32 %i.af, ptr %i.a, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ag = and i32 %i.f, 4096
  %.not63 = icmp eq i32 %i.ag, 0
  br i1 %.not63, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = load i32, ptr %i.a, align 4
  %i.ai = or i32 %i.ah, -2147483648
  store i32 %i.ai, ptr %i.a, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aj = and i32 %i.f, 8192
  %.not64 = icmp eq i32 %i.aj, 0
  br i1 %.not64, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = zext nneg i8 %i.i to i64
  %i.al = getelementptr i8, ptr @canfd_dlc_to_length, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.an = call i8 @llvm.umin.i8(i8 %i.i, i8 8)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.054 = phi i8 [ %i.am, %bb.u ], [ %i.an, %bb.v ]
  %.0 = phi i8 [ 4, %bb.u ], [ 0, %bb.v ]
  %i.ao = lshr i16 %7, 14
  %i.ap = trunc nuw nsw i16 %i.ao to i8
  %i.aq = and i8 %i.ap, 1
  %spec.select70 = or disjoint i8 %.0, %i.aq      ; 2 uses
  %i.ar = or disjoint i8 %spec.select70, 2
  %.not6673 = icmp slt i16 %7, 0
  %spec.select71 = select i1 %.not6673, i8 %i.ar, i8 %spec.select70
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.x

default.unreachable78:                            ; preds = %bb.h
  unreachable

bb.x:                                             ; preds = %bb.w, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %i.as = phi i32 [ %.pre, %bb.w ], [ %i.q, %bb.i ], [ %i.s, %bb.j ], [ %i.u, %bb.k ], [ %i.v, %bb.l ], [ %i.x, %bb.m ], [ %i.z, %bb.n ], [ %i.ab, %bb.o ] ; 4 uses
  %.155 = phi i8 [ %.054, %bb.w ], [ 8, %bb.i ], [ 8, %bb.j ], [ 8, %bb.k ], [ 8, %bb.l ], [ 8, %bb.m ], [ 8, %bb.n ], [ 8, %bb.o ] ; 2 uses
  %.2 = phi i8 [ %spec.select71, %bb.w ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ]
  %i.at = lshr i32 %i.as, 24
  %i.au = trunc nuw i32 %i.at to i8
  store i8 %i.au, ptr %i.b, align 1
  %i.av = lshr i32 %i.as, 16
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = lshr i32 %i.as, 8
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = trunc i32 %i.as to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %.155, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %.2, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 0, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 0, ptr %i.bg, align 1
  %i.bh = getelementptr i8, ptr %0, i64 264       ; 4 uses
  call void @ws_buffer_append(ptr noundef %i.bh, ptr noundef nonnull %i.b, i64 noundef 8)
  br i1 %.not61, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ws_buffer_append(ptr noundef %i.bh, ptr noundef nonnull %i.c, i64 noundef 8)
  %.not69 = icmp eq i16 %.057, 0
  br i1 %.not69, label %ttl_skip_bytes.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8
  switch i32 %i.bj, label %bb.ae [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bk = load ptr, ptr %3, align 8
  %i.bl = zext nneg i16 %.057 to i32
  %i.bm = call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %i.bk, ptr noundef null, i32 noundef %i.bl, ptr noundef %1, ptr noundef %2)
  br i1 %i.bm, label %ttl_skip_bytes.exit, label %ttl_read_bytes_buffer.exit

bb.ab:                                            ; preds = %bb.z
  %i.bn = zext nneg i16 %.057 to i32
  %i.bo = getelementptr i8, ptr %3, i64 12        ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = add i32 %i.bp, %i.bn                    ; 2 uses
  %i.br = getelementptr i8, ptr %3, i64 8
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = icmp ugt i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 -12, ptr %1, align 4
  %i.bu = call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.199)
  store ptr %i.bu, ptr %2, align 8
  br label %ttl_read_bytes_buffer.exit

bb.ad:                                            ; preds = %bb.ab
  store i32 %i.bq, ptr %i.bo, align 4
  br label %ttl_skip_bytes.exit

bb.ae:                                            ; preds = %bb.z
  store i32 -21, ptr %1, align 4
  %i.bv = load i32, ptr %i.bi, align 8
  %i.bw = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.200, i32 noundef %i.bv)
  store ptr %i.bw, ptr %2, align 8
  br label %ttl_read_bytes_buffer.exit

bb.af:                                            ; preds = %bb.x
  %.not68 = icmp eq i16 %.057, 0
  br i1 %.not68, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = zext nneg i16 %.057 to i64              ; 2 uses
  call void @ws_buffer_assure_space(ptr noundef %i.bh, i64 noundef %i.bx)
  %.val.i = load ptr, ptr %i.bh, align 8
  %i.by = getelementptr i8, ptr %0, i64 288       ; 3 uses
  %.val9.i = load i64, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %.val.i, i64 %.val9.i
  %i.ca = call fastcc zeroext i1 @ttl_read_bytes(ptr noundef %3, ptr noundef %i.bz, i16 noundef zeroext range(i16 0, 4080) %.057, ptr noundef %1, ptr noundef %2)
  br i1 %i.ca, label %ttl_read_bytes_buffer.exit.thread, label %ttl_read_bytes_buffer.exit

ttl_read_bytes_buffer.exit.thread:                ; preds = %bb.ag
  %i.cb = load i64, ptr %i.by, align 8
  %i.cc = add i64 %i.cb, %i.bx
  store i64 %i.cc, ptr %i.by, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %ttl_read_bytes_buffer.exit.thread, %bb.af
  %i.cd = zext nneg i16 %.057 to i32
  %i.ce = add nuw nsw i32 %i.cd, 8
  %i.cf = zext i8 %.155 to i32
  %i.cg = add nuw nsw i32 %i.cf, 8
  br label %ttl_skip_bytes.exit

ttl_skip_bytes.exit:                              ; preds = %bb.y, %bb.aa, %bb.ad, %bb.ah
  %.sink84 = phi i32 [ %i.ce, %bb.ah ], [ 16, %bb.ad ], [ 16, %bb.aa ], [ 16, %bb.y ]
  %.sink82 = phi i32 [ %i.cg, %bb.ah ], [ 16, %bb.ad ], [ 16, %bb.aa ], [ 16, %bb.y ]
  %.sink80.in = getelementptr i8, ptr %6, i64 8
  %.sink80 = load i32, ptr %.sink80.in, align 4
  %.sink = load i32, ptr %6, align 4
  call void @wtap_setup_packet_rec(ptr noundef %0, i32 noundef %.sink)
  %i.ch = call ptr @wtap_block_create(i32 noundef 5) ; 2 uses
  %i.ci = getelementptr i8, ptr %0, i64 216
  store ptr %i.ch, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %0, i64 4
  store i32 7, ptr %i.cj, align 4
  %i.ck = getelementptr i8, ptr %0, i64 32
  store i32 6, ptr %i.ck, align 8
  %i.cl = udiv i64 %8, 1000000
  %i.cm = getelementptr i8, ptr %0, i64 16
  store i64 %i.cl, ptr %i.cm, align 8
  %i.cn = urem i64 %8, 1000000
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = mul nuw nsw i32 %i.co, 1000
  %i.cq = getelementptr i8, ptr %0, i64 24
  store i32 %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %0, i64 48
  store i32 %.sink84, ptr %i.cr, align 8
  %i.cs = getelementptr i8, ptr %0, i64 52
  store i32 %.sink82, ptr %i.cs, align 4
  %i.ct = getelementptr i8, ptr %0, i64 60
  store i32 %.sink80, ptr %i.ct, align 4
  %i.cu = zext nneg i16 %5 to i32
  %i.cv = call i32 @wtap_block_add_uint32_option(ptr noundef %i.ch, i32 noundef 6, i32 noundef %i.cu) ; 0 uses
  %i.cw = getelementptr i8, ptr %0, i64 216
  %.val = load ptr, ptr %i.cw, align 8
  %i.cx = call i32 @wtap_block_add_uint32_option(ptr noundef %.val, i32 noundef 2, i32 noundef 1) ; 0 uses
  br label %ttl_read_bytes_buffer.exit

ttl_read_bytes_buffer.exit:                       ; preds = %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.e, %bb.d, %ttl_skip_bytes.exit, %bb.b
  %.056 = phi i32 [ -1, %bb.b ], [ 2, %bb.d ], [ 0, %ttl_skip_bytes.exit ], [ -1, %bb.e ], [ -1, %bb.ag ], [ -1, %bb.ae ], [ -1, %bb.ac ], [ -1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
end_hunk_0
