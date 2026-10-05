Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RINvNtNtCs5yxAJGbRKSL_4ring2io3der6nestedNvB2_30bit_string_with_no_unused_bitsNtNtCsjVYLllkLn3D_9untrusted5input5InputNtNtNtB6_5error11unspecified11UnspecifiedEB6_:bb.a
  store i64 %i.w, ptr %i.a, align 8, !alias.scope !456, !noalias !457
  %i.y = load i8, ptr %i.x, align 1, !noalias !458, !noundef !15 ; 2 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = zext i8 %i.y to i64
  br label %bb.f

bb.k:                                             ; preds = %bb.h
  %i.ab = add nuw i64 %i.b, 3                     ; 3 uses
  store i64 %i.ab, ptr %i.a, align 8, !alias.scope !456, !noalias !457
  %i.ac = icmp ult i64 %i.ab, %i.d
  br i1 %i.ac, label %bb.l, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !458, !noundef !15 ; 2 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = add nuw i64 %i.b, 4                     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ab
  store i64 %i.ag, ptr %i.a, align 8, !alias.scope !456, !noalias !457
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !458, !noundef !15
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.af, 8
  %i.al = or disjoint i64 %i.ak, %i.aj
  %i.am = icmp eq i8 %i.ae, 0
  br i1 %i.am, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit, label %bb.f

bb.m:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.r ; 6 uses
  store i64 %i.s, ptr %i.a, align 8, !alias.scope !459, !noalias !457
  %.not.i = icmp ne i8 %i.i, -95
  %.not.i10 = icmp eq i64 %.sroa.019.0.i.i, 0
  %or.cond = or i1 %.not.i, %.not.i10
  br i1 %or.cond, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load i8, ptr %i.an, align 1, !noalias !460, !noundef !15 ; 2 uses
  %i.ap = and i8 %i.ao, 31
  %i.aq = icmp ne i8 %i.ap, 31
  %i.ar = icmp ne i64 %.sroa.019.0.i.i, 1
  %or.cond.i.i.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i.i.i, label %bb.o, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.at = load i8, ptr %i.as, align 1, !noalias !460, !noundef !15 ; 3 uses
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
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !460, !noundef !15 ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNvNtNtCs5yxAJGbRKSL_4ring2io3der30bit_string_with_no_unused_bitsBB_NtNtNtB11_5error11unspecified11UnspecifiedEB11_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = zext i8 %i.bb to i64
  br label %bb.r

bb.w:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !noalias !460, !noundef !15 ; 2 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !460, !noundef !15
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
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !461, !noundef !15
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !534, !noundef !15 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !534, !noundef !15 ; 10 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !534
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !535
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.l, align 8, !noalias !535
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.y, ptr %i.aa, align 8, !noalias !535
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.x, ptr %i.ab, align 8, !noalias !535
  %i.ac = icmp eq i64 %3, 0
  br i1 %i.ac, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread82, label %.lr.ph.i.preheader.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread82: ; preds = %bb.d
  %.sroa.538.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.538.0..sroa_idx85, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !535
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.033.063, i64 range(i64 0, 129) %..i.i, i1 false), !alias.scope !536, !noalias !537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !535
  %i.aj = load ptr, ptr %i.l, align 8, !noalias !535, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.j, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ak = icmp eq i64 %i.ae, 0
  br i1 %i.ak, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit, label %.lr.ph.i.preheader.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit: ; preds = %.lr.ph.i.preheader.i
  %.sroa.036.0.copyload.pre = load ptr, ptr %i.l, align 8, !noalias !535 ; 2 uses
  %.sroa.437.0.copyload.pre = load i64, ptr %i.z, align 8, !noalias !535 ; 2 uses
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.538.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !535
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

.lr.ph:                                           ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9
  %i.as = phi i64 [ %i.bu, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %i.aq, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ]
  %i.at = phi ptr [ %i.bt, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %i.ap, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ] ; 2 uses
  %i.au = phi ptr [ %i.br, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %.promoted64, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ] ; 2 uses
  %i.av = phi i64 [ %i.bf, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %i.q, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ] ; 3 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 3072) ; 6 uses
  %i.aw = add i64 %..i, %i.s                      ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.s
  %.not.i10 = icmp ugt i64 %i.aw, %i.av
  %or.cond = or i1 %i.ax, %.not.i10
  br i1 %or.cond, label %bb.i, label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm12clmul_x86_643KeyE0B8_.exit.i, !prof !29

_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm12clmul_x86_643KeyE0B8_.exit.i: ; preds = %.lr.ph
  %i.ay = load ptr, ptr %i.n, align 8, !noalias !539, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ay, ptr noundef nonnull readonly %i.at, i64 noundef range(i64 1, 9223372036854775793) %..i) #36, !noalias !539
  %i.az = lshr exact i64 %..i, 4                  ; 2 uses
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i = trunc nuw nsw i64 %i.az to i32
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, i64 noundef %i.az, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %5) #36, !noalias !540, !inline_history !1
  %i.ba = load i32, ptr %i.an, align 1, !alias.scope !541, !noalias !542
  %i.bb = call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bc = add i32 %i.bb, %.sroa.6.0.extract.trunc.i.i.i.i.i.i
  %i.bd = call i32 @llvm.bswap.i32(i32 %i.bc)
  store i32 %i.bd, ptr %i.an, align 1, !alias.scope !541, !noalias !542
  %i.be = icmp ult i64 %i.av, %..i
  br i1 %i.be, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm12clmul_x86_643KeyE0B8_.exit.i
  %i.bf = sub nuw i64 %i.av, %..i                 ; 4 uses
  %.not42.i = icmp ult i64 %i.bf, %i.s
  br i1 %.not42.i, label %bb.g, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9, !prof !30

bb.f:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm12clmul_x86_643KeyE0B8_.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41, !noalias !543
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #41, !noalias !543
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph
  %.lcssa114 = phi i64 [ %i.q, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.bf, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.lcssa110 = phi ptr [ %.promoted64, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.br, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.lcssa106 = phi i64 [ %i.ao, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.bs, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ] ; 2 uses
  %.lcssa = phi ptr [ %i.ap, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.bt, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.not.i12 = icmp eq i64 %.lcssa114, %i.s
  br i1 %.not.i12, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !545
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %.lcssa, i64 range(i64 0, 129) %.lcssa106, i1 false), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !545
  %i.bg = load ptr, ptr %i.m, align 8, !alias.scope !544, !noalias !546, !nonnull !15, !align !17, !noundef !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bg, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.i, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %5, i64 16, i1 false)
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !548, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !547
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.lcssa110, ptr nonnull readonly align 1 dereferenceable(16) %i.h, i64 range(i64 0, -9223372036854775808) %.lcssa106, i1 false), !alias.scope !550, !noalias !551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %6, i64 16, i1 false), !noalias !553
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !554, !noalias !555, !noundef !15
  %i.bk = call i64 @llvm.bswap.i64(i64 %i.bj)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !554, !noalias !555, !noundef !15
  %i.bn = call i64 @llvm.bswap.i64(i64 %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !556
  store i64 %i.bk, ptr %i.e, align 8, !noalias !556
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bn, ptr %.sroa.5.0..sroa_idx10.i, align 8, !noalias !556
  %i.bo = load ptr, ptr %i.f, align 8, !alias.scope !554, !noalias !555, !nonnull !15, !align !17, !noundef !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bo, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.e, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !noalias !545
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !558, !inline_history !1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bq, ptr noundef nonnull align 1 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit ], [ 1, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.i:                                             ; preds = %.lr.ph
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #41
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9: ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i ; 3 uses
  %i.bs = sub nuw i64 %i.bf, %i.s                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.s ; 2 uses
  %i.bu = and i64 %i.bs, -16                      ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, label %.lr.ph
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !647, !noundef !15 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !647, !noundef !15 ; 10 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !647
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
  %i.s = load i64, ptr %1, align 8, !alias.scope !648, !noalias !649, !noundef !15 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !648, !noalias !649, !noundef !15 ; 2 uses
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
  store i128 0, ptr %.sroa.058, align 16, !noalias !650
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.058, ptr nonnull readonly align 1 %.sroa.054.090, i64 range(i64 0, 129) %..i.i, i1 false), !alias.scope !651, !noalias !652
  %.sroa.058.0..sroa.058.0..sroa.058.0..sroa.058.0..sroa.057.0.copyload = load i128, ptr %.sroa.058, align 16, !noalias !650
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

.lr.ph:                                           ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9
  %i.cd = phi i64 [ %i.hf, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %i.cb, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ]
  %i.ce = phi ptr [ %i.he, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %i.ca, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ] ; 2 uses
  %i.cf = phi ptr [ %i.hc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %.promoted94, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ] ; 2 uses
  %i.cg = phi i64 [ %i.cq, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %i.i, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ] ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cd, i64 3072) ; 5 uses
  %i.ch = add i64 %..i, %i.k                      ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.k
  %.not.i10 = icmp ugt i64 %i.ch, %i.cg
  %or.cond = or i1 %i.ci, %.not.i10
  br i1 %or.cond, label %bb.j, label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2vp3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i, !prof !29

_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2vp3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i: ; preds = %.lr.ph
  %i.cj = lshr exact i64 %..i, 4                  ; 3 uses
  %i.ck = load ptr, ptr %i.f, align 8, !noalias !653, !nonnull !15, !align !17, !noundef !15
  call void @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallbackNtB5_3KeyNtB7_12UpdateBlocks13update_blocks(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ck, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cj), !noalias !653
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i = trunc nuw nsw i64 %i.cj to i32
  tail call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf, i64 noundef %i.cj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %5) #36, !noalias !654, !inline_history !1
  %i.cl = load i32, ptr %i.by, align 1, !alias.scope !655, !noalias !656
  %i.cm = tail call i32 @llvm.bswap.i32(i32 %i.cl)
  %i.cn = add i32 %i.cm, %.sroa.6.0.extract.trunc.i.i.i.i.i.i
  %i.co = tail call i32 @llvm.bswap.i32(i32 %i.cn)
  store i32 %i.co, ptr %i.by, align 1, !alias.scope !655, !noalias !656
  %i.cp = icmp ult i64 %i.cg, %..i
  br i1 %i.cp, label %bb.g, label %bb.f, !prof !16

bb.f:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2vp3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i
  %i.cq = sub nuw i64 %i.cg, %..i                 ; 4 uses
  %.not42.i = icmp ult i64 %i.cq, %i.k
  br i1 %.not42.i, label %bb.h, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9, !prof !30

bb.g:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes2vp3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41, !noalias !657
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #41, !noalias !657
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph
  %.lcssa141 = phi i64 [ %i.i, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.cq, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.lcssa137 = phi ptr [ %.promoted94, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.hc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.lcssa133 = phi i64 [ %i.bz, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.hd, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ] ; 2 uses
  %.lcssa = phi ptr [ %i.ca, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.he, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
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
  store i128 0, ptr %.sroa.05.i, align 16, !noalias !658
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.05.i, ptr nonnull readonly align 1 %.lcssa, i64 range(i64 0, 129) %.lcssa133, i1 false), !alias.scope !659, !noalias !660
  %.sroa.05.i.0..sroa.05.i.0..sroa.05.i.0..sroa.05.0..sroa.05.0..sroa.05.0..sroa.0.0.copyload.i = load i128, ptr %.sroa.05.i, align 16, !noalias !658 ; 2 uses
  %i.cr = xor i128 %.sroa.05.i.0..sroa.05.i.0..sroa.05.i.0..sroa.05.0..sroa.05.0..sroa.05.0..sroa.0.0.copyload.i, %.sroa.434.0.copyload ; 2 uses
  %i.cs = load i64, ptr %.sroa.033.0.copyload, align 8, !alias.scope !661, !noalias !662, !noundef !15 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !661, !noalias !662, !noundef !15 ; 2 uses
  %i.cv = trunc i128 %i.cr to i64
  %i.cw = lshr i128 %i.cr, 64
  %i.cx = trunc nuw i128 %i.cw to i64
  %i.cy = tail call noundef i64 @llvm.bswap.i64(i64 %i.cv) ; 2 uses
  %i.cz = tail call noundef i64 @llvm.bswap.i64(i64 %i.cx) ; 2 uses
  %i.da = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cz, i64 noundef %i.cu) ; 2 uses
  %i.db = extractvalue { i64, i64 } %i.da, 0      ; 8 uses
  %i.dc = extractvalue { i64, i64 } %i.da, 1      ; 2 uses
  %i.dd = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cy, i64 noundef %i.cs) ; 2 uses
  %i.de = extractvalue { i64, i64 } %i.dd, 0      ; 2 uses
  %i.df = extractvalue { i64, i64 } %i.dd, 1      ; 2 uses
  %i.dg = xor i64 %i.cz, %i.cy
  %i.dh = xor i64 %i.cu, %i.cs
  %i.di = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.dg, i64 noundef %i.dh) ; 2 uses
  %i.dj = extractvalue { i64, i64 } %i.di, 0
  %i.dk = extractvalue { i64, i64 } %i.di, 1
  %i.dl = shl i64 %i.db, 63
  %i.dm = shl i64 %i.db, 62
  %i.dn = shl i64 %i.db, 57
  %i.do = xor i64 %i.dm, %i.dl
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = xor i64 %i.dp, %i.dj
  %i.dr = xor i64 %i.dq, %i.db
  %i.ds = xor i64 %i.dr, %i.dc
  %i.dt = xor i64 %i.ds, %i.de                    ; 7 uses
  %i.du = lshr i64 %i.db, 1
  %i.dv = shl i64 %i.dt, 63
  %i.dw = lshr i64 %i.dt, 1
  %i.dx = lshr i64 %i.db, 2
  %i.dy = shl i64 %i.dt, 62
  %i.dz = lshr i64 %i.dt, 2
  %i.ea = lshr i64 %i.db, 7
  %i.eb = shl i64 %i.dt, 57
  %i.ec = xor i64 %i.du, %i.dx
  %i.ed = xor i64 %i.ec, %i.ea
  %i.ee = xor i64 %i.ed, %i.dk
  %i.ef = xor i64 %i.ee, %i.dv
  %i.eg = xor i64 %i.ef, %i.dy
  %i.eh = xor i64 %i.eg, %i.eb
  %i.ei = xor i64 %i.eh, %i.dc
  %i.ej = xor i64 %i.ei, %i.db
  %i.ek = xor i64 %i.ej, %i.df
  %i.el = xor i64 %i.ek, %i.de
  %i.em = lshr i64 %i.dt, 7
  %i.en = xor i64 %i.dz, %i.dw
  %i.eo = xor i64 %i.en, %i.em
  %i.ep = xor i64 %i.eo, %i.df
  %i.eq = xor i64 %i.ep, %i.dt
  %i.er = tail call i64 @llvm.bswap.i64(i64 %i.eq)
  %i.es = tail call i64 @llvm.bswap.i64(i64 %i.el)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !663
  store i128 %.sroa.05.i.0..sroa.05.i.0..sroa.05.i.0..sroa.05.0..sroa.05.0..sroa.05.0..sroa.0.0.copyload.i, ptr %i.b, align 16, !noalias !664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %5, i64 16, i1 false)
  call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !665, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !663
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.lcssa137, ptr nonnull readonly align 1 dereferenceable(16) %i.e, i64 range(i64 0, -9223372036854775808) %.lcssa133, i1 false), !alias.scope !667, !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  %.sroa.434.sroa.6.0 = phi i64 [ %.sroa.434.sroa.6.0.extract.trunc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge ], [ %i.es, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ]
  %.sroa.434.sroa.0.0 = phi i64 [ %.sroa.434.sroa.0.0.extract.trunc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge ], [ %i.er, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ]
  %.sroa.434.sroa.6.0.insert.ext39 = zext i64 %.sroa.434.sroa.6.0 to i128
  %.sroa.434.sroa.6.0.insert.shift40 = shl nuw i128 %.sroa.434.sroa.6.0.insert.ext39, 64
  %.sroa.434.sroa.0.0.insert.ext36 = zext i64 %.sroa.434.sroa.0.0 to i128
  %.sroa.434.sroa.0.0.insert.insert38 = or disjoint i128 %.sroa.434.sroa.6.0.insert.shift40, %.sroa.434.sroa.0.0.insert.ext36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %6, i64 16, i1 false), !noalias !670
  %i.et = zext i64 %.sroa.9.0.copyload to i128
  %i.eu = zext i64 %.sroa.835.0.copyload to i128
  %i.ev = shl nuw i128 %i.eu, 64
  %i.ew = or disjoint i128 %i.ev, %i.et
  %.sroa.0.0.insert.insert.i = call i128 @llvm.bswap.i128(i128 %i.ew)
  %i.ex = xor i128 %.sroa.434.sroa.0.0.insert.insert38, %.sroa.0.0.insert.insert.i ; 2 uses
  %i.ey = load i64, ptr %.sroa.033.0.copyload, align 8, !alias.scope !671, !noalias !672, !noundef !15 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !671, !noalias !672, !noundef !15 ; 2 uses
  %i.fb = trunc i128 %i.ex to i64
  %i.fc = lshr i128 %i.ex, 64
  %i.fd = trunc nuw i128 %i.fc to i64
  %i.fe = call noundef i64 @llvm.bswap.i64(i64 %i.fb) ; 2 uses
  %i.ff = call noundef i64 @llvm.bswap.i64(i64 %i.fd) ; 2 uses
  %i.fg = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ff, i64 noundef %i.fa) ; 2 uses
  %i.fh = extractvalue { i64, i64 } %i.fg, 0      ; 8 uses
  %i.fi = extractvalue { i64, i64 } %i.fg, 1      ; 2 uses
  %i.fj = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fe, i64 noundef %i.ey) ; 2 uses
  %i.fk = extractvalue { i64, i64 } %i.fj, 0      ; 2 uses
  %i.fl = extractvalue { i64, i64 } %i.fj, 1      ; 2 uses
  %i.fm = xor i64 %i.ff, %i.fe
  %i.fn = xor i64 %i.fa, %i.ey
  %i.fo = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fm, i64 noundef %i.fn) ; 2 uses
  %i.fp = extractvalue { i64, i64 } %i.fo, 0
  %i.fq = extractvalue { i64, i64 } %i.fo, 1
  %i.fr = shl i64 %i.fh, 63
  %i.fs = shl i64 %i.fh, 62
  %i.ft = shl i64 %i.fh, 57
  %i.fu = xor i64 %i.fs, %i.fr
  %i.fv = xor i64 %i.fu, %i.ft
  %i.fw = xor i64 %i.fv, %i.fp
  %i.fx = xor i64 %i.fw, %i.fh
  %i.fy = xor i64 %i.fx, %i.fi
  %i.fz = xor i64 %i.fy, %i.fk                    ; 7 uses
  %i.ga = lshr i64 %i.fh, 1
  %i.gb = shl i64 %i.fz, 63
  %i.gc = lshr i64 %i.fz, 1
  %i.gd = lshr i64 %i.fh, 2
  %i.ge = shl i64 %i.fz, 62
  %i.gf = lshr i64 %i.fz, 2
  %i.gg = lshr i64 %i.fh, 7
  %i.gh = shl i64 %i.fz, 57
  %i.gi = xor i64 %i.ga, %i.gd
  %i.gj = xor i64 %i.gi, %i.gg
  %i.gk = xor i64 %i.gj, %i.fq
  %i.gl = xor i64 %i.gk, %i.gb
  %i.gm = xor i64 %i.gl, %i.ge
  %i.gn = xor i64 %i.gm, %i.gh
  %i.go = xor i64 %i.gn, %i.fi
  %i.gp = xor i64 %i.go, %i.fh
  %i.gq = xor i64 %i.gp, %i.fl
  %i.gr = xor i64 %i.gq, %i.fk
  %i.gs = lshr i64 %i.fz, 7
  %i.gt = xor i64 %i.gf, %i.gc
  %i.gu = xor i64 %i.gt, %i.gs
  %i.gv = xor i64 %i.gu, %i.fl
  %i.gw = xor i64 %i.gv, %i.fz
  %i.gx = zext i64 %i.gr to i128
  %i.gy = zext i64 %i.gw to i128
  %i.gz = shl nuw i128 %i.gy, 64
  %i.ha = or disjoint i128 %i.gz, %i.gx
  %.sroa.4.sroa.0.0.insert.insert11.i = call i128 @llvm.bswap.i128(i128 %i.ha)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !669
  store i128 %.sroa.4.sroa.0.0.insert.insert11.i, ptr %i.d, align 16, !noalias !673
  call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !674, !inline_history !1
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hb, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !669
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, %bb.e
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit ], [ 1, %bb.e ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.j:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #41
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9: ; preds = %bb.f
  %i.hc = getelementptr inbounds nuw i8, ptr %i.cf, i64 %..i ; 3 uses
  %i.hd = sub nuw i64 %i.cq, %i.k                 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.k ; 2 uses
  %i.hf = and i64 %i.hd, -16                      ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, label %.lr.ph
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef nonnull align 1 captures(none) dead_on_return dereferenceable(16) %5, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %6) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [16 x i8], align 1                ; 4 uses
  %.sroa.05.i = alloca i128, align 16             ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.058 = alloca i128, align 16              ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !740, !noundef !15 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !740, !noundef !15 ; 11 uses
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !740
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit: ; preds = %bb.a
  %i.p = sub nuw i64 %i.l, %i.n                   ; 3 uses
  %i.q = icmp ugt i64 %i.p, 68719476704
  br i1 %i.q, label %bb.e, label %bb.c, !prof !16

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.s, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.t = shl nuw i64 %3, 3
  %i.u = icmp eq i64 %3, 0
  br i1 %i.u, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph, label %.lr.ph.i.preheader.i.lr.ph

.lr.ph.i.preheader.i.lr.ph:                       ; preds = %bb.d
  %i.v = load i64, ptr %i.j, align 8, !alias.scope !741, !noalias !742, !noundef !15 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !741, !noalias !742, !noundef !15 ; 2 uses
  %i.y = xor i64 %i.x, %i.v
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.lr.ph, %.lr.ph.i.preheader.i
  %.sroa.544.sroa.0.092 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.bx, %.lr.ph.i.preheader.i ]
  %.sroa.544.sroa.6.091 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.by, %.lr.ph.i.preheader.i ]
  %.sroa.054.090 = phi ptr [ %2, %.lr.ph.i.preheader.i.lr.ph ], [ %i.z, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.555.089 = phi i64 [ %3, %.lr.ph.i.preheader.i.lr.ph ], [ %i.aa, %.lr.ph.i.preheader.i ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.555.089, i64 16) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.054.090, i64 %..i.i
  %i.aa = sub nuw nsw i64 %.sroa.555.089, %..i.i  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.058)
  store i128 0, ptr %.sroa.058, align 16, !noalias !743
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.058, ptr nonnull readonly align 1 %.sroa.054.090, i64 range(i64 0, 129) %..i.i, i1 false), !alias.scope !744, !noalias !745
  %.sroa.058.0..sroa.058.0..sroa.058.0..sroa.058.0..sroa.057.0.copyload = load i128, ptr %.sroa.058, align 16, !noalias !743
  %.sroa.544.sroa.6.0.insert.ext50 = zext i64 %.sroa.544.sroa.6.091 to i128
  %.sroa.544.sroa.6.0.insert.shift51 = shl nuw i128 %.sroa.544.sroa.6.0.insert.ext50, 64
  %.sroa.544.sroa.0.0.insert.ext47 = zext i64 %.sroa.544.sroa.0.092 to i128
  %.sroa.544.sroa.0.0.insert.insert49 = or disjoint i128 %.sroa.544.sroa.6.0.insert.shift51, %.sroa.544.sroa.0.0.insert.ext47
  %i.ab = xor i128 %.sroa.058.0..sroa.058.0..sroa.058.0..sroa.058.0..sroa.057.0.copyload, %.sroa.544.sroa.0.0.insert.insert49 ; 2 uses
  %i.ac = trunc i128 %i.ab to i64
  %i.ad = lshr i128 %i.ab, 64
  %i.ae = trunc nuw i128 %i.ad to i64
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ac) ; 2 uses
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ah = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ag, i64 noundef %i.x) ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0      ; 8 uses
  %i.aj = extractvalue { i64, i64 } %i.ah, 1      ; 2 uses
  %i.ak = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.af, i64 noundef %i.v) ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.ak, 1      ; 2 uses
  %i.an = xor i64 %i.ag, %i.af
  %i.ao = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.an, i64 noundef %i.y) ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = extractvalue { i64, i64 } %i.ao, 1
  %i.ar = shl i64 %i.ai, 63
  %i.as = shl i64 %i.ai, 62
  %i.at = shl i64 %i.ai, 57
  %i.au = xor i64 %i.ar, %i.as
  %i.av = xor i64 %i.au, %i.at
  %i.aw = xor i64 %i.av, %i.ap
  %i.ax = xor i64 %i.aw, %i.ai
  %i.ay = xor i64 %i.ax, %i.aj
  %i.az = xor i64 %i.ay, %i.al                    ; 7 uses
  %i.ba = lshr i64 %i.ai, 1
  %i.bb = shl i64 %i.az, 63
  %i.bc = lshr i64 %i.az, 1
  %i.bd = lshr i64 %i.ai, 2
  %i.be = shl i64 %i.az, 62
  %i.bf = lshr i64 %i.az, 2
  %i.bg = lshr i64 %i.ai, 7
  %i.bh = shl i64 %i.az, 57
  %i.bi = xor i64 %i.bd, %i.ba
  %i.bj = xor i64 %i.bi, %i.bg
  %i.bk = xor i64 %i.bj, %i.aq
  %i.bl = xor i64 %i.bk, %i.bb
  %i.bm = xor i64 %i.bl, %i.be
  %i.bn = xor i64 %i.bm, %i.bh
  %i.bo = xor i64 %i.bn, %i.aj
  %i.bp = xor i64 %i.bo, %i.ai
  %i.bq = xor i64 %i.bp, %i.am
  %i.br = xor i64 %i.bq, %i.al
  %i.bs = lshr i64 %i.az, 7
  %i.bt = xor i64 %i.bc, %i.bf
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = xor i64 %i.bu, %i.am
  %i.bw = xor i64 %i.bv, %i.az
  %i.bx = tail call i64 @llvm.bswap.i64(i64 %i.bw) ; 2 uses
  %i.by = tail call i64 @llvm.bswap.i64(i64 %i.br) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.058)
  %i.bz = icmp eq i64 %i.aa, 0
  br i1 %i.bz, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph, label %.lr.ph.i.preheader.i

bb.e:                                             ; preds = %bb.c, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %.sroa.813.0.ph = phi i64 [ %i.p, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit ], [ %3, %bb.c ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.813.0.ph, ptr %i.ca, align 8
  br label %bb.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph: ; preds = %.lr.ph.i.preheader.i, %bb.d
  %.sroa.544.sroa.6.0.lcssa = phi i64 [ 0, %bb.d ], [ %i.by, %.lr.ph.i.preheader.i ]
  %.sroa.544.sroa.0.0.lcssa = phi i64 [ 0, %bb.d ], [ %i.bx, %.lr.ph.i.preheader.i ]
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 %.sroa.544.sroa.0.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.544.sroa.6.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store i64 %i.t, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store i64 %i.r, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.promoted94 = load ptr, ptr %4, align 8        ; 3 uses
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cb = sub nuw i64 %i.l, %i.n                  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.promoted94, i64 %i.n ; 2 uses
  %i.cd = and i64 %i.cb, -16                      ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9
  %i.cf = phi i64 [ %i.hh, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %i.cd, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ]
  %i.cg = phi ptr [ %i.hg, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %i.cc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ]
  %i.ch = phi ptr [ %i.he, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %.promoted94, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ] ; 2 uses
  %i.ci = phi i64 [ %i.co, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ], [ %i.l, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ] ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 3072) ; 5 uses
  %i.cj = add i64 %..i, %i.n                      ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.n
  %.not.i10 = icmp ugt i64 %i.cj, %i.ci
  %or.cond = or i1 %i.ck, %.not.i10
  br i1 %or.cond, label %bb.j, label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes8fallback3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i, !prof !29

_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes8fallback3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !746
  store ptr %i.ch, ptr %i.h, align 8, !noalias !746
  store i64 %i.cj, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !746
  store i64 %i.n, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !746
  %i.cl = lshr exact i64 %..i, 4
  %i.cm = load ptr, ptr %i.i, align 8, !noalias !747, !nonnull !15, !align !17, !noundef !15
  call void @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallbackNtB5_3KeyNtB7_12UpdateBlocks13update_blocks(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cm, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %i.cl), !noalias !747
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull dereferenceable(16) %5) #39, !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !746
  %i.cn = icmp ult i64 %i.ci, %..i
  br i1 %i.cn, label %bb.g, label %bb.f, !prof !16

bb.f:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes8fallback3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i
  %i.co = sub nuw i64 %i.ci, %..i                 ; 4 uses
  %.not42.i = icmp ult i64 %i.co, %i.n
  br i1 %.not42.i, label %bb.h, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9, !prof !30

bb.g:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB6_3aes8fallback3KeyNtNtNtB6_3gcm8fallback3KeyE0B8_.exit.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41, !noalias !746
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #41, !noalias !746
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph
  %.lcssa142 = phi i64 [ %i.l, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.co, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.lcssa138 = phi ptr [ %.promoted94, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.he, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.lcssa134 = phi i64 [ %i.cb, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.hf, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ] ; 2 uses
  %.lcssa = phi ptr [ %i.cc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9.lr.ph ], [ %i.hg, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9 ]
  %.sroa.033.0.copyload = load ptr, ptr %i.i, align 8 ; 4 uses
  %.sroa.434.0.copyload = load i128, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.835.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.434.sroa.0.0.extract.trunc = trunc i128 %.sroa.434.0.copyload to i64
  %.sroa.434.sroa.6.0.extract.shift = lshr i128 %.sroa.434.0.copyload, 64
  %.sroa.434.sroa.6.0.extract.trunc = trunc nuw i128 %.sroa.434.sroa.6.0.extract.shift to i64
  %.not.i12 = icmp eq i64 %.lcssa142, %i.n
  br i1 %.not.i12, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i)
  store i128 0, ptr %.sroa.05.i, align 16, !noalias !749
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.05.i, ptr nonnull readonly align 1 %.lcssa, i64 range(i64 0, 129) %.lcssa134, i1 false), !alias.scope !750, !noalias !751
  %.sroa.05.i.0..sroa.05.i.0..sroa.05.i.0..sroa.05.0..sroa.05.0..sroa.05.0..sroa.0.0.copyload.i = load i128, ptr %.sroa.05.i, align 16, !noalias !749 ; 2 uses
  %i.cp = xor i128 %.sroa.05.i.0..sroa.05.i.0..sroa.05.i.0..sroa.05.0..sroa.05.0..sroa.05.0..sroa.0.0.copyload.i, %.sroa.434.0.copyload ; 2 uses
  %i.cq = load i64, ptr %.sroa.033.0.copyload, align 8, !alias.scope !752, !noalias !753, !noundef !15 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !752, !noalias !753, !noundef !15 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !754
  store i128 %.sroa.05.i.0..sroa.05.i.0..sroa.05.i.0..sroa.05.0..sroa.05.0..sroa.05.0..sroa.0.0.copyload.i, ptr %i.c, align 16, !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !754
  store ptr %i.c, ptr %i.a, align 8, !noalias !754
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 16, ptr %i.er, align 8, !noalias !754
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.es, align 8, !noalias !754
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull dereferenceable(16) %i.b) #39, !noalias !756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !754
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.lcssa138, ptr nonnull readonly align 1 dereferenceable(16) %i.g, i64 range(i64 0, -9223372036854775808) %.lcssa134, i1 false), !alias.scope !758, !noalias !759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  %.sroa.434.sroa.6.0 = phi i64 [ %.sroa.434.sroa.6.0.extract.trunc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge ], [ %i.eq, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ]
  %.sroa.434.sroa.0.0 = phi i64 [ %.sroa.434.sroa.0.0.extract.trunc, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge ], [ %i.ep, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ]
  %.sroa.434.sroa.6.0.insert.ext39 = zext i64 %.sroa.434.sroa.6.0 to i128
  %.sroa.434.sroa.6.0.insert.shift40 = shl nuw i128 %.sroa.434.sroa.6.0.insert.ext39, 64
  %.sroa.434.sroa.0.0.insert.ext36 = zext i64 %.sroa.434.sroa.0.0 to i128
  %.sroa.434.sroa.0.0.insert.insert38 = or disjoint i128 %.sroa.434.sroa.6.0.insert.shift40, %.sroa.434.sroa.0.0.insert.ext36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(16) %6, i64 16, i1 false), !noalias !761
  %i.et = zext i64 %.sroa.9.0.copyload to i128
  %i.eu = zext i64 %.sroa.835.0.copyload to i128
  %i.ev = shl nuw i128 %i.eu, 64
  %i.ew = or disjoint i128 %i.ev, %i.et
  %.sroa.0.0.insert.insert.i = call i128 @llvm.bswap.i128(i128 %i.ew)
  %i.ex = xor i128 %.sroa.434.sroa.0.0.insert.insert38, %.sroa.0.0.insert.insert.i ; 2 uses
  %i.ey = load i64, ptr %.sroa.033.0.copyload, align 8, !alias.scope !762, !noalias !763, !noundef !15 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !762, !noalias !763, !noundef !15 ; 2 uses
  %i.fb = trunc i128 %i.ex to i64
  %i.fc = lshr i128 %i.ex, 64
  %i.fd = trunc nuw i128 %i.fc to i64
  %i.fe = call noundef i64 @llvm.bswap.i64(i64 %i.fb) ; 2 uses
  %i.ff = call noundef i64 @llvm.bswap.i64(i64 %i.fd) ; 2 uses
  %i.fg = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ff, i64 noundef %i.fa) ; 2 uses
  %i.fh = extractvalue { i64, i64 } %i.fg, 0      ; 8 uses
  %i.fi = extractvalue { i64, i64 } %i.fg, 1      ; 2 uses
  %i.fj = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fe, i64 noundef %i.ey) ; 2 uses
  %i.fk = extractvalue { i64, i64 } %i.fj, 0      ; 2 uses
  %i.fl = extractvalue { i64, i64 } %i.fj, 1      ; 2 uses
  %i.fm = xor i64 %i.ff, %i.fe
  %i.fn = xor i64 %i.fa, %i.ey
  %i.fo = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fm, i64 noundef %i.fn) ; 2 uses
  %i.fp = extractvalue { i64, i64 } %i.fo, 0
  %i.fq = extractvalue { i64, i64 } %i.fo, 1
  %i.fr = shl i64 %i.fh, 63
  %i.fs = shl i64 %i.fh, 62
  %i.ft = shl i64 %i.fh, 57
  %i.fu = xor i64 %i.fs, %i.fr
  %i.fv = xor i64 %i.fu, %i.ft
  %i.fw = xor i64 %i.fv, %i.fp
  %i.fx = xor i64 %i.fw, %i.fh
  %i.fy = xor i64 %i.fx, %i.fi
  %i.fz = xor i64 %i.fy, %i.fk                    ; 7 uses
  %i.ga = lshr i64 %i.fh, 1
  %i.gb = shl i64 %i.fz, 63
  %i.gc = lshr i64 %i.fz, 1
  %i.gd = lshr i64 %i.fh, 2
  %i.ge = shl i64 %i.fz, 62
  %i.gf = lshr i64 %i.fz, 2
  %i.gg = lshr i64 %i.fh, 7
  %i.gh = shl i64 %i.fz, 57
  %i.gi = xor i64 %i.ga, %i.gd
  %i.gj = xor i64 %i.gi, %i.gg
  %i.gk = xor i64 %i.gj, %i.fq
  %i.gl = xor i64 %i.gk, %i.gb
  %i.gm = xor i64 %i.gl, %i.ge
  %i.gn = xor i64 %i.gm, %i.gh
  %i.go = xor i64 %i.gn, %i.fi
  %i.gp = xor i64 %i.go, %i.fh
  %i.gq = xor i64 %i.gp, %i.fl
  %i.gr = xor i64 %i.gq, %i.fk
  %i.gs = lshr i64 %i.fz, 7
  %i.gt = xor i64 %i.gf, %i.gc
  %i.gu = xor i64 %i.gt, %i.gs
  %i.gv = xor i64 %i.gu, %i.fl
  %i.gw = xor i64 %i.gv, %i.fz
  %i.gx = zext i64 %i.gr to i128
  %i.gy = zext i64 %i.gw to i128
  %i.gz = shl nuw i128 %i.gy, 64
  %i.ha = or disjoint i128 %i.gz, %i.gx
  %.sroa.4.sroa.0.0.insert.insert11.i = call i128 @llvm.bswap.i128(i128 %i.ha)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !760
  store i128 %.sroa.4.sroa.0.0.insert.insert11.i, ptr %i.f, align 16, !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !760
  store ptr %i.f, ptr %i.d, align 8, !noalias !760
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 16, ptr %i.hb, align 8, !noalias !760
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.hc, align 8, !noalias !760
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull dereferenceable(16) %i.e) #39, !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !760
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hd, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !760
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, %bb.e
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11open_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit ], [ 1, %bb.e ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.j:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #41
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9: ; preds = %bb.f
  %i.he = getelementptr inbounds nuw i8, ptr %i.ch, i64 %..i ; 3 uses
  %i.hf = sub nuw i64 %i.co, %i.n                 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.n ; 2 uses
  %i.hh = and i64 %i.hf, -16                      ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit9._crit_edge, label %.lr.ph
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12seal_stridedNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(344) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull align 1 captures(address) dead_on_return dereferenceable(16) %6, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %7) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 1                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 1                ; 6 uses
  %i.h = alloca [16 x i8], align 1                ; 4 uses
  %i.i = alloca [16 x i8], align 1                ; 5 uses
  %i.j = alloca [16 x i8], align 1                ; 4 uses
  %i.k = alloca [16 x i8], align 1                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 11 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.12 = alloca [24 x i8], align 8           ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.p = icmp samesign ugt i64 %5, 68719476704
  br i1 %i.p, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.q, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %5, 3
  %i.s = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !823
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.l, align 8, !noalias !823
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.s, ptr %i.u, align 8, !noalias !823
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.r, ptr %i.v, align 8, !noalias !823
  %i.w = icmp eq i64 %3, 0
  br i1 %i.w, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread68, label %.lr.ph.i.preheader.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread68: ; preds = %bb.c
  %.sroa.544.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.544.0..sroa_idx71, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !823
  br label %bb.d

.lr.ph.i.preheader.i:                             ; preds = %bb.c, %.lr.ph.i.preheader.i
  %.sroa.540.059 = phi i64 [ %i.y, %.lr.ph.i.preheader.i ], [ %3, %bb.c ] ; 3 uses
  %.sroa.039.058 = phi ptr [ %i.x, %.lr.ph.i.preheader.i ], [ %2, %bb.c ] ; 2 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.540.059, i64 16) ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.039.058, i64 %..i.i
  %i.y = sub nuw nsw i64 %.sroa.540.059, %..i.i   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.z = icmp ugt i64 %.sroa.540.059, 15
  %i.aa = sub nuw nsw i64 16, %..i.i
  %i.ab = select i1 %i.z, i64 0, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.k, i64 %..i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.039.058, i64 range(i64 0, 129) %..i.i, i1 false), !alias.scope !824, !noalias !825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !823
  %i.ad = load ptr, ptr %i.l, align 8, !noalias !823, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ad, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.j, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ae = icmp eq i64 %i.y, 0
  br i1 %i.ae, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit, label %.lr.ph.i.preheader.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit: ; preds = %.lr.ph.i.preheader.i
  %.sroa.042.0.copyload.pre = load ptr, ptr %i.l, align 8, !noalias !823 ; 2 uses
  %.sroa.443.0.copyload.pre = load i64, ptr %i.t, align 8, !noalias !823 ; 2 uses
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.544.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !823
  %i.af = icmp eq ptr %.sroa.042.0.copyload.pre, null
  br i1 %i.af, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread, label %bb.d

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread: ; preds = %bb.b, %bb.a, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit
  %.sroa.820.052 = phi i64 [ %.sroa.443.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit ], [ %5, %bb.a ], [ %3, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.820.052, ptr %i.ag, align 8
  br label %bb.e

bb.d:                                             ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread68, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit
  %.sroa.042.0.copyload73 = phi ptr [ %1, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread68 ], [ %.sroa.042.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit ]
  %.sroa.443.0.copyload72 = phi i64 [ 0, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread68 ], [ %.sroa.443.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  store ptr %.sroa.042.0.copyload73, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 %.sroa.443.0.copyload72, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ah = and i64 %5, 68719476720
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 %i.ah ; 2 uses
  %i.aj = and i64 %5, 15                          ; 7 uses
  %i.ak = lshr i64 %5, 4                          ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %.promoted = load i32, ptr %i.am, align 1
  %i.an = call i32 @llvm.bswap.i32(i32 %.promoted)
  br label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit
  %i.ao = phi i32 [ %i.an, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.as, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ]
  %.sroa.023.061 = phi ptr [ %4, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.ap, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ] ; 4 uses
  %.sroa.524.060 = phi i64 [ %i.ak, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.aq, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ] ; 2 uses
  %..i.i14 = call noundef i64 @llvm.umin.i64(i64 %.sroa.524.060, i64 192) ; 5 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.023.061, i64 %..i.i14
  %i.aq = sub nuw nsw i64 %.sroa.524.060, %..i.i14 ; 2 uses
  %i.ar = shl nuw nsw i64 %..i.i14, 4
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %..i.i14 to i32
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %.sroa.023.061, ptr noundef nonnull %.sroa.023.061, i64 noundef %..i.i14, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %6) #36, !noalias !827, !inline_history !1
  %i.as = add i32 %i.ao, %.sroa.6.0.extract.trunc.i.i.i.i ; 2 uses
  %i.at = call i32 @llvm.bswap.i32(i32 %i.as)
  store i32 %i.at, ptr %i.am, align 1, !alias.scope !828, !noalias !829
  %i.au = load ptr, ptr %i.n, align 8, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.au, ptr noundef nonnull readonly %.sroa.023.061, i64 noundef range(i64 1, 9223372036854775793) %i.ar) #36
  %i.av = icmp eq i64 %i.aq, 0
  br i1 %i.av, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.not.i19 = icmp eq i64 %i.aj, 0
  br i1 %.not.i19, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread
  %i.aw = sub nuw nsw i64 16, %i.aj
  %i.ax = getelementptr i8, ptr %i.i, i64 %i.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ax, i8 0, i64 %i.aw, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %i.ai, i64 range(i64 0, 129) %i.aj, i1 false), !noalias !831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %6, i64 16, i1 false)
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !833, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !832
  %i.ay = sub nuw nsw i64 16, %i.aj
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.az, i8 0, i64 %i.ay, i1 false), !noalias !831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !831
  %i.ba = load ptr, ptr %i.m, align 8, !alias.scope !830, !noalias !834, !nonnull !15, !align !17, !noundef !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ba, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.h, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !831
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 dereferenceable(16) %i.g, i64 range(i64 0, -9223372036854775808) %i.aj, i1 false), !noalias !835
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %7, i64 16, i1 false), !noalias !837
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !838, !noalias !839, !noundef !15
  %i.be = call i64 @llvm.bswap.i64(i64 %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !838, !noalias !839, !noundef !15
  %i.bh = call i64 @llvm.bswap.i64(i64 %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !840
  store i64 %i.be, ptr %i.e, align 8, !noalias !840
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bh, ptr %.sroa.5.0..sroa_idx10.i, align 8, !noalias !840
  %i.bi = load ptr, ptr %i.f, align 8, !alias.scope !838, !noalias !839, !nonnull !15, !align !17, !noundef !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @ring_core_0_17_16000__gcm_ghash_clmul(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bi, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.e, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !831
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !842, !inline_history !1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bk, ptr noundef nonnull align 1 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit ], [ 1, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12seal_stridedNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull align 1 captures(address) dead_on_return dereferenceable(16) %6, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %7) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = alloca [16 x i8], align 1                ; 5 uses
  %.sroa.062 = alloca i128, align 16              ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = icmp samesign ugt i64 %5, 68719476704
  br i1 %i.i, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.j = shl nuw nsw i64 %5, 3                    ; 2 uses
  %i.k = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.k, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.l = shl nuw i64 %3, 3                        ; 2 uses
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph.i.preheader.i.lr.ph

.lr.ph.i.preheader.i.lr.ph:                       ; preds = %bb.c
  %i.n = load i64, ptr %1, align 8, !alias.scope !911, !noalias !912, !noundef !15 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !911, !noalias !912, !noundef !15 ; 2 uses
  %i.q = xor i64 %i.p, %i.n
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.lr.ph, %.lr.ph.i.preheader.i
  %.sroa.548.sroa.0.086 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.bp, %.lr.ph.i.preheader.i ]
  %.sroa.548.sroa.6.085 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.bq, %.lr.ph.i.preheader.i ]
  %.sroa.058.084 = phi ptr [ %2, %.lr.ph.i.preheader.i.lr.ph ], [ %i.r, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.559.083 = phi i64 [ %3, %.lr.ph.i.preheader.i.lr.ph ], [ %i.s, %.lr.ph.i.preheader.i ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.559.083, i64 16) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.058.084, i64 %..i.i
  %i.s = sub nuw nsw i64 %.sroa.559.083, %..i.i   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.062)
  store i128 0, ptr %.sroa.062, align 16, !noalias !913
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.062, ptr nonnull readonly align 1 %.sroa.058.084, i64 range(i64 0, 129) %..i.i, i1 false), !alias.scope !914, !noalias !915
  %.sroa.062.0..sroa.062.0..sroa.062.0..sroa.062.0..sroa.061.0.copyload = load i128, ptr %.sroa.062, align 16, !noalias !913
  %.sroa.548.sroa.6.0.insert.ext54 = zext i64 %.sroa.548.sroa.6.085 to i128
  %.sroa.548.sroa.6.0.insert.shift55 = shl nuw i128 %.sroa.548.sroa.6.0.insert.ext54, 64
  %.sroa.548.sroa.0.0.insert.ext51 = zext i64 %.sroa.548.sroa.0.086 to i128
  %.sroa.548.sroa.0.0.insert.insert53 = or disjoint i128 %.sroa.548.sroa.6.0.insert.shift55, %.sroa.548.sroa.0.0.insert.ext51
  %i.t = xor i128 %.sroa.062.0..sroa.062.0..sroa.062.0..sroa.062.0..sroa.061.0.copyload, %.sroa.548.sroa.0.0.insert.insert53 ; 2 uses
  %i.u = trunc i128 %i.t to i64
  %i.v = lshr i128 %i.t, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.u) ; 2 uses
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.w) ; 2 uses
  %i.z = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.y, i64 noundef %i.p) ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0       ; 8 uses
  %i.ab = extractvalue { i64, i64 } %i.z, 1       ; 2 uses
  %i.ac = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.x, i64 noundef %i.n) ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0      ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ac, 1      ; 2 uses
  %i.af = xor i64 %i.y, %i.x
  %i.ag = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.af, i64 noundef %i.q) ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  %i.aj = shl i64 %i.aa, 63
  %i.ak = shl i64 %i.aa, 62
  %i.al = shl i64 %i.aa, 57
  %i.am = xor i64 %i.aj, %i.ak
  %i.an = xor i64 %i.am, %i.al
  %i.ao = xor i64 %i.an, %i.ah
  %i.ap = xor i64 %i.ao, %i.aa
  %i.aq = xor i64 %i.ap, %i.ab
  %i.ar = xor i64 %i.aq, %i.ad                    ; 7 uses
  %i.as = lshr i64 %i.aa, 1
  %i.at = shl i64 %i.ar, 63
  %i.au = lshr i64 %i.ar, 1
  %i.av = lshr i64 %i.aa, 2
  %i.aw = shl i64 %i.ar, 62
  %i.ax = lshr i64 %i.ar, 2
  %i.ay = lshr i64 %i.aa, 7
  %i.az = shl i64 %i.ar, 57
  %i.ba = xor i64 %i.av, %i.as
  %i.bb = xor i64 %i.ba, %i.ay
  %i.bc = xor i64 %i.bb, %i.ai
  %i.bd = xor i64 %i.bc, %i.at
  %i.be = xor i64 %i.bd, %i.aw
  %i.bf = xor i64 %i.be, %i.az
  %i.bg = xor i64 %i.bf, %i.ab
  %i.bh = xor i64 %i.bg, %i.aa
  %i.bi = xor i64 %i.bh, %i.ae
  %i.bj = xor i64 %i.bi, %i.ad
  %i.bk = lshr i64 %i.ar, 7
  %i.bl = xor i64 %i.au, %i.ax
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = xor i64 %i.bm, %i.ae
  %i.bo = xor i64 %i.bn, %i.ar
  %i.bp = tail call i64 @llvm.bswap.i64(i64 %i.bo) ; 2 uses
  %i.bq = tail call i64 @llvm.bswap.i64(i64 %i.bj) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.062)
  %i.br = icmp eq i64 %i.s, 0
  br i1 %i.br, label %._crit_edge, label %.lr.ph.i.preheader.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.819.0.ph = phi i64 [ %5, %bb.a ], [ %3, %bb.b ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.819.0.ph, ptr %i.bs, align 8
  br label %bb.e

._crit_edge:                                      ; preds = %.lr.ph.i.preheader.i, %bb.c
  %.sroa.548.sroa.6.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.bq, %.lr.ph.i.preheader.i ]
  %.sroa.548.sroa.0.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.bp, %.lr.ph.i.preheader.i ]
  store ptr %1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 %.sroa.548.sroa.0.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.548.sroa.6.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i64 %i.l, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store i64 %i.j, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.bt = and i64 %5, 68719476720
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt ; 2 uses
  %i.bv = and i64 %5, 15                          ; 7 uses
  %i.bw = lshr i64 %5, 4                          ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph: ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %.promoted = load i32, ptr %i.by, align 1
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %.promoted)
  br label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit
  %i.ca = phi i32 [ %i.bz, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.cd, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ]
  %.sroa.022.089 = phi ptr [ %4, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.cb, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ] ; 4 uses
  %.sroa.523.088 = phi i64 [ %i.bw, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.cc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ] ; 2 uses
  %..i.i14 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.523.088, i64 192) ; 5 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.022.089, i64 %..i.i14
  %i.cc = sub nuw nsw i64 %.sroa.523.088, %..i.i14 ; 2 uses
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %..i.i14 to i32
  tail call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %.sroa.022.089, ptr noundef nonnull %.sroa.022.089, i64 noundef %..i.i14, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %6) #36, !noalias !916, !inline_history !1
  %i.cd = add i32 %i.ca, %.sroa.6.0.extract.trunc.i.i.i.i ; 2 uses
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  store i32 %i.ce, ptr %i.by, align 1, !alias.scope !917, !noalias !918
  %i.cf = load ptr, ptr %i.g, align 8, !nonnull !15, !align !17, !noundef !15
  call void @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallbackNtB5_3KeyNtB7_12UpdateBlocks13update_blocks(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cf, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.022.089, i64 noundef %..i.i14)
  %i.cg = icmp eq i64 %i.cc, 0
  br i1 %i.cg, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit
  %.sroa.038.0.copyload.pre = load ptr, ptr %i.g, align 8
  %.sroa.9.0.copyload.pre = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.0.copyload.pre = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit, %._crit_edge
  %.sroa.10.0.copyload = phi i64 [ %.sroa.10.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %i.j, %._crit_edge ]
  %.sroa.9.0.copyload = phi i64 [ %.sroa.9.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %i.l, %._crit_edge ]
  %.sroa.038.0.copyload = phi ptr [ %.sroa.038.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %1, %._crit_edge ] ; 5 uses
  %.sroa.539.0.copyload = load i128, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.539.sroa.0.0.extract.trunc = trunc i128 %.sroa.539.0.copyload to i64
  %.sroa.539.sroa.6.0.extract.shift = lshr i128 %.sroa.539.0.copyload, 64
  %.sroa.539.sroa.6.0.extract.trunc = trunc nuw i128 %.sroa.539.sroa.6.0.extract.shift to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not.i18 = icmp eq i64 %i.bv, 0
  br i1 %.not.i18, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread
  %i.ch = sub nuw nsw i64 16, %i.bv
  %i.ci = getelementptr i8, ptr %i.f, i64 %i.bv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ci, i8 0, i64 %i.ch, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %i.bu, i64 range(i64 0, 129) %i.bv, i1 false), !noalias !919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %6, i64 16, i1 false)
  call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !921, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !920
  %i.cj = sub nuw nsw i64 16, %i.bv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ck, i8 0, i64 %i.cj, i1 false), !noalias !919
  %.sroa.0.0.copyload.i = load i128, ptr %i.e, align 16, !noalias !919
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.0.copyload) ]
  %i.cl = xor i128 %.sroa.0.0.copyload.i, %.sroa.539.0.copyload ; 2 uses
  %i.cm = load i64, ptr %.sroa.038.0.copyload, align 8, !alias.scope !922, !noalias !923, !noundef !15 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !922, !noalias !923, !noundef !15 ; 2 uses
  %i.cp = trunc i128 %i.cl to i64
  %i.cq = lshr i128 %i.cl, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = call noundef i64 @llvm.bswap.i64(i64 %i.cp) ; 2 uses
  %i.ct = call noundef i64 @llvm.bswap.i64(i64 %i.cr) ; 2 uses
  %i.cu = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ct, i64 noundef %i.co) ; 2 uses
  %i.cv = extractvalue { i64, i64 } %i.cu, 0      ; 8 uses
  %i.cw = extractvalue { i64, i64 } %i.cu, 1      ; 2 uses
  %i.cx = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cs, i64 noundef %i.cm) ; 2 uses
  %i.cy = extractvalue { i64, i64 } %i.cx, 0      ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cx, 1      ; 2 uses
  %i.da = xor i64 %i.ct, %i.cs
  %i.db = xor i64 %i.co, %i.cm
  %i.dc = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.da, i64 noundef %i.db) ; 2 uses
  %i.dd = extractvalue { i64, i64 } %i.dc, 0
  %i.de = extractvalue { i64, i64 } %i.dc, 1
  %i.df = shl i64 %i.cv, 63
  %i.dg = shl i64 %i.cv, 62
  %i.dh = shl i64 %i.cv, 57
  %i.di = xor i64 %i.dg, %i.df
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = xor i64 %i.dj, %i.dd
  %i.dl = xor i64 %i.dk, %i.cv
  %i.dm = xor i64 %i.dl, %i.cw
  %i.dn = xor i64 %i.dm, %i.cy                    ; 7 uses
  %i.do = lshr i64 %i.cv, 1
  %i.dp = shl i64 %i.dn, 63
  %i.dq = lshr i64 %i.dn, 1
  %i.dr = lshr i64 %i.cv, 2
  %i.ds = shl i64 %i.dn, 62
  %i.dt = lshr i64 %i.dn, 2
  %i.du = lshr i64 %i.cv, 7
  %i.dv = shl i64 %i.dn, 57
  %i.dw = xor i64 %i.do, %i.dr
  %i.dx = xor i64 %i.dw, %i.du
  %i.dy = xor i64 %i.dx, %i.de
  %i.dz = xor i64 %i.dy, %i.dp
  %i.ea = xor i64 %i.dz, %i.ds
  %i.eb = xor i64 %i.ea, %i.dv
  %i.ec = xor i64 %i.eb, %i.cw
  %i.ed = xor i64 %i.ec, %i.cv
  %i.ee = xor i64 %i.ed, %i.cz
  %i.ef = xor i64 %i.ee, %i.cy
  %i.eg = lshr i64 %i.dn, 7
  %i.eh = xor i64 %i.dt, %i.dq
  %i.ei = xor i64 %i.eh, %i.eg
  %i.ej = xor i64 %i.ei, %i.cz
  %i.ek = xor i64 %i.ej, %i.dn
  %i.el = call i64 @llvm.bswap.i64(i64 %i.ek)
  %i.em = call i64 @llvm.bswap.i64(i64 %i.ef)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull readonly align 16 dereferenceable(16) %i.e, i64 range(i64 0, -9223372036854775808) %i.bv, i1 false), !noalias !924
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  %.sroa.539.sroa.6.0 = phi i64 [ %i.em, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ], [ %.sroa.539.sroa.6.0.extract.trunc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread ]
  %.sroa.539.sroa.0.0 = phi i64 [ %i.el, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ], [ %.sroa.539.sroa.0.0.extract.trunc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread ]
  %.sroa.539.sroa.6.0.insert.ext43 = zext i64 %.sroa.539.sroa.6.0 to i128
  %.sroa.539.sroa.6.0.insert.shift44 = shl nuw i128 %.sroa.539.sroa.6.0.insert.ext43, 64
  %.sroa.539.sroa.0.0.insert.ext40 = zext i64 %.sroa.539.sroa.0.0 to i128
  %.sroa.539.sroa.0.0.insert.insert42 = or disjoint i128 %.sroa.539.sroa.6.0.insert.shift44, %.sroa.539.sroa.0.0.insert.ext40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %7, i64 16, i1 false), !noalias !926
  %i.en = zext i64 %.sroa.10.0.copyload to i128
  %i.eo = zext i64 %.sroa.9.0.copyload to i128
  %i.ep = shl nuw i128 %i.eo, 64
  %i.eq = or disjoint i128 %i.ep, %i.en
  %.sroa.0.0.insert.insert.i = call i128 @llvm.bswap.i128(i128 %i.eq)
  %i.er = xor i128 %.sroa.539.sroa.0.0.insert.insert42, %.sroa.0.0.insert.insert.i ; 2 uses
  %i.es = load i64, ptr %.sroa.038.0.copyload, align 8, !alias.scope !927, !noalias !928, !noundef !15 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !927, !noalias !928, !noundef !15 ; 2 uses
  %i.ev = trunc i128 %i.er to i64
  %i.ew = lshr i128 %i.er, 64
  %i.ex = trunc nuw i128 %i.ew to i64
  %i.ey = call noundef i64 @llvm.bswap.i64(i64 %i.ev) ; 2 uses
  %i.ez = call noundef i64 @llvm.bswap.i64(i64 %i.ex) ; 2 uses
  %i.fa = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ez, i64 noundef %i.eu) ; 2 uses
  %i.fb = extractvalue { i64, i64 } %i.fa, 0      ; 8 uses
  %i.fc = extractvalue { i64, i64 } %i.fa, 1      ; 2 uses
  %i.fd = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ey, i64 noundef %i.es) ; 2 uses
  %i.fe = extractvalue { i64, i64 } %i.fd, 0      ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fd, 1      ; 2 uses
  %i.fg = xor i64 %i.ez, %i.ey
  %i.fh = xor i64 %i.eu, %i.es
  %i.fi = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fg, i64 noundef %i.fh) ; 2 uses
  %i.fj = extractvalue { i64, i64 } %i.fi, 0
  %i.fk = extractvalue { i64, i64 } %i.fi, 1
  %i.fl = shl i64 %i.fb, 63
  %i.fm = shl i64 %i.fb, 62
  %i.fn = shl i64 %i.fb, 57
  %i.fo = xor i64 %i.fm, %i.fl
  %i.fp = xor i64 %i.fo, %i.fn
  %i.fq = xor i64 %i.fp, %i.fj
  %i.fr = xor i64 %i.fq, %i.fb
  %i.fs = xor i64 %i.fr, %i.fc
  %i.ft = xor i64 %i.fs, %i.fe                    ; 7 uses
  %i.fu = lshr i64 %i.fb, 1
  %i.fv = shl i64 %i.ft, 63
  %i.fw = lshr i64 %i.ft, 1
  %i.fx = lshr i64 %i.fb, 2
  %i.fy = shl i64 %i.ft, 62
  %i.fz = lshr i64 %i.ft, 2
  %i.ga = lshr i64 %i.fb, 7
  %i.gb = shl i64 %i.ft, 57
  %i.gc = xor i64 %i.fu, %i.fx
  %i.gd = xor i64 %i.gc, %i.ga
  %i.ge = xor i64 %i.gd, %i.fk
  %i.gf = xor i64 %i.ge, %i.fv
  %i.gg = xor i64 %i.gf, %i.fy
  %i.gh = xor i64 %i.gg, %i.gb
  %i.gi = xor i64 %i.gh, %i.fc
  %i.gj = xor i64 %i.gi, %i.fb
  %i.gk = xor i64 %i.gj, %i.ff
  %i.gl = xor i64 %i.gk, %i.fe
  %i.gm = lshr i64 %i.ft, 7
  %i.gn = xor i64 %i.fz, %i.fw
  %i.go = xor i64 %i.gn, %i.gm
  %i.gp = xor i64 %i.go, %i.ff
  %i.gq = xor i64 %i.gp, %i.ft
  %i.gr = zext i64 %i.gl to i128
  %i.gs = zext i64 %i.gq to i128
  %i.gt = shl nuw i128 %i.gs, 64
  %i.gu = or disjoint i128 %i.gt, %i.gr
  %.sroa.4.sroa.0.0.insert.insert8.i = call i128 @llvm.bswap.i128(i128 %i.gu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !925
  store i128 %.sroa.4.sroa.0.0.insert.insert8.i, ptr %i.d, align 16, !noalias !929
  call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !930, !inline_history !1
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gv, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, %bb.d
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12seal_stridedNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull align 1 captures(none) dead_on_return dereferenceable(16) %6, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %7) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 1                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 6 uses
  %i.h = alloca [16 x i8], align 1                ; 5 uses
  %.sroa.059 = alloca i128, align 16              ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.l = icmp samesign ugt i64 %5, 68719476704
  br i1 %i.l, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.m = shl nuw nsw i64 %5, 3                    ; 2 uses
  %i.n = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.n, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.o = shl nuw i64 %3, 3                        ; 2 uses
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph.i.preheader.i.lr.ph

.lr.ph.i.preheader.i.lr.ph:                       ; preds = %bb.c
  %i.q = load i64, ptr %i.k, align 8, !alias.scope !976, !noalias !977, !noundef !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !976, !noalias !977, !noundef !15 ; 2 uses
  %i.t = xor i64 %i.s, %i.q
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.lr.ph, %.lr.ph.i.preheader.i
  %.sroa.545.sroa.0.083 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.bs, %.lr.ph.i.preheader.i ]
  %.sroa.545.sroa.6.082 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.bt, %.lr.ph.i.preheader.i ]
  %.sroa.055.081 = phi ptr [ %2, %.lr.ph.i.preheader.i.lr.ph ], [ %i.u, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.556.080 = phi i64 [ %3, %.lr.ph.i.preheader.i.lr.ph ], [ %i.v, %.lr.ph.i.preheader.i ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.556.080, i64 16) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.055.081, i64 %..i.i
  %i.v = sub nuw nsw i64 %.sroa.556.080, %..i.i   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059)
  store i128 0, ptr %.sroa.059, align 16, !noalias !978
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.059, ptr nonnull readonly align 1 %.sroa.055.081, i64 range(i64 0, 129) %..i.i, i1 false), !alias.scope !979, !noalias !980
  %.sroa.059.0..sroa.059.0..sroa.059.0..sroa.059.0..sroa.058.0.copyload = load i128, ptr %.sroa.059, align 16, !noalias !978
  %.sroa.545.sroa.6.0.insert.ext51 = zext i64 %.sroa.545.sroa.6.082 to i128
  %.sroa.545.sroa.6.0.insert.shift52 = shl nuw i128 %.sroa.545.sroa.6.0.insert.ext51, 64
  %.sroa.545.sroa.0.0.insert.ext48 = zext i64 %.sroa.545.sroa.0.083 to i128
  %.sroa.545.sroa.0.0.insert.insert50 = or disjoint i128 %.sroa.545.sroa.6.0.insert.shift52, %.sroa.545.sroa.0.0.insert.ext48
  %i.w = xor i128 %.sroa.059.0..sroa.059.0..sroa.059.0..sroa.059.0..sroa.058.0.copyload, %.sroa.545.sroa.0.0.insert.insert50 ; 2 uses
  %i.x = trunc i128 %i.w to i64
  %i.y = lshr i128 %i.w, 64
  %i.z = trunc nuw i128 %i.y to i64
  %i.aa = tail call noundef i64 @llvm.bswap.i64(i64 %i.x) ; 2 uses
  %i.ab = tail call noundef i64 @llvm.bswap.i64(i64 %i.z) ; 2 uses
  %i.ac = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ab, i64 noundef %i.s) ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0      ; 8 uses
  %i.ae = extractvalue { i64, i64 } %i.ac, 1      ; 2 uses
  %i.af = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.aa, i64 noundef %i.q) ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 2 uses
  %i.ai = xor i64 %i.ab, %i.aa
  %i.aj = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ai, i64 noundef %i.t) ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %i.al = extractvalue { i64, i64 } %i.aj, 1
  %i.am = shl i64 %i.ad, 63
  %i.an = shl i64 %i.ad, 62
  %i.ao = shl i64 %i.ad, 57
  %i.ap = xor i64 %i.am, %i.an
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = xor i64 %i.aq, %i.ak
  %i.as = xor i64 %i.ar, %i.ad
  %i.at = xor i64 %i.as, %i.ae
  %i.au = xor i64 %i.at, %i.ag                    ; 7 uses
  %i.av = lshr i64 %i.ad, 1
  %i.aw = shl i64 %i.au, 63
  %i.ax = lshr i64 %i.au, 1
  %i.ay = lshr i64 %i.ad, 2
  %i.az = shl i64 %i.au, 62
  %i.ba = lshr i64 %i.au, 2
  %i.bb = lshr i64 %i.ad, 7
  %i.bc = shl i64 %i.au, 57
  %i.bd = xor i64 %i.ay, %i.av
  %i.be = xor i64 %i.bd, %i.bb
  %i.bf = xor i64 %i.be, %i.al
  %i.bg = xor i64 %i.bf, %i.aw
  %i.bh = xor i64 %i.bg, %i.az
  %i.bi = xor i64 %i.bh, %i.bc
  %i.bj = xor i64 %i.bi, %i.ae
  %i.bk = xor i64 %i.bj, %i.ad
  %i.bl = xor i64 %i.bk, %i.ah
  %i.bm = xor i64 %i.bl, %i.ag
  %i.bn = lshr i64 %i.au, 7
  %i.bo = xor i64 %i.ax, %i.ba
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.ah
  %i.br = xor i64 %i.bq, %i.au
  %i.bs = tail call i64 @llvm.bswap.i64(i64 %i.br) ; 2 uses
  %i.bt = tail call i64 @llvm.bswap.i64(i64 %i.bm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.059)
  %i.bu = icmp eq i64 %i.v, 0
  br i1 %i.bu, label %._crit_edge, label %.lr.ph.i.preheader.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.819.0.ph = phi i64 [ %5, %bb.a ], [ %3, %bb.b ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.819.0.ph, ptr %i.bv, align 8
  br label %bb.e

._crit_edge:                                      ; preds = %.lr.ph.i.preheader.i, %bb.c
  %.sroa.545.sroa.6.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.bt, %.lr.ph.i.preheader.i ]
  %.sroa.545.sroa.0.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.bs, %.lr.ph.i.preheader.i ]
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store i64 %.sroa.545.sroa.0.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.545.sroa.6.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store i64 %i.o, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store i64 %i.m, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.bw = and i64 %5, 68719476720
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 %i.bw ; 2 uses
  %i.by = and i64 %5, 15                          ; 7 uses
  %i.bz = lshr i64 %5, 4                          ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph: ; preds = %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit
  %.sroa.022.086 = phi ptr [ %4, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.ce, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ] ; 3 uses
  %.sroa.523.085 = phi i64 [ %i.bz, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.cd, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ] ; 2 uses
  %..i.i14 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.523.085, i64 192) ; 4 uses
  %i.cd = sub nuw nsw i64 %.sroa.523.085, %..i.i14 ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %.sroa.022.086, i64 %..i.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cf = shl nuw nsw i64 %..i.i14, 4
  store ptr %.sroa.022.086, ptr %i.i, align 8
  store i64 %i.cf, ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull dereferenceable(16) %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cg = load ptr, ptr %i.j, align 8, !nonnull !15, !align !17, !noundef !15
  call void @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallbackNtB5_3KeyNtB7_12UpdateBlocks13update_blocks(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cg, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.022.086, i64 noundef %..i.i14)
  %i.ch = icmp eq i64 %i.cd, 0
  br i1 %i.ch, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit
  %.sroa.035.0.copyload.pre = load ptr, ptr %i.j, align 8
  %.sroa.9.0.copyload.pre = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.0.copyload.pre = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit, %._crit_edge
  %.sroa.10.0.copyload = phi i64 [ %.sroa.10.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %i.m, %._crit_edge ]
  %.sroa.9.0.copyload = phi i64 [ %.sroa.9.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %i.o, %._crit_edge ]
  %.sroa.035.0.copyload = phi ptr [ %.sroa.035.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %i.k, %._crit_edge ] ; 5 uses
  %.sroa.536.0.copyload = load i128, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.536.sroa.0.0.extract.trunc = trunc i128 %.sroa.536.0.copyload to i64
  %.sroa.536.sroa.6.0.extract.shift = lshr i128 %.sroa.536.0.copyload, 64
  %.sroa.536.sroa.6.0.extract.trunc = trunc nuw i128 %.sroa.536.sroa.6.0.extract.shift to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.not.i18 = icmp eq i64 %i.by, 0
  br i1 %.not.i18, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread
  %i.ci = sub nuw nsw i64 16, %i.by
  %i.cj = getelementptr i8, ptr %i.h, i64 %i.by
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cj, i8 0, i64 %i.ci, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.bx, i64 range(i64 0, 129) %i.by, i1 false), !noalias !981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !982
  store ptr %i.c, ptr %i.a, align 8, !noalias !982
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 16, ptr %i.ck, align 8, !noalias !982
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.cl, align 8, !noalias !982
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull dereferenceable(16) %i.b) #39, !noalias !983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !982
  %i.cm = sub nuw nsw i64 16, %i.by
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.by
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, i8 0, i64 %i.cm, i1 false), !noalias !981
  %.sroa.0.0.copyload.i = load i128, ptr %i.g, align 16, !noalias !981
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.035.0.copyload) ]
  %i.co = xor i128 %.sroa.0.0.copyload.i, %.sroa.536.0.copyload ; 2 uses
  %i.cp = load i64, ptr %.sroa.035.0.copyload, align 8, !alias.scope !984, !noalias !985, !noundef !15 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.035.0.copyload, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !984, !noalias !985, !noundef !15 ; 2 uses
  %i.cs = trunc i128 %i.co to i64
  %i.ct = lshr i128 %i.co, 64
  %i.cu = trunc nuw i128 %i.ct to i64
  %i.cv = call noundef i64 @llvm.bswap.i64(i64 %i.cs) ; 2 uses
  %i.cw = call noundef i64 @llvm.bswap.i64(i64 %i.cu) ; 2 uses
  %i.cx = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cw, i64 noundef %i.cr) ; 2 uses
  %i.cy = extractvalue { i64, i64 } %i.cx, 0      ; 8 uses
  %i.cz = extractvalue { i64, i64 } %i.cx, 1      ; 2 uses
  %i.da = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cv, i64 noundef %i.cp) ; 2 uses
  %i.db = extractvalue { i64, i64 } %i.da, 0      ; 2 uses
  %i.dc = extractvalue { i64, i64 } %i.da, 1      ; 2 uses
  %i.dd = xor i64 %i.cw, %i.cv
  %i.de = xor i64 %i.cr, %i.cp
  %i.df = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.dd, i64 noundef %i.de) ; 2 uses
  %i.dg = extractvalue { i64, i64 } %i.df, 0
  %i.dh = extractvalue { i64, i64 } %i.df, 1
  %i.di = shl i64 %i.cy, 63
  %i.dj = shl i64 %i.cy, 62
  %i.dk = shl i64 %i.cy, 57
  %i.dl = xor i64 %i.dj, %i.di
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = xor i64 %i.dm, %i.dg
  %i.do = xor i64 %i.dn, %i.cy
  %i.dp = xor i64 %i.do, %i.cz
  %i.dq = xor i64 %i.dp, %i.db                    ; 7 uses
  %i.dr = lshr i64 %i.cy, 1
  %i.ds = shl i64 %i.dq, 63
  %i.dt = lshr i64 %i.dq, 1
  %i.du = lshr i64 %i.cy, 2
  %i.dv = shl i64 %i.dq, 62
  %i.dw = lshr i64 %i.dq, 2
  %i.dx = lshr i64 %i.cy, 7
  %i.dy = shl i64 %i.dq, 57
  %i.dz = xor i64 %i.dr, %i.du
  %i.ea = xor i64 %i.dz, %i.dx
  %i.eb = xor i64 %i.ea, %i.dh
  %i.ec = xor i64 %i.eb, %i.ds
  %i.ed = xor i64 %i.ec, %i.dv
  %i.ee = xor i64 %i.ed, %i.dy
  %i.ef = xor i64 %i.ee, %i.cz
  %i.eg = xor i64 %i.ef, %i.cy
  %i.eh = xor i64 %i.eg, %i.dc
  %i.ei = xor i64 %i.eh, %i.db
  %i.ej = lshr i64 %i.dq, 7
  %i.ek = xor i64 %i.dw, %i.dt
  %i.el = xor i64 %i.ek, %i.ej
  %i.em = xor i64 %i.el, %i.dc
  %i.en = xor i64 %i.em, %i.dq
  %i.eo = call i64 @llvm.bswap.i64(i64 %i.en)
  %i.ep = call i64 @llvm.bswap.i64(i64 %i.ei)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 16 dereferenceable(16) %i.g, i64 range(i64 0, -9223372036854775808) %i.by, i1 false), !noalias !981
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  %.sroa.536.sroa.6.0 = phi i64 [ %i.ep, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ], [ %.sroa.536.sroa.6.0.extract.trunc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread ]
  %.sroa.536.sroa.0.0 = phi i64 [ %i.eo, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ], [ %.sroa.536.sroa.0.0.extract.trunc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread ]
  %.sroa.536.sroa.6.0.insert.ext40 = zext i64 %.sroa.536.sroa.6.0 to i128
  %.sroa.536.sroa.6.0.insert.shift41 = shl nuw i128 %.sroa.536.sroa.6.0.insert.ext40, 64
  %.sroa.536.sroa.0.0.insert.ext37 = zext i64 %.sroa.536.sroa.0.0 to i128
  %.sroa.536.sroa.0.0.insert.insert39 = or disjoint i128 %.sroa.536.sroa.6.0.insert.shift41, %.sroa.536.sroa.0.0.insert.ext37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(16) %7, i64 16, i1 false), !noalias !987
  %i.eq = zext i64 %.sroa.10.0.copyload to i128
  %i.er = zext i64 %.sroa.9.0.copyload to i128
  %i.es = shl nuw i128 %i.er, 64
  %i.et = or disjoint i128 %i.es, %i.eq
  %.sroa.0.0.insert.insert.i = call i128 @llvm.bswap.i128(i128 %i.et)
  %i.eu = xor i128 %.sroa.536.sroa.0.0.insert.insert39, %.sroa.0.0.insert.insert.i ; 2 uses
  %i.ev = load i64, ptr %.sroa.035.0.copyload, align 8, !alias.scope !988, !noalias !989, !noundef !15 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.035.0.copyload, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !988, !noalias !989, !noundef !15 ; 2 uses
  %i.ey = trunc i128 %i.eu to i64
  %i.ez = lshr i128 %i.eu, 64
  %i.fa = trunc nuw i128 %i.ez to i64
  %i.fb = call noundef i64 @llvm.bswap.i64(i64 %i.ey) ; 2 uses
  %i.fc = call noundef i64 @llvm.bswap.i64(i64 %i.fa) ; 2 uses
  %i.fd = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fc, i64 noundef %i.ex) ; 2 uses
  %i.fe = extractvalue { i64, i64 } %i.fd, 0      ; 8 uses
  %i.ff = extractvalue { i64, i64 } %i.fd, 1      ; 2 uses
  %i.fg = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fb, i64 noundef %i.ev) ; 2 uses
  %i.fh = extractvalue { i64, i64 } %i.fg, 0      ; 2 uses
  %i.fi = extractvalue { i64, i64 } %i.fg, 1      ; 2 uses
  %i.fj = xor i64 %i.fc, %i.fb
  %i.fk = xor i64 %i.ex, %i.ev
  %i.fl = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fj, i64 noundef %i.fk) ; 2 uses
  %i.fm = extractvalue { i64, i64 } %i.fl, 0
  %i.fn = extractvalue { i64, i64 } %i.fl, 1
  %i.fo = shl i64 %i.fe, 63
  %i.fp = shl i64 %i.fe, 62
  %i.fq = shl i64 %i.fe, 57
  %i.fr = xor i64 %i.fp, %i.fo
  %i.fs = xor i64 %i.fr, %i.fq
  %i.ft = xor i64 %i.fs, %i.fm
  %i.fu = xor i64 %i.ft, %i.fe
  %i.fv = xor i64 %i.fu, %i.ff
  %i.fw = xor i64 %i.fv, %i.fh                    ; 7 uses
  %i.fx = lshr i64 %i.fe, 1
  %i.fy = shl i64 %i.fw, 63
  %i.fz = lshr i64 %i.fw, 1
  %i.ga = lshr i64 %i.fe, 2
  %i.gb = shl i64 %i.fw, 62
  %i.gc = lshr i64 %i.fw, 2
  %i.gd = lshr i64 %i.fe, 7
  %i.ge = shl i64 %i.fw, 57
  %i.gf = xor i64 %i.fx, %i.ga
  %i.gg = xor i64 %i.gf, %i.gd
  %i.gh = xor i64 %i.gg, %i.fn
  %i.gi = xor i64 %i.gh, %i.fy
  %i.gj = xor i64 %i.gi, %i.gb
  %i.gk = xor i64 %i.gj, %i.ge
  %i.gl = xor i64 %i.gk, %i.ff
  %i.gm = xor i64 %i.gl, %i.fe
  %i.gn = xor i64 %i.gm, %i.fi
  %i.go = xor i64 %i.gn, %i.fh
  %i.gp = lshr i64 %i.fw, 7
  %i.gq = xor i64 %i.gc, %i.fz
  %i.gr = xor i64 %i.gq, %i.gp
  %i.gs = xor i64 %i.gr, %i.fi
  %i.gt = xor i64 %i.gs, %i.fw
  %i.gu = zext i64 %i.go to i128
  %i.gv = zext i64 %i.gt to i128
  %i.gw = shl nuw i128 %i.gv, 64
  %i.gx = or disjoint i128 %i.gw, %i.gu
  %.sroa.4.sroa.0.0.insert.insert8.i = call i128 @llvm.bswap.i128(i128 %i.gx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !986
  store i128 %.sroa.4.sroa.0.0.insert.insert8.i, ptr %i.f, align 16, !noalias !990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !986
  store ptr %i.f, ptr %i.d, align 8, !noalias !986
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 16, ptr %i.gy, align 8, !noalias !986
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.gz, align 8, !noalias !986
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull dereferenceable(16) %i.e) #39, !noalias !991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !986
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ha, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, %bb.d
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill12uninit_slice6UninityERSyB1S_EEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw nsw i64 %3, 2                    ; 14 uses
  %i.b = icmp samesign ult i64 %3, 2              ; 2 uses
  br i1 %5, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  br i1 %i.b, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %3, 32
  br i1 %i.c, label %bb.h, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.e = extractvalue { i64, i64 } %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1028, !noalias !1030
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.02.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !1029, !noalias !1031 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1029, !noalias !1031 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair8from_der:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead13less_safe_keyNtB2_11LessSafeKey4new_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([456 x i8]) align 8 captures(none) dereferenceable(456) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15
  call void %.val(ptr noalias nofree noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !inline_history !1543
  %i.b = load i64, ptr %i.a, align 8, !range !40, !noundef !15
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead13less_safe_keyNtB2_11LessSafeKey9fmt_debug(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(456) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !15, !align !17, !noundef !15
  store ptr %i.d, ptr %i.a, align 8, !captures !33
  %i.e = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @111)
  %i.f = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.f
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB2_3Key11open_within(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 %.0.val, i64 %.8.val) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 1                ; 5 uses
  %i.c = alloca [16 x i8], align 1                ; 5 uses
  %i.d = alloca [16 x i8], align 4                ; 6 uses
  %i.e = alloca [32 x i8], align 4                ; 10 uses
  %i.f = alloca [16 x i8], align 4                ; 9 uses
  %i.g = alloca [128 x i8], align 64              ; 4 uses
  %i.h = alloca [128 x i8], align 64              ; 18 uses
  %i.i = alloca [48 x i8], align 16               ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.7.24.copyload = load i64, ptr %2, align 1 ; 3 uses
  %.sroa.9.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.9.24.copyload = load i32, ptr %.sroa.9.24..sroa_idx, align 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1649, !noalias !1650, !noundef !15 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !1649, !noalias !1650, !noundef !15 ; 5 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !1651
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i: ; preds = %bb.a
  %i.q = load ptr, ptr %5, align 8, !alias.scope !1649, !noalias !1650, !nonnull !15, !noundef !15 ; 8 uses
  %i.r = sub nuw i64 %i.m, %i.o                   ; 14 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1652
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  %i.u = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !1653, !noundef !15 ; 3 uses
  %i.v = icmp ne i32 %i.u, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = and i32 %i.u, 8
  %.not.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i6.i.i.i.i, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  %i.x = icmp samesign ugt i64 %i.r, 274877906880
  br i1 %i.x, label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.thread.i.i, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i, !prof !16

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i
  %i.y = and i32 %i.u, 768
  %brmerge.i.not.i.i.i.i = icmp eq i32 %i.y, 768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !noalias !1655
  %.sroa.55.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i64 %.sroa.7.24.copyload, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1656
  %.sroa.5.0..sroa.55.0..sroa_idx.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  store i32 %.sroa.9.24.copyload, ptr %.sroa.5.0..sroa.55.0..sroa_idx.i.i.sroa_idx.i.i.i, align 4, !noalias !1656
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 0, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 16, !noalias !1654
  br i1 %brmerge.i.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i
  call void @ring_core_0_17_16000__chacha20_poly1305_open_sse41(ptr noundef nonnull %i.q, ptr noundef nonnull %i.s, i64 noundef %i.r, ptr noundef nonnull readonly %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.i) #36, !noalias !1657
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.thread28.i.i

bb.d:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i
  call void @ring_core_0_17_16000__chacha20_poly1305_open_avx2(ptr noundef nonnull %i.q, ptr noundef nonnull %i.s, i64 noundef %i.r, ptr noundef nonnull readonly %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.i) #36, !noalias !1657
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.thread28.i.i

_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.thread28.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !1658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1654
  br label %.lr.ph.i.i.i.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i6.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1653
  %i.z = icmp samesign ugt i64 %i.r, 274877906880
  br i1 %i.z, label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.thread29.i.i, label %bb.e, !prof !16

_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.thread29.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i6.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1653
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.thread.i.i

bb.e:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i6.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1659
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !noalias !1659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1660
  store i32 0, ptr %i.d, align 4, !noalias !1660
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i64 %.sroa.7.24.copyload, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !1660
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.9.24.copyload, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !1660
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull dereferenceable(32) %i.e, ptr noundef nonnull dereferenceable(32) %i.e, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d) #36, !noalias !1661, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1660
  %.sroa.14.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.e, align 4, !noalias !1662 ; 2 uses
  %.sroa.14.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.14.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.14.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1662 ; 2 uses
  %.sroa.14.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.14.sroa.6.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.14.sroa.6.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1662 ; 2 uses
  %.sroa.14.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.14.sroa.7.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.14.sroa.7.0..sroa_idx.i.i.i.i.i, align 4, !noalias !1662 ; 2 uses
  %.sroa.14.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.sroa.8.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !1663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1659
  store i32 1, ptr %i.f, align 4, !noalias !1663
  %.sroa.7.4..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i64 %.sroa.7.24.copyload, ptr %.sroa.7.4..sroa_idx2.i.i.i.i.i, align 4, !noalias !1663
  %.sroa.9.4..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %.sroa.9.24.copyload, ptr %.sroa.9.4..sroa_idx4.i.i.i.i.i, align 4, !noalias !1663
  %i.aa = and i32 %.sroa.14.sroa.0.0.copyload.i.i.i.i.i, 67108863
  %i.ab = call i32 @llvm.fshl.i32(i32 %.sroa.14.sroa.5.0.copyload.i.i.i.i.i, i32 %.sroa.14.sroa.0.0.copyload.i.i.i.i.i, i32 6)
  %i.ac = and i32 %i.ab, 67108611                 ; 2 uses
  %i.ad = call i32 @llvm.fshl.i32(i32 %.sroa.14.sroa.6.0.copyload.i.i.i.i.i, i32 %.sroa.14.sroa.5.0.copyload.i.i.i.i.i, i32 12)
  %i.ae = and i32 %i.ad, 67092735                 ; 2 uses
  %i.af = call i32 @llvm.fshl.i32(i32 %.sroa.14.sroa.7.0.copyload.i.i.i.i.i, i32 %.sroa.14.sroa.6.0.copyload.i.i.i.i.i, i32 18)
  %i.ag = and i32 %i.af, 66076671                 ; 2 uses
  %i.ah = lshr i32 %.sroa.14.sroa.7.0.copyload.i.i.i.i.i, 8
  %i.ai = and i32 %i.ah, 1048575                  ; 2 uses
  %i.aj = mul nuw nsw i32 %i.ac, 5
  %i.ak = mul nuw nsw i32 %i.ae, 5
  %i.al = mul nuw nsw i32 %i.ag, 5
  %i.am = mul nuw nsw i32 %i.ai, 5
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %i.aa, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !1664, !noalias !1665
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 %i.ac, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 4, !alias.scope !1664, !noalias !1665
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %i.ae, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1664, !noalias !1665
  %.sroa.7.0..sroa_idx.i7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %i.ag, ptr %.sroa.7.0..sroa_idx.i7.i.i.i.i.i, align 4, !alias.scope !1664, !noalias !1665
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 %i.ai, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 32, !alias.scope !1664, !noalias !1665
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 %i.aj, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 4, !alias.scope !1664, !noalias !1665
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 %i.ak, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1664, !noalias !1665
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.al, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 4, !alias.scope !1664, !noalias !1665
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %i.am, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !1664, !noalias !1665
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 20, i1 false), !alias.scope !1664, !noalias !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1663
  %i.an = and i64 %4, 15                          ; 4 uses
  %i.ao = and i64 %4, 9223372036854775792         ; 2 uses
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %i.ao), !noalias !1666
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit8.i.i.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i.i.i.i.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ao
  %i.ar = sub nuw nsw i64 16, %i.an
  %i.as = getelementptr i8, ptr %i.c, i64 %i.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.as, i8 0, i64 %i.ar, i1 false), !noalias !1667
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull readonly align 1 %i.aq, i64 range(i64 0, 129) %i.an, i1 false), !noalias !1668
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.h, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef 16), !noalias !1669
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit8.i.i.i.i.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit8.i.i.i.i.i: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1663
  %i.at = and i64 %i.r, 15                        ; 4 uses
  %i.au = and i64 %i.r, 274877906928              ; 2 uses
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.au), !noalias !1670
  %i.av = icmp eq i64 %i.at, 0
  br i1 %i.av, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit12.i.i.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i9.i.i.i.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i9.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit8.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.au
  %i.ax = sub nuw nsw i64 16, %i.at
  %i.ay = getelementptr i8, ptr %i.b, i64 %i.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ay, i8 0, i64 %i.ax, i1 false), !noalias !1671
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull readonly align 1 %i.aw, i64 range(i64 0, 129) %i.at, i1 false), !noalias !1672
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.h, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 16), !noalias !1673
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit12.i.i.i.i.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit12.i.i.i.i.i: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i9.i.i.i.i.i, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit8.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1663
  %i.az = icmp samesign ugt i64 %i.r, 128
  br i1 %i.az, label %bb.f, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit13.i.i.i.i.i

bb.f:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit12.i.i.i.i.i
  %i.ba = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !1674, !noundef !15 ; 3 uses
  %i.bb = icmp ne i32 %i.ba, 0
  call void @llvm.assume(i1 %i.bb)
  %i.bc = and i32 %i.ba, 256
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit.i.i.i.i.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit13.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit12.i.i.i.i.i
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.m, %i.o
  br i1 %.not3.i.i.i.i.i.i, label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.i.i, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i27.i.i.i.i.i

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit.i.i.i.i.i: ; preds = %bb.f
  call void @ring_core_0_17_16000__ChaCha20_ctr32_avx2(ptr noundef nonnull %i.q, ptr noundef nonnull %i.s, i64 noundef %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !1675, !inline_history !3
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bd = and i32 %i.ba, 4
  %.not2.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not2.i.i.i.i.i.i, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i27.i.i.i.i.i, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit.i.i.i.i.i

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit.i.i.i.i.i: ; preds = %bb.g
  call void @ring_core_0_17_16000__ChaCha20_ctr32_ssse3_4x(ptr noundef nonnull %i.q, ptr noundef nonnull %i.s, i64 noundef %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !1676, !inline_history !4
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.i.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i27.i.i.i.i.i: ; preds = %bb.g, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit13.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.m, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit.i.i.i.i.i, !prof !16

bb.h:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i27.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #41, !noalias !1677
  unreachable

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i27.i.i.i.i.i
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull %i.q, ptr noundef nonnull %i.s, i64 noundef %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !1678, !inline_history !2
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.i.i

_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.i.i: ; preds = %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit.i.i.i.i.i, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit.i.i.i.i.i, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit.i.i.i.i.i, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit13.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.g, ptr noundef nonnull align 64 dereferenceable(128) %i.h, i64 128, i1 false), !noalias !1663
  call fastcc void @_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly13056finish(ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.t, ptr noalias nofree noundef align 64 captures(address) dereferenceable(128) %i.g, i64 noundef %4, i64 noundef %i.r), !noalias !1658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1653
  br label %.lr.ph.i.i.i.i

_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.thread.i.i: ; preds = %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.thread29.i.i, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1652
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.be, align 8, !alias.scope !1646, !noalias !1679
  store ptr null, ptr %0, align 8, !alias.scope !1646, !noalias !1679
  br label %_RINvNtCs5yxAJGbRKSL_4ring4aead11open_withinNCNvMNtB2_17chacha20_poly1305NtBK_3Key11open_within0EB4_.exit

.lr.ph.i.i.i.i:                                   ; preds = %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.i.i, %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.thread28.i.i
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.416.0.copyload.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !1658
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.517.0.copyload.i.i = load i8, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !1658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.k, ptr noundef nonnull align 1 dereferenceable(7) %i.t, i64 7, i1 false), !noalias !1652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1652
  %.7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  store i64 %.sroa.416.0.copyload.i.i, ptr %.7..7..7..7..sroa_idx, align 1, !noalias !1652
  %.15..15..15..15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  store i8 %.sroa.517.0.copyload.i.i, ptr %.15..15..15..15..sroa_idx, align 1, !noalias !1652
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.experimental.noalias.scope.decl(metadata !1681)
  %.0..0..0..0..sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1682, !noalias !1683
  %i.bf = xor i64 %.0..0..0..0..sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.0.val
  %.8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.8..8..8..8..sroa.0.0.copyload.i.i.i.i.i.i.i.1.i = load i64, ptr %.8..8..8..8..sroa_idx, align 8, !alias.scope !1682, !noalias !1683
  %i.bg = xor i64 %.8..8..8..8..sroa.0.0.copyload.i.i.i.i.i.i.i.1.i, %.8.val
  %i.bh = or i64 %i.bg, %i.bf
  %i.bi = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.bh) #36, !noalias !1684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1685
  store i64 %i.bi, ptr %i.a, align 8, !noalias !1685
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !1685, !srcloc !37
  %i.bj = load i64, ptr %i.a, align 8, !noalias !1685, !noundef !15
  %.not.i.i = icmp eq i64 %i.bj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1685
  br i1 %.not.i.i, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.r, i1 false), !noalias !1652
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.sink.i = phi ptr [ null, %bb.i ], [ %i.q, %.lr.ph.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.bk, align 8, !alias.scope !1646, !noalias !1679
  store ptr %.sink.i, ptr %0, align 8, !alias.scope !1646, !noalias !1679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCs5yxAJGbRKSL_4ring4aead11open_withinNCNvMNtB2_17chacha20_poly1305NtBK_3Key11open_within0EB4_.exit

_RINvNtCs5yxAJGbRKSL_4ring4aead11open_withinNCNvMNtB2_17chacha20_poly1305NtBK_3Key11open_within0EB4_.exit: ; preds = %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB4_3Key11open_within0B8_.exit.thread.i.i, %bb.j
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly1305NtB2_3Key4seal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 1), (8, 16)) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 5 uses
  %i.b = alloca [16 x i8], align 1                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 6 uses
  %i.d = alloca [32 x i8], align 4                ; 10 uses
  %i.e = alloca [16 x i8], align 4                ; 8 uses
  %i.f = alloca [128 x i8], align 64              ; 18 uses
  %i.g = alloca [64 x i8], align 16               ; 9 uses
  %i.h = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noundef !15 ; 3 uses
  %i.i = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = and i32 %i.h, 8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  %i.k = icmp samesign ugt i64 %6, 274877906880
  br i1 %i.k, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %i.l, align 8, !alias.scope !1751, !noalias !1752
  store i8 1, ptr %0, align 8, !alias.scope !1751, !noalias !1752
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130510integrated4seal.exit

bb.d:                                             ; preds = %bb.b
  %i.m = and i32 %i.h, 768
  %brmerge.i.not = icmp eq i32 %i.m, 768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !noalias !1754
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.55.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(12) %2, i64 12, i1 false), !noalias !1755
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 0, ptr %.sroa.44.0..sroa_idx.i, align 16, !noalias !1753
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1753
  br i1 %brmerge.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @ring_core_0_17_16000__chacha20_poly1305_seal_sse41(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noundef nonnull readonly %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.g) #36, !noalias !1756
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @ring_core_0_17_16000__chacha20_poly1305_seal_avx2(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noundef nonnull readonly %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.g) #36, !noalias !1756
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !1752
  store i8 0, ptr %0, align 8, !alias.scope !1751, !noalias !1752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1753
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130510integrated4seal.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %i.o = icmp samesign ugt i64 %6, 274877906880
  br i1 %i.o, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %6, ptr %i.p, align 8, !alias.scope !1757, !noalias !1760
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130513seal_fallback.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1761
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !noalias !1761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %2, align 1, !alias.scope !1763, !noalias !1764 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx3.i.i.i.i.i, align 1, !alias.scope !1763, !noalias !1764 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1765
  store i32 0, ptr %i.c, align 4, !noalias !1765
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i64 %.sroa.01.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !1765
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !noalias !1765
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull dereferenceable(32) %i.d, ptr noundef nonnull dereferenceable(32) %i.d, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !1766, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1765
  %.sroa.14.sroa.0.0.copyload.i = load i32, ptr %i.d, align 4, !noalias !1767 ; 2 uses
  %.sroa.14.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.14.sroa.5.0.copyload.i = load i32, ptr %.sroa.14.sroa.5.0..sroa_idx.i, align 4, !noalias !1767 ; 2 uses
  %.sroa.14.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.14.sroa.6.0.copyload.i = load i32, ptr %.sroa.14.sroa.6.0..sroa_idx.i, align 4, !noalias !1767 ; 2 uses
  %.sroa.14.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.14.sroa.7.0.copyload.i = load i32, ptr %.sroa.14.sroa.7.0..sroa_idx.i, align 4, !noalias !1767 ; 2 uses
  %.sroa.14.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.sroa.8.0..sroa_idx.i, i64 16, i1 false), !noalias !1768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1761
  store i32 1, ptr %i.e, align 4, !noalias !1768
  %.sroa.7.4..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i64 %.sroa.01.0.copyload.i.i.i.i.i, ptr %.sroa.7.4..sroa_idx2.i, align 4, !noalias !1768
  %.sroa.9.4..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.9.4..sroa_idx4.i, align 4, !noalias !1768
  %i.q = and i32 %.sroa.14.sroa.0.0.copyload.i, 67108863
  %i.r = call i32 @llvm.fshl.i32(i32 %.sroa.14.sroa.5.0.copyload.i, i32 %.sroa.14.sroa.0.0.copyload.i, i32 6)
  %i.s = and i32 %i.r, 67108611                   ; 2 uses
  %i.t = call i32 @llvm.fshl.i32(i32 %.sroa.14.sroa.6.0.copyload.i, i32 %.sroa.14.sroa.5.0.copyload.i, i32 12)
  %i.u = and i32 %i.t, 67092735                   ; 2 uses
  %i.v = call i32 @llvm.fshl.i32(i32 %.sroa.14.sroa.7.0.copyload.i, i32 %.sroa.14.sroa.6.0.copyload.i, i32 18)
  %i.w = and i32 %i.v, 66076671                   ; 2 uses
  %i.x = lshr i32 %.sroa.14.sroa.7.0.copyload.i, 8
  %i.y = and i32 %i.x, 1048575                    ; 2 uses
  %i.z = mul nuw nsw i32 %i.s, 5
  %i.aa = mul nuw nsw i32 %i.u, 5
  %i.ab = mul nuw nsw i32 %i.w, 5
  %i.ac = mul nuw nsw i32 %i.y, 5
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.q, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !noalias !1768
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !1768
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.u, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1768
  %.sroa.7.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.w, ptr %.sroa.7.0..sroa_idx.i7.i, align 4, !noalias !1768
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.y, ptr %.sroa.8.0..sroa_idx.i.i, align 32, !noalias !1768
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.z, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !1768
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %i.aa, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1768
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %i.ab, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !1768
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %i.ac, ptr %.sroa.12.0..sroa_idx.i.i, align 16, !noalias !1768
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx.i.i, i8 0, i64 20, i1 false), !noalias !1768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1768
  %i.ad = and i64 %4, 15                          ; 4 uses
  %i.ae = and i64 %4, 9223372036854775792         ; 2 uses
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %i.ae), !noalias !1769
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i.i: ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %i.ah = sub nuw nsw i64 16, %i.ad
  %i.ai = getelementptr i8, ptr %i.b, i64 %i.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i8 0, i64 %i.ah, i1 false), !noalias !1770
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull readonly align 1 %i.ag, i64 range(i64 0, 129) %i.ad, i1 false), !noalias !1771
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 16), !noalias !1772
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1768
  %i.aj = icmp samesign ugt i64 %6, 128
  br i1 %i.aj, label %bb.k, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit8.i

bb.k:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i
  %i.ak = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !1773, !noundef !15 ; 3 uses
  %i.al = icmp ne i32 %i.ak, 0
  call void @llvm.assume(i1 %i.al)
  %i.am = and i32 %i.ak, 256
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %bb.l, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit8.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i
  %.not3.i.i = icmp eq i64 %6, 0
  br i1 %.not3.i.i, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit.i, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit.i

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit.i: ; preds = %bb.k
  call void @ring_core_0_17_16000__ChaCha20_ctr32_avx2(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e) #36, !noalias !1774, !inline_history !3
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit.i

bb.l:                                             ; preds = %bb.k
  %i.an = and i32 %i.ak, 4
  %.not2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not2.i.i, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit.i, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit.i

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit.i: ; preds = %bb.l
  call void @ring_core_0_17_16000__ChaCha20_ctr32_ssse3_4x(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e) #36, !noalias !1775, !inline_history !4
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit.i

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit.i: ; preds = %bb.l, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit8.i
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e) #36, !noalias !1776, !inline_history !2
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit.i

_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit.i: ; preds = %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit.i, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit.i, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit.i, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit8.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1768
  %i.ao = and i64 %6, 15                          ; 4 uses
  %i.ap = and i64 %6, 274877906928                ; 2 uses
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %i.ap), !noalias !1777
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130525poly1305_update_padded_16.exit24.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i23.i

_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i23.i: ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 %i.ap
  %i.as = sub nuw nsw i64 16, %i.ao
  %i.at = getelementptr i8, ptr %i.a, i64 %i.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 0, i64 %i.as, i1 false), !noalias !1778
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull readonly align 1 %i.ar, i64 range(i64 0, 129) %i.ao, i1 false), !noalias !1779
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef 16), !noalias !1777
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130525poly1305_update_padded_16.exit24.i

_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130525poly1305_update_padded_16.exit24.i: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i23.i, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1768
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  call fastcc void @_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly13056finish(ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.au, ptr noalias nofree noundef align 64 captures(address) dereferenceable(128) %i.f, i64 noundef %4, i64 noundef range(i64 0, -9223372036854775808) %6), !noalias !1780
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130513seal_fallback.exit

_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130513seal_fallback.exit: ; preds = %bb.i, %_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130525poly1305_update_padded_16.exit24.i
  %storemerge.i = phi i8 [ 0, %_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130525poly1305_update_padded_16.exit24.i ], [ 1, %bb.i ]
  store i8 %storemerge.i, ptr %0, align 8, !alias.scope !1757, !noalias !1760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130510integrated4seal.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130510integrated4seal.exit: ; preds = %bb.g, %bb.c, %_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly130513seal_fallback.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead25chacha20_poly1305_opensshNtB2_10SealingKey13seal_in_place(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(64) %0, i32 noundef %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef writeonly captures(none) dereferenceable(16) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 64              ; 22 uses
  %i.c = alloca [16 x i8], align 4                ; 7 uses
  %i.d = alloca [16 x i8], align 4                ; 7 uses
  %i.e = alloca [32 x i8], align 4                ; 10 uses
  %.sroa.7 = alloca [16 x i8], align 4            ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 8 uses
  %i.g = icmp samesign ugt i64 %3, 3
  br i1 %i.g, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.i = add nsw i64 %3, -4                       ; 4 uses
  %i.j = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = icmp samesign ugt i64 %3, 274877906884
  br i1 %i.l, label %bb.e, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, !prof !16

bb.e:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #41, !noalias !1848
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.m = tail call i32 @llvm.bswap.i32(i32 %1)    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1849
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !noalias !1849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1850
  store i32 0, ptr %i.d, align 4, !noalias !1850
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !1850
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !1850
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.m, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !1850
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull dereferenceable(32) %i.e, ptr noundef nonnull dereferenceable(32) %i.e, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d) #36, !noalias !1851, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1850
  %.sroa.1163.sroa.0.0.copyload = load i32, ptr %i.e, align 4, !noalias !1852 ; 2 uses
  %.sroa.1163.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.1163.sroa.4.0.copyload = load i32, ptr %.sroa.1163.sroa.4.0..sroa_idx, align 4, !noalias !1852 ; 2 uses
  %.sroa.1163.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.1163.sroa.5.0.copyload = load i32, ptr %.sroa.1163.sroa.5.0..sroa_idx, align 4, !noalias !1852 ; 2 uses
  %.sroa.1163.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.1163.sroa.6.0.copyload = load i32, ptr %.sroa.1163.sroa.6.0..sroa_idx, align 4, !noalias !1852 ; 2 uses
  %.sroa.1163.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.1163.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 1, ptr %i.f, align 4
  %.sroa.049.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i64 0, ptr %.sroa.049.sroa.4.0..sroa_idx, align 4
  %.sroa.049.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.m, ptr %.sroa.049.sroa.5.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1853
  store i32 0, ptr %i.c, align 4, !noalias !1853
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1853
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !1853
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.m, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !1853
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull dereferenceable(4) %2, ptr noundef nonnull dereferenceable(4) %2, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !1854, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1853
  %i.n = icmp samesign ugt i64 %3, 132
  br i1 %i.n, label %bb.f, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit27

bb.f:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %i.o = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !1855, !noundef !15 ; 3 uses
  %i.p = icmp ne i32 %i.o, 0
  call void @llvm.assume(i1 %i.p)
  %i.q = and i32 %i.o, 256
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.g, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit27: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %.not3.i = icmp eq i64 %i.i, 0
  br i1 %.not3.i, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit: ; preds = %bb.f
  call void @ring_core_0_17_16000__ChaCha20_ctr32_avx2(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !1856, !inline_history !3
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

bb.g:                                             ; preds = %bb.f
  %i.r = and i32 %i.o, 4
  %.not2.i = icmp eq i32 %i.r, 0
  br i1 %.not2.i, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit, label %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit: ; preds = %bb.g
  call void @ring_core_0_17_16000__ChaCha20_ctr32_ssse3_4x(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !1857, !inline_history !4
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit: ; preds = %bb.g, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit27
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f) #36, !noalias !1858, !inline_history !2
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit27, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1859
  call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  %i.s = and i32 %.sroa.1163.sroa.0.0.copyload, 67108863
  %i.t = call i32 @llvm.fshl.i32(i32 %.sroa.1163.sroa.4.0.copyload, i32 %.sroa.1163.sroa.0.0.copyload, i32 6)
  %i.u = and i32 %i.t, 67108611                   ; 2 uses
  %i.v = call i32 @llvm.fshl.i32(i32 %.sroa.1163.sroa.5.0.copyload, i32 %.sroa.1163.sroa.4.0.copyload, i32 12)
  %i.w = and i32 %i.v, 67092735                   ; 2 uses
  %i.x = call i32 @llvm.fshl.i32(i32 %.sroa.1163.sroa.6.0.copyload, i32 %.sroa.1163.sroa.5.0.copyload, i32 18)
  %i.y = and i32 %i.x, 66076671                   ; 2 uses
  %i.z = lshr i32 %.sroa.1163.sroa.6.0.copyload, 8
  %i.aa = and i32 %i.z, 1048575                   ; 2 uses
  %i.ab = mul nuw nsw i32 %i.u, 5
  %i.ac = mul nuw nsw i32 %i.w, 5
  %i.ad = mul nuw nsw i32 %i.y, 5
  %i.ae = mul nuw nsw i32 %i.aa, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7, i64 16, i1 false), !alias.scope !1861, !noalias !1862
  %.sroa.4.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.s, ptr %.sroa.4.0..sroa_idx.i.i42, align 16, !alias.scope !1863, !noalias !1864
  %.sroa.5.0..sroa_idx.i.i43 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.u, ptr %.sroa.5.0..sroa_idx.i.i43, align 4, !alias.scope !1863, !noalias !1864
  %.sroa.6.0..sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.w, ptr %.sroa.6.0..sroa_idx.i.i44, align 8, !alias.scope !1863, !noalias !1864
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.y, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !1863, !noalias !1864
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.aa, ptr %.sroa.8.0..sroa_idx.i.i, align 32, !alias.scope !1863, !noalias !1864
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.ab, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !1863, !noalias !1864
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.ac, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !1863, !noalias !1864
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.ad, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !alias.scope !1863, !noalias !1864
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.ae, ptr %.sroa.12.0..sroa_idx.i.i, align 16, !alias.scope !1863, !noalias !1864
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx.i.i, i8 0, i64 20, i1 false), !alias.scope !1863, !noalias !1864
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 4, -9223372036854775808) %3), !noalias !1865
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 64, !alias.scope !1866, !noalias !1867
  %.sroa.4.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i45, align 4, !alias.scope !1866, !noalias !1867
  %.sroa.5.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i46, align 8, !alias.scope !1866, !noalias !1867
  %.sroa.6.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i47, align 4, !alias.scope !1866, !noalias !1867
  %.sroa.71.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i.i, align 4, !alias.scope !1866, !noalias !1867 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1866, !noalias !1867
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !1866, !noalias !1867
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 64, !alias.scope !1866, !noalias !1867
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.11.0.copyload.i = load i32, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !1866, !noalias !1867
  %i.af = lshr i32 %.sroa.71.0.copyload.i, 26
  %i.ag = and i32 %.sroa.71.0.copyload.i, 67108863
  %i.ah = add i32 %.sroa.8.0.copyload.i, %i.af    ; 2 uses
  %i.ai = lshr i32 %i.ah, 26
  %i.aj = and i32 %i.ah, 67108863                 ; 2 uses
  %i.ak = add i32 %i.ai, %.sroa.9.0.copyload.i    ; 2 uses
  %i.al = lshr i32 %i.ak, 26
  %i.am = and i32 %i.ak, 67108863                 ; 2 uses
  %i.an = add i32 %i.al, %.sroa.10.0.copyload.i   ; 2 uses
  %i.ao = lshr i32 %i.an, 26
  %i.ap = and i32 %i.an, 67108863                 ; 2 uses
  %i.aq = add i32 %i.ao, %.sroa.11.0.copyload.i   ; 3 uses
  %i.ar = lshr i32 %i.aq, 26
  %i.as = mul nuw nsw i32 %i.ar, 5
  %i.at = add nuw nsw i32 %i.as, %i.ag            ; 2 uses
  %i.au = add nuw nsw i32 %i.at, 5                ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs5yxAJGbRKSL_4ring4aead25chacha20_poly1305_opensshNtB2_10SealingKey13seal_in_place:bb.a
  %i.bd = add nsw i32 %i.bb, %i.bc                ; 3 uses
  %.neg.i.i = ashr i32 %i.bd, 31                  ; 5 uses
  %i.be = lshr i32 %i.bd, 31
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  %i.bg = and i32 %.neg.i.i, %i.at
  %i.bh = and i32 %i.bf, 67108863                 ; 4 uses
  %i.bi = and i32 %i.bh, %i.au
  %i.bj = or i32 %i.bi, %i.bg
  %i.bk = and i32 %.neg.i.i, %i.aj
  %i.bl = and i32 %i.bh, %i.aw
  %i.bm = or i32 %i.bl, %i.bk                     ; 2 uses
  %i.bn = and i32 %.neg.i.i, %i.am
  %i.bo = and i32 %i.bh, %i.ay
  %i.bp = or i32 %i.bo, %i.bn                     ; 2 uses
  %i.bq = and i32 %.neg.i.i, %i.ap
  %i.br = and i32 %i.bh, %i.ba
  %i.bs = or i32 %i.br, %i.bq                     ; 2 uses
  %i.bt = and i32 %.neg.i.i, %i.aq
  %i.bu = and i32 %i.bf, %i.bd
  %i.bv = or i32 %i.bu, %i.bt
  %i.bw = shl i32 %i.bm, 26
  %i.bx = or i32 %i.bj, %i.bw                     ; 2 uses
  %add.narrowed.i.i = add i32 %i.bx, %.sroa.0.0.copyload.i ; 2 uses
  %add.narrowed.overflow.i.i = icmp ult i32 %add.narrowed.i.i, %i.bx
  %i.by = lshr i32 %i.bm, 6
  %i.bz = shl i32 %i.bp, 20
  %i.ca = or disjoint i32 %i.by, %i.bz
  %i.cb = zext i32 %i.ca to i64
  %i.cc = zext i32 %.sroa.4.0.copyload.i to i64
  %i.cd = add nuw nsw i64 %i.cb, %i.cc
  %i.ce = lshr i32 %i.bp, 12
  %i.cf = shl i32 %i.bs, 14
  %i.cg = or disjoint i32 %i.ce, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = zext i32 %.sroa.5.0.copyload.i to i64
  %i.cj = add nuw nsw i64 %i.ch, %i.ci
  %i.ck = lshr i32 %i.bs, 18
  %i.cl = shl i32 %i.bv, 8
  %i.cm = or disjoint i32 %i.ck, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = zext i32 %.sroa.6.0.copyload.i to i64
  %i.cp = add nuw nsw i64 %i.cn, %i.co
  %i.cq = zext i1 %add.narrowed.overflow.i.i to i64
  %i.cr = add nuw nsw i64 %i.cd, %i.cq            ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = lshr i64 %i.cr, 32
  %i.cu = add nuw nsw i64 %i.cj, %i.ct            ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = lshr i64 %i.cu, 32
  %i.cx = add nuw nsw i64 %i.cp, %i.cw
  %i.cy = trunc i64 %i.cx to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1859
  store i32 %add.narrowed.i.i, ptr %4, align 1
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.cs, ptr %.sroa.496.0..sroa_idx, align 1
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.cv, ptr %.sroa.597.0..sroa_idx, align 1
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.cy, ptr %.sroa.698.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead25chacha20_poly1305_opensshNtB2_10SealingKey3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 4 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.764.0..sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.772.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <4 x i32>, ptr %i.a, align 1, !alias.scope !1871, !noalias !1872
  store <4 x i32> %i.b, ptr %0, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <4 x i32>, ptr %.sroa.764.0..sroa.6.16..sroa_idx.i, align 1, !alias.scope !1871, !noalias !1872
  store <4 x i32> %i.c, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load <4 x i32>, ptr %1, align 1, !alias.scope !1871, !noalias !1872
  store <4 x i32> %i.d, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load <4 x i32>, ptr %.sroa.772.0..sroa.0.0..sroa_idx.i, align 1, !alias.scope !1871, !noalias !1872
  store <4 x i32> %i.e, ptr %.sroa.15.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB2_3Key11open_within(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(448) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, i64 %.0.val, i64 %.8.val) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 1                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 1                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 1                ; 6 uses
  %i.i = alloca [16 x i8], align 1                ; 4 uses
  %i.j = alloca [16 x i8], align 1                ; 4 uses
  %i.k = alloca [16 x i8], align 1                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 1                ; 4 uses
  %i.n = alloca [16 x i8], align 1                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 11 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.12.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.q = alloca [16 x i8], align 1                ; 5 uses
  %i.r = alloca [16 x i8], align 1                ; 5 uses
  %i.s = alloca [16 x i8], align 1                ; 5 uses
  %i.t = alloca [16 x i8], align 1                ; 5 uses
  %i.u = alloca [16 x i8], align 1                ; 6 uses
  %i.v = alloca [16 x i8], align 1                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 14 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2002, !noalias !2003, !noundef !15 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2002, !noalias !2003, !noundef !15 ; 9 uses
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !2004
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i: ; preds = %bb.a
  %i.ad = sub nuw i64 %i.z, %i.ab                 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  %i.ae = load ptr, ptr %5, align 8, !alias.scope !2006, !noalias !2007, !nonnull !15, !noundef !15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.v, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 16777216, ptr %.sroa.9.0..sroa_idx9.i.i.i.i, align 1, !alias.scope !2013, !noalias !2012
  %i.af = load i64, ptr %1, align 8, !range !41, !alias.scope !2011, !noalias !2014, !noundef !15
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  switch i64 %i.af, label %default.unreachable [
    i64 0, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.l
  ], !prof !42

default.unreachable:                              ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.u, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 3 uses
  store i32 33554432, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 1, !noalias !2012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2012
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i)
  %i.ai = icmp ugt i64 %i.ad, 68719476704
  br i1 %i.ai, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i, label %bb.c, !prof !16

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i
  %i.aj = icmp ugt i64 %4, 2305843009213693951
  br i1 %i.aj, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.ak = shl nuw nsw i64 %i.ad, 3
  %i.al = shl nuw i64 %4, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2017
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !noalias !2018
  store ptr %i.ag, ptr %i.o, align 8, !noalias !2017
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %i.al, ptr %i.an, align 8, !noalias !2017
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.ak, ptr %i.ao, align 8, !noalias !2017
  %i.ap = icmp eq i64 %4, 0
  br i1 %i.ap, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i: ; preds = %bb.d
  %.sroa.516.0..sroa_idx39.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx39.i.i.i.i.i, i64 24, i1 false), !noalias !2018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2017
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.d, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.011.026.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.preheader.i.i.i.i.i.i ], [ %3, %bb.d ] ; 2 uses
  %.sroa.512.025.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.preheader.i.i.i.i.i.i ], [ %4, %bb.d ] ; 3 uses
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.512.025.i.i.i.i.i, i64 16) ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.026.i.i.i.i.i, i64 %..i.i.i.i.i.i.i
  %i.ar = sub nuw nsw i64 %.sroa.512.025.i.i.i.i.i, %..i.i.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2018
  %i.as = icmp ugt i64 %.sroa.512.025.i.i.i.i.i, 15
  %i.at = sub nuw nsw i64 16, %..i.i.i.i.i.i.i
  %i.au = select i1 %i.as, i64 0, i64 %i.at
  %i.av = getelementptr i8, ptr %i.n, i64 %..i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 0, i64 %i.au, i1 false), !noalias !2018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.011.026.i.i.i.i.i, i64 range(i64 0, 129) %..i.i.i.i.i.i.i, i1 false), !alias.scope !2019, !noalias !2020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) %i.n, i64 16, i1 false), !noalias !2017
  %i.aw = load ptr, ptr %i.o, align 8, !noalias !2017, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_vpclmulqdq_avx2_16(ptr noalias nofree noundef nonnull dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.m, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !2021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2018
  %i.ax = icmp eq i64 %i.ar, 0
  br i1 %i.ax, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.014.0.copyload.pre.i.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !2017 ; 2 uses
  %.sroa.415.0.copyload.pre.i.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !2017 ; 2 uses
  %.sroa.516.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !2018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2017
  %i.ay = icmp eq ptr %.sroa.014.0.copyload.pre.i.i.i.i.i, null
  br i1 %i.ay, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i: ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i, %bb.c, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i
  %.sroa.88.024.i.i.i.i.i = phi i64 [ %.sroa.415.0.copyload.pre.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i ], [ %i.ad, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i ], [ %4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.88.024.i.i.i.i.i, ptr %i.az, align 8, !alias.scope !2022, !noalias !2023
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18open_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i
  %.sroa.014.0.copyload41.i.i.i.i.i = phi ptr [ %i.ag, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i ], [ %.sroa.014.0.copyload.pre.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.415.0.copyload40.i.i.i.i.i = phi i64 [ 0, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread36.i.i.i.i.i ], [ %.sroa.415.0.copyload.pre.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %.sroa.8.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i.i.i.i, i64 24, i1 false), !noalias !2018
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i.i.i.i)
  store ptr %.sroa.014.0.copyload41.i.i.i.i.i, ptr %i.p, align 8, !noalias !2018
  %.sroa.6.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store i64 %.sroa.415.0.copyload40.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !2018
  call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  %i.bb = and i64 %i.ad, 68719476720              ; 5 uses
  %i.bc = add i64 %i.bb, %i.ab                    ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ab
  %.not.i.i7.i.i.i.i.i = icmp ugt i64 %i.bc, %i.z
  %or.cond.i.i.i.i.i.i = or i1 %i.bd, %.not.i.i7.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.h, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i.i.i.i, !prof !29

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %i.ad, 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i, label %_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvNtNtBa_7aes_gcm13vaesclmulavx226open_whole_vaes_clmul_avx20EBc_.exit.i.i.i.i.i.i.i.i.i.i

_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvNtNtBa_7aes_gcm13vaesclmulavx226open_whole_vaes_clmul_avx20EBc_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i to i32
  call void @ring_core_0_17_16000__aes_gcm_dec_update_vaes_avx2(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ae, i64 noundef %i.bb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.ba, ptr noalias nofree noundef nonnull align 1 dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.014.0.copyload41.i.i.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i) #36, !noalias !2025
  %i.be = load i32, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 1, !alias.scope !2026, !noalias !2027
  %i.bf = call i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = add i32 %i.bf, %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i
  %i.bh = call i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 1, !alias.scope !2026, !noalias !2027
  br label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i

_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i: ; preds = %_RINvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB6_11OverlappinghE21with_input_output_lenuNCNvNtNtBa_7aes_gcm13vaesclmulavx226open_whole_vaes_clmul_avx20EBc_.exit.i.i.i.i.i.i.i.i.i.i, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i.i.i.i
  %i.bi = icmp ult i64 %i.z, %i.bb
  br i1 %i.bi, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i
  %i.bj = sub nuw i64 %i.z, %i.bb                 ; 3 uses
  %.not42.i.i.i.i.i.i.i = icmp ult i64 %i.bj, %i.ab
  br i1 %.not42.i.i.i.i.i.i.i, label %bb.g, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i, !prof !30

bb.f:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm10vclmulavx23KeyNvNtB4_13vaesclmulavx226open_whole_vaes_clmul_avx2E0B8_.exit.i.i.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41, !noalias !2028
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #41, !noalias !2028
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #41, !noalias !2029
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bk = sub nuw i64 %i.bj, %i.ab                ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.thread.i.i.i.i.i.i, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i.i.i.i.i.i, !prof !16

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !2031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !2032
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.not.i2.i.i.i.i.i.i = icmp eq i64 %i.bj, %i.ab
  br i1 %.not.i2.i.i.i.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i.i, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i.i.i.i.i.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #41, !noalias !2034
  unreachable

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bb ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !2035
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.bn, i64 range(i64 0, 129) %i.bk, i1 false), !noalias !2036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !2035
  %i.bo = load ptr, ptr %i.l, align 8, !alias.scope !2033, !noalias !2037, !nonnull !15, !align !17, !noundef !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @ring_core_0_17_16000__gcm_ghash_vpclmulqdq_avx2_16(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bo, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.j, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !2038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !2035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !2040
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.b) #36, !noalias !2041, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !2042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2039
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 dereferenceable(16) %i.i, i64 range(i64 0, -9223372036854775808) %i.bk, i1 false), !alias.scope !2043, !noalias !2044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i.i: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i.i.i.i.i.i, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !2037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !2046
  call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !2047, !noalias !2048, !noundef !15
  %i.bs = call i64 @llvm.bswap.i64(i64 %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !2047, !noalias !2048, !noundef !15
  %i.bv = call i64 @llvm.bswap.i64(i64 %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2049
  store i64 %i.bs, ptr %i.f, align 8, !noalias !2049
  %.sroa.5.0..sroa_idx10.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.bv, ptr %.sroa.5.0..sroa_idx10.i.i.i.i.i.i.i, align 8, !noalias !2049
  %i.bw = load ptr, ptr %i.g, align 8, !alias.scope !2047, !noalias !2048, !nonnull !15, !align !17, !noundef !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @ring_core_0_17_16000__gcm_ghash_vpclmulqdq_avx2_16(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bw, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.f, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !2050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !noalias !2035
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.d) #36, !noalias !2051, !inline_history !1
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.by, ptr noundef nonnull align 1 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !2023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2030
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18open_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18open_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i.i ], [ 1, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i.i.i.i ]
  store i8 %storemerge.i.i.i.i.i, ptr %i.w, align 8, !alias.scope !2022, !noalias !2023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2012
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i

bb.i:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.t, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 33554432, ptr %.sroa.9.0..sroa_idx1.i.i.i.i, align 1, !noalias !2012
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm15aeshwclmulmovbe4open(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ag, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.t, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %5) #39, !noalias !2052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2012
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i

bb.j:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.s, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 33554432, ptr %.sroa.9.0..sroa_idx3.i.i.i.i, align 1, !noalias !2012
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %5, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.v) #39, !noalias !2052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2012
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i

bb.k:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.r, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 33554432, ptr %.sroa.9.0..sroa_idx5.i.i.i.i, align 1, !noalias !2012
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %5, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.r, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.v) #39, !noalias !2052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2012
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i

bb.l:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.q, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %.sroa.9.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 33554432, ptr %.sroa.9.0..sroa_idx7.i.i.i.i, align 1, !noalias !2012
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12open_stridedNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %5, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.q, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.v) #39, !noalias !2052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2012
  br label %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i

_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18open_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226open_whole_vaes_clmul_avx2EB6_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2012
  %i.ca = load i8, ptr %i.w, align 8, !range !34, !noalias !2008, !noundef !15
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.m, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2008
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.cc, align 8, !alias.scope !1999, !noalias !2053
  store ptr null, ptr %0, align 8, !alias.scope !1999, !noalias !2053
  br label %_RINvNtCs5yxAJGbRKSL_4ring4aead11open_withinNCNvMNtB2_7aes_gcmNtBK_3Key11open_within0EB4_.exit

.lr.ph.i.i.i.i:                                   ; preds = %_RNCNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_3Key11open_within0B8_.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.x, ptr noundef nonnull align 1 dereferenceable(7) %i.cd, i64 7, i1 false), !noalias !2054
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.416.0.copyload.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !2008
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.517.0.copyload.i.i = load i8, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !2008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2008
  %.7..7..7..7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 7
  store i64 %.sroa.416.0.copyload.i.i, ptr %.7..7..7..7..sroa_idx, align 1, !noalias !2054
  %.15..15..15..15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 15
  store i8 %.sroa.517.0.copyload.i.i, ptr %.15..15..15..15..sroa_idx, align 1, !noalias !2054
  call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  %.0..0..0..0..sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !2057, !noalias !2058
  %i.ce = xor i64 %.0..0..0..0..sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.0.val
  %.8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.8..8..8..8..sroa.0.0.copyload.i.i.i.i.i.i.i.1.i = load i64, ptr %.8..8..8..8..sroa_idx, align 8, !alias.scope !2057, !noalias !2058
  %i.cf = xor i64 %.8..8..8..8..sroa.0.0.copyload.i.i.i.i.i.i.i.1.i, %.8.val
  %i.cg = or i64 %i.cf, %i.ce
  %i.ch = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.cg) #36, !noalias !2059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2060
  store i64 %i.ch, ptr %i.a, align 8, !noalias !2060
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !2060, !srcloc !37
  %i.ci = load i64, ptr %i.a, align 8, !noalias !2060, !noundef !15
  %.not.i.i = icmp eq i64 %i.ci, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2060
  br i1 %.not.i.i, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 0, i64 %i.ad, i1 false), !noalias !2054
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.sink.i = phi ptr [ null, %bb.n ], [ %i.ae, %.lr.ph.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.cj, align 8, !alias.scope !1999, !noalias !2053
  store ptr %.sink.i, ptr %0, align 8, !alias.scope !1999, !noalias !2053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCs5yxAJGbRKSL_4ring4aead11open_withinNCNvMNtB2_7aes_gcmNtBK_3Key11open_within0EB4_.exit

_RINvNtCs5yxAJGbRKSL_4ring4aead11open_withinNCNvMNtB2_7aes_gcmNtBK_3Key11open_within0EB4_.exit: ; preds = %bb.m, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB2_3Key3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(448) initializes((0, 448)) %0, i64 noundef range(i64 0, 2) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [244 x i8], align 4               ; 5 uses
  %i.d = alloca [344 x i8], align 8               ; 5 uses
  %i.e = alloca [440 x i8], align 8               ; 5 uses
  %i.f = alloca [440 x i8], align 8               ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [244 x i8], align 4               ; 7 uses
  %i.i = alloca [448 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  %i.j = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !2083, !noundef !15 ; 6 uses
  %i.k = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = and i32 %i.j, 38
  %brmerge.i12.not.i = icmp eq i32 %i.l, 38
  br i1 %brmerge.i12.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2083
  %i.m = and i32 %i.j, 64
  %.not3.not.i = icmp eq i32 %i.m, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2084
  %i.n = trunc nuw i64 %1 to i1
  %..i.i = select i1 %i.n, i32 256, i32 128       ; 2 uses
  br i1 %.not3.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef i32 @ring_core_0_17_16000__aes_hw_set_encrypt_key_alt(ptr noundef nonnull %2, i32 noundef %..i.i, ptr noundef nonnull %i.c) #36, !noalias !2084 ; 0 uses
  br label %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = call noundef i32 @ring_core_0_17_16000__aes_hw_set_encrypt_key_base(ptr noundef nonnull %2, i32 noundef %..i.i, ptr noundef nonnull %i.c) #36, !noalias !2084 ; 0 uses
  br label %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i

_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.h, ptr noundef nonnull align 4 dereferenceable(244) %i.c, i64 244, i1 false), !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2085
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !2086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2085
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !noalias !2083
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !2087, !inline_history !1
  %.sroa.026.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !2088
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2085
  %i.q = call noundef i64 @llvm.bswap.i64(i64 %.sroa.026.0.copyload.i)
  %i.r = call noundef i64 @llvm.bswap.i64(i64 %.sroa.4.0.copyload.i)
  store i64 %i.q, ptr %i.g, align 8, !alias.scope !2089, !noalias !2083
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2089, !noalias !2083
  %i.s = and i32 %i.j, 257
  %brmerge.i7.not.i = icmp eq i32 %i.s, 257
  br i1 %brmerge.i7.not.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.t = and i32 %i.j, 4
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.f:                                             ; preds = %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2083
  call void @ring_core_0_17_16000__gcm_init_vpclmulqdq_avx2(ptr noundef nonnull align 8 dereferenceable(192) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g) #36, !noalias !2083
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(244) %i.u, ptr noundef nonnull align 4 dereferenceable(244) %i.h, i64 244, i1 false), !noalias !2083
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.v, ptr noundef nonnull align 8 dereferenceable(440) %i.f, i64 440, i1 false)
  store i64 0, ptr %i.i, align 8, !alias.scope !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2083
  br label %bb.h

bb.g:                                             ; preds = %_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes2hwNtB4_3Key3new.exit.i
  %i.w = and i32 %i.j, 82
  %.sroa.0.0.i.i = icmp eq i32 %i.w, 82
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %.sroa.0.0.i.i, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2083
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey3new.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2083
  call fastcc void @_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm13clmulavxmovbeNtB2_3Key3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(192) %i.e, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(16) %i.g) #39, !noalias !2083
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(244) %i.y, ptr noundef nonnull align 4 dereferenceable(244) %i.h, i64 244, i1 false), !noalias !2083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.x, ptr noundef nonnull align 8 dereferenceable(440) %i.e, i64 440, i1 false)
  store i64 1, ptr %i.i, align 8, !alias.scope !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2083
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2083
  call void @ring_core_0_17_16000__gcm_init_clmul(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g) #36, !noalias !2083
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(244) %i.z, ptr noundef nonnull align 4 dereferenceable(244) %i.h, i64 244, i1 false), !noalias !2083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.x, ptr noundef nonnull align 8 dereferenceable(344) %i.d, i64 344, i1 false)
  store i64 2, ptr %i.i, align 8, !alias.scope !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2083
  br label %bb.h

bb.k:                                             ; preds = %bb.e
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey9new_ssse3(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(448) %i.i, i64 noundef range(i64 0, 2) %1, ptr noundef nonnull %2) #39
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey3new.exit

bb.l:                                             ; preds = %bb.e
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey12new_fallback(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(448) %i.i, i64 noundef range(i64 0, 2) %1, ptr noundef nonnull %2) #39
  br label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey3new.exit

_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey3new.exit: ; preds = %bb.h, %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(448) %i.i, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB2_3Key4seal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(448) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4, ptr noalias nofree noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 1                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 1                ; 6 uses
  %i.h = alloca [16 x i8], align 1                ; 4 uses
  %i.i = alloca [16 x i8], align 1                ; 5 uses
  %i.j = alloca [16 x i8], align 1                ; 4 uses
  %i.k = alloca [16 x i8], align 1                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 11 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.12.i.i = alloca [24 x i8], align 8       ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.0.i.i = alloca [15 x i8], align 1        ; 5 uses
  %i.o = alloca [16 x i8], align 1                ; 8 uses
  %i.p = alloca [16 x i8], align 1                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.0.i.i.12.i.i.12.i.i.12.i.12.i.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.i.12.i.i.12.i.i.12.i.12.i.12..sroa_idx, i8 0, i64 3, i1 false), !noalias !2167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.0.i.i, ptr noundef nonnull readonly align 1 dereferenceable(12) %2, i64 12, i1 false), !noalias !2168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.i.i, i64 15, i1 false), !noalias !2169
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !2166, !noalias !2169
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.o, ptr noundef nonnull align 1 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !2170
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !noalias !2170, !noundef !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  %i.t = load i16, ptr %i.s, align 1, !noalias !2170
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.r to i32
  %.sroa.4.0.insert.insert.i = or disjoint i32 %i.v, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, 16777216
  %i.w = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i)
  %i.x = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.y, ptr %i.q, align 1, !noalias !2170
  %i.z = load i64, ptr %1, align 8, !range !41, !alias.scope !2165, !noalias !2171, !noundef !15
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  switch i64 %i.z, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.j
  ], !prof !42

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2174
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  %i.ac = icmp samesign ugt i64 %6, 68719476704
  br i1 %i.ac, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ugt i64 %4, 2305843009213693951
  br i1 %i.ad, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.ae = shl nuw nsw i64 %6, 3
  %i.af = shl nuw i64 %4, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2175
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !noalias !2174
  store ptr %i.aa, ptr %i.l, align 8, !noalias !2175
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.af, ptr %i.ah, align 8, !noalias !2175
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.ae, ptr %i.ai, align 8, !noalias !2175
  %i.aj = icmp eq i64 %4, 0
  br i1 %i.aj, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread51.i.i, label %.lr.ph.i.preheader.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread51.i.i: ; preds = %bb.d
  %.sroa.535.0..sroa_idx54.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.535.0..sroa_idx54.i.i, i64 24, i1 false), !noalias !2174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2175
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit.i.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.d, %.lr.ph.i.preheader.i.i.i
  %.sroa.531.045.i.i = phi i64 [ %i.al, %.lr.ph.i.preheader.i.i.i ], [ %4, %bb.d ] ; 3 uses
  %.sroa.030.044.i.i = phi ptr [ %i.ak, %.lr.ph.i.preheader.i.i.i ], [ %3, %bb.d ] ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.531.045.i.i, i64 16) ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.030.044.i.i, i64 %..i.i.i.i
  %i.al = sub nuw nsw i64 %.sroa.531.045.i.i, %..i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2174
  %i.am = icmp ugt i64 %.sroa.531.045.i.i, 15
  %i.an = sub nuw nsw i64 16, %..i.i.i.i
  %i.ao = select i1 %i.am, i64 0, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.k, i64 %..i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 0, i64 %i.ao, i1 false), !noalias !2174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.030.044.i.i, i64 range(i64 0, 129) %..i.i.i.i, i1 false), !alias.scope !2176, !noalias !2177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !2175
  %i.aq = load ptr, ptr %i.l, align 8, !noalias !2175, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_vpclmulqdq_avx2_16(ptr noalias nofree noundef nonnull dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.aq, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.j, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !2178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2174
  %i.ar = icmp eq i64 %i.al, 0
  br i1 %i.ar, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i, label %.lr.ph.i.preheader.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i.i
  %.sroa.033.0.copyload.pre.i.i = load ptr, ptr %i.l, align 8, !noalias !2175 ; 2 uses
  %.sroa.434.0.copyload.pre.i.i = load i64, ptr %i.ag, align 8, !noalias !2175 ; 2 uses
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.535.0..sroa_idx.i.i, i64 24, i1 false), !noalias !2174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2175
  %i.as = icmp eq ptr %.sroa.033.0.copyload.pre.i.i, null
  br i1 %i.as, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit.i.i.i.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i: ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i, %bb.c, %bb.b
  %.sroa.817.043.i.i = phi i64 [ %.sroa.434.0.copyload.pre.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i ], [ %6, %bb.b ], [ %4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.817.043.i.i, ptr %i.at, align 8, !alias.scope !2179, !noalias !2180
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18seal_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226seal_whole_vaes_clmul_avx2EB6_.exit.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit.i.i.i.i: ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread51.i.i
  %.sroa.033.0.copyload56.i.i = phi ptr [ %i.aa, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread51.i.i ], [ %.sroa.033.0.copyload.pre.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i ] ; 2 uses
  %.sroa.434.0.copyload55.i.i = phi i64 [ 0, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread51.i.i ], [ %.sroa.434.0.copyload.pre.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.i.i ]
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i.i, i64 24, i1 false), !noalias !2174
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  store ptr %.sroa.033.0.copyload56.i.i, ptr %i.n, align 8, !noalias !2174
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 %.sroa.434.0.copyload55.i.i, ptr %.sroa.4.0..sroa_idx.i5.i, align 8, !noalias !2174
  %i.au = and i64 %6, 68719476720                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 %i.au ; 2 uses
  %i.aw = and i64 %6, 15                          ; 6 uses
  %.sroa.6.0.extract.shift.i.i.i.i.i = lshr i64 %6, 4 ; 2 uses
  %.not.i.i14.i.i = icmp eq i64 %.sroa.6.0.extract.shift.i.i.i.i.i, 0
  br i1 %.not.i.i14.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i to i32
  call void @ring_core_0_17_16000__aes_gcm_enc_update_vaes_avx2(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.ab, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.033.0.copyload56.i.i, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx.i5.i) #36, !noalias !2181
  %i.ax = add i32 %i.x, %.sroa.6.0.extract.trunc.i.i.i.i.i
  %i.ay = call i32 @llvm.bswap.i32(i32 %i.ax)
  store i32 %i.ay, ptr %i.q, align 1, !alias.scope !2182, !noalias !2183
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !2174
  call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2174
  %.not.i16.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i16.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyEB6_.exit.i.i, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i.i: ; preds = %bb.f
  %i.az = sub nuw nsw i64 16, %i.aw               ; 2 uses
  %i.ba = getelementptr i8, ptr %i.i, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ba, i8 0, i64 %i.az, i1 false), !noalias !2174
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %i.av, i64 range(i64 0, 129) %i.aw, i1 false), !noalias !2185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !2187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !2188
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !2189, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !2187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2186
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i8 0, i64 %i.az, i1 false), !noalias !2187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !2187
  %i.bc = load ptr, ptr %i.m, align 8, !alias.scope !2184, !noalias !2190, !nonnull !15, !align !17, !noundef !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @ring_core_0_17_16000__gcm_ghash_vpclmulqdq_avx2_16(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bc, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.h, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !2191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2187
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 dereferenceable(16) %i.g, i64 range(i64 0, -9223372036854775808) %i.aw, i1 false), !noalias !2192
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyEB6_.exit.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyEB6_.exit.i.i: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !2190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.o, i64 16, i1 false), !noalias !2194
  call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !2195, !noalias !2196, !noundef !15
  %i.bg = call i64 @llvm.bswap.i64(i64 %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !2195, !noalias !2196, !noundef !15
  %i.bj = call i64 @llvm.bswap.i64(i64 %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2197
  store i64 %i.bg, ptr %i.e, align 8, !noalias !2197
  %.sroa.5.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx10.i.i.i, align 8, !noalias !2197
  %i.bk = load ptr, ptr %i.f, align 8, !alias.scope !2195, !noalias !2196, !nonnull !15, !align !17, !noundef !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @ring_core_0_17_16000__gcm_ghash_vpclmulqdq_avx2_16(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bk, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.e, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !2198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !noalias !2187
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !2199, !inline_history !1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, ptr noundef nonnull align 1 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !2180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2174
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18seal_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226seal_whole_vaes_clmul_avx2EB6_.exit.i

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18seal_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226seal_whole_vaes_clmul_avx2EB6_.exit.i: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyEB6_.exit.i.i, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i
  %storemerge.i.i = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyEB6_.exit.i.i ], [ 1, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_10vclmulavx23KeyE3newB6_.exit.thread.i.i ]
  store i8 %storemerge.i.i, ptr %0, align 8, !alias.scope !2179, !noalias !2180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2174
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm4seal.exit

bb.g:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 200
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm15aeshwclmulmovbe4seal(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.aa, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6) #39, !noalias !2200
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm4seal.exit

bb.h:                                             ; preds = %bb.a
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12seal_stridedNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.o) #39, !noalias !2200
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm4seal.exit

bb.i:                                             ; preds = %bb.a
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12seal_stridedNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.o) #39, !noalias !2200
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm4seal.exit

bb.j:                                             ; preds = %bb.a
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12seal_stridedNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull %5, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef align 1 captures(address) dereferenceable(16) %i.o) #39, !noalias !2200
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm4seal.exit

_RNvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm4seal.exit: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm18seal_whole_partialNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm10vclmulavx23KeyNvNtB2_13vaesclmulavx226seal_whole_vaes_clmul_avx2EB6_.exit.i, %bb.g, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvMNtNtCs5yxAJGbRKSL_4ring5error14input_too_longINtB2_17InputTooLongErroryE3newB6_(i64 noundef returned %0) unnamed_addr #5 {
bb.a:
  ret i64 %0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvMNtNtCs5yxAJGbRKSL_4ring5error14input_too_longNtB2_17InputTooLongError3newB6_(i64 noundef returned %0) unnamed_addr #5 {
bb.a:
  ret i64 %0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvMNtNtCs5yxAJGbRKSL_4ring5error18len_mismatch_errorNtB2_16LenMismatchError3new(i64 noundef returned %0) unnamed_addr #5 {
bb.a:
  ret i64 %0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc i64 @_RNvMNtNtCs5yxAJGbRKSL_4ring6digest12finish_errorNtB2_11FinishError14input_too_long(i64 noundef %0) unnamed_addr #5 {
bb.a:
  ret i64 %0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc i64 @_RNvMNtNtCs5yxAJGbRKSL_4ring6digest12finish_errorNtB2_11FinishError27pending_not_a_partial_block(i64 noundef %0) unnamed_addr #5 {
bb.a:
  ret i64 %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyNtB2_14ValidatedInput17try_from_be_bytes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2, i64 noundef range(i64 4096, 8193) %3, i64 noundef range(i64 3, 65538) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2212
  call fastcc void @_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus5valueNtB2_14ValidatedInput17try_from_be_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.e), !noalias !2213
  %i.f = load ptr, ptr %i.b, align 8, !noalias !2212, !noundef !15 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !2212 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !2212 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2212
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.620.0.copyload.i = load i64, ptr %.sroa.620.0..sroa_idx.i, align 8, !noalias !2212 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2212
  %i.l = icmp ugt i64 %2, 1023
  br i1 %i.l, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #41, !noalias !2213
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = and i64 %.sroa.620.0.copyload.i, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i64
  %i.p = lshr i64 %.sroa.620.0.copyload.i, 3
  %i.q = add nuw nsw i64 %i.p, %i.o               ; 2 uses
  %i.r = icmp samesign ugt i64 %i.q, 2305843009213693951
  br i1 %i.r, label %.split.i, label %.split22.i, !prof !16

.split.i:                                         ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #41, !noalias !2213
  unreachable

.split22.i:                                       ; preds = %bb.e
  %i.s = shl nuw i64 %i.q, 3
  %i.t = icmp ult i64 %i.s, %2
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split22.i
  %i.u = icmp ugt i64 %.sroa.620.0.copyload.i, %3
  br i1 %i.u, label %bb.g, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusNtB2_14ValidatedInput13from_be_bytes.exit

bb.g:                                             ; preds = %bb.f, %bb.b, %.split22.i
  %.sroa.14.0.ph = phi i64 [ %i.k, %bb.b ], [ 8, %.split22.i ], [ 8, %bb.f ]
  %.sroa.8.0.ph = phi ptr [ %i.i, %bb.b ], [ @124, %.split22.i ], [ @123, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.ph) ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.ph, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.0.ph, ptr %i.w, align 8
  store ptr null, ptr %0, align 8
  br label %bb.m

_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusNtB2_14ValidatedInput13from_be_bytes.exit: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !15, !noundef !15 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !15 ; 7 uses
  %i.ab = icmp ugt i64 %i.aa, 5
  br i1 %i.ab, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusNtB2_14ValidatedInput13from_be_bytes.exit
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %i.y, align 1, !alias.scope !2214, !noalias !2215, !noundef !15
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %.split.i.i

.split.i.i:                                       ; preds = %bb.i
  %i.ae = load i8, ptr %i.y, align 1, !alias.scope !2214, !noalias !2215, !noundef !15
  %.sroa.65.8.insert.ext.i.i.i = zext i8 %i.ae to i64 ; 3 uses
  %i.af = icmp eq i64 %i.aa, 1
  br i1 %i.af, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNCNvMNtNtNtCs5yxAJGbRKSL_4ring3rsa4base15public_exponentNtB10_14PublicExponent13from_be_bytes0yNtNtNtB16_5error12key_rejected11KeyRejectedEB16_.exit.i, label %.split.i.i.1

end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair4sign:bb.a
  store i64 1, ptr %0, align 8
  br label %bb.aa

bb.i:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.516.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9.0..sroa_idx4, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !2830
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  store ptr %i.ax, ptr %i.am, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store i64 %i.ba, ptr %.sroa.415.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %1, ptr %i.al, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %2, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %3, ptr %i.be, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !2837, !nonnull !15, !align !17, !noundef !15 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !2837, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !2837, !nonnull !15, !align !17, !noundef !15 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !2837, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2837
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 256 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 8, !range !34, !noalias !2837, !noundef !15 ; 2 uses
  store ptr %i.bl, ptr %i.ag, align 8, !noalias !2837
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i8 %i.bn, ptr %i.bo, align 8, !noalias !2837
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.bi, ptr %i.bp, align 8, !noalias !2837
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 112 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2837
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 89
  %i.bs = load i8, ptr %i.br, align 1, !range !44, !noalias !2837, !noundef !15
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = trunc nuw i8 %i.bn to i1                ; 4 uses
  %..i.i = select i1 %i.bu, i64 48, i64 32
  %.sroa.5.0.i.i = call i64 @llvm.umin.i64(i64 range(i64 20, 65) %i.bt, i64 %..i.i)
  %..i.i.i = select i1 %i.bu, i64 6, i64 4        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2838
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false), !noalias !2838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2839
  store ptr %i.r, ptr %i.q, align 8, !noalias !2839
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %..i.i.i, ptr %i.bv, align 8, !noalias !2839
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.bw, align 8, !noalias !2839
  %i.bx = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.415.0..sroa_idx, i64 noundef range(i64 20, 49) %.sroa.5.0.i.i, i64 noundef range(i64 4, 7) %..i.i.i), !noalias !2840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2839
  %i.by = extractvalue { i64, i64 } %i.bx, 0
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.j, label %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2838
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #41, !noalias !2841
  unreachable

_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i: ; preds = %bb.i
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !2843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2838
  %i.ca = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.cf = getelementptr i8, ptr %i.bk, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  br label %.split.i

bb.k:                                             ; preds = %bb.y
  store i64 1, ptr %0, align 8, !alias.scope !2836, !noalias !2844
  br label %_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair11sign_digest.exit

.split.i:                                         ; preds = %bb.y, %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i
  %.sroa.03.023.i = phi i32 [ 0, %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i ], [ %i.cx, %bb.y ]
  %i.cx = add nuw nsw i32 %.sroa.03.023.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2837
  %i.cy = load ptr, ptr %i.bj, align 8, !noalias !2845, !nonnull !15, !align !17, !noundef !15
  %.val6.i = load ptr, ptr %i.cy, align 8, !noalias !2845, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2846
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.p, i8 0, i64 48, i1 false), !noalias !2846
  %i.cz = getelementptr inbounds nuw i8, ptr %.val6.i, i64 256 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !range !34, !noalias !2847, !noundef !15
  %i.db = trunc nuw i8 %i.da to i1                ; 4 uses
  %..i16.i = select i1 %i.db, i64 48, i64 32      ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val6.i, i64 112
  %i.dd = lshr exact i64 %..i16.i, 3              ; 4 uses
  %i.de = add nsw i64 %..i16.i, -8                ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.de
  %i.dg = add nsw i64 %..i16.i, -16               ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dg
  %.not.i46.i.i.1.not = icmp eq i64 %i.de, 8
  %i.di = call i64 @llvm.usub.sat.i64(i64 %i.dg, i64 8) ; 4 uses
  %.not.i.i.i.i.i.i24.i.2 = icmp eq i64 %i.dg, 0
  %i.dj = sub nuw nsw i64 %i.dg, %i.di            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.di
  %i.dl = sub nuw nsw i64 8, %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dl
  %i.dn = call i64 @llvm.usub.sat.i64(i64 %i.dg, i64 16) ; 3 uses
  %i.do = sub nuw nsw i64 %i.di, %i.dn            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dn
  %i.dq = sub nuw nsw i64 8, %i.do
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dq
  %.not.i46.i.i.3 = icmp samesign ugt i64 %i.di, 8
  %i.ds = call i64 @llvm.usub.sat.i64(i64 %i.dg, i64 24) ; 4 uses
  %i.dt = sub nuw nsw i64 %i.dn, %i.ds            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ds
  %i.dv = sub nuw nsw i64 8, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dv
  %i.dx = call i64 @llvm.usub.sat.i64(i64 %i.dg, i64 32) ; 2 uses
  %i.dy = sub nuw nsw i64 %i.ds, %i.dx            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dx
  %i.ea = sub nuw nsw i64 8, %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ea
  %.not.i46.i.i.5 = icmp samesign ugt i64 %i.ds, 8
  br label %bb.l

bb.l:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i, %.split.i
  %.sroa.01.01.i.i = phi i32 [ 0, %.split.i ], [ %i.ed, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i ]
  %i.ec = call noundef zeroext i1 @_RNvXs2_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_11NonceRandomNtNtNtBd_4rand6sealed12SecureRandom9fill_impl(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull %i.p, i64 noundef range(i64 0, -9223372036854775808) %..i16.i), !noalias !2847
  br i1 %i.ec, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = add nuw nsw i32 %.sroa.01.01.i.i, 1     ; 2 uses
  %i.ee = load i8, ptr %i.cz, align 8, !range !34, !noalias !2848, !noundef !15
  %i.ef = trunc nuw i8 %i.ee to i1                ; 4 uses
  %..i.i.i.i.i = select i1 %i.ef, i64 6, i64 4    ; 5 uses
  %i.eg = xor i1 %i.db, %i.ef
  br i1 %i.eg, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2849
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 0, i64 48, i1 false), !noalias !2849
  call void @llvm.experimental.noalias.scope.decl(metadata !2850), !noalias !2851
  %i.eh = icmp samesign ugt i64 %i.dd, %..i.i.i.i.i
  br i1 %i.eh, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, label %.lr.ph.i.i.i, !prof !16

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ei = sub nuw nsw i64 %..i.i.i.i.i, %i.dd     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  %i.ej = load i64, ptr %i.df, align 1, !alias.scope !2853, !noalias !2854 ; 2 uses
  store i64 %i.ej, ptr %i.b, align 8, !alias.scope !2853, !noalias !2854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  %i.ek = call i64 @llvm.bswap.i64(i64 %i.ej)
  store i64 %i.ek, ptr %i.e, align 16, !alias.scope !2855, !noalias !2856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  %i.el = load i64, ptr %i.dh, align 1, !alias.scope !2853, !noalias !2854 ; 2 uses
  store i64 %i.el, ptr %i.b, align 8, !alias.scope !2853, !noalias !2854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  %i.em = call i64 @llvm.bswap.i64(i64 %i.el)
  store i64 %i.em, ptr %i.ck, align 8, !alias.scope !2855, !noalias !2856
  br i1 %.not.i46.i.i.1.not, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i, label %bb.o

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i: ; preds = %bb.q, %bb.p, %bb.o
  %.lcssa.sroa.phi = phi ptr [ %.lcssa.sroa.gep95, %bb.q ], [ %.lcssa.sroa.gep93, %bb.p ], [ %.lcssa.sroa.gep91, %bb.o ]
  %.lcssa = phi i64 [ 6, %bb.q ], [ 4, %bb.p ], [ 2, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  %i.en = icmp eq i64 %..i.i.i.i.i, %.lcssa
  br i1 %i.en, label %.loopexit39.i, label %.lr.ph.i.i.i.i.i.i.i.thread.i

.lr.ph.i.i.i.i.i.i.i.thread.i:                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i
  store i64 0, ptr %.lcssa.sroa.phi, align 8, !alias.scope !2855, !noalias !2856
  %i.eo = add nuw nsw i64 %.lcssa, 1
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  br i1 %.not.i.i.i.i.i.i24.i.2, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr nonnull readonly align 1 %i.dk, i64 range(i64 0, 129) %i.dj, i1 false), !alias.scope !2853, !noalias !2854
  %.sroa.0.0.copyload.pre.i.i.i.i.i.2 = load i64, ptr %i.b, align 8, !noalias !2852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  %i.ep = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.2)
  store i64 %i.ep, ptr %i.cl, align 16, !alias.scope !2855, !noalias !2856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr nonnull readonly align 1 %i.dp, i64 range(i64 0, 129) %i.do, i1 false), !alias.scope !2853, !noalias !2854
  %.sroa.0.0.copyload.pre.i.i.i.i.i.3 = load i64, ptr %i.b, align 8, !noalias !2852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  %i.eq = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.3)
  store i64 %i.eq, ptr %i.cm, align 8, !alias.scope !2855, !noalias !2856
  br i1 %.not.i46.i.i.3, label %bb.p, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

bb.p:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  br i1 %i.db, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr nonnull readonly align 1 %i.du, i64 range(i64 0, 129) %i.dt, i1 false), !alias.scope !2853, !noalias !2854
  %.sroa.0.0.copyload.pre.i.i.i.i.i.4 = load i64, ptr %i.b, align 8, !noalias !2852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.i.4, label %.loopexit39.i

.lr.ph.i.i.i.i.i.i.i.i.4:                         ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4
  %i.er = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.4)
  store i64 %i.er, ptr %i.cn, align 16, !alias.scope !2855, !noalias !2856
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr nonnull readonly align 1 %i.dz, i64 range(i64 0, 129) %i.dy, i1 false), !alias.scope !2853, !noalias !2854
  %.sroa.0.0.copyload.pre.i.i.i.i.i.5 = load i64, ptr %i.b, align 8, !noalias !2852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2852
  %i.es = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i.i.i.5)
  store i64 %i.es, ptr %i.co, align 8, !alias.scope !2855, !noalias !2856
  br i1 %.not.i46.i.i.5, label %bb.q, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2852
  store i64 0, ptr %i.b, align 8, !noalias !2852
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i

.loopexit39.i:                                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.thread.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.4
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #41, !noalias !2857
  unreachable

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.thread.i
  %i.et = phi i64 [ %.lcssa, %.lr.ph.i.i.i.i.i.i.i.thread.i ], [ 3, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2 ], [ 1, %.lr.ph.i.i.i ], [ 5, %.lr.ph.i.i.i.i.i.i.i.i.4 ] ; 2 uses
  %i.eu = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.thread.i ], [ 4, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.2 ], [ 2, %.lr.ph.i.i.i ], [ 6, %.lr.ph.i.i.i.i.i.i.i.i.4 ] ; 2 uses
  %.not.not.i = icmp samesign ugt i64 %i.dd, %i.et
  br i1 %.not.not.i, label %bb.r, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i

bb.r:                                             ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i
  %i.ev = icmp eq i64 %..i.i.i.i.i, %i.dd
  br i1 %i.ev, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.r
  %.idx.i.i.i = shl nuw nsw i64 %i.ei, 3
  %i.ew = getelementptr [8 x i8], ptr %i.e, i64 %i.eu
  call void @llvm.memset.p0.i64(ptr align 8 %i.ew, i8 0, i64 %.idx.i.i.i, i1 false), !alias.scope !2858, !noalias !2859
  br label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i, %bb.r
  %i.ex = add nuw i64 %i.eu, %i.ei
  %.not80.i.i = icmp ugt i64 %i.ex, %i.et
  br i1 %.not80.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #41, !noalias !2860
  unreachable

_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i: ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i.i.i
  %i.ey = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.e, ptr noundef nonnull readonly align 8 %i.dc, i64 noundef range(i64 4, 7) %..i.i.i.i.i) #36, !noalias !2861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2862
  store i64 %i.ey, ptr %i.c, align 8, !noalias !2862
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.c) #36, !noalias !2861, !srcloc !37
  %i.ez = load i64, ptr %i.c, align 8, !noalias !2862, !noundef !15
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ez, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2862
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, label %vector.body75.1

vector.body75.1:                                  ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i
  %wide.load78 = load <2 x i64>, ptr %i.e, align 16, !alias.scope !2850, !noalias !2863
  %wide.load78.1 = load <2 x i64>, ptr %i.cp, align 16, !alias.scope !2850, !noalias !2863
  %i.fa = or <2 x i64> %wide.load78.1, %wide.load78 ; 2 uses
  %wide.load78.2 = load <2 x i64>, ptr %i.cq, align 16
  %i.fb = or <2 x i64> %wide.load78.2, %i.fa
  %.lcssa86 = select i1 %i.ef, <2 x i64> %i.fb, <2 x i64> %i.fa
  %i.fc = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa86)
  %i.fd = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.fc) #36, !noalias !2861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2864
  store i64 %i.fd, ptr %i.d, align 8, !noalias !2864
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.d) #36, !noalias !2861, !srcloc !37
  %i.fe = load i64, ptr %i.d, align 8, !noalias !2864, !noundef !15
  %.not.i.not.i.i.i.not.i.i = icmp eq i64 %i.fe, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2849
  br i1 %.not.i.not.i.i.i.not.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i, %vector.body75.1, %bb.m
  %exitcond.not.i.i = icmp eq i32 %i.ed, 100
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.l

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i.i.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded.exit.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2849
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i: ; preds = %vector.body75.1
  %i.ff = xor i1 %i.bu, %i.db
  br i1 %i.ff, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2865
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.o, i8 0, i64 48, i1 false), !noalias !2865
  call void @llvm.experimental.noalias.scope.decl(metadata !2866)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2867
  store ptr %i.o, ptr %i.m, align 8, !noalias !2867
  store i64 %..i.i.i, ptr %i.ca, align 8, !noalias !2867
  store i64 0, ptr %i.cb, align 8, !noalias !2867
  %i.fg = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef range(i64 0, -9223372036854775808) %..i16.i, i64 noundef range(i64 4, 7) %..i.i.i), !noalias !2868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2867
  %i.fh = extractvalue { i64, i64 } %i.fg, 0
  %i.fi = trunc nuw i64 %i.fh to i1
  br i1 %i.fi, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i: ; preds = %bb.t
  %i.fj = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.o, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 4, 7) %..i.i.i) #36, !noalias !2869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2870
  store i64 %i.fj, ptr %i.l, align 8, !noalias !2870
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.l) #36, !noalias !2869, !srcloc !37
  %i.fk = load i64, ptr %i.l, align 8, !noalias !2870, !noundef !15
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2870
  br i1 %.not.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i, label %vector.body68.1

vector.body68.1:                                  ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i
  %wide.load71 = load <2 x i64>, ptr %i.o, align 16, !alias.scope !2866, !noalias !2871
  %wide.load71.1 = load <2 x i64>, ptr %i.cr, align 16, !alias.scope !2866, !noalias !2871
  %i.fl = or <2 x i64> %wide.load71.1, %wide.load71 ; 2 uses
  %wide.load71.2 = load <2 x i64>, ptr %i.cs, align 16
  %i.fm = or <2 x i64> %wide.load71.2, %i.fl
  %.lcssa87 = select i1 %i.bu, <2 x i64> %i.fm, <2 x i64> %i.fl
  %i.fn = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa87)
  %i.fo = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.fn) #36, !noalias !2869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2872
  store i64 %i.fo, ptr %i.n, align 8, !noalias !2872
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.n) #36, !noalias !2869, !srcloc !37
  %i.fp = load i64, ptr %i.n, align 8, !noalias !2872, !noundef !15
  %.not.i.not.i.i.i.i = icmp eq i64 %i.fp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2872
  br i1 %.not.i.not.i.i.i.i, label %bb.u, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i: ; preds = %vector.body68.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2865
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes.exit.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge.i.i, %bb.l, %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2846
  store i64 1, ptr %0, align 8, !alias.scope !2836, !noalias !2844
  br label %bb.z

bb.u:                                             ; preds = %vector.body68.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2837
  call void @llvm.experimental.noalias.scope.decl(metadata !2873)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2874
  call void @llvm.experimental.noalias.scope.decl(metadata !2875)
  %i.fq = load ptr, ptr %i.bg, align 8, !alias.scope !2876, !noalias !2877, !nonnull !15, !align !17, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.cc, i64 48, i1 false), !noalias !2877
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !2879, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false), !noalias !2878
  call void %i.fs(ptr noundef nonnull %i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ae, ptr noundef nonnull %i.j) #36, !noalias !2880, !inline_history !2812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !2881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2878
  %i.ft = load ptr, ptr %i.cd, align 8, !alias.scope !2873, !noalias !2882, !nonnull !15, !noundef !15
  call void %i.ft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.k), !noalias !2883, !inline_history !2813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2837
  %i.fu = load ptr, ptr %i.ce, align 8, !noalias !2845, !nonnull !15, !noundef !15
  call void %i.fu(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae), !noalias !2845, !inline_history !2814
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2837
  %.val9.i = load ptr, ptr %i.cf, align 8, !noalias !2845
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key20affine_from_jacobian(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.aa, ptr %.val9.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac), !noalias !2845
  %i.fv = load i64, ptr %i.aa, align 8, !range !22, !noalias !2837, !noundef !15
  %i.fw = trunc nuw i64 %i.fv to i1
  br i1 %i.fw, label %bb.v, label %vector.ph60

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2837
  store i64 1, ptr %0, align 8, !alias.scope !2836, !noalias !2844
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  br label %bb.x

vector.ph60:                                      ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(96) %i.cg, i64 96, i1 false), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.42.i, i64 48, i1 false), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2837
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cj, i8 0, i64 40, i1 false), !noalias !2837
  store i64 1, ptr %i.w, align 8, !noalias !2837
  %i.fx = load ptr, ptr %i.bi, align 8, !noalias !2845, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2837
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false), !noalias !2837
  call void %i.fx(ptr noundef nonnull %i.v, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.w) #36, !noalias !2845, !inline_history !2814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2837
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 %i.h, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !2886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2837
  %i.fy = load ptr, ptr %i.ch, align 8, !noalias !2845, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2837
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false), !noalias !2837
  call void %i.fy(ptr noundef nonnull %i.u, ptr noundef nonnull readonly %i.ci, ptr noundef nonnull %i.z) #36, !noalias !2845, !inline_history !2814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !2837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2837
  call void @ring_core_0_17_16000__LIMBS_add_mod(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.af, ptr noundef nonnull readonly align 8 %i.bq, i64 noundef range(i64 0, 1152921504606846976) %..i.i.i) #36, !noalias !2887
  %i.fz = load ptr, ptr %i.ch, align 8, !noalias !2845, !nonnull !15, !noundef !15
end_hunk_3
begin_hunk_4_@_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair4sign:bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <2 x i64> %i.fb, ptr %i.fd, align 32, !alias.scope !3456, !noalias !3457
  store <2 x i64> %i.fc, ptr %i.fe, align 16, !alias.scope !3456, !noalias !3457
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !3127

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader: ; preds = %vector.body, %bb.ai
  %.sroa.9.0.i.i.i.i.i.i.ph = phi i64 [ 0, %bb.ai ], [ %n.vec, %vector.body ]
  %.sroa.0.02.i.i.i.i.i.i.i.ph = phi ptr [ %i.dn, %bb.ai ], [ %i.ey, %vector.body ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.02.i.i.i.i.i.i.i = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.fg = icmp eq i64 %i.da, %.sroa.9.0.i.i.i.i.i.i
  br i1 %i.fg, label %bb.aj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.val.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i, align 8, !alias.scope !3454, !noalias !3455, !noundef !15
  %i.fh = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i, -1
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.sroa.9.0.i.i.i.i.i.i
  store i64 %i.fh, ptr %i.fj, align 8, !alias.scope !3456, !noalias !3457
  %i.fk = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i, 1 ; 2 uses
  %i.fl = icmp eq ptr %i.fi, %i.ep
  br i1 %i.fl, label %bb.ak, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !3128

bb.aj:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !3458
  unreachable

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fm = load i64, ptr %i.dt, align 64, !alias.scope !3459, !noalias !3460, !noundef !15
  %i.fn = or i64 %i.fm, 1
  store i64 %i.fn, ptr %i.dt, align 64, !alias.scope !3459, !noalias !3460
  %i.fo = call fastcc { i64, i64 } @_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127scatter8scatter5(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dt, i64 noundef %i.fk, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, i64 noundef 0), !noalias !3446
  %i.fp = extractvalue { i64, i64 } %i.fo, 0
  %.not71.i.i.i.i = icmp eq i64 %i.fp, -1
  %.not.i101.i.i.i.i = icmp eq i64 %i.da, %i.em
  %or.cond.i.i = and i1 %.not.i101.i.i.i.i, %.not71.i.i.i.i
  br i1 %or.cond.i.i, label %bb.al, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i, !prof !3461

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.dt, ptr nonnull readonly align 8 %i.eo, i64 %i.dz, i1 false), !alias.scope !3462, !noalias !3463
  %i.fq = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef 1, i1 noundef zeroext %not.brmerge.i78.i.i.i.i)
  %.not72.i.i.i.i = icmp eq i64 %i.fq, -1
  br i1 %.not72.i.i.i.i, label %.split.split.split.us.i.preheader.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i

.split.split.split.us.i.preheader.i.i.i:          ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3445
  store i64 1, ptr %i.o, align 8, !noalias !3445
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !3445
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3445
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 31, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3445
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 0, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3445
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 5 uses
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3445
  br i1 %.sroa.0.0.i76.i.i.i.i, label %.split.split.split.us.i.us.i.i.i, label %.split.split.split.us.i.i.i.i

.split.split.split.us.i.us.i.i.i:                 ; preds = %.split.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i
  %i.fr = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !range !34, !noalias !3445, !noundef !15
  %i.fs = trunc nuw i8 %i.fr to i1
  %i.ft = load i64, ptr %i.o, align 8, !noalias !3445
  %.sroa.066.0.us91.i.us.i.i.i = select i1 %i.fs, i64 0, i64 %i.ft
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3445
  %i.fu = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i.i, i64 noundef %.sroa.066.0.us91.i.us.i.i.i) #40, !noalias !3446 ; 2 uses
  %i.fv = extractvalue { i64, i64 } %i.fu, 0
  %i.fw = extractvalue { i64, i64 } %i.fu, 1      ; 3 uses
  %i.fx = trunc nuw i64 %i.fv to i1
  br i1 %i.fx, label %bb.am, label %.split86.us.i.i.i.i

bb.am:                                            ; preds = %.split.split.split.us.i.us.i.i.i
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %.split88.us.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i: ; preds = %bb.am
  %i.fz = add i64 %i.fw, -1
  call void @ring_core_0_17_16000__bn_mulx4x_mont_gather5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull readonly align 8 %i.eo, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.da, i64 noundef range(i64 0, -1) %i.fz) #36, !noalias !3446
  %i.ga = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.fw, i1 noundef zeroext %not.brmerge.i78.i.i.i.i)
  %.not74.us.i.us.i.i.i = icmp eq i64 %i.ga, -1
  br i1 %.not74.us.i.us.i.i.i, label %.split.split.split.us.i.us.i.i.i, label %.split93.us.i.i.i.i

.split.split.split.us.i.i.i.i:                    ; preds = %.split.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i
  %i.gb = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !range !34, !noalias !3445, !noundef !15
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = load i64, ptr %i.o, align 8, !noalias !3445
  %.sroa.066.0.us91.i.i.i.i = select i1 %i.gc, i64 0, i64 %i.gd
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3445
  %i.ge = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i.i, i64 noundef %.sroa.066.0.us91.i.i.i.i) #40, !noalias !3446 ; 2 uses
  %i.gf = extractvalue { i64, i64 } %i.ge, 0
  %i.gg = extractvalue { i64, i64 } %i.ge, 1      ; 3 uses
  %i.gh = trunc nuw i64 %i.gf to i1
  br i1 %i.gh, label %bb.an, label %.split86.us.i.i.i.i

bb.an:                                            ; preds = %.split.split.split.us.i.i.i.i
  %i.gi = icmp eq i64 %i.gg, 0
  br i1 %i.gi, label %.split88.us.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i: ; preds = %bb.an
  %i.gj = add i64 %i.gg, -1
  call void @ring_core_0_17_16000__bn_mul4x_mont_gather5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull readonly align 8 %i.eo, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.da, i64 noundef range(i64 0, -1) %i.gj) #36, !noalias !3446
  %i.gk = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.gg, i1 noundef zeroext %not.brmerge.i78.i.i.i.i)
  %.not74.us.i.i.i.i = icmp eq i64 %i.gk, -1
  br i1 %.not74.us.i.i.i.i, label %.split.split.split.us.i.i.i.i, label %.split93.us.i.i.i.i

.split86.us.i.i.i.i:                              ; preds = %.split.split.split.us.i.i.i.i, %.split.split.split.us.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3445
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3464)
  %i.gl = icmp samesign ugt i64 %.val1.i.i, 288230376151711743
  br i1 %i.gl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.split86.us.i.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #41, !noalias !3465
  unreachable

bb.ap:                                            ; preds = %.split86.us.i.i.i.i
  %.not.i12.i.i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i12.i.i.i, label %bb.aq, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i, !prof !16

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41, !noalias !3465
  unreachable

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i: ; preds = %bb.ap
  %i.gm = shl nuw i64 %.val1.i.i, 6
  %i.gn = urem i64 %i.gm, 5                       ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  %i.gp = sub nuw nsw i64 64, %i.gn
  %i.gq = select i1 %i.go, i64 59, i64 %i.gp      ; 2 uses
  %i.gr = load i64, ptr %.val.i.i, align 8, !alias.scope !3464, !noalias !3466, !noundef !15
  %i.gs = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %i.gr, i64 noundef 0, i64 noundef %i.gq) #36, !noalias !3465
  %i.gt = add nsw i64 %i.gq, -5
  call void @ring_core_0_17_16000__bn_gather5(ptr noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noundef nonnull %i.q, i64 noundef %i.gs) #36, !noalias !3467
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i: ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i
  %.sroa.011.0.us.us.us.i.i.i.i = phi i64 [ %.val.i.us.us.us.i.i.i.i, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ]
  %.sroa.0.0.us.us.us.i.i.i.i = phi i64 [ %i.hf, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ %i.gt, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 4 uses
  %.sroa.05.0.i.us.us.us.i.i.i.i = phi i64 [ %i.hg, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.sroa.05.0.i.us.us.us.i.i.i.i
  %.val.i.us.us.us.i.i.i.i = load i64, ptr %i.gu, align 8, !alias.scope !3464, !noalias !3468, !noundef !15 ; 4 uses
  %i.gv = icmp ugt i64 %.sroa.0.0.us.us.us.i.i.i.i, 59
  br i1 %i.gv, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %i.gw = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.011.0.us.us.us.i.i.i.i, i64 noundef %.sroa.0.0.us.us.us.i.i.i.i) #36, !noalias !3469 ; 2 uses
  %i.gx = add i64 %.sroa.0.0.us.us.us.i.i.i.i, -5 ; 3 uses
  br i1 %.sroa.0.0.i76.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gw) #36, !noalias !3470
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

bb.as:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gw) #36, !noalias !3470
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i: ; preds = %bb.as, %bb.ar
  %i.gy = icmp ult i64 %i.gx, 64
  br i1 %i.gy, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %.sroa.0.1.us.us.us.i.i.i.i = phi i64 [ %i.gx, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %.sroa.0.0.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i ] ; 2 uses
  br i1 %.sroa.0.0.i76.i.i.i.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i
  %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i = phi i64 [ %i.ha, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i ], [ %.sroa.0.1.us.us.us.i.i.i.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i ] ; 2 uses
  %i.gz = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i) #36, !noalias !3471
  %i.ha = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gz) #36, !noalias !3472
  %i.hb = icmp ult i64 %i.ha, 64
  br i1 %i.hb, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i
  %.sroa.0.2.us.us.us.us.us.us.i.i.i.i = phi i64 [ %i.hd, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i ], [ %.sroa.0.1.us.us.us.i.i.i.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i ] ; 2 uses
  %i.hc = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.i.i.i) #36, !noalias !3471
  %i.hd = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.i.i.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.hc) #36, !noalias !3472
  %i.he = icmp ult i64 %i.hd, 64
  br i1 %i.he, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i: ; preds = %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i
  %.lcssa.i.i.us.us.us.i.i.i.i = phi i64 [ %i.gx, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %i.ha, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i ], [ %i.hd, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i ]
  %i.hf = add i64 %.lcssa.i.i.us.us.us.i.i.i.i, 64
  %i.hg = add nuw nsw i64 %.sroa.05.0.i.us.us.us.i.i.i.i, 1 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, %.val1.i.i
  br i1 %i.hh, label %.lr.ph.i.i.preheader.i.i.i.i, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.t, ptr nonnull readonly align 64 %i.dt, i64 %i.dz, i1 false), !alias.scope !3473, !noalias !3474
  call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  store i64 1, ptr %i.ab, align 8, !alias.scope !3476, !noalias !3477
  %.idx.i.i.i.i.i = add nsw i64 %i.dz, -8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hi, i8 0, i64 range(i64 0, 1017) %.idx.i.i.i.i.i, i1 false), !alias.scope !3478, !noalias !3479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3480
  store ptr %i.t, ptr %i.l, align 8, !noalias !3480
  %i.hj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.da, ptr %i.hj, align 8, !noalias !3480
  %i.hk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.ab, ptr %i.hk, align 8, !noalias !3480
  %i.hl = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.da, ptr %i.hl, align 8, !noalias !3480
  %i.hm = icmp ugt i64 %i.cz, 15
  br i1 %i.hm, label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i.preheader.i.i.i.i
  call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 dereferenceable(1024) %i.t, ptr noundef nonnull align 8 dereferenceable(1024) %i.t, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da) #36, !noalias !3481, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3480
  br label %bb.au

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i
  %i.hn = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3482, !noundef !15 ; 2 uses
  %i.ho = icmp ne i32 %i.hn, 0
  call void @llvm.assume(i1 %i.ho), !noalias !3483
  %i.hp = and i32 %i.hn, 1536
  %brmerge.i.not.i.i.i.i = icmp eq i32 %i.hp, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dn, i64 noundef %i.ei, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i1 noundef zeroext %brmerge.i.not.i.i.i.i) #40, !noalias !3484
  %.pre.i.i.i.i = load i64, ptr %i.m, align 8, !range !22, !noalias !3480
  %i.hq = trunc nuw i64 %.pre.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3480
  br i1 %i.hq, label %bb.at, label %bb.au, !prof !16

bb.at:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !range !23, !noalias !3480, !noundef !15
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.hs) #39
  unreachable

.split88.us.i.i.i.i:                              ; preds = %bb.an, %bb.am
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41, !noalias !3446
  unreachable

.split93.us.i.i.i.i:                              ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3445
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i

_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i: ; preds = %.split93.us.i.i.i.i, %bb.al, %bb.ak, %bb.ah, %bb.ag, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3445
  br label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38

bb.au:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3445
  call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  call void @llvm.experimental.noalias.scope.decl(metadata !3486)
  call void @llvm.experimental.noalias.scope.decl(metadata !3487)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i92.i = load ptr, ptr %i.ht, align 8, !alias.scope !3488, !noalias !3489 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i93.i = load i64, ptr %i.hu, align 8, !alias.scope !3488, !noalias !3489 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3490)
  call void @llvm.experimental.noalias.scope.decl(metadata !3491)
  %i.hv = icmp ult i64 %.val67.i, 2
  br i1 %i.hv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !3492
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hw = add i64 %.val67.i, -2                   ; 9 uses
  %i.hx = lshr i64 %i.hw, 1                       ; 32 uses
  %i.hy = add nuw i64 %i.hx, 2                    ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.val66.i, i64 %i.hy
  %i.ia = sub nuw nsw i64 %.val67.i, %i.hy
  %i.ib = getelementptr inbounds nuw i8, ptr %.val66.i, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !3493, !noalias !3494, !noundef !15
  %.not.i.i.i.i94.i = icmp eq i64 %i.ic, %i.hx
  br i1 %.not.i.i.i.i94.i, label %bb.ax, label %bb.az, !prof !19

bb.ax:                                            ; preds = %bb.aw
  %i.id = icmp ult i64 %i.hw, 8
  br i1 %i.id, label %bb.az, label %bb.ay, !prof !16

bb.ay:                                            ; preds = %bb.ax
  %i.ie = icmp ugt i64 %i.hw, 257
  br i1 %i.ie, label %bb.az, label %bb.ba, !prof !16

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.sroa.42.0.ph.i.i.i95.i = phi i64 [ 0, %bb.aw ], [ 1, %bb.ax ], [ 2, %bb.ay ]
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1QEEB6_(i64 noundef %.sroa.42.0.ph.i.i.i95.i) #39
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !3495)
  call void @llvm.experimental.noalias.scope.decl(metadata !3496)
  %i.if = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3497, !noundef !15 ; 3 uses
  %i.ig = icmp ne i32 %i.if, 0
  call void @llvm.assume(i1 %i.ig)
  %i.ih = and i32 %i.if, 1536
  %not.brmerge.i78.i.i.i98.i = icmp eq i32 %i.ih, 1536 ; 4 uses
  %i.ii = and i32 %i.if, 1664
  %.sroa.0.0.i76.i.i.i99.i = icmp eq i32 %i.ii, 1664 ; 3 uses
  %.not.i91.i.i.i100.i = icmp eq i64 %i.hx, 0
  br i1 %.not.i91.i.i.i100.i, label %bb.bb, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i, !prof !16

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41, !noalias !3498
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i: ; preds = %bb.ba
  %i.ij = and i64 %i.hw, 510
  %.not70.i.i.i101.i = icmp eq i64 %i.cv, %i.ij
  br i1 %.not70.i.i.i101.i, label %bb.bc, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, !prof !19

bb.bc:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.val66.i, i64 16 ; 9 uses
  %i.il = lshr i64 %i.hw, 4                       ; 5 uses
  %i.im = and i64 %i.hw, 14
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, !prof !19

_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i: ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3497
  %i.io = icmp samesign ult i64 %i.hw, 80
  br i1 %i.io, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i
  %i.ip = shl nuw nsw i64 %i.il, 5                ; 5 uses
  %i.iq = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.ip ; 22 uses
  %i.ir = mul nuw nsw i64 %i.il, 24               ; 2 uses
  %.not.i93.i.i.i107.i = icmp samesign ugt i64 %i.hx, %i.ir
  br i1 %.not.i93.i.i.i107.i, label %bb.bd, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i, !prof !16

bb.bd:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #41, !noalias !3499
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i106.i
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.hx ; 2 uses
  %i.it = sub nuw nsw i64 %i.ir, %i.hx            ; 2 uses
  %.not.i94.i.i.i109.i = icmp samesign ugt i64 %i.hx, %i.it
  br i1 %.not.i94.i.i.i109.i, label %bb.be, label %bb.bf, !prof !16

bb.be:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #41, !noalias !3500
  unreachable

bb.bf:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i108.i
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.hx ; 11 uses
  %i.iv = sub nuw nsw i64 %i.it, %i.hx
  %.not.i99.i.i.i110.i = icmp eq i64 %i.iv, %i.hx
  br i1 %.not.i99.i.i.i110.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i, !prof !19

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i: ; preds = %bb.bf
  %i.iw = shl nuw nsw i64 %i.hx, 3                ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.iu, ptr nonnull readonly align 8 %i.ik, i64 %i.iw, i1 false), !alias.scope !3501, !noalias !3502
  call void @llvm.experimental.noalias.scope.decl(metadata !3503)
  call void @llvm.experimental.noalias.scope.decl(metadata !3504)
  %i.ix = icmp samesign ugt i64 %i.cv, 128
  br i1 %i.ix, label %bb.bg, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i

bb.bg:                                            ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #41, !noalias !3505
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i: ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i
  %i.iy = shl nuw nsw i64 %i.cv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.ct, i64 %i.iy, i1 false), !alias.scope !3506, !noalias !3507
  %i.iz = call noundef i32 @ring_core_0_17_16000__bn_from_montgomery_in_place(ptr noundef nonnull align 8 dereferenceable(1024) %i.s, i64 noundef %i.hx, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.cv, ptr noundef nonnull readonly align 8 %i.ik, i64 noundef range(i64 0, 1152921504606846976) %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i) #36, !noalias !3508
  %i.ja = icmp eq i32 %i.iz, 1
  br i1 %i.ja, label %_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i, label %bb.bh, !prof !19

bb.bh:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !noalias !3509
  unreachable

_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3497
  store ptr %i.is, ptr %i.h, align 8, !noalias !3497
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.hx, ptr %i.jb, align 8, !noalias !3497
  %i.jc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.s, ptr %i.jc, align 8, !noalias !3497
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.hx, ptr %i.jd, align 8, !noalias !3497
  %i.je = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.hz, ptr %i.je, align 8, !noalias !3497
  %i.jf = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.ia, ptr %i.jf, align 8, !noalias !3497
  %i.jg = lshr i64 %i.hw, 3                       ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill12uninit_slice6UninityERSyB1S_EEBa_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.jg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i) #40, !noalias !3498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3497
  %i.jh = load i64, ptr %i.j, align 8, !range !22, !noalias !3497, !noundef !15
  %i.ji = trunc nuw i64 %i.jh to i1
  %i.jj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !3497, !noundef !15
  br i1 %i.ji, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3497
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i
end_hunk_4
begin_hunk_5_@_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair4sign:bb.a
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %index146 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store <2 x i64> %i.jz, ptr %i.kb, align 32, !alias.scope !3514, !noalias !3515
  store <2 x i64> %i.ka, ptr %i.kc, align 16, !alias.scope !3514, !noalias !3515
  %index.next150 = add nuw i64 %index146, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.kd, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader, label %vector.body145, !llvm.loop !3249

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader: ; preds = %vector.body145, %bb.bj
  %.sroa.9.0.i.i.i.i.i113.i.ph = phi i64 [ 0, %bb.bj ], [ %n.vec144, %vector.body145 ]
  %.sroa.0.02.i.i.i.i.i.i114.i.ph = phi ptr [ %i.ik, %bb.bj ], [ %i.jw, %vector.body145 ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i115.i
  %.sroa.9.0.i.i.i.i.i113.i = phi i64 [ %i.ki, %.lr.ph.i.i.i.i.i.i.i.i.i115.i ], [ %.sroa.9.0.i.i.i.i.i113.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader ] ; 3 uses
  %.sroa.0.02.i.i.i.i.i.i114.i = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i.i.i.i.i115.i ], [ %.sroa.0.02.i.i.i.i.i.i114.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader ] ; 2 uses
  %i.ke = icmp eq i64 %i.hx, %.sroa.9.0.i.i.i.i.i113.i
  br i1 %i.ke, label %bb.bk, label %.lr.ph.i.i.i.i.i.i.i.i.i115.i

.lr.ph.i.i.i.i.i.i.i.i.i115.i:                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i
  %.sroa.0.0.val.i.i.i.i.i.i116.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i114.i, align 8, !alias.scope !3512, !noalias !3513, !noundef !15
  %i.kf = xor i64 %.sroa.0.0.val.i.i.i.i.i.i116.i, -1
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i114.i, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %.sroa.9.0.i.i.i.i.i113.i
  store i64 %i.kf, ptr %i.kh, align 8, !alias.scope !3514, !noalias !3515
  %i.ki = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i113.i, 1 ; 2 uses
  %i.kj = icmp eq ptr %i.kg, %i.jn
  br i1 %i.kj, label %bb.bl, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i, !llvm.loop !3250

bb.bk:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !3516
  unreachable

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115.i
  %i.kk = load i64, ptr %i.iq, align 64, !alias.scope !3517, !noalias !3518, !noundef !15
  %i.kl = or i64 %i.kk, 1
  store i64 %i.kl, ptr %i.iq, align 64, !alias.scope !3517, !noalias !3518
  %i.km = call fastcc { i64, i64 } @_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127scatter8scatter5(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iq, i64 noundef %i.ki, ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, i64 noundef 0), !noalias !3498
  %i.kn = extractvalue { i64, i64 } %i.km, 0
  %.not71.i.i.i117.i = icmp eq i64 %i.kn, -1
  %.not.i102.i.i.i.i = icmp eq i64 %i.hx, %i.jk
  %or.cond.i118.i = and i1 %.not.i102.i.i.i.i, %.not71.i.i.i117.i
  br i1 %or.cond.i118.i, label %bb.bm, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i, !prof !3461

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.iq, ptr nonnull readonly align 8 %i.jm, i64 %i.iw, i1 false), !alias.scope !3519, !noalias !3520
  %i.ko = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, ptr noalias nofree noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef 1, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i)
  %.not72.i.i.i119.i = icmp eq i64 %i.ko, -1
  br i1 %.not72.i.i.i119.i, label %.split.split.us.i.preheader.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

.split.split.us.i.preheader.i.i.i:                ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3497
  store i64 1, ptr %i.i, align 8, !noalias !3497
  %.sroa.2.0..sroa_idx.i.i.i120.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i120.i, align 8, !noalias !3497
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i121.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i121.i, align 8, !noalias !3497
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i122.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 31, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i122.i, align 8, !noalias !3497
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i123.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 0, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i123.i, align 8, !noalias !3497
  %.sroa.3.0..sroa_idx.i.i.i124.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 5 uses
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !noalias !3497
  br i1 %.sroa.0.0.i76.i.i.i99.i, label %.split.split.us.i.us.i.i.i, label %.split.split.us.i.i.i.i

.split.split.us.i.us.i.i.i:                       ; preds = %.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i
  %i.kp = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !range !34, !noalias !3497, !noundef !15
  %i.kq = trunc nuw i8 %i.kp to i1
  %i.kr = load i64, ptr %i.i, align 8, !noalias !3497
  %.sroa.066.0.us.i.us.i.i.i = select i1 %i.kq, i64 0, i64 %i.kr
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !noalias !3497
  %i.ks = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i120.i, i64 noundef %.sroa.066.0.us.i.us.i.i.i) #40, !noalias !3498 ; 2 uses
  %i.kt = extractvalue { i64, i64 } %i.ks, 0
  %i.ku = extractvalue { i64, i64 } %i.ks, 1      ; 3 uses
  %i.kv = trunc nuw i64 %i.kt to i1
  br i1 %i.kv, label %bb.bn, label %.split86.us.i.i.i125.i

bb.bn:                                            ; preds = %.split.split.us.i.us.i.i.i
  %i.kw = icmp eq i64 %i.ku, 0
  br i1 %i.kw, label %.split88.us.i.i.i147.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i: ; preds = %bb.bn
  %i.kx = add i64 %i.ku, -1
  call void @ring_core_0_17_16000__bn_mulx4x_mont_gather5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull readonly align 8 %i.jm, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.hx, i64 noundef range(i64 0, -1) %i.kx) #36, !noalias !3498
  %i.ky = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, ptr noalias nofree noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.ku, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i)
  %.not74.us.i.us.i.i149.i = icmp eq i64 %i.ky, -1
  br i1 %.not74.us.i.us.i.i149.i, label %.split.split.us.i.us.i.i.i, label %.split90.us.i.i.i.i

.split.split.us.i.i.i.i:                          ; preds = %.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i
  %i.kz = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !range !34, !noalias !3497, !noundef !15
  %i.la = trunc nuw i8 %i.kz to i1
  %i.lb = load i64, ptr %i.i, align 8, !noalias !3497
  %.sroa.066.0.us.i.i.i.i = select i1 %i.la, i64 0, i64 %i.lb
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !noalias !3497
  %i.lc = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i120.i, i64 noundef %.sroa.066.0.us.i.i.i.i) #40, !noalias !3498 ; 2 uses
  %i.ld = extractvalue { i64, i64 } %i.lc, 0
  %i.le = extractvalue { i64, i64 } %i.lc, 1      ; 3 uses
  %i.lf = trunc nuw i64 %i.ld to i1
  br i1 %i.lf, label %bb.bo, label %.split86.us.i.i.i125.i

bb.bo:                                            ; preds = %.split.split.us.i.i.i.i
  %i.lg = icmp eq i64 %i.le, 0
  br i1 %i.lg, label %.split88.us.i.i.i147.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i: ; preds = %bb.bo
  %i.lh = add i64 %i.le, -1
  call void @ring_core_0_17_16000__bn_mul4x_mont_gather5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull readonly align 8 %i.jm, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.hx, i64 noundef range(i64 0, -1) %i.lh) #36, !noalias !3498
  %i.li = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, ptr noalias nofree noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.le, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i)
  %.not74.us.i.i.i146.i = icmp eq i64 %i.li, -1
  br i1 %.not74.us.i.i.i146.i, label %.split.split.us.i.i.i.i, label %.split90.us.i.i.i.i

.split86.us.i.i.i125.i:                           ; preds = %.split.split.us.i.i.i.i, %.split.split.us.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3497
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i92.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3521)
  %i.lj = icmp samesign ugt i64 %.val1.i93.i, 288230376151711743
  br i1 %i.lj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.split86.us.i.i.i125.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #41, !noalias !3522
  unreachable

bb.bq:                                            ; preds = %.split86.us.i.i.i125.i
  %.not.i12.i.i126.i = icmp eq i64 %.val1.i93.i, 0
  br i1 %.not.i12.i.i126.i, label %bb.br, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i, !prof !16

bb.br:                                            ; preds = %bb.bq
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41, !noalias !3522
  unreachable

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i: ; preds = %bb.bq
  %i.lk = shl nuw i64 %.val1.i93.i, 6
  %i.ll = urem i64 %i.lk, 5                       ; 2 uses
  %i.lm = icmp eq i64 %i.ll, 0
  %i.ln = sub nuw nsw i64 64, %i.ll
  %i.lo = select i1 %i.lm, i64 59, i64 %i.ln      ; 2 uses
  %i.lp = load i64, ptr %.val.i92.i, align 8, !alias.scope !3521, !noalias !3523, !noundef !15
  %i.lq = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %i.lp, i64 noundef 0, i64 noundef %i.lo) #36, !noalias !3522
  %i.lr = add nsw i64 %i.lo, -5
  call void @ring_core_0_17_16000__bn_gather5(ptr noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noundef nonnull %i.k, i64 noundef %i.lq) #36, !noalias !3524
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i: ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i
  %.sroa.011.0.us.us.us.i.i.i127.i = phi i64 [ %.val.i.us.us.us.i.i.i130.i, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i ]
  %.sroa.0.0.us.us.us.i.i.i128.i = phi i64 [ %i.md, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ %i.lr, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 4 uses
  %.sroa.05.0.i.us.us.us.i.i.i129.i = phi i64 [ %i.me, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.val.i92.i, i64 %.sroa.05.0.i.us.us.us.i.i.i129.i
  %.val.i.us.us.us.i.i.i130.i = load i64, ptr %i.ls, align 8, !alias.scope !3521, !noalias !3525, !noundef !15 ; 4 uses
  %i.lt = icmp ugt i64 %.sroa.0.0.us.us.us.i.i.i128.i, 59
  br i1 %i.lt, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %i.lu = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %.val.i.us.us.us.i.i.i130.i, i64 noundef %.sroa.011.0.us.us.us.i.i.i127.i, i64 noundef %.sroa.0.0.us.us.us.i.i.i128.i) #36, !noalias !3526 ; 2 uses
  %i.lv = add i64 %.sroa.0.0.us.us.us.i.i.i128.i, -5 ; 3 uses
  br i1 %.sroa.0.0.i76.i.i.i99.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.lu) #36, !noalias !3527
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

bb.bt:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.lu) #36, !noalias !3527
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %i.lw = icmp ult i64 %i.lv, 64
  br i1 %i.lw, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %.sroa.0.1.us.us.us.i.i.i132.i = phi i64 [ %i.lv, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %.sroa.0.0.us.us.us.i.i.i128.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i ] ; 2 uses
  br i1 %.sroa.0.0.i76.i.i.i99.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i
  %.sroa.0.2.us.us.us.us.us.us.i.us.i.i143.i = phi i64 [ %i.ly, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i ], [ %.sroa.0.1.us.us.us.i.i.i132.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i ] ; 2 uses
  %i.lx = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i130.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.us.i.i143.i) #36, !noalias !3528
  %i.ly = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.us.i.i143.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.lx) #36, !noalias !3529
  %i.lz = icmp ult i64 %i.ly, 64
  br i1 %i.lz, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i
  %.sroa.0.2.us.us.us.us.us.us.i.i.i134.i = phi i64 [ %i.mb, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i ], [ %.sroa.0.1.us.us.us.i.i.i132.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i ] ; 2 uses
  %i.ma = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i130.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.i.i134.i) #36, !noalias !3528
  %i.mb = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.i.i134.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.ma) #36, !noalias !3529
  %i.mc = icmp ult i64 %i.mb, 64
  br i1 %i.mc, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i: ; preds = %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i
  %.lcssa.i.i.us.us.us.i.i.i135.i = phi i64 [ %i.lv, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %i.ly, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i ], [ %i.mb, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i ]
  %i.md = add i64 %.lcssa.i.i.us.us.us.i.i.i135.i, 64
  %i.me = add nuw nsw i64 %.sroa.05.0.i.us.us.us.i.i.i129.i, 1 ; 2 uses
  %i.mf = icmp eq i64 %i.me, %.val1.i93.i
  br i1 %i.mf, label %.lr.ph.i.i.preheader.i.i.i136.i, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

.lr.ph.i.i.preheader.i.i.i136.i:                  ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.s, ptr nonnull readonly align 64 %i.iq, i64 %i.iw, i1 false), !alias.scope !3530, !noalias !3531
  call void @llvm.experimental.noalias.scope.decl(metadata !3532)
  store i64 1, ptr %i.ab, align 8, !alias.scope !3533, !noalias !3534
  %.idx.i.i.i.i137.i = add nsw i64 %i.iw, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hi, i8 0, i64 range(i64 0, 1017) %.idx.i.i.i.i137.i, i1 false), !alias.scope !3535, !noalias !3536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3537
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3537
  store ptr %i.s, ptr %i.f, align 8, !noalias !3537
  %i.mg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.hx, ptr %i.mg, align 8, !noalias !3537
  %i.mh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.ab, ptr %i.mh, align 8, !noalias !3537
  %i.mi = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.hx, ptr %i.mi, align 8, !noalias !3537
  %i.mj = icmp ugt i64 %i.hw, 15
  br i1 %i.mj, label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i, label %.thread.i.i.i138.i

.thread.i.i.i138.i:                               ; preds = %.lr.ph.i.i.preheader.i.i.i136.i
  call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 dereferenceable(1024) %i.s, ptr noundef nonnull align 8 dereferenceable(1024) %i.s, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.ik, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx) #36, !noalias !3538, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3537
  br label %bb.bv

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i: ; preds = %.lr.ph.i.i.preheader.i.i.i136.i
  %i.mk = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3539, !noundef !15 ; 2 uses
  %i.ml = icmp ne i32 %i.mk, 0
  call void @llvm.assume(i1 %i.ml), !noalias !3540
  %i.mm = and i32 %i.mk, 1536
  %brmerge.i.not.i.i.i140.i = icmp eq i32 %i.mm, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ik, i64 noundef %i.jg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i1 noundef zeroext %brmerge.i.not.i.i.i140.i) #40, !noalias !3541
  %.pre.i.i.i141.i = load i64, ptr %i.g, align 8, !range !22, !noalias !3537
  %i.mn = trunc nuw i64 %.pre.i.i.i141.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3537
  br i1 %i.mn, label %bb.bu, label %bb.bv, !prof !16

bb.bu:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !range !23, !noalias !3537, !noundef !15
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.mp) #39
  unreachable

.split88.us.i.i.i147.i:                           ; preds = %bb.bo, %bb.bn
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41, !noalias !3498
  unreachable

.split90.us.i.i.i.i:                              ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3497
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i: ; preds = %.split90.us.i.i.i.i, %bb.bm, %bb.bl, %bb.bi, %bb.bf, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3497
  br label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38

bb.bv:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i, %.thread.i.i.i138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3497
  %i.mq = load i64, ptr %i.de, align 8, !alias.scope !3542, !noalias !3543, !noundef !15
  %.not.i.i150.i = icmp eq i64 %i.mq, %i.da
  br i1 %.not.i.i150.i, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i, label %bb.bw, !prof !19

bb.bw:                                            ; preds = %bb.bv
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef 0) #39
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i: ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !3544)
  call void @llvm.experimental.noalias.scope.decl(metadata !3545)
  %.not.i.i.i155.i = icmp eq i64 %i.da, %i.hx
  br i1 %.not.i.i.i155.i, label %bb.by, label %bb.bx, !prof !3461

bb.bx:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #41, !noalias !3546
  unreachable

bb.by:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.s, i64 %i.dz, i1 false), !alias.scope !3547, !noalias !3548
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.dn, i64 noundef range(i64 0, 1152921504606846976) %i.da) #36, !noalias !3549
  call void @ring_core_0_17_16000__LIMBS_sub_mod(ptr noundef nonnull align 8 %i.t, ptr noundef nonnull align 8 %i.t, ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull %i.dn, i64 noundef %i.da) #36, !noalias !3550
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val60.i = load ptr, ptr %i.mr, align 8, !alias.scope !3428, !noalias !3436, !nonnull !15, !noundef !15
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val61.i = load i64, ptr %i.ms, align 8, !alias.scope !3428, !noalias !3436, !noundef !15
  %i.mt = call fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PE3mulNtNtBa_10montgomery1REBc_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val60.i, i64 noundef %.val61.i, ptr nonnull %.val64.i, i64 %i.db), !noalias !3433 ; 2 uses
  %i.mu = extractvalue { ptr, i64 } %i.mt, 0      ; 2 uses
  %i.mv = extractvalue { ptr, i64 } %i.mt, 1      ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mu) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3551)
  call void @llvm.experimental.noalias.scope.decl(metadata !3552)
  br i1 %.not.i.i.i, label %bb.bz, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i, !prof !16

bb.bz:                                            ; preds = %bb.by
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41, !noalias !3553
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i: ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !3554)
  %i.mw = icmp ult i64 %i.ak, %i.mv
  br i1 %i.mw, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE26write_copy_of_slice_paddedB9_.exit.thread.i.i, label %bb.ca, !prof !16

bb.ca:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i
  %i.mx = shl nuw nsw i64 %i.mv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.mu, i64 %i.mx, i1 false), !alias.scope !3555, !noalias !3556
  %i.my = icmp eq i64 %i.ak, %i.mv
  br i1 %i.my, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.ca
  %i.mz = sub nuw nsw i64 %i.ak, %i.mv
  %.idx.i.i.i.i = shl nuw nsw i64 %i.mz, 3
  %i.na = getelementptr [8 x i8], ptr %i.ab, i64 %i.mv
  call void @llvm.memset.p0.i64(ptr align 8 %i.na, i8 0, i64 %.idx.i.i.i.i, i1 false), !alias.scope !3557, !noalias !3558
  br label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE26write_copy_of_slice_paddedB9_.exit.thread.i.i: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #41, !noalias !3553
  unreachable

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i, %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !3559)
  call void @llvm.experimental.noalias.scope.decl(metadata !3560)
  %i.nb = icmp samesign ult i64 %i.ak, %i.da
  br i1 %i.nb, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, label %bb.cb, !prof !16

bb.cb:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.t, ptr nonnull readonly align 8 %i.ik, i64 %i.dz, i1 false), !alias.scope !3561, !noalias !3562
  %i.nc = icmp eq i64 %i.ak, %i.da                ; 2 uses
  br i1 %i.nc, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i162.i

.lr.ph.i.i.preheader.i.i162.i:                    ; preds = %bb.cb
  %i.nd = sub nuw nsw i64 %i.ak, %i.da
  %.idx.i.i.i163.i = shl nuw nsw i64 %i.nd, 3
  %i.ne = getelementptr [8 x i8], ptr %i.t, i64 %i.da
  call void @llvm.memset.p0.i64(ptr align 8 %i.ne, i8 0, i64 %.idx.i.i.i163.i, i1 false), !alias.scope !3563, !noalias !3564
  br label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i162.i, %bb.cb
  %i.nf = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ng = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.t, ptr noundef nonnull readonly align 8 %i.nf, i64 noundef range(i64 0, 1152921504606846976) %i.ak) #36, !noalias !3433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3565
  store i64 %i.ng, ptr %i.e, align 8, !noalias !3565
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.e) #36, !noalias !3433, !srcloc !37
  %i.nh = load i64, ptr %i.e, align 8, !noalias !3565, !noundef !15
  %.not.i.i.i164.i = icmp eq i64 %i.nh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3565
  br i1 %.not.i.i.i164.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, label %bb.cc

bb.cc:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i
  %i.ni = call fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %i.ak, ptr nonnull %i.af, i64 %i.ah), !noalias !3433 ; 2 uses
  %i.nj = extractvalue { ptr, i64 } %i.ni, 0
  %i.nk = extractvalue { ptr, i64 } %i.ni, 1
  %i.nl = call fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulNtB1i_9UnencodedEBc_(ptr noalias nofree noundef nonnull align 8 %i.nj, i64 noundef %i.nk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1024) %i.ab, i64 noundef %i.ak, ptr nonnull %i.af, i64 %i.ck), !noalias !3433 ; 2 uses
  %i.nm = extractvalue { ptr, i64 } %i.nl, 0      ; 2 uses
  %i.nn = extractvalue { ptr, i64 } %i.nl, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3566)
  call void @llvm.experimental.noalias.scope.decl(metadata !3567)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.s, i64 %i.dz, i1 false), !alias.scope !3568, !noalias !3569
  br i1 %i.nc, label %bb.cd, label %.lr.ph.i.i.preheader.i.i169.i

.lr.ph.i.i.preheader.i.i169.i:                    ; preds = %bb.cc
  %i.no = sub nuw nsw i64 %i.ak, %i.da
  %.idx.i.i.i170.i = shl nuw nsw i64 %i.no, 3
  %i.np = getelementptr [8 x i8], ptr %i.ab, i64 %i.da
  call void @llvm.memset.p0.i64(ptr align 8 %i.np, i8 0, i64 %.idx.i.i.i170.i, i1 false), !alias.scope !3570, !noalias !3571
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.preheader.i.i169.i, %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nm) ]
  %.not.i.i.i173.i = icmp eq i64 %i.nn, %i.ak
  br i1 %.not.i.i.i173.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE3addBb_.exit.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb20limbs_add_assign_mod.exit.i.i, !prof !19

_RNvNtCs5yxAJGbRKSL_4ring4limb20limbs_add_assign_mod.exit.i.i: ; preds = %bb.cd
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE3addBb_.exit.i: ; preds = %bb.cd
  call void @ring_core_0_17_16000__LIMBS_add_mod(ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.nm, ptr noundef nonnull readonly align 8 %i.nf, i64 noundef range(i64 0, 1152921504606846976) %i.ak) #36, !noalias !3572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3430
  call void @llvm.experimental.noalias.scope.decl(metadata !3573)
  call void @llvm.experimental.noalias.scope.decl(metadata !3574)
  %i.nq = load i64, ptr %i.cj, align 8, !range !38, !alias.scope !3575, !noalias !3576, !noundef !15
  store ptr %i.af, ptr %i.r, align 8, !alias.scope !3573, !noalias !3577
  %i.nr = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ah, ptr %i.nr, align 8, !alias.scope !3573, !noalias !3577
  %i.ns = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.nq, ptr %i.ns, align 8, !alias.scope !3573, !noalias !3577
  %i.nt = call fastcc { ptr, i64 } @_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE17exponentiate_elem(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef align 8 dereferenceable(1024) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1024) %i.ab, i64 noundef %i.ak, ptr noalias nofree noundef align 8 dereferenceable(1024) %i.s), !noalias !3433 ; 2 uses
  %i.nu = extractvalue { ptr, i64 } %i.nt, 0      ; 3 uses
  %i.nv = extractvalue { ptr, i64 } %i.nt, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3578)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nu) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3579)
  call void @llvm.experimental.noalias.scope.decl(metadata !3580)
  %.not.i.i174.i = icmp eq i64 %i.nv, %i.cv
  br i1 %.not.i.i174.i, label %.lr.ph.i.i.i.i.preheader, label %bb.ce, !prof !19

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE3addBb_.exit.i
  %min.iters.check155 = icmp ult i64 %i.cv, 4
  br i1 %min.iters.check155, label %.lr.ph.i.i.i.i.preheader168, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec157 = and i64 %i.cv, 252                  ; 3 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next165, %vector.body158 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph156 ], [ %i.oc, %vector.body158 ]
  %vec.phi160 = phi <2 x i64> [ zeroinitializer, %vector.ph156 ], [ %i.od, %vector.body158 ]
end_hunk_5
begin_hunk_6_@_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8try_sign:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) initializes((0, 288)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [32 x i8], align 8          ; 3 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.65 = alloca [32 x i8], align 8           ; 3 uses
  %.sroa.76 = alloca [24 x i8], align 8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3752)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !3753, !noalias !3754, !noundef !15 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3753, !noalias !3754, !nonnull !15, !align !17, !noundef !15
  br label %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.8.copyload.i = load ptr, ptr %i.f, align 8, !alias.scope !3755, !noalias !3756
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.6.8..sroa_idx.i, i64 32, i1 false)
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.7.8..sroa_idx.i, i64 24, i1 false)
  br label %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit

_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit: ; preds = %bb.b, %bb.c
  %.sroa.4.0.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.4.8.copyload.i, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3757, !noalias !3756, !noundef !15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3758)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3759, !noalias !3758, !noundef !15 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !3759, !noalias !3758, !nonnull !15, !align !17, !noundef !15
  br label %_RNvXs0_NtNtCs5yxAJGbRKSL_4ring6digest8dynstateNtB5_8DynStateNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.44.8.copyload = load ptr, ptr %i.o, align 8, !alias.scope !3760
  %.sroa.65.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65.8..sroa_idx, i64 32, i1 false)
  %.sroa.76.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.8..sroa_idx, i64 24, i1 false)
  br label %_RNvXs0_NtNtCs5yxAJGbRKSL_4ring6digest8dynstateNtB5_8DynStateNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

_RNvXs0_NtNtCs5yxAJGbRKSL_4ring6digest8dynstateNtB5_8DynStateNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.d, %bb.e
  %.sroa.44.0 = phi ptr [ %i.n, %bb.d ], [ %.sroa.44.8.copyload, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.q = load i64, ptr %i.p, align 8, !noundef !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.4.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.h, ptr %.sroa.8.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.j, ptr %i.r, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sroa.44.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65, i64 32, i1 false)
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6finish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(208) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !noalias !3769
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %1), !noalias !3769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3768
  %i.f = load ptr, ptr %i.c, align 8, !noalias !3768, !noundef !15 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !3770 ; 2 uses
  br i1 %i.g, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring6digest6DigestNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_.exit

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !3769
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3768
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #41, !noalias !3771
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring6digest6DigestNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx8, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3768
  call void @llvm.experimental.noalias.scope.decl(metadata !3772)
  call void @llvm.experimental.noalias.scope.decl(metadata !3773)
  store ptr %i.f, ptr %0, align 8, !alias.scope !3771, !noalias !3774
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx2, align 8, !alias.scope !3771, !noalias !3774
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val = load ptr, ptr %i.f, align 8, !nonnull !15, !align !17
  %i.g = select i1 %i.e, ptr %.val, ptr %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 90
  %i.i = load i8, ptr %i.h, align 2, !range !32, !noundef !15 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 127 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !noundef !15 ; 3 uses
  %i.l = zext i8 %i.k to i64                      ; 3 uses
  %i.m = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  %i.n = zext i8 %i.i to i64                      ; 3 uses
  %i.o = icmp eq i8 %i.k, 0
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.p = icmp ugt i8 %i.k, %i.i
  br i1 %i.p, label %bb.f, label %bb.e, !prof !16

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, %bb.h
  %.sroa.3.0.i = phi i64 [ %i.aj, %bb.h ], [ %2, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit ]
  %.sroa.03.0.i = phi ptr [ %i.ai, %bb.h ], [ %1, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3803)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3804
  call void @llvm.experimental.noalias.scope.decl(metadata !3805)
  %i.q = load ptr, ptr %i.c, align 8, !alias.scope !3806, !noalias !3807, !noundef !15
  %i.r = icmp eq ptr %i.q, null
  %.sroa.0.0.idx.i.i.i = select i1 %i.r, i64 8, i64 0
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.0.idx.i.i.i
  %i.s = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !alias.scope !3806, !noalias !3807, !nonnull !15, !align !17, !noundef !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !noalias !3808, !nonnull !15, !noundef !15
  call void %i.u(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i), !noalias !3809, !inline_history !3785
  %i.v = load i64, ptr %i.b, align 8, !noalias !3804, !noundef !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !3804, !nonnull !15, !noundef !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !3804, !noundef !15 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3804
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !3803, !noalias !3810, !noundef !15
  %i.ac = call i64 @llvm.uadd.sat.i64(i64 %i.ab, i64 %i.v)
  store i64 %i.ac, ptr %i.aa, align 8, !alias.scope !3803, !noalias !3810
  %.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i, label %_RNCNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB6_7Context6update0B8_.exit, label %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i

_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i: ; preds = %bb.d
  %..i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.z, i64 range(i64 0, 129) %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(128) %0, ptr nonnull readonly align 1 %i.x, i64 range(i64 0, 129) %..i.i.i.i.i, i1 false), !alias.scope !3811, !noalias !3812
  %i.ad = icmp ugt i64 %i.z, 127
  br i1 %i.ad, label %bb.j, label %_RNCNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB6_7Context6update0B8_.exit, !prof !48

bb.e:                                             ; preds = %bb.c
  %i.ae = sub nuw nsw i64 %i.n, %i.l              ; 4 uses
  %..i.i.i.i13.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %2, i64 range(i64 0, 129) %i.ae) ; 2 uses
  %.not.i.i14.i = icmp eq i64 %..i.i.i.i13.i, 0
  br i1 %.not.i.i14.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit16.i, label %.lr.ph.i.preheader.i15.i

.lr.ph.i.preheader.i15.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %1, i64 range(i64 0, 129) %..i.i.i.i13.i, i1 false), !alias.scope !3813, !noalias !3814
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit16.i

_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit16.i: ; preds = %.lr.ph.i.preheader.i15.i, %bb.e
  %.not.i = icmp samesign ugt i64 %i.ae, %2
  br i1 %.not.i, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #41, !noalias !3815
  unreachable

bb.g:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit16.i
  %i.ag = add nuw nsw i64 %2, %i.l                ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.ag, 127
  br i1 %i.ah, label %bb.i, label %_RNCNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB6_7Context6update0B8_.exit, !prof !16

bb.h:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit16.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.aj = sub nuw nsw i64 %2, %i.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3816)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3817
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3818)
  %i.ak = load ptr, ptr %i.c, align 8, !alias.scope !3819, !noalias !3820, !noundef !15
  %i.al = icmp eq ptr %i.ak, null
  %.sroa.0.0.idx.i.i17.i = select i1 %i.al, i64 8, i64 0
  %.sroa.0.0.i.i18.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.0.idx.i.i17.i
  %i.am = load ptr, ptr %.sroa.0.0.i.i18.i, align 8, !alias.scope !3819, !noalias !3820, !nonnull !15, !align !17, !noundef !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !3821, !nonnull !15, !noundef !15
  call void %i.ao(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(128) %0, i64 noundef range(i64 0, -9223372036854775808) %i.n), !noalias !3809, !inline_history !3785
  %i.ap = load i64, ptr %i.a, align 8, !noalias !3817, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3817
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !3816, !noalias !3822, !noundef !15
  %i.as = call i64 @llvm.uadd.sat.i64(i64 %i.ar, i64 %i.ap)
  store i64 %i.as, ptr %i.aq, align 8, !alias.scope !3816, !noalias !3822
  br label %bb.d

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #41, !noalias !3815
  unreachable

bb.j:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #41, !noalias !3809
  unreachable

_RNCNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB6_7Context6update0B8_.exit: ; preds = %bb.d, %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i, %bb.g
  %.sroa.0.0.in.i = phi i64 [ %i.ag, %bb.g ], [ %i.z, %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i ], [ 0, %bb.d ]
  %.sroa.0.0.i = trunc nuw nsw i64 %.sroa.0.0.in.i to i8
  store i8 %.sroa.0.0.i, ptr %i.j, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed18compute_public_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %i.b, i8 0, i64 97, i1 false)
  %i.c = load ptr, ptr %1, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !15 ; 4 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ult i64 %i.e, 98
  br i1 %i.f, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef 97, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !15, !noundef !15
  %i.i = call noundef zeroext i1 %i.h(ptr noalias nofree noundef nonnull %i.b, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ 0, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead25chacha20_poly1305_opensshNtB4_10OpeningKey13open_in_place(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(64) %0, i32 noundef %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly captures(none) dereferenceable(16) %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [128 x i8], align 64              ; 22 uses
  %i.c = alloca [16 x i8], align 4                ; 7 uses
  %i.d = alloca [32 x i8], align 4                ; 10 uses
  %i.e = alloca [16 x i8], align 4                ; 6 uses
  %i.f = icmp samesign ugt i64 %3, 3
  br i1 %i.f, label %bb.b, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 10 uses
  %i.h = add nsw i64 %3, -4                       ; 7 uses
  %i.i = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.k = icmp samesign ugt i64 %3, 274877906884
  br i1 %i.k, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit, label %.lr.ph.i.i.i, !prof !16

_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead6chachaNtB4_3Key7encrypt.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit33, %.lr.ph.i.i.i, %bb.a
  %.sroa.5.0 = phi i64 [ %i.h, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit ], [ undef, %bb.a ], [ undef, %.lr.ph.i.i.i ], [ 0, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit33 ], [ %i.h, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit ], [ %i.h, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit ], [ undef, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit ]
  %.sroa.0.0 = phi ptr [ %i.g, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghEuKj1_EB8_.exit ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i ], [ %i.g, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit33 ], [ %i.g, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_644Avx2Kj81_EB8_.exit ], [ %i.g, %_RINvNtNtNtCs5yxAJGbRKSL_4ring4aead6chacha3ffi18chacha20_ctr32_ffiINtNtNtB6_11overlapping4base11OverlappinghENtNtNtB8_3cpu6x86_645Ssse3Kj81_EB8_.exit ], [ null, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit ]
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.m

.lr.ph.i.i.i:                                     ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.n = tail call i32 @llvm.bswap.i32(i32 %1)    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3885
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !noalias !3885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3886
  store i32 0, ptr %i.c, align 4, !noalias !3886
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !3886
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !3886
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.n, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !3886
  call void @ring_core_0_17_16000__ChaCha20_ctr32_nohw(ptr noundef nonnull dereferenceable(32) %i.d, ptr noundef nonnull dereferenceable(32) %i.d, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !3887, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3886
  %.sroa.12.sroa.0.0.copyload = load i32, ptr %i.d, align 4, !noalias !3888 ; 2 uses
  %.sroa.12.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.12.sroa.5.0.copyload = load i32, ptr %.sroa.12.sroa.5.0..sroa_idx, align 4, !noalias !3888 ; 2 uses
  %.sroa.12.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.12.sroa.6.0.copyload = load i32, ptr %.sroa.12.sroa.6.0..sroa_idx, align 4, !noalias !3888 ; 2 uses
  %.sroa.12.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.12.sroa.7.0.copyload = load i32, ptr %.sroa.12.sroa.7.0..sroa_idx, align 4, !noalias !3888 ; 2 uses
  %.sroa.12.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.12.sroa.8.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3885
  store i32 1, ptr %i.e, align 4
  %.sroa.4.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa_idx, align 4
  %.sroa.4.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.n, ptr %.sroa.4.sroa.6.0..sroa_idx, align 4
  %i.o = and i32 %.sroa.12.sroa.0.0.copyload, 67108863
  %i.p = call i32 @llvm.fshl.i32(i32 %.sroa.12.sroa.5.0.copyload, i32 %.sroa.12.sroa.0.0.copyload, i32 6)
  %i.q = and i32 %i.p, 67108611                   ; 2 uses
  %i.r = call i32 @llvm.fshl.i32(i32 %.sroa.12.sroa.6.0.copyload, i32 %.sroa.12.sroa.5.0.copyload, i32 12)
  %i.s = and i32 %i.r, 67092735                   ; 2 uses
  %i.t = call i32 @llvm.fshl.i32(i32 %.sroa.12.sroa.7.0.copyload, i32 %.sroa.12.sroa.6.0.copyload, i32 18)
  %i.u = and i32 %i.t, 66076671                   ; 2 uses
  %i.v = lshr i32 %.sroa.12.sroa.7.0.copyload, 8
  %i.w = and i32 %i.v, 1048575                    ; 2 uses
  %i.x = mul nuw nsw i32 %i.q, 5
  %i.y = mul nuw nsw i32 %i.s, 5
  %i.z = mul nuw nsw i32 %i.u, 5
  %i.aa = mul nuw nsw i32 %i.w, 5
  %.sroa.4.0..sroa_idx.i.i29 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.o, ptr %.sroa.4.0..sroa_idx.i.i29, align 16, !alias.scope !3890, !noalias !3891
  %.sroa.5.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.q, ptr %.sroa.5.0..sroa_idx.i.i30, align 4, !alias.scope !3890, !noalias !3891
  %.sroa.6.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.s, ptr %.sroa.6.0..sroa_idx.i.i31, align 8, !alias.scope !3890, !noalias !3891
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.u, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !3890, !noalias !3891
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.w, ptr %.sroa.8.0..sroa_idx.i.i, align 32, !alias.scope !3890, !noalias !3891
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.x, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !3890, !noalias !3891
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.y, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !3890, !noalias !3891
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.z, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !alias.scope !3890, !noalias !3891
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %i.aa, ptr %.sroa.12.0..sroa_idx.i.i, align 16, !alias.scope !3890, !noalias !3891
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx.i.i, i8 0, i64 20, i1 false), !alias.scope !3890, !noalias !3891
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 4, -9223372036854775808) %3), !noalias !3892
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 64, !alias.scope !3893, !noalias !3894
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !3893, !noalias !3894
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3893, !noalias !3894
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !3893, !noalias !3894
  %.sroa.71.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i.i, align 4, !alias.scope !3893, !noalias !3894 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !3893, !noalias !3894
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !3893, !noalias !3894
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 64, !alias.scope !3893, !noalias !3894
end_hunk_6
begin_hunk_7_@_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead7aes_gcmNtB4_6DynKey9new_ssse3:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3973)
  %i.b = and i64 %2, 9223372036854775792          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = and i64 %2, 15                           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3974)
  %i.e = icmp samesign eq i64 %i.b, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj10_ENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead8poly13058fallbackNtB1Q_5State15update_internal0EB1W_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 16, !alias.scope !3975, !noalias !3976, !noundef !15
  %i.m = zext i32 %i.l to i64                     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 16, !alias.scope !3975, !noalias !3976, !noundef !15
  %i.p = zext i32 %i.o to i64                     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !3975, !noalias !3976, !noundef !15
  %i.s = zext i32 %i.r to i64                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i32, ptr %i.t, align 8, !alias.scope !3975, !noalias !3976, !noundef !15
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !3975, !noalias !3976, !noundef !15
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !3975, !noalias !3976, !noundef !15
  %i.ab = zext i32 %i.aa to i64                   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !3975, !noalias !3976, !noundef !15
  %i.ae = zext i32 %i.ad to i64                   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !3975, !noalias !3976, !noundef !15
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i32, ptr %i.ai, align 32, !alias.scope !3975, !noalias !3976, !noundef !15
  %i.ak = zext i32 %i.aj to i64
  %.promoted.i.i = load i32, ptr %i.f, align 4, !alias.scope !3977, !noalias !3976
  %.promoted3.i.i = load i32, ptr %i.g, align 8, !alias.scope !3977, !noalias !3976
  %.promoted5.i.i = load i32, ptr %i.h, align 4, !alias.scope !3977, !noalias !3976
  %.promoted7.i.i = load i32, ptr %i.i, align 64, !alias.scope !3977, !noalias !3976
  %.promoted9.i.i = load i32, ptr %i.j, align 4, !alias.scope !3977, !noalias !3976
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.al = phi i32 [ %.promoted9.i.i, %.lr.ph.i.i ], [ %i.en, %bb.b ]
  %i.am = phi i32 [ %.promoted7.i.i, %.lr.ph.i.i ], [ %i.ee, %bb.b ]
  %i.an = phi i32 [ %.promoted5.i.i, %.lr.ph.i.i ], [ %i.dv, %bb.b ]
  %i.ao = phi i32 [ %.promoted3.i.i, %.lr.ph.i.i ], [ %i.dm, %bb.b ]
  %i.ap = phi i32 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.er, %bb.b ]
  %.sroa.0.02.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.aq, %bb.b ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3978)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %.sroa.0.02.i.i, align 1, !alias.scope !3976, !noalias !3977 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.ar, align 1, !alias.scope !3976, !noalias !3977
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.as, align 1, !alias.scope !3976, !noalias !3977
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 12
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.at, align 1, !alias.scope !3976, !noalias !3977 ; 2 uses
  %i.au = and i32 %.sroa.0.0.copyload.i.i.i, 67108863
  %i.av = add i32 %i.au, %i.ap
  %i.aw = zext i32 %.sroa.01.0.copyload.i.i.i to i64 ; 2 uses
  %i.ax = shl nuw i64 %i.aw, 32
  %i.ay = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.az = or disjoint i64 %i.ax, %i.ay
  %i.ba = lshr i64 %i.az, 26
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 67108863
  %i.bd = add i32 %i.bc, %i.ao
  %i.be = zext i32 %.sroa.02.0.copyload.i.i.i to i64 ; 2 uses
  %i.bf = shl nuw i64 %i.be, 32
  %i.bg = or disjoint i64 %i.bf, %i.aw
  %i.bh = lshr i64 %i.bg, 20
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 67108863
  %i.bk = add i32 %i.bj, %i.an
  %i.bl = zext i32 %.sroa.03.0.copyload.i.i.i to i64
  %i.bm = shl nuw i64 %i.bl, 32
  %i.bn = or disjoint i64 %i.bm, %i.be
  %i.bo = lshr i64 %i.bn, 14
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 67108863
  %i.br = add i32 %i.bq, %i.am
  %i.bs = lshr i32 %.sroa.03.0.copyload.i.i.i, 8
  %i.bt = add i32 %i.al, 16777216
  %i.bu = add i32 %i.bt, %i.bs
  %i.bv = zext i32 %i.av to i64                   ; 5 uses
  %i.bw = mul nuw i64 %i.bv, %i.m
  %i.bx = zext i32 %i.bd to i64                   ; 5 uses
  %i.by = mul nuw i64 %i.bx, %i.p
  %i.bz = zext i32 %i.bk to i64                   ; 5 uses
  %i.ca = mul nuw i64 %i.bz, %i.s
  %i.cb = zext i32 %i.br to i64                   ; 5 uses
  %i.cc = mul nuw i64 %i.cb, %i.v
  %i.cd = zext i32 %i.bu to i64                   ; 5 uses
  %i.ce = mul nuw i64 %i.cd, %i.y
  %i.cf = add i64 %i.ce, %i.bw
  %i.cg = add i64 %i.cf, %i.by
  %i.ch = add i64 %i.cg, %i.ca
  %i.ci = add i64 %i.ch, %i.cc                    ; 2 uses
  %i.cj = mul nuw i64 %i.bv, %i.ab
  %i.ck = mul nuw i64 %i.bx, %i.m
  %i.cl = mul nuw i64 %i.bz, %i.p
  %i.cm = mul nuw i64 %i.cb, %i.s
  %i.cn = mul nuw i64 %i.cd, %i.v
  %i.co = mul nuw i64 %i.bv, %i.ae
  %i.cp = mul nuw i64 %i.bx, %i.ab
  %i.cq = mul nuw i64 %i.bz, %i.m
  %i.cr = mul nuw i64 %i.cb, %i.p
  %i.cs = mul nuw i64 %i.cd, %i.s
  %i.ct = mul nuw i64 %i.bv, %i.ah
  %i.cu = mul nuw i64 %i.bx, %i.ae
  %i.cv = mul nuw i64 %i.bz, %i.ab
  %i.cw = mul nuw i64 %i.cb, %i.m
  %i.cx = mul nuw i64 %i.cd, %i.p
  %i.cy = mul nuw i64 %i.bv, %i.ak
  %i.cz = mul nuw i64 %i.bx, %i.ah
  %i.da = mul nuw i64 %i.bz, %i.ae
  %i.db = mul nuw i64 %i.cb, %i.ab
  %i.dc = mul nuw i64 %i.cd, %i.m
  %i.dd = trunc i64 %i.ci to i32
  %i.de = and i32 %i.dd, 67108863
  %i.df = lshr i64 %i.ci, 26
  %i.dg = add i64 %i.cn, %i.cj
  %i.dh = add i64 %i.dg, %i.ck
  %i.di = add i64 %i.dh, %i.cl
  %i.dj = add i64 %i.di, %i.cm
  %i.dk = add i64 %i.dj, %i.df                    ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = and i32 %i.dl, 67108863                 ; 2 uses
  %i.dn = lshr i64 %i.dk, 26
  %i.do = and i64 %i.dn, 4294967295
  %i.dp = add i64 %i.cs, %i.co
  %i.dq = add i64 %i.dp, %i.cp
  %i.dr = add i64 %i.dq, %i.cq
  %i.ds = add i64 %i.dr, %i.cr
  %i.dt = add i64 %i.ds, %i.do                    ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = and i32 %i.du, 67108863                 ; 2 uses
  %i.dw = lshr i64 %i.dt, 26
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = add i64 %i.cx, %i.ct
  %i.dz = add i64 %i.dy, %i.cu
  %i.ea = add i64 %i.dz, %i.cv
  %i.eb = add i64 %i.ea, %i.cw
  %i.ec = add i64 %i.eb, %i.dx                    ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = and i32 %i.ed, 67108863                 ; 2 uses
  %i.ef = lshr i64 %i.ec, 26
  %i.eg = and i64 %i.ef, 4294967295
  %i.eh = add i64 %i.dc, %i.cy
  %i.ei = add i64 %i.eh, %i.cz
  %i.ej = add i64 %i.ei, %i.da
  %i.ek = add i64 %i.ej, %i.db
  %i.el = add i64 %i.ek, %i.eg                    ; 2 uses
  %i.em = trunc i64 %i.el to i32
  %i.en = and i32 %i.em, 67108863                 ; 2 uses
  %i.eo = lshr i64 %i.el, 26
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = mul i32 %i.ep, 5
  %i.er = add i32 %i.eq, %i.de                    ; 2 uses
  %i.es = icmp eq ptr %i.aq, %i.c
  br i1 %i.es, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.b
  store i32 %i.er, ptr %i.f, align 4, !alias.scope !3977, !noalias !3976
  store i32 %i.dm, ptr %i.g, align 8, !alias.scope !3977, !noalias !3976
  store i32 %i.dv, ptr %i.h, align 4, !alias.scope !3977, !noalias !3976
  store i32 %i.ee, ptr %i.i, align 64, !alias.scope !3977, !noalias !3976
  store i32 %i.en, ptr %i.j, align 4, !alias.scope !3977, !noalias !3976
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj10_ENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead8poly13058fallbackNtB1Q_5State15update_internal0EB1W_.exit.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj10_ENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead8poly13058fallbackNtB1Q_5State15update_internal0EB1W_.exit.i: ; preds = %._crit_edge.i.i, %bb.a
  %i.et = icmp eq i64 %i.d, 0
  br i1 %i.et, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead8poly13058fallbackNtB2_5State15update_internal.exit, label %bb.c

bb.c:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj10_ENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead8poly13058fallbackNtB1Q_5State15update_internal0EB1W_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3979
  %i.eu = sub nuw nsw i64 16, %i.d
  %i.ev = getelementptr i8, ptr %i.a, i64 %i.d    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ev, i8 0, i64 %i.eu, i1 false), !noalias !3979
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.a, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, 129) %i.d, i1 false), !alias.scope !3980, !noalias !3981
  store i8 1, ptr %i.ev, align 1, !noalias !3979
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 4, !noalias !3979 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.01.0.copyload.i = load i32, ptr %i.ew, align 4, !noalias !3979
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.02.0.copyload.i = load i32, ptr %i.ex, align 4, !noalias !3979
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.03.0.copyload.i = load i32, ptr %i.ey, align 4, !noalias !3979 ; 2 uses
  %i.ez = and i32 %.sroa.0.0.copyload.i, 67108863
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !alias.scope !3972, !noalias !3973, !noundef !15
  %i.fc = add i32 %i.fb, %i.ez
  %i.fd = zext i32 %.sroa.01.0.copyload.i to i64  ; 2 uses
  %i.fe = shl nuw i64 %i.fd, 32
  %i.ff = zext i32 %.sroa.0.0.copyload.i to i64
  %i.fg = or disjoint i64 %i.fe, %i.ff
  %i.fh = lshr i64 %i.fg, 26
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = and i32 %i.fi, 67108863
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8, !alias.scope !3972, !noalias !3973, !noundef !15
  %i.fm = add i32 %i.fj, %i.fl
  %i.fn = zext i32 %.sroa.02.0.copyload.i to i64  ; 2 uses
  %i.fo = shl nuw i64 %i.fn, 32
  %i.fp = or disjoint i64 %i.fo, %i.fd
  %i.fq = lshr i64 %i.fp, 20
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = and i32 %i.fr, 67108863
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !alias.scope !3972, !noalias !3973, !noundef !15
  %i.fv = add i32 %i.fs, %i.fu
  %i.fw = zext i32 %.sroa.03.0.copyload.i to i64
  %i.fx = shl nuw i64 %i.fw, 32
  %i.fy = or disjoint i64 %i.fx, %i.fn
  %i.fz = lshr i64 %i.fy, 14
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = and i32 %i.ga, 67108863
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 64, !alias.scope !3972, !noalias !3973, !noundef !15
  %i.ge = add i32 %i.gb, %i.gd
  %i.gf = lshr i32 %.sroa.03.0.copyload.i, 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !alias.scope !3972, !noalias !3973, !noundef !15
  %i.gi = add i32 %i.gh, %i.gf
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gk = load i32, ptr %i.gj, align 16, !alias.scope !3982, !noalias !3973, !noundef !15
  %i.gl = zext i32 %i.fc to i64                   ; 5 uses
  %i.gm = zext i32 %i.gk to i64                   ; 5 uses
  %i.gn = mul nuw i64 %i.gm, %i.gl
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gp = load i32, ptr %i.go, align 16, !alias.scope !3982, !noalias !3973, !noundef !15
  %i.gq = zext i32 %i.fm to i64                   ; 5 uses
  %i.gr = zext i32 %i.gp to i64                   ; 4 uses
  %i.gs = mul nuw i64 %i.gr, %i.gq
  %i.gt = add i64 %i.gs, %i.gn
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gv = load i32, ptr %i.gu, align 4, !alias.scope !3982, !noalias !3973, !noundef !15
  %i.gw = zext i32 %i.fv to i64                   ; 5 uses
  %i.gx = zext i32 %i.gv to i64                   ; 3 uses
  %i.gy = mul nuw i64 %i.gx, %i.gw
  %i.gz = add i64 %i.gt, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hb = load i32, ptr %i.ha, align 8, !alias.scope !3982, !noalias !3973, !noundef !15
  %i.hc = zext i32 %i.ge to i64                   ; 5 uses
  %i.hd = zext i32 %i.hb to i64                   ; 2 uses
  %i.he = mul nuw i64 %i.hd, %i.hc
  %i.hf = add i64 %i.gz, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.hh = load i32, ptr %i.hg, align 4, !alias.scope !3982, !noalias !3973, !noundef !15
  %i.hi = zext i32 %i.gi to i64                   ; 5 uses
  %i.hj = zext i32 %i.hh to i64
  %i.hk = mul nuw i64 %i.hj, %i.hi
  %i.hl = add i64 %i.hf, %i.hk                    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.hn = load i32, ptr %i.hm, align 4, !alias.scope !3982, !noalias !3973, !noundef !15
  %i.ho = zext i32 %i.hn to i64                   ; 4 uses
  %i.hp = mul nuw i64 %i.ho, %i.gl
  %i.hq = mul nuw i64 %i.gm, %i.gq
  %i.hr = mul nuw i64 %i.gr, %i.gw
  %i.hs = mul nuw i64 %i.gx, %i.hc
  %i.ht = mul nuw i64 %i.hd, %i.hi
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hv = load i32, ptr %i.hu, align 8, !alias.scope !3982, !noalias !3973, !noundef !15
  %i.hw = zext i32 %i.hv to i64                   ; 3 uses
  %i.hx = mul nuw i64 %i.hw, %i.gl
  %i.hy = mul nuw i64 %i.ho, %i.gq
  %i.hz = mul nuw i64 %i.gm, %i.gw
  %i.ia = mul nuw i64 %i.gr, %i.hc
  %i.ib = mul nuw i64 %i.gx, %i.hi
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.id = load i32, ptr %i.ic, align 4, !alias.scope !3982, !noalias !3973, !noundef !15
  %i.ie = zext i32 %i.id to i64                   ; 2 uses
  %i.if = mul nuw i64 %i.ie, %i.gl
  %i.ig = mul nuw i64 %i.hw, %i.gq
  %i.ih = mul nuw i64 %i.ho, %i.gw
  %i.ii = mul nuw i64 %i.hc, %i.gm
  %i.ij = mul nuw i64 %i.gr, %i.hi
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.il = load i32, ptr %i.ik, align 32, !alias.scope !3982, !noalias !3973, !noundef !15
  %i.im = zext i32 %i.il to i64
  %i.in = mul nuw i64 %i.im, %i.gl
  %i.io = mul nuw i64 %i.ie, %i.gq
  %i.ip = mul nuw i64 %i.hw, %i.gw
  %i.iq = mul nuw i64 %i.ho, %i.hc
  %i.ir = mul nuw i64 %i.gm, %i.hi
  %i.is = trunc i64 %i.hl to i32
  %i.it = and i32 %i.is, 67108863
  %i.iu = lshr i64 %i.hl, 26
  %i.iv = add i64 %i.hr, %i.hq
  %i.iw = add i64 %i.iv, %i.hs
  %i.ix = add i64 %i.iw, %i.ht
  %i.iy = add i64 %i.ix, %i.hp
  %i.iz = add i64 %i.iy, %i.iu                    ; 2 uses
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = and i32 %i.ja, 67108863
  store i32 %i.jb, ptr %i.fk, align 8, !alias.scope !3982, !noalias !3973
  %i.jc = lshr i64 %i.iz, 26
  %i.jd = and i64 %i.jc, 4294967295
  %i.je = add i64 %i.ia, %i.hz
  %i.jf = add i64 %i.je, %i.ib
  %i.jg = add i64 %i.jf, %i.hy
  %i.jh = add i64 %i.jg, %i.hx
  %i.ji = add i64 %i.jh, %i.jd                    ; 2 uses
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = and i32 %i.jj, 67108863
  store i32 %i.jk, ptr %i.ft, align 4, !alias.scope !3982, !noalias !3973
  %i.jl = lshr i64 %i.ji, 26
  %i.jm = and i64 %i.jl, 4294967295
  %i.jn = add i64 %i.ij, %i.ii
  %i.jo = add i64 %i.jn, %i.ih
  %i.jp = add i64 %i.jo, %i.ig
  %i.jq = add i64 %i.jp, %i.if
  %i.jr = add i64 %i.jq, %i.jm                    ; 2 uses
  %i.js = trunc i64 %i.jr to i32
  %i.jt = and i32 %i.js, 67108863
  store i32 %i.jt, ptr %i.gc, align 64, !alias.scope !3982, !noalias !3973
  %i.ju = lshr i64 %i.jr, 26
  %i.jv = and i64 %i.ju, 4294967295
  %i.jw = add i64 %i.iq, %i.ir
  %i.jx = add i64 %i.jw, %i.ip
  %i.jy = add i64 %i.jx, %i.io
  %i.jz = add i64 %i.jy, %i.in
  %i.ka = add i64 %i.jz, %i.jv                    ; 2 uses
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = and i32 %i.kb, 67108863
  store i32 %i.kc, ptr %i.gg, align 4, !alias.scope !3982, !noalias !3973
  %i.kd = lshr i64 %i.ka, 26
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = mul i32 %i.ke, 5
  %i.kg = add i32 %i.kf, %i.it
  store i32 %i.kg, ptr %i.fa, align 4, !alias.scope !3982, !noalias !3973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3979
  br label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead8poly13058fallbackNtB2_5State15update_internal.exit

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead8poly13058fallbackNtB2_5State15update_internal.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj10_ENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead8poly13058fallbackNtB1Q_5State15update_internal0EB1W_.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead9algorithmNtB4_9Algorithm11open_within(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(448) %1, ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(16) %5, ptr noalias nofree noundef nonnull %6, i64 noundef range(i64 0, -9223372036854775808) %7, i64 noundef %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.not = icmp ult i64 %7, %8
  br i1 %.not, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  store ptr %6, ptr %i.b, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %7, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %8, ptr %.sroa.620.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15
  call void %i.d(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(448) %1, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %5)
  %i.e = load ptr, ptr %i.a, align 8, !noundef !15 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.sroa.4.0 = select i1 %i.f, i64 undef, i64 %i.h, !prof !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.1 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch9sub_bytes(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !15 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvNtCs5yxAJGbRKSL_4ring24deprecated_constant_time23verify_slices_are_equal:bb.a
_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYyINtNtBc_7convert4FromhE4fromEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equals_0EB3c_.exit.i.i: ; preds = %.lr.ph.i9.i.i.6, %.lr.ph.i9.i.i.5, %.lr.ph.i9.i.i.4, %.lr.ph.i9.i.i.3, %.lr.ph.i9.i.i.2, %.lr.ph.i9.i.i.1, %.lr.ph.i9.i.i
  %.lcssa.in = phi i8 [ %i.ab, %.lr.ph.i9.i.i ], [ %i.ah, %.lr.ph.i9.i.i.1 ], [ %i.an, %.lr.ph.i9.i.i.2 ], [ %i.at, %.lr.ph.i9.i.i.3 ], [ %i.az, %.lr.ph.i9.i.i.4 ], [ %i.bf, %.lr.ph.i9.i.i.5 ], [ %i.bl, %.lr.ph.i9.i.i.6 ]
  %.lcssa = zext i8 %.lcssa.in to i64
  %i.bm = or i64 %.sroa.0.0.lcssa.i.i.i, %.lcssa
  br label %bb.d

_RNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes23verify_slices_are_equal.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.x, %bb.c ], [ %i.y, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4045
  store i64 %.sroa.0.0.i.i, ptr %i.b, align 8, !noalias !4045
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.b) #36, !noalias !4045, !srcloc !37
  %i.bn = load i64, ptr %i.b, align 8, !noalias !4045, !noundef !15
  %.not.i = icmp eq i64 %i.bn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4045
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs5yxAJGbRKSL_4ring4hkdf8fill_okm(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6.i.i28 = alloca [32 x i8], align 8      ; 4 uses
  %.sroa.7.i.i29 = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.65.i30 = alloca [32 x i8], align 8       ; 4 uses
  %.sroa.76.i31 = alloca [24 x i8], align 8       ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [32 x i8], align 8        ; 4 uses
  %.sroa.7.i.i = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.65.i = alloca [32 x i8], align 8         ; 5 uses
  %.sroa.76.i = alloca [24 x i8], align 8         ; 4 uses
  %i.e = alloca [288 x i8], align 8               ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [288 x i8], align 8               ; 21 uses
  %.not = icmp ne i64 %4, %5                      ; 2 uses
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !noundef !15  ; 4 uses
  %i.j = icmp eq ptr %i.i, null                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.l = select i1 %i.j, ptr %.val, ptr %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 89
  %i.n = load i8, ptr %i.m, align 1, !range !44, !noundef !15 ; 2 uses
  %i.o = zext nneg i8 %i.n to i64                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.76.i)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !4103
  br i1 %i.j, label %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.7.8..sroa_idx.i.i, i64 24, i1 false), !noalias !4103
  br label %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit.i

_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit.i: ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !4105, !noalias !4106, !noundef !15 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4107)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !4108, !noalias !4109, !noundef !15 ; 3 uses
  %i.u = icmp eq ptr %i.t, null                   ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !4103
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !4108, !noalias !4109, !nonnull !15, !align !17, !noundef !15
  br label %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit

bb.e:                                             ; preds = %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.44.8.copyload.i = load ptr, ptr %i.y, align 8, !alias.scope !4110, !noalias !4103
  %.sroa.65.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.65.8..sroa_idx.i, i64 32, i1 false), !noalias !4103
  %.sroa.76.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.76.8..sroa_idx.i, i64 24, i1 false), !noalias !4103
  br label %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit

_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit: ; preds = %bb.d, %bb.e
  %.sroa.44.8.copyload.i37 = phi ptr [ %i.x, %bb.d ], [ %.sroa.44.8.copyload.i, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !4104, !noalias !4103, !noundef !15 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.h, i8 0, i64 128, i1 false), !alias.scope !4103, !noalias !4104
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 7 uses
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !4103, !noalias !4104
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136 ; 5 uses
  store ptr %.val, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4103, !noalias !4104
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i, i64 32, i1 false), !noalias !4104
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i, i64 24, i1 false), !noalias !4104
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 200 ; 6 uses
  store i64 %i.r, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !4103, !noalias !4104
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 208 ; 2 uses
  store ptr %i.t, ptr %i.ab, align 8, !alias.scope !4103, !noalias !4104
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216 ; 2 uses
  store ptr %.sroa.44.8.copyload.i37, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4103, !noalias !4104
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 224 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65.i, i64 32, i1 false), !noalias !4104
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i, i64 24, i1 false), !noalias !4104
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 280 ; 2 uses
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4103, !noalias !4104
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i)
  %.idx = shl nuw nsw i64 %2, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ad = icmp eq i64 %2, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 127 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.sroa.6.8..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.7.8..sroa_idx.i.i34 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.65.8..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.76.8..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit
  %.sroa.015.0 = phi i8 [ 1, %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit ], [ %i.ch, %bb.y ] ; 3 uses
  %.sroa.9.0 = phi i64 [ %4, %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit ], [ %i.ce, %bb.y ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %3, %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit ], [ %i.cd, %bb.y ] ; 3 uses
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %.pre = load i8, ptr %i.ae, align 1, !alias.scope !4111, !noalias !4112
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update.exit
  %i.ah = phi i8 [ %.sroa.0.0.i.i, %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update.exit ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %.sroa.013.083 = phi ptr [ %i.ai, %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update.exit ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.083, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %.sroa.013.083, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.013.083, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !15 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  call void @llvm.experimental.noalias.scope.decl(metadata !4112)
  %i.am = load ptr, ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !4111, !noalias !4112, !noundef !15 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  %.val.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4111, !noalias !4112, !nonnull !15, !align !17
  %i.ao = select i1 %i.an, ptr %.val.i, ptr %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 90
  %i.aq = load i8, ptr %i.ap, align 2, !range !32, !noalias !4113, !noundef !15 ; 2 uses
  %i.ar = zext i8 %i.ah to i64                    ; 3 uses
  %i.as = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !4113
  %.not.i.i.i51 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i51, label %bb.g, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i52, !prof !16

bb.g:                                             ; preds = %.lr.ph
  call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i52

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i52: ; preds = %bb.g, %.lr.ph
  %i.at = zext i8 %i.aq to i64                    ; 3 uses
  %i.au = icmp eq i8 %i.ah, 0
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i52
  %i.av = icmp ugt i8 %i.ah, %i.aq
  br i1 %i.av, label %bb.k, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.m, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i52
  %.sroa.3.0.i.i = phi i64 [ %i.bm, %bb.m ], [ %i.al, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i52 ]
  %.sroa.03.0.i.i = phi ptr [ %i.bl, %bb.m ], [ %i.aj, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i52 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4115
  call void @llvm.experimental.noalias.scope.decl(metadata !4116)
  %i.aw = load ptr, ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !4117, !noalias !4118, !noundef !15 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  %.sroa.gep54.val = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !15, !align !17
  %i.ay = select i1 %i.ax, ptr %.sroa.gep54.val, ptr %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !4119, !nonnull !15, !noundef !15
  call void %i.ba(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx2.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i), !noalias !4120, !inline_history !4068
  %i.bb = load i64, ptr %i.c, align 8, !noalias !4115, !noundef !15
  %i.bc = load ptr, ptr %i.af, align 8, !noalias !4115, !nonnull !15, !noundef !15
  %i.bd = load i64, ptr %i.ag, align 8, !noalias !4115, !noundef !15 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4115
  %i.be = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !4121, !noalias !4122, !noundef !15
  %i.bf = call i64 @llvm.uadd.sat.i64(i64 %i.be, i64 %i.bb)
  store i64 %i.bf, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !4121, !noalias !4122
  %.not.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update.exit, label %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i.i: ; preds = %bb.i
  %..i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bd, i64 range(i64 0, 129) %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(288) %i.h, ptr nonnull readonly align 1 %i.bc, i64 range(i64 0, 129) %..i.i.i.i.i.i, i1 false), !alias.scope !4123, !noalias !4124
  %i.bg = icmp ugt i64 %i.bd, 127
  br i1 %i.bg, label %bb.o, label %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update.exit, !prof !48

bb.j:                                             ; preds = %bb.h
  %i.bh = sub nuw nsw i64 %i.at, %i.ar            ; 4 uses
  %..i.i.i.i13.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.al, i64 range(i64 0, 129) %i.bh) ; 2 uses
  %.not.i.i14.i.i = icmp eq i64 %..i.i.i.i13.i.i, 0
  br i1 %.not.i.i14.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit16.i.i, label %.lr.ph.i.preheader.i15.i.i

.lr.ph.i.preheader.i15.i.i:                       ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull readonly align 1 %i.aj, i64 range(i64 0, 129) %..i.i.i.i13.i.i, i1 false), !alias.scope !4125, !noalias !4126
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit16.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit16.i.i: ; preds = %.lr.ph.i.preheader.i15.i.i, %bb.j
  %.not.i.i = icmp samesign ugt i64 %i.bh, %i.al
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.h
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #41, !noalias !4127
  unreachable

bb.l:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit16.i.i
  %i.bj = add nuw nsw i64 %i.al, %i.ar            ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.bj, 127
  br i1 %i.bk, label %bb.n, label %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update.exit, !prof !16

bb.m:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit16.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bh
  %i.bm = sub nuw nsw i64 %i.al, %i.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !4128)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4129
  call void @llvm.experimental.noalias.scope.decl(metadata !4130)
  %i.bn = load ptr, ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !4131, !noalias !4132, !noundef !15 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  %.sroa.gep.val = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !15, !align !17
  %i.bp = select i1 %i.bo, ptr %.sroa.gep.val, ptr %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !4133, !nonnull !15, !noundef !15
  call void %i.br(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx2.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.at), !noalias !4134, !inline_history !4068
  %i.bs = load i64, ptr %i.b, align 8, !noalias !4129, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4129
  %i.bt = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !4135, !noalias !4136, !noundef !15
  %i.bu = call i64 @llvm.uadd.sat.i64(i64 %i.bt, i64 %i.bs)
  store i64 %i.bu, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !4135, !noalias !4136
  br label %bb.i

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #41, !noalias !4127
  unreachable

bb.o:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #41, !noalias !4120
  unreachable

_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update.exit: ; preds = %bb.i, %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i.i, %bb.l
  %.sroa.0.0.in.i.i = phi i64 [ %i.bj, %bb.l ], [ %i.bd, %_RINvNtNtCs5yxAJGbRKSL_4ring8polyfill9sliceutil18overwrite_at_starthEB6_.exit.i.i ], [ 0, %bb.i ]
  %.sroa.0.0.i.i = trunc nuw nsw i64 %.sroa.0.0.in.i.i to i8 ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.ae, align 1, !alias.scope !4111, !noalias !4112
  %i.bv = icmp eq ptr %i.ai, %i.ac
  br i1 %i.bv, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %.sroa.015.0, ptr %i.g, align 1
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.e, ptr noundef nonnull align 8 dereferenceable(288) %i.h, i64 288, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4138
  %i.bw = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !4138
  %.not.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.p, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i, !prof !16

bb.p:                                             ; preds = %._crit_edge
  call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i: ; preds = %bb.p, %._crit_edge
  call fastcc void @_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8try_sign(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(288) %i.e), !noalias !4137
  %i.bx = load ptr, ptr %i.d, align 8, !noalias !4138, !noundef !15 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.q, label %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context4sign.exit, !prof !16

bb.q:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4138
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #41, !noalias !4139
  unreachable

_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context4sign.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i25, i64 64, i1 false), !noalias !4140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4138
  call void @llvm.experimental.noalias.scope.decl(metadata !4141)
  call void @llvm.experimental.noalias.scope.decl(metadata !4142)
  store ptr %i.bx, ptr %i.f, align 8, !alias.scope !4143, !noalias !4144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 89
  %i.ca = load i8, ptr %i.bz, align 1, !range !44, !noundef !15 ; 2 uses
  %i.cb = zext nneg i8 %i.ca to i64               ; 4 uses
  %i.cc = icmp ult i64 %.sroa.9.0, %i.o
  br i1 %i.cc, label %bb.s, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh12split_at_mutCs5yxAJGbRKSL_4ring.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSh12split_at_mutCs5yxAJGbRKSL_4ring.exit: ; preds = %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context4sign.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.o
  %i.ce = sub nuw nsw i64 %.sroa.9.0, %i.o        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  call void @llvm.experimental.noalias.scope.decl(metadata !4146)
  %.not.i26 = icmp eq i8 %i.n, %i.ca
  br i1 %.not.i26, label %bb.t, label %bb.r, !prof !19

bb.r:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh12split_at_mutCs5yxAJGbRKSL_4ring.exit
  call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #41, !noalias !4147
  unreachable

bb.s:                                             ; preds = %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context4sign.exit
  %.not24 = icmp ugt i64 %.sroa.9.0, %i.cb
  br i1 %.not24, label %bb.u, label %.thread, !prof !30

bb.t:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh12split_at_mutCs5yxAJGbRKSL_4ring.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0, ptr noundef nonnull readonly align 8 dereferenceable(1) %.sroa.6.0..sroa_idx2.i, i64 range(i64 0, -9223372036854775808) %i.o, i1 false), !alias.scope !4147, !noalias !4148
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.loopexit, label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.9.0, i64 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #41
  unreachable

.thread:                                          ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull readonly align 8 %.sroa.6.0..sroa_idx2.i, i64 range(i64 0, -9223372036854775808) %.sroa.9.0, i1 false), !alias.scope !4149, !noalias !4150
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i28)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i29)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i30)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.76.i31)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i28, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.6.8..sroa_idx.i.i33, i64 32, i1 false), !noalias !4151
  br i1 %i.j, label %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit.i35, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i29, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.7.8..sroa_idx.i.i34, i64 24, i1 false), !noalias !4151
  br label %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit.i35

_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit.i35: ; preds = %bb.v, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65.i30, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.65.8..sroa_idx.i38, i64 32, i1 false), !noalias !4151
  br i1 %i.u, label %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit50, label %bb.x

bb.x:                                             ; preds = %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit.i35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i31, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.76.8..sroa_idx.i39, i64 24, i1 false), !noalias !4151
  br label %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit50

_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit50: ; preds = %_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context10clone_from.exit.i35, %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, i8 0, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i28, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i29, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.65.i30, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i31, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i28)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i30)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i31)
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx2.i, align 8
  store ptr %.val, ptr %.sroa.5.0..sroa_idx.i, align 8
  store i64 %i.r, ptr %.sroa.8.0..sroa_idx.i, align 8
  store ptr %i.t, ptr %i.ab, align 8
  store ptr %.sroa.44.8.copyload.i37, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0..sroa_idx2.i, i64 noundef range(i64 0, -9223372036854775808) %i.cb)
  %i.cg = icmp eq i8 %.sroa.015.0, -1
  br i1 %i.cg, label %bb.z, label %bb.y, !prof !16

.loopexit:                                        ; preds = %bb.t, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aa

bb.y:                                             ; preds = %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit50
  %i.ch = add nuw i8 %.sroa.015.0, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.z:                                             ; preds = %_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8with_key.exit50
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #41
  unreachable

bb.aa:                                            ; preds = %bb.a, %.loopexit
  ret i1 %.not
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs5yxAJGbRKSL_4ring4hmac4sign(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.6.i.i.i = alloca [32 x i8], align 8      ; 5 uses
  %.sroa.7.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.65.i.i = alloca [32 x i8], align 8       ; 5 uses
  %.sroa.76.i.i = alloca [24 x i8], align 8       ; 4 uses
  %i.b = alloca [288 x i8], align 8               ; 4 uses
  %i.c = alloca [288 x i8], align 8               ; 15 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
end_hunk_8
begin_hunk_9_@_RNvNtCs5yxAJGbRKSL_4ring4hmac6verify:bb.a
  %wide.load = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !4257, !noalias !4258
  %wide.load9 = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !4257, !noalias !4258
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load10 = load <2 x i64>, ptr %i.ai, align 1, !alias.scope !4259, !noalias !4260
  %wide.load11 = load <2 x i64>, ptr %i.aj, align 1, !alias.scope !4259, !noalias !4260
  %i.ak = xor <2 x i64> %wide.load10, %wide.load
  %i.al = xor <2 x i64> %wide.load11, %wide.load9
  %i.am = or <2 x i64> %i.ak, %vec.phi            ; 2 uses
  %i.an = or <2 x i64> %i.al, %vec.phi8           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !4224

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.an, %i.am
  %i.ap = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterAhj8_EENvMs7_NtBc_3numy13from_le_bytesEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equal0EB3f_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i, %middle.block
  %.sroa.0.012.i.i.i.i.ph = phi i64 [ 0, %bb.i ], [ %i.ap, %middle.block ]
  %.sroa.02.011.i.i.i.i.ph = phi i64 [ 0, %bb.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.sroa.0.012.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i ], [ %.sroa.0.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.02.011.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i ], [ %.sroa.02.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.aq = add nuw nsw i64 %.sroa.02.011.i.i.i.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.sroa.3.0..sroa_idx.i, i64 %.sroa.02.011.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !4257, !noalias !4258
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.02.011.i.i.i.i
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i = load i64, ptr %i.as, align 1, !alias.scope !4259, !noalias !4260
  %i.at = xor i64 %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  %i.au = or i64 %i.at, %.sroa.0.012.i.i.i.i      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aq, %i.af
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterAhj8_EENvMs7_NtBc_3numy13from_le_bytesEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equal0EB3f_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4225

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterAhj8_EENvMs7_NtBc_3numy13from_le_bytesEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equal0EB3f_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.lcssa7 = phi i64 [ %i.ap, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.av = and i64 %4, 9223372036854775800         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.3.0..sroa_idx.i, i64 %i.av ; 7 uses
  %i.ax = and i64 %4, 7                           ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %i.av ; 7 uses
  %i.az = icmp eq i64 %i.ax, 0
  br i1 %i.az, label %bb.k, label %.lr.ph.i9.i.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4261
  store i64 0, ptr %i.a, align 8, !noalias !4261
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !4262, !srcloc !37
  %i.ba = load i64, ptr %i.a, align 8, !noalias !4261, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4261
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes23verify_slices_are_equal.exit.i

bb.k:                                             ; preds = %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYyINtNtBc_7convert4FromhE4fromEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equals_0EB3c_.exit.i.i.i, %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterAhj8_EENvMs7_NtBc_3numy13from_le_bytesEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equal0EB3f_.exit.i.i.i
  %.sroa.01.0.i.i.i = phi i64 [ %.lcssa7, %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterAhj8_EENvMs7_NtBc_3numy13from_le_bytesEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equal0EB3f_.exit.i.i.i ], [ %i.cp, %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYyINtNtBc_7convert4FromhE4fromEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equals_0EB3c_.exit.i.i.i ]
  %i.bb = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %.sroa.01.0.i.i.i) #36, !noalias !4262
  br label %_RNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes23verify_slices_are_equal.exit.i

.lr.ph.i9.i.i.i:                                  ; preds = %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterAhj8_EENvMs7_NtBc_3numy13from_le_bytesEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equal0EB3f_.exit.i.i.i
  %i.bc = load i8, ptr %i.aw, align 8, !alias.scope !4257, !noalias !4263, !noundef !15
  %i.bd = load i8, ptr %i.ay, align 1, !alias.scope !4259, !noalias !4264, !noundef !15
  %i.be = xor i8 %i.bd, %i.bc                     ; 2 uses
  %exitcond.not.i14.i.i.i = icmp eq i64 %i.ax, 1
  br i1 %exitcond.not.i14.i.i.i, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYyINtNtBc_7convert4FromhE4fromEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equals_0EB3c_.exit.i.i.i, label %.lr.ph.i9.i.i.i.1

.lr.ph.i9.i.i.i.1:                                ; preds = %.lr.ph.i9.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !4257, !noalias !4263, !noundef !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !4259, !noalias !4264, !noundef !15
  %i.bj = xor i8 %i.bi, %i.bg
  %i.bk = or i8 %i.be, %i.bj                      ; 2 uses
  %exitcond.not.i14.i.i.i.1 = icmp eq i64 %i.ax, 2
  br i1 %exitcond.not.i14.i.i.i.1, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYyINtNtBc_7convert4FromhE4fromEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equals_0EB3c_.exit.i.i.i, label %.lr.ph.i9.i.i.i.2

.lr.ph.i9.i.i.i.2:                                ; preds = %.lr.ph.i9.i.i.i.1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.bm = load i8, ptr %i.bl, align 2, !alias.scope !4257, !noalias !4263, !noundef !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !4259, !noalias !4264, !noundef !15
  %i.bp = xor i8 %i.bo, %i.bm
  %i.bq = or i8 %i.bk, %i.bp                      ; 2 uses
  %exitcond.not.i14.i.i.i.2 = icmp eq i64 %i.ax, 3
  br i1 %exitcond.not.i14.i.i.i.2, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYyINtNtBc_7convert4FromhE4fromEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equals_0EB3c_.exit.i.i.i, label %.lr.ph.i9.i.i.i.3

.lr.ph.i9.i.i.i.3:                                ; preds = %.lr.ph.i9.i.i.i.2
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !4257, !noalias !4263, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !4259, !noalias !4264, !noundef !15
  %i.bv = xor i8 %i.bu, %i.bs
  %i.bw = or i8 %i.bq, %i.bv                      ; 2 uses
  %exitcond.not.i14.i.i.i.3 = icmp eq i64 %i.ax, 4
  br i1 %exitcond.not.i14.i.i.i.3, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYyINtNtBc_7convert4FromhE4fromEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equals_0EB3c_.exit.i.i.i, label %.lr.ph.i9.i.i.i.4

.lr.ph.i9.i.i.i.4:                                ; preds = %.lr.ph.i9.i.i.i.3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.by = load i8, ptr %i.bx, align 4, !alias.scope !4257, !noalias !4263, !noundef !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !4259, !noalias !4264, !noundef !15
  %i.cb = xor i8 %i.ca, %i.by
  %i.cc = or i8 %i.bw, %i.cb                      ; 2 uses
  %exitcond.not.i14.i.i.i.4 = icmp eq i64 %i.ax, 5
  br i1 %exitcond.not.i14.i.i.i.4, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYyINtNtBc_7convert4FromhE4fromEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equals_0EB3c_.exit.i.i.i, label %.lr.ph.i9.i.i.i.5

.lr.ph.i9.i.i.i.5:                                ; preds = %.lr.ph.i9.i.i.i.4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !4257, !noalias !4263, !noundef !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ay, i64 5
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !4259, !noalias !4264, !noundef !15
  %i.ch = xor i8 %i.cg, %i.ce
  %i.ci = or i8 %i.cc, %i.ch                      ; 2 uses
  %exitcond.not.i14.i.i.i.5 = icmp eq i64 %i.ax, 6
  br i1 %exitcond.not.i14.i.i.i.5, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYyINtNtBc_7convert4FromhE4fromEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equals_0EB3c_.exit.i.i.i, label %.lr.ph.i9.i.i.i.6

.lr.ph.i9.i.i.i.6:                                ; preds = %.lr.ph.i9.i.i.i.5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  %i.ck = load i8, ptr %i.cj, align 2, !alias.scope !4257, !noalias !4263, !noundef !15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %i.cm = load i8, ptr %i.cl, align 1, !alias.scope !4259, !noalias !4264, !noundef !15
  %i.cn = xor i8 %i.cm, %i.ck
  %i.co = or i8 %i.ci, %i.cn
  br label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYyINtNtBc_7convert4FromhE4fromEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equals_0EB3c_.exit.i.i.i

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterhEENvYyINtNtBc_7convert4FromhE4fromEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equals_0EB3c_.exit.i.i.i: ; preds = %.lr.ph.i9.i.i.i.6, %.lr.ph.i9.i.i.i.5, %.lr.ph.i9.i.i.i.4, %.lr.ph.i9.i.i.i.3, %.lr.ph.i9.i.i.i.2, %.lr.ph.i9.i.i.i.1, %.lr.ph.i9.i.i.i
  %.lcssa.in = phi i8 [ %i.be, %.lr.ph.i9.i.i.i ], [ %i.bk, %.lr.ph.i9.i.i.i.1 ], [ %i.bq, %.lr.ph.i9.i.i.i.2 ], [ %i.bw, %.lr.ph.i9.i.i.i.3 ], [ %i.cc, %.lr.ph.i9.i.i.i.4 ], [ %i.ci, %.lr.ph.i9.i.i.i.5 ], [ %i.co, %.lr.ph.i9.i.i.i.6 ]
  %.lcssa = zext i8 %.lcssa.in to i64
  %i.cp = or i64 %.lcssa7, %.lcssa
  br label %bb.k

_RNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes23verify_slices_are_equal.exit.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i = phi i64 [ %i.ba, %bb.j ], [ %i.bb, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4265
  store i64 %.sroa.0.0.i.i.i, ptr %i.b, align 8, !noalias !4265
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.b) #36, !noalias !4266, !srcloc !37
  %i.cq = load i64, ptr %i.b, align 8, !noalias !4265, !noundef !15
  %.not.i.i1 = icmp eq i64 %i.cq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4265
  br label %_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key6verify.exit

_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key6verify.exit: ; preds = %bb.g, %_RNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes23verify_slices_are_equal.exit.i
  %.sroa.0.1.i = phi i1 [ true, %bb.g ], [ %.not.i.i1, %_RNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes23verify_slices_are_equal.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4232
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.thread72, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %2, 3
  %i.d = and i64 %2, 7
  %.not.i34 = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not.i34 to i64
  %.sroa.0.0.i35 = add nuw nsw i64 %i.c, %i.e     ; 4 uses
  %i.f = icmp ugt i64 %.sroa.0.0.i35, %3
  br i1 %i.f, label %.thread72, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !15 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !15 ; 3 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sub nuw i64 %i.h, %i.j
  %i.m = icmp ult i64 %i.l, %3
  br i1 %i.m, label %.thread72, label %.lr.ph.i, !prof !16

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #41
  unreachable

.lr.ph.i:                                         ; preds = %bb.d
  %i.n = sub i64 %3, %.sroa.0.0.i35               ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !nonnull !15, !align !17 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCB11_s_0E0E0B15_.exit.i
  %i.p = phi i64 [ %i.j, %.lr.ph.i ], [ %i.ab, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCB11_s_0E0E0B15_.exit.i ] ; 7 uses
  %i.q = phi i64 [ %2, %.lr.ph.i ], [ %i.r, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCB11_s_0E0E0B15_.exit.i ] ; 4 uses
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.q, i64 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4291
  store i64 0, ptr %i.a, align 8, !noalias !4291
  %.not.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_RNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0B5_.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.f
  %i.s = sub nuw i64 %i.q, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.u = sub nuw nsw i64 8, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.t, i64 range(i64 0, 129) %i.s, i1 false), !alias.scope !4292, !noalias !4293
  %.sroa.0.0.copyload.pre.i.i.i = load i64, ptr %i.a, align 8, !noalias !4291
  %i.w = tail call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.pre.i.i.i)
  br label %_RNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0B5_.exit.i.i

_RNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0B5_.exit.i.i: ; preds = %.lr.ph.i.preheader.i.i.i.i, %bb.f
  %.sroa.0.0.copyload.i.i.i = phi i64 [ 0, %bb.f ], [ %i.w, %.lr.ph.i.preheader.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4291
  %i.x = icmp ult i64 %i.h, %i.p
  br i1 %i.x, label %bb.g, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i, !prof !16

bb.g:                                             ; preds = %_RNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0B5_.exit.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #41, !noalias !4294
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i: ; preds = %_RNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0B5_.exit.i.i
  %i.y = icmp eq i64 %i.h, %i.p
  br i1 %i.y, label %bb.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.z, align 8, !alias.scope !4295, !noalias !4296
  %i.aa = icmp eq i64 %i.p, -1
  br i1 %i.aa, label %bb.h, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCB11_s_0E0E0B15_.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #41, !noalias !4297
  unreachable

bb.i:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #41, !noalias !4297
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCB11_s_0E0E0B15_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = add nuw i64 %i.p, 1                     ; 5 uses
  store i64 %i.ab, ptr %i.i, align 8, !noalias !4297
  %.not.i46 = icmp ugt i64 %i.q, 8
  br i1 %.not.i46, label %bb.f, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callyNCB11_s_0E0E0B15_.exit.i
  %.not = icmp ugt i64 %i.h, %i.p
  br i1 %.not, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i, label %bb.j, !prof !19

bb.j:                                             ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #41, !noalias !4298
  unreachable

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7RChunkshENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldRShyuNCNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded0NCINvNvBO_8for_each4callyNCB2e_s_0E0E0EB2i_.exit
  %i.ac = sub nuw i64 %i.h, %i.ab                 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.n
  br i1 %i.ad, label %_RNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6CursoryE12write_repeatB9_.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i
  %i.ae = icmp eq i64 %3, %.sroa.0.0.i35
  br i1 %i.ae, label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %.idx.i = shl i64 %i.n, 3
  %i.af = getelementptr [8 x i8], ptr %i.o, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %.idx.i, i1 false), !alias.scope !4299, !noalias !4300
  br label %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i

_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i: ; preds = %.lr.ph.i.i.preheader, %bb.k
  %i.ag = add i64 %i.ab, %i.n                     ; 2 uses
  %.not80 = icmp ugt i64 %i.ag, %i.p
  br i1 %.not80, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i
  store i64 %i.ag, ptr %i.i, align 8
  br label %_RNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6CursoryE12write_repeatB9_.exit

bb.m:                                             ; preds = %_RINvXs2Q_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninityEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB2x_6CursoryE12write_repeats_0EB2B_.exit.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #41
  unreachable

_RNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6CursoryE12write_repeatB9_.exit: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i, %bb.l
  %.sroa.0.0.i47 = phi i64 [ 0, %bb.l ], [ 1, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i ]
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i47, 0
  br label %.thread72

.thread72:                                        ; preds = %bb.b, %bb.d, %bb.a, %_RNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6CursoryE12write_repeatB9_.exit
  %.pn = phi { i64, i64 } [ %i.ah, %_RNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6CursoryE12write_repeatB9_.exit ], [ { i64 1, i64 poison }, %bb.a ], [ { i64 1, i64 poison }, %bb.d ], [ { i64 1, i64 poison }, %bb.b ]
  %.sroa.5.0.pn = phi i64 [ %i.ac, %_RNvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6CursoryE12write_repeatB9_.exit ], [ 0, %bb.a ], [ %3, %bb.d ], [ %.sroa.0.0.i35, %bb.b ]
  %.merged = insertvalue { i64, i64 } %.pn, i64 %.sroa.5.0.pn, 1
  ret { i64, i64 } %.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i8 noundef range(i8 0, 3) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4335)
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %4, align 1, !noalias !4336, !noundef !15 ; 2 uses
  %i.c = and i8 %i.b, 31
  %i.d = icmp ne i8 %i.c, 31
  %i.e = icmp ne i64 %5, 1
  %or.cond.i.i.i.i = and i1 %i.e, %i.d
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.g = load i8, ptr %i.f, align 1, !noalias !4336, !noundef !15 ; 3 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i8 %i.g to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  switch i8 %i.g, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread.i [
    i8 -127, label %bb.g
    i8 -126, label %bb.h
  ]

bb.f:                                             ; preds = %bb.k, %bb.j, %bb.d
  %i.j = phi i64 [ 2, %bb.d ], [ 3, %bb.j ], [ 4, %bb.k ] ; 2 uses
  %.sroa.019.0.i.i.i.i.i = phi i64 [ %i.i, %bb.d ], [ %i.q, %bb.j ], [ %i.y, %bb.k ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.019.0.i.i.i.i.i, %i.j ; 2 uses
  %.not.i.i.i.i.i.i = icmp samesign ule i64 %i.k, %5
  %.not.i.i.i.i = icmp eq i8 %i.b, 48
  %or.cond18.i = and i1 %.not.i.i.i.i, %.not.i.i.i.i.i.i
  br i1 %or.cond18.i, label %bb.l, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread.i, !prof !39

bb.g:                                             ; preds = %bb.e
  %i.l = icmp samesign ugt i64 %5, 2
  br i1 %i.l, label %bb.i, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread.i

bb.h:                                             ; preds = %bb.e
  %i.m = icmp samesign ugt i64 %5, 3
  br i1 %i.m, label %bb.k, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread.i

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.o = load i8, ptr %i.n, align 1, !noalias !4336, !noundef !15 ; 2 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = zext i8 %i.o to i64
  br label %bb.f

bb.k:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.s = load i8, ptr %i.r, align 1, !noalias !4336, !noundef !15 ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.v = load i8, ptr %i.u, align 1, !noalias !4336, !noundef !15
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.t, 8
  %i.y = or disjoint i64 %i.x, %i.w
  %i.z = icmp eq i8 %i.s, 0
  br i1 %i.z, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread.i, label %bb.f

bb.l:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4337
  store ptr %i.aa, ptr %i.a, align 8, !noalias !4337
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store i64 %.sroa.019.0.i.i.i.i.i, ptr %i.ab, align 8, !noalias !4337
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  store i64 0, ptr %i.ac, align 8, !noalias !4337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4339)
  %i.ad = call { ptr, i64 } @_RNvNtNtCs5yxAJGbRKSL_4ring2io3der19nonnegative_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !4340 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 2 uses
  %i.af = icmp ne ptr %i.ae, null
  %i.ag = extractvalue { ptr, i64 } %i.ad, 1
  %i.ah = icmp eq i64 %i.ag, 1
  %or.cond.i.i.i16.i.i.i = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i16.i.i.i, label %bb.m, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread13.i

bb.m:                                             ; preds = %bb.l
  %i.ai = load i8, ptr %i.ae, align 1, !noalias !4341, !noundef !15 ; 2 uses
  %i.aj = icmp ugt i8 %i.ai, 1
  br i1 %i.aj, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread13.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4343)
  %i.ak = load i64, ptr %i.ac, align 8, !alias.scope !4344, !noalias !4345, !noundef !15 ; 7 uses
  %i.al = load i64, ptr %i.ab, align 8, !alias.scope !4344, !noalias !4345, !noundef !15 ; 6 uses
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.o, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread13.i

bb.o:                                             ; preds = %bb.n
  %i.an = add nuw i64 %i.ak, 1                    ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !alias.scope !4344, !noalias !4345, !nonnull !15, !noundef !15 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !4346, !noundef !15 ; 2 uses
  %i.ar = and i8 %i.aq, 31
  %i.as = icmp ne i8 %i.ar, 31
  %i.at = icmp ult i64 %i.an, %i.al
  %or.cond.i.i.i.i.i.i.i = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.p, label %_RNCNvNtCs5yxAJGbRKSL_4ring5pkcs811unwrap_key_0B5_.exit.thread13.i

bb.p:                                             ; preds = %bb.o
end_hunk_9
begin_hunk_10_@_RNvNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs112pkcs1_encode:bb.a
  br i1 %exitcond, label %bb.i, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.af = zext nneg i8 %i.ae to i64
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef range(i64 0, -9223372036854775808) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #41, !noalias !5412
  unreachable

_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5yxAJGbRKSL_4ring.exit13: ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ag, i64 range(i64 0, -9223372036854775808) %i.g, i1 false), !alias.scope !5412, !noalias !5413
  ret void

bb.h:                                             ; preds = %.lr.ph
  %i.ai = add nuw i64 %.sroa.01.015, 1            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.015
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 -1, ptr %i.ak, align 1
  %exitcond17.not = icmp eq i64 %i.ai, %i.m
  br i1 %exitcond17.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5407

bb.i:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #41
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback9sub_block(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = lshr i64 %.0.val, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = and i64 %i.d, 6148914691236517205        ; 3 uses
  %i.g = shl nuw i64 %i.f, 1
  %i.h = xor i64 %i.g, %.0.val                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5435, !noundef !15 ; 2 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !5435, !noundef !15 ; 2 uses
  %i.n = xor i64 %i.k, %i.m
  %i.o = and i64 %i.n, 6148914691236517205        ; 2 uses
  %i.p = shl nuw i64 %i.o, 1
  %i.q = xor i64 %i.p, %i.j                       ; 2 uses
  %i.r = xor i64 %i.o, %i.m                       ; 2 uses
  %i.s = lshr i64 %.8.val, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !5436, !noundef !15 ; 2 uses
  %i.v = xor i64 %i.u, %i.s
  %i.w = and i64 %i.v, 6148914691236517205        ; 2 uses
  %i.x = shl nuw i64 %i.w, 1
  %i.y = xor i64 %i.x, %.8.val                    ; 2 uses
  %i.z = xor i64 %i.w, %i.u                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !5437, !noundef !15 ; 2 uses
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !5437, !noundef !15 ; 2 uses
  %i.af = xor i64 %i.ac, %i.ae
  %i.ag = and i64 %i.af, 6148914691236517205      ; 2 uses
  %i.ah = shl nuw i64 %i.ag, 1
  %i.ai = xor i64 %i.ah, %i.ab                    ; 2 uses
  %i.aj = xor i64 %i.ag, %i.ae                    ; 2 uses
  %i.ak = lshr i64 %i.h, 2
  %i.al = xor i64 %i.q, %i.ak
  %i.am = and i64 %i.al, 3689348814741910323      ; 2 uses
  %i.an = shl nuw i64 %i.am, 2
  %i.ao = xor i64 %i.an, %i.h
  store i64 %i.ao, ptr %i.a, align 8, !alias.scope !5438
  %i.ap = xor i64 %i.am, %i.q
  store i64 %i.ap, ptr %i.i, align 8, !alias.scope !5438
  %i.aq = lshr i64 %i.f, 2
  %i.ar = xor i64 %i.r, %i.aq
  %i.as = and i64 %i.ar, 3689348814741910323      ; 2 uses
  %i.at = shl nuw i64 %i.as, 2
  %i.au = xor i64 %i.at, %i.f
  store i64 %i.au, ptr %i.e, align 8, !alias.scope !5439
  %i.av = xor i64 %i.as, %i.r
  store i64 %i.av, ptr %i.l, align 8, !alias.scope !5439
  %i.aw = lshr i64 %i.y, 2
  %i.ax = xor i64 %i.ai, %i.aw
  %i.ay = and i64 %i.ax, 3689348814741910323      ; 2 uses
  %i.az = shl nuw i64 %i.ay, 2
  %i.ba = xor i64 %i.az, %i.y
  store i64 %i.ba, ptr %i.c, align 8, !alias.scope !5440
  %i.bb = xor i64 %i.ay, %i.ai
  store i64 %i.bb, ptr %i.aa, align 8, !alias.scope !5440
  %i.bc = lshr i64 %i.z, 2
  %i.bd = xor i64 %i.aj, %i.bc
  %i.be = and i64 %i.bd, 3689348814741910323      ; 2 uses
  %i.bf = shl nuw i64 %i.be, 2
  %i.bg = xor i64 %i.bf, %i.z
  store i64 %i.bg, ptr %i.t, align 8, !alias.scope !5441
  %i.bh = xor i64 %i.be, %i.aj
  store i64 %i.bh, ptr %i.ad, align 8, !alias.scope !5441
  call fastcc void @_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch9sub_bytes(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a) #39
  %i.bi = load <8 x i64>, ptr %i.a, align 8, !alias.scope !5442 ; 4 uses
  %i.bj = shufflevector <8 x i64> %i.bi, <8 x i64> poison, <2 x i32> <i32 1, i32 5>
  %i.bk = shl <2 x i64> %i.bj, splat (i64 1)
  %i.bl = and <2 x i64> %i.bk, splat (i64 -6148914691236517206)
  %i.bm = shufflevector <8 x i64> %i.bi, <8 x i64> poison, <2 x i32> <i32 0, i32 4>
  %i.bn = and <2 x i64> %i.bm, splat (i64 6148914691236517205)
  %i.bo = or disjoint <2 x i64> %i.bl, %i.bn      ; 2 uses
  %i.bp = shufflevector <8 x i64> %i.bi, <8 x i64> poison, <2 x i32> <i32 3, i32 7>
  %i.bq = shl <2 x i64> %i.bp, splat (i64 1)
  %i.br = and <2 x i64> %i.bq, splat (i64 2459565876494606882)
  %i.bs = shufflevector <8 x i64> %i.bi, <8 x i64> poison, <2 x i32> <i32 2, i32 6>
  %i.bt = and <2 x i64> %i.bs, splat (i64 1229782938247303441)
  %i.bu = or disjoint <2 x i64> %i.br, %i.bt
  %i.bv = shl nuw <2 x i64> %i.bu, splat (i64 2)
  %i.bw = and <2 x i64> %i.bo, splat (i64 -3689348814741910324)
  %i.bx = xor <2 x i64> %i.bw, %i.bv
  %i.by = xor <2 x i64> %i.bx, %i.bo
  store <2 x i64> %i.by, ptr %0, align 8, !alias.scope !5443, !noalias !5444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm15aeshwclmulmovbe4open(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noalias nofree noundef nonnull align 1 captures(address) dead_on_return dereferenceable(16) %3, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %7) unnamed_addr #11 personality ptr @rust_eh_personality {
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
  %i.j = alloca [1 x i8], align 1                 ; 3 uses
  %i.k = alloca [40 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 1                ; 4 uses
  %i.m = alloca [16 x i8], align 1                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 11 uses
  %i.o = alloca [16 x i8], align 1                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.12 = alloca [24 x i8], align 8           ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5543)
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5543, !noundef !15 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !5543, !noundef !15 ; 14 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !5543
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit: ; preds = %bb.a
  %i.w = load ptr, ptr %7, align 8, !alias.scope !5543, !nonnull !15, !noundef !15 ; 4 uses
  %i.x = sub nuw i64 %i.s, %i.u                   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.z = icmp ugt i64 %i.x, 68719476704
  br i1 %i.z, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread, label %bb.c, !prof !16

bb.c:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit
  %i.aa = icmp ugt i64 %6, 2305843009213693951
  br i1 %i.aa, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.ab = shl nuw nsw i64 %i.x, 3
  %i.ac = shl nuw i64 %6, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5544
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.n, align 8, !noalias !5544
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !5544
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.ab, ptr %i.af, align 8, !noalias !5544
  %i.ag = icmp eq i64 %6, 0
  br i1 %i.ag, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread53, label %.lr.ph.i.preheader.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread53: ; preds = %bb.d
  %.sroa.530.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.530.0..sroa_idx56, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5544
  br label %bb.e

.lr.ph.i.preheader.i:                             ; preds = %bb.d, %.lr.ph.i.preheader.i
  %.sroa.025.042 = phi ptr [ %i.ah, %.lr.ph.i.preheader.i ], [ %5, %bb.d ] ; 2 uses
  %.sroa.526.041 = phi i64 [ %i.ai, %.lr.ph.i.preheader.i ], [ %6, %bb.d ] ; 3 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.526.041, i64 16) ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.025.042, i64 %..i.i
  %i.ai = sub nuw nsw i64 %.sroa.526.041, %..i.i  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.aj = icmp ugt i64 %.sroa.526.041, 15
  %i.ak = sub nuw nsw i64 16, %..i.i
  %i.al = select i1 %i.aj, i64 0, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.m, i64 %..i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 0, i64 %i.al, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.025.042, i64 range(i64 0, 129) %..i.i, i1 false), !alias.scope !5545, !noalias !5546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, ptr noundef nonnull align 1 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !5544
  %i.an = load ptr, ptr %i.n, align 8, !noalias !5544, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_avx(ptr noalias nofree noundef nonnull dereferenceable(16) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.an, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.l, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !5547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ao = icmp eq i64 %i.ai, 0
  br i1 %i.ao, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit, label %.lr.ph.i.preheader.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit: ; preds = %.lr.ph.i.preheader.i
  %.sroa.028.0.copyload.pre = load ptr, ptr %i.n, align 8, !noalias !5544 ; 2 uses
  %.sroa.429.0.copyload.pre = load i64, ptr %i.ad, align 8, !noalias !5544 ; 2 uses
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.530.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5544
  %i.ap = icmp eq ptr %.sroa.028.0.copyload.pre, null
  br i1 %i.ap, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread, label %bb.e

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread: ; preds = %bb.c, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit
  %.sroa.811.038 = phi i64 [ %.sroa.429.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit ], [ %i.x, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit ], [ %6, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.811.038, ptr %i.aq, align 8
  br label %bb.p

bb.e:                                             ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread53, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit
  %.sroa.028.0.copyload58 = phi ptr [ %2, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread53 ], [ %.sroa.028.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit ] ; 2 uses
  %.sroa.429.0.copyload57 = phi i64 [ 0, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread53 ], [ %.sroa.429.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  store ptr %.sroa.028.0.copyload58, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i64 %.sroa.429.0.copyload57, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ar = icmp samesign ugt i64 %i.x, 95
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = urem i64 %i.x, 96
  %i.at = sub nuw nsw i64 %i.x, %i.as             ; 4 uses
  %i.au = add i64 %i.at, %i.u                     ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.u
  %.not.i9 = icmp ugt i64 %i.au, %i.s
  %or.cond = or i1 %i.av, %.not.i9
  br i1 %or.cond, label %bb.o, label %_RNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm15aeshwclmulmovbe4open0B9_.exit.i, !prof !29

_RNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm15aeshwclmulmovbe4open0B9_.exit.i: ; preds = %bb.f
  call void @ring_core_0_17_16000__aesni_gcm_decrypt(ptr noundef nonnull %i.y, ptr noundef nonnull %i.w, i64 noundef range(i64 1, 0) %i.at, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull dereferenceable(16) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.028.0.copyload58, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx) #36, !noalias !5548
  %i.aw = sub nuw i64 %i.s, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.at
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_RNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm15aeshwclmulmovbe4open0B9_.exit.i
  %.sroa.3.0 = phi i64 [ %i.aw, %_RNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm15aeshwclmulmovbe4open0B9_.exit.i ], [ %i.s, %bb.e ] ; 5 uses
  %.sroa.012.0 = phi ptr [ %i.ax, %_RNCNvNtNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm15aeshwclmulmovbe4open0B9_.exit.i ], [ %i.w, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.o, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5549)
  call void @llvm.experimental.noalias.scope.decl(metadata !5550)
  %i.ay = icmp ult i64 %.sroa.3.0, %i.u
  br i1 %i.ay, label %bb.h, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i, !prof !16

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #41, !noalias !5551
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i: ; preds = %bb.g
  %i.az = sub nuw i64 %.sroa.3.0, %i.u            ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 %i.u ; 2 uses
  %i.bb = and i64 %i.az, -16                      ; 5 uses
  %i.bc = add i64 %i.bb, %i.u                     ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.u
  %.not.i.i10 = icmp ugt i64 %i.bc, %.sroa.3.0
  %or.cond.i = or i1 %i.bd, %.not.i.i10
  br i1 %or.cond.i, label %bb.n, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i, !prof !29

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5552)
  call void @llvm.experimental.noalias.scope.decl(metadata !5553)
  %i.be = lshr i64 %i.az, 4                       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm13clmulavxmovbe3KeyNCNvNtB4_15aeshwclmulmovbe4opens0_0E0B8_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bg = load ptr, ptr %i.p, align 8, !alias.scope !5554, !noalias !5555, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_avx(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bg, ptr noundef nonnull readonly %i.ba, i64 noundef range(i64 1, 9223372036854775793) %i.bb) #36, !noalias !5555
  call void @llvm.experimental.noalias.scope.decl(metadata !5556)
  %i.bh = icmp ugt i64 %i.az, 68719476735
  %i.bi = shl nuw i64 %i.be, 32
  %.sroa.020.0.insert.insert.i.i.i.i.i.i.i = select i1 %i.bh, i64 513, i64 %i.bi ; 2 uses
  %i.bj = trunc i64 %.sroa.020.0.insert.insert.i.i.i.i.i.i.i to i1
  br i1 %i.bj, label %bb.j, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i.i, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5557
  store i8 2, ptr %i.j, align 1, !noalias !5557
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #41, !noalias !5558
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i = lshr i64 %.sroa.020.0.insert.insert.i.i.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i to i32
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.ba, ptr noundef nonnull %.sroa.012.0, i64 noundef %i.be, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.o) #36, !noalias !5559, !inline_history !1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 1, !alias.scope !5560, !noalias !5561
  %i.bm = call i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bn = add i32 %i.bm, %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i
  %i.bo = call i32 @llvm.bswap.i32(i32 %i.bn)
  store i32 %i.bo, ptr %i.bk, align 1, !alias.scope !5560, !noalias !5561
  br label %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm13clmulavxmovbe3KeyNCNvNtB4_15aeshwclmulmovbe4opens0_0E0B8_.exit.i.i

_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm13clmulavxmovbe3KeyNCNvNtB4_15aeshwclmulmovbe4opens0_0E0B8_.exit.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeromENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i.i, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i.i.i
  %i.bp = icmp ult i64 %.sroa.3.0, %i.bb
  br i1 %i.bp, label %bb.l, label %bb.k, !prof !16

bb.k:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm13clmulavxmovbe3KeyNCNvNtB4_15aeshwclmulmovbe4opens0_0E0B8_.exit.i.i
  %i.bq = sub nuw i64 %.sroa.3.0, %i.bb           ; 3 uses
  %.not42.i.i = icmp ult i64 %i.bq, %i.u
  br i1 %.not42.i.i, label %bb.m, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i, !prof !30

bb.l:                                             ; preds = %_RNCINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB6_3aes2hw3KeyNtNtNtB6_3gcm13clmulavxmovbe3KeyNCNvNtB4_15aeshwclmulmovbe4opens0_0E0B8_.exit.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41, !noalias !5562
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #41, !noalias !5562
  unreachable

bb.n:                                             ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #41, !noalias !5563
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i: ; preds = %bb.k
  %i.br = sub nuw i64 %i.bq, %i.u                 ; 3 uses
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.thread.i, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i, !prof !16

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !5564
  call void @llvm.experimental.noalias.scope.decl(metadata !5565)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.not.i2.i = icmp eq i64 %i.bq, %i.u
  br i1 %.not.i2.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm13clmulavxmovbe3KeyNCNvNtB2_15aeshwclmulmovbe4opens0_0EB6_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.thread.i: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #41, !noalias !5566
  unreachable

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 %i.bb ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !5567
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %i.bu, i64 range(i64 0, 129) %i.br, i1 false), !noalias !5568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !5567
  %i.bv = load ptr, ptr %i.k, align 8, !alias.scope !5565, !noalias !5569, !nonnull !15, !align !17, !noundef !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @ring_core_0_17_16000__gcm_ghash_avx(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bv, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.i, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !5570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !5567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.o, i64 16, i1 false), !noalias !5572
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !5573, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !5574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5571
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull readonly align 1 dereferenceable(16) %i.h, i64 range(i64 0, -9223372036854775808) %i.br, i1 false), !alias.scope !5575, !noalias !5576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm13clmulavxmovbe3KeyNCNvNtB2_15aeshwclmulmovbe4opens0_0EB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm13clmulavxmovbe3KeyNCNvNtB2_15aeshwclmulmovbe4opens0_0EB6_.exit: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.i, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !5569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %4, i64 16, i1 false), !noalias !5578
  call void @llvm.experimental.noalias.scope.decl(metadata !5579)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !5579, !noalias !5580, !noundef !15
  %i.bz = call i64 @llvm.bswap.i64(i64 %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !5579, !noalias !5580, !noundef !15
  %i.cc = call i64 @llvm.bswap.i64(i64 %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5581
  store i64 %i.bz, ptr %i.e, align 8, !noalias !5581
  %.sroa.5.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.cc, ptr %.sroa.5.0..sroa_idx10.i.i, align 8, !noalias !5581
  %i.cd = load ptr, ptr %i.f, align 8, !alias.scope !5579, !noalias !5580, !nonnull !15, !align !17, !noundef !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @ring_core_0_17_16000__gcm_ghash_avx(ptr noalias nofree noundef nonnull dereferenceable(16) %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.cd, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.e, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !5582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !noalias !5567
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !5583, !inline_history !1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cf, ptr noundef nonnull align 1 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.p

bb.o:                                             ; preds = %bb.f
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #41
  unreachable

bb.p:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm13clmulavxmovbe3KeyNCNvNtB2_15aeshwclmulmovbe4opens0_0EB6_.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm23open_whole_partial_tailNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm13clmulavxmovbe3KeyNCNvNtB2_15aeshwclmulmovbe4opens0_0EB6_.exit ], [ 1, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm15aeshwclmulmovbe4seal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noalias nofree noundef nonnull align 1 captures(address) dead_on_return dereferenceable(16) %3, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef %6, ptr noalias nofree noundef nonnull %7, i64 noundef range(i64 0, -9223372036854775808) %8) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 1                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 1                ; 6 uses
  %i.h = alloca [16 x i8], align 1                ; 4 uses
  %i.i = alloca [16 x i8], align 1                ; 5 uses
  %i.j = alloca [16 x i8], align 1                ; 4 uses
  %i.k = alloca [16 x i8], align 1                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 11 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.12 = alloca [24 x i8], align 8           ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.o = icmp samesign ugt i64 %8, 68719476704
  br i1 %i.o, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %6, 2305843009213693951
  br i1 %i.p, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i64 %8, 3
  %i.r = shl nuw i64 %6, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5641
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.l, align 8, !noalias !5641
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.r, ptr %i.t, align 8, !noalias !5641
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.q, ptr %i.u, align 8, !noalias !5641
  %i.v = icmp eq i64 %6, 0
  br i1 %i.v, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread65, label %.lr.ph.i.preheader.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread65: ; preds = %bb.c
  %.sroa.547.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.547.0..sroa_idx68, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5641
  br label %bb.d

.lr.ph.i.preheader.i:                             ; preds = %bb.c, %.lr.ph.i.preheader.i
  %.sroa.543.058 = phi i64 [ %i.x, %.lr.ph.i.preheader.i ], [ %6, %bb.c ] ; 3 uses
  %.sroa.042.057 = phi ptr [ %i.w, %.lr.ph.i.preheader.i ], [ %5, %bb.c ] ; 2 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.543.058, i64 16) ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.042.057, i64 %..i.i
  %i.x = sub nuw nsw i64 %.sroa.543.058, %..i.i   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.y = icmp ugt i64 %.sroa.543.058, 15
  %i.z = sub nuw nsw i64 16, %..i.i
  %i.aa = select i1 %i.y, i64 0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.k, i64 %..i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.042.057, i64 range(i64 0, 129) %..i.i, i1 false), !alias.scope !5642, !noalias !5643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !5641
  %i.ac = load ptr, ptr %i.l, align 8, !noalias !5641, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_avx(ptr noalias nofree noundef nonnull dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ac, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.j, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !5644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ad = icmp eq i64 %i.x, 0
  br i1 %i.ad, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit, label %.lr.ph.i.preheader.i

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit: ; preds = %.lr.ph.i.preheader.i
  %.sroa.045.0.copyload.pre = load ptr, ptr %i.l, align 8, !noalias !5641 ; 2 uses
  %.sroa.446.0.copyload.pre = load i64, ptr %i.s, align 8, !noalias !5641 ; 2 uses
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.547.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5641
  %i.ae = icmp eq ptr %.sroa.045.0.copyload.pre, null
  br i1 %i.ae, label %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread, label %bb.d

_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread: ; preds = %bb.b, %bb.a, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit
  %.sroa.827.056 = phi i64 [ %.sroa.446.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit ], [ %8, %bb.a ], [ %6, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.827.056, ptr %i.af, align 8
  br label %bb.f

bb.d:                                             ; preds = %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread65, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit
  %.sroa.045.0.copyload70 = phi ptr [ %2, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread65 ], [ %.sroa.045.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit ] ; 2 uses
  %.sroa.446.0.copyload69 = phi i64 [ 0, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread65 ], [ %.sroa.446.0.copyload.pre, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit ]
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  store ptr %.sroa.045.0.copyload70, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store i64 %.sroa.446.0.copyload69, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ag = icmp samesign ugt i64 %8, 287
  br i1 %i.ag, label %bb.e, label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.5.0 = phi i64 [ %i.ar, %bb.e ], [ %8, %bb.d ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.at, %bb.e ], [ %7, %bb.d ] ; 4 uses
  %i.ah = and i64 %.sroa.5.0, 496                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.ah ; 2 uses
  %i.aj = and i64 %.sroa.5.0, 15                  ; 7 uses
  %i.ak = lshr i64 %.sroa.5.0, 4                  ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.thread

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.thread: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %i.ak to i32
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %.sroa.0.0, ptr noundef nonnull %.sroa.0.0, i64 noundef %i.ak, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %3) #36, !noalias !5645, !inline_history !1
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 1, !alias.scope !5646, !noalias !5647
  %i.an = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = add i32 %i.an, %.sroa.6.0.extract.trunc.i.i.i.i
  %i.ap = call i32 @llvm.bswap.i32(i32 %i.ao)
  store i32 %i.ap, ptr %i.al, align 1, !alias.scope !5646, !noalias !5647
  %i.aq = load ptr, ptr %i.n, align 8, !nonnull !15, !align !17, !noundef !15
  call void @ring_core_0_17_16000__gcm_ghash_avx(ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.aq, ptr noundef nonnull readonly %.sroa.0.0, i64 noundef range(i64 1, 9223372036854775793) %i.ah) #36
  br label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit

bb.e:                                             ; preds = %bb.d
  %i.ar = urem i64 %8, 96                         ; 2 uses
  %i.as = sub nuw nsw i64 %8, %i.ar               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 %i.as
  call void @ring_core_0_17_16000__aesni_gcm_encrypt(ptr noundef nonnull %7, ptr noundef nonnull %7, i64 noundef %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull dereferenceable(16) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.045.0.copyload70, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx) #36
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping4baseINtB5_11OverlappinghE5inputBb_.exit.i.i, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.not.i26 = icmp eq i64 %i.aj, 0
  br i1 %.not.i26, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm13clmulavxmovbe3KeyEB6_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit
  %i.au = sub nuw nsw i64 16, %i.aj
  %i.av = getelementptr i8, ptr %i.i, i64 %i.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.av, i8 0, i64 %i.au, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %i.ai, i64 range(i64 0, 129) %i.aj, i1 false), !noalias !5649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !5649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !5651, !inline_history !1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !5649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5650
  %i.aw = sub nuw nsw i64 16, %i.aj
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ax, i8 0, i64 %i.aw, i1 false), !noalias !5649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !5649
  %i.ay = load ptr, ptr %i.m, align 8, !alias.scope !5648, !noalias !5652, !nonnull !15, !align !17, !noundef !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @ring_core_0_17_16000__gcm_ghash_avx(ptr noalias nofree noundef nonnull dereferenceable(16) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ay, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.h, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !5653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5649
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 dereferenceable(16) %i.g, i64 range(i64 0, -9223372036854775808) %i.aj, i1 false), !noalias !5653
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm13clmulavxmovbe3KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm13clmulavxmovbe3KeyEB6_.exit: ; preds = %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E3newB8_.exit, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !5652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %4, i64 16, i1 false), !noalias !5655
  call void @llvm.experimental.noalias.scope.decl(metadata !5656)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !5656, !noalias !5657, !noundef !15
  %i.bc = call i64 @llvm.bswap.i64(i64 %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !5656, !noalias !5657, !noundef !15
  %i.bf = call i64 @llvm.bswap.i64(i64 %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5658
  store i64 %i.bc, ptr %i.e, align 8, !noalias !5658
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.bf, ptr %.sroa.5.0..sroa_idx10.i, align 8, !noalias !5658
  %i.bg = load ptr, ptr %i.f, align 8, !alias.scope !5656, !noalias !5657, !nonnull !15, !align !17, !noundef !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @ring_core_0_17_16000__gcm_ghash_avx(ptr noalias nofree noundef nonnull dereferenceable(16) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bg, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.e, i64 noundef range(i64 1, 9223372036854775793) 16) #36, !noalias !5659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !noalias !5649
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !5660, !inline_history !1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bi, ptr noundef nonnull align 1 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm13clmulavxmovbe3KeyEB6_.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm13clmulavxmovbe3KeyEB6_.exit ], [ 1, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_13clmulavxmovbe3KeyE3newB6_.exit.thread ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4p25621p256_elem_inv_squared(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #4 {
.lr.ph.i:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 66 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 32 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 14 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 5 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [48 x i8], align 8                ; 140 uses
  %i.z = alloca [48 x i8], align 8                ; 6 uses
  %i.aa = alloca [48 x i8], align 8               ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 5 uses
  %i.ac = alloca [48 x i8], align 8               ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 5 uses
  %i.ae = alloca [48 x i8], align 8               ; 6 uses
  %i.af = alloca [48 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5699
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 0, i64 48, i1 false), !noalias !5699
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.w, ptr noundef nonnull readonly align 8 dereferenceable(48) %2) #36, !noalias !5700, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5699
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false), !noalias !5699
  call void @ring_core_0_17_16000__p256_mul_mont(ptr noundef nonnull %i.v, ptr noundef nonnull %i.x, ptr noundef nonnull readonly align 8 dereferenceable(48) %2) #36, !noalias !5701, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !5702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5703
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false), !noalias !5703
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.t, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.af) #36, !noalias !5704, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !5703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5703
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i8 0, i64 48, i1 false), !noalias !5703
  call void @ring_core_0_17_16000__p256_mul_mont(ptr noundef nonnull %i.s, ptr noundef nonnull %i.u, ptr noundef nonnull readonly align 8 dereferenceable(48) %2) #36, !noalias !5705, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !5706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5707
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false), !noalias !5707
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.q, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ae) #36, !noalias !5708, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !5707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5707
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.r, ptr noundef nonnull %i.r) #36, !noalias !5708, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.r, ptr noundef nonnull %i.r) #36, !noalias !5708, !inline_history !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5707
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false), !noalias !5707
  call void @ring_core_0_17_16000__p256_mul_mont(ptr noundef nonnull %i.p, ptr noundef nonnull %i.r, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ae) #36, !noalias !5709, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !noalias !5710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5711
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false), !noalias !5711
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.n, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ad) #36, !noalias !5712, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !noalias !5711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5711
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.o, ptr noundef nonnull %i.o) #36, !noalias !5712, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.o, ptr noundef nonnull %i.o) #36, !noalias !5712, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.o, ptr noundef nonnull %i.o) #36, !noalias !5712, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.o, ptr noundef nonnull %i.o) #36, !noalias !5712, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.o, ptr noundef nonnull %i.o) #36, !noalias !5712, !inline_history !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5711
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false), !noalias !5711
  call void @ring_core_0_17_16000__p256_mul_mont(ptr noundef nonnull %i.m, ptr noundef nonnull %i.o, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ad) #36, !noalias !5713, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !5714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5715
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i8 0, i64 48, i1 false), !noalias !5715
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.k, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ac) #36, !noalias !5716, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !5715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5715
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l) #36, !noalias !5716, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l) #36, !noalias !5716, !inline_history !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5715
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false), !noalias !5715
  call void @ring_core_0_17_16000__p256_mul_mont(ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ae) #36, !noalias !5717, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !noalias !5718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5719
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !noalias !5719
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.h, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ab) #36, !noalias !5720, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !5719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5719
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @ring_core_0_17_16000__p256_sqr_mont(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #36, !noalias !5720, !inline_history !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5719
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false), !noalias !5719
  call void @ring_core_0_17_16000__p256_mul_mont(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ab) #36, !noalias !5721, !inline_history !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !5722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5723
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false), !noalias !5723
end_hunk_10
