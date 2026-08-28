Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.08?download=true
inline.NumInlined: 649
inline.NumDeleted: 283
begin_hunk_0_@_RNvMs0_NtCs7ZUl82OSlxp_6rustls8ticketerNtB5_13TicketRotator10maybe_roll:bb.a
  store atomic i8 1, ptr %i.cj monotonic, align 8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.af, %.noexc58, %bb.ad, %bb.ac
  %i.cp = atomicrmw sub ptr %i.ar, i32 1073741823 release, align 4
  %i.cq = add i32 %i.cp, -1073741823              ; 2 uses
  %or.cond.not.i.i = icmp ult i32 %i.cq, 1073741824
  br i1 %or.cond.not.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1H_.exit, label %bb.ag, !prof !70

bb.ag:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.ar, i32 noundef %i.cq)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1H_.exit unwind label %.thread109

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_EEEB1D_.exit: ; preds = %bb.z, %bb.y, %bb.v
  store ptr %i.br, ptr %i.bu, align 8
  store ptr %i.bt, ptr %i.bv, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cs = load i32, ptr %i.cr, align 8, !noundef !5
  %i.ct = zext i32 %i.cs to i64
  %i.cu = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 %i.ct)
  store i64 %i.cu, ptr %i.bc, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cw = trunc nuw i8 %i.at to i1
  br i1 %i.cw, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i60, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_EEEB1D_.exit
  %i.cx = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cy = and i64 %i.cx, 9223372036854775807
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i60, label %.noexc62, !prof !20

.noexc62:                                         ; preds = %bb.ah
  %i.da = tail call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.da, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i60, label %bb.ai

bb.ai:                                            ; preds = %.noexc62
  store atomic i8 1, ptr %i.cv monotonic, align 8
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i60

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i60: ; preds = %bb.ai, %.noexc62, %bb.ah, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_EEEB1D_.exit
  %i.db = atomicrmw sub ptr %i.ar, i32 1073741823 release, align 4
  %i.dc = add i32 %i.db, -1073741823              ; 2 uses
  %or.cond.not.i.i61 = icmp ult i32 %i.dc, 1073741824
  br i1 %or.cond.not.i.i61, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1H_.exit64, label %bb.aj, !prof !70

bb.aj:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i60
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.ar, i32 noundef %i.dc)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1H_.exit64

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1H_.exit64: ; preds = %bb.aj, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dd = load atomic i32, ptr %i.e monotonic, align 8 ; 3 uses
  %or.cond3.i65 = icmp ult i32 %i.dd, 1073741822
  br i1 %or.cond3.i65, label %bb.ak, label %bb.al, !prof !429

bb.ak:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1H_.exit64
  %i.de = add nuw nsw i32 %i.dd, 1
  %i.df = cmpxchg weak ptr %i.e, i32 %i.dd, i32 %i.de acquire monotonic, align 4
  %i.dg = extractvalue { i32, i1 } %i.df, 1
  br i1 %i.dg, label %_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit67, label %bb.al, !prof !20

bb.al:                                            ; preds = %bb.ak, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1H_.exit64
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.e)
  br label %_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit67

_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit67: ; preds = %bb.al, %bb.ak
  %i.dh = load atomic i8, ptr %i.j monotonic, align 8, !noalias !440
  %.not.i68 = icmp ne i8 %i.dh, 0
  call void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateENCNvMsd_BQ_BN_3new0EB1n_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i68, ptr noundef nonnull align 8 %i.e)
  %i.di = load i64, ptr %i.a, align 8, !range !17, !noundef !5
  %i.dj = trunc nuw i64 %i.di to i1               ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !5
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8            ; 4 uses
  %.sroa.9.3 = select i1 %i.dj, ptr undef, ptr %i.dn
  %.sroa.0.3 = select i1 %i.dj, ptr null, ptr %i.dl
  br i1 %i.dj, label %bb.am, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit73

bb.am:                                            ; preds = %_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit67
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  %i.do = atomicrmw sub ptr %i.dn, i32 1 release, align 4
  %i.dp = add i32 %i.do, -1                       ; 2 uses
  %i.dq = and i32 %i.dp, -1073741825
  %or.cond.i.i.i70 = icmp eq i32 %i.dq, -2147483648
  br i1 %or.cond.i.i.i70, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit.sink.split.i71, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit73, !prof !433

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit.sink.split.i71: ; preds = %bb.am
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.dn, i32 noundef %i.dp)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit73

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit73: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit.sink.split.i71, %bb.am, %_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_EEB1h_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_EEB1h_.exit: ; preds = %bb.s, %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit73
  %.sroa.9.4 = phi ptr [ %.sroa.9.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit73 ], [ %i.o, %bb.e ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit.thread ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit ], [ %.sroa.9.2, %bb.r ], [ %.sroa.9.2, %bb.s ]
  %.sroa.0.4 = phi ptr [ %.sroa.0.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit73 ], [ %i.t, %bb.e ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit.thread ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit ], [ %.sroa.0.2, %bb.r ], [ %.sroa.0.2, %bb.s ]
  %i.dr = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4, 0
  %i.ds = insertvalue { ptr, ptr } %i.dr, ptr %.sroa.9.4, 1
  ret { ptr, ptr } %i.ds

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1H_.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dt = load atomic i32, ptr %i.e monotonic, align 8 ; 3 uses
  %or.cond3.i74 = icmp ult i32 %i.dt, 1073741822
  br i1 %or.cond3.i74, label %bb.an, label %bb.ao, !prof !429

bb.an:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1H_.exit
  %i.du = add nuw nsw i32 %i.dt, 1
  %i.dv = cmpxchg weak ptr %i.e, i32 %i.dt, i32 %i.du acquire monotonic, align 4
  %i.dw = extractvalue { i32, i1 } %i.dv, 1
  br i1 %i.dw, label %_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit76, label %bb.ao, !prof !20

bb.ao:                                            ; preds = %bb.an, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1H_.exit
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.e)
          to label %_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit76 unwind label %.thread109

_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit76: ; preds = %bb.an, %bb.ao
  %i.dx = load atomic i8, ptr %i.j monotonic, align 8, !noalias !443
  %.not.i77 = icmp ne i8 %i.dx, 0
  invoke void @_RINvNtNtCsaKJjC64KgbL_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateENCNvMsd_BQ_BN_3new0EB1n_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %.not.i77, ptr noundef nonnull align 8 %i.e)
          to label %_RNvMsd_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateE3newB1d_.exit79 unwind label %.thread109

_RNvMsd_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateE3newB1d_.exit79: ; preds = %_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit76
  %i.dy = load i64, ptr %i.b, align 8, !range !17, !noundef !5
  %i.dz = trunc nuw i64 %i.dy to i1               ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !5
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8            ; 4 uses
  %.sroa.9.5 = select i1 %i.dz, ptr undef, ptr %i.ed
  %.sroa.0.5 = select i1 %i.dz, ptr null, ptr %i.eb
  br i1 %i.dz, label %bb.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit83

bb.ap:                                            ; preds = %_RNvMsd_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateE3newB1d_.exit79
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  %i.ee = atomicrmw sub ptr %i.ed, i32 1 release, align 4
  %i.ef = add i32 %i.ee, -1                       ; 2 uses
  %i.eg = and i32 %i.ef, -1073741825
  %or.cond.i.i.i80 = icmp eq i32 %i.eg, -2147483648
  br i1 %or.cond.i.i.i80, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit.sink.split.i81, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit83, !prof !433

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit.sink.split.i81: ; preds = %bb.ap
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.ed, i32 noundef %i.ef)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit83 unwind label %.thread109

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEINtB12_11PoisonErrorBX_EEEB22_.exit83: ; preds = %bb.ap, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit.sink.split.i81, %_RNvMsd_NtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateE3newB1d_.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.aq:                                            ; preds = %bb.ab, %bb.aa
  store ptr %i.br, ptr %i.bu, align 8
  store ptr %i.bt, ptr %i.bv, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock16RwLockWriteGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1H_(ptr nonnull %i.ar, i8 %i.at) #24
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.as
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.as:                                            ; preds = %.thread109, %.thread
  %.pn.pn99 = phi { ptr, i32 } [ %i.an, %.thread ], [ %lpad.thr_comm, %.thread109 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_EEB1h_(ptr nonnull %i.ab, ptr %i.ac) #24
          to label %common.resume unwind label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs7ZUl82OSlxp_6rustls8ticketerNtB5_13TicketRotator3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } %2()              ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 15, ptr %i.d, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.a, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = invoke noundef i64 @_RNvMsU_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_8UnixTime3now()
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_EEEB1D_(ptr null, ptr undef) #24
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = zext i32 %1 to i64
  %i.i = tail call i64 @llvm.uadd.sat.i64(i64 %i.f, i64 %i.h)
  store ptr %2, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.5.0..sroa_idx, i8 0, i64 9, i1 false)
  store ptr %i.b, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.sroa.6.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %.sroa.5.sroa.6.sroa.6.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.sroa.7.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %.sroa.5.sroa.6.sroa.7.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.sroa.9.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.i, ptr %.sroa.5.sroa.6.sroa.9.0..sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %1, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void

bb.g:                                             ; preds = %bb.d, %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.h:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn15ProducesTicketsEL_EEB1h_(ptr nonnull %i.b, ptr nonnull %i.e) #24
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls6client6commonNtB5_17ClientAuthDetails7resolve(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) %3, i64 %4, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef range(i64 0, 2305843009213693952) %6, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %7, ptr noundef %8, ptr %9) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not = icmp eq ptr %3, null                    ; 2 uses
  %. = select i1 %.not, i64 0, i64 %4
  %.19 = select i1 %.not, ptr inttoptr (i64 8 to ptr), ptr %3 ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.19, i64 %.
  invoke void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRShEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1K_5slice4iter4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17DistinguishedNameENCNvMs0_NtNtB2W_6client6commonNtB3Y_17ClientAuthDetails7resolve0EE9from_iterB2W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %.19, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !5, !nonnull !5
  %i.l = invoke noundef ptr %i.k(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef %6)
          to label %bb.e unwind label %bb.d       ; 7 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit: ; preds = %bb.g, %bb.h, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.d ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #24
          to label %.thread unwind label %bb.t

bb.d:                                             ; preds = %bb.l, %bb.v, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit

bb.e:                                             ; preds = %bb.c
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.l, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !7, !invariant.load !5
  %i.t = add nsw i64 %i.s, -1
  %i.u = and i64 %i.t, -16
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !5, !nonnull !5
  %i.z = invoke { ptr, ptr } %i.y(ptr noundef nonnull %i.w, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %5, i64 noundef %6)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %._crit_edge, %bb.i
  %i.aa = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.i ]
  %.pn = phi { ptr, i32 } [ %i.ah, %._crit_edge ], [ %i.ad, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !452
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit unwind label %bb.t

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %bb.f
  %i.ae = extractvalue { ptr, ptr } %i.z, 0       ; 3 uses
  %.not14 = icmp eq ptr %i.ae, null
  br i1 %.not14, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.af = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !453
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit22

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit22 unwind label %bb.d

bb.m:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer6SignerEL_EEB1h_(ptr nonnull %i.ae, ptr nonnull %i.ai) #24
          to label %._crit_edge unwind label %bb.t

._crit_edge:                                      ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !452
  br label %bb.g

bb.n:                                             ; preds = %bb.j
  %i.ai = extractvalue { ptr, ptr } %i.z, 1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 6
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp samesign ugt i64 %i.aj, 3
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @37, ptr %i.b, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 22, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @37, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 22, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @36, ptr %i.ap, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @34, ptr noundef nonnull inttoptr (i64 45 to ptr), i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.s unwind label %bb.m

bb.p:                                             ; preds = %bb.n, %bb.s
  %i.aq = phi ptr [ %i.l, %bb.n ], [ %.pre43, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %8, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %9, ptr %i.av, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECs7ZUl82OSlxp_6rustls.exit29 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread34 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre43 = load ptr, ptr %i.c, align 8
  br label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRShEECs7ZUl82OSlxp_6rustls.exit29: ; preds = %bb.p, %bb.w
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.t:                                             ; preds = %bb.h, %bb.m, %.thread, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEB1f_.exit
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB4_17ExpectClientHello18with_certified_key:bb.a
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.az
  %i.kg = load i16, ptr %i.bp, align 2, !range !490, !alias.scope !515, !noalias !522, !noundef !5
  %i.kh = load i16, ptr %i.jx, align 2, !alias.scope !515, !noalias !522
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.02.044.i, i64 2
  %i.kj = load i16, ptr %i.ki, align 2, !alias.scope !524, !noalias !525 ; 3 uses
  %i.kk = icmp ne i16 %.pre.i, 15
  br label %bb.ba

bb.ba:                                            ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_group0Ba_.exit.thread.i.i, %.lr.ph.i.i
  %i.kl = phi ptr [ %i.kb, %.lr.ph.i.i ], [ %i.km, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_group0Ba_.exit.thread.i.i ] ; 5 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %i.kn = load ptr, ptr %i.kl, align 8, !noalias !526, !nonnull !5, !noundef !5
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !526, !nonnull !5, !align !18, !noundef !5
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 72
  %i.kr = load ptr, ptr %i.kq, align 8, !invariant.load !5, !noalias !526, !nonnull !5
  %i.ks = invoke noundef zeroext i1 %i.kr(ptr noundef nonnull %i.kn, i16 noundef %i.kg, i16 %i.kh) #30
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !514, !inline_history !527

.noexc.i:                                         ; preds = %bb.ba
  br i1 %i.ks, label %bb.bb, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_group0Ba_.exit.thread.i.i

bb.bb:                                            ; preds = %.noexc.i
  %i.kt = load ptr, ptr %i.kl, align 8, !noalias !526, !nonnull !5, !noundef !5
  %i.ku = load ptr, ptr %i.ko, align 8, !noalias !526, !nonnull !5, !align !18, !noundef !5
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 56
  %i.kw = load ptr, ptr %i.kv, align 8, !invariant.load !5, !noalias !526, !nonnull !5
  %i.kx = invoke { i16, i16 } %i.kw(ptr noundef nonnull %i.kt) #30
          to label %.noexc73.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !514, !inline_history !527 ; 2 uses

.noexc73.i:                                       ; preds = %bb.bb
  %i.ky = extractvalue { i16, i16 } %i.kx, 0
  %i.kz = icmp eq i16 %i.ky, %.pre.i
  %i.la = extractvalue { i16, i16 } %i.kx, 1
  %i.lb = icmp eq i16 %i.la, %i.kj
  %or.cond.i.i = select i1 %i.kk, i1 true, i1 %i.lb
  %or.cond14.i.i = select i1 %i.kz, i1 %or.cond.i.i, i1 false
  br i1 %or.cond14.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_group0Ba_.exit.thread.i.i

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_group0Ba_.exit.thread.i.i: ; preds = %.noexc73.i, %.noexc.i
  %i.lc = icmp eq ptr %i.km, %i.ke
  br i1 %i.lc, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit.i, label %bb.ba

._crit_edge.loopexit.i:                           ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EE8push_mutB1o_.exit.i
  %.pre57.i = load i16, ptr %i.bp, align 2, !range !490, !noalias !512
  %i.ld = xor i1 %.sroa.0.045..i, true
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ay
  %i.le = phi i16 [ %.sroa.0.0, %bb.ay ], [ %.pre57.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i1 [ true, %bb.ay ], [ %i.ld, %._crit_edge.loopexit.i ]
  %i.lf = icmp eq i16 %i.le, 4
  br i1 %i.lf, label %bb.be, label %._crit_edge._crit_edge.i

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.pre58.i = load i8, ptr %i.bl, align 1, !range !19, !noalias !512
  br label %bb.bg

.body.i:                                          ; preds = %bb.cc, %bb.bz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.qc, %bb.bz ], [ %i.qe, %bb.cc ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit23.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit29.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit31.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit34.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #24
          to label %.body190 unwind label %bb.cf, !noalias !514

.loopexit.i:                                      ; preds = %.noexc105.i, %bb.cg
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i, %bb.bm
  %lpad.loopexit23.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.noexc77.i, %.lr.ph
  %lpad.loopexit29.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.bb, %bb.ba
  %lpad.loopexit31.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.bd, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit.i
  %lpad.loopexit34.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.ck, %.noexc103.i.a, %._RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.thread_crit_edge7.split.us.i.i, %bb.cd, %bb.ca, %bb.bk
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit.i: ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_group0Ba_.exit.thread.i.i, %.noexc73.i, %._RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit_crit_edge.i
  %i.lg = phi i16 [ %.pre56.i, %._RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit_crit_edge.i ], [ %i.kj, %.noexc73.i ], [ %i.kj, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_group0Ba_.exit.thread.i.i ]
  %.sroa.0.0.i.i = phi ptr [ null, %._RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit_crit_edge.i ], [ null, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_group0Ba_.exit.thread.i.i ], [ %i.kl, %.noexc73.i ] ; 2 uses
  %i.lh = invoke noundef zeroext i1 @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_10NamedGroup22key_exchange_algorithm(i16 noundef %.pre.i, i16 %i.lg)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !514 ; 2 uses

bb.bc:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit.i
  %i.li = icmp ne ptr %.sroa.0.0.i.i, null
  %i.lj = zext i1 %i.li to i8
  %..i = select i1 %i.lh, ptr %i.bm, ptr %i.bl    ; 2 uses
  %not..i = xor i1 %i.lh, true
  %.sroa.0.045..i = select i1 %not..i, i1 true, i1 %.sroa.0.045.i ; 2 uses
  %i.lk = load i8, ptr %..i, align 1, !range !19, !noalias !512, !noundef !5
  %i.ll = or i8 %i.lk, %i.lj
  store i8 %i.ll, ptr %..i, align 1, !noalias !512
  %i.lm = load i64, ptr %i.jt, align 8, !alias.scope !528, !noalias !531, !noundef !5 ; 3 uses
  %i.ln = load i64, ptr %i.bk, align 8, !range !6, !alias.scope !528, !noalias !531, !noundef !5
  %i.lo = icmp eq i64 %i.lm, %i.ln
  br i1 %i.lo, label %bb.bd, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EE8push_mutB1o_.exit.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EE8grow_oneB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk) #27
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EE8push_mutB1o_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !514

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EE8push_mutB1o_.exit.i: ; preds = %bb.bd, %bb.bc
  %i.lp = load ptr, ptr %i.js, align 8, !alias.scope !528, !noalias !531, !nonnull !5, !noundef !5
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.lm
  store ptr %.sroa.0.0.i.i, ptr %i.lq, align 8, !noalias !533
  %i.lr = add i64 %i.lm, 1
  store i64 %i.lr, ptr %i.jt, align 8, !alias.scope !528, !noalias !531
  %i.ls = icmp eq ptr %i.jy, %i.ju
  br i1 %i.ls, label %._crit_edge.loopexit.i, label %bb.az

bb.be:                                            ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val175) ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.val175, i64 104
  %i.lu = load ptr, ptr %i.lt, align 8, !noalias !512, !nonnull !5, !noundef !5 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !514, !nonnull !5, !noundef !5 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 56
  %i.ly = load i64, ptr %i.lx, align 8, !noalias !514, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ly, 4
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.idx
  %i.ma = icmp eq i64 %i.ly, 0
  br i1 %i.ma, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i, label %.lr.ph

bb.bf:                                            ; preds = %.noexc78.i
  %i.mb = icmp eq ptr %i.md, %i.lz
  br i1 %i.mb, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be, %bb.bf
  %i.mc = phi ptr [ %i.md, %bb.bf ], [ %i.lw, %bb.be ] ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %i.me = load ptr, ptr %i.mc, align 8, !noalias !534, !nonnull !5, !noundef !5
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !534, !nonnull !5, !align !18, !noundef !5
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 56
  %i.mi = load ptr, ptr %i.mh, align 8, !invariant.load !5, !noalias !534, !nonnull !5
  %i.mj = invoke { i16, i16 } %i.mi(ptr noundef nonnull %i.me) #30
          to label %.noexc77.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !514, !inline_history !537 ; 2 uses

.noexc77.i:                                       ; preds = %.lr.ph
  %i.mk = extractvalue { i16, i16 } %i.mj, 0
  %i.ml = extractvalue { i16, i16 } %i.mj, 1
  %i.mm = invoke noundef zeroext i1 @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_10NamedGroup22key_exchange_algorithm(i16 noundef %i.mk, i16 %i.ml)
          to label %.noexc78.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !514

.noexc78.i:                                       ; preds = %.noexc77.i
  br i1 %i.mm, label %bb.bf, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i: ; preds = %bb.bf, %.noexc78.i, %bb.be
  %.sroa.0.0.i76.i = phi ptr [ null, %bb.be ], [ null, %bb.bf ], [ %i.mc, %.noexc78.i ] ; 2 uses
  %i.mn = icmp ne ptr %.sroa.0.0.i76.i, null
  %narrow.i = and i1 %.sroa.0.0.lcssa.i, %i.mn
  %.sroa.07.0.i = zext i1 %narrow.i to i8
  %i.mo = load i8, ptr %i.bl, align 1, !range !19, !noalias !512, !noundef !5
  %i.mp = or i8 %i.mo, %.sroa.07.0.i              ; 2 uses
  store i8 %i.mp, ptr %i.bl, align 1, !noalias !512
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i, %._crit_edge._crit_edge.i
  %i.mq = phi i8 [ %i.mp, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i ], [ %.pre58.i, %._crit_edge._crit_edge.i ]
  %.sroa.04.0.i = phi ptr [ %.sroa.0.0.i76.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i ], [ null, %._crit_edge._crit_edge.i ] ; 4 uses
  %i.mr = load i8, ptr %i.bm, align 1, !range !19, !noalias !512, !noundef !5
  %i.ms = trunc nuw i8 %i.mr to i1
  %i.mt = trunc nuw i8 %i.mq to i1
  %or.cond.i = select i1 %i.ms, i1 true, i1 %i.mt
  br i1 %or.cond.i, label %bb.bh, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.mu = getelementptr inbounds nuw i8, ptr %.val175, i64 104
  %i.mv = load ptr, ptr %i.mu, align 8, !noalias !512, !nonnull !5, !noundef !5 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !noalias !514, !nonnull !5, !noundef !5 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.mz = load i64, ptr %i.my, align 8, !noalias !514, !noundef !5 ; 2 uses
  %.idx20.i = shl nuw nsw i64 %i.mz, 4
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.idx20.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val175) ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.val175, i64 252
  %i.nc = load i8, ptr %i.nb, align 4, !range !19, !noalias !512, !noundef !5
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.bl, label %bb.bk

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i, %bb.bl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i, %bb.bg, %bb.cj
  %.sroa.11230.sroa.0.0 = phi i64 [ -9223372036854775800, %bb.bg ], [ %i.sa, %bb.cj ], [ -9223372036854775802, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i ], [ -9223372036854775802, %bb.bl ], [ -9223372036854775802, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i ]
  %.sroa.20.0.a = phi ptr [ undef, %bb.bg ], [ %i.rz, %bb.cj ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i ], [ undef, %bb.bl ], [ undef, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i ]
  %.sroa.20.0 = phi ptr [ undef, %bb.bg ], [ %i.rx, %bb.cj ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i ], [ undef, %bb.bl ], [ undef, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i ]
  %.sroa.0229.0 = phi i64 [ 2, %bb.bg ], [ %i.rw, %bb.cj ], [ 2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i ], [ 2, %bb.bl ], [ 2, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtBK_3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EEEB1B_.exit108.i unwind label %bb.bi, !noalias !514

bb.bi:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i
  %i.ne = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.body190 unwind label %bb.bj, !noalias !514

bb.bj:                                            ; preds = %bb.bi
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !514
  unreachable

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !512
  store ptr %i.mx, ptr %i.bi, align 8, !noalias !512
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.na, ptr %.sroa.7.0..sroa_idx7.i, align 8, !noalias !512
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bo, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !512
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.bp, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !512
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bn, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !512
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr %i.bm, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !512
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store ptr %i.bl, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !512
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtB2y_5slice4iter4IterB12_ENCNvMs_NtNtB16_6server2hsNtB3W_17ExpectClientHello25choose_suite_and_kx_groups0_0EE9from_iterB16_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.bi)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !514

bb.bl:                                            ; preds = %bb.bh
  %i.ng = icmp eq i64 %i.mz, 0
  br i1 %i.ng, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i, label %.lr.ph.i80.i

.lr.ph.i80.i:                                     ; preds = %bb.bl
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  br label %bb.bm

bb.bm:                                            ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i, %.lr.ph.i80.i
  %i.ni = phi ptr [ %i.mx, %.lr.ph.i80.i ], [ %i.nj, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i ] ; 8 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.nk = load i8, ptr %i.bo, align 1, !range !541, !noalias !542, !noundef !5
  %i.nl = load i8, ptr %i.jj, align 1, !noalias !542
  %i.nm = invoke noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6suitesNtB4_20SupportedCipherSuite30usable_for_signature_algorithm(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ni, i8 noundef %i.nk, i8 %i.nl)
          to label %.noexc82.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !514

.noexc82.i:                                       ; preds = %bb.bm
  br i1 %i.nm, label %bb.bn, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

bb.bn:                                            ; preds = %.noexc82.i
  %i.nn = load i64, ptr %i.ni, align 8, !range !17, !alias.scope !538, !noalias !549, !noundef !5
  %i.no = trunc nuw i64 %i.nn to i1               ; 5 uses
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13.val.i.i.i.i = load i16, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, align 2, !range !490, !noalias !542
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i.i.i.i = load i16, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12, align 2, !range !490, !noalias !542
  %i.np = select i1 %i.no, i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13.val.i.i.i.i, i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i.i.i.i ; 2 uses
  %i.nq = load i16, ptr %i.bp, align 2, !range !490, !noalias !550, !noundef !5
  %i.nr = icmp eq i16 %i.np, %i.nq
  br i1 %i.nr, label %bb.bo, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.ns = icmp eq i16 %i.np, 9
  br i1 %i.ns, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %.val.i.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, i64 2), align 2, !noalias !542
  %.val7.i.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12, i64 2), align 2, !noalias !542
  %i.nt = select i1 %i.no, i16 %.val.i.i.i.i, i16 %.val7.i.i.i.i
  %i.nu = load i16, ptr %i.nh, align 2, !noalias !550, !noundef !5
  %i.nv = icmp eq i16 %i.nt, %i.nu
  br i1 %i.nv, label %bb.bq, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.nw = load i8, ptr %i.bn, align 1, !range !19, !noalias !550, !noundef !5
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  br i1 %i.no, label %bb.bt, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.ny = load i8, ptr %i.bm, align 1, !range !19, !noalias !550, !noundef !5
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.bv, label %bb.bu

.thread.i.i.i.i:                                  ; preds = %bb.bt
  %i.oa = load i8, ptr %i.bm, align 1, !range !19, !noalias !550, !noundef !5
  %i.ob = trunc nuw i8 %i.oa to i1
  %i.oc = load i8, ptr %i.bl, align 1, !range !19, !noalias !512
  %i.od = trunc nuw i8 %i.oc to i1
  %or.cond16.i = select i1 %i.ob, i1 true, i1 %i.od
  br i1 %or.cond16.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

bb.bt:                                            ; preds = %bb.br
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !alias.scope !538, !noalias !549, !nonnull !5, !align !18, !noundef !5
  %i.og = load ptr, ptr %i.of, align 8, !noalias !549, !noundef !5
  %.not.i.i.i.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i, label %.thread.i.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.oh = load i8, ptr %i.bl, align 1, !range !19, !noalias !550, !noundef !5
  %i.oi = trunc nuw i8 %i.oh to i1                ; 2 uses
  %.not6.i.i.i.i = xor i1 %i.oi, true
  %brmerge.i.i.i.i = or i1 %i.no, %.not6.i.i.i.i
  br i1 %brmerge.i.i.i.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.i.i.i, label %..thread3_crit_edge.i.i.i.i

..thread3_crit_edge.i.i.i.i:                      ; preds = %bb.bu
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !538, !noalias !549
  %.phi.trans.insert8.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 80
  %.pre9.i.i.i.i = load i8, ptr %.phi.trans.insert8.i.i.i.i, align 8, !range !19, !noalias !549
  %i.oj = trunc nuw i8 %.pre9.i.i.i.i to i1
  br i1 %i.oj, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i

bb.bv:                                            ; preds = %bb.bs
  br i1 %i.no, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !alias.scope !538, !noalias !549, !nonnull !5, !align !18, !noundef !5
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 80
  %i.on = load i8, ptr %i.om, align 8, !range !19, !noalias !549, !noundef !5
  %i.oo = trunc nuw i8 %i.on to i1
  %i.op = load i8, ptr %i.bl, align 1, !range !19, !noalias !512
  %i.oq = trunc nuw i8 %i.op to i1
  %or.cond18.i = select i1 %i.oo, i1 true, i1 %i.oq
  br i1 %or.cond18.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.i.i.i: ; preds = %bb.bu
  br i1 %i.oi, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i: ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.i.i.i, %bb.bw, %bb.bv, %..thread3_crit_edge.i.i.i.i, %.thread.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !554
  %i.or = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %.pn.i.i.i.i.i = load ptr, ptr %i.or, align 8, !alias.scope !555, !noalias !556, !nonnull !5, !align !18, !noundef !5
  %i.os = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 72
  %i.ot = load <2 x i16>, ptr %i.os, align 8, !noalias !557
  store <2 x i16> %i.ot, ptr %i.bg, align 4, !noalias !554
  %i.ou = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.bg, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.fy, i64 noundef range(i64 0, 2305843009213693952) %i.ga)
          to label %.noexc83.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !514

.noexc83.i:                                       ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !554
  br i1 %i.ou, label %.loopexit26.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i: ; preds = %.noexc83.i, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.i.i.i, %bb.bw, %..thread3_crit_edge.i.i.i.i, %bb.bt, %.thread.i.i.i.i, %bb.br, %bb.bp, %bb.bn, %.noexc82.i
  %i.ov = icmp eq ptr %i.nj, %i.na
  br i1 %i.ov, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i, label %bb.bm

bb.bx:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !512
  %.idx19.i = shl nuw nsw i64 %i.ga, 2
  %i.ow = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.idx19.i
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.ox = icmp eq i64 %i.ga, 0
  br i1 %i.ox, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i, label %.lr.ph.i85.i

.lr.ph.i85.i:                                     ; preds = %bb.bx
  %i.oy = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !alias.scope !558, !noalias !561, !nonnull !5, !noundef !5 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !alias.scope !558, !noalias !561, !noundef !5 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.pb, 3
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 %.idx.i.i.i ; 2 uses
  %i.pd = icmp eq i64 %i.pb, 0
  br i1 %i.pd, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i85.i, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i
  %i.pe = phi ptr [ %i.pf, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i ], [ %i.fy, %.lr.ph.i85.i ] ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4 ; 2 uses
  %.val4.i.i = load i16, ptr %i.pe, align 2, !alias.scope !510, !noalias !563
  %i.pg = getelementptr i8, ptr %i.pe, i64 2
  %.val5.i.i = load i16, ptr %i.pg, align 2, !alias.scope !510, !noalias !563
  %.0.val1.fr.i.i.i = freeze i16 %.val4.i.i       ; 2 uses
  %.not.i.i.i = icmp eq i16 %.0.val1.fr.i.i.i, 376
  br i1 %.not.i.i.i, label %.lr.ph.i.split.i.i.i, label %.lr.ph.i.split.us.i.i.i

.lr.ph.i.split.us.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.us.i.i.i
  %i.ph = phi ptr [ %i.pn, %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.us.i.i.i ], [ %i.oz, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !564, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %.pn.i.i.us.i.i.i = load ptr, ptr %i.pj, align 8, !noalias !564, !nonnull !5, !align !18, !noundef !5
  %i.pk = getelementptr inbounds nuw i8, ptr %.pn.i.i.us.i.i.i, i64 72
  %i.pl = load i16, ptr %i.pk, align 8, !range !568, !noalias !564, !noundef !5
  %i.pm = icmp eq i16 %.0.val1.fr.i.i.i, %i.pl
  br i1 %i.pm, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRRNtNtBU_6suites20SupportedCipherSuiteNCNvMs_NtNtBU_6server2hsNtB36_17ExpectClientHello25choose_suite_and_kx_groups2_0EBU_.exit.i, label %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.us.i.i.i

_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.us.i.i.i: ; preds = %.lr.ph.i.split.us.i.i.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 2 uses
  %i.po = icmp eq ptr %i.pn, %i.pc
  br i1 %i.po, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i, label %.lr.ph.i.split.us.i.i.i

.lr.ph.i.split.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i
  %i.pp = phi ptr [ %i.pq, %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i ], [ %i.oz, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 2 uses
  %i.pr = load ptr, ptr %i.pp, align 8, !noalias !564, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %.pn.i.i.i.i87.i = load ptr, ptr %i.ps, align 8, !noalias !564, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i87.i, i64 72
  %i.pu = load i16, ptr %i.pt, align 8, !range !568, !noalias !564, !noundef !5
  %i.pv = icmp eq i16 %i.pu, 376
  br i1 %i.pv, label %bb.by, label %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i

bb.by:                                            ; preds = %.lr.ph.i.split.i.i.i
  %i.pw = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i87.i, i64 74
  %i.px = load i16, ptr %i.pw, align 2, !noalias !564
  %i.py = icmp eq i16 %.val5.i.i, %i.px
  br i1 %i.py, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRRNtNtBU_6suites20SupportedCipherSuiteNCNvMs_NtNtBU_6server2hsNtB36_17ExpectClientHello25choose_suite_and_kx_groups2_0EBU_.exit.i, label %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i

_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i: ; preds = %bb.by, %.lr.ph.i.split.i.i.i
  %i.pz = icmp eq ptr %i.pq, %i.pc
  br i1 %i.pz, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i, label %.lr.ph.i.split.i.i.i

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i: ; preds = %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.us.i.i.i, %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i
  %i.qa = icmp eq ptr %i.pf, %i.ow
  br i1 %i.qa, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i, label %.lr.ph.i.i.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRRNtNtBU_6suites20SupportedCipherSuiteNCNvMs_NtNtBU_6server2hsNtB36_17ExpectClientHello25choose_suite_and_kx_groups2_0EBU_.exit.i: ; preds = %.lr.ph.i.split.us.i.i.i, %bb.by
  %i.qb = phi ptr [ %i.pr, %bb.by ], [ %i.pi, %.lr.ph.i.split.us.i.i.i ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.ca unwind label %bb.bz, !noalias !514

bb.bz:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRRNtNtBU_6suites20SupportedCipherSuiteNCNvMs_NtNtBU_6server2hsNtB36_17ExpectClientHello25choose_suite_and_kx_groups2_0EBU_.exit.i
  %i.qc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %.body.i unwind label %bb.cb, !noalias !514

bb.ca:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRRNtNtBU_6suites20SupportedCipherSuiteNCNvMs_NtNtBU_6server2hsNtB36_17ExpectClientHello25choose_suite_and_kx_groups2_0EBU_.exit.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !514

bb.cb:                                            ; preds = %bb.bz
  %i.qd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !514
  unreachable

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i: ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i, %.lr.ph.i85.i, %bb.bx
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.cd unwind label %bb.cc, !noalias !514

bb.cc:                                            ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i
  %i.qe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %.body.i unwind label %bb.ce, !noalias !514

bb.cd:                                            ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !514

bb.ce:                                            ; preds = %bb.cc
  %i.qf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !514
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !512
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit.i: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !512
  br label %.loopexit26.i

bb.cf:                                            ; preds = %.body.i
  %i.qg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !514
  unreachable

.loopexit26.i:                                    ; preds = %.noexc83.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit.i
  %.sroa.026.0.i = phi ptr [ %i.qb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit.i ], [ %i.ni, %.noexc83.i ] ; 6 uses
  %i.qh = load ptr, ptr %i.js, align 8, !noalias !512, !nonnull !5, !noundef !5 ; 3 uses
  %i.qi = load i64, ptr %i.jt, align 8, !noalias !512, !noundef !5 ; 2 uses
  %.idx21.i = shl nuw nsw i64 %i.qi, 3
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 %.idx21.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.qk = icmp eq i64 %i.qi, 0
  br i1 %i.qk, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_NCNvMs_NtNtB1j_6server2hsNtB37_17ExpectClientHello25choose_suite_and_kx_groups3_0EB1j_.exit.i, label %.lr.ph.i99.i

.lr.ph.i99.i:                                     ; preds = %.loopexit26.i
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.026.0.i, i64 8
  %i.qm = load i64, ptr %.sroa.026.0.i, align 8, !range !17, !alias.scope !569, !noalias !572
  %.fr14.i.i = freeze i64 %i.qm
  %i.qn = trunc i64 %.fr14.i.i to i1
  %i.qo = load ptr, ptr %i.ql, align 8, !alias.scope !569, !noalias !572
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 80
  br i1 %i.qn, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i99.i, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.us.i.i
  %i.qq = phi ptr [ %i.ra, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.us.i.i ], [ %i.qh, %.lr.ph.i99.i ] ; 2 uses
  %.val4.us.i.i = load ptr, ptr %i.qq, align 8, !noalias !574, !align !18, !noundef !5 ; 4 uses
  %.not.i.us.i.i = icmp eq ptr %.val4.us.i.i, null
  br i1 %.not.i.us.i.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.us.i.i, label %._RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.thread_crit_edge7.split.us.i.i

._RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.thread_crit_edge7.split.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.qr = load ptr, ptr %.val4.us.i.i, align 8, !noalias !574, !nonnull !5, !noundef !5
  %i.qs = getelementptr inbounds nuw i8, ptr %.val4.us.i.i, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !noalias !574, !nonnull !5, !align !18, !noundef !5
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 56
  %i.qv = load ptr, ptr %i.qu, align 8, !invariant.load !5, !noalias !574, !nonnull !5
  %i.qw = invoke { i16, i16 } %i.qv(ptr noundef nonnull %i.qr) #30
          to label %.noexc103.i.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !514, !inline_history !575 ; 2 uses

.noexc103.i.a:                                    ; preds = %._RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.thread_crit_edge7.split.us.i.i
  %i.qx = extractvalue { i16, i16 } %i.qw, 0
  %i.qy = extractvalue { i16, i16 } %i.qw, 1
  %i.qz = invoke noundef zeroext i1 @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_10NamedGroup22key_exchange_algorithm(i16 noundef %i.qx, i16 %i.qy)
          to label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_NCNvMs_NtNtB1j_6server2hsNtB37_17ExpectClientHello25choose_suite_and_kx_groups3_0EB1j_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !514 ; 0 uses

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qq, i64 8 ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.qj
  br i1 %i.rb, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_NCNvMs_NtNtB1j_6server2hsNtB37_17ExpectClientHello25choose_suite_and_kx_groups3_0EB1j_.exit.i, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i99.i, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.i.i
  %i.rc = phi ptr [ %i.rd, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.i.i ], [ %i.qh, %.lr.ph.i99.i ] ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 2 uses
  %.val4.i100.i = load ptr, ptr %i.rc, align 8, !noalias !574, !align !18, !noundef !5 ; 4 uses
  %.not.i.i101.i = icmp eq ptr %.val4.i100.i, null
  br i1 %.not.i.i101.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.split.i.i
  %i.re = load ptr, ptr %.val4.i100.i, align 8, !noalias !574, !nonnull !5, !noundef !5
  %i.rf = getelementptr inbounds nuw i8, ptr %.val4.i100.i, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !noalias !574, !nonnull !5, !align !18, !noundef !5
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 56
  %i.ri = load ptr, ptr %i.rh, align 8, !invariant.load !5, !noalias !574, !nonnull !5
  %i.rj = invoke { i16, i16 } %i.ri(ptr noundef nonnull %i.re) #30
          to label %.noexc105.i unwind label %.loopexit.i, !noalias !514, !inline_history !575 ; 2 uses

.noexc105.i:                                      ; preds = %bb.cg
  %i.rk = extractvalue { i16, i16 } %i.rj, 0
  %i.rl = extractvalue { i16, i16 } %i.rj, 1
  %i.rm = invoke noundef zeroext i1 @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_10NamedGroup22key_exchange_algorithm(i16 noundef %i.rk, i16 %i.rl)
          to label %.noexc106.i unwind label %.loopexit.i, !noalias !514

.noexc106.i:                                      ; preds = %.noexc105.i
  %i.rn = load i8, ptr %i.qp, align 8, !range !19, !noalias !574, !noundef !5
  %i.ro = zext i1 %i.rm to i8
  %i.rp = icmp eq i8 %i.rn, %i.ro
  br i1 %i.rp, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_NCNvMs_NtNtB1j_6server2hsNtB37_17ExpectClientHello25choose_suite_and_kx_groups3_0EB1j_.exit.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.i.i

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.i.i: ; preds = %.noexc106.i, %.lr.ph.split.i.i
  %i.rq = icmp eq ptr %i.rd, %i.qj
  br i1 %i.rq, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_NCNvMs_NtNtB1j_6server2hsNtB37_17ExpectClientHello25choose_suite_and_kx_groups3_0EB1j_.exit.i, label %.lr.ph.split.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_NCNvMs_NtNtB1j_6server2hsNtB37_17ExpectClientHello25choose_suite_and_kx_groups3_0EB1j_.exit.i: ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.i.i, %.noexc106.i, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.us.i.i, %.noexc103.i.a, %.loopexit26.i
  %.sroa.0.0.i102.i = phi ptr [ %.val4.us.i.i, %.noexc103.i.a ], [ null, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.us.i.i ], [ null, %.loopexit26.i ], [ %.val4.i100.i, %.noexc106.i ], [ null, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.i.i ] ; 4 uses
  %i.rr = icmp eq i16 %i.le, 5
  %.not71.i = icmp eq ptr %.sroa.0.0.i102.i, null ; 2 uses
  br i1 %i.rr, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_NCNvMs_NtNtB1j_6server2hsNtB37_17ExpectClientHello25choose_suite_and_kx_groups3_0EB1j_.exit.i
  %i.rs = load i64, ptr %.sroa.026.0.i, align 8, !range !17, !noalias !514, !noundef !5 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.026.0.i, i64 8 ; 2 uses
  br i1 %.not71.i, label %bb.cm, label %.sink.split.sink.split

bb.ci:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_NCNvMs_NtNtB1j_6server2hsNtB37_17ExpectClientHello25choose_suite_and_kx_groups3_0EB1j_.exit.i
  br i1 %.not71.i, label %bb.ck, label %bb.cj, !prof !21

bb.cj:                                            ; preds = %bb.ci
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.026.0.i, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !noalias !514, !noundef !5
  %i.rw = load i64, ptr %.sroa.026.0.i, align 8, !range !17, !noalias !514, !noundef !5
  %i.rx = load ptr, ptr %.sroa.0.0.i102.i, align 8, !noalias !514, !nonnull !5, !noundef !5
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i102.i, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8, !noalias !514, !nonnull !5, !align !18, !noundef !5
  %i.sa = ptrtoint ptr %i.rv to i64
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i

bb.ck:                                            ; preds = %bb.ci
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !514

bb.cl:                                            ; preds = %bb.ck
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EEEB1B_.exit108.i: ; preds = %bb.cp, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i
  %.sroa.11230.sroa.0.1 = phi i64 [ %.sroa.11230.sroa.0.0, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i ], [ %.sroa.11230.sroa.0.2, %bb.cp ] ; 2 uses
  %.sroa.20.1.a = phi ptr [ %.sroa.20.0.a, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i ], [ %.sroa.24.2, %bb.cp ] ; 6 uses
  %.sroa.20.1 = phi ptr [ %.sroa.20.0, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i ], [ %.sroa.20.2, %bb.cp ] ; 6 uses
  %.sroa.0229.1 = phi i64 [ %.sroa.0229.0, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i ], [ %.sroa.0229.2, %bb.cp ] ; 4 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %bb.cs unwind label %bb.as

bb.cm:                                            ; preds = %bb.ch
  %i.sb = trunc nuw i64 %i.rs to i1
  br i1 %i.sb, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sc = load ptr, ptr %i.rt, align 8, !noalias !514, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 80
  %i.se = load i8, ptr %i.sd, align 8, !range !19, !noalias !514, !noundef !5
  %i.sf = icmp ne i8 %i.se, 0
  %.not70.i = icmp eq ptr %.sroa.04.0.i, null
  %or.cond = or i1 %.not70.i, %i.sf
  br i1 %or.cond, label %bb.cp, label %.sink.split

bb.co:                                            ; preds = %bb.cm
  %.not70.i.old = icmp eq ptr %.sroa.04.0.i, null
  br i1 %.not70.i.old, label %bb.cp, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.co, %bb.ch
  %.sroa.04.0.i.sink349.ph = phi ptr [ %.sroa.0.0.i102.i, %bb.ch ], [ %.sroa.04.0.i, %bb.co ]
  %.pre296 = load ptr, ptr %i.rt, align 8, !noalias !514
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.cn
  %.sroa.04.0.i.sink349 = phi ptr [ %.sroa.04.0.i, %bb.cn ], [ %.sroa.04.0.i.sink349.ph, %.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.sc, %bb.cn ], [ %.pre296, %.sink.split.sink.split ]
  %i.sg = load ptr, ptr %.sroa.04.0.i.sink349, align 8, !noalias !514, !nonnull !5, !noundef !5
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.sink349, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !noalias !514, !nonnull !5, !align !18, !noundef !5
  %i.sj = ptrtoint ptr %.sink to i64
  br label %bb.cp

bb.cp:                                            ; preds = %.sink.split, %bb.co, %bb.cn
  %.sroa.11230.sroa.0.2 = phi i64 [ -9223372036854775800, %bb.cn ], [ -9223372036854775800, %bb.co ], [ %i.sj, %.sink.split ]
  %.sroa.24.2 = phi ptr [ undef, %bb.cn ], [ undef, %bb.co ], [ %i.si, %.sink.split ]
  %.sroa.20.2 = phi ptr [ undef, %bb.cn ], [ undef, %bb.co ], [ %i.sg, %.sink.split ]
  %.sroa.0229.2 = phi i64 [ 2, %bb.cn ], [ 2, %bb.co ], [ %i.rs, %.sink.split ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtBK_3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EEEB1B_.exit108.i unwind label %bb.cq, !noalias !514

bb.cq:                                            ; preds = %bb.cp
  %i.sk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.body190 unwind label %bb.cr, !noalias !514

bb.cr:                                            ; preds = %bb.cq
  %i.sl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !514
  unreachable

bb.cs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EEEB1B_.exit108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.sm = icmp eq i64 %.sroa.0229.1, 2
  br i1 %i.sm, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.sn = load ptr, ptr %5, align 8, !nonnull !5, !align !18, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store i64 %.sroa.11230.sroa.0.1, ptr %i.bu, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %.sroa.20.1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %.sroa.20.1.a, ptr %.sroa.5235.0..sroa_idx, align 8
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error16PeerIncompatibleEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.sn, i8 noundef 6, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bu)
          to label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello18with_certified_keys1_0Ba_.exit unwind label %bb.as

bb.cu:                                            ; preds = %bb.cs
  %i.so = inttoptr i64 %.sroa.11230.sroa.0.1 to ptr ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.1.a) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  store i64 %.sroa.0229.1, ptr %i.ci, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  store ptr %i.so, ptr %i.sp, align 8
  %i.sq = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.sr = icmp ult i64 %i.sq, 6
  call void @llvm.assume(i1 %i.sr)
  %i.ss = icmp samesign ugt i64 %i.sq, 3
  br i1 %i.ss, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  store ptr %i.ci, ptr %i.ch, align 8
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr @_RNvXs0_NtCs7ZUl82OSlxp_6rustls6suitesNtB5_20SupportedCipherSuiteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.4137.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store ptr @18, ptr %i.cg, align 8
  %i.st = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 18, ptr %i.st, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr @18, ptr %i.su, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store i64 18, ptr %i.sv, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store ptr @46, ptr %i.sw, align 8
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @45, ptr noundef nonnull %i.ch, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cg)
          to label %bb.cw unwind label %bb.as

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  %.val176.pre = load ptr, ptr %i.sp, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cu
  %.val176 = phi ptr [ %.val176.pre, %bb.cw ], [ %i.so, %bb.cu ] ; 2 uses
  %i.sx = load ptr, ptr %5, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 688
  store i64 %.sroa.0229.1, ptr %i.sy, align 8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 696
  store ptr %i.so, ptr %i.sz, align 8
  %i.ta = load ptr, ptr %5, align 8, !nonnull !5, !align !18, !noundef !5 ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 704
  store i64 1, ptr %i.tb, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ta, i64 712
  store ptr %.sroa.20.1, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ta, i64 720
  store ptr %.sroa.20.1.a, ptr %.sroa.574.0..sroa_idx, align 8
  %.sroa.0.0.i194 = getelementptr inbounds nuw i8, ptr %.val176, i64 48
  %i.tc = load ptr, ptr %.sroa.0.0.i194, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.val176, i64 56
  %i.te = load ptr, ptr %i.td, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.tg = load i64, ptr %i.tf, align 8, !range !8, !noundef !5
  %.not154 = icmp eq i64 %i.tg, -2
  br i1 %.not154, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.th = invoke { i8, i8 } @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash9algorithm(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.tf)
          to label %bb.dc unwind label %bb.as     ; 2 uses

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.ti, i64 32, i1 false)
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls7hash_hsNtB2_19HandshakeHashBuffer10start_hash(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ce, ptr noundef nonnull %i.tc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.te)
          to label %bb.da unwind label %bb.as

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.db

bb.db:                                            ; preds = %bb.de, %bb.da
  %.sroa.080.8 = phi i8 [ 1, %bb.de ], [ 0, %bb.da ] ; 12 uses
  %.sroa.077.8 = phi i8 [ 0, %bb.de ], [ 1, %bb.da ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.tk = load ptr, ptr %i.cz, align 8, !nonnull !5, !noundef !5
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 104
  %i.tm = load ptr, ptr %i.tl, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 96
  %i.to = load ptr, ptr %i.tn, align 8, !nonnull !5, !noundef !5
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 104
  %i.tq = load ptr, ptr %i.tp, align 8, !nonnull !5, !align !18, !noundef !5
  invoke void @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_6Random3new(ptr noalias nofree noundef nonnull sret([33 x i8]) align 1 captures(none) dereferenceable(33) %i.cb, ptr noundef nonnull %i.to, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tq)
          to label %bb.dh unwind label %bb.oc

bb.dc:                                            ; preds = %bb.cy
  %i.tr = extractvalue { i8, i8 } %i.th, 0        ; 2 uses
  %i.ts = extractvalue { i8, i8 } %i.th, 1
  %i.tt = getelementptr inbounds nuw i8, ptr %i.te, i64 48
  %i.tu = load ptr, ptr %i.tt, align 8, !invariant.load !5, !nonnull !5
  %i.tv = invoke { i8, i8 } %i.tu(ptr noundef nonnull %i.tc)
          to label %bb.dd unwind label %bb.as     ; 2 uses

bb.dd:                                            ; preds = %bb.dc
  %i.tw = extractvalue { i8, i8 } %i.tv, 0
  %i.tx = icmp eq i8 %i.tr, %i.tw
  br i1 %i.tx, label %_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13HashAlgorithmNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit, label %_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13HashAlgorithmNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread

_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13HashAlgorithmNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit: ; preds = %bb.dd
  %i.ty = extractvalue { i8, i8 } %i.tv, 1
  %i.tz = icmp ne i8 %i.tr, 7
  %i.ua = icmp eq i8 %i.ts, %i.ty
  %spec.select.i = select i1 %i.tz, i1 true, i1 %i.ua
  br i1 %spec.select.i, label %bb.de, label %_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13HashAlgorithmNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread

_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13HashAlgorithmNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.dd, %_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13HashAlgorithmNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %i.ub = load ptr, ptr %5, align 8, !nonnull !5, !align !18, !noundef !5
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error14PeerMisbehavedEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.cd, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.ub, i8 noundef 13, i8 undef, i8 noundef 12)
          to label %bb.df unwind label %bb.as

bb.de:                                            ; preds = %_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13HashAlgorithmNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %i.tf, i64 56, i1 false)
  br label %bb.db

bb.df:                                            ; preds = %_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13HashAlgorithmNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.nz, %bb.df
  %.sroa.080.9 = phi i8 [ %.sroa.080.8, %bb.nz ], [ 1, %bb.df ]
  %.sroa.077.9 = phi i8 [ %.sroa.077.8, %bb.nz ], [ 1, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.oa

.body206.thread247:                               ; preds = %bb.dj, %bb.no
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body190

bb.dh:                                            ; preds = %bb.db
  %i.uc = load i8, ptr %i.cb, align 1, !range !19, !noundef !5
  %i.ud = trunc nuw i8 %i.uc to i1
  br i1 %i.ud, label %bb.nz, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ue = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.uf = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.uf, ptr noundef nonnull align 1 dereferenceable(32) %i.ue, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.tj, i64 32, i1 false)
  %i.ug = trunc nuw i64 %.sroa.0229.1 to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.so) ]
  br i1 %i.ug, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.uh = load ptr, ptr %i.cz, align 8, !nonnull !5, !noundef !5
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ui, ptr noundef nonnull align 8 dereferenceable(56) %i.cf, i64 56, i1 false)
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 145
  %i.uk = load i8, ptr %i.uj, align 1, !range !19, !noundef !5
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.um = load i64, ptr %i.ul, align 8, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.un = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  store ptr %i.uh, ptr %i.un, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  store ptr %i.so, ptr %i.uo, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.up, ptr noundef nonnull align 1 dereferenceable(64) %i.cc, i64 64, i1 false)
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ca, i64 176
  store i8 %i.uk, ptr %i.uq, align 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ca, i64 168
  store i64 %i.um, ptr %i.ur, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store ptr %i.if, ptr %i.bs, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %.sroa.0.0.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.8226.0..sroa_idx, align 8
  invoke void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1312client_helloNtB2_27CompleteClientHelloHandling19handle_client_hello(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(184) %i.ca, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %3, ptr noundef nonnull %.sroa.20.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.20.1.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bz)
          to label %bb.nu unwind label %.body206.thread247

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.us = load ptr, ptr %i.cz, align 8, !nonnull !5, !noundef !5
  %i.ut = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ut, ptr noundef nonnull align 8 dereferenceable(56) %i.cf, i64 56, i1 false)
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.uv = getelementptr inbounds nuw i8, ptr %i.by, i64 104 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.uv, ptr noundef nonnull align 8 dereferenceable(40) %i.uu, i64 40, i1 false)
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ux = load i8, ptr %i.uw, align 8, !range !19, !noundef !5
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.uz = load i64, ptr %i.uy, align 8, !noundef !5
  %i.va = icmp ne i64 %i.uz, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.by, i64 88 ; 14 uses
  store ptr %i.us, ptr %i.vb, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %i.by, i64 96 ; 4 uses
  store ptr %i.so, ptr %i.vc, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %i.by, i64 208 ; 6 uses
  store i8 %i.ux, ptr %i.vd, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %i.by, i64 144 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ve, ptr noundef nonnull align 1 dereferenceable(64) %i.cc, i64 64, i1 false)
  %i.vf = getelementptr inbounds nuw i8, ptr %i.by, i64 209 ; 4 uses
  %i.vg = zext i1 %i.va to i8
  store i8 %i.vg, ptr %i.vf, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.vh = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs7ZUl82OSlxp_6rustls7hash_hsNtB4_13HandshakeHash11add_message(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ut, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %4)
          to label %bb.dm unwind label %bb.dl, !noalias !589 ; 0 uses

.body145.i:                                       ; preds = %.body182.thread.i, %bb.ng, %bb.nb, %bb.mv, %bb.ms, %bb.jt, %.body182.i, %bb.ji, %bb.jb, %bb.ja, %bb.ir, %bb.in, %bb.hn, %.body97.i.i, %bb.fk, %bb.fb, %bb.ey, %bb.ev, %bb.em, %bb.dl
  %.sroa.048.0.i = phi i8 [ 1, %bb.ji ], [ 1, %.body182.thread.i ], [ 1, %bb.nb ], [ 1, %bb.em ], [ 1, %bb.ev ], [ 1, %bb.ey ], [ 1, %bb.fk ], [ %.sroa.048.1.i, %bb.dl ], [ 1, %bb.fb ], [ 0, %bb.jb ], [ 0, %bb.ja ], [ 0, %bb.ir ], [ 0, %bb.in ], [ 0, %bb.hn ], [ 0, %.body97.i.i ], [ 1, %.body182.i ], [ 1, %bb.ng ], [ 1, %bb.jt ], [ 0, %bb.mv ], [ 0, %bb.ms ]
  %.sroa.050.0.i = phi i8 [ 0, %bb.ji ], [ %.sroa.050.7270.i, %.body182.thread.i ], [ 0, %bb.nb ], [ 1, %bb.em ], [ 1, %bb.ev ], [ 1, %bb.ey ], [ 1, %bb.fk ], [ %.sroa.050.1.i, %bb.dl ], [ 1, %bb.fb ], [ 0, %bb.jb ], [ 0, %bb.ja ], [ 0, %bb.ir ], [ 0, %bb.in ], [ 0, %bb.hn ], [ 0, %.body97.i.i ], [ 0, %.body182.i ], [ %.sroa.050.11.i, %bb.ng ], [ 0, %bb.jt ], [ 0, %bb.mv ], [ 0, %bb.ms ]
  %.pn106.i = phi { ptr, i32 } [ %.pn291.i, %bb.ji ], [ %.pn104271.i, %.body182.thread.i ], [ %i.apl, %bb.nb ], [ %i.xk, %bb.em ], [ %i.yn, %bb.ev ], [ %i.yt, %bb.ey ], [ %i.zy, %bb.fk ], [ %i.vi, %bb.dl ], [ %i.yw, %bb.fb ], [ %.pn71167.i.i, %bb.jb ], [ %.pn71167.i.i, %bb.ja ], [ %.pn73.i.i, %bb.ir ], [ %.pn73.i.i, %bb.in ], [ %i.afb, %bb.hn ], [ %.pn59.i.i, %.body97.i.i ], [ %lpad.thr_comm.split-lp.i, %.body182.i ], [ %i.app, %bb.ng ], [ %i.apn, %bb.jt ], [ %i.aph, %bb.mv ], [ %i.aou, %bb.ms ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx) #24
          to label %.body134.i unwind label %bb.ne, !noalias !591

bb.dl:                                            ; preds = %bb.nh, %bb.jc, %bb.iq, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1212client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos2_0Ba_.exit.thread.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i, %bb.el, %bb.ek, %bb.eh, %bb.ea, %bb.dx, %bb.dp, %bb.dk
  %.sroa.048.1.i = phi i8 [ 0, %bb.iq ], [ 1, %bb.nh ], [ 1, %bb.jc ], [ 1, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1212client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos2_0Ba_.exit.thread.i.i ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i ], [ 1, %bb.ek ], [ 1, %bb.el ], [ 1, %bb.dk ], [ 1, %bb.dp ], [ 1, %bb.eh ], [ 1, %bb.ea ], [ 1, %bb.dx ]
  %.sroa.050.1.i = phi i8 [ 0, %bb.iq ], [ %.sroa.050.11.i, %bb.nh ], [ 1, %bb.jc ], [ 1, %_RNCNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1212client_helloNtB4_27CompleteClientHelloHandling19handle_client_hellos2_0Ba_.exit.thread.i.i ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i.i ], [ 1, %bb.ek ], [ 1, %bb.el ], [ 1, %bb.dk ], [ 1, %bb.dp ], [ 1, %bb.eh ], [ 1, %bb.ea ], [ 1, %bb.dx ]
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i

bb.dm:                                            ; preds = %bb.dk
  %i.vj = getelementptr inbounds nuw i8, ptr %.val171, i64 550
  %i.vk = load i8, ptr %i.vj, align 2, !range !19, !noalias !592, !noundef !5
  %i.vl = trunc nuw i8 %i.vk to i1
  br i1 %i.vl, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.vm = load ptr, ptr %i.vb, align 8, !alias.scope !579, !noalias !593, !nonnull !5, !noundef !5
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 255
  %i.vo = load i8, ptr %i.vn, align 1, !range !19, !noalias !592, !noundef !5
  %i.vp = trunc nuw i8 %i.vo to i1
  br i1 %i.vp, label %bb.dp, label %bb.dw

bb.do:                                            ; preds = %bb.dm
  store i8 1, ptr %i.vd, align 8, !alias.scope !579, !noalias !593
  br label %bb.dw

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !595
  %i.vq = load ptr, ptr %5, align 8, !alias.scope !581, !noalias !596, !nonnull !5, !align !18, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !595
  store i64 -9223372036854775807, ptr %i.be, align 8, !noalias !595
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error16PeerIncompatibleEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bf, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.vq, i8 noundef 6, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.be)
          to label %bb.dq unwind label %bb.dl, !noalias !592

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.bf, i64 64, i1 false), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !595
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.ds unwind label %bb.dr, !noalias !591

bb.dr:                                            ; preds = %bb.dq
  %i.vr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body134.thread.i unwind label %bb.dt, !noalias !591

bb.ds:                                            ; preds = %bb.dq
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_.exit.i unwind label %bb.du, !noalias !591

bb.dt:                                            ; preds = %bb.dr
  %i.vs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !591
  unreachable

.body134.i:                                       ; preds = %bb.du, %.body145.i
  %.sroa.048.2.i = phi i8 [ %.sroa.048.0.i, %.body145.i ], [ %.sroa.048.3.i, %bb.du ]
  %.sroa.050.2.i = phi i8 [ %.sroa.050.0.i, %.body145.i ], [ %.sroa.050.3.i, %bb.du ] ; 2 uses
  %.pn108.i = phi { ptr, i32 } [ %.pn106.i, %.body145.i ], [ %i.vt, %bb.du ] ; 2 uses
  %cond.i = icmp eq i8 %.sroa.048.2.i, 0
  br i1 %cond.i, label %.body134.thread305.i, label %.body134.thread.i

bb.du:                                            ; preds = %bb.my, %bb.je, %bb.ef, %bb.ds
  %.sroa.048.3.i = phi i8 [ 0, %bb.je ], [ 1, %bb.ef ], [ 0, %bb.my ], [ 1, %bb.ds ]
  %.sroa.050.3.i = phi i8 [ 0, %bb.je ], [ %.sroa.050.5.i, %bb.ef ], [ 0, %bb.my ], [ 1, %bb.ds ]
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %.body134.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_.exit.i: ; preds = %bb.ef, %bb.ds
  %.sroa.050.4.i = phi i8 [ 1, %bb.ds ], [ %.sroa.050.5.i, %bb.ef ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.vu = load ptr, ptr %i.vb, align 8, !alias.scope !604, !noalias !593, !nonnull !5, !noundef !5
  %i.vv = atomicrmw sub ptr %i.vu, i64 1 release, align 8, !noalias !605
  %i.vw = icmp eq i64 %i.vv, 1
  br i1 %i.vw, label %bb.dv, label %bb.nl

bb.dv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.vb) #27
          to label %bb.nl unwind label %bb.nk, !noalias !591

bb.dw:                                            ; preds = %bb.do, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !595
  %i.vx = getelementptr inbounds nuw i8, ptr %.val171, i64 555
  %i.vy = load i8, ptr %i.vx, align 1, !range !489, !noalias !592, !noundef !5 ; 2 uses
  %.not94.i = icmp eq i8 %i.vy, 2
  %spec.select.i196 = select i1 %.not94.i, i8 1, i8 %i.vy ; 2 uses
  store i8 %spec.select.i196, ptr %i.bd, align 1, !noalias !595
  %i.vz = load atomic i64, ptr @_RNvCs4KeUGOPwGKr_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !595 ; 2 uses
  %i.wa = icmp ult i64 %i.vz, 6
  call void @llvm.assume(i1 %i.wa)
  %i.wb = icmp samesign ugt i64 %i.vz, 4
  br i1 %i.wb, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !595
  store ptr %i.bd, ptr %i.bc, align 8, !noalias !595
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXs2j_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23SupportedEcPointFormatsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !595
  store ptr @5, ptr %i.bb, align 8, !noalias !595
  %i.wc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 35, ptr %i.wc, align 8, !noalias !595
  %i.wd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr @5, ptr %i.wd, align 8, !noalias !595
  %i.we = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 35, ptr %i.we, align 8, !noalias !595
  %i.wf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr @29, ptr %i.wf, align 8, !noalias !595
  invoke void @_RINvNtCs4KeUGOPwGKr_3log13___private_api3loguNtB2_12GlobalLoggerECs7ZUl82OSlxp_6rustls(ptr noundef nonnull @28, ptr noundef nonnull %i.bc, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bb)
          to label %bb.dz unwind label %bb.dl, !noalias !592

bb.dy:                                            ; preds = %bb.dz, %bb.dw
  %i.wg = phi i8 [ %spec.select.i196, %bb.dw ], [ %.pre.i204, %bb.dz ]
  %i.wh = trunc nuw i8 %i.wg to i1
  br i1 %i.wh, label %bb.eb, label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !595
  %.pre.i204 = load i8, ptr %i.bd, align 1, !range !19, !noalias !595
  br label %bb.dy

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !595
  %i.wi = load ptr, ptr %5, align 8, !alias.scope !581, !noalias !596, !nonnull !5, !align !18, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !595
  store i64 -9223372036854775789, ptr %i.az, align 8, !noalias !595
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error16PeerIncompatibleEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.wi, i8 noundef 13, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.az)
          to label %bb.ec unwind label %bb.dl, !noalias !592

bb.eb:                                            ; preds = %bb.dy
  br i1 %i.dg, label %bb.eh, label %bb.ei

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ba, i64 64, i1 false), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !595
  br label %bb.ed

bb.ed:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_.exit216.i, %bb.ec
  %.sroa.050.5.i = phi i8 [ %.sroa.050.10.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_.exit216.i ], [ 1, %bb.ec ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !595
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.ef unwind label %bb.ee, !noalias !591

bb.ee:                                            ; preds = %bb.ed
  %i.wj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body134.thread.i unwind label %bb.eg, !noalias !591

bb.ef:                                            ; preds = %bb.ed
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB4_17ExpectClientHello18with_certified_key:bb.a
  %i.agm = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.agm) #24
          to label %.body123.i.i unwind label %bb.hq, !noalias !683

bb.it:                                            ; preds = %bb.fx
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb0_EEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y) #24
          to label %.body79.i.i unwind label %bb.hq, !noalias !683

bb.iu:                                            ; preds = %.body79.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCshEiLVZluVSb_7zeroize9ZeroizingNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EEB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.aw) #24
          to label %bb.iv unwind label %bb.hq, !noalias !683

bb.iv:                                            ; preds = %bb.iu
  br i1 %.sroa.022.0.i.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.ix, %bb.iv
  %i.agn = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8EEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.agn) #24
          to label %bb.iy unwind label %bb.hq, !noalias !683

bb.ix:                                            ; preds = %bb.iv
  %i.ago = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ago) #24
          to label %bb.iw unwind label %bb.hq, !noalias !683

bb.iy:                                            ; preds = %bb.iw
  %i.agp = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16EBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.agp) #24
          to label %.body102.i.i unwind label %bb.hq, !noalias !683

.thread168.i.i:                                   ; preds = %bb.ij, %.body117.i.i, %.body102.i.i
  %.pn71175.i.i = phi { ptr, i32 } [ %.pn71.i.i, %.body102.i.i ], [ %.pn69.i.i, %.body117.i.i ], [ %i.aga, %bb.ij ]
  %.sroa.025.3173.i.i = phi i8 [ %.sroa.025.3.i.i, %.body102.i.i ], [ %.sroa.025.2.i.i, %.body117.i.i ], [ %.sroa.025.2.i.i, %bb.ij ]
  %i.agq = getelementptr inbounds nuw i8, ptr %i.av, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.agr = load ptr, ptr %i.agq, align 8, !alias.scope !736, !noalias !685, !nonnull !5, !noundef !5
  %i.ags = atomicrmw sub ptr %i.agr, i64 1 release, align 8, !noalias !737
  %i.agt = icmp eq i64 %i.ags, 1
  br i1 %i.agt, label %bb.iz, label %.noexc136.i.i

bb.iz:                                            ; preds = %.thread168.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn12ServerConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.agq) #27
          to label %.noexc136.i.i unwind label %bb.hq, !noalias !683

bb.ja:                                            ; preds = %.noexc136.i.i, %.body102.i.i
  %.pn71167.i.i = phi { ptr, i32 } [ %.pn71175.i.i, %.noexc136.i.i ], [ %.pn71.i.i, %.body102.i.i ] ; 2 uses
  %.sroa.025.3166.i.i = phi i8 [ %.sroa.025.3173.i.i, %.noexc136.i.i ], [ %.sroa.025.3.i.i, %.body102.i.i ]
  %i.agu = trunc nuw i8 %.sroa.025.3166.i.i to i1
  br i1 %i.agu, label %bb.jb, label %.body145.i

.noexc136.i.i:                                    ; preds = %bb.iz, %.thread168.i.i
  %i.agv = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls7hash_hs13HandshakeHashEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.agv) #24
          to label %bb.ja unwind label %bb.hq, !noalias !683

bb.jb:                                            ; preds = %bb.ja
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake21ServerExtensionsInputEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.av) #24
          to label %.body145.i unwind label %bb.hq, !noalias !683

bb.jc:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueE6filterNCNvMNtNtNtBO_6server5tls1212client_helloNtB1T_27CompleteClientHelloHandling19handle_client_hellos2_0EBO_.exit.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs7persist18ServerSessionValueE6filterNCNvMNtNtNtBO_6server5tls1212client_helloNtB1T_27CompleteClientHelloHandling19handle_client_hellos2_0EBO_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !595
  %i.agw = load ptr, ptr %i.vc, align 8, !alias.scope !579, !noalias !593, !nonnull !5, !align !18, !noundef !5
  %i.agx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.agy = load ptr, ptr %i.agx, align 8, !alias.scope !587, !noalias !738, !nonnull !5, !noundef !5
  %i.agz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.aha = load i64, ptr %i.agz, align 8, !alias.scope !587, !noalias !738, !noundef !5
  invoke void @_RNvMNtCs7ZUl82OSlxp_6rustls5tls12NtB2_16Tls12CipherSuite19resolve_sig_schemes(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.agw, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.agy, i64 noundef %i.aha)
          to label %bb.jg unwind label %bb.dl, !noalias !592

_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1212client_helloNtB2_27CompleteClientHelloHandling16start_resumption.exit.i: ; preds = %bb.iq, %bb.ip, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i101.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !595
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.je unwind label %bb.jd, !noalias !591

bb.jd:                                            ; preds = %_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1212client_helloNtB2_27CompleteClientHelloHandling16start_resumption.exit.i
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body190 unwind label %bb.jf, !noalias !591

bb.je:                                            ; preds = %_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1212client_helloNtB2_27CompleteClientHelloHandling16start_resumption.exit.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1212client_helloNtB2_27CompleteClientHelloHandling19handle_client_hello.exit unwind label %bb.du, !noalias !591

bb.jf:                                            ; preds = %bb.jd
  %i.ahc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !591
  unreachable

bb.jg:                                            ; preds = %bb.jc
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ahe = load i64, ptr %i.ahd, align 8, !noalias !595, !noundef !5 ; 2 uses
  %i.ahf = icmp ult i64 %i.ahe, 2305843009213693952
  call void @llvm.assume(i1 %i.ahf)
  %i.ahg = icmp eq i64 %i.ahe, 0
  br i1 %i.ahg, label %bb.jh, label %bb.jj

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !595
  %i.ahh = load ptr, ptr %5, align 8, !alias.scope !581, !noalias !596, !nonnull !5, !align !18, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !595
  store i64 -9223372036854775799, ptr %i.as, align 8, !noalias !595
  invoke void @_RINvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error16PeerIncompatibleEB5_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.at, ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %i.ahh, i8 noundef 6, i8 undef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.as)
          to label %bb.nj unwind label %.body182.thread279.i, !noalias !592

bb.ji:                                            ; preds = %.thread284.i
  br i1 %.sroa.044.2289.i, label %.body182.thread.i, label %.body145.i

.body182.thread279.i:                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i181.i, %bb.jn, %bb.jj, %bb.jh
  %.sroa.050.8.ph.i = phi i8 [ 1, %bb.jn ], [ 1, %bb.jj ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i181.i ], [ 1, %bb.jh ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body182.thread.i

.body182.i:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i203.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body145.i

bb.jj:                                            ; preds = %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !595
  store ptr %.sroa.0.0.i, ptr %i.ar, align 8, !noalias !595
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store i64 %.sroa.5.0.i, ptr %i.ahi, align 8, !noalias !595
  %i.ahj = load ptr, ptr %i.vb, align 8, !alias.scope !579, !noalias !593, !nonnull !5, !noundef !5 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 112
  %i.ahl = load ptr, ptr %i.ahk, align 8, !noalias !592, !nonnull !5, !noundef !5
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahj, i64 120
  %i.ahn = load ptr, ptr %i.ahm, align 8, !noalias !592, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16
  %i.ahp = load i64, ptr %i.aho, align 8, !range !7, !invariant.load !5, !noalias !592
  %i.ahq = add nsw i64 %i.ahp, -1
  %i.ahr = and i64 %i.ahq, -16
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahn, i64 56
  %i.ahv = load ptr, ptr %i.ahu, align 8, !invariant.load !5, !noalias !592, !nonnull !5
  %i.ahw = invoke noundef zeroext i1 %i.ahv(ptr noundef nonnull %i.aht)
          to label %bb.jk unwind label %.body182.thread279.i, !noalias !592

bb.jk:                                            ; preds = %bb.jj
  br i1 %i.ahw, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.uv, i8 0, i64 40, i1 false), !alias.scope !579, !noalias !593
  br label %bb.js

bb.jm:                                            ; preds = %bb.jk
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  %.val124.i = load i64, ptr %i.ahx, align 8, !alias.scope !579, !noalias !593, !noundef !5
  %i.ahy = icmp ne i64 %.val124.i, 0
  %or.cond.i199 = or i1 %i.wo, %i.ahy
  br i1 %or.cond.i199, label %bb.js, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !595
  %i.ahz = load ptr, ptr %i.vb, align 8, !alias.scope !579, !noalias !593, !nonnull !5, !noundef !5
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 104
  %i.aib = load ptr, ptr %i.aia, align 8, !noalias !592, !nonnull !5, !noundef !5 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 96
  %i.aid = load ptr, ptr %i.aic, align 8, !noalias !592, !nonnull !5, !noundef !5
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aib, i64 104
  %i.aif = load ptr, ptr %i.aie, align 8, !noalias !592, !nonnull !5, !align !18, !noundef !5
  invoke void @_RNvMs5_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB5_9SessionId6random(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aq, ptr noundef nonnull %i.aid, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aif)
          to label %bb.jo unwind label %.body182.thread279.i, !noalias !592

bb.jo:                                            ; preds = %bb.jn
  %i.aig = load i64, ptr %i.aq, align 8, !range !17, !noalias !595, !noundef !5
  %i.aih = trunc nuw i64 %i.aig to i1
  br i1 %i.aih, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.uv, ptr noundef nonnull align 8 dereferenceable(40) %i.aii, i64 40, i1 false), !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !595
  br label %bb.js

bb.jq:                                            ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !595
  store i8 15, ptr %0, align 8, !alias.scope !576, !noalias !597
  br label %bb.jr

bb.jr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb0_EEBG_.exit.i, %bb.jq
  %.sroa.050.9.i = phi i8 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb0_EEBG_.exit.i ], [ 1, %bb.jq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !595
  br label %bb.nf

bb.js:                                            ; preds = %bb.jp, %bb.jm, %bb.jl
  %i.aij = load ptr, ptr %5, align 8, !alias.scope !581, !noalias !596, !nonnull !5, !align !18, !noundef !5 ; 3 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 704
  store i64 1, ptr %i.aik, align 8, !noalias !592
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aij, i64 712
  store ptr %.sroa.20.1, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !592
  %.sroa.5.0..sroa_idx.i197 = getelementptr inbounds nuw i8, ptr %i.aij, i64 720
  store ptr %.sroa.20.1.a, ptr %.sroa.5.0..sroa_idx.i197, align 8, !noalias !739
  %i.ail = load ptr, ptr %5, align 8, !alias.scope !581, !noalias !596, !nonnull !5, !align !18, !noundef !5
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 833
  store i8 0, ptr %i.aim, align 1, !noalias !592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !595
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.ut, ptr %i.ain, align 8, !alias.scope !740, !noalias !743
  store i64 0, ptr %i.ap, align 8, !alias.scope !740, !noalias !743
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !740, !noalias !743
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !740, !noalias !743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !595
  %i.aio = load ptr, ptr %i.vb, align 8, !alias.scope !579, !noalias !593, !nonnull !5, !noundef !5
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.uv, i64 40, i1 false), !noalias !593
  %i.aiq = load ptr, ptr %i.vc, align 8, !alias.scope !579, !noalias !593, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.air = load i8, ptr %i.vd, align 8, !range !19, !alias.scope !579, !noalias !593, !noundef !5
  %i.ais = trunc nuw i8 %i.air to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(216) %i.by, i64 32, i1 false), !noalias !593
  %i.ait = getelementptr i8, ptr %i.aiq, i64 72
  %.val120.i = load i16, ptr %i.ait, align 8, !noalias !592
  %i.aiu = getelementptr i8, ptr %i.aiq, i64 74
  %.val121.i = load i16, ptr %i.aiu, align 2, !noalias !592
  invoke fastcc void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1212client_hello17emit_server_hello(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.ao, ptr noalias nofree noundef align 8 dereferenceable(32) %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.aip, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.an, i16 %.val120.i, i16 %.val121.i, i1 noundef zeroext %i.ais, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(144) null, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64) %i.ve, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.am)
          to label %bb.jv unwind label %bb.ju, !noalias !592

bb.jt:                                            ; preds = %bb.nd
  br i1 %.sroa.055.1.i, label %.thread284.i, label %.body145.i

bb.ju:                                            ; preds = %bb.mn, %bb.ki, %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.i, %bb.ka, %bb.jz, %bb.js
  %.sroa.044.3.i = phi i1 [ false, %bb.mn ], [ true, %bb.ki ], [ true, %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.i ], [ true, %bb.js ], [ true, %bb.jz ], [ true, %bb.ka ]
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %.thread284.i

bb.jv:                                            ; preds = %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !595
  %i.aiw = load i8, ptr %i.ao, align 8, !range !393, !noalias !595, !noundef !5 ; 2 uses
  %.not99.i = icmp eq i8 %i.aiw, -1
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aiy = load i8, ptr %i.aix, align 1, !noalias !595 ; 2 uses
  br i1 %.not99.i, label %bb.jz, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %.sroa.568.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.568.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.565.0..sroa_idx.i, i64 62, i1 false), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !595
  store i8 %i.aiw, ptr %0, align 8, !alias.scope !576, !noalias !597
  %.sroa.467.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aiy, ptr %.sroa.467.0..sroa_idx.i, align 1, !alias.scope !576, !noalias !597
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i181.i unwind label %bb.jx, !noalias !592

bb.jx:                                            ; preds = %bb.jw
  %i.aiz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %.body182.thread.i unwind label %bb.jy, !noalias !592

bb.jy:                                            ; preds = %bb.jx
  %i.aja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !592
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i181.i: ; preds = %bb.jw
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls12common_state15HandshakeFlightKb0_EEBG_.exit.i unwind label %.body182.thread279.i, !noalias !592

bb.jz:                                            ; preds = %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !595
  store i8 %i.aiy, ptr %i.vf, align 1, !alias.scope !579, !noalias !593
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.ajc = load ptr, ptr %i.ajb, align 8, !noalias !592, !nonnull !5, !noundef !5 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.aje = load i64, ptr %i.ajd, align 8, !noalias !592, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !748
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !753
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef range(i64 0, 384307168202282326) %i.aje, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc186.i unwind label %bb.ju, !noalias !592

.noexc186.i:                                      ; preds = %bb.jz
  %i.ajf = load i64, ptr %i.l, align 8, !range !17, !noalias !753, !noundef !5
  %i.ajg = trunc nuw i64 %i.ajf to i1
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aji = load i64, ptr %i.ajh, align 8, !range !349, !noalias !753, !noundef !5 ; 5 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.ajg, label %bb.ka, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ZUl82OSlxp_6rustls.exit.i.i.i, !prof !21

bb.ka:                                            ; preds = %.noexc186.i
  %i.ajk = load i64, ptr %i.ajj, align 8, !noalias !753
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.aji, i64 %i.ajk) #28
          to label %.noexc187.i unwind label %bb.ju, !noalias !592

.noexc187.i:                                      ; preds = %bb.ka
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ZUl82OSlxp_6rustls.exit.i.i.i: ; preds = %.noexc186.i
  %i.ajl = load ptr, ptr %i.ajj, align 8, !noalias !753, !nonnull !5, !noundef !5 ; 2 uses
  %i.ajm = icmp samesign ule i64 %i.aje, %i.aji
  call void @llvm.assume(i1 %i.ajm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !753
  store i64 %i.aji, ptr %i.m, align 8, !noalias !753
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.ajl, ptr %i.ajn, align 8, !noalias !753
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.ajp = getelementptr inbounds nuw [24 x i8], ptr %i.ajc, i64 %i.aje
  %i.ajq = icmp eq i64 %i.aji, 0
  br i1 %i.ajq, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ZUl82OSlxp_6rustls.exit.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.kb

bb.kb:                                            ; preds = %_RNvXs1D_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_14CertificateDerNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.013.036.i.i.i = phi ptr [ %i.ajc, %.lr.ph.i.i.i ], [ %i.ajt, %_RNvXs1D_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_14CertificateDerNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ] ; 6 uses
  %.sroa.7.035.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.aju, %_RNvXs1D_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_14CertificateDerNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ] ; 3 uses
  %.sroa.10.034.i.i.i = phi i64 [ %i.aji, %.lr.ph.i.i.i ], [ %i.ajr, %_RNvXs1D_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_14CertificateDerNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i ]
  %i.ajr = add i64 %.sroa.10.034.i.i.i, -1        ; 2 uses
  %i.ajs = icmp eq ptr %.sroa.013.036.i.i.i, %i.ajp
  br i1 %i.ajs, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.i, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.013.036.i.i.i, i64 24
  %i.aju = add nuw nsw i64 %.sroa.7.035.i.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.ajv = load i64, ptr %.sroa.013.036.i.i.i, align 8, !range !4, !alias.scope !758, !noalias !759, !noundef !5
  %i.ajw = icmp eq i64 %i.ajv, -1
  br i1 %i.ajw, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.ajx = getelementptr inbounds nuw i8, ptr %.sroa.013.036.i.i.i, i64 8
  %i.ajy = load ptr, ptr %i.ajx, align 8, !alias.scope !758, !noalias !759, !nonnull !5, !noundef !5
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.013.036.i.i.i, i64 16
  %i.aka = load i64, ptr %i.ajz, align 8, !alias.scope !758, !noalias !759, !noundef !5
  br label %_RNvXs1D_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_14CertificateDerNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

bb.ke:                                            ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !761
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.013.036.i.i.i)
          to label %.noexc.i.i.i unwind label %bb.kg, !noalias !762

.noexc.i.i.i:                                     ; preds = %bb.ke
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !761
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !761
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !761
  br label %_RNvXs1D_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_14CertificateDerNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i

_RNvXs1D_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_14CertificateDerNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i: ; preds = %.noexc.i.i.i, %bb.kd
  %.sroa.6.0.i.i.i.i = phi i64 [ %i.aka, %bb.kd ], [ %.sroa.6.0.copyload.i.i.i.i, %.noexc.i.i.i ]
  %.sroa.5.0.i.i.i.i = phi ptr [ %i.ajy, %bb.kd ], [ %.sroa.5.0.copyload.i.i.i.i, %.noexc.i.i.i ]
  %.sroa.0.0.i12.i.i.i = phi i64 [ -1, %bb.kd ], [ %.sroa.0.0.copyload.i.i.i.i, %.noexc.i.i.i ]
  %i.akb = getelementptr inbounds nuw [24 x i8], ptr %i.ajl, i64 %.sroa.7.035.i.i.i ; 3 uses
  store i64 %.sroa.0.0.i12.i.i.i, ptr %i.akb, align 8, !noalias !762
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  store ptr %.sroa.5.0.i.i.i.i, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !762
  %.sroa.525.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.akb, i64 16
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.525.0..sroa_idx.i.i.i, align 8, !noalias !762
  %i.akc = icmp eq i64 %i.ajr, 0
  br i1 %i.akc, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.i, label %bb.kb

bb.kf:                                            ; preds = %bb.kg
  %i.akd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !762
  unreachable

bb.kg:                                            ; preds = %bb.ke
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.035.i.i.i, ptr %i.ajo, align 8, !noalias !753
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #24
          to label %.thread284.i unwind label %bb.kf, !noalias !762

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.i: ; preds = %_RNvXs1D_CseO5Jl7W60Eg_16rustls_pki_typesNtB6_14CertificateDerNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i.i, %bb.kb, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ZUl82OSlxp_6rustls.exit.i.i.i
  store i64 %i.aje, ptr %i.ajo, align 8, !noalias !753
  %.sroa.4.0..sroa_idx.i185.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i185.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !753
  store i64 -9223372036854775804, ptr %i.n, align 8, !noalias !748
  invoke void @_RNvMs6_NtCs7ZUl82OSlxp_6rustls12common_stateINtB5_15HandshakeFlightKb0_E3addB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.n)
          to label %bb.kh unwind label %bb.ju, !noalias !592

bb.kh:                                            ; preds = %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7ZUl82OSlxp_6rustls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !748
  %i.ake = load ptr, ptr %i.ar, align 8, !noalias !595, !noundef !5 ; 2 uses
  %.not100.i = icmp eq ptr %i.ake, null
  br i1 %.not100.i, label %bb.kk, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.akf = load i64, ptr %i.ahi, align 8, !noalias !595, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !763
  store i64 -9223372036854775789, ptr %i.j, align 8, !noalias !763
  %.sroa.4.0..sroa_idx.i191.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i191.i, align 8, !noalias !763
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.ake, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !763
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.akf, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !763
  invoke void @_RNvMs6_NtCs7ZUl82OSlxp_6rustls12common_stateINtB5_15HandshakeFlightKb0_E3addB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.j)
          to label %_RNvNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1212client_hello16emit_cert_status.exit.i unwind label %bb.ju, !noalias !592

_RNvNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1212client_hello16emit_cert_status.exit.i: ; preds = %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !763
  br label %bb.kk

bb.kj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_.exit157.i.i
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %.thread284.i

bb.kk:                                            ; preds = %_RNvNtNtNtCs7ZUl82OSlxp_6rustls6server5tls1212client_hello16emit_cert_status.exit.i, %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9236.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !595
  %i.akh = load ptr, ptr %i.im, align 8, !noalias !592, !nonnull !5, !noundef !5
  %i.aki = load ptr, ptr %i.io, align 8, !noalias !592, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 16
  %i.akk = load i64, ptr %i.akj, align 8, !range !7, !invariant.load !5, !noalias !592
  %i.akl = add nsw i64 %i.akk, -1
  %i.akm = and i64 %i.akl, -16
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akh, i64 %i.akm
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 16
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.20.1.a, i64 32
  %.val130.i = load ptr, ptr %i.akp, align 8, !alias.scope !585, !noalias !767
  %i.akq = getelementptr i8, ptr %i.aki, i64 32
  %.val131.i = load ptr, ptr %i.akq, align 8, !noalias !592
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !771
  invoke void %.val130.i(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noundef nonnull %.sroa.20.1)
          to label %bb.km unwind label %bb.kl, !noalias !775

.body154.i.i:                                     ; preds = %bb.mi, %bb.mf, %bb.me, %bb.lt, %bb.kp, %bb.kl
  %.pn126.i.i = phi { ptr, i32 } [ %.pn124.i.i, %bb.kp ], [ %.pn12424.i.i, %bb.mi ], [ %i.akr, %bb.kl ], [ %i.ans, %bb.mf ], [ %i.ans, %bb.me ], [ %i.anf, %bb.lt ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs7ZUl82OSlxp_6rustls5enums15SignatureSchemeEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al) #24
          to label %.thread284.i unwind label %bb.lz, !noalias !776

bb.kl:                                            ; preds = %bb.kk
  %i.akr = landingpad { ptr, i32 }
          cleanup
  br label %.body154.i.i

bb.km:                                            ; preds = %bb.kk
  %i.aks = load i8, ptr %i.i, align 8, !range !393, !noalias !771, !noundef !5 ; 2 uses
  %.not.i195.i = icmp eq i8 %i.aks, -1
  br i1 %.not.i195.i, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %.sroa.465.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9236.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.465.0..sroa_idx.i.i, i64 7, i1 false), !noalias !777
  %.sroa.566.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.566.0.copyload.i.i = load ptr, ptr %.sroa.566.0..sroa_idx.i.i, align 8, !noalias !771
  %.sroa.667.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.667.0.copyload.i.i = load ptr, ptr %.sroa.667.0..sroa_idx.i.i, align 8, !noalias !771
  %.sroa.768.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.22.24.copyload237.i = load i64, ptr %.sroa.768.0..sroa_idx.i.i, align 8, !noalias !777
  %.sroa.25.24..sroa.768.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.25.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.25.24..sroa.768.0..sroa_idx.i.sroa_idx.i, i64 32, i1 false), !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !771
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtCs7ZUl82OSlxp_6rustls6crypto17ActiveKeyExchangeEL_EEB1f_.exit.i.i

bb.ko:                                            ; preds = %bb.km
  %i.akt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aku = load ptr, ptr %i.akt, align 8, !noalias !771, !nonnull !5, !noundef !5 ; 6 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.akw = load ptr, ptr %i.akv, align 8, !noalias !771, !nonnull !5, !align !18, !noundef !5 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !771
  invoke void @_RNvMs1r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23ServerKeyExchangeParams3new(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noundef nonnull %i.aku, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.akw)
          to label %bb.kq unwind label %.thread.i.i, !noalias !775

bb.kp:                                            ; preds = %.body.thread.i.i, %.body.i.i
  %.sroa.058.0.i.i = phi i8 [ %.sroa.058.3.i.i, %.body.i.i ], [ %.sroa.058.328.i.i, %.body.thread.i.i ]
  %.pn124.i.i = phi { ptr, i32 } [ %.pn122.i.i, %.body.i.i ], [ %.pn12229.i.i, %.body.thread.i.i ] ; 2 uses
  %i.akx = trunc nuw i8 %.sroa.058.0.i.i to i1
  br i1 %i.akx, label %bb.mi, label %.body154.i.i

.thread.i.i:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i196.i, %bb.ko
  %i.aky = landingpad { ptr, i32 }
          cleanup
  br label %bb.mi

bb.kq:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !771
  store i64 0, ptr %i.g, align 8, !noalias !771
  %i.akz = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.akz, align 8, !noalias !771
  %i.ala = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %i.ala, align 8, !noalias !771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !771
  %.sroa.582.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.582.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ve, i64 32, i1 false), !noalias !778
  store i64 0, ptr %i.e, align 8, !noalias !771
  %.sroa.481.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 32, ptr %.sroa.481.0..sroa_idx.i.i, align 8, !noalias !771
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterhKj20_EECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.ks unwind label %bb.kr, !noalias !775

.body139.i.i:                                     ; preds = %bb.ls, %bb.lr, %bb.ll, %bb.lk, %bb.ld, %bb.kr
  %.sroa.057.0.i.i = phi i8 [ %.sroa.057.3.i.i, %bb.ld ], [ 1, %bb.lk ], [ 1, %bb.kr ], [ 1, %bb.ll ], [ 0, %bb.ls ], [ 0, %bb.lr ]
  %.sroa.058.1.i.i = phi i8 [ 1, %bb.ld ], [ 1, %bb.lk ], [ 1, %bb.kr ], [ 1, %bb.ll ], [ 0, %bb.ls ], [ 0, %bb.lr ]
  %.pn120.i.i = phi { ptr, i32 } [ %i.aly, %bb.ld ], [ %i.amm, %bb.lk ], [ %i.alb, %bb.kr ], [ %i.amm, %bb.ll ], [ %i.amz, %bb.ls ], [ %i.amz, %bb.lr ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #24
          to label %.body.i.i unwind label %bb.lz, !noalias !779

bb.kr:                                            ; preds = %bb.ky, %bb.kx, %bb.ku, %bb.kt, %bb.ks, %bb.kq
  %i.alb = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i.i

bb.ks:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !771
  %i.alc = getelementptr inbounds nuw i8, ptr %i.by, i64 176
  %.sroa.591.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.591.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.alc, i64 32, i1 false), !noalias !778
  store i64 0, ptr %i.d, align 8, !noalias !771
  %.sroa.490.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 32, ptr %.sroa.490.0..sroa_idx.i.i, align 8, !noalias !771
  invoke void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterhKj20_EECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.kt unwind label %bb.kr, !noalias !775

bb.kt:                                            ; preds = %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !771
  invoke void @_RNvMs1r_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23ServerKeyExchangeParams6encode(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ku unwind label %bb.kr, !noalias !775

bb.ku:                                            ; preds = %bb.kt
  %i.ald = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ale = load ptr, ptr %i.ald, align 8, !alias.scope !768, !noalias !780, !nonnull !5, !noundef !5
  %i.alf = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.alg = load i64, ptr %i.alf, align 8, !alias.scope !768, !noalias !780, !noundef !5
  %i.alh = invoke { ptr, ptr } %.val131.i(ptr noundef nonnull %i.ako, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.ale, i64 noundef %i.alg)
          to label %bb.kv unwind label %bb.kr, !noalias !775 ; 2 uses

bb.kv:                                            ; preds = %bb.ku
  %i.ali = extractvalue { ptr, ptr } %i.alh, 0    ; 10 uses
  %.not117.i.i = icmp eq ptr %i.ali, null
  br i1 %.not117.i.i, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.alj = extractvalue { ptr, ptr } %i.alh, 1    ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.alj) ]
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 40
  %i.all = load ptr, ptr %i.alk, align 8, !invariant.load !5, !noalias !775, !nonnull !5
  %i.alm = invoke { i16, i16 } %i.all(ptr noundef nonnull %i.ali)
          to label %bb.le unwind label %bb.ld, !noalias !775 ; 2 uses

bb.kx:                                            ; preds = %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !781
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 24, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i197.i unwind label %bb.kr, !noalias !775

.noexc.i197.i:                                    ; preds = %bb.kx
  %i.aln = load i64, ptr %i.b, align 8, !range !17, !noalias !781, !noundef !5
  %i.alo = trunc nuw i64 %i.aln to i1
  %i.alp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.alq = load i64, ptr %i.alp, align 8, !range !349, !noalias !781, !noundef !5 ; 3 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.alo, label %bb.ky, label %bb.kz, !prof !21

bb.ky:                                            ; preds = %.noexc.i197.i
  %i.als = load i64, ptr %i.alr, align 8, !noalias !781
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.alq, i64 %i.als) #28
          to label %.noexc137.i.i unwind label %bb.kr, !noalias !775

.noexc137.i.i:                                    ; preds = %bb.ky
  unreachable

bb.kz:                                            ; preds = %.noexc.i197.i
  %i.alt = load ptr, ptr %i.alr, align 8, !noalias !781, !nonnull !5, !noundef !5 ; 2 uses
  %i.alu = icmp samesign ugt i64 %i.alq, 23
  call void @llvm.assume(i1 %i.alu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.alt, ptr noundef nonnull align 1 dereferenceable(24) @9, i64 24, i1 false), !noalias !784
  %i.alv = inttoptr i64 %i.alq to ptr
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer6SignerEL_EEB1h_.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer6SignerEL_EEB1h_.exit.i.i: ; preds = %bb.lj, %bb.li, %bb.kz
  %.sroa.22.2.i = phi i64 [ 24, %bb.kz ], [ %.sroa.22.1.copyload.i, %bb.li ], [ %.sroa.22.1.copyload.i, %bb.lj ] ; 2 uses
  %.sroa.17.2.i = phi ptr [ %i.alt, %bb.kz ], [ %.sroa.17.1.copyload.i, %bb.li ], [ %.sroa.17.1.copyload.i, %bb.lj ] ; 2 uses
  %.sroa.12.2.i = phi ptr [ %i.alv, %bb.kz ], [ %.sroa.12.1.copyload.i, %bb.li ], [ %.sroa.12.1.copyload.i, %bb.lj ] ; 2 uses
  %.sroa.0234.2.i = phi i8 [ 13, %bb.kz ], [ %i.amf, %bb.li ], [ %i.amf, %bb.lj ] ; 2 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.lb unwind label %bb.la, !noalias !775

bb.la:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer6SignerEL_EEB1h_.exit.i.i
  %i.alw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.thread.i.i unwind label %bb.lc, !noalias !775

bb.lb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer6SignerEL_EEB1h_.exit.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls.exit.i196.i unwind label %bb.lw, !noalias !775

bb.lc:                                            ; preds = %bb.la
  %i.alx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !775
  unreachable

bb.ld:                                            ; preds = %bb.lm, %bb.le, %bb.kw
  %.sroa.057.3.i.i = phi i8 [ 0, %bb.lm ], [ 1, %bb.kw ], [ 1, %bb.le ]
  %i.aly = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer6SignerEL_EEB1h_(ptr nonnull %i.ali, ptr nonnull %i.alj) #24
          to label %.body139.i.i unwind label %bb.lz, !noalias !779

bb.le:                                            ; preds = %bb.kw
  %i.alz = extractvalue { i16, i16 } %i.alm, 0
  %i.ama = extractvalue { i16, i16 } %i.alm, 1
  %i.amb = load ptr, ptr %i.akz, align 8, !noalias !771, !nonnull !5, !noundef !5
  %i.amc = load i64, ptr %i.ala, align 8, !noalias !771, !noundef !5
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alj, i64 32
  %i.ame = load ptr, ptr %i.amd, align 8, !invariant.load !5, !noalias !775, !nonnull !5
  invoke void %i.ame(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noundef nonnull %i.ali, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.amb, i64 noundef %i.amc)
          to label %bb.lf unwind label %bb.ld, !noalias !775

bb.lf:                                            ; preds = %bb.le
  %i.amf = load i8, ptr %i.c, align 8, !range !393, !noalias !771, !noundef !5 ; 3 uses
  %.not118.i.i = icmp eq i8 %i.amf, -1
  br i1 %.not118.i.i, label %bb.lm, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %.sroa.4111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.5112.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.25.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5112.0..sroa_idx.i.i, i64 32, i1 false), !noalias !777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9236.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4111.0..sroa_idx.i.i, i64 7, i1 false), !noalias !777
  %.sroa.12.1..sroa.4111.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_2
