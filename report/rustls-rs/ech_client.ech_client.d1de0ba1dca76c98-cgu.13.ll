Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.13?download=true
inline.NumInlined: 1021
inline.NumDeleted: 561
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyEECsi17nFaBu4HY_10ech_client:bb.a

bb.q:                                             ; preds = %bb.o
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %i.ef, align 2, !alias.scope !963, !noalias !964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !966
  store i32 %.sroa.01.0.copyload.i.i.i.i, ptr %i.c, align 4, !noalias !966
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4) #33, !noalias !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !966
  br label %_RINvXsY_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3optNtB6_12ClientSubnetNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i

_RINvXsY_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3optNtB6_12ClientSubnetNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i: ; preds = %bb.q, %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i, i64 62
  %i.eh = load i8, ptr %i.eg, align 2, !alias.scope !963, !noalias !964, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !967
  store i8 %i.eh, ptr %i.b, align 1, !noalias !967
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #33, !noalias !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !967
  %i.ei = getelementptr inbounds nuw i8, ptr %.val.i, i64 63
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !963, !noalias !964, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !968
  store i8 %i.ej, ptr %i.a, align 1, !noalias !968
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #33, !noalias !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !968
  br label %_RINvXs3_NtNtCsj6eKBz9Db1c_4core4hash5implsRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB8_4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit

_RINvXs3_NtNtCsj6eKBz9Db1c_4core4hash5implsRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB8_4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvYNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash10hash_sliceNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i, %_RINvXsY_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3optNtB6_12ClientSubnetNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECsi17nFaBu4HY_10ech_client.exit.i.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.t, align 16, !alias.scope !969
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !969
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !969 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !969
  %i.ek = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !969, !noundef !6
  %i.el = shl i64 %i.ek, 56
  %i.em = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !969, !noundef !6
  %i.eo = or i64 %i.el, %i.en                     ; 2 uses
  %i.ep = xor i64 %i.eo, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.eq = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.er = add i64 %i.ep, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.es = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.et = xor i64 %i.es, %i.eq                    ; 3 uses
  %i.eu = call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 16)
  %i.ev = xor i64 %i.eu, %i.er                    ; 3 uses
  %i.ew = call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 32)
  %i.ex = add i64 %i.er, %i.et                    ; 3 uses
  %i.ey = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ez = call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 17)
  %i.fa = xor i64 %i.ex, %i.ez                    ; 3 uses
  %i.fb = call noundef i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 21)
  %i.fc = xor i64 %i.fb, %i.ey                    ; 3 uses
  %i.fd = call noundef i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 32)
  %i.fe = xor i64 %i.ey, %i.eo
  %i.ff = xor i64 %i.fd, 255
  %i.fg = add i64 %i.fe, %i.fa                    ; 3 uses
  %i.fh = add i64 %i.fc, %i.ff                    ; 2 uses
  %i.fi = call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 13)
  %i.fj = xor i64 %i.fg, %i.fi                    ; 3 uses
  %i.fk = call noundef i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 16)
  %i.fl = xor i64 %i.fk, %i.fh                    ; 3 uses
  %i.fm = call noundef i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 32)
  %i.fn = add i64 %i.fj, %i.fh                    ; 3 uses
  %i.fo = add i64 %i.fl, %i.fm                    ; 2 uses
  %i.fp = call noundef i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 17)
  %i.fq = xor i64 %i.fn, %i.fp                    ; 3 uses
  %i.fr = call noundef i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 21)
  %i.fs = xor i64 %i.fr, %i.fo                    ; 3 uses
  %i.ft = call noundef i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 32)
  %i.fu = add i64 %i.fq, %i.fo                    ; 3 uses
  %i.fv = add i64 %i.fs, %i.ft                    ; 2 uses
  %i.fw = call noundef i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 13)
  %i.fx = xor i64 %i.fw, %i.fu                    ; 3 uses
  %i.fy = call noundef i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 16)
  %i.fz = xor i64 %i.fy, %i.fv                    ; 3 uses
  %i.ga = call noundef i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 32)
  %i.gb = add i64 %i.fx, %i.fv                    ; 3 uses
  %i.gc = add i64 %i.fz, %i.ga                    ; 2 uses
  %i.gd = call noundef i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fx, i64 17)
  %i.ge = xor i64 %i.gd, %i.gb                    ; 3 uses
  %i.gf = call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 21)
  %i.gg = xor i64 %i.gf, %i.gc                    ; 3 uses
  %i.gh = call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 32)
  %i.gi = add i64 %i.ge, %i.gc
  %i.gj = add i64 %i.gg, %i.gh                    ; 2 uses
  %i.gk = call noundef i64 @llvm.fshl.i64(i64 %i.ge, i64 %i.ge, i64 13)
  %i.gl = xor i64 %i.gk, %i.gi                    ; 3 uses
  %i.gm = call noundef i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 16)
  %i.gn = xor i64 %i.gm, %i.gj                    ; 2 uses
  %i.go = add i64 %i.gl, %i.gj                    ; 3 uses
  %i.gp = call noundef i64 @llvm.fshl.i64(i64 %i.gl, i64 %i.gl, i64 17)
  %i.gq = call noundef i64 @llvm.fshl.i64(i64 %i.gn, i64 %i.gn, i64 21)
  %i.gr = call noundef i64 @llvm.fshl.i64(i64 %i.go, i64 %i.go, i64 32)
  %i.gs = xor i64 %i.gq, %i.gp
  %i.gt = xor i64 %i.gs, %i.gr
  %i.gu = xor i64 %i.gt, %i.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret i64 %i.gu
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRtECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !982
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !982
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !982
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !982
  %.val.i = load i16, ptr %1, align 2, !noalias !983, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !984
  store i16 %.val.i, ptr %i.a, align 2, !noalias !984
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !984
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !985
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !985
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !985 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !985
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !985, !noundef !6
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !985, !noundef !6
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

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.l, !prof !22

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 9 uses
  %i.a = sub nuw i64 %2, %1                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 9 uses
  %i.c = load i32, ptr %i.b, align 4, !noalias !1006, !noundef !6 ; 4 uses
  %i.d = icmp ult i32 %i.c, 63
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !1007, !noalias !1008, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.i = load i64, ptr %i.h, align 4, !alias.scope !1009, !noalias !1010
  %i.j = icmp ugt i64 %i.i, 1023
  br i1 %i.j, label %bb.d, label %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs_NtNtCsbZqQukzfxgd_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g) #30, !noalias !1010
  br label %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i

_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_RNvXs_NtCscg2Fb9rc1fS_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsa9hcECrMlfW_9rand_core5block9Generator8generateCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.b), !noalias !1008
  %i.k = load i32, ptr %i.b, align 4, !alias.scope !1007, !noalias !1008, !noundef !6 ; 2 uses
  %.not.i.i.i.i10.i.i.i = icmp eq i32 %i.c, 63
  br i1 %.not.i.i.i.i10.i.i.i, label %_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit14.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !1007, !noalias !1008, !noundef !6
  br label %_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit14.i.i.i

bb.f:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.c to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !1007, !noalias !1008, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !1007, !noalias !1008, !noundef !6
  %i.s = add nuw nsw i32 %i.c, 2
  br label %_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit14.i.i.i

_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit14.i.i.i: ; preds = %bb.f, %bb.e, %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i
  %.sroa.0.018.i.i.i.i11.i.i.i = phi i32 [ %i.s, %bb.f ], [ 1, %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ 2, %bb.e ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.f, %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ %i.k, %bb.e ]
  %.sroa.03.016.i.i.i.i13.i.i.i = phi i32 [ %i.r, %bb.f ], [ %i.k, %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ %i.m, %bb.e ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i, ptr %i.b, align 4, !alias.scope !1007, !noalias !1008
  %i.t = zext i32 %.sroa.03.016.i.i.i.i13.i.i.i to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = zext i32 %.sroa.02.017.i.i.i.i12.i.i.i to i64
  %i.w = or disjoint i64 %i.u, %i.v
  %i.x = zext i64 %i.w to i128
  %i.y = zext i64 %i.a to i128
  %i.z = mul nuw i128 %i.x, %i.y                  ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = trunc nuw i128 %i.aa to i64             ; 2 uses
  %i.ac = trunc i128 %i.z to i64                  ; 2 uses
  %i.ad = sub i64 %1, %2
  %i.ae = icmp ult i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.g, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtCsbZqQukzfxgd_4rand5distr7uniform5ErrorE6unwrapCsi17nFaBu4HY_10ech_client.exit

bb.g:                                             ; preds = %_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit14.i.i.i
  %i.af = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i, 63
  br i1 %i.af, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !1011, !noalias !1012, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.ak = load i64, ptr %i.aj, align 4, !alias.scope !1013, !noalias !1014
  %i.al = icmp ugt i64 %i.ak, 1023
  br i1 %i.al, label %bb.i, label %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i, !prof !19

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCsbZqQukzfxgd_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ai) #30, !noalias !1014
  br label %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i

_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i: ; preds = %bb.i, %bb.h
  tail call void @_RNvXs_NtCscg2Fb9rc1fS_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsa9hcECrMlfW_9rand_core5block9Generator8generateCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ai, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.b), !noalias !1012
  %i.am = load i32, ptr %i.b, align 4, !alias.scope !1011, !noalias !1012, !noundef !6 ; 2 uses
  %.not.i.i.i.i16.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i, label %_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit20.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !1011, !noalias !1012, !noundef !6
  br label %_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit20.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.ap = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !1011, !noalias !1012, !noundef !6
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !1011, !noalias !1012, !noundef !6
  %i.au = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i, 2
  br label %_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit20.i.i.i

_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit20.i.i.i: ; preds = %bb.k, %bb.j, %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i
  %.sroa.0.018.i.i.i.i17.i.i.i = phi i32 [ %i.au, %bb.k ], [ 1, %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ 2, %bb.j ]
  %.sroa.02.017.i.i.i.i18.i.i.i = phi i32 [ %i.ar, %bb.k ], [ %i.ah, %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ %i.am, %bb.j ]
  %.sroa.03.016.i.i.i.i19.i.i.i = phi i32 [ %i.at, %bb.k ], [ %i.am, %_RNvXNtNtCsbZqQukzfxgd_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsa9hcECrMlfW_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ %i.ao, %bb.j ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i, ptr %i.b, align 4, !alias.scope !1011, !noalias !1012
  %i.av = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i to i64
  %i.aw = shl nuw i64 %i.av, 32
  %i.ax = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i to i64
  %i.ay = or disjoint i64 %i.aw, %i.ax
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.ay, i64 %i.a)
  %i.az = xor i64 %i.ac, -1
  %.not6.i.i.i = icmp ugt i64 %4, %i.az
  %i.ba = zext i1 %.not6.i.i.i to i64
  %i.bb = add nuw i64 %i.ba, %i.ab
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtCsbZqQukzfxgd_4rand5distr7uniform5ErrorE6unwrapCsi17nFaBu4HY_10ech_client.exit

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultyNtNtNtCsbZqQukzfxgd_4rand5distr7uniform5ErrorE6unwrapCsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit20.i.i.i, %_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit14.i.i.i
  %.sroa.01.0.i.i.i = phi i64 [ %i.bb, %_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit20.i.i.i ], [ %i.ab, %_RINvYNtNtNtCsbZqQukzfxgd_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsi17nFaBu4HY_10ech_client.exit14.i.i.i ]
  %i.bc = add i64 %.sroa.01.0.i.i.i, %1
  ret i64 %i.bc

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i32 0, 256) i32 @_RNCINvNtCsaKJjC64KgbL_3std2rt10lang_startINtNtCsj6eKBz9Db1c_4core6result6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtBI_5error5ErrorEL_EEE0Csi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = tail call { ptr, ptr } @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEINtNtCsj6eKBz9Db1c_4core6result6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB1e_5error5ErrorEL_EEB19_ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull %i.a) #30 ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = tail call noundef i8 @_RNvXsY_NtCsaKJjC64KgbL_3std7processINtNtCsj6eKBz9Db1c_4core6result6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtBC_5error5ErrorEL_EENtB5_11Termination6reportCsi17nFaBu4HY_10ech_client(ptr noundef %i.c, ptr %i.d)
  %i.f = zext i8 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs3_NtNtCs5MfxasYgTEl_11hickory_net3udp10udp_streamINtB7_19NextRandomUdpSocketNtNtNtBb_7runtime13tokio_runtime20TokioRuntimeProviderENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll0Csi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !10, !noundef !6
  switch i8 %i.d, label %default.unreachable18 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable18:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.f, ptr %i.e, align 8
  br label %bb.e

.body:                                            ; preds = %bb.n, %bb.m, %bb.f, %bb.q
  %.pn2 = phi { ptr, i32 } [ %i.aa, %bb.q ], [ %i.s, %bb.m ], [ %i.h, %bb.f ], [ %i.s, %bb.n ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn2

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #29
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #29
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtNtB8_2io5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %1, i64 24
  %.val4 = load ptr, ptr %i.i, align 8, !nonnull !6, !align !11, !noundef !6
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client(ptr %.val, ptr nonnull %.val4) #31
          to label %.body unwind label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.j = load i64, ptr %i.b, align 8, !range !1015, !noundef !6 ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.h, label %bb.i

common.ret:                                       ; preds = %_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCsi17nFaBu4HY_10ech_client.exit, %bb.h
  %storemerge = phi i8 [ 1, %_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCsi17nFaBu4HY_10ech_client.exit ], [ 3, %bb.h ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.i:                                             ; preds = %bb.g
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.g, align 8            ; 5 uses
  %i.l = getelementptr i8, ptr %1, i64 24
  %.val6 = load ptr, ptr %i.l, align 8, !nonnull !6, !align !11, !noundef !6 ; 5 uses
  %i.m = load ptr, ptr %.val6, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.m(ptr noundef nonnull %.val5)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !7, !invariant.load !6 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !8, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #24
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit

bb.m:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !7, !invariant.load !6 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !8, !invariant.load !6
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #24
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.l, %bb.k
  %i.y = icmp eq i64 %i.j, 2
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  invoke void @_RNvXs3_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull %.sroa.3.0.copyload)
          to label %_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCsi17nFaBu4HY_10ech_client.exit unwind label %bb.q

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECsi17nFaBu4HY_10ech_client.exit
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.313.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.z, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.3.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  store i8 -1, ptr %i.a, align 8
  br label %_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCsi17nFaBu4HY_10ech_client.exit

_RNvXsq_NtCsj6eKBz9Db1c_4core6resultINtB5_6ResultNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtB7_2io5error5ErrorEE13from_residualCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.o, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %common.ret

bb.q:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i32 0, 256) i32 @_RNSNvYNCINvNtCsaKJjC64KgbL_3std2rt10lang_startINtNtCsj6eKBz9Db1c_4core6result6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtBN_5error5ErrorEL_EEE0INtNtNtBN_3ops8function6FnOnceuE9call_once6vtableCsi17nFaBu4HY_10ech_client(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = tail call { ptr, ptr } @_RINvNtNtCsaKJjC64KgbL_3std3sys9backtrace28___rust_begin_short_backtraceFEINtNtCsj6eKBz9Db1c_4core6result6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtB1e_5error5ErrorEL_EEB19_ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull %i.a) #30, !noalias !1018 ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = tail call noundef i8 @_RNvXsY_NtCsaKJjC64KgbL_3std7processINtNtCsj6eKBz9Db1c_4core6result6ResultuINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtBC_5error5ErrorEL_EENtB5_11Termination6reportCsi17nFaBu4HY_10ech_client(ptr noundef %i.c, ptr %i.d), !noalias !1018
  %i.f = zext i8 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE11rotate_leftCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %.not = icmp ugt i64 %2, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = sub nuw nsw i64 %1, %2                   ; 7 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsbZqQukzfxgd_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed
declare void @_RNvMs_NtNtCsbZqQukzfxgd_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef align 4 dereferenceable(64)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCscg2Fb9rc1fS_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsa9hcECrMlfW_9rand_core5block9Generator8generateCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 4 dereferenceable(64), ptr noalias nofree noundef align 4 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCs9RFwvXNxPyg_16hickory_resolver6config16NameServerConfigENCINvMNtB1P_16name_server_poolINtB2R_14NameServerPoolNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11from_configINtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtNtB14_4sync3ArcINtNtB1P_11name_server10NameServerB3C_EEENCINvNtB12_16in_place_collect24write_in_place_with_dropB6H_E0INtNtBc_6result6ResultB66_zEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs4okMlIQ9Z13_2h25frame8settingsNtB5_8SettingsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(60), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB4_4NameNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB5_5QueryNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12contains_keytECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCsjpgBhlqJ253_12tracing_core5fieldNtNtCsj6eKBz9Db1c_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1f_NtCsjpgBhlqJ253_12tracing_core5fieldtNtB6_5Value6record(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtB7_15RuntimeProvider8bind_udp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsjXdHNeFfodD_13hickory_proto2rr9dns_class8DNSClassNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4okMlIQ9Z13_2h25error4KindNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv4AddrNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRtNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRuNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ClientSessionStoreEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn18ResolvesClientCertEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEE9drop_slowB3i_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel7oneshot5InnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17DnsResponseStreamEE9drop_slowB1y_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs4okMlIQ9Z13_2h25error5ErrorE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsjSDXC2TkEdJ_4http6header5value10ToStrErrorE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls6webpki7anchorsNtB5_13RootCertStoreNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsj6eKBz9Db1c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataNtB5_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 32025597350190194), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordNtB5_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 33909456017848441), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEENtNtCsj6eKBz9Db1c_4core7default7Default7defaultCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCs4wP2HXfJTCR_5alloc3vec13in_place_dropINtB2_11InPlaceDropINtNtB6_4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEE3lenCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata1a1AINtNtNtBa_5slice4iter4IterB14_EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtCsj6eKBz9Db1c_4core4cell10UnsafeCellINtNtCsa9hcECrMlfW_9rand_core5block8BlockRngNtNtNtCsbZqQukzfxgd_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_threadINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule8schedule(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind }
attributes #25 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { noinline noreturn }
attributes #30 = { noinline }
attributes #31 = { cold }
attributes #32 = { noreturn }
attributes #33 = { inlinehint }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!6 = !{}
!7 = !{i64 0, i64 -9223372036854775808}
!8 = !{i64 1, i64 536870913}
!9 = !{i64 0, i64 2}
!10 = !{i8 0, i8 4}
!11 = !{i64 8}
!12 = !{i16 0, i16 3}
!13 = !{i64 -1, i64 -9223372036854775808}
!14 = !{i16 0, i16 2}
!15 = !{i8 0, i8 3}
!16 = !{i8 0, i8 5}
!17 = !{i8 0, i8 2}
!18 = !{i64 -2, i64 -9223372036854775808}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = !{i16 0, i16 39}
!21 = !{i16 0, i16 7}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = distinct !{!23, !"_RINvYNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3mapNtNtNtB7_3ffi6os_str8OsStringNCNvXs_CseUwn3dssrUO_8clap_lexNtB29_7RawArgsINtNtBI_7convert4FromB3_E4from0ECsi17nFaBu4HY_10ech_client"}
!24 = distinct !{!24, !23, !"_RINvYNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3mapNtNtNtB7_3ffi6os_str8OsStringNCNvXs_CseUwn3dssrUO_8clap_lexNtB29_7RawArgsINtNtBI_7convert4FromB3_E4from0ECsi17nFaBu4HY_10ech_client: argument 1"}
!25 = distinct !{!25, !23, !"_RINvYNtNtCsaKJjC64KgbL_3std3env6ArgsOsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator3mapNtNtNtB7_3ffi6os_str8OsStringNCNvXs_CseUwn3dssrUO_8clap_lexNtB29_7RawArgsINtNtBI_7convert4FromB3_E4from0ECsi17nFaBu4HY_10ech_client: argument 0"}
!26 = !{!25, !24}
!27 = distinct !{!27, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsi17nFaBu4HY_10ech_client"}
!28 = distinct !{!28, !27, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsi17nFaBu4HY_10ech_client: argument 2"}
!29 = distinct !{!29, !27, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsi17nFaBu4HY_10ech_client: argument 0"}
!30 = distinct !{!30, !27, !"_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6spliceINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEINtNtNtNtB1D_4iter8adapters3map3MapINtNtNtB1D_5array4iter8IntoIterRNtNtB8_6string6StringKj1_ENvYB3i_INtNtB1D_7convert4IntoBG_E4intoEECsi17nFaBu4HY_10ech_client: argument 1"}
!31 = !{!28}
!32 = !{!29, !28}
!33 = !{!30}
!34 = distinct !{!34, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1z_8adapters9enumerateINtB2s_9EnumeratepEB1t_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvB1t_8find_map5checkTjB3z_EjNCINvMNtBN_8flat_mapINtB4Z_7FlatMapBJ_NtNtNtNtBP_6parser7matches11matched_arg10MatchedArgE12remove_entryeE0E0E0B3E_ECsi17nFaBu4HY_10ech_client"}
!35 = distinct !{!35, !34, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1z_8adapters9enumerateINtB2s_9EnumeratepEB1t_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvB1t_8find_map5checkTjB3z_EjNCINvMNtBN_8flat_mapINtB4Z_7FlatMapBJ_NtNtNtNtBP_6parser7matches11matched_arg10MatchedArgE12remove_entryeE0E0E0B3E_ECsi17nFaBu4HY_10ech_client: argument 2"}
!36 = distinct !{!36, !34, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1z_8adapters9enumerateINtB2s_9EnumeratepEB1t_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvB1t_8find_map5checkTjB3z_EjNCINvMNtBN_8flat_mapINtB4Z_7FlatMapBJ_NtNtNtNtBP_6parser7matches11matched_arg10MatchedArgE12remove_entryeE0E0E0B3E_ECsi17nFaBu4HY_10ech_client: argument 1"}
!37 = distinct !{!37, !34, !"_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsdsZTLzXv0lo_12clap_builder4util2id2IdENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1z_8adapters9enumerateINtB2s_9EnumeratepEB1t_8try_fold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvB1t_8find_map5checkTjB3z_EjNCINvMNtBN_8flat_mapINtB4Z_7FlatMapBJ_NtNtNtNtBP_6parser7matches11matched_arg10MatchedArgE12remove_entryeE0E0E0B3E_ECsi17nFaBu4HY_10ech_client: argument 0"}
!38 = distinct !{!38, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!39 = distinct !{!39, !38, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!40 = distinct !{!40, !38, !"_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!41 = !{!37, !36, !35}
!42 = !{!40, !39}
!43 = distinct !{!43, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client"}
!44 = distinct !{!44, !43, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client: argument 0"}
!45 = distinct !{!45, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!46 = distinct !{!46, !45, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!47 = distinct !{!47, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client"}
!48 = distinct !{!48, !47, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client: argument 0"}
!49 = distinct !{!49, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!50 = distinct !{!50, !49, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!51 = distinct !{!51, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client"}
!52 = distinct !{!52, !51, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsi17nFaBu4HY_10ech_client: argument 0"}
!53 = distinct !{!53, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!54 = distinct !{!54, !53, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCs9RFwvXNxPyg_16hickory_resolver11name_server10NameServerNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!55 = !{!44}
!56 = !{!46}
!57 = !{!46, !44}
!58 = !{!48}
!59 = !{!50}
!60 = !{!50, !48}
!61 = !{!52}
!62 = !{!54}
!63 = !{!54, !52}
!64 = distinct !{!64, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net3udp10udp_stream19NextRandomUdpSocketNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client"}
!65 = distinct !{!65, !64, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net3udp10udp_stream19NextRandomUdpSocketNtNtNtBI_7runtime13tokio_runtime20TokioRuntimeProviderEECsi17nFaBu4HY_10ech_client: argument 0"}
!66 = distinct !{!66, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client"}
!67 = distinct !{!67, !66, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client: argument 0"}
!68 = distinct !{!68, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime11TokioHandleECsi17nFaBu4HY_10ech_client"}
!69 = distinct !{!69, !68, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime11TokioHandleECsi17nFaBu4HY_10ech_client: argument 0"}
!70 = distinct !{!70, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEEEECsi17nFaBu4HY_10ech_client"}
!71 = distinct !{!71, !70, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEEEECsi17nFaBu4HY_10ech_client: argument 0"}
!72 = distinct !{!72, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!73 = distinct !{!73, !72, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!74 = distinct !{!74, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEEECsi17nFaBu4HY_10ech_client"}
!75 = distinct !{!75, !74, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEEECsi17nFaBu4HY_10ech_client: argument 0"}
!76 = distinct !{!76, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!77 = distinct !{!77, !76, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!78 = distinct !{!78, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEEECsi17nFaBu4HY_10ech_client"}
!79 = distinct !{!79, !78, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEEECsi17nFaBu4HY_10ech_client: argument 0"}
!80 = distinct !{!80, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!81 = distinct !{!81, !80, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSettEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!82 = distinct !{!82, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client"}
!83 = distinct !{!83, !82, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio3net3udp9UdpSocketECsi17nFaBu4HY_10ech_client: argument 0"}
!84 = distinct !{!84, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client"}
!85 = distinct !{!85, !84, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtCsUoH6ltOcnV_3mio3net3udp9UdpSocketEECsi17nFaBu4HY_10ech_client: argument 0"}
!86 = distinct !{!86, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op11dns_request10DnsRequestECsi17nFaBu4HY_10ech_client"}
!87 = distinct !{!87, !86, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjXdHNeFfodD_13hickory_proto2op11dns_request10DnsRequestECsi17nFaBu4HY_10ech_client: argument 0"}
!88 = distinct !{!88, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEECsi17nFaBu4HY_10ech_client"}
!89 = distinct !{!89, !88, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEECsi17nFaBu4HY_10ech_client: argument 0"}
!90 = distinct !{!90, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEECsi17nFaBu4HY_10ech_client"}
!91 = distinct !{!91, !90, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEECsi17nFaBu4HY_10ech_client: argument 0"}
!92 = !{i8 0, i8 6}
!93 = !{!65}
!94 = !{!67}
!95 = !{!69}
!96 = !{!71}
!97 = !{!73}
!98 = !{!73, !71, !69, !67, !65}
!99 = !{!75}
!100 = !{!77}
!101 = !{!77, !75, !65}
!102 = !{!77, !75}
!103 = !{!79}
!104 = !{!81}
!105 = !{!81, !79, !65}
!106 = !{!81, !79}
!107 = !{!85, !83}
!108 = !{!89, !87}
!109 = !{!91, !87}
!110 = distinct !{!110, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeECsi17nFaBu4HY_10ech_client"}
!111 = distinct !{!111, !110, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeECsi17nFaBu4HY_10ech_client: argument 0"}
!112 = distinct !{!112, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client3ech9EchConfigECsi17nFaBu4HY_10ech_client"}
!113 = distinct !{!113, !112, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client3ech9EchConfigECsi17nFaBu4HY_10ech_client: argument 0"}
!114 = distinct !{!114, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadECsi17nFaBu4HY_10ech_client"}
!115 = distinct !{!115, !114, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadECsi17nFaBu4HY_10ech_client: argument 0"}
!116 = distinct !{!116, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17EchConfigContentsECsi17nFaBu4HY_10ech_client"}
!117 = distinct !{!117, !116, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake17EchConfigContentsECsi17nFaBu4HY_10ech_client: argument 0"}
!118 = distinct !{!118, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECsi17nFaBu4HY_10ech_client"}
!119 = distinct !{!119, !118, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECsi17nFaBu4HY_10ech_client: argument 0"}
!120 = distinct !{!120, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECsi17nFaBu4HY_10ech_client"}
!121 = distinct !{!121, !120, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECsi17nFaBu4HY_10ech_client: argument 0"}
!122 = !{i64 -3, i64 -9223372036854775808}
!123 = !{!121, !119, !117, !115, !113, !111}
!124 = distinct !{!124, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdaVh6l1oWST_15futures_channel4mpsc6SenderNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEECsi17nFaBu4HY_10ech_client"}
!125 = distinct !{!125, !124, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdaVh6l1oWST_15futures_channel4mpsc6SenderNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEECsi17nFaBu4HY_10ech_client: argument 0"}
!126 = distinct !{!126, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdaVh6l1oWST_15futures_channel4mpsc18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEEECsi17nFaBu4HY_10ech_client"}
!127 = distinct !{!127, !126, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsdaVh6l1oWST_15futures_channel4mpsc18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEEECsi17nFaBu4HY_10ech_client: argument 0"}
!128 = distinct !{!128, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEEECsi17nFaBu4HY_10ech_client"}
!129 = distinct !{!129, !128, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEEECsi17nFaBu4HY_10ech_client: argument 0"}
!130 = distinct !{!130, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!131 = distinct !{!131, !130, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!132 = distinct !{!132, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdaVh6l1oWST_15futures_channel4mpsc18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEECsi17nFaBu4HY_10ech_client"}
!133 = distinct !{!133, !132, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdaVh6l1oWST_15futures_channel4mpsc18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEECsi17nFaBu4HY_10ech_client: argument 0"}
!134 = distinct !{!134, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEEECsi17nFaBu4HY_10ech_client"}
!135 = distinct !{!135, !134, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEEECsi17nFaBu4HY_10ech_client: argument 0"}
!136 = distinct !{!136, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!137 = distinct !{!137, !136, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsdaVh6l1oWST_15futures_channel4mpsc12BoundedInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!138 = distinct !{!138, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEEECsi17nFaBu4HY_10ech_client"}
!139 = distinct !{!139, !138, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEEECsi17nFaBu4HY_10ech_client: argument 0"}
!140 = distinct !{!140, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!141 = distinct !{!141, !140, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!142 = distinct !{!142, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEEECsi17nFaBu4HY_10ech_client"}
!143 = distinct !{!143, !142, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEEECsi17nFaBu4HY_10ech_client: argument 0"}
!144 = distinct !{!144, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client"}
!145 = distinct !{!145, !144, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client: argument 0"}
!146 = !{!127, !125}
!147 = !{!129}
!148 = !{!131}
!149 = !{!131, !129, !133, !127, !125}
!150 = !{!131, !129}
!151 = !{!135}
!152 = !{!137}
end_hunk_1
