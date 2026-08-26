Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pauth_helper?download=true
inline.NumInlined: 199
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@pauth_computepac_architected:bb.a
  %i.zh = and i64 %i.zg, 15
  %i.zi = getelementptr inbounds nuw i8, ptr %pac_sub1.sub1.pac_inv_sub.inv_sub, i64 %i.zh
  %i.zj = load i8, ptr %i.zi, align 1
  %i.zk = zext i8 %i.zj to i64
  %i.zl = shl nuw nsw i64 %i.zk, 48
  %i.zm = or i64 %i.zf, %i.zl
  %i.zn = lshr i64 %.578, 52
  %i.zo = and i64 %i.zn, 15
  %i.zp = getelementptr inbounds nuw i8, ptr %pac_sub1.sub1.pac_inv_sub.inv_sub, i64 %i.zo
  %i.zq = load i8, ptr %i.zp, align 1
  %i.zr = zext i8 %i.zq to i64
  %i.zs = shl nuw nsw i64 %i.zr, 52
  %i.zt = or i64 %i.zm, %i.zs
  %i.zu = lshr i64 %.578, 56
  %i.zv = and i64 %i.zu, 15
  %i.zw = getelementptr inbounds nuw i8, ptr %pac_sub1.sub1.pac_inv_sub.inv_sub, i64 %i.zv
  %i.zx = load i8, ptr %i.zw, align 1
  %i.zy = zext i8 %i.zx to i64
  %i.zz = shl nuw i64 %i.zy, 56
  %i.aaa = or i64 %i.zt, %i.zz
  %i.aab = lshr i64 %.578, 60
  %i.aac = getelementptr inbounds nuw i8, ptr %pac_sub1.sub1.pac_inv_sub.inv_sub, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1
  %i.aae = zext i8 %i.aad to i64
  %i.aaf = shl i64 %i.aae, 60
  %i.aag = or i64 %i.aaa, %i.aaf                  ; 2 uses
  %i.aah = icmp samesign ult i64 %indvars.iv83, %i.wc
  br i1 %i.aah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aai = tail call fastcc i64 @pac_mult(i64 noundef %i.aag) ; 12 uses
  %i.aaj = lshr i64 %i.aai, 12
  %i.aak = and i64 %i.aaj, 15
  %i.aal = lshr i64 %i.aai, 20
  %i.aam = and i64 %i.aal, 240
  %i.aan = lshr i64 %i.aai, 40                    ; 2 uses
  %i.aao = and i64 %i.aan, 3840
  %i.aap = lshr i64 %i.aai, 24                    ; 2 uses
  %i.aaq = and i64 %i.aap, 61440
  %i.aar = and i64 %i.aan, 983040
  %i.aas = and i64 %i.aap, 15728640
  %i.aat = shl i64 %i.aai, 20
  %i.aau = and i64 %i.aat, 251658240
  %i.aav = shl i64 %i.aai, 12                     ; 2 uses
  %i.aaw = and i64 %i.aav, 4026531840
  %i.aax = lshr i64 %i.aai, 16
  %i.aay = and i64 %i.aax, 1030792151040
  %i.aaz = and i64 %i.aav, 16492674416640
  %i.aba = shl i64 %i.aai, 36
  %i.abb = and i64 %i.aba, 263882790666240
  %i.abc = shl i64 %i.aai, 28
  %i.abd = and i64 %i.abc, 4222124650659840
  %i.abe = shl i64 %i.aai, 52
  %i.abf = and i64 %i.abe, 67553994410557440
  %i.abg = shl i64 %i.aai, 16
  %i.abh = and i64 %i.abg, 1080863910568919040
  %i.abi = and i64 %i.aai, -1152921440182337536
  %i.abj = or disjoint i64 %i.aam, %i.abi
  %i.abk = or disjoint i64 %i.abj, %i.aak
  %i.abl = or disjoint i64 %i.abk, %i.aao
  %i.abm = or disjoint i64 %i.abl, %i.aaq
  %i.abn = or disjoint i64 %i.abm, %i.aar
  %i.abo = or i64 %i.abn, %i.aas
  %i.abp = or i64 %i.abo, %i.aau
  %i.abq = or i64 %i.abp, %i.aaw
  %i.abr = or i64 %i.abq, %i.aay
  %i.abs = or i64 %i.abr, %i.aaz
  %i.abt = or i64 %i.abs, %i.abb
  %i.abu = or i64 %i.abt, %i.abd
  %i.abv = or i64 %i.abu, %i.abf
  %i.abw = or i64 %i.abv, %i.abh
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.7 = phi i64 [ %i.abw, %bb.g ], [ %i.aag, %bb.f ]
  %i.abx = lshr i64 %.16979, 48                   ; 3 uses
  %i.aby = shl nuw nsw i64 %i.abx, 1
  %i.abz = and i64 %i.aby, 14
  %i.aca = lshr i64 %.16979, 51
  %i.acb = xor i64 %i.abx, %i.aca
  %i.acc = and i64 %i.acb, 1
  %i.acd = and i64 %i.abx, 240
  %i.ace = lshr i64 %.16979, 12
  %i.acf = shl i64 %.16979, 16
  %i.acg = lshr i64 %.16979, 8                    ; 2 uses
  %i.ach = shl nuw nsw i64 %i.acg, 1
  %i.aci = and i64 %i.ach, 14
  %i.acj = lshr i64 %.16979, 11
  %i.ack = xor i64 %i.acg, %i.acj
  %i.acl = and i64 %i.ack, 1
  %i.acm = or disjoint i64 %i.aci, %i.acl
  %i.acn = shl nuw nsw i64 %i.acm, 24
  %i.aco = lshr i64 %.16979, 28                   ; 2 uses
  %i.acp = shl nuw nsw i64 %i.aco, 1
  %i.acq = and i64 %i.acp, 14
  %i.acr = lshr i64 %.16979, 31
  %i.acs = xor i64 %i.aco, %i.acr
  %i.act = and i64 %i.acs, 1
  %i.acu = or disjoint i64 %i.acq, %i.act
  %i.acv = shl nuw nsw i64 %i.acu, 32
  %i.acw = lshr i64 %.16979, 60                   ; 2 uses
  %i.acx = shl nuw nsw i64 %i.acw, 1
  %i.acy = and i64 %i.acx, 14
  %i.acz = and i64 %i.acw, 1
  %i.ada = lshr i64 %.16979, 63
  %i.adb = xor i64 %i.acz, %i.ada
  %i.adc = or disjoint i64 %i.acy, %i.adb
  %i.add = shl nuw nsw i64 %i.adc, 36
  %i.ade = lshr i64 %.16979, 56                   ; 2 uses
  %i.adf = shl nuw nsw i64 %i.ade, 1
  %i.adg = and i64 %i.adf, 14
  %i.adh = lshr i64 %.16979, 59
  %i.adi = xor i64 %i.ade, %i.adh
  %i.adj = and i64 %i.adi, 1
  %i.adk = or disjoint i64 %i.adg, %i.adj
  %i.adl = shl nuw nsw i64 %i.adk, 40
  %i.adm = lshr i64 %.16979, 16                   ; 2 uses
  %i.adn = shl nuw nsw i64 %i.adm, 1
  %i.ado = and i64 %i.adn, 14
  %i.adp = lshr i64 %.16979, 19
  %i.adq = xor i64 %i.adm, %i.adp
  %i.adr = and i64 %i.adq, 1
  %i.ads = or disjoint i64 %i.ado, %i.adr
  %i.adt = shl nuw nsw i64 %i.ads, 44
  %i.adu = lshr i64 %.16979, 44                   ; 2 uses
  %i.adv = shl nuw nsw i64 %i.adu, 1
  %i.adw = and i64 %i.adv, 14
  %i.adx = lshr i64 %.16979, 47
  %i.ady = xor i64 %i.adu, %i.adx
  %i.adz = and i64 %i.ady, 1
  %i.aea = or disjoint i64 %i.adw, %i.adz
  %i.aeb = shl nuw i64 %i.aea, 60
  %i.aec = and i64 %i.ace, 65280
  %i.aed = and i64 %i.acf, 1152640033673379840
  %i.aee = or disjoint i64 %i.aec, %i.acd
  %i.aef = or disjoint i64 %i.aee, %i.aed
  %i.aeg = or disjoint i64 %i.aef, %i.acc
  %i.aeh = or disjoint i64 %i.aeg, %i.abz
  %i.aei = or disjoint i64 %i.aeh, %i.acn
  %i.aej = or disjoint i64 %i.aei, %i.acv
  %i.aek = or disjoint i64 %i.adl, %i.add
  %i.ael = or disjoint i64 %i.aek, %i.adt
  %i.aem = or disjoint i64 %i.ael, %i.aeb
  %i.aen = or i64 %i.aem, %i.aej                  ; 2 uses
  %i.aeo = sub nsw i64 %i.wc, %indvars.iv83
  %i.aep = getelementptr inbounds [8 x i8], ptr @pauth_computepac_architected.RC, i64 %i.aeo
  %i.aeq = load i64, ptr %i.aep, align 8
  %i.aer = xor i64 %.7, %i.aeq
  %i.aes = xor i64 %i.aer, %i.aen
  %.reass.reass = xor i64 %i.aes, %invariant.op   ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count
  br i1 %exitcond87.not, label %bb.i, label %bb.f, !llvm.loop !11

bb.i:                                             ; preds = %bb.h
  %i.aet = xor i64 %.reass.reass, %i.ia
  ret i64 %i.aet
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal fastcc i64 @pac_mult(i64 noundef %0) unnamed_addr #9 {
extract64.exit41:
  %i.a = lshr i64 %0, 32
  %i.b = lshr i64 %0, 48
  %i.c = trunc i64 %0 to i32
  %i.d = trunc nuw i64 %i.a to i32
  %i.e = lshr i32 %i.c, 16
  %i.f = and i32 %i.e, 15
  %i.g = and i32 %i.d, 15
  %i.h = mul nuw nsw i32 %i.f, 17                 ; 2 uses
  %i.i = mul nuw nsw i32 %i.g, 17                 ; 2 uses
  %i.j = lshr i32 %i.h, 2
  %i.k = lshr i32 %i.i, 2
  %i.l = trunc nuw nsw i64 %i.b to i32
  %i.m = trunc i64 %0 to i32
  %i.n = and i32 %i.l, 15
  %i.o = and i32 %i.m, 15
  %i.p = mul nuw nsw i32 %i.n, 17                 ; 2 uses
  %i.q = mul nuw nsw i32 %i.o, 17                 ; 2 uses
  %i.r = lshr i32 %i.q, 3                         ; 2 uses
  %i.s = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %i.t = insertelement <4 x i32> %i.s, i32 %i.i, i64 1
  %i.u = insertelement <4 x i32> %i.t, i32 %i.h, i64 2
  %i.v = lshr <4 x i32> %i.u, <i32 3, i32 3, i32 3, i32 poison> ; 3 uses
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.x = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.y = insertelement <2 x i32> %i.x, i32 %i.p, i64 1
  %i.z = lshr <2 x i32> %i.y, splat (i32 2)
  %i.aa = xor i32 %i.r, %i.j
  %i.ab = extractelement <4 x i32> %i.v, i64 0
  %i.ac = xor i32 %i.ab, %i.k
  %i.ad = shufflevector <4 x i32> %i.v, <4 x i32> poison, <2 x i32> <i32 2, i32 poison>
  %i.ae = insertelement <2 x i32> %i.ad, i32 %i.r, i64 1
  %i.af = xor <2 x i32> %i.ae, %i.z
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ac, i64 2
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.aa, i64 3
  %i.aj = xor <4 x i32> %i.ai, %i.w
  %i.ak = lshr i64 %0, 36
  %i.al = lshr i64 %0, 52
  %i.am = trunc nuw nsw i64 %i.ak to i32
  %i.an = trunc nuw nsw i64 %i.al to i32
  %i.ao = trunc i64 %0 to i32
  %i.ap = trunc i64 %0 to i32
  %1 = lshr i32 %i.ao, 4
  %2 = lshr i32 %i.ap, 20
  %i.aq = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.ar = insertelement <4 x i32> %i.aq, i32 %1, i64 1
  %3 = insertelement <4 x i32> %i.ar, i32 %i.an, i64 2
  %4 = insertelement <4 x i32> %3, i32 %i.am, i64 3
  %5 = and <4 x i32> %4, splat (i32 15)
  %6 = mul nuw nsw <4 x i32> %5, splat (i32 17)   ; 3 uses
  %7 = extractelement <4 x i32> %6, i64 1
  %8 = lshr i32 %7, 3
  %9 = lshr <4 x i32> %6, <i32 3, i32 poison, i32 3, i32 3>
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 3, i32 0> ; 2 uses
  %11 = lshr <4 x i32> %6, splat (i32 2)
  %12 = insertelement <4 x i32> poison, i32 %8, i64 0
  %13 = shufflevector <4 x i32> %12, <4 x i32> %10, <4 x i32> <i32 0, i32 7, i32 0, i32 5>
  %14 = xor <4 x i32> %13, %11
  %i.as = xor <4 x i32> %14, %10
  %i.at = lshr i64 %0, 40
  %i.au = lshr i64 %0, 56
  %i.av = trunc nuw nsw i64 %i.at to i32
  %i.aw = trunc nuw nsw i64 %i.au to i32
  %i.ax = trunc i64 %0 to i32
  %i.ay = trunc i64 %0 to i32
  %15 = lshr i32 %i.ax, 8
  %16 = lshr i32 %i.ay, 24
  %i.az = insertelement <4 x i32> poison, i32 %16, i64 0
  %i.ba = insertelement <4 x i32> %i.az, i32 %15, i64 1
  %17 = insertelement <4 x i32> %i.ba, i32 %i.aw, i64 2
  %18 = insertelement <4 x i32> %17, i32 %i.av, i64 3
  %19 = and <4 x i32> %18, splat (i32 15)
  %20 = mul nuw nsw <4 x i32> %19, splat (i32 17) ; 3 uses
  %21 = extractelement <4 x i32> %20, i64 1
  %22 = lshr i32 %21, 3
  %23 = lshr <4 x i32> %20, <i32 3, i32 poison, i32 3, i32 3>
  %24 = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 3, i32 0> ; 2 uses
  %25 = lshr <4 x i32> %20, splat (i32 2)
  %26 = insertelement <4 x i32> poison, i32 %22, i64 0
  %27 = shufflevector <4 x i32> %26, <4 x i32> %24, <4 x i32> <i32 0, i32 7, i32 0, i32 5>
  %28 = xor <4 x i32> %27, %25
  %i.bb = xor <4 x i32> %28, %24
  %i.bc = lshr i64 %0, 44
  %i.bd = lshr i64 %0, 60
  %29 = trunc nuw nsw i64 %i.bc to i32
  %30 = trunc nuw nsw i64 %i.bd to i32
  %i.be = trunc i64 %0 to i32
  %i.bf = trunc i64 %0 to i32
  %i.bg = lshr i32 %i.be, 12
  %i.bh = lshr i32 %i.bf, 28
  %i.bi = and i32 %29, 15
  %31 = and i32 %i.bg, 15
  %i.bj = mul nuw nsw i32 %i.bi, 17               ; 2 uses
  %32 = mul nuw nsw i32 %30, 17                   ; 2 uses
  %33 = mul nuw nsw i32 %31, 17                   ; 2 uses
  %34 = mul nuw nsw i32 %i.bh, 17                 ; 2 uses
  %i.bk = lshr i32 %33, 3
  %35 = insertelement <4 x i32> poison, i32 %i.bj, i64 0
  %i.bl = insertelement <4 x i32> %35, i32 %32, i64 1
  %i.bm = insertelement <4 x i32> %i.bl, i32 %34, i64 2
  %i.bn = lshr <4 x i32> %i.bm, <i32 3, i32 3, i32 3, i32 poison>
  %36 = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2> ; 2 uses
  %37 = insertelement <4 x i32> poison, i32 %34, i64 0
  %38 = insertelement <4 x i32> %37, i32 %33, i64 1
  %39 = insertelement <4 x i32> %38, i32 %32, i64 2
  %40 = insertelement <4 x i32> %39, i32 %i.bj, i64 3
  %41 = lshr <4 x i32> %40, splat (i32 2)
  %42 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %43 = shufflevector <4 x i32> %42, <4 x i32> %36, <4 x i32> <i32 0, i32 7, i32 0, i32 5>
  %44 = xor <4 x i32> %43, %41
  %i.bo = xor <4 x i32> %44, %36
  %i.bp = and <4 x i32> %i.aj, splat (i32 15)
  %i.bq = zext nneg <4 x i32> %i.bp to <4 x i64>
  %i.br = shl nuw nsw <4 x i64> %i.bq, <i64 32, i64 16, i64 0, i64 48>
  %i.bs = and <4 x i32> %i.as, splat (i32 15)
  %i.bt = zext nneg <4 x i32> %i.bs to <4 x i64>
  %i.bu = shl nuw nsw <4 x i64> %i.bt, <i64 52, i64 36, i64 20, i64 4>
  %i.bv = and <4 x i32> %i.bb, splat (i32 15)
  %i.bw = zext nneg <4 x i32> %i.bv to <4 x i64>
  %i.bx = shl nuw nsw <4 x i64> %i.bw, <i64 56, i64 40, i64 24, i64 8>
  %i.by = and <4 x i32> %i.bo, splat (i32 15)
  %i.bz = zext nneg <4 x i32> %i.by to <4 x i64>
  %i.ca = shl nuw <4 x i64> %i.bz, <i64 60, i64 44, i64 28, i64 12>
  %rdx.op = or disjoint <4 x i64> %i.br, %i.bu
  %rdx.op45 = or disjoint <4 x i64> %rdx.op, %i.bx
  %rdx.op46 = or disjoint <4 x i64> %rdx.op45, %i.ca
  %i.cb = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %rdx.op46)
  ret i64 %i.cb
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @pauth_auth(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, i32 noundef range(i32 0, 2) %5, i64 noundef %6, i1 noundef zeroext %7) unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @aa64_va_parameters(ptr noundef %0, i64 noundef %1, i32 noundef 64, i1 noundef zeroext %4, i1 noundef zeroext false) #11 ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 79816
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 79824
  %.val54 = load i64, ptr %i.c, align 8
  %i.d = lshr i64 %.val, 4
  %i.e = lshr i64 %.val, 8
  %i.f = or i64 %i.d, %i.e
  %i.g = lshr i64 %.val54, 12
  %i.h = or i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 15                         ; 2 uses
  %i.k = and i32 %i.a, 255
  %i.l = sub nsw i32 64, %i.k                     ; 3 uses
  %i.m = lshr i32 %i.a, 11
  %i.n = and i32 %i.m, 8
  %i.o = add nsw i32 %i.n, %i.l
  %i.p = zext nneg i32 %i.o to i64
  %i.q = lshr i64 -1, %i.p
  %i.r = zext nneg i32 %i.l to i64                ; 2 uses
  %i.s = shl i64 %i.q, %i.r                       ; 2 uses
  %i.t = and i32 %i.a, 33554432
  %.not.i.i = icmp eq i32 %i.t, 0                 ; 2 uses
  %i.u = and i64 %i.s, -1080863910568919041
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.v = and i64 %1, 36028797018963968
  %.not.i = icmp eq i64 %i.v, 0
  %i.w = or i64 %spec.select.i.i, %1
  %i.x = xor i64 %spec.select.i.i, -1
  %i.y = and i64 %1, %i.x
  %.0.i = select i1 %.not.i, i64 %i.y, i64 %i.w   ; 4 uses
  %i.z = load i64, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = tail call fastcc i64 @pauth_computepac(ptr noundef %0, i64 noundef %.0.i, i64 noundef %2, i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = and i32 %i.a, 16384                     ; 2 uses
  %.not = icmp eq i32 %i.ad, 0
  %.lobit = lshr exact i32 %i.ad, 11
  %i.ae = add nsw i32 %.lobit, %i.l
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 -1, %i.af
  %i.ah = shl i64 %i.ag, %i.r
  %spec.select.v = select i1 %.not.i.i, i64 -36028797018963969, i64 -1116892707587883009
  %spec.select = and i64 %i.ah, %spec.select.v    ; 3 uses
  %i.ai = icmp samesign ugt i32 %i.j, 2
  br i1 %i.ai, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.aj = select i1 %7, i32 5, i32 4
  %i.ak = and i64 %spec.select, %i.ac
  %i.al = xor i64 %i.ak, %1                       ; 3 uses
  %.not52 = icmp samesign ult i32 %i.j, %i.aj
  br i1 %.not52, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = shl i64 %1, 8
  %i.an = ashr i64 %i.am, 63
  %i.ao = xor i64 %i.al, %i.an
  %i.ap = and i64 %i.ao, %spec.select
  %.not53 = icmp eq i64 %i.ap, 0
  br i1 %.not53, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @pauth_fail_exception(ptr noundef nonnull %0, i1 noundef zeroext %4, i32 noundef %5, i64 noundef %6) #12
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.aq = xor i64 %i.ac, %1
  %i.ar = and i64 %spec.select, %i.aq
  %.not51 = icmp eq i64 %i.ar, 0
  br i1 %.not51, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = mul nuw nsw i32 %5, 3
  %i.at = xor i32 %i.as, 1
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = and i64 %.0.i, -27021597764222977
  %i.aw = shl nuw nsw i64 %i.au, 53
  %i.ax = or disjoint i64 %i.av, %i.aw
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ay = and i64 %.0.i, -6917529027641081857
  %i.az = shl nuw nsw i64 %i.au, 61
  %i.ba = or disjoint i64 %i.ay, %i.az
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.b, %bb.c
  %.1 = phi i64 [ %i.ba, %bb.h ], [ %i.al, %bb.b ], [ %i.al, %bb.c ], [ %i.ax, %bb.g ], [ %.0.i, %bb.e ]
  ret i64 %.1
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @pauth_fail_exception(ptr noundef %0, i1 noundef zeroext %1, i32 noundef range(i32 0, 2) %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = select i1 %1, i32 1912602626, i32 1912602624
  %i.b = or disjoint i32 %i.a, %2
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call i32 @exception_target_el(ptr noundef %0) #11
  tail call void @raise_exception_ra(ptr noundef %0, i32 noundef 1, i64 noundef %i.c, i32 noundef %i.d, i64 noundef %3) #13
  unreachable
}

declare i32 @exception_target_el(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #10

attributes #0 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nofree norecurse nosync nounwind sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
end_hunk_0
