Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/base64_bio?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL9b64_writeP6bio_stPKci:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 18 uses
  tail call void @BIO_clear_retry_flags(ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 4, !tbaa !22
  store i32 0, ptr %i.b, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.f, align 4, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  tail call void @EVP_EncodeInit(ptr noundef nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr %i.b, align 4, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 8 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24   ; 2 uses
  %i.k = sub nsw i32 %i.h, %i.j                   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.o = phi i32 [ %i.j, %.lr.ph ], [ %i.v, %bb.f ]
  %.0123 = phi i32 [ %i.k, %.lr.ph ], [ %i.w, %bb.f ] ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  %i.s = tail call i32 @BIO_write(ptr noundef %i.p, ptr noundef nonnull %i.r, i32 noundef %.0123) ; 4 uses
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @BIO_copy_next_retry(ptr noundef nonnull %0)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.i, align 4, !tbaa !24
  %i.v = add nsw i32 %i.u, %i.s                   ; 2 uses
  store i32 %i.v, ptr %i.i, align 4, !tbaa !24
  %i.w = sub nsw i32 %.0123, %i.s                 ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.f, %bb.c
  store i32 0, ptr %i.i, align 4, !tbaa !24
  store i32 0, ptr %i.b, align 4, !tbaa !23
  %i.y = icmp eq ptr %1, null
  %i.z = icmp slt i32 %2, 1
  %or.cond = or i1 %i.y, %i.z
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1586 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %._crit_edge127
  %.096131 = phi i32 [ 0, %.preheader ], [ %.197, %._crit_edge127 ] ; 4 uses
  %.099130 = phi i32 [ %2, %.preheader ], [ %i.bh, %._crit_edge127 ] ; 4 uses
  %.0100128 = phi ptr [ %1, %.preheader ], [ %i.bj, %._crit_edge127 ] ; 5 uses
  %i.af = tail call i32 @llvm.umin.i32(i32 %.099130, i32 1024) ; 8 uses
  %i.ag = tail call i32 @BIO_test_flags(ptr noundef %0, i32 noundef 256)
  %.not113 = icmp eq i32 %i.ag, 0
  br i1 %.not113, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !25 ; 4 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aj = sub nsw i32 3, %i.ah                    ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, %.099130
  %spec.select = select i1 %i.ak, i32 1, i32 %i.aj ; 5 uses
  %i.al = icmp eq i32 %spec.select, 0
  br i1 %i.al, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = sext i32 %spec.select to i64
  %i.an = zext nneg i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull readonly align 1 %.0100128, i64 range(i64 -2147483648, 2147483648) %i.am, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.i, %bb.j
  %i.ap = add nsw i32 %i.ah, %spec.select         ; 3 uses
  store i32 %i.ap, ptr %i.aa, align 4, !tbaa !25
  %i.aq = add nsw i32 %spec.select, %.096131      ; 2 uses
  %i.ar = icmp slt i32 %i.ap, 3
  br i1 %i.ar, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = tail call i64 @EVP_EncodeBlock(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, i64 noundef %i.as)
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  store i32 %i.au, ptr %i.b, align 4, !tbaa !23
  store i32 0, ptr %i.aa, align 4, !tbaa !25
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  %i.av = icmp samesign ult i32 %.099130, 3
  br i1 %i.av, label %_ZL14OPENSSL_memcpyPvPKvm.exit114, label %bb.m

_ZL14OPENSSL_memcpyPvPKvm.exit114:                ; preds = %bb.l
  %i.aw = zext nneg i32 %i.af to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ac, ptr nonnull readonly align 1 %.0100128, i64 range(i64 -2147483648, 2147483648) %i.aw, i1 false)
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !25
  %i.ax = add nsw i32 %.096131, %i.af
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %.lhs.trunc = trunc nuw nsw i32 %i.af to i16
  %i.ay = urem i16 %.lhs.trunc, 3
  %.zext = zext nneg i16 %i.ay to i32
  %i.az = sub nuw nsw i32 %i.af, %.zext           ; 3 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = tail call i64 @EVP_EncodeBlock(ptr noundef nonnull %i.ab, ptr noundef %.0100128, i64 noundef %i.ba)
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !23
  %i.bd = add nsw i32 %i.az, %.096131
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  %i.be = zext nneg i32 %i.af to i64
  tail call void @EVP_EncodeUpdate(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.b, ptr noundef %.0100128, i64 noundef %i.be)
  %i.bf = add nsw i32 %.096131, %i.af
  %.pre = load i32, ptr %i.b, align 4, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  %i.bg = phi i32 [ %i.au, %bb.k ], [ %i.bc, %bb.m ], [ %.pre, %bb.n ] ; 2 uses
  %.197 = phi i32 [ %i.aq, %bb.k ], [ %i.bd, %bb.m ], [ %i.bf, %bb.n ] ; 4 uses
  %.2 = phi i32 [ %spec.select, %bb.k ], [ %i.az, %bb.m ], [ %i.af, %bb.n ] ; 2 uses
  %i.bh = sub nsw i32 %.099130, %.2               ; 2 uses
  %i.bi = sext i32 %.2 to i64
  %i.bj = getelementptr inbounds i8, ptr %.0100128, i64 %i.bi
  store i32 0, ptr %i.i, align 4, !tbaa !24
  %i.bk = icmp sgt i32 %i.bg, 0
  br i1 %i.bk, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %bb.o, %bb.q
  %i.bl = phi i32 [ %i.bv, %bb.q ], [ 0, %bb.o ]
  %.3124 = phi i32 [ %i.bt, %bb.q ], [ %i.bg, %bb.o ] ; 2 uses
  %i.bm = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr inbounds i8, ptr %i.ab, i64 %i.bn
  %i.bp = tail call i32 @BIO_write(ptr noundef %i.bm, ptr noundef nonnull %i.bo, i32 noundef %.3124) ; 4 uses
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph126
  tail call void @BIO_copy_next_retry(ptr noundef nonnull %0)
  %i.br = icmp eq i32 %.197, 0
  %i.bs = select i1 %i.br, i32 %i.bp, i32 %.197
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph126
  %i.bt = sub nsw i32 %.3124, %i.bp               ; 2 uses
  %i.bu = load i32, ptr %i.i, align 4, !tbaa !24
  %i.bv = add nsw i32 %i.bu, %i.bp                ; 2 uses
  store i32 %i.bv, ptr %i.i, align 4, !tbaa !24
  %i.bw = icmp sgt i32 %i.bt, 0
  br i1 %i.bw, label %.lr.ph126, label %._crit_edge127, !llvm.loop !31

._crit_edge127:                                   ; preds = %bb.q, %bb.o
  store i32 0, ptr %i.b, align 4, !tbaa !23
  store i32 0, ptr %i.i, align 4, !tbaa !24
  %i.bx = icmp sgt i32 %i.bh, 0
  br i1 %i.bx, label %bb.g, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %._crit_edge127, %_ZL14OPENSSL_memcpyPvPKvm.exit, %_ZL14OPENSSL_memcpyPvPKvm.exit114, %._crit_edge, %bb.p, %bb.e
  %.0101 = phi i32 [ %i.s, %bb.e ], [ %i.bs, %bb.p ], [ 0, %._crit_edge ], [ %i.ax, %_ZL14OPENSSL_memcpyPvPKvm.exit114 ], [ %.197, %._crit_edge127 ], [ %i.aq, %_ZL14OPENSSL_memcpyPvPKvm.exit ]
  ret i32 %.0101
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8b64_readP6bio_stPci(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 30 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.ar, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @BIO_clear_retry_flags(ptr noundef nonnull %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22
  %.not = icmp eq i32 %i.k, 2
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.j, align 4, !tbaa !22
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.m, align 4, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  tail call void @EVP_DecodeInit(ptr noundef nonnull %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load i32, ptr %i.d, align 4, !tbaa !23   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !24   ; 3 uses
  %i.s = sub nsw i32 %i.o, %i.r
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %2) ; 6 uses
  %i.t = sext i32 %spec.select to i64             ; 2 uses
  %i.u = icmp eq i32 %spec.select, 0
  br i1 %i.u, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.x, i64 range(i64 -2147483648, 2147483648) %i.t, i1 false)
  %.pre = load i32, ptr %i.q, align 4, !tbaa !24
  %.pre308 = load i32, ptr %i.d, align 4, !tbaa !23
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.g, %bb.h
  %i.y = phi i32 [ %i.o, %bb.g ], [ %.pre308, %bb.h ]
  %i.z = phi i32 [ %i.r, %bb.g ], [ %.pre, %bb.h ]
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.t ; 2 uses
  %i.ab = sub nsw i32 %2, %spec.select            ; 2 uses
  %i.ac = add nsw i32 %i.z, %spec.select          ; 2 uses
  store i32 %i.ac, ptr %i.q, align 4, !tbaa !24
  %i.ad = icmp eq i32 %i.y, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  store i32 0, ptr %i.d, align 4, !tbaa !23
  store i32 0, ptr %i.q, align 4, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.i, %bb.f
  %.0183 = phi ptr [ %i.aa, %bb.i ], [ %i.aa, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %1, %bb.f ]
  %.0181 = phi i32 [ %i.ab, %bb.i ], [ %i.ab, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %2, %bb.f ] ; 2 uses
  %.0179 = phi i32 [ %spec.select, %bb.i ], [ %spec.select, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ 0, %bb.f ] ; 2 uses
  %i.ae = icmp sgt i32 %.0181, 0
  br i1 %i.ae, label %.lr.ph262.lr.ph, label %.loopexit224

.lr.ph262.lr.ph:                                  ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 1586 ; 22 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 28 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 84 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 1587
  %3 = add i64 %i.e, 1586                         ; 2 uses
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262.lr.ph, %.outer
  %.0171.ph280 = phi i32 [ 0, %.lr.ph262.lr.ph ], [ %.1172, %.outer ] ; 2 uses
  %.1180.ph278 = phi i32 [ %.0179, %.lr.ph262.lr.ph ], [ %i.fk, %.outer ] ; 6 uses
  %.1182.ph277 = phi i32 [ %.0181, %.lr.ph262.lr.ph ], [ %i.fm, %.outer ] ; 2 uses
  %.1184.ph276 = phi ptr [ %.0183, %.lr.ph262.lr.ph ], [ %i.fn, %.outer ] ; 2 uses
  %i.am = load i32, ptr %i.af, align 4, !tbaa !28
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.loopexit224, label %.lr.ph371

.lr.ph371:                                        ; preds = %.lr.ph262, %.backedge
  %.0171261370 = phi i32 [ %.1172, %.backedge ], [ %.0171.ph280, %.lr.ph262 ]
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !25 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %.ptr, i64 %i.aq
  %i.as = sub nsw i32 1024, %i.ap
  %i.at = call i32 @BIO_read(ptr noundef %i.ao, ptr noundef nonnull %i.ar, i32 noundef %i.as) ; 6 uses
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %bb.k, label %._crit_edge309

._crit_edge309:                                   ; preds = %.lr.ph371
  %.pre310 = load i32, ptr %i.ag, align 4, !tbaa !25
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph371
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.aw = call i32 @BIO_should_retry(ptr noundef %i.av)
  %.not204 = icmp eq i32 %i.aw, 0
  br i1 %.not204, label %bb.l, label %.loopexit224

bb.l:                                             ; preds = %bb.k
  store i32 %i.at, ptr %i.af, align 4, !tbaa !28
  %i.ax = load i32, ptr %i.ag, align 4, !tbaa !25 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit224, label %bb.m

bb.m:                                             ; preds = %._crit_edge309, %bb.l
  %i.az = phi i32 [ %.pre310, %._crit_edge309 ], [ %i.ax, %bb.l ] ; 2 uses
  %.1177 = phi i32 [ %i.at, %._crit_edge309 ], [ 0, %bb.l ] ; 2 uses
  %.1172 = phi i32 [ %.0171261370, %._crit_edge309 ], [ %i.at, %bb.l ] ; 4 uses
  %i.ba = add i32 %i.az, %.1177                   ; 13 uses
  store i32 %i.ba, ptr %i.ag, align 4, !tbaa !25
  %i.bb = load i32, ptr %i.ah, align 4, !tbaa !29
  %.not205 = icmp eq i32 %i.bb, 0
  br i1 %.not205, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = call i32 @BIO_test_flags(ptr noundef nonnull %0, i32 noundef 256)
  %.not206 = icmp eq i32 %i.bc, 0
  br i1 %.not206, label %bb.o, label %.loopexit225.sink.split

bb.o:                                             ; preds = %bb.n
  %.pr = load i32, ptr %i.ah, align 4, !tbaa !29
  %.not207 = icmp eq i32 %.pr, 0
  br i1 %.not207, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.a, align 4, !tbaa !43
  %i.bd = icmp sgt i32 %i.ba, 0
  br i1 %i.bd, label %.lr.ph.preheader, label %.loopexit223.thread

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.be = add nsw i32 %.1177, -1
  %i.bf = add i32 %i.be, %i.az
  %i.bg = zext i32 %i.bf to i64
  %scevgep298 = getelementptr i8, ptr %scevgep, i64 %i.bg
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %.0169.ptr253 = phi ptr [ %.0169.ptr, %bb.x ], [ %.ptr, %.lr.ph.preheader ] ; 10 uses
  %.0168.ptr252 = phi ptr [ %.0168.ptr, %bb.x ], [ %.ptr, %.lr.ph.preheader ]
  %.0168.idx251 = phi i64 [ %.0168.add, %bb.x ], [ 1586, %.lr.ph.preheader ]
  %.0169.idx250 = phi i64 [ %.1170.idx, %bb.x ], [ 1586, %.lr.ph.preheader ] ; 5 uses
  %.0174249 = phi i32 [ %i.cs, %bb.x ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0168.add = add nuw nsw i64 %.0168.idx251, 1   ; 6 uses
  %i.bh = load i8, ptr %.0168.ptr252, align 1, !tbaa !44
  %.not208 = icmp eq i8 %i.bh, 10
  br i1 %.not208, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph
  %i.bi = load i32, ptr %i.ai, align 4, !tbaa !45
  %.not209 = icmp eq i32 %i.bi, 0
  br i1 %.not209, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ai, align 4, !tbaa !45
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %gepdiff213 = sub nsw i64 %.0168.add, %.0169.idx250
  %i.bj = call i32 @EVP_DecodeUpdate(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull %.0169.ptr253, i64 noundef %gepdiff213)
  %i.bk = icmp slt i32 %i.bj, 1
  %i.bl = load i32, ptr %i.a, align 4
  %i.bm = icmp eq i32 %i.bl, 0
  %or.cond = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %or.cond, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bn = load i32, ptr %i.ah, align 4, !tbaa !29
  %.not210 = icmp eq i32 %i.bn, 0
  br i1 %.not210, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @EVP_DecodeInit(ptr noundef nonnull %i.aj)
  br label %bb.x

bb.v:                                             ; preds = %bb.t, %bb.s
  %.0169.ptr253391.le = ptrtoaddr ptr %.0169.ptr253 to i64
  %.ptr212.le = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0168.add
  %.not211 = icmp eq i64 %.0169.idx250, 1586
  br i1 %.not211, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = trunc i64 %.0169.idx250 to i32
  %.neg222 = add nuw i32 %i.ba, 1586
  %i.bp = sub i32 %.neg222, %i.bo                 ; 9 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %vector.memcheck393, label %.loopexit

vector.memcheck393:                               ; preds = %bb.w
  %wide.trip.count = zext nneg i32 %i.bp to i64   ; 8 uses
  %min.iters.check392 = icmp ult i32 %i.bp, 4
  %i.br = sub i64 %.0169.ptr253391.le, %3
  %diff.check394 = icmp ugt i64 %i.br, -32
  %or.cond421 = select i1 %min.iters.check392, i1 true, i1 %diff.check394
  br i1 %or.cond421, label %.lr.ph258.preheader, label %vector.main.loop.iter.check395

vector.main.loop.iter.check395:                   ; preds = %vector.memcheck393
  %min.iters.check396 = icmp ult i32 %i.bp, 32
  br i1 %min.iters.check396, label %vec.epilog.ph410, label %vector.ph397

vector.ph397:                                     ; preds = %vector.main.loop.iter.check395
  %i.bs = and i64 %wide.trip.count, 28
  %n.vec398 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  br label %vector.body399

vector.body399:                                   ; preds = %vector.ph397, %vector.body399
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next403, %vector.body399 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %index400 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load401 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !44
  %wide.load402 = load <16 x i8>, ptr %i.bu, align 1, !tbaa !44
  %i.bv = getelementptr inbounds nuw i8, ptr %.ptr, i64 %index400 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <16 x i8> %wide.load401, ptr %i.bv, align 1, !tbaa !44
  store <16 x i8> %wide.load402, ptr %i.bw, align 1, !tbaa !44
  %index.next403 = add nuw i64 %index400, 32      ; 2 uses
  %i.bx = icmp eq i64 %index.next403, %n.vec398
  br i1 %i.bx, label %middle.block404, label %vector.body399, !llvm.loop !33

middle.block404:                                  ; preds = %vector.body399
  %cmp.n405 = icmp eq i64 %n.vec398, %wide.trip.count
  br i1 %cmp.n405, label %.loopexit, label %vec.epilog.iter.check407

vec.epilog.iter.check407:                         ; preds = %middle.block404
  %min.epilog.iters.check409 = icmp eq i64 %i.bs, 0
  br i1 %min.epilog.iters.check409, label %.lr.ph258.preheader, label %vec.epilog.ph410, !prof !48

vec.epilog.ph410:                                 ; preds = %vector.main.loop.iter.check395, %vec.epilog.iter.check407
  %vec.epilog.resume.val411 = phi i64 [ %n.vec398, %vec.epilog.iter.check407 ], [ 0, %vector.main.loop.iter.check395 ]
  %n.vec412 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body413

vec.epilog.vector.body413:                        ; preds = %vec.epilog.vector.body413, %vec.epilog.ph410
  %index414 = phi i64 [ %vec.epilog.resume.val411, %vec.epilog.ph410 ], [ %index.next416, %vec.epilog.vector.body413 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %index414
  %wide.load415 = load <4 x i8>, ptr %i.by, align 1, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %.ptr, i64 %index414
  store <4 x i8> %wide.load415, ptr %i.bz, align 1, !tbaa !44
  %index.next416 = add nuw i64 %index414, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next416, %n.vec412
  br i1 %i.ca, label %vec.epilog.middle.block417, label %vec.epilog.vector.body413, !llvm.loop !34

vec.epilog.middle.block417:                       ; preds = %vec.epilog.vector.body413
  %cmp.n418 = icmp eq i64 %n.vec412, %wide.trip.count
  br i1 %cmp.n418, label %.loopexit, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %vector.memcheck393, %vec.epilog.iter.check407, %vec.epilog.middle.block417
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck393 ], [ %n.vec398, %vec.epilog.iter.check407 ], [ %n.vec412, %vec.epilog.middle.block417 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph258.prol.loopexit, label %.lr.ph258.prol

.lr.ph258.prol:                                   ; preds = %.lr.ph258.preheader, %.lr.ph258.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph258.prol ], [ %indvars.iv.ph, %.lr.ph258.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph258.prol ], [ 0, %.lr.ph258.preheader ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %indvars.iv.prol
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !44
  %i.cd = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.prol
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !44
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph258.prol.loopexit, label %.lr.ph258.prol, !llvm.loop !35

.lr.ph258.prol.loopexit:                          ; preds = %.lr.ph258.prol, %.lr.ph258.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph258.preheader ], [ %indvars.iv.next.prol, %.lr.ph258.prol ]
  %i.ce = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %.loopexit, label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.prol.loopexit, %.lr.ph258
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph258 ], [ %indvars.iv.unr, %.lr.ph258.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %indvars.iv
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %indvars.iv.next
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !44
  %i.cl = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !44
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %indvars.iv.next.1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next.1
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !44
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0169.ptr253, i64 %indvars.iv.next.2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next.2
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !44
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond302.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond302.not.3, label %.loopexit, label %.lr.ph258, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph258.prol.loopexit, %.lr.ph258, %middle.block404, %vec.epilog.middle.block417, %bb.w, %bb.v
  %.2178 = phi i32 [ %i.ba, %bb.v ], [ %i.bp, %bb.w ], [ %i.bp, %middle.block404 ], [ %i.bp, %vec.epilog.middle.block417 ], [ %i.bp, %.lr.ph258 ], [ %i.bp, %.lr.ph258.prol.loopexit ]
  call void @EVP_DecodeInit(ptr noundef nonnull %i.aj)
  store i32 0, ptr %i.ah, align 4, !tbaa !29
  br label %.loopexit223

bb.x:                                             ; preds = %.lr.ph, %bb.u, %bb.r
  %.1170.idx = phi i64 [ %.0169.idx250, %.lr.ph ], [ %.0168.add, %bb.r ], [ %.0168.add, %bb.u ] ; 3 uses
  %i.cs = add nuw nsw i32 %.0174249, 1            ; 2 uses
  %.0168.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0168.add
  %.0169.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1170.idx ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %i.ba
  br i1 %exitcond.not, label %.loopexit223, label %.lr.ph, !llvm.loop !37

.loopexit223:                                     ; preds = %bb.x, %.loopexit
  %.0174232 = phi i32 [ %.0174249, %.loopexit ], [ %i.ba, %bb.x ] ; 2 uses
  %.0169.idx230 = phi i64 [ %.0169.idx250, %.loopexit ], [ %.1170.idx, %bb.x ]
  %.0169.ptr227 = phi ptr [ %.0169.ptr253, %.loopexit ], [ %.0169.ptr, %bb.x ] ; 9 uses
  %.3 = phi i32 [ %.2178, %.loopexit ], [ %i.ba, %bb.x ] ; 2 uses
  %.1 = phi ptr [ %.ptr212.le, %.loopexit ], [ %scevgep298, %bb.x ] ; 2 uses
  %i.ct = icmp eq i32 %.0174232, %.3
  %i.cu = load i32, ptr %i.a, align 4
  %i.cv = icmp eq i32 %i.cu, 0
  %or.cond3 = select i1 %i.ct, i1 %i.cv, i1 false
  br i1 %or.cond3, label %bb.y, label %.loopexit225.sink.split

.loopexit223.thread:                              ; preds = %bb.p
  %i.cw = icmp eq i32 %i.ba, 0
  %i.cx = load i32, ptr %i.a, align 4
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond3331 = select i1 %i.cw, i1 %i.cy, i1 false
  br i1 %or.cond3331, label %.backedge, label %.loopexit225.sink.split

bb.y:                                             ; preds = %.loopexit223
  %i.cz = icmp samesign eq i64 %.0169.idx230, 1586
  br i1 %i.cz, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.da = icmp eq i32 %.0174232, 1024
  br i1 %i.da, label %bb.aa, label %.backedge

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.ai, align 4, !tbaa !45
  br label %.backedge.sink.split

bb.ab:                                            ; preds = %bb.y
  %.not214 = icmp eq ptr %.0169.ptr227, %.1
  br i1 %.not214, label %.backedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = ptrtoint ptr %.1 to i64
  %i.dc = ptrtoint ptr %.0169.ptr227 to i64       ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 6 uses
  %i.de = trunc i64 %i.dd to i32                  ; 6 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %vector.memcheck, label %.backedge.sink.split

vector.memcheck:                                  ; preds = %bb.ac
  %wide.trip.count306 = and i64 %i.dd, 2147483647 ; 6 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count306, 4
  %i.dg = sub i64 %i.dc, %3
  %diff.check = icmp ugt i64 %i.dg, -32
  %or.cond422 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond422, label %.lr.ph260.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check381 = icmp samesign ult i64 %wide.trip.count306, 32
  br i1 %min.iters.check381, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dh = and i64 %i.dd, 28
  %n.vec = and i64 %i.dd, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0169.ptr227, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load = load <16 x i8>, ptr %i.di, align 1, !tbaa !44
  %wide.load382 = load <16 x i8>, ptr %i.dj, align 1, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %.ptr, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <16 x i8> %wide.load, ptr %i.dk, align 1, !tbaa !44
  store <16 x i8> %wide.load382, ptr %i.dl, align 1, !tbaa !44
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count306, %n.vec
  br i1 %cmp.n, label %.backedge.sink.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph260.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec383 = and i64 %i.dd, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index384 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next386, %vec.epilog.vector.body ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0169.ptr227, i64 %index384
  %wide.load385 = load <4 x i8>, ptr %i.dn, align 1, !tbaa !44
  %i.do = getelementptr inbounds nuw i8, ptr %.ptr, i64 %index384
  store <4 x i8> %wide.load385, ptr %i.do, align 1, !tbaa !44
  %index.next386 = add nuw i64 %index384, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next386, %n.vec383
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n387 = icmp eq i64 %wide.trip.count306, %n.vec383
  br i1 %cmp.n387, label %.backedge.sink.split, label %.lr.ph260.preheader

.lr.ph260.preheader:                              ; preds = %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv303.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec383, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter433 = and i64 %i.dd, 3                 ; 2 uses
  %lcmp.mod434.not = icmp eq i64 %xtraiter433, 0
  br i1 %lcmp.mod434.not, label %.lr.ph260.prol.loopexit, label %.lr.ph260.prol

.lr.ph260.prol:                                   ; preds = %.lr.ph260.preheader, %.lr.ph260.prol
  %indvars.iv303.prol = phi i64 [ %indvars.iv.next304.prol, %.lr.ph260.prol ], [ %indvars.iv303.ph, %.lr.ph260.preheader ] ; 3 uses
  %prol.iter435 = phi i64 [ %prol.iter435.next, %.lr.ph260.prol ], [ 0, %.lr.ph260.preheader ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0169.ptr227, i64 %indvars.iv303.prol
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !44
  %i.ds = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv303.prol
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !44
  %indvars.iv.next304.prol = add nuw nsw i64 %indvars.iv303.prol, 1 ; 2 uses
  %prol.iter435.next = add i64 %prol.iter435, 1   ; 2 uses
  %prol.iter435.cmp.not = icmp eq i64 %prol.iter435.next, %xtraiter433
  br i1 %prol.iter435.cmp.not, label %.lr.ph260.prol.loopexit, label %.lr.ph260.prol, !llvm.loop !40

.lr.ph260.prol.loopexit:                          ; preds = %.lr.ph260.prol, %.lr.ph260.preheader
  %indvars.iv303.unr = phi i64 [ %indvars.iv303.ph, %.lr.ph260.preheader ], [ %indvars.iv.next304.prol, %.lr.ph260.prol ]
  %i.dt = sub nsw i64 %indvars.iv303.ph, %wide.trip.count306
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %.backedge.sink.split, label %.lr.ph260

.lr.ph260:                                        ; preds = %.lr.ph260.prol.loopexit, %.lr.ph260
  %indvars.iv303 = phi i64 [ %indvars.iv.next304.3, %.lr.ph260 ], [ %indvars.iv303.unr, %.lr.ph260.prol.loopexit ] ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0169.ptr227, i64 %indvars.iv303
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !44
  %i.dx = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv303
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !44
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0169.ptr227, i64 %indvars.iv.next304
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !44
  %i.ea = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next304
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !44
  %indvars.iv.next304.1 = add nuw nsw i64 %indvars.iv303, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0169.ptr227, i64 %indvars.iv.next304.1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next304.1
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !44
  %indvars.iv.next304.2 = add nuw nsw i64 %indvars.iv303, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0169.ptr227, i64 %indvars.iv.next304.2
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !44
  %i.eg = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next304.2
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !44
  %indvars.iv.next304.3 = add nuw nsw i64 %indvars.iv303, 4 ; 2 uses
  %exitcond307.not.3 = icmp eq i64 %indvars.iv.next304.3, %wide.trip.count306
  br i1 %exitcond307.not.3, label %.backedge.sink.split, label %.lr.ph260, !llvm.loop !41

.backedge.sink.split:                             ; preds = %.lr.ph260.prol.loopexit, %.lr.ph260, %middle.block, %vec.epilog.middle.block, %bb.ac, %bb.aa
  %.sink = phi i32 [ 0, %bb.aa ], [ %i.de, %bb.ac ], [ %i.de, %middle.block ], [ %i.de, %vec.epilog.middle.block ], [ %i.de, %.lr.ph260 ], [ %i.de, %.lr.ph260.prol.loopexit ]
  store i32 %.sink, ptr %i.ag, align 4, !tbaa !25
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %.loopexit223.thread, %bb.z, %bb.ab, %bb.ad
  %i.eh = load i32, ptr %i.af, align 4, !tbaa !28
  %i.ei = icmp slt i32 %i.eh, 1
  br i1 %i.ei, label %.loopexit224, label %.lr.ph371

.thread:                                          ; preds = %bb.m, %bb.o
  %i.ej = icmp slt i32 %i.ba, 1024
  br i1 %i.ej, label %bb.ad, label %.loopexit225

bb.ad:                                            ; preds = %.thread
  %i.ek = load i32, ptr %i.af, align 4, !tbaa !28
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.backedge, label %.loopexit225

.loopexit225.sink.split:                          ; preds = %.loopexit223, %.loopexit223.thread, %bb.n
  %.4.ph = phi i32 [ %i.ba, %bb.n ], [ %i.ba, %.loopexit223.thread ], [ %.3, %.loopexit223 ]
  store i32 0, ptr %i.ag, align 4, !tbaa !25
  br label %.loopexit225

.loopexit225:                                     ; preds = %bb.ad, %.thread, %.loopexit225.sink.split
  %.4 = phi i32 [ %.4.ph, %.loopexit225.sink.split ], [ %i.ba, %.thread ], [ %i.ba, %bb.ad ] ; 5 uses
  %i.em = call i32 @BIO_test_flags(ptr noundef nonnull %0, i32 noundef 256)
  %.not215 = icmp eq i32 %i.em, 0
  br i1 %.not215, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %.loopexit225
  %i.en = and i32 %.4, -4                         ; 3 uses
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = call i32 @EVP_DecodeBlock(ptr noundef nonnull %i.ak, ptr noundef nonnull %.ptr, i64 noundef %i.eo) ; 3 uses
  %i.eq = icmp sgt i32 %.4, 3
  br i1 %i.eq, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.er = zext nneg i32 %i.en to i64
  %i.es = getelementptr i8, ptr %.ptr, i64 %i.er  ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 -1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !44
  %i.ev = icmp eq i8 %i.eu, 61
  br i1 %i.ev, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr i8, ptr %i.es, i64 -2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !44
  %i.ey = icmp eq i8 %i.ex, 61
  %spec.select218.v = select i1 %i.ey, i32 -2, i32 -1
  %spec.select218 = add nsw i32 %spec.select218.v, %i.ep
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.0 = phi i32 [ %i.ep, %bb.ae ], [ %spec.select218, %bb.ag ], [ %i.ep, %bb.af ] ; 2 uses
  %.not216 = icmp eq i32 %i.en, %.4
  br i1 %.not216, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ez = and i32 %.4, 3                          ; 3 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %_ZL15OPENSSL_memmovePvPKvm.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fb = zext nneg i32 %i.ez to i64
  %i.fc = getelementptr inbounds i8, ptr %.ptr, i64 %i.eo
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.ptr, ptr nonnull readonly align 1 %i.fc, i64 range(i64 -2147483648, 2147483648) %i.fb, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit

_ZL15OPENSSL_memmovePvPKvm.exit:                  ; preds = %bb.ai, %bb.aj
  store i32 %i.ez, ptr %i.ag, align 4, !tbaa !25
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit, %bb.ah
  %spec.select219 = call i32 @llvm.smax.i32(i32 %.0, i32 0)
  store i32 %spec.select219, ptr %i.d, align 4, !tbaa !23
  br label %bb.am

bb.al:                                            ; preds = %.loopexit225
  %i.fd = sext i32 %.4 to i64
  %i.fe = call i32 @EVP_DecodeUpdate(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.d, ptr noundef nonnull %.ptr, i64 noundef %i.fd)
  store i32 0, ptr %i.ag, align 4, !tbaa !25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.5 = phi i32 [ %.0, %bb.ak ], [ %i.fe, %bb.al ]
  store i32 0, ptr %i.al, align 4, !tbaa !24
  %i.ff = icmp slt i32 %.5, 0
  br i1 %i.ff, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.d, align 4, !tbaa !23
  br label %.loopexit224

bb.ao:                                            ; preds = %bb.am
  %i.fg = load i32, ptr %i.d, align 4, !tbaa !23  ; 2 uses
  %.1182. = call i32 @llvm.smin.i32(i32 %i.fg, i32 %.1182.ph277) ; 5 uses
  %i.fh = sext i32 %.1182. to i64                 ; 2 uses
  %i.fi = icmp eq i32 %i.fg, 0
  br i1 %i.fi, label %_ZL14OPENSSL_memcpyPvPKvm.exit220, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1184.ph276, ptr nonnull readonly align 4 %i.ak, i64 range(i64 -2147483648, 2147483648) %i.fh, i1 false)
  %.pre311 = load i32, ptr %i.d, align 4, !tbaa !23
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit220

_ZL14OPENSSL_memcpyPvPKvm.exit220:                ; preds = %bb.ao, %bb.ap
  %i.fj = phi i32 [ 0, %bb.ao ], [ %.pre311, %bb.ap ]
  %i.fk = add nsw i32 %.1182., %.1180.ph278       ; 2 uses
  store i32 %.1182., ptr %i.al, align 4, !tbaa !24
  %i.fl = icmp eq i32 %.1182., %i.fj
  br i1 %i.fl, label %bb.aq, label %.outer

bb.aq:                                            ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit220
  store i32 0, ptr %i.d, align 4, !tbaa !23
  store i32 0, ptr %i.al, align 4, !tbaa !24
  br label %.outer

.outer:                                           ; preds = %bb.aq, %_ZL14OPENSSL_memcpyPvPKvm.exit220
  %i.fm = sub nsw i32 %.1182.ph277, %.1182.       ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %.1184.ph276, i64 %i.fh
  %i.fo = icmp sgt i32 %i.fm, 0
  br i1 %i.fo, label %.lr.ph262, label %.loopexit224, !llvm.loop !42

.loopexit224:                                     ; preds = %.outer, %.lr.ph262, %bb.k, %bb.l, %.backedge, %bb.j, %bb.an
  %.1180.ph246 = phi i32 [ %.1180.ph278, %bb.an ], [ %.1180.ph278, %bb.k ], [ %.0179, %bb.j ], [ %.1180.ph278, %.backedge ], [ %.1180.ph278, %bb.l ], [ %i.fk, %.outer ], [ %.1180.ph278, %.lr.ph262 ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.an ], [ %.1172, %.backedge ], [ 0, %bb.j ], [ %i.at, %bb.k ], [ %i.at, %bb.l ], [ %.1172, %.outer ], [ %.0171.ph280, %.lr.ph262 ]
  call void @BIO_copy_next_retry(ptr noundef nonnull %0)
  %i.fp = icmp eq i32 %.1180.ph246, 0
  %i.fq = select i1 %i.fp, i32 %.2, i32 %.1180.ph246
  br label %bb.ar

bb.ar:                                            ; preds = %bb.b, %bb.c, %bb.a, %.loopexit224
  %.0185 = phi i32 [ %i.fq, %.loopexit224 ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0185
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZL8b64_ctrlP6bio_stilPv(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 19 uses
  switch i32 %1, label %bb.z [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 13, label %bb.e
    i32 10, label %bb.i
    i32 11, label %.preheader
    i32 101, label %bb.y
  ]

.preheader:                                       ; preds = %bb.a
end_hunk_0
