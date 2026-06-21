inline.NumInlined: 137
inline.NumDeleted: 57
begin_hunk_0_@llvm.lifetime.start.p0

declare void @mbedtls_debug_print_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -29184, 1) i32 @ssl_parse_record_header(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !21
  %i.d = icmp eq i8 %i.c, 1                       ; 2 uses
  %. = select i1 %i.d, i64 11, i64 3              ; 2 uses
  %i.e = add nuw nsw i64 %., 2
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc nuw nsw i64 %2 to i32
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 3868, ptr noundef nonnull @.str.164, i32 noundef %i.g, i32 noundef 4) #19
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.h = load i8, ptr %1, align 1, !tbaa !34      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 %i.h, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i8 0, ptr %i.j, align 8, !tbaa !37
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38   ; 5 uses
  %.not = icmp ne i64 %i.l, 0
  %i.m = icmp eq i8 %i.h, 25
  %or.cond = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %i.l, 13                         ; 2 uses
  %i.o = icmp ult i64 %2, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = trunc i64 %2 to i32
  %i.q = trunc i64 %i.n to i32
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 3908, ptr noundef nonnull @.str.165, i32 noundef %i.p, i32 noundef %i.q) #19
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.r = add i64 %i.l, 11
  %i.s = trunc i64 %i.l to i8
  store i8 %i.s, ptr %i.j, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 49
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.u, i64 %i.l, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.v = and i8 %i.h, -4
  %or.cond8.i = icmp eq i8 %i.v, 20
  br i1 %or.cond8.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = zext i8 %i.h to i32
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 3921, ptr noundef nonnull @.str.166, i32 noundef %i.w) #19
  br label %bb.y

bb.j:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i64 [ %i.r, %bb.g ], [ %., %bb.h ]    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %i.y, ptr %i.z, align 1, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %i.ab, ptr %i.ac, align 2, !tbaa !34
  %i.ad = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21
  %.0.copyload.i.i = load i16, ptr %i.x, align 1  ; 2 uses
  %i.ag = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i) ; 2 uses
  %i.ah = icmp eq i8 %i.af, 1                     ; 2 uses
  %i.ai = icmp eq i16 %.0.copyload.i.i, -2
  %i.aj = select i1 %i.ai, i16 513, i16 512
  %i.ak = sub i16 %i.aj, %i.ag
  %.0.i = select i1 %i.ah, i16 %i.ak, i16 %i.ag
  %i.al = zext i16 %.0.i to i32                   ; 3 uses
  %i.am = load i32, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.an = icmp ult i32 %i.am, %i.al
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 3938, ptr noundef nonnull @.str.167, i32 noundef %i.al, i32 noundef %i.am) #19
  br label %bb.y

bb.l:                                             ; preds = %bb.j
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !40
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %storemerge.in = phi ptr [ %i.ao, %bb.m ], [ %i.aq, %bb.n ]
  %storemerge = load i64, ptr %storemerge.in, align 1
  store i64 %storemerge, ptr %3, align 8
  %i.ar = add i64 %.1, 2                          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %.0.copyload.i96 = load i16, ptr %i.at, align 1
  %i.au = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i96)
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !42
  tail call void @mbedtls_debug_print_buf(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 3964, ptr noundef nonnull @.str.168, ptr noundef nonnull %1, i64 noundef %i.ar) #19
  %i.ax = load i8, ptr %i.i, align 8, !tbaa !35
  %i.ay = zext i8 %i.ax to i32
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !42
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 3968, ptr noundef nonnull @.str.169, i32 noundef %i.ay, i32 noundef %i.al, i64 noundef %i.az) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.ba, align 8, !tbaa !43
  %i.bb = load i64, ptr %i.as, align 8, !tbaa !41
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !42 ; 2 uses
  %i.bd = add i64 %i.bc, %i.bb                    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !44
  %i.bf = icmp eq i64 %i.bc, 0
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 3974, ptr noundef nonnull @.str.170) #19
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %0, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !21
  %i.bj = icmp eq i8 %i.bi, 1
  br i1 %i.bj, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %.0.copyload.i = load i16, ptr %3, align 8
  %i.bk = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i) ; 3 uses
  %i.bl = zext i16 %i.bk to i32
  %i.bm = icmp ult i64 %2, %i.bd
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %2 to i32
  %i.bo = trunc i64 %i.bd to i32
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 4001, ptr noundef nonnull @.str.171, i32 noundef %i.bn, i32 noundef %i.bo) #19
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 8, !tbaa !45 ; 2 uses
  %.not94 = icmp eq i16 %i.bk, %i.bq
  br i1 %.not94, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = zext i16 %i.bq to i32
  %i.bs = zext i16 %i.bk to i64
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 4011, ptr noundef nonnull @.str.172, i32 noundef %i.br, i64 noundef %i.bs) #19
  %i.bt = load i16, ptr %i.bp, align 8, !tbaa !45
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 1
  %i.bw = icmp eq i32 %i.bv, %i.bl
  br i1 %i.bw, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4016, ptr noundef nonnull @.str.173) #19
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.bx = tail call fastcc i32 @mbedtls_ssl_dtls_record_replay_check(ptr noundef nonnull %0, ptr noundef %3)
  %.not95 = icmp eq i32 %i.bx, 0
  br i1 %.not95, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 4027, ptr noundef nonnull @.str.174) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.w, %bb.u, %bb.x, %bb.v, %bb.s, %bb.p, %bb.k, %bb.i, %bb.f, %bb.b
  %.0 = phi i32 [ -29184, %bb.b ], [ -29184, %bb.f ], [ -29184, %bb.k ], [ -29184, %bb.p ], [ -29184, %bb.s ], [ -25728, %bb.v ], [ -29184, %bb.i ], [ -26368, %bb.x ], [ -26368, %bb.u ], [ 0, %bb.w ], [ 0, %bb.q ]
  ret i32 %.0
}

declare void @mbedtls_debug_print_ret(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @mbedtls_ssl_decrypt_buf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [55 x i8], align 16               ; 10 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = alloca [12 x i8], align 1                ; 8 uses
  %i.e = alloca [48 x i8], align 16               ; 9 uses
  %i.f = alloca [48 x i8], align 16               ; 6 uses
  %i.g = alloca [48 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.h = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 -1) #19, !srcloc !46 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1511, ptr noundef nonnull @.str.31) #19
  %i.i = icmp eq ptr %2, null
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41   ; 3 uses
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = sub nuw i64 %i.n, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 27 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1516, ptr noundef nonnull @.str.32) #19
  br label %ssl_parse_inner_plaintext.exit

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p ; 8 uses
  %i.w = tail call i32 @mbedtls_ssl_get_mode_from_transform(ptr noundef %1) #19 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !37    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !47
  %.not = icmp eq i8 %i.y, %i.aa
  br i1 %.not, label %bb.g, label %ssl_parse_inner_plaintext.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 49
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 322
  %i.ad = zext i8 %i.y to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ab, ptr nonnull %i.ac, i64 %i.ad)
  %.not290 = icmp eq i32 %bcmp, 0
  br i1 %.not290, label %bb.h, label %ssl_parse_inner_plaintext.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq i32 %i.w, 3
  br i1 %i.ae, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.af = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %.val = load i64, ptr %i.af, align 8, !tbaa !54
  %i.ag = getelementptr i8, ptr %1, i64 16
  %.val310 = load i64, ptr %i.ag, align 8, !tbaa !55 ; 2 uses
  %.not352 = icmp eq i64 %.val, %.val310
  %.pre368 = load i64, ptr %i.s, align 8, !tbaa !42 ; 4 uses
  br i1 %.not352, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp ult i64 %.pre368, 8
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1570, ptr noundef nonnull @.str.33, i64 noundef %.pre368, i64 noundef 8) #19
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !41
  %i.ak = add i64 %i.aj, 8
  store i64 %i.ak, ptr %i.o, align 8, !tbaa !41
  %i.al = add i64 %.pre368, -8                    ; 2 uses
  store i64 %i.al, ptr %i.s, align 8, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l
  %i.am = phi i64 [ %i.al, %bb.l ], [ %.pre368, %bb.i ] ; 3 uses
  %.0267 = phi ptr [ %i.v, %bb.l ], [ %2, %bb.i ]
  %.0259 = phi ptr [ %i.ai, %bb.l ], [ %i.v, %bb.i ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !56 ; 4 uses
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1587, ptr noundef nonnull @.str.34, i64 noundef %i.am, i64 noundef %i.ao) #19
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.aq = sub nuw i64 %i.am, %i.ao
  store i64 %i.aq, ptr %i.s, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %i.ar, i64 %.val310, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.0.copyload.i11.i = load i64, ptr %i.as, align 1
  %.0.copyload.i.i = load i64, ptr %.0267, align 1
  %i.at = xor i64 %.0.copyload.i.i, %.0.copyload.i11.i
  store i64 %i.at, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.av = load i32, ptr %i.au, align 4, !tbaa !57
  call fastcc void @ssl_extract_add_data_from_record(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %2, i32 noundef %i.av, i64 noundef %i.ao)
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !58
  call void @mbedtls_debug_print_buf(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 1609, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.b, i64 noundef %i.aw) #19
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !54
  call void @mbedtls_debug_print_buf(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 1617, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.d, i64 noundef %i.ax) #19
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %.0259, i64 %i.ay
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !56
  call void @mbedtls_debug_print_buf(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 1619, ptr noundef nonnull @.str.36, ptr noundef %i.az, i64 noundef %i.ba) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bc = load i64, ptr %i.af, align 8, !tbaa !54
  %3 = load i64, ptr %i.c, align 8, !tbaa !58
  %i.bd = load i64, ptr %i.s, align 8, !tbaa !42
  %i.be = load i64, ptr %i.an, align 8, !tbaa !56 ; 2 uses
  %i.bf = add i64 %i.be, %i.bd
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !44
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.bi = ptrtoint ptr %.0259 to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %.neg = sub i64 %i.bg, %i.bi
  %i.bk = add i64 %.neg, %i.bj
  %i.bl = call i32 @mbedtls_cipher_auth_decrypt_ext(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.d, i64 noundef %i.bc, ptr noundef nonnull %i.b, i64 noundef %3, ptr noundef %.0259, i64 noundef %i.bf, ptr noundef %.0259, i64 noundef %i.bk, ptr noundef nonnull %i.a, i64 noundef %i.be) #19 ; 4 uses
  %.not302 = icmp eq i32 %i.bl, 0
  br i1 %.not302, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @mbedtls_debug_print_ret(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1646, ptr noundef nonnull @.str.37, i32 noundef %i.bl) #19
  %i.bm = icmp eq i32 %i.bl, -25344
  %. = select i1 %i.bm, i32 -29056, i32 %i.bl
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !58
  %i.bo = load i64, ptr %i.s, align 8, !tbaa !42
  %.not303 = icmp eq i64 %i.bn, %i.bo
  br i1 %.not303, label %.thread337, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1660, ptr noundef nonnull @.str.26) #19
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.n, %bb.p, %bb.r
  %.0.ph = phi i32 [ -27648, %bb.r ], [ %., %bb.p ], [ -29056, %bb.n ], [ -29056, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %ssl_parse_inner_plaintext.exit

.thread337:                                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.au

bb.s:                                             ; preds = %bb.h
  %.not351 = icmp eq i32 %i.w, 2                  ; 3 uses
  %i.bp = add i32 %i.w, -1
  %or.cond = icmp ult i32 %i.bp, 2
  br i1 %or.cond, label %bb.t, label %bb.ao

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !54 ; 4 uses
  %i.bs = load i64, ptr %i.s, align 8, !tbaa !42  ; 4 uses
  %i.bt = shl i64 %i.br, 1
  %i.bu = icmp ult i64 %i.bs, %i.bt
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 14 uses
  %.pre367 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59 ; 2 uses
  br i1 %i.bu, label %._crit_edge366, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = add i64 %i.br, 1
  %i.bw = add i64 %i.bv, %.pre367
  %i.bx = icmp ult i64 %i.bs, %i.bw
  br i1 %i.bx, label %._crit_edge366, label %bb.v

._crit_edge366:                                   ; preds = %bb.t, %bb.u
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1712, ptr noundef nonnull @.str.38, i64 noundef %i.bs, i64 noundef %i.br, i64 noundef %.pre367) #19
  br label %ssl_parse_inner_plaintext.exit

bb.v:                                             ; preds = %bb.u
  br i1 %.not351, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 1727, ptr noundef nonnull @.str.27) #19
  %i.by = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  %i.bz = load i64, ptr %i.s, align 8, !tbaa !42
  %i.ca = sub i64 %i.bz, %i.by
  store i64 %i.ca, ptr %i.s, align 8, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !56
  call fastcc void @ssl_extract_add_data_from_record(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %2, i32 noundef %i.cc, i64 noundef %i.ce)
  %i.cf = load i64, ptr %i.c, align 8, !tbaa !58  ; 2 uses
  call void @mbedtls_debug_print_buf(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 1746, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b, i64 noundef %i.cf) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.ch = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.b, i64 noundef %i.cf) #19 ; 2 uses
  %.not291 = icmp eq i32 %i.ch, 0
  br i1 %.not291, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ci = load i64, ptr %i.s, align 8, !tbaa !42
  %i.cj = call i32 @mbedtls_md_hmac_update(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.v, i64 noundef %i.ci) #19 ; 2 uses
  %.not292 = icmp eq i32 %i.cj, 0
  br i1 %.not292, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ck = call i32 @mbedtls_md_hmac_finish(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.e) #19 ; 2 uses
  %.not293 = icmp eq i32 %i.ck, 0
  br i1 %.not293, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cl = call i32 @mbedtls_md_hmac_reset(ptr noundef nonnull %i.cg) #19 ; 2 uses
  %.not294 = icmp eq i32 %i.cl, 0
  br i1 %.not294, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i64, ptr %i.s, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cm
  %i.co = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_debug_print_buf(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 1791, ptr noundef nonnull @.str.39, ptr noundef nonnull %i.cn, i64 noundef %i.co) #19
  %i.cp = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_debug_print_buf(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 1793, ptr noundef nonnull @.str.40, ptr noundef nonnull %i.e, i64 noundef %i.cp) #19
  %i.cq = load i64, ptr %i.s, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cq
  %i.cs = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  %i.ct = call i32 @mbedtls_ct_memcmp(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.e, i64 noundef %i.cs) #19
  %.not295 = icmp eq i32 %i.ct, 0
  br i1 %.not295, label %.critedge, label %.thread325

.thread325:                                       ; preds = %bb.aa
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1798, ptr noundef nonnull @.str.41) #19
  %i.cu = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.e, i64 noundef %i.cu) #19
  br label %bb.ad

bb.ab:                                            ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %.0241.ph = phi i32 [ %i.ch, %bb.w ], [ %i.cl, %bb.z ], [ %i.ck, %bb.y ], [ %i.cj, %bb.x ] ; 3 uses
  %i.cv = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.e, i64 noundef %i.cv) #19
  %.not297 = icmp eq i32 %.0241.ph, -29056
  br i1 %.not297, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @mbedtls_debug_print_ret(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1817, ptr noundef nonnull @.str.42, i32 noundef %.0241.ph) #19
  br label %bb.ad

bb.ad:                                            ; preds = %.thread325, %bb.ab, %bb.ac
  %.0241.ph328 = phi i32 [ -29056, %.thread325 ], [ -29056, %bb.ab ], [ %.0241.ph, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %ssl_parse_inner_plaintext.exit

.critedge:                                        ; preds = %bb.aa
  %i.cw = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.e, i64 noundef %i.cw) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %.pre = load i64, ptr %i.s, align 8, !tbaa !42
  %.pre365 = load i64, ptr %i.bq, align 8, !tbaa !54
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge, %bb.v
  %i.cx = phi i64 [ %.pre365, %.critedge ], [ %i.br, %bb.v ] ; 7 uses
  %i.cy = phi i64 [ %.pre, %.critedge ], [ %i.bs, %bb.v ] ; 2 uses
  %i.cz = urem i64 %i.cy, %i.cx
  %.not298 = icmp eq i64 %i.cz, 0
  br i1 %.not298, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1834, ptr noundef nonnull @.str.43, i64 noundef %i.cy, i64 noundef %i.cx) #19
  br label %ssl_parse_inner_plaintext.exit

bb.ag:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.da, ptr nonnull align 1 %i.v, i64 %i.cx, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cx ; 8 uses
  %i.dc = load i64, ptr %i.o, align 8, !tbaa !41
  %i.dd = add i64 %i.dc, %i.cx
  store i64 %i.dd, ptr %i.o, align 8, !tbaa !41
  %i.de = load i64, ptr %i.s, align 8, !tbaa !42
  %i.df = sub i64 %i.de, %i.cx                    ; 2 uses
  store i64 %i.df, ptr %i.s, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.dh = call i32 @mbedtls_cipher_crypt(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.da, i64 noundef %i.cx, ptr noundef nonnull %i.db, i64 noundef %i.df, ptr noundef nonnull %i.db, ptr noundef nonnull %i.a) #19 ; 3 uses
  %.not299 = icmp eq i32 %i.dh, 0
  br i1 %.not299, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @mbedtls_debug_print_ret(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1896, ptr noundef nonnull @.str.25, i32 noundef %i.dh) #19
  br label %ssl_parse_inner_plaintext.exit

bb.ai:                                            ; preds = %bb.ag
  %i.di = load i64, ptr %i.s, align 8, !tbaa !42  ; 4 uses
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !58
  %.not300 = icmp eq i64 %i.di, %i.dj
  br i1 %.not300, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 1903, ptr noundef nonnull @.str.26) #19
  br label %ssl_parse_inner_plaintext.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dk = getelementptr i8, ptr %i.db, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 -1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !34
  %i.dn = zext i8 %i.dm to i64                    ; 3 uses
  br i1 %.not351, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.do = add nuw nsw i64 %i.dn, 1
  %i.dp = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.di, i64 %i.do) #19, !srcloc !60
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.dq = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59
  %i.dr = add nuw nsw i64 %i.dn, 1
  %i.ds = add i64 %i.dr, %i.dq
  %i.dt = call { i64, i64, i64 } asm sideeffect "mov $1, $0                                 \0A\09xor $2, $0                                 \0A\09sub $2, $1                                 \0A\09and $0, $2                                 \0A\09not $0                                       \0A\09and $0, $1                                 \0A\09or $2, $1                                  \0A\09sar $$63, $1                                  \0A\09", "=&{ax},=&{di},=&{si},1,2,~{dirflag},~{fpsr},~{flags}"(i64 %i.di, i64 %i.ds) #19, !srcloc !60
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn350 = phi { i64, i64, i64 } [ %i.dp, %bb.al ], [ %i.dt, %bb.am ]
  %.pn.in = extractvalue { i64, i64, i64 } %.pn350, 1 ; 2 uses
  %.pn = xor i64 %.pn.in, -1
  %.0249 = and i64 %.pn, %i.dn                    ; 2 uses
end_hunk_0
