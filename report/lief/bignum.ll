Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/bignum?download=true
inline.NumInlined: 198
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@mbedtls_mpi_gen_prime:bb.a
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dj = call fastcc i32 @mpi_check_small_factors(ptr noundef nonnull %10) ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dl = call fastcc i32 @mpi_miller_rabin(ptr noundef nonnull %0, i64 noundef %.0, ptr noundef %3, ptr noundef %4) ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dn = call fastcc i32 @mpi_miller_rabin(ptr noundef nonnull %10, i64 noundef %.0, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not84 = icmp eq i32 %i.dn, -14
  br i1 %.not84, label %bb.al, label %.loopexit

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.061 = phi i32 [ %i.dl, %bb.ai ], [ %i.dj, %bb.ah ], [ %i.dh, %bb.ag ] ; 2 uses
  %.old2.not = icmp eq i32 %.061, -14
  br i1 %.old2.not, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 12, ptr %i.b, align 8, !tbaa !26
  store i16 1, ptr %i.dd, align 8, !tbaa !21
  store i16 1, ptr %i.de, align 2, !tbaa !20
  store ptr %i.b, ptr %6, align 8, !tbaa !23
  %i.do = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %0, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %6, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.not85 = icmp eq i32 %i.do, 0
  br i1 %.not85, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 6, ptr %i.a, align 8, !tbaa !26
  store i16 1, ptr %i.df, align 8, !tbaa !21
  store i16 1, ptr %i.dg, align 2, !tbaa !20
  store ptr %i.a, ptr %5, align 8, !tbaa !23
  %i.dp = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %5, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not86 = icmp eq i32 %i.dp, 0
  br i1 %.not86, label %bb.ag, label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.am, %bb.al, %bb.ak, %bb.aj, %.backedge.us, %mbedtls_mpi_is_prime_ext.exit.us, %bb.o, %mbedtls_mpi_is_prime_ext.exit.thread, %bb.ad, %bb.ac, %mbedtls_mpi_mod_int.exit.thread
  %.1 = phi i32 [ %i.cz, %bb.ad ], [ %i.cy, %bb.ac ], [ %i.bo, %.backedge.us ], [ 0, %mbedtls_mpi_is_prime_ext.exit.thread ], [ %i.cv, %mbedtls_mpi_mod_int.exit.thread ], [ %.061, %bb.ak ], [ %i.ae, %bb.o ], [ %.0.i.us, %mbedtls_mpi_is_prime_ext.exit.us ], [ %i.do, %bb.al ], [ %i.dn, %bb.aj ], [ %i.dp, %bb.am ], [ %i.bu, %.backedge ] ; 2 uses
  %i.dq = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %.not.i91 = icmp eq ptr %i.dq, null
  br i1 %.not.i91, label %mbedtls_mpi_free.exit, label %bb.an

bb.an:                                            ; preds = %.loopexit
  %i.dr = load i16, ptr %i.g, align 2, !tbaa !20
  %i.ds = zext i16 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.dq, i64 noundef %i.dt) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.an, %.loopexit, %bb.a
  %.062 = phi i32 [ -135, %bb.a ], [ %.1, %.loopexit ], [ %.1, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  ret i32 %.062
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_mpi_self_test(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.mbedtls_mpi, align 8        ; 17 uses
  %2 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 12 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 23 uses
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 14 uses
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 17 uses
  %7 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  store i16 0, ptr %i.b, align 2, !tbaa !20
  store ptr null, ptr %1, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 1, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  store i16 0, ptr %i.d, align 2, !tbaa !20
  store ptr null, ptr %2, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i16 1, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  store i16 0, ptr %i.f, align 2, !tbaa !20
  store ptr null, ptr %3, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !20
  store ptr null, ptr %4, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 1, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.j, align 2, !tbaa !20
  store ptr null, ptr %5, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 1, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 2 uses
  store i16 0, ptr %i.l, align 2, !tbaa !20
  store ptr null, ptr %6, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 1, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 2 uses
  store i16 0, ptr %i.n, align 2, !tbaa !20
  store ptr null, ptr %7, align 8, !tbaa !23
  %i.o = call i32 @mbedtls_mpi_read_string(ptr noundef nonnull %1, i32 noundef 16, ptr noundef nonnull @.str.3) ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = call i32 @mbedtls_mpi_read_string(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.4) ; 2 uses
  %.not45 = icmp eq i32 %i.p, 0
  br i1 %.not45, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.q = call i32 @mbedtls_mpi_read_string(ptr noundef nonnull %3, i32 noundef 16, ptr noundef nonnull @.str.5) ; 2 uses
  %.not46 = icmp eq i32 %i.q, 0
  br i1 %.not46, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.r = call i32 @mbedtls_mpi_mul_mpi(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %3) ; 2 uses
  %.not47 = icmp eq i32 %i.r, 0
  br i1 %.not47, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.s = call i32 @mbedtls_mpi_read_string(ptr noundef nonnull %6, i32 noundef 16, ptr noundef nonnull @.str.6) ; 2 uses
  %.not48 = icmp eq i32 %i.s, 0
  br i1 %.not48, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not49 = icmp eq i32 %0, 0                     ; 8 uses
  br i1 %.not49, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.t = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %4, ptr noundef nonnull %6)
  %.not50 = icmp eq i32 %i.t, 0
  br i1 %.not50, label %bb.j, label %.loopexit.thread141

.thread:                                          ; preds = %bb.f
  %i.u = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  %i.v = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %4, ptr noundef nonnull %6)
  %.not5086 = icmp eq i32 %i.v, 0
  br i1 %.not5086, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  %puts73 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %.loopexit.thread

bb.i:                                             ; preds = %.thread
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.w = call i32 @mbedtls_mpi_div_mpi(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef nonnull %3) ; 2 uses
  %.not51 = icmp eq i32 %i.w, 0
  br i1 %.not51, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.x = call i32 @mbedtls_mpi_read_string(ptr noundef nonnull %6, i32 noundef 16, ptr noundef nonnull @.str.10) ; 2 uses
  %.not52 = icmp eq i32 %i.x, 0
  br i1 %.not52, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.y = call i32 @mbedtls_mpi_read_string(ptr noundef nonnull %7, i32 noundef 16, ptr noundef nonnull @.str.11) ; 2 uses
  %.not53 = icmp eq i32 %i.y, 0
  br i1 %.not53, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  br i1 %.not49, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aa = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %4, ptr noundef nonnull %6)
  %.not54 = icmp eq i32 %i.aa, 0
  br i1 %.not54, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ab = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %5, ptr noundef nonnull %7)
  %.not55 = icmp eq i32 %i.ab, 0
  br i1 %.not55, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not49, label %.loopexit.thread141, label %bb.r

bb.r:                                             ; preds = %bb.q
  %puts72 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %.loopexit.thread

bb.s:                                             ; preds = %bb.p
  br i1 %.not49, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %puts56 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.ac = call fastcc i32 @mbedtls_mpi_exp_mod_optionally_safe(ptr noundef nonnull %4, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) ; 2 uses
  %.not57 = icmp eq i32 %i.ac, 0
  br i1 %.not57, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.ad = call i32 @mbedtls_mpi_read_string(ptr noundef nonnull %6, i32 noundef 16, ptr noundef nonnull @.str.13) ; 2 uses
  %.not58 = icmp eq i32 %i.ad, 0
  br i1 %.not58, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  br i1 %.not49, label %bb.x, label %.thread89

bb.x:                                             ; preds = %bb.w
  %i.ae = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %4, ptr noundef nonnull %6)
  %.not59 = icmp eq i32 %i.ae, 0
  br i1 %.not59, label %bb.aa, label %.loopexit.thread141

.thread89:                                        ; preds = %bb.w
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) ; 0 uses
  %i.ag = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %4, ptr noundef nonnull %6)
  %.not5990 = icmp eq i32 %i.ag, 0
  br i1 %.not5990, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread89
  %puts71 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %.loopexit.thread

bb.z:                                             ; preds = %.thread89
  %puts60 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z
  %i.ah = call i32 @mbedtls_mpi_inv_mod(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %3) ; 2 uses
  %.not61 = icmp eq i32 %i.ah, 0
  br i1 %.not61, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.ai = call i32 @mbedtls_mpi_read_string(ptr noundef nonnull %6, i32 noundef 16, ptr noundef nonnull @.str.15) ; 2 uses
  %.not62 = icmp eq i32 %i.ai, 0
  br i1 %.not62, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not49, label %bb.ad, label %.thread93

bb.ad:                                            ; preds = %bb.ac
  %i.aj = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %4, ptr noundef nonnull %6)
  %.not63 = icmp eq i32 %i.aj, 0
  br i1 %.not63, label %.critedge, label %.loopexit.thread141

.thread93:                                        ; preds = %bb.ac
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) ; 0 uses
  %i.al = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %4, ptr noundef nonnull %6)
  %.not6394 = icmp eq i32 %i.al, 0
  br i1 %.not6394, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread93
  %puts70 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %.loopexit.thread

bb.af:                                            ; preds = %.thread93
  %puts64 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ad, %bb.af
  %i.an = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %4, i64 noundef 693) ; 2 uses
  %.not66 = icmp eq i32 %i.an, 0
  br i1 %.not66, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %.critedge
  %i.ao = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %5, i64 noundef 609) ; 2 uses
  %.not67 = icmp eq i32 %i.ao, 0
  br i1 %.not67, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.ap = call i32 @mbedtls_mpi_gcd(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %.not68 = icmp eq i32 %i.ap, 0
  br i1 %.not68, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.aq = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %1, i64 noundef 21)
  %.not69 = icmp eq i32 %i.aq, 0
  br i1 %.not69, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.as, %bb.ao, %bb.ai
  %.0105.lcssa107.wide = phi i32 [ 0, %bb.ai ], [ 1, %bb.ao ], [ 2, %bb.as ]
  br i1 %.not49, label %.loopexit.thread141, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %.0105.lcssa107.wide) ; 0 uses
  br label %.loopexit.thread

bb.al:                                            ; preds = %bb.ai
  %i.as = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %4, i64 noundef 1764) ; 2 uses
  %.not66.1 = icmp eq i32 %i.as, 0
  br i1 %.not66.1, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.at = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %5, i64 noundef 868) ; 2 uses
  %.not67.1 = icmp eq i32 %i.at, 0
  br i1 %.not67.1, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.au = call i32 @mbedtls_mpi_gcd(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %.not68.1 = icmp eq i32 %i.au, 0
  br i1 %.not68.1, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.av = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %1, i64 noundef 28)
  %.not69.1 = icmp eq i32 %i.av, 0
  br i1 %.not69.1, label %bb.ap, label %bb.aj

bb.ap:                                            ; preds = %bb.ao
  %i.aw = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %4, i64 noundef 768454923) ; 2 uses
  %.not66.2 = icmp eq i32 %i.aw, 0
  br i1 %.not66.2, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.ax = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %5, i64 noundef 542167814) ; 2 uses
  %.not67.2 = icmp eq i32 %i.ax, 0
  br i1 %.not67.2, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.ay = call i32 @mbedtls_mpi_gcd(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %.not68.2 = icmp eq i32 %i.ay, 0
  br i1 %.not68.2, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.az = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %1, i64 noundef 1)
  %.not69.2 = icmp eq i32 %i.az, 0
  br i1 %.not69.2, label %bb.at, label %bb.aj

bb.at:                                            ; preds = %bb.as
  br i1 %.not49, label %.loopexit.thread141, label %bb.au

bb.au:                                            ; preds = %bb.at
  %puts65 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %.loopexit.thread141

.loopexit:                                        ; preds = %bb.ah, %bb.ag, %.critedge, %bb.al, %bb.am, %bb.an, %bb.ap, %bb.aq, %bb.ar, %bb.ab, %bb.aa, %bb.v, %bb.u, %bb.l, %bb.k, %bb.j, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ %i.o, %bb.a ], [ %i.p, %bb.b ], [ %i.q, %bb.c ], [ %i.r, %bb.d ], [ %i.s, %bb.e ], [ %i.at, %bb.am ], [ %i.w, %bb.j ], [ %i.x, %bb.k ], [ %i.y, %bb.l ], [ %i.au, %bb.an ], [ %i.ac, %bb.u ], [ %i.ad, %bb.v ], [ %i.aw, %bb.ap ], [ %i.ah, %bb.aa ], [ %i.ai, %bb.ab ], [ %i.ao, %bb.ag ], [ %i.ap, %bb.ah ], [ %i.ax, %bb.aq ], [ %i.ay, %bb.ar ], [ %i.as, %bb.al ], [ %i.an, %.critedge ] ; 2 uses
  %.not101 = icmp eq i32 %0, 0
  br i1 %.not101, label %.loopexit.thread141, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.h, %bb.r, %bb.y, %bb.ae, %bb.ak, %.loopexit
  %.1139 = phi i32 [ %.1, %.loopexit ], [ 1, %bb.ak ], [ 1, %bb.ae ], [ 1, %bb.y ], [ 1, %bb.r ], [ 1, %bb.h ] ; 2 uses
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %.1139) ; 0 uses
  br label %.loopexit.thread141

.loopexit.thread141:                              ; preds = %bb.g, %bb.x, %bb.ad, %bb.q, %bb.aj, %bb.au, %bb.at, %.loopexit.thread, %.loopexit
  %8 = phi i1 [ false, %.loopexit ], [ true, %.loopexit.thread ], [ false, %bb.at ], [ true, %bb.au ], [ false, %bb.aj ], [ false, %bb.q ], [ false, %bb.ad ], [ false, %bb.x ], [ false, %bb.g ]
  %.1100 = phi i32 [ %.1, %.loopexit ], [ %.1139, %.loopexit.thread ], [ 0, %bb.at ], [ 0, %bb.au ], [ 1, %bb.aj ], [ 1, %bb.q ], [ 1, %bb.ad ], [ 1, %bb.x ], [ 1, %bb.g ]
  %i.bb = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %mbedtls_mpi_free.exit, label %bb.av

bb.av:                                            ; preds = %.loopexit.thread141
  %i.bc = load i16, ptr %i.b, align 2, !tbaa !20
  %i.bd = zext i16 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bb, i64 noundef %i.be) #17
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %.loopexit.thread141, %bb.av
  %i.bf = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %.not.i74 = icmp eq ptr %i.bf, null
  br i1 %.not.i74, label %mbedtls_mpi_free.exit75, label %bb.aw

bb.aw:                                            ; preds = %mbedtls_mpi_free.exit
  %i.bg = load i16, ptr %i.d, align 2, !tbaa !20
  %i.bh = zext i16 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bf, i64 noundef %i.bi) #17
  br label %mbedtls_mpi_free.exit75

mbedtls_mpi_free.exit75:                          ; preds = %mbedtls_mpi_free.exit, %bb.aw
  %i.bj = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %.not.i76 = icmp eq ptr %i.bj, null
  br i1 %.not.i76, label %mbedtls_mpi_free.exit77, label %bb.ax

bb.ax:                                            ; preds = %mbedtls_mpi_free.exit75
  %i.bk = load i16, ptr %i.f, align 2, !tbaa !20
  %i.bl = zext i16 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bj, i64 noundef %i.bm) #17
  br label %mbedtls_mpi_free.exit77

mbedtls_mpi_free.exit77:                          ; preds = %mbedtls_mpi_free.exit75, %bb.ax
  store i16 1, ptr %i.e, align 8, !tbaa !21
  store i16 0, ptr %i.f, align 2, !tbaa !20
  store ptr null, ptr %3, align 8, !tbaa !23
  %i.bn = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i78 = icmp eq ptr %i.bn, null
  br i1 %.not.i78, label %mbedtls_mpi_free.exit79, label %bb.ay

bb.ay:                                            ; preds = %mbedtls_mpi_free.exit77
  %i.bo = load i16, ptr %i.h, align 2, !tbaa !20
  %i.bp = zext i16 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bn, i64 noundef %i.bq) #17
  br label %mbedtls_mpi_free.exit79

mbedtls_mpi_free.exit79:                          ; preds = %mbedtls_mpi_free.exit77, %bb.ay
  %i.br = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i80 = icmp eq ptr %i.br, null
  br i1 %.not.i80, label %mbedtls_mpi_free.exit81, label %bb.az

bb.az:                                            ; preds = %mbedtls_mpi_free.exit79
  %i.bs = load i16, ptr %i.j, align 2, !tbaa !20
  %i.bt = zext i16 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.br, i64 noundef %i.bu) #17
  br label %mbedtls_mpi_free.exit81

mbedtls_mpi_free.exit81:                          ; preds = %mbedtls_mpi_free.exit79, %bb.az
  %i.bv = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %.not.i82 = icmp eq ptr %i.bv, null
  br i1 %.not.i82, label %mbedtls_mpi_free.exit83, label %bb.ba

bb.ba:                                            ; preds = %mbedtls_mpi_free.exit81
  %i.bw = load i16, ptr %i.l, align 2, !tbaa !20
  %i.bx = zext i16 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bv, i64 noundef %i.by) #17
  br label %mbedtls_mpi_free.exit83

mbedtls_mpi_free.exit83:                          ; preds = %mbedtls_mpi_free.exit81, %bb.ba
  %i.bz = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %.not.i84 = icmp eq ptr %i.bz, null
  br i1 %.not.i84, label %mbedtls_mpi_free.exit85, label %bb.bb

bb.bb:                                            ; preds = %mbedtls_mpi_free.exit83
  %i.ca = load i16, ptr %i.n, align 2, !tbaa !20
  %i.cb = zext i16 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.bz, i64 noundef %i.cc) #17
  br label %mbedtls_mpi_free.exit85

mbedtls_mpi_free.exit85:                          ; preds = %mbedtls_mpi_free.exit83, %bb.bb
  br i1 %8, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %mbedtls_mpi_free.exit85
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %mbedtls_mpi_free.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i32 %.1100
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i64 @mbedtls_mpi_core_exp_mod_working_limbs(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @mbedtls_mpi_core_get_mont_r2_unsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @mbedtls_mpi_core_montmul_init(ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_to_mont_rep(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_exp_mod_unsafe(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_exp_mod(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mbedtls_mpi_core_from_mont_rep(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = distinct !{!5, !27}
!6 = distinct !{!6, !27}
!7 = distinct !{!7, !27}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 long", !16, i64 0}
!18 = !{!"short", !12, i64 0}
!19 = !{!"mbedtls_mpi", !17, i64 0, !18, i64 8, !18, i64 10}
!20 = !{!19, !18, i64 10}
!21 = !{!19, !18, i64 8}
!22 = !{i64 858889, i64 858939, i64 859011, i64 859083, i64 859155}
!23 = !{!19, !17, i64 0}
!24 = !{i64 862310, i64 862360, i64 862432, i64 862504, i64 862576}
!25 = !{!"long", !12, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!12, !12, i64 0}
!29 = !{!16, !16, i64 0}
!30 = !{!13, !13, i64 0}
!31 = distinct !{!31, !27, !33, !34}
!32 = distinct !{!32, !27, !34, !33}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !27}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27, !45}
!45 = !{!"llvm.loop.peeled.count", i32 1}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !27}
!54 = !{!17, !17, i64 0}
!55 = !{!18, !18, i64 0}
!56 = !{i64 0, i64 8, !54, i64 8, i64 2, !55, i64 10, i64 2, !55}
!57 = !{i64 856011}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
end_hunk_0
