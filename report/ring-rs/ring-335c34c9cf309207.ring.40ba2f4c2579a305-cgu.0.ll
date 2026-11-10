Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvNtNtCs5yxAJGbRKSL_4ring3rsa12verification6verify:bb.a
  br label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #41, !noalias !4455
  unreachable

_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %i.de = phi i64 [ %i.dd, %bb.w ], [ %i.cn, %bb.v ]
  %i.df = phi ptr [ %i.cx, %bb.w ], [ %i.br, %bb.v ]
  %i.dg = phi i64 [ %i.db, %bb.w ], [ %i.cp, %bb.v ]
  %i.dh = phi i1 [ true, %bb.w ], [ false, %bb.v ]
  %i.di = phi { i1, i8 } [ %i.dc, %bb.w ], [ { i1 false, i8 undef }, %bb.v ] ; 2 uses
  %i.dj = extractvalue { i1, i8 } %i.di, 0
  br i1 %i.dj, label %bb.x, label %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit.i.i

bb.x:                                             ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i.i
  %i.dk = extractvalue { i1, i8 } %i.di, 1
  store i8 %i.dk, ptr %i.cq, align 1, !alias.scope !4463, !noalias !4456
  %i.dl = icmp eq ptr %i.cs, %i.cl
  br i1 %i.dl, label %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit.i.i, label %.split.preheader.i.i.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit.i.i: ; preds = %bb.x, %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4452
  %i.dm = icmp samesign ult i64 %.sroa.0.0.i.i20.i, %i.ce
  br i1 %i.dm, label %bb.z, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs5yxAJGbRKSL_4ring.exit.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs5yxAJGbRKSL_4ring.exit.i.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit.i.i
  %i.dn = sub nuw nsw i64 %.sroa.0.0.i.i20.i, %i.ce
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.dn ; 2 uses
  %i.dp = icmp eq i64 %.sroa.0.0.i.i20.i, %i.ce
  br i1 %i.dp, label %._crit_edge, label %.lr.ph

bb.y:                                             ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.do
  br i1 %i.dr, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs5yxAJGbRKSL_4ring.exit.i.i, %bb.y
  %i.ds = phi ptr [ %i.dq, %bb.y ], [ %i.o, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs5yxAJGbRKSL_4ring.exit.i.i ] ; 2 uses
  %.val.i.i22.i = load i8, ptr %i.ds, align 1, !alias.scope !4464, !noalias !4465, !noundef !15
  %i.dt = icmp eq i8 %.val.i.i22.i, 0
  br i1 %i.dt, label %bb.y, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_key15fill_be_bytes_n0EB1L_.exit.i.i

bb.z:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #41, !noalias !4452
  unreachable

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_key15fill_be_bytes_n0EB1L_.exit.i.i: ; preds = %.lr.ph
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #41, !noalias !4452
  unreachable

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE12exponentiate.exit.thread56: ; preds = %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE7is_zeroBb_.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4447
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE12exponentiate.exit.thread

._crit_edge:                                      ; preds = %bb.y, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs5yxAJGbRKSL_4ring.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4447
  %i.du = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !invariant.load !15, !nonnull !15
  %i.dz = call noundef nonnull align 8 ptr %i.dy(ptr noundef nonnull %i.du) #40 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4466)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4467
  %i.ea = load i32, ptr %i.dz, align 8, !range !45, !alias.scope !4466, !noundef !15
  %i.eb = trunc nuw i32 %i.ea to i1
  br i1 %i.eb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ec, i64 32, i1 false), !noalias !4468
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ed, align 8, !alias.scope !4466
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.42.0..sroa_idx.i, i64 32, i1 false), !noalias !4468
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.53.0..sroa_idx.i, i64 24, i1 false), !noalias !4468
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.5.0.i29 = phi ptr [ %i.dz, %bb.aa ], [ %.sroa.0.0.copyload.i, %bb.ab ]
  %.sroa.01.0.i = phi ptr [ null, %bb.aa ], [ %i.dz, %bb.ab ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, i8 0, i64 128, i1 false), !noalias !4467
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  store ptr %.sroa.01.0.i, ptr %i.ee, align 8, !noalias !4467
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %.sroa.5.0.i29, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !4467
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !4467
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !4467
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4467
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !4469
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.f, i64 208, i1 false), !noalias !4467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.ee, i64 80, i1 false), !noalias !4467
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e), !noalias !4471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4470
  %i.ef = load ptr, ptr %i.d, align 8, !noalias !4470, !noundef !15 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !4472 ; 2 uses
  br i1 %i.eg, label %bb.ad, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ej = trunc nuw i64 %i.ei to i1
  br i1 %i.ej, label %bb.ae, label %bb.af, !prof !16

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !4471
  unreachable

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4467
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE12exponentiate.exit.thread

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i.i.i: ; preds = %bb.ac
  %.sroa.9.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9.0..sroa_idx34, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4467
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4474
  store ptr %i.do, ptr %i.b, align 8, !noalias !4474
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.ce, ptr %i.ek, align 8, !noalias !4474
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.el, align 8, !noalias !4474
  store ptr %i.ef, ptr %i.a, align 8, !noalias !4473
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ei, ptr %.sroa.553.0..sroa_idx, align 8, !noalias !4473
  br i1 %.not.i.i16.i, label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNCNvNtNtCs5yxAJGbRKSL_4ring3rsa12verification6verify0uNtNtNtB13_5error11unspecified11UnspecifiedEB13_.exit, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i.i.i
  %i.em = getelementptr [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ah
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !noalias !4473, !noundef !15
  %i.ep = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eo, i1 false)
  %i.eq = shl nuw nsw i64 %i.ah, 6
  %i.er = sub nuw nsw i64 %i.eq, %i.ep
  br label %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNCNvNtNtCs5yxAJGbRKSL_4ring3rsa12verification6verify0uNtNtNtB13_5error11unspecified11UnspecifiedEB13_.exit

_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNCNvNtNtCs5yxAJGbRKSL_4ring3rsa12verification6verify0uNtNtNtB13_5error11unspecified11UnspecifiedEB13_.exit: ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i.i.i, %bb.ag
  %i.es = phi i64 [ %i.er, %bb.ag ], [ 0, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i.i.i.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !invariant.load !15, !noalias !4473, !nonnull !15
  %i.ev = call noundef zeroext i1 %i.eu(ptr noundef nonnull %i.du, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.es) #40, !noalias !4475, !inline_history !4438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4473
  %i.ew = load i64, ptr %i.el, align 8, !noalias !4474
  %i.ex = load i64, ptr %i.ek, align 8, !noalias !4474
  %i.ey = icmp ne i64 %i.ew, %i.ex
  %.sroa.0.0.i30 = select i1 %i.ev, i1 true, i1 %i.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.b, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE12exponentiate.exit.thread, %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNCNvNtNtCs5yxAJGbRKSL_4ring3rsa12verification6verify0uNtNtNtB13_5error11unspecified11UnspecifiedEB13_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i30, %_RINvMs_NtCsjVYLllkLn3D_9untrusted5inputNtB5_5Input8read_allNCNvNtNtCs5yxAJGbRKSL_4ring3rsa12verification6verify0uNtNtNtB13_5error11unspecified11UnspecifiedEB13_.exit ], [ true, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE12exponentiate.exit.thread ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret i1 %.sroa.0.0

_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE12exponentiate.exit.thread: ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit.i, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE12exponentiate.exit.thread56, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs5yxAJGbRKSL_4ring3rsa7padding4mgf1(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %.sroa.7 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 4 uses
  %i.e = alloca [208 x i8], align 8               ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [208 x i8], align 8               ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.j = load i8, ptr %i.i, align 1, !range !44, !noundef !15
  %i.k = zext nneg i8 %i.j to i64                 ; 2 uses
  %i.l = icmp eq i64 %4, 0
  br i1 %i.l, label %._crit_edge, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph: ; preds = %bb.a
  %i.m = load i32, ptr %0, align 8, !range !45, !noundef !15
  %i.n = trunc nuw i32 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.08.0.copyload = load ptr, ptr %i.o, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %.sroa.04.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 9 uses
  %..i.i.i41 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %4) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %..i.i.i41
  %i.u = sub nuw nsw i64 %4, %..i.i.i41
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  br label %bb.c

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i: ; preds = %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.ab) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.ac, i64 %..i.i.i
  %i.z = sub nuw nsw i64 %i.ab, %..i.i.i
  %i.aa = icmp eq i64 %i.ad, -1
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #41, !noalias !4502
  unreachable

bb.c:                                             ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i
  %i.ab = phi i64 [ %i.u, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph ], [ %i.z, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i ] ; 3 uses
  %i.ac = phi ptr [ %i.t, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph ], [ %i.y, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i ] ; 2 uses
  %..i.i.i44 = phi i64 [ %..i.i.i41, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph ], [ %..i.i.i, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i ] ; 2 uses
  %.sroa.10.03343 = phi i64 [ 0, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph ], [ %i.ad, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i ] ; 3 uses
  %.sroa.0.03542 = phi ptr [ %3, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i.lr.ph ], [ %i.ac, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i ] ; 13 uses
  %i.ad = add nuw i64 %.sroa.10.03343, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  br i1 %i.n, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(32) %i.p, i64 32, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.49.0..sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0 = phi ptr [ null, %bb.d ], [ %0, %bb.e ]
  %.sroa.57.0 = phi ptr [ %0, %bb.d ], [ %.sroa.08.0.copyload, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, i8 0, i64 128, i1 false)
  store ptr %.sroa.06.0, ptr %i.q, align 8
  store ptr %.sroa.57.0, ptr %.sroa.04.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ae = icmp ugt i64 %.sroa.10.03343, 4294967295
  %i.af = shl nuw i64 %.sroa.10.03343, 32
  %.sroa.011.0.insert.insert = select i1 %i.ae, i64 513, i64 %i.af ; 2 uses
  %i.ag = trunc i64 %.sroa.011.0.insert.insert to i1
  br i1 %i.ag, label %bb.g, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4503
  store i8 2, ptr %i.d, align 1, !noalias !4503
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @211) #41
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit: ; preds = %bb.f
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.011.0.insert.insert, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
  %i.ah = call i32 @llvm.bswap.i32(i32 %.sroa.6.0.extract.trunc.i)
  store i32 %i.ah, ptr %i.g, align 4
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.h, i64 208, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4504)
  %i.ai = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !4505
  %.not.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i, label %bb.h, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i, !prof !16

bb.h:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit
  call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i: ; preds = %bb.h, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false), !noalias !4507
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e), !noalias !4507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4506
  %i.aj = load ptr, ptr %i.c, align 8, !noalias !4506, !noundef !15 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = load i64, ptr %i.s, align 8, !noalias !4508 ; 2 uses
  br i1 %i.ak, label %bb.i, label %iter.check

bb.i:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !4507
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4506
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #41, !noalias !4509
  unreachable

iter.check:                                       ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx8.i, i64 56, i1 false), !noalias !4510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4506
  call void @llvm.experimental.noalias.scope.decl(metadata !4511)
  call void @llvm.experimental.noalias.scope.decl(metadata !4512)
  store i64 %i.al, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !4509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 89
  %i.ao = load i8, ptr %i.an, align 1, !range !44, !noundef !15
  %i.ap = zext nneg i8 %i.ao to i64
  %..i.i.i15 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.ap, i64 %..i.i.i44) ; 11 uses
  %min.iters.check = icmp ult i64 %..i.i.i44, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = getelementptr i8, ptr %.sroa.0.03542, i64 %..i.i.i15
  %5 = getelementptr i8, ptr %i.f, i64 %..i.i.i15
  %i.ar = getelementptr i8, ptr %5, i64 8
  %bound0 = icmp ult ptr %.sroa.0.03542, %i.ar
  %bound1 = icmp ult ptr %.sroa.6.0..sroa_idx2.i, %i.aq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check47 = icmp samesign ult i64 %..i.i.i15, 32
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %..i.i.i15, 28
  %n.vec = and i64 %..i.i.i15, 96                 ; 4 uses
  %wide.load = load <16 x i8>, ptr %.sroa.6.0..sroa_idx2.i, align 8, !alias.scope !4513, !noalias !4514
  %wide.load48 = load <16 x i8>, ptr %i.v, align 8, !alias.scope !4513, !noalias !4514
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 16 ; 2 uses
  %wide.load49 = load <16 x i8>, ptr %.sroa.0.03542, align 1, !alias.scope !4515, !noalias !4516
  %wide.load50 = load <16 x i8>, ptr %i.at, align 1, !alias.scope !4515, !noalias !4516
  %i.au = xor <16 x i8> %wide.load49, %wide.load
  %i.av = xor <16 x i8> %wide.load50, %wide.load48
  store <16 x i8> %i.au, ptr %.sroa.0.03542, align 1, !alias.scope !4515, !noalias !4516
  store <16 x i8> %i.av, ptr %i.at, align 1, !alias.scope !4515, !noalias !4516
  %i.aw = icmp eq i64 %n.vec, 32
  br i1 %i.aw, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 32 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.w, align 8, !alias.scope !4513, !noalias !4514
  %wide.load48.1 = load <16 x i8>, ptr %i.x, align 8, !alias.scope !4513, !noalias !4514
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 48 ; 2 uses
  %wide.load49.1 = load <16 x i8>, ptr %i.ax, align 1, !alias.scope !4515, !noalias !4516
  %wide.load50.1 = load <16 x i8>, ptr %i.ay, align 1, !alias.scope !4515, !noalias !4516
  %i.az = xor <16 x i8> %wide.load49.1, %wide.load.1
  %i.ba = xor <16 x i8> %wide.load50.1, %wide.load48.1
  store <16 x i8> %i.az, ptr %i.ax, align 1, !alias.scope !4515, !noalias !4516
  store <16 x i8> %i.ba, ptr %i.ay, align 1, !alias.scope !4515, !noalias !4516
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %..i.i.i15, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %..i.i.i15, 124              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %index52 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %index52
  %wide.load53 = load <4 x i8>, ptr %i.bc, align 4, !alias.scope !4513, !noalias !4514
  %wide.load54 = load <4 x i8>, ptr %i.bb, align 1, !alias.scope !4515, !noalias !4516
  %i.bd = xor <4 x i8> %wide.load54, %wide.load53
  store <4 x i8> %i.bd, ptr %i.bb, align 1, !alias.scope !4515, !noalias !4516
  %index.next55 = add nuw i64 %index52, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next55, %n.vec51
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4499

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %..i.i.i15, %n.vec51
  br i1 %cmp.n56, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %..i.i.i15, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.08.i.prol = phi i64 [ %i.bf, %.lr.ph.i.prol ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bf = add nuw nsw i64 %.sroa.0.08.i.prol, 1   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %.sroa.0.08.i.prol ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %.sroa.0.08.i.prol
  %.val7.i.prol = load i8, ptr %i.bh, align 1, !noalias !4514, !noundef !15
  %i.bi = load i8, ptr %i.bg, align 1, !alias.scope !4517, !noalias !4514, !noundef !15
  %i.bj = xor i8 %i.bi, %.val7.i.prol
  store i8 %i.bj, ptr %i.bg, align 1, !alias.scope !4517, !noalias !4514
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4500

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.08.i.unr = phi i64 [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bk = sub nsw i64 %.sroa.0.08.i.ph, %..i.i.i15
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %i.cb, %.lr.ph.i ], [ %.sroa.0.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bm = add nuw nsw i64 %.sroa.0.08.i, 1        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %.sroa.0.08.i ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %.sroa.0.08.i
  %.val7.i = load i8, ptr %i.bo, align 1, !noalias !4514, !noundef !15
  %i.bp = load i8, ptr %i.bn, align 1, !alias.scope !4517, !noalias !4514, !noundef !15
  %i.bq = xor i8 %i.bp, %.val7.i
  store i8 %i.bq, ptr %i.bn, align 1, !alias.scope !4517, !noalias !4514
  %i.br = add nuw nsw i64 %.sroa.0.08.i, 2        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %i.bm ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %i.bm
  %.val7.i.1 = load i8, ptr %i.bt, align 1, !noalias !4514, !noundef !15
  %i.bu = load i8, ptr %i.bs, align 1, !alias.scope !4517, !noalias !4514, !noundef !15
  %i.bv = xor i8 %i.bu, %.val7.i.1
  store i8 %i.bv, ptr %i.bs, align 1, !alias.scope !4517, !noalias !4514
  %i.bw = add nuw nsw i64 %.sroa.0.08.i, 3        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %i.br ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %i.br
  %.val7.i.2 = load i8, ptr %i.by, align 1, !noalias !4514, !noundef !15
  %i.bz = load i8, ptr %i.bx, align 1, !alias.scope !4517, !noalias !4514, !noundef !15
  %i.ca = xor i8 %i.bz, %.val7.i.2
  store i8 %i.ca, ptr %i.bx, align 1, !alias.scope !4517, !noalias !4514
  %i.cb = add nuw nsw i64 %.sroa.0.08.i, 4        ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.03542, i64 %i.bw ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.6.0..sroa_idx2.i, i64 %i.bw
  %.val7.i.3 = load i8, ptr %i.cd, align 1, !noalias !4514, !noundef !15
  %i.ce = load i8, ptr %i.cc, align 1, !alias.scope !4517, !noalias !4514, !noundef !15
  %i.cf = xor i8 %i.ce, %.val7.i.3
  store i8 %i.cf, ptr %i.cc, align 1, !alias.scope !4517, !noalias !4514
  %exitcond.not.i.3 = icmp eq i64 %i.cb, %..i.i.i15
  br i1 %exitcond.not.i.3, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit, label %.lr.ph.i, !llvm.loop !4501

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMuthEINtB10_4IterhEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQhRhENCINvNtNtCs5yxAJGbRKSL_4ring2bb5bytes25xor_assign_at_start_bytesQShRB4b_E0E0EB3h_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cg = icmp eq i64 %i.ab, 0
  br i1 %i.cg, label %._crit_edge, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtNtCs5yxAJGbRKSL_4ring4aead17chacha20_poly13056finish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull align 64 captures(none) dead_on_return dereferenceable(128) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.a, align 8, !alias.scope !4529
  store i64 %3, ptr %i.b, align 8, !alias.scope !4530
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4532)
  call fastcc void @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal(ptr noalias nofree noundef nonnull align 64 dereferenceable(128) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16), !noalias !4531
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 64, !alias.scope !4532
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !4532
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4532
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !4532
  %.sroa.71.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.71.0.copyload.i = load i32, ptr %.sroa.71.0..sroa_idx.i, align 4, !alias.scope !4532 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !4532
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !alias.scope !4532
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 64, !alias.scope !4532
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.11.0.copyload.i = load i32, ptr %.sroa.11.0..sroa_idx.i, align 4, !alias.scope !4532
  %i.c = lshr i32 %.sroa.71.0.copyload.i, 26
  %i.d = and i32 %.sroa.71.0.copyload.i, 67108863
  %i.e = add i32 %.sroa.8.0.copyload.i, %i.c      ; 2 uses
  %i.f = lshr i32 %i.e, 26
  %i.g = and i32 %i.e, 67108863                   ; 2 uses
  %i.h = add i32 %i.f, %.sroa.9.0.copyload.i      ; 2 uses
  %i.i = lshr i32 %i.h, 26
  %i.j = and i32 %i.h, 67108863                   ; 2 uses
  %i.k = add i32 %i.i, %.sroa.10.0.copyload.i     ; 2 uses
  %i.l = lshr i32 %i.k, 26
  %i.m = and i32 %i.k, 67108863                   ; 2 uses
  %i.n = add i32 %i.l, %.sroa.11.0.copyload.i     ; 3 uses
  %i.o = lshr i32 %i.n, 26
  %i.p = mul nuw nsw i32 %i.o, 5
  %i.q = add nuw nsw i32 %i.p, %i.d               ; 2 uses
  %i.r = add nuw nsw i32 %i.q, 5                  ; 2 uses
  %i.s = lshr i32 %i.r, 26
  %i.t = add nuw nsw i32 %i.s, %i.g               ; 2 uses
  %i.u = lshr i32 %i.t, 26
  %i.v = add nuw nsw i32 %i.u, %i.j               ; 2 uses
  %i.w = lshr i32 %i.v, 26
  %i.x = add nuw nsw i32 %i.w, %i.m               ; 2 uses
  %i.y = lshr i32 %i.x, 26
  %i.z = or i32 %i.n, -67108864
  %i.aa = add nsw i32 %i.y, %i.z                  ; 3 uses
  %.neg.i.i = ashr i32 %i.aa, 31                  ; 5 uses
  %i.ab = lshr i32 %i.aa, 31
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = and i32 %.neg.i.i, %i.q
  %i.ae = and i32 %i.ac, 67108863                 ; 4 uses
  %i.af = and i32 %i.ae, %i.r
  %i.ag = or i32 %i.af, %i.ad
  %i.ah = and i32 %.neg.i.i, %i.g
  %i.ai = and i32 %i.ae, %i.t
  %i.aj = or i32 %i.ai, %i.ah                     ; 2 uses
  %i.ak = and i32 %.neg.i.i, %i.j
  %i.al = and i32 %i.ae, %i.v
  %i.am = or i32 %i.al, %i.ak                     ; 2 uses
  %i.an = and i32 %.neg.i.i, %i.m
  %i.ao = and i32 %i.ae, %i.x
end_hunk_0
