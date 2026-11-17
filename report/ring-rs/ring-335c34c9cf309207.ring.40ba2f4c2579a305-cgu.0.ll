Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RINvNtNtCs5yxAJGbRKSL_4ring2io3der6nestedNvB2_30bit_string_with_no_unused_bitsNtNtCsjVYLllkLn3D_9untrusted5input5InputNtNtNtB6_5error11unspecified11UnspecifiedEB6_:bb.a
  %i.ar = icmp ne i64 %.sroa.019.0.i.i, 1
  %or.cond.i.i.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i.i.i, label %bb.o, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.at = load i8, ptr %i.as, align 1, !noalias !410, !noundef !15 ; 3 uses
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = zext nneg i8 %i.at to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  switch i8 %i.at, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit [
    i8 -127, label %bb.s
    i8 -126, label %bb.t
  ]

bb.r:                                             ; preds = %bb.w, %bb.v, %bb.p
  %i.aw = phi i64 [ 2, %bb.p ], [ 3, %bb.v ], [ 4, %bb.w ] ; 2 uses
  %.sroa.019.0.i.i.i.i.i = phi i64 [ %i.av, %bb.p ], [ %i.bd, %bb.v ], [ %i.bl, %bb.w ] ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.019.0.i.i.i.i.i, %i.aw ; 2 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ax, %.sroa.019.0.i.i
  br i1 %.not.i.i.i.i.i.i, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit, label %bb.x, !prof !28

bb.s:                                             ; preds = %bb.q
  %i.ay = icmp samesign ugt i64 %.sroa.019.0.i.i, 2
  br i1 %i.ay, label %bb.u, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit

bb.t:                                             ; preds = %bb.q
  %i.az = icmp samesign ugt i64 %.sroa.019.0.i.i, 3
  br i1 %i.az, label %bb.w, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit

bb.u:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !410, !noundef !15 ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = zext i8 %i.bb to i64
  br label %bb.r

bb.w:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !noalias !410, !noundef !15 ; 2 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !410, !noundef !15
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bg, 8
  %i.bl = or disjoint i64 %i.bk, %i.bj
  %i.bm = icmp eq i8 %i.bf, 0
  br i1 %i.bm, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit, label %bb.r

bb.x:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aw ; 2 uses
  %.not.i.i.i.i = icmp ne i8 %i.ao, 3
  %.not.i10.i.i.i = icmp eq i64 %.sroa.019.0.i.i.i.i.i, 0
  %or.cond.i.i.i13 = or i1 %.not.i.i.i.i, %.not.i10.i.i.i
  br i1 %or.cond.i.i.i13, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !411, !noundef !15
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.z, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit

bb.z:                                             ; preds = %bb.y
  %i.bq = add nsw i64 %.sroa.019.0.i.i.i.i.i, -1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bs = icmp eq i64 %i.ax, %.sroa.019.0.i.i     ; 2 uses
  %..i = select i1 %i.bs, i64 %i.bq, i64 undef
  %.7.i = select i1 %i.bs, ptr %i.br, ptr null
  br label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit

_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.n, %bb.b, %bb.i, %bb.h, %bb.k, %bb.e, %bb.g, %bb.f, %bb.l, %bb.a, %bb.m
  %.sroa.3.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.m ], [ undef, %bb.a ], [ undef, %bb.l ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.e ], [ undef, %bb.k ], [ undef, %bb.h ], [ undef, %bb.i ], [ %..i, %bb.z ], [ undef, %bb.n ], [ undef, %bb.x ], [ undef, %bb.u ], [ undef, %bb.w ], [ undef, %bb.r ], [ undef, %bb.s ], [ undef, %bb.q ], [ undef, %bb.y ], [ undef, %bb.t ]
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ null, %bb.m ], [ null, %bb.a ], [ null, %bb.l ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.k ], [ null, %bb.h ], [ null, %bb.i ], [ %.7.i, %bb.z ], [ null, %bb.n ], [ null, %bb.x ], [ null, %bb.u ], [ null, %bb.w ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.q ], [ null, %bb.y ], [ null, %bb.t ]
  %i.bt = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.bu = insertvalue { ptr, i64 } %i.bt, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.bu
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef nonnull align 1 captures(address) dead_on_return dereferenceable(16) %5, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %6) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 1                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 1                ; 6 uses
  %i.h = alloca [16 x i8], align 1                ; 4 uses
  %i.i = alloca [16 x i8], align 1                ; 4 uses
  %i.j = alloca [16 x i8], align 1                ; 4 uses
  %i.k = alloca [16 x i8], align 1                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 11 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.12 = alloca [24 x i8], align 8           ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !482, !noundef !15 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !482, !noundef !15 ; 10 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !482
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit: ; preds = %bb.a
  %i.u = sub nuw i64 %i.q, %i.s                   ; 3 uses
  %i.v = icmp ugt i64 %i.u, 68719476704
  br i1 %i.v, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread, label %bb.c, !prof !16

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %i.w = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.w, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.x = shl nuw nsw i64 %i.u, 3
  %i.y = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !483
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.l, align 8, !noalias !483
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.y, ptr %i.aa, align 8, !noalias !483
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.x, ptr %i.ab, align 8, !noalias !483
  %i.ac = icmp eq i64 %3, 0
  br i1 %i.ac, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread82, label %.lr.ph.i.preheader.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread82: ; preds = %bb.d
  %.sroa.538.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.538.0..sroa_idx85, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !483
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph

.lr.ph.i.preheader.i:                             ; preds = %bb.d, %.lr.ph.i.preheader.i
  %.sroa.033.063 = phi ptr [ %i.ad, %.lr.ph.i.preheader.i ], [ %2, %bb.d ] ; 2 uses
  %.sroa.534.062 = phi i64 [ %i.ae, %.lr.ph.i.preheader.i ], [ %3, %bb.d ] ; 3 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.534.062, i64 16) ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.033.063, i64 %..i.i
  %i.ae = sub nuw nsw i64 %.sroa.534.062, %..i.i  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.af = icmp ugt i64 %.sroa.534.062, 15
  %i.ag = sub nuw nsw i64 16, %..i.i
  %i.ah = select i1 %i.af, i64 0, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.k, i64 %..i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 0, i64 %i.ah, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.033.063, i64 range(i64 0, 129) %..i.i, i1 false), !alias.scope !484, !noalias !485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !483
  %i.aj = load ptr, ptr %i.l, align 8, !noalias !483, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.j, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ak = icmp eq i64 %i.ae, 0
  br i1 %i.ak, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit, label %.lr.ph.i.preheader.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit: ; preds = %.lr.ph.i.preheader.i
  %.sroa.036.0.copyload.pre = load ptr, ptr %i.l, align 8, !noalias !483 ; 2 uses
  %.sroa.437.0.copyload.pre = load i64, ptr %i.z, align 8, !noalias !483 ; 2 uses
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.538.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !483
  %i.al = icmp eq ptr %.sroa.036.0.copyload.pre, null
  br i1 %i.al, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread: ; preds = %bb.c, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit
  %.sroa.813.046 = phi i64 [ %.sroa.437.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit ], [ %i.u, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit ], [ %3, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.813.046, ptr %i.am, align 8
  br label %bb.h

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph: ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread82
  %.sroa.036.0.copyload87 = phi ptr [ %1, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread82 ], [ %.sroa.036.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit ]
  %.sroa.437.0.copyload86 = phi i64 [ 0, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread82 ], [ %.sroa.437.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  store ptr %.sroa.036.0.copyload87, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 %.sroa.437.0.copyload86, ptr %.sroa.4.0..sroa_idx, align 8
  %.promoted64 = load ptr, ptr %4, align 8        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ao = sub nuw i64 %i.q, %i.s                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.promoted64, i64 %i.s ; 2 uses
  %i.aq = and i64 %i.ao, -16                      ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph
  %.promoted65 = load i32, ptr %i.an, align 1
  %7 = call i32 @llvm.bswap.i32(i32 %.promoted65)
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9
  %i.as = phi i64 [ %i.aq, %.lr.ph ], [ %i.bs, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %i.at = phi ptr [ %i.ap, %.lr.ph ], [ %i.br, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ] ; 2 uses
  %i.au = phi ptr [ %.promoted64, %.lr.ph ], [ %i.bp, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ] ; 2 uses
  %i.av = phi i64 [ %i.q, %.lr.ph ], [ %i.bd, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ] ; 3 uses
  %8 = phi i32 [ %7, %.lr.ph ], [ %i.ba, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 3072) ; 6 uses
  %i.aw = add i64 %..i, %i.s                      ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.s
  %.not.i10 = icmp ugt i64 %i.aw, %i.av
  %or.cond = or i1 %i.ax, %.not.i10
  br i1 %or.cond, label %bb.i, label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm12clmul_x86_643KeyE0B8_.exit.i, !prof !29

_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm12clmul_x86_643KeyE0B8_.exit.i: ; preds = %.lr.ph.a
  %i.ay = load ptr, ptr %i.n, align 8, !noalias !487, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ay, ptr noundef nonnull readonly %i.at, i64 noundef range(i64 1, 9223372036854775793) %..i) #36, !noalias !487
  %i.az = lshr exact i64 %..i, 4                  ; 2 uses
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i = trunc nuw nsw i64 %i.az to i32
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, i64 noundef %i.az, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %5) #36, !noalias !488, !inline_history !1
  %i.ba = add i32 %8, %.sroa.6.0.extract.trunc.i.i.i.i.i.i ; 2 uses
  %i.bb = call i32 @llvm.bswap.i32(i32 %i.ba)
  store i32 %i.bb, ptr %i.an, align 1, !alias.scope !489, !noalias !490
  %i.bc = icmp ult i64 %i.av, %..i
  br i1 %i.bc, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm12clmul_x86_643KeyE0B8_.exit.i
  %i.bd = sub nuw i64 %i.av, %..i                 ; 4 uses
  %.not42.i = icmp ult i64 %i.bd, %i.s
  br i1 %.not42.i, label %bb.g, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9, !prof !30

bb.f:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm12clmul_x86_643KeyE0B8_.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41, !noalias !491
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #41, !noalias !491
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph
  %.lcssa114 = phi i64 [ %i.q, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.bd, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.lcssa110 = phi ptr [ %.promoted64, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.bp, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.lcssa106 = phi i64 [ %i.ao, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.bq, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ] ; 2 uses
  %.lcssa = phi ptr [ %i.ap, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.br, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !492)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.not.i12 = icmp eq i64 %.lcssa114, %i.s
  br i1 %.not.i12, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %.lcssa, i64 range(i64 0, 129) %.lcssa106, i1 false), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !493
  %i.be = load ptr, ptr %i.m, align 8, !alias.scope !492, !nonnull !15, !align !17, !noundef !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.be, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.i, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %5, i64 16, i1 false)
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !496, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !495
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.lcssa110, ptr nonnull readonly align 1 dereferenceable(16) %i.h, i64 range(i64 0, -9223372036854775808) %.lcssa106, i1 false), !alias.scope !498, !noalias !499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %6, i64 16, i1 false), !noalias !501
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !502, !noalias !493, !noundef !15
  %i.bi = call i64 @llvm.bswap.i64(i64 %i.bh)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !502, !noalias !493, !noundef !15
  %i.bl = call i64 @llvm.bswap.i64(i64 %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !503
  store i64 %i.bi, ptr %i.e, align 8, !noalias !503
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bl, ptr %.sroa.5.0..sroa_idx10.i, align 8, !noalias !503
  %i.bm = load ptr, ptr %i.f, align 8, !alias.scope !502, !noalias !493, !nonnull !15, !align !17, !noundef !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bm, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.e, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !noalias !493
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !505, !inline_history !1
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bo, ptr noundef nonnull align 1 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit ], [ 1, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.i:                                             ; preds = %.lr.ph.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #41
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9: ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i ; 3 uses
  %i.bq = sub nuw i64 %i.bd, %i.s                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.s ; 2 uses
  %i.bs = and i64 %i.bq, -16                      ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, label %.lr.ph.a
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef nonnull align 1 captures(address) dead_on_return dereferenceable(16) %5, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %6) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  %i.e = alloca [16 x i8], align 1                ; 4 uses
  %.sroa.05.i = alloca i128, align 16             ; 5 uses
  %.sroa.058 = alloca i128, align 16              ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !586, !noundef !15 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !586, !noundef !15 ; 10 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !586
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit: ; preds = %bb.a
  %i.m = sub nuw i64 %i.i, %i.k                   ; 3 uses
  %i.n = icmp ugt i64 %i.m, 68719476704
  br i1 %i.n, label %bb.e, label %bb.c, !prof !16

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %i.o = shl nuw nsw i64 %i.m, 3
  %i.p = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.p, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.q = shl nuw i64 %3, 3
  %i.r = icmp eq i64 %3, 0
  br i1 %i.r, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph, label %.lr.ph.i.preheader.i.lr.ph

.lr.ph.i.preheader.i.lr.ph:                       ; preds = %bb.d
  %i.s = load i64, ptr %1, align 8, !alias.scope !587, !noalias !588, !noundef !15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !587, !noalias !588, !noundef !15 ; 2 uses
  %i.v = xor i64 %i.u, %i.s
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.lr.ph, %.lr.ph.i.preheader.i
  %.sroa.544.sroa.0.092 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.bu, %.lr.ph.i.preheader.i ]
  %.sroa.544.sroa.6.091 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.bv, %.lr.ph.i.preheader.i ]
  %.sroa.054.090 = phi ptr [ %2, %.lr.ph.i.preheader.i.lr.ph ], [ %i.w, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.555.089 = phi i64 [ %3, %.lr.ph.i.preheader.i.lr.ph ], [ %i.x, %.lr.ph.i.preheader.i ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.555.089, i64 16) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.054.090, i64 %..i.i
  %i.x = sub nuw nsw i64 %.sroa.555.089, %..i.i   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.058)
  store i128 0, ptr %.sroa.058, align 16, !noalias !589
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.058, ptr nonnull readonly align 1 %.sroa.054.090, i64 range(i64 0, 129) %..i.i, i1 false), !alias.scope !590, !noalias !591
  %.sroa.058.0..sroa.058.0..sroa.058.0..sroa.058.0..sroa.057.0.copyload = load i128, ptr %.sroa.058, align 16, !noalias !589
  %.sroa.544.sroa.6.0.insert.ext50 = zext i64 %.sroa.544.sroa.6.091 to i128
  %.sroa.544.sroa.6.0.insert.shift51 = shl nuw i128 %.sroa.544.sroa.6.0.insert.ext50, 64
  %.sroa.544.sroa.0.0.insert.ext47 = zext i64 %.sroa.544.sroa.0.092 to i128
  %.sroa.544.sroa.0.0.insert.insert49 = or disjoint i128 %.sroa.544.sroa.6.0.insert.shift51, %.sroa.544.sroa.0.0.insert.ext47
  %i.y = xor i128 %.sroa.058.0..sroa.058.0..sroa.058.0..sroa.058.0..sroa.057.0.copyload, %.sroa.544.sroa.0.0.insert.insert49 ; 2 uses
  %i.z = trunc i128 %i.y to i64
  %i.aa = lshr i128 %i.y, 64
  %i.ab = trunc nuw i128 %i.aa to i64
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.z) ; 2 uses
  %i.ad = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab) ; 2 uses
  %i.ae = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ad, i64 noundef %i.u) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0      ; 8 uses
  %i.ag = extractvalue { i64, i64 } %i.ae, 1      ; 2 uses
  %i.ah = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ac, i64 noundef %i.s) ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ah, 1      ; 2 uses
  %i.ak = xor i64 %i.ad, %i.ac
  %i.al = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ak, i64 noundef %i.v) ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = extractvalue { i64, i64 } %i.al, 1
  %i.ao = shl i64 %i.af, 63
  %i.ap = shl i64 %i.af, 62
  %i.aq = shl i64 %i.af, 57
  %i.ar = xor i64 %i.ao, %i.ap
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = xor i64 %i.as, %i.am
  %i.au = xor i64 %i.at, %i.af
  %i.av = xor i64 %i.au, %i.ag
  %i.aw = xor i64 %i.av, %i.ai                    ; 7 uses
  %i.ax = lshr i64 %i.af, 1
  %i.ay = shl i64 %i.aw, 63
  %i.az = lshr i64 %i.aw, 1
  %i.ba = lshr i64 %i.af, 2
  %i.bb = shl i64 %i.aw, 62
  %i.bc = lshr i64 %i.aw, 2
  %i.bd = lshr i64 %i.af, 7
  %i.be = shl i64 %i.aw, 57
  %i.bf = xor i64 %i.ba, %i.ax
  %i.bg = xor i64 %i.bf, %i.bd
  %i.bh = xor i64 %i.bg, %i.an
  %i.bi = xor i64 %i.bh, %i.ay
  %i.bj = xor i64 %i.bi, %i.bb
  %i.bk = xor i64 %i.bj, %i.be
  %i.bl = xor i64 %i.bk, %i.ag
  %i.bm = xor i64 %i.bl, %i.af
  %i.bn = xor i64 %i.bm, %i.aj
  %i.bo = xor i64 %i.bn, %i.ai
  %i.bp = lshr i64 %i.aw, 7
  %i.bq = xor i64 %i.az, %i.bc
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = xor i64 %i.br, %i.aj
  %i.bt = xor i64 %i.bs, %i.aw
  %i.bu = tail call i64 @llvm.bswap.i64(i64 %i.bt) ; 2 uses
  %i.bv = tail call i64 @llvm.bswap.i64(i64 %i.bo) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.058)
  %i.bw = icmp eq i64 %i.x, 0
  br i1 %i.bw, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph, label %.lr.ph.i.preheader.i

bb.e:                                             ; preds = %bb.c, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %.sroa.813.0.ph = phi i64 [ %i.m, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit ], [ %3, %bb.c ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.813.0.ph, ptr %i.bx, align 8
  br label %bb.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph: ; preds = %.lr.ph.i.preheader.i, %bb.d
  %.sroa.544.sroa.6.0.lcssa = phi i64 [ 0, %bb.d ], [ %i.bv, %.lr.ph.i.preheader.i ]
  %.sroa.544.sroa.0.0.lcssa = phi i64 [ 0, %bb.d ], [ %i.bu, %.lr.ph.i.preheader.i ]
  store ptr %1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store i64 %.sroa.544.sroa.0.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.544.sroa.6.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store i64 %i.q, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store i64 %i.o, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.promoted94 = load ptr, ptr %4, align 8        ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bz = sub nuw i64 %i.i, %i.k                  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.promoted94, i64 %i.k ; 2 uses
  %i.cb = and i64 %i.bz, -16                      ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph
  %.promoted96 = load i32, ptr %i.by, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %.promoted96)
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9
  %i.cd = phi i64 [ %i.cb, %.lr.ph ], [ %i.hd, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %i.ce = phi ptr [ %i.ca, %.lr.ph ], [ %i.hc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ] ; 2 uses
  %i.cf = phi ptr [ %.promoted94, %.lr.ph ], [ %i.ha, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ] ; 2 uses
  %i.cg = phi i64 [ %i.i, %.lr.ph ], [ %i.co, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ] ; 3 uses
  %8 = phi i32 [ %7, %.lr.ph ], [ %i.cl, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 3072) ; 5 uses
  %i.ch = add i64 %..i, %i.k                      ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.k
  %.not.i10 = icmp ugt i64 %i.ch, %i.cg
  %or.cond = or i1 %i.ci, %.not.i10
  br i1 %or.cond, label %bb.j, label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2vp3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i, !prof !29

_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2vp3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i: ; preds = %.lr.ph.a
  %i.cj = lshr exact i64 %..i, 4                  ; 3 uses
  %i.ck = load ptr, ptr %i.f, align 8, !noalias !592, !nonnull !15, !align !17, !noundef !15
  call void @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallbackNtB5_3KeyNtB7_12UpdateBlocks13update_blocks(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ck, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cj), !noalias !592
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i = trunc nuw nsw i64 %i.cj to i32
  tail call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf, i64 noundef %i.cj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %5) #36, !noalias !593, !inline_history !1
  %i.cl = add i32 %8, %.sroa.6.0.extract.trunc.i.i.i.i.i.i ; 2 uses
  %i.cm = tail call i32 @llvm.bswap.i32(i32 %i.cl)
  store i32 %i.cm, ptr %i.by, align 1, !alias.scope !594, !noalias !595
  %i.cn = icmp ult i64 %i.cg, %..i
  br i1 %i.cn, label %bb.g, label %bb.f, !prof !16

bb.f:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2vp3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i
  %i.co = sub nuw i64 %i.cg, %..i                 ; 4 uses
  %.not42.i = icmp ult i64 %i.co, %i.k
  br i1 %.not42.i, label %bb.h, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9, !prof !30

bb.g:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2vp3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41, !noalias !596
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #41, !noalias !596
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph
  %.lcssa141 = phi i64 [ %i.i, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.co, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.lcssa137 = phi ptr [ %.promoted94, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.ha, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.lcssa133 = phi i64 [ %i.bz, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.hb, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ] ; 2 uses
  %.lcssa = phi ptr [ %i.ca, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.hc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.sroa.033.0.copyload = load ptr, ptr %i.f, align 8 ; 4 uses
  %.sroa.434.0.copyload = load i128, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.835.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.434.sroa.0.0.extract.trunc = trunc i128 %.sroa.434.0.copyload to i64
  %.sroa.434.sroa.6.0.extract.shift = lshr i128 %.sroa.434.0.copyload, 64
  %.sroa.434.sroa.6.0.extract.trunc = trunc nuw i128 %.sroa.434.sroa.6.0.extract.shift to i64
  %.not.i12 = icmp eq i64 %.lcssa141, %i.k
  br i1 %.not.i12, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i)
  store i128 0, ptr %.sroa.05.i, align 16, !noalias !597
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.05.i, ptr nonnull readonly align 1 %.lcssa, i64 range(i64 0, 129) %.lcssa133, i1 false), !alias.scope !598, !noalias !599
  %.sroa.05.i.0..sroa.05.i.0..sroa.05.i.0..sroa.05.0..sroa.05.0..sroa.05.0..sroa.0.0.copyload.i = load i128, ptr %.sroa.05.i, align 16, !noalias !597 ; 2 uses
  %i.cp = xor i128 %.sroa.05.i.0..sroa.05.i.0..sroa.05.i.0..sroa.05.0..sroa.05.0..sroa.05.0..sroa.0.0.copyload.i, %.sroa.434.0.copyload ; 2 uses
  %i.cq = load i64, ptr %.sroa.033.0.copyload, align 8, !alias.scope !600, !noalias !597, !noundef !15 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !600, !noalias !597, !noundef !15 ; 2 uses
  %i.ct = trunc i128 %i.cp to i64
  %i.cu = lshr i128 %i.cp, 64
  %i.cv = trunc nuw i128 %i.cu to i64
  %i.cw = tail call noundef i64 @llvm.bswap.i64(i64 %i.ct) ; 2 uses
  %i.cx = tail call noundef i64 @llvm.bswap.i64(i64 %i.cv) ; 2 uses
  %i.cy = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cx, i64 noundef %i.cs) ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cy, 0      ; 8 uses
  %i.da = extractvalue { i64, i64 } %i.cy, 1      ; 2 uses
  %i.db = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cw, i64 noundef %i.cq) ; 2 uses
  %i.dc = extractvalue { i64, i64 } %i.db, 0      ; 2 uses
  %i.dd = extractvalue { i64, i64 } %i.db, 1      ; 2 uses
  %i.de = xor i64 %i.cx, %i.cw
  %i.df = xor i64 %i.cs, %i.cq
  %i.dg = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.de, i64 noundef %i.df) ; 2 uses
  %i.dh = extractvalue { i64, i64 } %i.dg, 0
  %i.di = extractvalue { i64, i64 } %i.dg, 1
  %i.dj = shl i64 %i.cz, 63
  %i.dk = shl i64 %i.cz, 62
  %i.dl = shl i64 %i.cz, 57
  %i.dm = xor i64 %i.dk, %i.dj
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = xor i64 %i.dn, %i.dh
  %i.dp = xor i64 %i.do, %i.cz
  %i.dq = xor i64 %i.dp, %i.da
  %i.dr = xor i64 %i.dq, %i.dc                    ; 7 uses
  %i.ds = lshr i64 %i.cz, 1
  %i.dt = shl i64 %i.dr, 63
  %i.du = lshr i64 %i.dr, 1
  %i.dv = lshr i64 %i.cz, 2
  %i.dw = shl i64 %i.dr, 62
  %i.dx = lshr i64 %i.dr, 2
  %i.dy = lshr i64 %i.cz, 7
  %i.dz = shl i64 %i.dr, 57
  %i.ea = xor i64 %i.ds, %i.dv
  %i.eb = xor i64 %i.ea, %i.dy
  %i.ec = xor i64 %i.eb, %i.di
  %i.ed = xor i64 %i.ec, %i.dt
  %i.ee = xor i64 %i.ed, %i.dw
  %i.ef = xor i64 %i.ee, %i.dz
  %i.eg = xor i64 %i.ef, %i.da
  %i.eh = xor i64 %i.eg, %i.cz
  %i.ei = xor i64 %i.eh, %i.dd
  %i.ej = xor i64 %i.ei, %i.dc
  %i.ek = lshr i64 %i.dr, 7
  %i.el = xor i64 %i.dx, %i.du
  %i.em = xor i64 %i.el, %i.ek
  %i.en = xor i64 %i.em, %i.dd
  %i.eo = xor i64 %i.en, %i.dr
  %i.ep = tail call i64 @llvm.bswap.i64(i64 %i.eo)
  %i.eq = tail call i64 @llvm.bswap.i64(i64 %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !601
  store i128 %.sroa.05.i.0..sroa.05.i.0..sroa.05.i.0..sroa.05.0..sroa.05.0..sroa.05.0..sroa.0.0.copyload.i, ptr %i.b, align 16, !noalias !602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %5, i64 16, i1 false)
  call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !603, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !601
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.lcssa137, ptr nonnull readonly align 1 dereferenceable(16) %i.e, i64 range(i64 0, -9223372036854775808) %.lcssa133, i1 false), !alias.scope !605, !noalias !606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  %.sroa.434.sroa.6.0 = phi i64 [ %.sroa.434.sroa.6.0.extract.trunc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge ], [ %i.eq, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ]
  %.sroa.434.sroa.0.0 = phi i64 [ %.sroa.434.sroa.0.0.extract.trunc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge ], [ %i.ep, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ]
  %.sroa.434.sroa.6.0.insert.ext39 = zext i64 %.sroa.434.sroa.6.0 to i128
  %.sroa.434.sroa.6.0.insert.shift40 = shl nuw i128 %.sroa.434.sroa.6.0.insert.ext39, 64
  %.sroa.434.sroa.0.0.insert.ext36 = zext i64 %.sroa.434.sroa.0.0 to i128
  %.sroa.434.sroa.0.0.insert.insert38 = or disjoint i128 %.sroa.434.sroa.6.0.insert.shift40, %.sroa.434.sroa.0.0.insert.ext36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %6, i64 16, i1 false), !noalias !608
  %i.er = zext i64 %.sroa.9.0.copyload to i128
  %i.es = zext i64 %.sroa.835.0.copyload to i128
  %i.et = shl nuw i128 %i.es, 64
  %i.eu = or disjoint i128 %i.et, %i.er
  %.sroa.0.0.insert.insert.i = call i128 @llvm.bswap.i128(i128 %i.eu)
  %i.ev = xor i128 %.sroa.434.sroa.0.0.insert.insert38, %.sroa.0.0.insert.insert.i ; 2 uses
  %i.ew = load i64, ptr %.sroa.033.0.copyload, align 8, !alias.scope !609, !noalias !610, !noundef !15 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !609, !noalias !610, !noundef !15 ; 2 uses
  %i.ez = trunc i128 %i.ev to i64
  %i.fa = lshr i128 %i.ev, 64
  %i.fb = trunc nuw i128 %i.fa to i64
  %i.fc = call noundef i64 @llvm.bswap.i64(i64 %i.ez) ; 2 uses
  %i.fd = call noundef i64 @llvm.bswap.i64(i64 %i.fb) ; 2 uses
  %i.fe = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fd, i64 noundef %i.ey) ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fe, 0      ; 8 uses
  %i.fg = extractvalue { i64, i64 } %i.fe, 1      ; 2 uses
  %i.fh = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fc, i64 noundef %i.ew) ; 2 uses
  %i.fi = extractvalue { i64, i64 } %i.fh, 0      ; 2 uses
  %i.fj = extractvalue { i64, i64 } %i.fh, 1      ; 2 uses
  %i.fk = xor i64 %i.fd, %i.fc
  %i.fl = xor i64 %i.ey, %i.ew
  %i.fm = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fk, i64 noundef %i.fl) ; 2 uses
  %i.fn = extractvalue { i64, i64 } %i.fm, 0
  %i.fo = extractvalue { i64, i64 } %i.fm, 1
  %i.fp = shl i64 %i.ff, 63
  %i.fq = shl i64 %i.ff, 62
  %i.fr = shl i64 %i.ff, 57
  %i.fs = xor i64 %i.fq, %i.fp
  %i.ft = xor i64 %i.fs, %i.fr
  %i.fu = xor i64 %i.ft, %i.fn
  %i.fv = xor i64 %i.fu, %i.ff
  %i.fw = xor i64 %i.fv, %i.fg
  %i.fx = xor i64 %i.fw, %i.fi                    ; 7 uses
  %i.fy = lshr i64 %i.ff, 1
  %i.fz = shl i64 %i.fx, 63
  %i.ga = lshr i64 %i.fx, 1
  %i.gb = lshr i64 %i.ff, 2
  %i.gc = shl i64 %i.fx, 62
  %i.gd = lshr i64 %i.fx, 2
  %i.ge = lshr i64 %i.ff, 7
  %i.gf = shl i64 %i.fx, 57
  %i.gg = xor i64 %i.fy, %i.gb
  %i.gh = xor i64 %i.gg, %i.ge
  %i.gi = xor i64 %i.gh, %i.fo
  %i.gj = xor i64 %i.gi, %i.fz
  %i.gk = xor i64 %i.gj, %i.gc
  %i.gl = xor i64 %i.gk, %i.gf
  %i.gm = xor i64 %i.gl, %i.fg
  %i.gn = xor i64 %i.gm, %i.ff
  %i.go = xor i64 %i.gn, %i.fj
  %i.gp = xor i64 %i.go, %i.fi
  %i.gq = lshr i64 %i.fx, 7
  %i.gr = xor i64 %i.gd, %i.ga
  %i.gs = xor i64 %i.gr, %i.gq
  %i.gt = xor i64 %i.gs, %i.fj
  %i.gu = xor i64 %i.gt, %i.fx
  %i.gv = zext i64 %i.gp to i128
  %i.gw = zext i64 %i.gu to i128
  %i.gx = shl nuw i128 %i.gw, 64
  %i.gy = or disjoint i128 %i.gx, %i.gv
  %.sroa.4.sroa.0.0.insert.insert11.i = call i128 @llvm.bswap.i128(i128 %i.gy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !607
  store i128 %.sroa.4.sroa.0.0.insert.insert11.i, ptr %i.d, align 16, !noalias !611
  call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !612, !inline_history !1
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gz, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !607
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, %bb.e
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit ], [ 1, %bb.e ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.j:                                             ; preds = %.lr.ph.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #41
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9: ; preds = %bb.f
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cf, i64 %..i ; 3 uses
  %i.hb = sub nuw i64 %i.co, %i.k                 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.k ; 2 uses
end_hunk_0
