Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/hash_sha512_cp?download=true
inline.NumInlined: 167
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@SHA512_Transform:bb.a
  %i.zb = getelementptr i8, ptr %i.bh, i64 192
  store i64 %i.za, ptr %i.zb, align 8
  %i.zc = tail call i64 @llvm.fshl.i64(i64 %i.yk, i64 %i.yk, i64 45)
  %i.zd = tail call i64 @llvm.fshl.i64(i64 %i.yk, i64 %i.yk, i64 3)
  %i.ze = xor i64 %i.zc, %i.zd
  %i.zf = lshr i64 %i.yk, 6
  %i.zg = xor i64 %i.ze, %i.zf
  %i.zh = tail call i64 @llvm.fshl.i64(i64 %i.ua, i64 %i.ua, i64 63)
  %i.zi = tail call i64 @llvm.fshl.i64(i64 %i.ua, i64 %i.ua, i64 56)
  %i.zj = xor i64 %i.zh, %i.zi
  %i.zk = lshr i64 %i.ua, 7
  %i.zl = xor i64 %i.zj, %i.zk
  %i.zm = add i64 %i.zl, %i.tg
  %i.zn = add i64 %i.zm, %i.vc
  %i.zo = add i64 %i.zn, %i.zg                    ; 6 uses
  %i.zp = getelementptr i8, ptr %i.bh, i64 200
  store i64 %i.zo, ptr %i.zp, align 8
  %i.zq = tail call i64 @llvm.fshl.i64(i64 %i.za, i64 %i.za, i64 45)
  %i.zr = tail call i64 @llvm.fshl.i64(i64 %i.za, i64 %i.za, i64 3)
  %i.zs = xor i64 %i.zq, %i.zr
  %i.zt = lshr i64 %i.za, 6
  %i.zu = xor i64 %i.zs, %i.zt
  %i.zv = tail call i64 @llvm.fshl.i64(i64 %i.us, i64 %i.us, i64 63)
  %i.zw = tail call i64 @llvm.fshl.i64(i64 %i.us, i64 %i.us, i64 56)
  %i.zx = xor i64 %i.zv, %i.zw
  %i.zy = lshr i64 %i.us, 7
  %i.zz = xor i64 %i.zx, %i.zy
  %i.aaa = load i64, ptr %i.mq, align 8
  %i.aab = add i64 %i.vu, %i.zz
  %i.aac = add i64 %i.aab, %i.aaa
  %i.aad = add i64 %i.aac, %i.zu                  ; 6 uses
  %i.aae = getelementptr i8, ptr %i.bh, i64 208
  store i64 %i.aad, ptr %i.aae, align 8
  %i.aaf = tail call i64 @llvm.fshl.i64(i64 %i.zo, i64 %i.zo, i64 45)
  %i.aag = tail call i64 @llvm.fshl.i64(i64 %i.zo, i64 %i.zo, i64 3)
  %i.aah = xor i64 %i.aaf, %i.aag
  %i.aai = lshr i64 %i.zo, 6
  %i.aaj = xor i64 %i.aah, %i.aai
  %i.aak = tail call i64 @llvm.fshl.i64(i64 %i.vk, i64 %i.vk, i64 63)
  %i.aal = tail call i64 @llvm.fshl.i64(i64 %i.vk, i64 %i.vk, i64 56)
  %i.aam = xor i64 %i.aak, %i.aal
  %i.aan = lshr i64 %i.vk, 7
  %i.aao = xor i64 %i.aam, %i.aan
  %i.aap = load i64, ptr %i.nt, align 8
  %i.aaq = add i64 %i.wm, %i.aao
  %i.aar = add i64 %i.aaq, %i.aap
  %i.aas = add i64 %i.aar, %i.aaj                 ; 6 uses
  %i.aat = getelementptr i8, ptr %i.bh, i64 216
  store i64 %i.aas, ptr %i.aat, align 8
  %i.aau = tail call i64 @llvm.fshl.i64(i64 %i.aad, i64 %i.aad, i64 45)
  %i.aav = tail call i64 @llvm.fshl.i64(i64 %i.aad, i64 %i.aad, i64 3)
  %i.aaw = xor i64 %i.aau, %i.aav
  %i.aax = lshr i64 %i.aad, 6
  %i.aay = xor i64 %i.aaw, %i.aax
  %i.aaz = tail call i64 @llvm.fshl.i64(i64 %i.wc, i64 %i.wc, i64 63)
  %i.aba = tail call i64 @llvm.fshl.i64(i64 %i.wc, i64 %i.wc, i64 56)
  %i.abb = xor i64 %i.aaz, %i.aba
  %i.abc = lshr i64 %i.wc, 7
  %i.abd = xor i64 %i.abb, %i.abc
  %i.abe = load i64, ptr %i.ow, align 8
  %i.abf = add i64 %i.xe, %i.abd
  %i.abg = add i64 %i.abf, %i.abe
  %i.abh = add i64 %i.abg, %i.aay                 ; 6 uses
  %i.abi = getelementptr i8, ptr %i.bh, i64 224
  store i64 %i.abh, ptr %i.abi, align 8
  %i.abj = tail call i64 @llvm.fshl.i64(i64 %i.aas, i64 %i.aas, i64 45)
  %i.abk = tail call i64 @llvm.fshl.i64(i64 %i.aas, i64 %i.aas, i64 3)
  %i.abl = xor i64 %i.abj, %i.abk
  %i.abm = lshr i64 %i.aas, 6
  %i.abn = xor i64 %i.abl, %i.abm
  %i.abo = tail call i64 @llvm.fshl.i64(i64 %i.wu, i64 %i.wu, i64 63)
  %i.abp = tail call i64 @llvm.fshl.i64(i64 %i.wu, i64 %i.wu, i64 56)
  %i.abq = xor i64 %i.abo, %i.abp
  %i.abr = lshr i64 %i.wu, 7
  %i.abs = xor i64 %i.abq, %i.abr
  %i.abt = load i64, ptr %i.pz, align 8
  %i.abu = add i64 %i.xu, %i.abs
  %i.abv = add i64 %i.abu, %i.abt
  %i.abw = add i64 %i.abv, %i.abn                 ; 6 uses
  %i.abx = getelementptr i8, ptr %i.bh, i64 232
  store i64 %i.abw, ptr %i.abx, align 8
  %i.aby = tail call i64 @llvm.fshl.i64(i64 %i.abh, i64 %i.abh, i64 45)
  %i.abz = tail call i64 @llvm.fshl.i64(i64 %i.abh, i64 %i.abh, i64 3)
  %i.aca = xor i64 %i.aby, %i.abz
  %i.acb = lshr i64 %i.abh, 6
  %i.acc = xor i64 %i.aca, %i.acb
  %i.acd = tail call i64 @llvm.fshl.i64(i64 %i.tt, i64 %i.tt, i64 63)
  %i.ace = tail call i64 @llvm.fshl.i64(i64 %i.tt, i64 %i.tt, i64 56)
  %i.acf = xor i64 %i.acd, %i.ace
  %i.acg = lshr i64 %i.tt, 7
  %i.ach = xor i64 %i.acf, %i.acg
  %i.aci = add i64 %i.ach, %i.ta
  %i.acj = add i64 %i.aci, %i.yk
  %i.ack = add i64 %i.acj, %i.acc
  %i.acl = getelementptr i8, ptr %i.bh, i64 240
  store i64 %i.ack, ptr %i.acl, align 8
  %i.acm = tail call i64 @llvm.fshl.i64(i64 %i.abw, i64 %i.abw, i64 45)
  %i.acn = tail call i64 @llvm.fshl.i64(i64 %i.abw, i64 %i.abw, i64 3)
  %i.aco = xor i64 %i.acm, %i.acn
  %i.acp = lshr i64 %i.abw, 6
  %i.acq = xor i64 %i.aco, %i.acp
  %i.acr = tail call i64 @llvm.fshl.i64(i64 %i.tq, i64 %i.tq, i64 63)
  %i.acs = tail call i64 @llvm.fshl.i64(i64 %i.tq, i64 %i.tq, i64 56)
  %i.act = xor i64 %i.acr, %i.acs
  %i.acu = lshr i64 %i.tq, 7
  %i.acv = xor i64 %i.act, %i.acu
  %i.acw = load i64, ptr %i.sf, align 8
  %i.acx = add i64 %i.za, %i.acv
  %i.acy = add i64 %i.acx, %i.acw
  %i.acz = add i64 %i.acy, %i.acq
  %i.ada = getelementptr i8, ptr %i.bh, i64 248
  store i64 %i.acz, ptr %i.ada, align 8
  br label %bb.c

split:                                            ; preds = %bb.c
  %i.adb = load i64, ptr %0, align 8
  %i.adc = add i64 %i.adb, %i.sy
  store i64 %i.adc, ptr %0, align 8
  %i.add = load i64, ptr %i.au, align 8
  %i.ade = getelementptr i8, ptr %0, i64 8        ; 2 uses
  %i.adf = load i64, ptr %i.ade, align 8
  %i.adg = add i64 %i.adf, %i.add
  store i64 %i.adg, ptr %i.ade, align 8
  %i.adh = load i64, ptr %i.av, align 8
  %i.adi = getelementptr i8, ptr %0, i64 16       ; 2 uses
  %i.adj = load i64, ptr %i.adi, align 8
  %i.adk = add i64 %i.adj, %i.adh
  store i64 %i.adk, ptr %i.adi, align 8
  %i.adl = load i64, ptr %i.at, align 8
  %i.adm = getelementptr i8, ptr %0, i64 24       ; 2 uses
  %i.adn = load i64, ptr %i.adm, align 8
  %i.ado = add i64 %i.adn, %i.adl
  store i64 %i.ado, ptr %i.adm, align 8
  %i.adp = load i64, ptr %i.ap, align 8
  %i.adq = getelementptr i8, ptr %0, i64 32       ; 2 uses
  %i.adr = load i64, ptr %i.adq, align 8
  %i.ads = add i64 %i.adr, %i.adp
  store i64 %i.ads, ptr %i.adq, align 8
  %i.adt = load i64, ptr %i.aq, align 8
  %i.adu = getelementptr i8, ptr %0, i64 40       ; 2 uses
  %i.adv = load i64, ptr %i.adu, align 8
  %i.adw = add i64 %i.adv, %i.adt
  store i64 %i.adw, ptr %i.adu, align 8
  %i.adx = load i64, ptr %i.ar, align 8
  %i.ady = getelementptr i8, ptr %0, i64 48       ; 2 uses
  %i.adz = load i64, ptr %i.ady, align 8
  %i.aea = add i64 %i.adz, %i.adx
  store i64 %i.aea, ptr %i.ady, align 8
  %i.aeb = load i64, ptr %i.as, align 8
  %i.aec = getelementptr i8, ptr %0, i64 56       ; 2 uses
  %i.aed = load i64, ptr %i.aec, align 8
  %i.aee = add i64 %i.aed, %i.aeb
  store i64 %i.aee, ptr %i.aec, align 8
  ret void
}

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_hash_sha512_final(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [88 x i64], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  fence acquire
  %i.b = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 127                        ; 5 uses
  %i.g = icmp samesign ult i32 %i.f, 112
  br i1 %i.g, label %.lr.ph.i, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.a
  %i.h = sub nuw nsw i32 128, %i.f
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep.i = getelementptr i8, ptr %i.j, i64 80
  %i.k = zext nneg i32 %i.h to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 16 dereferenceable(1) @PAD, i64 range(i64 0, 129) %i.k, i1 false)
  %i.l = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  call fastcc void @SHA512_Transform(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.l, i8 noundef 0, i64 noundef 112, i1 noundef false) #6
  br label %SHA512_Pad.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = zext nneg i32 %i.f to i64
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %scevgep32.i = getelementptr i8, ptr %i.o, i64 80
  %narrow.i = sub nuw nsw i32 112, %i.f
  %i.p = zext nneg i32 %narrow.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep32.i, ptr nonnull align 16 @PAD, i64 %i.p, i1 false)
  br label %SHA512_Pad.exit

SHA512_Pad.exit:                                  ; preds = %.preheader28.i, %.lr.ph.i
  %i.q = getelementptr i8, ptr %0, i64 64
  %i.r = getelementptr i8, ptr %0, i64 192
  %2 = load <8 x i8>, ptr %i.q, align 8
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %0, i64 200
  %4 = load <8 x i8>, ptr %i.b, align 8
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  call fastcc void @SHA512_Transform(ptr noundef nonnull %0, ptr noundef %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u)
  %6 = load <8 x i8>, ptr %0, align 8
  %7 = shufflevector <8 x i8> %6, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %7, ptr %1, align 1
  %i.v = getelementptr i8, ptr %1, i64 8
  %i.w = getelementptr i8, ptr %0, i64 8
  %8 = load <8 x i8>, ptr %i.w, align 8
  %9 = shufflevector <8 x i8> %8, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %9, ptr %i.v, align 1
  %i.x = getelementptr i8, ptr %1, i64 16
  %i.y = getelementptr i8, ptr %0, i64 16
  %10 = load <8 x i8>, ptr %i.y, align 8
  %11 = shufflevector <8 x i8> %10, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %11, ptr %i.x, align 1
  %i.z = getelementptr i8, ptr %1, i64 24
  %i.aa = getelementptr i8, ptr %0, i64 24
  %12 = load <8 x i8>, ptr %i.aa, align 8
  %13 = shufflevector <8 x i8> %12, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %13, ptr %i.z, align 1
  %i.ab = getelementptr i8, ptr %1, i64 32
  %i.ac = getelementptr i8, ptr %0, i64 32
  %14 = load <8 x i8>, ptr %i.ac, align 8
  %15 = shufflevector <8 x i8> %14, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %15, ptr %i.ab, align 1
  %i.ad = getelementptr i8, ptr %1, i64 40
  %i.ae = getelementptr i8, ptr %0, i64 40
  %16 = load <8 x i8>, ptr %i.ae, align 8
  %17 = shufflevector <8 x i8> %16, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %17, ptr %i.ad, align 1
  %i.af = getelementptr i8, ptr %1, i64 48
  %i.ag = getelementptr i8, ptr %0, i64 48
  %18 = load <8 x i8>, ptr %i.ag, align 8
  %19 = shufflevector <8 x i8> %18, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %19, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %1, i64 56
  %i.ai = getelementptr i8, ptr %0, i64 56
  %20 = load <8 x i8>, ptr %i.ai, align 8
  %21 = shufflevector <8 x i8> %20, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %21, ptr %i.ah, align 1
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 704) #6
  call void @sodium_memzero(ptr noundef nonnull %0, i64 noundef 208) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_hash_sha512(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.crypto_hash_sha512_state, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) @crypto_hash_sha512_init.sha512_initial_state, i64 noundef 64, i1 noundef false) #6
  %i.b = call i32 @crypto_hash_sha512_update(ptr noundef %3, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.c = call i32 @crypto_hash_sha512_final(ptr noundef %3, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4, !17, !18}
!6 = distinct !{!6, !19}
!7 = distinct !{!7, !4, !17, !18}
!8 = distinct !{!8, !19}
!9 = distinct !{!9, !4, !17}
!10 = distinct !{!10, !4, !17}
!11 = distinct !{!11, !4, !17, !18}
!12 = distinct !{!12, !4, !17, !18}
!13 = distinct !{!13, !19}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4, !17}
!16 = !{!"branch_weights", i32 4, i32 28}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"branch_weights", i32 4, i32 12}
!21 = distinct !{!21, !4}
end_hunk_0
