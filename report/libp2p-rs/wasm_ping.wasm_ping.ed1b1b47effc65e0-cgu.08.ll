Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/wasm_ping.wasm_ping.ed1b1b47effc65e0-cgu.08?download=true
inline.NumInlined: 1190
inline.NumDeleted: 670
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping:bb.a
  %i.bs = xor i64 %i.br, %i.bo                    ; 2 uses
  %i.bt = add i64 %i.bq, %i.bo                    ; 3 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 17)
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 32)
  %i.bx = xor i64 %i.bv, %i.bu
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = xor i64 %i.by, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %i.bz
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneReECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !2549
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !2549
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !2549
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !2549
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2550
  store i8 -1, ptr %i.a, align 1, !noalias !2550
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #39, !noalias !2551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2550
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !2552
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !2552
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !2552 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !2552
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !2552, !noundef !13
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2552, !noundef !13
  %i.l = or i64 %i.i, %i.k                        ; 2 uses
  %i.m = xor i64 %i.l, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.n = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.o = add i64 %i.m, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.o, %i.q                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.br
}

; Function Attrs: cold nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNvXs19_NtNtCscWOm1fvf9pm_10serde_core2de5implsyNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCs79iw4ZC9yCo_10serde_json5error5ErrorECskm6LeB9lWb4_9wasm_ping(double noundef %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %0, ptr %i.c, align 8
  store i8 3, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCs79iw4ZC9yCo_10serde_json5errorNtB5_5ErrorNtNtCscWOm1fvf9pm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.d, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCs9DIU3UKMbTt_4axum7routingINtBd_6RouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE5layerINtNtNtCsdXHxuUs9k1_10tower_http5trace5layer10TraceLayerINtNtB1H_8classify16SharedClassifierNtB2x_22ServerErrorsAsFailuresEEE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBd_5route5RouteEE9call_once6vtableBV_(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RINvMNtNtCs9DIU3UKMbTt_4axum7routing5routeNtB3_5Route5layerINtNtNtCsdXHxuUs9k1_10tower_http5trace5layer10TraceLayerINtNtB12_8classify16SharedClassifierNtB1S_22ServerErrorsAsFailuresEEzECskm6LeB9lWb4_9wasm_ping(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNSNvYNCINvMs1_NtCs9DIU3UKMbTt_4axum7routingINtBd_6RouterNtCskm6LeB9lWb4_9wasm_ping9TestStateE5layerNtNtCsdXHxuUs9k1_10tower_http4cors9CorsLayerE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBd_5route5RouteEE9call_once6vtableBV_(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RINvMNtNtCs9DIU3UKMbTt_4axum7routing5routeNtB3_5Route5layerNtNtCsdXHxuUs9k1_10tower_http4cors9CorsLayerzECskm6LeB9lWb4_9wasm_ping(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #11 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCskKLDkoKarTP_4core5sliceSh12rotate_rightCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = sub nuw nsw i64 %1, %2                   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 3 uses
  %i.d = icmp eq i64 %i.b, 0
  %i.e = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.e, %i.d
  br i1 %or.cond.i, label %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate10ptr_rotatehECskm6LeB9lWb4_9wasm_ping.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %2, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.b)
  %i.f = icmp samesign ult i64 %..i, 257
  br i1 %i.f, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i64 %2, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 1 %0, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.b, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 range(i64 1, -9223372036854775808) %2, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 8 %i.a, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.b, i1 false)
  br label %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate18ptr_rotate_memmovehECskm6LeB9lWb4_9wasm_ping.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 range(i64 1, -9223372036854775808) %2, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %0, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.b, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 range(i64 1, -9223372036854775808) %2, i1 false)
  br label %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate18ptr_rotate_memmovehECskm6LeB9lWb4_9wasm_ping.exit.i

_RINvNtNtCskKLDkoKarTP_4core5slice6rotate18ptr_rotate_memmovehECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate10ptr_rotatehECskm6LeB9lWb4_9wasm_ping.exit

.preheader.i:                                     ; preds = %bb.d, %.loopexit.i.i
  %.sroa.016.0.i.i = phi i64 [ %.sroa.016.2.i.i, %.loopexit.i.i ], [ %2, %bb.d ] ; 24 uses
  %.sroa.010.0.i.i = phi ptr [ %.sroa.010.2.i.i, %.loopexit.i.i ], [ %i.c, %bb.d ] ; 10 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.1.i.i, %.loopexit.i.i ], [ %i.b, %bb.d ] ; 18 uses
  %.not.i2.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.016.0.i.i
  br i1 %.not.i2.i, label %.preheader.i.i, label %.preheader54.i.i

.preheader54.i.i:                                 ; preds = %.preheader.i
  %i.i = sub i64 0, %.sroa.016.0.i.i              ; 5 uses
  %i.j = lshr i64 %.sroa.016.0.i.i, 3             ; 9 uses
  %i.k = and i64 %.sroa.016.0.i.i, 7              ; 2 uses
  %.not.i37.i.i = icmp eq i64 %i.j, 0             ; 2 uses
  %.not4.i44.i.i = icmp eq i64 %i.k, 0
  %i.l = and i64 %.sroa.016.0.i.i, -8             ; 2 uses
  %i.m = icmp samesign ult i64 %i.k, 4
  %i.n = and i64 %.sroa.016.0.i.i, 2
  %i.o = icmp eq i64 %i.n, 0
  %i.p = and i64 %.sroa.016.0.i.i, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %.not4.i44.i.i, label %.preheader54.split.us.i.i, label %.preheader54.split.i.i.preheader

.preheader54.split.i.i.preheader:                 ; preds = %.preheader54.i.i
  %i.r = and i64 %.sroa.016.0.i.i, -8             ; 2 uses
  %3 = sub i64 %i.r, %.sroa.016.0.i.i
  %min.iters.check91 = icmp ult i64 %.sroa.016.0.i.i, 32
  %4 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %3
  %5 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.r
  %n.vec93 = and i64 %i.j, 2305843009213693948    ; 3 uses
  %cmp.n102 = icmp eq i64 %i.j, %n.vec93
  %i.s = and i64 %.sroa.016.0.i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.s, 0
  br label %.preheader54.split.i.i

.preheader54.split.us.i.i:                        ; preds = %.preheader54.i.i
  br i1 %.not.i37.i.i, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.us.us.i.i, label %.preheader.i38.preheader.us.i.i.preheader

.preheader.i38.preheader.us.i.i.preheader:        ; preds = %.preheader54.split.us.i.i
  %min.iters.check69 = icmp ult i64 %.sroa.016.0.i.i, 32
  %6 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %.sroa.016.0.i.i
  %n.vec71 = and i64 %i.j, 2305843009213693948    ; 3 uses
  %cmp.n80 = icmp eq i64 %i.j, %n.vec71
  %i.t = and i64 %.sroa.016.0.i.i, 8
  %lcmp.mod117.not = icmp eq i64 %i.t, 0
  br label %.preheader.i38.preheader.us.i.i

_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.us.us.i.i: ; preds = %.preheader54.split.us.i.i, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.us.us.i.i
  %.sroa.010.3.us.us.i.i = phi ptr [ %i.u, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.us.us.i.i ], [ %.sroa.010.0.i.i, %.preheader54.split.us.i.i ]
  %.sroa.0.2.us.us.i.i = phi i64 [ %i.v, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.us.us.i.i ], [ %.sroa.0.0.i.i, %.preheader54.split.us.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.010.3.us.us.i.i, i64 %i.i ; 2 uses
  %i.v = sub nuw nsw i64 %.sroa.0.2.us.us.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.w = icmp ult i64 %i.v, %.sroa.016.0.i.i
  br i1 %i.w, label %.loopexit.i.i, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.us.us.i.i

.preheader.i38.preheader.us.i.i:                  ; preds = %.preheader.i38.preheader.us.i.i.preheader, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i
  %indvar61 = phi i64 [ %indvar.next62, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i ], [ 0, %.preheader.i38.preheader.us.i.i.preheader ] ; 2 uses
  %.sroa.010.3.us.i.i = phi ptr [ %i.x, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i ], [ %.sroa.010.0.i.i, %.preheader.i38.preheader.us.i.i.preheader ] ; 6 uses
  %.sroa.0.2.us.i.i = phi i64 [ %i.ao, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i ], [ %.sroa.0.0.i.i, %.preheader.i38.preheader.us.i.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.sroa.010.3.us.i.i, i64 %i.i ; 7 uses
  br i1 %min.iters.check69, label %.preheader.i38.us.i.i.preheader, label %vector.memcheck60

vector.memcheck60:                                ; preds = %.preheader.i38.preheader.us.i.i
  %i.y = mul i64 %indvar61, %i.i                  ; 2 uses
  %scevgep64 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.y
  %scevgep63 = getelementptr i8, ptr %6, i64 %i.y
  %bound065 = icmp ult ptr %i.x, %scevgep63
  %bound166 = icmp ult ptr %.sroa.010.3.us.i.i, %scevgep64
  %found.conflict67 = and i1 %bound065, %bound166
  br i1 %found.conflict67, label %.preheader.i38.us.i.i.preheader, label %vector.body72

vector.body72:                                    ; preds = %vector.memcheck60, %vector.body72
  %index73 = phi i64 [ %index.next78, %vector.body72 ], [ 0, %vector.memcheck60 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index73 ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us.i.i, i64 %index73 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %wide.load74 = load <2 x i64>, ptr %i.z, align 1, !alias.scope !2603, !noalias !2604
  %wide.load75 = load <2 x i64>, ptr %i.ab, align 1, !alias.scope !2603, !noalias !2604
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load76 = load <2 x i64>, ptr %i.aa, align 1, !alias.scope !2605
  %wide.load77 = load <2 x i64>, ptr %i.ac, align 1, !alias.scope !2605
  store <2 x i64> %wide.load76, ptr %i.z, align 1, !alias.scope !2603, !noalias !2604
  store <2 x i64> %wide.load77, ptr %i.ab, align 1, !alias.scope !2603, !noalias !2604
  store <2 x i64> %wide.load74, ptr %i.aa, align 1, !alias.scope !2605
  store <2 x i64> %wide.load75, ptr %i.ac, align 1, !alias.scope !2605
  %index.next78 = add nuw i64 %index73, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next78, %n.vec71
  br i1 %i.ad, label %middle.block79, label %vector.body72, !llvm.loop !2559

middle.block79:                                   ; preds = %vector.body72
  br i1 %cmp.n80, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i, label %.preheader.i38.us.i.i.preheader

.preheader.i38.us.i.i.preheader:                  ; preds = %vector.memcheck60, %.preheader.i38.preheader.us.i.i, %middle.block79
  %.sroa.0.04.i.i39.us.i.i.ph = phi i64 [ 0, %vector.memcheck60 ], [ 0, %.preheader.i38.preheader.us.i.i ], [ %n.vec71, %middle.block79 ] ; 5 uses
  %.neg120 = or disjoint i64 %.sroa.0.04.i.i39.us.i.i.ph, 1
  br i1 %lcmp.mod117.not, label %.preheader.i38.us.i.i.prol.loopexit, label %.preheader.i38.us.i.i.prol

.preheader.i38.us.i.i.prol:                       ; preds = %.preheader.i38.us.i.i.preheader
  %i.ae = or disjoint i64 %.sroa.0.04.i.i39.us.i.i.ph, 1
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.0.04.i.i39.us.i.i.ph ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us.i.i, i64 %.sroa.0.04.i.i39.us.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %.sroa.0.0.copyload.i.i.i40.us.i.i.prol = load i64, ptr %i.af, align 1, !alias.scope !2601
  %.sroa.02.0.copyload.i.i.i41.us.i.i.prol = load i64, ptr %i.ag, align 1, !alias.scope !2602
  store i64 %.sroa.02.0.copyload.i.i.i41.us.i.i.prol, ptr %i.af, align 1, !alias.scope !2601
  store i64 %.sroa.0.0.copyload.i.i.i40.us.i.i.prol, ptr %i.ag, align 1, !alias.scope !2602
  br label %.preheader.i38.us.i.i.prol.loopexit

.preheader.i38.us.i.i.prol.loopexit:              ; preds = %.preheader.i38.us.i.i.prol, %.preheader.i38.us.i.i.preheader
  %.sroa.0.04.i.i39.us.i.i.unr = phi i64 [ %.sroa.0.04.i.i39.us.i.i.ph, %.preheader.i38.us.i.i.preheader ], [ %i.ae, %.preheader.i38.us.i.i.prol ]
  %i.ah = icmp eq i64 %i.j, %.neg120
  br i1 %i.ah, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i, label %.preheader.i38.us.i.i

.preheader.i38.us.i.i:                            ; preds = %.preheader.i38.us.i.i.prol.loopexit, %.preheader.i38.us.i.i
  %.sroa.0.04.i.i39.us.i.i = phi i64 [ %i.al, %.preheader.i38.us.i.i ], [ %.sroa.0.04.i.i39.us.i.i.unr, %.preheader.i38.us.i.i.prol.loopexit ] ; 4 uses
  %i.ai = add nuw nsw i64 %.sroa.0.04.i.i39.us.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.0.04.i.i39.us.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us.i.i, i64 %.sroa.0.04.i.i39.us.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %.sroa.0.0.copyload.i.i.i40.us.i.i = load i64, ptr %i.aj, align 1, !alias.scope !2601
  %.sroa.02.0.copyload.i.i.i41.us.i.i = load i64, ptr %i.ak, align 1, !alias.scope !2602
  store i64 %.sroa.02.0.copyload.i.i.i41.us.i.i, ptr %i.aj, align 1, !alias.scope !2601
  store i64 %.sroa.0.0.copyload.i.i.i40.us.i.i, ptr %i.ak, align 1, !alias.scope !2602
  %i.al = add nuw nsw i64 %.sroa.0.04.i.i39.us.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ai ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.us.i.i, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2607)
  %.sroa.0.0.copyload.i.i.i40.us.i.i.1 = load i64, ptr %i.am, align 1, !alias.scope !2606
  %.sroa.02.0.copyload.i.i.i41.us.i.i.1 = load i64, ptr %i.an, align 1, !alias.scope !2607
  store i64 %.sroa.02.0.copyload.i.i.i41.us.i.i.1, ptr %i.am, align 1, !alias.scope !2606
  store i64 %.sroa.0.0.copyload.i.i.i40.us.i.i.1, ptr %i.an, align 1, !alias.scope !2607
  %exitcond.not.i.i42.us.i.i.1 = icmp eq i64 %i.al, %i.j
  br i1 %exitcond.not.i.i42.us.i.i.1, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i, label %.preheader.i38.us.i.i, !llvm.loop !2563

_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i: ; preds = %.preheader.i38.us.i.i.prol.loopexit, %.preheader.i38.us.i.i, %middle.block79
  %i.ao = sub i64 %.sroa.0.2.us.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %.sroa.016.0.i.i
  %indvar.next62 = add i64 %indvar61, 1
  br i1 %i.ap, label %.loopexit.i.i, label %.preheader.i38.preheader.us.i.i

.preheader.i.i:                                   ; preds = %.preheader.i
  %i.aq = sub i64 0, %.sroa.0.0.i.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 3              ; 5 uses
  %i.as = and i64 %.sroa.0.0.i.i, 7               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %.not4.i.i.i = icmp eq i64 %i.as, 0
  %i.at = and i64 %.sroa.0.0.i.i, -8              ; 4 uses
  %i.au = icmp samesign ult i64 %i.as, 4
  %i.av = and i64 %.sroa.0.0.i.i, 2
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = and i64 %.sroa.0.0.i.i, 1
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = sub i64 %i.at, %.sroa.0.0.i.i
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i, 32
  %i.ba = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.az
  %7 = getelementptr i8, ptr %.sroa.010.0.i.i, i64 %i.at
  %n.vec = and i64 %i.ar, 2305843009213693948     ; 3 uses
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  %i.bb = and i64 %.sroa.0.0.i.i, 8
  %lcmp.mod119.not = icmp eq i64 %i.bb, 0
  br label %.preheader.split.i.i

.preheader.split.i.i:                             ; preds = %.preheader.i.i, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i
  %indvar = phi i64 [ 0, %.preheader.i.i ], [ %indvar.next, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ] ; 2 uses
  %.sroa.016.1.i.i = phi i64 [ %.sroa.016.0.i.i, %.preheader.i.i ], [ %i.ca, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ]
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %.preheader.i.i ], [ %i.bz, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ] ; 8 uses
  %i.bc = getelementptr i8, ptr %.sroa.010.1.i.i, i64 %i.aq ; 6 uses
  br i1 %.not.i.i.i, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.preheader.split.i.i
  br i1 %min.iters.check, label %.preheader.i.i.i.preheader104, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.i.i.preheader
  %8 = mul i64 %indvar, %.sroa.0.0.i.i            ; 2 uses
  %9 = getelementptr i8, ptr %i.ba, i64 %8
  %10 = getelementptr i8, ptr %7, i64 %8
  %bound0 = icmp ult ptr %i.bc, %10
  %bound1 = icmp ult ptr %.sroa.010.1.i.i, %9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.i.preheader104, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2609)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bd, align 1, !alias.scope !2610, !noalias !2611
  %wide.load57 = load <2 x i64>, ptr %i.bf, align 1, !alias.scope !2610, !noalias !2611
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load58 = load <2 x i64>, ptr %i.be, align 1, !alias.scope !2612
  %wide.load59 = load <2 x i64>, ptr %i.bg, align 1, !alias.scope !2612
  store <2 x i64> %wide.load58, ptr %i.bd, align 1, !alias.scope !2610, !noalias !2611
  store <2 x i64> %wide.load59, ptr %i.bf, align 1, !alias.scope !2610, !noalias !2611
  store <2 x i64> %wide.load, ptr %i.be, align 1, !alias.scope !2612
  store <2 x i64> %wide.load57, ptr %i.bg, align 1, !alias.scope !2612
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !2570

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i.i.i, label %.preheader.i.i.i.preheader104

.preheader.i.i.i.preheader104:                    ; preds = %vector.memcheck, %.preheader.i.i.i.preheader, %middle.block
  %.sroa.0.04.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg121 = or disjoint i64 %.sroa.0.04.i.i.i.i.ph, 1
  br i1 %lcmp.mod119.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol

.preheader.i.i.i.prol:                            ; preds = %.preheader.i.i.i.preheader104
  %i.bi = or disjoint i64 %.sroa.0.04.i.i.i.i.ph, 1
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.04.i.i.i.i.ph ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %.sroa.0.04.i.i.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2609)
  %.sroa.0.0.copyload.i.i.i.i.i.prol = load i64, ptr %i.bj, align 1, !alias.scope !2608
  %.sroa.02.0.copyload.i.i.i.i.i.prol = load i64, ptr %i.bk, align 1, !alias.scope !2609
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.prol, ptr %i.bj, align 1, !alias.scope !2608
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.prol, ptr %i.bk, align 1, !alias.scope !2609
  br label %.preheader.i.i.i.prol.loopexit

.preheader.i.i.i.prol.loopexit:                   ; preds = %.preheader.i.i.i.prol, %.preheader.i.i.i.preheader104
  %.sroa.0.04.i.i.i.i.unr = phi i64 [ %.sroa.0.04.i.i.i.i.ph, %.preheader.i.i.i.preheader104 ], [ %i.bi, %.preheader.i.i.i.prol ]
  %i.bl = icmp eq i64 %i.ar, %.neg121
  br i1 %i.bl, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.bp, %.preheader.i.i.i ], [ %.sroa.0.04.i.i.i.i.unr, %.preheader.i.i.i.prol.loopexit ] ; 4 uses
  %i.bm = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1  ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2609)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bn, align 1, !alias.scope !2608
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.bo, align 1, !alias.scope !2609
  store i64 %.sroa.02.0.copyload.i.i.i.i.i, ptr %i.bn, align 1, !alias.scope !2608
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.bo, align 1, !alias.scope !2609
  %i.bp = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 2  ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bm ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i, i64 %i.bm ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2614)
  %.sroa.0.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.bq, align 1, !alias.scope !2613
  %.sroa.02.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.br, align 1, !alias.scope !2614
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.1, ptr %i.bq, align 1, !alias.scope !2613
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.1, ptr %i.br, align 1, !alias.scope !2614
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.bp, %i.ar
  br i1 %exitcond.not.i.i.i.i.1, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i.i.i, label %.preheader.i.i.i, !llvm.loop !2574

_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i.i.i: ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i, %middle.block, %.preheader.split.i.i
  br i1 %.not4.i.i.i, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.at ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 %i.at ; 4 uses
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  %.sroa.0.0.copyload.i.i5.i.i.i = load i32, ptr %i.bs, align 1, !alias.scope !2615
  %.sroa.02.0.copyload.i.i6.i.i.i = load i32, ptr %i.bt, align 1, !alias.scope !2616
  store i32 %.sroa.02.0.copyload.i.i6.i.i.i, ptr %i.bs, align 1, !alias.scope !2615
  store i32 %.sroa.0.0.copyload.i.i5.i.i.i, ptr %i.bt, align 1, !alias.scope !2616
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.h ], [ 4, %bb.i ] ; 4 uses
  br i1 %i.aw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.0.0.i.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.0.0.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2618)
  %.sroa.0.0.copyload.i9.i.i.i.i = load i16, ptr %i.bu, align 1, !alias.scope !2617
  %.sroa.02.0.copyload.i10.i.i.i.i = load i16, ptr %i.bv, align 1, !alias.scope !2618
  store i16 %.sroa.02.0.copyload.i10.i.i.i.i, ptr %i.bu, align 1, !alias.scope !2617
  store i16 %.sroa.0.0.copyload.i9.i.i.i.i, ptr %i.bv, align 1, !alias.scope !2618
  %i.bw = or disjoint i64 %.sroa.0.0.i.i.i.i, 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.1.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.j ], [ %i.bw, %bb.k ] ; 2 uses
  br i1 %i.ay, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.0.1.i.i.i.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.0.1.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %.sroa.0.0.copyload.i11.i.i.i.i = load i8, ptr %i.bx, align 1, !alias.scope !2619
  %.sroa.02.0.copyload.i12.i.i.i.i = load i8, ptr %i.by, align 1, !alias.scope !2620
  store i8 %.sroa.02.0.copyload.i12.i.i.i.i, ptr %i.bx, align 1, !alias.scope !2619
  store i8 %.sroa.0.0.copyload.i11.i.i.i.i, ptr %i.by, align 1, !alias.scope !2620
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i: ; preds = %bb.m, %bb.l, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i.i.i
  %i.bz = getelementptr i8, ptr %.sroa.010.1.i.i, i64 %.sroa.0.0.i.i ; 2 uses
  %i.ca = sub i64 %.sroa.016.1.i.i, %.sroa.0.0.i.i ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %.sroa.0.0.i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cb, label %.loopexit.i.i, label %.preheader.split.i.i

.loopexit.i.i:                                    ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit53.i.i, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.us.us.i.i, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i
  %.sroa.016.2.i.i = phi i64 [ %.sroa.016.0.i.i, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i ], [ %i.ca, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %.sroa.016.0.i.i, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.us.us.i.i ], [ %.sroa.016.0.i.i, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit53.i.i ] ; 2 uses
  %.sroa.010.2.i.i = phi ptr [ %i.x, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i ], [ %i.bz, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %i.u, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.us.us.i.i ], [ %i.ce, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit53.i.i ]
  %.sroa.0.1.i.i = phi i64 [ %i.ao, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.loopexit.us.i.i ], [ %.sroa.0.0.i.i, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i.i ], [ %i.v, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.us.us.i.i ], [ %i.db, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit53.i.i ] ; 2 uses
  %i.cc = icmp eq i64 %.sroa.016.2.i.i, 0
  %i.cd = icmp eq i64 %.sroa.0.1.i.i, 0
  %or.cond.i.i = or i1 %i.cc, %i.cd
  br i1 %or.cond.i.i, label %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate10ptr_rotatehECskm6LeB9lWb4_9wasm_ping.exit, label %.preheader.i

.preheader54.split.i.i:                           ; preds = %.preheader54.split.i.i.preheader, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit53.i.i
  %indvar83 = phi i64 [ 0, %.preheader54.split.i.i.preheader ], [ %indvar.next84, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit53.i.i ] ; 2 uses
  %.sroa.010.3.i.i = phi ptr [ %.sroa.010.0.i.i, %.preheader54.split.i.i.preheader ], [ %i.ce, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit53.i.i ] ; 7 uses
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.0.i.i, %.preheader54.split.i.i.preheader ], [ %i.db, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit53.i.i ]
  %i.ce = getelementptr i8, ptr %.sroa.010.3.i.i, i64 %i.i ; 8 uses
  br i1 %.not.i37.i.i, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.i.i, label %.preheader.i38.i.i.preheader

.preheader.i38.i.i.preheader:                     ; preds = %.preheader54.split.i.i
  br i1 %min.iters.check91, label %.preheader.i38.i.i.preheader105, label %vector.memcheck82

vector.memcheck82:                                ; preds = %.preheader.i38.i.i.preheader
  %11 = mul i64 %indvar83, %i.i                   ; 2 uses
  %12 = getelementptr i8, ptr %4, i64 %11
  %13 = getelementptr i8, ptr %5, i64 %11
  %bound087 = icmp ult ptr %i.ce, %13
  %bound188 = icmp ult ptr %.sroa.010.3.i.i, %12
  %found.conflict89 = and i1 %bound087, %bound188
  br i1 %found.conflict89, label %.preheader.i38.i.i.preheader105, label %vector.body94

vector.body94:                                    ; preds = %vector.memcheck82, %vector.body94
  %index95 = phi i64 [ %index.next100, %vector.body94 ], [ 0, %vector.memcheck82 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index95 ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %index95 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load96 = load <2 x i64>, ptr %i.cf, align 1, !alias.scope !2621, !noalias !2622
  %wide.load97 = load <2 x i64>, ptr %i.ch, align 1, !alias.scope !2621, !noalias !2622
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %wide.load98 = load <2 x i64>, ptr %i.cg, align 1, !alias.scope !2623
  %wide.load99 = load <2 x i64>, ptr %i.ci, align 1, !alias.scope !2623
  store <2 x i64> %wide.load98, ptr %i.cf, align 1, !alias.scope !2621, !noalias !2622
  store <2 x i64> %wide.load99, ptr %i.ch, align 1, !alias.scope !2621, !noalias !2622
  store <2 x i64> %wide.load96, ptr %i.cg, align 1, !alias.scope !2623
  store <2 x i64> %wide.load97, ptr %i.ci, align 1, !alias.scope !2623
  %index.next100 = add nuw i64 %index95, 4        ; 2 uses
  %i.cj = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.cj, label %middle.block101, label %vector.body94, !llvm.loop !2587

middle.block101:                                  ; preds = %vector.body94
  br i1 %cmp.n102, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.i.i, label %.preheader.i38.i.i.preheader105

.preheader.i38.i.i.preheader105:                  ; preds = %vector.memcheck82, %.preheader.i38.i.i.preheader, %middle.block101
  %.sroa.0.04.i.i39.i.i.ph = phi i64 [ 0, %vector.memcheck82 ], [ 0, %.preheader.i38.i.i.preheader ], [ %n.vec93, %middle.block101 ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.i.i39.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.preheader.i38.i.i.prol.loopexit, label %.preheader.i38.i.i.prol

.preheader.i38.i.i.prol:                          ; preds = %.preheader.i38.i.i.preheader105
  %i.ck = or disjoint i64 %.sroa.0.04.i.i39.i.i.ph, 1
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.sroa.0.04.i.i39.i.i.ph ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %.sroa.0.04.i.i39.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %.sroa.0.0.copyload.i.i.i40.i.i.prol = load i64, ptr %i.cl, align 1, !alias.scope !2601
  %.sroa.02.0.copyload.i.i.i41.i.i.prol = load i64, ptr %i.cm, align 1, !alias.scope !2602
  store i64 %.sroa.02.0.copyload.i.i.i41.i.i.prol, ptr %i.cl, align 1, !alias.scope !2601
  store i64 %.sroa.0.0.copyload.i.i.i40.i.i.prol, ptr %i.cm, align 1, !alias.scope !2602
  br label %.preheader.i38.i.i.prol.loopexit

.preheader.i38.i.i.prol.loopexit:                 ; preds = %.preheader.i38.i.i.prol, %.preheader.i38.i.i.preheader105
  %.sroa.0.04.i.i39.i.i.unr = phi i64 [ %.sroa.0.04.i.i39.i.i.ph, %.preheader.i38.i.i.preheader105 ], [ %i.ck, %.preheader.i38.i.i.prol ]
  %i.cn = icmp eq i64 %i.j, %.neg
  br i1 %i.cn, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.i.i, label %.preheader.i38.i.i

.preheader.i38.i.i:                               ; preds = %.preheader.i38.i.i.prol.loopexit, %.preheader.i38.i.i
  %.sroa.0.04.i.i39.i.i = phi i64 [ %i.cr, %.preheader.i38.i.i ], [ %.sroa.0.04.i.i39.i.i.unr, %.preheader.i38.i.i.prol.loopexit ] ; 4 uses
  %i.co = add nuw nsw i64 %.sroa.0.04.i.i39.i.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.sroa.0.04.i.i39.i.i ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %.sroa.0.04.i.i39.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %.sroa.0.0.copyload.i.i.i40.i.i = load i64, ptr %i.cp, align 1, !alias.scope !2601
  %.sroa.02.0.copyload.i.i.i41.i.i = load i64, ptr %i.cq, align 1, !alias.scope !2602
  store i64 %.sroa.02.0.copyload.i.i.i41.i.i, ptr %i.cp, align 1, !alias.scope !2601
  store i64 %.sroa.0.0.copyload.i.i.i40.i.i, ptr %i.cq, align 1, !alias.scope !2602
  %i.cr = add nuw nsw i64 %.sroa.0.04.i.i39.i.i, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.co ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i, i64 %i.co ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  %.sroa.0.0.copyload.i.i.i40.i.i.1 = load i64, ptr %i.cs, align 1, !alias.scope !2624
  %.sroa.02.0.copyload.i.i.i41.i.i.1 = load i64, ptr %i.ct, align 1, !alias.scope !2625
  store i64 %.sroa.02.0.copyload.i.i.i41.i.i.1, ptr %i.cs, align 1, !alias.scope !2624
  store i64 %.sroa.0.0.copyload.i.i.i40.i.i.1, ptr %i.ct, align 1, !alias.scope !2625
  %exitcond.not.i.i42.i.i.1 = icmp eq i64 %i.cr, %i.j
  br i1 %exitcond.not.i.i42.i.i.1, label %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.i.i, label %.preheader.i38.i.i, !llvm.loop !2591

_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.i.i: ; preds = %.preheader.i38.i.i.prol.loopexit, %.preheader.i38.i.i, %middle.block101, %.preheader54.split.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.l ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.3.i.i, i64 %i.l ; 4 uses
  br i1 %i.m, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  %.sroa.0.0.copyload.i.i5.i45.i.i = load i32, ptr %i.cu, align 1, !alias.scope !2626
  %.sroa.02.0.copyload.i.i6.i46.i.i = load i32, ptr %i.cv, align 1, !alias.scope !2627
  store i32 %.sroa.02.0.copyload.i.i6.i46.i.i, ptr %i.cu, align 1, !alias.scope !2626
  store i32 %.sroa.0.0.copyload.i.i5.i45.i.i, ptr %i.cv, align 1, !alias.scope !2627
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.i.i
  %.sroa.0.0.i.i47.i.i = phi i64 [ 0, %_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskm6LeB9lWb4_9wasm_ping.exit.i43.i.i ], [ 4, %bb.n ] ; 4 uses
  br i1 %i.o, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sroa.0.0.i.i47.i.i ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sroa.0.0.i.i47.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2629)
  %.sroa.0.0.copyload.i9.i.i48.i.i = load i16, ptr %i.cw, align 1, !alias.scope !2628
  %.sroa.02.0.copyload.i10.i.i49.i.i = load i16, ptr %i.cx, align 1, !alias.scope !2629
  store i16 %.sroa.02.0.copyload.i10.i.i49.i.i, ptr %i.cw, align 1, !alias.scope !2628
  store i16 %.sroa.0.0.copyload.i9.i.i48.i.i, ptr %i.cx, align 1, !alias.scope !2629
  %i.cy = or disjoint i64 %.sroa.0.0.i.i47.i.i, 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.1.i.i50.i.i = phi i64 [ %.sroa.0.0.i.i47.i.i, %bb.o ], [ %i.cy, %bb.p ] ; 2 uses
  br i1 %i.q, label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit53.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sroa.0.1.i.i50.i.i ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sroa.0.1.i.i50.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2631)
  %.sroa.0.0.copyload.i11.i.i51.i.i = load i8, ptr %i.cz, align 1, !alias.scope !2630
  %.sroa.02.0.copyload.i12.i.i52.i.i = load i8, ptr %i.da, align 1, !alias.scope !2631
  store i8 %.sroa.02.0.copyload.i12.i.i52.i.i, ptr %i.cz, align 1, !alias.scope !2630
  store i8 %.sroa.0.0.copyload.i11.i.i51.i.i, ptr %i.da, align 1, !alias.scope !2631
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit53.i.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit53.i.i: ; preds = %bb.r, %bb.q
  %i.db = sub i64 %.sroa.0.2.i.i, %.sroa.016.0.i.i ; 3 uses
  %i.dc = icmp ult i64 %i.db, %.sroa.016.0.i.i
  %indvar.next84 = add i64 %indvar83, 1
  br i1 %i.dc, label %.loopexit.i.i, label %.preheader54.split.i.i

_RINvNtNtCskKLDkoKarTP_4core5slice6rotate10ptr_rotatehECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %.loopexit.i.i, %bb.c, %_RINvNtNtCskKLDkoKarTP_4core5slice6rotate18ptr_rotate_memmovehECskm6LeB9lWb4_9wasm_ping.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #11 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtB6_6string6StringE3lenCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !13
  %i.c = load ptr, ptr %0, align 8, !noundef !13
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCskeoOuuhwsQF_12sharded_slab5shardINtB5_5ShardNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  fence acquire
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !26, !noalias !2654, !noundef !13
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RNvYNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskm6LeB9lWb4_9wasm_ping.exit.thread.i.i, label %_RNvYNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskm6LeB9lWb4_9wasm_ping.exit.i.i, !prof !20

_RNvYNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskm6LeB9lWb4_9wasm_ping.exit.i.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCskeoOuuhwsQF_12sharded_slab3tid12RegistrationuE16get_or_init_slowNvNvB1f_12REGISTRATION27___rust_std_internal_init_fnECskm6LeB9lWb4_9wasm_ping(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvMs_NtCskeoOuuhwsQF_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCskm6LeB9lWb4_9wasm_ping.exit, label %_RNvYNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskm6LeB9lWb4_9wasm_ping.exit.thread.i.i

_RNvYNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskm6LeB9lWb4_9wasm_ping.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskm6LeB9lWb4_9wasm_ping.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.e, %_RNvYNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskm6LeB9lWb4_9wasm_ping.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !range !18, !noundef !13
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %_RNvYNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskm6LeB9lWb4_9wasm_ping.exit.thread.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8
  br label %_RNvMs_NtCskeoOuuhwsQF_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCskm6LeB9lWb4_9wasm_ping.exit

bb.c:                                             ; preds = %_RNvYNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskm6LeB9lWb4_9wasm_ping.exit.thread.i.i
  %i.k = tail call noundef i64 @_RINvMs6_NtCskeoOuuhwsQF_12sharded_slab3tidNtB6_12Registration8registerNtNtB8_3cfg13DefaultConfigECskm6LeB9lWb4_9wasm_ping(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i2.i.i)
  br label %_RNvMs_NtCskeoOuuhwsQF_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCskm6LeB9lWb4_9wasm_ping.exit

_RNvMs_NtCskeoOuuhwsQF_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RNvYNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskm6LeB9lWb4_9wasm_ping.exit.i.i, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ %i.k, %bb.c ], [ -1, %_RNvYNCNKNvNtCskeoOuuhwsQF_12sharded_slab3tid12REGISTRATION00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCskm6LeB9lWb4_9wasm_ping.exit.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noundef !13
  %i.n = icmp eq i64 %.sroa.0.0.i, %i.m
  br i1 %i.n, label %bb.o, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCskeoOuuhwsQF_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCskm6LeB9lWb4_9wasm_ping.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.o, align 8, !noundef !13
  %i.p = and i64 %1, 274877906943                 ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 32
  %i.r = lshr i64 %i.q, 6
end_hunk_0
