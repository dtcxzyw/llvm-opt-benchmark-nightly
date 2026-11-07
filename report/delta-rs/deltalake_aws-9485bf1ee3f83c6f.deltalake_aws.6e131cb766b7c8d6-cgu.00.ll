Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_aws-9485bf1ee3f83c6f.deltalake_aws.6e131cb766b7c8d6-cgu.00?download=true
inline.NumInlined: 2658
inline.NumDeleted: 661
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [72 x i8], align 8                ; 9 uses
  %i.q = alloca [48 x i8], align 8                ; 10 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [48 x i8], align 8                ; 10 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [16 x i8], align 16               ; 9 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [48 x i8], align 8               ; 10 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [48 x i8], align 8               ; 10 uses
  %i.aj = alloca [32 x i8], align 8               ; 9 uses
  %i.ak = alloca [72 x i8], align 8               ; 9 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 6 uses
  %i.aq = alloca [32 x i8], align 8               ; 8 uses
  %i.ar = alloca [32 x i8], align 8               ; 9 uses
  %i.as = alloca [72 x i8], align 8               ; 7 uses
  %i.at = alloca [72 x i8], align 8               ; 19 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  %i.ax = load i64, ptr %1, align 8, !range !13, !alias.scope !2881, !noundef !6
  %.not.i = icmp eq i64 %i.ax, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.az = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !2881, !align !15, !noundef !6 ; 3 uses
  %.not4.i = icmp eq ptr %i.bc, null
  br i1 %.not4.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2881
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !6, !noundef !6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !6
  store ptr %i.be, ptr %i.av, align 8, !noalias !2881
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !noalias !2881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2881
  store ptr %i.av, ptr %i.au, align 8, !noalias !2881
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !2881
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.au) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2881
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !2882)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8, !range !18, !noalias !2883, !noundef !6
  switch i8 %i.bj, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.g
  ]

default.unreachable:                              ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  unreachable

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bl = load <2 x ptr>, ptr %i.aw, align 8, !noalias !2883
  store <2 x ptr> %i.bl, ptr %i.bk, align 8, !noalias !2883
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !2883, !noundef !6 ; 2 uses
  store i64 %i.bo, ptr %i.bm, align 8, !noalias !2883
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 1, ptr %i.bp, align 8, !noalias !2883
  br label %bb.h

bb.g:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2883
  br label %bb.l

bb.h:                                             ; preds = %bb.bv, %bb.f
  %i.bq = phi i64 [ %.pre252.i, %bb.bv ], [ %i.bo, %bb.f ]
  %i.br = phi i64 [ %.pre.i, %bb.bv ], [ 1, %bb.f ]
  %.not.i2 = icmp ugt i64 %i.br, %i.bq
  br i1 %.not.i2, label %bb.bz, label %bb.bx

bb.i:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28
          to label %.noexc unwind label %bb.eb

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28
          to label %.noexc3 unwind label %bb.eb

.noexc3:                                          ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2883
  %.val128.i = load ptr, ptr %i.bu, align 8, !noalias !2883
  %i.bt = getelementptr i8, ptr %1, i64 112
  %.val129.i = load ptr, ptr %i.bt, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val128.i, ptr nonnull %.val129.i) #24
          to label %.body.i unwind label %bb.cf, !noalias !2882

bb.l:                                             ; preds = %bb.cd, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2883
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.k, !noalias !2882

bb.m:                                             ; preds = %bb.l
  %i.bv = load i64, ptr %i.as, align 8, !range !38, !noalias !2883, !noundef !6
  %i.bw = icmp eq i64 %i.bv, -9223372036854775789
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2883
  store i64 -9223372036854775789, ptr %0, align 8, !alias.scope !2882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2883
  br label %bb.ec

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.at, ptr noundef nonnull align 8 dereferenceable(72) %i.as, i64 72, i1 false), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2883
  %.val126.i = load ptr, ptr %i.bu, align 8, !noalias !2883 ; 5 uses
  %i.bx = getelementptr i8, ptr %1, i64 112
  %.val127.i = load ptr, ptr %i.bx, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6 ; 5 uses
  %i.by = load ptr, ptr %.val127.i, align 8, !invariant.load !6, !noalias !2882 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val126.i) ]
  invoke void %i.by(ptr noundef nonnull %.val126.i)
          to label %bb.q unwind label %bb.s, !noalias !2882

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.val127.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !9, !invariant.load !6, !noalias !2882 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %.val127.i, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !range !10, !invariant.load !6, !noalias !2882
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val126.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val126.i, i64 noundef range(i64 1, 0) %i.ca, i64 noundef range(i64 1, 536870913) %i.cd) #23, !noalias !2882
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.s:                                             ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val127.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !9, !invariant.load !6, !noalias !2882 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %.body.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %.val127.i, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !range !10, !invariant.load !6, !noalias !2882
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val126.i, i64 noundef range(i64 1, 0) %i.cg, i64 noundef range(i64 1, 536870913) %i.cj) #23, !noalias !2882
  br label %.body.i

.body.i:                                          ; preds = %9, %bb.ea, %bb.dz, %bb.da, %bb.cc, %bb.as, %bb.t, %bb.s, %bb.k
  %.pn74.i = phi { ptr, i32 } [ %i.ce, %bb.s ], [ %.pn70.pn.pn.i, %bb.ea ], [ %.pn70.pn.pn.i, %9 ], [ %.pn70.pn.pn.i, %bb.as ], [ %i.bs, %bb.k ], [ %i.ij, %bb.cc ], [ %i.ce, %bb.t ], [ %.pn60.pn.pn.i, %bb.dz ], [ %.pn31.pn.pn.i, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2883
  br label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.r, %bb.q
  %i.ck = load i64, ptr %i.at, align 8, !range !2884, !noalias !2883, !noundef !6 ; 4 uses
  %.not24.i = icmp eq i64 %i.ck, -9223372036854775790
  br i1 %.not24.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.cl = icmp ne i64 %i.ck, -9223372036854775800
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nsw i64 %i.ck, 9223372036854775802
  %i.cn = icmp ugt i64 %i.ck, -9223372036854775803
  %i.co = select i1 %i.cn, i64 %i.cm, i64 2       ; 2 uses
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 10 uses
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !2883, !noundef !6
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !2883, !noundef !6
  %i.cu = icmp eq i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.db, label %bb.at

bb.w:                                             ; preds = %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.cv = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2883
  %i.cw = icmp samesign ult i64 %i.cv, 2
  br i1 %i.cw, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.cx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, i64 16) monotonic, align 8, !noalias !2883 ; 2 uses
  %i.cy = icmp ult i8 %i.cx, 3
  br i1 %i.cy, label %bb.z, label %bb.y, !prof !35

bb.y:                                             ; preds = %bb.x
  %i.cz = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE) #26
          to label %bb.z unwind label %bb.ag, !noalias !2882

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i = phi i8 [ %i.cx, %bb.x ], [ %i.cz, %bb.y ] ; 2 uses
  %i.da = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.da, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  %i.dc = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.db, i8 noundef %.sroa.0.0.i.i)
          to label %bb.ab unwind label %bb.ag, !noalias !2882

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.dc, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.w
  %i.dd = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2883
  %.not248.i = icmp eq i8 %i.dd, 0
  br i1 %.not248.i, label %bb.ad, label %bb.ar

bb.ad:                                            ; preds = %bb.ac
  %i.de = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2883 ; 2 uses
  %i.df = icmp ult i64 %i.de, 6
  call void @llvm.assume(i1 %i.df)
  %i.dg = icmp samesign ugt i64 %i.de, 3
  br i1 %i.dg, label %bb.ae, label %bb.ar

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 32
  %.val120.i = load ptr, ptr %i.di, align 8, !noalias !2882, !nonnull !6, !noundef !6
  %i.dj = getelementptr i8, ptr %i.dh, i64 40
  %.val121.i = load i64, ptr %i.dj, align 8, !noalias !2882, !noundef !6
  store i64 4, ptr %i.ao, align 8, !alias.scope !2885, !noalias !2883
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.val120.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2885, !noalias !2883
  %.sroa.8187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.val121.i, ptr %.sroa.8187.0..sroa_idx.i, align 8, !alias.scope !2885, !noalias !2883
  %i.dk = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.af unwind label %bb.ag, !noalias !2882 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.dl = extractvalue { ptr, ptr } %i.dk, 0      ; 2 uses
  %i.dm = extractvalue { ptr, ptr } %i.dk, 1      ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !invariant.load !6, !noalias !2882, !nonnull !6
  %i.dp = invoke noundef zeroext i1 %i.do(ptr noundef %i.dl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %bb.ah unwind label %bb.ag, !noalias !2882

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.aa, %bb.y
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ah:                                            ; preds = %bb.af
  br i1 %i.dp, label %bb.ai, label %bb.ar

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2883
  %i.dr = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2883
  store ptr @62, ptr %i.al, align 8, !noalias !2883
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 53 to ptr), ptr %i.dt, align 8, !noalias !2883
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.al, ptr %i.am, align 8, !noalias !2883
  %i.dv = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @8, ptr %i.dv, align 8, !noalias !2883
  %i.dw = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.du, ptr %i.dw, align 8, !noalias !2883
  %i.dx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr @23, ptr %i.dx, align 8, !noalias !2883
  store i64 1, ptr %i.an, align 8, !alias.scope !2886, !noalias !2883
  %.sroa.4.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx.i130.i, align 8, !alias.scope !2886, !noalias !2883
  %.sroa.5.0..sroa_idx.i131.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i131.i, align 8, !alias.scope !2886, !noalias !2883
  %i.dy = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ds, ptr %i.dy, align 8, !alias.scope !2886, !noalias !2883
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dh, ptr noundef nonnull %i.dl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an)
          to label %bb.ak unwind label %bb.aj, !noalias !2882

bb.aj:                                            ; preds = %bb.ai
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2883
  br label %bb.as

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !2883
  br label %bb.ar

bb.al:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2883
  %i.ea = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2883
  store ptr @62, ptr %i.ap, align 8, !noalias !2883
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr inttoptr (i64 53 to ptr), ptr %i.ec, align 8, !noalias !2883
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.ap, ptr %i.aq, align 8, !noalias !2883
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @8, ptr %i.ee, align 8, !noalias !2883
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ed, ptr %i.ef, align 8, !noalias !2883
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr @23, ptr %i.eg, align 8, !noalias !2883
  store i64 1, ptr %i.ar, align 8, !noalias !2883
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.aq, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2883
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 2, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2883
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.eb, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2883
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar)
          to label %.noexc135.i unwind label %bb.ap, !noalias !2882

.noexc135.i:                                      ; preds = %bb.al
  %i.eh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2887
  %i.ei = icmp eq i8 %i.eh, 0
  br i1 %i.ei, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %.noexc135.i
  %i.ej = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2887 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 6
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp samesign ugt i64 %i.ej, 3
  br i1 %i.el, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.em = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !2887, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !2882, !nonnull !6, !noundef !6
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !2882, !noundef !6
  store i64 4, ptr %i.e, align 8, !noalias !2887
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.eo, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !2887
  %.sroa.5.0..sroa_idx.i134.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.eq, ptr %.sroa.5.0..sroa_idx.i134.i, align 8, !noalias !2887
  %i.er = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc136.i unwind label %bb.ap, !noalias !2882 ; 2 uses

.noexc136.i:                                      ; preds = %bb.an
  %i.es = extractvalue { ptr, ptr } %i.er, 0      ; 2 uses
  %i.et = extractvalue { ptr, ptr } %i.er, 1      ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !invariant.load !6, !noalias !2882, !nonnull !6
  %i.ew = invoke noundef zeroext i1 %i.ev(ptr noundef %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) #27
          to label %.noexc137.i unwind label %bb.ap, !noalias !2882, !inline_history !2854

.noexc137.i:                                      ; preds = %.noexc136.i
  br i1 %i.ew, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %.noexc137.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.em, ptr noundef nonnull %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.et, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar)
          to label %bb.aq unwind label %bb.ap, !noalias !2882

bb.ap:                                            ; preds = %bb.ao, %.noexc136.i, %bb.an, %bb.al
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2883
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao, %.noexc137.i, %bb.am, %.noexc135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2883
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ak, %bb.ah, %bb.ad, %bb.ac
  %i.ey = load i64, ptr %i.at, align 8, !range !2884, !noalias !2883, !noundef !6 ; 3 uses
  %.not250.i = icmp eq i64 %i.ey, -9223372036854775790
  br i1 %.not250.i, label %.thread.i, label %bb.dx

bb.as:                                            ; preds = %.body150.i, %bb.ap, %bb.aj, %bb.ag
  %.pn70.pn.pn.i = phi { ptr, i32 } [ %i.ex, %bb.ap ], [ %.pn50.i, %.body150.i ], [ %i.dq, %bb.ag ], [ %i.dz, %bb.aj ] ; 3 uses
  %i.ez = load i64, ptr %i.at, align 8, !range !2884, !noalias !2883, !noundef !6 ; 3 uses
  %.not249.i = icmp eq i64 %i.ez, -9223372036854775790
  br i1 %.not249.i, label %.body.i, label %bb.ea

bb.at:                                            ; preds = %bb.v
  %i.fa = icmp eq i64 %i.co, 0
  br i1 %i.fa, label %bb.au, label %bb.cg

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2883
  %i.fb = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !2883, !nonnull !6, !noundef !6
  %i.fd = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !2883, !noundef !6
  store ptr %i.fc, ptr %i.aa, align 8, !noalias !2883
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2883
  %i.fg = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.fi = load <2 x ptr>, ptr %i.fg, align 8, !noalias !2883
  store <2 x ptr> %i.fi, ptr %i.z, align 16, !noalias !2883
  %i.fj = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2883
  %i.fk = icmp samesign ult i64 %i.fj, 2
  br i1 %i.fk, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.fl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !2883 ; 2 uses
  %i.fm = icmp ult i8 %i.fl, 3
  br i1 %i.fm, label %bb.ax, label %bb.aw, !prof !35

bb.aw:                                            ; preds = %bb.av
  %i.fn = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE) #26
          to label %bb.ax unwind label %bb.be, !noalias !2882

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sroa.0.0.i139.i = phi i8 [ %i.fl, %bb.av ], [ %i.fn, %bb.aw ] ; 2 uses
  %i.fo = icmp eq i8 %.sroa.0.0.i139.i, 0
  br i1 %i.fo, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fp = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  %i.fq = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fp, i8 noundef %.sroa.0.0.i139.i)
          to label %bb.az unwind label %bb.be, !noalias !2882

bb.az:                                            ; preds = %bb.ay
  br i1 %i.fq, label %bb.bp, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax, %bb.au
  %i.fr = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2883
  %.not246.i = icmp eq i8 %i.fr, 0
  br i1 %.not246.i, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.fs = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2883 ; 2 uses
  %i.ft = icmp ult i64 %i.fs, 6
  call void @llvm.assume(i1 %i.ft)
  %i.fu = icmp samesign ugt i64 %i.fs, 3
  br i1 %i.fu, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.fv = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 32
  %.val118.i = load ptr, ptr %i.fw, align 8, !noalias !2882, !nonnull !6, !noundef !6
  %i.fx = getelementptr i8, ptr %i.fv, i64 40
  %.val119.i = load i64, ptr %i.fx, align 8, !noalias !2882, !noundef !6
  store i64 4, ptr %i.u, align 8, !alias.scope !2888, !noalias !2883
  %.sroa.6215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.val118.i, ptr %.sroa.6215.0..sroa_idx.i, align 8, !alias.scope !2888, !noalias !2883
  %.sroa.8216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.val119.i, ptr %.sroa.8216.0..sroa_idx.i, align 8, !alias.scope !2888, !noalias !2883
  %i.fy = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bd unwind label %bb.be, !noalias !2882 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.fz = extractvalue { ptr, ptr } %i.fy, 0      ; 2 uses
  %i.ga = extractvalue { ptr, ptr } %i.fy, 1      ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !invariant.load !6, !noalias !2882, !nonnull !6
  %i.gd = invoke noundef zeroext i1 %i.gc(ptr noundef %i.fz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.bf unwind label %bb.be, !noalias !2882

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ay, %bb.aw
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.gd, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2883
  %i.gf = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2883
  store ptr %i.cq, ptr %i.q, align 8, !noalias !2883
  %.sroa.5218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5218.0..sroa_idx.i, align 8, !noalias !2883
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.aa, ptr %i.gh, align 8, !noalias !2883
  %.sroa.5220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5220.0..sroa_idx.i, align 8, !noalias !2883
  %i.gi = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.z, ptr %i.gi, align 8, !noalias !2883
  %.sroa.5222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5222.0..sroa_idx.i, align 8, !noalias !2883
  store ptr @63, ptr %i.r, align 8, !noalias !2883
  %i.gj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.gj, align 8, !noalias !2883
  store ptr %i.r, ptr %i.s, align 8, !noalias !2883
  %i.gk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @8, ptr %i.gk, align 8, !noalias !2883
  store i64 1, ptr %i.t, align 8, !alias.scope !2889, !noalias !2883
  %.sroa.4.0..sroa_idx.i147.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i147.i, align 8, !alias.scope !2889, !noalias !2883
  %.sroa.5.0..sroa_idx.i148.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i148.i, align 8, !alias.scope !2889, !noalias !2883
  %i.gl = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.gg, ptr %i.gl, align 8, !alias.scope !2889, !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !2883
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fv, ptr noundef nonnull %i.fz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ga, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %bb.bi unwind label %bb.bh, !noalias !2882

bb.bh:                                            ; preds = %bb.bg
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2883
  br label %bb.ce

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2883
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bu, %bb.bi, %bb.bf, %bb.bb, %bb.ba
  %i.gn = load i64, ptr %i.cq, align 8, !noalias !2883, !noundef !6
  %i.go = add i64 %i.gn, 1
  store i64 %i.go, ptr %i.cq, align 8, !noalias !2883
  %.val124.i = load ptr, ptr %i.z, align 16, !noalias !2883 ; 5 uses
  %.val125.i = load ptr, ptr %i.fh, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6 ; 5 uses
  %i.gp = load ptr, ptr %.val125.i, align 8, !invariant.load !6, !noalias !2882 ; 2 uses
  %.not.i149.i = icmp eq ptr %i.gp, null
  br i1 %.not.i149.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val124.i) ]
  invoke void %i.gp(ptr noundef nonnull %.val124.i)
          to label %bb.bl unwind label %bb.bn, !noalias !2882

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.gq = getelementptr inbounds nuw i8, ptr %.val125.i, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !range !9, !invariant.load !6, !noalias !2882 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gt = getelementptr inbounds nuw i8, ptr %.val125.i, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !range !10, !invariant.load !6, !noalias !2882
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val124.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val124.i, i64 noundef range(i64 1, 0) %i.gr, i64 noundef range(i64 1, 536870913) %i.gu) #23, !noalias !2882
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.bn:                                            ; preds = %bb.bk
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val125.i, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !range !9, !invariant.load !6, !noalias !2882 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %.body150.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gz = getelementptr inbounds nuw i8, ptr %.val125.i, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !range !10, !invariant.load !6, !noalias !2882
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val124.i, i64 noundef range(i64 1, 0) %i.gx, i64 noundef range(i64 1, 536870913) %i.ha) #23, !noalias !2882
  br label %.body150.i

bb.bp:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2883
  %i.hb = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2883
  store ptr %i.cq, ptr %i.v, align 8, !noalias !2883
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2883
  %i.hd = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.aa, ptr %i.hd, align 8, !noalias !2883
  %.sroa.5208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5208.0..sroa_idx.i, align 8, !noalias !2883
  %i.he = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.z, ptr %i.he, align 8, !noalias !2883
  %.sroa.5210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5210.0..sroa_idx.i, align 8, !noalias !2883
  store ptr @63, ptr %i.w, align 8, !noalias !2883
  %i.hf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.hf, align 8, !noalias !2883
  store ptr %i.w, ptr %i.x, align 8, !noalias !2883
  %i.hg = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @8, ptr %i.hg, align 8, !noalias !2883
  store i64 1, ptr %i.y, align 8, !noalias !2883
  %.sroa.6203.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %.sroa.6203.0..sroa_idx.i, align 8, !noalias !2883
  %.sroa.7204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 1, ptr %.sroa.7204.0..sroa_idx.i, align 8, !noalias !2883
  %.sroa.8205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.hc, ptr %.sroa.8205.0..sroa_idx.i, align 8, !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2883
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
          to label %.noexc159.i unwind label %bb.bt, !noalias !2882

.noexc159.i:                                      ; preds = %bb.bp
  %i.hh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2890
  %i.hi = icmp eq i8 %i.hh, 0
  br i1 %i.hi, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %.noexc159.i
  %i.hj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2890 ; 2 uses
  %i.hk = icmp ult i64 %i.hj, 6
  call void @llvm.assume(i1 %i.hk)
  %i.hl = icmp samesign ugt i64 %i.hj, 3
  br i1 %i.hl, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.hm = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !2890, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !2882, !nonnull !6, !noundef !6
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.hq = load i64, ptr %i.hp, align 8, !noalias !2882, !noundef !6
  store i64 4, ptr %i.d, align 8, !noalias !2890
  %.sroa.3.0..sroa_idx.i157.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ho, ptr %.sroa.3.0..sroa_idx.i157.i, align 8, !noalias !2890
  %.sroa.5.0..sroa_idx.i158.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.hq, ptr %.sroa.5.0..sroa_idx.i158.i, align 8, !noalias !2890
  %i.hr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc160.i unwind label %bb.bt, !noalias !2882 ; 2 uses

.noexc160.i:                                      ; preds = %bb.br
  %i.hs = extractvalue { ptr, ptr } %i.hr, 0      ; 2 uses
  %i.ht = extractvalue { ptr, ptr } %i.hr, 1      ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !invariant.load !6, !noalias !2882, !nonnull !6
  %i.hw = invoke noundef zeroext i1 %i.hv(ptr noundef %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #27
          to label %.noexc161.i unwind label %bb.bt, !noalias !2882, !inline_history !2862

.noexc161.i:                                      ; preds = %.noexc160.i
  br i1 %i.hw, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %.noexc161.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hm, ptr noundef nonnull %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ht, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
          to label %bb.bu unwind label %bb.bt, !noalias !2882

bb.bt:                                            ; preds = %bb.bs, %.noexc160.i, %bb.br, %bb.bp
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2883
  br label %bb.ce

bb.bu:                                            ; preds = %bb.bs, %.noexc161.i, %bb.bq, %.noexc159.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2883
  br label %bb.bj

.body150.i:                                       ; preds = %bb.ce, %bb.bo, %bb.bn
  %.pn50.i = phi { ptr, i32 } [ %.pn47.pn.i, %bb.ce ], [ %i.gv, %bb.bn ], [ %i.gv, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2883
  br label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2883
  %i.hy = load i64, ptr %i.at, align 8, !range !2884, !noalias !2883, !noundef !6 ; 3 uses
  %.not52.i = icmp eq i64 %i.hy, -9223372036854775790
  br i1 %.not52.i, label %bb.bv, label %3

3:                                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %4 = icmp ne i64 %i.hy, -9223372036854775800
  call void @llvm.assume(i1 %4)
  %5 = icmp eq i64 %i.hy, -9223372036854775802
  br i1 %5, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bw, %3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2883
  %.pre.i = load i64, ptr %i.cq, align 8, !noalias !2883
  %.pre252.i = load i64, ptr %i.cs, align 8, !noalias !2883
  br label %bb.h

bb.bw:                                            ; preds = %3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.at)
          to label %bb.bv unwind label %bb.cc, !noalias !2882

bb.bx:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2883
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !2883, !nonnull !6, !noundef !6
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ie = load ptr, ptr %i.id, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 120
  %i.ig = load ptr, ptr %i.if, align 8, !invariant.load !6, !noalias !2882, !nonnull !6
  %i.ih = invoke { ptr, ptr } %i.ig(ptr noundef nonnull %i.ia, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ie)
          to label %bb.cd unwind label %bb.cc, !noalias !2882 ; 2 uses

bb.by:                                            ; preds = %bb.bz
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.bz:                                            ; preds = %bb.h
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @64, ptr noundef nonnull inttoptr (i64 211 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #22
          to label %bb.ca unwind label %bb.by, !noalias !2882

bb.ca:                                            ; preds = %bb.bz
  unreachable

bb.cb:                                            ; preds = %bb.by, %.body.i
  %.pn74.pn.i = phi { ptr, i32 } [ %.pn74.i, %.body.i ], [ %i.ii, %bb.by ]
  store i8 2, ptr %i.bi, align 8, !noalias !2883
  br label %.body

bb.cc:                                            ; preds = %7, %bb.bx, %bb.bw
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cd:                                            ; preds = %bb.bx
  %i.ik = extractvalue { ptr, ptr } %i.ih, 0
  %i.il = extractvalue { ptr, ptr } %i.ih, 1
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.ik, ptr %i.im, align 8, !noalias !2883
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.il, ptr %i.in, align 8, !noalias !2883
  br label %bb.l

bb.ce:                                            ; preds = %bb.bt, %bb.bh, %bb.be
  %.pn47.pn.i = phi { ptr, i32 } [ %i.hx, %bb.bt ], [ %i.ge, %bb.be ], [ %i.gm, %bb.bh ]
  %.val122.i = load ptr, ptr %i.z, align 16, !noalias !2883
  %.val123.i = load ptr, ptr %i.fh, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val122.i, ptr nonnull %.val123.i) #24
          to label %.body150.i unwind label %bb.cf, !noalias !2882

bb.cf:                                            ; preds = %9, %bb.dy, %bb.cz, %bb.ce, %bb.k
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !2882
  unreachable

bb.cg:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.at, i64 72, i1 false), !noalias !2883
  %i.ip = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2883
  %i.iq = icmp samesign ult i64 %i.ip, 5
  br i1 %i.iq, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.ir = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, i64 16) monotonic, align 8, !noalias !2883 ; 2 uses
  %i.is = icmp ult i8 %i.ir, 3
  br i1 %i.is, label %bb.cj, label %bb.ci, !prof !35

bb.ci:                                            ; preds = %bb.ch
  %i.it = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE) #26
          to label %bb.cj unwind label %bb.cq, !noalias !2882

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sroa.0.0.i163.i = phi i8 [ %i.ir, %bb.ch ], [ %i.it, %bb.ci ] ; 2 uses
  %i.iu = icmp eq i8 %.sroa.0.0.i163.i, 0
  br i1 %i.iu, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.iv = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  %i.iw = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iv, i8 noundef %.sroa.0.0.i163.i)
          to label %bb.cl unwind label %bb.cq, !noalias !2882

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.iw, label %bb.cw, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj, %bb.cg
  %i.ix = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2883
  %.not244.i = icmp eq i8 %i.ix, 0
  br i1 %.not244.i, label %bb.cn, label %bb.cv

bb.cn:                                            ; preds = %bb.cm
  %i.iy = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2883 ; 2 uses
  %i.iz = icmp ult i64 %i.iy, 6
  call void @llvm.assume(i1 %i.iz)
  %.not245.i = icmp eq i64 %i.iy, 0
  br i1 %.not245.i, label %bb.cv, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ja = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 32
  %.val116.i = load ptr, ptr %i.jb, align 8, !noalias !2882, !nonnull !6, !noundef !6
  %i.jc = getelementptr i8, ptr %i.ja, i64 40
  %.val117.i = load i64, ptr %i.jc, align 8, !noalias !2882, !noundef !6
  store i64 1, ptr %i.k, align 8, !alias.scope !2891, !noalias !2883
  %.sroa.6233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.val116.i, ptr %.sroa.6233.0..sroa_idx.i, align 8, !alias.scope !2891, !noalias !2883
  %.sroa.8234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.val117.i, ptr %.sroa.8234.0..sroa_idx.i, align 8, !alias.scope !2891, !noalias !2883
  %i.jd = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cp unwind label %bb.cq, !noalias !2882 ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.je = extractvalue { ptr, ptr } %i.jd, 0      ; 2 uses
  %i.jf = extractvalue { ptr, ptr } %i.jd, 1      ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !invariant.load !6, !noalias !2882, !nonnull !6
  %i.ji = invoke noundef zeroext i1 %i.jh(ptr noundef %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.cr unwind label %bb.cq, !noalias !2882

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.ck, %bb.ci
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cr:                                            ; preds = %bb.cp
  br i1 %i.ji, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2883
  %i.jk = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2883
  store ptr @66, ptr %i.h, align 8, !noalias !2883
  %i.jm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 97 to ptr), ptr %i.jm, align 8, !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2883
  store ptr %i.p, ptr %i.g, align 8, !noalias !2883
  store ptr %i.h, ptr %i.i, align 8, !noalias !2883
  %i.jn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @8, ptr %i.jn, align 8, !noalias !2883
  %i.jo = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.cq, ptr %i.jo, align 8, !noalias !2883
  %i.jp = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @23, ptr %i.jp, align 8, !noalias !2883
  %i.jq = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.g, ptr %i.jq, align 8, !noalias !2883
  %i.jr = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @10, ptr %i.jr, align 8, !noalias !2883
  store i64 1, ptr %i.j, align 8, !alias.scope !2892, !noalias !2883
  %.sroa.4.0..sroa_idx.i168.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i168.i, align 8, !alias.scope !2892, !noalias !2883
  %.sroa.5.0..sroa_idx.i169.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i169.i, align 8, !alias.scope !2892, !noalias !2883
  %i.js = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.jl, ptr %i.js, align 8, !alias.scope !2892, !noalias !2883
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ja, ptr noundef nonnull %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jf, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.cu unwind label %bb.ct, !noalias !2882

bb.ct:                                            ; preds = %bb.cs
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2883
  br label %bb.cz

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2883
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cy, %bb.cu, %bb.cr, %bb.cn, %bb.cm
  %.sroa.021.0.copyload.i = load i64, ptr %i.p, align 8, !noalias !2883
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.422.0..sroa_idx.i, i64 64, i1 false), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2883
  br label %.thread.i

bb.cw:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2883
  %i.ju = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2883
  store ptr @66, ptr %i.m, align 8, !noalias !2883
  %i.jw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 97 to ptr), ptr %i.jw, align 8, !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2883
  store ptr %i.p, ptr %i.l, align 8, !noalias !2883
  store ptr %i.m, ptr %i.n, align 8, !noalias !2883
  %i.jx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @8, ptr %i.jx, align 8, !noalias !2883
  %i.jy = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.cq, ptr %i.jy, align 8, !noalias !2883
  %i.jz = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @23, ptr %i.jz, align 8, !noalias !2883
  %i.ka = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.l, ptr %i.ka, align 8, !noalias !2883
  %i.kb = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @10, ptr %i.kb, align 8, !noalias !2883
  store i64 1, ptr %i.o, align 8, !noalias !2883
  %.sroa.7226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %.sroa.7226.0..sroa_idx.i, align 8, !noalias !2883
  %.sroa.8227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 3, ptr %.sroa.8227.0..sroa_idx.i, align 8, !noalias !2883
  %.sroa.9228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.jv, ptr %.sroa.9228.0..sroa_idx.i, align 8, !noalias !2883
  invoke fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.cy unwind label %bb.cx, !noalias !2882

bb.cx:                                            ; preds = %bb.cw
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2883
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2883
  br label %bb.cv

bb.cz:                                            ; preds = %bb.cx, %bb.ct, %bb.cq
  %.pn31.pn.pn.i = phi { ptr, i32 } [ %i.kc, %bb.cx ], [ %i.jj, %bb.cq ], [ %i.jt, %bb.ct ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.p) #24
          to label %bb.da unwind label %bb.cf, !noalias !2882

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2883
  br label %.body.i

bb.db:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.at, i64 72, i1 false), !noalias !2883
  %i.kd = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2883
  %i.ke = icmp samesign ult i64 %i.kd, 4
  br i1 %i.ke, label %bb.dc, label %bb.dh

bb.dc:                                            ; preds = %bb.db
  %i.kf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !2883 ; 2 uses
  %i.kg = icmp ult i8 %i.kf, 3
  br i1 %i.kg, label %bb.de, label %bb.dd, !prof !35

end_hunk_0
begin_hunk_1_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws:bb.a
  %.sroa.0.0.i172.i = phi i8 [ %i.kf, %bb.dc ], [ %i.kh, %bb.dd ] ; 2 uses
  %i.ki = icmp eq i8 %.sroa.0.0.i172.i, 0
  br i1 %i.ki, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.kj = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  %i.kk = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kj, i8 noundef %.sroa.0.0.i172.i)
          to label %bb.dg unwind label %bb.dl, !noalias !2882

bb.dg:                                            ; preds = %bb.df
  br i1 %i.kk, label %bb.dr, label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.de, %bb.db
  %i.kl = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2883
  %.not247.i = icmp eq i8 %i.kl, 0
  br i1 %.not247.i, label %bb.di, label %bb.dq

bb.di:                                            ; preds = %bb.dh
  %i.km = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2883 ; 2 uses
  %i.kn = icmp ult i64 %i.km, 6
  call void @llvm.assume(i1 %i.kn)
  %i.ko = icmp samesign ugt i64 %i.km, 1
  br i1 %i.ko, label %bb.dj, label %bb.dq

bb.dj:                                            ; preds = %bb.di
  %i.kp = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.kq = getelementptr i8, ptr %i.kp, i64 32
  %.val114.i = load ptr, ptr %i.kq, align 8, !noalias !2882, !nonnull !6, !noundef !6
  %i.kr = getelementptr i8, ptr %i.kp, i64 40
  %.val115.i = load i64, ptr %i.kr, align 8, !noalias !2882, !noundef !6
  store i64 2, ptr %i.af, align 8, !alias.scope !2893, !noalias !2883
  %.sroa.6198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.val114.i, ptr %.sroa.6198.0..sroa_idx.i, align 8, !alias.scope !2893, !noalias !2883
  %.sroa.8199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %.val115.i, ptr %.sroa.8199.0..sroa_idx.i, align 8, !alias.scope !2893, !noalias !2883
  %i.ks = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.dk unwind label %bb.dl, !noalias !2882 ; 2 uses

bb.dk:                                            ; preds = %bb.dj
  %i.kt = extractvalue { ptr, ptr } %i.ks, 0      ; 2 uses
  %i.ku = extractvalue { ptr, ptr } %i.ks, 1      ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !invariant.load !6, !noalias !2882, !nonnull !6
  %i.kx = invoke noundef zeroext i1 %i.kw(ptr noundef %i.kt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.dm unwind label %bb.dl, !noalias !2882

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.df, %bb.dd
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dm:                                            ; preds = %bb.dk
  br i1 %i.kx, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2883
  %i.kz = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2883
  store ptr @67, ptr %i.ac, align 8, !noalias !2883
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.lb, align 8, !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2883
  store ptr %i.ak, ptr %i.ab, align 8, !noalias !2883
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !2883
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @8, ptr %i.lc, align 8, !noalias !2883
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.cq, ptr %i.ld, align 8, !noalias !2883
  %i.le = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @23, ptr %i.le, align 8, !noalias !2883
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.ab, ptr %i.lf, align 8, !noalias !2883
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr @10, ptr %i.lg, align 8, !noalias !2883
  store i64 1, ptr %i.ae, align 8, !alias.scope !2894, !noalias !2883
  %.sroa.4.0..sroa_idx.i177.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i177.i, align 8, !alias.scope !2894, !noalias !2883
  %.sroa.5.0..sroa_idx.i178.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i178.i, align 8, !alias.scope !2894, !noalias !2883
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.la, ptr %i.lh, align 8, !alias.scope !2894, !noalias !2883
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kp, ptr noundef nonnull %i.kt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ku, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae)
          to label %bb.dp unwind label %bb.do, !noalias !2882

bb.do:                                            ; preds = %bb.dn
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2883
  br label %bb.dy

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2883
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dw, %bb.dp, %bb.dm, %bb.di, %bb.dh
  %.sroa.019.0.copyload.i = load i64, ptr %i.ak, align 8, !noalias !2883
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.420.0..sroa_idx.i, i64 64, i1 false), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2883
  br label %.thread.i

bb.dr:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2883
  %i.lj = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !2883, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2883
  store ptr @67, ptr %i.ah, align 8, !noalias !2883
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.ll, align 8, !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2883
  store ptr %i.ak, ptr %i.ag, align 8, !noalias !2883
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !2883
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @8, ptr %i.lm, align 8, !noalias !2883
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.cq, ptr %i.ln, align 8, !noalias !2883
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr @23, ptr %i.lo, align 8, !noalias !2883
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.ag, ptr %i.lp, align 8, !noalias !2883
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr @10, ptr %i.lq, align 8, !noalias !2883
  store i64 1, ptr %i.aj, align 8, !noalias !2883
  %.sroa.7191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %.sroa.7191.0..sroa_idx.i, align 8, !noalias !2883
  %.sroa.8192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 3, ptr %.sroa.8192.0..sroa_idx.i, align 8, !noalias !2883
  %.sroa.9193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.lk, ptr %.sroa.9193.0..sroa_idx.i, align 8, !noalias !2883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc6 unwind label %bb.dv

.noexc6:                                          ; preds = %bb.dr
  %i.lr = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2895
  %i.ls = icmp eq i8 %i.lr, 0
  br i1 %i.ls, label %bb.ds, label %bb.dw

bb.ds:                                            ; preds = %.noexc6
  %i.lt = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2895 ; 2 uses
  %i.lu = icmp ult i64 %i.lt, 6
  call void @llvm.assume(i1 %i.lu), !noalias !2882
  %i.lv = icmp samesign ugt i64 %i.lt, 1
  br i1 %i.lv, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.lw = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !2895, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8, !noalias !2882, !nonnull !6, !noundef !6
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.ma = load i64, ptr %i.lz, align 8, !noalias !2882, !noundef !6
  store i64 2, ptr %i.a, align 8, !noalias !2895
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ly, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !2895
  %.sroa.5.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ma, ptr %.sroa.5.0..sroa_idx.i5, align 8, !noalias !2895
  %i.mb = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc7 unwind label %bb.dv   ; 2 uses

.noexc7:                                          ; preds = %bb.dt
  %i.mc = extractvalue { ptr, ptr } %i.mb, 0      ; 2 uses
  %i.md = extractvalue { ptr, ptr } %i.mb, 1      ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mf = load ptr, ptr %i.me, align 8, !invariant.load !6, !noalias !2882, !nonnull !6
  %i.mg = invoke noundef zeroext i1 %i.mf(ptr noundef %i.mc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
          to label %.noexc8 unwind label %bb.dv, !inline_history !2875

.noexc8:                                          ; preds = %.noexc7
  br i1 %i.mg, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %.noexc8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lw, ptr noundef nonnull %i.mc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.md, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %bb.dw unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.noexc7, %bb.dt, %bb.dr
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2883
  br label %bb.dy

bb.dw:                                            ; preds = %.noexc8, %bb.ds, %.noexc6, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2883
  br label %bb.dq

.thread.i:                                        ; preds = %7, %bb.dx, %bb.dq, %bb.cv, %bb.ar
  %.sroa.013.0238.i = phi i64 [ -9223372036854775790, %bb.ar ], [ -9223372036854775790, %7 ], [ -9223372036854775790, %bb.dx ], [ %.sroa.019.0.copyload.i, %bb.dq ], [ %.sroa.021.0.copyload.i, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2883
  store i64 %.sroa.013.0238.i, ptr %0, align 8, !alias.scope !2882
  %.sroa.416.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.0..sroa_idx18.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, i64 64, i1 false), !noalias !2896
  br label %bb.ec

bb.dx:                                            ; preds = %bb.ar
  %i.mi = icmp ne i64 %i.ey, -9223372036854775800
  call void @llvm.assume(i1 %i.mi)
  %6 = icmp eq i64 %i.ey, -9223372036854775802
  br i1 %6, label %.thread.i, label %7

7:                                                ; preds = %bb.dx
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.at)
          to label %.thread.i unwind label %bb.cc, !noalias !2882

bb.dy:                                            ; preds = %bb.dv, %bb.do, %bb.dl
  %.pn60.pn.pn.i = phi { ptr, i32 } [ %i.mh, %bb.dv ], [ %i.ky, %bb.dl ], [ %i.li, %bb.do ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.ak) #24
          to label %bb.dz unwind label %bb.cf, !noalias !2882

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2883
  br label %.body.i

bb.ea:                                            ; preds = %bb.as
  %i.mj = icmp ne i64 %i.ez, -9223372036854775800
  call void @llvm.assume(i1 %i.mj)
  %8 = icmp eq i64 %i.ez, -9223372036854775802
  br i1 %8, label %.body.i, label %9

9:                                                ; preds = %bb.ea
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.at) #24
          to label %.body.i unwind label %bb.cf, !noalias !2882

bb.eb:                                            ; preds = %bb.j, %bb.i
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.cb, %bb.eb
  %eh.lpad-body = phi { ptr, i32 } [ %i.mk, %bb.eb ], [ %.pn74.pn.i, %bb.cb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %1) #24
          to label %bb.ei unwind label %bb.eh

bb.ec:                                            ; preds = %.thread.i, %bb.n
  %storemerge.i = phi i8 [ 1, %.thread.i ], [ 3, %bb.n ]
  store i8 %storemerge.i, ptr %i.bi, align 8, !noalias !2883
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.experimental.noalias.scope.decl(metadata !2897)
  %i.ml = load i64, ptr %1, align 8, !range !13, !alias.scope !2897, !noalias !2898, !noundef !6
  %.not.i.i.i4 = icmp eq i64 %i.ml, 2
  br i1 %.not.i.i.i4, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mm), !noalias !2898
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.mn = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2898
  %i.mo = icmp eq i8 %i.mn, 0
  br i1 %i.mo, label %bb.ef, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ef:                                            ; preds = %bb.ee
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mq = load ptr, ptr %i.mp, align 8, !alias.scope !2897, !noalias !2898, !align !15, !noundef !6 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not4.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2899
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !noalias !2898, !nonnull !6, !noundef !6
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.mu = load i64, ptr %i.mt, align 8, !noalias !2898, !noundef !6
  store ptr %i.ms, ptr %i.c, align 8, !noalias !2899
  %i.mv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.mu, ptr %i.mv, align 8, !noalias !2899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2899
  store ptr %i.c, ptr %i.b, align 8, !noalias !2899
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !2899
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2899
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ee, %bb.ef, %bb.eg
  ret void

bb.eh:                                            ; preds = %.body
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ei:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2906 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  %i.f = load i64, ptr %0, align 8, !range !13, !alias.scope !2907, !noundef !6
  %.not.i = icmp eq i64 %i.f, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2907, !align !15, !noundef !6 ; 3 uses
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2907
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  store ptr %i.m, ptr %i.d, align 8, !noalias !2907
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !2907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2907
  store ptr %i.d, ptr %i.c, align 8, !noalias !2907
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !2907
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2907
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.q = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.e, ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %0) #24
          to label %bb.m unwind label %bb.l

bb.g:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2908)
  %i.s = load i64, ptr %0, align 8, !range !13, !alias.scope !2908, !noalias !2909, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.s, 2
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !2909
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2909
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2908, !noalias !2909, !align !15, !noundef !6 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not4.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2910
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noalias !2909, !nonnull !6, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !2909, !noundef !6
  store ptr %i.z, ptr %i.b, align 8, !noalias !2910
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !2910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2910
  store ptr %i.b, ptr %i.a, align 8, !noalias !2910
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !2910
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2910
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i, %bb.j, %bb.k
  ret i1 %i.q

bb.l:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.m:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator15finally_attempt0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr nofree noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2945 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.4.i.i73.i = alloca [54 x i8], align 2    ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.4.i.i.i = alloca [54 x i8], align 2      ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
end_hunk_1
