Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ml_dsa_encoders?download=true
inline.NumInlined: 122
inline.NumDeleted: 29
loop-unroll.NumUnrolled: 2
begin_hunk_0_@poly_encode_signed_2:bb.a
  %.neg.i.i.i.i25 = ashr i32 %i.av, 31            ; 2 uses
  %i.aw = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i25) #9, !srcloc !44
  %i.ax = and i32 %i.aw, %i.as
  %i.ay = xor i32 %.neg.i.i.i.i25, -1
  %i.az = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.ay) #9, !srcloc !44
  %i.ba = and i32 %i.az, %i.at
  %i.bb = or i32 %i.ba, %i.ax
  %i.bc = shl i32 %i.bb, 9
  %i.bd = or i32 %i.ap, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.022.ptr, i64 20
  %i.bf = load i32, ptr %i.aq, align 4, !tbaa !23 ; 3 uses
  %i.bg = sub i32 1040387, %i.bf
  %i.bh = sub i32 2, %i.bf                        ; 2 uses
  %i.bi = add i32 %i.bf, -8380420
  %i.bj = and i32 %i.bh, %i.bi
  %.neg.i.i.i.i26 = ashr i32 %i.bj, 31            ; 2 uses
  %i.bk = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i26) #9, !srcloc !44
  %i.bl = and i32 %i.bk, %i.bg
  %i.bm = xor i32 %.neg.i.i.i.i26, -1
  %i.bn = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.bm) #9, !srcloc !44
  %i.bo = and i32 %i.bn, %i.bh
  %i.bp = or i32 %i.bo, %i.bl
  %i.bq = shl i32 %i.bp, 12
  %i.br = or i32 %i.bd, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.022.ptr, i64 24
  %i.bt = load i32, ptr %i.be, align 4, !tbaa !23 ; 3 uses
  %i.bu = sub i32 122883, %i.bt
  %i.bv = sub i32 2, %i.bt                        ; 2 uses
  %i.bw = add i32 %i.bt, -8380420
  %i.bx = and i32 %i.bv, %i.bw
  %.neg.i.i.i.i27 = ashr i32 %i.bx, 31            ; 2 uses
  %i.by = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i27) #9, !srcloc !44
  %i.bz = and i32 %i.by, %i.bu
  %i.ca = xor i32 %.neg.i.i.i.i27, -1
  %i.cb = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.ca) #9, !srcloc !44
  %i.cc = and i32 %i.cb, %i.bv
  %i.cd = or i32 %i.cc, %i.bz
  %i.ce = shl i32 %i.cd, 15
  %i.cf = or i32 %i.br, %i.ce                     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.022.ptr, i64 28
  %i.ch = load i32, ptr %i.bs, align 4, !tbaa !23 ; 3 uses
  %i.ci = sub i32 8195, %i.ch
  %i.cj = sub i32 2, %i.ch                        ; 2 uses
  %i.ck = add i32 %i.ch, -8380420
  %i.cl = and i32 %i.cj, %i.ck
  %.neg.i.i.i.i28 = ashr i32 %i.cl, 31            ; 2 uses
  %i.cm = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i28) #9, !srcloc !44
  %i.cn = and i32 %i.cm, %i.ci
  %i.co = xor i32 %.neg.i.i.i.i28, -1
  %i.cp = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.co) #9, !srcloc !44
  %i.cq = and i32 %i.cp, %i.cj
  %i.cr = or i32 %i.cq, %i.cn
  %i.cs = shl i32 %i.cr, 18
  %.022.add = add nuw nsw i64 %.022.idx, 32
  %i.ct = load i32, ptr %i.cg, align 4, !tbaa !23 ; 3 uses
  %i.cu = sub i32 3, %i.ct
  %i.cv = sub i32 2, %i.ct                        ; 2 uses
  %i.cw = add i32 %i.ct, -8380420
  %i.cx = and i32 %i.cv, %i.cw
  %.neg.i.i.i.i29 = ashr i32 %i.cx, 31            ; 2 uses
  %i.cy = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i29) #9, !srcloc !44
  %i.cz = and i32 %i.cy, %i.cu
  %i.da = xor i32 %.neg.i.i.i.i29, -1
  %i.db = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.da) #9, !srcloc !44
  %i.dc = and i32 %i.db, %i.cv
  %i.dd = or i32 %i.dc, %i.cz
  %i.de = shl i32 %i.dd, 21
  %i.df = or i32 %i.cs, %i.de
  %i.dg = or i32 %i.df, %i.cf
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !24  ; 3 uses
  %i.di = trunc i32 %i.cf to i16
  store i16 %i.di, ptr %i.dh, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.dk = lshr i32 %i.dg, 16
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 3
  store ptr %i.dm, ptr %i.a, align 8, !tbaa !24
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !25
  %i.dn = icmp samesign ult i64 %.022.idx, 992
  br i1 %i.dn, label %.preheader, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

declare void @CRYPTO_secure_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_ml_dsa_sk_decode(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %3 = alloca %struct.PACKET, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  tail call void @CRYPTO_secure_clear_free(ptr noundef %i.i, i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 773) #8
  store ptr null, ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %.not51 = icmp eq ptr %i.k, %1
  %or.cond = or i1 %.not, %.not51
  br i1 %or.cond, label %bb.b, label %PACKET_buf_init.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %.not52 = icmp eq ptr %i.m, null
  br i1 %.not52, label %bb.c, label %PACKET_buf_init.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %.not53 = icmp eq i64 %2, %i.p
  br i1 %.not53, label %bb.d, label %PACKET_buf_init.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @ossl_ml_dsa_key_priv_alloc(ptr noundef nonnull %0) #8
  %.not54 = icmp eq i32 %i.q, 0
  br i1 %.not54, label %PACKET_buf_init.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !38
  %i.t = icmp eq i32 %i.s, 4
  %poly_decode_signed_4.poly_decode_signed_2 = select i1 %i.t, ptr @poly_decode_signed_4, ptr @poly_decode_signed_2 ; 2 uses
  %i.u = icmp slt i64 %2, 0
  br i1 %i.u, label %PACKET_buf_init.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.v, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.x = icmp samesign ult i64 %2, 32
  br i1 %i.x, label %PACKET_buf_init.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.z = icmp slt i64 %2, 64
  br i1 %i.z, label %PACKET_buf_init.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 1 dereferenceable(32) %i.aa, i64 32, i1 false)
  %i.ac = icmp slt i64 %2, 128
  br i1 %i.ac, label %PACKET_buf_init.exit.thread, label %PACKET_copy_bytes.exit71

PACKET_copy_bytes.exit71:                         ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %i.ad, i64 64, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.ae, ptr %3, align 8, !tbaa !52
  %i.af = add nsw i64 %2, -128
  store i64 %i.af, ptr %i.w, align 8, !tbaa !53
  %.not91.a = icmp eq i64 %i.g, 0
  br i1 %.not91.a, label %.preheader82, label %.lr.ph

.lr.ph:                                           ; preds = %PACKET_copy_bytes.exit71
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ah = add nuw i64 %.085, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.g
  br i1 %exitcond.not, label %.preheader82, label %bb.j, !llvm.loop !54

.preheader82:                                     ; preds = %bb.i, %PACKET_copy_bytes.exit71
  %.not92 = icmp eq i64 %i.e, 0
  br i1 %.not92, label %._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader82
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.085 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.i ] ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw [1024 x i8], ptr %i.aj, i64 %.085
  %i.al = call i32 %poly_decode_signed_4.poly_decode_signed_2(ptr noundef %i.ak, ptr noundef nonnull %3) #8, !callees !55
  %.not64 = icmp eq i32 %i.al, 0
  br i1 %.not64, label %PACKET_buf_init.exit.thread, label %bb.i

bb.k:                                             ; preds = %bb.l
  %i.am = add nuw i64 %.186, 1                    ; 2 uses
  %exitcond96.not.a = icmp eq i64 %i.am, %i.e
  br i1 %exitcond96.not.a, label %.lr.ph90, label %bb.l, !llvm.loop !56

.lr.ph90:                                         ; preds = %bb.k
  %.promoted88 = load i64, ptr %i.w, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph87, %bb.k
  %.186 = phi i64 [ 0, %.lr.ph87 ], [ %i.am, %bb.k ] ; 2 uses
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw [1024 x i8], ptr %i.ap, i64 %.186
  %i.ar = call i32 %poly_decode_signed_4.poly_decode_signed_2(ptr noundef %i.aq, ptr noundef nonnull %3) #8, !callees !55
  %.not63 = icmp eq i32 %i.ar, 0
  br i1 %.not63, label %PACKET_buf_init.exit.thread, label %bb.k

bb.m:                                             ; preds = %.lr.ph90, %poly_decode_signed_two_to_power_12.exit
  %.289 = phi i64 [ 0, %.lr.ph90 ], [ %i.er, %poly_decode_signed_two_to_power_12.exit ] ; 2 uses
  %i.as = phi i64 [ %.promoted88, %.lr.ph90 ], [ %i.ax, %poly_decode_signed_two_to_power_12.exit ]
  %i.at = getelementptr inbounds nuw [1024 x i8], ptr %i.ao, i64 %.289
  %.promoted = load ptr, ptr %3, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.au = phi ptr [ %.promoted, %bb.m ], [ %i.aw, %bb.o ] ; 4 uses
  %4 = phi i64 [ %i.as, %bb.m ], [ %i.ax, %bb.o ] ; 2 uses
  %.01546.i = phi ptr [ %i.at, %bb.m ], [ %i.ep, %bb.o ] ; 9 uses
  %.01745.i = phi i32 [ 0, %bb.m ], [ %i.eq, %bb.o ]
  %i.av = icmp ult i64 %4, 13
  br i1 %i.av, label %PACKET_buf_init.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 13 ; 2 uses
  store ptr %i.aw, ptr %3, align 8, !tbaa !52
  %i.ax = add i64 %4, -13                         ; 3 uses
  store i64 %i.ax, ptr %i.w, align 8, !tbaa !53
  %.0.copyload.i.i = load i64, ptr %i.au, align 1 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.0.copyload.i19.i = load i32, ptr %i.ay, align 1 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  %i.bb = zext i8 %i.ba to i32
  %i.bc = trunc i64 %.0.copyload.i.i to i32       ; 2 uses
  %i.bd = and i32 %i.bc, 8191                     ; 2 uses
  %i.be = sub nuw nsw i32 8384513, %i.bd
  %i.bf = sub nsw i32 4096, %i.bd                 ; 2 uses
  %.neg.i.i.i.i.i = ashr i32 %i.bf, 31            ; 2 uses
  %i.bg = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i.i) #9, !srcloc !44
  %i.bh = and i32 %i.bg, %i.be
  %i.bi = xor i32 %.neg.i.i.i.i.i, -1
  %i.bj = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.bi) #9, !srcloc !44
  %i.bk = and i32 %i.bj, %i.bf
  %i.bl = or i32 %i.bk, %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %.01546.i, i64 4
  store i32 %i.bl, ptr %.01546.i, align 4, !tbaa !23
  %i.bn = lshr i32 %i.bc, 13
  %i.bo = and i32 %i.bn, 8191                     ; 2 uses
  %i.bp = sub nuw nsw i32 8384513, %i.bo
  %i.bq = sub nsw i32 4096, %i.bo                 ; 2 uses
  %.neg.i.i.i.i20.i = ashr i32 %i.bq, 31          ; 2 uses
  %i.br = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i20.i) #9, !srcloc !44
  %i.bs = and i32 %i.br, %i.bp
  %i.bt = xor i32 %.neg.i.i.i.i20.i, -1
  %i.bu = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.bt) #9, !srcloc !44
  %i.bv = and i32 %i.bu, %i.bq
  %i.bw = or i32 %i.bv, %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %.01546.i, i64 8
  store i32 %i.bw, ptr %i.bm, align 4, !tbaa !23
  %i.by = lshr i64 %.0.copyload.i.i, 26
  %i.bz = trunc i64 %i.by to i32
  %i.ca = and i32 %i.bz, 8191                     ; 2 uses
  %i.cb = sub nuw nsw i32 8384513, %i.ca
  %i.cc = sub nsw i32 4096, %i.ca                 ; 2 uses
  %.neg.i.i.i.i21.i = ashr i32 %i.cc, 31          ; 2 uses
  %i.cd = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i21.i) #9, !srcloc !44
  %i.ce = and i32 %i.cd, %i.cb
  %i.cf = xor i32 %.neg.i.i.i.i21.i, -1
  %i.cg = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.cf) #9, !srcloc !44
  %i.ch = and i32 %i.cg, %i.cc
  %i.ci = or i32 %i.ch, %i.ce
  %i.cj = getelementptr inbounds nuw i8, ptr %.01546.i, i64 12
  store i32 %i.ci, ptr %i.bx, align 4, !tbaa !23
  %i.ck = lshr i64 %.0.copyload.i.i, 39
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = and i32 %i.cl, 8191                     ; 2 uses
  %i.cn = sub nuw nsw i32 8384513, %i.cm
  %i.co = sub nsw i32 4096, %i.cm                 ; 2 uses
  %.neg.i.i.i.i22.i = ashr i32 %i.co, 31          ; 2 uses
  %i.cp = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i22.i) #9, !srcloc !44
  %i.cq = and i32 %i.cp, %i.cn
  %i.cr = xor i32 %.neg.i.i.i.i22.i, -1
  %i.cs = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.cr) #9, !srcloc !44
  %i.ct = and i32 %i.cs, %i.co
  %i.cu = or i32 %i.ct, %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %.01546.i, i64 16
  store i32 %i.cu, ptr %i.cj, align 4, !tbaa !23
  %i.cw = lshr i64 %.0.copyload.i.i, 52
  %i.cx = shl i32 %.0.copyload.i19.i, 12
  %i.cy = and i32 %i.cx, 4096
  %i.cz = trunc nuw nsw i64 %i.cw to i32
  %i.da = or disjoint i32 %i.cy, %i.cz            ; 2 uses
  %i.db = sub nuw nsw i32 8384513, %i.da
  %i.dc = sub nsw i32 4096, %i.da                 ; 2 uses
  %.neg.i.i.i.i23.i = ashr i32 %i.dc, 31          ; 2 uses
  %i.dd = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i23.i) #9, !srcloc !44
  %i.de = and i32 %i.dd, %i.db
  %i.df = xor i32 %.neg.i.i.i.i23.i, -1
  %i.dg = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.df) #9, !srcloc !44
  %i.dh = and i32 %i.dg, %i.dc
  %i.di = or i32 %i.dh, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %.01546.i, i64 20
  store i32 %i.di, ptr %i.cv, align 4, !tbaa !23
  %i.dk = lshr i32 %.0.copyload.i19.i, 1
  %i.dl = and i32 %i.dk, 8191                     ; 2 uses
  %i.dm = sub nuw nsw i32 8384513, %i.dl
  %i.dn = sub nsw i32 4096, %i.dl                 ; 2 uses
  %.neg.i.i.i.i24.i = ashr i32 %i.dn, 31          ; 2 uses
  %i.do = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i24.i) #9, !srcloc !44
  %i.dp = and i32 %i.do, %i.dm
  %i.dq = xor i32 %.neg.i.i.i.i24.i, -1
  %i.dr = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.dq) #9, !srcloc !44
  %i.ds = and i32 %i.dr, %i.dn
  %i.dt = or i32 %i.ds, %i.dp
  %i.du = getelementptr inbounds nuw i8, ptr %.01546.i, i64 24
  store i32 %i.dt, ptr %i.dj, align 4, !tbaa !23
  %i.dv = lshr i32 %.0.copyload.i19.i, 14
  %i.dw = and i32 %i.dv, 8191                     ; 2 uses
  %i.dx = sub nuw nsw i32 8384513, %i.dw
  %i.dy = sub nsw i32 4096, %i.dw                 ; 2 uses
  %.neg.i.i.i.i25.i = ashr i32 %i.dy, 31          ; 2 uses
  %i.dz = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i25.i) #9, !srcloc !44
  %i.ea = and i32 %i.dz, %i.dx
  %i.eb = xor i32 %.neg.i.i.i.i25.i, -1
  %i.ec = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.eb) #9, !srcloc !44
  %i.ed = and i32 %i.ec, %i.dy
  %i.ee = or i32 %i.ed, %i.ea
  %i.ef = getelementptr inbounds nuw i8, ptr %.01546.i, i64 28
  store i32 %i.ee, ptr %i.du, align 4, !tbaa !23
  %i.eg = call i32 @llvm.fshl.i32(i32 %i.bb, i32 %.0.copyload.i19.i, i32 5) ; 2 uses
  %i.eh = sub nuw nsw i32 8384513, %i.eg
  %i.ei = sub nsw i32 4096, %i.eg                 ; 2 uses
  %.neg.i.i.i.i26.i = ashr i32 %i.ei, 31          ; 2 uses
  %i.ej = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i26.i) #9, !srcloc !44
  %i.ek = and i32 %i.ej, %i.eh
  %i.el = xor i32 %.neg.i.i.i.i26.i, -1
  %i.em = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.el) #9, !srcloc !44
  %i.en = and i32 %i.em, %i.ei
  %i.eo = or i32 %i.en, %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %.01546.i, i64 32
  store i32 %i.eo, ptr %i.ef, align 4, !tbaa !23
  %i.eq = add nuw nsw i32 %.01745.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.eq, 32
  br i1 %exitcond.not.i, label %poly_decode_signed_two_to_power_12.exit, label %bb.n, !llvm.loop !57

poly_decode_signed_two_to_power_12.exit:          ; preds = %bb.o
  %i.er = add nuw i64 %.289, 1                    ; 2 uses
  %exitcond97.not = icmp eq i64 %i.er, %i.e
  br i1 %exitcond97.not, label %._crit_edge, label %bb.m, !llvm.loop !58

._crit_edge:                                      ; preds = %poly_decode_signed_two_to_power_12.exit, %.preheader82
  %.val = load i64, ptr %i.w, align 8, !tbaa !53
  %.not59 = icmp eq i64 %.val, 0
  br i1 %.not59, label %bb.p, label %PACKET_buf_init.exit.thread

bb.p:                                             ; preds = %._crit_edge
  %i.es = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.eu = call noalias ptr @CRYPTO_secure_malloc(i64 noundef %2, ptr noundef nonnull @.str, i32 noundef 809) #8 ; 3 uses
  store ptr %i.eu, ptr %i.j, align 8, !tbaa !30
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %PACKET_buf_init.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eu, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.ew = call i32 @ossl_ml_dsa_key_public_from_private(ptr noundef nonnull %0) #8
  %.not60 = icmp eq i32 %i.ew, 0
  br i1 %.not60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 64
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %i.a, ptr noundef nonnull dereferenceable(64) %i.ex, i64 64)
  %.not61 = icmp eq i32 %bcmp, 0
  br i1 %.not61, label %PACKET_buf_init.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 820, ptr noundef nonnull @__func__.ossl_ml_dsa_sk_decode) #8
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !59
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 158, ptr noundef nonnull @.str.1, ptr noundef %i.ez) #8
  call void @ossl_ml_dsa_key_reset(ptr noundef nonnull %0) #8
  br label %PACKET_buf_init.exit.thread

PACKET_buf_init.exit.thread:                      ; preds = %bb.j, %bb.l, %bb.n, %bb.h, %bb.g, %bb.f, %bb.e, %bb.u, %._crit_edge, %bb.q, %bb.t, %bb.d, %bb.c, %bb.b, %bb.a
  %.046 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %bb.t ], [ 0, %bb.u ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.q ], [ 0, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.046
}

declare i32 @ossl_ml_dsa_key_priv_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @poly_decode_signed_4(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %2 = phi i64 [ %.promoted, %bb.a ], [ %i.e, %bb.d ] ; 2 uses
  %.039 = phi ptr [ %0, %bb.a ], [ %i.cw, %bb.d ] ; 9 uses
  %.01738 = phi i32 [ 0, %bb.a ], [ %i.cx, %bb.d ]
  %i.b = icmp ult i64 %2, 4
  br i1 %i.b, label %PACKET_get_bytes.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.d, ptr %1, align 8, !tbaa !52
  %i.e = add i64 %2, -4                           ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !53
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 10 uses
  %i.f = and i32 %.0.copyload.i, -2004318072      ; 3 uses
  %i.g = lshr exact i32 %i.f, 1
  %i.h = lshr exact i32 %i.f, 2
  %i.i = or disjoint i32 %i.g, %i.h
  %i.j = lshr exact i32 %i.f, 3
  %i.k = or disjoint i32 %i.i, %i.j
  %i.l = and i32 %i.k, %.0.copyload.i
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.n) #9, !srcloc !44
  %.not18 = icmp eq i32 %i.o, 0
  br i1 %.not18, label %bb.d, label %PACKET_get_bytes.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = and i32 %.0.copyload.i, 15               ; 2 uses
  %i.q = sub nuw nsw i32 8380421, %i.p
  %i.r = sub nsw i32 4, %i.p                      ; 2 uses
  %.neg.i.i.i.i = ashr i32 %i.r, 31               ; 2 uses
  %i.s = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #9, !srcloc !44
  %i.t = and i32 %i.s, %i.q
  %i.u = xor i32 %.neg.i.i.i.i, -1
  %i.v = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.u) #9, !srcloc !44
  %i.w = and i32 %i.v, %i.r
  %i.x = or i32 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %.039, i64 4
  store i32 %i.x, ptr %.039, align 4, !tbaa !23
  %i.z = lshr i32 %.0.copyload.i, 4
  %i.aa = and i32 %i.z, 15                        ; 2 uses
  %i.ab = sub nuw nsw i32 8380421, %i.aa
  %i.ac = sub nsw i32 4, %i.aa                    ; 2 uses
  %.neg.i.i.i.i19 = ashr i32 %i.ac, 31            ; 2 uses
  %i.ad = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i19) #9, !srcloc !44
  %i.ae = and i32 %i.ad, %i.ab
  %i.af = xor i32 %.neg.i.i.i.i19, -1
  %i.ag = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.af) #9, !srcloc !44
  %i.ah = and i32 %i.ag, %i.ac
  %i.ai = or i32 %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %.039, i64 8
  store i32 %i.ai, ptr %i.y, align 4, !tbaa !23
  %i.ak = lshr i32 %.0.copyload.i, 8
  %i.al = and i32 %i.ak, 15                       ; 2 uses
  %i.am = sub nuw nsw i32 8380421, %i.al
  %i.an = sub nsw i32 4, %i.al                    ; 2 uses
  %.neg.i.i.i.i20 = ashr i32 %i.an, 31            ; 2 uses
  %i.ao = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i20) #9, !srcloc !44
  %i.ap = and i32 %i.ao, %i.am
  %i.aq = xor i32 %.neg.i.i.i.i20, -1
  %i.ar = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.aq) #9, !srcloc !44
  %i.as = and i32 %i.ar, %i.an
  %i.at = or i32 %i.as, %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %.039, i64 12
  store i32 %i.at, ptr %i.aj, align 4, !tbaa !23
  %i.av = lshr i32 %.0.copyload.i, 12
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %i.ax = sub nuw nsw i32 8380421, %i.aw
  %i.ay = sub nsw i32 4, %i.aw                    ; 2 uses
  %.neg.i.i.i.i21 = ashr i32 %i.ay, 31            ; 2 uses
  %i.az = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i21) #9, !srcloc !44
  %i.ba = and i32 %i.az, %i.ax
  %i.bb = xor i32 %.neg.i.i.i.i21, -1
  %i.bc = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.bb) #9, !srcloc !44
  %i.bd = and i32 %i.bc, %i.ay
  %i.be = or i32 %i.bd, %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %.039, i64 16
  store i32 %i.be, ptr %i.au, align 4, !tbaa !23
  %i.bg = lshr i32 %.0.copyload.i, 16
  %i.bh = and i32 %i.bg, 15                       ; 2 uses
  %i.bi = sub nuw nsw i32 8380421, %i.bh
  %i.bj = sub nsw i32 4, %i.bh                    ; 2 uses
  %.neg.i.i.i.i22 = ashr i32 %i.bj, 31            ; 2 uses
  %i.bk = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i22) #9, !srcloc !44
  %i.bl = and i32 %i.bk, %i.bi
  %i.bm = xor i32 %.neg.i.i.i.i22, -1
  %i.bn = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.bm) #9, !srcloc !44
  %i.bo = and i32 %i.bn, %i.bj
  %i.bp = or i32 %i.bo, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %.039, i64 20
  store i32 %i.bp, ptr %i.bf, align 4, !tbaa !23
  %i.br = lshr i32 %.0.copyload.i, 20
  %i.bs = and i32 %i.br, 15                       ; 2 uses
  %i.bt = sub nuw nsw i32 8380421, %i.bs
  %i.bu = sub nsw i32 4, %i.bs                    ; 2 uses
  %.neg.i.i.i.i23 = ashr i32 %i.bu, 31            ; 2 uses
  %i.bv = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i23) #9, !srcloc !44
  %i.bw = and i32 %i.bv, %i.bt
  %i.bx = xor i32 %.neg.i.i.i.i23, -1
  %i.by = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.bx) #9, !srcloc !44
  %i.bz = and i32 %i.by, %i.bu
  %i.ca = or i32 %i.bz, %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %.039, i64 24
  store i32 %i.ca, ptr %i.bq, align 4, !tbaa !23
  %i.cc = lshr i32 %.0.copyload.i, 24
  %i.cd = and i32 %i.cc, 15                       ; 2 uses
  %i.ce = sub nuw nsw i32 8380421, %i.cd
  %i.cf = sub nsw i32 4, %i.cd                    ; 2 uses
  %.neg.i.i.i.i24 = ashr i32 %i.cf, 31            ; 2 uses
  %i.cg = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i24) #9, !srcloc !44
  %i.ch = and i32 %i.cg, %i.ce
  %i.ci = xor i32 %.neg.i.i.i.i24, -1
  %i.cj = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.ci) #9, !srcloc !44
  %i.ck = and i32 %i.cj, %i.cf
  %i.cl = or i32 %i.ck, %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %.039, i64 28
  store i32 %i.cl, ptr %i.cb, align 4, !tbaa !23
  %i.cn = lshr i32 %.0.copyload.i, 28             ; 2 uses
  %i.co = sub nuw nsw i32 8380421, %i.cn
  %i.cp = sub nsw i32 4, %i.cn                    ; 2 uses
  %.neg.i.i.i.i25 = ashr i32 %i.cp, 31            ; 2 uses
  %i.cq = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i25) #9, !srcloc !44
  %i.cr = and i32 %i.cq, %i.co
  %i.cs = xor i32 %.neg.i.i.i.i25, -1
  %i.ct = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.cs) #9, !srcloc !44
  %i.cu = and i32 %i.ct, %i.cp
  %i.cv = or i32 %i.cu, %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %.039, i64 32
  store i32 %i.cv, ptr %i.cm, align 4, !tbaa !23
  %i.cx = add nuw nsw i32 %.01738, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, 32
  br i1 %exitcond.not, label %PACKET_get_bytes.exit.thread, label %bb.b, !llvm.loop !60

PACKET_get_bytes.exit.thread:                     ; preds = %bb.b, %bb.d, %bb.c
  %.016 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ]
  ret i32 %.016
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @poly_decode_signed_2(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %2 = phi i64 [ %.promoted, %bb.a ], [ %i.e, %bb.d ] ; 2 uses
  %.041 = phi ptr [ %0, %bb.a ], [ %i.cu, %bb.d ] ; 9 uses
  %.01640 = phi i32 [ 0, %bb.a ], [ %i.cv, %bb.d ]
  %i.b = icmp ult i64 %2, 3
  br i1 %i.b, label %PACKET_get_bytes.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store ptr %i.d, ptr %1, align 8, !tbaa !52
  %i.e = add i64 %2, -3                           ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !53
  %.0.copyload = load i24, ptr %i.c, align 1
  %.0.insert.ext = zext i24 %.0.copyload to i32   ; 10 uses
  %i.f = and i32 %.0.insert.ext, 9586980          ; 2 uses
  %i.g = lshr exact i32 %i.f, 1
  %i.h = lshr exact i32 %i.f, 2
  %i.i = or disjoint i32 %i.g, %i.h
  %i.j = and i32 %i.i, %.0.insert.ext
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.l) #9, !srcloc !44
  %.not17 = icmp eq i32 %i.m, 0
  br i1 %.not17, label %bb.d, label %PACKET_get_bytes.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %.0.insert.ext, 7                ; 2 uses
  %i.o = sub nuw nsw i32 8380419, %i.n
  %i.p = sub nsw i32 2, %i.n                      ; 2 uses
  %.neg.i.i.i.i = ashr i32 %i.p, 31               ; 2 uses
  %i.q = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i) #9, !srcloc !44
  %i.r = and i32 %i.q, %i.o
  %i.s = xor i32 %.neg.i.i.i.i, -1
  %i.t = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.s) #9, !srcloc !44
  %i.u = and i32 %i.t, %i.p
  %i.v = or i32 %i.u, %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %.041, i64 4
  store i32 %i.v, ptr %.041, align 4, !tbaa !23
  %i.x = lshr i32 %.0.insert.ext, 3
  %i.y = and i32 %i.x, 7                          ; 2 uses
  %i.z = sub nuw nsw i32 8380419, %i.y
  %i.aa = sub nsw i32 2, %i.y                     ; 2 uses
  %.neg.i.i.i.i18 = ashr i32 %i.aa, 31            ; 2 uses
  %i.ab = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i18) #9, !srcloc !44
  %i.ac = and i32 %i.ab, %i.z
  %i.ad = xor i32 %.neg.i.i.i.i18, -1
  %i.ae = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.ad) #9, !srcloc !44
  %i.af = and i32 %i.ae, %i.aa
  %i.ag = or i32 %i.af, %i.ac
  %i.ah = getelementptr inbounds nuw i8, ptr %.041, i64 8
  store i32 %i.ag, ptr %i.w, align 4, !tbaa !23
  %i.ai = lshr i32 %.0.insert.ext, 6
  %i.aj = and i32 %i.ai, 7                        ; 2 uses
  %i.ak = sub nuw nsw i32 8380419, %i.aj
  %i.al = sub nsw i32 2, %i.aj                    ; 2 uses
  %.neg.i.i.i.i19 = ashr i32 %i.al, 31            ; 2 uses
  %i.am = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i19) #9, !srcloc !44
  %i.an = and i32 %i.am, %i.ak
  %i.ao = xor i32 %.neg.i.i.i.i19, -1
  %i.ap = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.ao) #9, !srcloc !44
  %i.aq = and i32 %i.ap, %i.al
  %i.ar = or i32 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %.041, i64 12
  store i32 %i.ar, ptr %i.ah, align 4, !tbaa !23
  %i.at = lshr i32 %.0.insert.ext, 9
  %i.au = and i32 %i.at, 7                        ; 2 uses
  %i.av = sub nuw nsw i32 8380419, %i.au
  %i.aw = sub nsw i32 2, %i.au                    ; 2 uses
  %.neg.i.i.i.i20 = ashr i32 %i.aw, 31            ; 2 uses
  %i.ax = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i20) #9, !srcloc !44
  %i.ay = and i32 %i.ax, %i.av
  %i.az = xor i32 %.neg.i.i.i.i20, -1
  %i.ba = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.az) #9, !srcloc !44
  %i.bb = and i32 %i.ba, %i.aw
  %i.bc = or i32 %i.bb, %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %.041, i64 16
  store i32 %i.bc, ptr %i.as, align 4, !tbaa !23
  %i.be = lshr i32 %.0.insert.ext, 12
  %i.bf = and i32 %i.be, 7                        ; 2 uses
  %i.bg = sub nuw nsw i32 8380419, %i.bf
  %i.bh = sub nsw i32 2, %i.bf                    ; 2 uses
  %.neg.i.i.i.i21 = ashr i32 %i.bh, 31            ; 2 uses
  %i.bi = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i21) #9, !srcloc !44
  %i.bj = and i32 %i.bi, %i.bg
  %i.bk = xor i32 %.neg.i.i.i.i21, -1
  %i.bl = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.bk) #9, !srcloc !44
  %i.bm = and i32 %i.bl, %i.bh
  %i.bn = or i32 %i.bm, %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %.041, i64 20
  store i32 %i.bn, ptr %i.bd, align 4, !tbaa !23
  %i.bp = lshr i32 %.0.insert.ext, 15
  %i.bq = and i32 %i.bp, 7                        ; 2 uses
  %i.br = sub nuw nsw i32 8380419, %i.bq
  %i.bs = sub nsw i32 2, %i.bq                    ; 2 uses
  %.neg.i.i.i.i22 = ashr i32 %i.bs, 31            ; 2 uses
  %i.bt = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i22) #9, !srcloc !44
  %i.bu = and i32 %i.bt, %i.br
  %i.bv = xor i32 %.neg.i.i.i.i22, -1
  %i.bw = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.bv) #9, !srcloc !44
  %i.bx = and i32 %i.bw, %i.bs
  %i.by = or i32 %i.bx, %i.bu
  %i.bz = getelementptr inbounds nuw i8, ptr %.041, i64 24
  store i32 %i.by, ptr %i.bo, align 4, !tbaa !23
  %i.ca = lshr i32 %.0.insert.ext, 18
  %i.cb = and i32 %i.ca, 7                        ; 2 uses
  %i.cc = sub nuw nsw i32 8380419, %i.cb
  %i.cd = sub nsw i32 2, %i.cb                    ; 2 uses
  %.neg.i.i.i.i23 = ashr i32 %i.cd, 31            ; 2 uses
  %i.ce = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i23) #9, !srcloc !44
  %i.cf = and i32 %i.ce, %i.cc
  %i.cg = xor i32 %.neg.i.i.i.i23, -1
  %i.ch = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.cg) #9, !srcloc !44
  %i.ci = and i32 %i.ch, %i.cd
  %i.cj = or i32 %i.ci, %i.cf
  %i.ck = getelementptr inbounds nuw i8, ptr %.041, i64 28
  store i32 %i.cj, ptr %i.bz, align 4, !tbaa !23
  %i.cl = lshr i32 %.0.insert.ext, 21             ; 2 uses
  %i.cm = sub nuw nsw i32 8380419, %i.cl
  %i.cn = sub nsw i32 2, %i.cl                    ; 2 uses
  %.neg.i.i.i.i24 = ashr i32 %i.cn, 31            ; 2 uses
  %i.co = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 1) %.neg.i.i.i.i24) #9, !srcloc !44
  %i.cp = and i32 %i.co, %i.cm
  %i.cq = xor i32 %.neg.i.i.i.i24, -1
  %i.cr = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -1, 2) %i.cq) #9, !srcloc !44
  %i.cs = and i32 %i.cr, %i.cn
  %i.ct = or i32 %i.cs, %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %.041, i64 32
  store i32 %i.ct, ptr %i.ck, align 4, !tbaa !23
  %i.cv = add nuw nsw i32 %.01640, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cv, 32
  br i1 %exitcond.not, label %PACKET_get_bytes.exit.thread, label %bb.b, !llvm.loop !61

PACKET_get_bytes.exit.thread:                     ; preds = %bb.b, %bb.d, %bb.c
  %.015 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.b ]
  ret i32 %.015
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @ossl_ml_dsa_key_public_from_private(ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ossl_ml_dsa_key_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_ml_dsa_sig_encode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.wpacket_st, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !62
  %i.e = icmp eq i32 %i.d, 524288
  %poly_encode_signed_two_to_power_19.poly_encode_signed_two_to_power_17 = select i1 %i.e, ptr @poly_encode_signed_two_to_power_19, ptr @poly_encode_signed_two_to_power_17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !63
  %i.h = call i32 @WPACKET_init_static_len(ptr noundef nonnull %3, ptr noundef nonnull %2, i64 noundef %i.g, i64 noundef 0) #8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !66
  %i.m = call i32 @WPACKET_memcpy(ptr noundef nonnull %3, ptr noundef %i.j, i64 noundef %i.l) #8
  %.not19 = icmp eq i32 %i.m, 0
  br i1 %.not19, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67
  %.not26 = icmp eq i64 %i.o, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.p = add nuw i64 %.01525, 1                   ; 2 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !67
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !68

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.01525 = phi i64 [ %i.p, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw [1024 x i8], ptr %i.s, i64 %.01525
  %i.u = call i32 %poly_encode_signed_two_to_power_19.poly_encode_signed_two_to_power_17(ptr noundef %i.t, ptr noundef nonnull %3) #8, !callees !70
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %.loopexit, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !71   ; 2 uses
  %.val = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.y = getelementptr i8, ptr %0, i64 24
  %.val22 = load i64, ptr %i.y, align 8, !tbaa !73 ; 2 uses
  %i.z = trunc i64 %.val22 to i32                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.aa = add i32 %i.x, %i.z
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = call i32 @WPACKET_allocate_bytes(ptr noundef nonnull %3, i64 noundef %i.ab, ptr noundef nonnull %i.a) #8
end_hunk_0
