Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RNvMs1_NtNtCs63DIHKhvmTb_10lance_core5utils4aimdNtB5_14AimdController14record_outcome:bb.a
  br i1 %i.ae, label %.split.i, label %bb.k

.split.i:                                         ; preds = %.noexc
  %i.af = extractvalue { i64, i32 } %i.aa, 1      ; 2 uses
  %i.ag = icmp ult i32 %i.af, 1000000000
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ai = load i32, ptr %i.ah, align 8, !range !101, !noalias !15971, !noundef !24
  %.not6.i = icmp samesign ult i32 %i.af, %i.ai
  br i1 %.not6.i, label %bb.r, label %bb.l

bb.k:                                             ; preds = %.noexc
  %.not5.i = icmp ult i64 %i.ab, %i.ad
  br i1 %.not5.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k, %.split.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !15971, !noundef !24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !15971, !noundef !24 ; 2 uses
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %bb.m, label %bb.n

.sink.split.i:                                    ; preds = %bb.q, %bb.p
  %.sink.i = phi double [ %i.bh, %bb.p ], [ %i.bi, %bb.q ]
  store double %.sink.i, ptr %i.s, align 8, !alias.scope !15971
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.sink.split.i, %bb.l
  store i64 %i.t, ptr %i.w, align 8, !alias.scope !15971
  store i32 %i.u, ptr %i.y, align 8, !alias.scope !15971
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !alias.scope !15971
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.ao = uitofp i64 %i.am to double
  %i.ap = uitofp i64 %i.an to double
  %i.aq = fdiv double %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load double, ptr %i.ar, align 8, !noalias !15971, !noundef !24
  %i.at = fcmp ogt double %i.aq, %i.as
  br i1 %i.at, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.av = load double, ptr %i.au, align 8, !noalias !15971, !noundef !24
  %i.aw = load double, ptr %i.s, align 8, !alias.scope !15971, !noundef !24
  %i.ax = fadd double %i.av, %i.aw                ; 2 uses
  store double %i.ax, ptr %i.s, align 8, !alias.scope !15971
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load double, ptr %i.ay, align 8, !noalias !15971, !noundef !24 ; 2 uses
  %i.ba = fcmp ogt double %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.q, label %bb.m

bb.p:                                             ; preds = %bb.n
  %i.bb = load double, ptr %i.s, align 8, !alias.scope !15971, !noundef !24
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = load double, ptr %i.bc, align 8, !noalias !15971, !noundef !24
  %i.be = fmul double %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load double, ptr %i.bf, align 8, !noalias !15971, !noundef !24
  %i.bh = call nsz double @llvm.maximumnum.f64(double %i.be, double %i.bg)
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.bi = call nsz double @llvm.minimumnum.f64(double %i.ax, double %i.az)
  br label %.sink.split.i

bb.r:                                             ; preds = %bb.m, %bb.k, %.split.i
  %..i = select i1 %1, i64 16, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 %..i ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !15971, !noundef !24
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !alias.scope !15971
  %i.bm = load double, ptr %i.s, align 8, !alias.scope !15971, !noundef !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.p, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.t, !prof !29

bb.t:                                             ; preds = %bb.s
  %i.bq = call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.bq, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store atomic i8 1, ptr %i.k monotonic, align 4
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.br = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils4aimd9AimdStateEEB1C_.exit, !prof !27

bb.v:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils4aimd9AimdStateEEB1C_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils4aimd9AimdStateEEB1C_.exit: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.v
  ret double %i.bm

bb.w:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs63DIHKhvmTb_10lance_core5utils4aimdNtB5_14AimdController3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 5), (8, 44), (48, 56), (104, 108)) %0, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils4aimdNtB4_10AimdConfig8validate(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !104, !noundef !24
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 -1, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load double, ptr %1, align 8, !noundef !24
  %i.e = tail call { i64, i32 } @_RNvMNtCsgczF5crJ4sT_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.f = extractvalue { i64, i32 } %i.e, 0
  %i.g = extractvalue { i64, i32 } %i.e, 1
  store i32 0, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.d, ptr %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.f, ptr %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.8.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.g, ptr %.sroa.58.sroa.8.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.69.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvMs1_NtNtCs63DIHKhvmTb_10lance_core5utils7backoffNtB5_11SlotBackoff12next_backoff(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !noundef !24
  %i.e = tail call i32 @llvm.uadd.sat.i32(i32 %i.b, i32 %i.d) ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !noundef !24
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %.sroa.09.0.i = phi i32 [ %.sroa.09.1.i, %bb.e ], [ 1, %.preheader.i.preheader ] ; 2 uses
  %.sroa.03.0.i = phi i32 [ %i.q, %bb.e ], [ %i.e, %.preheader.i.preheader ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %i.p, %bb.e ], [ %i.h, %.preheader.i.preheader ] ; 3 uses
  %i.i = and i32 %.sroa.03.0.i, 1
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.j = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.09.0.i, i32 %.sroa.0.0.i) ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit.thread, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i32, i1 } %i.j, 0         ; 3 uses
  %i.m = icmp eq i32 %.sroa.03.0.i, 1
  br i1 %i.m, label %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.sroa.09.1.i = phi i32 [ %i.l, %bb.c ], [ %.sroa.09.0.i, %.preheader.i ]
  %i.n = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.0.0.i, i32 %.sroa.0.0.i) ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit.thread, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.p = extractvalue { i32, i1 } %i.n, 0
  %i.q = lshr i32 %.sroa.03.0.i, 1
  br label %.preheader.i

_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit: ; preds = %bb.c
  %.sroa.0.0.i5 = tail call noundef range(i32 0, 129) i32 @llvm.umin.i32(i32 %i.l, i32 128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15986)
  %i.r = icmp eq i32 %i.l, 0
  br i1 %i.r, label %bb.g, label %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit.thread, !prof !15987

_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit.thread: ; preds = %bb.b, %bb.d, %bb.a, %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit
  %.sroa.07.0.i8 = phi i32 [ %.sroa.0.0.i5, %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit ], [ 1, %bb.a ], [ 128, %bb.d ], [ 128, %bb.b ] ; 3 uses
  %i.s = load i64, ptr %0, align 8, !alias.scope !15988, !noundef !24 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !15988, !noundef !24 ; 2 uses
  %i.v = add i64 %i.u, %i.s                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 23)
  %i.x = add i64 %i.w, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !15988, !noundef !24 ; 3 uses
  %i.aa = shl i64 %i.z, 17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !15988, !noundef !24
  %i.ad = xor i64 %i.ac, %i.s                     ; 2 uses
  %i.ae = xor i64 %i.z, %i.u                      ; 3 uses
  %i.af = xor i64 %i.ad, %i.z                     ; 4 uses
  store i64 %i.af, ptr %i.y, align 8, !alias.scope !15988
  %i.ag = xor i64 %i.ae, %i.s                     ; 5 uses
  store i64 %i.ag, ptr %0, align 8, !alias.scope !15988
  %i.ah = xor i64 %i.ad, %i.aa                    ; 2 uses
  store i64 %i.ah, ptr %i.ab, align 8, !alias.scope !15988
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 45) ; 3 uses
  store i64 %i.ai, ptr %i.t, align 8, !alias.scope !15988
  %i.aj = lshr i64 %i.x, 32
  %i.ak = zext nneg i32 %.sroa.07.0.i8 to i64
  %i.al = mul nuw nsw i64 %i.aj, %i.ak            ; 2 uses
  %i.am = lshr i64 %i.al, 32                      ; 2 uses
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  %i.ao = sub nsw i32 0, %.sroa.07.0.i8
  %i.ap = icmp ugt i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangemINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemEECs63DIHKhvmTb_10lance_core.exit

bb.f:                                             ; preds = %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit.thread
  %i.aq = add i64 %i.ai, %i.ag                    ; 2 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 23)
  %i.as = add i64 %i.ar, %i.ag
  %i.at = shl i64 %i.af, 17
  %i.au = xor i64 %i.ah, %i.ag                    ; 2 uses
  %i.av = xor i64 %i.af, %i.ai                    ; 3 uses
  %i.aw = xor i64 %i.au, %i.af
  store i64 %i.aw, ptr %i.y, align 8, !alias.scope !15989
  %i.ax = xor i64 %i.av, %i.ag
  store i64 %i.ax, ptr %0, align 8, !alias.scope !15989
  %i.ay = xor i64 %i.au, %i.at
  store i64 %i.ay, ptr %i.ab, align 8, !alias.scope !15989
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 45)
  store i64 %i.az, ptr %i.t, align 8, !alias.scope !15989
  %i.ba = lshr i64 %i.as, 32
  %1 = trunc nuw i64 %i.ba to i32
  %2 = tail call i32 @llvm.umulh.i32(i32 %1, i32 %.sroa.07.0.i8)
  %i.bb = xor i32 %i.an, -1
  %.not11.i.i.i.i = icmp ugt i32 %2, %i.bb
  %i.bc = zext i1 %.not11.i.i.i.i to i64
  %i.bd = add nuw nsw i64 %i.am, %i.bc
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangemINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemEECs63DIHKhvmTb_10lance_core.exit

bb.g:                                             ; preds = %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @125, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #68, !noalias !15986
  unreachable

_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangemINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemEECs63DIHKhvmTb_10lance_core.exit: ; preds = %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit.thread, %bb.f
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.bd, %bb.f ], [ %i.am, %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit.thread ]
  %i.be = tail call i32 @llvm.uadd.sat.i32(i32 %i.b, i32 1)
  store i32 %i.be, ptr %i.a, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !24
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul nuw nsw i64 %.sroa.04.0.i.i.i.i, %i.bh ; 2 uses
  %i.bj = udiv i64 %i.bi, 1000
  %i.bk = urem i64 %i.bi, 1000
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = mul nuw nsw i32 %i.bl, 1000000
  %i.bn = insertvalue { i64, i32 } poison, i64 %i.bj, 0
  %i.bo = insertvalue { i64, i32 } %i.bn, i32 %i.bm, 1
  ret { i64, i32 } %i.bo
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCskTBvlRM5ILY_4moka6future11invalidatorINtB5_11InvalidatorNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB19_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_predicatesB1b_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 192153584101141163) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.idx = mul nuw nsw i64 %2, 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.638.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1V_4moka14MokaCacheEntryEEEB1X_.exit
  %.sroa.0.039 = phi ptr [ %1, %.lr.ph ], [ %i.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1V_4moka14MokaCacheEntryEEEB1X_.exit ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !24 ; 3 uses
  %.val = load i64, ptr %i.g, align 8, !noundef !24
  %.val2 = load i64, ptr %i.h, align 8, !noundef !24
  %i.s = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECs63DIHKhvmTb_10lance_core(i64 %.val, i64 %.val2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = load i32, ptr %i.i, align 8, !noalias !16022, !noundef !24 ; 2 uses
  %i.u = icmp eq i32 %i.t, 64
  %i.v = and i32 %i.t, 63
  %i.w = zext nneg i32 %i.v to i64
  %i.x = lshr i64 %i.s, %i.w
  %.sroa.03.0.i = select i1 %i.u, i64 0, i64 %i.x ; 3 uses
  %i.y = load i64, ptr %i.j, align 8, !noalias !16022, !noundef !24 ; 2 uses
  %i.z = icmp ult i64 %.sroa.03.0.i, %i.y
  br i1 %i.z, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %0, align 8, !noalias !16022, !nonnull !24, !noundef !24
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.sroa.03.0.i ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16023
  %i.ad = call fastcc noundef ptr @_RINvNtCskfeRsqx2rfd_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECs63DIHKhvmTb_10lance_core(), !noalias !16023 ; 11 uses
  store ptr %i.ad, ptr %i.c, align 8, !noalias !16023
  %i.ae = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2z_4moka14MokaCacheEntryENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE3getB2B_(ptr nonnull %i.ab)
          to label %bb.h unwind label %bb.g, !noalias !16023 ; 2 uses

.thread.i.i:                                      ; preds = %.thread.loopexit.split-lp.i.i.loopexit, %.thread.loopexit.split-lp.i.i.loopexit.split-lp, %bb.ad, %.thread.loopexit.i.i, %bb.g
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.ad ], [ %i.ao, %bb.g ], [ %lpad.loopexit.i.i, %.thread.loopexit.i.i ], [ %lpad.loopexit, %.thread.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp.i.i.loopexit.split-lp ]
  %i.af = icmp eq ptr %i.ad, null
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs63DIHKhvmTb_10lance_core.exit, label %bb.d

bb.d:                                             ; preds = %.thread.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 2072 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !16023, !noundef !24 ; 2 uses
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8, !noalias !16023
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs63DIHKhvmTb_10lance_core.exit

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 2176
  store atomic i64 0, ptr %i.ak release, align 8, !noalias !16023
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 2080
  %i.am = load i64, ptr %i.al, align 8, !noalias !16023, !noundef !24
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs63DIHKhvmTb_10lance_core.exit, !prof !27

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.ad)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskfeRsqx2rfd_15crossbeam_epoch5guard5GuardECs63DIHKhvmTb_10lance_core.exit unwind label %bb.ae

bb.g:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16023
  br label %bb.i

bb.i:                                             ; preds = %.backedge.i.i, %bb.h
  %.sroa.09.0.i.i = phi ptr [ %i.ae, %bb.h ], [ %spec.select.i.i, %.backedge.i.i ] ; 6 uses
  %i.ap = getelementptr i8, ptr %.sroa.09.0.i.i, i64 8 ; 2 uses
  %.sroa.09.0.val.i.i = load i64, ptr %i.ap, align 8, !noalias !16023, !noundef !24 ; 2 uses
  %i.aq = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sroa.09.0.val.i.i)
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.k, label %bb.j, !prof !29

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @590, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @591) #68
          to label %.noexc.i.i unwind label %.thread.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !16023

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

.thread.loopexit.i.i:                             ; preds = %.invoke.i.i, %bb.k
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread.loopexit.split-lp.i.i.loopexit:           ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread.loopexit.split-lp.i.i.loopexit.split-lp:  ; preds = %bb.j, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = lshr i64 %.sroa.09.0.val.i.i, 1
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.au = invoke noundef i8 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp3new(i64 noundef %i.as, ptr noundef nonnull align 8 %i.at, ptr noundef nonnull align 8 %i.ac)
          to label %bb.l unwind label %.thread.loopexit.i.i, !noalias !16023 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.av = icmp eq i8 %i.au, 3
  br i1 %i.av, label %bb.m, label %.invoke.i.i

bb.m:                                             ; preds = %bb.l
  %i.aw = load i64, ptr %i.ap, align 8, !noalias !16024, !noundef !24 ; 2 uses
  %i.ax = add i64 %i.aw, -1                       ; 3 uses
  %i.ay = and i64 %i.ax, %i.s                     ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %.sroa.09.0.i.i, align 8, !noalias !16024, !nonnull !24, !noundef !24 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  br label %.backedge.i.i.i

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ay, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #68
          to label %.noexc31.i.i unwind label %.thread.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !16023

.noexc31.i.i:                                     ; preds = %bb.o
  unreachable

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.n
  %.sroa.21.0.i.i.i = phi i1 [ true, %bb.n ], [ %.sroa.21.0.i.i.i.be, %.backedge.i.i.i.backedge ]
  %.sroa.18.0.i.i.i = phi i64 [ 0, %bb.n ], [ %.sroa.18.1.i.i.i, %.backedge.i.i.i.backedge ] ; 3 uses
  %.sroa.12.0.i.i.i = phi ptr [ %i.ba, %bb.n ], [ %.sroa.12.1.i.i.i, %.backedge.i.i.i.backedge ]
  br i1 %.sroa.21.0.i.i.i, label %._crit_edge.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.backedge.i.i.i
  %.not.i.i.i.i = icmp ult i64 %.sroa.18.0.i.i.i, %i.ax
  br i1 %.not.i.i.i.i, label %bb.q, label %.thread47.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.q, %.backedge.i.i.i
  %.sroa.18.1.i.i.i = phi i64 [ %i.be, %bb.q ], [ %.sroa.18.0.i.i.i, %.backedge.i.i.i ]
  %.sroa.12.1.i.i.i = phi ptr [ %i.bh, %bb.q ], [ %.sroa.12.0.i.i.i, %.backedge.i.i.i ] ; 3 uses
  %i.bb = load atomic i64, ptr %.sroa.12.1.i.i.i acquire, align 8, !noalias !16025 ; 4 uses
  %i.bc = and i64 %i.bb, 1
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.r, label %.invoke.i.i

bb.q:                                             ; preds = %bb.p
  %i.be = add nuw i64 %.sroa.18.0.i.i.i, 1        ; 2 uses
  %i.bf = add i64 %i.be, %i.ay
  %i.bg = and i64 %i.bf, %i.ax
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bg
  br label %._crit_edge.i.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = and i64 %i.bb, -8                       ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils4aimdNtB4_10AimdConfig8validate:bb.a
  %i.ax = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19329 ; 5 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.r, label %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_.exit162, !prof !40

bb.r:                                             ; preds = %.split81
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #68
          to label %.noexc.i161 unwind label %bb.s, !noalias !19330

.noexc.i161:                                      ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = icmp eq i64 %.sroa.06.0.copyload.i153, 0
  br i1 %i.ba, label %common.resume, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i155) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i155, i64 noundef %.sroa.06.0.copyload.i153, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !19331
  br label %common.resume

_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_.exit162: ; preds = %.split81
  store i64 %.sroa.06.0.copyload.i153, ptr %i.ax, align 8, !noalias !19330
  %.sroa.5.0..sroa_idx2.i158 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.4.0.copyload.i155, ptr %.sroa.5.0..sroa_idx2.i158, align 8, !noalias !19330
  %.sroa.6.0..sroa_idx4.i159 = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %.sroa.57.0.copyload.i157, ptr %.sroa.6.0..sroa_idx4.i159, align 8, !noalias !19330
  store i8 0, ptr %0, align 8
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.4191.0..sroa_idx, align 8
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @61, ptr %.sroa.5192.0..sroa_idx, align 8
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @570, ptr %.sroa.6193.0..sroa_idx, align 8
  br label %bb.y

bb.u:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !noundef !24
  %i.bd = fcmp ugt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.v, label %.split77

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = load i64, ptr %i.be, align 8, !noundef !24
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bi = load i32, ptr %i.bh, align 8, !range !101
  %i.bj = icmp eq i32 %i.bi, 0
  %or.cond104 = select i1 %i.bg, i1 %i.bj, i1 false
  br i1 %or.cond104, label %bb.x, label %bb.w

.split77:                                         ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.bb, ptr %i.g, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @567, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @568)
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.val122 = load double, ptr %i.bk, align 8, !alias.scope !19332, !noalias !19333, !noundef !24 ; 2 uses
  %i.bl = fcmp oge double %.val122, 0.000000e+00
  %i.bm = fcmp ole double %.val122, 1.000000e+00
  %spec.select.i = and i1 %i.bl, %i.bm
  br i1 %spec.select.i, label %bb.z, label %.split

bb.x:                                             ; preds = %bb.v
  tail call fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputReEB8_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @559, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @560)
  br label %bb.y

bb.y:                                             ; preds = %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_.exit, %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_.exit132, %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_.exit142, %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_.exit152, %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_.exit162, %.split77, %.split73, %.split69, %bb.ab, %.split, %bb.x
  ret void

.split:                                           ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.bk, ptr %i.e, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @561, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562)
  br label %bb.y

bb.z:                                             ; preds = %bb.w
  %i.bn = fcmp ogt double %i.s, %i.ac
  %or.cond2 = and i1 %i.ai, %i.bn
  br i1 %or.cond2, label %.split73, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = fcmp olt double %i.s, %i.v
  br i1 %i.bo, label %.split69, label %bb.ab

.split73:                                         ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ab, ptr %i.bp, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.453.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @565, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @566)
  br label %bb.y

bb.ab:                                            ; preds = %bb.aa
  store i8 -1, ptr %0, align 8
  br label %bb.y

.split69:                                         ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.459.0..sroa_idx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.u, ptr %i.bq, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.463.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @563, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @564)
  br label %bb.y
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils7backoffNtB4_7Backoff12next_backoff(ptr noalias nofree noundef align 4 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noundef !24 ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %i.h = load i32, ptr %0, align 4, !noundef !24
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %.sroa.09.0.i = phi i32 [ %.sroa.09.1.i, %bb.e ], [ 1, %.preheader.i.preheader ] ; 2 uses
  %.sroa.03.0.i = phi i32 [ %i.q, %bb.e ], [ %i.f, %.preheader.i.preheader ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %i.p, %bb.e ], [ %i.h, %.preheader.i.preheader ] ; 3 uses
  %i.i = and i32 %.sroa.03.0.i, 1
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.j = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.09.0.i, i32 %.sroa.0.0.i) ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  %i.m = icmp eq i32 %.sroa.03.0.i, 1
  br i1 %i.m, label %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.sroa.09.1.i = phi i32 [ %i.l, %bb.c ], [ %.sroa.09.0.i, %.preheader.i ]
  %i.n = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.0.0.i, i32 %.sroa.0.0.i) ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.p = extractvalue { i32, i1 } %i.n, 0
  %i.q = lshr i32 %.sroa.03.0.i, 1
  br label %.preheader.i

_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.sroa.07.0.i = phi i32 [ 1, %bb.a ], [ %i.l, %bb.c ], [ -1, %bb.b ], [ -1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4, !noundef !24
  %i.t = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.07.0.i, i32 %i.s) ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 0
  %i.v = extractvalue { i32, i1 } %i.t, 1
  br i1 %i.v, label %bb.f, label %bb.g, !prof !27

bb.f:                                             ; preds = %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit, %bb.f
  %.sroa.04.0 = phi i32 [ -1, %bb.f ], [ %i.u, %_RNvMs6_NtCscI6d9CVNmLh_4core3numm11checked_pow.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.w = tail call noundef nonnull ptr @_RNvNtNtCs4Jn2LUi8st0_4rand4rngs6thread3rng() ; 7 uses
  store ptr %i.w, ptr %i.d, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 4, !noundef !24 ; 4 uses
  %i.z = sub i32 0, %i.y
  %.not.i.i = icmp slt i32 %i.y, %i.z
  br i1 %.not.i.i, label %bb.p, label %bb.h, !prof !27

bb.h:                                             ; preds = %bb.g
  %i.aa = shl i32 %i.y, 1                         ; 2 uses
  %i.ab = or disjoint i32 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 336 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 16, !noalias !19369, !noundef !24 ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 63
  br i1 %i.af, label %bb.i, label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 272 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 328 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !19370, !noalias !19371, !noundef !24 ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i64 %i.ai, -256
  store i64 %i.ak, ptr %i.ah, align 8, !alias.scope !19370, !noalias !19371
  invoke void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.ag, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.ac)
          to label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit.i.i.i unwind label %bb.q

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtNtCs4Jn2LUi8st0_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtCsgdD1EZdIidU_9rand_core2os5OsRngE19reseed_and_generateCs5ncyOgBbgdO_20datafusion_execution(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.ag, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.ac)
          to label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit.i.i.i unwind label %bb.q

_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.al = phi i64 [ %i.ae, %bb.h ], [ 0, %bb.j ], [ 0, %bb.k ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !19372, !noalias !19373, !noundef !24
  %i.ao = add nuw nsw i64 %i.al, 1                ; 2 uses
  store i64 %i.ao, ptr %i.ad, align 16, !alias.scope !19372, !noalias !19373
  %i.ap = zext i32 %i.an to i64
  %i.aq = zext i32 %i.ab to i64
  %i.ar = mul nuw i64 %i.ap, %i.aq                ; 2 uses
  %i.as = lshr i64 %i.ar, 32
  %i.at = trunc nuw i64 %i.as to i32              ; 2 uses
  %i.au = trunc i64 %i.ar to i32                  ; 2 uses
  %i.av = xor i32 %i.aa, -1
  %i.aw = icmp ugt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.l, label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng12random_rangelINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivelEECs63DIHKhvmTb_10lance_core.exit

bb.l:                                             ; preds = %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit.i.i.i
  %i.ax = icmp eq i64 %i.al, 63
  br i1 %i.ax, label %bb.m, label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit14.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 272 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 328 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !19374, !noalias !19375, !noundef !24 ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i64 %i.ba, -256
  store i64 %i.bc, ptr %i.az, align 8, !alias.scope !19374, !noalias !19375
  invoke void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.ay, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.ac)
          to label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit14.i.i.i unwind label %bb.q

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvMs3_NtNtCs4Jn2LUi8st0_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtCsgdD1EZdIidU_9rand_core2os5OsRngE19reseed_and_generateCs5ncyOgBbgdO_20datafusion_execution(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.ay, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.ac)
          to label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit14.i.i.i unwind label %bb.q

_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit14.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %i.bd = phi i64 [ %i.ao, %bb.l ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !19376, !noalias !19377, !noundef !24
  %i.bg = add nuw nsw i64 %i.bd, 1
  store i64 %i.bg, ptr %i.ad, align 16, !alias.scope !19376, !noalias !19377
  %1 = tail call i32 @llvm.umulh.i32(i32 %i.bf, i32 %i.ab)
  %i.bh = xor i32 %i.au, -1
  %.not11.i.i.i = icmp ugt i32 %1, %i.bh
  %i.bi = zext i1 %.not11.i.i.i to i32
  %i.bj = add nuw i32 %i.bi, %i.at
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng12random_rangelINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivelEECs63DIHKhvmTb_10lance_core.exit

_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng12random_rangelINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivelEECs63DIHKhvmTb_10lance_core.exit: ; preds = %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit14.i.i.i, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit.i.i.i
  %.sroa.04.0.i.i.i = phi i32 [ %i.bj, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit14.i.i.i ], [ %i.at, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng6randommECs63DIHKhvmTb_10lance_core.exit.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19380)
  %i.bk = load ptr, ptr %i.d, align 8, !alias.scope !19381, !nonnull !24, !noundef !24 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !19381, !noundef !24
  %i.bm = add i64 %i.bl, -1                       ; 2 uses
  store i64 %i.bm, ptr %i.bk, align 8, !noalias !19381
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECs63DIHKhvmTb_10lance_core.exit14

bb.p:                                             ; preds = %bb.g
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @125, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579) #68
          to label %.noexc12 unwind label %bb.q

.noexc12:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.k, %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19384)
  %i.bp = load ptr, ptr %i.d, align 8, !alias.scope !19385, !nonnull !24, !noundef !24 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !19385, !noundef !24
  %i.br = add i64 %i.bq, -1                       ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !noalias !19385
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECs63DIHKhvmTb_10lance_core.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell10UnsafeCellINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding12ReseedingRngNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtCsgdD1EZdIidU_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECs63DIHKhvmTb_10lance_core.exit unwind label %bb.u

bb.s:                                             ; preds = %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng12random_rangelINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivelEECs63DIHKhvmTb_10lance_core.exit
  call void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell10UnsafeCellINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding12ReseedingRngNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtCsgdD1EZdIidU_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECs63DIHKhvmTb_10lance_core.exit14

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECs63DIHKhvmTb_10lance_core.exit14: ; preds = %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngNtNtB9_3rng3Rng12random_rangelINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusivelEECs63DIHKhvmTb_10lance_core.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !24 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !noundef !24 ; 3 uses
  %.not.i15 = icmp ugt i32 %i.bu, %i.bw
  br i1 %.not.i15, label %bb.t, label %_RNvXs11_NtNtCscI6d9CVNmLh_4core3cmp5implsmNtB8_3Ord5clamp.exit, !prof !27

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECs63DIHKhvmTb_10lance_core.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.bu, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.bw, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsW_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.bx, align 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsW_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @754, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @580) #68
  unreachable

_RNvXs11_NtNtCscI6d9CVNmLh_4core3cmp5implsmNtB8_3Ord5clamp.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECs63DIHKhvmTb_10lance_core.exit14
  %i.by = sub i32 %.sroa.04.0.i.i.i, %i.y         ; 2 uses
  %i.bz = add i32 %i.by, %.sroa.04.0              ; 2 uses
  %i.ca = icmp ult i32 %i.bz, %.sroa.04.0         ; 2 uses
  %i.cb = icmp sgt i32 %i.by, -1
  %i.cc = xor i1 %i.cb, %i.ca
  %. = sext i1 %i.ca to i32
  %.sroa.01.0 = select i1 %i.cc, i32 %i.bz, i32 %. ; 2 uses
  %i.cd = icmp ult i32 %.sroa.01.0, %i.bu
  %..i = call i32 @llvm.umin.i32(i32 %.sroa.01.0, i32 %i.bw)
  %.sroa.0.0.i16 = select i1 %i.cd, i32 %i.bu, i32 %..i ; 2 uses
  %i.ce = add i32 %i.f, 1
  store i32 %i.ce, ptr %i.e, align 4
  %i.cf = udiv i32 %.sroa.0.0.i16, 1000
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = urem i32 %.sroa.0.0.i16, 1000
  %i.ci = mul nuw nsw i32 %i.ch, 1000000
  %i.cj = insertvalue { i64, i32 } poison, i64 %i.cg, 0
  %i.ck = insertvalue { i64, i32 } %i.cj, i32 %i.ci, 1
  ret { i64, i32 } %i.ck

bb.u:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4Jn2LUi8st0_4rand4rngs6thread9ThreadRngECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.q, %bb.r
  resume { ptr, i32 } %i.bo
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils8deletionNtB4_14DeletionVector14contains_range(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !63, !noundef !24
  switch i64 %i.b, label %default.unreachable21 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.g
  ]

default.unreachable21:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp uge i32 %1, %2
  br label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap14contains_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemEECs63DIHKhvmTb_10lance_core.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19409)
  %i.d = icmp ult i32 %1, %2
  br i1 %i.d, label %.lr.ph.i, label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap14contains_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemEECs63DIHKhvmTb_10lance_core.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !19410, !noalias !19411, !noundef !24
  %i.h = icmp eq i64 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !19409, !noalias !19412
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val5.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !19409, !noalias !19412
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !19409, !noalias !19412 ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !alias.scope !19409, !noalias !19412, !nonnull !24 ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19413
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19414)
  br label %.loopexit.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkmNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils8deletionNtB1j_14DeletionVector14contains_range0E0B1n_.exit.i
  %i.n = phi i32 [ %i.o, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkmNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils8deletionNtB1j_14DeletionVector14contains_range0E0B1n_.exit.i ], [ %1, %.lr.ph.i ] ; 3 uses
  %i.o = add nuw i32 %i.n, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19413
  store i32 %i.n, ptr %i.a, align 4, !noalias !19413
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19414)
  %i.p = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRmECs63DIHKhvmTb_10lance_core(i64 %.val.i.i.i.i, i64 %.val5.i.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !19415 ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.split.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ak, %bb.f ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.split.i ], [ %i.al, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.l ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !19416 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.aj, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.l
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %.val2.i.i.i.i.i.i = load i32, ptr %i.ad, align 4, !noalias !19417, !noundef !24
  %i.ae = icmp eq i32 %i.n, %.val2.i.i.i.i.i.i
  br i1 %i.ae, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkmNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils8deletionNtB1j_14DeletionVector14contains_range0E0B1n_.exit.i, label %bb.e, !prof !29

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %.loopexit.i, !prof !27

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.d

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3all5checkmNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils8deletionNtB1j_14DeletionVector14contains_range0E0B1n_.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19413
  %exitcond.not.i = icmp eq i32 %i.o, %2
  br i1 %exitcond.not.i, label %_RINvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB5_13RoaringBitmap14contains_rangeINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemEECs63DIHKhvmTb_10lance_core.exit, label %.lr.ph.split.i
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt:bb.a
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.h, ptr %i.j, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  %i.k = load ptr, ptr %1, align 8, !nonnull !24, !noundef !24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !24, !align !51, !noundef !24 ; 4 uses
  %i.n = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @1134, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %0, align 8, !range !32, !noundef !24
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs63DIHKhvmTb_10lance_core9datatypes10DictionaryNtB6_5Debug3fmtBA_, ptr %.sroa.433.0..sroa_idx, align 8
  %i.r = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @1135, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i64, ptr %i.s, align 8, !noundef !24 ; 3 uses
  %i.u = icmp ult i64 %i.t, 48038396025285291
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !invariant.load !24 ; 3 uses
  br i1 %i.v, label %._crit_edge99, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a, %._crit_edge, %bb.f, %._crit_edge99, %bb.h
  %.sroa.0.0 = phi i1 [ true, %._crit_edge ], [ true, %bb.a ], [ %i.ae, %._crit_edge99 ], [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.c ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  %i.w = call noundef zeroext i1 %.pre(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1136, i64 noundef 12)
  br i1 %i.w, label %bb.e, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %.idx = mul nuw nsw i64 %i.t, 192
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.04.098 = phi ptr [ %i.y, %.lr.ph ], [ %i.ab, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.04.098, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB6_7Display3fmtBC_, ptr %.sroa.461.0..sroa_idx, align 8
  %i.aa = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @1137, ptr noundef nonnull %i.a)
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.098, i64 192 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = icmp eq ptr %i.ab, %i.z
  br i1 %i.ac, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.i
  %i.ad = call noundef zeroext i1 %.pre(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @708, i64 noundef 1)
  br i1 %i.ad, label %bb.e, label %._crit_edge99

._crit_edge99:                                    ; preds = %bb.d, %._crit_edge
  %i.ae = call noundef zeroext i1 %.pre(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @796, i64 noundef 1)
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCscI6d9CVNmLh_4core6future5readyINtB4_5ReadyuENtNtB6_6future6Future4pollCs63DIHKhvmTb_10lance_core(ptr noalias nofree noundef captures(none) dereferenceable(1) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !30, !noundef !24
  %i.b = trunc nuw i8 %i.a to i1
  store i8 0, ptr %0, align 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  ret i1 false

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1138, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1140) #68
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCscI6d9CVNmLh_4core6option6OptionINtCsdWqgeKPIYK7_4slab4SlabIB1m_NtNtNtB1q_4task4wake5WakerEEEEENtNtB1q_3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1141, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5WakerEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1141, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1141, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils4aimd9AimdStateEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1r_(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1141, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCs63DIHKhvmTb_10lance_core5utils7testing22ProxyObjectStorePolicyEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1r_(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1141, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB4_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB25_4moka14MokaCacheEntryEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB27_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !30, !noundef !24
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !25699, !noalias !25700
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !25699, !noalias !25700, !nonnull !24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !25699, !noalias !25700, !nonnull !24, !align !51 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.i, align 8, !alias.scope !25699, !noalias !25700
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.c:                                             ; preds = %.preheader, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit4
  %i.s = phi i64 [ %.promoted, %.preheader ], [ %i.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit4 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25701)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i: ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB26_4moka14MokaCacheEntryEE12current_keysB28_.exit.i, %bb.c
  %i.t = phi i64 [ %i.s, %bb.c ], [ %i.v, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB26_4moka14MokaCacheEntryEE12current_keysB28_.exit.i ]
  %i.u = phi i64 [ %i.s, %bb.c ], [ %i.w, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB26_4moka14MokaCacheEntryEE12current_keysB28_.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25702)
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.k, i64 %i.u) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs63DIHKhvmTb_10lance_core.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i
  %i.v = phi i64 [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs63DIHKhvmTb_10lance_core.exit.i.i ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i ] ; 2 uses
  %i.w = phi i64 [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs63DIHKhvmTb_10lance_core.exit.i.i ], [ %i.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i ] ; 6 uses
  %i.x = load i64, ptr %1, align 8, !range !26, !alias.scope !25699, !noalias !25700, !noundef !24 ; 4 uses
  %.not.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.thread.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.i.i: ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !25703, !noalias !25700, !noundef !24 ; 3 uses
  %i.y = icmp ult i64 %.val.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.z, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.thread.thread.i.i, label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB26_4moka14MokaCacheEntryEE12current_keysB28_.exit.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.thread.i.i: ; preds = %bb.d
  %exitcond.not.i.i = icmp eq i64 %i.w, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.h, label %bb.e

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.thread.thread.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.i.i
  %exitcond.not9.i.i = icmp eq i64 %i.w, %umax.i.i
  br i1 %exitcond.not9.i.i, label %bb.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i

bb.e:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25704
  %i.aa = load ptr, ptr %i.p, align 8, !invariant.load !24, !noalias !25704, !nonnull !24
  call void %i.aa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.m, i64 noundef %i.w), !noalias !25704, !inline_history !25690
  call void @llvm.experimental.noalias.scope.decl(metadata !25705)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs63DIHKhvmTb_10lance_core.exit.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.thread.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25704
  %i.ab = load ptr, ptr %i.p, align 8, !invariant.load !24, !noalias !25704, !nonnull !24
  call void %i.ab(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.m, i64 noundef %i.w), !noalias !25704, !inline_history !25690
  call void @llvm.experimental.noalias.scope.decl(metadata !25706)
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs63DIHKhvmTb_10lance_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !25707, !noalias !25700, !nonnull !24, !noundef !24
  %i.ad = mul nuw i64 %i.x, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !25708
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs63DIHKhvmTb_10lance_core.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECs63DIHKhvmTb_10lance_core.exit.i.i: ; preds = %bb.f, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i.i.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !25700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25704
  %i.ae = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ae, ptr %i.i, align 8, !alias.scope !25699, !noalias !25700
  br label %bb.d

_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB26_4moka14MokaCacheEntryEE12current_keysB28_.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.i.i
  %i.af = add nsw i64 %.val.i.i.i, -1             ; 3 uses
  store i64 %i.af, ptr %i.h, align 8, !alias.scope !25701, !noalias !25700
  %i.ag = icmp samesign ult i64 %i.af, %i.x
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load ptr, ptr %i.q, align 8, !alias.scope !25701, !noalias !25700, !nonnull !24, !noundef !24
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.af ; 3 uses
  %.sroa.010.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !25709 ; 6 uses
  %.not3.i = icmp eq i64 %.sroa.010.0.copyload.i, -1
  br i1 %.not3.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs63DIHKhvmTb_10lance_core.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB26_4moka14MokaCacheEntryEE12current_keysB28_.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !25709
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !25709 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.010.0.copyload.i, ptr %i.d, align 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = load ptr, ptr %i.r, align 8, !invariant.load !24, !nonnull !24
  invoke void %i.aj(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.k unwind label %bb.i

bb.h:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.thread.thread.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECs63DIHKhvmTb_10lance_core.exit.thread.i.i
  store i8 1, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = icmp eq i64 %.sroa.010.0.copyload.i, 0
  br i1 %i.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.010.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !25710
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit

bb.k:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.c, align 8, !range !26, !noundef !24
  %.not1 = icmp eq i64 %i.am, -1
  br i1 %.not1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = icmp eq i64 %.sroa.010.0.copyload.i, 0
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit4, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.010.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !25711
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit4: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.o:                                             ; preds = %bb.l, %bb.h, %bb.b
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i32, i32 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter7sources5emptyINtB4_5EmptymENtNtNtB8_6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core(ptr noalias nofree nonnull readnone captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { i32, i32 } { i32 0, i32 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter7sources5emptyINtB4_5EmptymENtNtNtB8_6traits8iterator8Iterator9size_hintCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #30 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal noundef i64 @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermEENtNtNtB8_6traits8iterator8Iterator10advance_byCs63DIHKhvmTb_10lance_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #44 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25725)
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs63DIHKhvmTb_10lance_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25726)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !25727
  %.promoted12.i.i.i = load ptr, ptr %0, align 8, !alias.scope !25728
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted15.i.i.i = load i16, ptr %i.b, align 8, !alias.scope !25728
  %.promoted16.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !25728
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge19.i.i.i.i.i.i, %bb.b
  %.lcssa18.i.i.i = phi ptr [ %.promoted16.i.i.i, %bb.b ], [ %.lcssa17.i.i.i, %._crit_edge19.i.i.i.i.i.i ] ; 2 uses
  %i.d = phi i16 [ %.promoted15.i.i.i, %bb.b ], [ %i.m, %._crit_edge19.i.i.i.i.i.i ] ; 2 uses
  %.lcssa1114.i.i.i = phi ptr [ %.promoted12.i.i.i, %bb.b ], [ %.lcssa1113.i.i.i, %._crit_edge19.i.i.i.i.i.i ] ; 2 uses
  %i.e = phi i64 [ %.promoted.i.i.i, %bb.b ], [ %i.n, %._crit_edge19.i.i.i.i.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.o, %._crit_edge19.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25730)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set4ItermENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs63DIHKhvmTb_10lance_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25731)
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.d, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.k, ptr %i.c, align 8, !alias.scope !25732
  store ptr %i.j, ptr %0, align 8, !alias.scope !25732
  br label %._crit_edge19.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.g = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa18.i.i.i, %bb.d ] ; 2 uses
  %i.h = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa1114.i.i.i, %bb.d ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !25732
  %i.i = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -64 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.i to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i, %bb.d
  %.lcssa17.i.i.i = phi ptr [ %i.k, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa18.i.i.i, %bb.d ]
  %.lcssa1113.i.i.i = phi ptr [ %i.j, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa1114.i.i.i, %bb.d ]
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.d, %bb.d ] ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field3_finish
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTRL1_INtNtNtCseXbohGRa9jr_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBO_6marker4SyncNtB1U_4SendEL_E9drop_slowCseXbohGRa9jr_5tokio(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SyncNtB1A_4SendEL_E9drop_slowCseXbohGRa9jr_5tokio(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEE9drop_slowCsjMQ83FLvXnF_10async_lock(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCscI6d9CVNmLh_4core4sync6atomic6AtomicbEE9drop_slowCskdrbuxGeJhQ_10hyper_util(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCseXbohGRa9jr_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared5InnerINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE9drop_slowCskTBvlRM5ILY_4moka(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtCsiXpev0CbYtQ_7parking5InnerE9drop_slowCs9ZJqkc64Jh8_14event_listener(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs40Ppcsylqp4_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCseXbohGRa9jr_5tokio7runtime4park5InnerE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsgczF5crJ4sT_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierE9drop_slowCskTBvlRM5ILY_4moka(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCseXbohGRa9jr_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE9drop_slowCs3PfUT229lOd_12object_store(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTaIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceE9drop_slowCs8SUNSmrkv52_12arrow_schema(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcuE9drop_slowCseXbohGRa9jr_5tokio(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXsT_NtCs6tnPxK0igBV_9hashbrown3rawNtB5_18RawIterHashIndicesNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 16 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCscI6d9CVNmLh_4core3anyDNtB5_3AnyNtNtB7_6marker4SyncNtBG_4SendEL_NtNtB7_3fmt5Debug3fmt(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema5fieldNtB2_5FieldNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs40MM8ukkVQd_9sqlparser6parserNtB4_11ParserErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs2bHstFFhpHt_17datafusion_common5errorNtB2_11SchemaErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCskAO0uQb8M5a_5prost5errorNtB4_11DecodeErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCskAO0uQb8M5a_5prost5errorNtB5_11EncodeErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCskAO0uQb8M5a_5prost5errorNtB5_16UnknownEnumValueNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCs5FpxmzdwmiN_3url6parserNtB5_10ParseErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtCs40MM8ukkVQd_9sqlparser9tokenizerNtB5_14TokenizerErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB5_5StoreNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8AdjTG4t2jJ_11rand_chacha4guts11refill_wide(ptr noalias noundef align 16 dereferenceable(48), i32 noundef, ptr noalias noundef align 4 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell10UnsafeCellINtNtNtCs4Jn2LUi8st0_4rand4rngs9reseeding12ReseedingRngNtNtCs8AdjTG4t2jJ_11rand_chacha6chacha12ChaCha12CoreNtNtCsgdD1EZdIidU_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsjMQ83FLvXnF_10async_lock6rwlock3rawNtB2_9RawRwLock12write_unlock(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray13as_struct_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsitxk4pdPh9M_9getrandom5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsgczF5crJ4sT_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #54

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #54

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #66

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #54

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #67

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #54

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #54

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #54

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #54

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #54

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #54

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #54

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { alwaysinline nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { inlinehint nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #46 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { inlinehint nofree nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #50 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #52 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #55 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #57 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #59 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #60 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #61 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #62 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #63 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #64 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #65 = { nounwind }
attributes #66 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #67 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #68 = { noreturn }
attributes #69 = { cold }
attributes #70 = { cold noreturn nounwind }
attributes #71 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEB1e_, null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null, null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{!6, i1 false, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core"}
!7 = distinct !{!7, !6, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core: argument 0"}
!8 = distinct !{!8, i1 false, !"_RNvXs10_NtNtCscI6d9CVNmLh_4core3cmp5implsmNtB8_10PartialOrd2lt"}
!9 = distinct !{!9, !8, !"_RNvXs10_NtNtCscI6d9CVNmLh_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 0"}
!10 = distinct !{!10, !8, !"_RNvXs10_NtNtCscI6d9CVNmLh_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 1"}
!11 = distinct !{ptr @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field6set_id, null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{null, null}
!21 = !{i32 8, !"PIC Level", i32 2}
!22 = !{i32 2, !"RtLibUseGOT", i32 1}
!23 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!24 = !{}
!25 = !{!"branch_weights", i32 2002, i32 2000}
!26 = !{i64 -1, i64 -9223372036854775808}
!27 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!28 = !{!"llvm.loop.peeled.count", i32 1}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{i8 0, i8 2}
!31 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 1}
!32 = !{i64 0, i64 2}
!33 = !{i8 0, i8 3}
!34 = !{!"branch_weights", i32 2, i32 0, i32 2146410441, i32 1073205}
!35 = !{!"branch_weights", i32 1, i32 4001}
!36 = !{i64 1, i64 0}
!37 = !{!"branch_weights", i32 2146410443, i32 1073205}
!38 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!39 = !{i64 0, i64 -9223372036854775808}
!40 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!41 = !{i64 -1, i64 2}
!42 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEB1e_}
!43 = !{i64 126326314033532165}
!44 = !{i32 1, i32 0}
!45 = !{i8 -1, i8 4}
!46 = !{!"branch_weights", i32 1, i32 1999}
!47 = !{!"branch_weights", i32 0, i32 1}
!48 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!49 = !{!"branch_weights", i32 127, i32 1}
!50 = !{!"branch_weights", i32 255873, i32 127}
!51 = !{i64 8}
!52 = !{i8 0, i8 4}
!53 = !{i64 1, i64 536870913}
!54 = !{i64 0, i64 5}
!55 = !{i32 -2, i32 1000000000}
!56 = !{i64 -3, i64 -9223372036854775808}
!57 = !{i64 -3, i64 -9223372036854775790}
!58 = !{i16 -2, i16 2}
!59 = !{i64 -1, i64 3}
!60 = !{i32 0, i32 -1}
!61 = !{i16 -1, i16 2}
!62 = !{i64 0, i64 6}
!63 = !{i64 0, i64 3}
!64 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder6WaiterECs63DIHKhvmTb_10lance_core}
!65 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!66 = !{i32 -1, i32 1000000000}
!67 = !{i16 0, i16 2}
!68 = !{i64 -2, i64 2}
!69 = !{i64 0, i64 -9223372036854775807}
!70 = !{i64 0, i64 4}
!71 = !{i8 0, i8 5}
!72 = !{i8 0, i8 8}
!73 = !{i8 0, i8 6}
!74 = !{i8 0, i8 12}
!75 = !{i8 0, i8 7}
!76 = !{i8 0, i8 9}
!77 = !{i64 -1, i64 -9223372036854775806}
!78 = !{!7}
!79 = !{i64 0, i64 -9223372036854775790}
!80 = !{i64 0, i64 19}
!81 = !{i64 -1, i64 -9223372036854775802}
!82 = !{i64 0, i64 -9223372036854775802}
!83 = !{i64 0, i64 25}
!84 = !{i8 0, i8 36}
!85 = !{i64 0, i64 -9223372036854775788}
!86 = !{i8 0, i8 41}
!87 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECs63DIHKhvmTb_10lance_core}
!88 = !{i64 -1, i64 6}
!89 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!90 = !{i32 -2, i32 1000000002}
!91 = !{i64 0, i64 -9223372036854775806}
!92 = !{i32 0, i32 2}
!93 = !{!9}
end_hunk_3
