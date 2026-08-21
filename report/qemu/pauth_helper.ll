Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pauth_helper?download=true
inline.NumInlined: 199
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@pauth_computepac_architected:bb.a
  %i.xw = or i64 %i.xp, %i.xv
  %i.xx = lshr i64 %.578, 28
  %i.xy = and i64 %i.xx, 15
  %i.xz = getelementptr inbounds nuw i8, ptr %pac_sub1.sub1.pac_inv_sub.inv_sub, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1
  %i.yb = zext i8 %i.ya to i64
  %i.yc = shl nuw nsw i64 %i.yb, 28
  %i.yd = or i64 %i.xw, %i.yc
  %i.ye = lshr i64 %.578, 32
  %i.yf = and i64 %i.ye, 15
  %i.yg = getelementptr inbounds nuw i8, ptr %pac_sub1.sub1.pac_inv_sub.inv_sub, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1
  %i.yi = zext i8 %i.yh to i64
  %i.yj = shl nuw nsw i64 %i.yi, 32
  %i.yk = or i64 %i.yd, %i.yj
  %i.yl = lshr i64 %.578, 36
  %i.ym = and i64 %i.yl, 15
  %i.yn = getelementptr inbounds nuw i8, ptr %pac_sub1.sub1.pac_inv_sub.inv_sub, i64 %i.ym
  %i.yo = load i8, ptr %i.yn, align 1
  %i.yp = zext i8 %i.yo to i64
  %i.yq = shl nuw nsw i64 %i.yp, 36
  %i.yr = or i64 %i.yk, %i.yq
  %i.ys = lshr i64 %.578, 40
  %i.yt = and i64 %i.ys, 15
  %i.yu = getelementptr inbounds nuw i8, ptr %pac_sub1.sub1.pac_inv_sub.inv_sub, i64 %i.yt
  %i.yv = load i8, ptr %i.yu, align 1
  %i.yw = zext i8 %i.yv to i64
  %i.yx = shl nuw nsw i64 %i.yw, 40
  %i.yy = or i64 %i.yr, %i.yx
  %i.yz = lshr i64 %.578, 44
  %i.za = and i64 %i.yz, 15
  %i.zb = getelementptr inbounds nuw i8, ptr %pac_sub1.sub1.pac_inv_sub.inv_sub, i64 %i.za
  %i.zc = load i8, ptr %i.zb, align 1
  %i.zd = zext i8 %i.zc to i64
  %i.ze = shl nuw nsw i64 %i.zd, 44
  %i.zf = or i64 %i.yy, %i.ze
  %i.zg = lshr i64 %.578, 48
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
  %1 = trunc nuw i64 %i.a to i32
  %2 = and i32 %1, 15
  %i.b = trunc i64 %0 to i32
  %3 = lshr i32 %i.b, 16
  %4 = and i32 %3, 15
  %i.c = trunc i64 %0 to i32
  %5 = and i32 %i.c, 15
  %6 = lshr i64 %0, 48
  %7 = trunc nuw nsw i64 %6 to i32
  %i.d = and i32 %7, 15
  %i.e = mul nuw nsw i32 %2, 17                   ; 2 uses
  %8 = lshr i32 %i.e, 3                           ; 2 uses
  %i.f = mul nuw nsw i32 %4, 17                   ; 2 uses
  %i.g = lshr i32 %i.f, 2
  %9 = mul nuw nsw i32 %5, 17                     ; 2 uses
  %i.h = lshr i32 %9, 3                           ; 2 uses
  %10 = xor i32 %i.h, %i.g
  %11 = xor i32 %10, %8
  %i.i = and i32 %11, 15
  %12 = mul nuw nsw i32 %i.d, 17                  ; 2 uses
  %13 = lshr i32 %12, 3                           ; 2 uses
  %14 = lshr i32 %i.f, 3                          ; 2 uses
  %i.j = lshr i32 %9, 2
  %15 = xor i32 %14, %i.j
  %16 = xor i32 %15, %13
  %17 = and i32 %16, 15
  %18 = lshr i32 %12, 2
  %19 = xor i32 %i.h, %18
  %20 = xor i32 %19, %8
  %21 = lshr i32 %i.e, 2
  %22 = xor i32 %13, %21
  %i.k = xor i32 %22, %14
  %23 = and i32 %i.k, 15
  %24 = shl nuw nsw i32 %20, 16
  %25 = and i32 %24, 983040
  %26 = or disjoint i32 %23, %25
  %27 = zext nneg i32 %26 to i64
  %28 = zext nneg i32 %17 to i64
  %29 = shl nuw nsw i64 %28, 32
  %30 = or disjoint i64 %29, %27
  %31 = zext nneg i32 %i.i to i64
  %32 = shl nuw nsw i64 %31, 48
  %33 = or disjoint i64 %32, %30
  %i.l = lshr i64 %0, 36
  %34 = trunc nuw nsw i64 %i.l to i32
  %35 = and i32 %34, 15
  %i.m = trunc i64 %0 to i32
  %36 = lshr i32 %i.m, 20
  %37 = and i32 %36, 15
  %i.n = trunc i64 %0 to i32
  %38 = lshr i32 %i.n, 4
  %39 = and i32 %38, 15
  %40 = lshr i64 %0, 52
  %i.o = trunc nuw nsw i64 %40 to i32
  %41 = and i32 %i.o, 15
  %42 = mul nuw nsw i32 %35, 17                   ; 2 uses
  %43 = lshr i32 %42, 3                           ; 2 uses
  %44 = mul nuw nsw i32 %37, 17                   ; 2 uses
  %45 = lshr i32 %44, 2
  %46 = mul nuw nsw i32 %39, 17                   ; 2 uses
  %47 = lshr i32 %46, 3                           ; 2 uses
  %48 = xor i32 %47, %45
  %49 = xor i32 %48, %43
  %50 = and i32 %49, 15
  %51 = mul nuw nsw i32 %41, 17                   ; 2 uses
  %i.p = lshr i32 %51, 3                          ; 2 uses
  %i.q = lshr i32 %44, 3                          ; 2 uses
  %52 = lshr i32 %46, 2
  %53 = xor i32 %i.q, %52
  %54 = xor i32 %53, %i.p
  %55 = and i32 %54, 15
  %56 = lshr i32 %51, 2
  %57 = xor i32 %47, %56
  %58 = xor i32 %57, %43
  %i.r = lshr i32 %42, 2
  %59 = xor i32 %i.p, %i.r
  %60 = xor i32 %59, %i.q
  %61 = shl nuw nsw i32 %60, 4
  %62 = and i32 %61, 240
  %63 = shl nuw nsw i32 %58, 20
  %64 = and i32 %63, 15728640
  %65 = or disjoint i32 %62, %64
  %66 = zext nneg i32 %65 to i64
  %67 = zext nneg i32 %55 to i64
  %68 = shl nuw nsw i64 %67, 36
  %69 = or disjoint i64 %68, %66
  %70 = zext nneg i32 %50 to i64
  %71 = shl nuw nsw i64 %70, 52
  %72 = or disjoint i64 %71, %33
  %73 = or i64 %72, %69
  %i.s = lshr i64 %0, 40
  %74 = trunc nuw nsw i64 %i.s to i32
  %75 = and i32 %74, 15
  %i.t = trunc i64 %0 to i32
  %76 = lshr i32 %i.t, 24
  %77 = and i32 %76, 15
  %i.u = trunc i64 %0 to i32
  %78 = lshr i32 %i.u, 8
  %79 = and i32 %78, 15
  %80 = lshr i64 %0, 56
  %i.v = trunc nuw nsw i64 %80 to i32
  %81 = and i32 %i.v, 15
  %82 = mul nuw nsw i32 %75, 17                   ; 2 uses
  %83 = lshr i32 %82, 3                           ; 2 uses
  %84 = mul nuw nsw i32 %77, 17                   ; 2 uses
  %85 = lshr i32 %84, 2
  %86 = mul nuw nsw i32 %79, 17                   ; 2 uses
  %87 = lshr i32 %86, 3                           ; 2 uses
  %88 = xor i32 %87, %85
  %89 = xor i32 %88, %83
  %90 = and i32 %89, 15
  %91 = mul nuw nsw i32 %81, 17                   ; 2 uses
  %i.w = lshr i32 %91, 3                          ; 2 uses
  %i.x = lshr i32 %84, 3                          ; 2 uses
  %92 = lshr i32 %86, 2
  %93 = xor i32 %i.x, %92
  %94 = xor i32 %93, %i.w
  %95 = and i32 %94, 15
  %96 = lshr i32 %91, 2
  %97 = xor i32 %87, %96
  %98 = xor i32 %97, %83
  %i.y = lshr i32 %82, 2
  %99 = xor i32 %i.w, %i.y
  %100 = xor i32 %99, %i.x
  %101 = shl nuw nsw i32 %100, 8
  %102 = and i32 %101, 3840
  %103 = shl nuw nsw i32 %98, 24
  %104 = and i32 %103, 251658240
  %105 = or disjoint i32 %102, %104
  %106 = zext nneg i32 %105 to i64
  %107 = zext nneg i32 %95 to i64
  %108 = shl nuw nsw i64 %107, 40
  %109 = or disjoint i64 %108, %106
  %110 = zext nneg i32 %90 to i64
  %111 = shl nuw nsw i64 %110, 56
  %112 = or i64 %111, %73
  %113 = or i64 %112, %109
  %i.z = lshr i64 %0, 44
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %114 = and i32 %i.aa, 15
  %i.ab = trunc i64 %0 to i32
  %115 = lshr i32 %i.ab, 28
  %116 = trunc i64 %0 to i32
  %i.ac = lshr i32 %116, 12
  %i.ad = and i32 %i.ac, 15
  %117 = lshr i64 %0, 60
  %118 = trunc nuw nsw i64 %117 to i32
  %i.ae = mul nuw nsw i32 %114, 17                ; 2 uses
  %119 = lshr i32 %i.ae, 3                        ; 2 uses
  %i.af = mul nuw nsw i32 %115, 17                ; 2 uses
  %i.ag = lshr i32 %i.af, 2
  %120 = mul nuw nsw i32 %i.ad, 17                ; 2 uses
  %121 = lshr i32 %120, 3                         ; 2 uses
  %122 = xor i32 %121, %i.ag
  %123 = xor i32 %122, %119
  %124 = and i32 %123, 15
  %125 = mul nuw nsw i32 %118, 17                 ; 2 uses
  %126 = lshr i32 %125, 3                         ; 2 uses
  %127 = lshr i32 %i.af, 3                        ; 2 uses
  %128 = lshr i32 %120, 2
  %129 = xor i32 %127, %128
  %130 = xor i32 %129, %126
  %131 = and i32 %130, 15
  %132 = lshr i32 %125, 2
  %133 = xor i32 %121, %132
  %134 = xor i32 %133, %119
  %135 = lshr i32 %i.ae, 2
  %136 = xor i32 %126, %135
  %137 = xor i32 %136, %127
  %138 = shl nuw nsw i32 %137, 12
  %139 = and i32 %138, 61440
  %140 = shl i32 %134, 28
  %141 = or disjoint i32 %139, %140
  %142 = zext i32 %141 to i64
  %143 = zext nneg i32 %131 to i64
  %144 = shl nuw nsw i64 %143, 44
  %145 = or disjoint i64 %144, %142
  %146 = zext nneg i32 %124 to i64
  %147 = shl nuw i64 %146, 60
  %148 = or i64 %147, %113
  %149 = or i64 %148, %145
  ret i64 %149
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
