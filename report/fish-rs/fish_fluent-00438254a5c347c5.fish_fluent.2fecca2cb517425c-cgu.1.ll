Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_fluent-00438254a5c347c5.fish_fluent.2fecca2cb517425c-cgu.1?download=true
inline.NumInlined: 218
inline.NumDeleted: 123
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEB1H_:bb.a

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCslSwhfOFuxKz_17fish_localization8LanguageECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
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
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !168
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !168
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !168
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !168
  %.val.i = load ptr, ptr %1, align 8, !noalias !171, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.h, align 8, !noalias !171, !noundef !4
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !174
  store i8 -1, ptr %i.a, align 1, !noalias !174
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #30, !noalias !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !174
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !184
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !184
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !184 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !184
  %i.i = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !184, !noundef !4
  %i.j = shl i64 %i.i, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !184, !noundef !4
  %i.m = or i64 %i.j, %i.l                        ; 2 uses
  %i.n = xor i64 %i.m, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.o = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.p = add i64 %i.n, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.r = xor i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = add i64 %i.p, %i.r                       ; 3 uses
  %i.w = add i64 %i.t, %i.u                       ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 17)
  %i.y = xor i64 %i.v, %i.x                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 21)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = xor i64 %i.w, %i.m
  %i.ad = xor i64 %i.ab, 255
  %i.ae = add i64 %i.ac, %i.y                     ; 3 uses
  %i.af = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 13)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 17)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 2 uses
  %i.bm = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = xor i64 %i.bo, %i.bn
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = xor i64 %i.br, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bs
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRTNtCs5k3XKAkK59u_16intl_pluralrules14PluralRuleTypeEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !189
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !189
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !189
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !189
  %.val.i = load i8, ptr %1, align 1, !range !58, !noalias !192, !noundef !4
  %i.h = zext nneg i8 %.val.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !195
  store i64 %i.h, ptr %i.a, align 8, !noalias !195
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !204
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !204
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !204 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !204
  %i.i = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !204, !noundef !4
  %i.j = shl i64 %i.i, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !204, !noundef !4
  %i.m = or i64 %i.j, %i.l                        ; 2 uses
  %i.n = xor i64 %i.m, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.o = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.p = add i64 %i.n, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.r = xor i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = add i64 %i.p, %i.r                       ; 3 uses
  %i.w = add i64 %i.t, %i.u                       ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 17)
  %i.y = xor i64 %i.v, %i.x                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 21)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = xor i64 %i.w, %i.m
  %i.ad = xor i64 %i.ab, 255
  %i.ae = add i64 %i.ac, %i.y                     ; 3 uses
  %i.af = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 13)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 17)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 2 uses
  %i.bm = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = xor i64 %i.bo, %i.bn
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = xor i64 %i.br, %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bs
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs3zOvCg6Ax1K_13fluent_bundle10concurrentINtNtB4_6bundle12FluentBundleNtNtB4_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE14new_concurrentCs476pBYQK2Ku_11fish_fluent(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [3 x i8], align 1             ; 4 uses
  %.sroa.526 = alloca [3 x i8], align 1           ; 4 uses
  %.sroa.446 = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.0.sroa.3 = alloca [7 x i8], align 1      ; 2 uses
  %.sroa.5.sroa.3 = alloca [3 x i8], align 1      ; 2 uses
  %.sroa.6.sroa.3 = alloca [3 x i8], align 1      ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.446)
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 8
  %.sroa.446.0..sroa.011.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.446, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.446.0..sroa.011.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.526)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !100, !noundef !4 ; 2 uses
  %.not63 = icmp eq i8 %i.f, -1
  br i1 %.not63, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %2
  %.sroa.6.sroa.0.0 = phi i8 [ %i.m, %2 ], [ -1, %bb.a ]
  %.sroa.0.sroa.0.0 = phi i8 [ %.sroa.0.0.copyload, %2 ], [ -1, %bb.a ]
  %.sroa.5.sroa.0.0 = phi i8 [ %i.f, %2 ], [ -1, %bb.a ]
  %.sroa.4.0 = phi i64 [ %.sroa.532.0, %2 ], [ undef, %bb.a ]
  %.sroa.3.0 = phi ptr [ %.sroa.031.0, %2 ], [ null, %bb.a ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.g, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.518.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @16, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.0.sroa.0.0, ptr %i.i, align 8
  %.sroa.015.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.015.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.3, i64 7, i1 false)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.3.0, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.4.0, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.5.sroa.0.0, ptr %.sroa.622.0..sroa_idx, align 8
  %.sroa.618.sroa.4.0..sroa.618.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.618.sroa.4.0..sroa.618.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.sroa.3, i64 3, i1 false)
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %.sroa.6.sroa.0.0, ptr %.sroa.723.0..sroa_idx, align 4
  %.sroa.719.sroa.4.0..sroa.719.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.719.sroa.4.0..sroa.719.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.sroa.3, i64 3, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 0, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.sroa.5.sroa.4.0..sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %.sroa.8.sroa.5.sroa.4.0..sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %.sroa.436.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.526, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.436.0..sroa_idx.a, i64 3, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.m = load i8, ptr %i.l, align 4, !range !100, !noundef !4 ; 2 uses
  %.not64 = icmp eq i8 %i.m, -1
  br i1 %.not64, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.438.0..sroa_idx, i64 3, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noundef !4
  %.not65 = icmp eq ptr %i.o, null
  br i1 %.not65, label %2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = invoke { ptr, i64 } @_RNvXse_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtNtCsl7C8v4LflD_16unic_langid_impl7subtags7variant7VariantENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.j unwind label %bb.i       ; 2 uses

2:                                                ; preds = %bb.g, %bb.j
  %.sroa.031.0 = phi ptr [ %i.r, %bb.j ], [ null, %bb.g ]
  %.sroa.532.0 = phi i64 [ %i.s, %bb.j ], [ undef, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.446, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.sroa.3, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.526, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.sroa.3, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.526)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.446)
  br label %bb.c

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsl7C8v4LflD_16unic_langid_impl18LanguageIdentifierEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #26
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = extractvalue { ptr, i64 } %i.p, 0
  %i.s = extractvalue { ptr, i64 } %i.p, 1
  br label %2

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.l:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs3zOvCg6Ax1K_13fluent_bundle6bundleINtB2_12FluentBundleNtNtB4_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE12add_resourceCs476pBYQK2Ku_11fish_fluent(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(176) %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 12 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = icmp ult i64 %i.o, 1152921504606846976
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.t, 96
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not67 = icmp eq i64 %i.t, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.b

.body:                                            ; preds = %.body35, %bb.d, %.body35.thread, %bb.n
  %.not63 = phi i1 [ false, %bb.n ], [ false, %.body35.thread ], [ false, %.body35 ], [ true, %bb.d ]
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %eh.lpad-body3650, %.body35.thread ], [ %lpad.thr_comm.split-lp, %.body35 ], [ %i.aj, %bb.d ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #26
          to label %bb.l unwind label %bb.ah

bb.b:                                             ; preds = %.backedge, %.lr.ph
  %.sroa.0.069 = phi ptr [ %i.r, %.lr.ph ], [ %i.ad, %.backedge ] ; 4 uses
  %.sroa.7.068 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %.backedge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.069, i64 96 ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.7.068, 1
  %i.af = load i64, ptr %.sroa.0.069, align 8, !range !209, !noundef !4 ; 3 uses
  %switch = icmp samesign ult i64 %i.af, 2
  br i1 %switch, label %bb.m, label %.backedge

._crit_edge.loopexit:                             ; preds = %.backedge
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !210
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ag = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.o, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !210
  %i.ah = load i64, ptr %i.m, align 8, !range !64, !alias.scope !210, !noundef !4
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.f

bb.c:                                             ; preds = %._crit_edge
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3zOvCg6Ax1K_13fluent_bundle8resource14FluentResourceE8grow_oneCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtCs3zOvCg6Ax1K_13fluent_bundle8resourceNtB5_19InnerFluentResourceNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.f:                                             ; preds = %bb.c, %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !210, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ag
  store ptr %2, ptr %i.an, align 8
  %i.ao = add i64 %i.ag, 1
  store i64 %i.ao, ptr %i.n, align 8, !alias.scope !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 128102389400760776
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorEECs476pBYQK2Ku_11fish_fluent.exit

bb.h:                                             ; preds = %bb.f
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread45 unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorEECs476pBYQK2Ku_11fish_fluent.exit

bb.k:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs3zOvCg6Ax1K_13fluent_bundle6errors11FluentErrorEECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.l:                                             ; preds = %.body
  br i1 %.not63, label %.thread45, label %bb.ai

bb.m:                                             ; preds = %bb.b
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0.069, i64 80
  %.sroa.04.0 = load ptr, ptr %.sroa.04.0.in, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.35.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0.069, i64 88
  %.sroa.35.0 = load i64, ptr %.sroa.35.0.in, align 8, !noundef !4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.af, ptr %i.h, align 8
  store i64 %i.o, ptr %.sroa.37.0..sroa_idx, align 8
  store i64 %.sroa.7.068, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.sroa.35.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.o unwind label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5entry5EntryECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #26
          to label %.body unwind label %bb.ah

bb.o:                                             ; preds = %bb.m
  %i.au = load i64, ptr %i.e, align 8, !range !97, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = load i64, ptr %i.v, align 8, !range !213, !noundef !4 ; 3 uses
  br i1 %i.av, label %bb.p, label %bb.q, !prof !38

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %i.w, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ax) #29
          to label %bb.af unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.ay = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = icmp ule i64 %.sroa.35.0, %i.aw
  call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not28 = icmp eq i64 %.sroa.35.0, 0            ; 2 uses
end_hunk_0
