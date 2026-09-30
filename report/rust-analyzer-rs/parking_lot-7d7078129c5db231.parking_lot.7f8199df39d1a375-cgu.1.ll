Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/parking_lot-7d7078129c5db231.parking_lot.7f8199df39d1a375-cgu.1?download=true
inline.NumInlined: 184
inline.NumDeleted: 105
begin_hunk_0_@_RNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB4_7Condvar19wait_until_internal:bb.a
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.x, %bb.w
  %lpad.loopexit54 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.g, %bb.i, %bb.k
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %_RNvYNCNKNvNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_data11THREAD_DATA00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1z_6option6OptionQIB2e_NtBa_10ThreadDataEEEE9call_onceCsaWIbZW7RmAr_11parking_lot.exit.i, %bb.f, %bb.p, %bb.t, %bb.u, %bb.af, %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit54, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit58, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val = load i64, ptr %i.b, align 8, !range !65, !noundef !5
  %i.i = icmp eq i64 %.val, 0
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %i.j = atomicrmw sub ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot11NUM_THREADS, i64 1 monotonic, align 8 ; 0 uses
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit

bb.c:                                             ; preds = %_RNvYNCNKNvNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_data11THREAD_DATA00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1z_6option6OptionQIB2e_NtBa_10ThreadDataEEEE9call_onceCsaWIbZW7RmAr_11parking_lot.exit.i
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %bb.d, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataE18get_or_insert_withNvMs1_BK_BI_3newECsaWIbZW7RmAr_11parking_lot.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.l = load i64, ptr %i.b, align 8, !range !65, !alias.scope !66, !noalias !63, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataE18get_or_insert_withNvMs1_BK_BI_3newECsaWIbZW7RmAr_11parking_lot.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !noalias !67
  invoke void @_RNvMs1_NtCsd9r5UMv47dc_16parking_lot_core11parking_lotNtB5_10ThreadData3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %.sroa.4.i)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.f
  store i64 1, ptr %i.b, align 8, !alias.scope !66, !noalias !63
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false), !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !noalias !67
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataE18get_or_insert_withNvMs1_BK_BI_3newECsaWIbZW7RmAr_11parking_lot.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataE18get_or_insert_withNvMs1_BK_BI_3newECsaWIbZW7RmAr_11parking_lot.exit: ; preds = %bb.a, %bb.c, %.noexc12, %bb.e
  %.sroa.0.0.i = phi ptr [ %.sroa.4.0..sroa_idx.i, %.noexc12 ], [ %i.n, %bb.e ], [ %i.h, %bb.c ], [ %i.d, %bb.a ] ; 14 uses
  %i.o = mul i64 %i.c, -7046029254386353131
  br label %.noexc18

.noexc18:                                         ; preds = %.noexc18.backedge, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataE18get_or_insert_withNvMs1_BK_BI_3newECsaWIbZW7RmAr_11parking_lot.exit
  %i.p = load atomic ptr, ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot9HASHTABLE acquire, align 8, !noalias !68 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %.noexc15, !prof !9

bb.g:                                             ; preds = %.noexc18
  %i.r = invoke noundef nonnull align 8 ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16create_hashtable()
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %bb.g, %.noexc18
  %.sroa.0.0.i.i = phi ptr [ %i.p, %.noexc18 ], [ %i.r, %bb.g ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.t = load i32, ptr %i.s, align 8, !noalias !68, !noundef !5
  %i.u = sub i32 0, %i.t
  %i.v = and i32 %i.u, 63
  %i.w = zext nneg i32 %i.v to i64
  %i.x = lshr i64 %i.o, %i.w                      ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !68, !noundef !5 ; 2 uses
  %i.aa = icmp ult i64 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %.invoke

bb.h:                                             ; preds = %.noexc15
  %i.ab = load ptr, ptr %.sroa.0.0.i.i, align 8, !noalias !68, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %i.x ; 11 uses
  %i.ad = cmpxchg weak ptr %i.ac, i64 0, i64 1 acquire monotonic, align 8, !noalias !68
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %.noexc17, label %bb.i, !prof !8

.invoke:                                          ; preds = %.noexc15, %.noexc24
  %i.af = phi i64 [ %i.cs, %.noexc24 ], [ %i.x, %.noexc15 ]
  %i.ag = phi i64 [ %i.cu, %.noexc24 ], [ %i.z, %.noexc15 ]
  %i.ah = phi ptr [ @22, %.noexc24 ], [ @17, %.noexc15 ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock9lock_slow(ptr noundef nonnull align 8 %i.ac)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %bb.i, %bb.h
  %i.ai = load atomic ptr, ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot9HASHTABLE monotonic, align 8, !noalias !68
  %i.aj = icmp eq ptr %i.ai, %.sroa.0.0.i.i
  br i1 %i.aj, label %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot11lock_bucket.exit.i, label %bb.j

bb.j:                                             ; preds = %.noexc17
  %i.ak = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !68 ; 2 uses
  %i.al = and i64 %i.ak, 2
  %i.am = icmp ne i64 %i.al, 0
  %i.an = icmp ult i64 %i.ak, 4
  %or.cond.i.i = or i1 %i.an, %i.am
  br i1 %or.cond.i.i, label %.noexc18.backedge, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.ac)
          to label %.noexc18.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18.backedge:                                ; preds = %bb.k, %bb.j
  br label %.noexc18

_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot11lock_bucket.exit.i: ; preds = %.noexc17
  %i.ao = load atomic ptr, ptr %0 monotonic, align 8, !noalias !69 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot11lock_bucket.exit.i
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot11lock_bucket.exit.i
  store atomic ptr %1, ptr %0 monotonic, align 8, !noalias !69
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aq = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !68 ; 2 uses
  %i.ar = and i64 %i.aq, 2
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = icmp ult i64 %i.aq, 4
  %or.cond.i = or i1 %i.at, %i.as
  br i1 %or.cond.i, label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit, label %bb.p, !prof !6

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.au = icmp ne i32 %3, -1                      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 36
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 1, !noalias !68
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  store ptr null, ptr %i.ax, align 8, !noalias !68
  store atomic i64 %i.c, ptr %.sroa.0.0.i monotonic, align 8, !noalias !68
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  store i64 0, ptr %i.ay, align 8, !noalias !68
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 32 ; 7 uses
  store atomic i32 1, ptr %i.az monotonic, align 8, !noalias !68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !68, !noundef !5
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.ac)
          to label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !68, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.sroa.0.0.i, ptr %i.bf, align 8, !noalias !68
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  store ptr %.sroa.0.0.i, ptr %i.ba, align 8, !noalias !68
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %.sroa.0.0.i, ptr %i.bg, align 8, !noalias !68
  %i.bh = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !68 ; 2 uses
  %i.bi = and i64 %i.bh, 2
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = icmp ult i64 %i.bh, 4
  %or.cond7.i = or i1 %i.bk, %i.bj
  br i1 %or.cond7.i, label %.noexc20, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.ac)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %bb.t, %bb.s
  %i.bl = cmpxchg ptr %1, i8 1, i8 0 release monotonic, align 1, !noalias !68
  %i.bm = extractvalue { i8, i1 } %i.bl, 1
  br i1 %i.bm, label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_onceBb_.exit.i, label %bb.u, !prof !8

bb.u:                                             ; preds = %.noexc20
  invoke void @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %1, i1 noundef zeroext false)
          to label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_onceBb_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_onceBb_.exit.i: ; preds = %bb.u, %.noexc20
  %i.bn = load atomic i32, ptr %i.az acquire, align 8, !noalias !68
  %i.bo = icmp eq i32 %i.bn, 0                    ; 2 uses
  br i1 %i.au, label %bb.v, label %.preheader.i

.preheader.i:                                     ; preds = %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_onceBb_.exit.i
  br i1 %i.bo, label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split, label %.lr.ph75.i

bb.v:                                             ; preds = %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_onceBb_.exit.i
  br i1 %i.bo, label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.w

bb.w:                                             ; preds = %.noexc23, %.lr.ph.i.i
  %i.br = invoke { i64, i32 } @_RNvMNtCscAsMj0W7j8b_3std4timeNtB2_7Instant3now()
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc22:                                         ; preds = %bb.w
  %i.bs = extractvalue { i64, i32 } %i.br, 0      ; 3 uses
  %i.bt = extractvalue { i64, i32 } %i.br, 1      ; 2 uses
  %i.bu = icmp eq i64 %2, %i.bs
  %i.bv = icmp sle i64 %2, %i.bs
  %i.bw = icmp samesign ule i32 %3, %i.bt
  %spec.select.i.i = select i1 %i.bu, i1 %i.bw, i1 %i.bv
  br i1 %spec.select.i.i, label %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i, label %bb.x

bb.x:                                             ; preds = %.noexc22
  %i.bx = invoke { i64, i32 } @_RNvXs3_NtCscAsMj0W7j8b_3std4timeNtB5_7InstantNtNtNtCshzWfHUSfYae_4core3ops5arith3Sub3sub(i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, i64 noundef %i.bs, i32 noundef %i.bt)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc23:                                         ; preds = %bb.x
  %i.by = extractvalue { i64, i32 } %i.bx, 1      ; 2 uses
  %i.bz = extractvalue { i64, i32 } %i.bx, 0
  %i.ca = icmp ult i32 %i.by, 1000000000
  call void @llvm.assume(i1 %i.ca), !noalias !63
  %i.cb = zext nneg i32 %i.by to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  store i64 %i.bz, ptr %i.bp, align 8, !noalias !68
  store i64 %i.cb, ptr %i.bq, align 8, !noalias !68
  store i64 1, ptr %i.a, align 8, !noalias !68
  %i.cc = call noundef i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 %i.az, i32 noundef 128, i32 noundef 1, ptr noundef nonnull %i.bp) #21, !noalias !68 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  %i.cd = load atomic i32, ptr %i.az acquire, align 8, !noalias !68
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split, label %bb.w

.lr.ph75.i:                                       ; preds = %.preheader.i, %.lr.ph75.i
  %i.cf = call noundef i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 %i.az, i32 noundef 128, i32 noundef 1, ptr noundef null) #21, !noalias !68 ; 0 uses
  %i.cg = load atomic i32, ptr %i.az acquire, align 8, !noalias !68
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split, label %.lr.ph75.i

_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i: ; preds = %.noexc22, %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i.backedge
  %i.ci = load atomic ptr, ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot9HASHTABLE acquire, align 8, !noalias !68 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.y, label %.noexc24, !prof !9

bb.y:                                             ; preds = %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16create_hashtable()
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.y, %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i
  %.sroa.0.0.i37.i = phi ptr [ %i.ci, %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i ], [ %i.ck, %bb.y ] ; 4 uses
  %i.cl = load atomic i64, ptr %.sroa.0.0.i monotonic, align 8, !noalias !68 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.i, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !noalias !68, !noundef !5
  %i.co = mul i64 %i.cl, -7046029254386353131
  %i.cp = sub i32 0, %i.cn
  %i.cq = and i32 %i.cp, 63
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = lshr i64 %i.co, %i.cr                   ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.i, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !68, !noundef !5 ; 2 uses
  %i.cv = icmp ult i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.z, label %.invoke

bb.z:                                             ; preds = %.noexc24
  %i.cw = load ptr, ptr %.sroa.0.0.i37.i, align 8, !noalias !68, !nonnull !5, !noundef !5
  %i.cx = getelementptr inbounds nuw [64 x i8], ptr %i.cw, i64 %i.cs ; 11 uses
  %i.cy = cmpxchg weak ptr %i.cx, i64 0, i64 1 acquire monotonic, align 8, !noalias !68
  %i.cz = extractvalue { i64, i1 } %i.cy, 1
  br i1 %i.cz, label %.noexc26, label %bb.aa, !prof !8

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock9lock_slow(ptr noundef nonnull align 8 %i.cx)
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %bb.aa, %bb.z
  %i.da = load atomic ptr, ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot9HASHTABLE monotonic, align 8, !noalias !68
  %i.db = icmp eq ptr %i.da, %.sroa.0.0.i37.i
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.noexc26
  %i.dc = load atomic i64, ptr %.sroa.0.0.i monotonic, align 8, !noalias !68
  %i.dd = icmp eq i64 %i.dc, %i.cl
  br i1 %i.dd, label %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc26
  %i.de = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !68 ; 2 uses
  %i.df = and i64 %i.de, 2
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = icmp ult i64 %i.de, 4
  %or.cond.i38.i = or i1 %i.dh, %i.dg
  br i1 %or.cond.i38.i, label %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i.backedge, label %bb.ad, !prof !6

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.cx)
          to label %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i.backedge unwind label %.loopexit

_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i.backedge: ; preds = %bb.ad, %bb.ac
  br label %_RNvXNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3impNtB2_12ThreadParkerNtB4_13ThreadParkerT10park_until.exit.i

_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i: ; preds = %bb.ab
  %i.di = load atomic i32, ptr %i.az monotonic, align 8, !noalias !68
  %.not35.i = icmp eq i32 %i.di, 0
  br i1 %.not35.i, label %bb.ae, label %.preheader48.i

.preheader48.i:                                   ; preds = %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i
  %.sroa.023.065.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.025.066.i = load ptr, ptr %.sroa.023.065.i, align 8, !noalias !68, !noundef !5 ; 4 uses
  %i.dj = icmp eq ptr %.sroa.025.066.i, null
  br i1 %i.dj, label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader48.i
  %i.dk = icmp eq ptr %.sroa.025.066.i, %.sroa.0.0.i
  br i1 %i.dk, label %.lr.ph.i._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot19lock_bucket_checked.exit.i
  %i.dl = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !68 ; 2 uses
  %i.dm = and i64 %i.dl, 2
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = icmp ult i64 %i.dl, 4
  %or.cond11.i = or i1 %i.do, %i.dn
  br i1 %or.cond11.i, label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split, label %bb.af, !prof !6

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.cx)
          to label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.dp = icmp ne i64 %i.dr, %i.cl
  %spec.select.i = select i1 %i.dp, i1 %.sroa.018.068.i76, i1 false ; 2 uses
  %i.dq = icmp eq ptr %.sroa.025.0.i, %.sroa.0.0.i
  br i1 %i.dq, label %.lr.ph.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.018.068.i76 = phi i1 [ %spec.select.i, %.lr.ph.i ], [ true, %.lr.ph.i.preheader ]
  %.sroa.025.070.i75 = phi ptr [ %.sroa.025.0.i, %.lr.ph.i ], [ %.sroa.025.066.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.dr = load atomic i64, ptr %.sroa.025.070.i75 monotonic, align 8, !noalias !68
  %.sroa.023.0.i = getelementptr inbounds nuw i8, ptr %.sroa.025.070.i75, i64 8
  %.sroa.025.0.i = load ptr, ptr %.sroa.023.0.i, align 8, !noalias !68, !noundef !5 ; 4 uses
  %i.ds = icmp eq ptr %.sroa.025.0.i, null
  br i1 %i.ds, label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, label %.lr.ph.i

.lr.ph.i._crit_edge.loopexit:                     ; preds = %.lr.ph.i
  %i.dt = xor i1 %spec.select.i, true
  br label %.lr.ph.i._crit_edge

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i._crit_edge.loopexit, %.lr.ph.i.preheader
  %.sroa.025.070.i.lcssa = phi ptr [ %.sroa.025.066.i, %.lr.ph.i.preheader ], [ %.sroa.025.0.i, %.lr.ph.i._crit_edge.loopexit ]
  %.sroa.017.069.i.lcssa = phi ptr [ null, %.lr.ph.i.preheader ], [ %.sroa.025.070.i75, %.lr.ph.i._crit_edge.loopexit ]
  %.sroa.018.068.i.lcssa = phi i1 [ false, %.lr.ph.i.preheader ], [ %i.dt, %.lr.ph.i._crit_edge.loopexit ]
  %.pn67.i.lcssa = phi ptr [ %i.cx, %.lr.ph.i.preheader ], [ %.sroa.025.070.i75, %.lr.ph.i._crit_edge.loopexit ]
  %.sroa.023.0.le.i = getelementptr inbounds nuw i8, ptr %.pn67.i.lcssa, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.025.070.i.lcssa, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !68, !noundef !5 ; 3 uses
  store ptr %i.dv, ptr %.sroa.023.0.le.i, align 8, !noalias !68
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !68, !noundef !5
  %i.dy = icmp eq ptr %i.dx, %.sroa.0.0.i
  br i1 %i.dy, label %bb.ag, label %.preheader47.i

.preheader47.i:                                   ; preds = %.lr.ph.i._crit_edge
  %i.dz = icmp eq ptr %i.dv, null
  br i1 %i.dz, label %.loopexit.i, label %.lr.ph72.i

bb.ag:                                            ; preds = %.lr.ph.i._crit_edge
  store ptr %.sroa.017.069.i.lcssa, ptr %i.dw, align 8, !noalias !68
  br label %.loopexit.i

.lr.ph72.i:                                       ; preds = %.preheader47.i, %bb.ah
  %.sroa.019.071.i = phi ptr [ %i.ee, %bb.ah ], [ %i.dv, %.preheader47.i ] ; 2 uses
  %i.ea = load atomic i64, ptr %.sroa.019.071.i monotonic, align 8, !noalias !68
  %i.eb = icmp eq i64 %i.ea, %i.cl
  br i1 %i.eb, label %.loopexit.i.thread, label %bb.ah

.loopexit.i.thread:                               ; preds = %.lr.ph72.i
  %i.ec = icmp ne i64 %i.cl, %i.c
  br label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i

bb.ah:                                            ; preds = %.lr.ph72.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.019.071.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !68, !noundef !5 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %.loopexit.i, label %.lr.ph72.i

.loopexit.i:                                      ; preds = %bb.ah, %bb.ag, %.preheader47.i
  %i.eg = icmp ne i64 %i.cl, %i.c                 ; 2 uses
  %brmerge.i.i.i = or i1 %i.eg, %.sroa.018.068.i.lcssa
  br i1 %brmerge.i.i.i, label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.loopexit.i
  store atomic ptr null, ptr %0 monotonic, align 8, !noalias !70
  br label %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i

_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i: ; preds = %.lr.ph, %.loopexit.i.thread, %bb.ai, %.loopexit.i, %.preheader48.i
  %.sroa.040.0.shrunk = phi i1 [ false, %.preheader48.i ], [ %i.eg, %.loopexit.i ], [ false, %bb.ai ], [ %i.ec, %.loopexit.i.thread ], [ false, %.lr.ph ] ; 2 uses
  %i.eh = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !68 ; 2 uses
  %i.ei = and i64 %i.eh, 2
  %i.ej = icmp ne i64 %i.ei, 0
  %i.ek = icmp ult i64 %i.eh, 4
  %or.cond15.i = or i1 %i.ek, %i.ej
  br i1 %or.cond15.i, label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit, label %bb.aj, !prof !6

bb.aj:                                            ; preds = %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i
  invoke void @_RNvMs_NtCsd9r5UMv47dc_16parking_lot_core9word_lockNtB4_8WordLock11unlock_slow(ptr noundef nonnull align 8 %i.cx)
          to label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit: ; preds = %bb.b, %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi

_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split: ; preds = %.lr.ph75.i, %.noexc23, %bb.ae, %bb.af, %.preheader.i, %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.em = load i64, ptr %i.el, align 8, !noalias !68, !noundef !5
  %i.en = icmp eq i64 %i.em, 1
  br label %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit

_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit: ; preds = %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i, %bb.n, %bb.p, %bb.aj
  %.sroa.044.0 = phi i1 [ true, %bb.n ], [ false, %bb.aj ], [ false, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i ], [ true, %bb.p ], [ false, %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split ]
  %.sroa.040.1.shrunk = phi i1 [ false, %bb.n ], [ %.sroa.040.0.shrunk, %bb.aj ], [ %.sroa.040.0.shrunk, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i ], [ false, %bb.p ], [ true, %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split ]
  %or.cond = phi i1 [ false, %bb.n ], [ false, %bb.aj ], [ false, %_RNvYNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB9_7Condvar19wait_until_internals0_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTjbEE9call_onceBb_.exit.i ], [ false, %bb.p ], [ %i.en, %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit.sink.split ]
  %.val9 = load i64, ptr %i.b, align 8, !range !65, !noundef !5
  %i.eo = icmp eq i64 %.val9, 0
  br i1 %i.eo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit
  %i.ep = atomicrmw sub ptr @_RNvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot11NUM_THREADS, i64 1 monotonic, align 8 ; 0 uses
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30: ; preds = %_RINvNtCsd9r5UMv47dc_16parking_lot_core11parking_lot16with_thread_dataNtB2_10ParkResultNCINvB2_4parkNCNvMs_NtCsaWIbZW7RmAr_11parking_lot7condvarNtB1G_7Condvar19wait_until_internal0NCB1B_s_0NCB1B_s0_0E0EB1I_.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !63
  br i1 %.sroa.044.0, label %bb.am, label %bb.al, !prof !9

bb.al:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30
  br i1 %or.cond, label %bb.ao, label %bb.an

bb.am:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataEECsaWIbZW7RmAr_11parking_lot.exit30
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 125 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.eq = cmpxchg weak ptr %1, i8 0, i8 1 acquire monotonic, align 1
  %.sroa.18.0.in.i = extractvalue { i8, i1 } %i.eq, 1
  br i1 %.sroa.18.0.in.i, label %bb.ao, label %bb.ap, !prof !8

bb.ao:                                            ; preds = %bb.ap, %bb.an, %bb.al
  %.sroa.08.0 = xor i1 %.sroa.040.1.shrunk, true
  ret i1 %.sroa.08.0

bb.ap:                                            ; preds = %bb.an
  %i.er = call noundef zeroext i1 @_RNvMs1_NtCsaWIbZW7RmAr_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %1, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.ao
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandlej8_E21reserve_one_uncheckedCsaWIbZW7RmAr_11parking_lot(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !78, !noalias !79, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !78, !noalias !79, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !78, !noalias !79 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19, !noalias !80
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 1152921504606846975
  br i1 %or.cond.i, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i, label %bb.p, !prof !81

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i
  %i.q = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.q, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i, label %bb.p, !prof !81

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !80
  %i.r = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #21, !noalias !80 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 3
  %i.u = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 8, i64 noundef %i.p) #21, !noalias !80 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !80
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !80
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !80
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(72) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !80
  %or.cond.i.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i.i, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i, label %bb.n, !prof !81

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  store i64 0, ptr %i.a, align 8, !noalias !82
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !82
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 8) #21, !noalias !80
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit45.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #22
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtNtCsd9r5UMv47dc_16parking_lot_core13thread_parker3imp12UnparkHandleECsaWIbZW7RmAr_11parking_lot.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATPNtNtCsd9r5UMv47dc_16parking_lot_core11parking_lot10ThreadDataINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtBO_13thread_parker3imp12UnparkHandleEEj8_E21reserve_one_uncheckedCsaWIbZW7RmAr_11parking_lot(ptr noalias nofree noundef align 8 captures(none) dereferenceable(200) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !90, !noalias !91, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !90, !noalias !91, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !90, !noalias !91 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19, !noalias !92
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsaWIbZW7RmAr_11parking_lot.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
end_hunk_0
