Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.04?download=true
inline.NumInlined: 5008
inline.NumDeleted: 2523
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_RNvXs2_NtNtCsM5evIHPibA_17crossbeam_channel7flavors4zeroINtB5_8ReceiveruENtNtB9_6select12SelectHandle8registerCs6u1mgJOKDyY_13rust_analyzer:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !13862, !noalias !13865, !nonnull !4, !align !69, !noundef !4 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !26, !alias.scope !13862, !noalias !13865, !noundef !4 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.v = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs6u1mgJOKDyY_13rust_analyzer.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.aa, align 8
  store ptr %i.v, ptr %i.c, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !13868, !noalias !13871, !noundef !4 ; 3 uses
  %i.ad = load i64, ptr %i.y, align 8, !range !460, !alias.scope !13868, !noalias !13871, !noundef !4
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsM5evIHPibA_17crossbeam_channel5waker5EntryE8grow_oneCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.n unwind label %bb.i, !noalias !13871

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !13873
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.j, label %.body

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsM5evIHPibA_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #51
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.l:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs6u1mgJOKDyY_13rust_analyzer.exit
  call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.r, %bb.q, %_RNvYNCNKNvNvNtCsM5evIHPibA_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1s_6option6OptionQIB27_NtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdEEEE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i, %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.j, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.af, %bb.j ], [ %i.af, %bb.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors4zero5InnerEECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %i.r, i8 %i.t) #47
          to label %common.resume unwind label %bb.y

bb.n:                                             ; preds = %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !13868, !noalias !13871, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.an = add i64 %i.ac, 1
  store i64 %i.an, ptr %i.ab, align 8, !alias.scope !13868, !noalias !13871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  invoke fastcc void @_RNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ao)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %i.r, i64 16
  %.val10 = load ptr, ptr %i.ap, align 8          ; 3 uses
  %i.aq = getelementptr i8, ptr %i.r, i64 24
  %.val11 = load i64, ptr %i.aq, align 8, !noundef !4 ; 3 uses
  %i.ar = icmp ult i64 %.val11, 384307168202282326
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %.val11, 0
  br i1 %i.as, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtCsM5evIHPibA_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i8, ptr %i.au, align 8, !range !26, !noalias !13882, !noundef !4
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.s, label %_RNvYNCNKNvNvNtCsM5evIHPibA_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1s_6option6OptionQIB27_NtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdEEEE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i, !prof !125

_RNvYNCNKNvNvNtCsM5evIHPibA_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1s_6option6OptionQIB27_NtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdEEEE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %bb.p
  %i.ax = invoke noundef ptr @_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtBe_6thread2id8ThreadIdzE16get_or_init_slowNvNvNvNtCsM5evIHPibA_17crossbeam_channel5waker17current_thread_id9THREAD_ID27___rust_std_internal_init_fnECs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull align 8 %i.at, ptr noalias nofree noundef align 8 dereferenceable_or_null(8) null)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNvNtCsM5evIHPibA_17crossbeam_channel5waker17current_thread_id9THREAD_ID0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1s_6option6OptionQIB27_NtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdEEEE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.az = invoke noundef nonnull ptr @_RNvNtNtCscAsMj0W7j8b_3std6thread7current7current()
          to label %.noexc12 unwind label %bb.m   ; 3 uses

.noexc12:                                         ; preds = %bb.q
  store ptr %i.az, ptr %i.a, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !387, !noundef !4
  %i.bc = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !13889
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.r:                                             ; preds = %.noexc12
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #51
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.r, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.s:                                             ; preds = %.noexc, %bb.p
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.ax, %.noexc ], [ %i.at, %bb.p ]
  %.val.i.i = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !range !387, !noundef !4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECs6u1mgJOKDyY_13rust_analyzer.exit.i
  %.sroa.0.02.i = phi i64 [ %i.bb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECs6u1mgJOKDyY_13rust_analyzer.exit.i ], [ %.val.i.i, %bb.s ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %.idx.i = mul nuw nsw i64 %.val11, 24
  %i.be = getelementptr inbounds nuw i8, ptr %.val10, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB4_5Waker10can_select0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i, %bb.t
  %i.bf = phi ptr [ %i.bg, %_RNCNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB4_5Waker10can_select0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i ], [ %.val10, %bb.t ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %.val2.i.i = load ptr, ptr %i.bf, align 8, !noalias !13898, !nonnull !4, !noundef !4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !range !387, !noalias !13898, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.bi, %.sroa.0.02.i
  br i1 %.not.i.i.i, label %_RNCNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB4_5Waker10can_select0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 32
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8, !noalias !13898
  %cond.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %cond.i.i.i, label %_RNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB2_5Waker10can_select.exit, label %_RNCNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB4_5Waker10can_select0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i

_RNCNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB4_5Waker10can_select0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %.not6.i.i = icmp eq ptr %i.bg, %i.be
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %_RNCNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB4_5Waker10can_select0Cs6u1mgJOKDyY_13rust_analyzer.exit.backedge.i.i, %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.bm = load i8, ptr %i.bl, align 8, !range !26, !noundef !4
  %i.bn = trunc nuw i8 %i.bm to i1
  br label %_RNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB2_5Waker10can_select.exit

_RNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB2_5Waker10can_select.exit: ; preds = %.split.i.i, %.loopexit
  %.sroa.0.0 = phi i1 [ %i.bn, %.loopexit ], [ true, %.split.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  br i1 %i.u, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_RNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB2_5Waker10can_select.exit
  %i.bp = load atomic i64, ptr @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bq = and i64 %i.bp, 9223372036854775807
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.v, !prof !125

bb.v:                                             ; preds = %bb.u
  %i.bs = call noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() #51
  br i1 %i.bs, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store atomic i8 1, ptr %i.bo monotonic, align 4
  br label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.w, %bb.v, %bb.u, %_RNvMNtCsM5evIHPibA_17crossbeam_channel5wakerNtB2_5Waker10can_select.exit
  %i.bt = atomicrmw xchg ptr %i.r, i32 0 release, align 4
  %i.bu = icmp eq i32 %i.bt, 2
  br i1 %i.bu, label %bb.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors4zero5InnerEECs6u1mgJOKDyY_13rust_analyzer.exit, !prof !22

bb.x:                                             ; preds = %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.r)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors4zero5InnerEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtCsM5evIHPibA_17crossbeam_channel7flavors4zero5InnerEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.x
  ret i1 %.sroa.0.0

bb.y:                                             ; preds = %.body
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomINtB5_14SlicePartialEqBC_E17equal_same_lengthCs6u1mgJOKDyY_13rust_analyzer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6u1mgJOKDyY_13rust_analyzer.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.c, %.split
  %i.b = add nuw i64 %.sroa.01.09, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6u1mgJOKDyY_13rust_analyzer.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.09 ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.09 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %3 = getelementptr i8, ptr %i.c, i64 8
  %.val.a = load ptr, ptr %3, align 8             ; 3 uses
  %.val6 = load ptr, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %4 = getelementptr i8, ptr %i.d, i64 8
  %.val7 = load ptr, ptr %4, align 8              ; 3 uses
  %5 = icmp ne ptr %.val, null                    ; 2 uses
  %6 = icmp eq ptr %.val6, null                   ; 2 uses
  %i.e = xor i1 %5, %6
  br i1 %i.e, label %7, label %_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6u1mgJOKDyY_13rust_analyzer.exit.thread

7:                                                ; preds = %.lr.ph
  br i1 %5, label %bb.c, label %.split

bb.c:                                             ; preds = %7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %8 = icmp eq ptr %.val, %.val6
  %9 = icmp eq ptr %.val.a, %.val7
  %spec.select.i.i = select i1 %8, i1 %9, i1 false
  br i1 %spec.select.i.i, label %bb.b, label %_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6u1mgJOKDyY_13rust_analyzer.exit.thread

.split:                                           ; preds = %7
  tail call void @llvm.assume(i1 %6)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.a) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  %10 = icmp eq ptr %.val.a, %.val7
  br i1 %10, label %bb.b, label %_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6u1mgJOKDyY_13rust_analyzer.exit.thread

_RNvYNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs6u1mgJOKDyY_13rust_analyzer.exit.thread: ; preds = %bb.b, %.split, %.lr.ph, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %.split ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_15FlycheckMessageNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !982, !noundef !4 ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  %i.g = add i64 %i.e, -9223372036854775807
  %i.h = select i1 %i.f, i64 %i.g, i64 0
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @528, i64 noundef 13)
  %i.m = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @472, i64 noundef 2, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @529)
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @530, i64 noundef 10, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @529)
  %i.o = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @473, i64 noundef 14, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @531)
  %i.p = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @487, i64 noundef 10, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !94, !noundef !4
  %.not = icmp eq i64 %i.r, -1
  %. = select i1 %.not, ptr null, ptr %i.q
  store ptr %., ptr %i.c, align 8
  %i.s = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @534, i64 noundef 15, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @533)
  %i.t = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @535, i64 noundef 16)
  %i.w = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @472, i64 noundef 2, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @529)
  %i.x = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @537, i64 noundef 4, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @536)
  %i.y = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @538, i64 noundef 8)
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @472, i64 noundef 2, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @529)
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @540, i64 noundef 8, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @539)
  %i.ad = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.sroa.0.0.in = phi i1 [ %i.t, %bb.c ], [ %i.y, %bb.d ], [ %i.ad, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB5_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !71, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 23 uses
  switch i64 %i.a, label %default.unreachable5 [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 2, label %bb.k
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 512
  %i.d = atomicrmw sub ptr %i.c, i64 1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 400 ; 2 uses
  %i.g = load i64, ptr %i.f, align 16, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.i = atomicrmw or ptr %i.h, i64 %i.g seq_cst, align 8
  %i.j = load i64, ptr %i.f, align 16, !noundef !4
  %i.k = and i64 %i.j, %i.i
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_RNCNvXs4_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB7_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0Cs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.m) #50
  br label %_RNCNvXs4_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB7_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0Cs6u1mgJOKDyY_13rust_analyzer.exit.i

_RNCNvXs4_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB7_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0Cs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 528
  %i.o = atomicrmw xchg ptr %i.n, i8 1 acq_rel, align 1
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.e

bb.e:                                             ; preds = %_RNCNvXs4_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB7_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0Cs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECs6u1mgJOKDyY_13rust_analyzer(ptr nonnull %.val)
  br label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 384
  %i.q = atomicrmw sub ptr %i.p, i64 1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.t = atomicrmw or ptr %i.s, i64 1 seq_cst, align 8
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %_RNCNvXs4_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB7_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drops_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.w) #50
  br label %_RNCNvXs4_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB7_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drops_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i

_RNCNvXs4_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB7_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drops_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 400
  %i.y = atomicrmw xchg ptr %i.x, i8 1 acq_rel, align 1
  %.not.i3 = icmp eq i8 %i.y, 0
  br i1 %.not.i3, label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.i

bb.i:                                             ; preds = %_RNCNvXs4_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB7_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drops_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtBG_4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 128 dereferenceable(512) %.val)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.j

common.resume:                                    ; preds = %bb.q, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.j ], [ %eh.lpad-body.i.i, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 512, i64 noundef 128) #43
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 512, i64 noundef 128) #43
  br label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer.exit

bb.k:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 acq_rel, align 8
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer.exit

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10disconnectCs6u1mgJOKDyY_13rust_analyzer(ptr noundef nonnull align 8 %.val)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ae = atomicrmw xchg ptr %i.ad, i8 1 acq_rel, align 1
  %.not.i4 = icmp eq i8 %i.ae, 0
  br i1 %.not.i4, label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB3_6SenderINtNtB5_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXs4_B5_INtB5_6SenderB1i_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5WakerECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.af)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zero7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5WakerECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ah) #47
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zero7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5WakerECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zero7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
end_hunk_0
