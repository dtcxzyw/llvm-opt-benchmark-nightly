Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/nettl?download=true
inline.NumInlined: 20
inline.NumDeleted: 3
begin_hunk_0_@nettl_open:bb.a
  %i.aj = load i16, ptr %i.ai, align 2
  %rev = call i16 @llvm.bswap.i16(i16 %i.aj)
  %i.ak = getelementptr i8, ptr %0, i64 168
  switch i16 %rev, label %bb.n [
    i16 95, label %bb.o
    i16 174, label %bb.o
    i16 176, label %bb.o
    i16 177, label %bb.o
    i16 31, label %bb.i
    i16 187, label %bb.i
    i16 9, label %bb.j
    i16 2, label %bb.j
    i16 6, label %bb.j
    i16 8, label %bb.j
    i16 244, label %bb.j
    i16 23, label %bb.k
    i16 245, label %bb.l
    i16 267, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  br label %bb.o

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink = phi i32 [ 71, %bb.n ], [ 94, %bb.m ], [ 65, %bb.l ], [ 64, %bb.k ], [ 70, %bb.j ], [ 72, %bb.i ], [ 73, %bb.h ], [ 73, %bb.h ], [ 73, %bb.h ], [ 73, %bb.h ]
  store i32 %.sink, ptr %i.ak, align 8
  %i.al = load ptr, ptr %0, align 8
  %i.am = call i64 @file_seek(ptr noundef %i.al, i64 noundef 128, i32 noundef 0, ptr noundef %1)
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr i8, ptr %0, i64 172
  store i32 6, ptr %i.ao, align 4
  %i.ap = call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #8 ; 2 uses
  %i.aq = getelementptr i8, ptr %0, i64 120
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 99
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.as, 49
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.av = load i8, ptr %i.au, align 2
  %i.aw = icmp eq i8 %i.av, 49
  %or.cond = select i1 %i.at, i1 %i.aw, i1 false
  %storemerge = zext i1 %or.cond to i8
  store i8 %storemerge, ptr %i.ap, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.g, %bb.e, %bb.d, %bb.b, %bb.p
  %.0 = phi i32 [ %., %bb.b ], [ 0, %bb.d ], [ 1, %bb.p ], [ %.50, %bb.g ], [ -1, %bb.e ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @nettl_read(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i64 @file_tell(ptr noundef %i.a)
  store i64 %i.b, ptr %4, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call fastcc zeroext i1 @nettl_read_rec(ptr noundef %0, ptr noundef %i.c, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr i8, ptr %1, i64 56
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  br i1 %i.g, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.f, %i.i
  br i1 %.not, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.i, %bb.b ], [ -1, %bb.c ]
  store i32 %.sink, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  ret i1 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @nettl_seek_read(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i64 @file_seek(ptr noundef %i.b, i64 noundef %1, i32 noundef 0, ptr noundef %3)
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call fastcc zeroext i1 @nettl_read_rec(ptr noundef %0, ptr noundef %i.e, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %3, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -12, ptr %3, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes_or_eof(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @file_seek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @register_nettl() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wtap_register_file_type_subtype(ptr noundef @nettl_info) ; 2 uses
  store i32 %i.a, ptr @nettl_file_type_subtype, align 4
  tail call void @wtap_register_backwards_compatibility_lua_name(ptr noundef @.str, i32 noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_register_file_type_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_register_backwards_compatibility_lua_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @file_tell(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @nettl_read_rec(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.nettlrec_hdr, align 4       ; 35 uses
  %6 = alloca %struct.nettlrec_ns_ls_drv_eth_hdr, align 1 ; 7 uses
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr i8, ptr %2, i64 48         ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 64
  %i.d = getelementptr i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.f = call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2, ptr noundef %3, ptr noundef %4)
  br i1 %i.f, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %5, align 4
  %rev = call i16 @llvm.bswap.i16(i16 %i.g)       ; 3 uses
  %i.h = icmp ult i16 %rev, 64
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i16 %rev to i32
  store i32 -13, ptr %3, align 4
  %i.j = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.1, i32 noundef %i.i)
  store ptr %i.j, ptr %4, align 8
  br label %bb.aq

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.l = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef nonnull %i.k, i32 noundef 62, ptr noundef %3, ptr noundef %4)
  br i1 %i.l, label %bb.e, label %bb.aq

bb.e:                                             ; preds = %bb.d
  %i.m = load i16, ptr %i.k, align 2              ; 4 uses
  %rev184 = call i16 @llvm.bswap.i16(i16 %i.m)    ; 2 uses
  %i.n = add i16 %rev, -64
  %i.o = zext i16 %i.n to i32
  %i.p = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef %i.o, ptr noundef %3, ptr noundef %4)
  br i1 %i.p, label %bb.f, label %bb.aq

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  call void @wtap_setup_packet_rec(ptr noundef %2, i32 noundef %i.r)
  %i.s = call ptr @wtap_block_create(i32 noundef 5)
  %i.t = getelementptr i8, ptr %2, i64 216
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = shl nuw i32 %i.w, 24
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 13 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 14 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 15 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ab, %i.x
  %i.ak = or disjoint i32 %i.aj, %i.ai
  %i.al = or disjoint i32 %i.ak, %i.af
  %i.am = and i32 %i.w, 48
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread199.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i16 %rev184, label %bb.aa [
    i16 164, label %bb.h
    i16 172, label %bb.h
    i16 173, label %bb.h
    i16 178, label %bb.h
    i16 179, label %bb.h
    i16 180, label %bb.h
    i16 37, label %bb.h
    i16 185, label %bb.h
    i16 210, label %bb.h
    i16 233, label %bb.h
    i16 252, label %bb.h
    i16 253, label %bb.h
    i16 265, label %bb.h
    i16 269, label %bb.h
    i16 270, label %bb.h
    i16 271, label %bb.h
    i16 275, label %bb.h
    i16 277, label %bb.h
    i16 278, label %bb.h
    i16 95, label %bb.h
    i16 174, label %bb.h
    i16 176, label %bb.h
    i16 177, label %bb.h
    i16 31, label %bb.h
    i16 187, label %bb.h
    i16 9, label %bb.h
    i16 2, label %bb.h
    i16 6, label %bb.h
    i16 8, label %bb.h
    i16 189, label %bb.h
    i16 190, label %bb.h
    i16 244, label %bb.h
    i16 245, label %bb.h
    i16 23, label %bb.h
    i16 267, label %bb.h
    i16 268, label %bb.h
    i16 11, label %bb.w
    i16 34, label %bb.z
    i16 35, label %bb.z
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.ao = getelementptr i8, ptr %2, i64 56
  switch i16 %i.m, label %bb.i [
    i16 -3072, label %bb.o
    i16 3073, label %bb.o
    i16 2304, label %bb.o
    i16 2048, label %bb.o
    i16 1536, label %bb.o
    i16 512, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  switch i16 %i.m, label %bb.n [
    i16 5888, label %bb.o
    i16 -2816, label %bb.j
    i16 2817, label %bb.k
    i16 -20224, label %bb.l
    i16 -20480, label %bb.l
    i16 -20992, label %bb.l
    i16 24320, label %bb.l
    i16 -17664, label %bb.m
    i16 7936, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  br label %bb.o

bb.l:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  br label %bb.o

bb.m:                                             ; preds = %bb.i, %bb.i
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.k, %bb.m, %bb.n, %bb.l, %bb.j
  %.sink230 = phi i32 [ 70, %bb.h ], [ 94, %bb.k ], [ 72, %bb.m ], [ 71, %bb.n ], [ 73, %bb.l ], [ 65, %bb.j ], [ 70, %bb.h ], [ 70, %bb.h ], [ 70, %bb.h ], [ 70, %bb.h ], [ 70, %bb.h ], [ 64, %bb.i ]
  store i32 %.sink230, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = call i32 @llvm.bswap.i32(i32 %i.aq)     ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.at = load i32, ptr %i.as, align 4
  %i.au = call i32 @llvm.bswap.i32(i32 %i.at)     ; 6 uses
  switch i16 %i.m, label %.thread199 [
    i16 24320, label %bb.p
    i16 -20224, label %bb.t
    i16 -20480, label %bb.t
    i16 -20992, label %bb.t
    i16 512, label %bb.u
    i16 3073, label %bb.v
  ]

bb.p:                                             ; preds = %bb.o
  %i.av = icmp eq i32 %i.al, 536870912
  br i1 %i.av, label %.thread199, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 9, ptr noundef %3, ptr noundef %4)
  br i1 %i.aw, label %bb.r, label %bb.aq

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef %i.az, ptr noundef %3, ptr noundef %4)
  br i1 %i.ba, label %bb.s, label %bb.aq

bb.s:                                             ; preds = %bb.r
  %i.bb = add nuw nsw i32 %i.az, 9
  br label %bb.ab

bb.t:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.bc = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef 3, ptr noundef %3, ptr noundef %4)
  br i1 %i.bc, label %bb.ab, label %bb.aq

bb.u:                                             ; preds = %bb.o
  %i.bd = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef 26, ptr noundef %3, ptr noundef %4)
  br i1 %i.bd, label %bb.ab, label %bb.aq

bb.v:                                             ; preds = %bb.o
  %i.be = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef 8, ptr noundef %3, ptr noundef %4)
  br i1 %i.be, label %bb.ab, label %bb.aq

bb.w:                                             ; preds = %bb.g
  %i.bf = getelementptr i8, ptr %2, i64 56
  store i32 71, ptr %i.bf, align 8
  %i.bg = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 22, ptr noundef %3, ptr noundef %4)
  br i1 %i.bg, label %bb.x, label %bb.aq

bb.x:                                             ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 6
  %.val187 = load i8, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 7
  %.val188 = load i8, ptr %i.bi, align 1
  %i.bj = zext i8 %.val187 to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = zext i8 %.val188 to i32
  %i.bm = or disjoint i32 %i.bk, %i.bl            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.val = load i8, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 5
  %.val186 = load i8, ptr %i.bo, align 1
  %i.bp = zext i8 %.val to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = zext i8 %.val186 to i32
  %i.bs = or disjoint i32 %i.bq, %i.br            ; 2 uses
  %i.bt = load i8, ptr %i.e, align 1, !range !6, !noundef !7
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.y, label %.thread199

bb.y:                                             ; preds = %bb.x
  %i.bv = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef 2, ptr noundef %3, ptr noundef %4)
  br i1 %i.bv, label %.thread199, label %bb.aq

bb.z:                                             ; preds = %bb.g, %bb.g
  %i.bw = getelementptr i8, ptr %2, i64 56
  store i32 79, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = call i32 @llvm.bswap.i32(i32 %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = call i32 @llvm.bswap.i32(i32 %i.cb)
  %i.cd = call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef null, i32 noundef 24, ptr noundef %3, ptr noundef %4)
  br i1 %i.cd, label %bb.ab, label %bb.aq

bb.aa:                                            ; preds = %bb.g
  store i32 -1, ptr %i.q, align 8
  br label %.thread199.sink.split

.thread199.sink.split:                            ; preds = %bb.f, %bb.aa
  %.sink = phi i32 [ 71, %bb.aa ], [ 70, %bb.f ]
  %i.ce = getelementptr i8, ptr %2, i64 56
  store i32 %.sink, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = call i32 @llvm.bswap.i32(i32 %i.cj)
  br label %.thread199

.thread199:                                       ; preds = %.thread199.sink.split, %bb.x, %bb.y, %bb.o, %bb.p
  %.0175.ph = phi i1 [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.o ], [ true, %bb.p ], [ false, %.thread199.sink.split ]
  %.0174.ph = phi i32 [ %i.bm, %bb.x ], [ %i.bm, %bb.y ], [ %i.ar, %bb.o ], [ %i.ar, %bb.p ], [ %i.ch, %.thread199.sink.split ]
  %.0173.ph = phi i32 [ %i.bs, %bb.x ], [ %i.bs, %bb.y ], [ %i.au, %bb.o ], [ %i.au, %bb.p ], [ %i.ck, %.thread199.sink.split ]
  %i.cl = getelementptr i8, ptr %2, i64 4
  store i32 3, ptr %i.cl, align 4
  %i.cm = getelementptr i8, ptr %2, i64 52
  store i32 %.0174.ph, ptr %i.cm, align 4
  br label %bb.af

bb.ab:                                            ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.z
  %.0174 = phi i32 [ %i.ar, %bb.t ], [ %i.ar, %bb.u ], [ %i.bz, %bb.z ], [ %i.ar, %bb.s ], [ %i.ar, %bb.v ] ; 3 uses
  %.0173 = phi i32 [ %i.au, %bb.t ], [ %i.au, %bb.u ], [ %i.cc, %bb.z ], [ %i.au, %bb.s ], [ %i.au, %bb.v ] ; 3 uses
  %.0172 = phi i32 [ 3, %bb.t ], [ 26, %bb.u ], [ 24, %bb.z ], [ %i.bb, %bb.s ], [ 8, %bb.v ] ; 6 uses
  %i.cn = icmp ult i32 %.0174, %.0172
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 -13, ptr %3, align 4
  %i.co = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.2, i32 noundef %.0174, i32 noundef %.0172)
  store ptr %i.co, ptr %4, align 8
  br label %bb.aq

bb.ad:                                            ; preds = %bb.ab
  %i.cp = getelementptr i8, ptr %2, i64 4
  store i32 3, ptr %i.cp, align 4
  %i.cq = sub nuw i32 %.0174, %.0172
  %i.cr = getelementptr i8, ptr %2, i64 52
  store i32 %i.cq, ptr %i.cr, align 4
  %i.cs = icmp ult i32 %.0173, %.0172
  br i1 %i.cs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 -13, ptr %3, align 4
  %i.ct = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.3, i32 noundef %.0173, i32 noundef %.0172)
  store ptr %i.ct, ptr %4, align 8
  br label %bb.aq

bb.af:                                            ; preds = %.thread199, %bb.ad
  %.0175195206 = phi i1 [ %.0175.ph, %.thread199 ], [ false, %bb.ad ]
  %.0173197205 = phi i32 [ %.0173.ph, %.thread199 ], [ %.0173, %bb.ad ]
  %.0172198204 = phi i32 [ 0, %.thread199 ], [ %.0172, %bb.ad ]
  %i.cu = sub nuw i32 %.0173197205, %.0172198204  ; 6 uses
  store i32 %i.cu, ptr %i.b, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 24
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 41
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 16
  %i.dd = or disjoint i64 %i.dc, %i.cy
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 42
  %i.df = load i8, ptr %i.de, align 2
  %i.dg = zext i8 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 8
  %i.di = or disjoint i64 %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 43
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i64
  %i.dm = or disjoint i64 %i.di, %i.dl
  %i.dn = getelementptr i8, ptr %2, i64 16
  store i64 %i.dm, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.dp = load i8, ptr %i.do, align 4
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw i32 %i.dq, 24
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 45
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 16
  %i.dw = or disjoint i32 %i.dv, %i.dr
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 46
  %i.dy = load i8, ptr %i.dx, align 2
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 8
  %i.eb = or disjoint i32 %i.dw, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 47
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i32
  %i.ef = or disjoint i32 %i.eb, %i.ee
  %i.eg = mul i32 %i.ef, 1000
  %i.eh = getelementptr i8, ptr %2, i64 24
  store i32 %i.eg, ptr %i.eh, align 8
  store i16 %rev184, ptr %i.c, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ej = load i8, ptr %i.ei, align 4
  %i.ek = zext i8 %i.ej to i32
  %i.el = shl nuw i32 %i.ek, 24
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 16
end_hunk_0
