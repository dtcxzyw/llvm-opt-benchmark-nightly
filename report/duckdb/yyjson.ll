Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/yyjson?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.ako = icmp samesign ult i64 %i.aen, 1000000000000000 ; 2 uses
  %i.akp = shl nuw nsw i32 %i.akj, 1
  %i.akq = zext nneg i32 %i.akp to i64
  %i.akr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.akq
  %.neg64.i995 = sext i1 %i.ako to i64
  %i.aks = zext i1 %i.ako to i64
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.aks
  %i.aku = load i16, ptr %i.akt, align 1
  store i16 %i.aku, ptr %i.aee, align 1
  %i.akv = getelementptr inbounds i8, ptr %i.aee, i64 %.neg64.i995 ; 4 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 2
  %i.akx = shl nsw i32 %i.akm, 1
  %i.aky = zext i32 %i.akx to i64
  %i.akz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aky
  %i.ala = load i16, ptr %i.akz, align 2
  store i16 %i.ala, ptr %i.akw, align 1
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akv, i64 4
  %i.alc = shl nuw nsw i32 %i.akl, 1
  %i.ald = zext nneg i32 %i.alc to i64
  %i.ale = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ald
  %i.alf = load i16, ptr %i.ale, align 2
  store i16 %i.alf, ptr %i.alb, align 1
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akv, i64 6
  %i.alh = shl nsw i32 %i.akn, 1
  %i.ali = zext i32 %i.alh to i64
  %i.alj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ali
  %i.alk = load i16, ptr %i.alj, align 2
  store i16 %i.alk, ptr %i.alg, align 1
  %i.all = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  br label %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1003

_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1003: ; preds = %bb.ez, %bb.fb, %bb.fd, %bb.fe
  %.0.i996 = phi ptr [ %i.ail, %bb.ez ], [ %i.ajd, %bb.fb ], [ %i.akd, %bb.fd ], [ %i.all, %bb.fe ] ; 5 uses
  %i.alm = and i64 %i.aia, 4294967295
  %i.aln = mul nuw nsw i64 %i.alm, 109951163
  %i.alo = lshr i64 %i.aln, 40
  %i.alp = trunc nuw nsw i64 %i.alo to i32        ; 3 uses
  %.neg.i1149 = mul i32 %i.alp, -10000
  %i.alq = add i32 %.neg.i1149, %i.aib            ; 2 uses
  %i.alr = mul nuw i32 %i.alp, 5243
  %i.als = lshr i32 %i.alr, 19                    ; 2 uses
  %i.alt = mul i32 %i.alq, 5243
  %i.alu = lshr i32 %i.alt, 19                    ; 2 uses
  %.neg17.i1150 = mul nsw i32 %i.als, -100
  %i.alv = add nsw i32 %.neg17.i1150, %i.alp
  %.neg18.i1151 = mul i32 %i.alu, 2147483548
  %i.alw = add i32 %.neg18.i1151, %i.alq
  %i.alx = shl nuw nsw i32 %i.als, 1
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aly
  %i.ama = load i16, ptr %i.alz, align 2
  store i16 %i.ama, ptr %.0.i996, align 1
  %i.amb = getelementptr inbounds nuw i8, ptr %.0.i996, i64 2
  %i.amc = shl nsw i32 %i.alv, 1
  %i.amd = zext i32 %i.amc to i64
  %i.ame = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.amd
  %i.amf = load i16, ptr %i.ame, align 2
  store i16 %i.amf, ptr %i.amb, align 1
  %i.amg = getelementptr inbounds nuw i8, ptr %.0.i996, i64 4
  %i.amh = shl nuw nsw i32 %i.alu, 1
  %i.ami = zext nneg i32 %i.amh to i64
  %i.amj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ami
  %i.amk = load i16, ptr %i.amj, align 2
  store i16 %i.amk, ptr %i.amg, align 1
  %i.aml = getelementptr inbounds nuw i8, ptr %.0.i996, i64 6
  %i.amm = shl i32 %i.alw, 1
  %i.amn = zext i32 %i.amm to i64
  %i.amo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.amn
  %i.amp = load i16, ptr %i.amo, align 2
  store i16 %i.amp, ptr %i.aml, align 1
  %i.amq = getelementptr inbounds nuw i8, ptr %.0.i996, i64 8
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit679

_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit679: ; preds = %bb.ex, %bb.ew, %bb.eu, %bb.es, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1003
  %.0.i678 = phi ptr [ %i.amq, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1003 ], [ %i.aey, %bb.es ], [ %i.afq, %bb.eu ], [ %i.agq, %bb.ew ], [ %i.ahy, %bb.ex ] ; 2 uses
  store i16 12334, ptr %.0.i678, align 1
  %i.amr = getelementptr inbounds nuw i8, ptr %.0.i678, i64 2
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ff:                                            ; preds = %bb.ep, %bb.eo
  %i.ams = icmp eq i64 %i.ads, 0
  %i.amt = icmp ne i32 %i.adv, 1
  %i.amu = and i1 %i.ams, %i.amt                  ; 2 uses
  %i.amv = shl nuw nsw i64 %i.aeh, 2              ; 3 uses
  %i.amw = add nsw i64 %i.amv, -2
  %i.amx = zext i1 %i.amu to i64
  %i.amy = or disjoint i64 %i.amw, %i.amx
  %i.amz = or disjoint i64 %i.amv, 2
  %i.ana = mul nuw nsw i32 %i.adv, 315653
  %i.anb = add nsw i32 %i.ana, -339326975
  %.neg.i702 = select i1 %i.amu, i32 -131237, i32 0
  %i.anc = add nsw i32 %.neg.i702, %i.anb
  %i.and = ashr i32 %i.anc, 20                    ; 5 uses
  %i.ane = mul nsw i32 %i.and, -217707
  %i.anf = ashr i32 %i.ane, 16
  %i.ang = add nsw i32 %i.adv, -1074
  %i.anh = add nsw i32 %i.ang, %i.anf
  %.neg1817 = mul nsw i32 %i.and, -2
  %i.ani = sext i32 %.neg1817 to i64
  %i.anj = getelementptr [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.ani ; 2 uses
  %i.ank = getelementptr i8, ptr %i.anj, i64 5488
  %i.anl = load i64, ptr %i.ank, align 16, !tbaa !105
  %i.anm = getelementptr i8, ptr %i.anj, i64 5496
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !105
  %i.ano = add nsw i32 %i.and, -1
  %i.anp = icmp ult i32 %i.ano, -56
  %i.anq = zext i1 %i.anp to i64
  %i.anr = add i64 %i.ann, %i.anq
  %i.ans = zext i32 %i.anh to i64                 ; 3 uses
  %i.ant = shl i64 %i.amy, %i.ans
  %i.anu = zext i64 %i.ant to i128                ; 2 uses
  %i.anv = zext i64 %i.anr to i128                ; 3 uses
  %i.anw = mul nuw i128 %i.anv, %i.anu
  %i.anx = lshr i128 %i.anw, 64
  %i.any = zext i64 %i.anl to i128                ; 3 uses
  %i.anz = mul nuw i128 %i.any, %i.anu
  %i.aoa = add nuw i128 %i.anx, %i.anz            ; 2 uses
  %i.aob = lshr i128 %i.aoa, 64
  %i.aoc = trunc nuw i128 %i.aob to i64
  %i.aod = and i128 %i.aoa, 18446744073709551614
  %i.aoe = icmp ne i128 %i.aod, 0
  %i.aof = zext i1 %i.aoe to i64
  %i.aog = or i64 %i.aof, %i.aoc
  %i.aoh = shl i64 %i.amv, %i.ans
  %i.aoi = zext i64 %i.aoh to i128                ; 2 uses
  %i.aoj = mul nuw i128 %i.anv, %i.aoi
  %i.aok = lshr i128 %i.aoj, 64
  %i.aol = mul nuw i128 %i.any, %i.aoi
  %i.aom = add nuw i128 %i.aok, %i.aol            ; 2 uses
  %i.aon = lshr i128 %i.aom, 64
  %i.aoo = trunc nuw i128 %i.aon to i64           ; 5 uses
  %i.aop = and i128 %i.aom, 18446744073709551614
  %i.aoq = icmp ne i128 %i.aop, 0
  %i.aor = zext i1 %i.aoq to i64
  %i.aos = or i64 %i.aor, %i.aoo                  ; 2 uses
  %i.aot = shl i64 %i.amz, %i.ans
  %i.aou = zext i64 %i.aot to i128                ; 2 uses
  %i.aov = mul nuw i128 %i.anv, %i.aou
  %i.aow = lshr i128 %i.aov, 64
  %i.aox = mul nuw i128 %i.any, %i.aou
  %i.aoy = add nuw i128 %i.aow, %i.aox            ; 2 uses
  %i.aoz = lshr i128 %i.aoy, 64
  %i.apa = trunc nuw i128 %i.aoz to i64
  %i.apb = and i128 %i.aoy, 18446744073709551614
  %i.apc = icmp ne i128 %i.apb, 0
  %i.apd = zext i1 %i.apc to i64
  %i.ape = or i64 %i.apd, %i.apa
  %i.apf = and i64 %i.adr, 1                      ; 2 uses
  %i.apg = add i64 %i.aog, %i.apf                 ; 2 uses
  %i.aph = sub i64 %i.ape, %i.apf                 ; 2 uses
  %i.api = lshr i64 %i.aoo, 2                     ; 2 uses
  %i.apj = icmp ugt i64 %i.aoo, 39
  br i1 %i.apj, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.apk = udiv i64 %i.aoo, 40                    ; 2 uses
  %i.apl = mul nuw i64 %i.apk, 40                 ; 2 uses
  %i.apm = add i64 %i.apl, 40
  %i.apn = icmp uge i64 %i.aph, %i.apm            ; 2 uses
  %i.apo = icmp ugt i64 %i.apg, %i.apl
  %.not.i705 = xor i1 %i.apo, %i.apn
  br i1 %.not.i705, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.app = zext i1 %i.apn to i64
  %i.apq = add nuw nsw i64 %i.apk, %i.app
  %i.apr = add nsw i32 %i.and, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706

bb.fi:                                            ; preds = %bb.fg, %bb.ff
  %i.aps = and i64 %i.aoo, -4                     ; 3 uses
  %i.apt = add i64 %i.aps, 4
  %i.apu = icmp uge i64 %i.aph, %i.apt            ; 2 uses
  %i.apv = or disjoint i64 %i.aps, 2              ; 2 uses
  %i.apw = icmp ugt i64 %i.aos, %i.apv
  br i1 %i.apw, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.apx = icmp eq i64 %i.aos, %i.apv
  %i.apy = trunc i64 %i.api to i1
  %i.apz = and i1 %i.apx, %i.apy
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.aqa = phi i1 [ true, %bb.fi ], [ %i.apz, %bb.fj ]
  %i.aqb = icmp ugt i64 %i.apg, %i.aps
  %.not58.i703 = xor i1 %i.aqb, %i.apu
  %i.aqc = select i1 %.not58.i703, i1 %i.aqa, i1 %i.apu
  %i.aqd = zext i1 %i.aqc to i64
  %i.aqe = add nuw nsw i64 %i.api, %i.aqd
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706: ; preds = %bb.fh, %bb.fk
  %.11609 = phi i64 [ %i.aqe, %bb.fk ], [ %i.apq, %bb.fh ] ; 4 uses
  %storemerge.i704 = phi i32 [ %i.and, %bb.fk ], [ %i.apr, %bb.fh ]
  %i.aqf = icmp samesign ult i64 %.11609, 10000000000000000
  %i.aqg = select i1 %i.aqf, i32 16, i32 17
  %i.aqh = icmp samesign ult i64 %.11609, 1000000000000000
  %.neg129.i = sext i1 %i.aqh to i32
  %i.aqi = add nsw i32 %i.aqg, %.neg129.i
  %i.aqj = add nsw i32 %i.aqi, %storemerge.i704   ; 8 uses
  %i.aqk = add nsw i32 %i.aqj, 5
  %or.cond3.i = icmp ult i32 %i.aqk, 27
  %i.aql = udiv i64 %.11609, 100000000            ; 2 uses
  %i.aqm = trunc i64 %i.aql to i32                ; 2 uses
  %.neg.i827 = mul i64 %i.aql, 4194967296
  %i.aqn = add i64 %.neg.i827, %.11609            ; 4 uses
  %i.aqo = trunc i64 %i.aqn to i32                ; 6 uses
  %i.aqp = udiv i32 %i.aqm, 10000                 ; 3 uses
  %.neg95.i828 = mul i32 %i.aqp, -10000
  %i.aqq = add i32 %.neg95.i828, %i.aqm           ; 15 uses
  %i.aqr = zext nneg i32 %i.aqp to i64
  %i.aqs = mul nuw nsw i64 %i.aqr, 167773
  %i.aqt = lshr i64 %i.aqs, 24
  %i.aqu = trunc nuw nsw i64 %i.aqt to i32        ; 3 uses
  %i.aqv = mul nuw nsw i32 %i.aqu, 41
  %i.aqw = lshr i32 %i.aqv, 12                    ; 7 uses
  %.neg96.i829 = mul nsw i32 %i.aqw, -100
  %i.aqx = add nsw i32 %.neg96.i829, %i.aqu       ; 9 uses
  %.neg97.i830 = mul nsw i32 %i.aqu, -100
  %i.aqy = add nsw i32 %.neg97.i830, %i.aqp       ; 9 uses
  %i.aqz = trunc nuw nsw i32 %i.aqw to i8
  %i.ara = add nuw nsw i8 %i.aqz, 48              ; 3 uses
  br i1 %or.cond3.i, label %bb.fl, label %bb.ga

bb.fl:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706
  %i.arb = icmp slt i32 %i.aqj, 1
  br i1 %i.arb, label %bb.fm, label %bb.ft

bb.fm:                                            ; preds = %bb.fl
  %i.arc = sub nsw i32 2, %i.aqj
  %i.ard = zext nneg i32 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.ard ; 2 uses
  store i8 %i.ara, ptr %i.are, align 1, !tbaa !99
  %i.arf = icmp ne i32 %i.aqw, 0
  %i.arg = zext i1 %i.arf to i64
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.arg ; 2 uses
  %i.ari = icmp ult i32 %i.aqx, 10
  %i.arj = icmp eq i32 %i.aqw, 0
  %i.ark = and i1 %i.arj, %i.ari                  ; 2 uses
  %i.arl = shl nsw i32 %i.aqx, 1
  %i.arm = zext i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.arm
  %.neg98.i831 = sext i1 %i.ark to i64
  %i.aro = zext i1 %i.ark to i64
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.aro
  %i.arq = load i16, ptr %i.arp, align 1
  store i16 %i.arq, ptr %i.arh, align 1
  %i.arr = getelementptr inbounds i8, ptr %i.arh, i64 %.neg98.i831 ; 10 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 2
  %i.art = shl nsw i32 %i.aqy, 1
  %i.aru = zext i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aru
  %i.arw = load i16, ptr %i.arv, align 2
  store i16 %i.arw, ptr %i.ars, align 1
  %.not.i832 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i832, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.arx = mul i32 %i.aqq, 5243
  %i.ary = lshr i32 %i.arx, 19                    ; 2 uses
  %.neg103.i833 = mul i32 %i.ary, 2147483548
  %i.arz = add i32 %.neg103.i833, %i.aqq
  %i.asa = and i64 %i.aqn, 4294967295
  %i.asb = mul nuw nsw i64 %i.asa, 109951163
  %i.asc = lshr i64 %i.asb, 40
  %i.asd = trunc nuw nsw i64 %i.asc to i32        ; 3 uses
  %.neg104.i834 = mul i32 %i.asd, -10000
  %i.ase = add i32 %.neg104.i834, %i.aqo          ; 3 uses
  %i.asf = mul nuw i32 %i.asd, 5243
  %i.asg = lshr i32 %i.asf, 19                    ; 3 uses
  %.neg105.i835 = mul nsw i32 %i.asg, -100
  %i.ash = add nsw i32 %.neg105.i835, %i.asd      ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.asj = shl nuw nsw i32 %i.ary, 1
  %i.ask = zext nneg i32 %i.asj to i64
  %i.asl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ask
  %i.asm = load i16, ptr %i.asl, align 2
  store i16 %i.asm, ptr %i.asi, align 1
  %i.asn = getelementptr inbounds nuw i8, ptr %i.arr, i64 6
  %i.aso = shl i32 %i.arz, 1
  %i.asp = zext i32 %i.aso to i64
  %i.asq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asp
  %i.asr = load i16, ptr %i.asq, align 2
  store i16 %i.asr, ptr %i.asn, align 1
  %i.ass = getelementptr inbounds nuw i8, ptr %i.arr, i64 8
  %i.ast = shl nuw nsw i32 %i.asg, 1
  %i.asu = zext nneg i32 %i.ast to i64
  %i.asv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asu
  %i.asw = load i16, ptr %i.asv, align 2
  store i16 %i.asw, ptr %i.ass, align 1
  %i.asx = getelementptr inbounds nuw i8, ptr %i.arr, i64 10
  %i.asy = shl nsw i32 %i.ash, 1
  %i.asz = zext i32 %i.asy to i64
  %i.ata = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asz
  %i.atb = load i16, ptr %i.ata, align 2
  store i16 %i.atb, ptr %i.asx, align 1
  %.not106.i836 = icmp eq i32 %i.ase, 0
  br i1 %.not106.i836, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.atc = mul i32 %i.ase, 5243
  %i.atd = lshr i32 %i.atc, 19                    ; 3 uses
  %.neg108.i837 = mul nsw i32 %i.atd, -100
  %i.ate = add i32 %.neg108.i837, %i.ase          ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.arr, i64 12
  %i.atg = shl nuw nsw i32 %i.atd, 1
  %i.ath = zext nneg i32 %i.atg to i64
  %i.ati = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ath
  %i.atj = load i16, ptr %i.ati, align 2
  store i16 %i.atj, ptr %i.atf, align 1
  %i.atk = getelementptr inbounds nuw i8, ptr %i.arr, i64 14
  %i.atl = shl nuw i32 %i.ate, 1
  %i.atm = zext i32 %i.atl to i64
  %i.atn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atm
  %i.ato = load i16, ptr %i.atn, align 2
  store i16 %i.ato, ptr %i.atk, align 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink5208 = phi i32 [ %i.atd, %bb.fo ], [ %i.asg, %bb.fn ]
  %.sink5204 = phi i32 [ %i.ate, %bb.fo ], [ %i.ash, %bb.fn ] ; 2 uses
  %.sink = phi i64 [ 16, %bb.fo ], [ 12, %bb.fn ]
  %i.atp = zext nneg i32 %.sink5208 to i64
  %i.atq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atp
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !99
  %i.ats = zext i8 %i.atr to i64
  %i.att = zext i32 %.sink5204 to i64
  %i.atu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.att
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !99
  %i.atw = zext i8 %i.atv to i64
  %.not107.i843 = icmp eq i32 %.sink5204, 0
  %i.atx = add nuw nsw i64 %i.ats, 2
  %i.aty = select i1 %.not107.i843, i64 %i.atx, i64 %i.atw
  %i.atz = sub nsw i64 %.sink, %i.aty
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

bb.fq:                                            ; preds = %bb.fm
  %.not99.i844 = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i844, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aua = mul i32 %i.aqq, 5243
  %i.aub = lshr i32 %i.aua, 19                    ; 3 uses
  %.neg101.i845 = mul nsw i32 %i.aub, -100
  %i.auc = add i32 %.neg101.i845, %i.aqq          ; 3 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.aue = shl nuw nsw i32 %i.aub, 1
  %i.auf = zext nneg i32 %i.aue to i64
  %i.aug = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auf
  %i.auh = load i16, ptr %i.aug, align 2
  store i16 %i.auh, ptr %i.aud, align 1
  %i.aui = getelementptr inbounds nuw i8, ptr %i.arr, i64 6
  %i.auj = shl nuw i32 %i.auc, 1
  %i.auk = zext i32 %i.auj to i64
  %i.aul = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auk
  %i.aum = load i16, ptr %i.aul, align 2
  store i16 %i.aum, ptr %i.aui, align 1
  %i.aun = zext nneg i32 %i.aub to i64
  %i.auo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !99
  %i.auq = zext i8 %i.aup to i64
  %i.aur = zext i32 %i.auc to i64
  %i.aus = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !99
  %i.auu = zext i8 %i.aut to i64
  %.not102.i846 = icmp eq i32 %i.auc, 0
  %i.auv = add nuw nsw i64 %i.auq, 2
  %i.auw = select i1 %.not102.i846, i64 %i.auv, i64 %i.auu
  %i.aux = sub nsw i64 8, %i.auw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

bb.fs:                                            ; preds = %bb.fq
  %i.auy = zext i32 %i.aqx to i64
  %i.auz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !99
  %i.avb = zext i8 %i.ava to i64
  %i.avc = zext i32 %i.aqy to i64
  %i.avd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.avc
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !99
  %i.avf = zext i8 %i.ave to i64
  %.not100.i847 = icmp eq i32 %i.aqy, 0
  %i.avg = select i1 %.not100.i847, i64 %i.avb, i64 0
  %i.avh = add nuw nsw i64 %i.avg, %i.avf
  %i.avi = sub nsw i64 4, %i.avh
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848: ; preds = %bb.fp, %bb.fr, %bb.fs
  %.sink5209 = phi i64 [ %i.atz, %bb.fp ], [ %i.aux, %bb.fr ], [ %i.avi, %bb.fs ]
  %.pn.i840 = and i64 %.sink5209, 4294967295
  %.0.i841 = getelementptr inbounds nuw i8, ptr %i.arr, i64 %.pn.i840 ; 2 uses
  store i8 48, ptr %i.aee, align 1, !tbaa !99
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aee, i64 1
  store i8 46, ptr %i.avj, align 1, !tbaa !99
  %i.avk = icmp slt i32 %i.aqj, 0
  br i1 %i.avk, label %.lr.ph3129.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

.lr.ph3129.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848
  %i.avl = getelementptr i8, ptr %i.aee, i64 2
  %narrow3959 = sub nsw i32 0, %i.aqj
  %i.avm = zext nneg i32 %narrow3959 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.avl, i8 48, i64 %i.avm, i1 false), !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ft:                                            ; preds = %bb.fl
  %i.avn = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aee, i8 48, i64 24, i1 false)
  store i8 %i.ara, ptr %i.avn, align 1, !tbaa !99
  %i.avo = icmp ne i32 %i.aqw, 0
  %i.avp = zext i1 %i.avo to i64
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avn, i64 %i.avp ; 2 uses
  %i.avr = icmp ult i32 %i.aqx, 10
  %i.avs = icmp eq i32 %i.aqw, 0
  %i.avt = and i1 %i.avs, %i.avr                  ; 2 uses
  %i.avu = shl nsw i32 %i.aqx, 1
  %i.avv = zext i32 %i.avu to i64
  %i.avw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.avv
  %.neg98.i853 = sext i1 %i.avt to i64
  %i.avx = zext i1 %i.avt to i64
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.avx
  %i.avz = load i16, ptr %i.avy, align 1
  store i16 %i.avz, ptr %i.avq, align 1
  %i.awa = getelementptr inbounds i8, ptr %i.avq, i64 %.neg98.i853 ; 10 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 2
  %i.awc = shl nsw i32 %i.aqy, 1
  %i.awd = zext i32 %i.awc to i64
  %i.awe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awd
  %i.awf = load i16, ptr %i.awe, align 2
  store i16 %i.awf, ptr %i.awb, align 1
  %.not.i854 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i854, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.awg = mul i32 %i.aqq, 5243
  %i.awh = lshr i32 %i.awg, 19                    ; 2 uses
  %.neg103.i855 = mul i32 %i.awh, 2147483548
  %i.awi = add i32 %.neg103.i855, %i.aqq
  %i.awj = and i64 %i.aqn, 4294967295
  %i.awk = mul nuw nsw i64 %i.awj, 109951163
  %i.awl = lshr i64 %i.awk, 40
  %i.awm = trunc nuw nsw i64 %i.awl to i32        ; 3 uses
  %.neg104.i856 = mul i32 %i.awm, -10000
  %i.awn = add i32 %.neg104.i856, %i.aqo          ; 3 uses
  %i.awo = mul nuw i32 %i.awm, 5243
  %i.awp = lshr i32 %i.awo, 19                    ; 3 uses
  %.neg105.i857 = mul nsw i32 %i.awp, -100
  %i.awq = add nsw i32 %.neg105.i857, %i.awm      ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awa, i64 4
  %i.aws = shl nuw nsw i32 %i.awh, 1
  %i.awt = zext nneg i32 %i.aws to i64
  %i.awu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awt
  %i.awv = load i16, ptr %i.awu, align 2
  store i16 %i.awv, ptr %i.awr, align 1
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awa, i64 6
  %i.awx = shl i32 %i.awi, 1
  %i.awy = zext i32 %i.awx to i64
  %i.awz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awy
  %i.axa = load i16, ptr %i.awz, align 2
  store i16 %i.axa, ptr %i.aww, align 1
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awa, i64 8
  %i.axc = shl nuw nsw i32 %i.awp, 1
  %i.axd = zext nneg i32 %i.axc to i64
  %i.axe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axd
  %i.axf = load i16, ptr %i.axe, align 2
  store i16 %i.axf, ptr %i.axb, align 1
  %i.axg = getelementptr inbounds nuw i8, ptr %i.awa, i64 10
  %i.axh = shl nsw i32 %i.awq, 1
  %i.axi = zext i32 %i.axh to i64
  %i.axj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axi
  %i.axk = load i16, ptr %i.axj, align 2
  store i16 %i.axk, ptr %i.axg, align 1
  %.not106.i858 = icmp eq i32 %i.awn, 0
  br i1 %.not106.i858, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.axl = mul i32 %i.awn, 5243
  %i.axm = lshr i32 %i.axl, 19                    ; 3 uses
  %.neg108.i859 = mul nsw i32 %i.axm, -100
  %i.axn = add i32 %.neg108.i859, %i.awn          ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.awa, i64 12
  %i.axp = shl nuw nsw i32 %i.axm, 1
  %i.axq = zext nneg i32 %i.axp to i64
  %i.axr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axq
  %i.axs = load i16, ptr %i.axr, align 2
  store i16 %i.axs, ptr %i.axo, align 1
  %i.axt = getelementptr inbounds nuw i8, ptr %i.awa, i64 14
  %i.axu = shl nuw i32 %i.axn, 1
  %i.axv = zext i32 %i.axu to i64
  %i.axw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axv
  %i.axx = load i16, ptr %i.axw, align 2
  store i16 %i.axx, ptr %i.axt, align 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %.sink5223 = phi i32 [ %i.axm, %bb.fv ], [ %i.awp, %bb.fu ]
  %.sink5219 = phi i32 [ %i.axn, %bb.fv ], [ %i.awq, %bb.fu ] ; 2 uses
  %.sink5210 = phi i64 [ 16, %bb.fv ], [ 12, %bb.fu ]
  %i.axy = zext nneg i32 %.sink5223 to i64
  %i.axz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.axy
  %i.aya = load i8, ptr %i.axz, align 1, !tbaa !99
  %i.ayb = zext i8 %i.aya to i64
  %i.ayc = zext i32 %.sink5219 to i64
  %i.ayd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayc
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !99
  %i.ayf = zext i8 %i.aye to i64
  %.not107.i865 = icmp eq i32 %.sink5219, 0
  %i.ayg = add nuw nsw i64 %i.ayb, 2
  %i.ayh = select i1 %.not107.i865, i64 %i.ayg, i64 %i.ayf
  %i.ayi = sub nsw i64 %.sink5210, %i.ayh
  br label %._crit_edge3127

bb.fx:                                            ; preds = %bb.ft
  %.not99.i866 = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i866, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ayj = mul i32 %i.aqq, 5243
  %i.ayk = lshr i32 %i.ayj, 19                    ; 3 uses
  %.neg101.i867 = mul nsw i32 %i.ayk, -100
  %i.ayl = add i32 %.neg101.i867, %i.aqq          ; 3 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.awa, i64 4
  %i.ayn = shl nuw nsw i32 %i.ayk, 1
  %i.ayo = zext nneg i32 %i.ayn to i64
  %i.ayp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayo
  %i.ayq = load i16, ptr %i.ayp, align 2
  store i16 %i.ayq, ptr %i.aym, align 1
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.awa, i64 6
  %i.ays = shl nuw i32 %i.ayl, 1
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayt
  %i.ayv = load i16, ptr %i.ayu, align 2
  store i16 %i.ayv, ptr %i.ayr, align 1
  %i.ayw = zext nneg i32 %i.ayk to i64
  %i.ayx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayw
  %i.ayy = load i8, ptr %i.ayx, align 1, !tbaa !99
  %i.ayz = zext i8 %i.ayy to i64
  %i.aza = zext i32 %i.ayl to i64
  %i.azb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aza
  %i.azc = load i8, ptr %i.azb, align 1, !tbaa !99
  %i.azd = zext i8 %i.azc to i64
  %.not102.i868 = icmp eq i32 %i.ayl, 0
  %i.aze = add nuw nsw i64 %i.ayz, 2
  %i.azf = select i1 %.not102.i868, i64 %i.aze, i64 %i.azd
  %i.azg = sub nsw i64 8, %i.azf
  br label %._crit_edge3127

bb.fz:                                            ; preds = %bb.fx
  %i.azh = zext i32 %i.aqx to i64
  %i.azi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azh
  %i.azj = load i8, ptr %i.azi, align 1, !tbaa !99
  %i.azk = zext i8 %i.azj to i64
  %i.azl = zext i32 %i.aqy to i64
  %i.azm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azl
  %i.azn = load i8, ptr %i.azm, align 1, !tbaa !99
  %i.azo = zext i8 %i.azn to i64
  %.not100.i869 = icmp eq i32 %i.aqy, 0
  %i.azp = select i1 %.not100.i869, i64 %i.azk, i64 0
  %i.azq = add nuw nsw i64 %i.azp, %i.azo
  %i.azr = sub nsw i64 4, %i.azq
  br label %._crit_edge3127

._crit_edge3127:                                  ; preds = %bb.fw, %bb.fy, %bb.fz
  %.sink5224 = phi i64 [ %i.ayi, %bb.fw ], [ %i.azg, %bb.fy ], [ %i.azr, %bb.fz ]
  %.pn.i862 = and i64 %.sink5224, 4294967295
  %.0.i863 = getelementptr inbounds nuw i8, ptr %i.awa, i64 %.pn.i862 ; 2 uses
  %i.azs = getelementptr i8, ptr %i.adn, i64 %.lobit.i624
  %scevgep3718 = getelementptr i8, ptr %i.azs, i64 1
  %i.azt = zext nneg i32 %i.aqj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aee, ptr align 1 %scevgep3718, i64 %i.azt, i1 false), !tbaa !99
  %6 = zext nneg i32 %i.aqj to i64
  %i.azu = getelementptr inbounds nuw i8, ptr %i.aee, i64 %6 ; 2 uses
  store i8 46, ptr %i.azu, align 1, !tbaa !99
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 2 ; 2 uses
  %i.azw = icmp ult ptr %i.azv, %.0.i863
  %spec.select = select i1 %i.azw, ptr %.0.i863, ptr %i.azv
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ga:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706
  %.ptr1823 = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 3 uses
  store i8 %i.ara, ptr %.ptr1823, align 1, !tbaa !99
  %.not1828 = icmp eq i32 %i.aqw, 0               ; 2 uses
  %.add1818 = select i1 %.not1828, i64 1, i64 2   ; 2 uses
  %.ptr1824 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add1818
  %i.azx = icmp ult i32 %i.aqx, 10
  %i.azy = and i1 %.not1828, %i.azx               ; 2 uses
  %i.azz = shl nsw i32 %i.aqx, 1
  %i.baa = zext i32 %i.azz to i64
  %i.bab = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.baa
  %.neg98.i875 = sext i1 %i.azy to i64
  %i.bac = zext i1 %i.azy to i64
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bab, i64 %i.bac
  %i.bae = load i16, ptr %i.bad, align 1
  store i16 %i.bae, ptr %.ptr1824, align 1
  %.add1819 = add nsw i64 %.add1818, %.neg98.i875 ; 2 uses
  %.ptr1825 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add1819 ; 9 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 2
  %i.bag = shl nsw i32 %i.aqy, 1
  %i.bah = zext i32 %i.bag to i64
  %i.bai = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bah
  %i.baj = load i16, ptr %i.bai, align 2
  store i16 %i.baj, ptr %i.baf, align 1
  %.not.i876 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i876, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bak = mul i32 %i.aqq, 5243
  %i.bal = lshr i32 %i.bak, 19                    ; 2 uses
  %.neg103.i877 = mul i32 %i.bal, 2147483548
  %i.bam = add i32 %.neg103.i877, %i.aqq
  %i.ban = and i64 %i.aqn, 4294967295
  %i.bao = mul nuw nsw i64 %i.ban, 109951163
  %i.bap = lshr i64 %i.bao, 40
  %i.baq = trunc nuw nsw i64 %i.bap to i32        ; 3 uses
  %.neg104.i878 = mul i32 %i.baq, -10000
  %i.bar = add i32 %.neg104.i878, %i.aqo          ; 3 uses
  %i.bas = mul nuw i32 %i.baq, 5243
  %i.bat = lshr i32 %i.bas, 19                    ; 3 uses
  %.neg105.i879 = mul nsw i32 %i.bat, -100
  %i.bau = add nsw i32 %.neg105.i879, %i.baq      ; 3 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 4
  %i.baw = shl nuw nsw i32 %i.bal, 1
  %i.bax = zext nneg i32 %i.baw to i64
  %i.bay = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bax
  %i.baz = load i16, ptr %i.bay, align 2
  store i16 %i.baz, ptr %i.bav, align 1
  %i.bba = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 6
  %i.bbb = shl i32 %i.bam, 1
  %i.bbc = zext i32 %i.bbb to i64
  %i.bbd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbc
  %i.bbe = load i16, ptr %i.bbd, align 2
  store i16 %i.bbe, ptr %i.bba, align 1
  %i.bbf = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 8
  %i.bbg = shl nuw nsw i32 %i.bat, 1
  %i.bbh = zext nneg i32 %i.bbg to i64
  %i.bbi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbh
  %i.bbj = load i16, ptr %i.bbi, align 2
  store i16 %i.bbj, ptr %i.bbf, align 1
  %i.bbk = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 10
  %i.bbl = shl nsw i32 %i.bau, 1
  %i.bbm = zext i32 %i.bbl to i64
  %i.bbn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbm
  %i.bbo = load i16, ptr %i.bbn, align 2
  store i16 %i.bbo, ptr %i.bbk, align 1
  %.not106.i880 = icmp eq i32 %i.bar, 0
  br i1 %.not106.i880, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bbp = mul i32 %i.bar, 5243
  %i.bbq = lshr i32 %i.bbp, 19                    ; 3 uses
  %.neg108.i881 = mul nsw i32 %i.bbq, -100
  %i.bbr = add i32 %.neg108.i881, %i.bar          ; 3 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 12
  %i.bbt = shl nuw nsw i32 %i.bbq, 1
  %i.bbu = zext nneg i32 %i.bbt to i64
  %i.bbv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbu
  %i.bbw = load i16, ptr %i.bbv, align 2
  store i16 %i.bbw, ptr %i.bbs, align 1
  %i.bbx = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 14
  %i.bby = shl nuw i32 %i.bbr, 1
  %i.bbz = zext i32 %i.bby to i64
  %i.bca = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbz
  %i.bcb = load i16, ptr %i.bca, align 2
  store i16 %i.bcb, ptr %i.bbx, align 1
  %i.bcc = zext nneg i32 %i.bbq to i64
  %i.bcd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcc
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !99
  %i.bcf = zext i8 %i.bce to i64
  %i.bcg = zext i32 %i.bbr to i64
  %i.bch = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcg
  %i.bci = load i8, ptr %i.bch, align 1, !tbaa !99
  %i.bcj = zext i8 %i.bci to i64
  %.not109.i882 = icmp eq i32 %i.bbr, 0
  %i.bck = add nuw nsw i64 %i.bcf, 2
  %i.bcl = select i1 %.not109.i882, i64 %i.bck, i64 %i.bcj
  %i.bcm = sub nsw i64 16, %i.bcl
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.gd:                                            ; preds = %bb.gb
  %i.bcn = zext nneg i32 %i.bat to i64
  %i.bco = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcn
  %i.bcp = load i8, ptr %i.bco, align 1, !tbaa !99
  %i.bcq = zext i8 %i.bcp to i64
  %i.bcr = zext i32 %i.bau to i64
  %i.bcs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcr
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !99
  %i.bcu = zext i8 %i.bct to i64
  %.not107.i887 = icmp eq i32 %i.bau, 0
  %i.bcv = add nuw nsw i64 %i.bcq, 2
  %i.bcw = select i1 %.not107.i887, i64 %i.bcv, i64 %i.bcu
  %i.bcx = sub nsw i64 12, %i.bcw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.ge:                                            ; preds = %bb.ga
  %.not99.i888 = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i888, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bcy = mul i32 %i.aqq, 5243
  %i.bcz = lshr i32 %i.bcy, 19                    ; 3 uses
  %.neg101.i889 = mul nsw i32 %i.bcz, -100
  %i.bda = add i32 %.neg101.i889, %i.aqq          ; 3 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 4
  %i.bdc = shl nuw nsw i32 %i.bcz, 1
  %i.bdd = zext nneg i32 %i.bdc to i64
  %i.bde = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdd
  %i.bdf = load i16, ptr %i.bde, align 2
  store i16 %i.bdf, ptr %i.bdb, align 1
  %i.bdg = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 6
  %i.bdh = shl nuw i32 %i.bda, 1
  %i.bdi = zext i32 %i.bdh to i64
  %i.bdj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdi
  %i.bdk = load i16, ptr %i.bdj, align 2
  store i16 %i.bdk, ptr %i.bdg, align 1
  %i.bdl = zext nneg i32 %i.bcz to i64
  %i.bdm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdl
  %i.bdn = load i8, ptr %i.bdm, align 1, !tbaa !99
  %i.bdo = zext i8 %i.bdn to i64
  %i.bdp = zext i32 %i.bda to i64
  %i.bdq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdp
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !99
  %i.bds = zext i8 %i.bdr to i64
  %.not102.i890 = icmp eq i32 %i.bda, 0
  %i.bdt = add nuw nsw i64 %i.bdo, 2
  %i.bdu = select i1 %.not102.i890, i64 %i.bdt, i64 %i.bds
  %i.bdv = sub nsw i64 8, %i.bdu
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.gg:                                            ; preds = %bb.ge
  %i.bdw = zext i32 %i.aqx to i64
  %i.bdx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdw
  %i.bdy = load i8, ptr %i.bdx, align 1, !tbaa !99
  %i.bdz = zext i8 %i.bdy to i64
  %i.bea = zext i32 %i.aqy to i64
  %i.beb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bea
  %i.bec = load i8, ptr %i.beb, align 1, !tbaa !99
  %i.bed = zext i8 %i.bec to i64
  %.not100.i891 = icmp eq i32 %i.aqy, 0
  %i.bee = select i1 %.not100.i891, i64 %i.bdz, i64 0
  %i.bef = add nuw nsw i64 %i.bee, %i.bed
  %i.beg = sub nsw i64 4, %i.bef
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892: ; preds = %bb.gc, %bb.gd, %bb.gf, %bb.gg
  %.pn.i884.pn.in = phi i64 [ %i.beg, %bb.gg ], [ %i.bdv, %bb.gf ], [ %i.bcm, %bb.gc ], [ %i.bcx, %bb.gd ]
  %.pn.i884.pn = and i64 %.pn.i884.pn.in, 4294967295
  %.1.i886.idx = add nuw nsw i64 %.pn.i884.pn, %.add1819 ; 2 uses
  %.1.i886.ptr = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.1.i886.idx
  %i.beh = icmp eq i64 %.1.i886.idx, 2
  %.neg130.i = sext i1 %i.beh to i64
  %i.bei = getelementptr inbounds i8, ptr %.1.i886.ptr, i64 %.neg130.i ; 2 uses
  %i.bej = add nsw i32 %i.aqj, -1                 ; 2 uses
  %i.bek = load i8, ptr %.ptr1823, align 1, !tbaa !99
  store i8 %i.bek, ptr %i.aee, align 1, !tbaa !99
  store i8 46, ptr %.ptr1823, align 1, !tbaa !99
  store i8 101, ptr %i.bei, align 1, !tbaa !99
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bei, i64 1 ; 2 uses
  store i8 45, ptr %i.bel, align 1, !tbaa !99
  %.lobit.i901 = lshr i32 %i.bej, 31
  %i.bem = zext nneg i32 %.lobit.i901 to i64
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bel, i64 %i.bem ; 5 uses
  %i.beo = tail call i32 @llvm.abs.i32(i32 %i.bej, i1 true) ; 5 uses
  %i.bep = icmp samesign ult i32 %i.beo, 100
  br i1 %i.bep, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892
  %i.beq = icmp samesign ult i32 %i.beo, 10       ; 2 uses
  %i.ber = shl nuw nsw i32 %i.beo, 1
  %i.bes = zext nneg i32 %i.ber to i64
  %i.bet = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bes
  %.neg22.i904 = sext i1 %i.beq to i64
  %i.beu = zext i1 %i.beq to i64
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.ako = icmp samesign ult i64 %i.aen, 1000000000000000 ; 2 uses
  %i.akp = shl nuw nsw i32 %i.akj, 1
  %i.akq = zext nneg i32 %i.akp to i64
  %i.akr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.akq
  %.neg64.i225.i = sext i1 %i.ako to i64
  %i.aks = zext i1 %i.ako to i64
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.aks
  %i.aku = load i16, ptr %i.akt, align 1
  store i16 %i.aku, ptr %i.aee, align 1
  %i.akv = getelementptr inbounds i8, ptr %i.aee, i64 %.neg64.i225.i ; 4 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 2
  %i.akx = shl nsw i32 %i.akm, 1
  %i.aky = zext i32 %i.akx to i64
  %i.akz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aky
  %i.ala = load i16, ptr %i.akz, align 2
  store i16 %i.ala, ptr %i.akw, align 1
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akv, i64 4
  %i.alc = shl nuw nsw i32 %i.akl, 1
  %i.ald = zext nneg i32 %i.alc to i64
  %i.ale = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ald
  %i.alf = load i16, ptr %i.ale, align 2
  store i16 %i.alf, ptr %i.alb, align 1
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akv, i64 6
  %i.alh = shl nsw i32 %i.akn, 1
  %i.ali = zext i32 %i.alh to i64
  %i.alj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ali
  %i.alk = load i16, ptr %i.alj, align 2
  store i16 %i.alk, ptr %i.alg, align 1
  %i.all = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  br label %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit233.i

_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit233.i: ; preds = %bb.fe, %bb.fd, %bb.fb, %bb.ez
  %.0.i226.i = phi ptr [ %i.ail, %bb.ez ], [ %i.ajd, %bb.fb ], [ %i.akd, %bb.fd ], [ %i.all, %bb.fe ] ; 5 uses
  %i.alm = and i64 %i.aia, 4294967295
  %i.aln = mul nuw nsw i64 %i.alm, 109951163
  %i.alo = lshr i64 %i.aln, 40
  %i.alp = trunc nuw nsw i64 %i.alo to i32        ; 3 uses
  %.neg.i265.i = mul i32 %i.alp, -10000
  %i.alq = add i32 %.neg.i265.i, %i.aib           ; 2 uses
  %i.alr = mul nuw i32 %i.alp, 5243
  %i.als = lshr i32 %i.alr, 19                    ; 2 uses
  %i.alt = mul i32 %i.alq, 5243
  %i.alu = lshr i32 %i.alt, 19                    ; 2 uses
  %.neg17.i266.i = mul nsw i32 %i.als, -100
  %i.alv = add nsw i32 %.neg17.i266.i, %i.alp
  %.neg18.i267.i = mul i32 %i.alu, 2147483548
  %i.alw = add i32 %.neg18.i267.i, %i.alq
  %i.alx = shl nuw nsw i32 %i.als, 1
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aly
  %i.ama = load i16, ptr %i.alz, align 2
  store i16 %i.ama, ptr %.0.i226.i, align 1
  %i.amb = getelementptr inbounds nuw i8, ptr %.0.i226.i, i64 2
  %i.amc = shl nsw i32 %i.alv, 1
  %i.amd = zext i32 %i.amc to i64
  %i.ame = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.amd
  %i.amf = load i16, ptr %i.ame, align 2
  store i16 %i.amf, ptr %i.amb, align 1
  %i.amg = getelementptr inbounds nuw i8, ptr %.0.i226.i, i64 4
  %i.amh = shl nuw nsw i32 %i.alu, 1
  %i.ami = zext nneg i32 %i.amh to i64
  %i.amj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ami
  %i.amk = load i16, ptr %i.amj, align 2
  store i16 %i.amk, ptr %i.amg, align 1
  %i.aml = getelementptr inbounds nuw i8, ptr %.0.i226.i, i64 6
  %i.amm = shl i32 %i.alw, 1
  %i.amn = zext i32 %i.amm to i64
  %i.amo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.amn
  %i.amp = load i16, ptr %i.amo, align 2
  store i16 %i.amp, ptr %i.aml, align 1
  %i.amq = getelementptr inbounds nuw i8, ptr %.0.i226.i, i64 8
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i

_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i: ; preds = %bb.es, %bb.eu, %bb.ew, %bb.ex, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit233.i
  %.0.i129.i = phi ptr [ %i.amq, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit233.i ], [ %i.aey, %bb.es ], [ %i.afq, %bb.eu ], [ %i.agq, %bb.ew ], [ %i.ahy, %bb.ex ] ; 2 uses
  store i16 12334, ptr %.0.i129.i, align 1
  %i.amr = getelementptr inbounds nuw i8, ptr %.0.i129.i, i64 2
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ff:                                            ; preds = %bb.ep, %bb.eo
  %i.ams = icmp eq i64 %i.ads, 0
  %i.amt = icmp ne i32 %i.adv, 1
  %i.amu = and i1 %i.ams, %i.amt                  ; 2 uses
  %i.amv = shl nuw nsw i64 %i.aeh, 2              ; 3 uses
  %i.amw = add nsw i64 %i.amv, -2
  %i.amx = zext i1 %i.amu to i64
  %i.amy = or disjoint i64 %i.amw, %i.amx
  %i.amz = or disjoint i64 %i.amv, 2
  %i.ana = mul nuw nsw i32 %i.adv, 315653
  %i.anb = add nsw i32 %i.ana, -339326975
  %.neg.i132.i = select i1 %i.amu, i32 -131237, i32 0
  %i.anc = add nsw i32 %.neg.i132.i, %i.anb
  %i.and = ashr i32 %i.anc, 20                    ; 5 uses
  %i.ane = mul nsw i32 %i.and, -217707
  %i.anf = ashr i32 %i.ane, 16
  %i.ang = add nsw i32 %i.adv, -1074
  %i.anh = add nsw i32 %i.ang, %i.anf
  %.neg996 = mul nsw i32 %i.and, -2
  %i.ani = sext i32 %.neg996 to i64
  %i.anj = getelementptr [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.ani ; 2 uses
  %i.ank = getelementptr i8, ptr %i.anj, i64 5488
  %i.anl = load i64, ptr %i.ank, align 16, !tbaa !105
  %i.anm = getelementptr i8, ptr %i.anj, i64 5496
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !105
  %i.ano = add nsw i32 %i.and, -1
  %i.anp = icmp ult i32 %i.ano, -56
  %i.anq = zext i1 %i.anp to i64
  %i.anr = add i64 %i.ann, %i.anq
  %i.ans = zext i32 %i.anh to i64                 ; 3 uses
  %i.ant = shl i64 %i.amy, %i.ans
  %i.anu = zext i64 %i.ant to i128                ; 2 uses
  %i.anv = zext i64 %i.anr to i128                ; 3 uses
  %i.anw = mul nuw i128 %i.anv, %i.anu
  %i.anx = lshr i128 %i.anw, 64
  %i.any = zext i64 %i.anl to i128                ; 3 uses
  %i.anz = mul nuw i128 %i.any, %i.anu
  %i.aoa = add nuw i128 %i.anx, %i.anz            ; 2 uses
  %i.aob = lshr i128 %i.aoa, 64
  %i.aoc = trunc nuw i128 %i.aob to i64
  %i.aod = and i128 %i.aoa, 18446744073709551614
  %i.aoe = icmp ne i128 %i.aod, 0
  %i.aof = zext i1 %i.aoe to i64
  %i.aog = or i64 %i.aof, %i.aoc
  %i.aoh = shl i64 %i.amv, %i.ans
  %i.aoi = zext i64 %i.aoh to i128                ; 2 uses
  %i.aoj = mul nuw i128 %i.anv, %i.aoi
  %i.aok = lshr i128 %i.aoj, 64
  %i.aol = mul nuw i128 %i.any, %i.aoi
  %i.aom = add nuw i128 %i.aok, %i.aol            ; 2 uses
  %i.aon = lshr i128 %i.aom, 64
  %i.aoo = trunc nuw i128 %i.aon to i64           ; 5 uses
  %i.aop = and i128 %i.aom, 18446744073709551614
  %i.aoq = icmp ne i128 %i.aop, 0
  %i.aor = zext i1 %i.aoq to i64
  %i.aos = or i64 %i.aor, %i.aoo                  ; 2 uses
  %i.aot = shl i64 %i.amz, %i.ans
  %i.aou = zext i64 %i.aot to i128                ; 2 uses
  %i.aov = mul nuw i128 %i.anv, %i.aou
  %i.aow = lshr i128 %i.aov, 64
  %i.aox = mul nuw i128 %i.any, %i.aou
  %i.aoy = add nuw i128 %i.aow, %i.aox            ; 2 uses
  %i.aoz = lshr i128 %i.aoy, 64
  %i.apa = trunc nuw i128 %i.aoz to i64
  %i.apb = and i128 %i.aoy, 18446744073709551614
  %i.apc = icmp ne i128 %i.apb, 0
  %i.apd = zext i1 %i.apc to i64
  %i.ape = or i64 %i.apd, %i.apa
  %i.apf = and i64 %i.adr, 1                      ; 2 uses
  %i.apg = add i64 %i.aog, %i.apf                 ; 2 uses
  %i.aph = sub i64 %i.ape, %i.apf                 ; 2 uses
  %i.api = lshr i64 %i.aoo, 2                     ; 2 uses
  %i.apj = icmp ugt i64 %i.aoo, 39
  br i1 %i.apj, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.apk = udiv i64 %i.aoo, 40                    ; 2 uses
  %i.apl = mul nuw i64 %i.apk, 40                 ; 2 uses
  %i.apm = add i64 %i.apl, 40
  %i.apn = icmp uge i64 %i.aph, %i.apm            ; 2 uses
  %i.apo = icmp ugt i64 %i.apg, %i.apl
  %.not.i135.i = xor i1 %i.apo, %i.apn
  br i1 %.not.i135.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.app = zext i1 %i.apn to i64
  %i.apq = add nuw nsw i64 %i.apk, %i.app
  %i.apr = add nsw i32 %i.and, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i

bb.fi:                                            ; preds = %bb.fg, %bb.ff
  %i.aps = and i64 %i.aoo, -4                     ; 3 uses
  %i.apt = add i64 %i.aps, 4
  %i.apu = icmp uge i64 %i.aph, %i.apt            ; 2 uses
  %i.apv = or disjoint i64 %i.aps, 2              ; 2 uses
  %i.apw = icmp ugt i64 %i.aos, %i.apv
  br i1 %i.apw, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.apx = icmp eq i64 %i.aos, %i.apv
  %i.apy = trunc i64 %i.api to i1
  %i.apz = and i1 %i.apx, %i.apy
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.aqa = phi i1 [ true, %bb.fi ], [ %i.apz, %bb.fj ]
  %i.aqb = icmp ugt i64 %i.apg, %i.aps
  %.not58.i133.i = xor i1 %i.aqb, %i.apu
  %i.aqc = select i1 %.not58.i133.i, i1 %i.aqa, i1 %i.apu
  %i.aqd = zext i1 %i.aqc to i64
  %i.aqe = add nuw nsw i64 %i.api, %i.aqd
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i: ; preds = %bb.fk, %bb.fh
  %.0775 = phi i64 [ %i.aqe, %bb.fk ], [ %i.apq, %bb.fh ] ; 4 uses
  %storemerge.i134.i = phi i32 [ %i.and, %bb.fk ], [ %i.apr, %bb.fh ]
  %i.aqf = icmp samesign ult i64 %.0775, 10000000000000000
  %i.aqg = select i1 %i.aqf, i32 16, i32 17
  %i.aqh = icmp samesign ult i64 %.0775, 1000000000000000
  %.neg129.i.i = sext i1 %i.aqh to i32
  %i.aqi = add nsw i32 %i.aqg, %.neg129.i.i
  %i.aqj = add nsw i32 %i.aqi, %storemerge.i134.i ; 8 uses
  %i.aqk = add nsw i32 %i.aqj, 5
  %or.cond3.i.i = icmp ult i32 %i.aqk, 27
  %i.aql = udiv i64 %.0775, 100000000             ; 2 uses
  %i.aqm = trunc i64 %i.aql to i32                ; 2 uses
  %.neg.i137.i = mul i64 %i.aql, 4194967296
  %i.aqn = add i64 %.neg.i137.i, %.0775           ; 4 uses
  %i.aqo = trunc i64 %i.aqn to i32                ; 6 uses
  %i.aqp = udiv i32 %i.aqm, 10000                 ; 3 uses
  %.neg95.i.i = mul i32 %i.aqp, -10000
  %i.aqq = add i32 %.neg95.i.i, %i.aqm            ; 15 uses
  %i.aqr = zext nneg i32 %i.aqp to i64
  %i.aqs = mul nuw nsw i64 %i.aqr, 167773
  %i.aqt = lshr i64 %i.aqs, 24
  %i.aqu = trunc nuw nsw i64 %i.aqt to i32        ; 3 uses
  %i.aqv = mul nuw nsw i32 %i.aqu, 41
  %i.aqw = lshr i32 %i.aqv, 12                    ; 7 uses
  %.neg96.i.i = mul nsw i32 %i.aqw, -100
  %i.aqx = add nsw i32 %.neg96.i.i, %i.aqu        ; 9 uses
  %.neg97.i.i = mul nsw i32 %i.aqu, -100
  %i.aqy = add nsw i32 %.neg97.i.i, %i.aqp        ; 9 uses
  %i.aqz = trunc nuw nsw i32 %i.aqw to i8
  %i.ara = add nuw nsw i8 %i.aqz, 48              ; 3 uses
  br i1 %or.cond3.i.i, label %bb.fl, label %bb.ga

bb.fl:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i
  %i.arb = icmp slt i32 %i.aqj, 1
  br i1 %i.arb, label %bb.fm, label %bb.ft

bb.fm:                                            ; preds = %bb.fl
  %i.arc = sub nsw i32 2, %i.aqj
  %i.ard = zext nneg i32 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.ard ; 2 uses
  store i8 %i.ara, ptr %i.are, align 1, !tbaa !99
  %i.arf = icmp ne i32 %i.aqw, 0
  %i.arg = zext i1 %i.arf to i64
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.arg ; 2 uses
  %i.ari = icmp ult i32 %i.aqx, 10
  %i.arj = icmp eq i32 %i.aqw, 0
  %i.ark = and i1 %i.arj, %i.ari                  ; 2 uses
  %i.arl = shl nsw i32 %i.aqx, 1
  %i.arm = zext i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.arm
  %.neg98.i.i = sext i1 %i.ark to i64
  %i.aro = zext i1 %i.ark to i64
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.aro
  %i.arq = load i16, ptr %i.arp, align 1
  store i16 %i.arq, ptr %i.arh, align 1
  %i.arr = getelementptr inbounds i8, ptr %i.arh, i64 %.neg98.i.i ; 10 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 2
  %i.art = shl nsw i32 %i.aqy, 1
  %i.aru = zext i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aru
  %i.arw = load i16, ptr %i.arv, align 2
  store i16 %i.arw, ptr %i.ars, align 1
  %.not.i138.i = icmp eq i32 %i.aqo, 0
  br i1 %.not.i138.i, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.arx = mul i32 %i.aqq, 5243
  %i.ary = lshr i32 %i.arx, 19                    ; 2 uses
  %.neg103.i.i = mul i32 %i.ary, 2147483548
  %i.arz = add i32 %.neg103.i.i, %i.aqq
  %i.asa = and i64 %i.aqn, 4294967295
  %i.asb = mul nuw nsw i64 %i.asa, 109951163
  %i.asc = lshr i64 %i.asb, 40
  %i.asd = trunc nuw nsw i64 %i.asc to i32        ; 3 uses
  %.neg104.i.i = mul i32 %i.asd, -10000
  %i.ase = add i32 %.neg104.i.i, %i.aqo           ; 3 uses
  %i.asf = mul nuw i32 %i.asd, 5243
  %i.asg = lshr i32 %i.asf, 19                    ; 3 uses
  %.neg105.i.i = mul nsw i32 %i.asg, -100
  %i.ash = add nsw i32 %.neg105.i.i, %i.asd       ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.asj = shl nuw nsw i32 %i.ary, 1
  %i.ask = zext nneg i32 %i.asj to i64
  %i.asl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ask
  %i.asm = load i16, ptr %i.asl, align 2
  store i16 %i.asm, ptr %i.asi, align 1
  %i.asn = getelementptr inbounds nuw i8, ptr %i.arr, i64 6
  %i.aso = shl i32 %i.arz, 1
  %i.asp = zext i32 %i.aso to i64
  %i.asq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asp
  %i.asr = load i16, ptr %i.asq, align 2
  store i16 %i.asr, ptr %i.asn, align 1
  %i.ass = getelementptr inbounds nuw i8, ptr %i.arr, i64 8
  %i.ast = shl nuw nsw i32 %i.asg, 1
  %i.asu = zext nneg i32 %i.ast to i64
  %i.asv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asu
  %i.asw = load i16, ptr %i.asv, align 2
  store i16 %i.asw, ptr %i.ass, align 1
  %i.asx = getelementptr inbounds nuw i8, ptr %i.arr, i64 10
  %i.asy = shl nsw i32 %i.ash, 1
  %i.asz = zext i32 %i.asy to i64
  %i.ata = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asz
  %i.atb = load i16, ptr %i.ata, align 2
  store i16 %i.atb, ptr %i.asx, align 1
  %.not106.i139.i = icmp eq i32 %i.ase, 0
  br i1 %.not106.i139.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.atc = mul i32 %i.ase, 5243
  %i.atd = lshr i32 %i.atc, 19                    ; 3 uses
  %.neg108.i.i = mul nsw i32 %i.atd, -100
  %i.ate = add i32 %.neg108.i.i, %i.ase           ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.arr, i64 12
  %i.atg = shl nuw nsw i32 %i.atd, 1
  %i.ath = zext nneg i32 %i.atg to i64
  %i.ati = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ath
  %i.atj = load i16, ptr %i.ati, align 2
  store i16 %i.atj, ptr %i.atf, align 1
  %i.atk = getelementptr inbounds nuw i8, ptr %i.arr, i64 14
  %i.atl = shl nuw i32 %i.ate, 1
  %i.atm = zext i32 %i.atl to i64
  %i.atn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atm
  %i.ato = load i16, ptr %i.atn, align 2
  store i16 %i.ato, ptr %i.atk, align 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink4397 = phi i32 [ %i.atd, %bb.fo ], [ %i.asg, %bb.fn ]
  %.sink4393 = phi i32 [ %i.ate, %bb.fo ], [ %i.ash, %bb.fn ] ; 2 uses
  %.sink = phi i64 [ 16, %bb.fo ], [ 12, %bb.fn ]
  %i.atp = zext nneg i32 %.sink4397 to i64
  %i.atq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atp
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !99
  %i.ats = zext i8 %i.atr to i64
  %i.att = zext i32 %.sink4393 to i64
  %i.atu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.att
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !99
  %i.atw = zext i8 %i.atv to i64
  %.not107.i143.i = icmp eq i32 %.sink4393, 0
  %i.atx = add nuw nsw i64 %i.ats, 2
  %i.aty = select i1 %.not107.i143.i, i64 %i.atx, i64 %i.atw
  %i.atz = sub nsw i64 %.sink, %i.aty
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

bb.fq:                                            ; preds = %bb.fm
  %.not99.i144.i = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i144.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aua = mul i32 %i.aqq, 5243
  %i.aub = lshr i32 %i.aua, 19                    ; 3 uses
  %.neg101.i.i = mul nsw i32 %i.aub, -100
  %i.auc = add i32 %.neg101.i.i, %i.aqq           ; 3 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.aue = shl nuw nsw i32 %i.aub, 1
  %i.auf = zext nneg i32 %i.aue to i64
  %i.aug = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auf
  %i.auh = load i16, ptr %i.aug, align 2
  store i16 %i.auh, ptr %i.aud, align 1
  %i.aui = getelementptr inbounds nuw i8, ptr %i.arr, i64 6
  %i.auj = shl nuw i32 %i.auc, 1
  %i.auk = zext i32 %i.auj to i64
  %i.aul = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auk
  %i.aum = load i16, ptr %i.aul, align 2
  store i16 %i.aum, ptr %i.aui, align 1
  %i.aun = zext nneg i32 %i.aub to i64
  %i.auo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !99
  %i.auq = zext i8 %i.aup to i64
  %i.aur = zext i32 %i.auc to i64
  %i.aus = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !99
  %i.auu = zext i8 %i.aut to i64
  %.not102.i145.i = icmp eq i32 %i.auc, 0
  %i.auv = add nuw nsw i64 %i.auq, 2
  %i.auw = select i1 %.not102.i145.i, i64 %i.auv, i64 %i.auu
  %i.aux = sub nsw i64 8, %i.auw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

bb.fs:                                            ; preds = %bb.fq
  %i.auy = zext i32 %i.aqx to i64
  %i.auz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !99
  %i.avb = zext i8 %i.ava to i64
  %i.avc = zext i32 %i.aqy to i64
  %i.avd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.avc
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !99
  %i.avf = zext i8 %i.ave to i64
  %.not100.i146.i = icmp eq i32 %i.aqy, 0
  %i.avg = select i1 %.not100.i146.i, i64 %i.avb, i64 0
  %i.avh = add nuw nsw i64 %i.avg, %i.avf
  %i.avi = sub nsw i64 4, %i.avh
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i: ; preds = %bb.fs, %bb.fr, %bb.fp
  %.sink4399 = phi i64 [ %i.avi, %bb.fs ], [ %i.aux, %bb.fr ], [ %i.atz, %bb.fp ]
  %i.avj = and i64 %.sink4399, 4294967295
  %i.avk = getelementptr inbounds nuw i8, ptr %i.arr, i64 %i.avj ; 2 uses
  store i8 48, ptr %i.aee, align 1, !tbaa !99
  %i.avl = getelementptr inbounds nuw i8, ptr %i.aee, i64 1
  store i8 46, ptr %i.avl, align 1, !tbaa !99
  %i.avm = icmp slt i32 %i.aqj, 0
  br i1 %i.avm, label %.lr.ph2310.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

.lr.ph2310.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i
  %i.avn = getelementptr i8, ptr %i.aee, i64 2
  %narrow3146 = sub nsw i32 0, %i.aqj
  %i.avo = zext nneg i32 %narrow3146 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.avn, i8 48, i64 %i.avo, i1 false), !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ft:                                            ; preds = %bb.fl
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aee, i8 48, i64 24, i1 false)
  store i8 %i.ara, ptr %i.avp, align 1, !tbaa !99
  %i.avq = icmp ne i32 %i.aqw, 0
  %i.avr = zext i1 %i.avq to i64
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avp, i64 %i.avr ; 2 uses
  %i.avt = icmp ult i32 %i.aqx, 10
  %i.avu = icmp eq i32 %i.aqw, 0
  %i.avv = and i1 %i.avu, %i.avt                  ; 2 uses
  %i.avw = shl nsw i32 %i.aqx, 1
  %i.avx = zext i32 %i.avw to i64
  %i.avy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.avx
  %.neg98.i151.i = sext i1 %i.avv to i64
  %i.avz = zext i1 %i.avv to i64
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avy, i64 %i.avz
  %i.awb = load i16, ptr %i.awa, align 1
  store i16 %i.awb, ptr %i.avs, align 1
  %i.awc = getelementptr inbounds i8, ptr %i.avs, i64 %.neg98.i151.i ; 10 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 2
  %i.awe = shl nsw i32 %i.aqy, 1
  %i.awf = zext i32 %i.awe to i64
  %i.awg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awf
  %i.awh = load i16, ptr %i.awg, align 2
  store i16 %i.awh, ptr %i.awd, align 1
  %.not.i152.i = icmp eq i32 %i.aqo, 0
  br i1 %.not.i152.i, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.awi = mul i32 %i.aqq, 5243
  %i.awj = lshr i32 %i.awi, 19                    ; 2 uses
  %.neg103.i153.i = mul i32 %i.awj, 2147483548
  %i.awk = add i32 %.neg103.i153.i, %i.aqq
  %i.awl = and i64 %i.aqn, 4294967295
  %i.awm = mul nuw nsw i64 %i.awl, 109951163
  %i.awn = lshr i64 %i.awm, 40
  %i.awo = trunc nuw nsw i64 %i.awn to i32        ; 3 uses
  %.neg104.i154.i = mul i32 %i.awo, -10000
  %i.awp = add i32 %.neg104.i154.i, %i.aqo        ; 3 uses
  %i.awq = mul nuw i32 %i.awo, 5243
  %i.awr = lshr i32 %i.awq, 19                    ; 3 uses
  %.neg105.i155.i = mul nsw i32 %i.awr, -100
  %i.aws = add nsw i32 %.neg105.i155.i, %i.awo    ; 2 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awc, i64 4
  %i.awu = shl nuw nsw i32 %i.awj, 1
  %i.awv = zext nneg i32 %i.awu to i64
  %i.aww = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awv
  %i.awx = load i16, ptr %i.aww, align 2
  store i16 %i.awx, ptr %i.awt, align 1
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awc, i64 6
  %i.awz = shl i32 %i.awk, 1
  %i.axa = zext i32 %i.awz to i64
  %i.axb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axa
  %i.axc = load i16, ptr %i.axb, align 2
  store i16 %i.axc, ptr %i.awy, align 1
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awc, i64 8
  %i.axe = shl nuw nsw i32 %i.awr, 1
  %i.axf = zext nneg i32 %i.axe to i64
  %i.axg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axf
  %i.axh = load i16, ptr %i.axg, align 2
  store i16 %i.axh, ptr %i.axd, align 1
  %i.axi = getelementptr inbounds nuw i8, ptr %i.awc, i64 10
  %i.axj = shl nsw i32 %i.aws, 1
  %i.axk = zext i32 %i.axj to i64
  %i.axl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axk
  %i.axm = load i16, ptr %i.axl, align 2
  store i16 %i.axm, ptr %i.axi, align 1
  %.not106.i156.i = icmp eq i32 %i.awp, 0
  br i1 %.not106.i156.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.axn = mul i32 %i.awp, 5243
  %i.axo = lshr i32 %i.axn, 19                    ; 3 uses
  %.neg108.i157.i = mul nsw i32 %i.axo, -100
  %i.axp = add i32 %.neg108.i157.i, %i.awp        ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.awc, i64 12
  %i.axr = shl nuw nsw i32 %i.axo, 1
  %i.axs = zext nneg i32 %i.axr to i64
  %i.axt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axs
  %i.axu = load i16, ptr %i.axt, align 2
  store i16 %i.axu, ptr %i.axq, align 1
  %i.axv = getelementptr inbounds nuw i8, ptr %i.awc, i64 14
  %i.axw = shl nuw i32 %i.axp, 1
  %i.axx = zext i32 %i.axw to i64
  %i.axy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axx
  %i.axz = load i16, ptr %i.axy, align 2
  store i16 %i.axz, ptr %i.axv, align 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %.sink4413 = phi i32 [ %i.axo, %bb.fv ], [ %i.awr, %bb.fu ]
  %.sink4409 = phi i32 [ %i.axp, %bb.fv ], [ %i.aws, %bb.fu ] ; 2 uses
  %.sink4400 = phi i64 [ 16, %bb.fv ], [ 12, %bb.fu ]
  %i.aya = zext nneg i32 %.sink4413 to i64
  %i.ayb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aya
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !99
  %i.ayd = zext i8 %i.ayc to i64
  %i.aye = zext i32 %.sink4409 to i64
  %i.ayf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aye
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !99
  %i.ayh = zext i8 %i.ayg to i64
  %.not107.i163.i = icmp eq i32 %.sink4409, 0
  %i.ayi = add nuw nsw i64 %i.ayd, 2
  %i.ayj = select i1 %.not107.i163.i, i64 %i.ayi, i64 %i.ayh
  %i.ayk = sub nsw i64 %.sink4400, %i.ayj
  br label %._crit_edge2308

bb.fx:                                            ; preds = %bb.ft
  %.not99.i164.i = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i164.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ayl = mul i32 %i.aqq, 5243
  %i.aym = lshr i32 %i.ayl, 19                    ; 3 uses
  %.neg101.i165.i = mul nsw i32 %i.aym, -100
  %i.ayn = add i32 %.neg101.i165.i, %i.aqq        ; 3 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.awc, i64 4
  %i.ayp = shl nuw nsw i32 %i.aym, 1
  %i.ayq = zext nneg i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayq
  %i.ays = load i16, ptr %i.ayr, align 2
  store i16 %i.ays, ptr %i.ayo, align 1
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.awc, i64 6
  %i.ayu = shl nuw i32 %i.ayn, 1
  %i.ayv = zext i32 %i.ayu to i64
  %i.ayw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayv
  %i.ayx = load i16, ptr %i.ayw, align 2
  store i16 %i.ayx, ptr %i.ayt, align 1
  %i.ayy = zext nneg i32 %i.aym to i64
  %i.ayz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayy
  %i.aza = load i8, ptr %i.ayz, align 1, !tbaa !99
  %i.azb = zext i8 %i.aza to i64
  %i.azc = zext i32 %i.ayn to i64
  %i.azd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azc
  %i.aze = load i8, ptr %i.azd, align 1, !tbaa !99
  %i.azf = zext i8 %i.aze to i64
  %.not102.i166.i = icmp eq i32 %i.ayn, 0
  %i.azg = add nuw nsw i64 %i.azb, 2
  %i.azh = select i1 %.not102.i166.i, i64 %i.azg, i64 %i.azf
  %i.azi = sub nsw i64 8, %i.azh
  br label %._crit_edge2308

bb.fz:                                            ; preds = %bb.fx
  %i.azj = zext i32 %i.aqx to i64
  %i.azk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azj
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !99
  %i.azm = zext i8 %i.azl to i64
  %i.azn = zext i32 %i.aqy to i64
  %i.azo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azn
  %i.azp = load i8, ptr %i.azo, align 1, !tbaa !99
  %i.azq = zext i8 %i.azp to i64
  %.not100.i167.i = icmp eq i32 %i.aqy, 0
  %i.azr = select i1 %.not100.i167.i, i64 %i.azm, i64 0
  %i.azs = add nuw nsw i64 %i.azr, %i.azq
  %i.azt = sub nsw i64 4, %i.azs
  br label %._crit_edge2308

._crit_edge2308:                                  ; preds = %bb.fz, %bb.fy, %bb.fw
  %.sink4415 = phi i64 [ %i.azt, %bb.fz ], [ %i.azi, %bb.fy ], [ %i.ayk, %bb.fw ]
  %i.azu = and i64 %.sink4415, 4294967295
  %i.azv = getelementptr inbounds nuw i8, ptr %i.awc, i64 %i.azu ; 2 uses
  %i.azw = getelementptr i8, ptr %i.adn, i64 %.lobit.i120.i
  %scevgep2901 = getelementptr i8, ptr %i.azw, i64 1
  %i.azx = zext nneg i32 %i.aqj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aee, ptr align 1 %scevgep2901, i64 %i.azx, i1 false), !tbaa !99
  %7 = zext nneg i32 %i.aqj to i64
  %i.azy = getelementptr inbounds nuw i8, ptr %i.aee, i64 %7 ; 2 uses
  store i8 46, ptr %i.azy, align 1, !tbaa !99
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 2 ; 2 uses
  %i.baa = icmp ult ptr %i.azz, %i.azv
  %spec.select = select i1 %i.baa, ptr %i.azv, ptr %i.azz
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ga:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i
  %.ptr1002 = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 3 uses
  store i8 %i.ara, ptr %.ptr1002, align 1, !tbaa !99
  %.not1007 = icmp eq i32 %i.aqw, 0               ; 2 uses
  %.add997 = select i1 %.not1007, i64 1, i64 2    ; 2 uses
  %.ptr1003 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add997
  %i.bab = icmp ult i32 %i.aqx, 10
  %i.bac = and i1 %.not1007, %i.bab               ; 2 uses
  %i.bad = shl nsw i32 %i.aqx, 1
  %i.bae = zext i32 %i.bad to i64
  %i.baf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bae
  %.neg98.i173.i = sext i1 %i.bac to i64
  %i.bag = zext i1 %i.bac to i64
  %i.bah = getelementptr inbounds nuw i8, ptr %i.baf, i64 %i.bag
  %i.bai = load i16, ptr %i.bah, align 1
  store i16 %i.bai, ptr %.ptr1003, align 1
  %.add998 = add nsw i64 %.add997, %.neg98.i173.i ; 2 uses
  %.ptr1004 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add998 ; 9 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 2
  %i.bak = shl nsw i32 %i.aqy, 1
  %i.bal = zext i32 %i.bak to i64
  %i.bam = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bal
  %i.ban = load i16, ptr %i.bam, align 2
  store i16 %i.ban, ptr %i.baj, align 1
  %.not.i174.i = icmp eq i32 %i.aqo, 0
  br i1 %.not.i174.i, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bao = mul i32 %i.aqq, 5243
  %i.bap = lshr i32 %i.bao, 19                    ; 2 uses
  %.neg103.i175.i = mul i32 %i.bap, 2147483548
  %i.baq = add i32 %.neg103.i175.i, %i.aqq
  %i.bar = and i64 %i.aqn, 4294967295
  %i.bas = mul nuw nsw i64 %i.bar, 109951163
  %i.bat = lshr i64 %i.bas, 40
  %i.bau = trunc nuw nsw i64 %i.bat to i32        ; 3 uses
  %.neg104.i176.i = mul i32 %i.bau, -10000
  %i.bav = add i32 %.neg104.i176.i, %i.aqo        ; 3 uses
  %i.baw = mul nuw i32 %i.bau, 5243
  %i.bax = lshr i32 %i.baw, 19                    ; 3 uses
  %.neg105.i177.i = mul nsw i32 %i.bax, -100
  %i.bay = add nsw i32 %.neg105.i177.i, %i.bau    ; 3 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 4
  %i.bba = shl nuw nsw i32 %i.bap, 1
  %i.bbb = zext nneg i32 %i.bba to i64
  %i.bbc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbb
  %i.bbd = load i16, ptr %i.bbc, align 2
  store i16 %i.bbd, ptr %i.baz, align 1
  %i.bbe = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 6
  %i.bbf = shl i32 %i.baq, 1
  %i.bbg = zext i32 %i.bbf to i64
  %i.bbh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbg
  %i.bbi = load i16, ptr %i.bbh, align 2
  store i16 %i.bbi, ptr %i.bbe, align 1
  %i.bbj = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 8
  %i.bbk = shl nuw nsw i32 %i.bax, 1
  %i.bbl = zext nneg i32 %i.bbk to i64
  %i.bbm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbl
  %i.bbn = load i16, ptr %i.bbm, align 2
  store i16 %i.bbn, ptr %i.bbj, align 1
  %i.bbo = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 10
  %i.bbp = shl nsw i32 %i.bay, 1
  %i.bbq = zext i32 %i.bbp to i64
  %i.bbr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbq
  %i.bbs = load i16, ptr %i.bbr, align 2
  store i16 %i.bbs, ptr %i.bbo, align 1
  %.not106.i178.i = icmp eq i32 %i.bav, 0
  br i1 %.not106.i178.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bbt = mul i32 %i.bav, 5243
  %i.bbu = lshr i32 %i.bbt, 19                    ; 3 uses
  %.neg108.i179.i = mul nsw i32 %i.bbu, -100
  %i.bbv = add i32 %.neg108.i179.i, %i.bav        ; 3 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 12
  %i.bbx = shl nuw nsw i32 %i.bbu, 1
  %i.bby = zext nneg i32 %i.bbx to i64
  %i.bbz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bby
  %i.bca = load i16, ptr %i.bbz, align 2
  store i16 %i.bca, ptr %i.bbw, align 1
  %i.bcb = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 14
  %i.bcc = shl nuw i32 %i.bbv, 1
  %i.bcd = zext i32 %i.bcc to i64
  %i.bce = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bcd
  %i.bcf = load i16, ptr %i.bce, align 2
  store i16 %i.bcf, ptr %i.bcb, align 1
  %i.bcg = zext nneg i32 %i.bbu to i64
  %i.bch = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcg
  %i.bci = load i8, ptr %i.bch, align 1, !tbaa !99
  %i.bcj = zext i8 %i.bci to i64
  %i.bck = zext i32 %i.bbv to i64
  %i.bcl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bck
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !99
  %i.bcn = zext i8 %i.bcm to i64
  %.not109.i180.i = icmp eq i32 %i.bbv, 0
  %i.bco = add nuw nsw i64 %i.bcj, 2
  %i.bcp = select i1 %.not109.i180.i, i64 %i.bco, i64 %i.bcn
  %i.bcq = sub nsw i64 16, %i.bcp
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.gd:                                            ; preds = %bb.gb
  %i.bcr = zext nneg i32 %i.bax to i64
  %i.bcs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcr
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !99
  %i.bcu = zext i8 %i.bct to i64
  %i.bcv = zext i32 %i.bay to i64
  %i.bcw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcv
  %i.bcx = load i8, ptr %i.bcw, align 1, !tbaa !99
  %i.bcy = zext i8 %i.bcx to i64
  %.not107.i185.i = icmp eq i32 %i.bay, 0
  %i.bcz = add nuw nsw i64 %i.bcu, 2
  %i.bda = select i1 %.not107.i185.i, i64 %i.bcz, i64 %i.bcy
  %i.bdb = sub nsw i64 12, %i.bda
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.ge:                                            ; preds = %bb.ga
  %.not99.i186.i = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i186.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bdc = mul i32 %i.aqq, 5243
  %i.bdd = lshr i32 %i.bdc, 19                    ; 3 uses
  %.neg101.i187.i = mul nsw i32 %i.bdd, -100
  %i.bde = add i32 %.neg101.i187.i, %i.aqq        ; 3 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 4
  %i.bdg = shl nuw nsw i32 %i.bdd, 1
  %i.bdh = zext nneg i32 %i.bdg to i64
  %i.bdi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdh
  %i.bdj = load i16, ptr %i.bdi, align 2
  store i16 %i.bdj, ptr %i.bdf, align 1
  %i.bdk = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 6
  %i.bdl = shl nuw i32 %i.bde, 1
  %i.bdm = zext i32 %i.bdl to i64
  %i.bdn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdm
  %i.bdo = load i16, ptr %i.bdn, align 2
  store i16 %i.bdo, ptr %i.bdk, align 1
  %i.bdp = zext nneg i32 %i.bdd to i64
  %i.bdq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdp
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !99
  %i.bds = zext i8 %i.bdr to i64
  %i.bdt = zext i32 %i.bde to i64
  %i.bdu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdt
  %i.bdv = load i8, ptr %i.bdu, align 1, !tbaa !99
  %i.bdw = zext i8 %i.bdv to i64
  %.not102.i188.i = icmp eq i32 %i.bde, 0
  %i.bdx = add nuw nsw i64 %i.bds, 2
  %i.bdy = select i1 %.not102.i188.i, i64 %i.bdx, i64 %i.bdw
  %i.bdz = sub nsw i64 8, %i.bdy
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.gg:                                            ; preds = %bb.ge
  %i.bea = zext i32 %i.aqx to i64
  %i.beb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bea
  %i.bec = load i8, ptr %i.beb, align 1, !tbaa !99
  %i.bed = zext i8 %i.bec to i64
  %i.bee = zext i32 %i.aqy to i64
  %i.bef = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bee
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !99
  %i.beh = zext i8 %i.beg to i64
  %.not100.i189.i = icmp eq i32 %i.aqy, 0
  %i.bei = select i1 %.not100.i189.i, i64 %i.bed, i64 0
  %i.bej = add nuw nsw i64 %i.bei, %i.beh
  %i.bek = sub nsw i64 4, %i.bej
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i: ; preds = %bb.gc, %bb.gd, %bb.gg, %bb.gf
  %.pn.i182.i.pn.in = phi i64 [ %i.bek, %bb.gg ], [ %i.bdz, %bb.gf ], [ %i.bcq, %bb.gc ], [ %i.bdb, %bb.gd ]
  %.pn.i182.i.pn = and i64 %.pn.i182.i.pn.in, 4294967295
  %.1.i184.i.idx = add nuw nsw i64 %.pn.i182.i.pn, %.add998 ; 2 uses
  %.1.i184.i.ptr = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.1.i184.i.idx
  %i.bel = icmp eq i64 %.1.i184.i.idx, 2
  %.neg130.i.i = sext i1 %i.bel to i64
  %i.bem = getelementptr inbounds i8, ptr %.1.i184.i.ptr, i64 %.neg130.i.i ; 2 uses
  %i.ben = add nsw i32 %i.aqj, -1                 ; 2 uses
  %i.beo = load i8, ptr %.ptr1002, align 1, !tbaa !99
  store i8 %i.beo, ptr %i.aee, align 1, !tbaa !99
  store i8 46, ptr %.ptr1002, align 1, !tbaa !99
  store i8 101, ptr %i.bem, align 1, !tbaa !99
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bem, i64 1 ; 2 uses
  store i8 45, ptr %i.bep, align 1, !tbaa !99
  %.lobit.i191.i = lshr i32 %i.ben, 31
  %i.beq = zext nneg i32 %.lobit.i191.i to i64
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bep, i64 %i.beq ; 5 uses
  %i.bes = tail call i32 @llvm.abs.i32(i32 %i.ben, i1 true) ; 5 uses
  %i.bet = icmp samesign ult i32 %i.bes, 100
  br i1 %i.bet, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i
  %i.beu = icmp samesign ult i32 %i.bes, 10       ; 2 uses
  %i.bev = shl nuw nsw i32 %i.bes, 1
  %i.bew = zext nneg i32 %i.bev to i64
  %i.bex = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bew
  %.neg22.i.i = sext i1 %i.beu to i64
  %i.bey = zext i1 %i.beu to i64
end_hunk_1
