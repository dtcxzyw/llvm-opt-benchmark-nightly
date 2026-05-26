inline.NumInlined: 769
inline.NumDeleted: 291
begin_hunk_0_@_RNCINvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB5_7Context4withNCNvMs_NtNtB7_7flavors5arrayINtB1b_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0uEs0_0B3b_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB7_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0B2z_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !27, !noundef !3
  %i.m = ptrtoint ptr %i.l to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  store i8 1, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 3 uses
  store i8 0, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !align !27, !noundef !3 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.r = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.c

bb.b:                                             ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit65.thread, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.thread, %bb.u
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.m, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.j, ptr %i.v, align 8
  store ptr %.0.val, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !208, !noalias !211, !noundef !3 ; 3 uses
  %i.y = load i64, ptr %i.t, align 8, !range !21, !alias.scope !208, !noalias !211, !noundef !3
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE8grow_oneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.j unwind label %bb.e, !noalias !211

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !213
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #27
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ap, %bb.x, %bb.f, %bb.e, %bb.ad, %bb.av
  %.sroa.019.2 = phi i1 [ false, %bb.av ], [ false, %bb.ad ], [ false, %bb.x ], [ true, %bb.e ], [ false, %bb.ap ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.es, %bb.av ], [ %i.dc, %bb.ad ], [ %i.ch, %bb.x ], [ %i.aa, %bb.e ], [ %i.dx, %bb.ap ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit23, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit29, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ae = load i16, ptr %i.j, align 8, !range !23, !alias.scope !222, !noundef !3
  %i.af = icmp eq i16 %i.ae, 3
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB26_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB34_.exit unwind label %bb.am

.loopexit:                                        ; preds = %.loopexit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit23 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc52
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j, %bb.u, %.thread, %.thread14, %bb.m, %bb.o, %bb.ah, %bb.aj, %bb.az, %bb.bb
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ah ], [ false, %bb.az ], [ false, %.thread14 ], [ false, %bb.o ], [ false, %bb.bb ], [ false, %.invoke ], [ false, %.thread ], [ true, %bb.j ], [ false, %bb.aj ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !208, !noalias !211, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.aj = add i64 %i.x, 1
  store i64 %i.aj, ptr %i.w, align 8, !alias.scope !208, !noalias !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load i8, ptr %i.al, align 8, !range !4, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ao = trunc nuw i8 %i.am to i1
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !28

bb.m:                                             ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.m
  br i1 %i.as, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc48
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc48, %bb.l, %bb.k
  %i.at = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !29

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !3, !align !27, !noundef !3 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !range !229, !noundef !3 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %.not.i = icmp eq i32 %i.az, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.p
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8
  switch i64 %i.bb, label %.thread11 [
    i64 0, label %bb.p
    i64 1, label %.thread
    i64 2, label %.thread14
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions4park()
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %.noexc52
  %i.bc = load atomic i64, ptr %i.ba acquire, align 8
  switch i64 %i.bc, label %.thread11 [
    i64 0, label %bb.q
    i64 1, label %.thread
    i64 2, label %.thread14
  ]

bb.q:                                             ; preds = %.split.i
  %i.bd = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.q
  %i.be = extractvalue { i64, i32 } %i.bd, 0      ; 3 uses
  %i.bf = extractvalue { i64, i32 } %i.bd, 1      ; 2 uses
  %i.bg = icmp eq i64 %i.be, %i.ax
  %i.bh = icmp slt i64 %i.be, %i.ax
  %i.bi = icmp samesign ult i32 %i.bf, %i.az
  %spec.select.i = select i1 %i.bg, i1 %i.bi, i1 %i.bh
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc51
  %i.bj = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.bj                 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %.fr, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.thread, label %bb.t

bb.s:                                             ; preds = %.noexc51
  %i.bk = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.ax, i32 noundef range(i32 0, 1000000001) %i.az, i64 noundef %i.be, i32 noundef %i.bf)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc52:                                         ; preds = %bb.s
  %i.bl = extractvalue { i64, i32 } %i.bk, 0
  %i.bm = extractvalue { i64, i32 } %i.bk, 1
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions12park_timeout(i64 noundef %i.bl, i32 noundef %i.bm)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.t:                                             ; preds = %bb.r
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %.fr, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread11 [
    i64 0, label %bb.u
    i64 1, label %.thread
    i64 2, label %.thread14
  ], !prof !230

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #31
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %bb.r, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !3, !align !27, !noundef !3
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bo)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread14:                                        ; preds = %.split.i, %.split.us.i, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !3, !align !27, !noundef !3
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bq)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread11:                                        ; preds = %.split.i, %.split.us.i, %bb.t
  %i.br = load atomic i8, ptr %i.o acquire, align 8
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i, label %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2w_.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread11, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.02.i = phi i32 [ %.sroa.0.1.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %.thread11 ] ; 5 uses
  %i.bt = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bt, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.noexc54 unwind label %.loopexit

.noexc54:                                         ; preds = %.loopexit.i.i
  %i.bu = icmp ult i32 %.sroa.0.02.i, 11
  br i1 %i.bu, label %.loopexit.i.thread.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.bv, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.bv = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.bv, %.sroa.0.02.i
  %i.bw = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.bw, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.noexc54
  %i.bx = add nuw nsw i32 %.sroa.0.02.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.noexc54
  %.sroa.0.1.i = phi i32 [ %i.bx, %.loopexit.i.thread.i ], [ %.sroa.0.02.i, %.noexc54 ]
  %i.by = load atomic i8, ptr %i.o acquire, align 8
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i, label %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2w_.exit.loopexit

bb.v:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.ca = load i64, ptr %i.g, align 8, !range !151, !alias.scope !231, !noalias !234, !noundef !3
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.w, label %bb.aa, !prof !29

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !236
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !231, !noalias !234, !nonnull !3, !align !27, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !4, !alias.scope !231, !noalias !234, !noundef !3
  store ptr %i.cd, ptr %i.a, align 8, !noalias !236
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cf, ptr %i.cg, align 8, !noalias !236
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #31
          to label %bb.y unwind label %bb.x, !noalias !231

bb.x:                                             ; preds = %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body unwind label %bb.z, !noalias !231

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !231
  unreachable

bb.aa:                                            ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !231, !noalias !234, !nonnull !3, !align !27, !noundef !3 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !range !4, !alias.scope !231, !noalias !234, !noundef !3 ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !237, !noalias !240, !nonnull !3, !noundef !3 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !237, !noalias !240, !noundef !3 ; 2 uses
  %.idx52 = mul nuw nsw i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx52
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph51

bb.ab:                                            ; preds = %.lr.ph51
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cz, 1
  %i.cx = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cx, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.aa, %bb.ab
  %i.cy = phi ptr [ %i.cv, %bb.ab ], [ %i.cq, %bb.aa ] ; 2 uses
  %i.cz = phi i64 [ %i.cw, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !242, !noalias !247, !noundef !3
  %.not.i.i = icmp eq i64 %i.db, %i.m
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ac:                                            ; preds = %.lr.ph51
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE6removeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.co, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.thread
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.ck, i8 %i.cm) #29
          to label %.body unwind label %bb.am

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ac
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ae, !prof !252

bb.ae:                                            ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.dd = load ptr, ptr %i.i, align 8, !alias.scope !265, !nonnull !3, !noundef !3
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !265
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.ad

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ab, %bb.aa, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #31
          to label %bb.b unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ae, %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  br i1 %i.cn, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.dh = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.di = and i64 %i.dh, 9223372036854775807
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ah, !prof !28

bb.ah:                                            ; preds = %bb.ag
  %i.dk = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.ah
  br i1 %i.dk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ai

bb.ai:                                            ; preds = %.noexc58
  store atomic i8 1, ptr %i.dg monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57: ; preds = %bb.ai, %.noexc58, %bb.ag, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.dl = atomicrmw xchg ptr %i.ck, i32 0 release, align 4
  %i.dm = icmp eq i32 %i.dl, 2
  br i1 %i.dm, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit60, !prof !29

bb.aj:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit60: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload = load i16, ptr %i.j, align 8 ; 2 uses
  store i16 3, ptr %i.j, align 8
  %.not26 = icmp eq i16 %.sroa.0.0.copyload, 3
end_hunk_0
begin_hunk_1_@_RNCNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB6_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0B2z_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #29
          to label %common.resume unwind label %bb.e, !noalias !308

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !308
  unreachable

common.resume:                                    ; preds = %bb.ac, %bb.ah, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %.body.i ], [ %i.t, %bb.c ], [ %i.cx, %bb.ac ], [ %i.ds, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !308, !noalias !311, !nonnull !3, !align !27, !noundef !3 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !4, !alias.scope !308, !noalias !311, !noundef !3 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.ae, align 8
  store ptr %.0.val, ptr %i.e, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !314, !noalias !317, !noundef !3 ; 4 uses
  %i.ah = load i64, ptr %i.ac, align 8, !range !21, !alias.scope !314, !noalias !317, !noundef !3
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE8grow_oneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.l unwind label %bb.h, !noalias !317

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !319
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #27
          to label %.body.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.k:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.trap()
  unreachable

.body.i:                                          ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.w, i8 %i.y) #29
          to label %common.resume unwind label %bb.s

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !314, !noalias !317, !nonnull !3, !noundef !3
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.aq = add nsw i64 %i.ag, 1                    ; 2 uses
  store i64 %i.aq, ptr %i.af, align 8, !alias.scope !314, !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ar = icmp slt i64 %i.ag, 384307168202282325
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.au = load i64, ptr %i.at, align 8, !noundef !3 ; 2 uses
  %i.av = icmp ult i64 %i.au, 384307168202282326
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %i.au, 0
  %i.ax = zext i1 %i.aw to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i = phi i8 [ %i.ax, %bb.m ], [ 0, %bb.l ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 312 ; 2 uses
  store atomic i8 %.sroa.0.0.i, ptr %i.ay seq_cst, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  br i1 %i.z, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bb = and i64 %i.ba, 9223372036854775807
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.p, !prof !28

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.bd, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.az monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.be = atomicrmw xchg ptr %i.w, i32 0 release, align 4
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.r, label %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker8register.exit, !prof !29

bb.r:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.w)
  br label %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker8register.exit

bb.s:                                             ; preds = %.body.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker8register.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.bi = load atomic i64, ptr %i.bh seq_cst, align 128
  %i.bj = load atomic i64, ptr %i.k seq_cst, align 128
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 392
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !3
  %i.bm = add i64 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 400 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 16, !noundef !3
  %i.bp = xor i64 %i.bo, -1
  %i.bq = and i64 %i.bi, %i.bp
  %i.br = icmp eq i64 %i.bm, %i.bq
  br i1 %i.br, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker8register.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.bt = cmpxchg ptr %i.bs, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker8register.exit
  %i.bu = load atomic i64, ptr %i.bh seq_cst, align 128
  %i.bv = load i64, ptr %i.bn, align 16, !noundef !3
  %i.bw = and i64 %i.bv, %i.bu
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !3, !align !27, !noundef !3 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !range !229, !noundef !3 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %.not.i = icmp eq i32 %i.cc, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.v, %bb.w
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8
  switch i64 %i.ce, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread6 [
    i64 0, label %bb.w
    i64 1, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
    i64 2, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  ]

bb.w:                                             ; preds = %.split.us.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions4park()
  br label %.split.us.i

.split.i:                                         ; preds = %bb.v, %bb.z
  %i.cf = load atomic i64, ptr %i.cd acquire, align 8
  switch i64 %i.cf, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread6 [
    i64 0, label %bb.x
    i64 1, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
    i64 2, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  ]

bb.x:                                             ; preds = %.split.i
  %i.cg = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ch = extractvalue { i64, i32 } %i.cg, 0      ; 3 uses
  %i.ci = extractvalue { i64, i32 } %i.cg, 1      ; 2 uses
  %i.cj = icmp eq i64 %i.ch, %i.ca
  %i.ck = icmp slt i64 %i.ch, %i.ca
  %i.cl = icmp samesign ult i32 %i.ci, %i.cc
  %spec.select.i4 = select i1 %i.cj, i1 %i.cl, i1 %i.ck
  br i1 %spec.select.i4, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = cmpxchg ptr %i.cd, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.cm                 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %.fr, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit

bb.z:                                             ; preds = %bb.x
  %i.cn = call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.ca, i32 noundef range(i32 0, 1000000001) %i.cc, i64 noundef %i.ch, i32 noundef %i.ci) ; 2 uses
  %i.co = extractvalue { i64, i32 } %i.cn, 0
  %i.cp = extractvalue { i64, i32 } %i.cn, 1
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions12park_timeout(i64 noundef %i.co, i32 noundef %i.cp)
  br label %.split.i

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit: ; preds = %bb.y
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %.fr, 0
  switch i64 %.sroa.01.0.i.i.i, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread6 [
    i64 0, label %bb.aa
    i64 1, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
    i64 2, label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !328

bb.aa:                                            ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #30
  unreachable

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.y, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !329
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.l), !noalias !329
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.cq = load i64, ptr %i.c, align 8, !range !151, !alias.scope !332, !noalias !335, !noundef !3
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.ab, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i5, !prof !29

bb.ab:                                            ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !337
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !332, !noalias !335, !nonnull !3, !align !27, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !range !4, !alias.scope !332, !noalias !335, !noundef !3
  store ptr %i.ct, ptr %i.a, align 8, !noalias !337
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cv, ptr %i.cw, align 8, !noalias !337
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #31
          to label %bb.ad unwind label %bb.ac, !noalias !338

bb.ac:                                            ; preds = %bb.ab
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume unwind label %bb.ae, !noalias !338

bb.ad:                                            ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !338
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i5: ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !332, !noalias !335, !nonnull !3, !align !27, !noundef !3 ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dc = load i8, ptr %i.db, align 8, !range !4, !alias.scope !332, !noalias !335, !noundef !3 ; 2 uses
  %i.dd = trunc nuw i8 %i.dc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !329
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !342, !noalias !344, !nonnull !3, !noundef !3 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !342, !noalias !344, !noundef !3 ; 3 uses
  %.idx = mul nuw nsw i64 %i.di, 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx
  %i.dk = icmp eq i64 %i.di, 0
  br i1 %i.dk, label %._crit_edge, label %.lr.ph

bb.af:                                            ; preds = %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.dm = add nuw nsw i64 %i.dp, 1
  %i.dn = icmp eq ptr %i.dl, %i.dj
  br i1 %i.dn, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i5, %bb.af
  %i.do = phi ptr [ %i.dl, %bb.af ], [ %i.dg, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i5 ] ; 2 uses
  %i.dp = phi i64 [ %i.dm, %bb.af ], [ 0, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i5 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !345, !noalias !350, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.dr, %i.i
  br i1 %.not.i.i.i, label %bb.ag, label %bb.af

bb.ag:                                            ; preds = %.lr.ph
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryE6removeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.de, i64 noundef %i.dp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36)
          to label %._RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit_crit_edge.i unwind label %bb.ah, !noalias !329

._RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit_crit_edge.i: ; preds = %bb.ag
  %.pre.i = load i64, ptr %i.dh, align 8, !noalias !329
  br label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.i

._crit_edge:                                      ; preds = %bb.af, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i5
  store ptr null, ptr %i.b, align 8, !alias.scope !339, !noalias !355
  br label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.da, i8 %i.dc) #29
          to label %common.resume unwind label %bb.ao, !noalias !329

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.i: ; preds = %._crit_edge, %._RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit_crit_edge.i
  %i.dt = phi i64 [ %.pre.i, %._RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit_crit_edge.i ], [ %i.di, %._crit_edge ] ; 2 uses
  %i.du = icmp ult i64 %i.dt, 384307168202282326
  call void @llvm.assume(i1 %i.du)
  %i.dv = icmp eq i64 %i.dt, 0
  br i1 %i.dv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !329, !noundef !3 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, 384307168202282326
  call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp eq i64 %i.dx, 0
  %i.ea = zext i1 %i.dz to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.i
  %.sroa.0.0.i8 = phi i8 [ %i.ea, %bb.ai ], [ 0, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10unregister.exit.i ]
  store atomic i8 %.sroa.0.0.i8, ptr %i.ay seq_cst, align 8, !noalias !329
  %.sroa.0.0.copyload1 = load ptr, ptr %i.b, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !329
  %i.eb = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  br i1 %i.dd, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !329
  %i.ed = and i64 %i.ec, 9223372036854775807
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, label %bb.al, !prof !28

bb.al:                                            ; preds = %bb.ak
  %i.ef = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27, !noalias !329
  br i1 %i.ef, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, label %bb.am

bb.am:                                            ; preds = %bb.al
  store atomic i8 1, ptr %i.eb monotonic, align 4, !noalias !329
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.eg = atomicrmw xchg ptr %i.da, i32 0 release, align 4, !noalias !329
  %i.eh = icmp eq i32 %i.eg, 2
  br i1 %i.eh, label %bb.an, label %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit, !prof !29

bb.an:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.da), !noalias !329
  br label %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit

bb.ao:                                            ; preds = %bb.ah
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !329
  unreachable

_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i9, %bb.an
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not, label %bb.ar, label %bb.ap, !prof !29

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread6: ; preds = %.split.i, %.split.us.i, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void

bb.ap:                                            ; preds = %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit
  store ptr %.sroa.0.0.copyload1, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.ej = atomicrmw sub ptr %.sroa.0.0.copyload1, i64 1 release, align 8, !noalias !356
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context10wait_until.exit.thread6

bb.ar:                                            ; preds = %_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10unregister.exit
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMNtCseKAYRfgxGTE_14event_listener3sysINtB2_4ListuE15total_listenersCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCseKAYRfgxGTE_14event_listener3sys5InneruEE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !27 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = trunc nuw i8 %i.e to i1
  br i1 %i.i, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10disconnectB2E_:bb.a
bb.j:                                             ; preds = %bb.i
  %i.bb = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.ay)
          to label %.noexc12 unwind label %.loopexit ; 0 uses

.noexc12:                                         ; preds = %bb.j, %bb.i, %.lr.ph.i7
  %i.bc = icmp eq ptr %i.as, %i.aq
  br i1 %i.bc, label %._crit_edge.i11, label %.lr.ph.i7

_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit13: ; preds = %._crit_edge.i11, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit13
  %i.be = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bf = and i64 %i.be, 9223372036854775807
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !28

bb.l:                                             ; preds = %bb.k
  %i.bh = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.bh, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.bd monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10disconnect.exit13
  %i.bi = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !29

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %.sroa.0.0 = xor i1 %i.s, true
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %.loopexit.split-lp
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nofree norecurse nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvMs2_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_6SenderINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2v_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !598, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  switch i64 %i.a, label %default.unreachable14 [
    i64 0, label %bb.b
    i64 1, label %bb.j
    i64 2, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit
  ]

default.unreachable14:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8 ; 3 uses
  %i.f = load atomic i64, ptr %i.c seq_cst, align 8 ; 2 uses
  %i.g = load atomic i64, ptr %i.d seq_cst, align 8
  %i.h = icmp eq i64 %i.g, %i.e
  br i1 %i.h, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.j = load i64, ptr %i.i, align 16, !noundef !3 ; 2 uses
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = and i64 %i.k, %i.f                       ; 4 uses
  %i.m = and i64 %i.k, %i.e                       ; 4 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %i.l, %i.m
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = sub nuw i64 %i.m, %i.l
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit

bb.g:                                             ; preds = %bb.e
  %i.q = xor i64 %i.j, -1
  %i.r = and i64 %i.e, %i.q
  %i.s = icmp eq i64 %i.r, %i.f
  br i1 %i.s, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.u = load i64, ptr %i.t, align 128, !noundef !3
  %i.v = sub i64 %i.m, %i.l
  %i.w = add i64 %i.v, %i.u
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.y = load i64, ptr %i.x, align 128, !noundef !3
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit

bb.j:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8 ; 3 uses
  %i.ac = load atomic i64, ptr %i.z seq_cst, align 8 ; 2 uses
  %i.ad = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ae = icmp eq i64 %i.ad, %i.ab
  br i1 %i.ae, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit, label %bb.k

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit: ; preds = %bb.k
  %i.af = and i64 %i.ab, -2                       ; 2 uses
  %i.ag = and i64 %i.ac, -2                       ; 2 uses
  %i.ah = and i64 %i.ab, 62
  %i.ai = icmp eq i64 %i.ah, 62
  %i.aj = add i64 %i.af, 2
  %spec.select.i = select i1 %i.ai, i64 %i.aj, i64 %i.af
  %i.ak = and i64 %i.ac, 62
  %i.al = icmp eq i64 %i.ak, 62
  %i.am = add i64 %i.ag, 2
  %.sroa.08.0.i = select i1 %i.al, i64 %i.am, i64 %i.ag ; 2 uses
  %i.an = and i64 %.sroa.08.0.i, -64
  %i.ao = sub i64 %spec.select.i, %i.an           ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 1
  %i.aq = lshr exact i64 %.sroa.08.0.i, 1
  %i.ar = and i64 %i.aq, 31
  %i.as = lshr i64 %i.ao, 6
  %i.at = add nuw nsw i64 %i.as, %i.ar
  %i.au = sub nsw i64 %i.ap, %i.at
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.a, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.au, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit ], [ %i.p, %bb.f ], [ %i.w, %bb.h ], [ %i.y, %bb.i ], [ 0, %bb.g ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_6SenderINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2v_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.i.i = alloca [15 x i8], align 1        ; 10 uses
  %.sroa.6.i.i = alloca [15 x i8], align 1        ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = load i64, ptr %1, align 8, !range !598, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noundef !3 ; 13 uses
  switch i64 %i.i, label %default.unreachable69 [
    i64 0, label %bb.b
    i64 1, label %bb.u
    i64 2, label %bb.ar
  ]

default.unreachable69:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 4 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 8, !noalias !604 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noalias !604, !noundef !3 ; 2 uses
  %i.p = and i64 %i.o, %i.m
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2D_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 392 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 408
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  br label %bb.c

bb.c:                                             ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i, %.lr.ph.i.i
  %i.v = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.be, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i ]
  %.sroa.04.029.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.sroa.04.1.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i ] ; 8 uses
  %.sroa.0.02328.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i ] ; 11 uses
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %.sroa.04.029.i.i          ; 3 uses
  %i.y = load i64, ptr %i.r, align 8, !noalias !604, !noundef !3
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %.sroa.04.029.i.i, %i.z
  %i.ab = load ptr, ptr %i.s, align 8, !noalias !604, !nonnull !3, !noundef !3
  %i.ac = load i64, ptr %i.t, align 16, !noalias !604, !noundef !3
  %i.ad = icmp ult i64 %i.x, %i.ac
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !604 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.04.029.i.i, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load i64, ptr %i.r, align 8, !noalias !604, !noundef !3
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = add i64 %.sroa.04.029.i.i, 1
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.am = add nuw i64 %i.x, 1
  %i.an = load i64, ptr %i.u, align 128, !noalias !604, !noundef !3
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ap = icmp ult i32 %.sroa.0.02328.i.i, 7
  br i1 %i.ap, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.f
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.noexc.i unwind label %bb.r, !noalias !607

.noexc.i:                                         ; preds = %.loopexit.i.i.i
  %i.aq = icmp ult i32 %.sroa.0.02328.i.i, 11
  br i1 %i.aq, label %.loopexit.i.thread.i.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.f, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.ar, %.preheader.i.i.i ], [ 0, %bb.f ]
  %i.ar = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !604
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.ar, %.sroa.0.02328.i.i
  %i.as = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.as, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.noexc.i
  %i.at = add nuw nsw i32 %.sroa.0.02328.i.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.noexc.i
  %.sroa.0.2.i.i = phi i32 [ %i.at, %.loopexit.i.thread.i.i ], [ %.sroa.0.02328.i.i, %.noexc.i ]
  %i.au = load atomic i64, ptr %i.l monotonic, align 16, !noalias !604
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

bb.g:                                             ; preds = %bb.d
  fence seq_cst
  %i.av = load atomic i64, ptr %i.k monotonic, align 16, !noalias !604
  %i.aw = load i64, ptr %i.r, align 8, !noalias !604, !noundef !3
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = icmp eq i64 %i.ax, %.sroa.04.029.i.i
  br i1 %i.ay, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2D_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02328.i.i, i32 6)
  br label %bb.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i: ; preds = %bb.i
  %i.az = icmp ult i32 %.sroa.0.02328.i.i, 7
  %i.ba = zext i1 %i.az to i32
  %spec.select.i.i = add nuw nsw i32 %.sroa.0.02328.i.i, %i.ba
  %i.bb = load atomic i64, ptr %i.l monotonic, align 16, !noalias !604
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.02.i.i.i = phi i32 [ 0, %bb.h ], [ %i.bc, %bb.i ]
  %i.bc = add nuw nsw i32 %.sroa.0.02.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !604
  %.sroa.0.0.highbits.i13.i.i = lshr i32 %i.bc, %.sroa.0.0.i.i.i.i
  %i.bd = icmp eq i32 %.sroa.0.0.highbits.i13.i.i, 0
  br i1 %i.bd, label %bb.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i: ; preds = %bb.n, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.2.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %spec.select.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i ], [ %spec.select24.i.i, %bb.n ]
  %.sroa.04.1.i.i = phi i64 [ %i.au, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %i.bb, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i ], [ %.sroa.01.0.i.i.i, %bb.n ] ; 2 uses
  %i.be = load i64, ptr %i.n, align 16, !noalias !604, !noundef !3 ; 2 uses
  %i.bf = and i64 %i.be, %.sroa.04.1.i.i
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.c, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2D_.exit.i

bb.j:                                             ; preds = %bb.e
  %i.bh = load i64, ptr %i.r, align 8, !noalias !604, !noundef !3
  %i.bi = add i64 %i.bh, %i.aa
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.bj = add i64 %.sroa.04.029.i.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i.i = phi i64 [ %i.bj, %bb.k ], [ %i.bi, %bb.j ]
  %i.bk = cmpxchg weak ptr %i.l, i64 %.sroa.04.029.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !604 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bk, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bk, 0
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2D_.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i14.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02328.i.i, i32 6)
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %i.bl = icmp ult i32 %.sroa.0.02328.i.i, 7
  %i.bm = zext i1 %i.bl to i32
  %spec.select24.i.i = add nuw nsw i32 %.sroa.0.02328.i.i, %i.bm
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

bb.o:                                             ; preds = %bb.o, %bb.m
  %.sroa.0.02.i15.i.i = phi i32 [ 0, %bb.m ], [ %i.bn, %bb.o ]
  %i.bn = add nuw nsw i32 %.sroa.0.02.i15.i.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !604
  %.sroa.0.0.highbits.i16.i.i = lshr i32 %i.bn, %.sroa.0.0.i.i14.i.i
  %i.bo = icmp eq i32 %.sroa.0.0.highbits.i16.i.i, 0
  br i1 %i.bo, label %bb.o, label %bb.n

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2D_.exit.i: ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !alias.scope !607
  store i64 0, ptr %0, align 8, !alias.scope !599, !noalias !602
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2D_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2D_.exit.thread.i: ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bq = add i64 %.sroa.04.029.i.i, 1
  %.sroa.015.0.copyload.i = load i8, ptr %i.h, align 8, !alias.scope !602, !noalias !599
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %.sroa.015.0.copyload.i, ptr %i.ae, align 8, !noalias !608
  %.sroa.5.0..sroa.0.0..sroa.0.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa.0.0..sroa.0.0..val.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx.i, i64 15, i1 false), !noalias !599
  store atomic i64 %i.bq, ptr %i.bp release, align 8, !noalias !611
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  tail call fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.br) #26, !noalias !607
  br label %bb.q

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2D_.exit.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i, %bb.b
  %.sroa.015.0.copyload27.i = load i8, ptr %i.h, align 8, !alias.scope !602, !noalias !599 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.015.0.copyload27.i, 2
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2D_.exit.i
  %.sroa.5.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx28.i, i64 15, i1 false), !alias.scope !607
  store i64 1, ptr %0, align 8, !alias.scope !599, !noalias !602
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.015.0.copyload27.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !599, !noalias !602
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2D_.exit

bb.q:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2D_.exit.i, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2D_.exit.thread.i
  store i64 2, ptr %0, align 8, !alias.scope !599, !noalias !602
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2D_.exit

common.resume:                                    ; preds = %.noexc16.i, %.body.thread.i, %bb.br, %.body.thread.i.i, %bb.ao, %bb.r, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body24.i.i, %.body.thread.i.i ], [ %i.bs, %bb.r ], [ %i.bs, %bb.s ], [ %eh.lpad-body24.i.i, %bb.ao ], [ %.pn39.i, %.body.thread.i ], [ %i.fe, %.noexc16.i ], [ %.pn39.i, %bb.br ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %.loopexit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load i8, ptr %i.h, align 8, !range !4, !alias.scope !613, !noalias !599, !noundef !3
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.s, label %common.resume

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %common.resume unwind label %bb.t, !noalias !599

bb.t:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !599
  unreachable

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2D_.exit: ; preds = %bb.p, %bb.q, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2D_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bs

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 5 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8, !noalias !624 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 6 uses
  %i.ca = load atomic ptr, ptr %i.bz acquire, align 8, !noalias !624
  %i.cb = and i64 %i.by, 1
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.lr.ph.i.i.i, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2D_.exit.thread.i.i

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2D_.exit.thread.i.i: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.014.0.copyload31.i.i = load i8, ptr %i.g, align 8, !alias.scope !628, !noalias !629
  %.sroa.5.0..sroa_idx32.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx32.i.i, i64 15, i1 false), !noalias !629
  br label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2D_.exit.i.i

.lr.ph.lr.ph.i.i.i:                               ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.outer.backedge.i.i.i, %.lr.ph.lr.ph.i.i.i
  %.sroa.01.0.ph81.i.i.i = phi i64 [ %i.by, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.01.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 2 uses
  %.sroa.09.0.ph80.i.i.i = phi ptr [ %i.ca, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.09.0.ph.be.i.i.i, %.outer.backedge.i.i.i ]
  %.sroa.0.0.ph79.i.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.0.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 2 uses
  %.sroa.036.0.ph78.i.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.036.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 4 uses
  %i.ce = lshr exact i64 %.sroa.01.0.ph81.i.i.i, 1
  %i.cf = and i64 %i.ce, 31                       ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 31
  br i1 %i.cg, label %.lr.ph.i.i4, label %._crit_edge.i.i

bb.v:                                             ; preds = %bb.x
  %i.ch = lshr exact i64 %i.cq, 1
  %i.ci = and i64 %i.ch, 31                       ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 31
  br i1 %i.cj, label %.lr.ph.i.i4, label %._crit_edge.i.i

.lr.ph.i.i4:                                      ; preds = %.lr.ph.i.i.i, %bb.v
  %.sroa.0.074.i67.i.i = phi i32 [ %.sroa.0.1.i.i.i, %bb.v ], [ %.sroa.0.0.ph79.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.ck = icmp ult i32 %.sroa.0.074.i67.i.i, 7
  br i1 %i.ck, label %.preheader.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i4
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i.i.i.i unwind label %.loopexit.i.i.i5, !noalias !624

.loopexit.i.i.i.i:                                ; preds = %bb.w
  %i.cl = icmp ult i32 %.sroa.0.074.i67.i.i, 11
  br i1 %i.cl, label %.loopexit.i.thread.i.i.i, label %bb.x

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i4, %.preheader.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i32 [ %i.cm, %.preheader.i.i.i.i ], [ 0, %.lr.ph.i.i4 ]
  %i.cm = add nuw nsw i32 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !624
  %.sroa.0.0.highbits.i.i.i.i = lshr i32 %i.cm, %.sroa.0.074.i67.i.i
  %i.cn = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i, 0
  br i1 %i.cn, label %.preheader.i.i.i.i, label %.loopexit.i.thread.i.i.i

.loopexit.i.thread.i.i.i:                         ; preds = %.preheader.i.i.i.i, %.loopexit.i.i.i.i
  %i.co = add nuw nsw i32 %.sroa.0.074.i67.i.i, 1
  br label %bb.x

._crit_edge.i.i:                                  ; preds = %bb.v, %.lr.ph.i.i.i
  %.sroa.01.076.i.lcssa.i.i = phi i64 [ %.sroa.01.0.ph81.i.i.i, %.lr.ph.i.i.i ], [ %i.cq, %bb.v ] ; 2 uses
  %.sroa.09.075.i.lcssa.i.i = phi ptr [ %.sroa.09.0.ph80.i.i.i, %.lr.ph.i.i.i ], [ %i.cr, %bb.v ] ; 2 uses
  %.sroa.0.074.i.lcssa.i.i = phi i32 [ %.sroa.0.0.ph79.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.v ] ; 4 uses
  %.lcssa.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i ], [ %i.ci, %bb.v ] ; 2 uses
  %i.cp = icmp eq i64 %.lcssa.i.i, 30             ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.036.0.ph78.i.i.i, null
  %or.cond.i.i.i = select i1 %i.cp, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list5BlockINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3O_.exit.i.i.i

bb.x:                                             ; preds = %.loopexit.i.thread.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.co, %.loopexit.i.thread.i.i.i ], [ %.sroa.0.074.i67.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %i.cq = load atomic i64, ptr %i.bx acquire, align 8, !noalias !624 ; 3 uses
  %i.cr = load atomic ptr, ptr %i.bz acquire, align 8, !noalias !624
  %i.cs = and i64 %i.cq, 1
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.v, label %.outer._crit_edge.i.i.i

end_hunk_2
begin_hunk_3_@_RNvMs2_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_6SenderINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2v_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !642
  unreachable

bb.bo:                                            ; preds = %bb.bf
  %i.fp = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !647
  %i.fq = and i64 %i.fp, 9223372036854775807
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i, label %.noexc21.i, !prof !28

.noexc21.i:                                       ; preds = %bb.bo
  %i.fs = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27, !noalias !647
  br i1 %i.fs, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc21.i
  store atomic i8 1, ptr %i.fd monotonic, align 4, !noalias !647
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i: ; preds = %bb.bp, %.noexc21.i, %bb.bo, %bb.bf
  %i.ft = atomicrmw xchg ptr %i.el, i32 0 release, align 4, !noalias !647
  %i.fu = icmp eq i32 %i.ft, 2
  br i1 %i.fu, label %bb.bq, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2D_.exit, !prof !29

bb.bq:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.el), !noalias !647
  br label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2D_.exit

.body.thread.i:                                   ; preds = %bb.ay, %bb.au, %.body.i, %.noexc16.i
  %.pn39.i = phi { ptr, i32 } [ %i.ei, %bb.au ], [ %i.fe, %.noexc16.i ], [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.eq, %bb.ay ] ; 2 uses
  %i.fv = load i8, ptr %i.f, align 8, !range !4, !alias.scope !687, !noalias !642, !noundef !3
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %bb.br, label %common.resume

bb.br:                                            ; preds = %.body.thread.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fx)
          to label %common.resume unwind label %bb.bn, !noalias !642

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2D_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit19.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i20.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bs

bb.bs:                                            ; preds = %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2D_.exit, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2D_.exit, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2D_.exit
  ret void
}

; Function Attrs: nofree norecurse nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvMs2_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_6SenderINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2w_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !598, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  switch i64 %i.a, label %default.unreachable14 [
    i64 0, label %bb.b
    i64 1, label %bb.j
    i64 2, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit
  ]

default.unreachable14:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8 ; 3 uses
  %i.f = load atomic i64, ptr %i.c seq_cst, align 8 ; 2 uses
  %i.g = load atomic i64, ptr %i.d seq_cst, align 8
  %i.h = icmp eq i64 %i.g, %i.e
  br i1 %i.h, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.j = load i64, ptr %i.i, align 16, !noundef !3 ; 2 uses
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = and i64 %i.k, %i.f                       ; 4 uses
  %i.m = and i64 %i.k, %i.e                       ; 4 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %i.l, %i.m
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = sub nuw i64 %i.m, %i.l
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit

bb.g:                                             ; preds = %bb.e
  %i.q = xor i64 %i.j, -1
  %i.r = and i64 %i.e, %i.q
  %i.s = icmp eq i64 %i.r, %i.f
  br i1 %i.s, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.u = load i64, ptr %i.t, align 128, !noundef !3
  %i.v = sub i64 %i.m, %i.l
  %i.w = add i64 %i.v, %i.u
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.y = load i64, ptr %i.x, align 128, !noundef !3
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit

bb.j:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8 ; 3 uses
  %i.ac = load atomic i64, ptr %i.z seq_cst, align 8 ; 2 uses
  %i.ad = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ae = icmp eq i64 %i.ad, %i.ab
  br i1 %i.ae, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit, label %bb.k

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit: ; preds = %bb.k
  %i.af = and i64 %i.ab, -2                       ; 2 uses
  %i.ag = and i64 %i.ac, -2                       ; 2 uses
  %i.ah = and i64 %i.ab, 62
  %i.ai = icmp eq i64 %i.ah, 62
  %i.aj = add i64 %i.af, 2
  %spec.select.i = select i1 %i.ai, i64 %i.aj, i64 %i.af
  %i.ak = and i64 %i.ac, 62
  %i.al = icmp eq i64 %i.ak, 62
  %i.am = add i64 %i.ag, 2
  %.sroa.08.0.i = select i1 %i.al, i64 %i.am, i64 %i.ag ; 2 uses
  %i.an = and i64 %.sroa.08.0.i, -64
  %i.ao = sub i64 %spec.select.i, %i.an           ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 1
  %i.aq = lshr exact i64 %.sroa.08.0.i, 1
  %i.ar = and i64 %i.aq, 31
  %i.as = lshr i64 %i.ao, 6
  %i.at = add nuw nsw i64 %i.as, %i.ar
  %i.au = sub nsw i64 %i.ap, %i.at
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.a, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.au, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit ], [ %i.p, %bb.f ], [ %i.w, %bb.h ], [ %i.y, %bb.i ], [ 0, %bb.g ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_6SenderINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2w_(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.i.i = alloca [38 x i8], align 2        ; 10 uses
  %.sroa.6.i.i = alloca [38 x i8], align 2        ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 10 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = load i64, ptr %1, align 8, !range !598, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noundef !3 ; 13 uses
  switch i64 %i.i, label %default.unreachable64 [
    i64 0, label %bb.b
    i64 1, label %bb.t
    i64 2, label %bb.ap
  ]

default.unreachable64:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 4 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 8, !noalias !695 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noalias !695, !noundef !3 ; 2 uses
  %i.p = and i64 %i.o, %i.m
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2E_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 392 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 408
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  br label %bb.c

bb.c:                                             ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i, %.lr.ph.i.i
  %i.v = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.bd, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i ]
  %.sroa.04.029.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.sroa.04.1.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i ] ; 8 uses
  %.sroa.0.02328.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i ] ; 11 uses
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %.sroa.04.029.i.i          ; 3 uses
  %i.y = load i64, ptr %i.r, align 8, !noalias !695, !noundef !3
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %.sroa.04.029.i.i, %i.z
  %i.ab = load ptr, ptr %i.s, align 8, !noalias !695, !nonnull !3, !noundef !3
  %i.ac = load i64, ptr %i.t, align 16, !noalias !695, !noundef !3
  %i.ad = icmp ult i64 %i.x, %i.ac
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8, !noalias !695 ; 2 uses
  %i.ag = icmp eq i64 %.sroa.04.029.i.i, %i.af
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.r, align 8, !noalias !695, !noundef !3
  %i.ai = add i64 %i.ah, %i.af
  %i.aj = add i64 %.sroa.04.029.i.i, 1
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.al = add nuw i64 %i.x, 1
  %i.am = load i64, ptr %i.u, align 128, !noalias !695, !noundef !3
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ao = icmp ult i32 %.sroa.0.02328.i.i, 7
  br i1 %i.ao, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.f
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.noexc.i unwind label %bb.r, !noalias !698

.noexc.i:                                         ; preds = %.loopexit.i.i.i
  %i.ap = icmp ult i32 %.sroa.0.02328.i.i, 11
  br i1 %i.ap, label %.loopexit.i.thread.i.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.f, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.aq, %.preheader.i.i.i ], [ 0, %bb.f ]
  %i.aq = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !695
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.aq, %.sroa.0.02328.i.i
  %i.ar = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.ar, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.noexc.i
  %i.as = add nuw nsw i32 %.sroa.0.02328.i.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.noexc.i
  %.sroa.0.2.i.i = phi i32 [ %i.as, %.loopexit.i.thread.i.i ], [ %.sroa.0.02328.i.i, %.noexc.i ]
  %i.at = load atomic i64, ptr %i.l monotonic, align 16, !noalias !695
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

bb.g:                                             ; preds = %bb.d
  fence seq_cst
  %i.au = load atomic i64, ptr %i.k monotonic, align 16, !noalias !695
  %i.av = load i64, ptr %i.r, align 8, !noalias !695, !noundef !3
  %i.aw = add i64 %i.av, %i.au
  %i.ax = icmp eq i64 %i.aw, %.sroa.04.029.i.i
  br i1 %i.ax, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2E_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02328.i.i, i32 6)
  br label %bb.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i: ; preds = %bb.i
  %i.ay = icmp ult i32 %.sroa.0.02328.i.i, 7
  %i.az = zext i1 %i.ay to i32
  %spec.select.i.i = add nuw nsw i32 %.sroa.0.02328.i.i, %i.az
  %i.ba = load atomic i64, ptr %i.l monotonic, align 16, !noalias !695
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.02.i.i.i = phi i32 [ 0, %bb.h ], [ %i.bb, %bb.i ]
  %i.bb = add nuw nsw i32 %.sroa.0.02.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !695
  %.sroa.0.0.highbits.i13.i.i = lshr i32 %i.bb, %.sroa.0.0.i.i.i.i
  %i.bc = icmp eq i32 %.sroa.0.0.highbits.i13.i.i, 0
  br i1 %i.bc, label %bb.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i: ; preds = %bb.n, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.2.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %spec.select.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i ], [ %spec.select24.i.i, %bb.n ]
  %.sroa.04.1.i.i = phi i64 [ %i.at, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %i.ba, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i ], [ %.sroa.01.0.i.i.i, %bb.n ] ; 2 uses
  %i.bd = load i64, ptr %i.n, align 16, !noalias !695, !noundef !3 ; 2 uses
  %i.be = and i64 %i.bd, %.sroa.04.1.i.i
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.c, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2E_.exit.i

bb.j:                                             ; preds = %bb.e
  %i.bg = load i64, ptr %i.r, align 8, !noalias !695, !noundef !3
  %i.bh = add i64 %i.bg, %i.aa
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.bi = add i64 %.sroa.04.029.i.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.l, i64 %.sroa.04.029.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !695 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bj, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bj, 0
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2E_.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i14.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02328.i.i, i32 6)
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %i.bk = icmp ult i32 %.sroa.0.02328.i.i, 7
  %i.bl = zext i1 %i.bk to i32
  %spec.select24.i.i = add nuw nsw i32 %.sroa.0.02328.i.i, %i.bl
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

bb.o:                                             ; preds = %bb.o, %bb.m
  %.sroa.0.02.i15.i.i = phi i32 [ 0, %bb.m ], [ %i.bm, %bb.o ]
  %i.bm = add nuw nsw i32 %.sroa.0.02.i15.i.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !695
  %.sroa.0.0.highbits.i16.i.i = lshr i32 %i.bm, %.sroa.0.0.i.i14.i.i
  %i.bn = icmp eq i32 %.sroa.0.0.highbits.i16.i.i, 0
  br i1 %i.bn, label %bb.o, label %bb.n

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2E_.exit.i: ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !alias.scope !698
  store i64 0, ptr %0, align 8, !alias.scope !690, !noalias !693
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2E_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2E_.exit.thread.i: ; preds = %bb.l
  %i.bo = add i64 %.sroa.04.029.i.i, 1
  %.sroa.014.0.copyload.i = load i16, ptr %i.h, align 8, !alias.scope !693, !noalias !690
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i16 %.sroa.014.0.copyload.i, ptr %i.bp, align 8, !noalias !699
  %.sroa.5.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.0..sroa_idx16.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.0..sroa_idx.i, i64 38, i1 false), !noalias !690
  store atomic i64 %i.bo, ptr %i.ae release, align 8, !noalias !702
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  tail call fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq) #26, !noalias !698
  br label %bb.q

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2E_.exit.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i, %bb.b
  %.sroa.014.0.copyload27.i = load i16, ptr %i.h, align 8, !alias.scope !693, !noalias !690 ; 2 uses
  %.not.i = icmp eq i16 %.sroa.014.0.copyload27.i, 2
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2E_.exit.i
  %.sroa.5.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.0..sroa_idx28.i, i64 38, i1 false), !alias.scope !698
  store i64 1, ptr %0, align 8, !alias.scope !690, !noalias !693
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.014.0.copyload27.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !690, !noalias !693
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2E_.exit

bb.q:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2E_.exit.i, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2E_.exit.thread.i
  store i64 2, ptr %0, align 8, !alias.scope !690, !noalias !693
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2E_.exit

common.resume:                                    ; preds = %.noexc16.i, %.body.thread.i, %.body.thread.i.i, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body23.i.i, %.body.thread.i.i ], [ %i.br, %bb.r ], [ %.pn38.i, %.body.thread.i ], [ %i.ex, %.noexc16.i ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %.loopexit.i.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h) #29
          to label %common.resume unwind label %bb.s, !noalias !690

bb.s:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !690
  unreachable

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_sendB2E_.exit: ; preds = %bb.p, %bb.q, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2E_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bp

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 5 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8, !noalias !712 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 6 uses
  %i.bw = load atomic ptr, ptr %i.bv acquire, align 8, !noalias !712
  %i.bx = and i64 %i.bu, 1
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.lr.ph.i.i.i, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2E_.exit.thread.i.i

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2E_.exit.thread.i.i: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.013.0.copyload30.i.i = load i16, ptr %i.g, align 8, !alias.scope !716, !noalias !717
  %.sroa.5.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.0..sroa_idx31.i.i, i64 38, i1 false), !noalias !717
  br label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2E_.exit.i.i

.lr.ph.lr.ph.i.i.i:                               ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.outer.backedge.i.i.i, %.lr.ph.lr.ph.i.i.i
  %.sroa.01.0.ph81.i.i.i = phi i64 [ %i.bu, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.01.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 2 uses
  %.sroa.09.0.ph80.i.i.i = phi ptr [ %i.bw, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.09.0.ph.be.i.i.i, %.outer.backedge.i.i.i ]
  %.sroa.0.0.ph79.i.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.0.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 2 uses
  %.sroa.036.0.ph78.i.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.036.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 4 uses
  %i.ca = lshr exact i64 %.sroa.01.0.ph81.i.i.i, 1
  %i.cb = and i64 %i.ca, 31                       ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 31
  br i1 %i.cc, label %.lr.ph.i.i4, label %._crit_edge.i.i

bb.u:                                             ; preds = %bb.w
  %i.cd = lshr exact i64 %i.cm, 1
  %i.ce = and i64 %i.cd, 31                       ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 31
  br i1 %i.cf, label %.lr.ph.i.i4, label %._crit_edge.i.i

.lr.ph.i.i4:                                      ; preds = %.lr.ph.i.i.i, %bb.u
  %.sroa.0.074.i66.i.i = phi i32 [ %.sroa.0.1.i.i.i, %bb.u ], [ %.sroa.0.0.ph79.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.cg = icmp ult i32 %.sroa.0.074.i66.i.i, 7
  br i1 %i.cg, label %.preheader.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i4
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i.i.i.i unwind label %.loopexit.i.i.i5, !noalias !712

.loopexit.i.i.i.i:                                ; preds = %bb.v
  %i.ch = icmp ult i32 %.sroa.0.074.i66.i.i, 11
  br i1 %i.ch, label %.loopexit.i.thread.i.i.i, label %bb.w

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i4, %.preheader.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i32 [ %i.ci, %.preheader.i.i.i.i ], [ 0, %.lr.ph.i.i4 ]
  %i.ci = add nuw nsw i32 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !712
  %.sroa.0.0.highbits.i.i.i.i = lshr i32 %i.ci, %.sroa.0.074.i66.i.i
  %i.cj = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i, 0
  br i1 %i.cj, label %.preheader.i.i.i.i, label %.loopexit.i.thread.i.i.i

.loopexit.i.thread.i.i.i:                         ; preds = %.preheader.i.i.i.i, %.loopexit.i.i.i.i
  %i.ck = add nuw nsw i32 %.sroa.0.074.i66.i.i, 1
  br label %bb.w

._crit_edge.i.i:                                  ; preds = %bb.u, %.lr.ph.i.i.i
  %.sroa.01.076.i.lcssa.i.i = phi i64 [ %.sroa.01.0.ph81.i.i.i, %.lr.ph.i.i.i ], [ %i.cm, %bb.u ] ; 2 uses
  %.sroa.09.075.i.lcssa.i.i = phi ptr [ %.sroa.09.0.ph80.i.i.i, %.lr.ph.i.i.i ], [ %i.cn, %bb.u ] ; 2 uses
  %.sroa.0.074.i.lcssa.i.i = phi i32 [ %.sroa.0.0.ph79.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.u ] ; 4 uses
  %.lcssa.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i ], [ %i.ce, %bb.u ] ; 2 uses
  %i.cl = icmp eq i64 %.lcssa.i.i, 30             ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.036.0.ph78.i.i.i, null
  %or.cond.i.i.i = select i1 %i.cl, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list5BlockINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3P_.exit.i.i.i

bb.w:                                             ; preds = %.loopexit.i.thread.i.i.i, %.loopexit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %i.ck, %.loopexit.i.thread.i.i.i ], [ %.sroa.0.074.i66.i.i, %.loopexit.i.i.i.i ] ; 2 uses
  %i.cm = load atomic i64, ptr %i.bt acquire, align 8, !noalias !712 ; 3 uses
  %i.cn = load atomic ptr, ptr %i.bv acquire, align 8, !noalias !712
  %i.co = and i64 %i.cm, 1
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.u, label %.outer._crit_edge.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list5BlockINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3P_.exit.i.i.i: ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.036.2.i.i.i = phi ptr [ %.sroa.036.0.ph78.i.i.i, %._crit_edge.i.i ], [ %i.cr, %bb.x ] ; 8 uses
  %i.cq = icmp eq ptr %.sroa.09.075.i.lcssa.i.i, null
  br i1 %i.cq, label %bb.y, label %bb.af

bb.x:                                             ; preds = %._crit_edge.i.i
end_hunk_3
begin_hunk_4_@_RNvMs4_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputuNtNtB1g_6marker4SendEL_EEE3newCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #31
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #29
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

.body:                                            ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %0, ptr nonnull %1) #29
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !781
  %i.k = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 40, 73) 40, i64 noundef 8) #18, !noalias !781 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB27_6future6future6Futurep6OutputuNtNtB27_6marker4SendEL_EEEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !29

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #31
          to label %.noexc30 unwind label %bb.g

.noexc30:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #29
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.g, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtNtB27_6future6future6Futurep6OutputuNtNtB27_6marker4SendEL_EEEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = insertvalue { ptr, i64 } poison, ptr %i.k, 0
  %i.p = insertvalue { ptr, i64 } %i.o, i64 -1, 1
  ret { ptr, i64 } %i.p

bb.i:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs7_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputbNtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = cmpxchg ptr %0, i64 1, i64 0 monotonic monotonic, align 8, !noalias !784
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.d, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  fence acquire
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload7 = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload9 = load ptr, ptr %.sroa.6.0..sroa_idx8, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0.copyload11 = load i64, ptr %.sroa.8.0..sroa_idx10, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !784
  store ptr %0, ptr %i.a, align 8, !noalias !784
  call void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1O_6future6future6Futurep6OutputbNtNtB1O_6marker4SendEL_EEEENtNtNtB1O_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !784
  %i.f = icmp eq ptr %.sroa.0.0.copyload7, null
  br i1 %i.f, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %bb.b

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread: ; preds = %bb.a, %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.6.020 = phi ptr [ %.sroa.6.0.copyload9, %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %0, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.020) ]
  store ptr %.sroa.6.020, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.6.020, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noundef !3
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.o, label %bb.l, !prof !28

bb.b:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.copyload7, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.0.copyload9, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.0.copyload11, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.4.0.copyload.cast = inttoptr i64 %.sroa.8.0.copyload11 to ptr
  %i.j = icmp eq ptr %.sroa.6.0.copyload9, null
  br i1 %i.j, label %bb.i, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #31
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.l, %bb.c
  unreachable

bb.e:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !793, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !793
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.sroa.6.0.copyload9, ptr %.sroa.4.0.copyload.cast) #29
          to label %bb.e unwind label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.f, %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.p = atomicrmw sub ptr %.sroa.0.0.copyload7, i64 1 release, align 8, !noalias !794
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = trunc i64 %.sroa.8.0.copyload11 to i1
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4
  %.sroa.0.0 = phi i1 [ %i.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6 ], [ %i.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4 ]
  ret i1 %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.m, %bb.n, %bb.e, %bb.f
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.s, %bb.n ], [ %i.s, %bb.m ]
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #31
          to label %bb.d unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.t = load ptr, ptr %i.b, align 8, !alias.scope !805, !nonnull !3, !noundef !3
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !805
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE9drop_slowCs95DO3lnzZ3L_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h

bb.o:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.6.020, i64 32
  %i.x = load i8, ptr %i.w, align 8, !range !4, !alias.scope !806, !noundef !3
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = atomicrmw sub ptr %.sroa.6.020, i64 1 release, align 8, !noalias !809
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputbNtNtB1N_6marker4SendEL_EEEE9drop_slowCs95DO3lnzZ3L_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputuNtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = cmpxchg ptr %0, i64 1, i64 0 monotonic monotonic, align 8, !noalias !814
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.d, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  fence acquire
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload6 = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload8 = load ptr, ptr %.sroa.6.0..sroa_idx7, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0.copyload10 = load i64, ptr %.sroa.8.0..sroa_idx9, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !814
  store ptr %0, ptr %i.a, align 8, !noalias !814
  call void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1O_6future6future6Futurep6OutputuNtNtB1O_6marker4SendEL_EEEENtNtNtB1O_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !814
  %i.f = icmp eq ptr %.sroa.0.0.copyload6, null
  br i1 %i.f, label %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %bb.b

_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread: ; preds = %bb.a, %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.6.015 = phi ptr [ %.sroa.6.0.copyload8, %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %0, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.015) ]
  store ptr %.sroa.6.015, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.6.015, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noundef !3
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.o, label %bb.l, !prof !28

bb.b:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.copyload6, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.0.copyload8, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.0.copyload10, ptr %.sroa.8.0..sroa_idx, align 8
  %.cast = inttoptr i64 %.sroa.8.0.copyload10 to ptr
  %i.j = icmp eq ptr %.sroa.6.0.copyload8, null
  br i1 %i.j, label %bb.i, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #31
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.l, %bb.c
  unreachable

bb.e:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !823, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !823
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.sroa.6.0.copyload8, ptr %.cast) #29
          to label %bb.e unwind label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.f, %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.p = atomicrmw sub ptr %.sroa.0.0.copyload6, i64 1 release, align 8, !noalias !824
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.m, %bb.n, %bb.e, %bb.f
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.r, %bb.n ], [ %i.r, %bb.m ]
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #31
          to label %bb.d unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !835, !nonnull !3, !noundef !3
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !835
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h

bb.o:                                             ; preds = %_RNvMsf_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE10try_unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread
  %i.v = atomicrmw sub ptr %.sroa.6.015, i64 1 release, align 8, !noalias !836
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10disconnectB2D_(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !3
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10disconnectB2E_(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !3
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2r_(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.727.i = alloca [62 x i8], align 2        ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.419.i = alloca [62 x i8], align 2        ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.66.i = alloca [62 x i8], align 2         ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  %i.h = load i64, ptr %1, align 8, !range !841, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  switch i64 %i.h, label %default.unreachable60 [
    i64 0, label %bb.b
    i64 1, label %bb.u
    i64 2, label %bb.aq
    i64 3, label %bb.bt
    i64 4, label %bb.bu
    i64 5, label %bb.bv
  ]

default.unreachable60:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !noundef !3 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.k = load atomic i64, ptr %i.j monotonic, align 8, !noalias !845
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 400 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 392 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge, %bb.b
  %.sroa.0.023.i.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.023.i.i.be, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge ] ; 11 uses
  %.sroa.04.0.i.i = phi i64 [ %i.k, %bb.b ], [ %.sroa.04.0.i.i.be, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge ] ; 7 uses
  %i.r = load i64, ptr %i.l, align 16, !noalias !845, !noundef !3
  %i.s = add i64 %i.r, -1
  %i.t = and i64 %i.s, %.sroa.04.0.i.i            ; 3 uses
  %i.u = load i64, ptr %i.m, align 8, !noalias !845, !noundef !3
  %i.v = sub i64 0, %i.u
  %i.w = and i64 %.sroa.04.0.i.i, %i.v
  %i.x = load ptr, ptr %i.n, align 8, !noalias !845, !nonnull !3, !noundef !3
  %i.y = load i64, ptr %i.o, align 16, !noalias !845, !noundef !3
  %i.z = icmp ult i64 %i.t, %i.y
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.x, i64 %i.t ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8, !noalias !845 ; 3 uses
  %i.ad = add i64 %.sroa.04.0.i.i, 1
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i
  %i.af = icmp eq i64 %i.ac, %.sroa.04.0.i.i
  br i1 %i.af, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i
  %i.ag = add nuw i64 %i.t, 1
  %i.ah = load i64, ptr %i.q, align 128, !noalias !845, !noundef !3
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.aj = icmp ult i32 %.sroa.0.023.i.i, 7
  br i1 %i.aj, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.e
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !845
  %i.ak = icmp ult i32 %.sroa.0.023.i.i, 11
  br i1 %i.ak, label %.loopexit.i.thread.i.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.al, %.preheader.i.i.i ], [ 0, %bb.e ]
  %i.al = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !845
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.al, %.sroa.0.023.i.i
  %i.am = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.am, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.an = add nuw nsw i32 %.sroa.0.023.i.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.2.i.i = phi i32 [ %i.an, %.loopexit.i.thread.i.i ], [ %.sroa.0.023.i.i, %.loopexit.i.i.i ]
  %i.ao = load atomic i64, ptr %i.j monotonic, align 16, !noalias !845
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge

bb.f:                                             ; preds = %bb.c
  fence seq_cst
  %i.ap = load atomic i64, ptr %i.p monotonic, align 16, !noalias !845 ; 2 uses
  %i.aq = load i64, ptr %i.l, align 16, !noalias !845, !noundef !3 ; 2 uses
  %i.ar = xor i64 %i.aq, -1
  %i.as = and i64 %i.ap, %i.ar
  %i.at = icmp eq i64 %i.as, %.sroa.04.0.i.i
  br i1 %i.at, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i, i32 6)
  br label %bb.h

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i: ; preds = %bb.h
  %i.au = icmp ult i32 %.sroa.0.023.i.i, 7
  %i.av = zext i1 %i.au to i32
  %spec.select.i.i = add nuw nsw i32 %.sroa.0.023.i.i, %i.av
  %i.aw = load atomic i64, ptr %i.j monotonic, align 16, !noalias !845
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.02.i.i.i = phi i32 [ 0, %bb.g ], [ %i.ax, %bb.h ]
  %i.ax = add nuw nsw i32 %.sroa.0.02.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !845
  %.sroa.0.0.highbits.i13.i.i = lshr i32 %i.ax, %.sroa.0.0.i.i.i.i
  %i.ay = icmp eq i32 %.sroa.0.0.highbits.i13.i.i, 0
  br i1 %i.ay, label %bb.h, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.az = and i64 %i.aq, %i.ap
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2x_.exit.i, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2x_.exit.thread.i

bb.j:                                             ; preds = %bb.d
  %i.bb = load i64, ptr %i.m, align 8, !noalias !845, !noundef !3
  %i.bc = add i64 %i.bb, %i.w
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %.sroa.01.0.i.i = phi i64 [ %i.bc, %bb.j ], [ %i.ac, %bb.d ]
  %i.bd = cmpxchg weak ptr %i.j, i64 %.sroa.04.0.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !845 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bd, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bd, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.i.i14.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i, i32 6)
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.be = icmp ult i32 %.sroa.0.023.i.i, 7
  %i.bf = zext i1 %i.be to i32
  %spec.select24.i.i = add nuw nsw i32 %.sroa.0.023.i.i, %i.bf
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge: ; preds = %bb.m, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.023.i.i.be = phi i32 [ %.sroa.0.2.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %spec.select.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i ], [ %spec.select24.i.i, %bb.m ]
  %.sroa.04.0.i.i.be = phi i64 [ %i.ao, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %i.aw, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i ], [ %.sroa.01.0.i.i.i, %bb.m ]
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

bb.n:                                             ; preds = %bb.n, %bb.l
  %.sroa.0.02.i15.i.i = phi i32 [ 0, %bb.l ], [ %i.bg, %bb.n ]
  %i.bg = add nuw nsw i32 %.sroa.0.02.i15.i.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !845
  %.sroa.0.0.highbits.i16.i.i = lshr i32 %i.bg, %.sroa.0.0.i.i14.i.i
  %i.bh = icmp eq i32 %.sroa.0.0.highbits.i16.i.i, 0
  br i1 %i.bh, label %bb.n, label %bb.m

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2x_.exit.i: ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.bi, align 2, !alias.scope !842
  store i16 3, ptr %0, align 8, !alias.scope !842
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2x_.exit.thread.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i)
  br label %bb.r

bb.o:                                             ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB26_(ptr noalias noundef align 8 dereferenceable(64) %i.e) #29
          to label %common.resume unwind label %bb.q, !noalias !848

bb.p:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.bl = load i64, ptr %i.m, align 8, !noalias !845, !noundef !3
  %i.bm = add i64 %i.bl, %.sroa.04.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false), !noalias !848
  store atomic i64 %i.bm, ptr %i.bk release, align 8, !noalias !848
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  invoke fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bn)
          to label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2x_.exit.i unwind label %bb.o, !noalias !848

bb.q:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !848
  unreachable

common.resume:                                    ; preds = %bb.as, %bb.av, %bb.bd, %bb.be, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.o ], [ %i.fx, %bb.as ], [ %i.gf, %bb.av ], [ %lpad.phi.i, %bb.be ], [ %lpad.phi.i, %bb.bd ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2x_.exit.i: ; preds = %bb.p
  %.sroa.04.0.copyload5.i = load i16, ptr %i.e, align 8, !noalias !842 ; 2 uses
  %.sroa.66.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.66.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.66.0..sroa_idx7.i, i64 62, i1 false), !noalias !842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !848
  %i.bp = icmp eq i16 %.sroa.04.0.copyload5.i, 3
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2x_.exit.i, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2x_.exit.thread.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.bq, align 2, !alias.scope !842
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2x_.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.66.i, i64 62, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.04.0.copyload5.sink.i = phi i16 [ %.sroa.04.0.copyload5.i, %bb.s ], [ 3, %bb.r ]
  store i16 %.sroa.04.0.copyload5.sink.i, ptr %0, align 8, !alias.scope !842
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i)
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_.exit

bb.u:                                             ; preds = %bb.a
  %i.br = load ptr, ptr %i.i, align 8, !noundef !3 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419.i)
  %i.bs = load atomic i64, ptr %i.br acquire, align 8, !noalias !854
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 5 uses
  %i.bu = load atomic ptr, ptr %i.bt acquire, align 8, !noalias !854
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 128
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.u
  %.sroa.0.032.i.i = phi i32 [ 0, %bb.u ], [ %.sroa.0.032.i.i.be, %.backedge.i.i.backedge ] ; 13 uses
  %.sroa.014.0.i.i = phi ptr [ %i.bu, %bb.u ], [ %.sroa.014.0.i.i.be, %.backedge.i.i.backedge ] ; 8 uses
  %.sroa.05.0.i.i = phi i64 [ %i.bs, %bb.u ], [ %.sroa.05.0.i.i.be, %.backedge.i.i.backedge ] ; 5 uses
  %i.bw = lshr i64 %.sroa.05.0.i.i, 1             ; 2 uses
  %i.bx = and i64 %i.bw, 31                       ; 5 uses
  %i.by = icmp eq i64 %i.bx, 31
  br i1 %i.by, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.backedge.i.i
  %i.bz = icmp ult i32 %.sroa.0.032.i.i, 7
  br i1 %i.bz, label %.preheader.i.i.i13, label %.loopexit.i.i.i9

.loopexit.i.i.i9:                                 ; preds = %bb.v
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !854
  %i.ca = icmp ult i32 %.sroa.0.032.i.i, 11
  br i1 %i.ca, label %.loopexit.i.thread.i.i12, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i10

.preheader.i.i.i13:                               ; preds = %bb.v, %.preheader.i.i.i13
  %.sroa.0.03.i.i.i14 = phi i32 [ %i.cb, %.preheader.i.i.i13 ], [ 0, %bb.v ]
  %i.cb = add nuw nsw i32 %.sroa.0.03.i.i.i14, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !854
  %.sroa.0.0.highbits.i.i.i15 = lshr i32 %i.cb, %.sroa.0.032.i.i
  %i.cc = icmp eq i32 %.sroa.0.0.highbits.i.i.i15, 0
  br i1 %i.cc, label %.preheader.i.i.i13, label %.loopexit.i.thread.i.i12

.loopexit.i.thread.i.i12:                         ; preds = %.preheader.i.i.i13, %.loopexit.i.i.i9
  %i.cd = add nuw nsw i32 %.sroa.0.032.i.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i10

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i10: ; preds = %.loopexit.i.thread.i.i12, %.loopexit.i.i.i9
  %.sroa.0.1.i.i11 = phi i32 [ %i.cd, %.loopexit.i.thread.i.i12 ], [ %.sroa.0.032.i.i, %.loopexit.i.i.i9 ]
  %i.ce = load atomic i64, ptr %i.br acquire, align 8, !noalias !854
  %i.cf = load atomic ptr, ptr %i.bt acquire, align 8, !noalias !854
  br label %.backedge.i.i.backedge

bb.w:                                             ; preds = %.backedge.i.i
  %i.cg = add i64 %.sroa.05.0.i.i, 2              ; 2 uses
  %i.ch = and i64 %.sroa.05.0.i.i, 1
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  fence seq_cst
  %i.cj = load atomic i64, ptr %i.bv monotonic, align 8, !noalias !854 ; 3 uses
  %i.ck = lshr i64 %i.cj, 1
  %i.cl = icmp eq i64 %i.bw, %i.ck
  br i1 %i.cl, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.unshifted.i.i = xor i64 %i.cj, %.sroa.05.0.i.i
  %.not.i.i = icmp ugt i64 %.not.unshifted.i.i, 63
  %i.cm = zext i1 %.not.i.i to i64
  %spec.select.i.i8 = or disjoint i64 %i.cg, %i.cm
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cn = and i64 %i.cj, 1
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2x_.exit.i, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2x_.exit.thread.i

bb.aa:                                            ; preds = %bb.y, %bb.w
  %.sroa.01.0.i.i1 = phi i64 [ %i.cg, %bb.w ], [ %spec.select.i.i8, %bb.y ] ; 2 uses
  %i.cp = icmp eq ptr %.sroa.014.0.i.i, null
  br i1 %i.cp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cq = icmp ult i32 %.sroa.0.032.i.i, 7
  br i1 %i.cq, label %.preheader.i21.i.i, label %.loopexit.i20.i.i

.loopexit.i20.i.i:                                ; preds = %bb.ab
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !854
  %i.cr = icmp ult i32 %.sroa.0.032.i.i, 11
  br i1 %i.cr, label %.loopexit.i20.thread.i.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i

.preheader.i21.i.i:                               ; preds = %bb.ab, %.preheader.i21.i.i
  %.sroa.0.03.i22.i.i = phi i32 [ %i.cs, %.preheader.i21.i.i ], [ 0, %bb.ab ]
  %i.cs = add nuw nsw i32 %.sroa.0.03.i22.i.i, 1  ; 2 uses
end_hunk_4
begin_hunk_5_@_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2r_:bb.a
  %i.fq = load i64, ptr %i.d, align 8, !range !151, !alias.scope !863, !noalias !866, !noundef !3
  %i.fr = trunc nuw i64 %i.fq to i1
  br i1 %i.fr, label %bb.ar, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !29

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !868
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !863, !noalias !866, !nonnull !3, !align !27, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fv = load i8, ptr %i.fu, align 8, !range !4, !alias.scope !863, !noalias !866, !noundef !3
  store ptr %i.ft, ptr %i.a, align 8, !noalias !868
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.fv, ptr %i.fw, align 8, !noalias !868
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #31
          to label %bb.at unwind label %bb.as, !noalias !869

bb.as:                                            ; preds = %bb.ar
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume unwind label %bb.au, !noalias !869

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !869
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.aq
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !863, !noalias !866, !nonnull !3, !align !27, !noundef !3 ; 9 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gc = load i8, ptr %i.gb, align 8, !range !4, !alias.scope !863, !noalias !866, !noundef !3 ; 2 uses
  %i.gd = trunc nuw i8 %i.gc to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !860
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  invoke fastcc void @_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10try_select(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(48) %i.ge)
          to label %bb.aw unwind label %bb.av, !noalias !860

bb.av:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.ga, i8 %i.gc) #29
          to label %common.resume unwind label %bb.bo, !noalias !860

bb.aw:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.gg = load ptr, ptr %i.c, align 8, !noalias !860, !noundef !3
  %.not.i = icmp eq ptr %i.gg, null
  br i1 %.not.i, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !860
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !860, !noundef !3 ; 11 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  br i1 %i.gd, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gk = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !860
  %i.gl = and i64 %i.gk, 9223372036854775807
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.az, !prof !28

bb.az:                                            ; preds = %bb.ay
  %i.gn = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !860

.noexc.i:                                         ; preds = %bb.az
  br i1 %i.gn, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.noexc.i
  store atomic i8 1, ptr %i.gj monotonic, align 4, !noalias !860
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.ba, %.noexc.i, %bb.ay, %bb.ax
  %i.go = atomicrmw xchg ptr %i.ga, i32 0 release, align 4, !noalias !860
  %i.gp = icmp eq i32 %i.go, 2
  br i1 %i.gp, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !29

bb.bb:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ga)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %.loopexit.split-lp.i, !noalias !860

bb.bc:                                            ; preds = %bb.aw
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 104
  %i.gr = load i8, ptr %i.gq, align 8, !range !4, !noalias !860, !noundef !3
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.gr, ptr %i.gs, align 2, !alias.scope !860
  store i16 3, ptr %0, align 8, !alias.scope !860
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  br i1 %i.gd, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, label %bb.bp

.loopexit.i:                                      ; preds = %.loopexit.i.i.i.i19
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %bb.bb, %bb.az
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.gu = load ptr, ptr %i.b, align 8, !alias.scope !882, !noalias !860, !nonnull !3, !noundef !3
  %i.gv = atomicrmw sub ptr %i.gu, i64 1 release, align 8, !noalias !883
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.be, label %common.resume

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #27
          to label %common.resume unwind label %bb.bo, !noalias !860

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.bb, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.gx = icmp eq ptr %i.gi, null
  br i1 %i.gx, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gi, i64 65
  %i.gz = load i8, ptr %i.gy, align 1, !range !4, !noalias !884, !noundef !3
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gi, i64 64 ; 2 uses
  %i.hc = load atomic i8, ptr %i.hb acquire, align 1, !noalias !884
  %i.hd = icmp eq i8 %i.hc, 0
  br i1 %i.hd, label %.lr.ph.i.i.i17, label %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2w_.exit.i.i

.lr.ph.i.i.i17:                                   ; preds = %bb.bg, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20
  %.sroa.0.02.i.i.i18 = phi i32 [ %.sroa.0.1.i.i.i21, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20 ], [ 0, %bb.bg ] ; 5 uses
  %i.he = icmp ult i32 %.sroa.0.02.i.i.i18, 7
  br i1 %i.he, label %.preheader.i.i.i.i23, label %.loopexit.i.i.i.i19

.loopexit.i.i.i.i19:                              ; preds = %.lr.ph.i.i.i17
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !860

.noexc10.i:                                       ; preds = %.loopexit.i.i.i.i19
  %i.hf = icmp ult i32 %.sroa.0.02.i.i.i18, 11
  br i1 %i.hf, label %.loopexit.i.thread.i.i.i22, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20

.preheader.i.i.i.i23:                             ; preds = %.lr.ph.i.i.i17, %.preheader.i.i.i.i23
  %.sroa.0.03.i.i.i.i24 = phi i32 [ %i.hg, %.preheader.i.i.i.i23 ], [ 0, %.lr.ph.i.i.i17 ]
  %i.hg = add nuw nsw i32 %.sroa.0.03.i.i.i.i24, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !884
  %.sroa.0.0.highbits.i.i.i.i25 = lshr i32 %i.hg, %.sroa.0.02.i.i.i18
  %i.hh = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i25, 0
  br i1 %i.hh, label %.preheader.i.i.i.i23, label %.loopexit.i.thread.i.i.i22

.loopexit.i.thread.i.i.i22:                       ; preds = %.preheader.i.i.i.i23, %.noexc10.i
  %i.hi = add nuw nsw i32 %.sroa.0.02.i.i.i18, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20: ; preds = %.loopexit.i.thread.i.i.i22, %.noexc10.i
  %.sroa.0.1.i.i.i21 = phi i32 [ %i.hi, %.loopexit.i.thread.i.i.i22 ], [ %.sroa.0.02.i.i.i18, %.noexc10.i ]
  %i.hj = load atomic i8, ptr %i.hb acquire, align 1, !noalias !884
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %.lr.ph.i.i.i17, label %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2w_.exit.i.i

_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2w_.exit.i.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20, %bb.bg
  %.sroa.04.0.copyload.i.i = load i16, ptr %i.gi, align 8, !noalias !884 ; 2 uses
  store i16 3, ptr %i.gi, align 8, !noalias !884
  %.not.i.i16 = icmp eq i16 %.sroa.04.0.copyload.i.i, 3
  br i1 %.not.i.i16, label %.invoke.i, label %bb.bi, !prof !29

bb.bh:                                            ; preds = %bb.bf
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.gi, align 8, !noalias !884 ; 2 uses
  store i16 3, ptr %i.gi, align 8, !noalias !884
  %.not11.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 3
  br i1 %.not11.i.i, label %.invoke.i, label %bb.bj, !prof !29

.invoke.i:                                        ; preds = %bb.bh, %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2w_.exit.i.i
  %i.hl = phi ptr [ @43, %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2w_.exit.i.i ], [ @44, %bb.bh ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl) #30
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !860

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bi:                                            ; preds = %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2w_.exit.i.i
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.727.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.56.0..sroa_idx.i.i, i64 62, i1 false), !noalias !860
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gi, i64 noundef 72, i64 noundef 8) #18, !noalias !884
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.727.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.5.0..sroa_idx.i.i, i64 62, i1 false), !noalias !860
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  store atomic i8 1, ptr %i.hm release, align 8, !noalias !884
  br label %bb.bl

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.hn, align 2, !alias.scope !860
  store i16 3, ptr %0, align 8, !alias.scope !860
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.026.0.ph.i = phi i16 [ %.sroa.0.0.copyload.i.i, %bb.bj ], [ %.sroa.04.0.copyload.i.i, %bb.bi ]
  store i16 %.sroa.026.0.ph.i, ptr %0, align 8, !alias.scope !860
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.429.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.727.i, i64 62, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.ho = load ptr, ptr %i.b, align 8, !alias.scope !899, !noalias !860, !nonnull !3, !noundef !3
  %i.hp = atomicrmw sub ptr %i.ho, i64 1 release, align 8, !noalias !900
  %i.hq = icmp eq i64 %i.hp, 1
  br i1 %i.hq, label %bb.bn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #27, !noalias !860
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i: ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !860
  br label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_.exit

bb.bo:                                            ; preds = %bb.be, %bb.av
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !860
  unreachable

bb.bp:                                            ; preds = %bb.bc
  %i.hs = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !860
  %i.ht = and i64 %i.hs, 9223372036854775807
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, label %bb.bq, !prof !28

bb.bq:                                            ; preds = %bb.bp
  %i.hv = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27, !noalias !860
  br i1 %i.hv, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store atomic i8 1, ptr %i.gt monotonic, align 4, !noalias !860
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i: ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bc
  %i.hw = atomicrmw xchg ptr %i.ga, i32 0 release, align 4, !noalias !860
  %i.hx = icmp eq i32 %i.hw, 2
  br i1 %i.hx, label %bb.bs, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_.exit, !prof !29

bb.bs:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ga), !noalias !860
  br label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_.exit

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !860
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727.i)
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_.exit

bb.bt:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.hy = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  call fastcc void @_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8try_recv(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noundef nonnull align 8 %i.hz) #26
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 95 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #30
  unreachable

bb.bu:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ia = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  call fastcc void @_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8try_recv(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.ib) #26
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 95 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #30
  unreachable

bb.bv:                                            ; preds = %bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.ic, align 2
  store i16 3, ptr %0, align 8
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_.exit: ; preds = %bb.t, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2x_.exit.i, %bb.bv, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_.exit, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2x_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !841, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.a, label %default.unreachable22 [
    i64 0, label %bb.b
    i64 1, label %bb.j
    i64 2, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit
    i64 3, label %bb.l
    i64 4, label %bb.p
    i64 5, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit
  ]

default.unreachable22:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8 ; 3 uses
  %i.f = load atomic i64, ptr %i.c seq_cst, align 8 ; 2 uses
  %i.g = load atomic i64, ptr %i.d seq_cst, align 8
  %i.h = icmp eq i64 %i.g, %i.e
  br i1 %i.h, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.j = load i64, ptr %i.i, align 16, !noundef !3 ; 2 uses
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = and i64 %i.k, %i.f                       ; 4 uses
  %i.m = and i64 %i.k, %i.e                       ; 4 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %i.l, %i.m
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = sub nuw i64 %i.m, %i.l
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit

bb.g:                                             ; preds = %bb.e
  %i.q = xor i64 %i.j, -1
  %i.r = and i64 %i.e, %i.q
  %i.s = icmp eq i64 %i.r, %i.f
  br i1 %i.s, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.u = load i64, ptr %i.t, align 128, !noundef !3
  %i.v = sub i64 %i.m, %i.l
  %i.w = add i64 %i.v, %i.u
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.y = load i64, ptr %i.x, align 128, !noundef !3
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit

bb.j:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8 ; 3 uses
  %i.ac = load atomic i64, ptr %i.z seq_cst, align 8 ; 2 uses
  %i.ad = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ae = icmp eq i64 %i.ad, %i.ab
  br i1 %i.ae, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit, label %bb.k

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit: ; preds = %bb.k
  %i.af = and i64 %i.ab, -2                       ; 2 uses
  %i.ag = and i64 %i.ac, -2                       ; 2 uses
  %i.ah = and i64 %i.ab, 62
  %i.ai = icmp eq i64 %i.ah, 62
  %i.aj = add i64 %i.af, 2
  %spec.select.i = select i1 %i.ai, i64 %i.aj, i64 %i.af
  %i.ak = and i64 %i.ac, 62
  %i.al = icmp eq i64 %i.ak, 62
  %i.am = add i64 %i.ag, 2
  %.sroa.08.0.i = select i1 %i.al, i64 %i.am, i64 %i.ag ; 2 uses
  %i.an = and i64 %.sroa.08.0.i, -64
  %i.ao = sub i64 %spec.select.i, %i.an           ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 1
  %i.aq = lshr exact i64 %.sroa.08.0.i, 1
  %i.ar = and i64 %i.aq, 31
  %i.as = lshr i64 %i.ao, 6
  %i.at = add nuw nsw i64 %i.as, %i.ar
  %i.au = sub nsw i64 %i.ap, %i.at
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.ax = load atomic i8, ptr %i.aw monotonic, align 1
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ba = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bb = extractvalue { i64, i32 } %i.ba, 0      ; 2 uses
  %i.bc = load i64, ptr %i.az, align 8, !noundef !3 ; 2 uses
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = extractvalue { i64, i32 } %i.ba, 1      ; 2 uses
  %i.bf = icmp ult i32 %i.be, 1000000000
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !range !416, !noundef !3
  %i.bi = icmp samesign ult i32 %i.be, %i.bh
  br i1 %i.bi, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit

bb.o:                                             ; preds = %bb.m
  %i.bj = icmp slt i64 %i.bb, %i.bc
  br i1 %i.bj, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit

_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit: ; preds = %bb.n, %bb.o
  %i.bk = load atomic i8, ptr %i.aw seq_cst, align 8
  %.fr = freeze i8 %i.bk
  %.not = icmp eq i8 %.fr, 0
  br i1 %.not, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread

_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread: ; preds = %bb.n, %bb.o, %bb.l, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit

bb.p:                                             ; preds = %bb.a
  %i.bl = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bo = extractvalue { i64, i32 } %i.bn, 0      ; 2 uses
  %i.bp = tail call { i64, i32 } @_RINvNtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCs2pqxYH9ZEk8_3std4time7InstantECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.bm) ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bo, %i.bq
  %i.bs = icmp slt i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.q, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8is_empty.exit

bb.q:                                             ; preds = %bb.p
  %i.bt = extractvalue { i64, i32 } %i.bp, 1      ; 2 uses
  %i.bu = extractvalue { i64, i32 } %i.bn, 1      ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 1000000000
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp ult i32 %i.bt, 1000000000
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp samesign ult i32 %i.bu, %i.bt
  br label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8is_empty.exit

_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8is_empty.exit: ; preds = %bb.p, %bb.q
  %.sroa.0.0.i3 = phi i1 [ %i.bx, %bb.q ], [ %i.bs, %bb.p ]
  %not..sroa.0.0.i3 = xor i1 %.sroa.0.0.i3, true
  %.1 = zext i1 %not..sroa.0.0.i3 to i64
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit: ; preds = %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8is_empty.exit, %bb.a, %bb.a, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.au, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2D_.exit ], [ %.1, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8is_empty.exit ], [ 0, %bb.a ], [ 0, %bb.g ], [ %i.p, %bb.f ], [ %i.w, %bb.h ], [ %i.y, %bb.i ], [ 0, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread ], [ 1, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_(ptr dead_on_unwind noalias noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.727.i = alloca [15 x i8], align 1        ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.419.i = alloca [15 x i8], align 1        ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.66.i = alloca [15 x i8], align 1         ; 5 uses
  %i.g = load i64, ptr %1, align 8, !range !841, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  switch i64 %i.g, label %default.unreachable70 [
    i64 0, label %bb.b
    i64 1, label %bb.v
    i64 2, label %bb.ar
    i64 3, label %bb.bu
    i64 4, label %bb.ca
    i64 5, label %bb.cd
  ]

default.unreachable70:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !noundef !3 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.j = load atomic i64, ptr %i.i monotonic, align 8, !noalias !904
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 400 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 392 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 408
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge, %bb.b
  %.sroa.0.023.i.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.023.i.i.be, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge ] ; 11 uses
  %.sroa.04.0.i.i = phi i64 [ %i.j, %bb.b ], [ %.sroa.04.0.i.i.be, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge ] ; 7 uses
  %i.q = load i64, ptr %i.k, align 16, !noalias !904, !noundef !3
  %i.r = add i64 %i.q, -1
  %i.s = and i64 %i.r, %.sroa.04.0.i.i            ; 3 uses
  %i.t = load i64, ptr %i.l, align 8, !noalias !904, !noundef !3
  %i.u = sub i64 0, %i.t
  %i.v = and i64 %.sroa.04.0.i.i, %i.u
  %i.w = load ptr, ptr %i.m, align 8, !noalias !904, !nonnull !3, !noundef !3
  %i.x = load i64, ptr %i.n, align 16, !noalias !904, !noundef !3
  %i.y = icmp ult i64 %i.s, %i.x
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.s ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8, !noalias !904 ; 3 uses
  %i.ac = add i64 %.sroa.04.0.i.i, 1
  %i.ad = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i
  %i.ae = icmp eq i64 %i.ab, %.sroa.04.0.i.i
  br i1 %i.ae, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i
  %i.af = add nuw i64 %i.s, 1
  %i.ag = load i64, ptr %i.p, align 128, !noalias !904, !noundef !3
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp ult i32 %.sroa.0.023.i.i, 7
  br i1 %i.ai, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.e
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !904
  %i.aj = icmp ult i32 %.sroa.0.023.i.i, 11
  br i1 %i.aj, label %.loopexit.i.thread.i.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.ak, %.preheader.i.i.i ], [ 0, %bb.e ]
  %i.ak = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !904
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.ak, %.sroa.0.023.i.i
  %i.al = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.al, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.am = add nuw nsw i32 %.sroa.0.023.i.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.2.i.i = phi i32 [ %i.am, %.loopexit.i.thread.i.i ], [ %.sroa.0.023.i.i, %.loopexit.i.i.i ]
  %i.an = load atomic i64, ptr %i.i monotonic, align 16, !noalias !904
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge

bb.f:                                             ; preds = %bb.c
  fence seq_cst
  %i.ao = load atomic i64, ptr %i.o monotonic, align 16, !noalias !904 ; 2 uses
  %i.ap = load i64, ptr %i.k, align 16, !noalias !904, !noundef !3 ; 2 uses
  %i.aq = xor i64 %i.ap, -1
  %i.ar = and i64 %i.ao, %i.aq
  %i.as = icmp eq i64 %i.ar, %.sroa.04.0.i.i
  br i1 %i.as, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i, i32 6)
  br label %bb.h

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i: ; preds = %bb.h
  %i.at = icmp ult i32 %.sroa.0.023.i.i, 7
  %i.au = zext i1 %i.at to i32
  %spec.select.i.i = add nuw nsw i32 %.sroa.0.023.i.i, %i.au
  %i.av = load atomic i64, ptr %i.i monotonic, align 16, !noalias !904
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.02.i.i.i = phi i32 [ 0, %bb.g ], [ %i.aw, %bb.h ]
  %i.aw = add nuw nsw i32 %.sroa.0.02.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !904
  %.sroa.0.0.highbits.i13.i.i = lshr i32 %i.aw, %.sroa.0.0.i.i.i.i
  %i.ax = icmp eq i32 %.sroa.0.0.highbits.i13.i.i, 0
  br i1 %i.ax, label %bb.h, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.ay = and i64 %i.ap, %i.ao
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2D_.exit.i, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2D_.exit.thread.i

bb.j:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.l, align 8, !noalias !904, !noundef !3
  %i.bb = add i64 %i.ba, %i.v
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %.sroa.01.0.i.i = phi i64 [ %i.bb, %bb.j ], [ %i.ab, %bb.d ]
  %i.bc = cmpxchg weak ptr %i.i, i64 %.sroa.04.0.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !904 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bc, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bc, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.i.i14.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i, i32 6)
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.bd = icmp ult i32 %.sroa.0.023.i.i, 7
  %i.be = zext i1 %i.bd to i32
  %spec.select24.i.i = add nuw nsw i32 %.sroa.0.023.i.i, %i.be
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge: ; preds = %bb.m, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.023.i.i.be = phi i32 [ %.sroa.0.2.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %spec.select.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i ], [ %spec.select24.i.i, %bb.m ]
  %.sroa.04.0.i.i.be = phi i64 [ %i.an, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %i.av, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i ], [ %.sroa.01.0.i.i.i, %bb.m ]
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

bb.n:                                             ; preds = %bb.n, %bb.l
  %.sroa.0.02.i15.i.i = phi i32 [ 0, %bb.l ], [ %i.bf, %bb.n ]
  %i.bf = add nuw nsw i32 %.sroa.0.02.i15.i.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !904
  %.sroa.0.0.highbits.i16.i.i = lshr i32 %i.bf, %.sroa.0.0.i.i14.i.i
  %i.bg = icmp eq i32 %.sroa.0.0.highbits.i16.i.i, 0
  br i1 %i.bg, label %bb.n, label %bb.m

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2D_.exit.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.bh, align 1, !alias.scope !901
  store i8 2, ptr %0, align 8, !alias.scope !901
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2D_.exit.thread.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i)
  br label %bb.s

bb.o:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load i8, ptr %i.f, align 8, !range !4, !alias.scope !907, !noalias !910, !noundef !3
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.p, label %common.resume

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %common.resume unwind label %bb.r, !noalias !910

bb.q:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bn = load i64, ptr %i.l, align 8, !noalias !904, !noundef !3
  %i.bo = add i64 %i.bn, %.sroa.04.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !910
  store atomic i64 %i.bo, ptr %i.bm release, align 8, !noalias !910
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  invoke fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bp)
          to label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2D_.exit.i unwind label %bb.o, !noalias !910

bb.r:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !910
  unreachable

common.resume:                                    ; preds = %bb.at, %bb.aw, %bb.be, %bb.bf, %bb.o, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.bi, %bb.p ], [ %i.fz, %bb.at ], [ %i.gh, %bb.aw ], [ %lpad.phi.i, %bb.bf ], [ %lpad.phi.i, %bb.be ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2D_.exit.i: ; preds = %bb.q
  %.sroa.04.0.copyload5.i = load i8, ptr %i.f, align 8, !noalias !901 ; 2 uses
  %.sroa.66.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.66.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.66.0..sroa_idx7.i, i64 15, i1 false), !noalias !901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !910
  %i.br = icmp eq i8 %.sroa.04.0.copyload5.i, 2
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2D_.exit.i, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2D_.exit.thread.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bs, align 1, !alias.scope !901
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2D_.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.66.i, i64 15, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.04.0.copyload5.sink.i = phi i8 [ %.sroa.04.0.copyload5.i, %bb.t ], [ 2, %bb.s ]
  store i8 %.sroa.04.0.copyload5.sink.i, ptr %0, align 8, !alias.scope !901
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i)
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit

bb.v:                                             ; preds = %bb.a
  %i.bt = load ptr, ptr %i.h, align 8, !noundef !3 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419.i)
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8, !noalias !916
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 5 uses
  %i.bw = load atomic ptr, ptr %i.bv acquire, align 8, !noalias !916
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.v
  %.sroa.0.032.i.i = phi i32 [ 0, %bb.v ], [ %.sroa.0.032.i.i.be, %.backedge.i.i.backedge ] ; 13 uses
  %.sroa.014.0.i.i = phi ptr [ %i.bw, %bb.v ], [ %.sroa.014.0.i.i.be, %.backedge.i.i.backedge ] ; 8 uses
  %.sroa.05.0.i.i = phi i64 [ %i.bu, %bb.v ], [ %.sroa.05.0.i.i.be, %.backedge.i.i.backedge ] ; 5 uses
  %i.by = lshr i64 %.sroa.05.0.i.i, 1             ; 2 uses
  %i.bz = and i64 %i.by, 31                       ; 5 uses
  %i.ca = icmp eq i64 %i.bz, 31
  br i1 %i.ca, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.backedge.i.i
  %i.cb = icmp ult i32 %.sroa.0.032.i.i, 7
  br i1 %i.cb, label %.preheader.i.i.i13, label %.loopexit.i.i.i9

.loopexit.i.i.i9:                                 ; preds = %bb.w
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !916
  %i.cc = icmp ult i32 %.sroa.0.032.i.i, 11
  br i1 %i.cc, label %.loopexit.i.thread.i.i12, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i10

.preheader.i.i.i13:                               ; preds = %bb.w, %.preheader.i.i.i13
  %.sroa.0.03.i.i.i14 = phi i32 [ %i.cd, %.preheader.i.i.i13 ], [ 0, %bb.w ]
  %i.cd = add nuw nsw i32 %.sroa.0.03.i.i.i14, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !916
  %.sroa.0.0.highbits.i.i.i15 = lshr i32 %i.cd, %.sroa.0.032.i.i
  %i.ce = icmp eq i32 %.sroa.0.0.highbits.i.i.i15, 0
  br i1 %i.ce, label %.preheader.i.i.i13, label %.loopexit.i.thread.i.i12

.loopexit.i.thread.i.i12:                         ; preds = %.preheader.i.i.i13, %.loopexit.i.i.i9
  %i.cf = add nuw nsw i32 %.sroa.0.032.i.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i10

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i10: ; preds = %.loopexit.i.thread.i.i12, %.loopexit.i.i.i9
  %.sroa.0.1.i.i11 = phi i32 [ %i.cf, %.loopexit.i.thread.i.i12 ], [ %.sroa.0.032.i.i, %.loopexit.i.i.i9 ]
  %i.cg = load atomic i64, ptr %i.bt acquire, align 8, !noalias !916
  %i.ch = load atomic ptr, ptr %i.bv acquire, align 8, !noalias !916
  br label %.backedge.i.i.backedge

bb.x:                                             ; preds = %.backedge.i.i
  %i.ci = add i64 %.sroa.05.0.i.i, 2              ; 2 uses
  %i.cj = and i64 %.sroa.05.0.i.i, 1
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  fence seq_cst
  %i.cl = load atomic i64, ptr %i.bx monotonic, align 8, !noalias !916 ; 3 uses
  %i.cm = lshr i64 %i.cl, 1
  %i.cn = icmp eq i64 %i.by, %i.cm
  br i1 %i.cn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.unshifted.i.i = xor i64 %i.cl, %.sroa.05.0.i.i
  %.not.i.i = icmp ugt i64 %.not.unshifted.i.i, 63
  %i.co = zext i1 %.not.i.i to i64
  %spec.select.i.i8 = or disjoint i64 %i.ci, %i.co
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cp = and i64 %i.cl, 1
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2D_.exit.i, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2D_.exit.thread.i

bb.ab:                                            ; preds = %bb.z, %bb.x
  %.sroa.01.0.i.i1 = phi i64 [ %i.ci, %bb.x ], [ %spec.select.i.i8, %bb.z ] ; 2 uses
  %i.cr = icmp eq ptr %.sroa.014.0.i.i, null
  br i1 %i.cr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cs = icmp ult i32 %.sroa.0.032.i.i, 7
  br i1 %i.cs, label %.preheader.i21.i.i, label %.loopexit.i20.i.i

.loopexit.i20.i.i:                                ; preds = %bb.ac
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !916
end_hunk_5
begin_hunk_6_@_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2x_:bb.a
  %i.fs = load i64, ptr %i.e, align 8, !range !151, !alias.scope !925, !noalias !928, !noundef !3
  %i.ft = trunc nuw i64 %i.fs to i1
  br i1 %i.ft, label %bb.as, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !29

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !930
  %i.fu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !925, !noalias !928, !nonnull !3, !align !27, !noundef !3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.fx = load i8, ptr %i.fw, align 8, !range !4, !alias.scope !925, !noalias !928, !noundef !3
  store ptr %i.fv, ptr %i.b, align 8, !noalias !930
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.fx, ptr %i.fy, align 8, !noalias !930
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #31
          to label %bb.au unwind label %bb.at, !noalias !931

bb.at:                                            ; preds = %bb.as
  %i.fz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #29
          to label %common.resume unwind label %bb.av, !noalias !931

bb.au:                                            ; preds = %bb.as
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !931
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.ar
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !925, !noalias !928, !nonnull !3, !align !27, !noundef !3 ; 9 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ge = load i8, ptr %i.gd, align 8, !range !4, !alias.scope !925, !noalias !928, !noundef !3 ; 2 uses
  %i.gf = trunc nuw i8 %i.ge to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !922
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  invoke fastcc void @_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10try_select(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef align 8 dereferenceable(48) %i.gg)
          to label %bb.ax unwind label %bb.aw, !noalias !922

bb.aw:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.gc, i8 %i.ge) #29
          to label %common.resume unwind label %bb.bp, !noalias !922

bb.ax:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.gi = load ptr, ptr %i.d, align 8, !noalias !922, !noundef !3
  %.not.i = icmp eq ptr %i.gi, null
  br i1 %.not.i, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !922
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !922, !noundef !3 ; 11 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  br i1 %i.gf, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gm = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !922
  %i.gn = and i64 %i.gm, 9223372036854775807
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ba, !prof !28

bb.ba:                                            ; preds = %bb.az
  %i.gp = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !922

.noexc.i:                                         ; preds = %bb.ba
  br i1 %i.gp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc.i
  store atomic i8 1, ptr %i.gl monotonic, align 4, !noalias !922
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bb, %.noexc.i, %bb.az, %bb.ay
  %i.gq = atomicrmw xchg ptr %i.gc, i32 0 release, align 4, !noalias !922
  %i.gr = icmp eq i32 %i.gq, 2
  br i1 %i.gr, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !29

bb.bc:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.gc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %.loopexit.split-lp.i, !noalias !922

bb.bd:                                            ; preds = %bb.ax
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 104
  %i.gt = load i8, ptr %i.gs, align 8, !range !4, !noalias !922, !noundef !3
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.gt, ptr %i.gu, align 1, !alias.scope !922
  store i8 2, ptr %0, align 8, !alias.scope !922
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  br i1 %i.gf, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, label %bb.bq

.loopexit.i:                                      ; preds = %.loopexit.i.i.i.i19
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %bb.bc, %bb.ba
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  %i.gw = load ptr, ptr %i.c, align 8, !alias.scope !944, !noalias !922, !nonnull !3, !noundef !3
  %i.gx = atomicrmw sub ptr %i.gw, i64 1 release, align 8, !noalias !945
  %i.gy = icmp eq i64 %i.gx, 1
  br i1 %i.gy, label %bb.bf, label %common.resume

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #27
          to label %common.resume unwind label %bb.bp, !noalias !922

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.bc, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.gz = icmp eq ptr %i.gk, null
  br i1 %i.gz, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 17
  %i.hb = load i8, ptr %i.ha, align 1, !range !4, !noalias !946, !noundef !3
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.he = load atomic i8, ptr %i.hd acquire, align 1, !noalias !946
  %i.hf = icmp eq i8 %i.he, 0
  br i1 %i.hf, label %.lr.ph.i.i.i17, label %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2C_.exit.i.i

.lr.ph.i.i.i17:                                   ; preds = %bb.bh, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20
  %.sroa.0.02.i.i.i18 = phi i32 [ %.sroa.0.1.i.i.i21, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20 ], [ 0, %bb.bh ] ; 5 uses
  %i.hg = icmp ult i32 %.sroa.0.02.i.i.i18, 7
  br i1 %i.hg, label %.preheader.i.i.i.i23, label %.loopexit.i.i.i.i19

.loopexit.i.i.i.i19:                              ; preds = %.lr.ph.i.i.i17
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !922

.noexc10.i:                                       ; preds = %.loopexit.i.i.i.i19
  %i.hh = icmp ult i32 %.sroa.0.02.i.i.i18, 11
  br i1 %i.hh, label %.loopexit.i.thread.i.i.i22, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20

.preheader.i.i.i.i23:                             ; preds = %.lr.ph.i.i.i17, %.preheader.i.i.i.i23
  %.sroa.0.03.i.i.i.i24 = phi i32 [ %i.hi, %.preheader.i.i.i.i23 ], [ 0, %.lr.ph.i.i.i17 ]
  %i.hi = add nuw nsw i32 %.sroa.0.03.i.i.i.i24, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !946
  %.sroa.0.0.highbits.i.i.i.i25 = lshr i32 %i.hi, %.sroa.0.02.i.i.i18
  %i.hj = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i25, 0
  br i1 %i.hj, label %.preheader.i.i.i.i23, label %.loopexit.i.thread.i.i.i22

.loopexit.i.thread.i.i.i22:                       ; preds = %.preheader.i.i.i.i23, %.noexc10.i
  %i.hk = add nuw nsw i32 %.sroa.0.02.i.i.i18, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20: ; preds = %.loopexit.i.thread.i.i.i22, %.noexc10.i
  %.sroa.0.1.i.i.i21 = phi i32 [ %i.hk, %.loopexit.i.thread.i.i.i22 ], [ %.sroa.0.02.i.i.i18, %.noexc10.i ]
  %i.hl = load atomic i8, ptr %i.hd acquire, align 1, !noalias !946
  %i.hm = icmp eq i8 %i.hl, 0
  br i1 %i.hm, label %.lr.ph.i.i.i17, label %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2C_.exit.i.i

_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2C_.exit.i.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20, %bb.bh
  %.sroa.04.0.copyload.i.i = load i8, ptr %i.gk, align 8, !noalias !946 ; 2 uses
  store i8 2, ptr %i.gk, align 8, !noalias !946
  %.not.i.i16 = icmp eq i8 %.sroa.04.0.copyload.i.i, 2
  br i1 %.not.i.i16, label %.invoke.i, label %bb.bj, !prof !29

bb.bi:                                            ; preds = %bb.bg
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.gk, align 8, !noalias !946 ; 2 uses
  store i8 2, ptr %i.gk, align 8, !noalias !946
  %.not11.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i, 2
  br i1 %.not11.i.i, label %.invoke.i, label %bb.bk, !prof !29

.invoke.i:                                        ; preds = %bb.bi, %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2C_.exit.i.i
  %i.hn = phi ptr [ @43, %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2C_.exit.i.i ], [ @44, %bb.bi ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hn) #30
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !922

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bj:                                            ; preds = %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2C_.exit.i.i
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.727.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.56.0..sroa_idx.i.i, i64 15, i1 false), !noalias !922
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gk, i64 noundef 24, i64 noundef 8) #18, !noalias !946
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.727.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx.i.i, i64 15, i1 false), !noalias !922
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store atomic i8 1, ptr %i.ho release, align 8, !noalias !946
  br label %bb.bm

bb.bl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.hp, align 1, !alias.scope !922
  store i8 2, ptr %0, align 8, !alias.scope !922
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %.sroa.026.0.ph.i = phi i8 [ %.sroa.0.0.copyload.i.i, %bb.bk ], [ %.sroa.04.0.copyload.i.i, %bb.bj ]
  store i8 %.sroa.026.0.ph.i, ptr %0, align 8, !alias.scope !922
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.429.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.727.i, i64 15, i1 false)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.hq = load ptr, ptr %i.c, align 8, !alias.scope !961, !noalias !922, !nonnull !3, !noundef !3
  %i.hr = atomicrmw sub ptr %i.hq, i64 1 release, align 8, !noalias !962
  %i.hs = icmp eq i64 %i.hr, 1
  br i1 %i.hs, label %bb.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #27, !noalias !922
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !922
  br label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit

bb.bp:                                            ; preds = %bb.bf, %bb.aw
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !922
  unreachable

bb.bq:                                            ; preds = %bb.bd
  %i.hu = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !922
  %i.hv = and i64 %i.hu, 9223372036854775807
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, label %bb.br, !prof !28

bb.br:                                            ; preds = %bb.bq
  %i.hx = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27, !noalias !922
  br i1 %i.hx, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store atomic i8 1, ptr %i.gv monotonic, align 4, !noalias !922
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i: ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bd
  %i.hy = atomicrmw xchg ptr %i.gc, i32 0 release, align 4, !noalias !922
  %i.hz = icmp eq i32 %i.hy, 2
  br i1 %i.hz, label %bb.bt, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit, !prof !29

bb.bt:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.gc), !noalias !922
  br label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !922
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727.i)
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit

bb.bu:                                            ; preds = %bb.a
  %i.ia = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 32 ; 2 uses
  %i.id = load atomic i8, ptr %i.ic monotonic, align 1, !noalias !963
  %i.ie = icmp eq i8 %i.id, 0
  br i1 %i.ie, label %bb.bv, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8try_recv.exit

bb.bv:                                            ; preds = %bb.bu
  %i.if = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now(), !noalias !963 ; 2 uses
  %i.ig = extractvalue { i64, i32 } %i.if, 0      ; 2 uses
  %i.ih = load i64, ptr %i.ib, align 8, !noalias !963, !noundef !3 ; 2 uses
  %i.ii = icmp eq i64 %i.ig, %i.ih
  br i1 %i.ii, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ij = extractvalue { i64, i32 } %i.if, 1      ; 2 uses
  %i.ik = icmp ult i32 %i.ij, 1000000000
  tail call void @llvm.assume(i1 %i.ik)
  %i.il = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.im = load i32, ptr %i.il, align 8, !range !416, !noalias !963, !noundef !3
  %i.in = icmp samesign ult i32 %i.ij, %i.im
  br i1 %i.in, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8try_recv.exit, label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.io = icmp slt i64 %i.ig, %i.ih
  br i1 %i.io, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8try_recv.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ip = atomicrmw xchg ptr %i.ic, i8 1 seq_cst, align 1, !noalias !963
  %i.iq = icmp eq i8 %i.ip, 0
  br i1 %i.iq, label %bb.bz, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8try_recv.exit

bb.bz:                                            ; preds = %bb.by
  %i.ir = load i64, ptr %i.ib, align 8, !noalias !963, !noundef !3
  %i.is = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.it = load i32, ptr %i.is, align 8, !range !416, !noalias !963, !noundef !3
  br label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8try_recv.exit

_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8try_recv.exit: ; preds = %bb.by, %bb.bw, %bb.bx, %bb.bu, %bb.bz
  %.sroa.0.sroa.7.sroa.0.0 = phi i64 [ 0, %bb.bu ], [ %i.ir, %bb.bz ], [ 0, %bb.bw ], [ 0, %bb.bx ], [ 0, %bb.by ]
  %.sink.i = phi i32 [ 1000000000, %bb.bu ], [ %i.it, %bb.bz ], [ 1000000000, %bb.bw ], [ 1000000000, %bb.bx ], [ 1000000000, %bb.by ]
  store i64 %.sroa.0.sroa.7.sroa.0.0, ptr %0, align 8, !alias.scope !966
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink.i, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !966
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit

bb.ca:                                            ; preds = %bb.a
  %i.iu = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 3 uses
  %i.iw = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now(), !noalias !970 ; 2 uses
  %i.ix = extractvalue { i64, i32 } %i.iw, 0      ; 3 uses
  %i.iy = extractvalue { i64, i32 } %i.iw, 1      ; 2 uses
  %i.iz = tail call { i64, i32 } @_RINvNtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCs2pqxYH9ZEk8_3std4time7InstantECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.iv), !noalias !970 ; 2 uses
  %i.ja = extractvalue { i64, i32 } %i.iz, 0      ; 3 uses
  %i.jb = extractvalue { i64, i32 } %i.iz, 1      ; 2 uses
  %i.jc = icmp eq i64 %i.ix, %i.ja
  %i.jd = icmp slt i64 %i.ix, %i.ja
  %i.je = icmp samesign ult i32 %i.iy, %i.jb
  %spec.select4.i = select i1 %i.jc, i1 %i.je, i1 %i.jd
  br i1 %spec.select4.i, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8try_recv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ca
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cc, %.lr.ph.i
  %i.jh = phi i32 [ %i.jb, %.lr.ph.i ], [ %i.jx, %bb.cc ] ; 2 uses
  %i.ji = phi i64 [ %i.ja, %.lr.ph.i ], [ %i.jw, %bb.cc ] ; 2 uses
  %i.jj = phi i32 [ %i.iy, %.lr.ph.i ], [ %i.ju, %bb.cc ]
  %i.jk = phi i64 [ %i.ix, %.lr.ph.i ], [ %i.jt, %bb.cc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !970
  %i.jl = load i64, ptr %i.jf, align 8, !noalias !970, !noundef !3
  %i.jm = load i32, ptr %i.jg, align 8, !range !416, !noalias !970, !noundef !3
  %i.jn = tail call { i64, i32 } @_RNvXs_NtCs2pqxYH9ZEk8_3std4timeNtB4_7InstantINtNtNtCsbvkFyIu7lgC_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.jk, i32 noundef %i.jj, i64 noundef %i.jl, i32 noundef %i.jm), !noalias !970 ; 2 uses
  %i.jo = extractvalue { i64, i32 } %i.jn, 0
  %i.jp = extractvalue { i64, i32 } %i.jn, 1
  call void @_RINvNtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cell28atomic_compare_exchange_weakNtNtCs2pqxYH9ZEk8_3std4time7InstantECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.iv, i64 noundef %i.ji, i32 noundef %i.jh, i64 noundef %i.jo, i32 noundef %i.jp), !noalias !970
  %i.jq = load i64, ptr %i.a, align 8, !range !151, !noalias !970, !noundef !3
  %i.jr = icmp eq i64 %i.jq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !970
  br i1 %i.jr, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8try_recv.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.js = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now(), !noalias !970 ; 2 uses
  %i.jt = extractvalue { i64, i32 } %i.js, 0      ; 3 uses
  %i.ju = extractvalue { i64, i32 } %i.js, 1      ; 2 uses
  %i.jv = tail call { i64, i32 } @_RINvNtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCs2pqxYH9ZEk8_3std4time7InstantECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.iv), !noalias !970 ; 2 uses
  %i.jw = extractvalue { i64, i32 } %i.jv, 0      ; 3 uses
  %i.jx = extractvalue { i64, i32 } %i.jv, 1      ; 2 uses
  %i.jy = icmp eq i64 %i.jt, %i.jw
  %i.jz = icmp slt i64 %i.jt, %i.jw
  %i.ka = icmp samesign ult i32 %i.ju, %i.jx
  %spec.select.i = select i1 %i.jy, i1 %i.ka, i1 %i.jz
  br i1 %spec.select.i, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8try_recv.exit, label %bb.cb

_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8try_recv.exit: ; preds = %bb.cc, %bb.cb, %bb.ca
  %.sroa.0.sroa.5.sroa.0.0 = phi i64 [ 0, %bb.ca ], [ 0, %bb.cc ], [ %i.ji, %bb.cb ]
  %.lcssa9.sink.i = phi i32 [ 1000000000, %bb.ca ], [ 1000000000, %bb.cc ], [ %i.jh, %bb.cb ]
  store i64 %.sroa.0.sroa.5.sroa.0.0, ptr %0, align 8, !alias.scope !973
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.lcssa9.sink.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !973
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit

bb.cd:                                            ; preds = %bb.a
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.kb, align 1
  store i8 2, ptr %0, align 8
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit: ; preds = %bb.u, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2D_.exit.i, %bb.cd, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8try_recv.exit, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8try_recv.exit, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2D_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2y_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !841, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.a, label %default.unreachable22 [
    i64 0, label %bb.b
    i64 1, label %bb.j
    i64 2, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit
    i64 3, label %bb.l
    i64 4, label %bb.p
    i64 5, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit
  ]

default.unreachable22:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8 ; 3 uses
  %i.f = load atomic i64, ptr %i.c seq_cst, align 8 ; 2 uses
  %i.g = load atomic i64, ptr %i.d seq_cst, align 8
  %i.h = icmp eq i64 %i.g, %i.e
  br i1 %i.h, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.j = load i64, ptr %i.i, align 16, !noundef !3 ; 2 uses
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = and i64 %i.k, %i.f                       ; 4 uses
  %i.m = and i64 %i.k, %i.e                       ; 4 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %i.l, %i.m
  br i1 %i.o, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = sub nuw i64 %i.m, %i.l
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit

bb.g:                                             ; preds = %bb.e
  %i.q = xor i64 %i.j, -1
  %i.r = and i64 %i.e, %i.q
  %i.s = icmp eq i64 %i.r, %i.f
  br i1 %i.s, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.u = load i64, ptr %i.t, align 128, !noundef !3
  %i.v = sub i64 %i.m, %i.l
  %i.w = add i64 %i.v, %i.u
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.y = load i64, ptr %i.x, align 128, !noundef !3
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit

bb.j:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8 ; 3 uses
  %i.ac = load atomic i64, ptr %i.z seq_cst, align 8 ; 2 uses
  %i.ad = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ae = icmp eq i64 %i.ad, %i.ab
  br i1 %i.ae, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit, label %bb.k

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit: ; preds = %bb.k
  %i.af = and i64 %i.ab, -2                       ; 2 uses
  %i.ag = and i64 %i.ac, -2                       ; 2 uses
  %i.ah = and i64 %i.ab, 62
  %i.ai = icmp eq i64 %i.ah, 62
  %i.aj = add i64 %i.af, 2
  %spec.select.i = select i1 %i.ai, i64 %i.aj, i64 %i.af
  %i.ak = and i64 %i.ac, 62
  %i.al = icmp eq i64 %i.ak, 62
  %i.am = add i64 %i.ag, 2
  %.sroa.08.0.i = select i1 %i.al, i64 %i.am, i64 %i.ag ; 2 uses
  %i.an = and i64 %.sroa.08.0.i, -64
  %i.ao = sub i64 %spec.select.i, %i.an           ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 1
  %i.aq = lshr exact i64 %.sroa.08.0.i, 1
  %i.ar = and i64 %i.aq, 31
  %i.as = lshr i64 %i.ao, 6
  %i.at = add nuw nsw i64 %i.as, %i.ar
  %i.au = sub nsw i64 %i.ap, %i.at
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.ax = load atomic i8, ptr %i.aw monotonic, align 1
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ba = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bb = extractvalue { i64, i32 } %i.ba, 0      ; 2 uses
  %i.bc = load i64, ptr %i.az, align 8, !noundef !3 ; 2 uses
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = extractvalue { i64, i32 } %i.ba, 1      ; 2 uses
  %i.bf = icmp ult i32 %i.be, 1000000000
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !range !416, !noundef !3
  %i.bi = icmp samesign ult i32 %i.be, %i.bh
  br i1 %i.bi, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit

bb.o:                                             ; preds = %bb.m
  %i.bj = icmp slt i64 %i.bb, %i.bc
  br i1 %i.bj, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit

_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit: ; preds = %bb.n, %bb.o
  %i.bk = load atomic i8, ptr %i.aw seq_cst, align 8
  %.fr = freeze i8 %i.bk
  %.not = icmp eq i8 %.fr, 0
  br i1 %.not, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread

_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread: ; preds = %bb.n, %bb.o, %bb.l, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit

bb.p:                                             ; preds = %bb.a
  %i.bl = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bo = extractvalue { i64, i32 } %i.bn, 0      ; 2 uses
  %i.bp = tail call { i64, i32 } @_RINvNtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cell11atomic_loadNtNtCs2pqxYH9ZEk8_3std4time7InstantECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.bm) ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bo, %i.bq
  %i.bs = icmp slt i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.q, label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8is_empty.exit

bb.q:                                             ; preds = %bb.p
  %i.bt = extractvalue { i64, i32 } %i.bp, 1      ; 2 uses
  %i.bu = extractvalue { i64, i32 } %i.bn, 1      ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 1000000000
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp ult i32 %i.bt, 1000000000
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp samesign ult i32 %i.bu, %i.bt
  br label %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8is_empty.exit

_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8is_empty.exit: ; preds = %bb.p, %bb.q
  %.sroa.0.0.i3 = phi i1 [ %i.bx, %bb.q ], [ %i.bs, %bb.p ]
  %not..sroa.0.0.i3 = xor i1 %.sroa.0.0.i3, true
  %.1 = zext i1 %not..sroa.0.0.i3 to i64
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit: ; preds = %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8is_empty.exit, %bb.a, %bb.a, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.au, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE3lenB2E_.exit ], [ %.1, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8is_empty.exit ], [ 0, %bb.a ], [ 0, %bb.g ], [ %i.p, %bb.f ], [ %i.w, %bb.h ], [ %i.y, %bb.i ], [ 0, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit.thread ], [ 1, %_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8is_empty.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2y_(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.727.i = alloca [38 x i8], align 2        ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.419.i = alloca [38 x i8], align 2        ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.66.i = alloca [38 x i8], align 2         ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [16 x i8], align 8                ; 2 uses
  %i.h = load i64, ptr %1, align 8, !range !841, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  switch i64 %i.h, label %default.unreachable56 [
    i64 0, label %bb.b
    i64 1, label %bb.u
    i64 2, label %bb.aq
    i64 3, label %bb.bt
    i64 4, label %bb.bu
    i64 5, label %bb.bv
  ]

default.unreachable56:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !noundef !3 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.k = load atomic i64, ptr %i.j monotonic, align 8, !noalias !980
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 400 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 392 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge, %bb.b
  %.sroa.0.023.i.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.023.i.i.be, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge ] ; 11 uses
  %.sroa.04.0.i.i = phi i64 [ %i.k, %bb.b ], [ %.sroa.04.0.i.i.be, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge ] ; 7 uses
  %i.r = load i64, ptr %i.l, align 16, !noalias !980, !noundef !3
  %i.s = add i64 %i.r, -1
  %i.t = and i64 %i.s, %.sroa.04.0.i.i            ; 3 uses
  %i.u = load i64, ptr %i.m, align 8, !noalias !980, !noundef !3
  %i.v = sub i64 0, %i.u
  %i.w = and i64 %.sroa.04.0.i.i, %i.v
  %i.x = load ptr, ptr %i.n, align 8, !noalias !980, !nonnull !3, !noundef !3
  %i.y = load i64, ptr %i.o, align 16, !noalias !980, !noundef !3
  %i.z = icmp ult i64 %i.t, %i.y
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.t ; 3 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8, !noalias !980 ; 3 uses
  %i.ac = add i64 %.sroa.04.0.i.i, 1
  %i.ad = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i
  %i.ae = icmp eq i64 %i.ab, %.sroa.04.0.i.i
  br i1 %i.ae, label %bb.f, label %bb.e

bb.d:                                             ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i
  %i.af = add nuw i64 %i.t, 1
  %i.ag = load i64, ptr %i.q, align 128, !noalias !980, !noundef !3
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp ult i32 %.sroa.0.023.i.i, 7
  br i1 %i.ai, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.e
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !980
  %i.aj = icmp ult i32 %.sroa.0.023.i.i, 11
  br i1 %i.aj, label %.loopexit.i.thread.i.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.ak, %.preheader.i.i.i ], [ 0, %bb.e ]
  %i.ak = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !980
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.ak, %.sroa.0.023.i.i
  %i.al = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.al, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.am = add nuw nsw i32 %.sroa.0.023.i.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.2.i.i = phi i32 [ %i.am, %.loopexit.i.thread.i.i ], [ %.sroa.0.023.i.i, %.loopexit.i.i.i ]
  %i.an = load atomic i64, ptr %i.j monotonic, align 16, !noalias !980
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge

bb.f:                                             ; preds = %bb.c
  fence seq_cst
  %i.ao = load atomic i64, ptr %i.p monotonic, align 16, !noalias !980 ; 2 uses
  %i.ap = load i64, ptr %i.l, align 16, !noalias !980, !noundef !3 ; 2 uses
  %i.aq = xor i64 %i.ap, -1
  %i.ar = and i64 %i.ao, %i.aq
  %i.as = icmp eq i64 %i.ar, %.sroa.04.0.i.i
  br i1 %i.as, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i, i32 6)
  br label %bb.h

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i: ; preds = %bb.h
  %i.at = icmp ult i32 %.sroa.0.023.i.i, 7
  %i.au = zext i1 %i.at to i32
  %spec.select.i.i = add nuw nsw i32 %.sroa.0.023.i.i, %i.au
  %i.av = load atomic i64, ptr %i.j monotonic, align 16, !noalias !980
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.02.i.i.i = phi i32 [ 0, %bb.g ], [ %i.aw, %bb.h ]
  %i.aw = add nuw nsw i32 %.sroa.0.02.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !980
  %.sroa.0.0.highbits.i13.i.i = lshr i32 %i.aw, %.sroa.0.0.i.i.i.i
  %i.ax = icmp eq i32 %.sroa.0.0.highbits.i13.i.i, 0
  br i1 %i.ax, label %bb.h, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.ay = and i64 %i.ap, %i.ao
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2E_.exit.i, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2E_.exit.thread.i

bb.j:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.m, align 8, !noalias !980, !noundef !3
  %i.bb = add i64 %i.ba, %i.w
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %.sroa.01.0.i.i = phi i64 [ %i.bb, %bb.j ], [ %i.ab, %bb.d ]
  %i.bc = cmpxchg weak ptr %i.j, i64 %.sroa.04.0.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !980 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bc, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bc, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.i.i14.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i, i32 6)
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.bd = icmp ult i32 %.sroa.0.023.i.i, 7
  %i.be = zext i1 %i.bd to i32
  %spec.select24.i.i = add nuw nsw i32 %.sroa.0.023.i.i, %i.be
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.backedge: ; preds = %bb.m, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.023.i.i.be = phi i32 [ %.sroa.0.2.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %spec.select.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i ], [ %spec.select24.i.i, %bb.m ]
  %.sroa.04.0.i.i.be = phi i64 [ %i.an, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %i.av, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i ], [ %.sroa.01.0.i.i.i, %bb.m ]
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i

bb.n:                                             ; preds = %bb.n, %bb.l
  %.sroa.0.02.i15.i.i = phi i32 [ 0, %bb.l ], [ %i.bf, %bb.n ]
  %i.bf = add nuw nsw i32 %.sroa.0.02.i15.i.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !980
  %.sroa.0.0.highbits.i16.i.i = lshr i32 %i.bf, %.sroa.0.0.i.i14.i.i
  %i.bg = icmp eq i32 %.sroa.0.0.highbits.i16.i.i, 0
  br i1 %i.bg, label %bb.n, label %bb.m

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2E_.exit.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.bh, align 2, !alias.scope !977
  store i16 2, ptr %0, align 8, !alias.scope !977
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2E_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2E_.exit.thread.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i)
  br label %bb.r

bb.o:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef align 8 dereferenceable(40) %i.e) #29
          to label %common.resume unwind label %bb.q, !noalias !983

bb.p:                                             ; preds = %bb.k
  %i.bj = load i64, ptr %i.m, align 8, !noalias !980, !noundef !3
  %i.bk = add i64 %i.bj, %.sroa.04.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !983
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.bl, i64 40, i1 false), !noalias !983
  store atomic i64 %i.bk, ptr %i.aa release, align 8, !noalias !983
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  invoke fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bm)
          to label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2E_.exit.i unwind label %bb.o, !noalias !983

bb.q:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !983
  unreachable

common.resume:                                    ; preds = %bb.as, %bb.av, %bb.bd, %bb.be, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.fx, %bb.as ], [ %i.gf, %bb.av ], [ %lpad.phi.i, %bb.be ], [ %lpad.phi.i, %bb.bd ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2E_.exit.i: ; preds = %bb.p
  %.sroa.04.0.copyload5.i = load i16, ptr %i.e, align 8, !noalias !977 ; 2 uses
  %.sroa.66.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.66.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.66.0..sroa_idx7.i, i64 38, i1 false), !noalias !977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !983
  %i.bo = icmp eq i16 %.sroa.04.0.copyload5.i, 2
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2E_.exit.i, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2E_.exit.thread.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.bp, align 2, !alias.scope !977
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2E_.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.66.i, i64 38, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.04.0.copyload5.sink.i = phi i16 [ %.sroa.04.0.copyload5.i, %bb.s ], [ 2, %bb.r ]
  store i16 %.sroa.04.0.copyload5.sink.i, ptr %0, align 8, !alias.scope !977
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i)
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2E_.exit

bb.u:                                             ; preds = %bb.a
  %i.bq = load ptr, ptr %i.i, align 8, !noundef !3 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419.i)
  %i.br = load atomic i64, ptr %i.bq acquire, align 8, !noalias !989
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 5 uses
  %i.bt = load atomic ptr, ptr %i.bs acquire, align 8, !noalias !989
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 128
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.u
  %.sroa.0.032.i.i = phi i32 [ 0, %bb.u ], [ %.sroa.0.032.i.i.be, %.backedge.i.i.backedge ] ; 13 uses
  %.sroa.014.0.i.i = phi ptr [ %i.bt, %bb.u ], [ %.sroa.014.0.i.i.be, %.backedge.i.i.backedge ] ; 7 uses
  %.sroa.05.0.i.i = phi i64 [ %i.br, %bb.u ], [ %.sroa.05.0.i.i.be, %.backedge.i.i.backedge ] ; 5 uses
  %i.bv = lshr i64 %.sroa.05.0.i.i, 1             ; 2 uses
  %i.bw = and i64 %i.bv, 31                       ; 5 uses
  %i.bx = icmp eq i64 %i.bw, 31
  br i1 %i.bx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.backedge.i.i
  %i.by = icmp ult i32 %.sroa.0.032.i.i, 7
  br i1 %i.by, label %.preheader.i.i.i13, label %.loopexit.i.i.i9

.loopexit.i.i.i9:                                 ; preds = %bb.v
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !989
  %i.bz = icmp ult i32 %.sroa.0.032.i.i, 11
  br i1 %i.bz, label %.loopexit.i.thread.i.i12, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i10

.preheader.i.i.i13:                               ; preds = %bb.v, %.preheader.i.i.i13
  %.sroa.0.03.i.i.i14 = phi i32 [ %i.ca, %.preheader.i.i.i13 ], [ 0, %bb.v ]
  %i.ca = add nuw nsw i32 %.sroa.0.03.i.i.i14, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !989
  %.sroa.0.0.highbits.i.i.i15 = lshr i32 %i.ca, %.sroa.0.032.i.i
  %i.cb = icmp eq i32 %.sroa.0.0.highbits.i.i.i15, 0
  br i1 %i.cb, label %.preheader.i.i.i13, label %.loopexit.i.thread.i.i12

.loopexit.i.thread.i.i12:                         ; preds = %.preheader.i.i.i13, %.loopexit.i.i.i9
  %i.cc = add nuw nsw i32 %.sroa.0.032.i.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i10

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i10: ; preds = %.loopexit.i.thread.i.i12, %.loopexit.i.i.i9
  %.sroa.0.1.i.i11 = phi i32 [ %i.cc, %.loopexit.i.thread.i.i12 ], [ %.sroa.0.032.i.i, %.loopexit.i.i.i9 ]
  %i.cd = load atomic i64, ptr %i.bq acquire, align 8, !noalias !989
  %i.ce = load atomic ptr, ptr %i.bs acquire, align 8, !noalias !989
  br label %.backedge.i.i.backedge

bb.w:                                             ; preds = %.backedge.i.i
  %i.cf = add i64 %.sroa.05.0.i.i, 2              ; 2 uses
  %i.cg = and i64 %.sroa.05.0.i.i, 1
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  fence seq_cst
  %i.ci = load atomic i64, ptr %i.bu monotonic, align 8, !noalias !989 ; 3 uses
  %i.cj = lshr i64 %i.ci, 1
  %i.ck = icmp eq i64 %i.bv, %i.cj
  br i1 %i.ck, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.unshifted.i.i = xor i64 %i.ci, %.sroa.05.0.i.i
  %.not.i.i = icmp ugt i64 %.not.unshifted.i.i, 63
  %i.cl = zext i1 %.not.i.i to i64
  %spec.select.i.i8 = or disjoint i64 %i.cf, %i.cl
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cm = and i64 %i.ci, 1
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2E_.exit.i, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4readB2E_.exit.thread.i

bb.aa:                                            ; preds = %bb.y, %bb.w
  %.sroa.01.0.i.i1 = phi i64 [ %i.cf, %bb.w ], [ %spec.select.i.i8, %bb.y ] ; 2 uses
  %i.co = icmp eq ptr %.sroa.014.0.i.i, null
  br i1 %i.co, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cp = icmp ult i32 %.sroa.0.032.i.i, 7
  br i1 %i.cp, label %.preheader.i21.i.i, label %.loopexit.i20.i.i

.loopexit.i20.i.i:                                ; preds = %bb.ab
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !989
  %i.cq = icmp ult i32 %.sroa.0.032.i.i, 11
  br i1 %i.cq, label %.loopexit.i20.thread.i.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i

.preheader.i21.i.i:                               ; preds = %bb.ab, %.preheader.i21.i.i
  %.sroa.0.03.i22.i.i = phi i32 [ %i.cr, %.preheader.i21.i.i ], [ 0, %bb.ab ]
  %i.cr = add nuw nsw i32 %.sroa.0.03.i22.i.i, 1  ; 2 uses
end_hunk_6
begin_hunk_7_@_RNvMsa_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2y_:bb.a
  %i.fq = load i64, ptr %i.d, align 8, !range !151, !alias.scope !998, !noalias !1001, !noundef !3
  %i.fr = trunc nuw i64 %i.fq to i1
  br i1 %i.fr, label %bb.ar, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !29

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1003
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !998, !noalias !1001, !nonnull !3, !align !27, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fv = load i8, ptr %i.fu, align 8, !range !4, !alias.scope !998, !noalias !1001, !noundef !3
  store ptr %i.ft, ptr %i.a, align 8, !noalias !1003
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.fv, ptr %i.fw, align 8, !noalias !1003
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #31
          to label %bb.at unwind label %bb.as, !noalias !1004

bb.as:                                            ; preds = %bb.ar
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %common.resume unwind label %bb.au, !noalias !1004

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1004
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.aq
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !998, !noalias !1001, !nonnull !3, !align !27, !noundef !3 ; 9 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gc = load i8, ptr %i.gb, align 8, !range !4, !alias.scope !998, !noalias !1001, !noundef !3 ; 2 uses
  %i.gd = trunc nuw i8 %i.gc to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !995
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  invoke fastcc void @_RNvMNtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB2_5Waker10try_select(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(48) %i.ge)
          to label %bb.aw unwind label %bb.av, !noalias !995

bb.av:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.ga, i8 %i.gc) #29
          to label %common.resume unwind label %bb.bo, !noalias !995

bb.aw:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.gg = load ptr, ptr %i.c, align 8, !noalias !995, !noundef !3
  %.not.i = icmp eq ptr %i.gg, null
  br i1 %.not.i, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !995
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !995, !noundef !3 ; 11 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  br i1 %i.gd, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gk = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !995
  %i.gl = and i64 %i.gk, 9223372036854775807
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.az, !prof !28

bb.az:                                            ; preds = %bb.ay
  %i.gn = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !995

.noexc.i:                                         ; preds = %bb.az
  br i1 %i.gn, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.noexc.i
  store atomic i8 1, ptr %i.gj monotonic, align 4, !noalias !995
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.ba, %.noexc.i, %bb.ay, %bb.ax
  %i.go = atomicrmw xchg ptr %i.ga, i32 0 release, align 4, !noalias !995
  %i.gp = icmp eq i32 %i.go, 2
  br i1 %i.gp, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !29

bb.bb:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ga)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %.loopexit.split-lp.i, !noalias !995

bb.bc:                                            ; preds = %bb.aw
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 104
  %i.gr = load i8, ptr %i.gq, align 8, !range !4, !noalias !995, !noundef !3
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.gr, ptr %i.gs, align 2, !alias.scope !995
  store i16 2, ptr %0, align 8, !alias.scope !995
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  br i1 %i.gd, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, label %bb.bp

.loopexit.i:                                      ; preds = %.loopexit.i.i.i.i19
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %bb.bb, %bb.az
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.gu = load ptr, ptr %i.b, align 8, !alias.scope !1017, !noalias !995, !nonnull !3, !noundef !3
  %i.gv = atomicrmw sub ptr %i.gu, i64 1 release, align 8, !noalias !1018
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.be, label %common.resume

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #27
          to label %common.resume unwind label %bb.bo, !noalias !995

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.bb, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.gx = icmp eq ptr %i.gi, null
  br i1 %i.gx, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gi, i64 41
  %i.gz = load i8, ptr %i.gy, align 1, !range !4, !noalias !1019, !noundef !3
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 2 uses
  %i.hc = load atomic i8, ptr %i.hb acquire, align 1, !noalias !1019
  %i.hd = icmp eq i8 %i.hc, 0
  br i1 %i.hd, label %.lr.ph.i.i.i17, label %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2D_.exit.i.i

.lr.ph.i.i.i17:                                   ; preds = %bb.bg, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20
  %.sroa.0.02.i.i.i18 = phi i32 [ %.sroa.0.1.i.i.i21, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20 ], [ 0, %bb.bg ] ; 5 uses
  %i.he = icmp ult i32 %.sroa.0.02.i.i.i18, 7
  br i1 %i.he, label %.preheader.i.i.i.i23, label %.loopexit.i.i.i.i19

.loopexit.i.i.i.i19:                              ; preds = %.lr.ph.i.i.i17
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.noexc10.i unwind label %.loopexit.i, !noalias !995

.noexc10.i:                                       ; preds = %.loopexit.i.i.i.i19
  %i.hf = icmp ult i32 %.sroa.0.02.i.i.i18, 11
  br i1 %i.hf, label %.loopexit.i.thread.i.i.i22, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20

.preheader.i.i.i.i23:                             ; preds = %.lr.ph.i.i.i17, %.preheader.i.i.i.i23
  %.sroa.0.03.i.i.i.i24 = phi i32 [ %i.hg, %.preheader.i.i.i.i23 ], [ 0, %.lr.ph.i.i.i17 ]
  %i.hg = add nuw nsw i32 %.sroa.0.03.i.i.i.i24, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !1019
  %.sroa.0.0.highbits.i.i.i.i25 = lshr i32 %i.hg, %.sroa.0.02.i.i.i18
  %i.hh = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i25, 0
  br i1 %i.hh, label %.preheader.i.i.i.i23, label %.loopexit.i.thread.i.i.i22

.loopexit.i.thread.i.i.i22:                       ; preds = %.preheader.i.i.i.i23, %.noexc10.i
  %i.hi = add nuw nsw i32 %.sroa.0.02.i.i.i18, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20: ; preds = %.loopexit.i.thread.i.i.i22, %.noexc10.i
  %.sroa.0.1.i.i.i21 = phi i32 [ %i.hi, %.loopexit.i.thread.i.i.i22 ], [ %.sroa.0.02.i.i.i18, %.noexc10.i ]
  %i.hj = load atomic i8, ptr %i.hb acquire, align 1, !noalias !1019
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %.lr.ph.i.i.i17, label %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2D_.exit.i.i

_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2D_.exit.i.i: ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i20, %bb.bg
  %.sroa.04.0.copyload.i.i = load i16, ptr %i.gi, align 8, !noalias !1019 ; 2 uses
  store i16 2, ptr %i.gi, align 8, !noalias !1019
  %.not.i.i16 = icmp eq i16 %.sroa.04.0.copyload.i.i, 2
  br i1 %.not.i.i16, label %.invoke.i, label %bb.bi, !prof !29

bb.bh:                                            ; preds = %bb.bf
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.gi, align 8, !noalias !1019 ; 2 uses
  store i16 2, ptr %i.gi, align 8, !noalias !1019
  %.not11.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 2
  br i1 %.not11.i.i, label %.invoke.i, label %bb.bj, !prof !29

.invoke.i:                                        ; preds = %bb.bh, %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2D_.exit.i.i
  %i.hl = phi ptr [ @43, %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2D_.exit.i.i ], [ @44, %bb.bh ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl) #30
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !995

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bi:                                            ; preds = %_RNvMs0_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_6PacketINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10wait_readyB2D_.exit.i.i
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.727.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.56.0..sroa_idx.i.i, i64 38, i1 false), !noalias !995
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gi, i64 noundef 48, i64 noundef 8) #18, !noalias !1019
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.727.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.0..sroa_idx.i.i, i64 38, i1 false), !noalias !995
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  store atomic i8 1, ptr %i.hm release, align 8, !noalias !1019
  br label %bb.bl

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zero5InnerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.hn, align 2, !alias.scope !995
  store i16 2, ptr %0, align 8, !alias.scope !995
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.026.0.ph.i = phi i16 [ %.sroa.0.0.copyload.i.i, %bb.bj ], [ %.sroa.04.0.copyload.i.i, %bb.bi ]
  store i16 %.sroa.026.0.ph.i, ptr %0, align 8, !alias.scope !995
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.429.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.727.i, i64 38, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %i.ho = load ptr, ptr %i.b, align 8, !alias.scope !1034, !noalias !995, !nonnull !3, !noundef !3
  %i.hp = atomicrmw sub ptr %i.ho, i64 1 release, align 8, !noalias !1035
  %i.hq = icmp eq i64 %i.hp, 1
  br i1 %i.hq, label %bb.bn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #27, !noalias !995
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i: ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !995
  br label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2E_.exit

bb.bo:                                            ; preds = %bb.be, %bb.av
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !995
  unreachable

bb.bp:                                            ; preds = %bb.bc
  %i.hs = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !995
  %i.ht = and i64 %i.hs, 9223372036854775807
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, label %bb.bq, !prof !28

bb.bq:                                            ; preds = %bb.bp
  %i.hv = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27, !noalias !995
  br i1 %i.hv, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store atomic i8 1, ptr %i.gt monotonic, align 4, !noalias !995
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i: ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bc
  %i.hw = atomicrmw xchg ptr %i.ga, i32 0 release, align 4, !noalias !995
  %i.hx = icmp eq i32 %i.hw, 2
  br i1 %i.hx, label %bb.bs, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2E_.exit, !prof !29

bb.bs:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ga), !noalias !995
  br label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2E_.exit

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2E_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel5waker5EntryECsgO8S5jLFugx_23deltalake_catalog_unity.exit13.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i14.i, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !995
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727.i)
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2E_.exit

bb.bt:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.hy = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  call fastcc void @_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors2atNtB2_7Channel8try_recv(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.g, ptr noundef nonnull align 8 %i.hz) #26
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 95 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #30
  unreachable

bb.bu:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ia = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  call fastcc void @_RNvMNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4tickNtB2_7Channel8try_recv(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.ib) #26
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 95 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #30
  unreachable

bb.bv:                                            ; preds = %bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.ic, align 2
  store i16 2, ptr %0, align 8
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2E_.exit

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2E_.exit: ; preds = %bb.t, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_recvB2E_.exit.i, %bb.bv, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2E_.exit, %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8try_recvB2E_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE5derefB3U_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3U_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE5derefCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE6as_refCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1Q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE5derefB3f_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1Q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6as_refB3f_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE5derefB5E_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE6as_refB5E_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE5derefB3O_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3O_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE9deref_mutB3O_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE5derefCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
end_hunk_7
begin_hunk_8_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions28literal_expression_transform5ErrorNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1046
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.c, align 8, !noalias !1046
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1046
  br label %_RNvXs3_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions28literal_expression_transformNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1046
  store ptr %i.d, ptr %i.b, align 8, !noalias !1046
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 13, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1046
  br label %_RNvXs3_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions28literal_expression_transformNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 19), !noalias !1040
  br label %_RNvXs3_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions28literal_expression_transformNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 10), !noalias !1040
  br label %_RNvXs3_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions28literal_expression_transformNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1046
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.a, align 8, !noalias !1046
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1046
  br label %_RNvXs3_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions28literal_expression_transformNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXs3_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions28literal_expression_transformNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.k, %bb.c ], [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ], [ %i.p, %bb.g ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs95DO3lnzZ3L_4moka6futureINtB5_11CancelGuardNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 5 uses
  %i.d = alloca [104 x i8], align 8               ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.6.i.i.i = alloca [64 x i8], align 8      ; 4 uses
  %i.i = alloca [104 x i8], align 8               ; 20 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [72 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.5.i.i = alloca [62 x i8], align 2        ; 10 uses
  %.sroa.6.i.i = alloca [62 x i8], align 2        ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [72 x i8], align 8                ; 11 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [72 x i8], align 8                ; 5 uses
  %i.z = alloca [64 x i8], align 8                ; 10 uses
  %i.aa = alloca [64 x i8], align 8               ; 11 uses
  %i.ab = alloca [64 x i8], align 8               ; 11 uses
  %i.ac = alloca [72 x i8], align 8               ; 27 uses
  %.sroa.6 = alloca [62 x i8], align 2            ; 4 uses
  %i.ad = alloca [64 x i8], align 8               ; 9 uses
  %.sroa.7 = alloca [38 x i8], align 2            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false)
  store i16 2, ptr %i.ae, align 8
  %i.ag = load i64, ptr %i.ad, align 8, !range !151, !noundef !3
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = load i16, ptr %i.af, align 8, !range !73, !noundef !3 ; 2 uses
  %.not5 = icmp eq i16 %i.ai, 2                   ; 2 uses
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 6 uses
  br i1 %.not5, label %bb.ek, label %bb.ei

bb.c:                                             ; preds = %bb.a
  br i1 %.not5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared6SharedINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.242.0.copyload = load i64, ptr %.sroa.242.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.7.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.ei, %bb.d
  %.sroa.11.0 = phi i64 [ %i.kz, %bb.ei ], [ undef, %bb.d ] ; 5 uses
  %.sroa.9.0 = phi i64 [ %i.ld, %bb.ei ], [ %i.al, %bb.d ] ; 5 uses
  %.sroa.8.0 = phi i64 [ %i.lc, %bb.ei ], [ %.sroa.242.0.copyload, %bb.d ] ; 5 uses
  %.sroa.0.0 = phi i16 [ %i.ai, %bb.ei ], [ 2, %bb.d ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !3, !align !27, !noundef !3 ; 2 uses
  %.val = load i64, ptr %i.an, align 8, !range !598, !noundef !3
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.val8 = load ptr, ptr %i.ao, align 8           ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1047
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.at
    i64 2, label %bb.bq
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1047
  store i16 %.sroa.0.0, ptr %i.ab, align 8, !noalias !1051
  %.sroa.7.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.7.0..sroa_idx17, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.7, i64 38, i1 false), !noalias !1051
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx24, align 8, !noalias !1051
  %.sroa.9.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx31, align 8, !noalias !1051
  %.sroa.11.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx38, align 8, !noalias !1051
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1047
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.ap, align 8, !noalias !1057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1057
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i32 1000000000, ptr %i.aq, align 8, !noalias !1057
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false), !noalias !1057
  store i32 1000000000, ptr %i.as, align 8, !noalias !1057
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr null, ptr %i.at, align 8, !noalias !1057
  %i.au = getelementptr inbounds nuw i8, ptr %.val8, i64 128 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val8, i64 400 ; 4 uses
  %i.aw = load atomic i64, ptr %i.au monotonic, align 8, !noalias !1058 ; 2 uses
  %i.ax = load i64, ptr %i.av, align 16, !noalias !1058, !noundef !3 ; 2 uses
  %i.ay = and i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.lr.ph.lr.ph.i.i, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2x_.exit.i.i

.lr.ph.i.lr.ph.lr.ph.i.i:                         ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.val8, i64 392 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val8, i64 408
  %i.bc = getelementptr inbounds nuw i8, ptr %.val8, i64 416
  %i.bd = getelementptr inbounds nuw i8, ptr %.val8, i64 384
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.be = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.backedge, %.lr.ph.i.lr.ph.lr.ph.i.i
  %i.bg = phi i64 [ %i.ax, %.lr.ph.i.lr.ph.lr.ph.i.i ], [ %.be, %.lr.ph.i.i.i.backedge ]
  %i.bh = phi i64 [ %i.aw, %.lr.ph.i.lr.ph.lr.ph.i.i ], [ %.be196, %.lr.ph.i.i.i.backedge ]
  %.sroa.0.059.i.i = phi i32 [ 0, %.lr.ph.i.lr.ph.lr.ph.i.i ], [ %.sroa.0.059.i.i.be, %.lr.ph.i.i.i.backedge ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  br label %bb.g

bb.g:                                             ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i, %.lr.ph.i.i.i
  %i.bi = phi i64 [ %i.bg, %.lr.ph.i.i.i ], [ %i.cr, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i ]
  %.sroa.04.029.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i ], [ %.sroa.04.1.i.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i ] ; 8 uses
  %.sroa.0.02328.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i ] ; 11 uses
  %i.bj = add i64 %i.bi, -1
  %i.bk = and i64 %i.bj, %.sroa.04.029.i.i.i      ; 3 uses
  %i.bl = load i64, ptr %i.ba, align 8, !noalias !1063, !noundef !3
  %i.bm = sub i64 0, %i.bl
  %i.bn = and i64 %.sroa.04.029.i.i.i, %i.bm
  %i.bo = load ptr, ptr %i.bb, align 8, !noalias !1063, !nonnull !3, !noundef !3
  %i.bp = load i64, ptr %i.bc, align 16, !noalias !1063, !noundef !3
  %i.bq = icmp ult i64 %i.bk, %i.bp
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [72 x i8], ptr %i.bo, i64 %i.bk ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8, !noalias !1063 ; 2 uses
  %i.bu = icmp eq i64 %.sroa.04.029.i.i.i, %i.bt
  br i1 %i.bu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = load i64, ptr %i.ba, align 8, !noalias !1063, !noundef !3
  %i.bw = add i64 %i.bv, %i.bt
  %i.bx = add i64 %.sroa.04.029.i.i.i, 1
  %i.by = icmp eq i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bz = add nuw i64 %i.bk, 1
  %i.ca = load i64, ptr %i.bd, align 128, !noalias !1063, !noundef !3
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp ult i32 %.sroa.0.02328.i.i.i, 7
  br i1 %i.cc, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.j
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.noexc.i.i unwind label %.body.thread33.loopexit.i.i, !noalias !1057

.noexc.i.i:                                       ; preds = %.loopexit.i.i.i.i
  %i.cd = icmp ult i32 %.sroa.0.02328.i.i.i, 11
  br i1 %i.cd, label %.loopexit.i.thread.i.i.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.j, %.preheader.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i32 [ %i.ce, %.preheader.i.i.i.i ], [ 0, %bb.j ]
  %i.ce = add nuw nsw i32 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !1063
  %.sroa.0.0.highbits.i.i.i.i = lshr i32 %i.ce, %.sroa.0.02328.i.i.i
  %i.cf = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i, 0
  br i1 %i.cf, label %.preheader.i.i.i.i, label %.loopexit.i.thread.i.i.i

.loopexit.i.thread.i.i.i:                         ; preds = %.preheader.i.i.i.i, %.noexc.i.i
  %i.cg = add nuw nsw i32 %.sroa.0.02328.i.i.i, 1
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i: ; preds = %.loopexit.i.thread.i.i.i, %.noexc.i.i
  %.sroa.0.2.i.i.i = phi i32 [ %i.cg, %.loopexit.i.thread.i.i.i ], [ %.sroa.0.02328.i.i.i, %.noexc.i.i ]
  %i.ch = load atomic i64, ptr %i.au monotonic, align 16, !noalias !1063
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i

bb.k:                                             ; preds = %bb.h
  fence seq_cst
  %i.ci = load atomic i64, ptr %.val8 monotonic, align 16, !noalias !1063
  %i.cj = load i64, ptr %i.ba, align 8, !noalias !1063, !noundef !3
  %i.ck = add i64 %i.cj, %i.ci
  %i.cl = icmp eq i64 %i.ck, %.sroa.04.029.i.i.i
  br i1 %i.cl, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2x_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02328.i.i.i, i32 6)
  br label %bb.m

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i: ; preds = %bb.m
  %i.cm = icmp ult i32 %.sroa.0.02328.i.i.i, 7
  %i.cn = zext i1 %i.cm to i32
  %spec.select.i.i.i = add nuw nsw i32 %.sroa.0.02328.i.i.i, %i.cn
  %i.co = load atomic i64, ptr %i.au monotonic, align 16, !noalias !1063
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.02.i.i.i.i = phi i32 [ 0, %bb.l ], [ %i.cp, %bb.m ]
  %i.cp = add nuw nsw i32 %.sroa.0.02.i.i.i.i, 1  ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !1063
  %.sroa.0.0.highbits.i13.i.i.i = lshr i32 %i.cp, %.sroa.0.0.i.i.i.i.i
  %i.cq = icmp eq i32 %.sroa.0.0.highbits.i13.i.i.i, 0
  br i1 %i.cq, label %bb.m, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i: ; preds = %bb.r, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.0.2.i.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i ], [ %spec.select.i.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i ], [ %spec.select24.i.i.i, %bb.r ]
  %.sroa.04.1.i.i.i = phi i64 [ %i.ch, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i ], [ %i.co, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i ], [ %.sroa.01.0.i.i.i.i, %bb.r ] ; 2 uses
  %i.cr = load i64, ptr %i.av, align 16, !noalias !1063, !noundef !3 ; 2 uses
  %i.cs = and i64 %i.cr, %.sroa.04.1.i.i.i
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.g, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2x_.exit.i.i

bb.n:                                             ; preds = %bb.i
  %i.cu = load i64, ptr %i.ba, align 8, !noalias !1063, !noundef !3
  %i.cv = add i64 %i.cu, %i.bn
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.cw = add i64 %.sroa.04.029.i.i.i, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.01.0.i.i.i = phi i64 [ %i.cw, %bb.o ], [ %i.cv, %bb.n ]
  %i.cx = cmpxchg weak ptr %i.au, i64 %.sroa.04.029.i.i.i, i64 %.sroa.01.0.i.i.i seq_cst monotonic, align 8, !noalias !1063 ; 2 uses
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.cx, 1
  %.sroa.01.0.i.i.i.i = extractvalue { i64, i1 } %i.cx, 0
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2x_.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.i.i14.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02328.i.i.i, i32 6)
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.cy = icmp ult i32 %.sroa.0.02328.i.i.i, 7
  %i.cz = zext i1 %i.cy to i32
  %spec.select24.i.i.i = add nuw nsw i32 %.sroa.0.02328.i.i.i, %i.cz
  br label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i

bb.s:                                             ; preds = %bb.s, %bb.q
  %.sroa.0.02.i15.i.i.i = phi i32 [ 0, %bb.q ], [ %i.da, %bb.s ]
  %i.da = add nuw nsw i32 %.sroa.0.02.i15.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !1063
  %.sroa.0.0.highbits.i16.i.i.i = lshr i32 %i.da, %.sroa.0.0.i.i14.i.i.i
  %i.db = icmp eq i32 %.sroa.0.0.highbits.i16.i.i.i, 0
  br i1 %i.db, label %bb.s, label %bb.r

.body.thread33.loopexit.i.i:                      ; preds = %.loopexit.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.body.thread33.loopexit.split-lp.loopexit.i.i:    ; preds = %bb.u
  %lpad.loopexit49.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.body.thread33.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtNtB1S_7flavors5arrayINtB3h_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0uEs_0uEB5i_.exit.i.i.i, %bb.ai, %bb.ad, %bb.y, %_RNvYNCNKNvNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, %bb.w
  %lpad.loopexit.split-lp50.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2x_.exit.i.i: ; preds = %bb.k
  %exitcond.i.i = icmp eq i32 %.sroa.0.059.i.i, 11
  br i1 %exitcond.i.i, label %bb.v, label %bb.t

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2x_.exit.thread.i.i: ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store ptr %i.br, ptr %i.w, align 8, !alias.scope !1061, !noalias !1057
  %i.dd = add i64 %.sroa.04.029.i.i.i, 1          ; 2 uses
  store i64 %i.dd, ptr %i.ar, align 8, !alias.scope !1061, !noalias !1057
  %.sroa.022.0.copyload38.i.i = load i16, ptr %i.ab, align 8, !alias.scope !1055, !noalias !1064
  store i16 %.sroa.022.0.copyload38.i.i, ptr %i.br, align 8, !noalias !1065
  %.sroa.5.0..val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.5.0..val.sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.7.0..sroa_idx17, i64 62, i1 false), !noalias !1064
  store atomic i64 %i.dd, ptr %i.dc release, align 8, !noalias !1068
  %i.de = getelementptr inbounds nuw i8, ptr %.val8, i64 320
  call fastcc void @_RNvMs0_NtCshhQzAC5dGUF_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.de) #26, !noalias !1057
  br label %bb.ar

bb.t:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2x_.exit.i.i
  %i.df = icmp samesign ult i32 %.sroa.0.059.i.i, 7
  br i1 %i.df, label %.preheader.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i unwind label %.body.thread33.loopexit.split-lp.loopexit.i.i, !noalias !1057

.preheader.i.i.i:                                 ; preds = %bb.t, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.dg, %.preheader.i.i.i ], [ 0, %bb.t ]
  %i.dg = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !1057
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.dg, %.sroa.0.059.i.i
  %i.dh = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.dh, label %.preheader.i.i.i, label %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.preheader.i.i.i, %bb.u
  %i.di = add nuw nsw i32 %.sroa.0.059.i.i, 1
  %i.dj = load atomic i64, ptr %i.au monotonic, align 16, !noalias !1070 ; 2 uses
  %i.dk = load i64, ptr %i.av, align 16, !noalias !1070, !noundef !3 ; 2 uses
  %i.dl = and i64 %i.dk, %i.dj
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i.i.i.backedge, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2x_.exit.i.i

.lr.ph.i.i.i.backedge:                            ; preds = %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %bb.ap
  %.be = phi i64 [ %i.dk, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %i.es, %bb.ap ]
  %.be196 = phi i64 [ %i.dj, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ %i.er, %bb.ap ]
  %.sroa.0.059.i.i.be = phi i32 [ %i.di, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.ap ]
  br label %.lr.ph.i.i.i

bb.v:                                             ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2x_.exit.i.i
  %i.dn = load i32, ptr %i.ap, align 8, !range !229, !noalias !1057, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i32 %i.dn, 1000000000
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = load i64, ptr %i.x, align 8, !noalias !1057, !noundef !3 ; 2 uses
  %i.dp = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.al unwind label %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !1057 ; 2 uses

bb.x:                                             ; preds = %bb.an, %bb.am, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1072
  store ptr %i.w, ptr %i.v, align 8, !noalias !1057
  store ptr %.val8, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !1057
  store ptr %i.x, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1057
  %i.dq = load i8, ptr %i.bf, align 8, !range !1075, !noalias !1076, !noundef !3
  %i.dr = icmp eq i8 %i.dq, 1
  br i1 %i.dr, label %_RNvYNCNKNvNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i.i, label %_RNvYNCNKNvNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i, !prof !28

_RNvYNCNKNvNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.x
  %i.ds = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.be, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc11.i.i unwind label %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !1057 ; 2 uses

.noexc11.i.i:                                     ; preds = %_RNvYNCNKNvNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtNtB1S_7flavors5arrayINtB3h_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0uEs_0uEB5i_.exit.i.i.i, label %_RNvYNCNKNvNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i.i

_RNvYNCNKNvNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i.i: ; preds = %.noexc11.i.i, %bb.x
  %.sroa.0.0.i.i.i2.i.i.i.i = phi ptr [ %i.ds, %.noexc11.i.i ], [ %i.be, %bb.x ] ; 4 uses
  %i.du = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1072, !noundef !3 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1072
  %.not.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.af, !prof !29

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1072
  %i.dv = invoke noundef nonnull ptr @_RNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB2_7Context3new()
          to label %bb.z unwind label %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !1057 ; 2 uses

bb.z:                                             ; preds = %bb.y
  store ptr %i.dv, ptr %i.u, align 8, !noalias !1072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1072
  store ptr %i.w, ptr %i.s, align 8, !noalias !1072
  store ptr %.val8, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i, align 8, !noalias !1057
  store ptr %i.x, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i, align 8, !noalias !1057
  invoke fastcc void @_RNCNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB6_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0B2z_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s, ptr nonnull %i.dv)
          to label %bb.ac unwind label %bb.aa, !noalias !1072

bb.aa:                                            ; preds = %bb.z
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %i.dx = load ptr, ptr %i.u, align 8, !alias.scope !1092, !noalias !1072, !nonnull !3, !noundef !3
  %i.dy = atomicrmw sub ptr %i.dx, i64 1 release, align 8, !noalias !1093
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.ab, label %.body.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #27
          to label %.body.thread.i.i unwind label %bb.ae, !noalias !1072

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1072
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  %i.ea = load ptr, ptr %i.u, align 8, !alias.scope !1103, !noalias !1072, !nonnull !3, !noundef !3
  %i.eb = atomicrmw sub ptr %i.ea, i64 1 release, align 8, !noalias !1104
  %i.ec = icmp eq i64 %i.eb, 1
  br i1 %i.ec, label %bb.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit19.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit19.i.i.i.i.i unwind label %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !1057

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit19.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1072
  br label %bb.ap

bb.ae:                                            ; preds = %bb.ak, %bb.ab
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1072
  unreachable

bb.af:                                            ; preds = %_RNvYNCNKNvNvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1072
  store ptr %i.du, ptr %i.t, align 8, !noalias !1072
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store atomic i64 0, ptr %i.ee release, align 8, !noalias !1072
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store atomic ptr null, ptr %i.ef release, align 8, !noalias !1072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1072
  store ptr %i.w, ptr %i.r, align 8, !noalias !1072
  store ptr %.val8, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i, align 8, !noalias !1057
  store ptr %i.x, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i, align 8, !noalias !1057
  invoke fastcc void @_RNCNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB6_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0B2z_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr nonnull %i.du)
          to label %bb.ag unwind label %bb.aj, !noalias !1072

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1072
  %i.eg = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1072, !noundef !3 ; 3 uses
  store ptr %i.eg, ptr %i.q, align 8, !noalias !1072
  store ptr %i.du, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1072
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = atomicrmw sub ptr %i.eg, i64 1 release, align 8, !noalias !1105
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i unwind label %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !1057

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1072
  br label %bb.ap

bb.aj:                                            ; preds = %bb.af
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = atomicrmw sub ptr %i.du, i64 1 release, align 8, !noalias !1114
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.ak, label %.body.thread.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCshhQzAC5dGUF_17crossbeam_channel7context5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #27
          to label %.body.thread.i.i unwind label %bb.ae, !noalias !1072

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtNtB1S_7flavors5arrayINtB3h_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0uEs_0uEB5i_.exit.i.i.i: ; preds = %.noexc11.i.i
  invoke fastcc void @_RNCINvMNtCshhQzAC5dGUF_17crossbeam_channel7contextNtB5_7Context4withNCNvMs_NtNtB7_7flavors5arrayINtB1b_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0uEs0_0B3b_(ptr nonnull %i.v)
          to label %bb.ap unwind label %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !1057

bb.al:                                            ; preds = %bb.w
  %i.en = extractvalue { i64, i32 } %i.dp, 0      ; 2 uses
  %i.eo = icmp eq i64 %i.en, %i.do
  br i1 %i.eo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ep = extractvalue { i64, i32 } %i.dp, 1      ; 2 uses
  %i.eq = icmp ult i32 %i.ep, 1000000000
  call void @llvm.assume(i1 %i.eq)
  %.not47.i.i = icmp samesign ult i32 %i.ep, %i.dn
  br i1 %.not47.i.i, label %bb.x, label %bb.ao

bb.an:                                            ; preds = %bb.al
  %.not46.i.i = icmp slt i64 %i.en, %i.do
  br i1 %.not46.i.i, label %bb.x, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false), !alias.scope !1121, !noalias !1047
  store i64 0, ptr %i.ac, align 8, !alias.scope !1052, !noalias !1122
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4sendB2x_.exit.i

bb.ap:                                            ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtNtB1S_7flavors5arrayINtB3h_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4send0uEs_0uEB5i_.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshhQzAC5dGUF_17crossbeam_channel7context7ContextECsgO8S5jLFugx_23deltalake_catalog_unity.exit19.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1072
  %i.er = load atomic i64, ptr %i.au monotonic, align 16, !noalias !1123 ; 2 uses
  %i.es = load i64, ptr %i.av, align 16, !noalias !1123, !noundef !3 ; 2 uses
  %i.et = and i64 %i.es, %i.er
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i.i.i.backedge, label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2x_.exit.i.i

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2x_.exit.i.i: ; preds = %bb.ap, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %_RNvMNtCslrv8JwANqSj_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i, %bb.f
  %.sroa.022.0.copyload.i.i = load i16, ptr %i.ab, align 8, !alias.scope !1055, !noalias !1064 ; 2 uses
  %.not7.i.i = icmp eq i16 %.sroa.022.0.copyload.i.i, 3
  br i1 %.not7.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2x_.exit.i.i
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.7.0..sroa_idx17, i64 62, i1 false), !alias.scope !1121, !noalias !1047
  store i64 1, ptr %i.ac, align 8, !alias.scope !1052, !noalias !1122
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i16 %.sroa.022.0.copyload.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !1052, !noalias !1122
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4sendB2x_.exit.i

bb.ar:                                            ; preds = %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2x_.exit.i.i, %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2x_.exit.thread.i.i
  store i64 2, ptr %i.ac, align 8, !alias.scope !1052, !noalias !1122
  br label %_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4sendB2x_.exit.i

common.resume:                                    ; preds = %.body, %bb.et, %bb.ef, %.body.thread.i.i, %.body.thread.i12.i, %.body.i.i, %.body.i.i.i, %bb.dl, %.body.thread56.i.i, %bb.ec
  %common.resume.op = phi { ptr, i32 } [ %i.kv, %bb.ef ], [ %i.kr, %bb.ec ], [ %i.jw, %bb.dl ], [ %eh.lpad-body32.i.i, %.body.thread.i.i ], [ %eh.lpad-body23.i.i, %.body.thread.i12.i ], [ %i.if, %.body.i.i ], [ %.pn.pn59.i.i, %.body.thread56.i.i ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body, %bb.et ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i.i:                                 ; preds = %bb.ak, %bb.aj, %bb.ab, %bb.aa, %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.i, %.body.thread33.loopexit.split-lp.loopexit.i.i, %.body.thread33.loopexit.i.i
  %eh.lpad-body32.i.i = phi { ptr, i32 } [ %i.ek, %bb.ak ], [ %i.dw, %bb.aa ], [ %i.ek, %bb.aj ], [ %i.dw, %bb.ab ], [ %lpad.loopexit.i.i, %.body.thread33.loopexit.i.i ], [ %lpad.loopexit49.i.i, %.body.thread33.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp50.i.i, %.body.thread33.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB26_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ab) #29
          to label %common.resume unwind label %bb.as, !noalias !1064

bb.as:                                            ; preds = %.body.thread.i.i
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !1064
  unreachable

_RNvMs_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE4sendB2x_.exit.i: ; preds = %bb.ar, %bb.aq, %bb.ao
  %i.ew = phi i64 [ 0, %bb.ao ], [ 1, %bb.aq ], [ 2, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1047
  br label %bb.dy

bb.at:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1047
  store i16 %.sroa.0.0, ptr %i.aa, align 8, !noalias !1051
  %.sroa.7.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.7.0..sroa_idx16, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.7, i64 38, i1 false), !noalias !1051
  %.sroa.8.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx22, align 8, !noalias !1051
  %.sroa.9.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx29, align 8, !noalias !1051
  %.sroa.11.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx36, align 8, !noalias !1051
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.ex = getelementptr inbounds nuw i8, ptr %.val8, i64 128 ; 5 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8, !noalias !1130 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 136 ; 6 uses
  %i.fa = load atomic ptr, ptr %i.ez acquire, align 8, !noalias !1130
  %i.fb = and i64 %i.ey, 1
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.lr.ph.i.i.i, label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2x_.exit.thread.i.i

_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE10start_sendB2x_.exit.thread.i.i: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.013.0.copyload30.i.i = load i16, ptr %i.aa, align 8, !alias.scope !1128, !noalias !1133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.5.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.7.0..sroa_idx16, i64 62, i1 false), !noalias !1133
  br label %_RNvMs1_NtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE5writeB2x_.exit.i.i

.lr.ph.lr.ph.i.i.i:                               ; preds = %bb.at
  %i.fd = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  br label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %.outer.backedge.i.i.i, %.lr.ph.lr.ph.i.i.i
  %.sroa.01.0.ph81.i.i.i = phi i64 [ %i.ey, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.01.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 2 uses
  %.sroa.09.0.ph80.i.i.i = phi ptr [ %i.fa, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.09.0.ph.be.i.i.i, %.outer.backedge.i.i.i ]
  %.sroa.0.0.ph79.i.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.0.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 2 uses
  %.sroa.036.0.ph78.i.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i.i ], [ %.sroa.036.0.ph.be.i.i.i, %.outer.backedge.i.i.i ] ; 4 uses
  %i.fe = lshr exact i64 %.sroa.01.0.ph81.i.i.i, 1
  %i.ff = and i64 %i.fe, 31                       ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 31
  br i1 %i.fg, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.au:                                            ; preds = %bb.aw
  %i.fh = lshr exact i64 %i.fq, 1
  %i.fi = and i64 %i.fh, 31                       ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 31
  br i1 %i.fj, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i4.i, %bb.au
  %.sroa.0.074.i66.i.i = phi i32 [ %.sroa.0.1.i.i15.i, %bb.au ], [ %.sroa.0.0.ph79.i.i.i, %.lr.ph.i.i4.i ] ; 5 uses
  %i.fk = icmp ult i32 %.sroa.0.074.i66.i.i, 7
  br i1 %i.fk, label %.preheader.i.i.i17.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i.i.i14.i unwind label %.loopexit.i.i.i, !noalias !1130

.loopexit.i.i.i14.i:                              ; preds = %bb.av
  %i.fl = icmp ult i32 %.sroa.0.074.i66.i.i, 11
  br i1 %i.fl, label %.loopexit.i.thread.i.i16.i, label %bb.aw

.preheader.i.i.i17.i:                             ; preds = %.lr.ph.i.i, %.preheader.i.i.i17.i
  %.sroa.0.03.i.i.i18.i = phi i32 [ %i.fm, %.preheader.i.i.i17.i ], [ 0, %.lr.ph.i.i ]
  %i.fm = add nuw nsw i32 %.sroa.0.03.i.i.i18.i, 1 ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !1130
  %.sroa.0.0.highbits.i.i.i19.i = lshr i32 %i.fm, %.sroa.0.074.i66.i.i
  %i.fn = icmp eq i32 %.sroa.0.0.highbits.i.i.i19.i, 0
  br i1 %i.fn, label %.preheader.i.i.i17.i, label %.loopexit.i.thread.i.i16.i

.loopexit.i.thread.i.i16.i:                       ; preds = %.preheader.i.i.i17.i, %.loopexit.i.i.i14.i
  %i.fo = add nuw nsw i32 %.sroa.0.074.i66.i.i, 1
  br label %bb.aw

._crit_edge.i.i:                                  ; preds = %bb.au, %.lr.ph.i.i4.i
  %.sroa.01.076.i.lcssa.i.i = phi i64 [ %.sroa.01.0.ph81.i.i.i, %.lr.ph.i.i4.i ], [ %i.fq, %bb.au ] ; 2 uses
  %.sroa.09.075.i.lcssa.i.i = phi ptr [ %.sroa.09.0.ph80.i.i.i, %.lr.ph.i.i4.i ], [ %i.fr, %bb.au ] ; 2 uses
  %.sroa.0.074.i.lcssa.i.i = phi i32 [ %.sroa.0.0.ph79.i.i.i, %.lr.ph.i.i4.i ], [ %.sroa.0.1.i.i15.i, %bb.au ] ; 4 uses
  %.lcssa.i.i = phi i64 [ %i.ff, %.lr.ph.i.i4.i ], [ %i.fi, %bb.au ] ; 2 uses
  %i.fp = icmp eq i64 %.lcssa.i.i, 30             ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.036.0.ph78.i.i.i, null
  %or.cond.i.i.i = select i1 %i.fp, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list5BlockINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3I_.exit.i.i.i

bb.aw:                                            ; preds = %.loopexit.i.thread.i.i16.i, %.loopexit.i.i.i14.i
  %.sroa.0.1.i.i15.i = phi i32 [ %i.fo, %.loopexit.i.thread.i.i16.i ], [ %.sroa.0.074.i66.i.i, %.loopexit.i.i.i14.i ] ; 2 uses
  %i.fq = load atomic i64, ptr %i.ex acquire, align 8, !noalias !1130 ; 3 uses
  %i.fr = load atomic ptr, ptr %i.ez acquire, align 8, !noalias !1130
  %i.fs = and i64 %i.fq, 1
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %bb.au, label %.outer._crit_edge.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list5BlockINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3I_.exit.i.i.i: ; preds = %bb.ax, %._crit_edge.i.i
  %.sroa.036.2.i.i.i = phi ptr [ %.sroa.036.0.ph78.i.i.i, %._crit_edge.i.i ], [ %i.fv, %bb.ax ] ; 8 uses
  %i.fu = icmp eq ptr %.sroa.09.075.i.lcssa.i.i, null
  br i1 %i.fu, label %bb.ay, label %bb.bf

bb.ax:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1130
  %i.fv = tail call noundef align 8 dereferenceable_or_null(2240) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef 2240, i64 noundef 8) #18, !noalias !1130 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %.noexc23.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list5BlockINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3I_.exit.i.i.i, !prof !29

.noexc23.i.i.i:                                   ; preds = %bb.ax
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2240) #31
          to label %.noexc.i13.i unwind label %.body.thread25.i.i, !noalias !1134

.noexc.i13.i:                                     ; preds = %.noexc23.i.i.i
  unreachable

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list5BlockINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3I_.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !1130
  %i.fx = tail call noundef align 8 dereferenceable_or_null(2240) ptr @_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed(i64 noundef 2240, i64 noundef 8) #18, !noalias !1130 ; 5 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.az, label %bb.ba, !prof !29

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2240) #31
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !1130

.noexc24.i.i.i:                                   ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.fz = cmpxchg ptr %i.ez, ptr null, ptr %i.fx release monotonic, align 8, !noalias !1130
  %i.ga = extractvalue { ptr, i1 } %i.fz, 1
  br i1 %i.ga, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store atomic ptr %i.fx, ptr %i.fd release, align 8, !noalias !1130
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.gb = icmp eq ptr %.sroa.036.2.i.i.i, null
  br i1 %i.gb, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.036.2.i.i.i, i64 noundef 2240, i64 noundef 8) #18, !noalias !1130
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gc = load atomic i64, ptr %i.ex acquire, align 8, !noalias !1130
  %i.gd = load atomic ptr, ptr %i.ez acquire, align 8, !noalias !1130
  br label %.outer.backedge.i.i.i

bb.bf:                                            ; preds = %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list5BlockINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3I_.exit.i.i.i
  %.sroa.09.1.i.i.i = phi ptr [ %.sroa.09.075.i.lcssa.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtCshhQzAC5dGUF_17crossbeam_channel7flavors4list5BlockINtNtCs95DO3lnzZ3L_4moka6future13InterruptedOpNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3I_.exit.i.i.i ], [ %i.fx, %bb.bb ] ; 3 uses
  %i.ge = add i64 %.sroa.01.076.i.lcssa.i.i, 2
  %i.gf = cmpxchg weak ptr %i.ex, i64 %.sroa.01.076.i.lcssa.i.i, i64 %i.ge seq_cst acquire, align 8, !noalias !1130 ; 2 uses
  %.sroa.18.0.in.i.i.i5.i = extractvalue { i64, i1 } %i.gf, 1
  %.sroa.01.0.i.i.i6.i = extractvalue { i64, i1 } %i.gf, 0
  br i1 %.sroa.18.0.in.i.i.i5.i, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.fp, label %bb.bh, label %.outer._crit_edge.i.i.i

bb.bh:                                            ; preds = %bb.bg
end_hunk_8
