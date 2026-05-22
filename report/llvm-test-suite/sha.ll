inline.NumInlined: 4
begin_hunk_0_@sha_transform:.preheader112.preheader
  %i.aca = tail call i32 @llvm.fshl.i32(i32 %i.abf, i32 %i.abf, i32 30) ; 3 uses
  %i.acb = tail call i32 @llvm.fshl.i32(i32 %i.abz, i32 %i.abz, i32 5)
  %i.acc = xor i32 %i.aca, %i.abp
  %i.acd = xor i32 %i.acc, %i.abq
  %i.ace = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.acf = load i32, ptr %i.ace, align 16, !tbaa !4
  %i.acg = add i32 %i.acb, -899497514
  %i.ach = add i32 %i.acg, %i.acd
  %i.aci = add i32 %i.ach, %i.abg
  %i.acj = add i32 %i.aci, %i.acf                 ; 5 uses
  %i.ack = tail call i32 @llvm.fshl.i32(i32 %i.abp, i32 %i.abp, i32 30) ; 3 uses
  %i.acl = tail call i32 @llvm.fshl.i32(i32 %i.acj, i32 %i.acj, i32 5)
  %i.acm = xor i32 %i.ack, %i.abz
  %i.acn = xor i32 %i.acm, %i.aca
  %i.aco = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !4
  %i.acq = add i32 %i.acl, -899497514
  %i.acr = add i32 %i.acq, %i.acn
  %i.acs = add i32 %i.acr, %i.abq
  %i.act = add i32 %i.acs, %i.acp                 ; 5 uses
  %i.acu = tail call i32 @llvm.fshl.i32(i32 %i.abz, i32 %i.abz, i32 30) ; 3 uses
  %i.acv = tail call i32 @llvm.fshl.i32(i32 %i.act, i32 %i.act, i32 5)
  %i.acw = xor i32 %i.acu, %i.acj
  %i.acx = xor i32 %i.acw, %i.ack
  %i.acy = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !4
  %i.ada = add i32 %i.acv, -899497514
  %i.adb = add i32 %i.ada, %i.acx
  %i.adc = add i32 %i.adb, %i.aca
  %i.add = add i32 %i.adc, %i.acz                 ; 5 uses
  %i.ade = tail call i32 @llvm.fshl.i32(i32 %i.acj, i32 %i.acj, i32 30) ; 3 uses
  %i.adf = tail call i32 @llvm.fshl.i32(i32 %i.add, i32 %i.add, i32 5)
  %i.adg = xor i32 %i.ade, %i.act
  %i.adh = xor i32 %i.adg, %i.acu
  %i.adi = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !4
  %i.adk = add i32 %i.adf, -899497514
  %i.adl = add i32 %i.adk, %i.adh
  %i.adm = add i32 %i.adl, %i.ack
  %i.adn = add i32 %i.adm, %i.adj                 ; 5 uses
  %i.ado = tail call i32 @llvm.fshl.i32(i32 %i.act, i32 %i.act, i32 30) ; 3 uses
  %i.adp = tail call i32 @llvm.fshl.i32(i32 %i.adn, i32 %i.adn, i32 5)
  %i.adq = xor i32 %i.ado, %i.add
  %i.adr = xor i32 %i.adq, %i.ade
  %i.ads = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.adt = load i32, ptr %i.ads, align 16, !tbaa !4
  %i.adu = add i32 %i.adp, -899497514
  %i.adv = add i32 %i.adu, %i.adr
  %i.adw = add i32 %i.adv, %i.acu
  %i.adx = add i32 %i.adw, %i.adt                 ; 5 uses
  %i.ady = tail call i32 @llvm.fshl.i32(i32 %i.add, i32 %i.add, i32 30) ; 3 uses
  %i.adz = tail call i32 @llvm.fshl.i32(i32 %i.adx, i32 %i.adx, i32 5)
  %i.aea = xor i32 %i.ady, %i.adn
  %i.aeb = xor i32 %i.aea, %i.ado
  %i.aec = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !4
  %i.aee = add i32 %i.adz, -899497514
  %i.aef = add i32 %i.aee, %i.aeb
  %i.aeg = add i32 %i.aef, %i.ade
  %i.aeh = add i32 %i.aeg, %i.aed                 ; 5 uses
  %i.aei = tail call i32 @llvm.fshl.i32(i32 %i.adn, i32 %i.adn, i32 30) ; 3 uses
  %i.aej = tail call i32 @llvm.fshl.i32(i32 %i.aeh, i32 %i.aeh, i32 5)
  %i.aek = xor i32 %i.aei, %i.adx
  %i.ael = xor i32 %i.aek, %i.ady
  %i.aem = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.aen = load i32, ptr %i.aem, align 8, !tbaa !4
  %i.aeo = add i32 %i.aej, -899497514
  %i.aep = add i32 %i.aeo, %i.ael
  %i.aeq = add i32 %i.aep, %i.ado
  %i.aer = add i32 %i.aeq, %i.aen                 ; 5 uses
  %i.aes = tail call i32 @llvm.fshl.i32(i32 %i.adx, i32 %i.adx, i32 30) ; 3 uses
  %i.aet = tail call i32 @llvm.fshl.i32(i32 %i.aer, i32 %i.aer, i32 5)
  %i.aeu = xor i32 %i.aes, %i.aeh
  %i.aev = xor i32 %i.aeu, %i.aei
  %i.aew = getelementptr inbounds nuw i8, ptr %i.a, i64 284
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !4
  %i.aey = add i32 %i.aet, -899497514
  %i.aez = add i32 %i.aey, %i.aev
  %i.afa = add i32 %i.aez, %i.ady
  %i.afb = add i32 %i.afa, %i.aex                 ; 5 uses
  %i.afc = tail call i32 @llvm.fshl.i32(i32 %i.aeh, i32 %i.aeh, i32 30) ; 3 uses
  %i.afd = tail call i32 @llvm.fshl.i32(i32 %i.afb, i32 %i.afb, i32 5)
  %i.afe = xor i32 %i.afc, %i.aer
  %i.aff = xor i32 %i.afe, %i.aes
  %i.afg = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.afh = load i32, ptr %i.afg, align 16, !tbaa !4
  %i.afi = add i32 %i.afd, -899497514
  %i.afj = add i32 %i.afi, %i.aff
  %i.afk = add i32 %i.afj, %i.aei
  %i.afl = add i32 %i.afk, %i.afh                 ; 5 uses
  %i.afm = tail call i32 @llvm.fshl.i32(i32 %i.aer, i32 %i.aer, i32 30) ; 3 uses
  %i.afn = tail call i32 @llvm.fshl.i32(i32 %i.afl, i32 %i.afl, i32 5)
  %i.afo = xor i32 %i.afm, %i.afb
  %i.afp = xor i32 %i.afo, %i.afc
  %i.afq = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !4
  %i.afs = add i32 %i.afn, -899497514
  %i.aft = add i32 %i.afs, %i.afp
  %i.afu = add i32 %i.aft, %i.aes
  %i.afv = add i32 %i.afu, %i.afr                 ; 5 uses
  %i.afw = tail call i32 @llvm.fshl.i32(i32 %i.afb, i32 %i.afb, i32 30) ; 3 uses
  %i.afx = tail call i32 @llvm.fshl.i32(i32 %i.afv, i32 %i.afv, i32 5)
  %i.afy = xor i32 %i.afw, %i.afl
  %i.afz = xor i32 %i.afy, %i.afm
  %i.aga = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !4
  %i.agc = add i32 %i.afx, -899497514
  %i.agd = add i32 %i.agc, %i.afz
  %i.age = add i32 %i.agd, %i.afc
  %i.agf = add i32 %i.age, %i.agb                 ; 5 uses
  %i.agg = tail call i32 @llvm.fshl.i32(i32 %i.afl, i32 %i.afl, i32 30) ; 3 uses
  %i.agh = tail call i32 @llvm.fshl.i32(i32 %i.agf, i32 %i.agf, i32 5)
  %i.agi = xor i32 %i.agg, %i.afv
  %i.agj = xor i32 %i.agi, %i.afw
  %i.agk = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !4
  %i.agm = add i32 %i.agh, -899497514
  %i.agn = add i32 %i.agm, %i.agj
  %i.ago = add i32 %i.agn, %i.afm
  %i.agp = add i32 %i.ago, %i.agl                 ; 5 uses
  %i.agq = tail call i32 @llvm.fshl.i32(i32 %i.afv, i32 %i.afv, i32 30) ; 3 uses
  %i.agr = tail call i32 @llvm.fshl.i32(i32 %i.agp, i32 %i.agp, i32 5)
  %i.ags = xor i32 %i.agq, %i.agf
  %i.agt = xor i32 %i.ags, %i.agg
  %i.agu = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.agv = load i32, ptr %i.agu, align 16, !tbaa !4
  %i.agw = add i32 %i.agr, -899497514
  %i.agx = add i32 %i.agw, %i.agt
  %i.agy = add i32 %i.agx, %i.afw
  %i.agz = add i32 %i.agy, %i.agv                 ; 5 uses
  %i.aha = tail call i32 @llvm.fshl.i32(i32 %i.agf, i32 %i.agf, i32 30) ; 3 uses
  %i.ahb = tail call i32 @llvm.fshl.i32(i32 %i.agz, i32 %i.agz, i32 5)
  %i.ahc = xor i32 %i.aha, %i.agp
  %i.ahd = xor i32 %i.ahc, %i.agq
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.a, i64 308
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !4
  %i.ahg = add i32 %i.ahb, -899497514
  %i.ahh = add i32 %i.ahg, %i.ahd
  %i.ahi = add i32 %i.ahh, %i.agg
  %i.ahj = add i32 %i.ahi, %i.ahf                 ; 5 uses
  %i.ahk = tail call i32 @llvm.fshl.i32(i32 %i.agp, i32 %i.agp, i32 30) ; 3 uses
  %i.ahl = tail call i32 @llvm.fshl.i32(i32 %i.ahj, i32 %i.ahj, i32 5)
  %i.ahm = xor i32 %i.ahk, %i.agz
  %i.ahn = xor i32 %i.ahm, %i.aha
  %i.aho = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.ahp = load i32, ptr %i.aho, align 8, !tbaa !4
  %i.ahq = add i32 %i.ahl, -899497514
  %i.ahr = add i32 %i.ahq, %i.ahn
  %i.ahs = add i32 %i.ahr, %i.agq
  %i.aht = add i32 %i.ahs, %i.ahp                 ; 3 uses
  %i.ahu = tail call i32 @llvm.fshl.i32(i32 %i.agz, i32 %i.agz, i32 30) ; 2 uses
  %i.ahv = tail call i32 @llvm.fshl.i32(i32 %i.aht, i32 %i.aht, i32 5)
  %i.ahw = xor i32 %i.ahu, %i.ahj
  %i.ahx = xor i32 %i.ahw, %i.ahk
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !4
  %i.aia = add i32 %i.ahv, -899497514
  %i.aib = add i32 %i.aia, %i.ahx
  %i.aic = add i32 %i.aib, %i.aha
  %i.aid = add i32 %i.aic, %i.ahz
  %i.aie = tail call i32 @llvm.fshl.i32(i32 %i.ahj, i32 %i.ahj, i32 30)
  %i.aif = add i32 %i.aid, %i.ab
  store i32 %i.aif, ptr %0, align 4, !tbaa !4
  %i.aig = add i32 %i.aht, %i.ad
  store i32 %i.aig, ptr %i.ac, align 4, !tbaa !4
  %i.aih = add i32 %i.aie, %i.af
  store i32 %i.aih, ptr %i.ae, align 4, !tbaa !4
  %i.aii = add i32 %i.ahu, %i.ah
  store i32 %i.aii, ptr %i.ag, align 4, !tbaa !4
  %i.aij = add i32 %i.ahk, %i.aj
  store i32 %i.aij, ptr %i.ai, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha_final(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = lshr i32 %i.b, 3
  %i.f = and i32 %i.e, 63                         ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 -128, ptr %i.i, align 1, !tbaa !13
  %i.j = icmp samesign ugt i32 %i.f, 55
  %i.k = zext nneg i32 %i.f to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = xor i32 %i.f, 63
  %i.o = zext nneg i32 %i.n to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.o, i1 false)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %i.g)
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.g, i8 0, i64 56, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i32 55, %i.f
  %i.q = zext nneg i32 %i.p to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.q, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @byte_reverse(ptr noundef nonnull %i.g)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.d, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.b, ptr %i.s, align 4, !tbaa !4
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @sha_stream(ptr noundef initializes((0, 28)) %0, ptr noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.b, align 4, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %i.e = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 8192, ptr noundef %1)
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sha_update.exit
  %i.l = phi i32 [ %i.f, %.lr.ph ], [ %i.ak, %sha_update.exit ] ; 5 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !8    ; 2 uses
  %i.n = shl i32 %i.l, 3                          ; 2 uses
  %i.o = xor i32 %i.m, -1
  %i.p = icmp ugt i32 %i.n, %i.o
  %i.q = load i32, ptr %i.d, align 4, !tbaa !10
  %i.r = zext i1 %i.p to i32
  %i.s = add i32 %i.m, %i.n
  store i32 %i.s, ptr %i.c, align 4, !tbaa !8
  %i.t = lshr i32 %i.l, 29
  %i.u = add i32 %i.q, %i.t
  %i.v = add i32 %i.u, %i.r
  store i32 %i.v, ptr %i.d, align 4, !tbaa !10
  %i.w = icmp samesign ugt i32 %i.l, 63
  br i1 %i.w, label %.lr.ph.i, label %sha_update.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.019.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %i.l, %bb.b ] ; 2 uses
  %.01718.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.a, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, ptr noundef nonnull align 1 dereferenceable(64) %.01718.i, i64 64, i1 false)
  %i.x = load <16 x i8>, ptr %i.h, align 1, !tbaa !13
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.y, ptr %i.h, align 1, !tbaa !13
  %i.z = load <16 x i8>, ptr %i.i, align 1, !tbaa !13
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.aa, ptr %i.i, align 1, !tbaa !13
  %i.ab = load <16 x i8>, ptr %i.j, align 1, !tbaa !13
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.ac, ptr %i.j, align 1, !tbaa !13
  %i.ad = load <16 x i8>, ptr %i.k, align 1, !tbaa !13
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %i.ae, ptr %i.k, align 1, !tbaa !13
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  %i.af = getelementptr inbounds nuw i8, ptr %.01718.i, i64 64 ; 2 uses
  %i.ag = add nsw i32 %.019.i, -64                ; 2 uses
  %i.ah = icmp samesign ugt i32 %.019.i, 127
  br i1 %i.ah, label %.lr.ph.i, label %sha_update.exit, !llvm.loop !11

sha_update.exit:                                  ; preds = %.lr.ph.i, %bb.b
  %.017.lcssa.i = phi ptr [ %i.a, %bb.b ], [ %i.af, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.l, %bb.b ], [ %i.ag, %.lr.ph.i ]
  %i.ai = zext nneg i32 %.0.lcssa.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 1 %.017.lcssa.i, i64 %i.ai, i1 false)
  %i.aj = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 8192, ptr noundef %1)
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %sha_update.exit, %bb.a
  %i.am = load i32, ptr %i.c, align 4, !tbaa !8   ; 2 uses
  %i.an = load i32, ptr %i.d, align 4, !tbaa !10
  %i.ao = lshr i32 %i.am, 3
  %i.ap = and i32 %i.ao, 63                       ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 2 uses
  store i8 -128, ptr %i.as, align 1, !tbaa !13
  %i.at = icmp samesign ugt i32 %i.ap, 55
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.av = xor i32 %i.ap, 63
  %i.aw = zext nneg i32 %i.av to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.au, i8 0, i64 %i.aw, i1 false)
  tail call fastcc void @byte_reverse(ptr noundef nonnull %i.aq)
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.aq, i8 0, i64 56, i1 false)
  br label %sha_final.exit

bb.d:                                             ; preds = %._crit_edge
  %i.ax = sub nuw nsw i32 55, %i.ap
  %i.ay = zext nneg i32 %i.ax to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.au, i8 0, i64 %i.ay, i1 false)
  br label %sha_final.exit

sha_final.exit:                                   ; preds = %bb.c, %bb.d
  tail call fastcc void @byte_reverse(ptr noundef nonnull %i.aq)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.an, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.am, ptr %i.ba, align 4, !tbaa !4
  tail call fastcc void @sha_transform(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local void @sha_print(ptr noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.i) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 20}
!9 = !{!"", !6, i64 0, !5, i64 20, !5, i64 24, !6, i64 28}
!10 = !{!9, !5, i64 24}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
end_hunk_0
