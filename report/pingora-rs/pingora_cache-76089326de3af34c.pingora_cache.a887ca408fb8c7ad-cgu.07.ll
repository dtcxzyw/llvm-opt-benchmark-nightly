Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.07?download=true
inline.NumInlined: 365
inline.NumDeleted: 167
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvXs1_NtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lruNtB7_7ManagerNtB9_15EvictionManager4load0Bb_:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsh8kAdcUVRtT_9rmp_serde6decode12DeserializerINtBE_10ReadReaderRShEEECset5b41vfmiv_13pingora_cache.exit8.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %.body unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ah:                                            ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsh8kAdcUVRtT_9rmp_serde6decode12DeserializerINtBE_10ReadReaderRShEEECset5b41vfmiv_13pingora_cache.exit8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !340
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body25 unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

.body25:                                          ; preds = %bb.am, %bb.aj, %.body
  %.pn10 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bt, %bb.am ], [ %i.br, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body25

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.ak, %bb.s, %bb.u
  %.sroa.03.0 = phi ptr [ %i.aq, %bb.s ], [ %i.aq, %bb.u ], [ %.sroa.0.0.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i8 1, ptr %i.n, align 8
  %i.bu = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.03.0, 1
  br label %common.ret

bb.an:                                            ; preds = %bb.l, %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ao:                                            ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB1Z_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECset5b41vfmiv_13pingora_cache.exit28, %.body25
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn10, %.body25 ], [ %.pn12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB1Z_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECset5b41vfmiv_13pingora_cache.exit28 ], [ %i.ad, %bb.f ]
  store i8 2, ptr %i.n, align 8
  resume { ptr, i32 } %.pn12.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @_RNCNvXs1_NtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lruNtB7_7ManagerNtB9_15EvictionManager4save0Bb_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 15 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 8, !range !111, !noundef !4
  switch i8 %i.u, label %default.unreachable50 [
    i8 0, label %bb.b
    i8 1, label %bb.aj
    i8 2, label %bb.ak
    i8 3, label %bb.aa
  ]

default.unreachable50:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %0, align 8, !nonnull !4, !align !130, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !352
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !360
  store i64 0, ptr %i.g, align 8, !noalias !361
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.556.0..sroa_idx.i, align 8, !noalias !361
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !361
  %i.w = invoke i24 @_RINvMs_NtCsh8kAdcUVRtT_9rmp_serde6configNtB5_13RuntimeConfig3newNtB5_13DefaultConfigECset5b41vfmiv_13pingora_cache()
          to label %.noexc.i unwind label %bb.c, !noalias !360

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECset5b41vfmiv_13pingora_cache.exit27 unwind label %bb.d, !noalias !360

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !360
  unreachable

.noexc.i:                                         ; preds = %bb.b
  store i64 0, ptr %i.n, align 8, !alias.scope !362, !noalias !352
  %.sroa.556.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.556.0..sroa_idx57.i, align 8, !alias.scope !362, !noalias !352
  %.sroa.6.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx59.i, align 8, !alias.scope !362, !noalias !352
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i16 1024, ptr %i.z, align 8, !alias.scope !355, !noalias !363
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 26
  store i24 %i.w, ptr %i.aa, align 2, !alias.scope !355, !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !360
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 9 uses
  %i.ac = load atomic i64, ptr %i.ab monotonic, align 8, !noalias !352 ; 4 uses
  %i.ad = and i64 %i.ac, 8
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = icmp ugt i64 %i.ac, -17
  %or.cond.i.i = or i1 %i.af, %i.ae
  br i1 %or.cond.i.i, label %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, label %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, !prof !364

.thread74.i:                                      ; preds = %bb.q, %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i: ; preds = %.noexc.i
  %i.ag = add nuw i64 %i.ac, 16
  %i.ah = cmpxchg weak ptr %i.ab, i64 %i.ac, i64 %i.ag acquire monotonic, align 8, !noalias !352
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %bb.e, label %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, !prof !365

_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i: ; preds = %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, %.noexc.i
  %i.aj = invoke noundef zeroext i1 @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.ab, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %bb.e unwind label %.thread74.i, !noalias !352 ; 0 uses

bb.e:                                             ; preds = %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !352
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noalias !352, !noundef !4
  %i.am = trunc i64 %i.al to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !366
  invoke void @_RINvNtCsi6KIB3idnYH_3rmp6encode15write_array_lenINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef %i.am)
          to label %.noexc41.i unwind label %bb.h, !noalias !352

.noexc41.i:                                       ; preds = %bb.e
  %i.an = load i64, ptr %i.f, align 8, !range !94, !noalias !366, !noundef !4 ; 2 uses
  %.not.i40.i = icmp eq i64 %i.an, 2
  br i1 %.not.i40.i, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.body.thread.i, %.body.thread86.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %eh.lpad-body83.i, %.body.thread.i ], [ %lpad.thr_comm84.i, %.body.thread86.i ] ; 2 uses
  %i.ao = atomicrmw sub ptr %i.ab, i64 16 release, align 8, !noalias !352
  %i.ap = and i64 %i.ao, -14
  %i.aq = icmp eq i64 %i.ap, 18
  br i1 %i.aq, label %bb.g, label %.thread.i, !prof !330

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.ab)
          to label %.thread.i unwind label %bb.w, !noalias !352

bb.h:                                             ; preds = %.noexc44.i, %bb.i, %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %.noexc41.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !366, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !366
  store i16 28, ptr %i.l, align 8, !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !370
  store i64 0, ptr %i.e, align 8, !noalias !370
  %.sroa.4.0..sroa_idx.i43.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @32, ptr %.sroa.4.0..sroa_idx.i43.i, align 8, !noalias !370
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 22, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !370
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !375
  %.sroa.4.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx68.i, align 8, !noalias !375
  %.sroa.569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.at, ptr %.sroa.569.0..sroa_idx.i, align 8, !noalias !375
  %i.au = invoke { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsh8kAdcUVRtT_9rmp_serde6encode5ErrorE4fromCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc44.i unwind label %bb.h, !noalias !352 ; 2 uses

.noexc44.i:                                       ; preds = %bb.i
  %i.av = extractvalue { ptr, ptr } %i.au, 0      ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %i.au, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !370
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.ax = invoke fastcc noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noundef %i.av, ptr %i.aw)
          to label %bb.x unwind label %bb.h

bb.j:                                             ; preds = %.noexc41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !366
  store i16 28, ptr %i.l, align 8, !noalias !352
  store i64 -1, ptr %i.m, align 8, !noalias !352
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !352
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !352
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.n, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !352
  %i.ay = load i64, ptr %i.ak, align 8, !noalias !352, !noundef !4 ; 2 uses
  %.not3288.i = icmp eq i64 %i.ay, 0
  br i1 %.not3288.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !352, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !352, !noundef !4
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsh8kAdcUVRtT_9rmp_serde6encode5ErrorE6unwrapCset5b41vfmiv_13pingora_cache.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !352
  invoke void @_RNvXsg_NtCsh8kAdcUVRtT_9rmp_serde6encodeINtB5_26MaybeUnknownLengthCompoundINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB7_6config13DefaultConfigENtNtCs54qMqBN3zRt_10serde_core3ser12SerializeSeq3endCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.i)
          to label %bb.k unwind label %.body.thread86.i, !noalias !352

.lr.ph.i:                                         ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsh8kAdcUVRtT_9rmp_serde6encode5ErrorE6unwrapCset5b41vfmiv_13pingora_cache.exit.i, %.lr.ph.preheader.i
  %.sroa.027.090.i = phi ptr [ %i.bf, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsh8kAdcUVRtT_9rmp_serde6encode5ErrorE6unwrapCset5b41vfmiv_13pingora_cache.exit.i ], [ %i.bc, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.025.089.i = phi i64 [ %i.bd, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsh8kAdcUVRtT_9rmp_serde6encode5ErrorE6unwrapCset5b41vfmiv_13pingora_cache.exit.i ], [ %i.ay, %.lr.ph.preheader.i ]
  %i.bd = add i64 %.sroa.025.089.i, -1            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.027.090.i, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !352, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.027.090.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !352
  invoke void @_RINvXsg_NtCsh8kAdcUVRtT_9rmp_serde6encodeINtB6_26MaybeUnknownLengthCompoundINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB8_6config13DefaultConfigENtNtCs54qMqBN3zRt_10serde_core3ser12SerializeSeq17serialize_elementNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEB3p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.027.090.i)
          to label %bb.r unwind label %.body.i, !noalias !352

.body.thread86.i:                                 ; preds = %.noexc48.i, %bb.l, %._crit_edge.i
  %lpad.thr_comm84.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.body.i:                                          ; preds = %.lr.ph.i
  %lpad.thr_comm.split-lp85.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.k:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !352
  %i.bg = load i64, ptr %i.j, align 8, !range !181, !noalias !352, !noundef !4
  %.not.i = icmp eq i64 %i.bg, -1
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !376
  store i64 0, ptr %i.c, align 8, !noalias !376
  %.sroa.4.0..sroa_idx.i46.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @30, ptr %.sroa.4.0..sroa_idx.i46.i, align 8, !noalias !376
  %.sroa.5.0..sroa_idx.i47.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 20, ptr %.sroa.5.0..sroa_idx.i47.i, align 8, !noalias !376
  %i.bh = invoke { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsh8kAdcUVRtT_9rmp_serde6encode5ErrorE4fromCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc48.i unwind label %.body.thread86.i, !noalias !352 ; 2 uses

.noexc48.i:                                       ; preds = %bb.l
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !376
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bk = invoke fastcc noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef %i.bi, ptr %i.bj)
          to label %bb.o unwind label %.body.thread86.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !352
  %.sroa.033.0.copyload = load i64, ptr %i.n, align 8 ; 2 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.556.0..sroa_idx57.i, align 8 ; 2 uses
  %.sroa.1034.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx59.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !352
  %i.bl = atomicrmw sub ptr %i.ab, i64 16 release, align 8, !noalias !352
  %i.bm = and i64 %i.bl, -14
  %i.bn = icmp eq i64 %i.bm, 18
  br i1 %i.bn, label %bb.n, label %bb.ac, !prof !330

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.ab)
          to label %bb.ac unwind label %bb.ab

bb.o:                                             ; preds = %.noexc48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !352
  br label %bb.p

bb.p:                                             ; preds = %bb.x, %bb.o
  %.sink.i = phi ptr [ %i.ax, %bb.x ], [ %i.bk, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !352
  %i.bo = atomicrmw sub ptr %i.ab, i64 16 release, align 8, !noalias !352
  %i.bp = and i64 %i.bo, -14
  %i.bq = icmp eq i64 %i.bp, 18
  br i1 %i.bq, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtCskD7i0qFYELX_3lru8LruCacheyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEEB2T_.exit54.i, !prof !330

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtCskD7i0qFYELX_3lru8LruCacheyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEEB2T_.exit54.i unwind label %.thread74.i, !noalias !352

bb.r:                                             ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.br = load i64, ptr %i.k, align 8, !range !181, !alias.scope !381, !noalias !352, !noundef !4
  %.not.i.i = icmp eq i64 %i.br, -1
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsh8kAdcUVRtT_9rmp_serde6encode5ErrorE6unwrapCset5b41vfmiv_13pingora_cache.exit.i, label %bb.s, !prof !151

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !352
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #36
          to label %bb.u unwind label %bb.t, !noalias !384

bb.t:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsh8kAdcUVRtT_9rmp_serde6encode5ErrorECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #35
          to label %.body.thread.i unwind label %bb.v, !noalias !384

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !384
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtCsh8kAdcUVRtT_9rmp_serde6encode5ErrorE6unwrapCset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !352
  %.not32.i = icmp eq i64 %i.bd, 0
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.i

.body.thread.i:                                   ; preds = %bb.t, %.body.i
  %eh.lpad-body83.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp85.i, %.body.i ], [ %i.bs, %bb.t ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsh8kAdcUVRtT_9rmp_serde6encode26MaybeUnknownLengthCompoundINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtBG_6config13DefaultConfigEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(48) %i.m) #35
          to label %bb.f unwind label %bb.w, !noalias !352

bb.w:                                             ; preds = %.thread.i, %.body.thread.i, %bb.g
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !352
  unreachable

bb.x:                                             ; preds = %.noexc44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !370
  br label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtCskD7i0qFYELX_3lru8LruCacheyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEEB2T_.exit54.i: ; preds = %bb.q, %bb.p
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsh8kAdcUVRtT_9rmp_serde6encode10SerializerINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECset5b41vfmiv_13pingora_cache.exit.i unwind label %bb.y, !noalias !352

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtCskD7i0qFYELX_3lru8LruCacheyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEEB2T_.exit54.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECset5b41vfmiv_13pingora_cache.exit27 unwind label %bb.z, !noalias !352

bb.z:                                             ; preds = %bb.y
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !352
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsh8kAdcUVRtT_9rmp_serde6encode10SerializerINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECset5b41vfmiv_13pingora_cache.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtCskD7i0qFYELX_3lru8LruCacheyNtNtNtCset5b41vfmiv_13pingora_cache8eviction10simple_lru4NodeEEEB2T_.exit54.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.thread unwind label %bb.ab

.thread:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsh8kAdcUVRtT_9rmp_serde6encode10SerializerINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECset5b41vfmiv_13pingora_cache.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.sink.split

.thread.i:                                        ; preds = %bb.g, %bb.f, %.thread74.i
  %.pn3473.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread74.i ], [ %.pn.i, %bb.f ], [ %.pn.i, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsh8kAdcUVRtT_9rmp_serde6encode10SerializerINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECset5b41vfmiv_13pingora_cache.exit27 unwind label %bb.w, !noalias !352

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  br label %bb.al

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsh8kAdcUVRtT_9rmp_serde6encode10SerializerINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECset5b41vfmiv_13pingora_cache.exit.i, %bb.n
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs2awuzAz5vY4_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEEECset5b41vfmiv_13pingora_cache.exit27

bb.ac:                                            ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.by = icmp eq i64 %.sroa.033.0.copyload, -1
  br i1 %i.by, label %.sink.split, label %_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtBP_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtB7_3ops9try_trait3Try6branchCset5b41vfmiv_13pingora_cache.exit

_RNvXsp_NtCskKLDkoKarTP_4core6resultINtB5_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtBP_5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEENtNtNtB7_3ops9try_trait3Try6branchCset5b41vfmiv_13pingora_cache.exit: ; preds = %bb.ac
  store i64 %.sroa.033.0.copyload, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.1034.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !4 ; 5 uses
end_hunk_0
