inline.NumInlined: 3419
inline.NumDeleted: 948
begin_hunk_0_@bcdec_bc6h_half:bb.a
  %i.alj = shl i32 %i.alg, 10
  %i.alk = and i32 %i.alj, 1024
  %i.all = or disjoint i32 %i.alk, %i.akr
  store i32 %i.all, ptr %i.a, align 16, !tbaa !3
  %i.alm = trunc i64 %i.alh to i32
  %i.aln = and i32 %i.alm, 511
  %i.alo = tail call i64 @llvm.fshl.i64(i64 %i.ali, i64 %i.alh, i64 55) ; 2 uses
  %i.alp = lshr i64 %.sroa.501.0, 49
  store i32 %i.aln, ptr %i.l, align 4, !tbaa !3
  %i.alq = trunc i64 %i.alo to i32
  %i.alr = tail call i64 @llvm.fshl.i64(i64 %i.alp, i64 %i.alo, i64 63) ; 2 uses
  %i.als = lshr i64 %.sroa.501.0, 50
  %i.alt = shl i32 %i.alq, 10
  %i.alu = and i32 %i.alt, 1024
  %i.alv = or disjoint i32 %i.alu, %i.akv
  store i32 %i.alv, ptr %i.b, align 16, !tbaa !3
  %i.alw = trunc i64 %i.alr to i32
  %i.alx = and i32 %i.alw, 511
  %i.aly = tail call i64 @llvm.fshl.i64(i64 %i.als, i64 %i.alr, i64 55) ; 2 uses
  %i.alz = lshr i64 %.sroa.501.0, 59
  store i32 %i.alx, ptr %i.o, align 4, !tbaa !3
  %i.ama = trunc i64 %i.aly to i32
  %i.amb = tail call i64 @llvm.fshl.i64(i64 %i.alz, i64 %i.aly, i64 63)
  %i.amc = lshr i64 %.sroa.501.0, 60
  %i.amd = shl i32 %i.ama, 10
  %i.ame = and i32 %i.amd, 1024
  %i.amf = or disjoint i32 %i.ame, %i.akz         ; 2 uses
  store i32 %i.amf, ptr %i.c, align 16, !tbaa !3
  br label %bb.q

.lr.ph.i:                                         ; preds = %bb.c
  %i.amg = trunc i64 %.sroa.0.0 to i32
  %i.amh = and i32 %i.amg, 1023
  %i.ami = tail call i64 @llvm.fshl.i64(i64 %.sroa.501.0, i64 %.sroa.0.0, i64 54) ; 2 uses
  %i.amj = lshr i64 %.sroa.501.0, 10
  %i.amk = trunc i64 %i.ami to i32
  %i.aml = and i32 %i.amk, 1023
  %i.amm = tail call i64 @llvm.fshl.i64(i64 %i.amj, i64 %i.ami, i64 54) ; 2 uses
  %i.amn = lshr i64 %.sroa.501.0, 20
  %i.amo = trunc i64 %i.amm to i32
  %i.amp = and i32 %i.amo, 1023
  %i.amq = tail call i64 @llvm.fshl.i64(i64 %i.amn, i64 %i.amm, i64 54) ; 2 uses
  %i.amr = lshr i64 %.sroa.501.0, 30
  %i.ams = trunc i64 %i.amq to i32
  %i.amt = and i32 %i.ams, 255
  %i.amu = tail call i64 @llvm.fshl.i64(i64 %i.amr, i64 %i.amq, i64 56) ; 2 uses
  store i32 %i.amt, ptr %i.i, align 4, !tbaa !3
  %i.amv = trunc i64 %i.amu to i32                ; 2 uses
  %i.amw = lshr i32 %i.amv, 1
  %i.amx = and i32 %i.amw, 1
  %i.amy = shl i32 %i.amv, 1
  %i.amz = and i32 %i.amy, 2
  %i.ana = or disjoint i32 %i.amx, %i.amz
  %i.anb = lshr i64 %.sroa.501.0, 38
  %i.anc = tail call i64 @llvm.fshl.i64(i64 %i.anb, i64 %i.amu, i64 62) ; 2 uses
  %i.and = lshr i64 %.sroa.501.0, 40
  %i.ane = shl nuw nsw i32 %i.ana, 10
  %i.anf = or disjoint i32 %i.ane, %i.amh
  store i32 %i.anf, ptr %i.a, align 16, !tbaa !3
  %i.ang = trunc i64 %i.anc to i32
  %i.anh = and i32 %i.ang, 255
  %i.ani = tail call i64 @llvm.fshl.i64(i64 %i.and, i64 %i.anc, i64 56) ; 2 uses
  store i32 %i.anh, ptr %i.l, align 4, !tbaa !3
  %i.anj = trunc i64 %i.ani to i32                ; 2 uses
  %i.ank = lshr i32 %i.anj, 1
  %i.anl = and i32 %i.ank, 1
  %i.anm = shl i32 %i.anj, 1
  %i.ann = and i32 %i.anm, 2
  %i.ano = or disjoint i32 %i.anl, %i.ann
  %i.anp = lshr i64 %.sroa.501.0, 48
  %i.anq = tail call i64 @llvm.fshl.i64(i64 %i.anp, i64 %i.ani, i64 62) ; 2 uses
  %i.anr = lshr i64 %.sroa.501.0, 50
  %i.ans = shl nuw nsw i32 %i.ano, 10
  %i.ant = or disjoint i32 %i.ans, %i.aml
  store i32 %i.ant, ptr %i.b, align 16, !tbaa !3
  %i.anu = trunc i64 %i.anq to i32
  %i.anv = and i32 %i.anu, 255
  %i.anw = tail call i64 @llvm.fshl.i64(i64 %i.anr, i64 %i.anq, i64 56) ; 2 uses
  store i32 %i.anv, ptr %i.o, align 4, !tbaa !3
  %i.anx = trunc i64 %i.anw to i32                ; 2 uses
  %i.any = lshr i32 %i.anx, 1
  %i.anz = and i32 %i.any, 1
  %i.aoa = shl i32 %i.anx, 1
  %i.aob = and i32 %i.aoa, 2
  %i.aoc = or disjoint i32 %i.anz, %i.aob
  %i.aod = lshr i64 %.sroa.501.0, 58
  %i.aoe = tail call i64 @llvm.fshl.i64(i64 %i.aod, i64 %i.anw, i64 62)
  %i.aof = lshr i64 %.sroa.501.0, 60
  %i.aog = shl nuw nsw i32 %i.aoc, 10
  %i.aoh = or disjoint i32 %i.aog, %i.amp         ; 2 uses
  store i32 %i.aoh, ptr %i.c, align 16, !tbaa !3
  br label %bb.q

.lr.ph.i138:                                      ; preds = %bb.c
  %i.aoi = trunc i64 %.sroa.0.0 to i32
  %i.aoj = and i32 %i.aoi, 1023
  %i.aok = tail call i64 @llvm.fshl.i64(i64 %.sroa.501.0, i64 %.sroa.0.0, i64 54) ; 2 uses
  %i.aol = lshr i64 %.sroa.501.0, 10
  %i.aom = trunc i64 %i.aok to i32
  %i.aon = and i32 %i.aom, 1023
  %i.aoo = tail call i64 @llvm.fshl.i64(i64 %i.aol, i64 %i.aok, i64 54) ; 2 uses
  %i.aop = lshr i64 %.sroa.501.0, 20
  %i.aoq = trunc i64 %i.aoo to i32
  %i.aor = and i32 %i.aoq, 1023
  %i.aos = tail call i64 @llvm.fshl.i64(i64 %i.aop, i64 %i.aoo, i64 54) ; 2 uses
  %i.aot = lshr i64 %.sroa.501.0, 30
  %i.aou = trunc i64 %i.aos to i32
  %i.aov = and i32 %i.aou, 15
  %i.aow = tail call i64 @llvm.fshl.i64(i64 %i.aot, i64 %i.aos, i64 60) ; 2 uses
  store i32 %i.aov, ptr %i.i, align 4, !tbaa !3
  %i.aox = trunc i64 %i.aow to i32                ; 6 uses
  %i.aoy = shl i32 %i.aox, 2
  %i.aoz = and i32 %i.aoy, 4
  %i.apa = and i32 %i.aox, 2
  %i.apb = or disjoint i32 %i.apa, %i.aoz
  %i.apc = lshr i32 %i.aox, 4
  %i.apd = shl nuw nsw i32 %i.apb, 2
  %.mask = and i32 %i.aox, 4
  %i.ape = or disjoint i32 %.mask, %i.apd
  %i.apf = lshr i32 %i.aox, 2
  %i.apg = and i32 %i.apf, 2
  %i.aph = or disjoint i32 %i.ape, %i.apg
  %i.api = and i32 %i.apc, 1
  %i.apj = or disjoint i32 %i.api, %i.aph
  %i.apk = lshr i64 %.sroa.501.0, 34
  %i.apl = tail call i64 @llvm.fshl.i64(i64 %i.apk, i64 %i.aow, i64 58) ; 2 uses
  %i.apm = lshr i64 %.sroa.501.0, 40
  %i.apn = shl nuw nsw i32 %i.apj, 11
  %i.apo = shl i32 %i.aox, 5
  %i.app = and i32 %i.apo, 1024
  %i.apq = or disjoint i32 %i.apn, %i.app
  %i.apr = or disjoint i32 %i.apq, %i.aoj
  store i32 %i.apr, ptr %i.a, align 16, !tbaa !3
  %i.aps = trunc i64 %i.apl to i32
  %i.apt = and i32 %i.aps, 15
  %i.apu = tail call i64 @llvm.fshl.i64(i64 %i.apm, i64 %i.apl, i64 60) ; 2 uses
  store i32 %i.apt, ptr %i.l, align 4, !tbaa !3
  %i.apv = trunc i64 %i.apu to i32                ; 6 uses
  %i.apw = shl i32 %i.apv, 2
  %i.apx = and i32 %i.apw, 4
  %i.apy = and i32 %i.apv, 2
  %i.apz = or disjoint i32 %i.apy, %i.apx
  %i.aqa = lshr i32 %i.apv, 4
  %i.aqb = shl nuw nsw i32 %i.apz, 2
  %.mask920 = and i32 %i.apv, 4
  %i.aqc = or disjoint i32 %.mask920, %i.aqb
  %i.aqd = lshr i32 %i.apv, 2
  %i.aqe = and i32 %i.aqd, 2
  %i.aqf = or disjoint i32 %i.aqc, %i.aqe
  %i.aqg = and i32 %i.aqa, 1
  %i.aqh = or disjoint i32 %i.aqg, %i.aqf
  %i.aqi = lshr i64 %.sroa.501.0, 44
  %i.aqj = tail call i64 @llvm.fshl.i64(i64 %i.aqi, i64 %i.apu, i64 58) ; 2 uses
  %i.aqk = lshr i64 %.sroa.501.0, 50
  %i.aql = shl nuw nsw i32 %i.aqh, 11
  %i.aqm = shl i32 %i.apv, 5
  %i.aqn = and i32 %i.aqm, 1024
  %i.aqo = or disjoint i32 %i.aql, %i.aqn
  %i.aqp = or disjoint i32 %i.aqo, %i.aon
  store i32 %i.aqp, ptr %i.b, align 16, !tbaa !3
  %i.aqq = trunc i64 %i.aqj to i32
  %i.aqr = and i32 %i.aqq, 15
  %i.aqs = tail call i64 @llvm.fshl.i64(i64 %i.aqk, i64 %i.aqj, i64 60) ; 2 uses
  store i32 %i.aqr, ptr %i.o, align 4, !tbaa !3
  %i.aqt = trunc i64 %i.aqs to i32                ; 6 uses
  %i.aqu = shl i32 %i.aqt, 2
  %i.aqv = and i32 %i.aqu, 4
  %i.aqw = and i32 %i.aqt, 2
  %i.aqx = or disjoint i32 %i.aqw, %i.aqv
  %i.aqy = lshr i32 %i.aqt, 4
  %i.aqz = shl nuw nsw i32 %i.aqx, 2
  %.mask921 = and i32 %i.aqt, 4
  %i.ara = or disjoint i32 %.mask921, %i.aqz
  %i.arb = lshr i32 %i.aqt, 2
  %i.arc = and i32 %i.arb, 2
  %i.ard = or disjoint i32 %i.ara, %i.arc
  %i.are = and i32 %i.aqy, 1
  %i.arf = or disjoint i32 %i.are, %i.ard
  %i.arg = lshr i64 %.sroa.501.0, 54
  %i.arh = tail call i64 @llvm.fshl.i64(i64 %i.arg, i64 %i.aqs, i64 58)
  %i.ari = lshr i64 %.sroa.501.0, 60
  %i.arj = shl nuw nsw i32 %i.arf, 11
  %i.ark = shl i32 %i.aqt, 5
  %i.arl = and i32 %i.ark, 1024
  %i.arm = or disjoint i32 %i.arj, %i.arl
  %i.arn = or disjoint i32 %i.arm, %i.aor         ; 2 uses
  store i32 %i.arn, ptr %i.c, align 16, !tbaa !3
  br label %bb.q

bb.p:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.aro = phi i32 [ %i.ahi, %bb.m ], [ %i.act, %bb.l ], [ %i.yz, %bb.k ], [ %i.vn, %bb.j ], [ %i.rw, %bb.i ], [ %i.qd, %bb.h ], [ %i.mu, %bb.g ], [ %i.jr, %bb.f ], [ %i.fo, %bb.e ], [ %i.bc, %bb.d ]
  %.sroa.0.1.ph = phi i64 [ %i.ajr, %bb.m ], [ %i.afh, %bb.l ], [ %i.abo, %bb.k ], [ %i.xv, %bb.j ], [ %i.uj, %bb.i ], [ %i.rc, %bb.h ], [ %i.nw, %bb.g ], [ %i.kq, %bb.f ], [ %i.hp, %bb.e ], [ %i.dh, %bb.d ]
  %.0115.ph.in = phi i32 [ %i.ajq, %bb.m ], [ %i.afg, %bb.l ], [ %i.abn, %bb.k ], [ %i.xu, %bb.j ], [ %i.ui, %bb.i ], [ %i.rb, %bb.h ], [ %i.nv, %bb.g ], [ %i.kp, %bb.f ], [ %i.ho, %bb.e ], [ %i.dg, %bb.d ]
  %or.cond.ph = phi i1 [ false, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ]
  %.1114.ph = phi i64 [ 9, %bb.m ], [ 8, %bb.l ], [ 7, %bb.k ], [ 6, %bb.j ], [ 5, %bb.i ], [ 4, %bb.h ], [ 3, %bb.g ], [ 2, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ]
  %.0115.ph = and i32 %.0115.ph.in, 31
  %i.arp = zext nneg i32 %.0115.ph to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %.lr.ph.i, %.lr.ph.i138, %bb.p
  %i.arq = phi i32 [ %i.aro, %bb.p ], [ %i.arn, %.lr.ph.i138 ], [ %i.aoh, %.lr.ph.i ], [ %i.amf, %bb.o ], [ %i.akb, %bb.n ] ; 3 uses
  %.sroa.501.1729744 = phi i64 [ 0, %bb.p ], [ %i.ari, %.lr.ph.i138 ], [ %i.aof, %.lr.ph.i ], [ %i.amc, %bb.o ], [ %i.akp, %bb.n ]
  %.sroa.0.1730742 = phi i64 [ %.sroa.0.1.ph, %bb.p ], [ %i.arh, %.lr.ph.i138 ], [ %i.aoe, %.lr.ph.i ], [ %i.amb, %bb.o ], [ %i.ako, %bb.n ]
  %i.arr = phi i1 [ false, %bb.p ], [ true, %.lr.ph.i138 ], [ true, %.lr.ph.i ], [ true, %bb.o ], [ true, %bb.n ] ; 4 uses
  %or.cond731740 = phi i1 [ %or.cond.ph, %bb.p ], [ true, %.lr.ph.i138 ], [ true, %.lr.ph.i ], [ true, %bb.o ], [ false, %bb.n ] ; 2 uses
  %.1114732738 = phi i64 [ %.1114.ph, %bb.p ], [ 13, %.lr.ph.i138 ], [ 12, %.lr.ph.i ], [ 11, %bb.o ], [ 10, %bb.n ] ; 7 uses
  %i.ars = phi i64 [ %i.arp, %bb.p ], [ 0, %.lr.ph.i138 ], [ 0, %.lr.ph.i ], [ 0, %bb.o ], [ 0, %bb.n ]
  %.not923 = icmp eq i32 %3, 0
  br i1 %.not923, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.q
  %i.art = load i32, ptr %i.a, align 16, !tbaa !3
  %i.aru = getelementptr inbounds nuw i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 %.1114732738
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !9
  %i.arw = sext i8 %i.arv to i32
  %i.arx = sub nsw i32 32, %i.arw                 ; 6 uses
  %i.ary = shl i32 %i.art, %i.arx
  %i.arz = ashr exact i32 %i.ary, %i.arx
  store i32 %i.arz, ptr %i.a, align 16, !tbaa !3
  %i.asa = load i32, ptr %i.b, align 16, !tbaa !3
  %i.asb = shl i32 %i.asa, %i.arx
  %i.asc = ashr exact i32 %i.asb, %i.arx
  store i32 %i.asc, ptr %i.b, align 16, !tbaa !3
  %i.asd = shl i32 %i.arq, %i.arx
  %i.ase = ashr exact i32 %i.asd, %i.arx          ; 2 uses
  store i32 %i.ase, ptr %i.c, align 16, !tbaa !3
  br label %.preheader861

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond731740, label %.preheader861, label %.loopexit862

.preheader861:                                    ; preds = %.thread, %bb.r
  %i.asf = phi i32 [ %i.ase, %.thread ], [ %i.arq, %bb.r ] ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 14), i64 %.1114732738
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !9
  %i.asi = sext i8 %i.ash to i32
  %i.asj = sub nsw i32 32, %i.asi                 ; 6 uses
  %i.ask = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 28), i64 %.1114732738
  %i.asl = load i8, ptr %i.ask, align 1, !tbaa !9
  %i.asm = sext i8 %i.asl to i32
  %i.asn = sub nsw i32 32, %i.asm                 ; 6 uses
  %i.aso = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 42), i64 %.1114732738
  %i.asp = load i8, ptr %i.aso, align 1, !tbaa !9
  %i.asq = sext i8 %i.asp to i32
  %i.asr = sub nsw i32 32, %i.asq                 ; 6 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !3
  %i.asu = shl i32 %i.ast, %i.asj
  %i.asv = ashr exact i32 %i.asu, %i.asj
  store i32 %i.asv, ptr %i.ass, align 4, !tbaa !3
  %i.asw = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !3
  %i.asy = shl i32 %i.asx, %i.asn
  %i.asz = ashr exact i32 %i.asy, %i.asn
  store i32 %i.asz, ptr %i.asw, align 4, !tbaa !3
  %i.ata = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !3
  %i.atc = shl i32 %i.atb, %i.asr
  %i.atd = ashr exact i32 %i.atc, %i.asr
  store i32 %i.atd, ptr %i.ata, align 4, !tbaa !3
  br i1 %i.arr, label %.loopexit862, label %bb.s

bb.s:                                             ; preds = %.preheader861
  %i.ate = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.atf = load i32, ptr %i.ate, align 8, !tbaa !3
  %i.atg = shl i32 %i.atf, %i.asj
  %i.ath = ashr exact i32 %i.atg, %i.asj
  store i32 %i.ath, ptr %i.ate, align 8, !tbaa !3
  %i.ati = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.atj = load i32, ptr %i.ati, align 8, !tbaa !3
  %i.atk = shl i32 %i.atj, %i.asn
  %i.atl = ashr exact i32 %i.atk, %i.asn
  store i32 %i.atl, ptr %i.ati, align 8, !tbaa !3
  %i.atm = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.atn = load i32, ptr %i.atm, align 8, !tbaa !3
  %i.ato = shl i32 %i.atn, %i.asr
  %i.atp = ashr exact i32 %i.ato, %i.asr
  store i32 %i.atp, ptr %i.atm, align 8, !tbaa !3
  %i.atq = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !3
  %i.ats = shl i32 %i.atr, %i.asj
  %i.att = ashr exact i32 %i.ats, %i.asj
  store i32 %i.att, ptr %i.atq, align 4, !tbaa !3
  %i.atu = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !3
  %i.atw = shl i32 %i.atv, %i.asn
  %i.atx = ashr exact i32 %i.atw, %i.asn
  store i32 %i.atx, ptr %i.atu, align 4, !tbaa !3
  %i.aty = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !3
  %i.aua = shl i32 %i.atz, %i.asr
  %i.aub = ashr exact i32 %i.aua, %i.asr
  store i32 %i.aub, ptr %i.aty, align 4, !tbaa !3
  br label %.loopexit862

.loopexit862:                                     ; preds = %.preheader861, %bb.s, %bb.r
  %4 = phi i32 [ %i.arq, %bb.r ], [ %i.asf, %bb.s ], [ %i.asf, %.preheader861 ] ; 3 uses
  br i1 %or.cond731740, label %.preheader859, label %.loopexit862..loopexit860_crit_edge

.loopexit862..loopexit860_crit_edge:              ; preds = %.loopexit862
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 %.1114732738
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9
  %.pre906 = sext i8 %.pre to i32                 ; 2 uses
  %.pre907 = shl nsw i32 -1, %.pre906
  br label %.loopexit860

.preheader859:                                    ; preds = %.loopexit862
  %i.auc = load i32, ptr %i.a, align 16, !tbaa !3 ; 3 uses
  %i.aud = getelementptr inbounds nuw i8, ptr @_ZZ15bcdec_bc6h_halfE17actual_bits_count, i64 %.1114732738
  %i.aue = load i8, ptr %i.aud, align 1, !tbaa !9
  %i.auf = sext i8 %i.aue to i32                  ; 4 uses
  %notmask.i = shl nsw i32 -1, %i.auf             ; 3 uses
  %i.aug = xor i32 %notmask.i, -1                 ; 9 uses
  %.not.i156 = icmp eq i32 %3, 0                  ; 9 uses
  %i.auh = sub nsw i32 32, %i.auf                 ; 18 uses
  %i.aui = load i32, ptr %i.b, align 16, !tbaa !3 ; 3 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.auk = load i32, ptr %i.auj, align 4, !tbaa !3
  %i.aul = add nsw i32 %i.auc, %i.auk             ; 2 uses
  %i.aum = and i32 %i.aul, %i.aug
  %i.aun = shl i32 %i.aul, %i.auh
  %i.auo = ashr exact i32 %i.aun, %i.auh
  %.0.i = select i1 %.not.i156, i32 %i.aum, i32 %i.auo
  store i32 %.0.i, ptr %i.auj, align 4, !tbaa !3
  %i.aup = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !3
  %i.aur = add nsw i32 %i.aui, %i.auq             ; 2 uses
  %i.aus = and i32 %i.aur, %i.aug
  %i.aut = shl i32 %i.aur, %i.auh
  %i.auu = ashr exact i32 %i.aut, %i.auh
  %.0.i159 = select i1 %.not.i156, i32 %i.aus, i32 %i.auu
  store i32 %.0.i159, ptr %i.aup, align 4, !tbaa !3
  %i.auv = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !3
  %i.aux = add nsw i32 %4, %i.auw                 ; 2 uses
  %i.auy = and i32 %i.aux, %i.aug
  %i.auz = shl i32 %i.aux, %i.auh
  %i.ava = ashr exact i32 %i.auz, %i.auh
  %.0.i162 = select i1 %.not.i156, i32 %i.auy, i32 %i.ava
  store i32 %.0.i162, ptr %i.auv, align 4, !tbaa !3
  br i1 %i.arr, label %.loopexit860, label %bb.t

bb.t:                                             ; preds = %.preheader859
  %i.avb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.avc = load i32, ptr %i.avb, align 8, !tbaa !3
  %i.avd = add nsw i32 %i.auc, %i.avc             ; 2 uses
  %i.ave = and i32 %i.avd, %i.aug
  %i.avf = shl i32 %i.avd, %i.auh
  %i.avg = ashr exact i32 %i.avf, %i.auh
  %.0.i.1 = select i1 %.not.i156, i32 %i.ave, i32 %i.avg
  store i32 %.0.i.1, ptr %i.avb, align 8, !tbaa !3
  %i.avh = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.avi = load i32, ptr %i.avh, align 8, !tbaa !3
  %i.avj = add nsw i32 %i.aui, %i.avi             ; 2 uses
  %i.avk = and i32 %i.avj, %i.aug
  %i.avl = shl i32 %i.avj, %i.auh
  %i.avm = ashr exact i32 %i.avl, %i.auh
  %.0.i159.1 = select i1 %.not.i156, i32 %i.avk, i32 %i.avm
  store i32 %.0.i159.1, ptr %i.avh, align 8, !tbaa !3
  %i.avn = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.avo = load i32, ptr %i.avn, align 8, !tbaa !3
  %i.avp = add nsw i32 %4, %i.avo                 ; 2 uses
  %i.avq = and i32 %i.avp, %i.aug
  %i.avr = shl i32 %i.avp, %i.auh
  %i.avs = ashr exact i32 %i.avr, %i.auh
  %.0.i162.1 = select i1 %.not.i156, i32 %i.avq, i32 %i.avs
  store i32 %.0.i162.1, ptr %i.avn, align 8, !tbaa !3
  %i.avt = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !3
  %i.avv = add nsw i32 %i.auc, %i.avu             ; 2 uses
  %i.avw = and i32 %i.avv, %i.aug
  %i.avx = shl i32 %i.avv, %i.auh
  %i.avy = ashr exact i32 %i.avx, %i.auh
  %.0.i.2 = select i1 %.not.i156, i32 %i.avw, i32 %i.avy
  store i32 %.0.i.2, ptr %i.avt, align 4, !tbaa !3
  %i.avz = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.awa = load i32, ptr %i.avz, align 4, !tbaa !3
  %i.awb = add nsw i32 %i.aui, %i.awa             ; 2 uses
  %i.awc = and i32 %i.awb, %i.aug
  %i.awd = shl i32 %i.awb, %i.auh
  %i.awe = ashr exact i32 %i.awd, %i.auh
  %.0.i159.2 = select i1 %.not.i156, i32 %i.awc, i32 %i.awe
  store i32 %.0.i159.2, ptr %i.avz, align 4, !tbaa !3
  %i.awf = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !3
  %i.awh = add nsw i32 %4, %i.awg                 ; 2 uses
  %i.awi = and i32 %i.awh, %i.aug
  %i.awj = shl i32 %i.awh, %i.auh
  %i.awk = ashr exact i32 %i.awj, %i.auh
  %.0.i162.2 = select i1 %.not.i156, i32 %i.awi, i32 %i.awk
  store i32 %.0.i162.2, ptr %i.awf, align 4, !tbaa !3
  br label %.loopexit860

.loopexit860:                                     ; preds = %.preheader859, %bb.t, %.loopexit862..loopexit860_crit_edge
  %notmask.i165.pre-phi = phi i32 [ %.pre907, %.loopexit862..loopexit860_crit_edge ], [ %notmask.i, %bb.t ], [ %notmask.i, %.preheader859 ] ; 6 uses
  %.pre-phi = phi i32 [ %.pre906, %.loopexit862..loopexit860_crit_edge ], [ %i.auf, %bb.t ], [ %i.auf, %.preheader859 ] ; 7 uses
  %.not.i164 = icmp eq i32 %3, 0                  ; 3 uses
  %i.awl = select i1 %i.arr, ptr @_ZZ9bcdec_bc7E8aWeight4, ptr @_ZZ9bcdec_bc7E8aWeight3
  %i.awm = getelementptr inbounds nuw [16 x i8], ptr @_ZZ15bcdec_bc6h_halfE14partition_sets, i64 %i.ars
  %i.awn = icmp eq i64 %.1114732738, 13           ; 2 uses
  %i.awo = add nsw i32 %.pre-phi, -1              ; 7 uses
  %notmask27.i = shl nsw i32 -1, %i.awo
  %i.awp = xor i32 %notmask27.i, -1               ; 6 uses
  %i.awq = sext i32 %2 to i64
  br label %.preheader857

.preheader857:                                    ; preds = %.loopexit860, %bb.bz
  %indvars.iv898 = phi i64 [ 0, %.loopexit860 ], [ %indvars.iv.next899, %bb.bz ] ; 3 uses
  %.1876 = phi ptr [ %1, %.loopexit860 ], [ %i.bem, %bb.bz ] ; 2 uses
  %.sroa.0.2874 = phi i64 [ %.sroa.0.1730742, %.loopexit860 ], [ %i.axk, %bb.bz ]
  %.sroa.501.2873 = phi i64 [ %.sroa.501.1729744, %.loopexit860 ], [ 0, %bb.bz ]
  %i.awr = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %indvars.iv898
  br label %bb.u

bb.u:                                             ; preds = %.preheader857, %_Z24bcdec__finish_unquantizeii.exit227
  %indvars.iv894 = phi i64 [ 0, %.preheader857 ], [ %indvars.iv.next895, %_Z24bcdec__finish_unquantizeii.exit227 ] ; 4 uses
  %.sroa.0.3871 = phi i64 [ %.sroa.0.2874, %.preheader857 ], [ %i.axk, %_Z24bcdec__finish_unquantizeii.exit227 ] ; 2 uses
  %.sroa.501.3870 = phi i64 [ %.sroa.501.2873, %.preheader857 ], [ 0, %_Z24bcdec__finish_unquantizeii.exit227 ]
  br i1 %i.arr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aws = or i64 %indvars.iv894, %indvars.iv898
  %i.awt = and i64 %i.aws, 4294967295
  %.not = icmp eq i64 %i.awt, 0
  %i.awu = select i1 %.not, i32 128, i32 0
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awr, i64 %indvars.iv894
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !9
  %i.awx = zext i8 %i.aww to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.awy = phi i32 [ 4, %bb.v ], [ 3, %bb.w ]
  %i.awz = phi i32 [ %i.awu, %bb.v ], [ %i.awx, %bb.w ] ; 2 uses
  %.not125 = icmp samesign ugt i32 %i.awz, 127
  %i.axa = sext i1 %.not125 to i32
  %spec.select = add nsw i32 %i.awy, %i.axa       ; 2 uses
  %notmask.i163 = shl nsw i32 -1, %spec.select
  %i.axb = xor i32 %notmask.i163, -1              ; 2 uses
  %i.axc = zext nneg i32 %i.axb to i64
  %i.axd = trunc i64 %.sroa.0.3871 to i32
  %i.axe = and i32 %i.axb, %i.axd
  %i.axf = zext nneg i32 %spec.select to i64      ; 2 uses
  %i.axg = lshr i64 %.sroa.0.3871, %i.axf
  %i.axh = and i64 %.sroa.501.3870, %i.axc
  %i.axi = sub nuw nsw i64 64, %i.axf
  %i.axj = shl nuw i64 %i.axh, %i.axi
  %i.axk = or disjoint i64 %i.axj, %i.axg         ; 2 uses
  %i.axl = shl nuw nsw i32 %i.awz, 1
  %i.axm = and i32 %i.axl, 2                      ; 5 uses
  %i.axn = zext nneg i32 %i.axm to i64            ; 9 uses
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.axn
  %i.axp = load i32, ptr %i.axo, align 8, !tbaa !3 ; 8 uses
  br i1 %.not.i164, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  br i1 %i.awn, label %bb.be, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not26.i = icmp eq i32 %i.axp, 0
  br i1 %.not26.i, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.axq = xor i32 %notmask.i165.pre-phi, %i.axp
  %i.axr = icmp eq i32 %i.axq, -1
  br i1 %i.axr, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.axs = shl i32 %i.axp, 16
  %i.axt = or disjoint i32 %i.axs, 32768
  %i.axu = ashr i32 %i.axt, %.pre-phi
  br label %bb.ag

bb.ac:                                            ; preds = %bb.x
  br i1 %i.awn, label %.thread848, label %bb.ad

.thread848:                                       ; preds = %bb.ac
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.axn
  %i.axw = load i32, ptr %i.axv, align 8, !tbaa !3
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.axn
  %i.axy = load i32, ptr %i.axx, align 8, !tbaa !3
  %i.axz = or disjoint i32 %i.axm, 1
  %i.aya = zext nneg i32 %i.axz to i64            ; 3 uses
  %i.ayb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aya
  %i.ayc = load i32, ptr %i.ayb, align 4, !tbaa !3
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aya
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !3
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aya
  %i.ayg = load i32, ptr %i.ayf, align 4, !tbaa !3
  br label %_Z17bcdec__unquantizeiii.exit215

bb.ad:                                            ; preds = %bb.ac
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %i.axp, i1 true) ; 2 uses
  %i.ayh = icmp eq i32 %i.axp, 0
  br i1 %i.ayh, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not28.i = icmp samesign ult i32 %spec.select.i, %i.awp
  br i1 %.not28.i, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ayi = shl i32 %spec.select.i, 15
  %i.ayj = or disjoint i32 %i.ayi, 16384
  %i.ayk = ashr i32 %i.ayj, %i.awo
  br label %bb.aj

bb.ag:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %.1.i.ph.ph = phi i32 [ 65535, %bb.aa ], [ 0, %bb.z ], [ %i.axu, %bb.ab ] ; 3 uses
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.axn
  %i.aym = load i32, ptr %i.ayl, align 8, !tbaa !3 ; 3 uses
  %.not26.i173 = icmp eq i32 %i.aym, 0
  br i1 %.not26.i173, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ayn = xor i32 %i.aym, %notmask.i165.pre-phi
  %i.ayo = icmp eq i32 %i.ayn, -1
  br i1 %i.ayo, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ayp = shl i32 %i.aym, 16
  %i.ayq = or disjoint i32 %i.ayp, 32768
  %i.ayr = ashr i32 %i.ayq, %.pre-phi
  br label %bb.am

bb.aj:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.020.i = phi i32 [ %i.ayk, %bb.af ], [ 0, %bb.ad ], [ 32767, %bb.ae ] ; 2 uses
  %i.ays = sub nsw i32 0, %.020.i
  %i.ayt = icmp slt i32 %i.axp, 0
  %spec.select30.i = select i1 %i.ayt, i32 %i.ays, i32 %.020.i
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.axn
  %i.ayv = load i32, ptr %i.ayu, align 8, !tbaa !3 ; 3 uses
  %spec.select.i167 = tail call i32 @llvm.abs.i32(i32 %i.ayv, i1 true) ; 2 uses
  %i.ayw = icmp eq i32 %i.ayv, 0
  br i1 %i.ayw, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not28.i169 = icmp samesign ult i32 %spec.select.i167, %i.awp
  br i1 %.not28.i169, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.ayx = shl i32 %spec.select.i167, 15
  %i.ayy = or disjoint i32 %i.ayx, 16384
  %i.ayz = ashr i32 %i.ayy, %i.awo
  br label %bb.ap

bb.am:                                            ; preds = %bb.ag, %bb.ah, %bb.ai
  %.1.i172.ph.ph = phi i32 [ 65535, %bb.ah ], [ 0, %bb.ag ], [ %i.ayr, %bb.ai ] ; 3 uses
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.axn
  %i.azb = load i32, ptr %i.aza, align 8, !tbaa !3 ; 3 uses
  %.not26.i183 = icmp eq i32 %i.azb, 0
  br i1 %.not26.i183, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.azc = xor i32 %i.azb, %notmask.i165.pre-phi
  %i.azd = icmp eq i32 %i.azc, -1
  br i1 %i.azd, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.aze = shl i32 %i.azb, 16
  %i.azf = or disjoint i32 %i.aze, 32768
  %i.azg = ashr i32 %i.azf, %.pre-phi
  br label %bb.as

bb.ap:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.020.i170 = phi i32 [ %i.ayz, %bb.al ], [ 0, %bb.aj ], [ 32767, %bb.ak ] ; 2 uses
  %i.azh = sub nsw i32 0, %.020.i170
  %i.azi = icmp slt i32 %i.ayv, 0
  %spec.select30.i171 = select i1 %i.azi, i32 %i.azh, i32 %.020.i170
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.axn
  %i.azk = load i32, ptr %i.azj, align 8, !tbaa !3 ; 3 uses
  %spec.select.i177 = tail call i32 @llvm.abs.i32(i32 %i.azk, i1 true) ; 2 uses
  %i.azl = icmp eq i32 %i.azk, 0
  br i1 %i.azl, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not28.i179 = icmp samesign ult i32 %spec.select.i177, %i.awp
  br i1 %.not28.i179, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.azm = shl i32 %spec.select.i177, 15
  %i.azn = or disjoint i32 %i.azm, 16384
  %i.azo = ashr i32 %i.azn, %i.awo
  br label %bb.av

end_hunk_0
