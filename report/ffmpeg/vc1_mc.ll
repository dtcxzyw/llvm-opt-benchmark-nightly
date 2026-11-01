Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc1_mc?download=true
inline.NumInlined: 16
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ff_vc1_mc_4mv_chroma:bb.a
  %i.aan = load i32, ptr %i.aac, align 4, !tbaa !108
  %i.aao = add nsw i32 %i.aan, %i.aam
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds i8, ptr %i.aak, i64 %i.aap
  store i8 %i.aaj, ptr %i.aaq, align 1, !tbaa !99
  br label %bb.bm

bb.bm:                                            ; preds = %.thread341, %vc1_lut_scale_chroma.exit, %bb.bl, %bb.am, %bb.b, %bb.az
  ret void

.preheader347.rtvec:                              ; preds = %.preheader347
  %i.aar = load <8 x i8>, ptr %.018.i350, align 1, !tbaa !99
  %i.aas = zext <8 x i8> %i.aar to <8 x i16>
  %i.aat = add nuw nsw <8 x i16> %i.aas, splat (i16 384)
  %i.aau = lshr <8 x i16> %i.aat, splat (i16 1)
  %i.aav = trunc <8 x i16> %i.aau to <8 x i8>
  %i.aaw = xor <8 x i8> %i.aav, splat (i8 -128)
  store <8 x i8> %i.aaw, ptr %.018.i350, align 1, !tbaa !99
  %i.aax = load <8 x i8>, ptr %.019.i349, align 1, !tbaa !99
  %i.aay = zext <8 x i8> %i.aax to <8 x i16>
  %i.aaz = add nuw nsw <8 x i16> %i.aay, splat (i16 384)
  %i.aba = lshr <8 x i16> %i.aaz, splat (i16 1)
  %i.abb = trunc <8 x i16> %i.aba to <8 x i8>
  %i.abc = xor <8 x i8> %i.abb, splat (i8 -128)
  store <8 x i8> %i.abc, ptr %.019.i349, align 1, !tbaa !99
  %i.abd = getelementptr inbounds nuw i8, ptr %.018.i350, i64 8 ; 2 uses
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !99
  %i.abf = zext i8 %i.abe to i16
  %i.abg = add nuw nsw i16 %i.abf, 384
  %i.abh = lshr i16 %i.abg, 1
  %i.abi = trunc i16 %i.abh to i8
  %i.abj = xor i8 %i.abi, -128
  store i8 %i.abj, ptr %i.abd, align 1, !tbaa !99
  %i.abk = getelementptr inbounds nuw i8, ptr %.019.i349, i64 8 ; 2 uses
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !99
  %i.abm = zext i8 %i.abl to i16
  %i.abn = add nuw nsw i16 %i.abm, 384
  %i.abo = lshr i16 %i.abn, 1
  %i.abp = trunc i16 %i.abo to i8
  %i.abq = xor i8 %i.abp, -128
  store i8 %i.abq, ptr %i.abk, align 1, !tbaa !99
  br label %.preheader347.rtcont

.preheader347.rtscalar:                           ; preds = %.preheader347
  %i.abr = load i8, ptr %.018.i350, align 1, !tbaa !99
  %i.abs = zext i8 %i.abr to i16
  %i.abt = add nuw nsw i16 %i.abs, 384
  %i.abu = lshr i16 %i.abt, 1
  %i.abv = trunc i16 %i.abu to i8
  %i.abw = xor i8 %i.abv, -128
  store i8 %i.abw, ptr %.018.i350, align 1, !tbaa !99
  %i.abx = load i8, ptr %.019.i349, align 1, !tbaa !99
  %i.aby = zext i8 %i.abx to i16
  %i.abz = add nuw nsw i16 %i.aby, 384
  %i.aca = lshr i16 %i.abz, 1
  %i.acb = trunc i16 %i.aca to i8
  %i.acc = xor i8 %i.acb, -128
  store i8 %i.acc, ptr %.019.i349, align 1, !tbaa !99
  %i.acd = getelementptr inbounds nuw i8, ptr %.018.i350, i64 1 ; 2 uses
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !99
  %i.acf = zext i8 %i.ace to i16
  %i.acg = add nuw nsw i16 %i.acf, 384
  %i.ach = lshr i16 %i.acg, 1
  %i.aci = trunc i16 %i.ach to i8
  %i.acj = xor i8 %i.aci, -128
  store i8 %i.acj, ptr %i.acd, align 1, !tbaa !99
  %i.ack = getelementptr inbounds nuw i8, ptr %.019.i349, i64 1 ; 2 uses
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !99
  %i.acm = zext i8 %i.acl to i16
  %i.acn = add nuw nsw i16 %i.acm, 384
  %i.aco = lshr i16 %i.acn, 1
  %i.acp = trunc i16 %i.aco to i8
  %i.acq = xor i8 %i.acp, -128
  store i8 %i.acq, ptr %i.ack, align 1, !tbaa !99
  %i.acr = getelementptr inbounds nuw i8, ptr %.018.i350, i64 2 ; 2 uses
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !99
  %i.act = zext i8 %i.acs to i16
  %i.acu = add nuw nsw i16 %i.act, 384
  %i.acv = lshr i16 %i.acu, 1
  %i.acw = trunc i16 %i.acv to i8
  %i.acx = xor i8 %i.acw, -128
  store i8 %i.acx, ptr %i.acr, align 1, !tbaa !99
  %i.acy = getelementptr inbounds nuw i8, ptr %.019.i349, i64 2 ; 2 uses
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !99
  %i.ada = zext i8 %i.acz to i16
  %i.adb = add nuw nsw i16 %i.ada, 384
  %i.adc = lshr i16 %i.adb, 1
  %i.add = trunc i16 %i.adc to i8
  %i.ade = xor i8 %i.add, -128
  store i8 %i.ade, ptr %i.acy, align 1, !tbaa !99
  %i.adf = getelementptr inbounds nuw i8, ptr %.018.i350, i64 3 ; 2 uses
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !99
  %i.adh = zext i8 %i.adg to i16
  %i.adi = add nuw nsw i16 %i.adh, 384
  %i.adj = lshr i16 %i.adi, 1
  %i.adk = trunc i16 %i.adj to i8
  %i.adl = xor i8 %i.adk, -128
  store i8 %i.adl, ptr %i.adf, align 1, !tbaa !99
  %i.adm = getelementptr inbounds nuw i8, ptr %.019.i349, i64 3 ; 2 uses
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !99
  %i.ado = zext i8 %i.adn to i16
  %i.adp = add nuw nsw i16 %i.ado, 384
  %i.adq = lshr i16 %i.adp, 1
  %i.adr = trunc i16 %i.adq to i8
  %i.ads = xor i8 %i.adr, -128
  store i8 %i.ads, ptr %i.adm, align 1, !tbaa !99
  %i.adt = getelementptr inbounds nuw i8, ptr %.018.i350, i64 4 ; 2 uses
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !99
  %i.adv = zext i8 %i.adu to i16
  %i.adw = add nuw nsw i16 %i.adv, 384
  %i.adx = lshr i16 %i.adw, 1
  %i.ady = trunc i16 %i.adx to i8
  %i.adz = xor i8 %i.ady, -128
  store i8 %i.adz, ptr %i.adt, align 1, !tbaa !99
  %i.aea = getelementptr inbounds nuw i8, ptr %.019.i349, i64 4 ; 2 uses
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !99
  %i.aec = zext i8 %i.aeb to i16
  %i.aed = add nuw nsw i16 %i.aec, 384
  %i.aee = lshr i16 %i.aed, 1
  %i.aef = trunc i16 %i.aee to i8
  %i.aeg = xor i8 %i.aef, -128
  store i8 %i.aeg, ptr %i.aea, align 1, !tbaa !99
  %i.aeh = getelementptr inbounds nuw i8, ptr %.018.i350, i64 5 ; 2 uses
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !99
  %i.aej = zext i8 %i.aei to i16
  %i.aek = add nuw nsw i16 %i.aej, 384
  %i.ael = lshr i16 %i.aek, 1
  %i.aem = trunc i16 %i.ael to i8
  %i.aen = xor i8 %i.aem, -128
  store i8 %i.aen, ptr %i.aeh, align 1, !tbaa !99
  %i.aeo = getelementptr inbounds nuw i8, ptr %.019.i349, i64 5 ; 2 uses
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !99
  %i.aeq = zext i8 %i.aep to i16
  %i.aer = add nuw nsw i16 %i.aeq, 384
  %i.aes = lshr i16 %i.aer, 1
  %i.aet = trunc i16 %i.aes to i8
  %i.aeu = xor i8 %i.aet, -128
  store i8 %i.aeu, ptr %i.aeo, align 1, !tbaa !99
  %i.aev = getelementptr inbounds nuw i8, ptr %.018.i350, i64 6 ; 2 uses
  %i.aew = load i8, ptr %i.aev, align 1, !tbaa !99
  %i.aex = zext i8 %i.aew to i16
  %i.aey = add nuw nsw i16 %i.aex, 384
  %i.aez = lshr i16 %i.aey, 1
  %i.afa = trunc i16 %i.aez to i8
  %i.afb = xor i8 %i.afa, -128
  store i8 %i.afb, ptr %i.aev, align 1, !tbaa !99
  %i.afc = getelementptr inbounds nuw i8, ptr %.019.i349, i64 6 ; 2 uses
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !99
  %i.afe = zext i8 %i.afd to i16
  %i.aff = add nuw nsw i16 %i.afe, 384
  %i.afg = lshr i16 %i.aff, 1
  %i.afh = trunc i16 %i.afg to i8
  %i.afi = xor i8 %i.afh, -128
  store i8 %i.afi, ptr %i.afc, align 1, !tbaa !99
  %i.afj = getelementptr inbounds nuw i8, ptr %.018.i350, i64 7 ; 2 uses
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !99
  %i.afl = zext i8 %i.afk to i16
  %i.afm = add nuw nsw i16 %i.afl, 384
  %i.afn = lshr i16 %i.afm, 1
  %i.afo = trunc i16 %i.afn to i8
  %i.afp = xor i8 %i.afo, -128
  store i8 %i.afp, ptr %i.afj, align 1, !tbaa !99
  %i.afq = getelementptr inbounds nuw i8, ptr %.019.i349, i64 7 ; 2 uses
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !99
  %i.afs = zext i8 %i.afr to i16
  %i.aft = add nuw nsw i16 %i.afs, 384
  %i.afu = lshr i16 %i.aft, 1
  %i.afv = trunc i16 %i.afu to i8
  %i.afw = xor i8 %i.afv, -128
  store i8 %i.afw, ptr %i.afq, align 1, !tbaa !99
  %i.afx = getelementptr inbounds nuw i8, ptr %.018.i350, i64 8 ; 2 uses
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !99
  %i.afz = zext i8 %i.afy to i16
  %i.aga = add nuw nsw i16 %i.afz, 384
  %i.agb = lshr i16 %i.aga, 1
  %i.agc = trunc i16 %i.agb to i8
  %i.agd = xor i8 %i.agc, -128
  store i8 %i.agd, ptr %i.afx, align 1, !tbaa !99
  %i.age = getelementptr inbounds nuw i8, ptr %.019.i349, i64 8 ; 2 uses
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !99
  %i.agg = zext i8 %i.agf to i16
  %i.agh = add nuw nsw i16 %i.agg, 384
  %i.agi = lshr i16 %i.agh, 1
  %i.agj = trunc i16 %i.agi to i8
  %i.agk = xor i8 %i.agj, -128
  store i8 %i.agk, ptr %i.age, align 1, !tbaa !99
  br label %.preheader347.rtcont

.preheader347.rtcont:                             ; preds = %.preheader347.rtscalar, %.preheader347.rtvec
  %.rtmerge424 = add nuw nsw i32 %.0.i299351, 1   ; 2 uses
  %exitcond.not.rtmerge = icmp eq i32 %.rtmerge424, 9
  %.rtmerge423 = getelementptr inbounds i8, ptr %.019.i349, i64 %i.rq
  %.rtmerge = getelementptr inbounds i8, ptr %.018.i350, i64 %i.rq
  br i1 %exitcond.not.rtmerge, label %vc1_scale_chroma.exit, label %.preheader347, !llvm.loop !4
}

; Function Attrs: nounwind uwtable
define void @ff_vc1_mc_4mv_chroma4(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 10 uses
  %i.b = alloca [4 x i32], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9896
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.f = load i32, ptr %i.e, align 16, !tbaa !50
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !99    ; 3 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %.not = icmp eq i8 %i.i, 0                      ; 3 uses
  %i.k = select i1 %.not, i32 4, i32 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !41
  %i.n = ashr i32 %i.m, 1                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !53
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !50   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 3 uses
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.u ; 6 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !50   ; 2 uses
  %i.x = and i32 %i.w, 3
  %i.y = icmp eq i32 %i.x, 3
  %i.z = zext i1 %i.y to i32
  %i.aa = add nsw i32 %i.w, %i.z
  %i.ab = ashr i32 %i.aa, 1
  store i32 %i.ab, ptr %i.a, align 16, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !50 ; 3 uses
  br i1 %.not, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.ae = ashr i32 %i.ad, 1
  %i.af = and i32 %i.ae, -8
  %i.ag = and i32 %i.ad, 15
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @ff_vc1_mc_4mv_chroma4.s_rndtblfield, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !99
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.af, %i.ak
  store i32 %i.al, ptr %i.b, align 16, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !50 ; 2 uses
  %i.ao = and i32 %i.an, 3
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = zext i1 %i.ap to i32
  %i.ar = add nsw i32 %i.an, %i.aq
  %i.as = ashr i32 %i.ar, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !50 ; 2 uses
  %i.aw = ashr i32 %i.av, 1
  %i.ax = and i32 %i.aw, -8
  %i.ay = and i32 %i.av, 15
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @ff_vc1_mc_4mv_chroma4.s_rndtblfield, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !99
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nsw i32 %i.ax, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !50
  %i.bf = sext i32 %2 to i64
  %i.bg = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !50 ; 2 uses
  %i.bj = and i32 %i.bi, 3
  %i.bk = icmp eq i32 %i.bj, 3
  %i.bl = zext i1 %i.bk to i32
  %i.bm = add nsw i32 %i.bi, %i.bl
  %i.bn = ashr i32 %i.bm, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !50 ; 2 uses
  %i.br = ashr i32 %i.bq, 1
  %i.bs = and i32 %i.br, -8
  %i.bt = and i32 %i.bq, 15
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @ff_vc1_mc_4mv_chroma4.s_rndtblfield, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !99
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bs, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !50
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !50 ; 2 uses
  %i.cc = and i32 %i.cb, 3
  %i.cd = icmp eq i32 %i.cc, 3
  %i.ce = zext i1 %i.cd to i32
  %i.cf = add nsw i32 %i.cb, %i.ce
  %i.cg = ashr i32 %i.cf, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !50 ; 2 uses
  %i.ck = ashr i32 %i.cj, 1
  %i.cl = and i32 %i.ck, -8
  %i.cm = and i32 %i.cj, 15
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @ff_vc1_mc_4mv_chroma4.s_rndtblfield, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !99
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cl, %i.cq
  br label %.preheader255

.split.us.preheader:                              ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !50 ; 2 uses
  %i.cu = and i32 %i.ct, 3
  %i.cv = icmp eq i32 %i.cu, 3
  %i.cw = zext i1 %i.cv to i32
  %i.cx = add nsw i32 %i.ct, %i.cw
  %i.cy = ashr i32 %i.cx, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !50
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !50
  %4 = insertelement <2 x i32> poison, i32 %i.ad, i64 0
  %5 = insertelement <2 x i32> %4, i32 %i.db, i64 1 ; 2 uses
  %6 = and <2 x i32> %5, splat (i32 3)
  %7 = icmp eq <2 x i32> %6, splat (i32 3)
  %8 = zext <2 x i1> %7 to <2 x i32>
  %9 = add nsw <2 x i32> %5, %8
  %10 = ashr <2 x i32> %9, splat (i32 1)
  store <2 x i32> %10, ptr %i.b, align 16, !tbaa !50
  %i.dc = sext i32 %2 to i64
  %i.dd = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.dc ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !50 ; 2 uses
  %i.dg = and i32 %i.df, 3
  %i.dh = icmp eq i32 %i.dg, 3
  %i.di = zext i1 %i.dh to i32
  %i.dj = add nsw i32 %i.df, %i.di
  %i.dk = ashr i32 %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !50
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !50 ; 2 uses
  %i.do = and i32 %i.dn, 3
  %i.dp = icmp eq i32 %i.do, 3
  %i.dq = zext i1 %i.dp to i32
  %i.dr = add nsw i32 %i.dn, %i.dq
  %i.ds = ashr i32 %i.dr, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.ds, ptr %i.dt, align 8, !tbaa !50
  %i.du = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !50 ; 2 uses
  %i.dw = and i32 %i.dv, 3
  %i.dx = icmp eq i32 %i.dw, 3
  %i.dy = zext i1 %i.dx to i32
  %i.dz = add nsw i32 %i.dv, %i.dy
  %i.ea = ashr i32 %i.dz, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !50
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !50 ; 2 uses
  %i.ee = and i32 %i.ed, 3
  %i.ef = icmp eq i32 %i.ee, 3
  %i.eg = zext i1 %i.ef to i32
  %i.eh = add nsw i32 %i.ed, %i.eg
  %i.ei = ashr i32 %i.eh, 1
  br label %.preheader255

.preheader255:                                    ; preds = %.split.preheader, %.split.us.preheader
  %.sink = phi i32 [ %i.cr, %.split.preheader ], [ %i.ei, %.split.us.preheader ]
  %i.ej = phi i64 [ 0, %.split.preheader ], [ 2, %.split.us.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.sink, ptr %i.ek, align 4, !tbaa !50
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 9700
  %.not240 = icmp eq i32 %2, 0
  %.not241 = icmp eq i32 %1, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 9128 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 9672 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 9684 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 7080
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 9656
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 9680
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 7 uses
  %i.fb = shl i32 5, %i.j                         ; 5 uses
  %i.fc = icmp slt i32 %i.n, %i.fb
  %i.fd = sub nsw i32 %i.n, %i.fb
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 2656 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 6 uses
  %i.fg = shl i32 %i.s, 1
  %i.fh = sext i32 %i.fg to i64                   ; 8 uses
  %i.fi = add nuw nsw i32 %i.fb, 1
  %i.fj = ashr i32 %i.fi, 1                       ; 2 uses
  %i.fk = sext i32 %i.s to i64                    ; 8 uses
  %i.fl = shl nuw i32 1, %i.j
  %i.fm = zext i8 %i.i to i64                     ; 3 uses
  %.not245 = icmp eq i32 %3, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 9688
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 5856
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 5136
  br label %bb.b

bb.b:                                             ; preds = %.preheader255, %vc1_lut_scale_chroma.exit
  %indvars.iv = phi i64 [ 0, %.preheader255 ], [ %indvars.iv.next, %vc1_lut_scale_chroma.exit ] ; 5 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.fu = shl nuw nsw i32 %indvars.iv.tr, 2
  %i.fv = and i32 %i.fu, 4                        ; 2 uses
  %.not239 = icmp samesign ult i64 %indvars.iv, 2 ; 2 uses
  br i1 %.not239, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fw = load i64, ptr %i.el, align 8, !tbaa !93
  %i.fx = shl i64 %i.fw, %i.ej
  %i.fy = trunc i64 %i.fx to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fz = phi i32 [ %i.k, %bb.c ], [ 0, %bb.b ]
  %i.ga = phi i32 [ %i.fy, %bb.c ], [ 0, %bb.b ]
  %i.gb = add i32 %i.ga, %i.fv
  %i.gc = load i32, ptr %i.em, align 4, !tbaa !62
  %i.gd = shl nsw i32 %i.gc, 3
  %i.ge = or disjoint i32 %i.gd, %i.fv
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !50 ; 2 uses
  %i.gh = ashr i32 %i.gg, 2
  %i.gi = add nsw i32 %i.ge, %i.gh                ; 2 uses
  %i.gj = load i32, ptr %i.en, align 8, !tbaa !72
  %i.gk = shl nsw i32 %i.gj, 3
  %i.gl = or disjoint i32 %i.gk, %i.fz
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !50 ; 2 uses
  %i.go = ashr i32 %i.gn, 2
  %i.gp = add nsw i32 %i.gl, %i.go                ; 3 uses
  %i.gq = load ptr, ptr %i.eo, align 8, !tbaa !76 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 120
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !90
  %i.gt = ashr i32 %i.gs, 1
  %i.gu = icmp slt i32 %i.gi, -8
  %..i251 = tail call i32 @llvm.smin.i32(i32 %i.gi, i32 %i.gt)
  %.0.i252 = select i1 %i.gu, i32 -8, i32 %..i251 ; 8 uses
  %i.gv = load i32, ptr %i.ep, align 4, !tbaa !64
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gx = and i32 %i.gp, 1                        ; 2 uses
  %i.gy = or disjoint i32 %i.gx, -8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 124
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !91
  %i.hb = ashr i32 %i.ha, 1
  %i.hc = add nsw i32 %i.hb, %i.gx
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gq, i64 124
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !91
  %i.hf = ashr i32 %i.he, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink274 = phi i32 [ -8, %bb.f ], [ %i.gy, %bb.e ] ; 2 uses
  %.sink273 = phi i32 [ %i.hf, %bb.f ], [ %i.hc, %bb.e ]
  %i.hg = icmp slt i32 %i.gp, %.sink274
  %..i = tail call i32 @llvm.smin.i32(i32 %i.gp, i32 %.sink273)
  %.0.i = select i1 %i.hg, i32 %.sink274, i32 %..i ; 8 uses
  br i1 %.not239, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not241, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  br i1 %.not240, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.0234.in = phi ptr [ %i.ev, %bb.j ], [ %i.eq, %bb.i ], [ %i.eq, %bb.h ]
  %.0232.in = phi ptr [ %i.ew, %bb.j ], [ %i.er, %bb.i ], [ %i.er, %bb.h ]
  %.0229.in = phi ptr [ %i.ey, %bb.j ], [ %i.et, %bb.i ], [ %i.et, %bb.h ]
  %.0228.in = phi ptr [ %i.ez, %bb.j ], [ %i.eu, %bb.i ], [ %i.eu, %bb.h ]
  %.0 = phi ptr [ %i.ex, %bb.j ], [ %i.es, %bb.i ], [ %i.es, %bb.h ] ; 2 uses
  %.0228 = load i32, ptr %.0228.in, align 4, !tbaa !50
  %.0234 = load ptr, ptr %.0234.in, align 8, !tbaa !52 ; 2 uses
  %.not242 = icmp eq ptr %.0234, null
  br i1 %.not242, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0229 = load i32, ptr %.0229.in, align 8, !tbaa !50
  %.0232 = load ptr, ptr %.0232.in, align 8, !tbaa !52
  %i.hh = sext i32 %.0.i to i64
  %i.hi = load i64, ptr %i.el, align 8, !tbaa !93
  %i.hj = mul nsw i64 %i.hi, %i.hh
  %i.hk = sext i32 %.0.i252 to i64
  %i.hl = add nsw i64 %i.hj, %i.hk                ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %.0234, i64 %i.hl ; 4 uses
  %i.hn = getelementptr inbounds i8, ptr %.0232, i64 %i.hl ; 4 uses
  %i.ho = shl i32 %i.gg, 1
  %i.hp = and i32 %i.ho, 6                        ; 3 uses
  store i32 %i.hp, ptr %i.gf, align 4, !tbaa !50
  %i.hq = shl i32 %i.gn, 1
  %i.hr = and i32 %i.hq, 6                        ; 3 uses
  store i32 %i.hr, ptr %i.gm, align 4, !tbaa !50
  %.not243 = icmp eq i32 %.0229, 0                ; 2 uses
  br i1 %.not243, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.hs = load i32, ptr %i.fa, align 4, !tbaa !95 ; 2 uses
  %i.ht = icmp slt i32 %i.hs, 10
  %brmerge = select i1 %i.ht, i1 true, i1 %i.fc
  br i1 %brmerge, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hu = lshr i32 %i.hs, 1
  %i.hv = add nsw i32 %i.hu, -5
  %i.hw = icmp ugt i32 %.0.i252, %i.hv
  %i.hx = icmp ugt i32 %.0.i, %i.fd
  %or.cond = select i1 %i.hw, i1 true, i1 %i.hx
end_hunk_0
