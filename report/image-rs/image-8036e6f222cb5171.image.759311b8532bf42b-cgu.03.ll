Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RNCNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB7_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4recvs_0Csa5QsYiPB8Gl_5image:bb.a
  unreachable

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5: ; preds = %bb.y, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2553
  call void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.l), !noalias !2553
  call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  %i.ck = load i64, ptr %i.c, align 8, !range !19, !alias.scope !2554, !noalias !2553, !noundef !7
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %bb.ac, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6, !prof !18

bb.ac:                                            ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2555
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !2554, !noalias !2553, !nonnull !7, !align !16, !noundef !7
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cp = load i8, ptr %i.co, align 8, !range !14, !alias.scope !2554, !noalias !2553, !noundef !7
  store ptr %i.cn, ptr %i.a, align 8, !noalias !2555
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cp, ptr %i.cq, align 8, !noalias !2555
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #36
          to label %bb.ae unwind label %bb.ad, !noalias !2556

bb.ad:                                            ; preds = %bb.ac
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %common.resume unwind label %bb.af, !noalias !2556

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2556
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6: ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread5
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !2554, !noalias !2553, !nonnull !7, !align !16, !noundef !7 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cw = load i8, ptr %i.cv, align 8, !range !14, !alias.scope !2554, !noalias !2553, !noundef !7 ; 2 uses
  %i.cx = trunc nuw i8 %i.cw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2553
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !2558, !noalias !2553, !nonnull !7, !noundef !7 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !2558, !noalias !2553, !noundef !7 ; 3 uses
  %.idx = mul nuw nsw i64 %i.dc, 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx
  %i.de = icmp eq i64 %i.dc, 0
  br i1 %i.de, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %.lr.ph
  %i.df = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %i.dg = add nuw nsw i64 %i.dj, 1
  %i.dh = icmp eq ptr %i.df, %i.dd
  br i1 %i.dh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6, %bb.ag
  %i.di = phi ptr [ %i.df, %bb.ag ], [ %i.da, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6 ] ; 2 uses
  %i.dj = phi i64 [ %i.dg, %bb.ag ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !2559, !noalias !2560, !noundef !7
  %.not.i.i.i = icmp eq i64 %i.dl, %i.i
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryE6removeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cy, i64 noundef %i.dj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81)
          to label %._RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i unwind label %bb.ai, !noalias !2553

._RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i: ; preds = %bb.ah
  %.pre.i = load i64, ptr %i.db, align 8, !noalias !2553
  br label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i

._crit_edge:                                      ; preds = %bb.ag, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i6
  store ptr null, ptr %i.b, align 8, !alias.scope !2557, !noalias !2553
  br label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image(ptr nonnull %i.cu, i8 %i.cw) #37
          to label %common.resume unwind label %bb.ap, !noalias !2553

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i: ; preds = %._crit_edge, %._RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i
  %i.dn = phi i64 [ %.pre.i, %._RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit_crit_edge.i ], [ %i.dc, %._crit_edge ] ; 2 uses
  %i.do = icmp ult i64 %i.dn, 384307168202282326
  call void @llvm.assume(i1 %i.do)
  %i.dp = icmp eq i64 %i.dn, 0
  br i1 %i.dp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !2553, !noundef !7 ; 2 uses
  %i.ds = icmp ult i64 %i.dr, 384307168202282326
  call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp eq i64 %i.dr, 0
  %i.du = zext i1 %i.dt to i8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i
  %.sroa.0.0.i9 = phi i8 [ %i.du, %bb.aj ], [ 0, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.i ]
  store atomic i8 %.sroa.0.0.i9, ptr %i.ay seq_cst, align 8, !noalias !2553
  %.sroa.0.0.copyload1 = load ptr, ptr %i.b, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2553
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  br i1 %i.cx, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dw = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2553
  %i.dx = and i64 %i.dw, 9223372036854775807
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10, label %bb.am, !prof !10

bb.am:                                            ; preds = %bb.al
  %i.dz = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38, !noalias !2553
  br i1 %i.dz, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10, label %bb.an

bb.an:                                            ; preds = %bb.am
  store atomic i8 1, ptr %i.dv monotonic, align 4, !noalias !2553
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.ea = atomicrmw xchg ptr %i.cu, i32 0 release, align 4, !noalias !2553
  %i.eb = icmp eq i32 %i.ea, 2
  br i1 %i.eb, label %bb.ao, label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit, !prof !18

bb.ao:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10
  call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cu), !noalias !2553
  br label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit

bb.ap:                                            ; preds = %bb.ai
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2553
  unreachable

_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i10, %bb.ao
  %.not1 = icmp eq ptr %.sroa.0.0.copyload1, null
  br i1 %.not1, label %bb.as, label %bb.aq, !prof !18

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.aq:                                            ; preds = %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit
  store ptr %.sroa.0.0.copyload1, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.ed = atomicrmw add ptr %.sroa.0.0.copyload1, i64 -1 release, align 8, !noalias !2561
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.ar, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #38
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.as:                                            ; preds = %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCsdsTQD3x2eOp_3exr5blockNtB2_17UncompressedBlock16decompress_chunk(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4296) %2, i1 noundef zeroext %3) unnamed_addr #9 personality ptr @rust_eh_personality {
_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.661 = alloca [24 x i8], align 8          ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4280
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2578, !noundef !7 ; 2 uses
  %i.k = icmp ugt i64 %i.j, 3                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %.sink12.i = select i1 %i.k, i64 %i.m, i64 %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !7 ; 2 uses
  %i.p = icmp ult i64 %i.o, %.sink12.i
  br i1 %i.p, label %bb.b, label %bb.f

bb.a:                                             ; preds = %bb.t, %bb.p, %bb.n, %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit
  %.sroa.090.1 = phi i8 [ 1, %bb.n ], [ %.sroa.090.2, %bb.t ], [ %.sroa.090.2, %bb.p ], [ 1, %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit ]
  %.sroa.092.1 = phi i8 [ 1, %bb.n ], [ %.sroa.092.2, %bb.t ], [ %.sroa.092.2, %bb.p ], [ 1, %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit ]
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load i64, ptr %1, align 8, !range !24, !noundef !7 ; 2 uses
  %i.s = xor i64 %i.r, -9223372036854775808
  %i.t = icmp slt i64 %i.r, 0
  %i.u = select i1 %i.t, i64 %i.s, i64 3
  switch i64 %i.u, label %bb.al [
    i64 0, label %bb.am
    i64 1, label %bb.an
  ]

bb.b:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !7
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sink13.i = select i1 %i.k, ptr %i.w, ptr %i.x
  %i.y = getelementptr inbounds nuw [1424 x i8], ptr %.sink13.i, i64 %i.o ; 6 uses
  %i.z = getelementptr i8, ptr %i.y, i64 1408     ; 2 uses
  %i.aa = load i64, ptr %1, align 8, !range !24, !alias.scope !2579, !noundef !7 ; 2 uses
  %i.ab = xor i64 %i.aa, -9223372036854775808
  %i.ac = icmp slt i64 %i.aa, 0
  %i.ad = select i1 %i.ac, i64 %i.ab, i64 3
  switch i64 %i.ad, label %bb.h [
    i64 0, label %switch.lookup
    i64 1, label %bb.c
  ]

switch.lookup:                                    ; preds = %bb.b
  %i.ae = getelementptr i8, ptr %i.y, i64 1020
  %.val = load i32, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !2579, !noundef !7
  %i.ah = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ag, i32 %.val) ; 2 uses
  %i.ai = extractvalue { i32, i1 } %i.ah, 1
  br i1 %i.ai, label %bb.h, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.aj, align 8, !alias.scope !2579
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2579
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2579
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2579
  br label %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit

bb.d:                                             ; preds = %switch.lookup
  %.val161 = load i32, ptr %i.z, align 8
  %i.ak = zext nneg i32 %.val161 to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvXs1_NtNtCsdsTQD3x2eOp_3exr5block6readerINtB5_22OnProgressChunksReaderINtB5_20FilteredChunksReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEQFdEuENtNtNtNtB1H_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image, i64 %i.ak
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  %i.al = extractvalue { i32, i1 } %i.ah, 0
  %i.am = sdiv i32 %i.al, %switch.ext             ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = zext nneg i32 %i.am to i64
  br label %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit

bb.f:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ap, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.4103.0..sroa_idx, align 8
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @49, ptr %.sroa.5104.0..sroa_idx, align 8
  %.sroa.5104.sroa.4.0..sroa.5104.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 17, ptr %.sroa.5104.sroa.4.0..sroa.5104.0..sroa_idx.sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.m, %bb.h, %bb.f
  store i64 -1, ptr %0, align 8
  %i.aq = load i64, ptr %1, align 8, !range !24, !noundef !7 ; 2 uses
  %i.ar = xor i64 %i.aq, -9223372036854775808
  %i.as = icmp slt i64 %i.aq, 0
  %i.at = select i1 %i.as, i64 %i.ar, i64 3
  switch i64 %i.at, label %bb.y [
    i64 0, label %bb.ab
    i64 1, label %bb.af
  ]

bb.h:                                             ; preds = %bb.d, %switch.lookup, %bb.b
  %.sroa.16.0.ph = phi i64 [ ptrtoint (ptr @82 to i64), %switch.lookup ], [ ptrtoint (ptr @67 to i64), %bb.b ], [ ptrtoint (ptr @83 to i64), %bb.d ]
  %.sroa.5170.0.ph = phi i64 [ 2, %switch.lookup ], [ 1, %bb.b ], [ 2, %bb.d ]
  %.sink1.i.ph = phi i64 [ 14, %switch.lookup ], [ 27, %bb.b ], [ 23, %bb.d ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5170.0.ph, ptr %i.au, align 8
  %.sroa.0114.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %.sroa.0114.sroa.4.0..sroa_idx, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.0.ph, ptr %.sroa.4115.0..sroa_idx, align 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink1.i.ph, ptr %.sroa.5116.0..sroa_idx, align 8
  br label %bb.g

_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit: ; preds = %bb.c, %bb.e
  %.sroa.16.0 = phi i64 [ %.sroa.7.0.copyload.i, %bb.c ], [ 0, %bb.e ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %.sroa.6.0.copyload.i, %bb.c ], [ %i.ao, %bb.e ]
  %.sroa.5170.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.c ], [ 0, %bb.e ]
  %.sink1.i = phi i64 [ %.sroa.8.0.copyload.i, %bb.c ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.5170.0, ptr %i.b, align 8
  %.sroa.016.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.11.0, ptr %.sroa.016.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.16.0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sink1.i, ptr %.sroa.3.0..sroa_idx, align 8
  invoke void @_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header36get_absolute_block_pixel_coordinates(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.i unwind label %bb.a

bb.i:                                             ; preds = %_RNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB5_6Header22get_block_data_indices.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.av = load i64, ptr %i.h, align 8, !range !9, !noundef !7 ; 2 uses
  %.not = icmp eq i64 %i.av, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0117.0.copyload = load i64, ptr %i.aw, align 8 ; 5 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4118.0.copyload = load i64, ptr %.sroa.4118.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.5119.0.copyload = load i32, ptr %.sroa.5119.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.6120.0.copyload = load i32, ptr %.sroa.6120.0..sroa_idx, align 4 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %i.ax, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0117.0.copyload, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4118.0.copyload, ptr %.sroa.5133.0..sroa_idx, align 8
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.5119.0.copyload, ptr %.sroa.6134.0..sroa_idx, align 8
  %.sroa.7135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.6120.0.copyload, ptr %.sroa.7135.0..sroa_idx, align 4
  br label %bb.g

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 1384
  %i.az = load i64, ptr %i.ay, align 8, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 1392
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !7
  %i.bc = icmp ugt i64 %.sroa.0117.0.copyload, %i.az
  %i.bd = icmp ugt i64 %.sroa.4118.0.copyload, %i.bb
  %or.cond.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = sext i32 %.sroa.5119.0.copyload to i64
  %i.bf = sext i32 %.sroa.6120.0.copyload to i64
  %i.bg = add i64 %.sroa.0117.0.copyload, %i.be
  %i.bh = add i64 %.sroa.4118.0.copyload, %i.bf
  %i.bi = icmp sgt i64 %i.bg, 1073741822
  %i.bj = icmp sgt i64 %i.bh, 1073741822
  %or.cond3.i = or i1 %i.bi, %i.bj
  %i.bk = icmp slt i32 %.sroa.5119.0.copyload, -1073741822
  %or.cond4.i = or i1 %i.bk, %or.cond3.i
  %i.bl = icmp slt i32 %.sroa.6120.0.copyload, -1073741822
  %or.cond5.i = or i1 %i.bl, %or.cond4.i
  br i1 %or.cond5.i, label %bb.m, label %_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds8validate.exit

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.12.0.ph = phi i64 [ 37, %bb.l ], [ 32, %bb.k ]
  %.sroa.10.0.ph = phi ptr [ @92, %bb.l ], [ @91, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.bm, align 8
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %.sroa.4214.0..sroa_idx, align 8
  %.sroa.5215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.ph, ptr %.sroa.5215.0..sroa_idx, align 8
  %.sroa.6216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.12.0.ph, ptr %.sroa.6216.0..sroa_idx, align 8
  br label %bb.g

_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds8validate.exit: ; preds = %bb.l
  %i.bn = load i64, ptr %1, align 8, !range !24, !noundef !7 ; 2 uses
  %i.bo = xor i64 %i.bn, -9223372036854775808
  %i.bp = icmp slt i64 %i.bn, 0
  %i.bq = select i1 %i.bp, i64 %i.bo, i64 3
  switch i64 %i.bq, label %bb.n [
    i64 0, label %bb.p
    i64 1, label %bb.o
  ]

bb.n:                                             ; preds = %_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds8validate.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMNtCsdsTQD3x2eOp_3exr5errorNtB3_5Error11unsupportedReECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 27)
          to label %bb.aj unwind label %bb.a

bb.o:                                             ; preds = %_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds8validate.exit
  br label %bb.p

bb.p:                                             ; preds = %_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds8validate.exit, %bb.o
  %.sroa.090.2 = phi i8 [ 0, %bb.o ], [ 1, %_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds8validate.exit ] ; 3 uses
  %.sroa.092.2 = phi i8 [ 1, %bb.o ], [ 0, %_RNvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_13IntegerBounds8validate.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.661)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.z, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.0117.0.copyload, ptr %i.a, align 8
  %.sroa.439.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.4118.0.copyload, ptr %.sroa.439.0..sroa_idx40, align 8
  %.sroa.543.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.sroa.5119.0.copyload, ptr %.sroa.543.0..sroa_idx44, align 8
  %.sroa.647.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %.sroa.6120.0.copyload, ptr %.sroa.647.0..sroa_idx48, align 4
  invoke void @_RNvMs_NtCsdsTQD3x2eOp_3exr11compressionNtB4_11Compression32decompress_image_section_from_le(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i1 noundef zeroext %3)
          to label %bb.q unwind label %bb.a

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bs = load i64, ptr %i.e, align 8, !range !9, !noundef !7 ; 2 uses
  %.not158 = icmp eq i64 %i.bs, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.661, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.not158, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4141.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.661, i64 24, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bs, ptr %i.bu, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.661, i64 24, i1 false)
  %i.bv = icmp sgt i32 %.sroa.5119.0.copyload, -1
  %i.bw = icmp sgt i32 %.sroa.6120.0.copyload, -1
  %or.cond = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.bx, align 8
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %.sroa.4151.0..sroa_idx, align 8
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 ptrtoint (ptr @4 to i64), ptr %.sroa.5152.0..sroa_idx, align 8
  %.sroa.6153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 18, ptr %.sroa.6153.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f)
          to label %bb.w unwind label %bb.a

bb.u:                                             ; preds = %bb.s
  %i.by = load i64, ptr %i.n, align 8, !noundef !7
  %i.bz = zext nneg i32 %.sroa.5119.0.copyload to i64
  %i.ca = zext nneg i32 %.sroa.6120.0.copyload to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.661, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bz, ptr %.sroa.670.0..sroa_idx, align 8
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ca, ptr %.sroa.771.0..sroa_idx, align 8
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0117.0.copyload, ptr %.sroa.872.0..sroa_idx, align 8
  %.sroa.973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.4118.0.copyload, ptr %.sroa.973.0..sroa_idx, align 8
  %.sroa.1074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.16.0, ptr %.sroa.1074.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sink1.i, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.by, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.661)
  br label %bb.v

bb.v:                                             ; preds = %bb.aj, %bb.u
  %i.cb = load i64, ptr %1, align 8, !range !24, !noundef !7
  %switch240 = icmp slt i64 %i.cb, -9223372036854775806
  br i1 %switch240, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, label %bb.ak

bb.w:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.661)
  %i.cc = load i64, ptr %1, align 8, !range !24, !noundef !7 ; 2 uses
  %i.cd = xor i64 %i.cc, -9223372036854775808
  %i.ce = icmp slt i64 %i.cc, 0
  %i.cf = select i1 %i.ce, i64 %i.cd, i64 3
  switch i64 %i.cf, label %bb.y [
    i64 0, label %bb.z
    i64 1, label %bb.aa
  ]

bb.x:                                             ; preds = %.invoke, %bb.al
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.g
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk15CompressedBlockECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %1)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit

bb.z:                                             ; preds = %bb.w
  %4 = trunc nuw i8 %.sroa.092.2 to i1
  br i1 %4, label %bb.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit

bb.aa:                                            ; preds = %bb.w
  %5 = trunc nuw i8 %.sroa.090.2 to i1
  br i1 %5, label %bb.af, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.v, %bb.ak, %bb.aa, %bb.z, %bb.y
  ret void

bb.ab:                                            ; preds = %bb.z, %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.ch, align 8, !alias.scope !2580 ; 2 uses
  %i.cj = icmp eq i64 %.val2.i, 0
  br i1 %i.cj, label %common.resume, label %common.resume.sink.split

bb.ad:                                            ; preds = %bb.ab
  %.val.i = load i64, ptr %i.ch, align 8, !alias.scope !2580 ; 2 uses
  %i.ck = icmp eq i64 %.val.i, 0
  br i1 %i.ck, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.cl, align 8, !alias.scope !2581, !nonnull !7, !noundef !7
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2582
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit

common.resume.sink.split:                         ; preds = %bb.ac, %bb.ag
  %.val2.i164.sink = phi i64 [ %.val2.i164, %bb.ag ], [ %.val2.i, %bb.ac ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.co, %bb.ag ], [ %i.ci, %bb.ac ]
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i165 = load ptr, ptr %i.cm, align 8, !nonnull !7, !noundef !7
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i165, i64 noundef %.val2.i164.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !7
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.invoke, %bb.al, %bb.am, %bb.an, %bb.ag, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.co, %bb.ag ], [ %i.ci, %bb.ac ], [ %i.q, %bb.an ], [ %i.q, %bb.am ], [ %i.q, %.invoke ], [ %i.q, %bb.al ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.af:                                            ; preds = %bb.aa, %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i164 = load i64, ptr %i.cn, align 8, !alias.scope !2583 ; 2 uses
  %i.cp = icmp eq i64 %.val2.i164, 0
  br i1 %i.cp, label %common.resume, label %common.resume.sink.split

bb.ah:                                            ; preds = %bb.af
  %.val.i167 = load i64, ptr %i.cn, align 8, !alias.scope !2583 ; 2 uses
  %i.cq = icmp eq i64 %.val.i167, 0
  br i1 %i.cq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i168 = load ptr, ptr %i.cr, align 8, !alias.scope !2584, !nonnull !7, !noundef !7
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i168, i64 noundef %.val.i167, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2585
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit

bb.aj:                                            ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

bb.ak:                                            ; preds = %bb.v
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk15CompressedBlockECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %1)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit

bb.al:                                            ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk15CompressedBlockECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %1) #37
          to label %common.resume unwind label %bb.x

bb.am:                                            ; preds = %bb.a
  %6 = trunc nuw i8 %.sroa.092.1 to i1
  br i1 %6, label %.invoke, label %common.resume

bb.an:                                            ; preds = %bb.a
  %7 = trunc nuw i8 %.sroa.090.1 to i1
  br i1 %7, label %.invoke, label %common.resume

.invoke:                                          ; preds = %bb.an, %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ct) #37
          to label %common.resume unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB2_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE3newB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([4360 x i8]) align 8 captures(none) dereferenceable(4360) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 16 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [4296 x i8], align 8              ; 7 uses
  %.sroa.6.i.i = alloca [32 x i8], align 8        ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 12 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.7.i = alloca [4336 x i8], align 8        ; 10 uses
  %.sroa.66.i = alloca [64 x i8], align 8         ; 7 uses
  %.sroa.6.i = alloca [64 x i8], align 8          ; 7 uses
  %i.j = alloca [4344 x i8], align 8              ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2613
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i), !noalias !2613
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2614
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !2616, !noalias !2617
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !alias.scope !2616, !noalias !2614
  store i8 2, ptr %i.e, align 8, !alias.scope !2618, !noalias !2614
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2614
  invoke void @_RINvMs_NtCsdsTQD3x2eOp_3exr4metaNtB5_8MetaData37read_validated_from_buffered_peekableINtNtB7_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([4296 x i8]) align 8 captures(none) dereferenceable(4296) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.b, !noalias !2614

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val14.i.i = load i8, ptr %i.e, align 8, !range !12, !noalias !2614, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val15.i.i = load ptr, ptr %i.m, align 8, !noalias !2614
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadINtBE_8TrackingINtNtNtB4_2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(i8 %.val14.i.i, ptr %.val15.i.i) #37
          to label %common.resume.i unwind label %bb.h, !noalias !2614

bb.c:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.d, align 8, !range !8, !noalias !2614, !noundef !7 ; 4 uses
  %i.o = icmp eq i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !2614
  br i1 %i.o, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !2619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %.val.i.i = load i8, ptr %i.e, align 8, !range !12, !noalias !2614, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val13.i.i = load ptr, ptr %i.q, align 8, !noalias !2614 ; 4 uses
  %i.r = icmp eq i8 %.val.i.i, 1
  br i1 %i.r, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2614
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i) ]
  %i.s = ptrtoint ptr %.val13.i.i to i64          ; 2 uses
  %i.t = and i64 %i.s, 3
  switch i64 %i.t, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i
    i64 1, label %bb.g
  ], !prof !13

default.unreachable:                              ; preds = %bb.s, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.u = icmp ult ptr %.val13.i.i, inttoptr (i64 188978561024 to ptr)
  %i.v = and i64 %i.s, 1095216660480
  %i.w = icmp ne i64 %i.v, 1095216660480
  call void @llvm.assume(i1 %i.u)
  call void @llvm.assume(i1 %i.w)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %.val13.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !2620, !noalias !2614
  store i8 3, ptr %i.c, align 8, !alias.scope !2620, !noalias !2614
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y), !noalias !2614
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2614
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2614
  unreachable

common.resume.i:                                  ; preds = %bb.r, %.body.i, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.bm, %bb.r ], [ %i.l, %bb.b ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !2613
  call void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs7openexr12to_image_err(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %.sroa.66.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h), !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.66.i, i64 64, i1 false), !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i), !noalias !2613
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i, i64 64, i1 false), !noalias !2621
  store i64 2, ptr %0, align 8, !alias.scope !2612
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB2_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preferenceB6_.exit

bb.j:                                             ; preds = %bb.c
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4256) %.sroa.7.40..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(4256) %.sroa.59.0..sroa_idx.i.i, i64 4256, i1 false), !noalias !2619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !2619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.7.4296..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7.i, i64 4288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.4296..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !2619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.66.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.i, i64 64, i1 false), !noalias !2613
  %.sroa.7.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7.i, i64 64
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4272) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(4272) %.sroa.7.72..sroa_idx.i, i64 4272, i1 false), !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.66.i, i64 64, i1 false), !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i), !noalias !2613
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i, i64 64, i1 false), !noalias !2613
  store i64 %i.n, ptr %i.j, align 8, !noalias !2613
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 4280 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !2622, !noalias !2613, !noundef !7 ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 3
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp ne i64 %i.n, 0
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2622, !noalias !2613, !nonnull !7, !noundef !7
  %i.ah = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2622, !noalias !2613, !noundef !7
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ai = icmp eq i64 %i.n, 0
  call void @llvm.assume(i1 %i.ai)
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %i.cc, %bb.aa ], [ %lpad.loopexit.split-lp18, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsdsTQD3x2eOp_3exr5block6reader6ReaderINtNtNtB4_2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(4344) %i.j) #37
          to label %common.resume.i unwind label %bb.ac, !noalias !2613

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preference0B8_.exit.i.i, %bb.p, %_RNCNCNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB6_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preference00Ba_.exit.i.1.i.i.i, %bb.o, %_RNCNCNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB6_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preference00Ba_.exit.i.i.i.i, %.lr.ph.i.i, %bb.ab, %bb.x, %bb.w, %.loopexit93.i
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.l, %bb.k
  %.sink13.i.i = phi ptr [ %i.ag, %bb.k ], [ %.sroa.4.0..sroa_idx.i, %bb.l ] ; 2 uses
  %.sink12.i.i = phi i64 [ %i.ah, %bb.k ], [ %i.ac, %bb.l ] ; 3 uses
  %.idx.i = mul nuw nsw i64 %.sink12.i.i, 1424
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink13.i.i, i64 %.idx.i
  %i.ak = icmp eq i64 %.sink12.i.i, 0
  br i1 %i.ak, label %.loopexit93.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit.i, %_RNCNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preference0B8_.exit.thread.i.i
  %.sroa.02.011.i.i = phi i64 [ %i.bb, %_RNCNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preference0B8_.exit.thread.i.i ], [ 0, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit.i ] ; 6 uses
  %i.al = phi ptr [ %i.am, %_RNCNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB4_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preference0B8_.exit.thread.i.i ], [ %.sink13.i.i, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_E6tripleCsa5QsYiPB8Gl_5image.exit.i ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1424 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2624
  invoke void @_RNvXs5_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_4TextINtNtCsj6eKBz9Db1c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2613

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.an = invoke { i64, i64 } @_RNvMs8_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_11ChannelList21find_index_of_channel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1424) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %_RNCNCNvMNtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB6_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEE21with_alpha_preference00Ba_.exit.i.i.i.i unwind label %bb.m, !noalias !2625

bb.m:                                             ; preds = %.noexc69.i, %.noexc67.i, %.noexc.i
  %i.ao = landingpad { ptr, i32 }
end_hunk_0
