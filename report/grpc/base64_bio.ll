Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/base64_bio?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL8b64_readP6bio_stPci:bb.a
  %.sink = phi i32 [ 0, %bb.aa ], [ %i.df, %bb.ac ], [ %i.df, %middle.block ], [ %i.df, %vec.epilog.middle.block ], [ %i.df, %.lr.ph260 ], [ %i.df, %.lr.ph260.prol.loopexit ]
  store i32 %.sink, ptr %i.ag, align 4, !tbaa !25
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %.loopexit223.thread, %bb.z, %bb.ab, %bb.ad
  %i.ei = load i32, ptr %i.af, align 4, !tbaa !28
  %i.ej = icmp slt i32 %i.ei, 1
  br i1 %i.ej, label %.loopexit224, label %.lr.ph371

.thread:                                          ; preds = %bb.m, %bb.o
  %i.ek = icmp slt i32 %i.bb, 1024
  br i1 %i.ek, label %bb.ad, label %.loopexit225

bb.ad:                                            ; preds = %.thread
  %i.el = load i32, ptr %i.af, align 4, !tbaa !28
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.backedge, label %.loopexit225

.loopexit225.sink.split:                          ; preds = %.loopexit223, %.loopexit223.thread, %bb.n
  %.4.ph = phi i32 [ %i.bb, %bb.n ], [ %i.bb, %.loopexit223.thread ], [ %.3, %.loopexit223 ]
  store i32 0, ptr %i.ag, align 4, !tbaa !25
  br label %.loopexit225

.loopexit225:                                     ; preds = %bb.ad, %.thread, %.loopexit225.sink.split
  %.4 = phi i32 [ %.4.ph, %.loopexit225.sink.split ], [ %i.bb, %.thread ], [ %i.bb, %bb.ad ] ; 5 uses
  %i.en = call i32 @BIO_test_flags(ptr noundef nonnull %0, i32 noundef 256)
  %.not215 = icmp eq i32 %i.en, 0
  br i1 %.not215, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %.loopexit225
  %i.eo = and i32 %.4, -4                         ; 3 uses
  %i.ep = sext i32 %i.eo to i64                   ; 2 uses
  %i.eq = call i32 @EVP_DecodeBlock(ptr noundef nonnull %i.ak, ptr noundef nonnull %.ptr, i64 noundef %i.ep) ; 3 uses
  %i.er = icmp sgt i32 %.4, 3
  br i1 %i.er, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.es = zext nneg i32 %i.eo to i64
  %i.et = getelementptr i8, ptr %.ptr, i64 %i.es  ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 -1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !44
  %i.ew = icmp eq i8 %i.ev, 61
  br i1 %i.ew, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ex = getelementptr i8, ptr %i.et, i64 -2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !44
  %i.ez = icmp eq i8 %i.ey, 61
  %spec.select218.v = select i1 %i.ez, i32 -2, i32 -1
  %spec.select218 = add nsw i32 %spec.select218.v, %i.eq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.0 = phi i32 [ %i.eq, %bb.ae ], [ %spec.select218, %bb.ag ], [ %i.eq, %bb.af ] ; 2 uses
  %.not216 = icmp eq i32 %i.eo, %.4
  br i1 %.not216, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fa = and i32 %.4, 3                          ; 3 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZL15OPENSSL_memmovePvPKvm.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = getelementptr inbounds i8, ptr %.ptr, i64 %i.ep
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.ptr, ptr nonnull readonly align 1 %i.fd, i64 range(i64 -2147483648, 2147483648) %i.fc, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit

_ZL15OPENSSL_memmovePvPKvm.exit:                  ; preds = %bb.ai, %bb.aj
  store i32 %i.fa, ptr %i.ag, align 4, !tbaa !25
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit, %bb.ah
  %spec.select219 = call i32 @llvm.smax.i32(i32 %.0, i32 0)
  store i32 %spec.select219, ptr %i.d, align 4, !tbaa !23
  br label %bb.am

bb.al:                                            ; preds = %.loopexit225
  %i.fe = sext i32 %.4 to i64
  %i.ff = call i32 @EVP_DecodeUpdate(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.d, ptr noundef nonnull %.ptr, i64 noundef %i.fe)
  store i32 0, ptr %i.ag, align 4, !tbaa !25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.5 = phi i32 [ %.0, %bb.ak ], [ %i.ff, %bb.al ]
  store i32 0, ptr %i.al, align 4, !tbaa !24
  %i.fg = icmp slt i32 %.5, 0
  br i1 %i.fg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.d, align 4, !tbaa !23
  br label %.loopexit224

bb.ao:                                            ; preds = %bb.am
  %i.fh = load i32, ptr %i.d, align 4, !tbaa !23  ; 2 uses
  %.1182. = call i32 @llvm.smin.i32(i32 %i.fh, i32 %.1182.ph277) ; 5 uses
  %i.fi = sext i32 %.1182. to i64                 ; 2 uses
  %i.fj = icmp eq i32 %i.fh, 0
  br i1 %i.fj, label %_ZL14OPENSSL_memcpyPvPKvm.exit220, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1184.ph276, ptr nonnull readonly align 4 %i.ak, i64 range(i64 -2147483648, 2147483648) %i.fi, i1 false)
  %.pre311 = load i32, ptr %i.d, align 4, !tbaa !23
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit220

_ZL14OPENSSL_memcpyPvPKvm.exit220:                ; preds = %bb.ao, %bb.ap
  %i.fk = phi i32 [ 0, %bb.ao ], [ %.pre311, %bb.ap ]
  %i.fl = add nsw i32 %.1182., %.1180.ph278       ; 2 uses
  store i32 %.1182., ptr %i.al, align 4, !tbaa !24
  %i.fm = icmp eq i32 %.1182., %i.fk
  br i1 %i.fm, label %bb.aq, label %.outer

bb.aq:                                            ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit220
  store i32 0, ptr %i.d, align 4, !tbaa !23
  store i32 0, ptr %i.al, align 4, !tbaa !24
  br label %.outer

.outer:                                           ; preds = %bb.aq, %_ZL14OPENSSL_memcpyPvPKvm.exit220
  %i.fn = sub nsw i32 %.1182.ph277, %.1182.       ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %.1184.ph276, i64 %i.fi
  %i.fp = icmp sgt i32 %i.fn, 0
  br i1 %i.fp, label %.lr.ph262, label %.loopexit224, !llvm.loop !42

.loopexit224:                                     ; preds = %.outer, %.lr.ph262, %bb.k, %bb.l, %.backedge, %bb.j, %bb.an
  %.1180.ph246 = phi i32 [ %.1180.ph278, %bb.an ], [ %.1180.ph278, %bb.k ], [ %.0179, %bb.j ], [ %.1180.ph278, %.backedge ], [ %.1180.ph278, %bb.l ], [ %i.fl, %.outer ], [ %.1180.ph278, %.lr.ph262 ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.an ], [ %.1172, %.backedge ], [ 0, %bb.j ], [ %i.au, %bb.k ], [ %i.au, %bb.l ], [ %.1172, %.outer ], [ %.0171.ph280, %.lr.ph262 ]
  call void @BIO_copy_next_retry(ptr noundef nonnull %0)
  %i.fq = icmp eq i32 %.1180.ph246, 0
  %i.fr = select i1 %i.fq, i32 %.2, i32 %.1180.ph246
  br label %bb.ar

bb.ar:                                            ; preds = %bb.b, %bb.c, %bb.a, %.loopexit224
  %.0185 = phi i32 [ %i.fr, %.loopexit224 ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
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
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1586
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  br label %.backedge

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 1, ptr %i.j, align 4, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 1, ptr %i.k, align 4, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.l, align 4, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.o = tail call i64 @BIO_ctrl(ptr noundef %i.n, i32 noundef 1, i64 noundef %2, ptr noundef %3)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = tail call i64 @BIO_ctrl(ptr noundef %i.t, i32 noundef 2, i64 noundef %2, ptr noundef %3)
  br label %bb.aa

bb.e:                                             ; preds = %bb.a
  %i.v = load i32, ptr %i.b, align 4, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !24   ; 2 uses
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !22
  %.not75 = icmp eq i32 %i.aa, 0
  br i1 %.not75, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %.not76 = icmp eq i32 %i.ac, 0
  br i1 %.not76, label %.thread, label %bb.aa

bb.h:                                             ; preds = %bb.e
  %i.ad = sub nsw i32 %i.v, %i.x                  ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = icmp slt i32 %i.ad, 1
  br i1 %i.af, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.ai = tail call i64 @BIO_ctrl(ptr noundef %i.ah, i32 noundef 13, i64 noundef %2, ptr noundef %3)
  br label %bb.aa

bb.i:                                             ; preds = %bb.a
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24
  %i.am = sub nsw i32 %i.aj, %i.al                ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = icmp slt i32 %i.am, 1
  br i1 %i.ao, label %bb.j, label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26
  %i.ar = tail call i64 @BIO_ctrl(ptr noundef %i.aq, i32 noundef 10, i64 noundef %2, ptr noundef %3)
  br label %bb.aa

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %i.as = load i32, ptr %i.b, align 4, !tbaa !23
  %i.at = load i32, ptr %i.c, align 4, !tbaa !24
  %.not = icmp eq i32 %i.as, %i.at
  br i1 %.not, label %bb.r, label %bb.k

bb.k:                                             ; preds = %.backedge
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !19  ; 9 uses
  tail call void @BIO_clear_retry_flags(ptr noundef %0)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !22
  %.not.i = icmp eq i32 %i.aw, 1
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.av, align 4, !tbaa !22
  store i32 0, ptr %i.au, align 4, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 0, ptr %i.ax, align 4, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 0, ptr %i.ay, align 4, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  tail call void @EVP_EncodeInit(ptr noundef nonnull %i.az)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = load i32, ptr %i.au, align 4, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !24 ; 2 uses
  %i.bd = sub nsw i32 %i.ba, %i.bc                ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i
  %i.bg = phi i32 [ %i.bc, %.lr.ph.i ], [ %i.bn, %bb.p ]
  %.0123.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %i.bo, %bb.p ] ; 2 uses
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  %i.bk = tail call i32 @BIO_write(ptr noundef %i.bh, ptr noundef nonnull %i.bj, i32 noundef %.0123.i) ; 4 uses
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @BIO_copy_next_retry(ptr noundef nonnull %0)
  br label %_ZL9b64_writeP6bio_stPKci.exit

bb.p:                                             ; preds = %bb.n
  %i.bm = load i32, ptr %i.bb, align 4, !tbaa !24
  %i.bn = add nsw i32 %i.bm, %i.bk                ; 2 uses
  store i32 %i.bn, ptr %i.bb, align 4, !tbaa !24
  %i.bo = sub nsw i32 %.0123.i, %i.bk             ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %bb.n, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.p, %bb.m
  store i32 0, ptr %i.bb, align 4, !tbaa !24
  store i32 0, ptr %i.au, align 4, !tbaa !23
  br label %_ZL9b64_writeP6bio_stPKci.exit

_ZL9b64_writeP6bio_stPKci.exit:                   ; preds = %bb.o, %._crit_edge.i
  %.0101.i = phi i32 [ %i.bk, %bb.o ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.bq = icmp slt i32 %.0101.i, 0
  br i1 %i.bq, label %bb.q, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZL9b64_writeP6bio_stPKci.exit, %bb.t, %bb.w
  br label %.backedge, !llvm.loop !50

bb.q:                                             ; preds = %_ZL9b64_writeP6bio_stPKci.exit
  %i.br = sext i32 %.0101.i to i64
  br label %bb.aa

bb.r:                                             ; preds = %.backedge
  %i.bs = tail call i32 @BIO_test_flags(ptr noundef %0, i32 noundef 256)
  %.not71 = icmp eq i32 %i.bs, 0
  br i1 %.not71, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = load i32, ptr %i.e, align 4, !tbaa !25  ; 2 uses
  %.not74 = icmp eq i32 %i.bt, 0
  br i1 %.not74, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = sext i32 %i.bt to i64
  %i.bv = tail call i64 @EVP_EncodeBlock(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef %i.bu)
  %i.bw = trunc i64 %i.bv to i32
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !23
  store i32 0, ptr %i.c, align 4, !tbaa !24
  store i32 0, ptr %i.e, align 4, !tbaa !25
  br label %.backedge.backedge

bb.u:                                             ; preds = %bb.r
  %i.bx = load i32, ptr %i.h, align 4, !tbaa !22
  %.not72 = icmp eq i32 %i.bx, 0
  br i1 %.not72, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = load i32, ptr %i.i, align 4, !tbaa !51
  %.not73 = icmp eq i32 %i.by, 0
  br i1 %.not73, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.c, align 4, !tbaa !24
  tail call void @EVP_EncodeFinal(ptr noundef nonnull %i.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b)
  br label %.backedge.backedge

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.s
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.ca = tail call i64 @BIO_ctrl(ptr noundef %i.bz, i32 noundef 11, i64 noundef %2, ptr noundef %3)
  br label %bb.aa

bb.y:                                             ; preds = %bb.a
  tail call void @BIO_clear_retry_flags(ptr noundef nonnull %0)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !26
  %i.cd = tail call i64 @BIO_ctrl(ptr noundef %i.cc, i32 noundef 101, i64 noundef %2, ptr noundef %3)
  tail call void @BIO_copy_next_retry(ptr noundef nonnull %0)
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !26
  %i.cg = tail call i64 @BIO_ctrl(ptr noundef %i.cf, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.b, %bb.x, %bb.y, %bb.z, %bb.d, %bb.h, %.thread, %bb.j, %bb.i, %bb.c, %bb.g, %bb.q
  %.065 = phi i64 [ %i.br, %bb.q ], [ %i.cg, %bb.z ], [ %i.o, %bb.b ], [ %i.cd, %bb.y ], [ %i.u, %bb.d ], [ 1, %bb.c ], [ %i.ai, %.thread ], [ %i.ae, %bb.h ], [ %i.ar, %bb.j ], [ %i.an, %bb.i ], [ %i.ca, %bb.x ], [ 1, %bb.g ]
  ret i64 %.065
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 0, 2) i32 @_ZL7b64_newP6bio_st(ptr nofree noundef writeonly captures(none) %0) #1 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 2612) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.c, align 4, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 1, ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %i.f, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 0, 2) i32 @_ZL8b64_freeP6bio_st(ptr nofree noundef captures(address_is_null) %0) #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @OPENSSL_free(ptr noundef %i.c)
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZL17b64_callback_ctrlP6bio_stiPFlS0_iPKcillE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @BIO_callback_ctrl(ptr noundef nonnull %i.b, i32 noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @BIO_clear_retry_flags(ptr noundef) local_unnamed_addr #3

declare void @EVP_EncodeInit(ptr noundef) local_unnamed_addr #3

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BIO_copy_next_retry(ptr noundef) local_unnamed_addr #3

declare i32 @BIO_test_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @EVP_EncodeBlock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @EVP_EncodeUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @EVP_DecodeInit(ptr noundef) local_unnamed_addr #3

declare i32 @BIO_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_should_retry(ptr noundef) local_unnamed_addr #3

declare i32 @EVP_DecodeUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_DecodeBlock(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @EVP_EncodeFinal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_zalloc(i64 noundef) local_unnamed_addr #3

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #3

declare i64 @BIO_callback_ctrl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !27}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS13bio_method_st", !12, i64 0}
!14 = !{!"p1 _ZTS13stack_st_void", !12, i64 0}
!15 = !{!"_ZTS17crypto_ex_data_st", !14, i64 0}
!16 = !{!"p1 _ZTS6bio_st", !12, i64 0}
!17 = !{!"long", !8, i64 0}
!18 = !{!"_ZTS6bio_st", !13, i64 0, !15, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !12, i64 40, !16, i64 48, !17, i64 56, !17, i64 64}
!19 = !{!18, !12, i64 40}
!20 = !{!"_ZTS17evp_encode_ctx_st", !9, i64 0, !8, i64 4, !8, i64 52, !8, i64 53}
!21 = !{!"_ZTS10b64_struct", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !20, i64 28, !8, i64 84, !8, i64 1586}
!22 = !{!21, !9, i64 16}
!23 = !{!21, !9, i64 0}
!24 = !{!21, !9, i64 4}
!25 = !{!21, !9, i64 8}
!26 = !{!18, !16, i64 48}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!21, !9, i64 24}
!29 = !{!21, !9, i64 20}
!30 = !{!18, !9, i64 16}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27, !46, !47}
!34 = distinct !{!34, !27, !46, !47}
!35 = distinct !{!35, !49}
!36 = distinct !{!36, !27, !46}
!37 = distinct !{!37, !27}
!38 = distinct !{!38, !27, !46, !47}
!39 = distinct !{!39, !27, !46, !47}
!40 = distinct !{!40, !49}
!41 = distinct !{!41, !27, !46}
!42 = distinct !{!42, !27}
!43 = !{!9, !9, i64 0}
!44 = !{!8, !8, i64 0}
!45 = !{!21, !9, i64 12}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!"branch_weights", i32 4, i32 28}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !27}
!51 = !{!21, !9, i64 28}
!52 = !{!18, !9, i64 24}
end_hunk_0
