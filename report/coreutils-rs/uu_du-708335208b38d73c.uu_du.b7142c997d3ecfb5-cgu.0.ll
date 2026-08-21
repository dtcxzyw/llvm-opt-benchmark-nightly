inline.NumInlined: 1742
inline.NumDeleted: 893
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_:bb.a
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread27: ; preds = %bb.o, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !4, !align !301, !noundef !4 ; 8 uses
  %i.ca = cmpxchg ptr %i.bz, i32 0, i32 1 acquire monotonic, align 4, !noalias !603
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.u, label %bb.t, !prof !225

bb.t:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread27
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bz) #25, !noalias !603
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread27
  %i.cc = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !603
  %i.cd = and i64 %i.cc, 9223372036854775807
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit, label %bb.v, !prof !225

bb.v:                                             ; preds = %bb.u
  %i.cf = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !603
  %i.cg = xor i1 %i.cf, true
  %i.ch = zext i1 %i.cg to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.ch, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 4, !noalias !603
  %.not.i.i.not = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit13, label %bb.w, !prof !225

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !606
  store ptr %i.bz, ptr %i.b, align 8, !noalias !606
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ck, align 8, !noalias !606
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #29, !noalias !610
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit13: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit
  %i.cl = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !611, !noalias !614, !nonnull !4, !noundef !4 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 72 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !611, !noalias !614, !noundef !4 ; 7 uses
  %.idx75 = mul nuw nsw i64 %i.cp, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx75
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %._crit_edge74, label %.lr.ph73

bb.x:                                             ; preds = %.lr.ph73
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.ct = add nuw nsw i64 %i.cw, 1
  %i.cu = icmp eq ptr %i.cs, %i.cq
  br i1 %i.cu, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit13, %bb.x
  %i.cv = phi ptr [ %i.cs, %bb.x ], [ %i.cn, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit13 ] ; 2 uses
  %i.cw = phi i64 [ %i.ct, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit13 ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !616, !noalias !621, !noundef !4
  %.not.i.i21 = icmp eq i64 %i.cy, %i.h
  br i1 %.not.i.i21, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph73
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.cz = icmp ult i64 %i.cp, 384307168202282326
  call void @llvm.assume(i1 %i.cz)
  %.not.i.i.i = icmp samesign ult i64 %i.cw, %i.cp
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.y
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cw ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.da, align 8, !noalias !632 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !632
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = xor i64 %i.cw, -1
  %i.dd = add nsw i64 %i.cp, %i.dc
  %i.de = mul nuw nsw i64 %i.dd, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.da, ptr nonnull align 8 %i.db, i64 %i.de, i1 false), !noalias !635
  %i.df = add nsw i64 %i.cp, -1                   ; 2 uses
  store i64 %i.df, ptr %i.co, align 8, !alias.scope !637, !noalias !638
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i, label %bb.ah, !prof !639

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i, %bb.y
  %i.dg = phi i64 [ %i.cp, %bb.y ], [ %i.df, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i ] ; 2 uses
  %i.dh = icmp samesign ult i64 %i.dg, 384307168202282326
  call void @llvm.assume(i1 %i.dh)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cw, i64 noundef %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #29, !noalias !640
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !4, !align !301, !noundef !4 ; 8 uses
  %i.dk = cmpxchg ptr %i.dj, i32 0, i32 1 acquire monotonic, align 4, !noalias !641
  %i.dl = extractvalue { i32, i1 } %i.dk, 1
  br i1 %i.dl, label %bb.ab, label %bb.aa, !prof !225

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dj) #25, !noalias !641
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dm = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !641
  %i.dn = and i64 %i.dm, 9223372036854775807
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit25, label %bb.ac, !prof !225

bb.ac:                                            ; preds = %bb.ab
  %i.dp = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !641
  %i.dq = xor i1 %i.dp, true
  %i.dr = zext i1 %i.dq to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit25

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit25: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i22 = phi i8 [ %i.dr, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dt = load atomic i8, ptr %i.ds monotonic, align 4, !noalias !641
  %.not.i.i23.not = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i23.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit, label %bb.ad, !prof !225

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !644
  store ptr %i.dj, ptr %i.c, align 8, !noalias !644
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i22, ptr %i.du, align 8, !noalias !644
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #29, !noalias !648
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit25
  %i.dv = trunc nuw i8 %.sroa.01.0.i.i22 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !649, !noalias !652, !nonnull !4, !noundef !4 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 72 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !649, !noalias !652, !noundef !4 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dz, 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx
  %i.eb = icmp eq i64 %i.dz, 0
  br i1 %i.eb, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  %i.ed = add nuw nsw i64 %i.eg, 1
  %i.ee = icmp eq ptr %i.ec, %i.ea
  br i1 %i.ee, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit, %bb.ae
  %i.ef = phi ptr [ %i.ec, %bb.ae ], [ %i.dx, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit ] ; 2 uses
  %i.eg = phi i64 [ %i.ed, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !654, !noalias !659, !noundef !4
  %.not.i.i27 = icmp eq i64 %i.ei, %i.h
  br i1 %.not.i.i27, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i26)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.ej = icmp ult i64 %i.dz, 384307168202282326
  call void @llvm.assume(i1 %i.ej)
  %.not.i.i.i28 = icmp samesign ult i64 %i.eg, %i.dz
  br i1 %.not.i.i.i28, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i30, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i29

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i30: ; preds = %bb.af
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.eg ; 4 uses
  %.sroa.0.0.copyload1.i.i31 = load ptr, ptr %i.ek, align 8, !noalias !670 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i32 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i32, i64 16, i1 false), !noalias !670
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = xor i64 %i.eg, -1
  %i.en = add nsw i64 %i.dz, %i.em
  %i.eo = mul nuw nsw i64 %i.en, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %i.el, i64 %i.eo, i1 false), !noalias !673
  %i.ep = add nsw i64 %i.dz, -1                   ; 2 uses
  store i64 %i.ep, ptr %i.dy, align 8, !alias.scope !675, !noalias !676
  %.not.i4.i33 = icmp eq ptr %.sroa.0.0.copyload1.i.i31, null
  br i1 %.not.i4.i33, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i29, label %bb.au, !prof !639

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i29: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i30, %bb.af
  %i.eq = phi i64 [ %i.dz, %bb.af ], [ %i.ep, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i30 ] ; 2 uses
  %i.er = icmp samesign ult i64 %i.eq, 384307168202282326
  call void @llvm.assume(i1 %i.er)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.eg, i64 noundef %i.eq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #29, !noalias !677
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.es = load atomic i8, ptr %i.j acquire, align 16
  %.not2.i = icmp eq i8 %i.es, 0
  br i1 %.not2.i, label %.lr.ph.i38, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit

.lr.ph.i38:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ev, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.et = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.et, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i38
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i38
  %.not.i.i40 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i40, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %2 = mul nuw i32 %.sroa.0.03.i, %.sroa.0.03.i   ; 2 uses
  %xtraiter = and i32 %2, 7                       ; 3 uses
  %i.eu = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.eu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %2, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod86 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !678

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.ev = add i32 %.sroa.0.03.i, 1
  %i.ew = load atomic i8, ptr %i.j acquire, align 16
  %.not.i39 = icmp eq i8 %i.ew, 0
  br i1 %.not.i39, label %.lr.ph.i38, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  %.sroa.0.0.copyload = load i128, ptr %i.f, align 16 ; 2 uses
  store i128 -1, ptr %i.f, align 16
  %.not = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.bb, label %bb.ba, !prof !165

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ex = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !680
  %i.ey = icmp eq i64 %i.ex, 1
  br i1 %i.ey, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.cl, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit
  %i.ez = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fa = and i64 %i.ez, 9223372036854775807
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, label %bb.ak, !prof !225

bb.ak:                                            ; preds = %bb.aj
  %i.fc = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.fc, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.ci monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit
  %i.fd = atomicrmw xchg ptr %i.bz, i32 0 release, align 4
  %i.fe = icmp eq i32 %i.fd, 2
  br i1 %i.fe, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit42, !prof !165

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bz) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit42

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit42: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ff, align 16
  br label %bb.an

._crit_edge74:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit13
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #29
  unreachable

bb.an:                                            ; preds = %bb.ba, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit45, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit42
  %.sroa.0.0.copyload.sink = phi i128 [ %.sroa.0.0.copyload, %bb.ba ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit45 ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit42 ]
  store i128 %.sroa.0.0.copyload.sink, ptr %0, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.fg = load i128, ptr %i.f, align 16, !range !698, !alias.scope !699, !noundef !4 ; 2 uses
  %i.fh = icmp eq i128 %i.fg, -1
  br i1 %i.fh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %.not.i.i.i.i = icmp eq i128 %i.fg, 2
  br i1 %.not.i.i.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %.val.i.i.i.i = load i64, ptr %i.fi, align 16, !range !40, !alias.scope !703, !noundef !4 ; 2 uses
  %i.fj = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %.val1.i.i.i.i = load ptr, ptr %i.fk, align 8, !alias.scope !706, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !707
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !713, !nonnull !4, !align !301, !noundef !4 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !invariant.load !4, !noalias !713 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fo = load ptr, ptr %.sroa.410.0..sroa_idx, align 16, !alias.scope !713, !nonnull !4, !noundef !4
  call void %i.fn(ptr noundef nonnull %i.fo) #31, !noalias !713, !inline_history !714
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !range !40, !invariant.load !4, !noalias !713 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.at
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.410.0..sroa_idx, align 16, !alias.scope !713, !nonnull !4, !noundef !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !range !441, !invariant.load !4, !noalias !713
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) %i.ft) #25, !noalias !713
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit: ; preds = %bb.an, %bb.ap, %bb.aq, %bb.at, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.au:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i30
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i26, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i26)
  store ptr %.sroa.0.0.copyload1.i.i31, ptr %i.d, align 8
  %i.fu = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i31, i64 1 release, align 8, !noalias !715
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit43

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit43

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit43: ; preds = %bb.au, %bb.av
  br i1 %i.dv, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit43
  %i.fw = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fx = and i64 %i.fw, 9223372036854775807
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, label %bb.ax, !prof !225

bb.ax:                                            ; preds = %bb.aw
  %i.fz = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.fz, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store atomic i8 1, ptr %i.ds monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44: ; preds = %bb.ay, %bb.ax, %bb.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit43
  %i.ga = atomicrmw xchg ptr %i.dj, i32 0 release, align 4
  %i.gb = icmp eq i32 %i.ga, 2
  br i1 %i.gb, label %bb.az, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit45, !prof !165

bb.az:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dj) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit45

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit45: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.gc, align 16
  br label %bb.an

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #29
  unreachable

bb.ba:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.410.0..sroa_idx, i64 288, i1 false)
  br label %bb.an

bb.bb:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #29
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0B1C_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(320) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(352) %1, ptr %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i39 = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [320 x i8], align 16              ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.h = load ptr, ptr %i.g, align 16, !nonnull !4, !align !301, !noundef !4
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 305
  store i8 1, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 304 ; 3 uses
  store i8 0, ptr %i.k, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.f, ptr noundef nonnull align 16 dereferenceable(304) %1, i64 304, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.m = load ptr, ptr %i.l, align 16, !nonnull !4, !align !301, !noundef !4 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.o = icmp slt i64 %i.n, 0
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0B1C_:bb.a
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread28: ; preds = %bb.o, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ca = load ptr, ptr %i.bz, align 16, !nonnull !4, !align !301, !noundef !4 ; 8 uses
  %i.cb = cmpxchg ptr %i.ca, i32 0, i32 1 acquire monotonic, align 4, !noalias !746
  %i.cc = extractvalue { i32, i1 } %i.cb, 1
  br i1 %i.cc, label %bb.u, label %bb.t, !prof !225

bb.t:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread28
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.ca) #25, !noalias !746
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread28
  %i.cd = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !746
  %i.ce = and i64 %i.cd, 9223372036854775807
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit, label %bb.v, !prof !225

bb.v:                                             ; preds = %bb.u
  %i.cg = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !746
  %i.ch = xor i1 %i.cg, true
  %i.ci = zext i1 %i.ch to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.ci, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.ck = load atomic i8, ptr %i.cj monotonic, align 4, !noalias !746
  %.not.i.i.not = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit26, label %bb.w, !prof !225

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !749
  store ptr %i.ca, ptr %i.b, align 8, !noalias !749
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cl, align 8, !noalias !749
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #29, !noalias !753
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit26: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit
  %i.cm = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !754, !noalias !757, !nonnull !4, !noundef !4 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !754, !noalias !757, !noundef !4 ; 7 uses
  %.idx76 = mul nuw nsw i64 %i.cq, 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx76
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %._crit_edge75, label %.lr.ph74

bb.x:                                             ; preds = %.lr.ph74
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.cu = add nuw nsw i64 %i.cx, 1
  %i.cv = icmp eq ptr %i.ct, %i.cr
  br i1 %i.cv, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit26, %bb.x
  %i.cw = phi ptr [ %i.ct, %bb.x ], [ %i.co, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit26 ] ; 2 uses
  %i.cx = phi i64 [ %i.cu, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit26 ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !759, !noalias !764, !noundef !4
  %.not.i.i34 = icmp eq i64 %i.cz, %i.i
  br i1 %.not.i.i34, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph74
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.da = icmp ult i64 %i.cq, 384307168202282326
  call void @llvm.assume(i1 %i.da)
  %.not.i.i.i = icmp samesign ult i64 %i.cx, %i.cq
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.y
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cx ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.db, align 8, !noalias !775 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !775
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = xor i64 %i.cx, -1
  %i.de = add nsw i64 %i.cq, %i.dd
  %i.df = mul nuw nsw i64 %i.de, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr nonnull align 8 %i.dc, i64 %i.df, i1 false), !noalias !778
  %i.dg = add nsw i64 %i.cq, -1                   ; 2 uses
  store i64 %i.dg, ptr %i.cp, align 8, !alias.scope !780, !noalias !781
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i, label %bb.ah, !prof !639

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i, %bb.y
  %i.dh = phi i64 [ %i.cq, %bb.y ], [ %i.dg, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i ] ; 2 uses
  %i.di = icmp samesign ult i64 %i.dh, 384307168202282326
  call void @llvm.assume(i1 %i.di)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cx, i64 noundef %i.dh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #29, !noalias !782
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.dk = load ptr, ptr %i.dj, align 16, !nonnull !4, !align !301, !noundef !4 ; 8 uses
  %i.dl = cmpxchg ptr %i.dk, i32 0, i32 1 acquire monotonic, align 4, !noalias !783
  %i.dm = extractvalue { i32, i1 } %i.dl, 1
  br i1 %i.dm, label %bb.ab, label %bb.aa, !prof !225

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dk) #25, !noalias !783
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dn = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !783
  %i.do = and i64 %i.dn, 9223372036854775807
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit38, label %bb.ac, !prof !225

bb.ac:                                            ; preds = %bb.ab
  %i.dq = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !783
  %i.dr = xor i1 %i.dq, true
  %i.ds = zext i1 %i.dr to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit38

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit38: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i35 = phi i8 [ %i.ds, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 2 uses
  %i.du = load atomic i8, ptr %i.dt monotonic, align 4, !noalias !783
  %.not.i.i36.not = icmp eq i8 %i.du, 0
  br i1 %.not.i.i36.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit, label %bb.ad, !prof !225

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !786
  store ptr %i.dk, ptr %i.c, align 8, !noalias !786
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i35, ptr %i.dv, align 8, !noalias !786
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #29, !noalias !790
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit38
  %i.dw = trunc nuw i8 %.sroa.01.0.i.i35 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !791, !noalias !794, !nonnull !4, !noundef !4 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !791, !noalias !794, !noundef !4 ; 7 uses
  %.idx = mul nuw nsw i64 %i.ea, 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx
  %i.ec = icmp eq i64 %i.ea, 0
  br i1 %i.ec, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  %i.ee = add nuw nsw i64 %i.eh, 1
  %i.ef = icmp eq ptr %i.ed, %i.eb
  br i1 %i.ef, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit, %bb.ae
  %i.eg = phi ptr [ %i.ed, %bb.ae ], [ %i.dy, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit ] ; 2 uses
  %i.eh = phi i64 [ %i.ee, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit ] ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !796, !noalias !801, !noundef !4
  %.not.i.i40 = icmp eq i64 %i.ej, %i.i
  br i1 %.not.i.i40, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i39)
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.ek = icmp ult i64 %i.ea, 384307168202282326
  call void @llvm.assume(i1 %i.ek)
  %.not.i.i.i41 = icmp samesign ult i64 %i.eh, %i.ea
  br i1 %.not.i.i.i41, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i43, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i42

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i43: ; preds = %bb.af
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.eh ; 4 uses
  %.sroa.0.0.copyload1.i.i44 = load ptr, ptr %i.el, align 8, !noalias !812 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i45 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i39, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i45, i64 16, i1 false), !noalias !812
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = xor i64 %i.eh, -1
  %i.eo = add nsw i64 %i.ea, %i.en
  %i.ep = mul nuw nsw i64 %i.eo, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.el, ptr nonnull align 8 %i.em, i64 %i.ep, i1 false), !noalias !815
  %i.eq = add nsw i64 %i.ea, -1                   ; 2 uses
  store i64 %i.eq, ptr %i.dz, align 8, !alias.scope !817, !noalias !818
  %.not.i4.i46 = icmp eq ptr %.sroa.0.0.copyload1.i.i44, null
  br i1 %.not.i4.i46, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i42, label %bb.au, !prof !639

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i42: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i43, %bb.af
  %i.er = phi i64 [ %i.ea, %bb.af ], [ %i.eq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i43 ] ; 2 uses
  %i.es = icmp samesign ult i64 %i.er, 384307168202282326
  call void @llvm.assume(i1 %i.es)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.eh, i64 noundef %i.er, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #29, !noalias !819
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.et = load atomic i8, ptr %i.k acquire, align 16
  %.not2.i = icmp eq i8 %i.et, 0
  br i1 %.not2.i, label %.lr.ph.i51, label %.loopexit

.lr.ph.i51:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ew, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.eu = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.eu, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i51
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i51
  %.not.i.i53 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i53, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %2 = mul nuw i32 %.sroa.0.03.i, %.sroa.0.03.i   ; 2 uses
  %xtraiter = and i32 %2, 7                       ; 3 uses
  %i.ev = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.ev, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %2, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod87 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !820

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.ew = add i32 %.sroa.0.03.i, 1
  %i.ex = load atomic i8, ptr %i.k acquire, align 16
  %.not.i52 = icmp eq i8 %i.ex, 0
  br i1 %.not.i52, label %.lr.ph.i51, label %.loopexit

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ey = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !821
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.cm, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit
  %i.fa = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fb = and i64 %i.fa, 9223372036854775807
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, label %bb.ak, !prof !225

bb.ak:                                            ; preds = %bb.aj
  %i.fd = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.fd, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.cj monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit
  %i.fe = atomicrmw xchg ptr %i.ca, i32 0 release, align 4
  %i.ff = icmp eq i32 %i.fe, 2
  br i1 %i.ff, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit55, !prof !165

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ca) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit55

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit55: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i128, ptr %i.f, align 16 ; 2 uses
  store i128 -1, ptr %i.f, align 16
  %.not25 = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not25, label %bb.an, label %.thread, !prof !165

._crit_edge75:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit26
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29
  unreachable

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit55
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #29
  unreachable

.thread:                                          ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit55, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit58
  %.sink = phi i128 [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit58 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit55 ]
  %.sroa.09.0.copyload.sink = phi i128 [ %.sroa.09.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit58 ], [ %.sroa.0.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit55 ]
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.511.0..sroa_idx, i64 288, i1 false)
  store i128 %.sink, ptr %0, align 16
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.09.0.copyload.sink, ptr %.sroa.418.0..sroa_idx, align 16
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit

.loopexit:                                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  store i128 2, ptr %0, align 16
  %.pre = load i128, ptr %i.f, align 16, !range !698, !alias.scope !830 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.fg = icmp eq i128 %.pre, -1
  br i1 %i.fg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %.not.i.i.i.i = icmp eq i128 %.pre, 2
  br i1 %.not.i.i.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %.val.i.i.i.i = load i64, ptr %i.fh, align 16, !range !40, !alias.scope !843, !noundef !4 ; 2 uses
  %i.fi = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %.val1.i.i.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !846, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !847
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit

bb.ar:                                            ; preds = %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !853, !nonnull !4, !align !301, !noundef !4 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !invariant.load !4, !noalias !853 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fo = load ptr, ptr %i.fk, align 16, !alias.scope !853, !nonnull !4, !noundef !4
  call void %i.fn(ptr noundef nonnull %i.fo) #31, !noalias !853, !inline_history !714
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !range !40, !invariant.load !4, !noalias !853 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.at
  %.val.i.i.i.i.i = load ptr, ptr %i.fk, align 16, !alias.scope !853, !nonnull !4, !noundef !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !range !441, !invariant.load !4, !noalias !853
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) %i.ft) #25, !noalias !853
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit: ; preds = %.thread, %.loopexit, %bb.ap, %bb.aq, %bb.at, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.au:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i43
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i39, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i39)
  store ptr %.sroa.0.0.copyload1.i.i44, ptr %i.d, align 8
  %i.fu = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i44, i64 1 release, align 8, !noalias !854
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit56

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit56

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit56: ; preds = %bb.au, %bb.av
  br i1 %i.dw, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit56
  %i.fw = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fx = and i64 %i.fw, 9223372036854775807
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ax, !prof !225

bb.ax:                                            ; preds = %bb.aw
  %i.fz = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.fz, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store atomic i8 1, ptr %i.dt monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57: ; preds = %bb.ay, %bb.ax, %bb.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit56
  %i.ga = atomicrmw xchg ptr %i.dk, i32 0 release, align 4
  %i.gb = icmp eq i32 %i.ga, 2
  br i1 %i.gb, label %bb.az, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit58, !prof !165

bb.az:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dk) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit58

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit58: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.09.0.copyload = load i128, ptr %i.f, align 16 ; 2 uses
  store i128 -1, ptr %i.f, align 16
  %.not23 = icmp eq i128 %.sroa.09.0.copyload, -1
  br i1 %.not23, label %bb.ba, label %.thread, !prof !165

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #29
  unreachable

bb.ba:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit58
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #29
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !301, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !564, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #31
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
end_hunk_1
begin_hunk_2_@_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter11print_stats:bb.a
  %i.bl = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.427.i.i = alloca [288 x i8], align 16    ; 4 uses
  %i.bm = alloca [40 x i8], align 8               ; 8 uses
  %i.bn = alloca [16 x i8], align 8               ; 7 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.6.i.i = alloca [288 x i8], align 16      ; 5 uses
  %i.bt = alloca [40 x i8], align 8               ; 8 uses
  %i.bu = alloca [16 x i8], align 8               ; 7 uses
  %i.bv = alloca [304 x i8], align 16             ; 20 uses
  %i.bw = alloca [48 x i8], align 8               ; 10 uses
  %i.bx = alloca [24 x i8], align 8               ; 9 uses
  %i.by = alloca [8 x i8], align 8                ; 5 uses
  %i.bz = alloca [32 x i8], align 8               ; 7 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [8 x i8], align 8                ; 4 uses
  %i.cc = alloca [8 x i8], align 8                ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 7 uses
  %.val55 = load i64, ptr %1, align 8, !range !916, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val56 = load ptr, ptr %i.ce, align 8          ; 33 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val56, i64 4 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val56, i64 24 ; 2 uses
  %i.cj = tail call nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.val56, i64 16
  %.sroa.820.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 11 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val56, i64 104
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.628.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.733.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.838.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 4 uses
  %i.cp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %.sroa.628.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.733.0..sroa_idx34.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.410.0..sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.628.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.733.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.4.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %.val56, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val56, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.7.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.sroa.59.0..sroa_idx10.i.i.i.i3.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i5.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.val56, i64 400 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val56, i64 392 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val56, i64 408
  %i.db = getelementptr inbounds nuw i8, ptr %.val56, i64 416
  %i.dc = getelementptr inbounds nuw i8, ptr %.val56, i64 384
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.59.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %.val56, i64 256
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  %.sroa.10.sroa.7.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 232
  %.sroa.10.sroa.9.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 240
  %.sroa.10.sroa.10.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 248
  %.sroa.10.sroa.11.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 256
  %.sroa.10.sroa.12.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 264
  %.sroa.10.sroa.13.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 272
  %.sroa.10.sroa.14.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 280
  %.sroa.10.sroa.15.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 288
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 97
  %.val57 = load i8, ptr %i.dk, align 1, !range !302
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 98
  %.val58 = load i8, ptr %i.dl, align 2
  %i.dm = trunc nuw i8 %.val57 to i1
  %i.dn = trunc nuw i8 %.val58 to i1
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !range !916 ; 2 uses
  %.not47 = icmp eq i64 %i.dp, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load i64, ptr %i.dq, align 8            ; 2 uses
  %i.ds = trunc nuw i64 %i.dp to i1
  %i.dt = load i64, ptr %0, align 8, !range !145
  %i.du = trunc nuw i64 %i.dt to i1               ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.dy = load i8, ptr %i.dx, align 1, !range !302
  %i.dz = trunc nuw i8 %i.dy to i1
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ec = load i8, ptr %i.eb, align 4, !range !2738
  %.not27.i = icmp eq i8 %i.ec, -1
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !4
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.phi.trans.insert12.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 7 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.6.0..sroa_idx.i.i.i74 = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.fb = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.fc = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 101 ; 2 uses
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.fn = insertelement <2 x ptr> poison, ptr %.val56, i64 0
  %i.fo = shufflevector <2 x ptr> %i.fn, <2 x ptr> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.outer

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.outer: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.outer.backedge, %bb.a
  %.sroa.03.0.ph = phi i64 [ 0, %bb.a ], [ %spec.select, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.outer.backedge ] ; 2 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.outer, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfIwuYbgPzJV_5uu_du.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !3151
  switch i64 %.val55, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.unreachabledefault [
    i64 0, label %bb.b
    i64 1, label %bb.y
    i64 2, label %bb.bf
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.unreachabledefault: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit
  unreachable

default.unreachable:                              ; preds = %bb.fw, %bb.fs, %bb.fn, %bb.fj, %bb.dd, %bb.cz
  unreachable

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !3151
  store i32 -1, ptr %i.cw, align 8, !noalias !3157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !3157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i8 0, i64 40, i1 false), !noalias !3157
  br label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !3158)
  %i.fp = load atomic i64, ptr %.val56 monotonic, align 8, !noalias !3161
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, %bb.c
  %.sroa.0.038.i.i.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.1.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i ] ; 12 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.fp, %bb.c ], [ %i.gt, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i ] ; 7 uses
  %umin683 = call i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i, i32 6) ; 2 uses
  %i.fq = mul nuw nsw i32 %umin683, %umin683      ; 2 uses
  %i.fr = load i64, ptr %i.cy, align 16, !noalias !3161, !noundef !4
  %i.fs = add i64 %i.fr, -1
  %i.ft = and i64 %i.fs, %.sroa.02.0.i.i.i        ; 3 uses
  %i.fu = load i64, ptr %i.cz, align 8, !noalias !3161, !noundef !4
  %i.fv = sub i64 0, %i.fu
  %i.fw = and i64 %.sroa.02.0.i.i.i, %i.fv
  %i.fx = load ptr, ptr %i.da, align 8, !noalias !3161, !nonnull !4, !noundef !4
  %i.fy = load i64, ptr %i.db, align 16, !noalias !3161, !noundef !4
  %i.fz = icmp ult i64 %i.ft, %i.fy
  call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw [320 x i8], ptr %i.fx, i64 %i.ft ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 304
  %i.gc = load atomic i64, ptr %i.gb acquire, align 8, !noalias !3161 ; 3 uses
  %i.gd = add i64 %.sroa.02.0.i.i.i, 1
  %i.ge = icmp eq i64 %i.gd, %i.gc
  br i1 %i.ge, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gf = icmp eq i64 %i.gc, %.sroa.02.0.i.i.i
  br i1 %i.gf, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.gg = add nuw i64 %i.ft, 1
  %i.gh = load i64, ptr %i.dc, align 128, !noalias !3161, !noundef !4
  %i.gi = icmp ult i64 %i.gg, %i.gh
  br i1 %i.gi, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.gj = icmp ult i32 %.sroa.0.038.i.i.i, 7
  br i1 %i.gj, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3161
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i: ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i
  %2 = mul nuw i32 %.sroa.0.038.i.i.i, %.sroa.0.038.i.i.i ; 2 uses
  %xtraiter677 = and i32 %2, 7                    ; 3 uses
  %i.gk = icmp ult i32 %.sroa.0.038.i.i.i, 3
  br i1 %i.gk, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter681 = and i32 %2, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter682 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter682.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  %niter682.next.7 = add i32 %niter682, 8         ; 2 uses
  %niter682.ncmp.7 = icmp eq i32 %niter682.next.7, %unroll_iter681
  br i1 %niter682.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit549.unr-lcssa, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.e
  fence seq_cst
  %i.gl = load atomic i64, ptr %i.cv monotonic, align 16, !noalias !3161 ; 2 uses
  %i.gm = load i64, ptr %i.cy, align 16, !noalias !3161, !noundef !4 ; 2 uses
  %i.gn = xor i64 %i.gm, -1
  %i.go = and i64 %i.gl, %i.gn
  %i.gp = icmp eq i64 %i.go, %.sroa.02.0.i.i.i
  br i1 %i.gp, label %bb.j, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i: ; preds = %bb.i
  %..i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %..i.i.i.i.i, %..i.i.i.i.i ; 2 uses
  %.not.i13.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i, 0
  br i1 %.not.i13.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i16.i.i.i.preheader

.lr.ph.i16.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i
  %xtraiter684 = and i32 %3, 5                    ; 3 uses
  %i.gq = icmp ult i32 %.sroa.0.038.i.i.i, 3
  br i1 %i.gq, label %.lr.ph.i16.i.i.i.epil.preheader, label %.lr.ph.i16.i.i.i.preheader.new

.lr.ph.i16.i.i.i.preheader.new:                   ; preds = %.lr.ph.i16.i.i.i.preheader
  %unroll_iter688 = and i32 %3, 56
  br label %.lr.ph.i16.i.i.i

.lr.ph.i16.i.i.i:                                 ; preds = %.lr.ph.i16.i.i.i, %.lr.ph.i16.i.i.i.preheader.new
  %niter689 = phi i32 [ 0, %.lr.ph.i16.i.i.i.preheader.new ], [ %niter689.next.7, %.lr.ph.i16.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  %niter689.next.7 = add i32 %niter689, 8         ; 2 uses
  %niter689.ncmp.7 = icmp eq i32 %niter689.next.7, %unroll_iter688
  br i1 %niter689.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit548.unr-lcssa, label %.lr.ph.i16.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.gr = and i64 %i.gm, %i.gl
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i
  %lcmp.mod693.not = icmp eq i32 %xtraiter691, 0
  br i1 %lcmp.mod693.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i26.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.preheader
  %lcmp.mod694 = icmp ne i32 %xtraiter691, 0
  call void @llvm.assume(i1 %lcmp.mod694)
  br label %.lr.ph.i26.i.i.i.epil

.lr.ph.i26.i.i.i.epil:                            ; preds = %.lr.ph.i26.i.i.i.epil, %.lr.ph.i26.i.i.i.epil.preheader
  %epil.iter692 = phi i32 [ 0, %.lr.ph.i26.i.i.i.epil.preheader ], [ %epil.iter692.next, %.lr.ph.i26.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3161
  %epil.iter692.next = add i32 %epil.iter692, 1   ; 2 uses
  %epil.iter692.cmp.not = icmp eq i32 %epil.iter692.next, %xtraiter691
  br i1 %epil.iter692.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i26.i.i.i.epil, !llvm.loop !3162

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit548.unr-lcssa: ; preds = %.lr.ph.i16.i.i.i
  %lcmp.mod686.not = icmp eq i32 %xtraiter684, 0
  br i1 %lcmp.mod686.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i16.i.i.i.epil.preheader

.lr.ph.i16.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit548.unr-lcssa, %.lr.ph.i16.i.i.i.preheader
  %lcmp.mod687 = icmp ne i32 %xtraiter684, 0
  call void @llvm.assume(i1 %lcmp.mod687)
  br label %.lr.ph.i16.i.i.i.epil

.lr.ph.i16.i.i.i.epil:                            ; preds = %.lr.ph.i16.i.i.i.epil, %.lr.ph.i16.i.i.i.epil.preheader
  %epil.iter685 = phi i32 [ 0, %.lr.ph.i16.i.i.i.epil.preheader ], [ %epil.iter685.next, %.lr.ph.i16.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3161
  %epil.iter685.next = add i32 %epil.iter685, 1   ; 2 uses
  %epil.iter685.cmp.not = icmp eq i32 %epil.iter685.next, %xtraiter684
  br i1 %epil.iter685.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i16.i.i.i.epil, !llvm.loop !3163

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit549.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod679.not = icmp eq i32 %xtraiter677, 0
  br i1 %lcmp.mod679.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit549.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod680 = icmp ne i32 %xtraiter677, 0
  call void @llvm.assume(i1 %lcmp.mod680)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter678 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter678.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3161
  %epil.iter678.next = add i32 %epil.iter678, 1   ; 2 uses
  %epil.iter678.cmp.not = icmp eq i32 %epil.iter678.next, %xtraiter677
  br i1 %epil.iter678.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !3164

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit549.unr-lcssa, %.lr.ph.i.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit548.unr-lcssa, %.lr.ph.i16.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i, %bb.h
  %i.gt = load atomic i64, ptr %.val56 monotonic, align 16, !noalias !3161
  %.sroa.0.1.i.i.i = add i32 %.sroa.0.038.i.i.i, 1
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.gu = load i64, ptr %i.cz, align 8, !noalias !3161, !noundef !4
  %i.gv = add i64 %i.gu, %i.fw
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.01.0.i.i.i = phi i64 [ %i.gv, %bb.k ], [ %i.gc, %bb.f ]
  %i.gw = cmpxchg weak ptr %.val56, i64 %.sroa.02.0.i.i.i, i64 %.sroa.01.0.i.i.i seq_cst monotonic, align 8, !noalias !3161
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.gw, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i: ; preds = %bb.l
  %.not.i23.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i, 0
  br i1 %.not.i23.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i26.i.i.i.preheader

.lr.ph.i26.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i
  %xtraiter691 = and i32 %i.fq, 7                 ; 3 uses
  %i.gx = icmp ult i32 %.sroa.0.038.i.i.i, 3
  br i1 %i.gx, label %.lr.ph.i26.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.preheader.new

.lr.ph.i26.i.i.i.preheader.new:                   ; preds = %.lr.ph.i26.i.i.i.preheader
  %unroll_iter695 = and i32 %i.fq, 56
  br label %.lr.ph.i26.i.i.i

.lr.ph.i26.i.i.i:                                 ; preds = %.lr.ph.i26.i.i.i, %.lr.ph.i26.i.i.i.preheader.new
  %niter696 = phi i32 [ 0, %.lr.ph.i26.i.i.i.preheader.new ], [ %niter696.next.7, %.lr.ph.i26.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  call void @llvm.x86.sse2.pause(), !noalias !3161
  %niter696.next.7 = add i32 %niter696, 8         ; 2 uses
  %niter696.ncmp.7 = icmp eq i32 %niter696.next.7, %unroll_iter695
  br i1 %niter696.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i: ; preds = %bb.j
  %i.gy = load i32, ptr %i.cw, align 8, !range !565, !noalias !3157, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i32 %i.gy, -1
  br i1 %.not.i.i, label %bb.n, label %bb.m

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.v

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i: ; preds = %bb.l
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ga, i64 304
  store ptr %i.ga, ptr %i.bt, align 8, !alias.scope !3158, !noalias !3157
  %i.ha = load i64, ptr %i.cz, align 8, !noalias !3161, !noundef !4
  %i.hb = add i64 %i.ha, %.sroa.02.0.i.i.i        ; 2 uses
  store i64 %i.hb, ptr %i.cx, align 8, !alias.scope !3158, !noalias !3157
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.0.0.copyload4.i.i = load i128, ptr %i.ga, align 16, !noalias !3157 ; 2 uses
  %.sroa.6.0..val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.0..val.sroa_idx.i.i, i64 288, i1 false), !noalias !3157
  store atomic i64 %i.hb, ptr %i.gz release, align 16, !noalias !3165
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.dd) #31, !noalias !3165
  %i.hc = icmp eq i128 %.sroa.0.0.copyload4.i.i, -1
  br i1 %i.hc, label %bb.v, label %bb.w

bb.m:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i
  %i.hd = load i64, ptr %i.bu, align 8, !noalias !3157, !noundef !4 ; 2 uses
  %i.he = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #25, !noalias !3157 ; 2 uses
  %i.hf = extractvalue { i64, i32 } %i.he, 0      ; 2 uses
  %i.hg = icmp eq i64 %i.hf, %i.hd
  br i1 %i.hg, label %.split.i.i, label %bb.t

bb.n:                                             ; preds = %bb.t, %.split.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !3168
  store ptr %i.bt, ptr %i.bs, align 8, !noalias !3157
  store ptr %.val56, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3157
  store ptr %i.bu, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !3157
  %i.hh = load i8, ptr %i.cq, align 8, !range !144, !noalias !3171, !noundef !4
  %i.hi = icmp eq i8 %i.hh, 1
  br i1 %i.hi, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, !prof !225

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.n
  %i.hj = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsfIwuYbgPzJV_5uu_du(ptr noundef nonnull align 8 %i.cp, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #25, !noalias !3168 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs_0uEB3Q_.exit.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, %bb.n
  %.sroa.0.0.i.i.i2.i.i.i.i = phi ptr [ %i.hj, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i ], [ %i.cp, %bb.n ] ; 4 uses
  %i.hl = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !3168, !noundef !4 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !3168
  %.not.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.q, !prof !165

bb.o:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !3168
  %i.hm = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #25, !noalias !3168 ; 3 uses
  store ptr %i.hm, ptr %i.br, align 8, !noalias !3168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !3168
  store ptr %i.bt, ptr %i.bq, align 8, !noalias !3168
  store ptr %.val56, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i, align 8, !noalias !3157
  store ptr %i.bu, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i, align 8, !noalias !3157
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bq, ptr nonnull %i.hm) #31, !noalias !3168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !3168
  %i.hn = atomicrmw sub ptr %i.hm, i64 1 release, align 8, !noalias !3178
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.br) #28, !noalias !3168
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !3168
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i

bb.q:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store atomic i64 0, ptr %i.hp release, align 8, !noalias !3168
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  store atomic ptr null, ptr %i.hq release, align 8, !noalias !3168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !3168
  store ptr %i.bt, ptr %i.bp, align 8, !noalias !3168
  store ptr %.val56, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i, align 8, !noalias !3157
  store ptr %i.bu, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i, align 8, !noalias !3157
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bp, ptr nonnull %i.hl) #31, !noalias !3168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !3168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !3168
  %i.hr = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !3168, !noundef !4 ; 3 uses
  store ptr %i.hr, ptr %i.bo, align 8, !noalias !3168
  store ptr %i.hl, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !3168
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ht = atomicrmw sub ptr %i.hr, i64 1 release, align 8, !noalias !3185
  %i.hu = icmp eq i64 %i.ht, 1
  br i1 %i.hu, label %bb.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bo) #28, !noalias !3168
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !3168
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs_0uEB3Q_.exit.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs0_0B2e_(ptr nonnull %i.bs) #31, !noalias !3168
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs_0uEB3Q_.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !3168
  br label %bb.c

.split.i.i:                                       ; preds = %bb.m
  %i.hv = extractvalue { i64, i32 } %i.he, 1      ; 2 uses
  %i.hw = icmp ult i32 %i.hv, 1000000000
  call void @llvm.assume(i1 %i.hw)
  %.not17.i.i = icmp samesign ult i32 %i.hv, %i.gy
  br i1 %.not17.i.i, label %bb.n, label %bb.u

bb.t:                                             ; preds = %bb.m
  %.not16.i.i = icmp slt i64 %i.hf, %i.hd
  br i1 %.not16.i.i, label %bb.n, label %bb.u

bb.u:                                             ; preds = %bb.t, %.split.i.i
  store i8 0, ptr %.sroa.445.0..sroa_idx.i.i, align 16, !alias.scope !3154, !noalias !3151
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i

bb.v:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i
  store i8 1, ptr %.sroa.445.0..sroa_idx.i.i, align 16, !alias.scope !3154, !noalias !3151
  br label %bb.x

bb.w:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.445.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.i.i, i64 288, i1 false), !noalias !3151
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge.i.i = phi i128 [ %.sroa.0.0.copyload4.i.i, %bb.w ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i: ; preds = %bb.x, %bb.u
  %i.hx = phi i128 [ -1, %bb.u ], [ %storemerge.i.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !3157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !3151
  br label %bb.cv

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3194)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !3151
  store i32 -1, ptr %i.cr, align 8, !noalias !3197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !3197
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, i8 0, i64 40, i1 false), !noalias !3197
  br label %bb.z

bb.z:                                             ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !3198)
  %i.hy = load atomic i64, ptr %.val56 acquire, align 8, !noalias !3201
  %i.hz = load atomic ptr, ptr %i.cu acquire, align 8, !noalias !3201
  br label %bb.aa

bb.aa:                                            ; preds = %.backedge.i.i.i, %bb.z
  %.sroa.0.043.i.i.i = phi i32 [ 0, %bb.z ], [ %.sroa.0.043.be.i.i.i, %.backedge.i.i.i ] ; 14 uses
  %.sroa.012.0.i.i.i = phi ptr [ %i.hz, %bb.z ], [ %i.ij, %.backedge.i.i.i ] ; 8 uses
  %.sroa.07.0.i.i.i = phi i64 [ %i.hy, %bb.z ], [ %i.ii, %.backedge.i.i.i ] ; 5 uses
  %i.ia = lshr i64 %.sroa.07.0.i.i.i, 1           ; 2 uses
  %i.ib = and i64 %i.ia, 31                       ; 6 uses
  %i.ic = icmp eq i64 %i.ib, 31
  br i1 %i.ic, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.id = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.id, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i: ; preds = %bb.ab
  %.not.i.i.i20.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i.i.i20.i, label %.backedge.i.i.i, label %.lr.ph.i.i.i23.i.preheader

.lr.ph.i.i.i23.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i
  %4 = mul nuw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter653 = and i32 %4, 7                    ; 3 uses
  %i.ie = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.ie, label %.lr.ph.i.i.i23.i.epil.preheader, label %.lr.ph.i.i.i23.i.preheader.new

.lr.ph.i.i.i23.i.preheader.new:                   ; preds = %.lr.ph.i.i.i23.i.preheader
  %unroll_iter657 = and i32 %4, 56
  br label %.lr.ph.i.i.i23.i

.lr.ph.i.i.i23.i:                                 ; preds = %.lr.ph.i.i.i23.i, %.lr.ph.i.i.i23.i.preheader.new
  %niter658 = phi i32 [ 0, %.lr.ph.i.i.i23.i.preheader.new ], [ %niter658.next.7, %.lr.ph.i.i.i23.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  %niter658.next.7 = add i32 %niter658, 8         ; 2 uses
  %niter658.ncmp.7 = icmp eq i32 %niter658.next.7, %unroll_iter657
  br i1 %niter658.ncmp.7, label %.backedge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i23.i

bb.ac:                                            ; preds = %bb.aa
  %i.if = add i64 %.sroa.07.0.i.i.i, 2            ; 2 uses
  %i.ig = and i64 %.sroa.07.0.i.i.i, 1
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %bb.ad, label %bb.ag

.backedge.sink.split.i.i.i:                       ; preds = %bb.ai, %bb.ab
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3201
  br label %.backedge.i.i.i

.backedge.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i.i23.i
  %lcmp.mod655.not = icmp eq i32 %xtraiter653, 0
  br i1 %lcmp.mod655.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i23.i.epil.preheader

.lr.ph.i.i.i23.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.preheader
  %lcmp.mod656 = icmp ne i32 %xtraiter653, 0
  call void @llvm.assume(i1 %lcmp.mod656)
  br label %.lr.ph.i.i.i23.i.epil

.lr.ph.i.i.i23.i.epil:                            ; preds = %.lr.ph.i.i.i23.i.epil, %.lr.ph.i.i.i23.i.epil.preheader
  %epil.iter654 = phi i32 [ 0, %.lr.ph.i.i.i23.i.epil.preheader ], [ %epil.iter654.next, %.lr.ph.i.i.i23.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3201
  %epil.iter654.next = add i32 %epil.iter654, 1   ; 2 uses
  %epil.iter654.cmp.not = icmp eq i32 %epil.iter654.next, %xtraiter653
  br i1 %epil.iter654.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i23.i.epil, !llvm.loop !3202

.backedge.i.i.i.loopexit550.unr-lcssa:            ; preds = %.lr.ph.i23.i.i.i
  %lcmp.mod649.not = icmp eq i32 %xtraiter647, 0
  br i1 %lcmp.mod649.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil.preheader

.lr.ph.i23.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit550.unr-lcssa, %.lr.ph.i23.i.i.i.preheader
  %lcmp.mod650 = icmp ne i32 %xtraiter647, 0
  call void @llvm.assume(i1 %lcmp.mod650)
  br label %.lr.ph.i23.i.i.i.epil

.lr.ph.i23.i.i.i.epil:                            ; preds = %.lr.ph.i23.i.i.i.epil, %.lr.ph.i23.i.i.i.epil.preheader
  %epil.iter648 = phi i32 [ 0, %.lr.ph.i23.i.i.i.epil.preheader ], [ %epil.iter648.next, %.lr.ph.i23.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3201
  %epil.iter648.next = add i32 %epil.iter648, 1   ; 2 uses
  %epil.iter648.cmp.not = icmp eq i32 %epil.iter648.next, %xtraiter647
  br i1 %epil.iter648.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil, !llvm.loop !3203

.backedge.i.i.i.loopexit551.unr-lcssa:            ; preds = %.lr.ph.i33.i.i.i
  %lcmp.mod641.not = icmp eq i32 %xtraiter639, 0
  br i1 %lcmp.mod641.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil.preheader

.lr.ph.i33.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit551.unr-lcssa, %.lr.ph.i33.i.i.i.preheader
  %lcmp.mod642 = icmp ne i32 %xtraiter639, 0
  call void @llvm.assume(i1 %lcmp.mod642)
  br label %.lr.ph.i33.i.i.i.epil

.lr.ph.i33.i.i.i.epil:                            ; preds = %.lr.ph.i33.i.i.i.epil, %.lr.ph.i33.i.i.i.epil.preheader
  %epil.iter640 = phi i32 [ 0, %.lr.ph.i33.i.i.i.epil.preheader ], [ %epil.iter640.next, %.lr.ph.i33.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3201
  %epil.iter640.next = add i32 %epil.iter640, 1   ; 2 uses
  %epil.iter640.cmp.not = icmp eq i32 %epil.iter640.next, %xtraiter639
  br i1 %epil.iter640.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil, !llvm.loop !3204

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.loopexit551.unr-lcssa, %.lr.ph.i33.i.i.i.epil, %.backedge.i.i.i.loopexit550.unr-lcssa, %.lr.ph.i23.i.i.i.epil, %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i, %.backedge.sink.split.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i
  %i.ii = load atomic i64, ptr %.val56 acquire, align 8, !noalias !3201
  %i.ij = load atomic ptr, ptr %i.cu acquire, align 8, !noalias !3201
  %.sroa.0.043.be.i.i.i = add i32 %.sroa.0.043.i.i.i, 1
  br label %bb.aa

bb.ad:                                            ; preds = %bb.ac
  fence seq_cst
  %i.ik = load atomic i64, ptr %i.cv monotonic, align 8, !noalias !3201 ; 3 uses
  %i.il = lshr i64 %i.ik, 1
  %i.im = icmp eq i64 %i.ia, %i.il
  br i1 %i.im, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.unshifted.i.i.i = xor i64 %i.ik, %.sroa.07.0.i.i.i
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %i.in = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.if, %i.in
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.io = and i64 %i.ik, 1
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i

bb.ag:                                            ; preds = %bb.ae, %bb.ac
  %.sroa.01.0.i.i7.i = phi i64 [ %i.if, %bb.ac ], [ %spec.select.i.i.i, %bb.ae ] ; 2 uses
  %i.iq = icmp eq ptr %.sroa.012.0.i.i.i, null
  br i1 %i.iq, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ir = cmpxchg weak ptr %.val56, i64 %.sroa.07.0.i.i.i, i64 %.sroa.01.0.i.i7.i seq_cst acquire, align 8, !noalias !3201
  %.sroa.18.0.in.i.i.i8.i = extractvalue { i64, i1 } %i.ir, 1
  br i1 %.sroa.18.0.in.i.i.i8.i, label %bb.aj, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.is = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.is, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i: ; preds = %bb.ai
  %.not.i20.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i20.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.preheader

.lr.ph.i23.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i
  %5 = mul nuw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter647 = and i32 %5, 7                    ; 3 uses
  %i.it = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.it, label %.lr.ph.i23.i.i.i.epil.preheader, label %.lr.ph.i23.i.i.i.preheader.new

.lr.ph.i23.i.i.i.preheader.new:                   ; preds = %.lr.ph.i23.i.i.i.preheader
  %unroll_iter651 = and i32 %5, 56
  br label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %.lr.ph.i23.i.i.i, %.lr.ph.i23.i.i.i.preheader.new
  %niter652 = phi i32 [ 0, %.lr.ph.i23.i.i.i.preheader.new ], [ %niter652.next.7, %.lr.ph.i23.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  %niter652.next.7 = add i32 %niter652, 8         ; 2 uses
  %niter652.ncmp.7 = icmp eq i32 %niter652.next.7, %unroll_iter651
  br i1 %niter652.ncmp.7, label %.backedge.i.i.i.loopexit550.unr-lcssa, label %.lr.ph.i23.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i: ; preds = %bb.ah
  %..i.i.i.i9.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i.i.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %..i.i.i.i9.i, %..i.i.i.i9.i ; 2 uses
  %.not.i30.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i30.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.preheader

.lr.ph.i33.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i
  %xtraiter639 = and i32 %6, 5                    ; 3 uses
  %i.iu = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.iu, label %.lr.ph.i33.i.i.i.epil.preheader, label %.lr.ph.i33.i.i.i.preheader.new

.lr.ph.i33.i.i.i.preheader.new:                   ; preds = %.lr.ph.i33.i.i.i.preheader
  %unroll_iter643 = and i32 %6, 56
  br label %.lr.ph.i33.i.i.i

.lr.ph.i33.i.i.i:                                 ; preds = %.lr.ph.i33.i.i.i, %.lr.ph.i33.i.i.i.preheader.new
  %niter644 = phi i32 [ 0, %.lr.ph.i33.i.i.i.preheader.new ], [ %niter644.next.7, %.lr.ph.i33.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  %niter644.next.7 = add i32 %niter644, 8         ; 2 uses
  %niter644.ncmp.7 = icmp eq i32 %niter644.next.7, %unroll_iter643
  br i1 %niter644.ncmp.7, label %.backedge.i.i.i.loopexit551.unr-lcssa, label %.lr.ph.i33.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.iv = icmp eq i64 %i.ib, 30
  br i1 %i.iv, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 9920 ; 2 uses
  %i.ix = load atomic ptr, ptr %i.iw acquire, align 8, !noalias !3201 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextB1x_.exit.i.i.i

.lr.ph.i37.i.i.i:                                 ; preds = %bb.ak, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %i.jb, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.ak ] ; 6 uses
  %i.iz = icmp ult i32 %.sroa.0.02.i.i.i.i, 7
  br i1 %i.iz, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i37.i.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3201
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i: ; preds = %.lr.ph.i37.i.i.i
  %.not.i.i.i.i10.i = icmp eq i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %.not.i.i.i.i10.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i
  %7 = mul nuw i32 %.sroa.0.02.i.i.i.i, %.sroa.0.02.i.i.i.i ; 2 uses
  %xtraiter661 = and i32 %7, 7                    ; 3 uses
  %i.ja = icmp ult i32 %.sroa.0.02.i.i.i.i, 3
  br i1 %i.ja, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter665 = and i32 %7, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter666 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter666.next.7, %.lr.ph.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  call void @llvm.x86.sse2.pause(), !noalias !3201
  %niter666.next.7 = add i32 %niter666, 8         ; 2 uses
  %niter666.ncmp.7 = icmp eq i32 %niter666.next.7, %unroll_iter665
  br i1 %niter666.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod663.not = icmp eq i32 %xtraiter661, 0
  br i1 %lcmp.mod663.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod664 = icmp ne i32 %xtraiter661, 0
  call void @llvm.assume(i1 %lcmp.mod664)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter662 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter662.next, %.lr.ph.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3201
  %epil.iter662.next = add i32 %epil.iter662, 1   ; 2 uses
  %epil.iter662.cmp.not = icmp eq i32 %epil.iter662.next, %xtraiter661
  br i1 %epil.iter662.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !3205

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i, %bb.al
  %i.jb = add i32 %.sroa.0.02.i.i.i.i, 1
  %i.jc = load atomic ptr, ptr %i.iw acquire, align 8, !noalias !3201 ; 2 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextB1x_.exit.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextB1x_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.ak
  %.lcssa.i.i.i.i = phi ptr [ %i.ix, %bb.ak ], [ %i.jc, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.je = and i64 %.sroa.01.0.i.i7.i, -2
  %i.jf = add i64 %i.je, 2
  %i.jg = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i, i64 9920
  %i.jh = load atomic ptr, ptr %i.jg monotonic, align 8, !noalias !3201
  %i.ji = icmp ne ptr %i.jh, null
  %i.jj = zext i1 %i.ji to i64
  %spec.select17.i.i.i = or disjoint i64 %i.jf, %i.jj
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.cu release, align 8, !noalias !3201
  store atomic i64 %spec.select17.i.i.i, ptr %.val56 release, align 8, !noalias !3201
  br label %bb.am

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i: ; preds = %bb.af
  %i.jk = load i32, ptr %i.cr, align 8, !range !565, !noalias !3197, !noundef !4 ; 2 uses
  %.not.i11.i = icmp eq i32 %i.jk, -1
  br i1 %.not.i11.i, label %bb.aw, label %bb.av

bb.am:                                            ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextB1x_.exit.i.i.i, %bb.aj
  store ptr %.sroa.012.0.i.i.i, ptr %i.cs, align 8, !alias.scope !3198, !noalias !3197
  store i64 %i.ib, ptr %i.ct, align 8, !alias.scope !3198, !noalias !3197
  %i.jl = getelementptr inbounds nuw [320 x i8], ptr %.sroa.012.0.i.i.i, i64 %i.ib ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 304 ; 3 uses
  %i.jn = load atomic i64, ptr %i.jm acquire, align 8, !noalias !3206
  %i.jo = and i64 %i.jn, 1
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i

.lr.ph.i.i6.i.i:                                  ; preds = %bb.am, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i
  %.sroa.0.02.i.i7.i.i = phi i32 [ %i.js, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i ], [ 0, %bb.am ] ; 6 uses
  %i.jq = icmp ult i32 %.sroa.0.02.i.i7.i.i, 7
  br i1 %i.jq, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i6.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3206
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i: ; preds = %.lr.ph.i.i6.i.i
  %.not.i.i.i11.i.i = icmp eq i32 %.sroa.0.02.i.i7.i.i, 0
  br i1 %.not.i.i.i11.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.preheader

.lr.ph.i.i.i14.i.i.preheader:                     ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i
  %8 = mul nuw i32 %.sroa.0.02.i.i7.i.i, %.sroa.0.02.i.i7.i.i ; 2 uses
  %xtraiter669 = and i32 %8, 7                    ; 3 uses
  %i.jr = icmp ult i32 %.sroa.0.02.i.i7.i.i, 3
  br i1 %i.jr, label %.lr.ph.i.i.i14.i.i.epil.preheader, label %.lr.ph.i.i.i14.i.i.preheader.new

.lr.ph.i.i.i14.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i14.i.i.preheader
  %unroll_iter673 = and i32 %8, 56
  br label %.lr.ph.i.i.i14.i.i

.lr.ph.i.i.i14.i.i:                               ; preds = %.lr.ph.i.i.i14.i.i, %.lr.ph.i.i.i14.i.i.preheader.new
  %niter674 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.preheader.new ], [ %niter674.next.7, %.lr.ph.i.i.i14.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3206
  call void @llvm.x86.sse2.pause(), !noalias !3206
  call void @llvm.x86.sse2.pause(), !noalias !3206
  call void @llvm.x86.sse2.pause(), !noalias !3206
  call void @llvm.x86.sse2.pause(), !noalias !3206
  call void @llvm.x86.sse2.pause(), !noalias !3206
  call void @llvm.x86.sse2.pause(), !noalias !3206
  call void @llvm.x86.sse2.pause(), !noalias !3206
  %niter674.next.7 = add i32 %niter674, 8         ; 2 uses
  %niter674.ncmp.7 = icmp eq i32 %niter674.next.7, %unroll_iter673
  br i1 %niter674.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i.i
  %lcmp.mod671.not = icmp eq i32 %xtraiter669, 0
  br i1 %lcmp.mod671.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil.preheader

.lr.ph.i.i.i14.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.preheader
  %lcmp.mod672 = icmp ne i32 %xtraiter669, 0
  call void @llvm.assume(i1 %lcmp.mod672)
  br label %.lr.ph.i.i.i14.i.i.epil

.lr.ph.i.i.i14.i.i.epil:                          ; preds = %.lr.ph.i.i.i14.i.i.epil, %.lr.ph.i.i.i14.i.i.epil.preheader
  %epil.iter670 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.epil.preheader ], [ %epil.iter670.next, %.lr.ph.i.i.i14.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3206
  %epil.iter670.next = add i32 %epil.iter670, 1   ; 2 uses
  %epil.iter670.cmp.not = icmp eq i32 %epil.iter670.next, %xtraiter669
  br i1 %epil.iter670.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil, !llvm.loop !3209

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i, %bb.an
  %i.js = add i32 %.sroa.0.02.i.i7.i.i, 1
  %i.jt = load atomic i64, ptr %i.jm acquire, align 8, !noalias !3206
  %i.ju = and i64 %i.jt, 1
  %i.jv = icmp eq i64 %i.ju, 0
  br i1 %i.jv, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, %bb.am
  %.sroa.026.0.copyload.i.i = load i128, ptr %i.jl, align 16, !noalias !3206 ; 2 uses
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.427.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.427.0..sroa_idx.i.i, i64 288, i1 false), !noalias !3197
  %i.jw = add nuw nsw i64 %i.ib, 1                ; 2 uses
  %i.jx = icmp eq i64 %i.jw, 31
  br i1 %i.jx, label %.lr.ph.i1.i.i.i, label %bb.ar

.lr.ph.i1.i.i.i:                                  ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i, %bb.aq
  %.sroa.0.03.i.i4.i.i = phi i64 [ %i.kg, %bb.aq ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [320 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.03.i.i4.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 304 ; 2 uses
  %i.ka = load atomic i64, ptr %i.jz acquire, align 8, !noalias !3206
  %i.kb = and i64 %i.ka, 2
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %bb.ao, label %.lr.ph.i1.i.i.i.1

bb.ao:                                            ; preds = %.lr.ph.i1.i.i.i
  %i.kd = atomicrmw or ptr %i.jz, i64 4 acq_rel, align 8, !noalias !3206
  %i.ke = and i64 %i.kd, 2
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %.lr.ph.i1.i.i.i.1

.lr.ph.i1.i.i.i.1:                                ; preds = %bb.ao, %.lr.ph.i1.i.i.i
  %i.kg = add nuw nsw i64 %.sroa.0.03.i.i4.i.i, 2 ; 2 uses
  %i.kh = getelementptr inbounds nuw [320 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.03.i.i4.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 624 ; 2 uses
  %i.kj = load atomic i64, ptr %i.ki acquire, align 8, !noalias !3206
  %i.kk = and i64 %i.kj, 2
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i1.i.i.i.1
  %i.km = atomicrmw or ptr %i.ki, i64 4 acq_rel, align 8, !noalias !3206
  %i.kn = and i64 %i.km, 2
  %i.ko = icmp eq i64 %i.kn, 0
  br i1 %i.ko, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i1.i.i.i.1
  %exitcond.not.i.i5.i.i.1 = icmp eq i64 %i.kg, 30
  br i1 %exitcond.not.i.i5.i.i.1, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE7destroyB1x_.exit.sink.split.i.i.i, label %.lr.ph.i1.i.i.i

bb.ar:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i
  %i.kp = atomicrmw or ptr %i.jm, i64 2 acq_rel, align 8, !noalias !3206
  %i.kq = and i64 %i.kp, 4
  %i.kr = icmp eq i64 %i.kq, 0
  br i1 %i.kr, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %bb.as

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE7destroyB1x_.exit.sink.split.i.i.i: ; preds = %bb.au, %bb.aq, %bb.as
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i.i, i64 noundef 9936, i64 noundef 16) #25, !noalias !3206
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ks = icmp samesign ult i64 %i.ib, 29
  br i1 %i.ks, label %.lr.ph.i3.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE7destroyB1x_.exit.sink.split.i.i.i

.lr.ph.i3.i.i.i:                                  ; preds = %bb.as, %bb.au
  %.sroa.0.03.i4.i.i.i = phi i64 [ %i.kt, %bb.au ], [ %i.jw, %bb.as ] ; 2 uses
  %i.kt = add nuw nsw i64 %.sroa.0.03.i4.i.i.i, 1 ; 2 uses
  %i.ku = getelementptr inbounds nuw [320 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.03.i4.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 304 ; 2 uses
  %i.kw = load atomic i64, ptr %i.kv acquire, align 8, !noalias !3206
  %i.kx = and i64 %i.kw, 2
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i3.i.i.i
  %i.kz = atomicrmw or ptr %i.kv, i64 4 acq_rel, align 8, !noalias !3206
  %i.la = and i64 %i.kz, 2
  %i.lb = icmp eq i64 %i.la, 0
  br i1 %i.lb, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i3.i.i.i
  %exitcond.not.i5.i.i.i = icmp eq i64 %i.kt, 30
  br i1 %exitcond.not.i5.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE7destroyB1x_.exit.sink.split.i.i.i, label %.lr.ph.i3.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i: ; preds = %bb.at, %bb.ao, %bb.ap, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE7destroyB1x_.exit.sink.split.i.i.i, %bb.ar
  %i.lc = icmp eq i128 %.sroa.026.0.copyload.i.i, -1
  br i1 %i.lc, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i, label %bb.be

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i
  %i.ld = load i64, ptr %i.bn, align 8, !noalias !3197, !noundef !4 ; 2 uses
  %i.le = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #25, !noalias !3197 ; 2 uses
  %i.lf = extractvalue { i64, i32 } %i.le, 0      ; 2 uses
  %i.lg = icmp eq i64 %i.lf, %i.ld
  br i1 %i.lg, label %.split.i17.i, label %bb.bc

bb.aw:                                            ; preds = %bb.bc, %.split.i17.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !3210
  store ptr %i.bm, ptr %i.bl, align 8, !noalias !3197
  store ptr %.val56, ptr %.sroa.4.0..sroa_idx.i1.i, align 8, !noalias !3197
  store ptr %i.bn, ptr %.sroa.7.0..sroa_idx.i2.i, align 8, !noalias !3197
  %i.lh = load i8, ptr %i.cq, align 8, !range !144, !noalias !3213, !noundef !4
  %i.li = icmp eq i8 %i.lh, 1
  br i1 %i.li, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i13.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i12.i, !prof !225

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i12.i: ; preds = %bb.aw
  %i.lj = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsfIwuYbgPzJV_5uu_du(ptr noundef nonnull align 8 %i.cp, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #25, !noalias !3210 ; 2 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs_0uEB3Q_.exit.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i13.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i13.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i12.i, %bb.aw
  %.sroa.0.0.i.i.i2.i.i.i14.i = phi ptr [ %i.lj, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i12.i ], [ %i.cp, %bb.aw ] ; 4 uses
  %i.ll = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !3210, !noundef !4 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !3210
  %.not.i.i.i18.i.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i18.i.i, label %bb.ax, label %bb.az, !prof !165

bb.ax:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !3210
  %i.lm = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #25, !noalias !3210 ; 3 uses
  store ptr %i.lm, ptr %i.bk, align 8, !noalias !3210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !3210
  store ptr %i.bm, ptr %i.bj, align 8, !noalias !3210
  store ptr %.val56, ptr %.sroa.5.0..sroa_idx5.i.i.i.i5.i, align 8, !noalias !3197
  store ptr %i.bn, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i6.i, align 8, !noalias !3197
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bj, ptr nonnull %i.lm) #31, !noalias !3210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !3210
  %i.ln = atomicrmw sub ptr %i.lm, i64 1 release, align 8, !noalias !3220
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %bb.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i16.i

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bk) #28, !noalias !3210
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i16.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i16.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !3210
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i

bb.az:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i13.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  store atomic i64 0, ptr %i.lp release, align 8, !noalias !3210
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  store atomic ptr null, ptr %i.lq release, align 8, !noalias !3210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !3210
  store ptr %i.bm, ptr %i.bi, align 8, !noalias !3210
  store ptr %.val56, ptr %.sroa.59.0..sroa_idx10.i.i.i.i3.i, align 8, !noalias !3197
  store ptr %i.bn, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i4.i, align 8, !noalias !3197
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bi, ptr nonnull %i.ll) #31, !noalias !3210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !3210
  %i.lr = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !3210, !noundef !4 ; 3 uses
  store ptr %i.lr, ptr %i.bh, align 8, !noalias !3210
  store ptr %i.ll, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !3210
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i15.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lt = atomicrmw sub ptr %i.lr, i64 1 release, align 8, !noalias !3227
  %i.lu = icmp eq i64 %i.lt, 1
  br i1 %i.lu, label %bb.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i15.i

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bh) #28, !noalias !3210
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i15.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i15.i: ; preds = %bb.bb, %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !3210
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs_0uEB3Q_.exit.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i12.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs0_0B2e_(ptr nonnull %i.bl) #31, !noalias !3210
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs_0uEB3Q_.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i15.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !3210
  br label %bb.z

.split.i17.i:                                     ; preds = %bb.av
  %i.lv = extractvalue { i64, i32 } %i.le, 1      ; 2 uses
  %i.lw = icmp ult i32 %i.lv, 1000000000
  call void @llvm.assume(i1 %i.lw)
  %.not33.i.i = icmp samesign ult i32 %i.lv, %i.jk
  br i1 %.not33.i.i, label %bb.aw, label %bb.bd

bb.bc:                                            ; preds = %bb.av
  %.not32.i.i = icmp slt i64 %i.lf, %i.ld
  br i1 %.not32.i.i, label %bb.aw, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.split.i17.i
  store i8 0, ptr %.sroa.445.0..sroa_idx.i.i, align 16, !alias.scope !3194, !noalias !3151
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i: ; preds = %bb.af, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i
  store i8 1, ptr %.sroa.445.0..sroa_idx.i.i, align 16, !alias.scope !3194, !noalias !3151
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i

bb.be:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.445.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.427.i.i, i64 288, i1 false), !noalias !3151
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i: ; preds = %bb.be, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i, %bb.bd
  %.sink.i = phi i128 [ -1, %bb.bd ], [ -1, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i ], [ %.sroa.026.0.copyload.i.i, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !3197
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !3151
  br label %bb.cv

bb.bf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3236)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.724.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !3151
  store i32 -1, ptr %i.cf, align 8, !noalias !3239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !3239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i8 0, i64 40, i1 false), !noalias !3239
  %i.lx = cmpxchg ptr %.val56, i32 0, i32 1 acquire monotonic, align 4, !noalias !3240
  %i.ly = extractvalue { i32, i1 } %i.lx, 1
  br i1 %i.ly, label %bb.bh, label %bb.bg, !prof !225

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.val56) #25, !noalias !3240
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.lz = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3240
  %i.ma = and i64 %i.lz, 9223372036854775807
  %i.mb = icmp eq i64 %i.ma, 0
  br i1 %i.mb, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i.i, label %bb.bi, !prof !225

bb.bi:                                            ; preds = %bb.bh
  %i.mc = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !3240
  %i.md = xor i1 %i.mc, true
  %i.me = zext i1 %i.md to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.bi, %bb.bh
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.me, %bb.bi ], [ 0, %bb.bh ] ; 5 uses
  %i.mf = load atomic i8, ptr %i.ch monotonic, align 1, !noalias !3240
  %.not.i.i.not.i.i = icmp eq i8 %i.mf, 0
  br i1 %.not.i.i.not.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit.i.i, label %bb.bj, !prof !225

bb.bj:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !3243
  store ptr %.val56, ptr %i.bd, align 8, !noalias !3243
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.mg, align 8, !noalias !3243
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #29, !noalias !3247
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i.i
  %i.mh = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3248)
  %i.mi = load i64, ptr %i.ci, align 8, !alias.scope !3248, !noalias !3251, !noundef !4 ; 6 uses
  %i.mj = icmp ult i64 %i.mi, 384307168202282326
  call void @llvm.assume(i1 %i.mj)
  %i.mk = icmp eq i64 %i.mi, 0
  br i1 %i.mk, label %.loopexit.i.i, label %bb.bk

bb.bk:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit.i.i
  %i.ml = load ptr, ptr %i.cl, align 8, !alias.scope !3248, !noalias !3251, !nonnull !4, !noundef !4 ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.mi, 24
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i27.i

.lr.ph.i.i.i27.i:                                 ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, %bb.bk
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.nh, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i ], [ 0, %bb.bk ] ; 5 uses
  %i.mn = phi ptr [ %i.mo, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i ], [ %i.ml, %bb.bk ] ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3253)
  %i.mp = load ptr, ptr %i.mn, align 8, !alias.scope !3253, !noalias !3256, !nonnull !4, !noundef !4 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 40
  %i.mr = load i64, ptr %i.mq, align 8, !noalias !3260, !noundef !4
  %.not.i.i.i.i28.i = icmp eq i64 %i.mr, %i.ck
  br i1 %.not.i.i.i.i28.i, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i27.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mt = load i64, ptr %i.ms, align 8, !alias.scope !3253, !noalias !3256, !noundef !4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mv = cmpxchg ptr %i.mu, i64 0, i64 %i.mt acq_rel acquire, align 8, !noalias !3260
  %i.mw = extractvalue { i64, i1 } %i.mv, 1
  br i1 %i.mw, label %bb.bm, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !3253, !noalias !3256, !noundef !4 ; 2 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.na = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  store atomic ptr %i.my, ptr %i.na release, align 8, !noalias !3260
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !noalias !3260, !nonnull !4, !noundef !4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 40 ; 2 uses
  %i.ne = atomicrmw xchg ptr %i.nd, i32 1 release, align 4, !noalias !3260
  %i.nf = icmp eq i32 %i.ne, -1
  br i1 %i.nf, label %bb.bp, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.ng = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.nd) #25, !noalias !3260 ; 0 uses
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.bl, %.lr.ph.i.i.i27.i
  %i.nh = add nuw nsw i64 %.sroa.02.010.i.i.i.i, 1
  %i.ni = icmp eq ptr %i.mo, %i.mm
  br i1 %i.ni, label %.loopexit.i.i, label %.lr.ph.i.i.i27.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %i.nj = icmp samesign ult i64 %.sroa.02.010.i.i.i.i, %i.mi
  call void @llvm.assume(i1 %i.nj)
  call void @llvm.experimental.noalias.scope.decl(metadata !3261)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3264)
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %i.ml, i64 %.sroa.02.010.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i = load ptr, ptr %i.nk, align 8, !noalias !3267 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !3267
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.nm = xor i64 %.sroa.02.010.i.i.i.i, -1
  %i.nn = add nsw i64 %i.mi, %i.nm
  %i.no = mul nuw nsw i64 %i.nn, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nk, ptr nonnull align 8 %i.nl, i64 %i.no, i1 false), !noalias !3270
  %i.np = add nsw i64 %i.mi, -1                   ; 2 uses
  store i64 %i.np, ptr %i.ci, align 8, !alias.scope !3272, !noalias !3273
  %.not.i.i5.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i, null
  br i1 %.not.i.i5.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i, label %bb.bq, !prof !639

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.010.i.i.i.i, i64 noundef %i.np, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #29, !noalias !3274
  unreachable

bb.bq:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !3239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.820.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, i64 16, i1 false), !noalias !3239
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i, ptr %i.be, align 8, !noalias !3239
  %i.nq = load ptr, ptr %i.cm, align 8, !noalias !3239, !noundef !4
  store ptr %i.nq, ptr %i.cg, align 8, !noalias !3239
  br i1 %i.mh, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nr = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3239
  %i.ns = and i64 %i.nr, 9223372036854775807
  %i.nt = icmp eq i64 %i.ns, 0
  br i1 %i.nt, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !225

bb.bs:                                            ; preds = %bb.br
  %i.nu = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !3239
  br i1 %i.nu, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store atomic i8 1, ptr %i.ch monotonic, align 4, !noalias !3239
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.nv = atomicrmw xchg ptr %.val56, i32 0 release, align 4, !noalias !3239
  %i.nw = icmp eq i32 %i.nv, 2
  br i1 %i.nw, label %bb.bu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit.i.i, !prof !165

bb.bu:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.val56) #25, !noalias !3239
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.bu, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %.val4.i.i = load ptr, ptr %i.cg, align 8, !noalias !3239, !noundef !4 ; 11 uses
  %i.nx = icmp eq ptr %.val4.i.i, null
  br i1 %i.nx, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit.i.i
  %i.ny = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 305
  %i.nz = load i8, ptr %i.ny, align 1, !range !302, !noalias !3275, !noundef !4
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ob = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 304 ; 2 uses
  %i.oc = load atomic i8, ptr %i.ob acquire, align 1, !noalias !3275
  %.not2.i.i.i.i = icmp eq i8 %i.oc, 0
  br i1 %.not2.i.i.i.i, label %.lr.ph.i.i6.i35.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit.i.i.i

.lr.ph.i.i6.i35.i:                                ; preds = %bb.bw, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i
  %.sroa.0.03.i.i.i36.i = phi i32 [ %i.of, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i ], [ 0, %bb.bw ] ; 6 uses
  %i.od = icmp ult i32 %.sroa.0.03.i.i.i36.i, 7
  br i1 %i.od, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i6.i35.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3275
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i: ; preds = %.lr.ph.i.i6.i35.i
  %.not.i.i.i8.i.i = icmp eq i32 %.sroa.0.03.i.i.i36.i, 0
  br i1 %.not.i.i.i8.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, label %.lr.ph.i.i.i.i42.i.preheader

.lr.ph.i.i.i.i42.i.preheader:                     ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i
  %9 = mul nuw i32 %.sroa.0.03.i.i.i36.i, %.sroa.0.03.i.i.i36.i ; 2 uses
  %xtraiter = and i32 %9, 7                       ; 3 uses
  %i.oe = icmp ult i32 %.sroa.0.03.i.i.i36.i, 3
  br i1 %i.oe, label %.lr.ph.i.i.i.i42.i.epil.preheader, label %.lr.ph.i.i.i.i42.i.preheader.new

.lr.ph.i.i.i.i42.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i42.i.preheader
  %unroll_iter = and i32 %9, 56
  br label %.lr.ph.i.i.i.i42.i

.lr.ph.i.i.i.i42.i:                               ; preds = %.lr.ph.i.i.i.i42.i, %.lr.ph.i.i.i.i42.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i42.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3275
  call void @llvm.x86.sse2.pause(), !noalias !3275
  call void @llvm.x86.sse2.pause(), !noalias !3275
  call void @llvm.x86.sse2.pause(), !noalias !3275
  call void @llvm.x86.sse2.pause(), !noalias !3275
  call void @llvm.x86.sse2.pause(), !noalias !3275
  call void @llvm.x86.sse2.pause(), !noalias !3275
  call void @llvm.x86.sse2.pause(), !noalias !3275
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i42.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i42.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, label %.lr.ph.i.i.i.i42.i.epil.preheader

.lr.ph.i.i.i.i42.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.preheader
  %lcmp.mod638 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod638)
  br label %.lr.ph.i.i.i.i42.i.epil

.lr.ph.i.i.i.i42.i.epil:                          ; preds = %.lr.ph.i.i.i.i42.i.epil, %.lr.ph.i.i.i.i42.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i42.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3275
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, label %.lr.ph.i.i.i.i42.i.epil, !llvm.loop !3278

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i, %bb.bx
  %i.of = add i32 %.sroa.0.03.i.i.i36.i, 1
  %i.og = load atomic i8, ptr %i.ob acquire, align 1, !noalias !3275
  %.not.i.i7.i.i = icmp eq i8 %i.og, 0
  br i1 %.not.i.i7.i.i, label %.lr.ph.i.i6.i35.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit.i.i.i

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, %bb.bw
  %.sroa.08.0.copyload.i.i.i = load i128, ptr %.val4.i.i, align 16, !noalias !3275 ; 2 uses
  store i128 -1, ptr %.val4.i.i, align 16, !noalias !3275
  %.not.i.i34.i = icmp eq i128 %.sroa.08.0.copyload.i.i.i, -1
  br i1 %.not.i.i34.i, label %bb.bz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEB2l_.exit.i.i.i, !prof !165

bb.by:                                            ; preds = %bb.bv
  %.sroa.0.0.copyload.i.i.i = load i128, ptr %.val4.i.i, align 16, !noalias !3275 ; 2 uses
  store i128 -1, ptr %.val4.i.i, align 16, !noalias !3275
  %.not18.i.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %.not18.i.i.i, label %bb.cb, label %bb.ca, !prof !165

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEB2l_.exit.i.i.i: ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit.i.i.i
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.724.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.510.0..sroa_idx.i.i.i, i64 288, i1 false), !noalias !3239
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef 320, i64 noundef 16) #25, !noalias !3275
  br label %bb.cc

bb.bz:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #29, !noalias !3275
  unreachable

bb.ca:                                            ; preds = %bb.by
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.724.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.0..sroa_idx.i.i.i, i64 288, i1 false), !noalias !3239
  %i.oh = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 304
  store atomic i8 1, ptr %i.oh release, align 16, !noalias !3275
  br label %bb.cc

bb.cb:                                            ; preds = %bb.by
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #29, !noalias !3275
  unreachable

.loopexit.i.i:                                    ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit.i.i
  %i.oi = load i8, ptr %i.cn, align 8, !range !302, !noalias !3239, !noundef !4
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %bb.cq, label %bb.cf

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit.i.i
  store i8 1, ptr %.sroa.445.0..sroa_idx.i.i, align 16, !alias.scope !3236, !noalias !3151
  store i128 -1, ptr %i.bv, align 16, !alias.scope !3236, !noalias !3151
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEB2l_.exit.i.i.i
  %.sroa.023.0.ph.i.i = phi i128 [ %.sroa.0.0.copyload.i.i.i, %bb.ca ], [ %.sroa.08.0.copyload.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEB2l_.exit.i.i.i ] ; 2 uses
  store i128 %.sroa.023.0.ph.i.i, ptr %i.bv, align 16, !alias.scope !3236, !noalias !3151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.445.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.724.i.i, i64 288, i1 false), !noalias !3151
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i
  %.pre45.i = phi i128 [ %.sroa.023.0.ph.i.i, %bb.cc ], [ -1, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i ]
  %i.ok = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i.i.i, i64 1 release, align 8, !noalias !3279
  %i.ol = icmp eq i64 %i.ok, 1
  br i1 %i.ol, label %bb.ce, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit.i.i

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.be) #28, !noalias !3239
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3239
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i

bb.cf:                                            ; preds = %.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !3239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !3291
  store ptr %i.bf, ptr %i.bc, align 8, !noalias !3293
  store ptr %i.bg, ptr %.sroa.628.0..sroa_idx.i.i, align 8, !noalias !3293
  store <2 x ptr> %i.fo, ptr %.sroa.733.0..sroa_idx.i.i, align 8, !noalias !3293
  store i8 %.sroa.01.0.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !3293
  %i.om = load i8, ptr %i.cq, align 8, !range !144, !noalias !3294, !noundef !4
  %i.on = icmp eq i8 %i.om, 1
  br i1 %i.on, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i30.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i29.i, !prof !225

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i29.i: ; preds = %bb.cf
  %i.oo = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsfIwuYbgPzJV_5uu_du(ptr noundef nonnull align 8 %i.cp, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #25, !noalias !3303 ; 2 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i30.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i30.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i29.i, %bb.cf
  %.sroa.0.0.i.i.i2.i.i.i31.i = phi ptr [ %i.oo, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i29.i ], [ %i.cp, %bb.cf ] ; 4 uses
  %i.oq = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !3304, !noundef !4 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !3304
  %.not.i.i.i9.i.i = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i9.i.i, label %bb.cg, label %bb.ci, !prof !165

bb.cg:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !3304
  %i.or = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #25, !noalias !3304 ; 3 uses
  store ptr %i.or, ptr %i.bb, align 8, !noalias !3304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !3304
  store i8 2, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !3304
  store ptr %i.bf, ptr %i.az, align 8, !noalias !3293
  store ptr %i.bg, ptr %.sroa.628.0..sroa_idx31.i.i, align 8, !noalias !3293
  store <2 x ptr> %i.fo, ptr %.sroa.733.0..sroa_idx36.i.i, align 8, !noalias !3293
  store i8 %.sroa.01.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i, align 8, !noalias !3304
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(304) %i.ba, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.az, ptr nonnull %i.or) #31, !noalias !3291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3304
  %i.os = atomicrmw sub ptr %i.or, i64 1 release, align 8, !noalias !3307
  %i.ot = icmp eq i64 %i.os, 1
  br i1 %i.ot, label %bb.ch, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i33.i

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bb) #28, !noalias !3304
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i33.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i33.i: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !3304
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.i.i.i

bb.ci:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i30.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  store atomic i64 0, ptr %i.ou release, align 8, !noalias !3304
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  store atomic ptr null, ptr %i.ov release, align 8, !noalias !3304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !3304
  store i8 2, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !3304
  store ptr %i.bf, ptr %i.ay, align 8, !noalias !3293
  store ptr %i.bg, ptr %.sroa.628.0..sroa_idx29.i.i, align 8, !noalias !3293
  store <2 x ptr> %i.fo, ptr %.sroa.733.0..sroa_idx34.i.i, align 8, !noalias !3293
  store i8 %.sroa.01.0.i.i.i.i, ptr %.sroa.410.0..sroa_idx11.i.i.i.i.i, align 8, !noalias !3304
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(304) %i.ba, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ay, ptr nonnull %i.oq) #31, !noalias !3291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !3304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !3304
  %i.ow = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !3304, !noundef !4 ; 3 uses
  store ptr %i.ow, ptr %i.ax, align 8, !noalias !3304
  store ptr %i.oq, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !3304
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i32.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.oy = atomicrmw sub ptr %i.ow, i64 1 release, align 8, !noalias !3314
  %i.oz = icmp eq i64 %i.oy, 1
  br i1 %i.oz, label %bb.ck, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i32.i

bb.ck:                                            ; preds = %bb.cj
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ax) #28, !noalias !3304
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i32.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i32.i: ; preds = %bb.ck, %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3304
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.i.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i32.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i33.i
  %.sroa.04.0.copyload5.i.i.i = load i128, ptr %i.ba, align 16, !noalias !3291 ; 2 uses
  %i.pa = icmp eq i128 %.sroa.04.0.copyload5.i.i.i, -2
  br i1 %i.pa, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.thread.i.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.i.i.i
  store i128 %.sroa.04.0.copyload5.i.i.i, ptr %i.bv, align 16, !alias.scope !3323, !noalias !3324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.445.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(288) %i.co, i64 288, i1 false), !noalias !3324
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB1z_B1y_NtNtB7_4mpsc16RecvTimeoutErrorEEB2c_.exit.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.thread.i.i.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.i.i.i, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i29.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4zeroINtB1b_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB1B_B1A_NtNtB9_4mpsc16RecvTimeoutErrorEEs0_0B2e_(ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(304) %i.bv, ptr nonnull %i.bc) #31, !noalias !3324
  %.val3.pre.i.i.i = load i8, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !range !144, !noalias !3291 ; 2 uses
  %.val2.i.i.i = load ptr, ptr %.sroa.838.0..sroa_idx.i.i, align 8, !noalias !3291 ; 4 uses
  %i.pb = icmp eq i8 %.val3.pre.i.i.i, 2
  br i1 %i.pb, label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB1z_B1y_NtNtB7_4mpsc16RecvTimeoutErrorEEB2c_.exit.i.i, label %bb.cl

bb.cl:                                            ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.thread.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i) ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 4
  %i.pd = trunc nuw i8 %.val3.pre.i.i.i to i1
  br i1 %i.pd, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pe = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3291
  %i.pf = and i64 %i.pe, 9223372036854775807
  %i.pg = icmp eq i64 %i.pf, 0
  br i1 %i.pg, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.cn, !prof !225

bb.cn:                                            ; preds = %bb.cm
  %i.ph = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !3291
  br i1 %i.ph, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store atomic i8 1, ptr %i.pc monotonic, align 1, !noalias !3291
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl
  %i.pi = atomicrmw xchg ptr %.val2.i.i.i, i32 0 release, align 4, !noalias !3291
  %i.pj = icmp eq i32 %i.pi, 2
  br i1 %i.pj, label %bb.cp, label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB1z_B1y_NtNtB7_4mpsc16RecvTimeoutErrorEEB2c_.exit.i.i, !prof !165

bb.cp:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val2.i.i.i) #25, !noalias !3291
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB1z_B1y_NtNtB7_4mpsc16RecvTimeoutErrorEEB2c_.exit.i.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB1z_B1y_NtNtB7_4mpsc16RecvTimeoutErrorEEB2c_.exit.i.i: ; preds = %bb.cp, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.thread.i.i.i, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !3291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3239
  %.pre.pre.i = load i128, ptr %i.bv, align 16, !noalias !3151
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i
end_hunk_2
begin_hunk_3_@_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtCsfIwuYbgPzJV_5uu_du8FileInfouNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertBP_:bb.a

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsfIwuYbgPzJV_5uu_du8FileInfouEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0EBS_.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !3690, !noalias !3701, !nonnull !4, !noundef !4 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.n, align 8, !alias.scope !3690, !noalias !3701, !noundef !4 ; 4 uses
  %i.o = lshr i64 %i.i, 57
  %i.p = trunc nuw nsw i64 %i.o to i8             ; 3 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsfIwuYbgPzJV_5uu_du8FileInfouEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0EBS_.exit.i
  %.pn.i.i = phi i64 [ %i.i, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsfIwuYbgPzJV_5uu_du8FileInfouEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0EBS_.exit.i ], [ %i.as, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsfIwuYbgPzJV_5uu_du8FileInfouEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0EBS_.exit.i ], [ %.sroa.4.124.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsfIwuYbgPzJV_5uu_du8FileInfouEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0EBS_.exit.i ], [ %.sroa.04.126.i.i, %bb.f ]
  %i.s = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsfIwuYbgPzJV_5uu_du8FileInfouEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0EBS_.exit.i ], [ %i.ar, %bb.f ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i31.i.i = load <16 x i8>, ptr %i.t, align 1, !noalias !3702 ; 3 uses
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, %i.r
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not32.i.i = icmp eq i16 %i.v, 0
  br i1 %.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.033.i.i = phi i16 [ %i.ah, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.w = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i, i1 true)
  %i.x = zext nneg i16 %i.w to i64
  %i.y = add i64 %.sroa.0.021.i.i, %i.x
  %i.z = and i64 %i.y, %.val5.i
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -32
  %.val2.i.i.i = load i128, ptr %i.ac, align 16, !noalias !3705, !noundef !4
  %i.ad = getelementptr i8, ptr %i.ab, i64 -16
  %.val3.i.i.i = load i64, ptr %i.ad, align 16, !noalias !3705
  %i.ae = icmp eq i128 %1, %.val2.i.i.i
  %i.af = icmp eq i64 %2, %.val3.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsfIwuYbgPzJV_5uu_du8FileInfouEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB1U_11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0EBS_.exit, label %bb.d, !prof !225

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !165

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ag = add i16 %.sroa.01.033.i.i, -1
  %i.ah = and i16 %i.ag, %.sroa.01.033.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i, zeroinitializer
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread28.i.i, !prof !165

.thread28.i.i:                                    ; preds = %bb.e
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.0.021.i.i, %i.al
  %i.an = and i64 %i.am, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread28.i.i, %._crit_edge.i.i
  %.sroa.4.125.i.i = phi i64 [ %i.an, %.thread28.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, splat (i8 -1)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.g, !prof !165

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.126.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.124.i.i = phi i64 [ %.sroa.4.125.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ar = add i64 %i.s, 16                        ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.0.021.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.125.i.i
  %i.au = load i8, ptr %i.at, align 1, !noalias !3708, !noundef !4 ; 2 uses
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %bb.h, label %bb.i, !prof !165

bb.h:                                             ; preds = %bb.g
  %.val2.i23.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !3708
  %i.aw = icmp slt <16 x i8> %.val2.i23.i.i, zeroinitializer
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.ax, 0
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true)
  %i.az = zext nneg i16 %i.ay to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.az
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !3709
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ba = phi i8 [ %.pre, %bb.h ], [ %i.au, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.az, %bb.h ], [ %.sroa.4.125.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3709)
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.bc = and i8 %i.ba, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bf = and i64 %i.be, %.val5.i
  store i8 %i.p, ptr %i.bb, align 1, !noalias !3709
  %i.bg = getelementptr i8, ptr %.val.i, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  store i8 %i.p, ptr %i.bh, align 1, !noalias !3709
  %i.bi = load <2 x i64>, ptr %i.j, align 8, !alias.scope !3709
  %i.bj = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bd, i64 0
  %i.bk = sub <2 x i64> %i.bi, %i.bj
  store <2 x i64> %i.bk, ptr %i.j, align 8, !alias.scope !3709
  %i.bl = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bm = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -32
  store i128 %1, ptr %i.bn, align 16, !noalias !3709
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -16
  store i64 %2, ptr %i.bo, align 16, !noalias !3709
  br label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsfIwuYbgPzJV_5uu_du8FileInfouEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB1U_11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0EBS_.exit

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTNtCsfIwuYbgPzJV_5uu_du8FileInfouEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB1U_11make_hasherBQ_uNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE0EBS_.exit: ; preds = %.lr.ph.i.i, %bb.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1s_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(304) %0, i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(304) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [352 x i8], align 16              ; 15 uses
  %i.c = alloca [352 x i8], align 16              ; 15 uses
  %i.d = alloca [320 x i8], align 16              ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [352 x i8], align 16              ; 18 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [288 x i8], align 16        ; 10 uses
  %.sroa.6.i = alloca [288 x i8], align 16        ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [320 x i8], align 16              ; 18 uses
  %.sroa.6 = alloca [288 x i8], align 16          ; 6 uses
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.v
    i64 2, label %bb.an
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.0.0.copyload = load i128, ptr %1, align 16 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i32 -1, ptr %i.s, align 8, !noalias !3712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3712
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false), !noalias !3712
  %i.w = load atomic i64, ptr %i.u monotonic, align 8, !noalias !3716 ; 2 uses
  %i.x = load i64, ptr %i.v, align 16, !noalias !3716, !noundef !4 ; 2 uses
  %i.y = and i64 %i.x, %i.w
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i, %.lr.ph.i.lr.ph.i
  %i.ag = phi i64 [ %i.x, %.lr.ph.i.lr.ph.i ], [ %i.cq, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i ]
  %i.ah = phi i64 [ %i.w, %.lr.ph.i.lr.ph.i ], [ %i.cp, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3719)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %i.ai = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.bl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ]
  %.sroa.02.043.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %i.bk, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 8 uses
  %.sroa.0.03842.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 12 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.aj = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.ak = add i64 %i.ai, -1
  %i.al = and i64 %i.ak, %.sroa.02.043.i.i        ; 3 uses
  %i.am = load i64, ptr %i.aa, align 8, !noalias !3721, !noundef !4
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %.sroa.02.043.i.i, %i.an
  %i.ap = load ptr, ptr %i.ab, align 8, !noalias !3721, !nonnull !4, !noundef !4
  %i.aq = load i64, ptr %i.ac, align 16, !noalias !3721, !noundef !4
  %i.ar = icmp ult i64 %i.al, %i.aq
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [320 x i8], ptr %i.ap, i64 %i.al ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !3721 ; 2 uses
  %i.av = icmp eq i64 %.sroa.02.043.i.i, %i.au
  br i1 %i.av, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i64, ptr %i.aa, align 8, !noalias !3721, !noundef !4
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %.sroa.02.043.i.i, 1
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ba = add nuw i64 %i.al, 1
  %i.bb = load i64, ptr %i.ad, align 128, !noalias !3721, !noundef !4
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bd = icmp ult i32 %.sroa.0.03842.i.i, 7
  br i1 %i.bd, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3721
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i
  %2 = mul nuw i32 %.sroa.0.03842.i.i, %.sroa.0.03842.i.i ; 2 uses
  %xtraiter155 = and i32 %2, 7                    ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.be, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter159 = and i32 %2, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter160 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter160.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  %niter160.next.7 = add i32 %niter160, 8         ; 2 uses
  %niter160.ncmp.7 = icmp eq i32 %niter160.next.7, %unroll_iter159
  br i1 %niter160.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.bf = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !3721
  %i.bg = load i64, ptr %i.aa, align 8, !noalias !3721, !noundef !4
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = icmp eq i64 %i.bh, %.sroa.02.043.i.i
  br i1 %i.bi, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %..i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i     ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter161 = and i32 %3, 5                    ; 3 uses
  %i.bj = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bj, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter165 = and i32 %3, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter166 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter166.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  %niter166.next.7 = add i32 %niter166, 8         ; 2 uses
  %niter166.ncmp.7 = icmp eq i32 %niter166.next.7, %unroll_iter165
  br i1 %niter166.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod170.not = icmp eq i32 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod171 = icmp ne i32 %xtraiter168, 0
  call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter169 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter169.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3721
  %epil.iter169.next = add i32 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i32 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !3722

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod163.not = icmp eq i32 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod164 = icmp ne i32 %xtraiter161, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter162 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter162.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3721
  %epil.iter162.next = add i32 %epil.iter162, 1   ; 2 uses
  %epil.iter162.cmp.not = icmp eq i32 %epil.iter162.next, %xtraiter161
  br i1 %epil.iter162.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !3723

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod157.not = icmp eq i32 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod158 = icmp ne i32 %xtraiter155, 0
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter156 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter156.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3721
  %epil.iter156.next = add i32 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i32 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !3724

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bk = load atomic i64, ptr %i.u monotonic, align 16, !noalias !3721 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03842.i.i, 1
  %i.bl = load i64, ptr %i.v, align 16, !noalias !3721, !noundef !4 ; 2 uses
  %i.bm = and i64 %i.bl, %i.bk
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.c, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bo = load i64, ptr %i.aa, align 8, !noalias !3721, !noundef !4
  %i.bp = add i64 %i.bo, %i.ao
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bq = add i64 %.sroa.02.043.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.bq, %bb.j ], [ %i.bp, %bb.i ]
  %i.br = cmpxchg weak ptr %i.u, i64 %.sroa.02.043.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !3721
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.br, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter168 = and i32 %i.aj, 7                 ; 3 uses
  %i.bs = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bs, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter172 = and i32 %i.aj, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter173 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter173.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  call void @llvm.x86.sse2.pause(), !noalias !3721
  %niter173.next.7 = add i32 %niter173, 8         ; 2 uses
  %niter173.ncmp.7 = icmp eq i32 %niter173.next.7, %unroll_iter172
  br i1 %niter173.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i: ; preds = %bb.h
  %i.bt = load i32, ptr %i.s, align 8, !range !565, !noalias !3712, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.bt, -1
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i: ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  store ptr %i.as, ptr %i.p, align 8, !alias.scope !3719, !noalias !3712
  %i.bv = add i64 %.sroa.02.043.i.i, 1            ; 2 uses
  store i64 %i.bv, ptr %i.t, align 8, !alias.scope !3719, !noalias !3712
  store i128 %.sroa.0.0.copyload, ptr %i.as, align 16, !noalias !3725
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.0..val.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false), !noalias !3728
  store atomic i64 %i.bv, ptr %i.bu release, align 16, !noalias !3729
  %i.bw = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bw) #31, !noalias !3729
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i: ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.b
  %.not7.i = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not7.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit, label %bb.u

bb.l:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i
  %i.bx = load i64, ptr %i.q, align 8, !noalias !3712, !noundef !4 ; 2 uses
  %i.by = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #25, !noalias !3712 ; 2 uses
  %i.bz = extractvalue { i64, i32 } %i.by, 0      ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.bx
  br i1 %i.ca, label %.split.i, label %bb.s

bb.m:                                             ; preds = %bb.s, %.split.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3731
  store ptr %i.p, ptr %i.o, align 8, !noalias !3712
  store ptr %.8.val, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !3712
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3712
  %i.cb = load i8, ptr %i.af, align 8, !range !144, !noalias !3734, !noundef !4
  %i.cc = icmp eq i8 %i.cb, 1
  br i1 %i.cc, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i, !prof !225

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i: ; preds = %bb.m
  %i.cd = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsfIwuYbgPzJV_5uu_du(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #25, !noalias !3731 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uEB3Q_.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.cd, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i ], [ %i.ae, %bb.m ] ; 4 uses
  %i.cf = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3731, !noundef !4 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3731
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.p, !prof !165

bb.n:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3731
  %i.cg = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #25, !noalias !3731 ; 3 uses
  store ptr %i.cg, ptr %i.n, align 8, !noalias !3731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3731
  store ptr %i.p, ptr %i.m, align 8, !noalias !3731
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !3712
  store ptr %i.q, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !noalias !3712
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.cg) #31, !noalias !3731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3731
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !3741
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #28, !noalias !3731
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3731
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store atomic i64 0, ptr %i.cj release, align 8, !noalias !3731
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store atomic ptr null, ptr %i.ck release, align 8, !noalias !3731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3731
  store ptr %i.p, ptr %i.l, align 8, !noalias !3731
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !3712
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !3712
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.cf) #31, !noalias !3731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3731
  %i.cl = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3731, !noundef !4 ; 3 uses
  store ptr %i.cl, ptr %i.k, align 8, !noalias !3731
  store ptr %i.cf, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3731
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !3748
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #28, !noalias !3731
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3731
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uEB3Q_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs0_0B2e_(ptr nonnull %i.o) #31, !noalias !3731
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uEB3Q_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3731
  %i.cp = load atomic i64, ptr %i.u monotonic, align 16, !noalias !3757 ; 2 uses
  %i.cq = load i64, ptr %i.v, align 16, !noalias !3757, !noundef !4 ; 2 uses
  %i.cr = and i64 %i.cq, %i.cp
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i

.split.i:                                         ; preds = %bb.l
  %i.ct = extractvalue { i64, i32 } %i.by, 1      ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 1000000000
  call void @llvm.assume(i1 %i.cu)
  %.not30.i = icmp samesign ult i32 %i.ct, %i.bt
  br i1 %.not30.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not29.i = icmp slt i64 %i.bz, %i.bx
  br i1 %.not29.i, label %bb.m, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.0.0.copyload, ptr %.sroa.43.0..sroa_idx.i, align 16
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i, %bb.u, %bb.t
  %i.cv = phi i128 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ck

bb.v:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i128, ptr %1, align 16 ; 3 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8, !noalias !3759 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.cz = load atomic ptr, ptr %i.cy acquire, align 8, !noalias !3759
  %i.da = and i64 %i.cx, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.cx, %.lr.ph.i.i3 ], [ %i.dl, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.cz, %.lr.ph.i.i3 ], [ %i.dm, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.dd = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.de = and i64 %i.dd, 31                       ; 3 uses
  %i.df = icmp eq i64 %i.de, 31
  br i1 %i.df, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dg = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.dg, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, label %bb.y

end_hunk_3
