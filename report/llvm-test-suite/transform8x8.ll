Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/transform8x8?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@dct_luma8x8:bb.a
  %i.aob = add i32 %i.aoa, %i.anz
  %i.aoc = ashr i32 %i.aob, 6
  %i.aod = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.aoc, i32 0)
  %i.aoe = tail call noundef i32 @llvm.smin.i32(i32 %i.aod, i32 %i.amo) ; 2 uses
  store i32 %i.aoe, ptr %i.anu, align 4, !tbaa !7
  %i.aof = trunc i32 %i.aoe to i16
  %i.aog = add nsw i32 %i.anb, %i.ajh
  %i.aoh = sext i32 %i.aog to i64
  %i.aoi = getelementptr inbounds [2 x i8], ptr %i.ajr, i64 %i.aoh
  store i16 %i.aof, ptr %i.aoi, align 2, !tbaa !47
  %indvars.iv.next555 = add nuw nsw i64 %indvars.iv554, 1 ; 2 uses
  %exitcond557.not = icmp eq i64 %indvars.iv.next555, 8
  br i1 %exitcond557.not, label %.loopexit, label %bb.ac, !llvm.loop !96

bb.ad:                                            ; preds = %.preheader, %bb.ad
  %i.aoj = phi i32 [ %.pre567, %.preheader ], [ %i.arg, %bb.ad ] ; 6 uses
  %indvars.iv562 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next563, %bb.ad ] ; 3 uses
  %i.aok = or disjoint i64 %indvars.iv562, %i.abv ; 2 uses
  %i.aol = load i32, ptr %i.abn, align 4, !tbaa !29
  %i.aom = sext i32 %i.aol to i64
  %i.aon = getelementptr inbounds nuw [64 x i8], ptr %i.abo, i64 %indvars.iv562 ; 9 uses
  %i.aoo = getelementptr inbounds [32 x i8], ptr %i.abp, i64 %i.aok ; 8 uses
  %i.aop = getelementptr [8 x i8], ptr %i.abs, i64 %i.aok
  %i.aoq = getelementptr [8 x i8], ptr %i.aop, i64 %i.aom
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !46 ; 8 uses
  %i.aos = load i32, ptr %i.aon, align 4, !tbaa !7
  %i.aot = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.abu
  %i.aou = load i16, ptr %i.aot, align 2, !tbaa !47
  %i.aov = zext i16 %i.aou to i32
  %i.aow = add nsw i32 %i.aos, %i.aov             ; 2 uses
  store i32 %i.aow, ptr %i.aon, align 4, !tbaa !7
  %i.aox = trunc i32 %i.aow to i16
  %i.aoy = add nsw i32 %i.aoj, %i.e
  %i.aoz = sext i32 %i.aoy to i64
  %i.apa = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.aoz
  store i16 %i.aox, ptr %i.apa, align 2, !tbaa !47
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aon, i64 4 ; 2 uses
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !7
  %i.apd = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.abw
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !47
  %i.apf = zext i16 %i.ape to i32
  %i.apg = add nsw i32 %i.apc, %i.apf             ; 2 uses
  store i32 %i.apg, ptr %i.apb, align 4, !tbaa !7
  %i.aph = trunc i32 %i.apg to i16
  %i.api = add nsw i32 %i.aoj, %i.abx
  %i.apj = sext i32 %i.api to i64
  %i.apk = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.apj
  store i16 %i.aph, ptr %i.apk, align 2, !tbaa !47
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aon, i64 8 ; 2 uses
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !7
  %i.apn = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.aby
  %i.apo = load i16, ptr %i.apn, align 2, !tbaa !47
  %i.app = zext i16 %i.apo to i32
  %i.apq = add nsw i32 %i.apm, %i.app             ; 2 uses
  store i32 %i.apq, ptr %i.apl, align 4, !tbaa !7
  %i.apr = trunc i32 %i.apq to i16
  %i.aps = add nsw i32 %i.aoj, %i.abz
  %i.apt = sext i32 %i.aps to i64
  %i.apu = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.apt
  store i16 %i.apr, ptr %i.apu, align 2, !tbaa !47
  %i.apv = getelementptr inbounds nuw i8, ptr %i.aon, i64 12 ; 2 uses
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !7
  %i.apx = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.aca
  %i.apy = load i16, ptr %i.apx, align 2, !tbaa !47
  %i.apz = zext i16 %i.apy to i32
  %i.aqa = add nsw i32 %i.apw, %i.apz             ; 2 uses
  store i32 %i.aqa, ptr %i.apv, align 4, !tbaa !7
  %i.aqb = trunc i32 %i.aqa to i16
  %i.aqc = add nsw i32 %i.aoj, %i.acb
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.aqd
  store i16 %i.aqb, ptr %i.aqe, align 2, !tbaa !47
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aon, i64 16 ; 2 uses
  %i.aqg = load i32, ptr %i.aqf, align 4, !tbaa !7
  %i.aqh = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.acc
  %i.aqi = load i16, ptr %i.aqh, align 2, !tbaa !47
  %i.aqj = zext i16 %i.aqi to i32
  %i.aqk = add nsw i32 %i.aqg, %i.aqj             ; 2 uses
  store i32 %i.aqk, ptr %i.aqf, align 4, !tbaa !7
  %i.aql = trunc i32 %i.aqk to i16
  %i.aqm = add nsw i32 %i.aoj, %i.acd
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.aqn
  store i16 %i.aql, ptr %i.aqo, align 2, !tbaa !47
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aon, i64 20 ; 2 uses
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !7
  %i.aqr = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.ace
  %i.aqs = load i16, ptr %i.aqr, align 2, !tbaa !47
  %i.aqt = zext i16 %i.aqs to i32
  %i.aqu = add nsw i32 %i.aqq, %i.aqt             ; 2 uses
  store i32 %i.aqu, ptr %i.aqp, align 4, !tbaa !7
  %i.aqv = trunc i32 %i.aqu to i16
  %i.aqw = add nsw i32 %i.aoj, %i.acf
  %i.aqx = sext i32 %i.aqw to i64
  %i.aqy = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.aqx
  store i16 %i.aqv, ptr %i.aqy, align 2, !tbaa !47
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aon, i64 24 ; 2 uses
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !7
  %i.arb = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.acg
  %i.arc = load i16, ptr %i.arb, align 2, !tbaa !47
  %i.ard = zext i16 %i.arc to i32
  %i.are = add nsw i32 %i.ara, %i.ard             ; 2 uses
  store i32 %i.are, ptr %i.aqz, align 4, !tbaa !7
  %i.arf = trunc i32 %i.are to i16
  %i.arg = load i32, ptr %i.abt, align 8, !tbaa !28 ; 3 uses
  %i.arh = add nsw i32 %i.arg, %i.ach
  %i.ari = sext i32 %i.arh to i64
  %i.arj = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.ari
  store i16 %i.arf, ptr %i.arj, align 2, !tbaa !47
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aon, i64 28 ; 2 uses
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !7
  %i.arm = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.aci
  %i.arn = load i16, ptr %i.arm, align 2, !tbaa !47
  %i.aro = zext i16 %i.arn to i32
  %i.arp = add nsw i32 %i.arl, %i.aro             ; 2 uses
  store i32 %i.arp, ptr %i.ark, align 4, !tbaa !7
  %i.arq = trunc i32 %i.arp to i16
  %i.arr = add nsw i32 %i.arg, %i.acj
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr inbounds [2 x i8], ptr %i.aor, i64 %i.ars
  store i16 %i.arq, ptr %i.art, align 2, !tbaa !47
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next563, 8
  br i1 %exitcond565.not, label %.loopexit, label %bb.ad, !llvm.loop !97

.loopexit:                                        ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @LowPassForIntra8x8Pred(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload = load i16, ptr %0, align 2 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 2 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %0, i64 4 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr i8, ptr %0, i64 6 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr i8, ptr %0, i64 20 ; 3 uses
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2 ; 2 uses
  %i.a = load <6 x i16>, ptr %.sroa.10.0..sroa_idx, align 2
  %i.b = load <8 x i16>, ptr %.sroa.9.0..sroa_idx, align 2
  %i.c = load <8 x i16>, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr i8, ptr %0, i64 22
  %.sroa.21.0..sroa_idx = getelementptr i8, ptr %0, i64 28 ; 3 uses
  %i.d = load <3 x i16>, ptr %.sroa.17.0..sroa_idx, align 2 ; 2 uses
  %i.e = shufflevector <3 x i16> %i.d, <3 x i16> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.f = load <4 x i16>, ptr %.sroa.17.0..sroa_idx, align 2
  %i.g = load <4 x i16>, ptr %.sroa.18.0..sroa_idx, align 2 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr i8, ptr %0, i64 30 ; 2 uses
  %i.h = load <2 x i16>, ptr %.sroa.21.0..sroa_idx, align 2
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.23.0.copyload = load i16, ptr %.sroa.23.0..sroa_idx, align 2
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 6 uses
  %.sroa.26.0..sroa_idx = getelementptr i8, ptr %0, i64 36 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr i8, ptr %0, i64 38
  %.sroa.28.0..sroa_idx = getelementptr i8, ptr %0, i64 40
  %.sroa.29.0..sroa_idx = getelementptr i8, ptr %0, i64 42
  %i.i = load <8 x i16>, ptr %.sroa.24.0..sroa_idx, align 2 ; 3 uses
  %i.j = icmp ne i32 %2, 0                        ; 3 uses
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i16 %.sroa.0.0.copyload to i32
  %i.l = zext i16 %.sroa.9.0.copyload to i32      ; 3 uses
  %i.m = add nuw nsw i32 %i.k, 2
  %i.n = zext i16 %.sroa.7.0.copyload to i32      ; 2 uses
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = add nuw nsw i32 %i.m, %i.o
  %i.q = add nuw nsw i32 %i.p, %i.l
  %.pre120 = add nuw nsw i32 %i.l, 2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = zext i16 %.sroa.9.0.copyload to i32      ; 2 uses
  %i.s = zext i16 %.sroa.7.0.copyload to i32      ; 2 uses
  %i.t = mul nuw nsw i32 %i.s, 3
  %i.u = add nuw nsw i32 %i.r, 2                  ; 2 uses
  %i.v = add nuw nsw i32 %i.u, %i.t
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi121 = phi i32 [ %i.u, %bb.d ], [ %.pre120, %bb.c ]
  %.pre-phi119 = phi i32 [ %i.r, %bb.d ], [ %i.l, %bb.c ]
  %.pre-phi = phi i32 [ %i.s, %bb.d ], [ %i.n, %bb.c ]
  %.sroa.7.0.in.in = phi i32 [ %i.v, %bb.d ], [ %i.q, %bb.c ]
  %.sroa.7.0.in = lshr i32 %.sroa.7.0.in.in, 2
  %.sroa.7.0 = trunc nuw i32 %.sroa.7.0.in to i16
  %i.w = zext <6 x i16> %i.a to <6 x i32>
  %i.x = zext <8 x i16> %i.c to <8 x i32>         ; 3 uses
  %i.y = insertelement <8 x i32> poison, i32 %.pre-phi, i64 0
  %i.z = insertelement <8 x i32> %i.y, i32 %.pre-phi121, i64 1
  %i.aa = shufflevector <6 x i32> %i.w, <6 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.ab = shufflevector <8 x i32> %i.z, <8 x i32> %i.aa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13> ; 3 uses
  %.fr = freeze <4 x i16> %i.e
  %i.ac = zext <4 x i16> %.fr to <4 x i32>        ; 3 uses
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.x, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 6, i32 7, i32 14>
  %i.ae = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ad, <8 x i32> <i32 poison, i32 2, i32 3, i32 4, i32 12, i32 13, i32 14, i32 15>
  %i.af = insertelement <8 x i32> %i.ae, i32 %.pre-phi119, i64 0
  %i.ag = shl nuw nsw <8 x i32> %i.af, splat (i32 1)
  %i.ah = add nuw nsw <8 x i32> %i.ab, <i32 2, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ai = add nuw nsw <8 x i32> %i.ah, %i.ag
  %i.aj = add nuw nsw <8 x i32> %i.ai, %i.x
  %i.ak = lshr <8 x i32> %i.aj, splat (i32 2)
  %i.al = trunc <8 x i32> %i.ak to <8 x i16>
  %i.am = zext <4 x i16> %i.g to <4 x i32>
  %i.an = shufflevector <3 x i16> %i.d, <3 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 2, i32 poison>
  %i.ao = shufflevector <4 x i16> %i.an, <4 x i16> %i.g, <4 x i32> <i32 poison, i32 1, i32 2, i32 6>
  %i.ap = insertelement <4 x i16> %i.ao, i16 2, i64 0
  %i.aq = zext <4 x i16> %i.ap to <4 x i32>       ; 2 uses
  %i.ar = shufflevector <8 x i32> %i.x, <8 x i32> poison, <4 x i32> <i32 6, i32 poison, i32 poison, i32 poison>
  %i.as = shufflevector <4 x i32> %i.ac, <4 x i32> %i.aq, <4 x i32> <i32 poison, i32 2, i32 3, i32 7>
  %4 = shufflevector <4 x i32> %i.ar, <4 x i32> %i.as, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %5 = freeze <4 x i32> %4                        ; 2 uses
  %i.at = shufflevector <4 x i32> %i.aq, <4 x i32> %5, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.au = add nuw nsw <4 x i32> %5, %i.at
  %i.av = shufflevector <4 x i32> %i.ac, <4 x i32> <i32 poison, i32 2, i32 2, i32 2>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.aw = add nuw nsw <4 x i32> %i.av, %i.ac
  %i.ax = add nuw nsw <4 x i32> %i.aw, %i.au
  %i.ay = add nuw nsw <4 x i32> %i.ax, %i.am
  %i.az = lshr <4 x i32> %i.ay, splat (i32 2)
  %i.ba = trunc <4 x i32> %i.az to <4 x i16>
  %i.bb = getelementptr i8, ptr %0, i64 26
  %i.bc = load <2 x i16>, ptr %i.bb, align 2, !tbaa !47
  %i.bd = load <2 x i16>, ptr %.sroa.21.0..sroa_idx, align 2, !tbaa !47
  %i.be = zext <2 x i16> %i.bc to <2 x i32>
  %i.bf = load <2 x i16>, ptr %.sroa.22.0..sroa_idx, align 2, !tbaa !47
  %i.bg = load i16, ptr %.sroa.22.0..sroa_idx, align 2, !tbaa !47
  %i.bh = zext <2 x i16> %i.bd to <2 x i32>
  %i.bi = zext <2 x i16> %i.bf to <2 x i32>       ; 2 uses
  %i.bj = zext i16 %i.bg to i32
  %i.bk = shl nuw nsw <2 x i32> %i.bh, splat (i32 1)
  %i.bl = add nuw nsw <2 x i32> %i.be, splat (i32 2)
  %i.bm = add nuw nsw <2 x i32> %i.bl, %i.bk
  %i.bn = add nuw nsw <2 x i32> %i.bm, %i.bi
  %i.bo = lshr <2 x i32> %i.bn, splat (i32 2)
  %i.bp = trunc <2 x i32> %i.bo to <2 x i16>
  %i.bq = extractelement <2 x i32> %i.bi, i64 1
  %i.br = mul nuw nsw i32 %i.bq, 3
  %i.bs = add nuw nsw i32 %i.bj, 2
  %i.bt = add nuw nsw i32 %i.bs, %i.br
  %i.bu = lshr i32 %i.bt, 2
  %i.bv = trunc nuw i32 %i.bu to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.sroa.23.0 = phi i16 [ %i.bv, %bb.e ], [ %.sroa.23.0.copyload, %bb.a ]
  %.sroa.7.1 = phi i16 [ %.sroa.7.0, %bb.e ], [ %.sroa.7.0.copyload, %bb.a ]
  %i.bw = phi <8 x i16> [ %i.al, %bb.e ], [ %i.b, %bb.a ]
  %i.bx = phi <4 x i16> [ %i.ba, %bb.e ], [ %i.f, %bb.a ]
  %i.by = phi <2 x i16> [ %i.bp, %bb.e ], [ %i.h, %bb.a ]
  %.not56 = icmp eq i32 %1, 0
  br i1 %.not56, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = icmp ne i32 %3, 0                       ; 3 uses
  %or.cond = and i1 %i.j, %i.bz
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ca = load i16, ptr %.sroa.24.0..sroa_idx, align 2, !tbaa !47
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = load i16, ptr %0, align 2, !tbaa !47
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = load i16, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !47
  %i.cg = zext i16 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.cb, 2
  %i.ci = add nuw nsw i32 %i.ch, %i.ce
  %i.cj = add nuw nsw i32 %i.ci, %i.cg
  %i.ck = lshr i32 %i.cj, 2
  %i.cl = trunc nuw i32 %i.ck to i16
  br label %.thread61

bb.i:                                             ; preds = %bb.g
  br i1 %i.j, label %.thread62, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.bz, label %bb.k, label %.thread59

bb.k:                                             ; preds = %bb.j
  %i.cm = load i16, ptr %0, align 2, !tbaa !47
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = mul nuw nsw i32 %i.cn, 3
  %i.cp = load i16, ptr %.sroa.24.0..sroa_idx, align 2, !tbaa !47
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = add nuw nsw i32 %i.cq, 2
  %i.cs = add nuw nsw i32 %i.cr, %i.co
  %i.ct = lshr i32 %i.cs, 2
  %i.cu = trunc nuw i32 %i.ct to i16
  br label %.thread61

bb.l:                                             ; preds = %bb.f
  %.not57 = icmp eq i32 %3, 0
  br i1 %.not57, label %.thread59, label %bb.m

.thread62:                                        ; preds = %bb.i
  %i.cv = load i16, ptr %0, align 2, !tbaa !47
  %i.cw = zext i16 %i.cv to i32                   ; 2 uses
  %i.cx = mul nuw nsw i32 %i.cw, 3
  %i.cy = load i16, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !47
  %i.cz = zext i16 %i.cy to i32
  %i.da = add nuw nsw i32 %i.cz, 2
  %i.db = add nuw nsw i32 %i.da, %i.cx
  %i.dc = lshr i32 %i.db, 2
  %i.dd = trunc nuw i32 %i.dc to i16              ; 2 uses
  br i1 %i.bz, label %.thread62..thread61_crit_edge, label %.thread59

.thread62..thread61_crit_edge:                    ; preds = %.thread62
  %.pre = load i16, ptr %.sroa.24.0..sroa_idx, align 2, !tbaa !47
  %.pre127 = zext i16 %.pre to i32
  br label %.thread61

.thread61:                                        ; preds = %.thread62..thread61_crit_edge, %bb.h, %bb.k
  %.pre-phi128 = phi i32 [ %.pre127, %.thread62..thread61_crit_edge ], [ %i.cb, %bb.h ], [ %i.cq, %bb.k ] ; 2 uses
  %.pre-phi126 = phi i32 [ %i.cw, %.thread62..thread61_crit_edge ], [ %i.cd, %bb.h ], [ %i.cn, %bb.k ]
  %.sroa.0.0 = phi i16 [ %i.dd, %.thread62..thread61_crit_edge ], [ %i.cl, %bb.h ], [ %i.cu, %bb.k ]
  %i.de = shl nuw nsw i32 %.pre-phi128, 1
  %i.df = load i16, ptr %.sroa.26.0..sroa_idx, align 2, !tbaa !47
  %i.dg = zext i16 %i.df to i32                   ; 3 uses
  %i.dh = add nuw nsw i32 %.pre-phi126, 2
  %i.di = add nuw nsw i32 %i.dh, %i.de
  %i.dj = add nuw nsw i32 %i.di, %i.dg
  %.pre124 = add nuw nsw i32 %i.dg, 2
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dk = load i16, ptr %.sroa.24.0..sroa_idx, align 2, !tbaa !47
  %i.dl = zext i16 %i.dk to i32                   ; 2 uses
  %i.dm = mul nuw nsw i32 %i.dl, 3
  %i.dn = load i16, ptr %.sroa.26.0..sroa_idx, align 2, !tbaa !47
  %i.do = zext i16 %i.dn to i32                   ; 2 uses
  %i.dp = add nuw nsw i32 %i.do, 2                ; 2 uses
  %i.dq = add nuw nsw i32 %i.dp, %i.dm
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread61
  %.pre-phi125 = phi i32 [ %i.dp, %bb.m ], [ %.pre124, %.thread61 ]
  %.pre-phi123 = phi i32 [ %i.do, %bb.m ], [ %i.dg, %.thread61 ]
  %.pre-phi122 = phi i32 [ %i.dl, %bb.m ], [ %.pre-phi128, %.thread61 ]
  %.sroa.24.0.in.in = phi i32 [ %i.dq, %bb.m ], [ %i.dj, %.thread61 ]
  %.sroa.0.1 = phi i16 [ %.sroa.0.0.copyload, %bb.m ], [ %.sroa.0.0, %.thread61 ]
  %.sroa.24.0.in = lshr i32 %.sroa.24.0.in.in, 2
  %.sroa.24.0 = trunc i32 %.sroa.24.0.in to i16
  %i.dr = shl nuw nsw i32 %.pre-phi123, 1
  %i.ds = add nuw nsw i32 %.pre-phi122, 2
  %i.dt = add nuw nsw i32 %i.ds, %i.dr
  %i.du = load <4 x i16>, ptr %.sroa.27.0..sroa_idx, align 2, !tbaa !47
  %i.dv = load <4 x i16>, ptr %.sroa.28.0..sroa_idx, align 2, !tbaa !47
  %i.dw = load <4 x i16>, ptr %.sroa.29.0..sroa_idx, align 2, !tbaa !47
  %i.dx = zext <4 x i16> %i.du to <4 x i32>       ; 3 uses
  %i.dy = extractelement <4 x i32> %i.dx, i64 0   ; 2 uses
  %i.dz = add nuw nsw i32 %i.dt, %i.dy
  %i.ea = lshr i32 %i.dz, 2
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = shl nuw nsw i32 %i.dy, 1
  %i.ed = add nuw nsw i32 %.pre-phi125, %i.ec
  %i.ee = zext <4 x i16> %i.dv to <4 x i32>       ; 2 uses
  %i.ef = extractelement <4 x i32> %i.dx, i64 1
  %i.eg = add nuw nsw i32 %i.ed, %i.ef
  %i.eh = lshr i32 %i.eg, 2
  %i.ei = trunc i32 %i.eh to i16
  %i.ej = zext <4 x i16> %i.dw to <4 x i32>       ; 2 uses
  %i.ek = shl nuw nsw <4 x i32> %i.ee, splat (i32 1)
  %i.el = add nuw nsw <4 x i32> %i.dx, splat (i32 2)
  %i.em = add nuw nsw <4 x i32> %i.el, %i.ek
  %i.en = add nuw nsw <4 x i32> %i.em, %i.ej
  %i.eo = lshr <4 x i32> %i.en, splat (i32 2)
  %i.ep = trunc <4 x i32> %i.eo to <4 x i16>
  %i.eq = extractelement <4 x i32> %i.ej, i64 3   ; 2 uses
  %i.er = shl nuw nsw i32 %i.eq, 1
  %i.es = extractelement <4 x i32> %i.ee, i64 3
  %i.et = add nuw nsw i32 %i.es, 2
  %i.eu = add nuw nsw i32 %i.et, %i.eq
  %i.ev = add nuw nsw i32 %i.eu, %i.er
  %i.ew = lshr i32 %i.ev, 2
  %i.ex = trunc i32 %i.ew to i16
  %i.ey = insertelement <8 x i16> poison, i16 %.sroa.24.0, i64 0
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.eb, i64 1
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.ei, i64 2
  %i.fb = shufflevector <4 x i16> %i.ep, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x i16> %i.fa, <8 x i16> %i.fb, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ex, i64 7
  br label %.thread59

.thread59:                                        ; preds = %bb.j, %.thread62, %bb.n, %bb.l
  %.sroa.0.2 = phi i16 [ %.sroa.0.0.copyload, %bb.l ], [ %.sroa.0.1, %bb.n ], [ %i.dd, %.thread62 ], [ %.sroa.0.0.copyload, %bb.j ]
  %i.fe = phi <8 x i16> [ %i.i, %bb.l ], [ %i.fd, %bb.n ], [ %i.i, %.thread62 ], [ %i.i, %bb.j ]
  store i16 %.sroa.0.2, ptr %0, align 2
  store i16 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx, align 2
  store <8 x i16> %i.bw, ptr %.sroa.9.0..sroa_idx, align 2
  store <4 x i16> %i.bx, ptr %.sroa.17.0..sroa_idx, align 2
  store <2 x i16> %i.by, ptr %.sroa.21.0..sroa_idx, align 2
  store i16 %.sroa.23.0, ptr %.sroa.23.0..sroa_idx, align 2
  store <8 x i16> %i.fe, ptr %.sroa.24.0..sroa_idx, align 2
  ret void
}

declare i32 @writeCoeff4x4_CAVLC(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @writeLumaCoeff8x8_CABAC(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #2
end_hunk_0
