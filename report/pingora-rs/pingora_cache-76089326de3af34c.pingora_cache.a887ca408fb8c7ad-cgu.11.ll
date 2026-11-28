Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_cache-76089326de3af34c.pingora_cache.a887ca408fb8c7ad-cgu.11?download=true
inline.NumInlined: 529
inline.NumDeleted: 257
begin_hunk_0_@_RNCNvXs7_NtCset5b41vfmiv_13pingora_cache6memoryNtB7_14MemMissHandlerNtNtB9_7storage10HandleMiss6finish0B9_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !419, !nonnull !7, !noundef !7
  %i.et = atomicrmw add ptr %i.es, i64 -1 release, align 8, !noalias !420
  %i.eu = icmp eq i64 %i.et, 1
  br i1 %i.eu, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEB11_.exit

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.er) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEB11_.exit unwind label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body64:                                          ; preds = %bb.at, %bb.ao, %bb.an, %bb.bh
  %.sroa.04.0 = phi i1 [ false, %bb.at ], [ %.sroa.04.2, %bb.bh ], [ false, %bb.an ], [ false, %bb.ao ]
  %.pn12 = phi { ptr, i32 } [ %i.ey, %bb.at ], [ %.pn10, %bb.bh ], [ %i.em, %bb.an ], [ %i.em, %bb.ao ] ; 2 uses
  %i.ew = cmpxchg ptr %i.ec, i64 8, i64 0 release monotonic, align 8
  %i.ex = extractvalue { i64, i1 } %i.ew, 1
  br i1 %i.ex, label %bb.bi, label %bb.as, !prof !21

bb.as:                                            ; preds = %.body64
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ec, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.bg

bb.at:                                            ; preds = %bb.aq
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body64

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEB11_.exit: ; preds = %bb.ap, %_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectE6insertB1I_.exit, %bb.aq
  %i.ez = cmpxchg ptr %i.ec, i64 8, i64 0 release monotonic, align 8
  %i.fa = extractvalue { i64, i1 } %i.ez, 1
  br i1 %i.fa, label %bb.av, label %bb.au, !prof !21

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEB11_.exit
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ec, i1 noundef zeroext false)
          to label %bb.av unwind label %.thread104

.thread104:                                       ; preds = %bb.au
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit80

bb.av:                                            ; preds = %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEB11_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val29 = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val29, i64 16 ; 6 uses
  %i.fd = cmpxchg weak ptr %i.fc, i64 0, i64 8 acquire monotonic, align 8
  %i.fe = extractvalue { i64, i1 } %i.fd, 1
  br i1 %i.fe, label %bb.ax, label %bb.aw, !prof !21

bb.aw:                                            ; preds = %bb.av
  %i.ff = invoke noundef zeroext i1 @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.fc, i64 undef, i32 noundef -1)
          to label %bb.ax unwind label %bb.bd     ; 0 uses

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fg = getelementptr inbounds nuw i8, ptr %.val29, i64 24
  %i.fh = invoke noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectENtNtNtB1z_4hash6random11RandomStateE7get_mutBO_EB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIBQ_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEE7get_mutB13_EB1O_.exit unwind label %bb.ba ; 2 uses

_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIBQ_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEE7get_mutB13_EB1O_.exit: ; preds = %bb.ax
  %.val41 = load i64, ptr %i.bf, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %.not.i71 = icmp eq ptr %i.fh, null
  br i1 %.not.i71, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEE8and_thenB1E_NCNCNvXs7_B1G_NtB1G_14MemMissHandlerNtNtB1I_7storage10HandleMiss6finish00EB1I_.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIBQ_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEE7get_mutB13_EB1O_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !422
  %i.fi = call i64 @llvm.bswap.i64(i64 %.val41)
  store i64 %i.fi, ptr %i.a, align 8, !noalias !422
  invoke void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeyEBT_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) dereferenceable_or_null(48) %i.fh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEE8and_thenB1E_NCNCNvXs7_B1G_NtB1G_14MemMissHandlerNtNtB1I_7storage10HandleMiss6finish00EB1I_.exit unwind label %bb.ba

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEE8and_thenB1E_NCNCNvXs7_B1G_NtB1G_14MemMissHandlerNtNtB1I_7storage10HandleMiss6finish00EB1I_.exit.thread: ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIBQ_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEE7get_mutB13_EB1O_.exit
  store i64 -1, ptr %i.f, align 8, !alias.scope !421
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEB11_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEE8and_thenB1E_NCNCNvXs7_B1G_NtB1G_14MemMissHandlerNtNtB1I_7storage10HandleMiss6finish00EB1I_.exit: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !422
  %.pr = load i64, ptr %i.f, align 8, !alias.scope !423
  %i.fj = icmp eq i64 %.pr, -1
  br i1 %i.fj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEB11_.exit, label %bb.az

bb.az:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEE8and_thenB1E_NCNCNvXs7_B1G_NtB1G_14MemMissHandlerNtNtB1I_7storage10HandleMiss6finish00EB1I_.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEB11_.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = cmpxchg ptr %i.fc, i64 8, i64 0 release monotonic, align 8
  %i.fm = extractvalue { i64, i1 } %i.fl, 1
  br i1 %i.fm, label %.thread98, label %bb.bb, !prof !21

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.fc, i1 noundef zeroext false)
          to label %.thread98 unwind label %bb.bg

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEB11_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEE8and_thenB1E_NCNCNvXs7_B1G_NtB1G_14MemMissHandlerNtNtB1I_7storage10HandleMiss6finish00EB1I_.exit, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionQINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEE8and_thenB1E_NCNCNvXs7_B1G_NtB1G_14MemMissHandlerNtNtB1I_7storage10HandleMiss6finish00EB1I_.exit.thread, %bb.az
  %i.fn = cmpxchg ptr %i.fc, i64 8, i64 0 release monotonic, align 8
  %i.fo = extractvalue { i64, i1 } %i.fn, 1
  br i1 %i.fo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2k_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Z_.exit76, label %bb.bc, !prof !21

bb.bc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEB11_.exit
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.fc, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2k_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Z_.exit76 unwind label %bb.bd

.thread98:                                        ; preds = %bb.bd, %bb.bb, %bb.ba
  %.pn18 = phi { ptr, i32 } [ %i.fp, %bb.bd ], [ %i.fk, %bb.bb ], [ %i.fk, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit80

bb.bd:                                            ; preds = %bb.bc, %bb.aw
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.thread98

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2k_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Z_.exit76: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEB11_.exit, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache6memory14MemMissHandlerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2k_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Z_.exit76
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 64, i64 noundef 8) #25
  br label %.body77

.body77:                                          ; preds = %bb.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit80
  %.pn22 = phi { ptr, i32 } [ %.pn18.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit80 ], [ %i.fq, %bb.be ]
  store i8 2, ptr %i.l, align 8
  resume { ptr, i32 } %.pn22

bb.bf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2k_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Z_.exit76
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 64, i64 noundef 8) #25
  store i64 2, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val35, ptr %.sroa.2.0..sroa_idx, align 8
  store i8 1, ptr %i.l, align 8
  ret void

bb.bg:                                            ; preds = %bb.bj, %bb.bb, %bb.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit80, %.thread
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bh:                                            ; preds = %bb.al, %bb.aj
  %.sroa.04.2 = phi i1 [ false, %bb.al ], [ true, %bb.aj ]
  %.pn10 = phi { ptr, i32 } [ %i.ej, %bb.al ], [ %i.eh, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.body64

bb.bi:                                            ; preds = %bb.as, %.body64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %.sroa.04.0, label %.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit80

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit80: ; preds = %bb.c, %bb.bj, %.loopexit.split-lp110, %.thread104, %.thread98, %.thread, %bb.bi
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn97, %.thread ], [ %.pn12, %bb.bi ], [ %i.fb, %.thread104 ], [ %.pn18, %.thread98 ], [ %i.y, %bb.c ], [ %.pn.pn, %bb.bj ], [ %.pn.pn, %.loopexit.split-lp110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCset5b41vfmiv_13pingora_cache6memory14MemMissHandlerEEB1e_(ptr %i.n) #27
          to label %.body77 unwind label %bb.bg

.thread:                                          ; preds = %bb.af, %.thread101, %bb.bi
  %.pn18.pn97 = phi { ptr, i32 } [ %i.eg, %.thread101 ], [ %.pn12, %bb.bi ], [ %i.dy, %bb.af ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.k) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit80 unwind label %bb.bg

.loopexit.split-lp110:                            ; preds = %.loopexit.split-lp110.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp110.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fs = atomicrmw add ptr %i.p, i64 -16 release, align 8
  %i.ft = and i64 %i.fs, -14
  %i.fu = icmp eq i64 %i.ft, 18
  br i1 %i.fu, label %bb.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit80, !prof !18

bb.bj:                                            ; preds = %.loopexit.split-lp110
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit80 unwind label %bb.bg

bb.bk:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29
  unreachable

bb.bl:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCset5b41vfmiv_13pingora_cache6memoryNtB7_8MemCacheNtNtB9_7storage7Storage11update_meta0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [32 x i8], align 8            ; 3 uses
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !16, !noundef !7
  switch i8 %i.d, label %default.unreachable52 [
    i8 0, label %bb.b
    i8 1, label %bb.ad
    i8 2, label %bb.ae
  ]

default.unreachable52:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !7, !align !8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !align !8, !noundef !7
  invoke void @_RNvYNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyNtB4_12CacheHashKey8combinedB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit31

bb.d:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 8 uses
  %i.j = cmpxchg weak ptr %i.i, i64 0, i64 8 acquire monotonic, align 8
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef zeroext i1 @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.i, i64 undef, i32 noundef -1)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27
          to label %3 unwind label %bb.t

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.o = invoke noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE7get_mutBO_EB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectE7get_mutB13_EB1J_.exit unwind label %bb.z ; 8 uses

bb.h:                                             ; preds = %bb.j, %bb.m, %bb.z
  %.pn4.pn = phi { ptr, i32 } [ %i.al, %bb.z ], [ %i.r, %bb.j ], [ %i.w, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27
          to label %.body unwind label %bb.t

_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectE7get_mutB13_EB1J_.exit: ; preds = %bb.g
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectE7get_mutB13_EB1J_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !align !8, !noundef !7
  invoke void @_RNvMNtCset5b41vfmiv_13pingora_cache4metaNtB2_9CacheMeta9serialize(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.s = load i64, ptr %i.a, align 8, !range !9, !alias.scope !428, !noundef !7 ; 3 uses
  %i.t = icmp eq i64 %i.s, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !429 ; 4 uses
  br i1 %i.t, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.10.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx39, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEBC_EECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(48) %i.o)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  store i64 %i.s, ptr %i.o, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.v, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, i64 32, i1 false)
  br label %bb.h

bb.n:                                             ; preds = %bb.l
  store i64 %i.s, ptr %i.o, align 8
  %.sroa.3.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.v, ptr %.sroa.3.0..sroa_idx42, align 8
  %.sroa.4.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx44, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, i64 32, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit unwind label %bb.q

.body:                                            ; preds = %bb.v, %bb.o, %bb.q, %bb.h
  %.pn7 = phi { ptr, i32 } [ %.pn4.pn, %bb.h ], [ %i.x, %bb.o ], [ %i.ab, %bb.q ], [ %i.ag, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = cmpxchg ptr %i.i, i64 8, i64 0 release monotonic, align 8
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit31, label %bb.ac, !prof !21

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i23, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = cmpxchg ptr %i.i, i64 8, i64 0 release monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit, label %bb.r, !prof !21

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.i, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultbINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtCsfsXztIhCltD_13pingora_error5ErrorEEECset5b41vfmiv_13pingora_cache(i8 0, ptr undef) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit31 unwind label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit: ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit27, %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit
  %.sroa.045.0 = phi i8 [ 0, %bb.r ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit27 ], [ 1, %bb.x ]
  %.sroa.5.0 = phi ptr [ undef, %bb.r ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit27 ], [ %i.v, %bb.x ]
  store i8 %.sroa.045.0, ptr %0, align 8
  %.sroa.346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.346.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 1, ptr %i.c, align 8
  ret void

bb.t:                                             ; preds = %bb.ac, %bb.s, %bb.h, %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit31: ; preds = %.body, %bb.ac, %bb.y, %3, %bb.s, %bb.c
  %.pn10.pn = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.ae, %bb.s ], [ %i.ak, %bb.y ], [ %i.m, %3 ], [ %.pn7, %bb.ac ], [ %.pn7, %.body ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn10.pn

bb.u:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i23 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i23: ; preds = %bb.u
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit27 unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit27: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = cmpxchg ptr %i.i, i64 8, i64 0 release monotonic, align 8
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit, label %bb.x, !prof !21

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit27
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.i, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit31

bb.z:                                             ; preds = %bb.g, %bb.aa
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.aa:                                            ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectE7get_mutB13_EB1J_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #30
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %.body
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.i, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit31 unwind label %bb.t

3:                                                ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit31

bb.ad:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29
  unreachable

bb.ae:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCset5b41vfmiv_13pingora_cache6memoryNtB7_8MemCacheNtNtB9_7storage7Storage16get_miss_handler0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 5 uses
  %i.l = alloca [64 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [64 x i8], align 8                ; 14 uses
  %i.s = alloca [64 x i8], align 8                ; 10 uses
  %i.t = alloca [48 x i8], align 8                ; 6 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !range !16, !noundef !7
  switch i8 %i.x, label %default.unreachable126 [
    i8 0, label %bb.b
    i8 1, label %bb.bm
    i8 2, label %bb.bn
  ]

default.unreachable126:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %1, align 8, !nonnull !7, !align !8, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !7, !align !8, !noundef !7
  invoke void @_RNvYNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyNtB4_12CacheHashKey8combinedB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa)
          to label %bb.d unwind label %bb.c

.body58:                                          ; preds = %bb.bj, %.thread119, %bb.c, %bb.bl, %bb.bh
  %.pn31 = phi { ptr, i32 } [ %.pn23.pn.pn.pn, %bb.bh ], [ %.pn28.pn115, %bb.bl ], [ %i.ab, %bb.c ], [ %i.dp, %.thread119 ], [ %i.dv, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i8 2, ptr %i.w, align 8
  resume { ptr, i32 } %.pn31

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body58

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !7, !align !8, !noundef !7
  invoke void @_RNvMNtCset5b41vfmiv_13pingora_cache4metaNtB2_9CacheMeta9serialize(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %bb.e unwind label %.thread112

.thread112:                                       ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bl

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.af = load i64, ptr %i.u, align 8, !range !9, !alias.scope !475, !noundef !7 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !476 ; 2 uses
  br i1 %i.ag, label %bb.bi, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.10.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx65, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.af, ptr %i.t, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ai, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !479
  invoke void @_RINvNtNtCs2awuzAz5vY4_5tokio4sync5watch7channelNtNtCset5b41vfmiv_13pingora_cache6memory12PartialStateEBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 0, i64 noundef 0)
          to label %bb.g unwind label %bb.y, !noalias !479

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !479
  %i.aj = load ptr, ptr %i.h, align 8, !noalias !479, !nonnull !7, !noundef !7 ; 2 uses
  store ptr %i.aj, ptr %i.j, align 8, !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !479
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !479, !nonnull !7, !noundef !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !479, !noundef !7
  store ptr %i.al, ptr %i.i, align 8, !noalias !479
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !noalias !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !479
  store i64 1, ptr %i.e, align 8, !noalias !479
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ap, align 8, !noalias !479
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !noalias !479
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !479
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !479
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !480
  %i.ar = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 161) 48, i64 noundef 8) #25, !noalias !480 ; 5 uses
  %i.as = icmp eq ptr %i.ar, null                 ; 2 uses
  br i1 %i.as, label %bb.h, label %bb.k, !prof !18

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #30
          to label %.noexc.i unwind label %bb.i, !noalias !480

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtBG_3vec3VechEEEECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #27
          to label %.body.i unwind label %bb.j, !noalias !479

bb.j:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !479
  unreachable

.body.i:                                          ; preds = %bb.o, %.body19.i, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.az, %.body19.i ], [ %i.at, %bb.i ], [ %i.az, %bb.o ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEBC_EECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g) #27
          to label %bb.w unwind label %bb.v, !noalias !479

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !479
  store ptr %i.ar, ptr %i.f, align 8, !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !479
  store i64 1, ptr %i.d, align 8, !noalias !479
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.av, align 8, !noalias !479
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.aj, ptr %i.aw, align 8, !noalias !479
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !481
  %i.ax = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 161) 24, i64 noundef 8) #25, !noalias !481 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.p, !prof !18

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30
          to label %.noexc21.i unwind label %bb.m, !noalias !481

.noexc21.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCs2awuzAz5vY4_5tokio4sync5watch6SenderNtNtCset5b41vfmiv_13pingora_cache6memory12PartialStateEEEB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %.body19.i unwind label %bb.n, !noalias !479

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !479
  unreachable

.body19.i:                                        ; preds = %bb.m
  %i.bb = atomicrmw add ptr %i.ar, i64 -1 release, align 8, !noalias !482
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.o, label %.body.i

bb.o:                                             ; preds = %.body19.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtB7_3vec3VechEEE9drop_slowCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #28
          to label %.body.i unwind label %bb.v, !noalias !479

bb.p:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_RNCNvXs8_NtCset5b41vfmiv_13pingora_cache6memoryNtB7_8MemCacheNtNtB9_7storage7Storage5purge0B9_:bb.a
          to label %bb.f unwind label %bb.k       ; 0 uses

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val14, i64 24
  invoke void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectENtNtNtB1z_4hash6random11RandomStateE6removeBO_EB2p_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %.val20 = load ptr, ptr %i.b, align 8, !noundef !7
  %i.p = icmp ne ptr %.val20, null                ; 2 uses
  br i1 %i.p, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEB1W_.exit25

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEB1W_.exit25 unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = cmpxchg ptr %i.k, i64 8, i64 0 release monotonic, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2k_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Z_.exit37, label %bb.ad, !prof !21

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEB1W_.exit25: ; preds = %bb.g, %bb.h
  %i.t = cmpxchg ptr %i.k, i64 8, i64 0 release monotonic, align 8
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %bb.l, label %bb.j, !prof !21

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEB1W_.exit25
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.k, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2k_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Z_.exit37: ; preds = %bb.i, %bb.ad, %bb.k
  %.pn4 = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.q, %bb.ad ], [ %i.q, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2k_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Z_.exit37

bb.l:                                             ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEB1W_.exit25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val15 = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val15, i64 16 ; 6 uses
  %i.x = cmpxchg weak ptr %i.w, i64 0, i64 8 acquire monotonic, align 8
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.n, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.z = invoke noundef zeroext i1 @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.w, i64 undef, i32 noundef -1)
          to label %bb.n unwind label %bb.x       ; 0 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val15, i64 24
  invoke void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_EB1u_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %.val21 = load i64, ptr %i.a, align 8, !range !9, !noundef !7
  %i.ab = icmp ne i64 %.val21, -1                 ; 2 uses
  br i1 %i.ab, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEB11_.exit

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc3vec3VechEBC_EECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !566)
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !568, !nonnull !7, !noundef !7
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !noalias !569
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.r, label %.body

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ad) #28
          to label %.body unwind label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !572, !nonnull !7, !noundef !7
  %i.aj = atomicrmw add ptr %i.ai, i64 -1 release, align 8, !noalias !573
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEB11_.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ah) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEB11_.exit unwind label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEB11_.exit: ; preds = %bb.s, %bb.o, %bb.t
  %i.an = cmpxchg ptr %i.w, i64 8, i64 0 release monotonic, align 8
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit, label %bb.w, !prof !21

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEB11_.exit
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.w, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit unwind label %bb.x

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit35: ; preds = %.body, %bb.ab, %bb.x
  %.pn8 = phi { ptr, i32 } [ %i.ap, %bb.x ], [ %.pn6, %bb.ab ], [ %.pn6, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ac

bb.x:                                             ; preds = %bb.w, %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit35

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEB11_.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body31 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i
  %narrow = or i1 %i.p, %i.ab
  %spec.select = zext i1 %narrow to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 0, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select, ptr %.sroa.2.0..sroa_idx, align 1
  store i8 1, ptr %i.d, align 8
  ret void

bb.aa:                                            ; preds = %bb.ad, %bb.ab, %bb.ac
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body:                                            ; preds = %bb.v, %bb.r, %bb.q
  %.pn6 = phi { ptr, i32 } [ %i.ac, %bb.q ], [ %i.am, %bb.v ], [ %i.ac, %bb.r ] ; 2 uses
  %i.at = cmpxchg ptr %i.w, i64 8, i64 0 release monotonic, align 8
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit35, label %bb.ab, !prof !21

bb.ab:                                            ; preds = %.body
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.w, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit35 unwind label %bb.aa

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit35, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2k_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Z_.exit37
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3T_.exit35 ], [ %.pn4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2k_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Z_.exit37 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %.body31 unwind label %bb.aa

bb.ad:                                            ; preds = %bb.i
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.k, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock16RwLockWriteGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2k_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Z_.exit37 unwind label %bb.aa

bb.ae:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #29
  unreachable

bb.af:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCset5b41vfmiv_13pingora_cache6memoryNtB7_8MemCacheNtNtB9_7storage7Storage6lookup0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 19 uses
  %i.d = alloca [32 x i8], align 8                ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !16, !noundef !7
  switch i8 %i.f, label %default.unreachable144 [
    i8 0, label %bb.b
    i8 1, label %bb.as
    i8 2, label %bb.at
  ]

default.unreachable144:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !7, !align !8, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !align !8, !noundef !7
  invoke void @_RNvYNtNtCset5b41vfmiv_13pingora_cache3key8CacheKeyNtB4_12CacheHashKey8combinedB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.i)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit99

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 9 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 8 ; 4 uses
  %i.n = and i64 %i.m, 8
  %i.o = icmp ne i64 %i.n, 0
  %i.p = icmp ugt i64 %i.m, -17
  %or.cond.i.i.i = or i1 %i.p, %i.o
  br i1 %or.cond.i.i.i, label %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, label %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, !prof !19

_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i: ; preds = %bb.d
  %i.q = add nuw i64 %i.m, 16
  %i.r = cmpxchg weak ptr %i.l, i64 %i.m, i64 %i.q acquire monotonic, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.f, label %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, !prof !20

_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i: ; preds = %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, %bb.d
  %i.t = invoke noundef zeroext i1 @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.l, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %3 unwind label %bb.af

bb.f:                                             ; preds = %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !606, !noundef !7
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.aa = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc57 unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc57:                                         ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.ab = lshr i64 %i.aa, 57
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !609, !noundef !7 ; 2 uses
  %i.af = load ptr, ptr %i.v, align 8, !alias.scope !609, !nonnull !7, !noundef !7 ; 2 uses
  %i.ag = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.noexc57
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc57 ], [ %i.ay, %bb.j ]
  %.pn.i.i.i = phi i64 [ %i.aa, %.noexc57 ], [ %i.az, %bb.j ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.ae ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.ai, align 1, !noalias !610 ; 2 uses
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.ah
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ax, %bb.i ], [ %i.ak, %bb.h ] ; 3 uses
  %i.al = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.01.0.i.i.i.i, %i.am
  %i.ao = and i64 %i.an, %i.ae
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds [72 x i8], ptr %i.af, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -72
  %i.as = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsexYYUdYSQU6_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ar)
          to label %.noexc58 unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !611

.noexc58:                                         ; preds = %.lr.ph.i.i.i
  br i1 %i.as, label %bb.k, label %bb.i, !prof !21

._crit_edge.i.i.i:                                ; preds = %bb.i, %bb.h
  %i.at = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %bb.j, label %.thread, !prof !18

bb.i:                                             ; preds = %.noexc58
  %i.aw = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.ax = and i16 %i.aw, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.az = add i64 %.sroa.01.0.i.i.i.i, %i.ay
  br label %bb.h

bb.k:                                             ; preds = %.noexc58
  %i.ba = getelementptr inbounds i8, ptr %i.aq, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !612
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterBS_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) dereferenceable_or_null(48) %i.ba)
          to label %.noexc59 unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.k
  %i.bb = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.l unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.l:                                             ; preds = %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !612
  %i.bc = extractvalue { ptr, ptr } %i.bb, 0
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = extractvalue { ptr, ptr } %i.bb, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  invoke fastcc void @_RNvNtCset5b41vfmiv_13pingora_cache6memory17hit_from_temp_obj(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit: ; preds = %bb.ae, %bb.ad, %bb.m
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body61 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit unwind label %bb.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit97: ; preds = %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp, %bb.aq
  %.pn31 = phi { ptr, i32 } [ %.pn25.pn.pn, %.loopexit.split-lp ], [ %.pn25.pn.pn, %bb.aq ], [ %lpad.loopexit.split-lp160, %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %.body61 unwind label %bb.af

.thread:                                          ; preds = %._crit_edge.i.i.i, %bb.f, %bb.l
  %.val45 = load ptr, ptr %i.g, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val45, i64 16 ; 9 uses
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8 ; 4 uses
  %i.bi = and i64 %i.bh, 8
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = icmp ugt i64 %i.bh, -17
  %or.cond.i.i.i64 = or i1 %i.bk, %i.bj
  br i1 %or.cond.i.i.i64, label %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i66, label %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i65, !prof !19

_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i65: ; preds = %.thread
  %i.bl = add nuw i64 %i.bh, 16
  %i.bm = cmpxchg weak ptr %i.bg, i64 %i.bh, i64 %i.bl acquire monotonic, align 8
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %bb.p, label %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i66, !prof !20

_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i66: ; preds = %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i65, %.thread
  %i.bo = invoke noundef zeroext i1 @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.bg, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %bb.p unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i66, %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i65
  %i.bp = getelementptr inbounds nuw i8, ptr %.val45, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %.val45, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !613, !noundef !7
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %select.unfold113, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.val45, i64 56
  %i.bu = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc80:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.bv = lshr i64 %i.bu, 57
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val45, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !616, !noundef !7 ; 2 uses
  %i.bz = load ptr, ptr %i.bp, align 8, !alias.scope !616, !nonnull !7, !noundef !7 ; 2 uses
  %i.ca = insertelement <16 x i8> poison, i8 %i.bw, i64 0
  %i.cb = shufflevector <16 x i8> %i.ca, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.noexc80
  %.sroa.9.0.i.i.i.i68 = phi i64 [ 0, %.noexc80 ], [ %i.cs, %bb.t ]
  %.pn.i.i.i69 = phi i64 [ %i.bu, %.noexc80 ], [ %i.ct, %bb.t ]
  %.sroa.01.0.i.i.i.i70 = and i64 %.pn.i.i.i69, %i.by ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.01.0.i.i.i.i70
  %.sroa.0.0.copyload.i24.i.i.i71 = load <16 x i8>, ptr %i.cc, align 1, !noalias !617 ; 2 uses
  %i.cd = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i71, %i.cb
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i.not30.i.i.i72 = icmp eq i16 %i.ce, 0
  br i1 %.not.i.not30.i.i.i72, label %._crit_edge.i.i.i76, label %.lr.ph.i.i.i73

.lr.ph.i.i.i73:                                   ; preds = %bb.r, %bb.s
  %.sroa.06.0.i31.i.i.i74 = phi i16 [ %i.cr, %bb.s ], [ %i.ce, %bb.r ] ; 3 uses
  %i.cf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i74, i1 true)
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = add i64 %.sroa.01.0.i.i.i.i70, %i.cg
  %i.ci = and i64 %i.ch, %i.by
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds [80 x i8], ptr %i.bz, i64 %i.cj ; 6 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -80
  %i.cm = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsexYYUdYSQU6_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cl)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !618

.noexc81:                                         ; preds = %.lr.ph.i.i.i73
  br i1 %i.cm, label %bb.u, label %bb.s, !prof !21

._crit_edge.i.i.i76:                              ; preds = %bb.s, %bb.r
  %i.cn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i71, splat (i8 -1)
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = icmp eq i16 %i.co, 0
  br i1 %i.cp, label %bb.t, label %select.unfold113, !prof !18

bb.s:                                             ; preds = %.noexc81
  %i.cq = add i16 %.sroa.06.0.i31.i.i.i74, -1
  %i.cr = and i16 %i.cq, %.sroa.06.0.i31.i.i.i74  ; 2 uses
  %.not.i.not.i.i.i75 = icmp eq i16 %i.cr, 0
  br i1 %.not.i.not.i.i.i75, label %._crit_edge.i.i.i76, label %.lr.ph.i.i.i73

bb.t:                                             ; preds = %._crit_edge.i.i.i76
  %i.cs = add i64 %.sroa.9.0.i.i.i.i68, 16        ; 2 uses
  %i.ct = add i64 %.sroa.01.0.i.i.i.i70, %i.cs
end_hunk_1
begin_hunk_2_@_RNCNvXs8_NtCset5b41vfmiv_13pingora_cache6memoryNtB7_8MemCacheNtNtB9_7storage7Storage6lookup0B9_:bb.a
bb.v:                                             ; preds = %bb.u
  %i.cz = extractvalue { i64, ptr } %i.cy, 1      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  %i.da = extractvalue { i64, ptr } %i.cy, 0
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds i8, ptr %i.ck, i64 -8 ; 2 uses
  %.val53 = load ptr, ptr %i.dc, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.dd = atomicrmw add ptr %.val53, i64 1 monotonic, align 8
  %i.de = icmp slt i64 %i.dd, 0
  br i1 %i.de, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.w
  %.val43 = load ptr, ptr %i.dc, align 8, !nonnull !7, !noundef !7
  %i.df = getelementptr i8, ptr %.val43, i64 32
  %.val44 = load i64, ptr %i.df, align 8, !noundef !7 ; 2 uses
  %i.dg = icmp sgt i64 %.val44, -1
  call void @llvm.assume(i1 %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val53, ptr %i.dh, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val44, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %.sroa.79.0..sroa_idx, align 8
  store i64 0, ptr %i.b, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !619
  %i.di = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 161) 40, i64 noundef 8) #25, !noalias !619 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.z, label %bb.ac, !prof !18

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #30
          to label %.noexc83 unwind label %bb.aa, !noalias !619

.noexc83:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache6memory13MemHitHandlerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #27
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

.body:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCset5b41vfmiv_13pingora_cache4meta9CacheMetaEBF_(ptr nonnull %i.cz) #27
          to label %bb.ag unwind label %bb.af

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.di, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cz, ptr %i.dm, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.di, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @28, ptr %.sroa.615.0..sroa_idx, align 8
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %select.unfold113
  %i.dn = atomicrmw add ptr %i.bg, i64 -16 release, align 8
  %i.do = and i64 %i.dn, -14
  %i.dp = icmp eq i64 %i.do, 18
  br i1 %i.dp, label %bb.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit, !prof !18

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ar, %bb.aq, %.body, %bb.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit97, %bb.e
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ag:                                            ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i73, %bb.q, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.v
  %i.dr = atomicrmw add ptr %i.bg, i64 -16 release, align 8
  %i.ds = and i64 %i.dr, -14
  %i.dt = icmp eq i64 %i.ds, 18
  br i1 %i.dt, label %bb.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit86, !prof !18

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit86 unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %bb.m, %bb.g, %bb.k, %.noexc59, %bb.ai, %bb.ae, %_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i66
  %lpad.loopexit.split-lp160 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit97

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit86: ; preds = %bb.ah, %bb.ai
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i88 unwind label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit86
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body61 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i88: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit86
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit92 unwind label %bb.al

.body61:                                          ; preds = %bb.n, %bb.aj, %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit97
  %.pn33 = phi { ptr, i32 } [ %.pn31, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit97 ], [ %i.be, %bb.n ], [ %i.dz, %bb.al ], [ %i.du, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dw = atomicrmw add ptr %i.l, i64 -16 release, align 8
  %i.dx = and i64 %i.dw, -14
  %i.dy = icmp eq i64 %i.dx, 18
  br i1 %i.dy, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit99, !prof !18

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i88, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body61

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit92: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ea = atomicrmw add ptr %i.l, i64 -16 release, align 8
  %i.eb = and i64 %i.ea, -14
  %i.ec = icmp eq i64 %i.eb, 18
  br i1 %i.ec, label %bb.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit, !prof !18

bb.am:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit92
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit99

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit: ; preds = %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit92, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit95
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.copyload106, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit95 ], [ %i.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit92 ], [ %i.cz, %bb.am ]
  %.sroa.0103.0 = phi i64 [ %.sroa.0103.0.copyload104, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit95 ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit92 ], [ 1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %.sroa.0103.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  store i8 1, ptr %i.e, align 8
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECset5b41vfmiv_13pingora_cache.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ee = atomicrmw add ptr %i.l, i64 -16 release, align 8
  %i.ef = and i64 %i.ee, -14
  %i.eg = icmp eq i64 %i.ef, 18
  br i1 %i.eg, label %bb.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit95, !prof !18

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit95 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionTNtNtCset5b41vfmiv_13pingora_cache4meta9CacheMetaINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1o_7storage9HandleHitNtNtB4_6marker4SendNtB38_4SyncEL_EEEIB27_NtCsfsXztIhCltD_13pingora_error5ErrorEEEB1o_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit99 unwind label %bb.af

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit95: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECset5b41vfmiv_13pingora_cache.exit, %bb.ao
  %.sroa.0103.0.copyload104 = load i64, ptr %i.d, align 8
  %.sroa.3.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0.copyload106 = load ptr, ptr %.sroa.3.0..sroa_idx105, align 8
  %.sroa.4.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx107, i64 16, i1 false)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit99: ; preds = %.body61, %bb.ar, %bb.an, %3, %bb.ap, %bb.c
  %.pn37 = phi { ptr, i32 } [ %i.eh, %bb.ap ], [ %i.j, %bb.c ], [ %i.u, %3 ], [ %i.ed, %bb.an ], [ %.pn33, %bb.ar ], [ %.pn33, %.body61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn37

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ag
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.dk, %bb.ag ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ei = atomicrmw add ptr %i.bg, i64 -16 release, align 8
  %i.ej = and i64 %i.ei, -14
  %i.ek = icmp eq i64 %i.ej, 18
  br i1 %i.ek, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit97, !prof !18

bb.aq:                                            ; preds = %.loopexit.split-lp
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEB3S_.exit97 unwind label %bb.af

bb.ar:                                            ; preds = %.body61
  invoke void @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit99 unwind label %bb.af

3:                                                ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCseJvwusBHZQA_8lock_api6rwlock15RwLockReadGuardNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringIB2j_yNtNtCset5b41vfmiv_13pingora_cache6memory10TempObjectEEEEB3Y_.exit99

bb.as:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #29
  unreachable

bb.at:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtCset5b41vfmiv_13pingora_cache9hashtableINtB2_19ConcurrentHashTableNtNtB4_4lock8LockStubKj10_E5writeB4_(ptr noundef nonnull align 8 %0, i128 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = trunc i128 %1 to i64
  %i.b = and i64 %i.a, 15
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.d = cmpxchg weak ptr %i.c, i64 0, i64 8 acquire monotonic, align 8
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMs8_NtCs9VZ2FwlvA7t_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.c, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEE8try_lockCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 17)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #28
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i8 [ %i.j, %bb.c ], [ 0, %bb.b ]
  %i.k = load atomic i8, ptr %i.d monotonic, align 4
  %.not.i = icmp ne i8 %i.k, 0
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1r_5boxed3BoxNtNtNtCs3gSIjo26Km0_14regex_automata4meta5regex5CacheEEENCNvMs9_BZ_BW_3new0ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  %i.l = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !7, !align !8, !noundef !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !17, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit
  %.sink3 = phi i8 [ %i.p, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 2, %bb.a ]
  %.sink = phi i64 [ %i.l, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 1, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink3, ptr %i.r, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2awuzAz5vY4_5tokio4util11linked_list10LinkedListINtNtNtB13_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1W_9scheduler14current_thread6HandleEEEE4lockCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #28
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtCs2awuzAz5vY4_5tokio4util11linked_list10LinkedListINtNtNtB1t_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB2m_9scheduler14current_thread6HandleEEEENCNvMs9_BZ_BW_3new0ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2awuzAz5vY4_5tokio4util11linked_list10LinkedListINtNtNtB13_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB1W_9scheduler12multi_thread6handle6HandleEEEE4lockCset5b41vfmiv_13pingora_cache(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #28
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtCs2awuzAz5vY4_5tokio4util11linked_list10LinkedListINtNtNtB1t_7runtime4task4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB2m_9scheduler12multi_thread6handle6HandleEEEENCNvMs9_BZ_BW_3new0ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCset5b41vfmiv_13pingora_cache6memoryNtB4_8MemCache3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @33) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.h, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.e, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.f, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !628
  %i.i = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 161) 72, i64 noundef 8) #25, !noalias !628 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEE3newB3Q_.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #30
          to label %.noexc unwind label %bb.c, !noalias !628

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.08.sroa.4.0..sroa_idx)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.f, %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEE3newB3Q_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.c, align 8
  %i.m = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECset5b41vfmiv_13pingora_cache(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @33)
          to label %bb.g unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCseJvwusBHZQA_8lock_api6rwlock6RwLockNtNtCs9VZ2FwlvA7t_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_6string6StringNtNtCset5b41vfmiv_13pingora_cache6memory11CacheObjectEEEE3newB3Q_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.e
end_hunk_2
