Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.02?download=true
inline.NumInlined: 614
inline.NumDeleted: 267
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtCs7ZUl82OSlxp_6rustls5tls13NtB2_16Tls13CipherSuite15can_resume_from:bb.a
  %i.p = tail call { i8, i8 } %i.o(ptr noundef nonnull %i.k) #36 ; 2 uses
  %i.q = extractvalue { i8, i8 } %i.p, 0
  %i.r = extractvalue { i8, i8 } %i.p, 1
  %i.s = icmp eq i8 %i.h, %i.q
  %i.t = icmp ne i8 %i.h, 7
  %i.u = icmp eq i8 %i.i, %i.r
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  %i.v = select i1 %i.s, i1 %or.cond, i1 false
  %.sroa.0.0 = select i1 %i.v, ptr %1, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCs7ZUl82OSlxp_6rustls5tls13NtB2_16Tls13CipherSuite4fips(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef zeroext i1 @_RNvMNtCs7ZUl82OSlxp_6rustls6suitesNtB2_17CipherSuiteCommon4fips(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !15, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !nonnull !5
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d) #36
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !align !15, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !5, !nonnull !5
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull %i.k) #36
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ %i.v, %bb.f ], [ true, %bb.d ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !5, !nonnull !5
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull %i.q) #36
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtCs7ZUl82OSlxp_6rustls8compressNtB2_16CompressionCache15compression_for(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 12 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.018.sroa.0.i = alloca [48 x i8], align 8 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = load i64, ptr %0, align 8, !range !17, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val2 = load ptr, ptr %i.n, align 8            ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val3 = load ptr, ptr %i.o, align 8            ; 3 uses
  br i1 %i.m, label %bb.b, label %bb.de

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.p, align 8, !noalias !565, !noundef !5 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !565, !noundef !5 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = tail call fastcc noundef ptr @_RNvMNtCs7ZUl82OSlxp_6rustls8compressNtB2_16CompressionCache20uncached_compression(ptr noundef nonnull %1, ptr readonly %.val2, ptr readonly %.val3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls8compressNtB2_16CompressionCache20compression_for_impl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !565
  call void @_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake23CertificatePayloadTls13NtNtB6_5codec5Codec12get_encodingB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3)
  %i.x = invoke { i16, i16 } %.val3(ptr noundef nonnull %1)
          to label %bb.e unwind label %.thread.i

.thread.i:                                        ; preds = %bb.db, %bb.cz, %bb.aa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1D_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEB2P_.exit.i, %bb.z, %bb.x, %bb.k, %bb.i, %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.thread40.thread85.i

bb.e:                                             ; preds = %bb.d
  %.fr = freeze { i16, i16 } %i.x                 ; 2 uses
  %i.z = extractvalue { i16, i16 } %.fr, 0        ; 4 uses
  %i.aa = extractvalue { i16, i16 } %.fr, 1       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !565
  invoke void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB14_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEE4lockB2g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 8 %i.q)
          to label %bb.f unwind label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.j, align 8, !range !17, !noalias !565, !noundef !5
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !565, !nonnull !5, !align !15, !noundef !5 ; 14 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !16, !noalias !565, !noundef !5 ; 4 uses
  br i1 %i.ac, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = trunc nuw i8 %i.ag to i1
  br i1 %i.ai, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !565
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.am = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc.i unwind label %.thread.i

.noexc.i:                                         ; preds = %bb.i
  br i1 %i.am, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc.i
  store atomic i8 1, ptr %i.ah monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.j, %.noexc.i, %bb.h, %bb.g
  %i.an = atomicrmw xchg ptr %i.ae, i32 0 release, align 4
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1W_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEEB38_.exit.i, !prof !4

bb.k:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1W_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEEB38_.exit.i unwind label %.thread.i

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !565
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 6 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !566, !noundef !5
  %.val.i.i = load i64, ptr %i.ap, align 8, !alias.scope !566 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 4 uses
  %.val2.i.i = load i64, ptr %i.as, align 8, !alias.scope !566
  %i.at = invoke { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs7ZUl82OSlxp_6rustls(i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
          to label %.noexc61.i unwind label %bb.p ; 2 uses

.noexc61.i:                                       ; preds = %bb.l
  %i.au = extractvalue { i64, i64 } %i.at, 0      ; 3 uses
  %i.av = extractvalue { i64, i64 } %i.at, 1      ; 2 uses
  %i.aw = sub i64 %i.av, %i.au                    ; 3 uses
  %i.ax = icmp eq i64 %i.av, %i.au
  br i1 %i.ax, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.noexc61.i
  %i.ay = add i64 %i.au, %.val2.i.i               ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.ay, %.val.i.i
  %i.az = select i1 %.not.i.i.i, i64 0, i64 %.val.i.i
  %.sroa.04.0.i.i.i = sub nuw i64 %i.ay, %i.az    ; 4 uses
  %i.ba = sub i64 %.val.i.i, %.sroa.04.0.i.i.i    ; 2 uses
  %.not11.i.i.i = icmp ult i64 %i.ba, %i.aw
  br i1 %.not11.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = sub nuw i64 %i.aw, %i.ba
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bc = add i64 %.sroa.04.0.i.i.i, %i.aw
  br label %bb.q

bb.p:                                             ; preds = %bb.co, %bb.l
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread34.i

bb.q:                                             ; preds = %bb.o, %bb.n, %.noexc61.i
  %.sroa.0.0.i.i = phi i64 [ %.sroa.04.0.i.i.i, %bb.o ], [ %.sroa.04.0.i.i.i, %bb.n ], [ 0, %.noexc61.i ]
  %.sroa.5.0.i.i = phi i64 [ %i.bc, %bb.o ], [ %.val.i.i, %bb.n ], [ 0, %.noexc61.i ]
  %.sroa.11.0.i.i = phi i64 [ 0, %bb.o ], [ %i.bb, %bb.n ], [ 0, %.noexc61.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !566, !nonnull !5, !noundef !5 ; 46 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.0.0.i.i ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.5.0.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.11.0.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !565 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !565, !nonnull !5 ; 2 uses
  %i.bm = icmp eq i16 %i.z, 3
  br i1 %i.bm, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.q, %.split.us.backedge
  %.sroa.06.sroa.8.0.i.us = phi ptr [ %.sroa.06.sroa.8.164.i.us, %.split.us.backedge ], [ %i.bg, %bb.q ] ; 4 uses
  %.sroa.06.sroa.0.0.i.us = phi ptr [ %i.bp, %.split.us.backedge ], [ %i.bf, %bb.q ] ; 2 uses
  %.sroa.1111.sroa.6.0.i.us = phi ptr [ %.sroa.1111.sroa.6.165.i.us, %.split.us.backedge ], [ %i.bh, %bb.q ] ; 3 uses
  %.sroa.1111.sroa.0.0.i.us = phi ptr [ %.sroa.1111.sroa.0.166.i.us, %.split.us.backedge ], [ %i.be, %bb.q ] ; 3 uses
  %.sroa.16.0.i.us = phi i64 [ %i.bq, %.split.us.backedge ], [ 0, %bb.q ] ; 2 uses
  %i.bn = icmp eq ptr %.sroa.06.sroa.0.0.i.us, %.sroa.06.sroa.8.0.i.us
  br i1 %i.bn, label %bb.r, label %.thread58.i.us

bb.r:                                             ; preds = %.split.us
  %i.bo = icmp eq ptr %.sroa.1111.sroa.0.0.i.us, %.sroa.1111.sroa.6.0.i.us
  br i1 %i.bo, label %.thread49.i, label %.thread58.i.us

.thread58.i.us:                                   ; preds = %bb.r, %.split.us
  %.sink6.i.i67.i.us = phi ptr [ %.sroa.1111.sroa.0.0.i.us, %bb.r ], [ %.sroa.06.sroa.0.0.i.us, %.split.us ] ; 2 uses
  %.sroa.1111.sroa.0.166.i.us = phi ptr [ %.sroa.06.sroa.8.0.i.us, %bb.r ], [ %.sroa.1111.sroa.0.0.i.us, %.split.us ]
  %.sroa.1111.sroa.6.165.i.us = phi ptr [ %.sroa.06.sroa.8.0.i.us, %bb.r ], [ %.sroa.1111.sroa.6.0.i.us, %.split.us ]
  %.sroa.06.sroa.8.164.i.us = phi ptr [ %.sroa.1111.sroa.6.0.i.us, %bb.r ], [ %.sroa.06.sroa.8.0.i.us, %.split.us ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sink6.i.i67.i.us, i64 8
  %i.bq = add i64 %.sroa.16.0.i.us, 1
  %i.br = load ptr, ptr %.sink6.i.i67.i.us, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bt = load i16, ptr %i.bs, align 8, !range !567, !noundef !5
  %i.bu = icmp eq i16 %i.bt, 3
  br i1 %i.bu, label %bb.s, label %.split.us.backedge

bb.s:                                             ; preds = %.thread58.i.us
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 74
  %i.bw = load i16, ptr %i.bv, align 2, !noundef !5
  %i.bx = icmp eq i16 %i.bw, %i.aa
  br i1 %i.bx, label %bb.t, label %.split.us.backedge

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !noundef !5
  %i.ca = icmp eq i64 %i.bz, %i.bj
  br i1 %i.ca, label %bb.u, label %.split.us.backedge

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5
  %bcmp.i.us = call i32 @bcmp(ptr nonnull %i.cc, ptr nonnull %i.bl, i64 %i.bj)
  %i.cd = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.cd, label %.split6.us, label %.split.us.backedge

.split.us.backedge:                               ; preds = %bb.u, %bb.t, %bb.s, %.thread58.i.us
  br label %.split.us

.split:                                           ; preds = %bb.q, %.split.backedge
  %.sroa.06.sroa.8.0.i = phi ptr [ %.sroa.06.sroa.8.164.i, %.split.backedge ], [ %i.bg, %bb.q ] ; 4 uses
  %.sroa.06.sroa.0.0.i = phi ptr [ %i.cg, %.split.backedge ], [ %i.bf, %bb.q ] ; 2 uses
  %.sroa.1111.sroa.6.0.i = phi ptr [ %.sroa.1111.sroa.6.165.i, %.split.backedge ], [ %i.bh, %bb.q ] ; 3 uses
  %.sroa.1111.sroa.0.0.i = phi ptr [ %.sroa.1111.sroa.0.166.i, %.split.backedge ], [ %i.be, %bb.q ] ; 3 uses
  %.sroa.16.0.i = phi i64 [ %i.ch, %.split.backedge ], [ 0, %bb.q ] ; 2 uses
  %i.ce = icmp eq ptr %.sroa.06.sroa.0.0.i, %.sroa.06.sroa.8.0.i
  br i1 %i.ce, label %bb.v, label %.thread58.i

bb.v:                                             ; preds = %.split
  %i.cf = icmp eq ptr %.sroa.1111.sroa.0.0.i, %.sroa.1111.sroa.6.0.i
  br i1 %i.cf, label %.thread49.i, label %.thread58.i

.thread58.i:                                      ; preds = %bb.v, %.split
  %.sink6.i.i67.i = phi ptr [ %.sroa.1111.sroa.0.0.i, %bb.v ], [ %.sroa.06.sroa.0.0.i, %.split ] ; 2 uses
  %.sroa.1111.sroa.0.166.i = phi ptr [ %.sroa.06.sroa.8.0.i, %bb.v ], [ %.sroa.1111.sroa.0.0.i, %.split ]
  %.sroa.1111.sroa.6.165.i = phi ptr [ %.sroa.06.sroa.8.0.i, %bb.v ], [ %.sroa.1111.sroa.6.0.i, %.split ]
  %.sroa.06.sroa.8.164.i = phi ptr [ %.sroa.1111.sroa.6.0.i, %bb.v ], [ %.sroa.06.sroa.8.0.i, %.split ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sink6.i.i67.i, i64 8
  %i.ch = add i64 %.sroa.16.0.i, 1
  %i.ci = load ptr, ptr %.sink6.i.i67.i, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load i16, ptr %i.cj, align 8, !range !567, !noundef !5
  %i.cl = icmp eq i16 %i.ck, %i.z
  br i1 %i.cl, label %bb.bi, label %.split.backedge

.thread49.i:                                      ; preds = %bb.v, %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.cn = trunc nuw i8 %i.ag to i1
  br i1 %i.cn, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %.thread49.i
  %i.co = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !565
  %i.cp = and i64 %i.co, 9223372036854775807
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  %i.cr = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc63.i unwind label %.thread.i

.noexc63.i:                                       ; preds = %bb.x
  br i1 %i.cr, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc63.i
  store atomic i8 1, ptr %i.cm monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.y, %.noexc63.i, %bb.w, %.thread49.i
  %i.cs = atomicrmw xchg ptr %i.ae, i32 0 release, align 4
  %i.ct = icmp eq i32 %i.cs, 2
  br i1 %i.ct, label %bb.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1D_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEB2P_.exit.i, !prof !4

bb.z:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ae)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1D_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEB2P_.exit.i unwind label %.thread.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1D_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEB2P_.exit.i: ; preds = %bb.z, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.cu = load i64, ptr %i.bi, align 8, !noalias !565, !noundef !5 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  call void @llvm.assume(i1 %i.cv)
  %i.cw = trunc i64 %i.cu to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !565
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.aa unwind label %.thread.i

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1D_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEB2P_.exit.i
  invoke void %.val2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, i1 noundef zeroext true)
          to label %bb.ab unwind label %.thread.i

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !565
  %i.cx = load i64, ptr %i.h, align 8, !range !9, !noalias !565, !noundef !5
  %i.cy = icmp eq i64 %i.cx, -1
  br i1 %i.cy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !565
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1D_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEB2P_.exit100.i

bb.ad:                                            ; preds = %bb.ab
  %.sroa.018.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.018.sroa.0.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.sroa.0.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.018.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !565
  store i64 1, ptr %i.c, align 8, !noalias !565
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.cz, align 8, !noalias !565
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.018.sroa.0.i, i64 48, i1 false), !noalias !565
  %.sroa.018.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i16 %i.z, ptr %.sroa.018.sroa.5.0..sroa_idx.i, align 8, !noalias !565
  %.sroa.018.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 66
  store i16 %i.aa, ptr %.sroa.018.sroa.6.0..sroa_idx.i, align 2, !noalias !565
  %.sroa.018.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.cw, ptr %.sroa.018.sroa.7.0..sroa_idx.i, align 4, !noalias !565
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i16 %i.z, ptr %.sroa.519.0..sroa_idx.i, align 8, !noalias !565
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 74
  store i16 %i.aa, ptr %.sroa.6.0..sroa_idx.i, align 2, !noalias !565
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !568
  %i.db = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 2, 801) 80, i64 noundef range(i64 1, 9) 8) #31, !noalias !568 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ae, label %bb.ah, !prof !4

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #30
          to label %.noexc65.i unwind label %bb.af

.noexc65.i:                                       ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c) #33
          to label %common.resume.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.db, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !565
  store ptr %i.db, ptr %i.f, align 8, !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !565
  invoke void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB14_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEE4lockB2g_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %i.q)
          to label %bb.ai unwind label %.thread77.i

.thread77.i:                                      ; preds = %bb.an, %bb.al, %bb.ah
  %lpad.thr_comm75.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread68.i

bb.ai:                                            ; preds = %bb.ah
  %i.df = load i64, ptr %i.e, align 8, !range !17, !noalias !565, !noundef !5
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !565, !nonnull !5, !align !15, !noundef !5 ; 14 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dk = load i8, ptr %i.dj, align 8, !range !16, !noalias !565, !noundef !5 ; 3 uses
  br i1 %i.dg, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dm = trunc nuw i8 %i.dk to i1
  br i1 %i.dm, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i66.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dn = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !565
  %i.do = and i64 %i.dn, 9223372036854775807
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i66.i, label %bb.al, !prof !7

bb.al:                                            ; preds = %bb.ak
  %i.dq = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc67.i unwind label %.thread77.i

.noexc67.i:                                       ; preds = %bb.al
  br i1 %i.dq, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i66.i, label %bb.am

bb.am:                                            ; preds = %.noexc67.i
  store atomic i8 1, ptr %i.dl monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i66.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i66.i: ; preds = %bb.am, %.noexc67.i, %bb.ak, %bb.aj
  %i.dr = atomicrmw xchg ptr %i.di, i32 0 release, align 4
  %i.ds = icmp eq i32 %i.dr, 2
  br i1 %i.ds, label %bb.an, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1W_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEEB38_.exit69.i, !prof !4

bb.an:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i66.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.di)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1W_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEEB38_.exit69.i unwind label %.thread77.i

bb.ao:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !565
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 5 uses
  %i.du = load i64, ptr %i.dt, align 8, !noundef !5
  %i.dv = icmp eq i64 %i.du, %i.r
  br i1 %i.dv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.dw = icmp eq i64 %i.r, 0
  br i1 %i.dw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEB1z_.exit.i, label %bb.as

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEB1z_.exit.i, %bb.ao
  %i.dx = load ptr, ptr %i.f, align 8, !noalias !565, !nonnull !5, !noundef !5
  %i.dy = atomicrmw add ptr %i.dx, i64 1 monotonic, align 8
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.az, label %bb.au

bb.ar:                                            ; preds = %bb.at
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body73.i

.body73.i:                                        ; preds = %bb.ax, %bb.aw, %bb.ar
  %eh.lpad-body74.i = phi { ptr, i32 } [ %i.ea, %bb.ar ], [ %i.eu, %bb.ax ], [ %i.eu, %bb.aw ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1D_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEB2P_(ptr nonnull %i.di, i8 %i.dk) #33
          to label %.thread68.i unwind label %bb.be

bb.as:                                            ; preds = %bb.ap
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !569, !noundef !5 ; 2 uses
  %i.ee = add i64 %i.ed, 1                        ; 2 uses
  %i.ef = load i64, ptr %i.eb, align 8, !range !10, !alias.scope !569, !noundef !5 ; 3 uses
  %.not.i.i = icmp ult i64 %i.ee, %i.ef
  %i.eg = select i1 %.not.i.i, i64 0, i64 %i.ef
  %.sroa.01.0.i.i = sub nuw i64 %i.ee, %i.eg
  store i64 %.sroa.01.0.i.i, ptr %i.ec, align 8, !alias.scope !569
  %i.eh = add i64 %i.r, -1                        ; 2 uses
  store i64 %i.eh, ptr %i.dt, align 8, !alias.scope !569
  %i.ei = icmp ult i64 %i.eh, %i.ef
  call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !569, !nonnull !5, !noundef !5
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ed
  %i.em = load ptr, ptr %i.el, align 8, !noalias !569, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.em, ptr %i.d, align 8, !noalias !565
  %i.en = atomicrmw add ptr %i.em, i64 -1 release, align 8, !noalias !570
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEB1z_.exit.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #35
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEB1z_.exit.i unwind label %bb.ar

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEB1z_.exit.i: ; preds = %bb.at, %bb.as, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !565
  br label %bb.aq

bb.au:                                            ; preds = %bb.aq
  %i.ep = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %i.eq = load ptr, ptr %i.f, align 8, !noalias !565, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !565
  store ptr %i.eq, ptr %i.b, align 8, !noalias !572
  %i.er = load i64, ptr %i.dt, align 8, !alias.scope !571, !noundef !5 ; 2 uses
  %i.es = load i64, ptr %i.ep, align 8, !range !10, !alias.scope !571, !noundef !5 ; 2 uses
  %i.et = icmp eq i64 %i.er, %i.es
  br i1 %i.et, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs4_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEE4growB1q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ep)
          to label %._crit_edge.i.i unwind label %bb.aw

._crit_edge.i.i:                                  ; preds = %bb.av
  %.pre.i.i = load i64, ptr %i.dt, align 8, !alias.scope !571
  %.pre6.i.i = load i64, ptr %i.ep, align 8, !range !10, !alias.scope !571
  br label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = atomicrmw add ptr %i.eq, i64 -1 release, align 8, !noalias !573
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.ax, label %.body73.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #35
          to label %.body73.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.az:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

bb.ba:                                            ; preds = %._crit_edge.i.i, %bb.au
  %i.ey = phi i64 [ %.pre6.i.i, %._crit_edge.i.i ], [ %i.es, %bb.au ] ; 2 uses
  %i.ez = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.er, %bb.au ] ; 2 uses
  %i.fa = add i64 %i.ez, 1
  store i64 %i.fa, ptr %i.dt, align 8, !alias.scope !571
  %i.fb = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !571, !noundef !5
  %i.fd = add i64 %i.fc, %i.ez                    ; 2 uses
  %.not.i72.i = icmp ult i64 %i.fd, %i.ey
  %i.fe = select i1 %.not.i72.i, i64 0, i64 %i.ey
  %.sroa.03.0.i.i = sub nuw i64 %i.fd, %i.fe
  %i.ff = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !571, !nonnull !5, !noundef !5
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.sroa.03.0.i.i
  store ptr %i.eq, ptr %i.fh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !565
  %i.fi = load ptr, ptr %i.f, align 8, !noalias !565, !nonnull !5, !noundef !5
  %i.fj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.fk = trunc nuw i8 %i.dk to i1
  br i1 %i.fk, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i75.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fl = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !565
  %i.fm = and i64 %i.fl, 9223372036854775807
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i75.i, label %.noexc76.i, !prof !7

.noexc76.i:                                       ; preds = %bb.bb
  %i.fo = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.fo, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i75.i, label %bb.bc

bb.bc:                                            ; preds = %.noexc76.i
  store atomic i8 1, ptr %i.fj monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i75.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i75.i: ; preds = %bb.bc, %.noexc76.i, %bb.bb, %bb.ba
  %i.fp = atomicrmw xchg ptr %i.di, i32 0 release, align 4
  %i.fq = icmp eq i32 %i.fp, 2
  br i1 %i.fq, label %bb.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1D_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEB2P_.exit78.i, !prof !4

bb.bd:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i75.i
  call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.di)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1D_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEB2P_.exit78.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1D_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEB2P_.exit78.i: ; preds = %bb.bd, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !565
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls8compressNtB2_16CompressionCache20compression_for_impl.exit

bb.be:                                            ; preds = %.thread40.thread85.i, %.thread34.i, %bb.cw, %bb.bh, %.body73.i
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1W_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEEB38_.exit69.i: ; preds = %bb.an, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.fs = load ptr, ptr %i.f, align 8, !alias.scope !576, !noalias !565, !nonnull !5, !noundef !5
  %i.ft = atomicrmw add ptr %i.fs, i64 -1 release, align 8, !noalias !576
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.bf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEB1d_.exit.i

bb.bf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1W_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEEB38_.exit69.i
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #35
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEB1d_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEB1d_.exit.i: ; preds = %bb.bf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtB1W_4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEEEEB38_.exit69.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !565
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEB1d_.exit.i
  %.sroa.0.1.i = phi ptr [ %.sroa.0.3.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryEEB1d_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !565
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls8compressNtB2_16CompressionCache20compression_for_impl.exit

.thread68.i:                                      ; preds = %.body73.i, %.thread77.i
  %.pn72.i = phi { ptr, i32 } [ %lpad.thr_comm75.i, %.thread77.i ], [ %eh.lpad-body74.i, %.body73.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !577)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.fv = load ptr, ptr %i.f, align 8, !alias.scope !579, !noalias !565, !nonnull !5, !noundef !5
  %i.fw = atomicrmw add ptr %i.fv, i64 -1 release, align 8, !noalias !579
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.bh, label %common.resume.i

bb.bh:                                            ; preds = %.thread68.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress21CompressionCacheEntryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #35
          to label %common.resume.i unwind label %bb.be

bb.bi:                                            ; preds = %.thread58.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.fz = load i64, ptr %i.fy, align 8, !noundef !5
  %i.ga = icmp eq i64 %i.fz, %i.bj
  br i1 %i.ga, label %bb.bj, label %.split.backedge

bb.bj:                                            ; preds = %bb.bi
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !nonnull !5, !noundef !5
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.gc, ptr nonnull %i.bl, i64 %i.bj)
  %i.gd = icmp eq i32 %bcmp.i, 0
  br i1 %i.gd, label %.split6.us, label %.split.backedge

.split.backedge:                                  ; preds = %bb.bj, %bb.bi, %.thread58.i
  br label %.split

.split6.us:                                       ; preds = %bb.bj, %bb.u
  %.us-phi = phi i64 [ %.sroa.16.0.i.us, %bb.u ], [ %.sroa.16.0.i, %bb.bj ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.ge = load i64, ptr %i.aq, align 8, !alias.scope !580, !noundef !5 ; 3 uses
  %.not.i82.i = icmp ugt i64 %i.ge, %.us-phi
  br i1 %.not.i82.i, label %bb.bk, label %bb.co

bb.bk:                                            ; preds = %.split6.us
  %i.gf = load i64, ptr %i.as, align 8, !alias.scope !580, !noundef !5 ; 11 uses
  %i.gg = add i64 %i.gf, %.us-phi                 ; 2 uses
  %i.gh = load i64, ptr %i.ap, align 8, !range !10, !alias.scope !580, !noundef !5 ; 16 uses
  %.not22.i.i = icmp ult i64 %i.gg, %i.gh
  %i.gi = select i1 %.not22.i.i, i64 0, i64 %i.gh
  %.sroa.01.0.i84.i = sub nuw i64 %i.gg, %i.gi    ; 5 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.01.0.i84.i ; 10 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !580, !nonnull !5, !noundef !5 ; 7 uses
  %i.gl = xor i64 %.us-phi, -1
  %i.gm = add i64 %i.ge, %i.gl                    ; 12 uses
  %i.gn = icmp ult i64 %i.gm, %.us-phi
  br i1 %i.gn, label %bb.bz, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.go = add i64 %i.gf, 1                        ; 2 uses
  %.not23.i.i = icmp ult i64 %i.go, %i.gh
  %i.gp = select i1 %.not23.i.i, i64 0, i64 %i.gh
  %.sroa.05.0.i.i = sub nuw i64 %i.go, %i.gp      ; 10 uses
  store i64 %.sroa.05.0.i.i, ptr %i.as, align 8, !alias.scope !580
  %i.gq = icmp eq i64 %i.gf, %.sroa.05.0.i.i
  %i.gr = icmp eq i64 %.us-phi, 0
  %or.cond.i.i.i = or i1 %i.gr, %i.gq
  br i1 %or.cond.i.i.i, label %bb.cn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gs = sub i64 %.sroa.05.0.i.i, %i.gf          ; 2 uses
  %i.gt = add i64 %i.gs, %i.gh                    ; 2 uses
  %.not.i.i85.i = icmp ult i64 %i.gt, %i.gh
  %..i.i.i = select i1 %.not.i.i85.i, i64 %i.gt, i64 %i.gs
  %i.gu = icmp ult i64 %..i.i.i, %.us-phi         ; 2 uses
  %i.gv = sub i64 %i.gh, %i.gf                    ; 10 uses
  %i.gw = sub i64 %i.gh, %.sroa.05.0.i.i          ; 11 uses
  %i.gx = icmp ult i64 %i.gv, %.us-phi
  %i.gy = icmp ult i64 %i.gw, %.us-phi            ; 3 uses
  br i1 %i.gx, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.gy, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  br i1 %i.gu, label %bb.bu, label %bb.bt

bb.bp:                                            ; preds = %bb.bn
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.gf
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.05.0.i.i
  %i.hb = shl nuw nsw i64 %.us-phi, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr nonnull align 8 %i.gz, i64 %i.hb, i1 false), !noalias !580
  br label %bb.cn

bb.bq:                                            ; preds = %bb.bn
  br i1 %i.gu, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hc = getelementptr [8 x i8], ptr %i.be, i64 %i.gf ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.05.0.i.i
  %i.he = shl nuw nsw i64 %i.gw, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hd, ptr nonnull align 8 %i.hc, i64 %i.he, i1 false), !noalias !580
  %i.hf = sub nuw i64 %.us-phi, %i.gw
  %i.hg = getelementptr [8 x i8], ptr %i.hc, i64 %i.gw
  %i.hh = shl nuw nsw i64 %i.hf, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.hg, i64 %i.hh, i1 false), !noalias !580
  br label %bb.cn

bb.bs:                                            ; preds = %bb.bq
  %i.hi = sub nuw i64 %.us-phi, %i.gw
  %i.hj = getelementptr [8 x i8], ptr %i.be, i64 %i.gf ; 2 uses
  %i.hk = getelementptr [8 x i8], ptr %i.hj, i64 %i.gw
  %i.hl = shl nuw nsw i64 %i.hi, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.hk, i64 %i.hl, i1 false), !noalias !580
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.05.0.i.i
  %i.hn = shl nuw nsw i64 %i.gw, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hm, ptr nonnull align 8 %i.hj, i64 %i.hn, i1 false), !noalias !580
  br label %bb.cn

bb.bt:                                            ; preds = %bb.bo
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.gf ; 2 uses
  %i.hp = getelementptr [8 x i8], ptr %i.be, i64 %.sroa.05.0.i.i ; 3 uses
  %i.hq = shl nuw nsw i64 %i.gv, 3                ; 2 uses
  %i.hr = getelementptr [8 x i8], ptr %i.hp, i64 %i.gv ; 2 uses
  br i1 %i.gy, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %bb.bo
  br i1 %i.gy, label %bb.by, label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull align 8 %i.ho, i64 %i.hq, i1 false), !noalias !580
  %i.hs = sub nuw i64 %.us-phi, %i.gv
  %i.ht = shl nuw nsw i64 %i.hs, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.hr, ptr nonnull align 8 %i.be, i64 %i.ht, i1 false), !noalias !580
  br label %bb.cn

bb.bw:                                            ; preds = %bb.bt
  %i.hu = sub i64 %i.gw, %i.gv                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull align 8 %i.ho, i64 %i.hq, i1 false), !noalias !580
  %i.hv = shl nuw nsw i64 %i.hu, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.hr, ptr nonnull align 8 %i.be, i64 %i.hv, i1 false), !noalias !580
  %i.hw = sub nuw i64 %.us-phi, %i.gw
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.hu
  %i.hy = shl nuw nsw i64 %i.hw, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 8 %i.hx, i64 %i.hy, i1 false), !noalias !580
  br label %bb.cn

bb.bx:                                            ; preds = %bb.bu
  %i.hz = sub nuw i64 %.us-phi, %i.gv
  %i.ia = getelementptr [8 x i8], ptr %i.be, i64 %.sroa.05.0.i.i ; 2 uses
  %i.ib = getelementptr [8 x i8], ptr %i.ia, i64 %i.gv
  %i.ic = shl nuw nsw i64 %i.hz, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ib, ptr nonnull align 8 %i.be, i64 %i.ic, i1 false), !noalias !580
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.gf
  %i.ie = shl nuw nsw i64 %i.gv, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr nonnull align 8 %i.id, i64 %i.ie, i1 false), !noalias !580
  br label %bb.cn

bb.by:                                            ; preds = %bb.bu
  %i.if = sub i64 %i.gv, %i.gw                    ; 3 uses
  %i.ig = sub nuw i64 %.us-phi, %i.gv
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.if
  %i.ii = shl nuw nsw i64 %i.ig, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr nonnull align 8 %i.be, i64 %i.ii, i1 false), !noalias !580
  %i.ij = sub i64 %i.gh, %i.if
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ij
  %i.il = shl nuw nsw i64 %i.if, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 8 %i.ik, i64 %i.il, i1 false), !noalias !580
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.gf
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.05.0.i.i
  %i.io = shl nuw nsw i64 %i.gw, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.in, ptr nonnull align 8 %i.im, i64 %i.io, i1 false), !noalias !580
  br label %bb.cn

bb.bz:                                            ; preds = %bb.bk
  %i.ip = add i64 %.sroa.01.0.i84.i, 1            ; 2 uses
  %.not24.i.i = icmp ult i64 %i.ip, %i.gh
  %i.iq = select i1 %.not24.i.i, i64 0, i64 %i.gh
  %.sroa.04.0.i.i = sub nuw i64 %i.ip, %i.iq      ; 9 uses
  %i.ir = icmp eq i64 %.sroa.04.0.i.i, %.sroa.01.0.i84.i
  %i.is = icmp eq i64 %i.gm, 0
  %or.cond.i28.i.i = or i1 %i.is, %i.ir
  br i1 %or.cond.i28.i.i, label %bb.cn, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.it = sub i64 %.sroa.01.0.i84.i, %.sroa.04.0.i.i ; 2 uses
  %i.iu = add i64 %i.it, %i.gh                    ; 2 uses
  %.not.i29.i.i = icmp ult i64 %i.iu, %i.gh
  %..i30.i.i = select i1 %.not.i29.i.i, i64 %i.iu, i64 %i.it
  %i.iv = icmp ult i64 %..i30.i.i, %i.gm          ; 2 uses
  %i.iw = sub i64 %i.gh, %.sroa.04.0.i.i          ; 10 uses
  %i.ix = sub i64 %i.gh, %.sroa.01.0.i84.i        ; 11 uses
  %i.iy = icmp ult i64 %i.iw, %i.gm
  %i.iz = icmp ult i64 %i.ix, %i.gm               ; 3 uses
  br i1 %i.iy, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.iz, label %bb.ce, label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  br i1 %i.iv, label %bb.ci, label %bb.ch

bb.cd:                                            ; preds = %bb.cb
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.04.0.i.i
  %i.jb = shl nuw nsw i64 %i.gm, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr nonnull align 8 %i.ja, i64 %i.jb, i1 false), !noalias !580
  br label %bb.cn

bb.ce:                                            ; preds = %bb.cb
  br i1 %i.iv, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jc = getelementptr [8 x i8], ptr %i.be, i64 %.sroa.04.0.i.i ; 2 uses
  %i.jd = shl nuw nsw i64 %i.ix, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr nonnull align 8 %i.jc, i64 %i.jd, i1 false), !noalias !580
  %i.je = sub nuw i64 %i.gm, %i.ix
  %i.jf = getelementptr [8 x i8], ptr %i.jc, i64 %i.ix
  %i.jg = shl nuw nsw i64 %i.je, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.jf, i64 %i.jg, i1 false), !noalias !580
  br label %bb.cn

bb.cg:                                            ; preds = %bb.ce
  %i.jh = sub nuw i64 %i.gm, %i.ix
  %i.ji = getelementptr [8 x i8], ptr %i.be, i64 %.sroa.04.0.i.i ; 2 uses
  %i.jj = getelementptr [8 x i8], ptr %i.ji, i64 %i.ix
  %i.jk = shl nuw nsw i64 %i.jh, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.jj, i64 %i.jk, i1 false), !noalias !580
  %i.jl = shl nuw nsw i64 %i.ix, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr nonnull align 8 %i.ji, i64 %i.jl, i1 false), !noalias !580
  br label %bb.cn

bb.ch:                                            ; preds = %bb.cc
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.04.0.i.i ; 2 uses
  %i.jn = shl nuw nsw i64 %i.iw, 3                ; 2 uses
  %i.jo = getelementptr [8 x i8], ptr %i.gj, i64 %i.iw ; 2 uses
  br i1 %i.iz, label %bb.ck, label %bb.cj

bb.ci:                                            ; preds = %bb.cc
end_hunk_0
