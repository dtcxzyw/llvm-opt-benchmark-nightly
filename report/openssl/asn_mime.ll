Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/asn_mime?download=true
inline.NumInlined: 64
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@B64_write_ASN1:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.e, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SMIME_write_ASN1_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree readnone captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %10 = alloca %struct.ASN1_STREAM_ARG_st, align 8 ; 7 uses
  %i.b = alloca [33 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = and i32 %3, 1024
  %.not = icmp eq i32 %i.c, 0
  %.str.5..str.4 = select i1 %.not, ptr @.str.5, ptr @.str.4 ; 3 uses
  %i.d = and i32 %3, 2048
  %.not84 = icmp eq i32 %i.d, 0
  %.075 = select i1 %.not84, ptr @.str.7, ptr @.str.6 ; 21 uses
  %i.e = and i32 %3, 64
  %i.f = icmp ne i32 %i.e, 0
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @RAND_bytes_ex(ptr noundef %8, ptr noundef nonnull %i.b, i64 noundef 32, i32 noundef 0) #7
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %asn1_write_micalg.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.j = load <16 x i8>, ptr %i.b, align 16, !tbaa !10
  %i.k = and <16 x i8> %i.j, splat (i8 15)        ; 3 uses
  %i.l = icmp samesign ult <16 x i8> %i.k, splat (i8 10)
  %i.m = or disjoint <16 x i8> %i.k, splat (i8 48)
  %i.n = add nuw nsw <16 x i8> %i.k, splat (i8 55)
  %i.o = select <16 x i1> %i.l, <16 x i8> %i.m, <16 x i8> %i.n
  store <16 x i8> %i.o, ptr %i.b, align 16, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = load <16 x i8>, ptr %i.p, align 16, !tbaa !10
  %i.r = and <16 x i8> %i.q, splat (i8 15)        ; 3 uses
  %i.s = icmp samesign ult <16 x i8> %i.r, splat (i8 10)
  %i.t = or disjoint <16 x i8> %i.r, splat (i8 48)
  %i.u = add nuw nsw <16 x i8> %i.r, splat (i8 55)
  %i.v = select <16 x i1> %i.s, <16 x i8> %i.t, <16 x i8> %i.u
  store <16 x i8> %i.v, ptr %i.p, align 16, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %i.w, align 16, !tbaa !10
  %i.x = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %.075, ptr noundef nonnull %.str.5..str.4) #7
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %asn1_write_micalg.exit.thread, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.z = call i32 @OPENSSL_sk_num(ptr noundef %6) #7
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i, label %asn1_write_micalg.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.r
  %.02230.i = phi i32 [ %.1.i, %bb.r ], [ 0, %bb.c ]
  %.02329.i = phi i32 [ %.124.i, %bb.r ], [ 0, %bb.c ] ; 11 uses
  %.02528.i = phi i32 [ %i.bc, %bb.r ], [ 0, %bb.c ] ; 2 uses
  %.not.i = icmp eq i32 %.02230.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ab = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.35) #7
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %asn1_write_micalg.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.ad = call ptr @OPENSSL_sk_value(ptr noundef %6, i32 noundef %.02528.i) #7
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.af = call i32 @OBJ_obj2nid(ptr noundef %i.ae) #7
  switch i32 %i.af, label %bb.p [
    i32 1100, label %bb.f
    i32 1101, label %bb.g
    i32 64, label %bb.h
    i32 4, label %bb.i
    i32 672, label %bb.j
    i32 673, label %bb.k
    i32 674, label %bb.l
    i32 809, label %bb.m
    i32 982, label %bb.n
    i32 983, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.36) #7
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %asn1_write_micalg.exit.thread, label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.ai = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.37) #7
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %asn1_write_micalg.exit.thread, label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.ak = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.38) #7
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %asn1_write_micalg.exit.thread, label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.am = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.39) #7
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %asn1_write_micalg.exit.thread, label %bb.r

bb.j:                                             ; preds = %bb.e
  %i.ao = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.40) #7
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %asn1_write_micalg.exit.thread, label %bb.r

bb.k:                                             ; preds = %bb.e
  %i.aq = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.41) #7
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %asn1_write_micalg.exit.thread, label %bb.r

bb.l:                                             ; preds = %bb.e
  %i.as = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.42) #7
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %asn1_write_micalg.exit.thread, label %bb.r

bb.m:                                             ; preds = %bb.e
  %i.au = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.43) #7
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %asn1_write_micalg.exit.thread, label %bb.r

bb.n:                                             ; preds = %bb.e
  %i.aw = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.44) #7
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %asn1_write_micalg.exit.thread, label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.ay = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.45) #7
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %asn1_write_micalg.exit.thread, label %bb.r

bb.p:                                             ; preds = %bb.e
  %.not27.i = icmp eq i32 %.02329.i, 0
  br i1 %.not27.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str.46) #7
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %asn1_write_micalg.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.124.i = phi i32 [ %.02329.i, %bb.f ], [ %.02329.i, %bb.g ], [ %.02329.i, %bb.o ], [ 1, %bb.p ], [ %.02329.i, %bb.h ], [ %.02329.i, %bb.i ], [ %.02329.i, %bb.j ], [ %.02329.i, %bb.k ], [ %.02329.i, %bb.l ], [ %.02329.i, %bb.m ], [ %.02329.i, %bb.n ], [ 1, %bb.q ]
  %.1.i = phi i32 [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.o ], [ 0, %bb.p ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.q ]
  %i.bc = add nuw nsw i32 %.02528.i, 1            ; 2 uses
  %i.bd = call i32 @OPENSSL_sk_num(ptr noundef %6) #7
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph.i, label %asn1_write_micalg.exit, !llvm.loop !26

asn1_write_micalg.exit:                           ; preds = %bb.r, %bb.c
  %i.bf = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.b, ptr noundef nonnull %.075, ptr noundef nonnull %.075, ptr noundef nonnull %.075, ptr noundef nonnull %.075, ptr noundef nonnull %i.b, ptr noundef nonnull %.075) #7
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %asn1_write_micalg.exit.thread, label %bb.s

bb.s:                                             ; preds = %asn1_write_micalg.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  %i.bj = and i32 %3, 32832
  %or.cond.i = icmp eq i32 %i.bj, 64
  br i1 %or.cond.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = call i32 @SMIME_crlf_copy(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %3)
  br label %asn1_output_data.exit

bb.u:                                             ; preds = %bb.s
  %.not22.i = icmp eq ptr %i.bi, null
  br i1 %.not22.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !40 ; 2 uses
  %.not23.i = icmp eq ptr %i.bm, null
  br i1 %.not23.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 378, ptr noundef nonnull @__func__.asn1_output_data) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 202, ptr noundef null) #7
  br label %asn1_output_data.exit.thread

bb.x:                                             ; preds = %bb.v
  store ptr %0, ptr %10, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.bo = call i32 %i.bm(i32 noundef 12, ptr noundef nonnull %i.a, ptr noundef nonnull %7, ptr noundef nonnull %10) #7, !inline_history !27
  %i.bp = icmp slt i32 %i.bo, 1
  br i1 %i.bp, label %asn1_output_data.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !45
  %i.br = call i32 @SMIME_crlf_copy(ptr noundef nonnull %2, ptr noundef %i.bq, i32 noundef %3)
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !40
  %i.bt = call i32 %i.bs(i32 noundef 13, ptr noundef nonnull %i.a, ptr noundef nonnull %7, ptr noundef nonnull %10) #7, !inline_history !27
  %.inv.i = icmp sgt i32 %i.bt, 0
  %.1.i91 = select i1 %.inv.i, i32 %i.br, i32 0   ; 2 uses
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !45 ; 2 uses
  %.not2526.i = icmp eq ptr %i.bu, %0
  br i1 %.not2526.i, label %asn1_output_data.exit, label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %bb.y, %.lr.ph.i92
  %i.bv = phi ptr [ %i.bw, %.lr.ph.i92 ], [ %i.bu, %bb.y ]
  %i.bw = call ptr @BIO_pop(ptr noundef %i.bv) #7 ; 3 uses
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !45
  %i.by = call i32 @BIO_free(ptr noundef %i.bx) #7 ; 0 uses
  store ptr %i.bw, ptr %i.bn, align 8, !tbaa !45
  %.not25.i = icmp eq ptr %i.bw, %0
  br i1 %.not25.i, label %asn1_output_data.exit, label %.lr.ph.i92, !llvm.loop !28

asn1_output_data.exit.thread:                     ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %asn1_write_micalg.exit.thread

asn1_output_data.exit:                            ; preds = %.lr.ph.i92, %bb.t, %bb.y
  %.018.i = phi i32 [ %i.bk, %bb.t ], [ %.1.i91, %bb.y ], [ %.1.i91, %.lr.ph.i92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not89 = icmp eq i32 %.018.i, 0
  br i1 %.not89, label %asn1_write_micalg.exit.thread, label %bb.z

bb.z:                                             ; preds = %asn1_output_data.exit
  %i.bz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %.075, ptr noundef nonnull %i.b, ptr noundef nonnull %.075) #7
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %asn1_write_micalg.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %.str.5..str.4, ptr noundef nonnull %.075, ptr noundef nonnull %.075, ptr noundef nonnull %.075, ptr noundef nonnull %.075) #7
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %asn1_write_micalg.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = call fastcc i32 @B64_write_ASN1(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %7)
  %.not90 = icmp eq i32 %i.cd, 0
  br i1 %.not90, label %asn1_write_micalg.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %.075, ptr noundef nonnull %i.b, ptr noundef nonnull %.075, ptr noundef nonnull %.075) #7
  %i.cf = icmp sgt i32 %i.ce, -1
  br label %asn1_write_micalg.exit.thread

bb.ad:                                            ; preds = %bb.a
  switch i32 %4, label %.fold.split [
    i32 23, label %bb.ak
    i32 1059, label %bb.ae
    i32 22, label %bb.af
    i32 786, label %bb.aj
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  %i.cg = icmp eq i32 %5, 204
  br i1 %i.cg, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not85 = icmp eq ptr %6, null
  br i1 %.not85, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ch = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %6) #7
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ad
  br label %bb.ak

.fold.split:                                      ; preds = %bb.ad
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ad, %.fold.split, %bb.ah, %bb.af, %bb.ae, %bb.aj, %bb.ai
  %.074 = phi ptr [ @.str.3, %bb.ah ], [ @.str.3, %bb.ae ], [ @.str.3, %bb.ad ], [ @.str.3, %bb.af ], [ @.str.3, %bb.ai ], [ @.str.19, %bb.aj ], [ @.str.3, %.fold.split ] ; 2 uses
  %.not86 = phi i1 [ false, %bb.ah ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %bb.af ], [ false, %bb.ai ], [ false, %bb.aj ], [ true, %.fold.split ]
  %.0 = phi ptr [ @.str.16, %bb.ah ], [ @.str.14, %bb.ae ], [ @.str.13, %bb.ad ], [ @.str.15, %bb.af ], [ @.str.17, %bb.ai ], [ @.str.18, %bb.aj ], [ null, %.fold.split ]
  %i.cj = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %.075, ptr noundef nonnull %.074, ptr noundef nonnull %.075) #7
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %asn1_write_micalg.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cl = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %.str.5..str.4) #7
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %asn1_write_micalg.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %.not86, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cn = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %.0) #7
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %asn1_write_micalg.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cp = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %.074, ptr noundef nonnull %.075, ptr noundef nonnull %.075, ptr noundef nonnull %.075) #7
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %asn1_write_micalg.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cr = tail call fastcc i32 @B64_write_ASN1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %7)
  %.not87 = icmp eq i32 %i.cr, 0
  br i1 %.not87, label %asn1_write_micalg.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %.075) #7
  %i.ct = icmp sgt i32 %i.cs, -1
  br label %asn1_write_micalg.exit.thread

asn1_write_micalg.exit.thread:                    ; preds = %bb.d, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %asn1_output_data.exit.thread, %bb.ac, %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ab, %bb.aa, %bb.z, %asn1_output_data.exit, %asn1_write_micalg.exit, %.preheader.preheader, %bb.b, %bb.aq
  %.079.shrunk = phi i1 [ false, %bb.ao ], [ false, %bb.b ], [ false, %asn1_output_data.exit.thread ], [ false, %asn1_output_data.exit ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ap ], [ false, %asn1_write_micalg.exit ], [ false, %.preheader.preheader ], [ false, %bb.ab ], [ false, %bb.ak ], [ false, %bb.al ], [ false, %bb.an ], [ %i.ct, %bb.aq ], [ %i.cf, %bb.ac ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.d ]
  %.079 = zext i1 %.079.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.079
}

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SMIME_write_ASN1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @SMIME_write_ASN1_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null, ptr poison)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define ptr @SMIME_read_ASN1_ex(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 9 uses
  %7 = alloca %struct.mime_param_st, align 8      ; 5 uses
  %8 = alloca %struct.mime_header_st, align 8     ; 5 uses
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call fastcc ptr @mime_parse_hdr(ptr noundef %0) ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 432, ptr noundef nonnull @__func__.SMIME_read_ASN1_ex) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 207, ptr noundef null) #7
  br label %bb.bk

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store ptr @.str.25, ptr %8, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = call i32 @OPENSSL_sk_find(ptr noundef nonnull %i.b, ptr noundef nonnull %8) #7
  %i.f = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.b, i32 noundef %i.e) #7 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = call ptr @OPENSSL_sk_set_thunks(ptr noundef nonnull %i.b, ptr noundef nonnull @sk_MIME_HEADER_freefunc_thunk) #7
  call void @OPENSSL_sk_pop_free(ptr noundef %i.k, ptr noundef nonnull @mime_hdr_free) #7
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 439, ptr noundef nonnull @__func__.SMIME_read_ASN1_ex) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 209, ptr noundef null) #7
  br label %bb.bk

bb.h:                                             ; preds = %bb.f
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(17) @.str.26) #8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.bf

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store ptr @.str.27, ptr %7, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = call i32 @OPENSSL_sk_find(ptr noundef %i.p, ptr noundef nonnull %7) #7
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.s = call ptr @OPENSSL_sk_value(ptr noundef %i.r, i32 noundef %i.q) #7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = call ptr @OPENSSL_sk_set_thunks(ptr noundef nonnull %i.b, ptr noundef nonnull @sk_MIME_HEADER_freefunc_thunk) #7
  call void @OPENSSL_sk_pop_free(ptr noundef %i.x, ptr noundef nonnull @mime_hdr_free) #7
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 450, ptr noundef nonnull @__func__.SMIME_read_ASN1_ex) #7
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 211, ptr noundef null) #7
  br label %bb.bk

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.y = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.v) #8 ; 4 uses
  %i.z = icmp ugt i64 %i.y, 1024
  br i1 %i.z, label %multi_split.exit, label %bb.m

end_hunk_0
