Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dwt?download=true
inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 79
begin_hunk_0_@opj_dwt_decode:bb.a
  %.not320.i.i = icmp slt i32 %i.aoq, %i.ii
  br i1 %.not320.i.i, label %.thread331.us.preheader.i.i, label %.thread331.preheader.i.i

.thread331.preheader.i.i:                         ; preds = %.preheader356.split.i.i
  %i.aor = zext i32 %i.any to i64
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aor ; 3 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 16 ; 2 uses
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !46
  %.in319.ph.v.v.i.i = select i1 %.not318.i.i, i32 %i.any, i32 %i.ql
  %.in319.ph.v.i.i = zext i32 %.in319.ph.v.v.i.i to i64
  %.in319.ph.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in319.ph.v.i.i
  %i.aov = load i32, ptr %.in319.ph.i.i, align 4, !tbaa !46
  %i.aow = load i32, ptr %i.qn, align 4, !tbaa !46
  %i.aox = add i32 %i.aov, 2
  %i.aoy = add i32 %i.aox, %i.aow
  %i.aoz = ashr i32 %i.aoy, 2
  %i.apa = sub i32 %i.aou, %i.aoz
  store i32 %i.apa, ptr %i.aot, align 4, !tbaa !46
  %i.apb = or disjoint i32 %i.any, 1
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aos, i64 20 ; 2 uses
  %.in319.ph.v.v.1.i.i = select i1 %.not318.i.i, i32 %i.apb, i32 %i.qp
  %.in319.ph.v.1.i.i = zext i32 %.in319.ph.v.v.1.i.i to i64
  %.in319.ph.1.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in319.ph.v.1.i.i
  %i.apd = load i32, ptr %.in319.ph.1.i.i, align 4, !tbaa !46
  %.in319.ph.v.v.2.i.i.v = select i1 %.not318.i.i, i32 %i.any, i32 %i.ql
  %.in319.ph.v.v.2.i.i = or disjoint i32 %.in319.ph.v.v.2.i.i.v, 2
  %.in319.ph.v.2.i.i = zext i32 %.in319.ph.v.v.2.i.i to i64
  %.in319.ph.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in319.ph.v.2.i.i
  %i.ape = load i32, ptr %.in319.ph.2.i.i, align 4, !tbaa !46
  %i.apf = load <2 x i32>, ptr %i.apc, align 4, !tbaa !46
  %i.apg = load <2 x i32>, ptr %i.qq, align 4, !tbaa !46
  %i.aph = insertelement <2 x i32> poison, i32 %i.apd, i64 0
  %i.api = insertelement <2 x i32> %i.aph, i32 %i.ape, i64 1
  %i.apj = add <2 x i32> %i.api, splat (i32 2)
  %i.apk = add <2 x i32> %i.apj, %i.apg
  %i.apl = ashr <2 x i32> %i.apk, splat (i32 2)
  %i.apm = sub <2 x i32> %i.apf, %i.apl
  store <2 x i32> %i.apm, ptr %i.apc, align 4, !tbaa !46
  %i.apn = or disjoint i32 %i.any, 3
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aos, i64 28 ; 2 uses
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !46
  %.in319.ph.v.v.3.i.i = select i1 %.not318.i.i, i32 %i.apn, i32 %i.qs
  %.in319.ph.v.3.i.i = zext i32 %.in319.ph.v.v.3.i.i to i64
  %.in319.ph.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in319.ph.v.3.i.i
  %i.apq = load i32, ptr %.in319.ph.3.i.i, align 4, !tbaa !46
  %i.apr = load i32, ptr %i.qt, align 4, !tbaa !46
  %i.aps = add i32 %i.apq, 2
  %i.apt = add i32 %i.aps, %i.apr
  %i.apu = ashr i32 %i.apt, 2
  %i.apv = sub i32 %i.app, %i.apu
  store i32 %i.apv, ptr %i.apo, align 4, !tbaa !46
  br label %.split.us.i.i

.thread331.us.preheader.i.i:                      ; preds = %.preheader356.split.i.i
  %i.apw = shl i32 %i.aoq, 3
  %i.apx = zext i32 %i.any to i64
  %i.apy = zext i32 %i.apw to i64
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.apx ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 16 ; 2 uses
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.apy
  %i.aqc = load <4 x i32>, ptr %i.aqa, align 4, !tbaa !46
  %i.aqd = load <4 x i32>, ptr %i.apz, align 4, !tbaa !46
  %i.aqe = load <4 x i32>, ptr %i.aqb, align 4, !tbaa !46
  %i.aqf = add <4 x i32> %i.aqd, splat (i32 2)
  %i.aqg = add <4 x i32> %i.aqf, %i.aqe
  %i.aqh = ashr <4 x i32> %i.aqg, splat (i32 2)
  %i.aqi = sub <4 x i32> %i.aqc, %i.aqh
  store <4 x i32> %i.aqi, ptr %i.aqa, align 4, !tbaa !46
  br label %.split.us.i.i

.preheader354.i.i:                                ; preds = %.split.us.i.i, %.preheader357.i.i
  br i1 %i.qw, label %.preheader353.i.i, label %opj_dwt_decode_partial_1_parallel.exit.i

.split.us.i.i:                                    ; preds = %.thread331.us.preheader.i.i, %.thread331.preheader.i.i, %.preheader356.split.us.split.us.preheader.i.i, %.preheader356.split.us.split.preheader.i.i
  %i.aqj = add nsw i32 %.8361.i.i, 1              ; 2 uses
  %exitcond.not.i212.i = icmp eq i32 %i.aqj, %i.ld
  br i1 %exitcond.not.i212.i, label %.preheader354.i.i, label %.preheader356.i.i, !llvm.loop !188

.preheader353.i.i:                                ; preds = %.preheader354.i.i, %.split364.us.i.i
  %.9372.i.i = phi i32 [ %i.ats, %.split364.us.i.i ], [ %i.le, %.preheader354.i.i ] ; 6 uses
  %i.aqk = shl i32 %.9372.i.i, 3                  ; 8 uses
  %i.aql = icmp slt i32 %.9372.i.i, 0
  %.not314.i.i = icmp slt i32 %.9372.i.i, %.0181299.i ; 8 uses
  %.not316.not.i.i = icmp sgt i32 %.9372.i.i, %.0181299.i
  %i.aqm = add i32 %i.aqk, -4
  br i1 %i.aql, label %.thread333.us.preheader.i.i, label %.preheader353.split.i.i

.thread333.us.preheader.i.i:                      ; preds = %.preheader353.i.i
  %i.aqn = zext i32 %i.aqk to i64
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.aqn ; 2 uses
  %i.aqp = load <4 x i32>, ptr %i.aqo, align 4, !tbaa !46
  %i.aqq = load <4 x i32>, ptr %i.hs, align 4, !tbaa !46
  %i.aqr = shl <4 x i32> %i.aqq, splat (i32 1)
  %i.aqs = ashr exact <4 x i32> %i.aqr, splat (i32 1)
  %i.aqt = add <4 x i32> %i.aqs, %i.aqp
  store <4 x i32> %i.aqt, ptr %i.aqo, align 4, !tbaa !46
  br label %.split364.us.i.i

.preheader353.split.i.i:                          ; preds = %.preheader353.i.i
  %i.aqu = icmp eq i32 %.9372.i.i, 0
  br i1 %i.aqu, label %.preheader353.split.split.us.preheader.i.i, label %.preheader353.split.split.i.i

.preheader353.split.split.us.preheader.i.i:       ; preds = %.preheader353.split.i.i
  %.in315.v.v.us.i.i = select i1 %.not314.i.i, i32 4, i32 %i.qy
  %.in315.v.us.i.i = zext i32 %.in315.v.v.us.i.i to i64
  %.in315.us.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.i.i
  %i.aqv = load i32, ptr %.in315.us.i.i, align 4, !tbaa !46
  %.in315.v.v.us.1.i.i = select i1 %.not314.i.i, i32 5, i32 %i.ra
  %.in315.v.us.1.i.i = zext i32 %.in315.v.v.us.1.i.i to i64
  %.in315.us.1.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.1.i.i
  %i.aqw = load i32, ptr %.in315.us.1.i.i, align 4, !tbaa !46
  %i.aqx = load <2 x i32>, ptr %i.hg, align 4, !tbaa !46
  %i.aqy = load <2 x i32>, ptr %i.hs, align 4, !tbaa !46
  %i.aqz = insertelement <2 x i32> poison, i32 %i.aqv, i64 0
  %i.ara = insertelement <2 x i32> %i.aqz, i32 %i.aqw, i64 1
  %i.arb = add <2 x i32> %i.aqy, %i.ara
  %i.arc = ashr <2 x i32> %i.arb, splat (i32 1)
  %i.ard = add <2 x i32> %i.arc, %i.aqx
  store <2 x i32> %i.ard, ptr %i.hg, align 4, !tbaa !46
  %i.are = load i32, ptr %i.hn, align 4, !tbaa !46
  %.in315.v.v.us.2.i.i = select i1 %.not314.i.i, i32 6, i32 %i.rb
  %.in315.v.us.2.i.i = zext i32 %.in315.v.v.us.2.i.i to i64
  %.in315.us.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.2.i.i
  %i.arf = load i32, ptr %.in315.us.2.i.i, align 4, !tbaa !46
  %i.arg = load i32, ptr %i.hu, align 4, !tbaa !46
  %i.arh = add i32 %i.arg, %i.arf
  %i.ari = ashr i32 %i.arh, 1
  %i.arj = add i32 %i.ari, %i.are
  store i32 %i.arj, ptr %i.hn, align 4, !tbaa !46
  %i.ark = load i32, ptr %i.ho, align 4, !tbaa !46
  %.in315.v.v.us.3.i.i = select i1 %.not314.i.i, i32 7, i32 %i.rc
  %.in315.v.us.3.i.i = zext i32 %.in315.v.v.us.3.i.i to i64
  %.in315.us.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.us.3.i.i
  %i.arl = load i32, ptr %.in315.us.3.i.i, align 4, !tbaa !46
  %i.arm = load i32, ptr %i.hv, align 4, !tbaa !46
  %i.arn = add i32 %i.arm, %i.arl
  %i.aro = ashr i32 %i.arn, 1
  %i.arp = add i32 %i.aro, %i.ark
  store i32 %i.arp, ptr %i.ho, align 4, !tbaa !46
  br label %.split364.us.i.i

.preheader353.split.split.i.i:                    ; preds = %.preheader353.split.i.i
  br i1 %.not316.not.i.i, label %.preheader353.split.split.split.us.preheader.i.i, label %.preheader353.split.split.split.preheader.i.i

.preheader353.split.split.split.preheader.i.i:    ; preds = %.preheader353.split.split.i.i
  %i.arq = zext i32 %i.aqm to i64
  %i.arr = zext i32 %i.aqk to i64
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.arr ; 4 uses
  %i.art = or disjoint i32 %i.aqk, 4
  %.in315.v.v.i.i = select i1 %.not314.i.i, i32 %i.art, i32 %i.qy
  %.in315.v.i.i = zext i32 %.in315.v.v.i.i to i64
  %.in315.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.i.i
  %i.aru = load i32, ptr %.in315.i.i, align 4, !tbaa !46
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.arq ; 3 uses
  %i.arw = or disjoint i32 %i.aqk, 5
  %.in315.v.v.1.i.i = select i1 %.not314.i.i, i32 %i.arw, i32 %i.ra
  %.in315.v.1.i.i = zext i32 %.in315.v.v.1.i.i to i64
  %.in315.1.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.1.i.i
  %i.arx = load i32, ptr %.in315.1.i.i, align 4, !tbaa !46
  %i.ary = load <2 x i32>, ptr %i.ars, align 4, !tbaa !46
  %i.arz = load <2 x i32>, ptr %i.arv, align 4, !tbaa !46
  %i.asa = insertelement <2 x i32> poison, i32 %i.aru, i64 0
  %i.asb = insertelement <2 x i32> %i.asa, i32 %i.arx, i64 1
  %i.asc = add <2 x i32> %i.arz, %i.asb
  %i.asd = ashr <2 x i32> %i.asc, splat (i32 1)
  %i.ase = add <2 x i32> %i.asd, %i.ary
  store <2 x i32> %i.ase, ptr %i.ars, align 4, !tbaa !46
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ars, i64 8 ; 2 uses
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !46
  %i.ash = or disjoint i32 %i.aqk, 6
  %.in315.v.v.2.i.i = select i1 %.not314.i.i, i32 %i.ash, i32 %i.rb
  %.in315.v.2.i.i = zext i32 %.in315.v.v.2.i.i to i64
  %.in315.2.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.2.i.i
  %i.asi = load i32, ptr %.in315.2.i.i, align 4, !tbaa !46
  %i.asj = getelementptr inbounds nuw i8, ptr %i.arv, i64 8
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !46
  %i.asl = add i32 %i.ask, %i.asi
  %i.asm = ashr i32 %i.asl, 1
  %i.asn = add i32 %i.asm, %i.asg
  store i32 %i.asn, ptr %i.asf, align 4, !tbaa !46
  %i.aso = getelementptr inbounds nuw i8, ptr %i.ars, i64 12 ; 2 uses
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !46
  %i.asq = or disjoint i32 %i.aqk, 7
  %.in315.v.v.3.i.i = select i1 %.not314.i.i, i32 %i.asq, i32 %i.rc
  %.in315.v.3.i.i = zext i32 %.in315.v.v.3.i.i to i64
  %.in315.3.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.in315.v.3.i.i
  %i.asr = load i32, ptr %.in315.3.i.i, align 4, !tbaa !46
  %i.ass = getelementptr inbounds nuw i8, ptr %i.arv, i64 12
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !46
  %i.asu = add i32 %i.ast, %i.asr
  %i.asv = ashr i32 %i.asu, 1
  %i.asw = add i32 %i.asv, %i.asp
  store i32 %i.asw, ptr %i.aso, align 4, !tbaa !46
  br label %.split364.us.i.i

.preheader353.split.split.split.us.preheader.i.i: ; preds = %.preheader353.split.split.i.i
  %i.asx = zext i32 %i.aqk to i64
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.asx ; 4 uses
  %i.asz = load <2 x i32>, ptr %i.asy, align 4, !tbaa !46
  %i.ata = load <2 x i32>, ptr %.in315.us370.i.i, align 4, !tbaa !46
  %5 = freeze <2 x i32> %i.ata
  %i.atb = shl <2 x i32> %5, splat (i32 1)
  %i.atc = ashr exact <2 x i32> %i.atb, splat (i32 1)
  %i.atd = add <2 x i32> %i.atc, %i.asz
  store <2 x i32> %i.atd, ptr %i.asy, align 4, !tbaa !46
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asy, i64 8 ; 2 uses
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !46
  %i.atg = load i32, ptr %.in315.us370.2.i.i, align 4, !tbaa !46
  %i.ath = load i32, ptr %i.re, align 4, !tbaa !46
  %i.ati = add i32 %i.ath, %i.atg
  %i.atj = ashr i32 %i.ati, 1
  %i.atk = add i32 %i.atj, %i.atf
  store i32 %i.atk, ptr %i.ate, align 4, !tbaa !46
  %i.atl = getelementptr inbounds nuw i8, ptr %i.asy, i64 12 ; 2 uses
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !46
  %i.atn = load i32, ptr %.in315.us370.3.i.i, align 4, !tbaa !46
  %i.ato = load i32, ptr %i.rg, align 4, !tbaa !46
  %i.atp = add i32 %i.ato, %i.atn
  %i.atq = ashr i32 %i.atp, 1
  %i.atr = add i32 %i.atq, %i.atm
  store i32 %i.atr, ptr %i.atl, align 4, !tbaa !46
  br label %.split364.us.i.i

.split364.us.i.i:                                 ; preds = %.preheader353.split.split.split.us.preheader.i.i, %.preheader353.split.split.split.preheader.i.i, %.preheader353.split.split.us.preheader.i.i, %.thread333.us.preheader.i.i
  %i.ats = add nsw i32 %.9372.i.i, 1              ; 2 uses
  %exitcond433.not.i.i = icmp eq i32 %i.ats, %i.lg
  br i1 %exitcond433.not.i.i, label %opj_dwt_decode_partial_1_parallel.exit.i, label %.preheader353.i.i, !llvm.loop !189

opj_dwt_decode_partial_1_parallel.exit.i:         ; preds = %.split364.us.i.i, %.split398.us.i.i, %.preheader354.i.i, %.preheader351.preheader.i.i, %.preheader342.i.i, %.loopexit347.i.i, %bb.bk
  %i.att = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.fe, i32 noundef %.0177.i, i32 noundef %i.lv, i32 noundef %i.aat, i32 noundef %i.ma, ptr noundef nonnull %i.sq, i32 noundef 1, i32 noundef 4, i32 noundef 1) #15
  %.not188.not.i = icmp eq i32 %i.att, 0
  br i1 %.not188.not.i, label %.thread288.i, label %bb.bi, !llvm.loop !190

.thread288.i:                                     ; preds = %opj_dwt_decode_partial_1_parallel.exit.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  br label %opj_dwt_decode_partial_tile.exit

bb.bs:                                            ; preds = %bb.bi
  %i.atu = add nuw i32 %.0184296.i, 1             ; 2 uses
  %exitcond309.not.i = icmp eq i32 %i.atu, %2
  br i1 %exitcond309.not.i, label %._crit_edge.i18, label %bb.x, !llvm.loop !191

._crit_edge.i18:                                  ; preds = %bb.bs, %.preheader294.i
  tail call void @opj_aligned_free(ptr noundef nonnull %i.hg) #15
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  %i.atw = load i32, ptr %i.atv, align 8, !tbaa !67 ; 2 uses
  %i.atx = load i32, ptr %i.ed, align 8, !tbaa !32 ; 2 uses
  %i.aty = sub i32 %i.atw, %i.atx
  %i.atz = getelementptr inbounds nuw i8, ptr %i.ed, i64 180
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !68
  %i.aub = load i32, ptr %i.ez, align 4, !tbaa !34 ; 2 uses
  %i.auc = sub i32 %i.aua, %i.aub
  %i.aud = getelementptr inbounds nuw i8, ptr %i.ed, i64 184
  %i.aue = load i32, ptr %i.aud, align 8, !tbaa !69 ; 2 uses
  %i.auf = sub i32 %i.aue, %i.atx
  %i.aug = getelementptr inbounds nuw i8, ptr %i.ed, i64 188
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !70
  %i.aui = sub i32 %i.auh, %i.aub
  %i.auj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !71
  %i.aul = sub i32 %i.aue, %i.atw
  %i.aum = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.fe, i32 noundef %i.aty, i32 noundef %i.auc, i32 noundef %i.auf, i32 noundef %i.aui, ptr noundef %i.auk, i32 noundef 1, i32 noundef %i.aul, i32 noundef 1) #15 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.fe) #15
  br label %opj_dwt_decode_partial_tile.exit

opj_dwt_decode_partial_tile.exit:                 ; preds = %._crit_edge.i18, %.thread288.i, %bb.bg, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %opj_dwt_decode_tile.exit
  %.0 = phi i32 [ %.10.i, %opj_dwt_decode_tile.exit ], [ 1, %._crit_edge.i18 ], [ 1, %bb.r ], [ 1, %bb.v ], [ 0, %bb.w ], [ 0, %bb.t ], [ 1, %bb.s ], [ 0, %.thread288.i ], [ 0, %bb.bg ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @opj_dwt_getnorm(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = icmp ugt i32 %0, 9
  %or.cond = and i1 %i.b, %i.a
  %i.c = tail call i32 @llvm.umin.i32(i32 %0, i32 8)
  %spec.store.select = select i1 %i.a, i32 %0, i32 %i.c
  %i.d = zext i32 %spec.store.select to i64
  %.0 = select i1 %or.cond, i64 9, i64 %i.d
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [80 x i8], ptr @opj_dwt_norms, i64 %i.e
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0
  %i.h = load double, ptr %i.g, align 8, !tbaa !78
  ret double %i.h
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @opj_dwt_encode_real(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = tail call fastcc i32 @opj_dwt_encode_procedure(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_v_real, ptr noundef nonnull @opj_dwt_encode_and_deinterleave_h_one_row_real)
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @opj_dwt_encode_and_deinterleave_v_real(ptr nofree noundef captures(none) %0, ptr nofree noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp ne i32 %3, 0                       ; 8 uses
  %i.c = zext i1 %.not to i32
  %i.d = add i32 %2, %i.c                         ; 3 uses
  %i.e = lshr i32 %i.d, 1                         ; 16 uses
  %i.f = sub i32 %2, %i.e                         ; 12 uses
  %i.g = icmp eq i32 %2, 1
  br i1 %i.g, label %opj_dwt_deinterleave_v_cols.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %5, 8                        ; 3 uses
  %.not41.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %i.h, label %.preheader.i, label %.preheader33.i

.preheader33.i:                                   ; preds = %bb.b
  br i1 %.not41.i, label %opj_dwt_fetch_cols_vertical_pass.exit, label %.preheader32.lr.ph.i

.preheader32.lr.ph.i:                             ; preds = %.preheader33.i
  %.not40.i = icmp eq i32 %5, 0
  br i1 %.not40.i, label %.preheader32.preheader.i, label %.preheader32.us.preheader.i

.preheader32.us.preheader.i:                      ; preds = %.preheader32.lr.ph.i
  %i.i = tail call i32 @llvm.usub.sat.i32(i32 7, i32 %5)
  %i.j = shl nuw nsw i32 %i.i, 2
  %narrow.i = add nuw nsw i32 %i.j, 4
  %i.k = zext nneg i32 %narrow.i to i64
  %wide.trip.count53.i = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %5 to i64         ; 6 uses
  %i.l = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %min.iters.check = icmp ult i32 %5, 20
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp ugt i64 %i.l, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 4 uses
  %ind.escape = add nsw i64 %n.vec, -1            ; 2 uses
  %i.o = trunc i64 %ind.escape to i32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader32.us.i

.preheader32.preheader.i:                         ; preds = %.preheader32.lr.ph.i
  %wide.trip.count62.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter177 = and i64 %wide.trip.count62.i, 3  ; 3 uses
  %i.p = icmp ult i32 %2, 4
  br i1 %i.p, label %.preheader32.i.epil.preheader, label %.preheader32.preheader.i.new

.preheader32.preheader.i.new:                     ; preds = %.preheader32.preheader.i
  %unroll_iter = and i64 %wide.trip.count62.i, 4294967292
  br label %.preheader32.i

.preheader32.us.i:                                ; preds = %._crit_edge.us.i, %.preheader32.us.preheader.i
  %indvars.iv50.i = phi i64 [ 0, %.preheader32.us.preheader.i ], [ %indvars.iv.next51.i, %._crit_edge.us.i ] ; 4 uses
  %i.q = trunc nuw i64 %indvars.iv50.i to i32     ; 2 uses
  %i.r = shl i32 %i.q, 3                          ; 8 uses
  %i.s = mul i32 %4, %i.q                         ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader32.us.i
  %i.t = trunc i64 %indvars.iv50.i to i32
  %i.u = mul i32 %4, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = add i64 %i.w, %i.a
  %i.y = shl i64 %indvars.iv50.i, 5
  %i.z = and i64 %i.y, 17179869152
  %i.aa = add i64 %i.z, %i.b
  %i.ab = xor i32 %i.r, -1
  %i.ac = icmp ult i32 %i.ab, %i.m
  %i.ad = xor i32 %i.s, -1
  %i.ae = icmp ult i32 %i.ad, %i.m
  %i.af = or i1 %i.ae, %i.n
  %i.ag = or i1 %i.ac, %i.af
  %i.ah = sub i64 %i.x, %i.aa
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = select i1 %i.ag, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.ai = trunc i64 %index to i32                 ; 2 uses
  %i.aj = add i32 %i.s, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !46
  %wide.load171 = load <4 x i32>, ptr %i.am, align 4, !tbaa !46
  %i.an = add i32 %i.r, %i.ai
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x i32> %wide.load, ptr %i.ap, align 4, !tbaa !46
  store <4 x i32> %wide.load171, ptr %i.aq, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..preheader31_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader32.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader32.us.i ], [ %n.vec, %middle.block ] ; 3 uses
end_hunk_0
