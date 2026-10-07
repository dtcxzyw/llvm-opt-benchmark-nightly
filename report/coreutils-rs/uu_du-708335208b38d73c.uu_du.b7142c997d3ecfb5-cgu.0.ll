Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_du-708335208b38d73c.uu_du.b7142c997d3ecfb5-cgu.0?download=true
inline.NumInlined: 1742
inline.NumDeleted: 893
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread27
  %i.cc = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !695
  %i.cd = and i64 %i.cc, 9223372036854775807
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit, label %bb.v, !prof !14

bb.v:                                             ; preds = %bb.u
  %i.cf = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !695
  %i.cg = xor i1 %i.cf, true
  %i.ch = zext i1 %i.cg to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.ch, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 4, !noalias !695
  %.not.i.i.not = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit13, label %bb.w, !prof !14

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !696
  store ptr %i.bz, ptr %i.b, align 8, !noalias !696
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ck, align 8, !noalias !696
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #29, !noalias !697
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit13: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit
  %i.cl = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !698, !noalias !699, !nonnull !8, !noundef !8 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 72 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !698, !noalias !699, !noundef !8 ; 7 uses
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
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !700, !noalias !701, !noundef !8
  %.not.i.i21 = icmp eq i64 %i.cy, %i.h
  br i1 %.not.i.i21, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph73
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.cz = icmp ult i64 %i.cp, 384307168202282326
  call void @llvm.assume(i1 %i.cz)
  %.not.i.i.i = icmp samesign ult i64 %i.cw, %i.cp
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.y
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cw ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.da, align 8, !noalias !704 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !704
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = xor i64 %i.cw, -1
  %i.dd = add nsw i64 %i.cp, %i.dc
  %i.de = mul nuw nsw i64 %i.dd, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.da, ptr nonnull align 8 %i.db, i64 %i.de, i1 false), !noalias !705
  %i.df = add nsw i64 %i.cp, -1                   ; 2 uses
  store i64 %i.df, ptr %i.co, align 8, !alias.scope !706, !noalias !707
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i, label %bb.ah, !prof !28

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i, %bb.y
  %i.dg = phi i64 [ %i.cp, %bb.y ], [ %i.df, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i ] ; 2 uses
  %i.dh = icmp samesign ult i64 %i.dg, 384307168202282326
  call void @llvm.assume(i1 %i.dh)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cw, i64 noundef %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #29, !noalias !708
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !8, !align !16, !noundef !8 ; 8 uses
  %i.dk = cmpxchg ptr %i.dj, i32 0, i32 1 acquire monotonic, align 4, !noalias !709
  %i.dl = extractvalue { i32, i1 } %i.dk, 1
  br i1 %i.dl, label %bb.ab, label %bb.aa, !prof !14

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dj) #25, !noalias !709
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dm = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !709
  %i.dn = and i64 %i.dm, 9223372036854775807
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit25, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %i.dp = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !709
  %i.dq = xor i1 %i.dp, true
  %i.dr = zext i1 %i.dq to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit25

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit25: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i22 = phi i8 [ %i.dr, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dt = load atomic i8, ptr %i.ds monotonic, align 4, !noalias !709
  %.not.i.i23.not = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i23.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !710
  store ptr %i.dj, ptr %i.c, align 8, !noalias !710
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i22, ptr %i.du, align 8, !noalias !710
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #29, !noalias !711
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit25
  %i.dv = trunc nuw i8 %.sroa.01.0.i.i22 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !712, !noalias !713, !nonnull !8, !noundef !8 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 72 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !712, !noalias !713, !noundef !8 ; 7 uses
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
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !714, !noalias !715, !noundef !8
  %.not.i.i27 = icmp eq i64 %i.ei, %i.h
  br i1 %.not.i.i27, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i26)
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.ej = icmp ult i64 %i.dz, 384307168202282326
  call void @llvm.assume(i1 %i.ej)
  %.not.i.i.i28 = icmp samesign ult i64 %i.eg, %i.dz
  br i1 %.not.i.i.i28, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i30, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i29

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i30: ; preds = %bb.af
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.eg ; 4 uses
  %.sroa.0.0.copyload1.i.i31 = load ptr, ptr %i.ek, align 8, !noalias !718 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i32 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i32, i64 16, i1 false), !noalias !718
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = xor i64 %i.eg, -1
  %i.en = add nsw i64 %i.dz, %i.em
  %i.eo = mul nuw nsw i64 %i.en, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %i.el, i64 %i.eo, i1 false), !noalias !719
  %i.ep = add nsw i64 %i.dz, -1                   ; 2 uses
  store i64 %i.ep, ptr %i.dy, align 8, !alias.scope !720, !noalias !721
  %.not.i4.i33 = icmp eq ptr %.sroa.0.0.copyload1.i.i31, null
  br i1 %.not.i4.i33, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i29, label %bb.au, !prof !28

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i29: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i30, %bb.af
  %i.eq = phi i64 [ %i.dz, %bb.af ], [ %i.ep, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i30 ] ; 2 uses
  %i.er = icmp samesign ult i64 %i.eq, 384307168202282326
  call void @llvm.assume(i1 %i.er)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.eg, i64 noundef %i.eq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #29, !noalias !722
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.es = load atomic i8, ptr %i.j acquire, align 16
  %.not2.i = icmp eq i8 %i.es, 0
  br i1 %.not2.i, label %.lr.ph.i38, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit

.lr.ph.i38:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ew, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.et = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.et, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i38
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i38
  %.not.i.i40 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i40, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.eu = mul nuw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.eu, 7                    ; 3 uses
  %i.ev = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.ev, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.eu, 56
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
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !658

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.ew = add i32 %.sroa.0.03.i, 1
  %i.ex = load atomic i8, ptr %i.j acquire, align 16
  %.not.i39 = icmp eq i8 %i.ex, 0
  br i1 %.not.i39, label %.lr.ph.i38, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  %.sroa.0.0.copyload = load i128, ptr %i.f, align 16 ; 2 uses
  store i128 -1, ptr %i.f, align 16
  %.not = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.bb, label %bb.ba, !prof !12

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ey = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !723
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.cl, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit
  %i.fa = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fb = and i64 %i.fa, 9223372036854775807
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, label %bb.ak, !prof !14

bb.ak:                                            ; preds = %bb.aj
  %i.fd = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.fd, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.ci monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit
  %i.fe = atomicrmw xchg ptr %i.bz, i32 0 release, align 4
  %i.ff = icmp eq i32 %i.fe, 2
  br i1 %i.ff, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit42, !prof !12

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bz) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit42

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit42: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i41, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.fg, align 16
  br label %bb.an

._crit_edge74:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit13
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #29
  unreachable

bb.an:                                            ; preds = %bb.ba, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit45, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit42
  %.sroa.0.0.copyload.sink = phi i128 [ %.sroa.0.0.copyload, %bb.ba ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit45 ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit42 ]
  store i128 %.sroa.0.0.copyload.sink, ptr %0, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.fh = load i128, ptr %i.f, align 16, !range !30, !alias.scope !727, !noundef !8 ; 2 uses
  %i.fi = icmp eq i128 %i.fh, -1
  br i1 %i.fi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %.not.i.i.i.i = icmp eq i128 %i.fh, 2
  br i1 %.not.i.i.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %.val.i.i.i.i = load i64, ptr %i.fj, align 16, !range !9, !alias.scope !729, !noundef !8 ; 2 uses
  %i.fk = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %.val1.i.i.i.i = load ptr, ptr %i.fl, align 8, !alias.scope !730, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !731
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !733, !nonnull !8, !align !16, !noundef !8 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !invariant.load !8, !noalias !733 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fp = load ptr, ptr %.sroa.410.0..sroa_idx, align 16, !alias.scope !733, !nonnull !8, !noundef !8
  call void %i.fo(ptr noundef nonnull %i.fp) #31, !noalias !733, !inline_history !1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !range !9, !invariant.load !8, !noalias !733 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.at
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.410.0..sroa_idx, align 16, !alias.scope !733, !nonnull !8, !noundef !8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !range !21, !invariant.load !8, !noalias !733
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fr, i64 noundef range(i64 1, -9223372036854775807) %i.fu) #25, !noalias !733
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit: ; preds = %bb.an, %bb.ap, %bb.aq, %bb.at, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.au:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i30
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i26, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i26)
  store ptr %.sroa.0.0.copyload1.i.i31, ptr %i.d, align 8
  %i.fv = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i31, i64 1 release, align 8, !noalias !734
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit43

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit43

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit43: ; preds = %bb.au, %bb.av
  br i1 %i.dv, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit43
  %i.fx = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fy = and i64 %i.fx, 9223372036854775807
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, label %bb.ax, !prof !14

bb.ax:                                            ; preds = %bb.aw
  %i.ga = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.ga, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store atomic i8 1, ptr %i.ds monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44: ; preds = %bb.ay, %bb.ax, %bb.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit43
  %i.gb = atomicrmw xchg ptr %i.dj, i32 0 release, align 4
  %i.gc = icmp eq i32 %i.gb, 2
  br i1 %i.gc, label %bb.az, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit45, !prof !12

bb.az:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dj) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit45

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit45: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i44, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0B1C_:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread28
  %i.cd = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !834
  %i.ce = and i64 %i.cd, 9223372036854775807
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit, label %bb.v, !prof !14

bb.v:                                             ; preds = %bb.u
  %i.cg = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !834
  %i.ch = xor i1 %i.cg, true
  %i.ci = zext i1 %i.ch to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.ci, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.ck = load atomic i8, ptr %i.cj monotonic, align 4, !noalias !834
  %.not.i.i.not = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit26, label %bb.w, !prof !14

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !835
  store ptr %i.ca, ptr %i.b, align 8, !noalias !835
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cl, align 8, !noalias !835
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #29, !noalias !836
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit26: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit
  %i.cm = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !837, !noalias !838, !nonnull !8, !noundef !8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !837, !noalias !838, !noundef !8 ; 7 uses
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
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !839, !noalias !840, !noundef !8
  %.not.i.i34 = icmp eq i64 %i.cz, %i.i
  br i1 %.not.i.i34, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph74
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.da = icmp ult i64 %i.cq, 384307168202282326
  call void @llvm.assume(i1 %i.da)
  %.not.i.i.i = icmp samesign ult i64 %i.cx, %i.cq
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.y
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cx ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.db, align 8, !noalias !843 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !843
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = xor i64 %i.cx, -1
  %i.de = add nsw i64 %i.cq, %i.dd
  %i.df = mul nuw nsw i64 %i.de, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr nonnull align 8 %i.dc, i64 %i.df, i1 false), !noalias !844
  %i.dg = add nsw i64 %i.cq, -1                   ; 2 uses
  store i64 %i.dg, ptr %i.cp, align 8, !alias.scope !845, !noalias !846
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i, label %bb.ah, !prof !28

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i, %bb.y
  %i.dh = phi i64 [ %i.cq, %bb.y ], [ %i.dg, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i ] ; 2 uses
  %i.di = icmp samesign ult i64 %i.dh, 384307168202282326
  call void @llvm.assume(i1 %i.di)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cx, i64 noundef %i.dh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #29, !noalias !847
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.dk = load ptr, ptr %i.dj, align 16, !nonnull !8, !align !16, !noundef !8 ; 8 uses
  %i.dl = cmpxchg ptr %i.dk, i32 0, i32 1 acquire monotonic, align 4, !noalias !848
  %i.dm = extractvalue { i32, i1 } %i.dl, 1
  br i1 %i.dm, label %bb.ab, label %bb.aa, !prof !14

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dk) #25, !noalias !848
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dn = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !848
  %i.do = and i64 %i.dn, 9223372036854775807
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit38, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %i.dq = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !848
  %i.dr = xor i1 %i.dq, true
  %i.ds = zext i1 %i.dr to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit38

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit38: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i35 = phi i8 [ %i.ds, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 2 uses
  %i.du = load atomic i8, ptr %i.dt monotonic, align 4, !noalias !848
  %.not.i.i36.not = icmp eq i8 %i.du, 0
  br i1 %.not.i.i36.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !849
  store ptr %i.dk, ptr %i.c, align 8, !noalias !849
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i35, ptr %i.dv, align 8, !noalias !849
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #29, !noalias !850
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit38
  %i.dw = trunc nuw i8 %.sroa.01.0.i.i35 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !851, !noalias !852, !nonnull !8, !noundef !8 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !851, !noalias !852, !noundef !8 ; 7 uses
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
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !853, !noalias !854, !noundef !8
  %.not.i.i40 = icmp eq i64 %i.ej, %i.i
  br i1 %.not.i.i40, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i39)
  call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.ek = icmp ult i64 %i.ea, 384307168202282326
  call void @llvm.assume(i1 %i.ek)
  %.not.i.i.i41 = icmp samesign ult i64 %i.eh, %i.ea
  br i1 %.not.i.i.i41, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i43, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i42

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i43: ; preds = %bb.af
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.eh ; 4 uses
  %.sroa.0.0.copyload1.i.i44 = load ptr, ptr %i.el, align 8, !noalias !857 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i45 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i39, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i45, i64 16, i1 false), !noalias !857
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = xor i64 %i.eh, -1
  %i.eo = add nsw i64 %i.ea, %i.en
  %i.ep = mul nuw nsw i64 %i.eo, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.el, ptr nonnull align 8 %i.em, i64 %i.ep, i1 false), !noalias !858
  %i.eq = add nsw i64 %i.ea, -1                   ; 2 uses
  store i64 %i.eq, ptr %i.dz, align 8, !alias.scope !859, !noalias !860
  %.not.i4.i46 = icmp eq ptr %.sroa.0.0.copyload1.i.i44, null
  br i1 %.not.i4.i46, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i42, label %bb.au, !prof !28

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i42: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i43, %bb.af
  %i.er = phi i64 [ %i.ea, %bb.af ], [ %i.eq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i43 ] ; 2 uses
  %i.es = icmp samesign ult i64 %i.er, 384307168202282326
  call void @llvm.assume(i1 %i.es)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.eh, i64 noundef %i.er, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #29, !noalias !861
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.et = load atomic i8, ptr %i.k acquire, align 16
  %.not2.i = icmp eq i8 %i.et, 0
  br i1 %.not2.i, label %.lr.ph.i51, label %.loopexit

.lr.ph.i51:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ex, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.eu = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.eu, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i51
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i51
  %.not.i.i53 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i53, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.ev = mul nuw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.ev, 7                    ; 3 uses
  %i.ew = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.ew, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ev, 56
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
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !797

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.ex = add i32 %.sroa.0.03.i, 1
  %i.ey = load atomic i8, ptr %i.k acquire, align 16
  %.not.i52 = icmp eq i8 %i.ey, 0
  br i1 %.not.i52, label %.lr.ph.i51, label %.loopexit

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ez = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !862
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.cm, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit
  %i.fb = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fc = and i64 %i.fb, 9223372036854775807
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, label %bb.ak, !prof !14

bb.ak:                                            ; preds = %bb.aj
  %i.fe = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.fe, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.cj monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit
  %i.ff = atomicrmw xchg ptr %i.ca, i32 0 release, align 4
  %i.fg = icmp eq i32 %i.ff, 2
  br i1 %i.fg, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit55, !prof !12

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ca) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit55

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit55: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i54, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i128, ptr %i.f, align 16 ; 2 uses
  store i128 -1, ptr %i.f, align 16
  %.not25 = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not25, label %bb.an, label %.thread, !prof !12

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
  %.pre = load i128, ptr %i.f, align 16, !range !30, !alias.scope !863 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.fh = icmp eq i128 %.pre, -1
  br i1 %i.fh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %.not.i.i.i.i = icmp eq i128 %.pre, 2
  br i1 %.not.i.i.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %.val.i.i.i.i = load i64, ptr %i.fi, align 16, !range !9, !alias.scope !868, !noundef !8 ; 2 uses
  %i.fj = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %.val1.i.i.i.i = load ptr, ptr %i.fk, align 8, !alias.scope !869, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !870
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit

bb.ar:                                            ; preds = %bb.ao
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !872, !nonnull !8, !align !16, !noundef !8 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !invariant.load !8, !noalias !872 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fp = load ptr, ptr %i.fl, align 16, !alias.scope !872, !nonnull !8, !noundef !8
  call void %i.fo(ptr noundef nonnull %i.fp) #31, !noalias !872, !inline_history !1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !range !9, !invariant.load !8, !noalias !872 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.at
  %.val.i.i.i.i.i = load ptr, ptr %i.fl, align 16, !alias.scope !872, !nonnull !8, !noundef !8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !range !21, !invariant.load !8, !noalias !872
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fr, i64 noundef range(i64 1, -9223372036854775807) %i.fu) #25, !noalias !872
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1M_.exit: ; preds = %.thread, %.loopexit, %bb.ap, %bb.aq, %bb.at, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.au:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i43
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i39, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i39)
  store ptr %.sroa.0.0.copyload1.i.i44, ptr %i.d, align 8
  %i.fv = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i44, i64 1 release, align 8, !noalias !873
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit56

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit56

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit56: ; preds = %bb.au, %bb.av
  br i1 %i.dw, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit56
  %i.fx = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fy = and i64 %i.fx, 9223372036854775807
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ax, !prof !14

bb.ax:                                            ; preds = %bb.aw
  %i.ga = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.ga, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store atomic i8 1, ptr %i.dt monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i57: ; preds = %bb.ay, %bb.ax, %bb.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit56
  %i.gb = atomicrmw xchg ptr %i.dk, i32 0 release, align 4
end_hunk_1
begin_hunk_2_@_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter11print_stats:bb.a
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
  %.val57 = load i8, ptr %i.dk, align 1, !range !17
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 98
  %.val58 = load i8, ptr %i.dl, align 2
  %i.dm = trunc nuw i8 %.val57 to i1
  %i.dn = trunc nuw i8 %.val58 to i1
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !range !31 ; 2 uses
  %.not47 = icmp eq i64 %i.dp, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = load i64, ptr %i.dq, align 8            ; 2 uses
  %i.ds = trunc nuw i64 %i.dp to i1
  %i.dt = load i64, ptr %0, align 8, !range !11
  %i.du = trunc nuw i64 %i.dt to i1               ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.dy = load i8, ptr %i.dx, align 1, !range !17
  %i.dz = trunc nuw i8 %i.dy to i1                ; 2 uses
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ec = load i8, ptr %i.eb, align 4, !range !37
  %.not27.i = icmp eq i8 %i.ec, -1
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !8
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !3457
  switch i64 %.val55, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.unreachabledefault [
    i64 0, label %bb.b
    i64 1, label %bb.y
    i64 2, label %bb.bf
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit.unreachabledefault: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit
  unreachable

default.unreachable:                              ; preds = %bb.fv, %bb.fr, %bb.fm, %bb.fi, %bb.dd, %bb.cz
  unreachable

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3458)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !3457
  store i32 -1, ptr %i.cw, align 8, !noalias !3459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !3459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i8 0, i64 40, i1 false), !noalias !3459
  br label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !3460)
  %i.fp = load atomic i64, ptr %.val56 monotonic, align 8, !noalias !3461
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, %bb.c
  %.sroa.0.038.i.i.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.1.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i ] ; 12 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.fp, %bb.c ], [ %i.gv, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i ] ; 7 uses
  %umin678 = call i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i, i32 6) ; 2 uses
  %i.fq = mul nuw nsw i32 %umin678, %umin678      ; 2 uses
  %i.fr = load i64, ptr %i.cy, align 16, !noalias !3461, !noundef !8
  %i.fs = add i64 %i.fr, -1
  %i.ft = and i64 %i.fs, %.sroa.02.0.i.i.i        ; 3 uses
  %i.fu = load i64, ptr %i.cz, align 8, !noalias !3461, !noundef !8
  %i.fv = sub i64 0, %i.fu
  %i.fw = and i64 %.sroa.02.0.i.i.i, %i.fv
  %i.fx = load ptr, ptr %i.da, align 8, !noalias !3461, !nonnull !8, !noundef !8
  %i.fy = load i64, ptr %i.db, align 16, !noalias !3461, !noundef !8
  %i.fz = icmp ult i64 %i.ft, %i.fy
  call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw [320 x i8], ptr %i.fx, i64 %i.ft ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 304
  %i.gc = load atomic i64, ptr %i.gb acquire, align 8, !noalias !3461 ; 3 uses
  %i.gd = add i64 %.sroa.02.0.i.i.i, 1
  %i.ge = icmp eq i64 %i.gd, %i.gc
  br i1 %i.ge, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gf = icmp eq i64 %i.gc, %.sroa.02.0.i.i.i
  br i1 %i.gf, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.gg = add nuw i64 %i.ft, 1
  %i.gh = load i64, ptr %i.dc, align 128, !noalias !3461, !noundef !8
  %i.gi = icmp ult i64 %i.gg, %i.gh
  br i1 %i.gi, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.gj = icmp ult i32 %.sroa.0.038.i.i.i, 7
  br i1 %i.gj, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3461
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i: ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i
  %i.gk = mul nuw i32 %.sroa.0.038.i.i.i, %.sroa.0.038.i.i.i ; 2 uses
  %xtraiter672 = and i32 %i.gk, 7                 ; 3 uses
  %i.gl = icmp ult i32 %.sroa.0.038.i.i.i, 3
  br i1 %i.gl, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter676 = and i32 %i.gk, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter677 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter677.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  %niter677.next.7 = add i32 %niter677, 8         ; 2 uses
  %niter677.ncmp.7 = icmp eq i32 %niter677.next.7, %unroll_iter676
  br i1 %niter677.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit552.unr-lcssa, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.e
  fence seq_cst
  %i.gm = load atomic i64, ptr %i.cv monotonic, align 16, !noalias !3461 ; 2 uses
  %i.gn = load i64, ptr %i.cy, align 16, !noalias !3461, !noundef !8 ; 2 uses
  %i.go = xor i64 %i.gn, -1
  %i.gp = and i64 %i.gm, %i.go
  %i.gq = icmp eq i64 %i.gp, %.sroa.02.0.i.i.i
  br i1 %i.gq, label %bb.j, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i: ; preds = %bb.i
  %..i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i, i32 6) ; 2 uses
  %i.gr = mul nuw nsw i32 %..i.i.i.i.i, %..i.i.i.i.i ; 2 uses
  %.not.i13.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i, 0
  br i1 %.not.i13.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i16.i.i.i.preheader

.lr.ph.i16.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i
  %xtraiter679 = and i32 %i.gr, 5                 ; 3 uses
  %i.gs = icmp ult i32 %.sroa.0.038.i.i.i, 3
  br i1 %i.gs, label %.lr.ph.i16.i.i.i.epil.preheader, label %.lr.ph.i16.i.i.i.preheader.new

.lr.ph.i16.i.i.i.preheader.new:                   ; preds = %.lr.ph.i16.i.i.i.preheader
  %unroll_iter683 = and i32 %i.gr, 56
  br label %.lr.ph.i16.i.i.i

.lr.ph.i16.i.i.i:                                 ; preds = %.lr.ph.i16.i.i.i, %.lr.ph.i16.i.i.i.preheader.new
  %niter684 = phi i32 [ 0, %.lr.ph.i16.i.i.i.preheader.new ], [ %niter684.next.7, %.lr.ph.i16.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  %niter684.next.7 = add i32 %niter684, 8         ; 2 uses
  %niter684.ncmp.7 = icmp eq i32 %niter684.next.7, %unroll_iter683
  br i1 %niter684.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit551.unr-lcssa, label %.lr.ph.i16.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.gt = and i64 %i.gn, %i.gm
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i
  %lcmp.mod687.not = icmp eq i32 %xtraiter685, 0
  br i1 %lcmp.mod687.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i26.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.preheader
  %lcmp.mod688 = icmp ne i32 %xtraiter685, 0
  call void @llvm.assume(i1 %lcmp.mod688)
  br label %.lr.ph.i26.i.i.i.epil

.lr.ph.i26.i.i.i.epil:                            ; preds = %.lr.ph.i26.i.i.i.epil, %.lr.ph.i26.i.i.i.epil.preheader
  %epil.iter686 = phi i32 [ 0, %.lr.ph.i26.i.i.i.epil.preheader ], [ %epil.iter686.next, %.lr.ph.i26.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3461
  %epil.iter686.next = add i32 %epil.iter686, 1   ; 2 uses
  %epil.iter686.cmp.not = icmp eq i32 %epil.iter686.next, %xtraiter685
  br i1 %epil.iter686.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i26.i.i.i.epil, !llvm.loop !3181

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit551.unr-lcssa: ; preds = %.lr.ph.i16.i.i.i
  %lcmp.mod681.not = icmp eq i32 %xtraiter679, 0
  br i1 %lcmp.mod681.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i16.i.i.i.epil.preheader

.lr.ph.i16.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit551.unr-lcssa, %.lr.ph.i16.i.i.i.preheader
  %lcmp.mod682 = icmp ne i32 %xtraiter679, 0
  call void @llvm.assume(i1 %lcmp.mod682)
  br label %.lr.ph.i16.i.i.i.epil

.lr.ph.i16.i.i.i.epil:                            ; preds = %.lr.ph.i16.i.i.i.epil, %.lr.ph.i16.i.i.i.epil.preheader
  %epil.iter680 = phi i32 [ 0, %.lr.ph.i16.i.i.i.epil.preheader ], [ %epil.iter680.next, %.lr.ph.i16.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3461
  %epil.iter680.next = add i32 %epil.iter680, 1   ; 2 uses
  %epil.iter680.cmp.not = icmp eq i32 %epil.iter680.next, %xtraiter679
  br i1 %epil.iter680.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i16.i.i.i.epil, !llvm.loop !3182

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit552.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod674.not = icmp eq i32 %xtraiter672, 0
  br i1 %lcmp.mod674.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit552.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod675 = icmp ne i32 %xtraiter672, 0
  call void @llvm.assume(i1 %lcmp.mod675)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter673 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter673.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3461
  %epil.iter673.next = add i32 %epil.iter673, 1   ; 2 uses
  %epil.iter673.cmp.not = icmp eq i32 %epil.iter673.next, %xtraiter672
  br i1 %epil.iter673.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !3183

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit552.unr-lcssa, %.lr.ph.i.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit551.unr-lcssa, %.lr.ph.i16.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i, %bb.h
  %i.gv = load atomic i64, ptr %.val56 monotonic, align 16, !noalias !3461
  %.sroa.0.1.i.i.i = add i32 %.sroa.0.038.i.i.i, 1
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.gw = load i64, ptr %i.cz, align 8, !noalias !3461, !noundef !8
  %i.gx = add i64 %i.gw, %i.fw
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.01.0.i.i.i = phi i64 [ %i.gx, %bb.k ], [ %i.gc, %bb.f ]
  %i.gy = cmpxchg weak ptr %.val56, i64 %.sroa.02.0.i.i.i, i64 %.sroa.01.0.i.i.i seq_cst monotonic, align 8, !noalias !3461
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.gy, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i: ; preds = %bb.l
  %.not.i23.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i, 0
  br i1 %.not.i23.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i26.i.i.i.preheader

.lr.ph.i26.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i
  %xtraiter685 = and i32 %i.fq, 7                 ; 3 uses
  %i.gz = icmp ult i32 %.sroa.0.038.i.i.i, 3
  br i1 %i.gz, label %.lr.ph.i26.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.preheader.new

.lr.ph.i26.i.i.i.preheader.new:                   ; preds = %.lr.ph.i26.i.i.i.preheader
  %unroll_iter689 = and i32 %i.fq, 56
  br label %.lr.ph.i26.i.i.i

.lr.ph.i26.i.i.i:                                 ; preds = %.lr.ph.i26.i.i.i, %.lr.ph.i26.i.i.i.preheader.new
  %niter690 = phi i32 [ 0, %.lr.ph.i26.i.i.i.preheader.new ], [ %niter690.next.7, %.lr.ph.i26.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  call void @llvm.x86.sse2.pause(), !noalias !3461
  %niter690.next.7 = add i32 %niter690, 8         ; 2 uses
  %niter690.ncmp.7 = icmp eq i32 %niter690.next.7, %unroll_iter689
  br i1 %niter690.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i: ; preds = %bb.j
  %i.ha = load i32, ptr %i.cw, align 8, !range !25, !noalias !3459, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ha, -1
  br i1 %.not.i.i, label %bb.n, label %bb.m

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.v

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i: ; preds = %bb.l
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ga, i64 304
  store ptr %i.ga, ptr %i.bt, align 8, !alias.scope !3460, !noalias !3459
  %i.hc = load i64, ptr %i.cz, align 8, !noalias !3461, !noundef !8
  %i.hd = add i64 %i.hc, %.sroa.02.0.i.i.i        ; 2 uses
  store i64 %i.hd, ptr %i.cx, align 8, !alias.scope !3460, !noalias !3459
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.0.0.copyload4.i.i = load i128, ptr %i.ga, align 16, !noalias !3459 ; 2 uses
  %.sroa.6.0..val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.0..val.sroa_idx.i.i, i64 288, i1 false), !noalias !3459
  store atomic i64 %i.hd, ptr %i.hb release, align 16, !noalias !3462
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.dd) #31, !noalias !3462
  %i.he = icmp eq i128 %.sroa.0.0.copyload4.i.i, -1
  br i1 %i.he, label %bb.v, label %bb.w

bb.m:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i
  %i.hf = load i64, ptr %i.bu, align 8, !noalias !3459, !noundef !8 ; 2 uses
  %i.hg = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #25, !noalias !3459 ; 2 uses
  %i.hh = extractvalue { i64, i32 } %i.hg, 0      ; 2 uses
  %i.hi = icmp eq i64 %i.hh, %i.hf
  br i1 %i.hi, label %.split.i.i, label %bb.t

bb.n:                                             ; preds = %bb.t, %.split.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !3463
  store ptr %i.bt, ptr %i.bs, align 8, !noalias !3459
  store ptr %.val56, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3459
  store ptr %i.bu, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !3459
  %i.hj = load i8, ptr %i.cq, align 8, !range !10, !noalias !3464, !noundef !8
  %i.hk = icmp eq i8 %i.hj, 1
  br i1 %i.hk, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, !prof !14

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.n
  %i.hl = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsfIwuYbgPzJV_5uu_du(ptr noundef nonnull align 8 %i.cp, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #25, !noalias !3463 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs_0uEB3Q_.exit.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, %bb.n
  %.sroa.0.0.i.i.i2.i.i.i.i = phi ptr [ %i.hl, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i ], [ %i.cp, %bb.n ] ; 4 uses
  %i.hn = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !3463, !noundef !8 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !3463
  %.not.i.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.q, !prof !12

bb.o:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !3463
  %i.ho = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #25, !noalias !3463 ; 3 uses
  store ptr %i.ho, ptr %i.br, align 8, !noalias !3463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !3463
  store ptr %i.bt, ptr %i.bq, align 8, !noalias !3463
  store ptr %.val56, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i, align 8, !noalias !3459
  store ptr %i.bu, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i, align 8, !noalias !3459
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bq, ptr nonnull %i.ho) #31, !noalias !3463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !3463
  %i.hp = atomicrmw sub ptr %i.ho, i64 1 release, align 8, !noalias !3465
  %i.hq = icmp eq i64 %i.hp, 1
  br i1 %i.hq, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.br) #28, !noalias !3463
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !3463
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i

bb.q:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store atomic i64 0, ptr %i.hr release, align 8, !noalias !3463
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  store atomic ptr null, ptr %i.hs release, align 8, !noalias !3463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !3463
  store ptr %i.bt, ptr %i.bp, align 8, !noalias !3463
  store ptr %.val56, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i, align 8, !noalias !3459
  store ptr %i.bu, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i, align 8, !noalias !3459
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bp, ptr nonnull %i.hn) #31, !noalias !3463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !3463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !3463
  %i.ht = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !3463, !noundef !8 ; 3 uses
  store ptr %i.ht, ptr %i.bo, align 8, !noalias !3463
  store ptr %i.hn, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !3463
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hv = atomicrmw sub ptr %i.ht, i64 1 release, align 8, !noalias !3466
  %i.hw = icmp eq i64 %i.hv, 1
  br i1 %i.hw, label %bb.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bo) #28, !noalias !3463
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !3463
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs_0uEB3Q_.exit.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs0_0B2e_(ptr nonnull %i.bs) #31, !noalias !3463
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs_0uEB3Q_.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !3463
  br label %bb.c

.split.i.i:                                       ; preds = %bb.m
  %i.hx = extractvalue { i64, i32 } %i.hg, 1      ; 2 uses
  %i.hy = icmp ult i32 %i.hx, 1000000000
  call void @llvm.assume(i1 %i.hy)
  %.not17.i.i = icmp samesign ult i32 %i.hx, %i.ha
  br i1 %.not17.i.i, label %bb.n, label %bb.u

bb.t:                                             ; preds = %bb.m
  %.not16.i.i = icmp slt i64 %i.hh, %i.hf
  br i1 %.not16.i.i, label %bb.n, label %bb.u

bb.u:                                             ; preds = %bb.t, %.split.i.i
  store i8 0, ptr %.sroa.445.0..sroa_idx.i.i, align 16, !alias.scope !3458, !noalias !3457
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i

bb.v:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i
  store i8 1, ptr %.sroa.445.0..sroa_idx.i.i, align 16, !alias.scope !3458, !noalias !3457
  br label %bb.x

bb.w:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.445.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.i.i, i64 288, i1 false), !noalias !3457
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge.i.i = phi i128 [ %.sroa.0.0.copyload4.i.i, %bb.w ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i: ; preds = %bb.x, %bb.u
  %i.hz = phi i128 [ -1, %bb.u ], [ %storemerge.i.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !3459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !3457
  br label %bb.cv

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3467)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !3457
  store i32 -1, ptr %i.cr, align 8, !noalias !3468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !3468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, i8 0, i64 40, i1 false), !noalias !3468
  br label %bb.z

bb.z:                                             ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !3469)
  %i.ia = load atomic i64, ptr %.val56 acquire, align 8, !noalias !3470
  %i.ib = load atomic ptr, ptr %i.cu acquire, align 8, !noalias !3470
  br label %bb.aa

bb.aa:                                            ; preds = %.backedge.i.i.i, %bb.z
  %.sroa.0.043.i.i.i = phi i32 [ 0, %bb.z ], [ %.sroa.0.043.be.i.i.i, %.backedge.i.i.i ] ; 14 uses
  %.sroa.012.0.i.i.i = phi ptr [ %i.ib, %bb.z ], [ %i.im, %.backedge.i.i.i ] ; 8 uses
  %.sroa.07.0.i.i.i = phi i64 [ %i.ia, %bb.z ], [ %i.il, %.backedge.i.i.i ] ; 5 uses
  %i.ic = lshr i64 %.sroa.07.0.i.i.i, 1           ; 2 uses
  %i.id = and i64 %i.ic, 31                       ; 6 uses
  %i.ie = icmp eq i64 %i.id, 31
  br i1 %i.ie, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.if = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.if, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i: ; preds = %bb.ab
  %.not.i.i.i20.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i.i.i20.i, label %.backedge.i.i.i, label %.lr.ph.i.i.i23.i.preheader

.lr.ph.i.i.i23.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i
  %i.ig = mul nuw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter654 = and i32 %i.ig, 7                 ; 3 uses
  %i.ih = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.ih, label %.lr.ph.i.i.i23.i.epil.preheader, label %.lr.ph.i.i.i23.i.preheader.new

.lr.ph.i.i.i23.i.preheader.new:                   ; preds = %.lr.ph.i.i.i23.i.preheader
  %unroll_iter658 = and i32 %i.ig, 56
  br label %.lr.ph.i.i.i23.i

.lr.ph.i.i.i23.i:                                 ; preds = %.lr.ph.i.i.i23.i, %.lr.ph.i.i.i23.i.preheader.new
  %niter659 = phi i32 [ 0, %.lr.ph.i.i.i23.i.preheader.new ], [ %niter659.next.7, %.lr.ph.i.i.i23.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  %niter659.next.7 = add i32 %niter659, 8         ; 2 uses
  %niter659.ncmp.7 = icmp eq i32 %niter659.next.7, %unroll_iter658
  br i1 %niter659.ncmp.7, label %.backedge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i23.i

bb.ac:                                            ; preds = %bb.aa
  %i.ii = add i64 %.sroa.07.0.i.i.i, 2            ; 2 uses
  %i.ij = and i64 %.sroa.07.0.i.i.i, 1
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %bb.ad, label %bb.ag

.backedge.sink.split.i.i.i:                       ; preds = %bb.ai, %bb.ab
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3470
  br label %.backedge.i.i.i

.backedge.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i.i23.i
  %lcmp.mod656.not = icmp eq i32 %xtraiter654, 0
  br i1 %lcmp.mod656.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i23.i.epil.preheader

.lr.ph.i.i.i23.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.preheader
  %lcmp.mod657 = icmp ne i32 %xtraiter654, 0
  call void @llvm.assume(i1 %lcmp.mod657)
  br label %.lr.ph.i.i.i23.i.epil

.lr.ph.i.i.i23.i.epil:                            ; preds = %.lr.ph.i.i.i23.i.epil, %.lr.ph.i.i.i23.i.epil.preheader
  %epil.iter655 = phi i32 [ 0, %.lr.ph.i.i.i23.i.epil.preheader ], [ %epil.iter655.next, %.lr.ph.i.i.i23.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3470
  %epil.iter655.next = add i32 %epil.iter655, 1   ; 2 uses
  %epil.iter655.cmp.not = icmp eq i32 %epil.iter655.next, %xtraiter654
  br i1 %epil.iter655.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i23.i.epil, !llvm.loop !3212

.backedge.i.i.i.loopexit553.unr-lcssa:            ; preds = %.lr.ph.i23.i.i.i
  %lcmp.mod650.not = icmp eq i32 %xtraiter648, 0
  br i1 %lcmp.mod650.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil.preheader

.lr.ph.i23.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit553.unr-lcssa, %.lr.ph.i23.i.i.i.preheader
  %lcmp.mod651 = icmp ne i32 %xtraiter648, 0
  call void @llvm.assume(i1 %lcmp.mod651)
  br label %.lr.ph.i23.i.i.i.epil

.lr.ph.i23.i.i.i.epil:                            ; preds = %.lr.ph.i23.i.i.i.epil, %.lr.ph.i23.i.i.i.epil.preheader
  %epil.iter649 = phi i32 [ 0, %.lr.ph.i23.i.i.i.epil.preheader ], [ %epil.iter649.next, %.lr.ph.i23.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3470
  %epil.iter649.next = add i32 %epil.iter649, 1   ; 2 uses
  %epil.iter649.cmp.not = icmp eq i32 %epil.iter649.next, %xtraiter648
  br i1 %epil.iter649.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil, !llvm.loop !3213

.backedge.i.i.i.loopexit554.unr-lcssa:            ; preds = %.lr.ph.i33.i.i.i
  %lcmp.mod644.not = icmp eq i32 %xtraiter642, 0
  br i1 %lcmp.mod644.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil.preheader

.lr.ph.i33.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit554.unr-lcssa, %.lr.ph.i33.i.i.i.preheader
  %lcmp.mod645 = icmp ne i32 %xtraiter642, 0
  call void @llvm.assume(i1 %lcmp.mod645)
  br label %.lr.ph.i33.i.i.i.epil

.lr.ph.i33.i.i.i.epil:                            ; preds = %.lr.ph.i33.i.i.i.epil, %.lr.ph.i33.i.i.i.epil.preheader
  %epil.iter643 = phi i32 [ 0, %.lr.ph.i33.i.i.i.epil.preheader ], [ %epil.iter643.next, %.lr.ph.i33.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3470
  %epil.iter643.next = add i32 %epil.iter643, 1   ; 2 uses
  %epil.iter643.cmp.not = icmp eq i32 %epil.iter643.next, %xtraiter642
  br i1 %epil.iter643.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil, !llvm.loop !3214

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.loopexit554.unr-lcssa, %.lr.ph.i33.i.i.i.epil, %.backedge.i.i.i.loopexit553.unr-lcssa, %.lr.ph.i23.i.i.i.epil, %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i, %.backedge.sink.split.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i
  %i.il = load atomic i64, ptr %.val56 acquire, align 8, !noalias !3470
  %i.im = load atomic ptr, ptr %i.cu acquire, align 8, !noalias !3470
  %.sroa.0.043.be.i.i.i = add i32 %.sroa.0.043.i.i.i, 1
  br label %bb.aa

bb.ad:                                            ; preds = %bb.ac
  fence seq_cst
  %i.in = load atomic i64, ptr %i.cv monotonic, align 8, !noalias !3470 ; 3 uses
  %i.io = lshr i64 %i.in, 1
  %i.ip = icmp eq i64 %i.ic, %i.io
  br i1 %i.ip, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.unshifted.i.i.i = xor i64 %i.in, %.sroa.07.0.i.i.i
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %i.iq = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.ii, %i.iq
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ir = and i64 %i.in, 1
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i

bb.ag:                                            ; preds = %bb.ae, %bb.ac
  %.sroa.01.0.i.i7.i = phi i64 [ %i.ii, %bb.ac ], [ %spec.select.i.i.i, %bb.ae ] ; 2 uses
  %i.it = icmp eq ptr %.sroa.012.0.i.i.i, null
  br i1 %i.it, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iu = cmpxchg weak ptr %.val56, i64 %.sroa.07.0.i.i.i, i64 %.sroa.01.0.i.i7.i seq_cst acquire, align 8, !noalias !3470
  %.sroa.18.0.in.i.i.i8.i = extractvalue { i64, i1 } %i.iu, 1
  br i1 %.sroa.18.0.in.i.i.i8.i, label %bb.aj, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.iv = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.iv, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i: ; preds = %bb.ai
  %.not.i20.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i20.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.preheader

.lr.ph.i23.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i
  %i.iw = mul nuw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter648 = and i32 %i.iw, 7                 ; 3 uses
  %i.ix = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.ix, label %.lr.ph.i23.i.i.i.epil.preheader, label %.lr.ph.i23.i.i.i.preheader.new

.lr.ph.i23.i.i.i.preheader.new:                   ; preds = %.lr.ph.i23.i.i.i.preheader
  %unroll_iter652 = and i32 %i.iw, 56
  br label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %.lr.ph.i23.i.i.i, %.lr.ph.i23.i.i.i.preheader.new
  %niter653 = phi i32 [ 0, %.lr.ph.i23.i.i.i.preheader.new ], [ %niter653.next.7, %.lr.ph.i23.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  %niter653.next.7 = add i32 %niter653, 8         ; 2 uses
  %niter653.ncmp.7 = icmp eq i32 %niter653.next.7, %unroll_iter652
  br i1 %niter653.ncmp.7, label %.backedge.i.i.i.loopexit553.unr-lcssa, label %.lr.ph.i23.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i: ; preds = %bb.ah
  %..i.i.i.i9.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i.i.i, i32 6) ; 2 uses
  %i.iy = mul nuw nsw i32 %..i.i.i.i9.i, %..i.i.i.i9.i ; 2 uses
  %.not.i30.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i30.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.preheader

.lr.ph.i33.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i
  %xtraiter642 = and i32 %i.iy, 5                 ; 3 uses
  %i.iz = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.iz, label %.lr.ph.i33.i.i.i.epil.preheader, label %.lr.ph.i33.i.i.i.preheader.new

.lr.ph.i33.i.i.i.preheader.new:                   ; preds = %.lr.ph.i33.i.i.i.preheader
  %unroll_iter646 = and i32 %i.iy, 56
  br label %.lr.ph.i33.i.i.i

.lr.ph.i33.i.i.i:                                 ; preds = %.lr.ph.i33.i.i.i, %.lr.ph.i33.i.i.i.preheader.new
  %niter647 = phi i32 [ 0, %.lr.ph.i33.i.i.i.preheader.new ], [ %niter647.next.7, %.lr.ph.i33.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  %niter647.next.7 = add i32 %niter647, 8         ; 2 uses
  %niter647.ncmp.7 = icmp eq i32 %niter647.next.7, %unroll_iter646
  br i1 %niter647.ncmp.7, label %.backedge.i.i.i.loopexit554.unr-lcssa, label %.lr.ph.i33.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ja = icmp eq i64 %i.id, 30
  br i1 %i.ja, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 9920 ; 2 uses
  %i.jc = load atomic ptr, ptr %i.jb acquire, align 8, !noalias !3470 ; 2 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextB1x_.exit.i.i.i

.lr.ph.i37.i.i.i:                                 ; preds = %bb.ak, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %i.jh, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.ak ] ; 6 uses
  %i.je = icmp ult i32 %.sroa.0.02.i.i.i.i, 7
  br i1 %i.je, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i37.i.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3470
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i: ; preds = %.lr.ph.i37.i.i.i
  %.not.i.i.i.i10.i = icmp eq i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %.not.i.i.i.i10.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i
  %i.jf = mul nuw i32 %.sroa.0.02.i.i.i.i, %.sroa.0.02.i.i.i.i ; 2 uses
  %xtraiter660 = and i32 %i.jf, 7                 ; 3 uses
  %i.jg = icmp ult i32 %.sroa.0.02.i.i.i.i, 3
  br i1 %i.jg, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter664 = and i32 %i.jf, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter665 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter665.next.7, %.lr.ph.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  call void @llvm.x86.sse2.pause(), !noalias !3470
  %niter665.next.7 = add i32 %niter665, 8         ; 2 uses
  %niter665.ncmp.7 = icmp eq i32 %niter665.next.7, %unroll_iter664
  br i1 %niter665.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod662.not = icmp eq i32 %xtraiter660, 0
  br i1 %lcmp.mod662.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod663 = icmp ne i32 %xtraiter660, 0
  call void @llvm.assume(i1 %lcmp.mod663)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter661 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter661.next, %.lr.ph.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3470
  %epil.iter661.next = add i32 %epil.iter661, 1   ; 2 uses
  %epil.iter661.cmp.not = icmp eq i32 %epil.iter661.next, %xtraiter660
  br i1 %epil.iter661.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !3215

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i, %bb.al
  %i.jh = add i32 %.sroa.0.02.i.i.i.i, 1
  %i.ji = load atomic ptr, ptr %i.jb acquire, align 8, !noalias !3470 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextB1x_.exit.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextB1x_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.ak
  %.lcssa.i.i.i.i = phi ptr [ %i.jc, %bb.ak ], [ %i.ji, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.jk = and i64 %.sroa.01.0.i.i7.i, -2
  %i.jl = add i64 %i.jk, 2
  %i.jm = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i, i64 9920
  %i.jn = load atomic ptr, ptr %i.jm monotonic, align 8, !noalias !3470
  %i.jo = icmp ne ptr %i.jn, null
  %i.jp = zext i1 %i.jo to i64
  %spec.select17.i.i.i = or disjoint i64 %i.jl, %i.jp
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.cu release, align 8, !noalias !3470
  store atomic i64 %spec.select17.i.i.i, ptr %.val56 release, align 8, !noalias !3470
  br label %bb.am

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i: ; preds = %bb.af
  %i.jq = load i32, ptr %i.cr, align 8, !range !25, !noalias !3468, !noundef !8 ; 2 uses
  %.not.i11.i = icmp eq i32 %i.jq, -1
  br i1 %.not.i11.i, label %bb.aw, label %bb.av

bb.am:                                            ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextB1x_.exit.i.i.i, %bb.aj
  store ptr %.sroa.012.0.i.i.i, ptr %i.cs, align 8, !alias.scope !3469, !noalias !3468
  store i64 %i.id, ptr %i.ct, align 8, !alias.scope !3469, !noalias !3468
  %i.jr = getelementptr inbounds nuw [320 x i8], ptr %.sroa.012.0.i.i.i, i64 %i.id ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 304 ; 3 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8, !noalias !3471
  %i.ju = and i64 %i.jt, 1
  %i.jv = icmp eq i64 %i.ju, 0
  br i1 %i.jv, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i

.lr.ph.i.i6.i.i:                                  ; preds = %bb.am, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i
  %.sroa.0.02.i.i7.i.i = phi i32 [ %i.jz, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i ], [ 0, %bb.am ] ; 6 uses
  %i.jw = icmp ult i32 %.sroa.0.02.i.i7.i.i, 7
  br i1 %i.jw, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i6.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3471
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i: ; preds = %.lr.ph.i.i6.i.i
  %.not.i.i.i11.i.i = icmp eq i32 %.sroa.0.02.i.i7.i.i, 0
  br i1 %.not.i.i.i11.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.preheader

.lr.ph.i.i.i14.i.i.preheader:                     ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i
  %i.jx = mul nuw i32 %.sroa.0.02.i.i7.i.i, %.sroa.0.02.i.i7.i.i ; 2 uses
  %xtraiter666 = and i32 %i.jx, 7                 ; 3 uses
  %i.jy = icmp ult i32 %.sroa.0.02.i.i7.i.i, 3
  br i1 %i.jy, label %.lr.ph.i.i.i14.i.i.epil.preheader, label %.lr.ph.i.i.i14.i.i.preheader.new

.lr.ph.i.i.i14.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i14.i.i.preheader
  %unroll_iter670 = and i32 %i.jx, 56
  br label %.lr.ph.i.i.i14.i.i

.lr.ph.i.i.i14.i.i:                               ; preds = %.lr.ph.i.i.i14.i.i, %.lr.ph.i.i.i14.i.i.preheader.new
  %niter671 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.preheader.new ], [ %niter671.next.7, %.lr.ph.i.i.i14.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3471
  call void @llvm.x86.sse2.pause(), !noalias !3471
  call void @llvm.x86.sse2.pause(), !noalias !3471
  call void @llvm.x86.sse2.pause(), !noalias !3471
  call void @llvm.x86.sse2.pause(), !noalias !3471
  call void @llvm.x86.sse2.pause(), !noalias !3471
  call void @llvm.x86.sse2.pause(), !noalias !3471
  call void @llvm.x86.sse2.pause(), !noalias !3471
  %niter671.next.7 = add i32 %niter671, 8         ; 2 uses
  %niter671.ncmp.7 = icmp eq i32 %niter671.next.7, %unroll_iter670
  br i1 %niter671.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i.i
  %lcmp.mod668.not = icmp eq i32 %xtraiter666, 0
  br i1 %lcmp.mod668.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil.preheader

.lr.ph.i.i.i14.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.preheader
  %lcmp.mod669 = icmp ne i32 %xtraiter666, 0
  call void @llvm.assume(i1 %lcmp.mod669)
  br label %.lr.ph.i.i.i14.i.i.epil

.lr.ph.i.i.i14.i.i.epil:                          ; preds = %.lr.ph.i.i.i14.i.i.epil, %.lr.ph.i.i.i14.i.i.epil.preheader
  %epil.iter667 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.epil.preheader ], [ %epil.iter667.next, %.lr.ph.i.i.i14.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3471
  %epil.iter667.next = add i32 %epil.iter667, 1   ; 2 uses
  %epil.iter667.cmp.not = icmp eq i32 %epil.iter667.next, %xtraiter666
  br i1 %epil.iter667.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil, !llvm.loop !3218

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i, %bb.an
  %i.jz = add i32 %.sroa.0.02.i.i7.i.i, 1
  %i.ka = load atomic i64, ptr %i.js acquire, align 8, !noalias !3471
  %i.kb = and i64 %i.ka, 1
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, %bb.am
  %.sroa.026.0.copyload.i.i = load i128, ptr %i.jr, align 16, !noalias !3471 ; 2 uses
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.427.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.427.0..sroa_idx.i.i, i64 288, i1 false), !noalias !3468
  %i.kd = add nuw nsw i64 %i.id, 1                ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 31
  br i1 %i.ke, label %.lr.ph.i1.i.i.i, label %bb.ar

.lr.ph.i1.i.i.i:                                  ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i, %bb.aq
  %.sroa.0.03.i.i4.i.i = phi i64 [ %i.kn, %bb.aq ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i ] ; 3 uses
  %i.kf = getelementptr inbounds nuw [320 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.03.i.i4.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 304 ; 2 uses
  %i.kh = load atomic i64, ptr %i.kg acquire, align 8, !noalias !3471
  %i.ki = and i64 %i.kh, 2
  %i.kj = icmp eq i64 %i.ki, 0
  br i1 %i.kj, label %bb.ao, label %.lr.ph.i1.i.i.i.1

bb.ao:                                            ; preds = %.lr.ph.i1.i.i.i
  %i.kk = atomicrmw or ptr %i.kg, i64 4 acq_rel, align 8, !noalias !3471
  %i.kl = and i64 %i.kk, 2
  %i.km = icmp eq i64 %i.kl, 0
  br i1 %i.km, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %.lr.ph.i1.i.i.i.1

.lr.ph.i1.i.i.i.1:                                ; preds = %bb.ao, %.lr.ph.i1.i.i.i
  %i.kn = add nuw nsw i64 %.sroa.0.03.i.i4.i.i, 2 ; 2 uses
  %i.ko = getelementptr inbounds nuw [320 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.03.i.i4.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 624 ; 2 uses
  %i.kq = load atomic i64, ptr %i.kp acquire, align 8, !noalias !3471
  %i.kr = and i64 %i.kq, 2
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i1.i.i.i.1
  %i.kt = atomicrmw or ptr %i.kp, i64 4 acq_rel, align 8, !noalias !3471
  %i.ku = and i64 %i.kt, 2
  %i.kv = icmp eq i64 %i.ku, 0
  br i1 %i.kv, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i1.i.i.i.1
  %exitcond.not.i.i5.i.i.1 = icmp eq i64 %i.kn, 30
  br i1 %exitcond.not.i.i5.i.i.1, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE7destroyB1x_.exit.sink.split.i.i.i, label %.lr.ph.i1.i.i.i

bb.ar:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeB1u_.exit.i.i.i
  %i.kw = atomicrmw or ptr %i.js, i64 2 acq_rel, align 8, !noalias !3471
  %i.kx = and i64 %i.kw, 4
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %bb.as

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE7destroyB1x_.exit.sink.split.i.i.i: ; preds = %bb.au, %bb.aq, %bb.as
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i.i, i64 noundef 9936, i64 noundef 16) #25, !noalias !3471
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.kz = icmp samesign ult i64 %i.id, 29
  br i1 %i.kz, label %.lr.ph.i3.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE7destroyB1x_.exit.sink.split.i.i.i

.lr.ph.i3.i.i.i:                                  ; preds = %bb.as, %bb.au
  %.sroa.0.03.i4.i.i.i = phi i64 [ %i.la, %bb.au ], [ %i.kd, %bb.as ] ; 2 uses
  %i.la = add nuw nsw i64 %.sroa.0.03.i4.i.i.i, 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw [320 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.03.i4.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 304 ; 2 uses
  %i.ld = load atomic i64, ptr %i.lc acquire, align 8, !noalias !3471
  %i.le = and i64 %i.ld, 2
  %i.lf = icmp eq i64 %i.le, 0
  br i1 %i.lf, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i3.i.i.i
  %i.lg = atomicrmw or ptr %i.lc, i64 4 acq_rel, align 8, !noalias !3471
  %i.lh = and i64 %i.lg, 2
  %i.li = icmp eq i64 %i.lh, 0
  br i1 %i.li, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i3.i.i.i
  %exitcond.not.i5.i.i.i = icmp eq i64 %i.la, 30
  br i1 %exitcond.not.i5.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE7destroyB1x_.exit.sink.split.i.i.i, label %.lr.ph.i3.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i: ; preds = %bb.at, %bb.ao, %bb.ap, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE7destroyB1x_.exit.sink.split.i.i.i, %bb.ar
  %i.lj = icmp eq i128 %.sroa.026.0.copyload.i.i, -1
  br i1 %i.lj, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i, label %bb.be

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i
  %i.lk = load i64, ptr %i.bn, align 8, !noalias !3468, !noundef !8 ; 2 uses
  %i.ll = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #25, !noalias !3468 ; 2 uses
  %i.lm = extractvalue { i64, i32 } %i.ll, 0      ; 2 uses
  %i.ln = icmp eq i64 %i.lm, %i.lk
  br i1 %i.ln, label %.split.i17.i, label %bb.bc

bb.aw:                                            ; preds = %bb.bc, %.split.i17.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_recvB1A_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !3472
  store ptr %i.bm, ptr %i.bl, align 8, !noalias !3468
  store ptr %.val56, ptr %.sroa.4.0..sroa_idx.i1.i, align 8, !noalias !3468
  store ptr %i.bn, ptr %.sroa.7.0..sroa_idx.i2.i, align 8, !noalias !3468
  %i.lo = load i8, ptr %i.cq, align 8, !range !10, !noalias !3473, !noundef !8
  %i.lp = icmp eq i8 %i.lo, 1
  br i1 %i.lp, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i13.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i12.i, !prof !14

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i12.i: ; preds = %bb.aw
  %i.lq = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsfIwuYbgPzJV_5uu_du(ptr noundef nonnull align 8 %i.cp, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #25, !noalias !3472 ; 2 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEs_0uEB3Q_.exit.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i13.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i13.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i12.i, %bb.aw
  %.sroa.0.0.i.i.i2.i.i.i14.i = phi ptr [ %i.lq, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i12.i ], [ %i.cp, %bb.aw ] ; 4 uses
  %i.ls = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !3472, !noundef !8 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !3472
  %.not.i.i.i18.i.i = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i18.i.i, label %bb.ax, label %bb.az, !prof !12

bb.ax:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !3472
  %i.lt = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #25, !noalias !3472 ; 3 uses
  store ptr %i.lt, ptr %i.bk, align 8, !noalias !3472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !3472
  store ptr %i.bm, ptr %i.bj, align 8, !noalias !3472
  store ptr %.val56, ptr %.sroa.5.0..sroa_idx5.i.i.i.i5.i, align 8, !noalias !3468
  store ptr %i.bn, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i6.i, align 8, !noalias !3468
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bj, ptr nonnull %i.lt) #31, !noalias !3472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !3472
  %i.lu = atomicrmw sub ptr %i.lt, i64 1 release, align 8, !noalias !3474
  %i.lv = icmp eq i64 %i.lu, 1
  br i1 %i.lv, label %bb.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i16.i

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bk) #28, !noalias !3472
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i16.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i16.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !3472
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0uEB2c_.exit.i.i

bb.az:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i13.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  store atomic i64 0, ptr %i.lw release, align 8, !noalias !3472
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  store atomic ptr null, ptr %i.lx release, align 8, !noalias !3472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !3472
  store ptr %i.bm, ptr %i.bi, align 8, !noalias !3472
  store ptr %.val56, ptr %.sroa.59.0..sroa_idx10.i.i.i.i3.i, align 8, !noalias !3468
  store ptr %i.bn, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i4.i, align 8, !noalias !3468
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bi, ptr nonnull %i.ls) #31, !noalias !3472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !3472
  %i.ly = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !3472, !noundef !8 ; 3 uses
  store ptr %i.ly, ptr %i.bh, align 8, !noalias !3472
  store ptr %i.ls, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !3472
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i15.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ma = atomicrmw sub ptr %i.ly, i64 1 release, align 8, !noalias !3475
  %i.mb = icmp eq i64 %i.ma, 1
  br i1 %i.mb, label %bb.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i15.i

bb.bb:                                            ; preds = %bb.ba
end_hunk_2
begin_hunk_3_@_RNvMs0_CsfIwuYbgPzJV_5uu_duNtB5_11StatPrinter11print_stats:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.445.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.427.i.i, i64 288, i1 false), !noalias !3457
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i: ; preds = %bb.be, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i, %bb.bd
  %.sink.i = phi i128 [ -1, %bb.bd ], [ -1, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.thread.i.i ], [ %.sroa.026.0.copyload.i.i, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !3468
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !3457
  br label %bb.cv

bb.bf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoEBD_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3476)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.724.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !3457
  store i32 -1, ptr %i.cf, align 8, !noalias !3477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !3477
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i8 0, i64 40, i1 false), !noalias !3477
  %i.me = cmpxchg ptr %.val56, i32 0, i32 1 acquire monotonic, align 4, !noalias !3478
  %i.mf = extractvalue { i32, i1 } %i.me, 1
  br i1 %i.mf, label %bb.bh, label %bb.bg, !prof !14

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.val56) #25, !noalias !3478
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.mg = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3478
  %i.mh = and i64 %i.mg, 9223372036854775807
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i.i, label %bb.bi, !prof !14

bb.bi:                                            ; preds = %bb.bh
  %i.mj = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !3478
  %i.mk = xor i1 %i.mj, true
  %i.ml = zext i1 %i.mk to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.bi, %bb.bh
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.ml, %bb.bi ], [ 0, %bb.bh ] ; 5 uses
  %i.mm = load atomic i8, ptr %i.ch monotonic, align 1, !noalias !3478
  %.not.i.i.not.i.i = icmp eq i8 %i.mm, 0
  br i1 %.not.i.i.not.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit.i.i, label %bb.bj, !prof !14

bb.bj:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !3479
  store ptr %.val56, ptr %i.bd, align 8, !noalias !3479
  %i.mn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.mn, align 8, !noalias !3479
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #29, !noalias !3480
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfIwuYbgPzJV_5uu_du.exit.i.i
  %i.mo = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3481)
  %i.mp = load i64, ptr %i.ci, align 8, !alias.scope !3481, !noalias !3482, !noundef !8 ; 6 uses
  %i.mq = icmp ult i64 %i.mp, 384307168202282326
  call void @llvm.assume(i1 %i.mq)
  %i.mr = icmp eq i64 %i.mp, 0
  br i1 %i.mr, label %.loopexit.i.i, label %bb.bk

bb.bk:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit.i.i
  %i.ms = load ptr, ptr %i.cl, align 8, !alias.scope !3481, !noalias !3482, !nonnull !8, !noundef !8 ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.mp, 24
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i27.i

.lr.ph.i.i.i27.i:                                 ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, %bb.bk
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.no, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i ], [ 0, %bb.bk ] ; 5 uses
  %i.mu = phi ptr [ %i.mv, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i ], [ %i.ms, %bb.bk ] ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3483)
  %i.mw = load ptr, ptr %i.mu, align 8, !alias.scope !3483, !noalias !3484, !nonnull !8, !noundef !8 ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 40
  %i.my = load i64, ptr %i.mx, align 8, !noalias !3485, !noundef !8
  %.not.i.i.i.i28.i = icmp eq i64 %i.my, %i.ck
  br i1 %.not.i.i.i.i28.i, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i27.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !3483, !noalias !3484, !noundef !8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.nc = cmpxchg ptr %i.nb, i64 0, i64 %i.na acq_rel acquire, align 8, !noalias !3485
  %i.nd = extractvalue { i64, i1 } %i.nc, 1
  br i1 %i.nd, label %bb.bm, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !alias.scope !3483, !noalias !3484, !noundef !8 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mw, i64 32
  store atomic ptr %i.nf, ptr %i.nh release, align 8, !noalias !3485
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !noalias !3485, !nonnull !8, !noundef !8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 40 ; 2 uses
  %i.nl = atomicrmw xchg ptr %i.nk, i32 1 release, align 4, !noalias !3485
  %i.nm = icmp eq i32 %i.nl, -1
  br i1 %i.nm, label %bb.bp, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.nn = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.nk) #25, !noalias !3485 ; 0 uses
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.bl, %.lr.ph.i.i.i27.i
  %i.no = add nuw nsw i64 %.sroa.02.010.i.i.i.i, 1
  %i.np = icmp eq ptr %i.mv, %i.mt
  br i1 %i.np, label %.loopexit.i.i, label %.lr.ph.i.i.i27.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %i.nq = icmp samesign ult i64 %.sroa.02.010.i.i.i.i, %i.mp
  call void @llvm.assume(i1 %i.nq)
  call void @llvm.experimental.noalias.scope.decl(metadata !3486)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3487)
  %i.nr = getelementptr inbounds nuw [24 x i8], ptr %i.ms, i64 %.sroa.02.010.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i = load ptr, ptr %i.nr, align 8, !noalias !3488 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !3488
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.nt = xor i64 %.sroa.02.010.i.i.i.i, -1
  %i.nu = add nsw i64 %i.mp, %i.nt
  %i.nv = mul nuw nsw i64 %i.nu, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nr, ptr nonnull align 8 %i.ns, i64 %i.nv, i1 false), !noalias !3489
  %i.nw = add nsw i64 %i.mp, -1                   ; 2 uses
  store i64 %i.nw, ptr %i.ci, align 8, !alias.scope !3490, !noalias !3491
  %.not.i.i5.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i, null
  br i1 %.not.i.i5.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i, label %bb.bq, !prof !28

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.010.i.i.i.i, i64 noundef %i.nw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #29, !noalias !3492
  unreachable

bb.bq:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsfIwuYbgPzJV_5uu_du.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !3477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.820.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, i64 16, i1 false), !noalias !3477
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i, ptr %i.be, align 8, !noalias !3477
  %i.nx = load ptr, ptr %i.cm, align 8, !noalias !3477, !noundef !8
  store ptr %i.nx, ptr %i.cg, align 8, !noalias !3477
  br i1 %i.mo, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ny = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !3477
  %i.nz = and i64 %i.ny, 9223372036854775807
  %i.oa = icmp eq i64 %i.nz, 0
  br i1 %i.oa, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !14

bb.bs:                                            ; preds = %bb.br
  %i.ob = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28, !noalias !3477
  br i1 %i.ob, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store atomic i8 1, ptr %i.ch monotonic, align 4, !noalias !3477
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.oc = atomicrmw xchg ptr %.val56, i32 0 release, align 4, !noalias !3477
  %i.od = icmp eq i32 %i.oc, 2
  br i1 %i.od, label %bb.bu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit.i.i, !prof !12

bb.bu:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.val56) #25, !noalias !3477
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.bu, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %.val4.i.i = load ptr, ptr %i.cg, align 8, !noalias !3477, !noundef !8 ; 11 uses
  %i.oe = icmp eq ptr %.val4.i.i, null
  br i1 %i.oe, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit.i.i
  %i.of = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 305
  %i.og = load i8, ptr %i.of, align 1, !range !17, !noalias !3493, !noundef !8
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.oi = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 304 ; 2 uses
  %i.oj = load atomic i8, ptr %i.oi acquire, align 1, !noalias !3493
  %.not2.i.i.i.i = icmp eq i8 %i.oj, 0
  br i1 %.not2.i.i.i.i, label %.lr.ph.i.i6.i35.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit.i.i.i

.lr.ph.i.i6.i35.i:                                ; preds = %bb.bw, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i
  %.sroa.0.03.i.i.i36.i = phi i32 [ %i.on, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i ], [ 0, %bb.bw ] ; 6 uses
  %i.ok = icmp ult i32 %.sroa.0.03.i.i.i36.i, 7
  br i1 %i.ok, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i6.i35.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3493
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i: ; preds = %.lr.ph.i.i6.i35.i
  %.not.i.i.i8.i.i = icmp eq i32 %.sroa.0.03.i.i.i36.i, 0
  br i1 %.not.i.i.i8.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, label %.lr.ph.i.i.i.i42.i.preheader

.lr.ph.i.i.i.i42.i.preheader:                     ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i
  %i.ol = mul nuw i32 %.sroa.0.03.i.i.i36.i, %.sroa.0.03.i.i.i36.i ; 2 uses
  %xtraiter = and i32 %i.ol, 7                    ; 3 uses
  %i.om = icmp ult i32 %.sroa.0.03.i.i.i36.i, 3
  br i1 %i.om, label %.lr.ph.i.i.i.i42.i.epil.preheader, label %.lr.ph.i.i.i.i42.i.preheader.new

.lr.ph.i.i.i.i42.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i42.i.preheader
  %unroll_iter = and i32 %i.ol, 56
  br label %.lr.ph.i.i.i.i42.i

.lr.ph.i.i.i.i42.i:                               ; preds = %.lr.ph.i.i.i.i42.i, %.lr.ph.i.i.i.i42.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i42.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3493
  call void @llvm.x86.sse2.pause(), !noalias !3493
  call void @llvm.x86.sse2.pause(), !noalias !3493
  call void @llvm.x86.sse2.pause(), !noalias !3493
  call void @llvm.x86.sse2.pause(), !noalias !3493
  call void @llvm.x86.sse2.pause(), !noalias !3493
  call void @llvm.x86.sse2.pause(), !noalias !3493
  call void @llvm.x86.sse2.pause(), !noalias !3493
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i42.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i42.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, label %.lr.ph.i.i.i.i42.i.epil.preheader

.lr.ph.i.i.i.i42.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.preheader
  %lcmp.mod641 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod641)
  br label %.lr.ph.i.i.i.i42.i.epil

.lr.ph.i.i.i.i42.i.epil:                          ; preds = %.lr.ph.i.i.i.i42.i.epil, %.lr.ph.i.i.i.i42.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i42.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3493
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, label %.lr.ph.i.i.i.i42.i.epil, !llvm.loop !3265

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i, %bb.bx
  %i.on = add i32 %.sroa.0.03.i.i.i36.i, 1
  %i.oo = load atomic i8, ptr %i.oi acquire, align 1, !noalias !3493
  %.not.i.i7.i.i = icmp eq i8 %i.oo, 0
  br i1 %.not.i.i7.i.i, label %.lr.ph.i.i6.i35.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit.i.i.i

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, %bb.bw
  %.sroa.08.0.copyload.i.i.i = load i128, ptr %.val4.i.i, align 16, !noalias !3493 ; 2 uses
  store i128 -1, ptr %.val4.i.i, align 16, !noalias !3493
  %.not.i.i34.i = icmp eq i128 %.sroa.08.0.copyload.i.i.i, -1
  br i1 %.not.i.i34.i, label %bb.bz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEB2l_.exit.i.i.i, !prof !12

bb.by:                                            ; preds = %bb.bv
  %.sroa.0.0.copyload.i.i.i = load i128, ptr %.val4.i.i, align 16, !noalias !3493 ; 2 uses
  store i128 -1, ptr %.val4.i.i, align 16, !noalias !3493
  %.not18.i.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %.not18.i.i.i, label %bb.cb, label %bb.ca, !prof !12

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEB2l_.exit.i.i.i: ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit.i.i.i
  %.sroa.510.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.724.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.510.0..sroa_idx.i.i.i, i64 288, i1 false), !noalias !3477
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef 320, i64 noundef 16) #25, !noalias !3493
  br label %bb.cc

bb.bz:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_readyB1z_.exit.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #29, !noalias !3493
  unreachable

bb.ca:                                            ; preds = %bb.by
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.724.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.0..sroa_idx.i.i.i, i64 288, i1 false), !noalias !3477
  %i.op = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 304
  store atomic i8 1, ptr %i.op release, align 16, !noalias !3493
  br label %bb.cc

bb.cb:                                            ; preds = %bb.by
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #29, !noalias !3493
  unreachable

.loopexit.i.i:                                    ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfIwuYbgPzJV_5uu_du.exit.i.i
  %i.oq = load i8, ptr %i.cn, align 8, !range !17, !noalias !3477, !noundef !8
  %i.or = trunc nuw i8 %i.oq to i1
  br i1 %i.or, label %bb.cq, label %bb.cf

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsfIwuYbgPzJV_5uu_du.exit.i.i
  store i8 1, ptr %.sroa.445.0..sroa_idx.i.i, align 16, !alias.scope !3476, !noalias !3457
  store i128 -1, ptr %i.bv, align 16, !alias.scope !3476, !noalias !3457
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEB2l_.exit.i.i.i
  %.sroa.023.0.ph.i.i = phi i128 [ %.sroa.0.0.copyload.i.i.i, %bb.ca ], [ %.sroa.08.0.copyload.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEB2l_.exit.i.i.i ] ; 2 uses
  store i128 %.sroa.023.0.ph.i.i, ptr %i.bv, align 16, !alias.scope !3476, !noalias !3457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.445.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.724.i.i, i64 288, i1 false), !noalias !3457
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i
  %.pre45.i = phi i128 [ %.sroa.023.0.ph.i.i, %bb.cc ], [ -1, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4readB1A_.exit.i.i ]
  %i.os = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i.i.i, i64 1 release, align 8, !noalias !3494
  %i.ot = icmp eq i64 %i.os, 1
  br i1 %i.ot, label %bb.ce, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit.i.i

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.be) #28, !noalias !3477
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3477
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvB1A_.exit.i

bb.cf:                                            ; preds = %.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !3477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !3496
  store ptr %i.bf, ptr %i.bc, align 8, !noalias !3497
  store ptr %i.bg, ptr %.sroa.628.0..sroa_idx.i.i, align 8, !noalias !3497
  store <2 x ptr> %i.fo, ptr %.sroa.733.0..sroa_idx.i.i, align 8, !noalias !3497
  store i8 %.sroa.01.0.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !3497
  %i.ou = load i8, ptr %i.cq, align 8, !range !10, !noalias !3498, !noundef !8
  %i.ov = icmp eq i8 %i.ou, 1
  br i1 %i.ov, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i30.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i29.i, !prof !14

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i29.i: ; preds = %bb.cf
  %i.ow = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsfIwuYbgPzJV_5uu_du(ptr noundef nonnull align 8 %i.cp, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #25, !noalias !3499 ; 2 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i30.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i30.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i29.i, %bb.cf
  %.sroa.0.0.i.i.i2.i.i.i31.i = phi ptr [ %i.ow, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i29.i ], [ %i.cp, %bb.cf ] ; 4 uses
  %i.oy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !3500, !noundef !8 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !3500
  %.not.i.i.i9.i.i = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i9.i.i, label %bb.cg, label %bb.ci, !prof !12

bb.cg:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !3500
  %i.oz = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #25, !noalias !3500 ; 3 uses
  store ptr %i.oz, ptr %i.bb, align 8, !noalias !3500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !3500
  store i8 2, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !3500
  store ptr %i.bf, ptr %i.az, align 8, !noalias !3497
  store ptr %i.bg, ptr %.sroa.628.0..sroa_idx31.i.i, align 8, !noalias !3497
  store <2 x ptr> %i.fo, ptr %.sroa.733.0..sroa_idx36.i.i, align 8, !noalias !3497
  store i8 %.sroa.01.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i, align 8, !noalias !3500
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(304) %i.ba, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.az, ptr nonnull %i.oz) #31, !noalias !3496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3500
  %i.pa = atomicrmw sub ptr %i.oz, i64 1 release, align 8, !noalias !3501
  %i.pb = icmp eq i64 %i.pa, 1
  br i1 %i.pb, label %bb.ch, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i33.i

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.bb) #28, !noalias !3500
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i33.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i33.i: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !3500
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.i.i.i

bb.ci:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i30.i
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  store atomic i64 0, ptr %i.pc release, align 8, !noalias !3500
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  store atomic ptr null, ptr %i.pd release, align 8, !noalias !3500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !3500
  store i8 2, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !3500
  store ptr %i.bf, ptr %i.ay, align 8, !noalias !3497
  store ptr %i.bg, ptr %.sroa.628.0..sroa_idx29.i.i, align 8, !noalias !3497
  store <2 x ptr> %i.fo, ptr %.sroa.733.0..sroa_idx34.i.i, align 8, !noalias !3497
  store i8 %.sroa.01.0.i.i.i.i, ptr %.sroa.410.0..sroa_idx11.i.i.i.i.i, align 8, !noalias !3500
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0B1C_(ptr noalias nofree noundef align 16 captures(address) dereferenceable(304) %i.ba, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ay, ptr nonnull %i.oy) #31, !noalias !3496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !3500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !3500
  %i.pe = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !3500, !noundef !8 ; 3 uses
  store ptr %i.pe, ptr %i.ax, align 8, !noalias !3500
  store ptr %i.oy, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !3500
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i32.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pg = atomicrmw sub ptr %i.pe, i64 1 release, align 8, !noalias !3502
  %i.ph = icmp eq i64 %i.pg, 1
  br i1 %i.ph, label %bb.ck, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i32.i

bb.ck:                                            ; preds = %bb.cj
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ax) #28, !noalias !3500
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i32.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i32.i: ; preds = %bb.ck, %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3500
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.i.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i32.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i33.i
  %.sroa.04.0.copyload5.i.i.i = load i128, ptr %i.ba, align 16, !noalias !3496 ; 2 uses
  %i.pi = icmp eq i128 %.sroa.04.0.copyload5.i.i.i, -2
  br i1 %i.pi, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.thread.i.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5W_EB3Q_.exit.i.i.i
  store i128 %.sroa.04.0.copyload5.i.i.i, ptr %i.bv, align 16, !alias.scope !3503, !noalias !3504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.445.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(288) %i.co, i64 288, i1 false), !noalias !3504
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4recvs_0IB1z_B1y_NtNtB7_4mpsc16RecvTimeoutErrorEEB2c_.exit.i.i
end_hunk_3
begin_hunk_4_@_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtCsfIwuYbgPzJV_5uu_du8FileInfouNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE6insertBP_:bb.a
  %i.ag = add i16 %.sroa.01.033.i.i, -1
  %i.ah = and i16 %i.ag, %.sroa.01.033.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i, zeroinitializer
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread28.i.i, !prof !12

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
  br i1 %i.aq, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.126.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.124.i.i = phi i64 [ %.sroa.4.125.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ar = add i64 %i.s, 16                        ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.0.021.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.125.i.i
  %i.au = load i8, ptr %i.at, align 1, !noalias !3734, !noundef !8 ; 2 uses
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  %.val2.i23.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !3734
  %i.aw = icmp slt <16 x i8> %.val2.i23.i.i, zeroinitializer
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.ax, 0
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true)
  %i.az = zext nneg i16 %i.ay to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.az
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !3735
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ba = phi i8 [ %.pre, %bb.h ], [ %i.au, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.az, %bb.h ], [ %.sroa.4.125.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3735)
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.bc = and i8 %i.ba, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bf = and i64 %i.be, %.val5.i
  store i8 %i.p, ptr %i.bb, align 1, !noalias !3735
  %i.bg = getelementptr i8, ptr %.val.i, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  store i8 %i.p, ptr %i.bh, align 1, !noalias !3735
  %i.bi = load <2 x i64>, ptr %i.j, align 8, !alias.scope !3735
  %i.bj = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bd, i64 0
  %i.bk = sub <2 x i64> %i.bi, %i.bj
  store <2 x i64> %i.bk, ptr %i.j, align 8, !alias.scope !3735
  %i.bl = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bm = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -32
  store i128 %1, ptr %i.bn, align 16, !noalias !3735
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -16
  store i64 %2, ptr %i.bo, align 16, !noalias !3735
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
  store i32 -1, ptr %i.s, align 8, !noalias !3865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3865
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false), !noalias !3865
  %i.w = load atomic i64, ptr %i.u monotonic, align 8, !noalias !3866 ; 2 uses
  %i.x = load i64, ptr %i.v, align 16, !noalias !3866, !noundef !8 ; 2 uses
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
  %i.ag = phi i64 [ %i.x, %.lr.ph.i.lr.ph.i ], [ %i.cs, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i ]
  %i.ah = phi i64 [ %i.w, %.lr.ph.i.lr.ph.i ], [ %i.cr, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3867)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %i.ai = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.bn, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ]
  %.sroa.02.043.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %i.bm, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 8 uses
  %.sroa.0.03842.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 12 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.aj = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.ak = add i64 %i.ai, -1
  %i.al = and i64 %i.ak, %.sroa.02.043.i.i        ; 3 uses
  %i.am = load i64, ptr %i.aa, align 8, !noalias !3868, !noundef !8
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %.sroa.02.043.i.i, %i.an
  %i.ap = load ptr, ptr %i.ab, align 8, !noalias !3868, !nonnull !8, !noundef !8
  %i.aq = load i64, ptr %i.ac, align 16, !noalias !3868, !noundef !8
  %i.ar = icmp ult i64 %i.al, %i.aq
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [320 x i8], ptr %i.ap, i64 %i.al ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !3868 ; 2 uses
  %i.av = icmp eq i64 %.sroa.02.043.i.i, %i.au
  br i1 %i.av, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i64, ptr %i.aa, align 8, !noalias !3868, !noundef !8
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %.sroa.02.043.i.i, 1
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ba = add nuw i64 %i.al, 1
  %i.bb = load i64, ptr %i.ad, align 128, !noalias !3868, !noundef !8
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bd = icmp ult i32 %.sroa.0.03842.i.i, 7
  br i1 %i.bd, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3868
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i
  %i.be = mul nuw i32 %.sroa.0.03842.i.i, %.sroa.0.03842.i.i ; 2 uses
  %xtraiter155 = and i32 %i.be, 7                 ; 3 uses
  %i.bf = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bf, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter159 = and i32 %i.be, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter160 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter160.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  %niter160.next.7 = add i32 %niter160, 8         ; 2 uses
  %niter160.ncmp.7 = icmp eq i32 %niter160.next.7, %unroll_iter159
  br i1 %niter160.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.bg = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !3868
  %i.bh = load i64, ptr %i.aa, align 8, !noalias !3868, !noundef !8
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = icmp eq i64 %i.bi, %.sroa.02.043.i.i
  br i1 %i.bj, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %..i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.bk = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i  ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter161 = and i32 %i.bk, 5                 ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bl, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter165 = and i32 %i.bk, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter166 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter166.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  %niter166.next.7 = add i32 %niter166, 8         ; 2 uses
  %niter166.ncmp.7 = icmp eq i32 %niter166.next.7, %unroll_iter165
  br i1 %niter166.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod169.not = icmp eq i32 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod170 = icmp ne i32 %xtraiter167, 0
  call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter168 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter168.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3868
  %epil.iter168.next = add i32 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i32 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !3742

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod163.not = icmp eq i32 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod164 = icmp ne i32 %xtraiter161, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter162 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter162.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3868
  %epil.iter162.next = add i32 %epil.iter162, 1   ; 2 uses
  %epil.iter162.cmp.not = icmp eq i32 %epil.iter162.next, %xtraiter161
  br i1 %epil.iter162.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !3743

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod157.not = icmp eq i32 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod158 = icmp ne i32 %xtraiter155, 0
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter156 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter156.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !3868
  %epil.iter156.next = add i32 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i32 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !3744

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bm = load atomic i64, ptr %i.u monotonic, align 16, !noalias !3868 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03842.i.i, 1
  %i.bn = load i64, ptr %i.v, align 16, !noalias !3868, !noundef !8 ; 2 uses
  %i.bo = and i64 %i.bn, %i.bm
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.c, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bq = load i64, ptr %i.aa, align 8, !noalias !3868, !noundef !8
  %i.br = add i64 %i.bq, %i.ao
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bs = add i64 %.sroa.02.043.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.bs, %bb.j ], [ %i.br, %bb.i ]
  %i.bt = cmpxchg weak ptr %i.u, i64 %.sroa.02.043.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !3868
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bt, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter167 = and i32 %i.aj, 7                 ; 3 uses
  %i.bu = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bu, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter171 = and i32 %i.aj, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter172 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter172.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  call void @llvm.x86.sse2.pause(), !noalias !3868
  %niter172.next.7 = add i32 %niter172, 8         ; 2 uses
  %niter172.ncmp.7 = icmp eq i32 %niter172.next.7, %unroll_iter171
  br i1 %niter172.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i: ; preds = %bb.h
  %i.bv = load i32, ptr %i.s, align 8, !range !25, !noalias !3865, !noundef !8 ; 2 uses
  %.not.i = icmp eq i32 %i.bv, -1
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  store ptr %i.as, ptr %i.p, align 8, !alias.scope !3867, !noalias !3865
  %i.bx = add i64 %.sroa.02.043.i.i, 1            ; 2 uses
  store i64 %i.bx, ptr %i.t, align 8, !alias.scope !3867, !noalias !3865
  store i128 %.sroa.0.0.copyload, ptr %i.as, align 16, !noalias !3869
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.0..val.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false), !noalias !3870
  store atomic i64 %i.bx, ptr %i.bw release, align 16, !noalias !3871
  %i.by = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.by) #31, !noalias !3871
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i: ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.b
  %.not7.i = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not7.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendB1A_.exit, label %bb.u

bb.l:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i
  %i.bz = load i64, ptr %i.q, align 8, !noalias !3865, !noundef !8 ; 2 uses
  %i.ca = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #25, !noalias !3865 ; 2 uses
  %i.cb = extractvalue { i64, i32 } %i.ca, 0      ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.bz
  br i1 %i.cc, label %.split.i, label %bb.s

bb.m:                                             ; preds = %bb.s, %.split.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3872
  store ptr %i.p, ptr %i.o, align 8, !noalias !3865
  store ptr %.8.val, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !3865
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3865
  %i.cd = load i8, ptr %i.af, align 8, !range !10, !noalias !3873, !noundef !8
  %i.ce = icmp eq i8 %i.cd, 1
  br i1 %i.ce, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i, !prof !14

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i: ; preds = %bb.m
  %i.cf = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsfIwuYbgPzJV_5uu_du(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #25, !noalias !3872 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uEB3Q_.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.cf, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i ], [ %i.ae, %bb.m ] ; 4 uses
  %i.ch = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3872, !noundef !8 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3872
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.p, !prof !12

bb.n:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3872
  %i.ci = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #25, !noalias !3872 ; 3 uses
  store ptr %i.ci, ptr %i.n, align 8, !noalias !3872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3872
  store ptr %i.p, ptr %i.m, align 8, !noalias !3872
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !3865
  store ptr %i.q, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !noalias !3865
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.ci) #31, !noalias !3872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3872
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !3874
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #28, !noalias !3872
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3872
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.thread.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store atomic i64 0, ptr %i.cl release, align 8, !noalias !3872
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store atomic ptr null, ptr %i.cm release, align 8, !noalias !3872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3872
  store ptr %i.p, ptr %i.l, align 8, !noalias !3872
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !3865
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !3865
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0B1C_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.ch) #31, !noalias !3872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3872
  %i.cn = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3872, !noundef !8 ; 3 uses
  store ptr %i.cn, ptr %i.k, align 8, !noalias !3872
  store ptr %i.ch, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3872
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !3875
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #28, !noalias !3872
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3872
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uEB3Q_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsfIwuYbgPzJV_5uu_du.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs0_0B2e_(ptr nonnull %i.o) #31, !noalias !3872
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEB2c_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uEB3Q_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsfIwuYbgPzJV_5uu_du.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3872
  %i.cr = load atomic i64, ptr %i.u monotonic, align 16, !noalias !3876 ; 2 uses
  %i.cs = load i64, ptr %i.v, align 16, !noalias !3876, !noundef !8 ; 2 uses
  %i.ct = and i64 %i.cs, %i.cr
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i

.split.i:                                         ; preds = %bb.l
  %i.cv = extractvalue { i64, i32 } %i.ca, 1      ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 1000000000
  call void @llvm.assume(i1 %i.cw)
  %.not30.i = icmp samesign ult i32 %i.cv, %i.bv
  br i1 %.not30.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not29.i = icmp slt i64 %i.cb, %i.bz
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
  %i.cx = phi i128 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ck

bb.v:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i128, ptr %1, align 16 ; 3 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8, !noalias !3877 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.db = load atomic ptr, ptr %i.da acquire, align 8, !noalias !3877
  %i.dc = and i64 %i.cz, 1
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.cz, %.lr.ph.i.i3 ], [ %i.dn, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.db, %.lr.ph.i.i3 ], [ %i.do, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.df = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.dg = and i64 %i.df, 31                       ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 31
  br i1 %i.dh, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.di, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #25, !noalias !3877
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8: ; preds = %bb.x
  %.not.i.i.i9 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i9, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.preheader

.lr.ph.i.i.i12.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8
  %i.dj = mul nuw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter149 = and i32 %i.dj, 7                 ; 3 uses
  %i.dk = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dk, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.i.i.i12.preheader.new

.lr.ph.i.i.i12.preheader.new:                     ; preds = %.lr.ph.i.i.i12.preheader
  %unroll_iter153 = and i32 %i.dj, 56
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.i.i.i12.preheader.new
  %niter154 = phi i32 [ 0, %.lr.ph.i.i.i12.preheader.new ], [ %niter154.next.7, %.lr.ph.i.i.i12 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  %niter154.next.7 = add i32 %niter154, 8         ; 2 uses
  %niter154.ncmp.7 = icmp eq i32 %niter154.next.7, %unroll_iter153
  br i1 %niter154.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i12

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i12
  %lcmp.mod151.not = icmp eq i32 %xtraiter149, 0
  br i1 %lcmp.mod151.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.preheader
  %lcmp.mod152 = icmp ne i32 %xtraiter149, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph.i.i.i12.epil

.lr.ph.i.i.i12.epil:                              ; preds = %.lr.ph.i.i.i12.epil, %.lr.ph.i.i.i12.epil.preheader
  %epil.iter150 = phi i32 [ 0, %.lr.ph.i.i.i12.epil.preheader ], [ %epil.iter150.next, %.lr.ph.i.i.i12.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  %epil.iter150.next = add i32 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i32 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil, !llvm.loop !3776

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, %bb.y
  %i.dl = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.z:                                             ; preds = %bb.w
  %i.dm = icmp eq i64 %i.dg, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.dm, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ah, %bb.ag, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.du, %bb.ag ], [ %i.du, %bb.ah ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ed, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.ag ], [ %.sroa.0.047.i.i, %bb.ah ]
  %i.dn = load atomic i64, ptr %i.cy acquire, align 8, !noalias !3877 ; 2 uses
  %i.do = load atomic ptr, ptr %i.da acquire, align 8, !noalias !3877
  %i.dp = and i64 %i.dn, 1
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.w, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.z ], [ %i.ds, %bb.aa ] ; 7 uses
  %i.dr = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.dr, label %bb.ac, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !3877
  %i.ds = tail call noalias noundef align 16 dereferenceable_or_null(9936) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 9936, i64 noundef 16) #25, !noalias !3877 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i, !prof !12

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 9936) #30, !noalias !3877
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !3877
  %i.du = tail call noalias noundef align 16 dereferenceable_or_null(9936) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 9936, i64 noundef 16) #25, !noalias !3877 ; 6 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inB26_.exit16.i.i, !prof !12

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 9936) #30, !noalias !3877
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inB26_.exit16.i.i: ; preds = %bb.ac
  %i.dw = cmpxchg ptr %i.da, ptr null, ptr %i.du release monotonic, align 8, !noalias !3877
  %i.dx = extractvalue { ptr, i1 } %i.dw, 1
  br i1 %i.dx, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.du, %bb.af ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEEB2G_.exit.i.i ] ; 3 uses
  %i.dy = add i64 %.sroa.03.049.i.i, 2
  %i.dz = cmpxchg weak ptr %i.cy, i64 %.sroa.03.049.i.i, i64 %i.dy seq_cst acquire, align 8, !noalias !3877
  %.sroa.18.0.in.i.i.i4 = extractvalue { i64, i1 } %i.dz, 1
  br i1 %.sroa.18.0.in.i.i.i4, label %bb.ai, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inB26_.exit16.i.i
  store atomic ptr %i.du, ptr %i.de release, align 8, !noalias !3877
  br label %bb.ae

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inB26_.exit16.i.i
  %i.ea = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.ea, label %.backedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 9936, i64 noundef 16) #25, !noalias !3877
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ae
  %..i.i.i.i5 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %i.eb = mul nuw nsw i32 %..i.i.i.i5, %..i.i.i.i5 ; 2 uses
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %xtraiter = and i32 %i.eb, 5                    ; 3 uses
  %i.ec = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.ec, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %i.eb, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod148 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !3877
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !3777

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.ed = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.dm, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.ak, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread20.i, !prof !12

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread20.i: ; preds = %bb.aj
  store atomic ptr %.sroa.035.2.i.i, ptr %i.da release, align 8, !noalias !3877
  %i.ee = atomicrmw add ptr %i.cy, i64 2 release, align 8, !noalias !3877 ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 9920
  store atomic ptr %.sroa.035.2.i.i, ptr %i.ef release, align 8, !noalias !3877
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #29, !noalias !3877
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ai
  %.sroa.9.0.i = phi i64 [ %i.dg, %bb.ai ], [ 0, %.backedge.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.ai ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ai ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.eg = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.eg, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 9936, i64 noundef 16) #25, !noalias !3877
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i: ; preds = %bb.al, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3879)
  %i.eh = icmp eq ptr %.sroa.43.0.i, null
  br i1 %i.eh, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeB1A_.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread20.i
  %.sroa.43.126.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread20.i ], [ %.sroa.43.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i ]
  %.sroa.9.125.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.thread20.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendB1A_.exit.i ]
  %i.ei = getelementptr inbounds nuw [320 x i8], ptr %.sroa.43.126.i, i64 %.sroa.9.125.i ; 3 uses
end_hunk_4
