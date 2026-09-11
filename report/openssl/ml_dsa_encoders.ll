Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ml_dsa_encoders?download=true
inline.NumInlined: 122
inline.NumDeleted: 29
loop-unroll.NumUnrolled: 2
begin_hunk_0_@poly_encode_signed_two_to_power_19:bb.a
  %i.bi = trunc i32 %i.bh to i16
  store i16 %i.bi, ptr %i.bg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.bj = icmp samesign ult i64 %.016.idx, 1008
  br i1 %i.bj, label %bb.b, label %.loopexit, !llvm.loop !76

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ 1, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @poly_encode_signed_two_to_power_17(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.016.idx = phi i64 [ 0, %bb.a ], [ %.016.add, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call i32 @WPACKET_allocate_bytes(ptr noundef %1, i64 noundef 9, ptr noundef nonnull %i.a) #8
  %.not.not = icmp eq i32 %i.b, 0
  br i1 %.not.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.016.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.016.idx ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.016.ptr, i64 4
  %i.d = load i32, ptr %.016.ptr, align 4, !tbaa !23 ; 3 uses
  %i.e = sub i32 8511489, %i.d
  %i.f = sub i32 131072, %i.d                     ; 2 uses
  %i.g = add i32 %i.d, -8511490
  %i.h = and i32 %i.f, %i.g
  %.neg.i.i.i.i = ashr i32 %i.h, 31               ; 2 uses
  %i.i = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #9, !srcloc !36
  %i.j = and i32 %i.i, %i.e
  %i.k = xor i32 %.neg.i.i.i.i, -1
  %i.l = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.k) #9, !srcloc !36
  %i.m = and i32 %i.l, %i.f
  %i.n = or i32 %i.m, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %.016.ptr, i64 8
  %i.p = load i32, ptr %i.c, align 4, !tbaa !23   ; 3 uses
  %i.q = sub i32 8511489, %i.p
  %i.r = sub i32 131072, %i.p                     ; 2 uses
  %i.s = add i32 %i.p, -8511490
  %i.t = and i32 %i.r, %i.s
  %.neg.i.i.i.i19 = ashr i32 %i.t, 31             ; 2 uses
  %i.u = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i19) #9, !srcloc !36
  %i.v = and i32 %i.u, %i.q
  %i.w = xor i32 %.neg.i.i.i.i19, -1
  %i.x = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.w) #9, !srcloc !36
  %i.y = and i32 %i.x, %i.r
  %i.z = or i32 %i.y, %i.v                        ; 2 uses
  %i.aa = shl i32 %i.z, 18
  %i.ab = or i32 %i.n, %i.aa
  %i.ac = lshr i32 %i.z, 14
  %i.ad = getelementptr inbounds nuw i8, ptr %.016.ptr, i64 12
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !23  ; 3 uses
  %i.af = sub i32 8511489, %i.ae
  %i.ag = sub i32 131072, %i.ae                   ; 2 uses
  %i.ah = add i32 %i.ae, -8511490
  %i.ai = and i32 %i.ag, %i.ah
  %.neg.i.i.i.i20 = ashr i32 %i.ai, 31            ; 2 uses
  %i.aj = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i20) #9, !srcloc !36
  %i.ak = and i32 %i.aj, %i.af
  %i.al = xor i32 %.neg.i.i.i.i20, -1
  %i.am = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.al) #9, !srcloc !36
  %i.an = and i32 %i.am, %i.ag
  %i.ao = or i32 %i.an, %i.ak
  %i.ap = shl i32 %i.ao, 4
  %i.aq = or i32 %i.ap, %i.ac
  %.016.add = add nuw nsw i64 %.016.idx, 16
  %i.ar = load i32, ptr %i.ad, align 4, !tbaa !23 ; 3 uses
  %i.as = sub i32 8511489, %i.ar
  %i.at = sub i32 131072, %i.ar                   ; 2 uses
  %i.au = add i32 %i.ar, -8511490
  %i.av = and i32 %i.at, %i.au
  %.neg.i.i.i.i21 = ashr i32 %i.av, 31            ; 2 uses
  %i.aw = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i21) #9, !srcloc !36
  %i.ax = and i32 %i.aw, %i.as
  %i.ay = xor i32 %.neg.i.i.i.i21, -1
  %i.az = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.ay) #9, !srcloc !36
  %i.ba = and i32 %i.az, %i.at
  %i.bb = or i32 %i.ba, %i.ax                     ; 2 uses
  %i.bc = shl i32 %i.bb, 22
  %i.bd = or i32 %i.aq, %i.bc
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !24  ; 3 uses
  store i32 %i.ab, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.bd, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = lshr i32 %i.bb, 10
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.bj = icmp samesign ult i64 %.016.idx, 1008
  br i1 %i.bj, label %bb.b, label %.loopexit, !llvm.loop !77

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ 1, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_ml_dsa_sig_decode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.PACKET, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
  %i.c = icmp eq i32 %i.b, 524288
  %poly_decode_signed_two_to_power_19.poly_decode_signed_two_to_power_17 = select i1 %i.c, ptr @poly_decode_signed_two_to_power_19, ptr @poly_decode_signed_two_to_power_17
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %PACKET_buf_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44   ; 4 uses
  %i.i = icmp ult i64 %2, %i.h
  br i1 %i.i, label %PACKET_buf_init.exit.thread, label %PACKET_copy_bytes.exit

PACKET_copy_bytes.exit:                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %i.h, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  store ptr %i.l, ptr %4, align 8, !tbaa !39
  %i.m = sub nuw nsw i64 %2, %i.h                 ; 2 uses
  store i64 %i.m, ptr %i.f, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !45
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.p = add nuw i64 %.01331, 1                   ; 2 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !45
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !78

.lr.ph:                                           ; preds = %PACKET_copy_bytes.exit, %bb.c
  %.01331 = phi i64 [ %i.p, %bb.c ], [ 0, %PACKET_copy_bytes.exit ] ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw [1024 x i8], ptr %i.s, i64 %.01331
  %i.u = call i32 %poly_decode_signed_two_to_power_19.poly_decode_signed_two_to_power_17(ptr noundef %i.t, ptr noundef nonnull %4) #8, !callees !82
  %.not18 = icmp eq i32 %i.u, 0
  br i1 %.not18, label %PACKET_buf_init.exit.thread, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %.val.i.i.i.pre = load i64, ptr %i.f, align 8, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %PACKET_copy_bytes.exit
  %.val.i.i.i = phi i64 [ %.val.i.i.i.pre, %._crit_edge.loopexit ], [ %i.m, %PACKET_copy_bytes.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !47   ; 2 uses
  %.val19 = load ptr, ptr %i.v, align 8, !tbaa !48 ; 4 uses
  %i.y = getelementptr i8, ptr %0, i64 24
  %.val20 = load i64, ptr %i.y, align 8, !tbaa !49 ; 5 uses
  %i.z = getelementptr inbounds nuw [1024 x i8], ptr %.val19, i64 %.val20
  %i.aa = zext i32 %i.x to i64                    ; 5 uses
  %i.ab = icmp ult i64 %.val.i.i.i, %i.aa
  br i1 %i.ab, label %PACKET_buf_init.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr %4, align 8, !tbaa !39    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa ; 2 uses
  %i.ae = sub nuw i64 %.val.i.i.i, %i.aa          ; 2 uses
  %i.af = icmp ult i64 %i.ae, %.val20
  br i1 %i.af, label %PACKET_buf_init.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.val20
  store ptr %i.ag, ptr %4, align 8, !tbaa !39
  %i.ah = sub nuw i64 %i.ae, %.val20
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %.val19, null
  br i1 %.not.i.i, label %vector_zero.exit.i.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = shl i64 %.val20, 10
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.val19, i8 0, i64 %i.ai, i1 false)
  br label %vector_zero.exit.i.preheader

vector_zero.exit.i.preheader:                     ; preds = %bb.f, %bb.e
  br label %vector_zero.exit.i

vector_zero.exit.i:                               ; preds = %vector_zero.exit.i.preheader, %._crit_edge.i
  %.1.i = phi ptr [ %i.aj, %._crit_edge.i ], [ %i.ad, %vector_zero.exit.i.preheader ] ; 2 uses
  %.034.i = phi i64 [ %i.al, %._crit_edge.i ], [ 0, %vector_zero.exit.i.preheader ] ; 2 uses
  %.033.i = phi ptr [ %i.aw, %._crit_edge.i ], [ %.val19, %vector_zero.exit.i.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.ak = load i8, ptr %.1.i, align 1, !tbaa !25  ; 2 uses
  %i.al = zext i8 %i.ak to i64                    ; 5 uses
  %i.am = icmp samesign ugt i64 %.034.i, %i.al
  %i.an = zext i8 %i.ak to i32
  %i.ao = icmp ult i32 %i.x, %i.an
  %or.cond.i = or i1 %i.am, %i.ao
  br i1 %or.cond.i, label %PACKET_buf_init.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %vector_zero.exit.i, %bb.g
  %.016.i = phi i32 [ %i.ar, %bb.g ], [ -1, %vector_zero.exit.i ] ; 2 uses
  %.13515.i = phi i64 [ %i.at, %bb.g ], [ %.034.i, %vector_zero.exit.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.13515.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25  ; 2 uses
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = icmp slt i32 %.016.i, 0
  %.not43.i = icmp slt i32 %.016.i, %i.ar
  %or.cond46.i = select i1 %i.as, i1 true, i1 %.not43.i
  br i1 %or.cond46.i, label %bb.g, label %PACKET_buf_init.exit.thread

bb.g:                                             ; preds = %.lr.ph.i
  %i.at = add i64 %.13515.i, 1                    ; 2 uses
  %i.au = zext i8 %i.aq to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.033.i, i64 %i.au
  store i32 1, ptr %i.av, align 4, !tbaa !23
  %exitcond.not.i = icmp eq i64 %i.at, %i.al
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.033.i, i64 1024 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.z
  br i1 %i.ax, label %vector_zero.exit.i, label %.preheader.i, !llvm.loop !80

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.ay = icmp samesign ult i64 %i.al, %i.aa
  br i1 %i.ay, label %.lr.ph18.i, label %hint_bits_decode.exit

bb.h:                                             ; preds = %.lr.ph18.i
  %i.az = add i64 %.317.i, 1                      ; 2 uses
  %exitcond24.not.i = icmp eq i64 %i.az, %i.aa
  br i1 %exitcond24.not.i, label %hint_bits_decode.exit, label %.lr.ph18.i, !llvm.loop !81

.lr.ph18.i:                                       ; preds = %.preheader.i, %bb.h
  %.317.i = phi i64 [ %i.az, %bb.h ], [ %i.al, %.preheader.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.317.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !25
  %.not44.i = icmp eq i8 %i.bb, 0
  br i1 %.not44.i, label %bb.h, label %PACKET_buf_init.exit.thread

hint_bits_decode.exit:                            ; preds = %bb.h, %.preheader.i
  %.val = load i64, ptr %i.f, align 8, !tbaa !40
  %.not17 = icmp eq i64 %.val, 0
  %spec.select = zext i1 %.not17 to i32
  br label %PACKET_buf_init.exit.thread

PACKET_buf_init.exit.thread:                      ; preds = %.lr.ph, %vector_zero.exit.i, %.lr.ph.i, %.lr.ph18.i, %._crit_edge, %bb.d, %bb.b, %bb.a, %hint_bits_decode.exit
  %.014 = phi i32 [ 0, %vector_zero.exit.i ], [ %spec.select, %hint_bits_decode.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph18.i ], [ 0, %bb.d ], [ 0, %._crit_edge ], [ 0, %.lr.ph.i ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.014
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @poly_decode_signed_two_to_power_19(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val.i.i.pre = load i64, ptr %i.a, align 8, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.val.i.i = phi i64 [ %.val.i.i.pre, %bb.a ], [ %i.e, %bb.c ] ; 2 uses
  %.01035 = phi ptr [ %0, %bb.a ], [ %i.az, %bb.c ] ; 5 uses
  %.01234 = phi i32 [ 0, %bb.a ], [ %i.ba, %bb.c ]
  %i.b = icmp ult i64 %.val.i.i, 10
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !39     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store ptr %i.d, ptr %1, align 8, !tbaa !39
  %i.e = add i64 %.val.i.i, -10                   ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !40
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.0.copyload.i14 = load i32, ptr %i.f, align 1  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i15 = load i16, ptr %i.g, align 1
  %i.h = and i32 %.0.copyload.i, 1048575          ; 2 uses
  %i.i = sub nuw nsw i32 8904705, %i.h
  %i.j = sub nsw i32 524288, %i.h                 ; 2 uses
  %.neg.i.i.i.i = ashr i32 %i.j, 31               ; 2 uses
  %i.k = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #9, !srcloc !36
  %i.l = and i32 %i.k, %i.i
  %i.m = xor i32 %.neg.i.i.i.i, -1
  %i.n = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.m) #9, !srcloc !36
  %i.o = and i32 %i.n, %i.j
  %i.p = or i32 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %.01035, i64 4
  store i32 %i.p, ptr %.01035, align 4, !tbaa !23
  %i.r = lshr i32 %.0.copyload.i, 20
  %i.s = shl i32 %.0.copyload.i14, 12
  %i.t = and i32 %i.s, 1044480
  %i.u = or disjoint i32 %i.t, %i.r               ; 2 uses
  %i.v = sub nuw nsw i32 8904705, %i.u
  %i.w = sub nsw i32 524288, %i.u                 ; 2 uses
  %.neg.i.i.i.i16 = ashr i32 %i.w, 31             ; 2 uses
  %i.x = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i16) #9, !srcloc !36
  %i.y = and i32 %i.x, %i.v
  %i.z = xor i32 %.neg.i.i.i.i16, -1
  %i.aa = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.z) #9, !srcloc !36
  %i.ab = and i32 %i.aa, %i.w
  %i.ac = or i32 %i.ab, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %.01035, i64 8
  store i32 %i.ac, ptr %i.q, align 4, !tbaa !23
  %i.ae = lshr i32 %.0.copyload.i14, 8
  %i.af = and i32 %i.ae, 1048575                  ; 2 uses
  %i.ag = sub nuw nsw i32 8904705, %i.af
  %i.ah = sub nsw i32 524288, %i.af               ; 2 uses
  %.neg.i.i.i.i17 = ashr i32 %i.ah, 31            ; 2 uses
  %i.ai = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i17) #9, !srcloc !36
  %i.aj = and i32 %i.ai, %i.ag
  %i.ak = xor i32 %.neg.i.i.i.i17, -1
  %i.al = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.ak) #9, !srcloc !36
  %i.am = and i32 %i.al, %i.ah
  %i.an = or i32 %i.am, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %.01035, i64 12
  store i32 %i.an, ptr %i.ad, align 4, !tbaa !23
  %i.ap = zext i16 %.0.copyload.i15 to i32
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %i.ap, i32 %.0.copyload.i14, i32 4) ; 2 uses
  %i.ar = sub nuw nsw i32 8904705, %i.aq
  %i.as = sub nsw i32 524288, %i.aq               ; 2 uses
  %.neg.i.i.i.i18 = ashr i32 %i.as, 31            ; 2 uses
  %i.at = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i18) #9, !srcloc !36
  %i.au = and i32 %i.at, %i.ar
  %i.av = xor i32 %.neg.i.i.i.i18, -1
  %i.aw = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.av) #9, !srcloc !36
  %i.ax = and i32 %i.aw, %i.as
  %i.ay = or i32 %i.ax, %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %.01035, i64 16
  store i32 %i.ay, ptr %i.ao, align 4, !tbaa !23
  %i.ba = add nuw nsw i32 %.01234, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, 64
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !83

bb.d:                                             ; preds = %bb.b, %bb.c
  %.011 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.011
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @poly_decode_signed_two_to_power_17(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val.i.i.pre = load i64, ptr %i.a, align 8, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.val.i.i = phi i64 [ %.val.i.i.pre, %bb.a ], [ %i.e, %bb.c ] ; 2 uses
  %.011.idx = phi i64 [ 0, %bb.a ], [ %.011.add, %bb.c ] ; 3 uses
  %i.b = icmp ult i64 %.val.i.i, 9
  br i1 %i.b, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !39     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store ptr %i.d, ptr %1, align 8, !tbaa !39
  %i.e = add i64 %.val.i.i, -9                    ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !40
  %.011.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.011.idx ; 4 uses
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.0.copyload.i14 = load i32, ptr %i.f, align 1  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25
  %i.i = zext i8 %i.h to i32
  %i.j = and i32 %.0.copyload.i, 262143           ; 2 uses
  %i.k = sub nuw nsw i32 8511489, %i.j
  %i.l = sub nsw i32 131072, %i.j                 ; 2 uses
  %.neg.i.i.i.i = ashr i32 %i.l, 31               ; 2 uses
  %i.m = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #9, !srcloc !36
  %i.n = and i32 %i.m, %i.k
  %i.o = xor i32 %.neg.i.i.i.i, -1
  %i.p = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.o) #9, !srcloc !36
  %i.q = and i32 %i.p, %i.l
  %i.r = or i32 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %.011.ptr, i64 4
  store i32 %i.r, ptr %.011.ptr, align 4, !tbaa !23
  %i.t = lshr i32 %.0.copyload.i, 18
  %i.u = shl i32 %.0.copyload.i14, 14
  %i.v = and i32 %i.u, 245760
  %i.w = or disjoint i32 %i.v, %i.t               ; 2 uses
  %i.x = sub nuw nsw i32 8511489, %i.w
  %i.y = sub nsw i32 131072, %i.w                 ; 2 uses
  %.neg.i.i.i.i15 = ashr i32 %i.y, 31             ; 2 uses
  %i.z = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i15) #9, !srcloc !36
  %i.aa = and i32 %i.z, %i.x
  %i.ab = xor i32 %.neg.i.i.i.i15, -1
  %i.ac = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.ab) #9, !srcloc !36
  %i.ad = and i32 %i.ac, %i.y
  %i.ae = or i32 %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %.011.ptr, i64 8
  store i32 %i.ae, ptr %i.s, align 4, !tbaa !23
  %i.ag = lshr i32 %.0.copyload.i14, 4
  %i.ah = and i32 %i.ag, 262143                   ; 2 uses
  %i.ai = sub nuw nsw i32 8511489, %i.ah
  %i.aj = sub nsw i32 131072, %i.ah               ; 2 uses
  %.neg.i.i.i.i16 = ashr i32 %i.aj, 31            ; 2 uses
  %i.ak = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i16) #9, !srcloc !36
  %i.al = and i32 %i.ak, %i.ai
  %i.am = xor i32 %.neg.i.i.i.i16, -1
  %i.an = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.am) #9, !srcloc !36
  %i.ao = and i32 %i.an, %i.aj
  %i.ap = or i32 %i.ao, %i.al
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.ptr, i64 12
  store i32 %i.ap, ptr %i.af, align 4, !tbaa !23
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.i, i32 %.0.copyload.i14, i32 10) ; 2 uses
  %i.as = sub nuw nsw i32 8511489, %i.ar
  %i.at = sub nsw i32 131072, %i.ar               ; 2 uses
  %.neg.i.i.i.i17 = ashr i32 %i.at, 31            ; 2 uses
  %i.au = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i17) #9, !srcloc !36
  %i.av = and i32 %i.au, %i.as
  %i.aw = xor i32 %.neg.i.i.i.i17, -1
  %i.ax = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.aw) #9, !srcloc !36
  %i.ay = and i32 %i.ax, %i.at
  %i.az = or i32 %i.ay, %i.av
  %.011.add = add nuw nsw i64 %.011.idx, 16
  store i32 %i.az, ptr %i.aq, align 4, !tbaa !23
  %i.ba = icmp samesign ult i64 %.011.idx, 1008
  br i1 %i.ba, label %bb.b, label %.critedge, !llvm.loop !84

.critedge:                                        ; preds = %bb.b, %bb.c
  %.2 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ossl_ml_dsa_poly_decode_expand_mask(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.PACKET, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %PACKET_buf_init.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
