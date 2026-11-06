Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls?download=true
inline.NumInlined: 365
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@wolfSSL_GetHmacType_ex:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i8, ptr %i.b, align 2, !tbaa !82
  %switch.tableidx = add i8 %i.c, -2              ; 2 uses
  %i.d = icmp ult i8 %switch.tableidx, 4
  br i1 %i.d, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.TLS_hmac, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -173, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wolfSSL_SetTlsHmacInner(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq i32 %3, 25
  %or.cond19 = or i1 %or.cond, %i.c
  br i1 %or.cond19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %1, i8 0, i64 13, i1 false)
  tail call void @WriteSEQ(ptr noundef nonnull %0, i32 noundef %4, ptr noundef nonnull %1) #15
  %i.d = trunc i32 %3 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.d, ptr %i.e, align 1, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.g = load i8, ptr %i.f, align 2, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.g, ptr %i.h, align 1, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.j = load i8, ptr %i.i, align 1, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.j, ptr %i.k, align 1, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.m = lshr i32 %2, 8
  %i.n = trunc i32 %i.m to i8
  store i8 %i.n, ptr %i.l, align 1, !tbaa !63
  %i.o = trunc i32 %2 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.o, ptr %i.p, align 1, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

declare void @WriteSEQ(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @TLS_hmac(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca [1 x %struct.Hmac], align 16        ; 9 uses
  %i.a = alloca [13 x i8], align 1                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 743 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !76
  %i.e = zext i8 %i.d to i32                      ; 3 uses
  %i.f = icmp ne i32 %6, 0
  %i.g = icmp sgt i32 %4, -1
  %or.cond = and i1 %i.g, %i.f                    ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = xor i32 %3, -1
  %.not = icmp ugt i32 %i.e, %i.h
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %3, %i.e                         ; 2 uses
  %i.j = xor i32 %i.i, -1
  %.not73 = icmp ugt i32 %4, %i.j
  br i1 %.not73, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add i32 %i.i, %4                         ; 2 uses
  %.not75 = icmp eq i32 %i.k, -1
  br i1 %.not75, label %.critedge, label %.split61

.split61:                                         ; preds = %bb.e
  %i.l = add nuw i32 %i.k, 1
  br label %bb.f

bb.f:                                             ; preds = %.split61, %bb.b
  %.150 = phi i32 [ 0, %bb.b ], [ %i.l, %.split61 ]
  %i.m = icmp eq i32 %5, 25
  br i1 %i.m, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 131072
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i, i32 %6, i32 %7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.a, i8 0, i64 13, i1 false)
  call void @WriteSEQ(ptr noundef nonnull %0, i32 noundef %i.q, ptr noundef nonnull %i.a) #15
  %i.r = trunc i32 %5 to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.r, ptr %i.s, align 1, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.u = load i8, ptr %i.t, align 2, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.u, ptr %i.v, align 1, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.x = load i8, ptr %i.w, align 1, !tbaa !84
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.x, ptr %i.y, align 1, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.aa = lshr i32 %3, 8
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !63
  %i.ac = trunc i32 %3 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !61
  %i.ai = call i32 @wc_HmacInit(ptr noundef nonnull %8, ptr noundef %i.af, i32 noundef %i.ah) #15 ; 2 uses
  %.not78 = icmp eq i32 %i.ai, 0
  br i1 %.not78, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.aj = call ptr @wolfSSL_GetMacSecret(ptr noundef nonnull %0, i32 noundef %6) #15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !82
  %switch.tableidx = add i8 %i.al, -2             ; 2 uses
  %i.am = icmp ult i8 %switch.tableidx, 4
  br i1 %i.am, label %switch.lookup, label %wolfSSL_GetHmacType.exit

switch.lookup:                                    ; preds = %bb.h
  %i.an = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.TLS_hmac, i64 %i.an
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %wolfSSL_GetHmacType.exit

wolfSSL_GetHmacType.exit:                         ; preds = %bb.h, %switch.lookup
  %.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.h ]
  %i.ao = load i8, ptr %i.c, align 1, !tbaa !76
  %i.ap = zext i8 %i.ao to i32
  %i.aq = call i32 @wc_HmacSetKey(ptr noundef nonnull %8, i32 noundef %.0.i, ptr noundef %i.aj, i32 noundef %i.ap) #15 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %.thread

bb.i:                                             ; preds = %wolfSSL_GetHmacType.exit
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = call fastcc i32 @Hmac_UpdateFinal_CT(ptr noundef %8, ptr noundef %1, ptr noundef %2, i32 noundef %.150, i32 noundef %i.e, ptr noundef %i.a, i32 noundef 13)
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.at = call i32 @wc_HmacUpdate(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i32 noundef 13) #15 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.av = call i32 @wc_HmacUpdate(ptr noundef nonnull %8, ptr noundef %2, i32 noundef %3) #15 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ax = call i32 @wc_HmacFinal(ptr noundef nonnull %8, ptr noundef %1) #15
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j, %bb.m, %bb.l, %wolfSSL_GetHmacType.exit
  %.152 = phi i32 [ %i.as, %bb.j ], [ %i.ax, %bb.m ], [ %i.av, %bb.l ], [ %i.aq, %wolfSSL_GetHmacType.exit ], [ %i.at, %bb.k ]
  call void @wc_HmacFree(ptr noundef nonnull %8) #15
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.f, %bb.g, %bb.a, %.thread
  %.154 = phi i32 [ %i.ai, %bb.g ], [ -173, %bb.a ], [ -173, %bb.f ], [ %.152, %.thread ], [ -132, %bb.d ], [ -132, %bb.c ], [ -132, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret i32 %.154
}

declare i32 @wc_HmacInit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @wolfSSL_GetMacSecret(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_HmacSetKey(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Hmac_UpdateFinal_CT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 256) %4, ptr noundef nonnull %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca [1 x %struct.wc_HashAlg], align 16  ; 7 uses
  %i.a = alloca [8 x i8], align 1                 ; 8 uses
  %i.b = alloca [144 x i8], align 16              ; 18 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.e = add nsw i32 %4, -65
  %or.cond = icmp ult i32 %i.e, -64
  br i1 %or.cond, label %Hmac_HashUpdate.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 6 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !155   ; 2 uses
  %switch.tableidx = add i8 %i.g, -4              ; 5 uses
  %i.h = icmp ult i8 %switch.tableidx, 5
  %switch.shifted = lshr i8 29, %switch.tableidx
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond215 = select i1 %i.h, i1 %switch.lobit, i1 false
  br i1 %or.cond215, label %switch.lookup, label %Hmac_HashUpdate.exit.thread

switch.lookup:                                    ; preds = %bb.b
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.Hmac_UpdateFinal_CT, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 3 uses
  %i.j = zext nneg i8 %switch.tableidx to i64
  %switch.gep209 = getelementptr inbounds nuw i8, ptr @switch.table.Hmac_UpdateFinal_CT.30, i64 %i.j
  %switch.load210 = load i8, ptr %switch.gep209, align 1 ; 2 uses
  %switch.ext211 = zext i8 %switch.load210 to i32 ; 14 uses
  %i.k = zext nneg i8 %switch.tableidx to i64
  %switch.gep212 = getelementptr inbounds nuw i8, ptr @switch.table.Hmac_UpdateFinal_CT.31, i64 %i.k
  %switch.load213 = load i8, ptr %switch.gep212, align 1
  %switch.ext214 = zext i8 %switch.load213 to i32 ; 3 uses
  %i.l = add nsw i32 %switch.ext211, -1           ; 4 uses
  %i.m = add i32 %3, 12
  %i.n = sub i32 %i.m, %4                         ; 4 uses
  %i.o = add nsw i32 %i.n, %switch.ext214
  %i.p = and i32 %i.o, %i.l
  %i.q = xor i32 %switch.ext214, -1
  %i.r = add nsw i32 %i.p, %i.q
  %i.s = lshr i32 %i.r, 31
  %i.t = add i32 %i.l, %i.n
  %i.u = ashr i32 %i.t, %switch.ext
  %i.v = add nsw i32 %i.s, %i.u                   ; 4 uses
  %i.w = add nsw i32 %i.v, -6                     ; 2 uses
  %i.x = add i32 %3, -1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !63
  %i.ab = zext i8 %i.aa to i32
  %i.ac = sub i32 %i.n, %i.ab                     ; 4 uses
  %i.ad = and i32 %i.ac, %i.l                     ; 3 uses
  %i.ae = shl nuw nsw i32 %switch.ext211, 1
  %i.af = add nuw nsw i32 %i.ad, %switch.ext214
  %i.ag = sub nsw i32 %i.ae, %i.af
  %i.ah = and i32 %i.ag, %i.l
  %i.ai = add i32 %i.ac, 1
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = ashr i32 %i.aj, %switch.ext             ; 2 uses
  %i.al = lshr i32 %i.ac, %switch.ext             ; 2 uses
  %i.am = add i32 %i.ac, %switch.ext211           ; 2 uses
  %i.an = lshr i32 %i.am, 29
  store i8 0, ptr %i.a, align 1, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.ap, align 1, !tbaa !63
  %i.aq = trunc nuw nsw i32 %i.an to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !63
  %i.as = shl i32 %i.am, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %i.as)
  store i32 %8, ptr %i.at, align 1, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  switch i8 %i.g, label %Hmac_HashUpdate.exit.thread [
    i8 4, label %bb.c
    i8 6, label %bb.d
    i8 7, label %bb.e
    i8 8, label %bb.f
  ]

bb.c:                                             ; preds = %switch.lookup
  %i.av = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit

bb.d:                                             ; preds = %switch.lookup
  %i.aw = tail call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit

bb.e:                                             ; preds = %switch.lookup
  %i.ax = tail call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit

bb.f:                                             ; preds = %switch.lookup
  %i.ay = tail call i32 @wc_Sha512Update(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit

Hmac_HashUpdate.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.ay, %bb.f ], [ %i.av, %bb.c ], [ %i.aw, %bb.d ], [ %i.ax, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.g, label %Hmac_HashUpdate.exit.thread

bb.g:                                             ; preds = %Hmac_HashUpdate.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 6 uses
  %i.ba = zext nneg i32 %4 to i64                 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.az, i8 0, i64 %i.ba, i1 false)
  %i.bb = icmp sgt i32 %i.v, 6
  br i1 %i.bb, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.bc = load i8, ptr %i.f, align 8, !tbaa !155
  switch i8 %i.bc, label %Hmac_HashUpdate.exit.thread [
    i8 4, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.bd = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %6) #15
  br label %Hmac_HashUpdate.exit147

bb.j:                                             ; preds = %bb.h
  %i.be = tail call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %6) #15
  br label %Hmac_HashUpdate.exit147

bb.k:                                             ; preds = %bb.h
  %i.bf = tail call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %6) #15
  br label %Hmac_HashUpdate.exit147

bb.l:                                             ; preds = %bb.h
  %i.bg = tail call i32 @wc_Sha512Update(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %6) #15
  br label %Hmac_HashUpdate.exit147

Hmac_HashUpdate.exit147:                          ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i146 = phi i32 [ %i.bg, %bb.l ], [ %i.bd, %bb.i ], [ %i.be, %bb.j ], [ %i.bf, %bb.k ] ; 2 uses
  %.not141 = icmp eq i32 %.0.i146, 0
  br i1 %.not141, label %bb.m, label %Hmac_HashUpdate.exit.thread

bb.m:                                             ; preds = %Hmac_HashUpdate.exit147
  %i.bh = mul nuw nsw i32 %i.w, %switch.ext211
  %i.bi = add nsw i32 %i.bh, -13                  ; 4 uses
  %i.bj = load i8, ptr %i.f, align 8, !tbaa !155
  switch i8 %i.bj, label %Hmac_HashUpdate.exit.thread [
    i8 4, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
    i8 8, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.bk = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.bi) #15
  br label %Hmac_HashUpdate.exit149

bb.o:                                             ; preds = %bb.m
  %i.bl = tail call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.bi) #15
  br label %Hmac_HashUpdate.exit149

bb.p:                                             ; preds = %bb.m
  %i.bm = tail call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.bi) #15
  br label %Hmac_HashUpdate.exit149

bb.q:                                             ; preds = %bb.m
  %i.bn = tail call i32 @wc_Sha512Update(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.bi) #15
  br label %Hmac_HashUpdate.exit149

Hmac_HashUpdate.exit149:                          ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i148 = phi i32 [ %i.bn, %bb.q ], [ %i.bk, %bb.n ], [ %i.bl, %bb.o ], [ %i.bm, %bb.p ] ; 2 uses
  %.not142 = icmp eq i32 %.0.i148, 0
  br i1 %.not142, label %.thread192, label %Hmac_HashUpdate.exit.thread

.thread192:                                       ; preds = %Hmac_HashUpdate.exit149
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.ba, i1 false)
  br label %.lr.ph175

bb.r:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.ba, i1 false)
  %i.bo = icmp sgt i32 %i.v, 0
  br i1 %i.bo, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %.thread192, %bb.r
  %.0123194 = phi i32 [ %i.w, %.thread192 ], [ 0, %bb.r ] ; 2 uses
  %i.bp = mul nuw nsw i32 %.0123194, %switch.ext211
  %i.bq = xor i32 %i.al, -1
  %i.br = xor i32 %i.ak, -1
  %i.bs = xor i32 %i.ad, -1
  %i.bt = add nsw i32 %switch.ext211, -8          ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = zext nneg i32 %i.bt to i64
  %wide.trip.count = zext i8 %switch.load210 to i64
  %min.iters.check = icmp samesign ult i32 %4, 4
  %min.iters.check197 = icmp samesign ult i32 %4, 32
  %i.bw = and i64 %i.ba, 28
  %n.vec = and i64 %i.ba, 96                      ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.bz = icmp eq i64 %n.vec, 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ba
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  %n.vec201 = and i64 %i.ba, 124                  ; 3 uses
  %cmp.n208 = icmp eq i64 %n.vec201, %i.ba
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph175, %._crit_edge
  %.0125173 = phi i32 [ %i.bp, %.lr.ph175 ], [ %i.df, %._crit_edge ]
  %.0129172 = phi i32 [ %.0123194, %.lr.ph175 ], [ %i.et, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ce = add i32 %.0129172, %i.bq
  %i.cf = xor i32 %.0129172, -1                   ; 2 uses
  %i.cg = add i32 %i.al, %i.cf
  %.neg7.i = and i32 %i.ce, %i.cg                 ; 2 uses
  %i.ch = ashr i32 %.neg7.i, 31
  %i.ci = trunc nsw i32 %i.ch to i8               ; 2 uses
  %i.cj = add i32 %.0129172, %i.br
  %i.ck = add i32 %i.ak, %i.cf
  %.neg7.i150 = and i32 %i.cj, %i.ck              ; 2 uses
  %i.cl = ashr i32 %.neg7.i150, 31
  %i.cm = trunc nsw i32 %i.cl to i8               ; 4 uses
  %i.cn = xor i8 %i.cm, -1
  %i.co = or i8 %i.ci, %i.cn
  %i.cp = icmp slt i32 %.neg7.i150, 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.y
  %indvars.iv = phi i64 [ 0, %bb.s ], [ %indvars.iv.next, %bb.y ] ; 5 uses
  %.1126170 = phi i32 [ %.0125173, %bb.s ], [ %i.df, %bb.y ] ; 5 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cr = add i32 %i.cq, %i.bs                    ; 2 uses
  %i.cs = xor i32 %i.cq, -1
  %i.ct = add i32 %i.ad, %i.cs
  %.neg7.i151 = and i32 %i.ct, %.neg7.i
  %i.cu = and i32 %.neg7.i151, %i.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cv = lshr i32 %i.cr, 31
  %i.cw = trunc nuw nsw i32 %i.cv to i8
  %i.cx = add nsw i8 %i.cw, -1
  store volatile i8 %i.cx, ptr %i.c, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.0..0..0..0.6 = load volatile i8, ptr %i.c, align 1, !tbaa !63
  %i.cy = and i8 %.0..0..0..0.6, %i.ci
  store volatile i8 %i.cy, ptr %i.d, align 1, !tbaa !63
  %i.cz = icmp ult i32 %.1126170, %6
  br i1 %i.cz, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = icmp ult i32 %.1126170, %i.n
  br i1 %i.da, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.db = sub nuw i32 %.1126170, %6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.v
  %.sink = phi i32 [ %i.db, %bb.v ], [ %.1126170, %bb.t ]
  %.sink195 = phi ptr [ %2, %bb.v ], [ %5, %bb.t ]
  %i.dc = zext i32 %.sink to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %.sink195, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !63
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.u
  %.0 = phi i8 [ 0, %bb.u ], [ %i.de, %.sink.split ]
  %i.df = add i32 %.1126170, 1                    ; 2 uses
  %i.dg = icmp slt i32 %i.cu, 0
  %i.dh = select i1 %i.dg, i8 -128, i8 %.0
  %.0..0..0..0. = load volatile i8, ptr %i.d, align 1, !tbaa !63
  %i.di = xor i8 %.0..0..0..0., -1
  %i.dj = and i8 %i.dh, %i.di                     ; 2 uses
  %i.dk = and i8 %i.dj, %i.co
end_hunk_0
begin_hunk_1_@TLSX_KeyShare_ProcessPqcClient_ex:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 48
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !136
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp eq ptr %3, null
  %or.cond = or i1 %i.m, %i.l
  br i1 %or.cond, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %i.e, null
  br i1 %i.n, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @wolfSSL_Malloc(i64 noundef 5048) #15 ; 6 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.thread107, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i16, ptr %1, align 8, !tbaa !123
  %i.q = zext i16 %i.p to i32
  %switch.tableidx.i = add nsw i32 %i.q, -512     ; 2 uses
  %i.r = icmp ult i32 %switch.tableidx.i, 3
  br i1 %i.r, label %mlkem_id2type.exit, label %.thread107.thread

.thread107.thread:                                ; preds = %bb.e
  %i.s = tail call i32 @wc_MlKemKey_Free(ptr noundef nonnull %i.o) #15 ; 0 uses
  br label %bb.m

mlkem_id2type.exit:                               ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.w = load i32, ptr %i.v, align 4, !tbaa !61
  %i.x = tail call i32 @wc_MlKemKey_Init(ptr noundef nonnull %i.o, i32 noundef %switch.tableidx.i, ptr noundef %i.u, i32 noundef %i.w) #15 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.thread, label %.thread107.thread131

.thread:                                          ; preds = %bb.c, %mlkem_id2type.exit
  %.071 = phi ptr [ %i.o, %mlkem_id2type.exit ], [ %i.e, %bb.c ] ; 13 uses
  %i.z = call i32 @wc_MlKemKey_SharedSecretSize(ptr noundef nonnull %.071, ptr noundef nonnull %i.c) #15 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %.thread107.thread131

bb.f:                                             ; preds = %.thread
  %i.ab = call i32 @wc_MlKemKey_CipherTextSize(ptr noundef nonnull %.071, ptr noundef nonnull %i.b) #15 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %.thread107.thread131

bb.g:                                             ; preds = %bb.f
  %i.ad = call i32 @wc_MlKemKey_PrivateKeySize(ptr noundef nonnull %.071, ptr noundef nonnull %i.a) #15 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %.thread107.thread131

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.a, align 4, !tbaa !20  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !132
  %.not51 = icmp eq i32 %i.af, %i.ah
  br i1 %.not51, label %bb.i, label %.thread107.thread131

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !126
  %i.ak = call i32 @wc_MlKemKey_DecodePrivateKey(ptr noundef nonnull %.071, ptr noundef %i.aj, i32 noundef %i.af) #15 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.j, label %.thread107.thread131

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !135
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !20  ; 2 uses
  %i.ap = icmp ult i32 %i.an, %i.ao
  br i1 %i.ap, label %.thread107.thread131, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !136
  %i.ar = call i32 @wc_MlKemKey_Decapsulate(ptr noundef nonnull %.071, ptr noundef %2, ptr noundef %i.aq, i32 noundef %i.ao) #15
  %.not52 = icmp eq i32 %i.ar, 0
  br i1 %.not52, label %bb.l, label %.thread107.thread131

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %i.c, align 4, !tbaa !20
  store i32 %i.as, ptr %3, align 4, !tbaa !20
  br label %.thread107.thread131

.thread107.thread131:                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.h, %bb.f, %.thread, %mlkem_id2type.exit
  %.10111.ph = phi i32 [ %i.x, %mlkem_id2type.exit ], [ %i.z, %.thread ], [ %i.ab, %bb.f ], [ -173, %bb.h ], [ %i.ad, %bb.g ], [ %i.ak, %bb.i ], [ -132, %bb.j ], [ -173, %bb.k ], [ 0, %bb.l ]
  %.0727984899498104110.ph = phi ptr [ %i.o, %mlkem_id2type.exit ], [ %.071, %.thread ], [ %.071, %bb.f ], [ %.071, %bb.h ], [ %.071, %bb.g ], [ %.071, %bb.i ], [ %.071, %bb.j ], [ %.071, %bb.k ], [ %.071, %bb.l ] ; 2 uses
  %i.at = call i32 @wc_MlKemKey_Free(ptr noundef nonnull %.0727984899498104110.ph) #15 ; 0 uses
  br label %bb.m

.thread107:                                       ; preds = %bb.d
  %i.au = tail call i32 @wc_MlKemKey_Free(ptr noundef null) #15 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.thread107.thread131, %.thread107.thread
  %.0727984899498104110117 = phi ptr [ %i.o, %.thread107.thread ], [ %.0727984899498104110.ph, %.thread107.thread131 ]
  %.10111115 = phi i32 [ -173, %.thread107.thread ], [ %.10111.ph, %.thread107.thread131 ]
  call void @wolfSSL_Free(ptr noundef nonnull %.0727984899498104110117) #15
  br label %bb.n

bb.n:                                             ; preds = %.thread107, %bb.m
  %.10111116 = phi i32 [ %.10111115, %bb.m ], [ -173, %.thread107 ]
  store ptr null, ptr %i.d, align 8, !tbaa !124
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !136 ; 2 uses
  %.not54 = icmp eq ptr %i.av, null
  br i1 %.not54, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @wolfSSL_Free(ptr noundef nonnull %i.av) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.j, align 8, !tbaa !136
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.a, %bb.p
  %.046 = phi i32 [ %.10111116, %bb.p ], [ 0, %bb.a ], [ -173, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.046
}

declare i32 @wc_MlKemKey_DecodePrivateKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_MlKemKey_Decapsulate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_import_x963_ex2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EccSharedSecret(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_MlKemKey_DecodePublicKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_MlKemKey_Encapsulate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @TLSX_SNI_SetStatus(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, i8 noundef zeroext range(i8 1, 4) %2) unnamed_addr #8 {
bb.a:
  %.not6.i = icmp eq ptr %0, null
  br i1 %.not6.i, label %TLSX_SNI_Find.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.07.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.a = load i32, ptr %.07.i, align 8, !tbaa !71
  %.not5.i = icmp eq i32 %i.a, 0
  br i1 %.not5.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.07.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %TLSX_SNI_Find.exit.thread, label %.lr.ph.i, !llvm.loop !3

bb.c:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not6.i8 = icmp eq ptr %i.e, null
  br i1 %.not6.i8, label %TLSX_SNI_Find.exit.thread, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %bb.c, %bb.d
  %.07.i10 = phi ptr [ %i.h, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.f = load i8, ptr %.07.i10, align 8, !tbaa !92
  %.not5.i11 = icmp eq i8 %i.f, %1
  br i1 %.not5.i11, label %TLSX_SNI_Find.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i9
  %i.g = getelementptr inbounds nuw i8, ptr %.07.i10, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 2 uses
  %.not.i12 = icmp eq ptr %i.h, null
  br i1 %.not.i12, label %TLSX_SNI_Find.exit.thread, label %.lr.ph.i9, !llvm.loop !5

TLSX_SNI_Find.exit:                               ; preds = %.lr.ph.i9
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i10, i64 24
  store i8 %2, ptr %i.i, align 8, !tbaa !102
  br label %TLSX_SNI_Find.exit.thread

TLSX_SNI_Find.exit.thread:                        ; preds = %bb.b, %bb.d, %bb.a, %bb.c, %TLSX_SNI_Find.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !72}
!1 = distinct !{!1, !72}
!2 = distinct !{!2, !72}
!3 = distinct !{!3, !72}
!4 = distinct !{!4, !72}
!5 = distinct !{!5, !72}
!6 = distinct !{!6, !72}
!7 = distinct !{!7, !72}
!8 = distinct !{!8, !72}
!9 = distinct !{!9, !72}
!10 = distinct !{!10, !72}
!11 = distinct !{!11, !72}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!17, !17, i64 0}
!21 = !{!"any pointer", !16, i64 0}
!22 = !{!"p1 _ZTS11WOLFSSL_CTX", !21, i64 0}
!23 = !{!"p1 _ZTS6Suites", !21, i64 0}
!24 = !{!"p1 _ZTS6Arrays", !21, i64 0}
!25 = !{!"p1 _ZTS9HS_Hashes", !21, i64 0}
!26 = !{!"p1 _ZTS6WC_RNG", !21, i64 0}
!27 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !21, i64 0}
!28 = !{!"p1 _ZTS7WOLFSSL", !21, i64 0}
!29 = !{!"WOLFSSL_CIPHER", !16, i64 0, !16, i64 1, !28, i64 8}
!30 = !{!"p1 _ZTS3Aes", !21, i64 0}
!31 = !{!"p1 omnipotent char", !21, i64 0}
!32 = !{!"p1 _ZTS6ChaCha", !21, i64 0}
!33 = !{!"Ciphers", !30, i64 0, !31, i64 8, !31, i64 16, !32, i64 24, !16, i64 32, !16, i64 33}
!34 = !{!"", !16, i64 0, !31, i64 8, !17, i64 16, !17, i64 20, !17, i64 24, !16, i64 28, !16, i64 29}
!35 = !{!"WOLFSSL_BUFFER_INFO", !31, i64 0, !17, i64 8}
!36 = !{!"p1 _ZTS5DhKey", !21, i64 0}
!37 = !{!"p1 _ZTS9DerBuffer", !21, i64 0}
!38 = !{!"Buffers", !34, i64 0, !34, i64 32, !35, i64 64, !35, i64 80, !35, i64 96, !35, i64 112, !35, i64 128, !17, i64 144, !17, i64 148, !16, i64 152, !16, i64 153, !16, i64 154, !16, i64 155, !35, i64 160, !35, i64 176, !35, i64 192, !35, i64 208, !36, i64 224, !37, i64 232, !37, i64 240, !16, i64 248, !16, i64 249, !16, i64 249, !17, i64 252, !17, i64 256, !37, i64 264, !17, i64 272, !16, i64 280}
!39 = !{!"p1 _ZTS15WOLFSSL_SESSION", !21, i64 0}
!40 = !{!"p1 _ZTS13ClientSession", !21, i64 0}
!41 = !{!"WOLFSSL_ALERT", !17, i64 0, !17, i64 4}
!42 = !{!"WOLFSSL_ALERT_HISTORY", !41, i64 0, !41, i64 8}
!43 = !{!"short", !16, i64 0}
!44 = !{!"RecordLayerHeader", !16, i64 0, !16, i64 1, !16, i64 2, !16, i64 3}
!45 = !{!"MsgsReceived", !43, i64 0, !43, i64 0, !43, i64 0, !43, i64 0, !43, i64 0, !43, i64 0, !43, i64 0, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 1, !43, i64 2, !43, i64 2, !43, i64 2}
!46 = !{!"ProtocolVersion", !16, i64 0, !16, i64 1}
!47 = !{!"CipherSpecs", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !16, i64 8, !16, i64 9, !16, i64 10, !16, i64 11, !16, i64 12, !16, i64 13, !16, i64 14, !16, i64 15}
!48 = !{!"Keys", !16, i64 0, !16, i64 64, !16, i64 128, !16, i64 160, !16, i64 192, !16, i64 208, !16, i64 224, !16, i64 232, !16, i64 244, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !17, i64 272, !17, i64 276, !16, i64 280, !16, i64 281, !16, i64 282, !16, i64 283}
!49 = !{!"long", !16, i64 0}
!50 = !{!"Options", !49, i64 0, !43, i64 8, !43, i64 8, !43, i64 8, !43, i64 8, !43, i64 8, !43, i64 8, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 9, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 10, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 11, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 12, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 13, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 14, !43, i64 15, !43, i64 15, !43, i64 15, !43, i64 15, !43, i64 15, !43, i64 15, !16, i64 16, !16, i64 17, !16, i64 18, !16, i64 19, !16, i64 20, !16, i64 21, !16, i64 22, !16, i64 23, !16, i64 24, !16, i64 25, !16, i64 26, !16, i64 27, !16, i64 28, !16, i64 29, !16, i64 30, !16, i64 31, !16, i64 32, !16, i64 33, !16, i64 34, !16, i64 35, !16, i64 36, !16, i64 37, !16, i64 38, !16, i64 39, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !43, i64 48, !16, i64 50}
!51 = !{!"p1 _ZTS6RsaKey", !21, i64 0}
!52 = !{!"p1 _ZTS7ecc_key", !21, i64 0}
!53 = !{!"p1 _ZTS8Poly1305", !21, i64 0}
!54 = !{!"OneTimeAuth", !53, i64 0, !16, i64 8}
!55 = !{!"p1 _ZTS4TLSX", !21, i64 0}
!56 = !{!"WOLFSSL", !22, i64 0, !23, i64 8, !23, i64 16, !24, i64 24, !16, i64 32, !16, i64 80, !25, i64 128, !21, i64 136, !21, i64 144, !26, i64 152, !21, i64 160, !21, i64 168, !21, i64 176, !21, i64 184, !21, i64 192, !21, i64 200, !21, i64 208, !27, i64 216, !21, i64 224, !17, i64 232, !29, i64 240, !21, i64 256, !33, i64 264, !33, i64 304, !38, i64 352, !39, i64 640, !40, i64 648, !42, i64 656, !41, i64 672, !17, i64 680, !17, i64 684, !17, i64 688, !17, i64 692, !17, i64 696, !17, i64 700, !17, i64 704, !43, i64 708, !17, i64 712, !16, i64 716, !44, i64 717, !45, i64 722, !46, i64 726, !46, i64 728, !47, i64 730, !48, i64 748, !50, i64 1032, !51, i64 1088, !16, i64 1096, !16, i64 1097, !43, i64 1098, !16, i64 1100, !16, i64 1172, !43, i64 1174, !43, i64 1176, !16, i64 1178, !17, i64 1308, !17, i64 1312, !52, i64 1320, !16, i64 1328, !16, i64 1329, !52, i64 1336, !52, i64 1344, !43, i64 1352, !16, i64 1354, !17, i64 1356, !16, i64 1360, !17, i64 1364, !54, i64 1368, !55, i64 1384, !43, i64 1392, !17, i64 1396}
!57 = !{!56, !16, i64 740}
!58 = !{!56, !25, i64 128}
!59 = !{!56, !24, i64 24}
!60 = !{!56, !21, i64 176}
!61 = !{!56, !17, i64 1364}
!62 = !{!49, !49, i64 0}
!63 = !{!16, !16, i64 0}
!64 = !{!"p1 _ZTS14WOLFSSL_METHOD", !21, i64 0}
!65 = !{!"wolfSSL_RefWithMutex", !16, i64 0, !17, i64 40}
!66 = !{!"p1 _ZTS20WOLFSSL_CERT_MANAGER", !21, i64 0}
!67 = !{!"WOLFSSL_CTX", !64, i64 0, !65, i64 8, !17, i64 56, !35, i64 64, !35, i64 80, !37, i64 96, !37, i64 104, !17, i64 112, !37, i64 120, !16, i64 128, !16, i64 129, !16, i64 129, !17, i64 132, !17, i64 136, !66, i64 144, !23, i64 152, !21, i64 160, !16, i64 168, !16, i64 169, !16, i64 169, !16, i64 169, !16, i64 169, !16, i64 169, !16, i64 169, !16, i64 169, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 170, !16, i64 171, !16, i64 171, !16, i64 171, !16, i64 172, !16, i64 173, !16, i64 173, !16, i64 173, !16, i64 173, !16, i64 173, !16, i64 173, !43, i64 173, !43, i64 173, !43, i64 174, !43, i64 176, !43, i64 178, !16, i64 180, !43, i64 182, !49, i64 184, !21, i64 192, !21, i64 200, !21, i64 208, !21, i64 216, !17, i64 224, !17, i64 228, !43, i64 232, !17, i64 236, !16, i64 240, !16, i64 312, !21, i64 320, !21, i64 328, !17, i64 336, !55, i64 344, !16, i64 352}
!68 = !{!67, !64, i64 0}
!69 = !{!55, !55, i64 0}
!70 = !{!"TLSX", !17, i64 0, !21, i64 8, !17, i64 16, !16, i64 20, !55, i64 24}
!71 = !{!70, !17, i64 0}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!70, !55, i64 24}
!74 = !{!43, !43, i64 0}
!75 = !{!56, !16, i64 1172}
!76 = !{!56, !16, i64 743}
!77 = !{!56, !43, i64 730}
!78 = !{!56, !43, i64 732}
!79 = !{!"Arrays", !31, i64 0, !31, i64 8, !17, i64 16, !17, i64 20, !17, i64 24, !16, i64 28, !16, i64 60, !16, i64 92, !16, i64 124, !16, i64 125, !16, i64 173, !16, i64 221}
!80 = !{!79, !31, i64 8}
!81 = !{!79, !17, i64 16}
!82 = !{!47, !16, i64 10}
!83 = !{!56, !16, i64 726}
!84 = !{!56, !16, i64 727}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = !{!70, !21, i64 8}
!88 = !{!70, !16, i64 20}
!89 = !{!"p1 _ZTS3SNI", !21, i64 0}
!90 = !{!"SNI", !16, i64 0, !16, i64 8, !89, i64 16, !16, i64 24, !16, i64 25}
!91 = !{!90, !89, i64 16}
!92 = !{!90, !16, i64 0}
!93 = !{!"p1 _ZTS14SupportedCurve", !21, i64 0}
!94 = !{!"SupportedCurve", !43, i64 0, !93, i64 8}
!95 = !{!94, !93, i64 8}
!96 = !{!"p1 _ZTS11PointFormat", !21, i64 0}
!97 = !{!"PointFormat", !16, i64 0, !96, i64 8}
!98 = !{!97, !96, i64 8}
!99 = !{!56, !55, i64 1384}
!100 = !{!56, !22, i64 0}
!101 = !{!67, !55, i64 344}
!102 = !{!90, !16, i64 24}
!103 = !{!90, !16, i64 25}
!104 = !{!21, !21, i64 0}
!105 = !{!94, !43, i64 0}
!106 = !{!93, !93, i64 0}
!107 = !{!56, !43, i64 1072}
!108 = !{!56, !43, i64 1074}
!109 = !{!"DhParams", !31, i64 0, !17, i64 8, !31, i64 16, !17, i64 24}
!110 = !{!109, !17, i64 8}
!111 = !{!109, !31, i64 0}
!112 = !{!109, !31, i64 16}
!113 = !{!109, !17, i64 24}
!114 = !{!56, !43, i64 1098}
!115 = !{!56, !17, i64 1312}
!116 = !{!97, !16, i64 0}
!117 = !{!"WOLFSSL_METHOD", !46, i64 0, !16, i64 2, !16, i64 3}
!118 = !{!117, !16, i64 0}
!119 = !{!56, !16, i64 1065}
!120 = !{!28, !28, i64 0}
!121 = !{!"p1 _ZTS13KeyShareEntry", !21, i64 0}
!122 = !{!"KeyShareEntry", !43, i64 0, !31, i64 8, !17, i64 16, !21, i64 24, !17, i64 32, !31, i64 40, !17, i64 48, !31, i64 56, !17, i64 64, !121, i64 72}
!123 = !{!122, !43, i64 0}
!124 = !{!122, !21, i64 24}
!125 = !{!122, !31, i64 40}
!126 = !{!122, !31, i64 56}
!127 = !{!122, !17, i64 48}
!128 = !{!122, !17, i64 32}
!129 = !{!"PqcHybridMapping", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!130 = !{!129, !17, i64 8}
!131 = !{!129, !17, i64 4}
!132 = !{!122, !17, i64 64}
!133 = !{!56, !26, i64 152}
!134 = !{!121, !121, i64 0}
!135 = !{!122, !17, i64 16}
!136 = !{!122, !31, i64 8}
!137 = !{!122, !121, i64 72}
!138 = !{!56, !43, i64 1176}
!139 = !{!56, !23, i64 8}
!140 = !{!67, !23, i64 152}
!141 = !{!"Suites", !43, i64 0, !43, i64 2, !16, i64 4, !16, i64 304, !16, i64 432}
!142 = !{!141, !43, i64 2}
!143 = !{!56, !43, i64 1174}
!144 = !{!56, !16, i64 1053}
!145 = !{!117, !16, i64 3}
!146 = !{!117, !16, i64 2}
!147 = distinct !{!147, !72}
!148 = !{!67, !16, i64 312}
!149 = distinct !{!149, !72}
!150 = distinct !{!150, !72}
!151 = distinct !{!151, !72, !85, !86}
!152 = distinct !{!152, !72, !86, !85}
!153 = distinct !{!153, !72}
!154 = !{!"Hmac", !16, i64 0, !16, i64 416, !16, i64 560, !16, i64 704, !21, i64 768, !16, i64 776, !16, i64 777}
!155 = !{!154, !16, i64 776}
!156 = !{!"branch_weights", i32 4, i32 28}
!157 = distinct !{!157, !72}
!158 = distinct !{!158, !72}
!159 = distinct !{!159, !72}
!160 = distinct !{!160, !72}
!161 = distinct !{!161, !72}
!162 = distinct !{!162, !72}
!163 = distinct !{!163, !72}
!164 = distinct !{!164, !72}
!165 = distinct !{!165, !72}
!166 = distinct !{!166, !72}
!167 = distinct !{!167, !72}
!168 = distinct !{!168, !72}
!169 = distinct !{!169, !72}
!170 = distinct !{!170, !72}
!171 = !{!56, !31, i64 512}
!172 = !{!56, !16, i64 507}
!173 = !{!56, !31, i64 528}
!174 = !{!56, !17, i64 520}
!175 = !{!56, !17, i64 536}
!176 = distinct !{!176, !72}
!177 = distinct !{!177, !72}
end_hunk_1
