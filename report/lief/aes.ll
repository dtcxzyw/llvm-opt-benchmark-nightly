inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@mbedtls_aes_crypt_ecb:bb.a
  %i.aak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i22, i64 12
  %i.aal = load i32, ptr %i.zl, align 4, !tbaa !14
  %i.aam = and i32 %.lcssa39.i19, 255
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr @FT0, i64 %i.aan
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !14
  %i.aaq = xor i32 %i.aap, %i.aal
  %i.aar = lshr i32 %.lcssa41.i18, 8
  %i.aas = and i32 %i.aar, 255
  %i.aat = zext nneg i32 %i.aas to i64
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr @FT1, i64 %i.aat
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !14
  %i.aaw = xor i32 %i.aaq, %i.aav
  %i.aax = lshr i32 %.lcssa.i21, 16
  %i.aay = and i32 %i.aax, 255
  %i.aaz = zext nneg i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr @FT2, i64 %i.aaz
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !14
  %i.abc = xor i32 %i.aaw, %i.abb
  %i.abd = lshr i32 %.lcssa37.i20, 24
  %i.abe = zext nneg i32 %i.abd to i64
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr @FT3, i64 %i.abe
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !14
  %i.abh = xor i32 %i.abc, %i.abg                 ; 5 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.abh, ptr %i.abi, align 4, !tbaa !14
  %i.abj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i22, i64 16
  %i.abk = load i32, ptr %i.aak, align 4, !tbaa !14
  %i.abl = and i32 %.lcssa41.i18, 255
  %i.abm = zext nneg i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr @FT0, i64 %i.abm
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !14
  %i.abp = xor i32 %i.abo, %i.abk
  %i.abq = lshr i32 %.lcssa.i21, 8
  %i.abr = and i32 %i.abq, 255
  %i.abs = zext nneg i32 %i.abr to i64
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr @FT1, i64 %i.abs
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !14
  %i.abv = xor i32 %i.abp, %i.abu
  %i.abw = lshr i32 %.lcssa37.i20, 16
  %i.abx = and i32 %i.abw, 255
  %i.aby = zext nneg i32 %i.abx to i64
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr @FT2, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !14
  %i.acb = xor i32 %i.abv, %i.aca
  %i.acc = lshr i32 %.lcssa39.i19, 24
  %i.acd = zext nneg i32 %i.acc to i64
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr @FT3, i64 %i.acd
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !14
  %i.acg = xor i32 %i.acb, %i.acf                 ; 5 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.acg, ptr %i.ach, align 4, !tbaa !14
  %i.aci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i22, i64 20
  %i.acj = load i32, ptr %i.abj, align 4, !tbaa !14
  %i.ack = and i32 %i.zj, 255
  %i.acl = zext nneg i32 %i.ack to i64
  %i.acm = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.acl
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !11
  %i.aco = zext i8 %i.acn to i32
  %i.acp = xor i32 %i.acj, %i.aco
  %i.acq = lshr i32 %i.aai, 8
  %i.acr = and i32 %i.acq, 255
  %i.acs = zext nneg i32 %i.acr to i64
  %i.act = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.acs
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !11
  %i.acv = zext i8 %i.acu to i32
  %i.acw = shl nuw nsw i32 %i.acv, 8
  %i.acx = xor i32 %i.acp, %i.acw
  %i.acy = lshr i32 %i.abh, 16
  %i.acz = and i32 %i.acy, 255
  %i.ada = zext nneg i32 %i.acz to i64
  %i.adb = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.ada
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !11
  %i.add = zext i8 %i.adc to i32
  %i.ade = shl nuw nsw i32 %i.add, 16
  %i.adf = xor i32 %i.acx, %i.ade
  %i.adg = lshr i32 %i.acg, 24
  %i.adh = zext nneg i32 %i.adg to i64
  %i.adi = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.adh
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !11
  %i.adk = zext i8 %i.adj to i32
  %i.adl = shl nuw i32 %i.adk, 24
  %i.adm = xor i32 %i.adf, %i.adl                 ; 2 uses
  store i32 %i.adm, ptr %4, align 4, !tbaa !14
  %i.adn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i22, i64 24
  %i.ado = load i32, ptr %i.aci, align 4, !tbaa !14
  %i.adp = and i32 %i.aai, 255
  %i.adq = zext nneg i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.adq
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !11
  %i.adt = zext i8 %i.ads to i32
  %i.adu = xor i32 %i.ado, %i.adt
  %i.adv = lshr i32 %i.abh, 8
  %i.adw = and i32 %i.adv, 255
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.adx
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !11
  %i.aea = zext i8 %i.adz to i32
  %i.aeb = shl nuw nsw i32 %i.aea, 8
  %i.aec = xor i32 %i.adu, %i.aeb
  %i.aed = lshr i32 %i.acg, 16
  %i.aee = and i32 %i.aed, 255
  %i.aef = zext nneg i32 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.aef
  %i.aeh = load i8, ptr %i.aeg, align 1, !tbaa !11
  %i.aei = zext i8 %i.aeh to i32
  %i.aej = shl nuw nsw i32 %i.aei, 16
  %i.aek = xor i32 %i.aec, %i.aej
  %i.ael = lshr i32 %i.zj, 24
  %i.aem = zext nneg i32 %i.ael to i64
  %i.aen = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.aem
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !11
  %i.aep = zext i8 %i.aeo to i32
  %i.aeq = shl nuw i32 %i.aep, 24
  %i.aer = xor i32 %i.aek, %i.aeq                 ; 2 uses
  store i32 %i.aer, ptr %i.yl, align 4, !tbaa !14
  %i.aes = getelementptr inbounds nuw i8, ptr %.0.lcssa.i22, i64 28
  %i.aet = load i32, ptr %i.adn, align 4, !tbaa !14
  %i.aeu = and i32 %i.abh, 255
  %i.aev = zext nneg i32 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.aev
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !11
  %i.aey = zext i8 %i.aex to i32
  %i.aez = xor i32 %i.aet, %i.aey
  %i.afa = lshr i32 %i.acg, 8
  %i.afb = and i32 %i.afa, 255
  %i.afc = zext nneg i32 %i.afb to i64
  %i.afd = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.afc
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !11
  %i.aff = zext i8 %i.afe to i32
  %i.afg = shl nuw nsw i32 %i.aff, 8
  %i.afh = xor i32 %i.aez, %i.afg
  %i.afi = lshr i32 %i.zj, 16
  %i.afj = and i32 %i.afi, 255
  %i.afk = zext nneg i32 %i.afj to i64
  %i.afl = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.afk
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !11
  %i.afn = zext i8 %i.afm to i32
  %i.afo = shl nuw nsw i32 %i.afn, 16
  %i.afp = xor i32 %i.afh, %i.afo
  %i.afq = lshr i32 %i.aai, 24
  %i.afr = zext nneg i32 %i.afq to i64
  %i.afs = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.afr
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !11
  %i.afu = zext i8 %i.aft to i32
  %i.afv = shl nuw i32 %i.afu, 24
  %i.afw = xor i32 %i.afp, %i.afv                 ; 2 uses
  store i32 %i.afw, ptr %i.yk, align 4, !tbaa !14
  %i.afx = load i32, ptr %i.aes, align 4, !tbaa !14
  %i.afy = and i32 %i.acg, 255
  %i.afz = zext nneg i32 %i.afy to i64
  %i.aga = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.afz
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !11
  %i.agc = zext i8 %i.agb to i32
  %i.agd = xor i32 %i.afx, %i.agc
  %i.age = lshr i32 %i.zj, 8
  %i.agf = and i32 %i.age, 255
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.agg
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !11
  %i.agj = zext i8 %i.agi to i32
  %i.agk = shl nuw nsw i32 %i.agj, 8
  %i.agl = xor i32 %i.agd, %i.agk
  %i.agm = lshr i32 %i.aai, 16
  %i.agn = and i32 %i.agm, 255
  %i.ago = zext nneg i32 %i.agn to i64
  %i.agp = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.ago
  %i.agq = load i8, ptr %i.agp, align 1, !tbaa !11
  %i.agr = zext i8 %i.agq to i32
  %i.ags = shl nuw nsw i32 %i.agr, 16
  %i.agt = xor i32 %i.agl, %i.ags
  %i.agu = lshr i32 %i.abh, 24
  %i.agv = zext nneg i32 %i.agu to i64
  %i.agw = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.agv
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !11
  %i.agy = zext i8 %i.agx to i32
  %i.agz = shl nuw i32 %i.agy, 24
  %i.aha = xor i32 %i.agt, %i.agz                 ; 2 uses
  store i32 %i.aha, ptr %i.yj, align 4, !tbaa !14
  store i32 %i.adm, ptr %3, align 1
  %i.ahb = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.aer, ptr %i.ahb, align 1
  %i.ahc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.afw, ptr %i.ahc, align 1
  %i.ahd = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.aha, ptr %i.ahd, align 1
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %4, i64 noundef 32) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %mbedtls_internal_aes_encrypt.exit, %mbedtls_internal_aes_decrypt.exit, %bb.c
  %.0 = phi i32 [ 0, %mbedtls_internal_aes_encrypt.exit ], [ %i.b, %bb.c ], [ 0, %mbedtls_internal_aes_decrypt.exit ], [ -135, %bb.a ]
  ret i32 %.0
}

declare i32 @mbedtls_aesni_crypt_ecb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_aes_crypt_cbc(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = and i64 %2, 15
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %.preheader58.preheader, label %mbedtls_xor_no_simd.exit

.preheader58.preheader:                           ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader58

.preheader58:                                     ; preds = %.preheader58.preheader, %mbedtls_xor_no_simd.exit53
  %.03875 = phi ptr [ %i.j, %mbedtls_xor_no_simd.exit53 ], [ %5, %.preheader58.preheader ] ; 5 uses
  %.03974 = phi ptr [ %i.i, %mbedtls_xor_no_simd.exit53 ], [ %4, %.preheader58.preheader ] ; 3 uses
  %.04273 = phi i64 [ %i.k, %mbedtls_xor_no_simd.exit53 ], [ %2, %.preheader58.preheader ]
  %.sroa.0.0.copyload = load <16 x i8>, ptr %.03974, align 1
  %i.e = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %.03974, ptr noundef %.03875) ; 2 uses
  %.not50 = icmp eq i32 %i.e, 0
  br i1 %.not50, label %mbedtls_xor_no_simd.exit53, label %.loopexit

mbedtls_xor_no_simd.exit53:                       ; preds = %.preheader58
  %.0.copyload.i54 = load i64, ptr %.03875, align 1
  %.0.copyload.i = load i64, ptr %3, align 1
  %i.f = xor i64 %.0.copyload.i, %.0.copyload.i54
  store i64 %i.f, ptr %.03875, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %.03875, i64 8 ; 2 uses
  %.0.copyload.i54.1 = load i64, ptr %i.g, align 1
  %.0.copyload.i.1 = load i64, ptr %i.d, align 1
  %i.h = xor i64 %.0.copyload.i.1, %.0.copyload.i54.1
  store i64 %i.h, ptr %i.g, align 1
  store <16 x i8> %.sroa.0.0.copyload, ptr %3, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.03974, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.03875, i64 16
  %i.k = add i64 %.04273, -16                     ; 2 uses
  %.not49 = icmp eq i64 %i.k, 0
  br i1 %.not49, label %.loopexit, label %.preheader58, !llvm.loop !28

mbedtls_xor_no_simd.exit:                         ; preds = %bb.d, %bb.e
  %.069 = phi ptr [ %.168, %bb.e ], [ %3, %bb.d ] ; 2 uses
  %.168 = phi ptr [ %i.s, %bb.e ], [ %5, %bb.d ]  ; 7 uses
  %.14067 = phi ptr [ %i.r, %bb.e ], [ %4, %bb.d ] ; 3 uses
  %.14366 = phi i64 [ %i.t, %bb.e ], [ %2, %bb.d ]
  %.0.copyload.i56 = load i64, ptr %.14067, align 1
  %.0.copyload.i55 = load i64, ptr %.069, align 1
  %i.l = xor i64 %.0.copyload.i55, %.0.copyload.i56
  store i64 %i.l, ptr %.168, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.14067, i64 8
  %.0.copyload.i56.1 = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %.0.copyload.i55.1 = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i55.1, %.0.copyload.i56.1
  %i.p = getelementptr inbounds nuw i8, ptr %.168, i64 8
  store i64 %i.o, ptr %i.p, align 1
  %i.q = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %.168, ptr noundef nonnull %.168) ; 2 uses
  %.not48 = icmp eq i32 %i.q, 0
  br i1 %.not48, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %mbedtls_xor_no_simd.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.14067, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.168, i64 16
  %i.t = add i64 %.14366, -16                     ; 2 uses
  %.not47 = icmp eq i64 %i.t, 0
  br i1 %.not47, label %bb.f, label %mbedtls_xor_no_simd.exit, !llvm.loop !29

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) %.168, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %mbedtls_xor_no_simd.exit, %.preheader58, %mbedtls_xor_no_simd.exit53, %bb.f, %bb.c, %bb.b, %bb.a
  %.041 = phi i32 [ -34, %bb.c ], [ -135, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.e, %.preheader58 ], [ 0, %mbedtls_xor_no_simd.exit53 ], [ %i.q, %mbedtls_xor_no_simd.exit ]
  ret i32 %.041
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_aes_crypt_cfb128(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !30     ; 5 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %.loopexit51, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %1, 0
  %.not4962 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader52

.preheader52:                                     ; preds = %bb.c
  br i1 %.not4962, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not4962, label %.loopexit, label %.lr.ph66

.lr.ph66:                                         ; preds = %.preheader, %bb.e
  %.in68 = phi i64 [ %i.d, %bb.e ], [ %2, %.preheader ]
  %.065 = phi i64 [ %i.n, %bb.e ], [ %i.a, %.preheader ] ; 3 uses
  %.03964 = phi ptr [ %i.l, %bb.e ], [ %6, %.preheader ] ; 2 uses
  %.04163 = phi ptr [ %i.g, %bb.e ], [ %5, %.preheader ] ; 2 uses
  %i.d = add i64 %.in68, -1                       ; 2 uses
  %i.e = icmp eq i64 %.065, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph66
  %i.f = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %4, ptr noundef %4) ; 2 uses
  %.not50 = icmp eq i32 %i.f, 0
  br i1 %.not50, label %bb.e, label %.loopexit51

bb.e:                                             ; preds = %bb.d, %.lr.ph66
  %i.g = getelementptr inbounds nuw i8, ptr %.04163, i64 1
  %i.h = load i8, ptr %.04163, align 1, !tbaa !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 %.065 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %i.k = xor i8 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %.03964, i64 1
  store i8 %i.k, ptr %.03964, align 1, !tbaa !11
  store i8 %i.h, ptr %i.i, align 1, !tbaa !11
  %i.m = add nuw nsw i64 %.065, 1
  %i.n = and i64 %i.m, 15                         ; 2 uses
  %.not49 = icmp eq i64 %i.d, 0
  br i1 %.not49, label %.loopexit, label %.lr.ph66, !llvm.loop !31

.lr.ph:                                           ; preds = %.preheader52, %bb.g
  %.in = phi i64 [ %i.o, %bb.g ], [ %2, %.preheader52 ]
  %.161 = phi i64 [ %i.y, %bb.g ], [ %i.a, %.preheader52 ] ; 3 uses
  %.14060 = phi ptr [ %i.w, %bb.g ], [ %6, %.preheader52 ] ; 2 uses
  %.14259 = phi ptr [ %i.t, %bb.g ], [ %5, %.preheader52 ] ; 2 uses
  %i.o = add i64 %.in, -1                         ; 2 uses
  %i.p = icmp eq i64 %.161, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.q = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %4, ptr noundef %4) ; 2 uses
  %.not48 = icmp eq i32 %i.q, 0
  br i1 %.not48, label %bb.g, label %.loopexit51

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %.161 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %.14259, i64 1
  %i.u = load i8, ptr %.14259, align 1, !tbaa !11
  %i.v = xor i8 %i.u, %i.s                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.14060, i64 1
  store i8 %i.v, ptr %.14060, align 1, !tbaa !11
  store i8 %i.v, ptr %i.r, align 1, !tbaa !11
  %i.x = add nuw nsw i64 %.161, 1
  %i.y = and i64 %i.x, 15                         ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !32

.loopexit:                                        ; preds = %bb.g, %bb.e, %.preheader52, %.preheader
  %.2 = phi i64 [ %i.n, %bb.e ], [ %i.a, %.preheader ], [ %i.a, %.preheader52 ], [ %i.y, %bb.g ]
  store i64 %.2, ptr %3, align 8, !tbaa !30
  br label %.loopexit51

.loopexit51:                                      ; preds = %bb.f, %bb.d, %.loopexit, %bb.b, %bb.a
  %.038 = phi i32 [ -135, %bb.b ], [ -135, %bb.a ], [ %i.f, %bb.d ], [ 0, %.loopexit ], [ %i.q, %bb.f ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_aes_crypt_cfb8(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not24 = icmp eq i64 %2, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.a = add i64 %2, -1                           ; 2 uses
  %.sroa.4.1..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 15 ; 2 uses
  %trunc = trunc nuw i32 %1 to i1
  br i1 %trunc, label %.lr.ph.split.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %bb.b
  %i.b = phi i64 [ %i.i, %bb.b ], [ %i.a, %.lr.ph ] ; 2 uses
  %.01926.us = phi ptr [ %i.h, %bb.b ], [ %5, %.lr.ph ] ; 2 uses
  %.02025.us = phi ptr [ %i.f, %bb.b ], [ %4, %.lr.ph ] ; 2 uses
  %.sroa.0.sroa.0.0.copyload = load <16 x i8>, ptr %3, align 1
  %i.c = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %3) ; 2 uses
  %.not23.us = icmp eq i32 %i.c, 0
  br i1 %.not23.us, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.d = load i8, ptr %.02025.us, align 1, !tbaa !11 ; 2 uses
  %i.e = load i8, ptr %3, align 1, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %.02025.us, i64 1
  %i.g = xor i8 %i.d, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.01926.us, i64 1
  store i8 %i.g, ptr %.01926.us, align 1, !tbaa !11
  %.sroa.0.sroa.0.1.vec.extract = shufflevector <16 x i8> %.sroa.0.sroa.0.0.copyload, <16 x i8> poison, <15 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <15 x i8> %.sroa.0.sroa.0.1.vec.extract, ptr %3, align 1
  store i8 %i.d, ptr %.sroa.4.1..sroa_idx, align 1
  %i.i = add i64 %i.b, -1
  %.not.us = icmp eq i64 %i.b, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !33

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %i.q, %bb.c ], [ %i.a, %.lr.ph ] ; 2 uses
  %.01926.us32 = phi ptr [ %i.p, %bb.c ], [ %5, %.lr.ph ] ; 2 uses
  %.02025.us33 = phi ptr [ %i.m, %bb.c ], [ %4, %.lr.ph ] ; 2 uses
  %.sroa.0.sroa.0.0.copyload57 = load <16 x i8>, ptr %3, align 1
  %i.k = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %3) ; 2 uses
  %.not23.us34 = icmp eq i32 %i.k, 0
  br i1 %.not23.us34, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph.split.split.us
  %i.l = load i8, ptr %3, align 1, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %.02025.us33, i64 1
  %i.n = load i8, ptr %.02025.us33, align 1, !tbaa !11
  %i.o = xor i8 %i.n, %i.l                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01926.us32, i64 1
  store i8 %i.o, ptr %.01926.us32, align 1, !tbaa !11
  %.sroa.0.sroa.0.1.vec.extract60 = shufflevector <16 x i8> %.sroa.0.sroa.0.0.copyload57, <16 x i8> poison, <15 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <15 x i8> %.sroa.0.sroa.0.1.vec.extract60, ptr %3, align 1
  store i8 %i.o, ptr %.sroa.4.1..sroa_idx, align 1
  %i.q = add i64 %i.j, -1
  %.not.us35 = icmp eq i64 %i.j, 0
  br i1 %.not.us35, label %.loopexit, label %.lr.ph.split.split.us, !llvm.loop !33

.loopexit:                                        ; preds = %bb.b, %.lr.ph.split.us.split, %bb.c, %.lr.ph.split.split.us, %.preheader, %bb.a
  %.0 = phi i32 [ -135, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ], [ %i.k, %.lr.ph.split.split.us ], [ %i.c, %.lr.ph.split.us.split ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_aes_crypt_ofb(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !30     ; 3 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not26 = icmp eq i64 %1, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.in = phi i64 [ %i.c, %bb.c ], [ %1, %.preheader ]
  %.029 = phi i64 [ %i.m, %bb.c ], [ %i.a, %.preheader ] ; 3 uses
  %.01728 = phi ptr [ %i.k, %bb.c ], [ %5, %.preheader ] ; 2 uses
  %.01827 = phi ptr [ %i.f, %bb.c ], [ %4, %.preheader ] ; 2 uses
  %i.c = add i64 %.in, -1                         ; 2 uses
  %i.d = icmp eq i64 %.029, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %3, ptr noundef %3) ; 2 uses
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.01827, i64 1
  %i.g = load i8, ptr %.01827, align 1, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %.029
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = xor i8 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %.01728, i64 1
  store i8 %i.j, ptr %.01728, align 1, !tbaa !11
  %i.l = add nuw nsw i64 %.029, 1
  %i.m = and i64 %i.l, 15                         ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.0.lcssa = phi i64 [ %i.a, %.preheader ], [ %i.m, %bb.c ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge, %bb.a
  %.019 = phi i32 [ -135, %bb.a ], [ 0, %._crit_edge ], [ %i.e, %bb.b ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_aes_crypt_ctr(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !30     ; 3 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.loopexit, label %.preheader57

.preheader57:                                     ; preds = %bb.a
  %.not66 = icmp eq i64 %1, 0
  br i1 %.not66, label %._crit_edge65, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %.preheader57
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.i = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.i, -32
  br label %.lr.ph64

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %._crit_edge
  %.03263 = phi i64 [ %i.cj, %._crit_edge ], [ 0, %.lr.ph64.preheader ] ; 5 uses
  %.03662 = phi i64 [ 0, %._crit_edge ], [ %i.d, %.lr.ph64.preheader ] ; 4 uses
  %i.j = icmp eq i64 %.03662, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph64
  %i.k = tail call i32 @mbedtls_aes_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.preheader56, label %.loopexit

.preheader56:                                     ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %i.f, align 1
  %i.l = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  store i32 %i.n, ptr %i.f, align 1
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %.preheader56.1, label %mbedtls_ctr_increment_counter.exit

.preheader56.1:                                   ; preds = %.preheader56
  %.0.copyload.i.i.1 = load i32, ptr %i.g, align 1
  %i.p = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1)
  %i.q = add i32 %i.p, 1                          ; 2 uses
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  store i32 %i.r, ptr %i.g, align 1
  %i.s = icmp eq i32 %i.q, 0
  br i1 %i.s, label %.preheader56.2, label %mbedtls_ctr_increment_counter.exit

.preheader56.2:                                   ; preds = %.preheader56.1
  %.0.copyload.i.i.2 = load i32, ptr %i.h, align 1
  %i.t = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.2)
  %i.u = add i32 %i.t, 1                          ; 2 uses
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  store i32 %i.v, ptr %i.h, align 1
  %i.w = icmp eq i32 %i.u, 0
  br i1 %i.w, label %.preheader56.3, label %mbedtls_ctr_increment_counter.exit

.preheader56.3:                                   ; preds = %.preheader56.2
  %.0.copyload.i.i.3 = load i32, ptr %3, align 1
  %i.x = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.3)
  %i.y = add i32 %i.x, 1
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  store i32 %i.z, ptr %3, align 1
  br label %mbedtls_ctr_increment_counter.exit

bb.c:                                             ; preds = %.lr.ph64
  %i.aa = sub nuw nsw i64 16, %.03662
  br label %mbedtls_ctr_increment_counter.exit

mbedtls_ctr_increment_counter.exit:               ; preds = %.preheader56, %.preheader56.1, %.preheader56.2, %.preheader56.3, %bb.c
  %.0 = phi i64 [ %i.aa, %bb.c ], [ 16, %.preheader56.3 ], [ 16, %.preheader56.2 ], [ 16, %.preheader56.1 ], [ 16, %.preheader56 ]
  %i.ab = sub i64 %1, %.03263
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.ab) ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 %.03263 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 %.03263 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %.03662 ; 8 uses
  %.not.i58 = icmp samesign ult i64 %spec.select, 8
  br i1 %.not.i58, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.1, %mbedtls_ctr_increment_counter.exit
  %.0.i.lcssa = phi i64 [ 0, %mbedtls_ctr_increment_counter.exit ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 6 uses
  %i.af = icmp samesign ult i64 %.0.i.lcssa, %spec.select
  br i1 %i.af, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ag = sub nuw nsw i64 %spec.select, %.0.i.lcssa ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph61.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ah = add i64 %.03263, %i.c
  %i.ai = add i64 %.03662, %i.a
  %i.aj = sub i64 %i.ai, %i.ah
  %diff.check74 = icmp ugt i64 %i.aj, -32
  %conflict.rdx = or i1 %diff.check, %diff.check74
  br i1 %conflict.rdx, label %.lr.ph61.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.ak = and i64 %spec.select, 7                 ; 2 uses
  %n.vec79 = sub nsw i64 %i.ag, %i.ak             ; 2 uses
  %i.al = add i64 %.0.i.lcssa, %n.vec79
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 2 uses
  %i.am = add nuw i64 %.0.i.lcssa, %index80       ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.am
  %wide.load81 = load <8 x i8>, ptr %i.an, align 1, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.am
  %wide.load82 = load <8 x i8>, ptr %i.ao, align 1, !tbaa !11
  %i.ap = xor <8 x i8> %wide.load82, %wide.load81
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.am
  store <8 x i8> %i.ap, ptr %i.aq, align 1, !tbaa !11
  %index.next83 = add nuw i64 %index80, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next83, %n.vec79
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %i.ak, 0
  br i1 %cmp.n84, label %._crit_edge, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i60.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck ], [ %.0.i.lcssa, %iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 4 uses
  %i.as = sub i64 %spec.select, %.1.i60.ph
  %xtraiter = and i64 %i.as, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol

.lr.ph61.prol:                                    ; preds = %.lr.ph61.preheader, %.lr.ph61.prol
  %.1.i60.prol = phi i64 [ %i.az, %.lr.ph61.prol ], [ %.1.i60.ph, %.lr.ph61.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph61.prol ], [ 0, %.lr.ph61.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.1.i60.prol
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i60.prol
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = xor i8 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i60.prol
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !11
  %i.az = add nuw nsw i64 %.1.i60.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol, !llvm.loop !36

.lr.ph61.prol.loopexit:                           ; preds = %.lr.ph61.prol, %.lr.ph61.preheader
  %.1.i60.unr = phi i64 [ %.1.i60.ph, %.lr.ph61.preheader ], [ %i.az, %.lr.ph61.prol ]
  %i.ba = sub i64 %.1.i60.ph, %spec.select
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge, label %.lr.ph61

.lr.ph:                                           ; preds = %mbedtls_ctr_increment_counter.exit
  %.0.copyload.i47 = load i64, ptr %i.ad, align 1
  %.0.copyload.i = load i64, ptr %i.ae, align 1
  %i.bc = xor i64 %.0.copyload.i, %.0.copyload.i47
  store i64 %i.bc, ptr %i.ac, align 1
  %.not.i = icmp samesign ult i64 %spec.select, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.0.copyload.i47.1 = load i64, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.be, align 1
  %i.bf = xor i64 %.0.copyload.i.1, %.0.copyload.i47.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.bf, ptr %i.bg, align 1
  br label %.preheader

.lr.ph61:                                         ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61
  %.1.i60 = phi i64 [ %i.ci, %.lr.ph61 ], [ %.1.i60.unr, %.lr.ph61.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.1.i60
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i60
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bl = xor i8 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i60
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !11
  %i.bn = add nuw nsw i64 %.1.i60, 1              ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bn
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.bs = xor i8 %i.br, %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bn
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !11
  %i.bu = add nuw nsw i64 %.1.i60, 2              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bu
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.bz = xor i8 %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bu
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !11
  %i.cb = add nuw nsw i64 %.1.i60, 3              ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.cb
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = xor i8 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cb
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !11
  %i.ci = add nuw nsw i64 %.1.i60, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ci, %spec.select
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph61, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61, %vec.epilog.middle.block, %.preheader
  %i.cj = add i64 %spec.select, %.03263           ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %1
  br i1 %i.ck, label %.lr.ph64, label %._crit_edge65.loopexit, !llvm.loop !38

._crit_edge65.loopexit:                           ; preds = %._crit_edge
  %.pre = load i64, ptr %2, align 8, !tbaa !30
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %._crit_edge65.loopexit, %.preheader57
  %i.cl = phi i64 [ %.pre, %._crit_edge65.loopexit ], [ %i.d, %.preheader57 ]
  %i.cm = add i64 %i.cl, %1
  %i.cn = and i64 %i.cm, 15
  store i64 %i.cn, ptr %2, align 8, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge65, %bb.a
  %.040 = phi i32 [ -135, %bb.a ], [ 0, %._crit_edge65 ], [ %i.k, %bb.b ]
  ret i32 %.040
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_aes_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 13 uses
  %i.b = alloca [64 x i8], align 16               ; 32 uses
  %i.c = alloca [16 x i8], align 16               ; 18 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 3 uses
  %1 = alloca %struct.mbedtls_aes_context, align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %1, i8 0, i64 288, i1 false)
  %.not218 = icmp eq i32 %0, 0                    ; 16 uses
  br i1 %.not218, label %.backedge356.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #9
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts151 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %str.3.sink = phi ptr [ @str.3, %bb.c ], [ @str.1, %bb.b ]
  %puts152 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.3.sink) ; 0 uses
  br label %.backedge356.preheader

.backedge356.preheader:                           ; preds = %.sink.split, %bb.a
  br label %.backedge356

.backedge356:                                     ; preds = %.backedge356.backedge, %.backedge356.preheader
  %.0125246 = phi i32 [ 0, %.backedge356.preheader ], [ %.0125246.be, %.backedge356.backedge ] ; 5 uses
  %i.h = lshr i32 %.0125246, 1                    ; 2 uses
  %i.i = shl nuw nsw i32 %i.h, 6
  %i.j = add nuw nsw i32 %i.i, 128                ; 4 uses
  %i.k = and i32 %.0125246, 1                     ; 3 uses
  br i1 %.not218, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.backedge356
  %i.l = icmp eq i32 %i.k, 0
  %i.m = select i1 %i.l, ptr @.str.6, ptr @.str.7
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.j, ptr noundef nonnull %i.m) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.backedge356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.o = icmp eq i32 %i.k, 0
  %i.p = zext nneg i32 %i.h to i64
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = call i32 @mbedtls_aes_setkey_dec(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %i.j)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = call i32 @mbedtls_aes_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %i.j)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %aes_test_ecb_enc.sink = phi ptr [ @aes_test_ecb_enc, %bb.g ], [ @aes_test_ecb_dec, %bb.f ]
  %.0 = phi i32 [ %i.r, %bb.g ], [ %i.q, %bb.f ]  ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %aes_test_ecb_enc.sink, i64 %i.p
  %i.t = icmp eq i32 %.0, -134
  %i.u = icmp eq i32 %i.j, 192
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not179 = icmp eq i32 %.0, 0
  br i1 %.not179, label %.preheader230, label %mbedtls_aes_crypt_cfb128.exit

bb.j:                                             ; preds = %.preheader230
  %i.v = add nuw nsw i32 %.0133245, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, 10000
  br i1 %exitcond.not, label %bb.k, label %.preheader230, !llvm.loop !39

.preheader230:                                    ; preds = %bb.i, %bb.j
  %.0133245 = phi i32 [ %i.v, %bb.j ], [ 0, %bb.i ]
  %i.w = call i32 @mbedtls_aes_crypt_ecb(ptr noundef nonnull %1, i32 noundef %i.k, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) ; 2 uses
  %.not183 = icmp eq i32 %i.w, 0
  br i1 %.not183, label %bb.j, label %mbedtls_aes_crypt_cfb128.exit

bb.k:                                             ; preds = %bb.j
  %i.x = load i128, ptr %i.b, align 16
  %i.y = load i128, ptr %i.s, align 1
  %i.z = icmp ne i128 %i.x, %i.y
  %i.aa = zext i1 %i.z to i32
  %.not181 = icmp eq i32 %i.aa, 0
  br i1 %.not181, label %bb.l, label %mbedtls_aes_crypt_cfb128.exit

bb.l:                                             ; preds = %bb.k
  br i1 %.not218, label %.thread311, label %.thread

bb.m:                                             ; preds = %bb.h
  %puts185 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.ab = add nuw nsw i32 %.0125246, 1            ; 2 uses
  %exitcond281.not = icmp eq i32 %i.ab, 6
  br i1 %exitcond281.not, label %bb.n, label %.backedge356.backedge

.backedge356.backedge:                            ; preds = %bb.m, %.thread, %.thread311
  %.0125246.be = phi i32 [ %i.ad, %.thread ], [ %i.ac, %.thread311 ], [ %i.ab, %bb.m ]
  br label %.backedge356, !llvm.loop !40

.thread311:                                       ; preds = %bb.l
  %i.ac = add nuw nsw i32 %.0125246, 1            ; 2 uses
  %exitcond281.not312 = icmp eq i32 %i.ac, 6
  br i1 %exitcond281.not312, label %.thread313, label %.backedge356.backedge

.thread:                                          ; preds = %bb.l
  %puts182 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.ad = add nuw nsw i32 %.0125246, 1            ; 2 uses
  %exitcond281.not309 = icmp eq i32 %i.ad, 6
  br i1 %exitcond281.not309, label %.thread310, label %.backedge356.backedge

bb.n:                                             ; preds = %bb.m
  br i1 %.not218, label %.thread313, label %.thread310

.thread310:                                       ; preds = %.thread, %bb.n
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.thread313

.thread313:                                       ; preds = %.thread311, %.thread310, %bb.n
  br label %.backedge352

.backedge352:                                     ; preds = %.backedge352.backedge, %.thread313
  %.1126250 = phi i32 [ 0, %.thread313 ], [ %.1126250.be, %.backedge352.backedge ] ; 5 uses
  %i.ae = lshr i32 %.1126250, 1                   ; 2 uses
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = add nuw nsw i32 %i.af, 128              ; 4 uses
  %i.ah = and i32 %.1126250, 1                    ; 2 uses
  br i1 %.not218, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.backedge352
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = select i1 %i.ai, ptr @.str.6, ptr @.str.7
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.ag, ptr noundef nonnull %i.aj) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.backedge352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.al = icmp eq i32 %i.ah, 0                    ; 2 uses
  %i.am = zext nneg i32 %i.ae to i64
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = call i32 @mbedtls_aes_setkey_dec(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %i.ag)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ao = call i32 @mbedtls_aes_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %i.ag)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %aes_test_cbc_enc.sink = phi ptr [ @aes_test_cbc_enc, %bb.r ], [ @aes_test_cbc_dec, %bb.q ]
  %.1 = phi i32 [ %i.ao, %bb.r ], [ %i.an, %bb.q ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %aes_test_cbc_enc.sink, i64 %i.am
  %i.aq = icmp eq i32 %.1, -134
  %i.ar = icmp eq i32 %i.ag, 192
  %or.cond3 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond3, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not172 = icmp eq i32 %.1, 0
  br i1 %.not172, label %.preheader, label %mbedtls_aes_crypt_cfb128.exit

.preheader:                                       ; preds = %bb.t
  br i1 %i.al, label %.split.us, label %.split136

.split.us:                                        ; preds = %.preheader, %mbedtls_xor_no_simd.exit53.i.us
  %.1134247.us = phi i32 [ %i.aw, %mbedtls_xor_no_simd.exit53.i.us ], [ 0, %.preheader ]
  %.sroa.0422.0.copyload = load <16 x i8>, ptr %i.b, align 16
  %i.as = call i32 @mbedtls_aes_crypt_ecb(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) ; 2 uses
  %.not50.i.us = icmp eq i32 %i.as, 0
  br i1 %.not50.i.us, label %mbedtls_xor_no_simd.exit53.i.us, label %mbedtls_aes_crypt_cfb128.exit

mbedtls_xor_no_simd.exit53.i.us:                  ; preds = %.split.us
  %i.at = load <2 x i64>, ptr %i.b, align 16
  %i.au = load <2 x i64>, ptr %i.c, align 16
  %i.av = xor <2 x i64> %i.au, %i.at
  store <2 x i64> %i.av, ptr %i.b, align 16
  store <16 x i8> %.sroa.0422.0.copyload, ptr %i.c, align 16
  %i.aw = add nuw nsw i32 %.1134247.us, 1         ; 2 uses
  %exitcond283.not = icmp eq i32 %i.aw, 10000
  br i1 %exitcond283.not, label %.split249.us, label %.split.us, !llvm.loop !41

.split136:                                        ; preds = %.preheader, %mbedtls_aes_crypt_cbc.exit187.thread
  %.sroa.0421.1 = phi <16 x i8> [ %.sroa.0421.0.copyload, %mbedtls_aes_crypt_cbc.exit187.thread ], [ zeroinitializer, %.preheader ] ; 2 uses
  %.1134247 = phi i32 [ %i.ba, %mbedtls_aes_crypt_cbc.exit187.thread ], [ 0, %.preheader ]
  %.sroa.0421.0.copyload = load <16 x i8>, ptr %i.b, align 16
  store <16 x i8> %.sroa.0421.1, ptr %i.b, align 16
  %.cast = bitcast <16 x i8> %.sroa.0421.1 to <2 x i64>
  %i.ax = load <2 x i64>, ptr %i.c, align 16
  %i.ay = xor <2 x i64> %i.ax, %.cast
  store <2 x i64> %i.ay, ptr %i.b, align 16
  %i.az = call i32 @mbedtls_aes_crypt_ecb(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) ; 2 uses
  %.not48.i = icmp eq i32 %i.az, 0
  br i1 %.not48.i, label %mbedtls_aes_crypt_cbc.exit187.thread, label %mbedtls_aes_crypt_cfb128.exit

mbedtls_aes_crypt_cbc.exit187.thread:             ; preds = %.split136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.ba = add nuw nsw i32 %.1134247, 1            ; 2 uses
  %exitcond282.not = icmp eq i32 %i.ba, 10000
  br i1 %exitcond282.not, label %.split249.us, label %.split136, !llvm.loop !41

.split249.us:                                     ; preds = %mbedtls_aes_crypt_cbc.exit187.thread, %mbedtls_xor_no_simd.exit53.i.us
  %i.bb = load i128, ptr %i.b, align 16
  %i.bc = load i128, ptr %i.ap, align 1
  %i.bd = icmp ne i128 %i.bb, %i.bc
  %i.be = zext i1 %i.bd to i32
  %.not174 = icmp eq i32 %i.be, 0
  br i1 %.not174, label %bb.u, label %mbedtls_aes_crypt_cfb128.exit

bb.u:                                             ; preds = %.split249.us
  br i1 %.not218, label %.thread317, label %.thread314

bb.v:                                             ; preds = %bb.s
  %puts178 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.bf = add nuw nsw i32 %.1126250, 1            ; 2 uses
  %exitcond284.not = icmp eq i32 %i.bf, 6
  br i1 %exitcond284.not, label %bb.w, label %.backedge352.backedge

.backedge352.backedge:                            ; preds = %bb.v, %.thread314, %.thread317
  %.1126250.be = phi i32 [ %i.bf, %bb.v ], [ %i.bh, %.thread314 ], [ %i.bg, %.thread317 ]
  br label %.backedge352, !llvm.loop !42

.thread317:                                       ; preds = %bb.u
  %i.bg = add nuw nsw i32 %.1126250, 1            ; 2 uses
  %exitcond284.not318 = icmp eq i32 %i.bg, 6
  br i1 %exitcond284.not318, label %.thread319.preheader, label %.backedge352.backedge

.thread314:                                       ; preds = %bb.u
  %puts175 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.bh = add nuw nsw i32 %.1126250, 1            ; 2 uses
  %exitcond284.not315 = icmp eq i32 %i.bh, 6
  br i1 %exitcond284.not315, label %.thread316, label %.backedge352.backedge

bb.w:                                             ; preds = %bb.v
  br i1 %.not218, label %.thread319.preheader, label %.thread316

.thread316:                                       ; preds = %.thread314, %bb.w
  %putchar153 = call i32 @putchar(i32 10)         ; 0 uses
  br label %.thread319.preheader

.thread319.preheader:                             ; preds = %.thread317, %.thread316, %bb.w
  br label %.thread319

.thread319:                                       ; preds = %.thread319.backedge, %.thread319.preheader
  %.2127254 = phi i32 [ 0, %.thread319.preheader ], [ %.2127254.be, %.thread319.backedge ] ; 5 uses
  %i.bi = lshr i32 %.2127254, 1                   ; 2 uses
  %i.bj = shl nuw nsw i32 %i.bi, 6
  %i.bk = add nuw nsw i32 %i.bj, 128              ; 4 uses
  %i.bl = and i32 %.2127254, 1                    ; 2 uses
  br i1 %.not218, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread319
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = select i1 %i.bm, ptr @.str.6, ptr @.str.7
  %i.bo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.bk, ptr noundef nonnull %i.bn) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @aes_test_ofb_iv, i64 16, i1 false)
  %i.bp = zext nneg i32 %i.bi to i64              ; 3 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr @aes_test_ofb_key, i64 %i.bp
  %i.br = lshr exact i32 %i.bk, 3
  %i.bs = zext nneg i32 %i.br to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 16 dereferenceable(1) %i.bq, i64 %i.bs, i1 false)
  %i.bt = call i32 @mbedtls_aes_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %i.bk) ; 3 uses
  %i.bu = icmp eq i32 %i.bt, -134
  %i.bv = icmp eq i32 %i.bk, 192
  %or.cond5 = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond5, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not166 = icmp eq i32 %i.bt, 0
  br i1 %.not166, label %bb.aa, label %mbedtls_aes_crypt_cfb128.exit

bb.aa:                                            ; preds = %bb.z
  %i.bw = icmp eq i32 %i.bl, 0
  br i1 %i.bw, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr @aes_test_cfb128_ct, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.bx, i64 64, i1 false)
  br label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %bb.ad, %bb.ab
  %.in68.i = phi i64 [ %i.by, %bb.ad ], [ 64, %bb.ab ]
  %.065.i = phi i64 [ %i.ch, %bb.ad ], [ 0, %bb.ab ] ; 3 uses
  %.03964.i = phi ptr [ %i.cb, %bb.ad ], [ %i.b, %bb.ab ] ; 3 uses
  %i.by = add nsw i64 %.in68.i, -1                ; 2 uses
  %i.bz = icmp eq i64 %.065.i, 0
  br i1 %i.bz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph66.i
  %i.ca = call i32 @mbedtls_aes_crypt_ecb(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 2 uses
  %.not50.i189 = icmp eq i32 %i.ca, 0
  br i1 %.not50.i189, label %bb.ad, label %mbedtls_aes_crypt_cfb128.exit

bb.ad:                                            ; preds = %bb.ac, %.lr.ph66.i
  %i.cb = getelementptr i8, ptr %.03964.i, i64 1
  %i.cc = load i8, ptr %.03964.i, align 1, !tbaa !11 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %.065.i ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = xor i8 %i.ce, %i.cc
  store i8 %i.cf, ptr %.03964.i, align 1, !tbaa !11
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !11
  %i.cg = add nuw nsw i64 %.065.i, 1
  %i.ch = and i64 %i.cg, 15                       ; 2 uses
  %.not49.i188 = icmp eq i64 %i.by, 0
  br i1 %.not49.i188, label %.loopexit.i, label %.lr.ph66.i, !llvm.loop !31

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) @aes_test_cfb128_pt, i64 64, i1 false)
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr @aes_test_cfb128_ct, i64 %i.bp
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag, %bb.ae
  %.in.i = phi i64 [ %i.cj, %bb.ag ], [ 64, %bb.ae ]
  %.161.i = phi i64 [ %i.cs, %bb.ag ], [ 0, %bb.ae ] ; 3 uses
  %.14060.i = phi ptr [ %i.co, %bb.ag ], [ %i.b, %bb.ae ] ; 3 uses
  %i.cj = add nsw i64 %.in.i, -1                  ; 2 uses
  %i.ck = icmp eq i64 %.161.i, 0
  br i1 %i.ck, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i
  %i.cl = call i32 @mbedtls_aes_crypt_ecb(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 2 uses
  %.not48.i193 = icmp eq i32 %i.cl, 0
  br i1 %.not48.i193, label %bb.ag, label %mbedtls_aes_crypt_cfb128.exit

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 %.161.i ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = getelementptr i8, ptr %.14060.i, i64 1
  %i.cp = load i8, ptr %.14060.i, align 1, !tbaa !11
  %i.cq = xor i8 %i.cp, %i.cn                     ; 2 uses
  store i8 %i.cq, ptr %.14060.i, align 1, !tbaa !11
  store i8 %i.cq, ptr %i.cm, align 1, !tbaa !11
  %i.cr = add nuw nsw i64 %.161.i, 1
  %i.cs = and i64 %i.cr, 15                       ; 2 uses
  %.not.i190 = icmp eq i64 %i.cj, 0
  br i1 %.not.i190, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !32

.loopexit.i:                                      ; preds = %bb.ag, %bb.ad
  %storemerge = phi i64 [ %i.ch, %bb.ad ], [ %i.cs, %bb.ag ] ; 2 uses
  %.2130.ph = phi ptr [ @aes_test_cfb128_pt, %bb.ad ], [ %i.ci, %bb.ag ]
  %bcmp168 = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %i.b, ptr noundef nonnull dereferenceable(64) %.2130.ph, i64 64)
  %.not169 = icmp eq i32 %bcmp168, 0
  br i1 %.not169, label %bb.ah, label %mbedtls_aes_crypt_cfb128.exit

bb.ah:                                            ; preds = %.loopexit.i
  br i1 %.not218, label %.thread326, label %.thread320

bb.ai:                                            ; preds = %bb.y
  %puts171 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.ct = add nuw nsw i32 %.2127254, 1            ; 2 uses
  %exitcond285.not = icmp eq i32 %i.ct, 6
  br i1 %exitcond285.not, label %bb.aj, label %.thread319.backedge

.thread319.backedge:                              ; preds = %bb.ai, %.thread320, %.thread326
  %.2127254.be = phi i32 [ %i.ct, %bb.ai ], [ %i.cv, %.thread320 ], [ %i.cu, %.thread326 ]
  br label %.thread319, !llvm.loop !43

.thread326:                                       ; preds = %bb.ah
  %i.cu = add nuw nsw i32 %.2127254, 1            ; 2 uses
  %exitcond285.not328 = icmp eq i32 %i.cu, 6
  br i1 %exitcond285.not328, label %.thread329, label %.thread319.backedge

.thread329:                                       ; preds = %.thread326
  store i64 %storemerge, ptr %i.d, align 8
  br label %.backedge345.preheader

.thread320:                                       ; preds = %bb.ah
  %puts170 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.cv = add nuw nsw i32 %.2127254, 1            ; 2 uses
  %exitcond285.not322 = icmp eq i32 %i.cv, 6
  br i1 %exitcond285.not322, label %.thread324, label %.thread319.backedge

.thread324:                                       ; preds = %.thread320
  store i64 %storemerge, ptr %i.d, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i64 0, ptr %i.d, align 8
  br i1 %.not218, label %.backedge345.preheader, label %bb.ak

bb.ak:                                            ; preds = %.thread324, %bb.aj
  %putchar154 = call i32 @putchar(i32 10)         ; 0 uses
  br label %.backedge345.preheader

.backedge345.preheader:                           ; preds = %.thread329, %bb.ak, %bb.aj
  br label %.backedge345

.backedge345:                                     ; preds = %.backedge345.backedge, %.backedge345.preheader
  %.3259 = phi i32 [ 0, %.backedge345.preheader ], [ %.3259.be, %.backedge345.backedge ] ; 5 uses
  %i.cw = lshr i32 %.3259, 1                      ; 2 uses
  %i.cx = shl nuw nsw i32 %i.cw, 6
  %i.cy = add nuw nsw i32 %i.cx, 128              ; 4 uses
  %i.cz = and i32 %.3259, 1                       ; 2 uses
  br i1 %.not218, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.backedge345
  %i.da = icmp eq i32 %i.cz, 0
  %i.db = select i1 %i.da, ptr @.str.6, ptr @.str.7
  %i.dc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.cy, ptr noundef nonnull %i.db) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.backedge345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @aes_test_ofb_iv, i64 16, i1 false)
  %i.dd = zext nneg i32 %i.cw to i64              ; 3 uses
  %i.de = getelementptr inbounds nuw [32 x i8], ptr @aes_test_ofb_key, i64 %i.dd
  %i.df = lshr exact i32 %i.cy, 3
  %i.dg = zext nneg i32 %i.df to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 16 dereferenceable(1) %i.de, i64 %i.dg, i1 false)
  %i.dh = call i32 @mbedtls_aes_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef %i.cy) ; 3 uses
  %i.di = icmp eq i32 %i.dh, -134
  %i.dj = icmp eq i32 %i.cy, 192
  %or.cond7 = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond7, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not160 = icmp eq i32 %i.dh, 0
  br i1 %.not160, label %bb.ao, label %mbedtls_aes_crypt_cfb128.exit

bb.ao:                                            ; preds = %bb.an
  %i.dk = icmp eq i32 %i.cz, 0
  br i1 %i.dk, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dl = getelementptr inbounds nuw [64 x i8], ptr @aes_test_ofb_ct, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.dl, i64 64, i1 false)
  br label %.preheader.i

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) @aes_test_ofb_pt, i64 64, i1 false)
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr @aes_test_ofb_ct, i64 %i.dd
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ap, %bb.aq
  %.3131 = phi ptr [ @aes_test_ofb_pt, %bb.ap ], [ %i.dm, %bb.aq ]
  br label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %bb.as, %.preheader.i
  %.in.i196 = phi i64 [ %i.dn, %bb.as ], [ 64, %.preheader.i ]
  %.029.i = phi i64 [ %i.dw, %bb.as ], [ 0, %.preheader.i ] ; 3 uses
  %.01728.i = phi ptr [ %i.dq, %bb.as ], [ %i.b, %.preheader.i ] ; 3 uses
  %i.dn = add nsw i64 %.in.i196, -1               ; 2 uses
  %i.do = icmp eq i64 %.029.i, 0
  br i1 %i.do, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i195
  %i.dp = call i32 @mbedtls_aes_crypt_ecb(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 2 uses
  %.not24.i = icmp eq i32 %i.dp, 0
  br i1 %.not24.i, label %bb.as, label %mbedtls_aes_crypt_cfb128.exit

bb.as:                                            ; preds = %bb.ar, %.lr.ph.i195
  %i.dq = getelementptr i8, ptr %.01728.i, i64 1
  %i.dr = load i8, ptr %.01728.i, align 1, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 %.029.i
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !11
  %i.du = xor i8 %i.dt, %i.dr
  store i8 %i.du, ptr %.01728.i, align 1, !tbaa !11
  %i.dv = add nuw nsw i64 %.029.i, 1
  %i.dw = and i64 %i.dv, 15
  %.not.i197 = icmp eq i64 %i.dn, 0
  br i1 %.not.i197, label %bb.at, label %.lr.ph.i195, !llvm.loop !34

bb.at:                                            ; preds = %bb.as
  %bcmp162 = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %i.b, ptr noundef nonnull dereferenceable(64) %.3131, i64 64)
  %.not163 = icmp eq i32 %bcmp162, 0
  br i1 %.not163, label %bb.au, label %mbedtls_aes_crypt_cfb128.exit

bb.au:                                            ; preds = %bb.at
  br i1 %.not218, label %.thread337, label %.thread331

bb.av:                                            ; preds = %bb.am
  %puts165 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.dx = add nuw nsw i32 %.3259, 1               ; 2 uses
  %exitcond286.not = icmp eq i32 %i.dx, 6
  br i1 %exitcond286.not, label %bb.aw, label %.backedge345.backedge

.backedge345.backedge:                            ; preds = %bb.av, %.thread331, %.thread337
  %.3259.be = phi i32 [ %i.dx, %bb.av ], [ %i.dz, %.thread331 ], [ %i.dy, %.thread337 ]
  br label %.backedge345, !llvm.loop !44

.thread337:                                       ; preds = %bb.au
  %i.dy = add nuw nsw i32 %.3259, 1               ; 2 uses
  %exitcond286.not339 = icmp eq i32 %i.dy, 6
  br i1 %exitcond286.not339, label %.thread340.preheader, label %.backedge345.backedge

.thread331:                                       ; preds = %bb.au
  %puts164 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.dz = add nuw nsw i32 %.3259, 1               ; 2 uses
  %exitcond286.not333 = icmp eq i32 %i.dz, 6
  br i1 %exitcond286.not333, label %.thread335, label %.backedge345.backedge

bb.aw:                                            ; preds = %bb.av
  br i1 %.not218, label %.thread340.preheader, label %.thread335

.thread335:                                       ; preds = %.thread331, %bb.aw
  %putchar155 = call i32 @putchar(i32 10)         ; 0 uses
  br label %.thread340.preheader

.thread340.preheader:                             ; preds = %.thread337, %.thread335, %bb.aw
  br label %.thread340

.thread340:                                       ; preds = %.thread340.backedge, %.thread340.preheader
  %.4260 = phi i32 [ 0, %.thread340.preheader ], [ %.4260.be, %.thread340.backedge ] ; 4 uses
  %i.ea = lshr i32 %.4260, 1
  %i.eb = and i32 %.4260, 1                       ; 2 uses
  br i1 %.not218, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.thread340
  %i.ec = icmp eq i32 %i.eb, 0
  %i.ed = select i1 %i.ec, ptr @.str.6, ptr @.str.7
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %i.ed) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.thread340
  %i.ef = zext nneg i32 %i.ea to i64              ; 5 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr @aes_test_ctr_nonce_counter, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) %i.eg, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr @aes_test_ctr_key, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.eh, i64 16, i1 false)
  store i64 0, ptr %i.d, align 8, !tbaa !30
  %i.ei = call i32 @mbedtls_aes_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 128) ; 2 uses
  %.not = icmp eq i32 %i.ei, 0
  br i1 %.not, label %bb.az, label %mbedtls_aes_crypt_cfb128.exit

bb.az:                                            ; preds = %bb.ay
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr @aes_test_ctr_len, i64 %i.ef
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !14
  %i.el = icmp eq i32 %i.eb, 0                    ; 2 uses
  %i.em = sext i32 %i.ek to i64                   ; 3 uses
  %aes_test_ctr_ct.aes_test_ctr_pt = select i1 %i.el, ptr @aes_test_ctr_ct, ptr @aes_test_ctr_pt
  %i.en = getelementptr inbounds nuw [48 x i8], ptr %aes_test_ctr_ct.aes_test_ctr_pt, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 16 %i.en, i64 %i.em, i1 false)
  %i.eo = call i32 @mbedtls_aes_crypt_ctr(ptr noundef nonnull %1, i64 noundef %i.em, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) ; 2 uses
  %.not157 = icmp eq i32 %i.eo, 0
  br i1 %.not157, label %bb.ba, label %mbedtls_aes_crypt_cfb128.exit

bb.ba:                                            ; preds = %bb.az
  %aes_test_ctr_pt.aes_test_ctr_ct = select i1 %i.el, ptr @aes_test_ctr_pt, ptr @aes_test_ctr_ct
  %i.ep = getelementptr inbounds nuw [48 x i8], ptr %aes_test_ctr_pt.aes_test_ctr_ct, i64 %i.ef
  %bcmp = call i32 @bcmp(ptr nonnull %i.b, ptr nonnull %i.ep, i64 %i.em)
  %.not158 = icmp eq i32 %bcmp, 0
  br i1 %.not158, label %bb.bb, label %mbedtls_aes_crypt_cfb128.exit

bb.bb:                                            ; preds = %bb.ba
  br i1 %.not218, label %bb.bc, label %.thread342

bb.bc:                                            ; preds = %bb.bb
  %i.eq = add nuw nsw i32 %.4260, 1               ; 2 uses
  %exitcond287.not = icmp eq i32 %i.eq, 6
  br i1 %exitcond287.not, label %mbedtls_aes_crypt_cfb128.exit.thread214, label %.thread340.backedge

.thread340.backedge:                              ; preds = %bb.bc, %.thread342
  %.4260.be = phi i32 [ %i.er, %.thread342 ], [ %i.eq, %bb.bc ]
  br label %.thread340, !llvm.loop !45

.thread342:                                       ; preds = %bb.bb
  %puts159 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.er = add nuw nsw i32 %.4260, 1               ; 2 uses
  %exitcond287.not343 = icmp eq i32 %i.er, 6
  br i1 %exitcond287.not343, label %bb.bd, label %.thread340.backedge

bb.bd:                                            ; preds = %.thread342
  %putchar156 = call i32 @putchar(i32 10)         ; 0 uses
  br label %mbedtls_aes_crypt_cfb128.exit.thread214

mbedtls_aes_crypt_cfb128.exit:                    ; preds = %bb.k, %bb.i, %.preheader230, %.split249.us, %bb.t, %.split136, %.loopexit.i, %bb.z, %bb.af, %bb.ac, %bb.at, %bb.an, %bb.ar, %bb.ba, %bb.az, %bb.ay, %.split.us
  %.2 = phi i32 [ %i.az, %.split136 ], [ 1, %bb.at ], [ 1, %bb.ba ], [ %i.as, %.split.us ], [ %i.w, %.preheader230 ], [ %i.dp, %bb.ar ], [ 1, %.split249.us ], [ 1, %.loopexit.i ], [ %i.ca, %bb.ac ], [ %i.cl, %bb.af ], [ %i.eo, %bb.az ], [ %i.ei, %bb.ay ], [ %i.dh, %bb.an ], [ %i.bt, %bb.z ], [ %.1, %bb.t ], [ 1, %bb.k ], [ %.0, %bb.i ] ; 2 uses
  br i1 %.not218, label %mbedtls_aes_crypt_cfb128.exit.thread214, label %bb.be

bb.be:                                            ; preds = %mbedtls_aes_crypt_cfb128.exit
  %puts184 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  br label %mbedtls_aes_crypt_cfb128.exit.thread214

mbedtls_aes_crypt_cfb128.exit.thread214:          ; preds = %bb.bc, %bb.bd, %bb.be, %mbedtls_aes_crypt_cfb128.exit
  %.2217 = phi i32 [ %.2, %mbedtls_aes_crypt_cfb128.exit ], [ %.2, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 288) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.2217
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"mbedtls_aes_context", !5, i64 0, !10, i64 8, !6, i64 16}
!10 = !{!"long", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{!9, !10, i64 8}
!18 = distinct !{!18, !13, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !13, !19}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = !{!10, !10, i64 0}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13, !19, !20}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !13, !19}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
end_hunk_0
