Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/asn1_encode_test?download=true
inline.NumInlined: 36
inline.NumDeleted: 11
begin_hunk_0_@test_intern:bb.a
  %i.bi = add nsw i32 %.1, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !31
  call void %i.bj(ptr noundef nonnull %i.av) #6, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @CRYPTO_free(ptr noundef %i.at, ptr noundef nonnull @.str.8, i32 noundef 688) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.bl = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.8, i32 noundef 782, ptr noundef nonnull @.str.13, i32 noundef %i.bl, ptr noundef %i.bk) #6
  call void @test_openssl_errors() #6
  %i.bm = add nsw i32 %.1, 1
  br label %bb.t

bb.t:                                             ; preds = %do_decode_custom.exit.thread79, %do_decode_custom.exit.thread, %bb.r, %bb.s
  %.2 = phi i32 [ %i.bi, %bb.r ], [ %.1, %do_decode_custom.exit.thread ], [ %i.bm, %bb.s ], [ %.1, %do_decode_custom.exit.thread79 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 34
  br i1 %exitcond.not, label %bb.u, label %bb.d, !llvm.loop !16

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !32 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !33 ; 2 uses
  %i.br = udiv i64 %i.bo, %i.bq
  %.not97 = icmp ugt i64 %i.bq, %i.bo
  br i1 %.not97, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.ad
  %i.bt = phi i64 [ 0, %.lr.ph ], [ %i.cy, %bb.ad ]
  %.396 = phi i32 [ %.2, %.lr.ph ], [ %.4, %bb.ad ] ; 4 uses
  %.15694 = phi i32 [ 0, %.lr.ph ], [ %i.cx, %bb.ad ] ; 3 uses
  %i.bu = load i64, ptr %i.bp, align 8, !tbaa !33 ; 2 uses
  %i.bv = mul i64 %i.bu, %i.bt
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !12
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.bz = call i32 %i.by(ptr noundef %i.bx, ptr noundef nonnull %i.b) #6, !inline_history !17 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %do_enc_dec.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %i.cc = zext nneg i32 %i.bz to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !12
  %i.cd = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.ce = call ptr %i.cd(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef %i.cc) #6, !inline_history !18 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cg = load i32, ptr %i.bx, align 4, !tbaa !28
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.y, label %do_enc_dec.exit.thread86

do_enc_dec.exit.thread86:                         ; preds = %bb.x
  %i.ci = load ptr, ptr %i.s, align 8, !tbaa !31
  call void %i.ci(ptr noundef null) #6, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.cj, ptr noundef nonnull @.str.8, i32 noundef 568) #6
  br label %do_enc_dec.exit.thread

bb.y:                                             ; preds = %bb.x
  call void @ERR_clear_error() #6
  br label %do_enc_dec.exit.thread84

bb.z:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %bcmp.i.i71 = call i32 @bcmp(ptr nonnull %i.ce, ptr readonly %i.bx, i64 %i.bu)
  %i.cn = icmp eq i32 %bcmp.i.i71, 0
  br i1 %i.cn, label %do_enc_dec.exit.thread84, label %bb.ac

do_enc_dec.exit.thread84:                         ; preds = %bb.y, %bb.aa
  %i.co = load ptr, ptr %i.s, align 8, !tbaa !31
  call void %i.co(ptr noundef %i.ce) #6, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.cp, ptr noundef nonnull @.str.8, i32 noundef 568) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.ad

do_enc_dec.exit.thread:                           ; preds = %bb.v, %do_enc_dec.exit.thread86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.cq = load i32, ptr %i.bx, align 4, !tbaa !28
  %.not62 = icmp eq i32 %i.cq, 0
  br i1 %.not62, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %do_enc_dec.exit.thread
  %i.cr = load ptr, ptr %i.q, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.8, i32 noundef 806, ptr noundef nonnull @.str.15, i32 noundef %.15694, ptr noundef %i.cr) #6
  call void @test_openssl_errors() #6
  %i.cs = add nsw i32 %.396, 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.ct = load ptr, ptr %i.s, align 8, !tbaa !31
  call void %i.ct(ptr noundef nonnull %i.ce) #6, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.cu, ptr noundef nonnull @.str.8, i32 noundef 568) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.cv = load ptr, ptr %i.q, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.8, i32 noundef 813, ptr noundef nonnull @.str.16, i32 noundef %.15694, ptr noundef %i.cv) #6
  %i.cw = add nsw i32 %.396, 1
  br label %bb.ad

bb.ad:                                            ; preds = %do_enc_dec.exit.thread84, %do_enc_dec.exit.thread, %bb.ab, %bb.ac
  %.4 = phi i32 [ %i.cs, %bb.ab ], [ %.396, %do_enc_dec.exit.thread ], [ %i.cw, %bb.ac ], [ %.396, %do_enc_dec.exit.thread84 ] ; 2 uses
  %i.cx = add i32 %.15694, 1                      ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = icmp ugt i64 %i.br, %i.cy
  br i1 %i.cz, label %bb.v, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.ad, %bb.u
  %.3.lcssa = phi i32 [ %.2, %bb.u ], [ %.4, %bb.ad ] ; 2 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !35
  %i.db = call ptr %i.da() #6, !inline_history !20
  %i.dc = load i64, ptr %i.k, align 8, !tbaa !24
  %i.dd = icmp ult i64 %i.dc, 257
  br i1 %i.dd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  call void @OPENSSL_die(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 718) #7
  unreachable

bb.af:                                            ; preds = %._crit_edge
  %i.de = call noalias ptr @CRYPTO_malloc(i64 noundef 256, ptr noundef nonnull @.str.8, i32 noundef 719) #6 ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %do_print_item.exit.thread, label %do_print_item.exit

do_print_item.exit:                               ; preds = %bb.af
  %i.dg = load i64, ptr %i.k, align 8, !tbaa !24
  %i.dh = trunc i64 %i.dg to i32
  %i.di = call i32 @RAND_bytes(ptr noundef nonnull %i.de, i32 noundef %i.dh) #6 ; 0 uses
  %i.dj = load ptr, ptr @bio_err, align 8, !tbaa !37
  %i.dk = call i32 @ASN1_item_print(ptr noundef %i.dj, ptr noundef nonnull %i.de, i32 noundef 0, ptr noundef %i.db, ptr noundef null) #6
  call void @CRYPTO_free(ptr noundef nonnull %i.de, ptr noundef nonnull @.str.8, i32 noundef 725) #6
  %.not61 = icmp eq i32 %i.dk, 0
  br i1 %.not61, label %do_print_item.exit.thread, label %bb.ag

do_print_item.exit.thread:                        ; preds = %bb.af, %do_print_item.exit
  %i.dl = load ptr, ptr %i.q, align 8, !tbaa !29
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.8, i32 noundef 825, ptr noundef nonnull @.str.18, ptr noundef %i.dl) #6
  call void @test_openssl_errors() #6
  %i.dm = add nsw i32 %.3.lcssa, 1
  br label %bb.ag

bb.ag:                                            ; preds = %do_print_item.exit.thread, %do_print_item.exit
  %.5 = phi i32 [ %.3.lcssa, %do_print_item.exit ], [ %i.dm, %do_print_item.exit.thread ]
  %i.dn = icmp eq i32 %.5, 0
  %i.do = zext i1 %i.dn to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  %.057 = phi i32 [ %i.do, %bb.ag ], [ 1, %bb.a ]
  ret i32 %.057
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @test_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @test_openssl_errors() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 65550) i64 @make_custom_der(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40   ; 4 uses
  %i.c = icmp ult i64 %i.b, 32768
  br i1 %i.c, label %der_encode_length.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8, i32 noundef 576) #7
  unreachable

der_encode_length.exit:                           ; preds = %bb.a
  %3 = icmp samesign ult i64 %i.b, 256
  %i.d = icmp samesign ugt i64 %i.b, 127
  %i.e = select i1 %i.d, i64 3, i64 2
  %i.f = select i1 %3, i64 %i.e, i64 4
  %i.g = add nuw nsw i64 %i.f, %i.b               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41   ; 6 uses
  %.not8789 = icmp eq i64 %i.i, 0
  br i1 %.not8789, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %der_encode_length.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.l = add i64 %.090, -1                        ; 2 uses
  %.not87 = icmp eq i64 %i.l, 0
  br i1 %.not87, label %._crit_edge, label %bb.d, !llvm.loop !38

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.090 = phi i64 [ %i.i, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 %.090
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !43
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.c, label %.thread

._crit_edge:                                      ; preds = %bb.c, %der_encode_length.exit
  %.not88 = icmp eq i32 %2, 0
  br i1 %.not88, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.d, %._crit_edge
  %i.p = icmp ult i64 %i.i, 32768
  br i1 %i.p, label %der_encode_length.exit43, label %bb.e

bb.e:                                             ; preds = %.thread
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8, i32 noundef 576) #7
  unreachable

der_encode_length.exit43:                         ; preds = %.thread
  %4 = icmp samesign ult i64 %i.i, 256
  %i.q = icmp samesign ugt i64 %i.i, 127
  %i.r = select i1 %i.q, i64 3, i64 2
  %i.s = select i1 %4, i64 %i.r, i64 4
  %i.t = add nuw nsw i64 %i.s, %i.i               ; 5 uses
  %i.u = icmp samesign ult i64 %i.t, 32768
  br i1 %i.u, label %der_encode_length.exit46, label %bb.f

bb.f:                                             ; preds = %der_encode_length.exit43
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8, i32 noundef 576) #7
  unreachable

der_encode_length.exit46:                         ; preds = %der_encode_length.exit43
  %5 = icmp samesign ult i64 %i.t, 256
  %i.v = icmp samesign ugt i64 %i.t, 127
  %i.w = select i1 %i.v, i64 3, i64 2
  %i.x = select i1 %5, i64 %i.w, i64 4
  %i.y = add nuw nsw i64 %i.x, %i.t
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %der_encode_length.exit46
  %.037 = phi i64 [ %i.y, %der_encode_length.exit46 ], [ 0, %._crit_edge ] ; 3 uses
  %.036 = phi i64 [ %i.t, %der_encode_length.exit46 ], [ 0, %._crit_edge ] ; 5 uses
  %i.z = add nuw nsw i64 %i.g, 3
  %i.aa = add nuw nsw i64 %i.z, %.037             ; 7 uses
  %i.ab = icmp ult i64 %i.aa, 32768
  br i1 %i.ab, label %der_encode_length.exit49, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8, i32 noundef 576) #7
  unreachable

der_encode_length.exit49:                         ; preds = %bb.g
  %6 = icmp samesign ult i64 %i.aa, 256
  %i.ac = icmp samesign ugt i64 %i.aa, 127
  %.19.i47 = select i1 %i.ac, i64 2, i64 1
  %.0.i48 = select i1 %6, i64 %.19.i47, i64 3     ; 2 uses
  %i.ad = add nuw nsw i64 %i.g, 4
  %i.ae = add nuw nsw i64 %i.ad, %.037
  %i.af = add nuw nsw i64 %i.ae, %.0.i48          ; 3 uses
  %i.ag = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.af, ptr noundef nonnull @.str.8, i32 noundef 636) #6 ; 7 uses
  store ptr %i.ag, ptr %1, align 8, !tbaa !12
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.y, label %bb.i

bb.i:                                             ; preds = %der_encode_length.exit49
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store i8 48, ptr %i.ag, align 1, !tbaa !43
  %.not22.i = icmp samesign ult i64 %i.aa, 128
  br i1 %.not22.i, label %der_encode_length.exit52, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = and i64 %i.aa, 32640
  %i.ak = icmp eq i64 %i.aj, 128
  %i.al = trunc nuw nsw i64 %.0.i48 to i8
  %i.am = add nsw i8 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 2 uses
  store i8 %i.am, ptr %i.ai, align 1, !tbaa !43
  br i1 %i.ak, label %der_encode_length.exit52, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = lshr i64 %i.aa, 8
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  %i.aq = or disjoint i8 %i.ap, -128
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !43
  br label %der_encode_length.exit52

der_encode_length.exit52:                         ; preds = %bb.i, %bb.j, %bb.k
  %.1 = phi ptr [ %i.ai, %bb.i ], [ %i.an, %bb.j ], [ %i.ar, %bb.k ] ; 6 uses
  %i.as = trunc i64 %i.aa to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.as, ptr %.1, align 1, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.at, ptr noundef nonnull align 1 dereferenceable(3) @__const.make_custom_der.t_true, i64 3, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %.1, i64 5 ; 2 uses
  store i8 2, ptr %i.au, align 1, !tbaa !43
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !40  ; 8 uses
  %i.ax = icmp ult i64 %i.aw, 32768
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %der_encode_length.exit52
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8, i32 noundef 576) #7
  unreachable

bb.m:                                             ; preds = %der_encode_length.exit52
  %.not22.i55 = icmp samesign ult i64 %i.aw, 128
  br i1 %.not22.i55, label %der_encode_length.exit56, label %bb.n

bb.n:                                             ; preds = %bb.m
  %7 = icmp samesign ult i64 %i.aw, 256
  %i.ay = and i64 %i.aw, 32640
  %i.az = icmp eq i64 %i.ay, 128
  %i.ba = select i1 %7, i8 1, i8 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.1, i64 6 ; 2 uses
  store i8 %i.ba, ptr %i.av, align 1, !tbaa !43
  br i1 %i.az, label %der_encode_length.exit56, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = lshr i64 %i.aw, 8
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  %i.be = or disjoint i8 %i.bd, -128
  %i.bf = getelementptr inbounds nuw i8, ptr %.1, i64 7
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !43
  br label %der_encode_length.exit56

der_encode_length.exit56:                         ; preds = %bb.m, %bb.n, %bb.o
  %.2 = phi ptr [ %i.av, %bb.m ], [ %i.bb, %bb.n ], [ %i.bf, %bb.o ] ; 2 uses
  %i.bg = trunc i64 %i.aw to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  store i8 %i.bg, ptr %.2, align 1, !tbaa !43
  %i.bi = load ptr, ptr %0, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr align 1 %i.bi, i64 %i.aw, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.aw ; 5 uses
  %.not40 = icmp eq i64 %.037, 0
  br i1 %.not40, label %bb.w, label %bb.p

bb.p:                                             ; preds = %der_encode_length.exit56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  store i8 -96, ptr %i.bj, align 1, !tbaa !43
  %.not22.i59 = icmp samesign ult i64 %.036, 128
  br i1 %.not22.i59, label %der_encode_length.exit60, label %bb.q

bb.q:                                             ; preds = %bb.p
  %8 = icmp samesign ult i64 %.036, 256
  %i.bl = and i64 %.036, 32640
  %i.bm = icmp eq i64 %i.bl, 128
  %i.bn = select i1 %8, i8 1, i8 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 2 ; 2 uses
  store i8 %i.bn, ptr %i.bk, align 1, !tbaa !43
  br i1 %i.bm, label %der_encode_length.exit60, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = lshr i64 %.036, 8
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  %i.br = or disjoint i8 %i.bq, -128
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !43
  br label %der_encode_length.exit60

der_encode_length.exit60:                         ; preds = %bb.p, %bb.q, %bb.r
  %.3 = phi ptr [ %i.bk, %bb.p ], [ %i.bo, %bb.q ], [ %i.bs, %bb.r ] ; 5 uses
  %i.bt = trunc i64 %.036 to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 %i.bt, ptr %.3, align 1, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i8 2, ptr %i.bu, align 1, !tbaa !43
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !41  ; 8 uses
  %i.bx = icmp ult i64 %i.bw, 32768
  br i1 %i.bx, label %bb.t, label %bb.s

bb.s:                                             ; preds = %der_encode_length.exit60
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.8, i32 noundef 576) #7
  unreachable

bb.t:                                             ; preds = %der_encode_length.exit60
  %.not22.i63 = icmp samesign ult i64 %i.bw, 128
  br i1 %.not22.i63, label %der_encode_length.exit64, label %bb.u

bb.u:                                             ; preds = %bb.t
  %9 = icmp samesign ult i64 %i.bw, 256
  %i.by = and i64 %i.bw, 32640
  %i.bz = icmp eq i64 %i.by, 128
  %i.ca = select i1 %9, i8 1, i8 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.3, i64 3 ; 2 uses
  store i8 %i.ca, ptr %i.bv, align 1, !tbaa !43
  br i1 %i.bz, label %der_encode_length.exit64, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = lshr i64 %i.bw, 8
  %i.cd = trunc nuw nsw i64 %i.cc to i8
  %i.ce = or disjoint i8 %i.cd, -128
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i64 4
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !43
  br label %der_encode_length.exit64

der_encode_length.exit64:                         ; preds = %bb.t, %bb.u, %bb.v
  %.4 = phi ptr [ %i.bv, %bb.t ], [ %i.cb, %bb.u ], [ %i.cf, %bb.v ] ; 2 uses
  %i.cg = trunc i64 %i.bw to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  store i8 %i.cg, ptr %.4, align 1, !tbaa !43
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr align 1 %i.cj, i64 %i.bw, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bw
  br label %bb.w

bb.w:                                             ; preds = %der_encode_length.exit64, %der_encode_length.exit56
  %.085 = phi ptr [ %i.bj, %der_encode_length.exit56 ], [ %i.ck, %der_encode_length.exit64 ]
  %i.cl = ptrtoint ptr %.085 to i64
  %i.cm = ptrtoint ptr %i.ag to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = icmp eq i64 %i.af, %i.cn
  br i1 %i.co, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8, i32 noundef 665) #7
  unreachable

bb.y:                                             ; preds = %bb.w, %der_encode_length.exit49
  %.038 = phi i64 [ 0, %der_encode_length.exit49 ], [ %i.af, %bb.w ]
  ret i64 %.038
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_clear_error() local_unnamed_addr #1

declare i32 @RAND_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ASN1_item_print(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @ASN1_LONG_DATA_it() #4 {
bb.a:
  ret ptr @ASN1_LONG_DATA_it.local_it
}

; Function Attrs: nounwind uwtable
define internal i32 @i2d_ASN1_LONG_DATA(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ASN1_LONG_DATA_it.local_it) #6
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @d2i_ASN1_LONG_DATA(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @ASN1_item_d2i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @ASN1_LONG_DATA_it.local_it) #6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @ASN1_LONG_DATA_free(ptr noundef %0) #0 {
bb.a:
  tail call void @ASN1_item_free(ptr noundef %0, ptr noundef nonnull @ASN1_LONG_DATA_it.local_it) #6
  ret void
}

declare ptr @ASN1_BOOLEAN_it() #1

declare ptr @LONG_it() #1

declare ptr @ZLONG_it() #1

declare i32 @ASN1_item_i2d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ASN1_item_d2i(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @ASN1_item_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @ASN1_INT32_DATA_it() #4 {
bb.a:
  ret ptr @ASN1_INT32_DATA_it.local_it
}

; Function Attrs: nounwind uwtable
define internal i32 @i2d_ASN1_INT32_DATA(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ASN1_INT32_DATA_it.local_it) #6
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @d2i_ASN1_INT32_DATA(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @ASN1_item_d2i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @ASN1_INT32_DATA_it.local_it) #6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @ASN1_INT32_DATA_free(ptr noundef %0) #0 {
bb.a:
  tail call void @ASN1_item_free(ptr noundef %0, ptr noundef nonnull @ASN1_INT32_DATA_it.local_it) #6
  ret void
}

declare ptr @INT32_it() #1

declare ptr @ZINT32_it() #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @ASN1_UINT32_DATA_it() #4 {
bb.a:
  ret ptr @ASN1_UINT32_DATA_it.local_it
}

; Function Attrs: nounwind uwtable
define internal i32 @i2d_ASN1_UINT32_DATA(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ASN1_UINT32_DATA_it.local_it) #6
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @d2i_ASN1_UINT32_DATA(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @ASN1_item_d2i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @ASN1_UINT32_DATA_it.local_it) #6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @ASN1_UINT32_DATA_free(ptr noundef %0) #0 {
bb.a:
  tail call void @ASN1_item_free(ptr noundef %0, ptr noundef nonnull @ASN1_UINT32_DATA_it.local_it) #6
  ret void
}

declare ptr @UINT32_it() #1

declare ptr @ZUINT32_it() #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @ASN1_INT64_DATA_it() #4 {
bb.a:
  ret ptr @ASN1_INT64_DATA_it.local_it
}

; Function Attrs: nounwind uwtable
define internal i32 @i2d_ASN1_INT64_DATA(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ASN1_INT64_DATA_it.local_it) #6
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @d2i_ASN1_INT64_DATA(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @ASN1_item_d2i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @ASN1_INT64_DATA_it.local_it) #6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @ASN1_INT64_DATA_free(ptr noundef %0) #0 {
bb.a:
  tail call void @ASN1_item_free(ptr noundef %0, ptr noundef nonnull @ASN1_INT64_DATA_it.local_it) #6
  ret void
}

declare ptr @INT64_it() #1

declare ptr @ZINT64_it() #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @ASN1_UINT64_DATA_it() #4 {
bb.a:
  ret ptr @ASN1_UINT64_DATA_it.local_it
}

; Function Attrs: nounwind uwtable
define internal i32 @i2d_ASN1_UINT64_DATA(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ASN1_UINT64_DATA_it.local_it) #6
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @d2i_ASN1_UINT64_DATA(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
end_hunk_0
