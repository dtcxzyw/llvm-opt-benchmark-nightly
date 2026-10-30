Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ml_dsa_encoders?download=true
inline.NumInlined: 124
inline.NumDeleted: 31
loop-unroll.NumUnrolled: 2
begin_hunk_0_@poly_decode_signed_two_to_power_19:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.val.i.i = phi i64 [ %.val.i.i.pre, %bb.a ], [ %i.e, %bb.c ] ; 2 uses
  %.01035 = phi ptr [ %0, %bb.a ], [ %i.az, %bb.c ] ; 5 uses
  %.01234 = phi i32 [ 0, %bb.a ], [ %i.ba, %bb.c ]
  %i.b = icmp ult i64 %.val.i.i, 10
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store ptr %i.d, ptr %1, align 8, !tbaa !40
  %i.e = add i64 %.val.i.i, -10                   ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !41
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.0.copyload.i14 = load i32, ptr %i.f, align 1  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i15 = load i16, ptr %i.g, align 1
  %i.h = and i32 %.0.copyload.i, 1048575          ; 2 uses
  %i.i = sub nuw nsw i32 8904705, %i.h
  %i.j = sub nsw i32 524288, %i.h                 ; 2 uses
  %.neg.i.i.i.i = ashr i32 %i.j, 31               ; 2 uses
  %i.k = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #9, !srcloc !38
  %i.l = and i32 %i.k, %i.i
  %i.m = xor i32 %.neg.i.i.i.i, -1
  %i.n = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.m) #9, !srcloc !38
  %i.o = and i32 %i.n, %i.j
  %i.p = or i32 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %.01035, i64 4
  store i32 %i.p, ptr %.01035, align 4, !tbaa !25
  %i.r = lshr i32 %.0.copyload.i, 20
  %i.s = shl i32 %.0.copyload.i14, 12
  %i.t = and i32 %i.s, 1044480
  %i.u = or disjoint i32 %i.t, %i.r               ; 2 uses
  %i.v = sub nuw nsw i32 8904705, %i.u
  %i.w = sub nsw i32 524288, %i.u                 ; 2 uses
  %.neg.i.i.i.i16 = ashr i32 %i.w, 31             ; 2 uses
  %i.x = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i16) #9, !srcloc !38
  %i.y = and i32 %i.x, %i.v
  %i.z = xor i32 %.neg.i.i.i.i16, -1
  %i.aa = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.z) #9, !srcloc !38
  %i.ab = and i32 %i.aa, %i.w
  %i.ac = or i32 %i.ab, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %.01035, i64 8
  store i32 %i.ac, ptr %i.q, align 4, !tbaa !25
  %i.ae = lshr i32 %.0.copyload.i14, 8
  %i.af = and i32 %i.ae, 1048575                  ; 2 uses
  %i.ag = sub nuw nsw i32 8904705, %i.af
  %i.ah = sub nsw i32 524288, %i.af               ; 2 uses
  %.neg.i.i.i.i17 = ashr i32 %i.ah, 31            ; 2 uses
  %i.ai = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i17) #9, !srcloc !38
  %i.aj = and i32 %i.ai, %i.ag
  %i.ak = xor i32 %.neg.i.i.i.i17, -1
  %i.al = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.ak) #9, !srcloc !38
  %i.am = and i32 %i.al, %i.ah
  %i.an = or i32 %i.am, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %.01035, i64 12
  store i32 %i.an, ptr %i.ad, align 4, !tbaa !25
  %i.ap = zext i16 %.0.copyload.i15 to i32
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %i.ap, i32 %.0.copyload.i14, i32 4) ; 2 uses
  %i.ar = sub nuw nsw i32 8904705, %i.aq
  %i.as = sub nsw i32 524288, %i.aq               ; 2 uses
  %.neg.i.i.i.i18 = ashr i32 %i.as, 31            ; 2 uses
  %i.at = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i18) #9, !srcloc !38
  %i.au = and i32 %i.at, %i.ar
  %i.av = xor i32 %.neg.i.i.i.i18, -1
  %i.aw = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.av) #9, !srcloc !38
  %i.ax = and i32 %i.aw, %i.as
  %i.ay = or i32 %i.ax, %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %.01035, i64 16
  store i32 %i.ay, ptr %i.ao, align 4, !tbaa !25
  %i.ba = add nuw nsw i32 %.01234, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, 64
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !84

bb.d:                                             ; preds = %bb.b, %bb.c
  %.011 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.011
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @poly_decode_signed_two_to_power_17(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val.i.i.pre = load i64, ptr %i.a, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.val.i.i = phi i64 [ %.val.i.i.pre, %bb.a ], [ %i.e, %bb.c ] ; 2 uses
  %.011.idx = phi i64 [ 0, %bb.a ], [ %.011.add, %bb.c ] ; 3 uses
  %i.b = icmp ult i64 %.val.i.i, 9
  br i1 %i.b, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store ptr %i.d, ptr %1, align 8, !tbaa !40
  %i.e = add i64 %.val.i.i, -9                    ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !41
  %.011.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.011.idx ; 4 uses
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.0.copyload.i14 = load i32, ptr %i.f, align 1  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i8, ptr %i.g, align 1, !tbaa !27
  %i.i = zext i8 %i.h to i32
  %i.j = and i32 %.0.copyload.i, 262143           ; 2 uses
  %i.k = sub nuw nsw i32 8511489, %i.j
  %i.l = sub nsw i32 131072, %i.j                 ; 2 uses
  %.neg.i.i.i.i = ashr i32 %i.l, 31               ; 2 uses
  %i.m = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #9, !srcloc !38
  %i.n = and i32 %i.m, %i.k
  %i.o = xor i32 %.neg.i.i.i.i, -1
  %i.p = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.o) #9, !srcloc !38
  %i.q = and i32 %i.p, %i.l
  %i.r = or i32 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %.011.ptr, i64 4
  store i32 %i.r, ptr %.011.ptr, align 4, !tbaa !25
  %i.t = lshr i32 %.0.copyload.i, 18
  %i.u = shl i32 %.0.copyload.i14, 14
  %i.v = and i32 %i.u, 245760
  %i.w = or disjoint i32 %i.v, %i.t               ; 2 uses
  %i.x = sub nuw nsw i32 8511489, %i.w
  %i.y = sub nsw i32 131072, %i.w                 ; 2 uses
  %.neg.i.i.i.i15 = ashr i32 %i.y, 31             ; 2 uses
  %i.z = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i15) #9, !srcloc !38
  %i.aa = and i32 %i.z, %i.x
  %i.ab = xor i32 %.neg.i.i.i.i15, -1
  %i.ac = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.ab) #9, !srcloc !38
  %i.ad = and i32 %i.ac, %i.y
  %i.ae = or i32 %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %.011.ptr, i64 8
  store i32 %i.ae, ptr %i.s, align 4, !tbaa !25
  %i.ag = lshr i32 %.0.copyload.i14, 4
  %i.ah = and i32 %i.ag, 262143                   ; 2 uses
  %i.ai = sub nuw nsw i32 8511489, %i.ah
  %i.aj = sub nsw i32 131072, %i.ah               ; 2 uses
  %.neg.i.i.i.i16 = ashr i32 %i.aj, 31            ; 2 uses
  %i.ak = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i16) #9, !srcloc !38
  %i.al = and i32 %i.ak, %i.ai
  %i.am = xor i32 %.neg.i.i.i.i16, -1
  %i.an = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.am) #9, !srcloc !38
  %i.ao = and i32 %i.an, %i.aj
  %i.ap = or i32 %i.ao, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.ptr, i64 12
  store i32 %i.ap, ptr %i.af, align 4, !tbaa !25
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %.0.copyload.i14, i32 10) ; 2 uses
  %i.as = sub nuw nsw i32 8511489, %i.ar
  %i.at = sub nsw i32 131072, %i.ar               ; 2 uses
  %.neg.i.i.i.i17 = ashr i32 %i.at, 31            ; 2 uses
  %i.au = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i17) #9, !srcloc !38
  %i.av = and i32 %i.au, %i.as
  %i.aw = xor i32 %.neg.i.i.i.i17, -1
  %i.ax = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.aw) #9, !srcloc !38
  %i.ay = and i32 %i.ax, %i.at
  %i.az = or i32 %i.ay, %i.av
  %.011.add = add nuw nsw i64 %.011.idx, 16
  store i32 %i.az, ptr %i.aq, align 4, !tbaa !25
  %i.ba = icmp samesign ult i64 %.011.idx, 1008
  br i1 %i.ba, label %bb.b, label %.critedge, !llvm.loop !85

.critedge:                                        ; preds = %bb.b, %bb.c
  %.2 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ossl_ml_dsa_poly_decode_expand_mask(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.PACKET, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %PACKET_buf_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %4, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.b, align 8, !tbaa !41
  %i.c = icmp eq i32 %3, 524288
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @poly_decode_signed_two_to_power_19(ptr noundef %0, ptr noundef nonnull %4)
  br label %PACKET_buf_init.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.e = call i32 @poly_decode_signed_two_to_power_17(ptr noundef %0, ptr noundef nonnull %4)
  br label %PACKET_buf_init.exit.thread

PACKET_buf_init.exit.thread:                      ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_ml_dsa_w1_encode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca ptr, align 8                        ; 10 uses
  %5 = alloca ptr, align 8                        ; 8 uses
  %6 = alloca %struct.wpacket_st, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.a = call i32 @WPACKET_init_static_len(ptr noundef nonnull %6, ptr noundef %2, i64 noundef %3, i64 noundef 0) #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %7

7:                                                ; preds = %bb.a
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %9 = load i64, ptr %8, align 8, !tbaa !50
  %.not18 = icmp eq i64 %9, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %7
  %.not14 = icmp eq i32 %1, 261888
  br i1 %.not14, label %call.1.us, label %.lr.ph.a

call.1.us:                                        ; preds = %.lr.ph, %29
  %.015.us = phi i64 [ %30, %29 ], [ 0, %.lr.ph ] ; 2 uses
  %10 = load ptr, ptr %0, align 8, !tbaa !49
  %11 = getelementptr inbounds nuw [1024 x i8], ptr %10, i64 %.015.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %12 = call i32 @WPACKET_allocate_bytes(ptr noundef nonnull %6, i64 noundef 128, ptr noundef nonnull %5) #8
  %.not.i = icmp eq i32 %12, 0
  br i1 %.not.i, label %poly_encode_4_bits.exit.thread, label %bb.b

poly_encode_4_bits.exit.thread:                   ; preds = %call.1.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %._crit_edge

bb.b:                                             ; preds = %call.1.us, %bb.b
  %.09.idx.i = phi i64 [ %.09.add.i.1, %bb.b ], [ 0, %call.1.us ] ; 3 uses
  %.09.ptr.i = getelementptr inbounds nuw i8, ptr %11, i64 %.09.idx.i ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.09.ptr.i, i64 4
  %14 = load i32, ptr %.09.ptr.i, align 4, !tbaa !25
  %.09.add.i = or disjoint i64 %.09.idx.i, 8      ; 2 uses
  %15 = load i32, ptr %13, align 4, !tbaa !25
  %16 = shl i32 %15, 4
  %17 = or i32 %16, %14
  %18 = trunc i32 %17 to i8
  %19 = load ptr, ptr %5, align 8, !tbaa !26      ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 1
  store ptr %20, ptr %5, align 8, !tbaa !26
  store i8 %18, ptr %19, align 1, !tbaa !27
  %.09.ptr.i.1 = getelementptr inbounds nuw i8, ptr %11, i64 %.09.add.i ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %.09.ptr.i.1, i64 4
  %22 = load i32, ptr %.09.ptr.i.1, align 4, !tbaa !25
  %.09.add.i.1 = add nuw nsw i64 %.09.idx.i, 16
  %23 = load i32, ptr %21, align 4, !tbaa !25
  %24 = shl i32 %23, 4
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i8
  %27 = load ptr, ptr %5, align 8, !tbaa !26      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %27, i64 1
  store ptr %i.b, ptr %5, align 8, !tbaa !26
  store i8 %26, ptr %27, align 1, !tbaa !27
  %28 = icmp samesign ult i64 %.09.add.i, 1016
  br i1 %28, label %bb.b, label %29, !llvm.loop !86

29:                                               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %30 = add nuw i64 %.015.us, 1                   ; 2 uses
  %31 = load i64, ptr %8, align 8, !tbaa !50
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %call.1.us, label %._crit_edge, !llvm.loop !87

bb.c:                                             ; preds = %.preheader.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.c = add nuw i64 %.014, 1                     ; 2 uses
  %i.d = load i64, ptr %8, align 8, !tbaa !50
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %.lr.ph.a, label %._crit_edge, !llvm.loop !87

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.c
  %.014 = phi i64 [ %i.c, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw [1024 x i8], ptr %i.f, i64 %.014
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %33 = call i32 @WPACKET_allocate_bytes(ptr noundef nonnull %6, i64 noundef 192, ptr noundef nonnull %4) #8
  %.not13 = icmp eq i32 %33, 0
  br i1 %.not13, label %poly_encode_6_bits.exit.thread, label %.preheader.i25

poly_encode_6_bits.exit.thread:                   ; preds = %.lr.ph.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %._crit_edge

.preheader.i25:                                   ; preds = %.lr.ph.a, %.preheader.i25
  %.015.idx.i = phi i64 [ %.015.add.i, %.preheader.i25 ], [ 0, %.lr.ph.a ] ; 3 uses
  %.015.ptr.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.015.idx.i ; 4 uses
  %34 = getelementptr inbounds nuw i8, ptr %.015.ptr.i, i64 4
  %35 = load i32, ptr %.015.ptr.i, align 4, !tbaa !25
  %36 = getelementptr inbounds nuw i8, ptr %.015.ptr.i, i64 8
  %37 = load i32, ptr %34, align 4, !tbaa !25     ; 2 uses
  %38 = getelementptr inbounds nuw i8, ptr %.015.ptr.i, i64 12
  %39 = load i32, ptr %36, align 4, !tbaa !25     ; 2 uses
  %.015.add.i = add nuw nsw i64 %.015.idx.i, 16
  %40 = load i32, ptr %38, align 4, !tbaa !25
  %41 = shl i32 %37, 6
  %42 = or i32 %41, %35
  %43 = trunc i32 %42 to i8
  %44 = load ptr, ptr %4, align 8, !tbaa !26      ; 2 uses
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 1
  store ptr %45, ptr %4, align 8, !tbaa !26
  store i8 %43, ptr %44, align 1, !tbaa !27
  %46 = lshr i32 %37, 2
  %47 = shl i32 %39, 4
  %48 = or i32 %47, %46
  %49 = trunc i32 %48 to i8
  %50 = load ptr, ptr %4, align 8, !tbaa !26      ; 2 uses
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 1
  store ptr %51, ptr %4, align 8, !tbaa !26
  store i8 %49, ptr %50, align 1, !tbaa !27
  %52 = lshr i32 %39, 4
  %53 = shl i32 %40, 2
  %54 = or i32 %53, %52
  %55 = trunc i32 %54 to i8
  %56 = load ptr, ptr %4, align 8, !tbaa !26      ; 2 uses
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 1
  store ptr %57, ptr %4, align 8, !tbaa !26
  store i8 %55, ptr %56, align 1, !tbaa !27
  %58 = icmp samesign ult i64 %.015.idx.i, 1008
  br i1 %58, label %.preheader.i25, label %bb.c, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.c, %29, %poly_encode_6_bits.exit.thread, %poly_encode_4_bits.exit.thread, %7
  %.010 = phi i32 [ 0, %poly_encode_6_bits.exit.thread ], [ 1, %7 ], [ 0, %poly_encode_4_bits.exit.thread ], [ 1, %29 ], [ 1, %bb.c ]
  %i.h = call i32 @WPACKET_finish(ptr noundef nonnull %6) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  %.012 = phi i32 [ %.010, %._crit_edge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i32 %.012
}

declare i32 @WPACKET_allocate_bytes(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @EVP_DigestInit_ex2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSqueeze(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!14 = !{!"p1 _ZTS16ml_dsa_params_st", !12, i64 0}
!15 = !{!"p1 _ZTS9evp_md_st", !12, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"p1 _ZTS7poly_st", !12, i64 0}
!18 = !{!"vector_st", !17, i64 0, !10, i64 8}
!19 = !{!"ml_dsa_key_st", !13, i64 0, !14, i64 8, !15, i64 16, !15, i64 24, !6, i64 32, !6, i64 64, !6, i64 128, !16, i64 160, !16, i64 168, !16, i64 176, !7, i64 184, !18, i64 192, !18, i64 208, !18, i64 224, !18, i64 240}
!20 = !{!19, !17, i64 192}
!21 = !{!19, !10, i64 200}
!22 = !{!19, !14, i64 8}
!23 = !{!"ml_dsa_params_st", !16, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !10, i64 32, !10, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !10, i64 64, !10, i64 72, !10, i64 80}
!24 = !{!23, !10, i64 72}
!25 = !{!7, !7, i64 0}
!26 = !{!16, !16, i64 0}
!27 = !{!6, !6, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!19, !16, i64 160}
!30 = !{!19, !16, i64 168}
!31 = !{!23, !10, i64 32}
!32 = !{!23, !10, i64 40}
!33 = !{!23, !10, i64 64}
!34 = !{!19, !17, i64 208}
!35 = !{!23, !7, i64 48}
!36 = !{!19, !17, i64 240}
!37 = !{!19, !17, i64 224}
!38 = !{i64 1910197}
!39 = !{!"", !16, i64 0, !10, i64 8}
!40 = !{!39, !16, i64 0}
!41 = !{!39, !10, i64 8}
!42 = !{!23, !7, i64 20}
!43 = !{!"ml_dsa_sig_st", !18, i64 0, !18, i64 16, !16, i64 32, !10, i64 40}
!44 = !{!43, !16, i64 32}
!45 = !{!43, !10, i64 40}
!46 = !{!43, !10, i64 8}
!47 = !{!43, !17, i64 0}
!48 = !{!23, !7, i64 56}
!49 = !{!18, !17, i64 0}
!50 = !{!18, !10, i64 8}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
!53 = distinct !{!53, !28}
!54 = distinct !{!54, !28}
!55 = !{!19, !15, i64 24}
!56 = distinct !{!56, !28}
!57 = distinct !{!57, !28}
!58 = distinct !{!58, !28}
!59 = distinct !{!59, !28}
!60 = !{ptr @poly_encode_signed_2, ptr @poly_encode_signed_4}
!61 = distinct !{!61, !28}
!62 = distinct !{!62, !28}
!63 = distinct !{!63, !28}
!64 = distinct !{!64, !28}
!65 = distinct !{!65, !28}
!66 = distinct !{!66, !28}
!67 = !{!19, !16, i64 176}
!68 = !{ptr @poly_decode_signed_2, ptr @poly_decode_signed_4}
!69 = !{!23, !16, i64 0}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !28}
!72 = distinct !{!72, !28}
!73 = distinct !{!73, !28}
!74 = distinct !{!74, !28}
!75 = !{!23, !10, i64 80}
!76 = !{ptr @poly_encode_signed_two_to_power_17, ptr @poly_encode_signed_two_to_power_19}
!77 = distinct !{!77, !28}
!78 = distinct !{!78, !28}
!79 = distinct !{!79, !28}
!80 = distinct !{!80, !28}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !28}
!83 = !{ptr @poly_decode_signed_two_to_power_17, ptr @poly_decode_signed_two_to_power_19}
!84 = distinct !{!84, !28}
!85 = distinct !{!85, !28}
!86 = distinct !{!86, !28}
!87 = distinct !{!87, !28}
!88 = distinct !{!88, !28}
end_hunk_0
