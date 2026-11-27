Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15192
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN4core4hash11BuildHasher8hash_one17h98b4340ab986f628E:bb.a
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h99888fafd3278af2E(i64 %.0.val, i64 %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #18 personality ptr @rust_eh_personality !guid !21022 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !21023
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !21023
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !21023
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !21023
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !21023
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !21023
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !21023
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !noalias !21024, !nonnull !136, !noundef !136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.h, align 8, !noalias !21024, !noundef !136
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21025
  store i8 -1, ptr %i.a, align 1, !noalias !21025
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !21026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21025
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !21027
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !21027
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !21027 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !21027
  %i.i = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !21027, !noundef !136
  %i.j = shl i64 %i.i, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !21027, !noundef !136
  %i.m = or i64 %i.j, %i.l                        ; 2 uses
  %i.n = xor i64 %i.m, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.o = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.p = add i64 %i.n, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.r = xor i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = add i64 %i.p, %i.r                       ; 3 uses
  %i.w = add i64 %i.t, %i.u                       ; 2 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 17)
  %i.y = xor i64 %i.v, %i.x                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 21)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = xor i64 %i.w, %i.m
  %i.ad = xor i64 %i.ab, 255
  %i.ae = add i64 %i.ac, %i.y                     ; 3 uses
  %i.af = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 13)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 17)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 2 uses
  %i.bm = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = xor i64 %i.bo, %i.bn
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = xor i64 %i.br, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bs
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h81b38f01960c5b2cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !21057 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [112 x i8], align 8               ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [112 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21058)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(112) %1, i64 112, i1 false), !alias.scope !21060, !noalias !21058
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21065
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21066)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21067
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6361f847d40ad4beE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef align 8 dereferenceable(96) %i.j)
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !21068

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !noalias !21067, !noundef !136
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %.thread14.i.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !21067
  %i.l = load ptr, ptr %i.i, align 8, !alias.scope !21069, !noalias !21059, !nonnull !136, !noundef !136
  invoke void %i.l(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.d unwind label %bb.c, !noalias !21067, !inline_history !21043

.thread14.i.i.i:                                  ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21065
  br label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21067
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !21069, !noalias !21059, !noundef !136
  %i.p = add i64 %i.o, -1                         ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !alias.scope !21069, !noalias !21059
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.f, align 8, !noalias !21070 ; 4 uses
  %.sroa.7.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i, align 8, !noalias !21070 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.7.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !21070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21065
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %.thread14.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !21071
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !21071
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.r, align 8, !alias.scope !21071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21065
  call fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h6d9ce0bf63d772d5E"(ptr noalias noundef readonly align 8 dereferenceable(96) %i.j), !noalias !21072
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5d1e8ae10c48d1a3E.exit"

bb.f:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, 0
  br i1 %i.t, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !21065
  br label %bb.v

bb.h:                                             ; preds = %bb.d
  %i.u = call i64 @llvm.uadd.sat.i64(i64 %i.p, i64 1)
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.u, i64 4) ; 3 uses
  %i.v = mul i64 %.sroa.0.0.i.i.i.i, 24           ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.p, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !155

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.h
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.j, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !21073
  %i.x = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.v, i64 noundef range(i64 1, 9) 8) #47, !noalias !21073 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.h
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.h ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @483) #54
          to label %.noexc8.i.i.i unwind label %bb.f, !noalias !21065

.noexc8.i.i.i:                                    ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.x, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ] ; 2 uses
  %i.z = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.z)
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !21065
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !21065
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !noalias !21065
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.h, align 8, !noalias !21065
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !21065
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !21065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false), !noalias !21072
  call void @llvm.experimental.noalias.scope.decl(metadata !21074)
  call void @llvm.experimental.noalias.scope.decl(metadata !21075)
  call void @llvm.experimental.noalias.scope.decl(metadata !21076)
  call void @llvm.experimental.noalias.scope.decl(metadata !21077)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i", %bb.j
  %i.ac = phi ptr [ %i.am, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i" ], [ %.sroa.10.0.i.i.i.i, %bb.j ]
  %i.ad = phi i64 [ %i.ao, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i" ], [ 1, %bb.j ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21078)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21080
  invoke fastcc void @"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6361f847d40ad4beE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef align 8 dereferenceable(96) %i.aa)
          to label %.noexc.i.i.i.i.i unwind label %bb.m, !noalias !21081

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  %i.ae = load ptr, ptr %i.b, align 8, !noalias !21080, !noundef !136
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !21080
  %i.af = load ptr, ptr %i.g, align 8, !alias.scope !21082, !noalias !21065, !nonnull !136, !noundef !136
  invoke void %i.af(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.n unwind label %bb.m, !noalias !21080, !inline_history !21043

.thread.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21079
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h78694921c500252fE.exit.i.i.i.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i": ; preds = %bb.q, %bb.p, %bb.m
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.ap, %bb.p ], [ %i.ap, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h6d9ce0bf63d772d5E"(ptr noalias noundef readonly align 8 dereferenceable(96) %i.aa)
          to label %.body.i.i.i unwind label %bb.s, !noalias !21083

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21080
  %i.ah = load i64, ptr %i.ab, align 8, !alias.scope !21082, !noalias !21065, !noundef !136
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.ab, align 8, !alias.scope !21082, !noalias !21065
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !21084 ; 4 uses
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !21084 ; 3 uses
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.sroa_idx.i.i.i.i.i, align 8, !noalias !21084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21079
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h78694921c500252fE.exit.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp samesign ult i64 %i.ad, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.h, align 8, !range !142, !alias.scope !21085, !noalias !21065, !noundef !136
  %i.al = icmp eq i64 %i.ad, %i.ak
  br i1 %i.al, label %bb.r, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i_crit_edge.i.i.i", %bb.o
  %i.am = phi ptr [ %.pre.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i_crit_edge.i.i.i" ], [ %i.ac, %bb.o ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ad ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.an, align 8, !noalias !21079
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !noalias !21079
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i, align 8, !noalias !21079
  %i.ao = add nuw nsw i64 %i.ad, 1                ; 2 uses
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !21085, !noalias !21065
  br label %bb.k

bb.p:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %i.aq, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !21079
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i"

bb.r:                                             ; preds = %bb.o
  %i.ar = call i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ad, i64 noundef range(i64 1, 0) %i.ar, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i_crit_edge.i.i.i" unwind label %bb.p, !noalias !21086

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i_crit_edge.i.i.i": ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !21085, !noalias !21065
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h259dcf6f93e14e6dE.exit.i.i.i.i.i"

bb.s:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i"
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !21079
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h78694921c500252fE.exit.i.i.i.i": ; preds = %bb.n, %.thread.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h6d9ce0bf63d772d5E"(ptr noalias noundef readonly align 8 dereferenceable(96) %i.aa)
          to label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h7672388e04994ce0E.exit.i.i.i" unwind label %bb.t, !noalias !21083

bb.t:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h78694921c500252fE.exit.i.i.i.i"
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.t, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i"
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.at, %bb.t ], [ %.pn.i.i.i.i.i, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit.i.i.i.i.i" ]
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h33770dd3628bd6e2E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #55, !noalias !21065
  br label %"_ZN4core3ptr97drop_in_place$LT$clap_builder..parser..matches..arg_matches..Values$LT$std..path..PathBuf$GT$$GT$17ha6c683cbb72585b4E.exit.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h7672388e04994ce0E.exit.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17h78694921c500252fE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !21065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !21087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21065
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5d1e8ae10c48d1a3E.exit"

bb.u:                                             ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !21065
  unreachable

"_ZN4core3ptr97drop_in_place$LT$clap_builder..parser..matches..arg_matches..Values$LT$std..path..PathBuf$GT$$GT$17ha6c683cbb72585b4E.exit.i.i.i": ; preds = %bb.v, %.body.i.i.i
  %.pn12.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %.pn.ph.i.i.i, %bb.v ]
  resume { ptr, i32 } %.pn12.i.i.i

bb.v:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.s, %bb.f ], [ %i.s, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr168drop_in_place$LT$core..iter..adapters..flatten..Flatten$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$clap_builder..util..any_value..AnyValue$GT$$GT$$GT$$GT$17h6d9ce0bf63d772d5E"(ptr noalias noundef readonly align 8 dereferenceable(96) %i.j)
          to label %"_ZN4core3ptr97drop_in_place$LT$clap_builder..parser..matches..arg_matches..Values$LT$std..path..PathBuf$GT$$GT$17ha6c683cbb72585b4E.exit.i.i.i" unwind label %bb.u, !noalias !21072

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h5d1e8ae10c48d1a3E.exit": ; preds = %bb.e, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h7672388e04994ce0E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21059
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h03cf07a20bd28403E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 !guid !21088 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h041d62e68fa7e9a7E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 !guid !21089 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZN4core5error5Error11description17h093b11fd669668b9E(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 !guid !21090 {
bb.a:
  ret { ptr, i64 } { ptr @488, i64 40 }
}

end_hunk_0
begin_hunk_1_@"_ZN5xtask5bench8workload11stop_report28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1a0efc3a73d96329E":bb.a
  %i.iq = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %.val.i.i.i = load i32, ptr %i.iq, align 8, !range !204, !alias.scope !32220, !noalias !32172, !noundef !136
  %i.ir = call noundef i32 @close(i32 noundef %.val.i.i.i) #47, !noalias !32221 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !32172
  %.not132.i = icmp eq i32 %.sroa.5373.0.i, 1000000000 ; 2 uses
  br i1 %.not132.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !32172
  store i64 %.sroa.0372.0.i, ptr %i.bo, align 8, !noalias !32172
  %i.is = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %.sroa.5373.0.i, ptr %i.is, align 8, !noalias !32172
  %i.it = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %.ph556.i.ph, ptr %i.it, align 8, !noalias !32172
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 %.ph.i.ph, ptr %i.iu, align 8, !noalias !32172
  %i.iv = invoke { i64, i32 } @_ZN13tracing_trace9processor10span_stats8SelfTime13self_duration17he17a6d4d1ba019d0E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.bo)
          to label %bb.bc unwind label %bb.ay, !noalias !32172 ; 2 uses

bb.bb:                                            ; preds = %bb.bc, %bb.az
  %.sroa.542.sroa.4.0.i = phi i64 [ %i.jh, %bb.bc ], [ 0, %bb.az ]
  %.sroa.542.sroa.5.0.i = phi i64 [ %i.ji, %bb.bc ], [ 0, %bb.az ]
  %.sroa.037.0.i = phi i64 [ %.sroa.0372.0.i, %bb.bc ], [ undef, %bb.az ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !32172
  %.sroa.0464.0.copyload.i = load ptr, ptr %i.cf, align 8, !noalias !32172, !nonnull !136, !noundef !136 ; 5 uses
  %.sroa.2.0.copyload466.i = load i64, ptr %i.gk, align 8, !noalias !32172 ; 4 uses
  %.sroa.3467.0.copyload.i = load i64, ptr %i.gi, align 8, !noalias !32172
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.0464.0.copyload.i, align 16, !noalias !32222
  %i.iw = icmp eq i64 %.sroa.2.0.copyload466.i, 0
  br i1 %i.iw, label %bb.bd, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i: ; preds = %bb.bb
  %i.ix = mul i64 %.sroa.2.0.copyload466.i, 144   ; 2 uses
  %i.iy = add i64 %i.ix, 144                      ; 2 uses
  %i.iz = add i64 %.sroa.2.0.copyload466.i, 17
  %i.ja = add i64 %i.iz, %i.iy                    ; 3 uses
  %i.jb = icmp uge i64 %i.ja, %i.iy
  call void @llvm.assume(i1 %i.jb)
  %i.jc = icmp ult i64 %i.ja, 9223372036854775793
  call void @llvm.assume(i1 %i.jc)
  %i.jd = sub i64 -144, %i.ix
  %i.je = getelementptr inbounds i8, ptr %.sroa.0464.0.copyload.i, i64 %i.jd
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.jf = extractvalue { i64, i32 } %i.iv, 0
  %i.jg = extractvalue { i64, i32 } %i.iv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !32172
  %i.jh = mul i64 %i.jf, 1000000000
  %i.ji = zext nneg i32 %i.jg to i64
  br label %bb.bb

bb.bd:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i, %bb.bb
  %.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.ja, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %bb.bb ]
  %.sroa.5.sroa.4.0.i.i.i.i.i = phi ptr [ %i.je, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %bb.bb ]
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ 0, %bb.bb ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0464.0.copyload.i, i64 16
  %i.jk = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.jl = getelementptr i8, ptr %.sroa.0464.0.copyload.i, i64 %.sroa.2.0.copyload466.i
  %i.jm = getelementptr i8, ptr %i.jl, i64 1
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.bp, align 8, !noalias !32172
  %.sroa.4444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i, ptr %.sroa.4444.0..sroa_idx.i, align 8, !noalias !32172
  %.sroa.5445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i, ptr %.sroa.5445.0..sroa_idx.i, align 8, !noalias !32172
  %.sroa.6446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %.sroa.0464.0.copyload.i, ptr %.sroa.6446.0..sroa_idx.i, align 8, !noalias !32172
  %.sroa.7447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr %i.jj, ptr %.sroa.7447.0..sroa_idx.i, align 8, !noalias !32172
  %.sroa.8448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr %i.jm, ptr %.sroa.8448.0..sroa_idx.i, align 8, !noalias !32172
  %.sroa.9449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store <16 x i1> %i.jk, ptr %.sroa.9449.0..sroa_idx.i, align 8, !noalias !32172
  %.sroa.11451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store i64 %.sroa.3467.0.copyload.i, ptr %.sroa.11451.0..sroa_idx.i, align 8, !noalias !32172
  br i1 %.not132.i, label %bb.bp, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !32223
  %i.jn = call noundef dereferenceable_or_null(13) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 13, i64 noundef range(i64 1, 9) 1) #47, !noalias !32223 ; 4 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.bf, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit.i.i"

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54
          to label %.noexc185.i unwind label %bb.bn, !noalias !32224

.noexc185.i:                                      ; preds = %bb.bf
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit.i.i": ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.jn, ptr noundef nonnull align 1 dereferenceable(13) @272, i64 13, i1 false), !noalias !32225
  %i.jp = icmp ult i64 %.sroa.0.0.ph.i.ph, %.sroa.037.0.i
  br i1 %i.jp, label %.thread.invoke.i.i, label %bb.bg

bb.bg:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit.i.i"
  %i.jq = sub nuw i64 %.sroa.0.0.ph.i.ph, %.sroa.037.0.i ; 3 uses
  %.not.i.i182.i = icmp samesign ult i32 %.sroa.6.0469.ph.i.ph, %.sroa.5373.0.i
  br i1 %.not.i.i182.i, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %.thread.invoke.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.js = add i64 %i.jq, -1
  %i.jt = add nuw nsw i32 %.sroa.6.0469.ph.i.ph, 1000000000
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %.pn.i.i.i = phi i32 [ %i.jt, %bb.bi ], [ %.sroa.6.0469.ph.i.ph, %bb.bg ]
  %.sroa.02.0.i.i.i = phi i64 [ %i.js, %bb.bi ], [ %i.jq, %bb.bg ] ; 3 uses
  %.sroa.04.0.i.i.i = sub nuw nsw i32 %.pn.i.i.i, %.sroa.5373.0.i ; 3 uses
  %i.ju = icmp samesign ult i32 %.sroa.04.0.i.i.i, 1000000000
  br i1 %i.ju, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jv = icmp eq i64 %.sroa.02.0.i.i.i, -1
  br i1 %i.jv, label %.thread.invoke.i.i, label %bb.bl, !prof !138

bb.bl:                                            ; preds = %bb.bk
  %i.jw = add nuw i64 %.sroa.02.0.i.i.i, 1
  %i.jx = add nsw i32 %.sroa.04.0.i.i.i, -1000000000
  br label %bb.bo

.thread.invoke.i.i:                               ; preds = %bb.bk, %bb.bh, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit.i.i"
  %i.jy = phi ptr [ @484, %bb.bk ], [ @268, %bb.bh ], [ @268, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit.i.i" ]
  %i.jz = phi i64 [ 25, %bb.bk ], [ 35, %bb.bh ], [ 35, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit.i.i" ]
  %i.ka = phi ptr [ @485, %bb.bk ], [ @270, %bb.bh ], [ @270, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4e722af2283a9a09E.exit.i.i" ]
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.jy, i64 noundef %i.jz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ka) #54
          to label %.thread.cont.i.i unwind label %bb.bm, !noalias !32226

.thread.cont.i.i:                                 ; preds = %.thread.invoke.i.i
  unreachable

bb.bm:                                            ; preds = %.thread.invoke.i.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jn, i64 noundef 13, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !32227
  br label %.body186.i

bb.bn:                                            ; preds = %bb.bf
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body186.i

bb.bo:                                            ; preds = %bb.bl, %bb.bj
  %.sroa.0.0.i17.i.i = phi i64 [ %i.jw, %bb.bl ], [ %.sroa.02.0.i.i.i, %bb.bj ]
  %.sroa.4.0.i16.i.i = phi i32 [ %i.jx, %bb.bl ], [ %.sroa.04.0.i.i.i, %bb.bj ]
  %i.kd = mul i64 %.sroa.0.0.i17.i.i, 1000000000
  %i.ke = zext nneg i32 %.sroa.4.0.i16.i.i to i64
  %i.kf = add i64 %i.kd, %i.ke
  %i.kg = add i64 %.sroa.542.sroa.5.0.i, %.sroa.542.sroa.4.0.i
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bd
  %.sroa.5429.sroa.7.0.i = phi i64 [ %i.kg, %bb.bo ], [ undef, %bb.bd ]
  %.sroa.5429.sroa.6.0.i = phi i64 [ %i.kf, %bb.bo ], [ undef, %bb.bd ]
  %.sroa.5429.sroa.0.0.i = phi ptr [ %i.jn, %bb.bo ], [ undef, %bb.bd ]
  %.sroa.0427.0.i = phi i64 [ 13, %bb.bo ], [ -9223372036854775808, %bb.bd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !32228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i64 64, i1 false), !noalias !32172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !32172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !32229
  %.sroa.4432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 64 ; 4 uses
  store i64 %.sroa.0427.0.i, ptr %.sroa.4432.0..sroa_idx.i, align 8, !alias.scope !32230, !noalias !32231
  %.sroa.5433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 72 ; 3 uses
  store ptr %.sroa.5429.sroa.0.0.i, ptr %.sroa.5433.0..sroa_idx.i, align 8, !alias.scope !32230, !noalias !32231
  %.sroa.5433.sroa.4.0..sroa.5433.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  store i64 13, ptr %.sroa.5433.sroa.4.0..sroa.5433.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !32230, !noalias !32231
  %.sroa.5433.sroa.5.0..sroa.5433.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  store i64 1, ptr %.sroa.5433.sroa.5.0..sroa.5433.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !32230, !noalias !32231
  %.sroa.5433.sroa.6.0..sroa.5433.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  store i64 %.sroa.5429.sroa.6.0.i, ptr %.sroa.5433.sroa.6.0..sroa.5433.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !32230, !noalias !32231
  %.sroa.5433.sroa.7.0..sroa.5433.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  store i64 %.sroa.5429.sroa.7.0.i, ptr %.sroa.5433.sroa.7.0..sroa.5433.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !32230, !noalias !32231
  call void @llvm.experimental.noalias.scope.decl(metadata !32232)
  call void @llvm.experimental.noalias.scope.decl(metadata !32233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !32234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !32235
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49eebeec5314e6feE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bg, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bi)
          to label %bb.br unwind label %bb.bq, !noalias !32236

bb.bq:                                            ; preds = %bb.bp
  %i.kh = landingpad { ptr, i32 }
          cleanup
  %.pre.i.i.i.i.i = load i64, ptr %i.bi, align 8, !range !151, !alias.scope !32237, !noalias !32236
  br label %bb.cw

bb.br:                                            ; preds = %bb.bp
  %i.ki = load i64, ptr %i.bg, align 8, !range !159, !noalias !32235, !noundef !136 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ki, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !32235 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.kj = load i64, ptr %i.bi, align 8, !range !151, !alias.scope !32238, !noalias !32228, !noundef !136 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.kj, -9223372036854775807
  %i.kk = load i64, ptr %.sroa.4432.0..sroa_idx.i, align 8, !range !151, !alias.scope !32238, !noalias !32228, !noundef !136 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i", label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not7.i.i.i.i.i.i.i.i = icmp eq i64 %i.kk, -9223372036854775807
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %.val11.i.i.i.i.i.i.i.i = load i64, ptr %i.kl, align 8, !alias.scope !32238, !noalias !32228, !noundef !136 ; 2 uses
  br i1 %.not7.i.i.i.i.i.i.i.i, label %bb.cd, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.km = icmp ne i64 %i.kk, -9223372036854775808
  %i.kn = zext i1 %i.km to i64
  %i.ko = call i64 @llvm.uadd.sat.i64(i64 %.val11.i.i.i.i.i.i.i.i, i64 %i.kn)
  br label %bb.cd

bb.bv:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !32235
  call void @llvm.experimental.noalias.scope.decl(metadata !32239)
  call void @llvm.experimental.noalias.scope.decl(metadata !32240), !noalias !32241
  %i.kp = load i64, ptr %i.bi, align 8, !range !151, !alias.scope !32242, !noalias !32236, !noundef !136 ; 3 uses
  %i.kq = icmp eq i64 %i.kp, -9223372036854775807
  br i1 %i.kq, label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i16.i.i.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !32243), !noalias !32241
  call void @llvm.experimental.noalias.scope.decl(metadata !32244), !noalias !32241
  call void @llvm.experimental.noalias.scope.decl(metadata !32245), !noalias !32241
  call void @llvm.experimental.noalias.scope.decl(metadata !32246), !noalias !32241
  call void @llvm.experimental.noalias.scope.decl(metadata !32247), !noalias !32241
  call void @llvm.experimental.noalias.scope.decl(metadata !32248), !noalias !32241
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.ks = load i64, ptr %i.kr, align 8, !alias.scope !32249, !noalias !32236, !noundef !136 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 0
  br i1 %i.kt, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i14.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i2.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i2.i.i.i.i.i:            ; preds = %bb.bw
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %.promoted.i.i.i.i.i.i.i.i3.i.i.i.i.i = load i16, ptr %i.kv, align 8, !alias.scope !32250, !noalias !32236
  %.promoted7.i.i.i.i.i.i.i.i4.i.i.i.i.i = load ptr, ptr %i.ku, align 8, !alias.scope !32249, !noalias !32236
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %.promoted11.i.i.i.i.i.i.i.i5.i.i.i.i.i = load ptr, ptr %i.kw, align 8, !alias.scope !32249, !noalias !32236
  br label %bb.bx

bb.bx:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i9.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i.i2.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i6.i.i.i.i.i = phi ptr [ %.promoted11.i.i.i.i.i.i.i.i5.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i2.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i10.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i9.i.i.i.i.i" ] ; 2 uses
  %i.kx = phi i64 [ %i.ks, %.preheader.i.i.i.i.i.i.i.i2.i.i.i.i.i ], [ %i.lk, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i9.i.i.i.i.i" ]
  %.lcssa69.i.i.i.i.i.i.i.i7.i.i.i.i.i = phi ptr [ %.promoted7.i.i.i.i.i.i.i.i4.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i2.i.i.i.i.i ], [ %.lcssa68.i.i.i.i.i.i.i.i11.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i9.i.i.i.i.i" ] ; 2 uses
  %i.ky = phi i16 [ %.promoted.i.i.i.i.i.i.i.i3.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i2.i.i.i.i.i ], [ %i.lh, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i9.i.i.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32251), !noalias !32241
  %.not13.i.i.i.i.i.i.i.i.i8.i.i.i.i.i = icmp eq i16 %i.ky, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i8.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i20.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i9.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i20.i.i.i.i.i:             ; preds = %bb.bx, %.lr.ph.i.i.i.i.i.i.i.i.i20.i.i.i.i.i
  %i.kz = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i.i.i.i.i20.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i.i.i6.i.i.i.i.i, %bb.bx ] ; 2 uses
  %i.la = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i.i.i.i.i20.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i.i.i7.i.i.i.i.i, %bb.bx ]
  %.val11.i.i.i.i.i.i.i.i.i21.i.i.i.i.i = load <16 x i8>, ptr %i.kz, align 16, !noalias !32252
  %i.lb = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i21.i.i.i.i.i, splat (i8 -1)
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 -2304 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i22.i.i.i.i.i = bitcast <16 x i1> %i.lb to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i23.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i22.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i23.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i20.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i9.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i9.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i20.i.i.i.i.i, %bb.bx
  %.lcssa12.i.i.i.i.i.i.i.i10.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i6.i.i.i.i.i, %bb.bx ], [ %i.ld, %.lr.ph.i.i.i.i.i.i.i.i.i20.i.i.i.i.i ]
  %.lcssa68.i.i.i.i.i.i.i.i11.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i.i.i7.i.i.i.i.i, %bb.bx ], [ %i.lc, %.lr.ph.i.i.i.i.i.i.i.i.i20.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i12.i.i.i.i.i = phi i16 [ %i.ky, %bb.bx ], [ %.cast.i.i.i.i.i.i.i.i.i22.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i20.i.i.i.i.i ] ; 3 uses
  %i.le = add i16 %.lcssa.i.i.i.i.i.i.i.i.i12.i.i.i.i.i, -1
  %i.lf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i12.i.i.i.i.i, i1 true)
  %i.lg = zext nneg i16 %i.lf to i64
  %i.lh = and i16 %i.le, %.lcssa.i.i.i.i.i.i.i.i.i12.i.i.i.i.i
  %i.li = sub nsw i64 0, %i.lg
  %i.lj = getelementptr inbounds [144 x i8], ptr %.lcssa68.i.i.i.i.i.i.i.i11.i.i.i.i.i, i64 %i.li
  %i.lk = add i64 %i.kx, -1                       ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %i.lj, i64 -136
  call fastcc void @"_ZN4core3ptr139drop_in_place$LT$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$17h92b7505ea0c1291aE"(ptr noalias noundef readonly align 8 dereferenceable(136) %i.ll), !noalias !32253
  %.old5.i.i.i.i.i.i.i.i13.i.i.i.i.i = icmp eq i64 %i.lk, 0
  br i1 %.old5.i.i.i.i.i.i.i.i13.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i14.i.i.i.i.i", label %bb.bx

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i14.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i9.i.i.i.i.i", %bb.bw
  %.not.i.i.i.i.i.i.i15.i.i.i.i.i = icmp eq i64 %i.kp, 0
  br i1 %.not.i.i.i.i.i.i.i15.i.i.i.i.i, label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i16.i.i.i.i.i", label %bb.by

bb.by:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i14.i.i.i.i.i"
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !alias.scope !32254, !noalias !32236, !noundef !136 ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i16.i.i.i.i.i", label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !alias.scope !32254, !noalias !32236, !nonnull !136, !noundef !136
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lq, i64 noundef %i.ln, i64 noundef range(i64 1, -9223372036854775807) %i.kp) #47, !noalias !32255
  br label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i16.i.i.i.i.i"

"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i16.i.i.i.i.i": ; preds = %bb.bz, %bb.by, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i14.i.i.i.i.i", %bb.bv
  %.val.i17.i.i.i.i.i = load i64, ptr %.sroa.4432.0..sroa_idx.i, align 8, !range !151, !alias.scope !32239, !noalias !32236, !noundef !136 ; 2 uses
  %switch.i18.i.i.i.i.i = icmp sgt i64 %.val.i17.i.i.i.i.i, 0
  br i1 %switch.i18.i.i.i.i.i, label %bb.ca, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h876e8248a6eb19beE.exit.i.i.thread.i.i"

bb.ca:                                            ; preds = %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i16.i.i.i.i.i"
  %.val1.i19.i.i.i.i.i = load ptr, ptr %.sroa.5433.0..sroa_idx.i, align 8, !alias.scope !32239, !noalias !32236, !nonnull !136, !noundef !136
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i19.i.i.i.i.i, i64 noundef %.val.i17.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !32256
  br label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h876e8248a6eb19beE.exit.i.i.thread.i.i"

bb.cb:                                            ; preds = %bb.ce
  %i.lr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ls = icmp eq i64 %i.ki, 0
  br i1 %i.ls, label %bb.cw, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i, i64 noundef %i.ki, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !32257
  br label %bb.cw

bb.cd:                                            ; preds = %bb.bu, %bb.bt
  %.sink19.i.i.i.i.i.i.i.i = phi i64 [ %i.ko, %bb.bu ], [ %.val11.i.i.i.i.i.i.i.i, %bb.bt ] ; 2 uses
  %i.lt = call i64 @llvm.uadd.sat.i64(i64 %.sink19.i.i.i.i.i.i.i.i, i64 1)
  %.sroa.0.0.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.lt, i64 4) ; 2 uses
  %i.lu = mul i64 %.sroa.0.0.i.i.i.i.i.i.i.i, 48  ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sink19.i.i.i.i.i.i.i.i, 192153584101141161
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.ce, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, !prof !171

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.cd
  %3 = icmp ne i64 %i.lu, 0
  call void @llvm.assume(i1 %3)
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i, %bb.bs
  %.sroa.0.0.i4042.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i ], [ 4, %bb.bs ]
  %4 = phi i64 [ %i.lu, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i ], [ 192, %bb.bs ] ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !32258
  %i.lv = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, 9) 8) #47, !noalias !32258 ; 6 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i", %bb.cd
  %5 = phi i64 [ %4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i" ], [ %i.lu, %bb.cd ]
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.cd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @483) #54
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.cb, !noalias !32235

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !32235
  store i64 %i.ki, ptr %i.lv, align 8, !noalias !32235
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !32235
  store i64 %.sroa.0.0.i4042.i.i.i.i.i.i.i, ptr %i.bh, align 8, !noalias !32235
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %i.lv, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !32235
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !32235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !32235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 112, i1 false), !noalias !32236
  call void @llvm.experimental.noalias.scope.decl(metadata !32259)
  call void @llvm.experimental.noalias.scope.decl(metadata !32260)
  call void @llvm.experimental.noalias.scope.decl(metadata !32261)
  call void @llvm.experimental.noalias.scope.decl(metadata !32262)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !32263
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.lx = getelementptr inbounds nuw i8, ptr %i.bf, i64 64 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bf, i64 56 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he868ec20370de63fE.exit.i.i.i.i.i.i.i.i.i", %bb.cf
  %i.lz = phi ptr [ %i.mn, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he868ec20370de63fE.exit.i.i.i.i.i.i.i.i.i" ], [ %i.lv, %bb.cf ]
  %i.ma = phi i64 [ %i.mp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he868ec20370de63fE.exit.i.i.i.i.i.i.i.i.i" ], [ 1, %bb.cf ] ; 5 uses
  invoke fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49eebeec5314e6feE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.be, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bf)
          to label %bb.ci unwind label %bb.ch, !noalias !32264

"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.cq, %bb.cp, %bb.ch
  %.pn.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.mb, %bb.ch ], [ %i.mq, %bb.cp ], [ %i.mq, %bb.cq ]
  call fastcc void @"_ZN4core3ptr562drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..option..IntoIter$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$$GT$$GT$17h3cf570050dc7571dE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bf) #55, !noalias !32264
  call fastcc void @"_ZN4core3ptr123drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$$GT$17hbed678d9a9e8a46bE"(ptr noalias noundef align 8 dereferenceable(24) %i.bh) #55, !noalias !32235
  br label %.body192.i

bb.ch:                                            ; preds = %bb.cg
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit.i.i.i.i.i.i.i.i.i"

bb.ci:                                            ; preds = %bb.cg
  %i.mc = load i64, ptr %i.be, align 8, !range !159, !noalias !32265, !noundef !136 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mc, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h74108caa1ac1d2f1E.exit.i.i.i.i.i.i.i", label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !32265 ; 3 uses
  %i.md = icmp samesign ult i64 %i.ma, 192153584101141163
  call void @llvm.assume(i1 %i.md)
  %i.me = load i64, ptr %i.bh, align 8, !range !142, !alias.scope !32266, !noalias !32235, !noundef !136
  %i.mf = icmp eq i64 %i.ma, %i.me
  br i1 %i.mf, label %bb.ck, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he868ec20370de63fE.exit.i.i.i.i.i.i.i.i.i"

bb.ck:                                            ; preds = %bb.cj
  %i.mg = load i64, ptr %i.bf, align 8, !range !151, !alias.scope !32267, !noalias !32235, !noundef !136
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mg, -9223372036854775807
  %i.mh = load i64, ptr %i.lx, align 8, !range !151, !alias.scope !32267, !noalias !32235, !noundef !136 ; 3 uses
  %.not7.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mh, -9223372036854775807 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.val11.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ly, align 8, !alias.scope !32267, !noalias !32235, !noundef !136 ; 2 uses
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e58ea5a71ce6ec5E.exit.i.i.i.i.i.i.i.i.i", label %bb.co

bb.cm:                                            ; preds = %bb.ck
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e58ea5a71ce6ec5E.exit.i.i.i.i.i.i.i.i.i", label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mi = icmp ne i64 %i.mh, -9223372036854775808
  %i.mj = zext i1 %i.mi to i64
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e58ea5a71ce6ec5E.exit.i.i.i.i.i.i.i.i.i"

bb.co:                                            ; preds = %bb.cl
  %i.mk = icmp ne i64 %i.mh, -9223372036854775808
  %i.ml = zext i1 %i.mk to i64
  %i.mm = call i64 @llvm.uadd.sat.i64(i64 %.val11.i.i.i.i.i.i.i.i.i.i, i64 %i.ml)
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e58ea5a71ce6ec5E.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he868ec20370de63fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e58ea5a71ce6ec5E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he868ec20370de63fE.exit.i.i_crit_edge.i.i.i.i.i.i.i", %bb.cj
  %i.mn = phi ptr [ %.pre.i.i.i.i.i.i.i, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e58ea5a71ce6ec5E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he868ec20370de63fE.exit.i.i_crit_edge.i.i.i.i.i.i.i" ], [ %i.lz, %bb.cj ] ; 2 uses
  %i.mo = getelementptr inbounds nuw [48 x i8], ptr %i.mn, i64 %i.ma ; 3 uses
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !32265
  store i64 %i.mc, ptr %i.mo, align 8, !noalias !32265
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !32265
  %i.mp = add nuw nsw i64 %i.ma, 1                ; 2 uses
  store i64 %i.mp, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !32266, !noalias !32235
  br label %bb.cg

bb.cp:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e58ea5a71ce6ec5E.exit.i.i.i.i.i.i.i.i.i"
  %i.mq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mr = icmp eq i64 %i.mc, 0
  br i1 %i.mr, label %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit.i.i.i.i.i.i.i.i.i", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %i.mc, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !32268
  br label %"_ZN4core3ptr100drop_in_place$LT$$LP$alloc..string..String$C$tracing_trace..processor..span_stats..CallStats$RP$$GT$17hf3a510b58b3128cdE.exit.i.i.i.i.i.i.i.i.i"

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e58ea5a71ce6ec5E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl
  %.sink19.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mm, %bb.co ], [ %i.mj, %bb.cn ], [ %.val11.i.i.i.i.i.i.i.i.i.i, %bb.cl ], [ 0, %bb.cm ]
  %i.ms = call i64 @llvm.uadd.sat.i64(i64 %.sink19.i.i.i.i.i.i.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %i.ma, i64 noundef range(i64 1, 0) %i.ms, i64 noundef 8, i64 noundef 48)
          to label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e58ea5a71ce6ec5E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he868ec20370de63fE.exit.i.i_crit_edge.i.i.i.i.i.i.i" unwind label %bb.cp, !noalias !32269

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e58ea5a71ce6ec5E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he868ec20370de63fE.exit.i.i_crit_edge.i.i.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h5e58ea5a71ce6ec5E.exit.i.i.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !32266, !noalias !32235
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he868ec20370de63fE.exit.i.i.i.i.i.i.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h74108caa1ac1d2f1E.exit.i.i.i.i.i.i.i": ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !32270)
  call void @llvm.experimental.noalias.scope.decl(metadata !32271), !noalias !32266
  %i.mt = load i64, ptr %i.bf, align 8, !range !151, !alias.scope !32272, !noalias !32264, !noundef !136 ; 3 uses
  %i.mu = icmp eq i64 %i.mt, -9223372036854775807
  br i1 %i.mu, label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i.i.i", label %bb.cr

bb.cr:                                            ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h74108caa1ac1d2f1E.exit.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !32273), !noalias !32266
  call void @llvm.experimental.noalias.scope.decl(metadata !32274), !noalias !32266
  call void @llvm.experimental.noalias.scope.decl(metadata !32275), !noalias !32266
  call void @llvm.experimental.noalias.scope.decl(metadata !32276), !noalias !32266
  call void @llvm.experimental.noalias.scope.decl(metadata !32277), !noalias !32266
  call void @llvm.experimental.noalias.scope.decl(metadata !32278), !noalias !32266
  %i.mv = load i64, ptr %i.ly, align 8, !alias.scope !32279, !noalias !32264, !noundef !136 ; 2 uses
  %i.mw = icmp eq i64 %i.mv, 0
  br i1 %i.mw, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.cr
  %i.mx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.my = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.my, align 8, !alias.scope !32280, !noalias !32264
  %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mx, align 8, !alias.scope !32279, !noalias !32264
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.mz, align 8, !alias.scope !32279, !noalias !32264
  br label %bb.cs

bb.cs:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.na = phi i64 [ %i.mv, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nn, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.promoted7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.nb = phi i16 [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nk, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32281), !noalias !32266
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.nb, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.cs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nc = phi ptr [ %i.ng, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cs ] ; 2 uses
  %i.nd = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cs ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.nc, align 16, !noalias !32282
  %i.ne = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 -2304 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ne to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cs
  %.lcssa12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cs ], [ %i.ng, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cs ], [ %i.nf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.nb, %bb.cs ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.nh = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ni = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.nj = zext nneg i16 %i.ni to i64
  %i.nk = and i16 %i.nh, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nl = sub nsw i64 0, %i.nj
  %i.nm = getelementptr inbounds [144 x i8], ptr %.lcssa68.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.nl
  %i.nn = add i64 %i.na, -1                       ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %i.nm, i64 -136
  call fastcc void @"_ZN4core3ptr139drop_in_place$LT$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$17h92b7505ea0c1291aE"(ptr noalias noundef readonly align 8 dereferenceable(136) %i.no), !noalias !32283
  %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nn, 0
  br i1 %.old5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.cs

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h772babd450cf6e63E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.cr
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i.i.i", label %bb.ct

bb.ct:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.np = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !alias.scope !32284, !noalias !32264, !noundef !136 ; 2 uses
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i.i.i", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !alias.scope !32284, !noalias !32264, !nonnull !136, !noundef !136
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nt, i64 noundef %i.nq, i64 noundef range(i64 1, -9223372036854775807) %i.mt) #47, !noalias !32285
  br label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.cu, %bb.ct, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h74108caa1ac1d2f1E.exit.i.i.i.i.i.i.i"
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.lx, align 8, !range !151, !alias.scope !32270, !noalias !32264, !noundef !136 ; 2 uses
  %switch.i.i.i.i.i.i.i.i = icmp sgt i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.cv, label %_ZN4core4iter6traits8iterator8Iterator7collect17hc5105c49a2f2547cE.exit.i.i.i

bb.cv:                                            ; preds = %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i.i.i"
  %i.nu = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.nu, align 8, !alias.scope !32270, !noalias !32264, !nonnull !136, !noundef !136
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !32286
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hc5105c49a2f2547cE.exit.i.i.i

bb.cw:                                            ; preds = %bb.cc, %bb.cb, %bb.bq
  %i.nv = phi i64 [ %.pre.i.i.i.i.i, %bb.bq ], [ %i.kj, %bb.cb ], [ %i.kj, %bb.cc ] ; 3 uses
  %.pn.ph.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.kh, %bb.bq ], [ %i.lr, %bb.cb ], [ %i.lr, %bb.cc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32287)
  call void @llvm.experimental.noalias.scope.decl(metadata !32288), !noalias !32241
  %i.nw = icmp eq i64 %i.nv, -9223372036854775807
  br i1 %i.nw, label %"_ZN4core3ptr436drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$std..collections..hash..map..IntoIter$LT$tracing_trace..entry..ResourceId$C$$LP$tracing_trace..entry..NewCallsite$C$alloc..vec..Vec$LT$$LP$core..time..Duration$C$core..time..Duration$RP$$GT$$RP$$GT$$C$tracing_trace..processor..span_stats..to_call_stats$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h98b101e134686294E.exit.i.i.i.i.i.i", label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !32289), !noalias !32241
  call void @llvm.experimental.noalias.scope.decl(metadata !32290), !noalias !32241
  call void @llvm.experimental.noalias.scope.decl(metadata !32291), !noalias !32241
  call void @llvm.experimental.noalias.scope.decl(metadata !32292), !noalias !32241
  call void @llvm.experimental.noalias.scope.decl(metadata !32293), !noalias !32241
  call void @llvm.experimental.noalias.scope.decl(metadata !32294), !noalias !32241
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.ny = load i64, ptr %i.nx, align 8, !alias.scope !32295, !noalias !32236, !noundef !136 ; 2 uses
  %i.nz = icmp eq i64 %i.ny, 0
  br i1 %i.nz, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h3f87f98b561a7f7cE.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.cx
  %i.oa = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.ob, align 8, !alias.scope !32296, !noalias !32236
end_hunk_1
