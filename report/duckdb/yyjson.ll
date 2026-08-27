Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/yyjson?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
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
  store i8 %i.ara, ptr %i.are, align 1, !tbaa !81
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
  %i.atl = shl i32 %i.ate, 1
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
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !81
  %i.ats = zext i8 %i.atr to i64
  %i.att = zext i32 %.sink5204 to i64
  %i.atu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.att
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !81
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
  %i.auj = shl i32 %i.auc, 1
  %i.auk = zext i32 %i.auj to i64
  %i.aul = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auk
  %i.aum = load i16, ptr %i.aul, align 2
  store i16 %i.aum, ptr %i.aui, align 1
  %i.aun = zext nneg i32 %i.aub to i64
  %i.auo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !81
  %i.auq = zext i8 %i.aup to i64
  %i.aur = zext i32 %i.auc to i64
  %i.aus = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !81
  %i.auu = zext i8 %i.aut to i64
  %.not102.i846 = icmp eq i32 %i.auc, 0
  %i.auv = add nuw nsw i64 %i.auq, 2
  %i.auw = select i1 %.not102.i846, i64 %i.auv, i64 %i.auu
  %i.aux = sub nsw i64 8, %i.auw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

bb.fs:                                            ; preds = %bb.fq
  %i.auy = zext i32 %i.aqx to i64
  %i.auz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !81
  %i.avb = zext i8 %i.ava to i64
  %i.avc = zext i32 %i.aqy to i64
  %i.avd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.avc
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !81
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
  store i8 48, ptr %i.aee, align 1, !tbaa !81
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aee, i64 1
  store i8 46, ptr %i.avj, align 1, !tbaa !81
  %i.avk = icmp slt i32 %i.aqj, 0
  br i1 %i.avk, label %.lr.ph3129.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

.lr.ph3129.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848
  %i.avl = getelementptr i8, ptr %i.aee, i64 2
  %narrow3959 = sub nsw i32 0, %i.aqj
  %i.avm = zext nneg i32 %narrow3959 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.avl, i8 48, i64 %i.avm, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ft:                                            ; preds = %bb.fl
  %i.avn = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aee, i8 48, i64 24, i1 false)
  store i8 %i.ara, ptr %i.avn, align 1, !tbaa !81
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
  %i.axu = shl i32 %i.axn, 1
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
  %i.aya = load i8, ptr %i.axz, align 1, !tbaa !81
  %i.ayb = zext i8 %i.aya to i64
  %i.ayc = zext i32 %.sink5219 to i64
  %i.ayd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayc
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !81
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
  %i.ays = shl i32 %i.ayl, 1
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayt
  %i.ayv = load i16, ptr %i.ayu, align 2
  store i16 %i.ayv, ptr %i.ayr, align 1
  %i.ayw = zext nneg i32 %i.ayk to i64
  %i.ayx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayw
  %i.ayy = load i8, ptr %i.ayx, align 1, !tbaa !81
  %i.ayz = zext i8 %i.ayy to i64
  %i.aza = zext i32 %i.ayl to i64
  %i.azb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aza
  %i.azc = load i8, ptr %i.azb, align 1, !tbaa !81
  %i.azd = zext i8 %i.azc to i64
  %.not102.i868 = icmp eq i32 %i.ayl, 0
  %i.aze = add nuw nsw i64 %i.ayz, 2
  %i.azf = select i1 %.not102.i868, i64 %i.aze, i64 %i.azd
  %i.azg = sub nsw i64 8, %i.azf
  br label %._crit_edge3127

bb.fz:                                            ; preds = %bb.fx
  %i.azh = zext i32 %i.aqx to i64
  %i.azi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azh
  %i.azj = load i8, ptr %i.azi, align 1, !tbaa !81
  %i.azk = zext i8 %i.azj to i64
  %i.azl = zext i32 %i.aqy to i64
  %i.azm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azl
  %i.azn = load i8, ptr %i.azm, align 1, !tbaa !81
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
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aee, ptr align 1 %scevgep3718, i64 %i.azt, i1 false), !tbaa !81
  %i.azu = zext nneg i32 %i.aqj to i64
  %i.azv = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.azu ; 2 uses
  store i8 46, ptr %i.azv, align 1, !tbaa !81
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 2 ; 2 uses
  %i.azx = icmp ult ptr %i.azw, %.0.i863
  %spec.select = select i1 %i.azx, ptr %.0.i863, ptr %i.azw
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ga:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706
  %.ptr1823 = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 3 uses
  store i8 %i.ara, ptr %.ptr1823, align 1, !tbaa !81
  %.not1828 = icmp eq i32 %i.aqw, 0               ; 2 uses
  %.add1818 = select i1 %.not1828, i64 1, i64 2   ; 2 uses
  %.ptr1824 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add1818
  %i.azy = icmp ult i32 %i.aqx, 10
  %i.azz = and i1 %.not1828, %i.azy               ; 2 uses
  %i.baa = shl nsw i32 %i.aqx, 1
  %i.bab = zext i32 %i.baa to i64
  %i.bac = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bab
  %.neg98.i875 = sext i1 %i.azz to i64
  %i.bad = zext i1 %i.azz to i64
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bac, i64 %i.bad
  %i.baf = load i16, ptr %i.bae, align 1
  store i16 %i.baf, ptr %.ptr1824, align 1
  %.add1819 = add nsw i64 %.add1818, %.neg98.i875 ; 2 uses
  %.ptr1825 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add1819 ; 9 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 2
  %i.bah = shl nsw i32 %i.aqy, 1
  %i.bai = zext i32 %i.bah to i64
  %i.baj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bai
  %i.bak = load i16, ptr %i.baj, align 2
  store i16 %i.bak, ptr %i.bag, align 1
  %.not.i876 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i876, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bal = mul i32 %i.aqq, 5243
  %i.bam = lshr i32 %i.bal, 19                    ; 2 uses
  %.neg103.i877 = mul i32 %i.bam, 2147483548
  %i.ban = add i32 %.neg103.i877, %i.aqq
  %i.bao = and i64 %i.aqn, 4294967295
  %i.bap = mul nuw nsw i64 %i.bao, 109951163
  %i.baq = lshr i64 %i.bap, 40
  %i.bar = trunc nuw nsw i64 %i.baq to i32        ; 3 uses
  %.neg104.i878 = mul i32 %i.bar, -10000
  %i.bas = add i32 %.neg104.i878, %i.aqo          ; 3 uses
  %i.bat = mul nuw i32 %i.bar, 5243
  %i.bau = lshr i32 %i.bat, 19                    ; 3 uses
  %.neg105.i879 = mul nsw i32 %i.bau, -100
  %i.bav = add nsw i32 %.neg105.i879, %i.bar      ; 3 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 4
  %i.bax = shl nuw nsw i32 %i.bam, 1
  %i.bay = zext nneg i32 %i.bax to i64
  %i.baz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bay
  %i.bba = load i16, ptr %i.baz, align 2
  store i16 %i.bba, ptr %i.baw, align 1
  %i.bbb = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 6
  %i.bbc = shl i32 %i.ban, 1
  %i.bbd = zext i32 %i.bbc to i64
  %i.bbe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbd
  %i.bbf = load i16, ptr %i.bbe, align 2
  store i16 %i.bbf, ptr %i.bbb, align 1
  %i.bbg = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 8
  %i.bbh = shl nuw nsw i32 %i.bau, 1
  %i.bbi = zext nneg i32 %i.bbh to i64
  %i.bbj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbi
  %i.bbk = load i16, ptr %i.bbj, align 2
  store i16 %i.bbk, ptr %i.bbg, align 1
  %i.bbl = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 10
  %i.bbm = shl nsw i32 %i.bav, 1
  %i.bbn = zext i32 %i.bbm to i64
  %i.bbo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbn
  %i.bbp = load i16, ptr %i.bbo, align 2
  store i16 %i.bbp, ptr %i.bbl, align 1
  %.not106.i880 = icmp eq i32 %i.bas, 0
  br i1 %.not106.i880, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bbq = mul i32 %i.bas, 5243
  %i.bbr = lshr i32 %i.bbq, 19                    ; 3 uses
  %.neg108.i881 = mul nsw i32 %i.bbr, -100
  %i.bbs = add i32 %.neg108.i881, %i.bas          ; 3 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 12
  %i.bbu = shl nuw nsw i32 %i.bbr, 1
  %i.bbv = zext nneg i32 %i.bbu to i64
  %i.bbw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbv
  %i.bbx = load i16, ptr %i.bbw, align 2
  store i16 %i.bbx, ptr %i.bbt, align 1
  %i.bby = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 14
  %i.bbz = shl i32 %i.bbs, 1
  %i.bca = zext i32 %i.bbz to i64
  %i.bcb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bca
  %i.bcc = load i16, ptr %i.bcb, align 2
  store i16 %i.bcc, ptr %i.bby, align 1
  %i.bcd = zext nneg i32 %i.bbr to i64
  %i.bce = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcd
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !81
  %i.bcg = zext i8 %i.bcf to i64
  %i.bch = zext i32 %i.bbs to i64
  %i.bci = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bch
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !81
  %i.bck = zext i8 %i.bcj to i64
  %.not109.i882 = icmp eq i32 %i.bbs, 0
  %i.bcl = add nuw nsw i64 %i.bcg, 2
  %i.bcm = select i1 %.not109.i882, i64 %i.bcl, i64 %i.bck
  %i.bcn = sub nsw i64 16, %i.bcm
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.gd:                                            ; preds = %bb.gb
  %i.bco = zext nneg i32 %i.bau to i64
  %i.bcp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bco
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !81
  %i.bcr = zext i8 %i.bcq to i64
  %i.bcs = zext i32 %i.bav to i64
  %i.bct = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcs
  %i.bcu = load i8, ptr %i.bct, align 1, !tbaa !81
  %i.bcv = zext i8 %i.bcu to i64
  %.not107.i887 = icmp eq i32 %i.bav, 0
  %i.bcw = add nuw nsw i64 %i.bcr, 2
  %i.bcx = select i1 %.not107.i887, i64 %i.bcw, i64 %i.bcv
  %i.bcy = sub nsw i64 12, %i.bcx
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.ge:                                            ; preds = %bb.ga
  %.not99.i888 = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i888, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bcz = mul i32 %i.aqq, 5243
  %i.bda = lshr i32 %i.bcz, 19                    ; 3 uses
  %.neg101.i889 = mul nsw i32 %i.bda, -100
  %i.bdb = add i32 %.neg101.i889, %i.aqq          ; 3 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 4
  %i.bdd = shl nuw nsw i32 %i.bda, 1
  %i.bde = zext nneg i32 %i.bdd to i64
  %i.bdf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bde
  %i.bdg = load i16, ptr %i.bdf, align 2
  store i16 %i.bdg, ptr %i.bdc, align 1
  %i.bdh = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 6
  %i.bdi = shl i32 %i.bdb, 1
  %i.bdj = zext i32 %i.bdi to i64
  %i.bdk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdj
  %i.bdl = load i16, ptr %i.bdk, align 2
  store i16 %i.bdl, ptr %i.bdh, align 1
  %i.bdm = zext nneg i32 %i.bda to i64
  %i.bdn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdm
  %i.bdo = load i8, ptr %i.bdn, align 1, !tbaa !81
  %i.bdp = zext i8 %i.bdo to i64
  %i.bdq = zext i32 %i.bdb to i64
  %i.bdr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdq
  %i.bds = load i8, ptr %i.bdr, align 1, !tbaa !81
  %i.bdt = zext i8 %i.bds to i64
  %.not102.i890 = icmp eq i32 %i.bdb, 0
  %i.bdu = add nuw nsw i64 %i.bdp, 2
  %i.bdv = select i1 %.not102.i890, i64 %i.bdu, i64 %i.bdt
  %i.bdw = sub nsw i64 8, %i.bdv
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.gg:                                            ; preds = %bb.ge
  %i.bdx = zext i32 %i.aqx to i64
  %i.bdy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdx
  %i.bdz = load i8, ptr %i.bdy, align 1, !tbaa !81
  %i.bea = zext i8 %i.bdz to i64
  %i.beb = zext i32 %i.aqy to i64
  %i.bec = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.beb
  %i.bed = load i8, ptr %i.bec, align 1, !tbaa !81
  %i.bee = zext i8 %i.bed to i64
  %.not100.i891 = icmp eq i32 %i.aqy, 0
  %i.bef = select i1 %.not100.i891, i64 %i.bea, i64 0
  %i.beg = add nuw nsw i64 %i.bef, %i.bee
  %i.beh = sub nsw i64 4, %i.beg
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892: ; preds = %bb.gc, %bb.gd, %bb.gf, %bb.gg
  %.pn.i884.pn.in = phi i64 [ %i.beh, %bb.gg ], [ %i.bdw, %bb.gf ], [ %i.bcn, %bb.gc ], [ %i.bcy, %bb.gd ]
  %.pn.i884.pn = and i64 %.pn.i884.pn.in, 4294967295
  %.1.i886.idx = add nuw nsw i64 %.pn.i884.pn, %.add1819 ; 2 uses
  %.1.i886.ptr = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.1.i886.idx
  %i.bei = icmp eq i64 %.1.i886.idx, 2
  %.neg130.i = sext i1 %i.bei to i64
  %i.bej = getelementptr inbounds i8, ptr %.1.i886.ptr, i64 %.neg130.i ; 2 uses
  %i.bek = add nsw i32 %i.aqj, -1                 ; 2 uses
  %i.bel = load i8, ptr %.ptr1823, align 1, !tbaa !81
  store i8 %i.bel, ptr %i.aee, align 1, !tbaa !81
  store i8 46, ptr %.ptr1823, align 1, !tbaa !81
  store i8 101, ptr %i.bej, align 1, !tbaa !81
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bej, i64 1 ; 2 uses
  store i8 45, ptr %i.bem, align 1, !tbaa !81
  %.lobit.i901 = lshr i32 %i.bek, 31
  %i.ben = zext nneg i32 %.lobit.i901 to i64
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.ben ; 5 uses
  %i.bep = tail call i32 @llvm.abs.i32(i32 %i.bek, i1 true) ; 5 uses
  %i.beq = icmp samesign ult i32 %i.bep, 100
  br i1 %i.beq, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892
  %i.ber = icmp samesign ult i32 %i.bep, 10       ; 2 uses
  %i.bes = shl nuw nsw i32 %i.bep, 1
  %i.bet = zext nneg i32 %i.bes to i64
  %i.beu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bet
  %.neg22.i904 = sext i1 %i.ber to i64
  %i.bev = zext i1 %i.ber to i64
  %i.bew = getelementptr inbounds nuw i8, ptr %i.beu, i64 %i.bev
  %i.bex = load i16, ptr %i.bew, align 1
  store i16 %i.bex, ptr %i.beo, align 1
  %i.bey = getelementptr inbounds nuw i8, ptr %i.beo, i64 2
  %i.bez = getelementptr inbounds i8, ptr %i.bey, i64 %.neg22.i904
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.gi:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892
  %i.bfa = mul nuw nsw i32 %i.bep, 656
  %i.bfb = lshr i32 %i.bfa, 16                    ; 2 uses
  %.neg.i902 = mul i32 %i.bfb, 2147483548
  %i.bfc = add i32 %.neg.i902, %i.bep
  %i.bfd = trunc nuw nsw i32 %i.bfb to i8
  %i.bfe = add nuw nsw i8 %i.bfd, 48
  store i8 %i.bfe, ptr %i.beo, align 1, !tbaa !81
  %i.bff = getelementptr inbounds nuw i8, ptr %i.beo, i64 1
  %i.bfg = shl i32 %i.bfc, 1
  %i.bfh = zext i32 %i.bfg to i64
  %i.bfi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bfh
  %i.bfj = load i16, ptr %i.bfi, align 2
  store i16 %i.bfj, ptr %i.bff, align 1
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.beo, i64 3
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.gj:                                            ; preds = %bb.en
  %i.bfl = shl nuw nsw i64 %i.ads, 5              ; 3 uses
  %i.bfm = or disjoint i64 %i.bfl, 16
  %i.bfn = add nsw i64 %i.bfl, -16
  %i.bfo = zext i64 %i.bfn to i128                ; 2 uses
  %i.bfp = mul nuw nsw i128 %i.bfo, 7784369436827535058
  %i.bfq = lshr i128 %i.bfp, 64
  %i.bfr = mul nuw i128 %i.bfo, 11392378155556871081
  %i.bfs = add nuw i128 %i.bfq, %i.bfr            ; 2 uses
  %i.bft = lshr i128 %i.bfs, 64
  %i.bfu = trunc nuw i128 %i.bft to i64
  %i.bfv = and i128 %i.bfs, 18446744073709551614
  %i.bfw = icmp ne i128 %i.bfv, 0
  %i.bfx = zext i1 %i.bfw to i64
  %i.bfy = or i64 %i.bfx, %i.bfu
  %i.bfz = zext nneg i64 %i.bfl to i128           ; 2 uses
  %i.bga = mul nuw nsw i128 %i.bfz, 7784369436827535058
  %i.bgb = lshr i128 %i.bga, 64
  %i.bgc = mul nuw nsw i128 %i.bfz, 11392378155556871081
  %i.bgd = add nuw nsw i128 %i.bgb, %i.bgc        ; 2 uses
  %i.bge = lshr i128 %i.bgd, 64
  %i.bgf = trunc nuw nsw i128 %i.bge to i64       ; 5 uses
  %i.bgg = and i128 %i.bgd, 18446744073709551614
  %i.bgh = icmp ne i128 %i.bgg, 0
  %i.bgi = zext i1 %i.bgh to i64
  %i.bgj = or i64 %i.bgi, %i.bgf                  ; 2 uses
  %i.bgk = zext nneg i64 %i.bfm to i128           ; 2 uses
  %i.bgl = mul nuw nsw i128 %i.bgk, 7784369436827535058
  %i.bgm = lshr i128 %i.bgl, 64
  %i.bgn = mul nuw nsw i128 %i.bgk, 11392378155556871081
  %i.bgo = add nuw nsw i128 %i.bgm, %i.bgn        ; 2 uses
  %i.bgp = lshr i128 %i.bgo, 64
  %i.bgq = trunc nuw nsw i128 %i.bgp to i64
  %i.bgr = and i128 %i.bgo, 18446744073709551614
  %i.bgs = icmp ne i128 %i.bgr, 0
  %i.bgt = zext i1 %i.bgs to i64
  %i.bgu = or i64 %i.bgt, %i.bgq
  %i.bgv = and i64 %i.adr, 1                      ; 2 uses
  %i.bgw = add nuw i64 %i.bfy, %i.bgv             ; 2 uses
  %i.bgx = sub nuw nsw i64 %i.bgu, %i.bgv         ; 2 uses
  %i.bgy = lshr i64 %i.bgf, 2                     ; 2 uses
  %i.bgz = icmp samesign ugt i64 %i.bgf, 39
  br i1 %i.bgz, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.bha = udiv i64 %i.bgf, 40                    ; 2 uses
  %i.bhb = mul nuw nsw i64 %i.bha, 40             ; 2 uses
  %i.bhc = add nuw nsw i64 %i.bhb, 40
  %i.bhd = icmp samesign uge i64 %i.bgx, %i.bhc   ; 2 uses
  %i.bhe = icmp ugt i64 %i.bgw, %i.bhb
  %.not.i700 = xor i1 %i.bhe, %i.bhd
  br i1 %.not.i700, label %bb.gl, label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit701

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.bhf = and i64 %i.bgf, 9223372036854775804    ; 3 uses
  %i.bhg = add nuw nsw i64 %i.bhf, 4
  %i.bhh = icmp samesign uge i64 %i.bgx, %i.bhg   ; 2 uses
  %i.bhi = or disjoint i64 %i.bhf, 2              ; 2 uses
  %i.bhj = icmp samesign ugt i64 %i.bgj, %i.bhi
  br i1 %i.bhj, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.bhk = icmp eq i64 %i.bgj, %i.bhi
  %i.bhl = trunc i64 %i.bgy to i1
  %i.bhm = and i1 %i.bhk, %i.bhl
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.bhn = phi i1 [ true, %bb.gl ], [ %i.bhm, %bb.gm ]
  %i.bho = icmp ugt i64 %i.bgw, %i.bhf
  %.not58.i698 = xor i1 %i.bho, %i.bhh
  %i.bhp = select i1 %.not58.i698, i1 %i.bhn, i1 %i.bhh
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit701

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit701: ; preds = %bb.gk, %bb.gn
  %.sink5227 = phi i1 [ %i.bhp, %bb.gn ], [ %i.bhd, %bb.gk ]
  %.sink5225 = phi i64 [ %i.bgy, %bb.gn ], [ %i.bha, %bb.gk ]
  %storemerge.i699 = phi i32 [ -324, %bb.gn ], [ -323, %bb.gk ]
  %i.bhq = zext i1 %.sink5227 to i64
  %i.bhr = add nuw nsw i64 %.sink5225, %i.bhq     ; 25 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 19 uses
  %i.bht = icmp samesign ugt i64 %i.bhr, 999999999999999
  br i1 %i.bht, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit701
  %i.bhu = udiv i64 %i.bhr, 100000000             ; 2 uses
  %.neg29.i915 = mul nuw nsw i64 %i.bhu, 4194967296
  %i.bhv = add nuw nsw i64 %.neg29.i915, %i.bhr   ; 2 uses
  %i.bhw = trunc i64 %i.bhv to i32
  %i.bhx = udiv i64 %i.bhr, 10000000000000000     ; 2 uses
  %.neg30.i916 = mul nuw nsw i64 %i.bhx, 4194967296
  %i.bhy = add nuw nsw i64 %.neg30.i916, %i.bhu   ; 2 uses
  %i.bhz = trunc i64 %i.bhy to i32
  %i.bia = trunc nuw nsw i64 %i.bhx to i8
  %i.bib = add nuw nsw i8 %i.bia, 48
  store i8 %i.bib, ptr %i.bhs, align 1, !tbaa !81
  %i.bic = icmp samesign ugt i64 %i.bhr, 9999999999999999
  %i.bid = zext i1 %i.bic to i64
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bhs, i64 %i.bid ; 9 uses
  %i.bif = and i64 %i.bhy, 4294967295
  %i.big = mul nuw nsw i64 %i.bif, 109951163
  %i.bih = lshr i64 %i.big, 40
  %i.bii = trunc nuw nsw i64 %i.bih to i32        ; 3 uses
  %.neg.i1125 = mul i32 %i.bii, -10000
  %i.bij = add i32 %.neg.i1125, %i.bhz            ; 2 uses
  %i.bik = mul nuw i32 %i.bii, 5243
  %i.bil = lshr i32 %i.bik, 19                    ; 2 uses
  %i.bim = mul i32 %i.bij, 5243
  %i.bin = lshr i32 %i.bim, 19                    ; 2 uses
  %.neg17.i1126 = mul nsw i32 %i.bil, -100
  %i.bio = add nsw i32 %.neg17.i1126, %i.bii
  %.neg18.i1127 = mul i32 %i.bin, 2147483548
  %i.bip = add i32 %.neg18.i1127, %i.bij
  %i.biq = shl nuw nsw i32 %i.bil, 1
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.dyx = mul nuw i128 %i.dyw, %i.dyv
  %i.dyy = lshr i128 %i.dyx, 64
  %i.dyz = zext i64 %i.dym to i128                ; 3 uses
  %i.dza = mul nuw i128 %i.dyz, %i.dyv
  %i.dzb = add nuw i128 %i.dyy, %i.dza            ; 2 uses
  %i.dzc = lshr i128 %i.dzb, 64
  %i.dzd = trunc nuw i128 %i.dzc to i64
  %i.dze = and i128 %i.dzb, 18446744073709551614
  %i.dzf = icmp ne i128 %i.dze, 0
  %i.dzg = zext i1 %i.dzf to i64
  %i.dzh = or i64 %i.dzg, %i.dzd
  %i.dzi = shl i64 %i.dxw, %i.dyt
  %i.dzj = zext i64 %i.dzi to i128                ; 2 uses
  %i.dzk = mul nuw i128 %i.dyw, %i.dzj
  %i.dzl = lshr i128 %i.dzk, 64
  %i.dzm = mul nuw i128 %i.dyz, %i.dzj
  %i.dzn = add nuw i128 %i.dzl, %i.dzm            ; 2 uses
  %i.dzo = lshr i128 %i.dzn, 64
  %i.dzp = trunc nuw i128 %i.dzo to i64           ; 5 uses
  %i.dzq = and i128 %i.dzn, 18446744073709551614
  %i.dzr = icmp ne i128 %i.dzq, 0
  %i.dzs = zext i1 %i.dzr to i64
  %i.dzt = or i64 %i.dzs, %i.dzp                  ; 2 uses
  %i.dzu = shl i64 %i.dya, %i.dyt
  %i.dzv = zext i64 %i.dzu to i128                ; 2 uses
  %i.dzw = mul nuw i128 %i.dyw, %i.dzv
  %i.dzx = lshr i128 %i.dzw, 64
  %i.dzy = mul nuw i128 %i.dyz, %i.dzv
  %i.dzz = add nuw i128 %i.dzx, %i.dzy            ; 2 uses
  %i.eaa = lshr i128 %i.dzz, 64
  %i.eab = trunc nuw i128 %i.eaa to i64
  %i.eac = and i128 %i.dzz, 18446744073709551614
  %i.ead = icmp ne i128 %i.eac, 0
  %i.eae = zext i1 %i.ead to i64
  %i.eaf = or i64 %i.eae, %i.eab
  %i.eag = and i64 %i.dou, 1                      ; 2 uses
  %i.eah = add i64 %i.dzh, %i.eag                 ; 2 uses
  %i.eai = sub i64 %i.eaf, %i.eag                 ; 2 uses
  %i.eaj = lshr i64 %i.dzp, 2                     ; 2 uses
  %i.eak = icmp ugt i64 %i.dzp, 39
  br i1 %i.eak, label %bb.oo, label %bb.oq

bb.oo:                                            ; preds = %bb.on
  %i.eal = udiv i64 %i.dzp, 40                    ; 2 uses
  %i.eam = mul nuw i64 %i.eal, 40                 ; 2 uses
  %i.ean = add i64 %i.eam, 40
  %i.eao = icmp uge i64 %i.eai, %i.ean            ; 2 uses
  %i.eap = icmp ugt i64 %i.eah, %i.eam
  %.not.i695 = xor i1 %i.eap, %i.eao
  br i1 %.not.i695, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.eaq = zext i1 %i.eao to i64
  %i.ear = add nuw nsw i64 %i.eal, %i.eaq
  %i.eas = add nsw i32 %i.dye, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit696

bb.oq:                                            ; preds = %bb.oo, %bb.on
  %i.eat = and i64 %i.dzp, -4                     ; 3 uses
  %i.eau = add i64 %i.eat, 4
  %i.eav = icmp uge i64 %i.eai, %i.eau            ; 2 uses
  %i.eaw = or disjoint i64 %i.eat, 2              ; 2 uses
  %i.eax = icmp ugt i64 %i.dzt, %i.eaw
  br i1 %i.eax, label %bb.os, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.eay = icmp eq i64 %i.dzt, %i.eaw
  %i.eaz = trunc i64 %i.eaj to i1
  %i.eba = and i1 %i.eay, %i.eaz
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.oq
  %i.ebb = phi i1 [ true, %bb.oq ], [ %i.eba, %bb.or ]
  %i.ebc = icmp ugt i64 %i.eah, %i.eat
  %.not58.i693 = xor i1 %i.ebc, %i.eav
  %i.ebd = select i1 %.not58.i693, i1 %i.ebb, i1 %i.eav
  %i.ebe = zext i1 %i.ebd to i64
  %i.ebf = add nuw nsw i64 %i.eaj, %i.ebe
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit696

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit696: ; preds = %bb.op, %bb.os
  %.11606 = phi i64 [ %i.ebf, %bb.os ], [ %i.ear, %bb.op ] ; 8 uses
  %storemerge.i694 = phi i32 [ %i.dye, %bb.os ], [ %i.eas, %bb.op ]
  %i.ebg = icmp samesign ult i64 %.11606, 10000000000000000
  %i.ebh = select i1 %i.ebg, i32 16, i32 17
  %i.ebi = icmp samesign ult i64 %.11606, 1000000000000000
  %.neg129.i634 = sext i1 %i.ebi to i32
  %i.ebj = add nsw i32 %i.ebh, %.neg129.i634
  %i.ebk = add nsw i32 %i.ebj, %storemerge.i694   ; 8 uses
  %i.ebl = add nsw i32 %i.ebk, 5
  %or.cond3.i635 = icmp ult i32 %i.ebl, 27
  br i1 %or.cond3.i635, label %bb.ot, label %bb.pi

bb.ot:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit696
  %i.ebm = icmp slt i32 %i.ebk, 1
  br i1 %i.ebm, label %bb.ou, label %bb.pb

bb.ou:                                            ; preds = %bb.ot
  %i.ebn = sub nsw i32 2, %i.ebk
  %i.ebo = zext nneg i32 %i.ebn to i64
  %i.ebp = getelementptr inbounds nuw i8, ptr %i.dpf, i64 %i.ebo ; 2 uses
  %i.ebq = udiv i64 %.11606, 100000000            ; 2 uses
  %i.ebr = trunc i64 %i.ebq to i32                ; 2 uses
  %.neg.i761 = mul i64 %i.ebq, 4194967296
  %i.ebs = add i64 %.neg.i761, %.11606            ; 2 uses
  %i.ebt = trunc i64 %i.ebs to i32                ; 2 uses
  %i.ebu = udiv i32 %i.ebr, 10000                 ; 3 uses
  %.neg95.i762 = mul i32 %i.ebu, -10000
  %i.ebv = add i32 %.neg95.i762, %i.ebr           ; 5 uses
  %i.ebw = zext nneg i32 %i.ebu to i64
  %i.ebx = mul nuw nsw i64 %i.ebw, 167773
  %i.eby = lshr i64 %i.ebx, 24
  %i.ebz = trunc nuw nsw i64 %i.eby to i32        ; 3 uses
  %i.eca = mul nuw nsw i32 %i.ebz, 41
  %i.ecb = lshr i32 %i.eca, 12                    ; 4 uses
  %.neg96.i763 = mul nsw i32 %i.ecb, -100
  %i.ecc = add nsw i32 %.neg96.i763, %i.ebz       ; 3 uses
  %.neg97.i764 = mul nsw i32 %i.ebz, -100
  %i.ecd = add nsw i32 %.neg97.i764, %i.ebu       ; 3 uses
  %i.ece = trunc nuw nsw i32 %i.ecb to i8
  %i.ecf = add nuw nsw i8 %i.ece, 48
  store i8 %i.ecf, ptr %i.ebp, align 1, !tbaa !81
  %i.ecg = icmp ne i32 %i.ecb, 0
  %i.ech = zext i1 %i.ecg to i64
  %i.eci = getelementptr inbounds nuw i8, ptr %i.ebp, i64 %i.ech ; 2 uses
  %i.ecj = icmp ult i32 %i.ecc, 10
  %i.eck = icmp eq i32 %i.ecb, 0
  %i.ecl = and i1 %i.eck, %i.ecj                  ; 2 uses
  %i.ecm = shl nsw i32 %i.ecc, 1
  %i.ecn = zext i32 %i.ecm to i64
  %i.eco = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ecn
  %.neg98.i765 = sext i1 %i.ecl to i64
  %i.ecp = zext i1 %i.ecl to i64
  %i.ecq = getelementptr inbounds nuw i8, ptr %i.eco, i64 %i.ecp
  %i.ecr = load i16, ptr %i.ecq, align 1
  store i16 %i.ecr, ptr %i.eci, align 1
  %i.ecs = getelementptr inbounds i8, ptr %i.eci, i64 %.neg98.i765 ; 10 uses
  %i.ect = getelementptr inbounds nuw i8, ptr %i.ecs, i64 2
  %i.ecu = shl nsw i32 %i.ecd, 1
  %i.ecv = zext i32 %i.ecu to i64
  %i.ecw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ecv
  %i.ecx = load i16, ptr %i.ecw, align 2
  store i16 %i.ecx, ptr %i.ect, align 1
  %.not.i766 = icmp eq i32 %i.ebt, 0
  br i1 %.not.i766, label %bb.oy, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.ecy = mul i32 %i.ebv, 5243
  %i.ecz = lshr i32 %i.ecy, 19                    ; 2 uses
  %.neg103.i767 = mul i32 %i.ecz, 2147483548
  %i.eda = add i32 %.neg103.i767, %i.ebv
  %i.edb = and i64 %i.ebs, 4294967295
  %i.edc = mul nuw nsw i64 %i.edb, 109951163
  %i.edd = lshr i64 %i.edc, 40
  %i.ede = trunc nuw nsw i64 %i.edd to i32        ; 3 uses
  %.neg104.i768 = mul i32 %i.ede, -10000
  %i.edf = add i32 %.neg104.i768, %i.ebt          ; 3 uses
  %i.edg = mul nuw i32 %i.ede, 5243
  %i.edh = lshr i32 %i.edg, 19                    ; 3 uses
  %.neg105.i769 = mul nsw i32 %i.edh, -100
  %i.edi = add nsw i32 %.neg105.i769, %i.ede      ; 2 uses
  %i.edj = getelementptr inbounds nuw i8, ptr %i.ecs, i64 4
  %i.edk = shl nuw nsw i32 %i.ecz, 1
  %i.edl = zext nneg i32 %i.edk to i64
  %i.edm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edl
  %i.edn = load i16, ptr %i.edm, align 2
  store i16 %i.edn, ptr %i.edj, align 1
  %i.edo = getelementptr inbounds nuw i8, ptr %i.ecs, i64 6
  %i.edp = shl i32 %i.eda, 1
  %i.edq = zext i32 %i.edp to i64
  %i.edr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edq
  %i.eds = load i16, ptr %i.edr, align 2
  store i16 %i.eds, ptr %i.edo, align 1
  %i.edt = getelementptr inbounds nuw i8, ptr %i.ecs, i64 8
  %i.edu = shl nuw nsw i32 %i.edh, 1
  %i.edv = zext nneg i32 %i.edu to i64
  %i.edw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edv
  %i.edx = load i16, ptr %i.edw, align 2
  store i16 %i.edx, ptr %i.edt, align 1
  %i.edy = getelementptr inbounds nuw i8, ptr %i.ecs, i64 10
  %i.edz = shl nsw i32 %i.edi, 1
  %i.eea = zext i32 %i.edz to i64
  %i.eeb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eea
  %i.eec = load i16, ptr %i.eeb, align 2
  store i16 %i.eec, ptr %i.edy, align 1
  %.not106.i770 = icmp eq i32 %i.edf, 0
  br i1 %.not106.i770, label %bb.ox, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.eed = mul i32 %i.edf, 5243
  %i.eee = lshr i32 %i.eed, 19                    ; 3 uses
  %.neg108.i771 = mul nsw i32 %i.eee, -100
  %i.eef = add i32 %.neg108.i771, %i.edf          ; 2 uses
  %i.eeg = getelementptr inbounds nuw i8, ptr %i.ecs, i64 12
  %i.eeh = shl nuw nsw i32 %i.eee, 1
  %i.eei = zext nneg i32 %i.eeh to i64
  %i.eej = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eei
  %i.eek = load i16, ptr %i.eej, align 2
  store i16 %i.eek, ptr %i.eeg, align 1
  %i.eel = getelementptr inbounds nuw i8, ptr %i.ecs, i64 14
  %i.eem = shl i32 %i.eef, 1
  %i.een = zext i32 %i.eem to i64
  %i.eeo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.een
  %i.eep = load i16, ptr %i.eeo, align 2
  store i16 %i.eep, ptr %i.eel, align 1
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ov, %bb.ow
  %.sink5242 = phi i32 [ %i.eee, %bb.ow ], [ %i.edh, %bb.ov ]
  %.sink5238 = phi i32 [ %i.eef, %bb.ow ], [ %i.edi, %bb.ov ] ; 2 uses
  %.sink5229 = phi i64 [ 16, %bb.ow ], [ 12, %bb.ov ]
  %i.eeq = zext nneg i32 %.sink5242 to i64
  %i.eer = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eeq
  %i.ees = load i8, ptr %i.eer, align 1, !tbaa !81
  %i.eet = zext i8 %i.ees to i64
  %i.eeu = zext i32 %.sink5238 to i64
  %i.eev = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eeu
  %i.eew = load i8, ptr %i.eev, align 1, !tbaa !81
  %i.eex = zext i8 %i.eew to i64
  %.not107.i777 = icmp eq i32 %.sink5238, 0
  %i.eey = add nuw nsw i64 %i.eet, 2
  %i.eez = select i1 %.not107.i777, i64 %i.eey, i64 %i.eex
  %i.efa = sub nsw i64 %.sink5229, %i.eez
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit782

bb.oy:                                            ; preds = %bb.ou
  %.not99.i778 = icmp eq i32 %i.ebv, 0
  br i1 %.not99.i778, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.efb = mul i32 %i.ebv, 5243
  %i.efc = lshr i32 %i.efb, 19                    ; 3 uses
  %.neg101.i779 = mul nsw i32 %i.efc, -100
  %i.efd = add i32 %.neg101.i779, %i.ebv          ; 3 uses
  %i.efe = getelementptr inbounds nuw i8, ptr %i.ecs, i64 4
  %i.eff = shl nuw nsw i32 %i.efc, 1
  %i.efg = zext nneg i32 %i.eff to i64
  %i.efh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efg
  %i.efi = load i16, ptr %i.efh, align 2
  store i16 %i.efi, ptr %i.efe, align 1
  %i.efj = getelementptr inbounds nuw i8, ptr %i.ecs, i64 6
  %i.efk = shl i32 %i.efd, 1
  %i.efl = zext i32 %i.efk to i64
  %i.efm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efl
  %i.efn = load i16, ptr %i.efm, align 2
  store i16 %i.efn, ptr %i.efj, align 1
  %i.efo = zext nneg i32 %i.efc to i64
  %i.efp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efo
  %i.efq = load i8, ptr %i.efp, align 1, !tbaa !81
  %i.efr = zext i8 %i.efq to i64
  %i.efs = zext i32 %i.efd to i64
  %i.eft = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efs
  %i.efu = load i8, ptr %i.eft, align 1, !tbaa !81
  %i.efv = zext i8 %i.efu to i64
  %.not102.i780 = icmp eq i32 %i.efd, 0
  %i.efw = add nuw nsw i64 %i.efr, 2
  %i.efx = select i1 %.not102.i780, i64 %i.efw, i64 %i.efv
  %i.efy = sub nsw i64 8, %i.efx
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit782

bb.pa:                                            ; preds = %bb.oy
  %i.efz = zext i32 %i.ecc to i64
  %i.ega = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efz
  %i.egb = load i8, ptr %i.ega, align 1, !tbaa !81
  %i.egc = zext i8 %i.egb to i64
  %i.egd = zext i32 %i.ecd to i64
  %i.ege = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.egd
  %i.egf = load i8, ptr %i.ege, align 1, !tbaa !81
  %i.egg = zext i8 %i.egf to i64
  %.not100.i781 = icmp eq i32 %i.ecd, 0
  %i.egh = select i1 %.not100.i781, i64 %i.egc, i64 0
  %i.egi = add nuw nsw i64 %i.egh, %i.egg
  %i.egj = sub nsw i64 4, %i.egi
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit782

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit782: ; preds = %bb.ox, %bb.oz, %bb.pa
  %.sink5243 = phi i64 [ %i.efa, %bb.ox ], [ %i.efy, %bb.oz ], [ %i.egj, %bb.pa ]
  %.pn.i774 = and i64 %.sink5243, 4294967295
  %.0.i775 = getelementptr inbounds nuw i8, ptr %i.ecs, i64 %.pn.i774 ; 2 uses
  store i8 48, ptr %i.dpf, align 1, !tbaa !81
  %i.egk = getelementptr inbounds nuw i8, ptr %i.dpf, i64 1
  store i8 46, ptr %i.egk, align 1, !tbaa !81
  %i.egl = icmp slt i32 %i.ebk, 0
  br i1 %i.egl, label %.lr.ph2919.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

.lr.ph2919.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit782
  %i.egm = getelementptr i8, ptr %i.dpf, i64 2
  %narrow = sub nsw i32 0, %i.ebk
  %i.egn = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.egm, i8 48, i64 %i.egn, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

bb.pb:                                            ; preds = %bb.ot
  %i.ego = getelementptr inbounds nuw i8, ptr %i.dpf, i64 1 ; 2 uses
  %i.egp = udiv i64 %.11606, 100000000            ; 2 uses
  %i.egq = trunc i64 %i.egp to i32                ; 2 uses
  %.neg.i783 = mul i64 %i.egp, 4194967296
  %i.egr = add i64 %.neg.i783, %.11606            ; 2 uses
  %i.egs = trunc i64 %i.egr to i32                ; 2 uses
  %i.egt = udiv i32 %i.egq, 10000                 ; 3 uses
  %.neg95.i784 = mul i32 %i.egt, -10000
  %i.egu = add i32 %.neg95.i784, %i.egq           ; 5 uses
  %i.egv = zext nneg i32 %i.egt to i64
  %i.egw = mul nuw nsw i64 %i.egv, 167773
  %i.egx = lshr i64 %i.egw, 24
  %i.egy = trunc nuw nsw i64 %i.egx to i32        ; 3 uses
  %i.egz = mul nuw nsw i32 %i.egy, 41
  %i.eha = lshr i32 %i.egz, 12                    ; 4 uses
  %.neg96.i785 = mul nsw i32 %i.eha, -100
  %i.ehb = add nsw i32 %.neg96.i785, %i.egy       ; 3 uses
  %.neg97.i786 = mul nsw i32 %i.egy, -100
  %i.ehc = add nsw i32 %.neg97.i786, %i.egt       ; 3 uses
  %i.ehd = trunc nuw nsw i32 %i.eha to i8
  %i.ehe = add nuw nsw i8 %i.ehd, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dpf, i8 48, i64 24, i1 false)
  store i8 %i.ehe, ptr %i.ego, align 1, !tbaa !81
  %i.ehf = icmp ne i32 %i.eha, 0
  %i.ehg = zext i1 %i.ehf to i64
  %i.ehh = getelementptr inbounds nuw i8, ptr %i.ego, i64 %i.ehg ; 2 uses
  %i.ehi = icmp ult i32 %i.ehb, 10
  %i.ehj = icmp eq i32 %i.eha, 0
  %i.ehk = and i1 %i.ehj, %i.ehi                  ; 2 uses
  %i.ehl = shl nsw i32 %i.ehb, 1
  %i.ehm = zext i32 %i.ehl to i64
  %i.ehn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ehm
  %.neg98.i787 = sext i1 %i.ehk to i64
  %i.eho = zext i1 %i.ehk to i64
  %i.ehp = getelementptr inbounds nuw i8, ptr %i.ehn, i64 %i.eho
  %i.ehq = load i16, ptr %i.ehp, align 1
  store i16 %i.ehq, ptr %i.ehh, align 1
  %i.ehr = getelementptr inbounds i8, ptr %i.ehh, i64 %.neg98.i787 ; 10 uses
  %i.ehs = getelementptr inbounds nuw i8, ptr %i.ehr, i64 2
  %i.eht = shl nsw i32 %i.ehc, 1
  %i.ehu = zext i32 %i.eht to i64
  %i.ehv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ehu
  %i.ehw = load i16, ptr %i.ehv, align 2
  store i16 %i.ehw, ptr %i.ehs, align 1
  %.not.i788 = icmp eq i32 %i.egs, 0
  br i1 %.not.i788, label %bb.pf, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.ehx = mul i32 %i.egu, 5243
  %i.ehy = lshr i32 %i.ehx, 19                    ; 2 uses
  %.neg103.i789 = mul i32 %i.ehy, 2147483548
  %i.ehz = add i32 %.neg103.i789, %i.egu
  %i.eia = and i64 %i.egr, 4294967295
  %i.eib = mul nuw nsw i64 %i.eia, 109951163
  %i.eic = lshr i64 %i.eib, 40
  %i.eid = trunc nuw nsw i64 %i.eic to i32        ; 3 uses
  %.neg104.i790 = mul i32 %i.eid, -10000
  %i.eie = add i32 %.neg104.i790, %i.egs          ; 3 uses
  %i.eif = mul nuw i32 %i.eid, 5243
  %i.eig = lshr i32 %i.eif, 19                    ; 3 uses
  %.neg105.i791 = mul nsw i32 %i.eig, -100
  %i.eih = add nsw i32 %.neg105.i791, %i.eid      ; 2 uses
  %i.eii = getelementptr inbounds nuw i8, ptr %i.ehr, i64 4
  %i.eij = shl nuw nsw i32 %i.ehy, 1
  %i.eik = zext nneg i32 %i.eij to i64
  %i.eil = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eik
  %i.eim = load i16, ptr %i.eil, align 2
  store i16 %i.eim, ptr %i.eii, align 1
  %i.ein = getelementptr inbounds nuw i8, ptr %i.ehr, i64 6
  %i.eio = shl i32 %i.ehz, 1
  %i.eip = zext i32 %i.eio to i64
  %i.eiq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eip
  %i.eir = load i16, ptr %i.eiq, align 2
  store i16 %i.eir, ptr %i.ein, align 1
  %i.eis = getelementptr inbounds nuw i8, ptr %i.ehr, i64 8
  %i.eit = shl nuw nsw i32 %i.eig, 1
  %i.eiu = zext nneg i32 %i.eit to i64
  %i.eiv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eiu
  %i.eiw = load i16, ptr %i.eiv, align 2
  store i16 %i.eiw, ptr %i.eis, align 1
  %i.eix = getelementptr inbounds nuw i8, ptr %i.ehr, i64 10
  %i.eiy = shl nsw i32 %i.eih, 1
  %i.eiz = zext i32 %i.eiy to i64
  %i.eja = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eiz
  %i.ejb = load i16, ptr %i.eja, align 2
  store i16 %i.ejb, ptr %i.eix, align 1
  %.not106.i792 = icmp eq i32 %i.eie, 0
  br i1 %.not106.i792, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.ejc = mul i32 %i.eie, 5243
  %i.ejd = lshr i32 %i.ejc, 19                    ; 3 uses
  %.neg108.i793 = mul nsw i32 %i.ejd, -100
  %i.eje = add i32 %.neg108.i793, %i.eie          ; 2 uses
  %i.ejf = getelementptr inbounds nuw i8, ptr %i.ehr, i64 12
  %i.ejg = shl nuw nsw i32 %i.ejd, 1
  %i.ejh = zext nneg i32 %i.ejg to i64
  %i.eji = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejh
  %i.ejj = load i16, ptr %i.eji, align 2
  store i16 %i.ejj, ptr %i.ejf, align 1
  %i.ejk = getelementptr inbounds nuw i8, ptr %i.ehr, i64 14
  %i.ejl = shl i32 %i.eje, 1
  %i.ejm = zext i32 %i.ejl to i64
  %i.ejn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejm
  %i.ejo = load i16, ptr %i.ejn, align 2
  store i16 %i.ejo, ptr %i.ejk, align 1
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pc, %bb.pd
  %.sink5257 = phi i32 [ %i.ejd, %bb.pd ], [ %i.eig, %bb.pc ]
  %.sink5253 = phi i32 [ %i.eje, %bb.pd ], [ %i.eih, %bb.pc ] ; 2 uses
  %.sink5244 = phi i64 [ 16, %bb.pd ], [ 12, %bb.pc ]
  %i.ejp = zext nneg i32 %.sink5257 to i64
  %i.ejq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ejp
  %i.ejr = load i8, ptr %i.ejq, align 1, !tbaa !81
  %i.ejs = zext i8 %i.ejr to i64
  %i.ejt = zext i32 %.sink5253 to i64
  %i.eju = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ejt
  %i.ejv = load i8, ptr %i.eju, align 1, !tbaa !81
  %i.ejw = zext i8 %i.ejv to i64
  %.not107.i799 = icmp eq i32 %.sink5253, 0
  %i.ejx = add nuw nsw i64 %i.ejs, 2
  %i.ejy = select i1 %.not107.i799, i64 %i.ejx, i64 %i.ejw
  %i.ejz = sub nsw i64 %.sink5244, %i.ejy
  br label %._crit_edge

bb.pf:                                            ; preds = %bb.pb
  %.not99.i800 = icmp eq i32 %i.egu, 0
  br i1 %.not99.i800, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.eka = mul i32 %i.egu, 5243
  %i.ekb = lshr i32 %i.eka, 19                    ; 3 uses
  %.neg101.i801 = mul nsw i32 %i.ekb, -100
  %i.ekc = add i32 %.neg101.i801, %i.egu          ; 3 uses
  %i.ekd = getelementptr inbounds nuw i8, ptr %i.ehr, i64 4
  %i.eke = shl nuw nsw i32 %i.ekb, 1
  %i.ekf = zext nneg i32 %i.eke to i64
  %i.ekg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ekf
  %i.ekh = load i16, ptr %i.ekg, align 2
  store i16 %i.ekh, ptr %i.ekd, align 1
  %i.eki = getelementptr inbounds nuw i8, ptr %i.ehr, i64 6
  %i.ekj = shl i32 %i.ekc, 1
  %i.ekk = zext i32 %i.ekj to i64
  %i.ekl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ekk
  %i.ekm = load i16, ptr %i.ekl, align 2
  store i16 %i.ekm, ptr %i.eki, align 1
  %i.ekn = zext nneg i32 %i.ekb to i64
  %i.eko = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ekn
  %i.ekp = load i8, ptr %i.eko, align 1, !tbaa !81
  %i.ekq = zext i8 %i.ekp to i64
  %i.ekr = zext i32 %i.ekc to i64
  %i.eks = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ekr
  %i.ekt = load i8, ptr %i.eks, align 1, !tbaa !81
  %i.eku = zext i8 %i.ekt to i64
  %.not102.i802 = icmp eq i32 %i.ekc, 0
  %i.ekv = add nuw nsw i64 %i.ekq, 2
  %i.ekw = select i1 %.not102.i802, i64 %i.ekv, i64 %i.eku
  %i.ekx = sub nsw i64 8, %i.ekw
  br label %._crit_edge

bb.ph:                                            ; preds = %bb.pf
  %i.eky = zext i32 %i.ehb to i64
  %i.ekz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eky
  %i.ela = load i8, ptr %i.ekz, align 1, !tbaa !81
  %i.elb = zext i8 %i.ela to i64
  %i.elc = zext i32 %i.ehc to i64
  %i.eld = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.elc
  %i.ele = load i8, ptr %i.eld, align 1, !tbaa !81
  %i.elf = zext i8 %i.ele to i64
  %.not100.i803 = icmp eq i32 %i.ehc, 0
  %i.elg = select i1 %.not100.i803, i64 %i.elb, i64 0
  %i.elh = add nuw nsw i64 %i.elg, %i.elf
  %i.eli = sub nsw i64 4, %i.elh
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.pe, %bb.pg, %bb.ph
  %.sink5258 = phi i64 [ %i.ejz, %bb.pe ], [ %i.ekx, %bb.pg ], [ %i.eli, %bb.ph ]
  %.pn.i796 = and i64 %.sink5258, 4294967295
  %.0.i797 = getelementptr inbounds nuw i8, ptr %i.ehr, i64 %.pn.i796 ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.i1222.lcssa, i64 1
  %scevgep3695 = getelementptr i8, ptr %scevgep, i64 %.lobit.i630
  %i.elj = zext nneg i32 %i.ebk to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dpf, ptr align 1 %scevgep3695, i64 %i.elj, i1 false), !tbaa !81
  %i.elk = zext nneg i32 %i.ebk to i64
  %i.ell = getelementptr inbounds nuw i8, ptr %i.dpf, i64 %i.elk ; 2 uses
  store i8 46, ptr %i.ell, align 1, !tbaa !81
  %i.elm = getelementptr inbounds nuw i8, ptr %i.ell, i64 2 ; 2 uses
  %i.eln = icmp ult ptr %i.elm, %.0.i797
  %spec.select1764 = select i1 %i.eln, ptr %.0.i797, ptr %i.elm
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

bb.pi:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit696
  %.ptr = getelementptr inbounds nuw i8, ptr %i.dpf, i64 1 ; 3 uses
  %i.elo = udiv i64 %.11606, 100000000            ; 2 uses
  %i.elp = trunc i64 %i.elo to i32                ; 2 uses
  %.neg.i805 = mul i64 %i.elo, 4194967296
  %i.elq = add i64 %.neg.i805, %.11606            ; 2 uses
  %i.elr = trunc i64 %i.elq to i32                ; 2 uses
  %i.els = udiv i32 %i.elp, 10000                 ; 3 uses
  %.neg95.i806 = mul i32 %i.els, -10000
  %i.elt = add i32 %.neg95.i806, %i.elp           ; 5 uses
  %i.elu = zext nneg i32 %i.els to i64
  %i.elv = mul nuw nsw i64 %i.elu, 167773
  %i.elw = lshr i64 %i.elv, 24
  %i.elx = trunc nuw nsw i64 %i.elw to i32        ; 3 uses
  %i.ely = mul nuw nsw i32 %i.elx, 41
  %i.elz = lshr i32 %i.ely, 12                    ; 3 uses
  %.neg96.i807 = mul nsw i32 %i.elz, -100
  %i.ema = add nsw i32 %.neg96.i807, %i.elx       ; 3 uses
  %.neg97.i808 = mul nsw i32 %i.elx, -100
  %i.emb = add nsw i32 %.neg97.i808, %i.els       ; 3 uses
  %i.emc = trunc nuw nsw i32 %i.elz to i8
  %i.emd = add nuw nsw i8 %i.emc, 48
  store i8 %i.emd, ptr %.ptr, align 1, !tbaa !81
  %.not1784 = icmp eq i32 %i.elz, 0               ; 2 uses
  %.add = select i1 %.not1784, i64 1, i64 2       ; 2 uses
  %.ptr1780 = getelementptr inbounds nuw i8, ptr %i.dpf, i64 %.add
  %i.eme = icmp ult i32 %i.ema, 10
  %i.emf = and i1 %.not1784, %i.eme               ; 2 uses
  %i.emg = shl nsw i32 %i.ema, 1
  %i.emh = zext i32 %i.emg to i64
  %i.emi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.emh
  %.neg98.i809 = sext i1 %i.emf to i64
  %i.emj = zext i1 %i.emf to i64
  %i.emk = getelementptr inbounds nuw i8, ptr %i.emi, i64 %i.emj
  %i.eml = load i16, ptr %i.emk, align 1
  store i16 %i.eml, ptr %.ptr1780, align 1
  %.add1776 = add nsw i64 %.add, %.neg98.i809     ; 2 uses
  %.ptr1781 = getelementptr inbounds nuw i8, ptr %i.dpf, i64 %.add1776 ; 9 uses
  %i.emm = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 2
  %i.emn = shl nsw i32 %i.emb, 1
  %i.emo = zext i32 %i.emn to i64
  %i.emp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.emo
  %i.emq = load i16, ptr %i.emp, align 2
  store i16 %i.emq, ptr %i.emm, align 1
  %.not.i810 = icmp eq i32 %i.elr, 0
  br i1 %.not.i810, label %bb.pm, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.emr = mul i32 %i.elt, 5243
  %i.ems = lshr i32 %i.emr, 19                    ; 2 uses
  %.neg103.i811 = mul i32 %i.ems, 2147483548
  %i.emt = add i32 %.neg103.i811, %i.elt
  %i.emu = and i64 %i.elq, 4294967295
  %i.emv = mul nuw nsw i64 %i.emu, 109951163
  %i.emw = lshr i64 %i.emv, 40
  %i.emx = trunc nuw nsw i64 %i.emw to i32        ; 3 uses
  %.neg104.i812 = mul i32 %i.emx, -10000
  %i.emy = add i32 %.neg104.i812, %i.elr          ; 3 uses
  %i.emz = mul nuw i32 %i.emx, 5243
  %i.ena = lshr i32 %i.emz, 19                    ; 3 uses
  %.neg105.i813 = mul nsw i32 %i.ena, -100
  %i.enb = add nsw i32 %.neg105.i813, %i.emx      ; 3 uses
  %i.enc = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 4
  %i.end = shl nuw nsw i32 %i.ems, 1
  %i.ene = zext nneg i32 %i.end to i64
  %i.enf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ene
  %i.eng = load i16, ptr %i.enf, align 2
  store i16 %i.eng, ptr %i.enc, align 1
  %i.enh = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 6
  %i.eni = shl i32 %i.emt, 1
  %i.enj = zext i32 %i.eni to i64
  %i.enk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.enj
  %i.enl = load i16, ptr %i.enk, align 2
  store i16 %i.enl, ptr %i.enh, align 1
  %i.enm = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 8
  %i.enn = shl nuw nsw i32 %i.ena, 1
  %i.eno = zext nneg i32 %i.enn to i64
  %i.enp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eno
  %i.enq = load i16, ptr %i.enp, align 2
  store i16 %i.enq, ptr %i.enm, align 1
  %i.enr = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 10
  %i.ens = shl nsw i32 %i.enb, 1
  %i.ent = zext i32 %i.ens to i64
  %i.enu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ent
  %i.env = load i16, ptr %i.enu, align 2
  store i16 %i.env, ptr %i.enr, align 1
  %.not106.i814 = icmp eq i32 %i.emy, 0
  br i1 %.not106.i814, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.enw = mul i32 %i.emy, 5243
  %i.enx = lshr i32 %i.enw, 19                    ; 3 uses
  %.neg108.i815 = mul nsw i32 %i.enx, -100
  %i.eny = add i32 %.neg108.i815, %i.emy          ; 3 uses
  %i.enz = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 12
  %i.eoa = shl nuw nsw i32 %i.enx, 1
  %i.eob = zext nneg i32 %i.eoa to i64
  %i.eoc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eob
  %i.eod = load i16, ptr %i.eoc, align 2
  store i16 %i.eod, ptr %i.enz, align 1
  %i.eoe = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 14
  %i.eof = shl i32 %i.eny, 1
  %i.eog = zext i32 %i.eof to i64
  %i.eoh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eog
  %i.eoi = load i16, ptr %i.eoh, align 2
  store i16 %i.eoi, ptr %i.eoe, align 1
  %i.eoj = zext nneg i32 %i.enx to i64
  %i.eok = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eoj
  %i.eol = load i8, ptr %i.eok, align 1, !tbaa !81
  %i.eom = zext i8 %i.eol to i64
  %i.eon = zext i32 %i.eny to i64
  %i.eoo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eon
  %i.eop = load i8, ptr %i.eoo, align 1, !tbaa !81
  %i.eoq = zext i8 %i.eop to i64
  %.not109.i816 = icmp eq i32 %i.eny, 0
  %i.eor = add nuw nsw i64 %i.eom, 2
  %i.eos = select i1 %.not109.i816, i64 %i.eor, i64 %i.eoq
  %i.eot = sub nsw i64 16, %i.eos
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826

bb.pl:                                            ; preds = %bb.pj
  %i.eou = zext nneg i32 %i.ena to i64
  %i.eov = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eou
  %i.eow = load i8, ptr %i.eov, align 1, !tbaa !81
  %i.eox = zext i8 %i.eow to i64
  %i.eoy = zext i32 %i.enb to i64
  %i.eoz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eoy
  %i.epa = load i8, ptr %i.eoz, align 1, !tbaa !81
  %i.epb = zext i8 %i.epa to i64
  %.not107.i821 = icmp eq i32 %i.enb, 0
  %i.epc = add nuw nsw i64 %i.eox, 2
  %i.epd = select i1 %.not107.i821, i64 %i.epc, i64 %i.epb
  %i.epe = sub nsw i64 12, %i.epd
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826

bb.pm:                                            ; preds = %bb.pi
  %.not99.i822 = icmp eq i32 %i.elt, 0
  br i1 %.not99.i822, label %bb.po, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.epf = mul i32 %i.elt, 5243
  %i.epg = lshr i32 %i.epf, 19                    ; 3 uses
  %.neg101.i823 = mul nsw i32 %i.epg, -100
  %i.eph = add i32 %.neg101.i823, %i.elt          ; 3 uses
  %i.epi = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 4
  %i.epj = shl nuw nsw i32 %i.epg, 1
  %i.epk = zext nneg i32 %i.epj to i64
  %i.epl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.epk
  %i.epm = load i16, ptr %i.epl, align 2
  store i16 %i.epm, ptr %i.epi, align 1
  %i.epn = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 6
  %i.epo = shl i32 %i.eph, 1
  %i.epp = zext i32 %i.epo to i64
  %i.epq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.epp
  %i.epr = load i16, ptr %i.epq, align 2
  store i16 %i.epr, ptr %i.epn, align 1
  %i.eps = zext nneg i32 %i.epg to i64
  %i.ept = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eps
  %i.epu = load i8, ptr %i.ept, align 1, !tbaa !81
  %i.epv = zext i8 %i.epu to i64
  %i.epw = zext i32 %i.eph to i64
  %i.epx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.epw
  %i.epy = load i8, ptr %i.epx, align 1, !tbaa !81
  %i.epz = zext i8 %i.epy to i64
  %.not102.i824 = icmp eq i32 %i.eph, 0
  %i.eqa = add nuw nsw i64 %i.epv, 2
  %i.eqb = select i1 %.not102.i824, i64 %i.eqa, i64 %i.epz
  %i.eqc = sub nsw i64 8, %i.eqb
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826

bb.po:                                            ; preds = %bb.pm
  %i.eqd = zext i32 %i.ema to i64
  %i.eqe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eqd
  %i.eqf = load i8, ptr %i.eqe, align 1, !tbaa !81
  %i.eqg = zext i8 %i.eqf to i64
  %i.eqh = zext i32 %i.emb to i64
  %i.eqi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eqh
  %i.eqj = load i8, ptr %i.eqi, align 1, !tbaa !81
  %i.eqk = zext i8 %i.eqj to i64
  %.not100.i825 = icmp eq i32 %i.emb, 0
  %i.eql = select i1 %.not100.i825, i64 %i.eqg, i64 0
  %i.eqm = add nuw nsw i64 %i.eql, %i.eqk
  %i.eqn = sub nsw i64 4, %i.eqm
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826: ; preds = %bb.pk, %bb.pl, %bb.pn, %bb.po
  %.pn.i818.pn.in = phi i64 [ %i.eqn, %bb.po ], [ %i.eqc, %bb.pn ], [ %i.eot, %bb.pk ], [ %i.epe, %bb.pl ]
  %.pn.i818.pn = and i64 %.pn.i818.pn.in, 4294967295
  %.1.i820.idx = add nuw nsw i64 %.pn.i818.pn, %.add1776 ; 2 uses
  %.1.i820.ptr = getelementptr inbounds nuw i8, ptr %i.dpf, i64 %.1.i820.idx
  %i.eqo = icmp eq i64 %.1.i820.idx, 2
  %.neg130.i636 = sext i1 %i.eqo to i64
  %i.eqp = getelementptr inbounds i8, ptr %.1.i820.ptr, i64 %.neg130.i636 ; 2 uses
  %i.eqq = add nsw i32 %i.ebk, -1                 ; 2 uses
  %i.eqr = load i8, ptr %.ptr, align 1, !tbaa !81
  store i8 %i.eqr, ptr %i.dpf, align 1, !tbaa !81
  store i8 46, ptr %.ptr, align 1, !tbaa !81
  store i8 101, ptr %i.eqp, align 1, !tbaa !81
  %i.eqs = getelementptr inbounds nuw i8, ptr %i.eqp, i64 1 ; 2 uses
  store i8 45, ptr %i.eqs, align 1, !tbaa !81
  %.lobit.i896 = lshr i32 %i.eqq, 31
  %i.eqt = zext nneg i32 %.lobit.i896 to i64
  %i.equ = getelementptr inbounds nuw i8, ptr %i.eqs, i64 %i.eqt ; 5 uses
  %i.eqv = tail call i32 @llvm.abs.i32(i32 %i.eqq, i1 true) ; 5 uses
  %i.eqw = icmp samesign ult i32 %i.eqv, 100
  br i1 %i.eqw, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826
  %i.eqx = icmp samesign ult i32 %i.eqv, 10       ; 2 uses
  %i.eqy = shl nuw nsw i32 %i.eqv, 1
  %i.eqz = zext nneg i32 %i.eqy to i64
  %i.era = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eqz
  %.neg22.i899 = sext i1 %i.eqx to i64
  %i.erb = zext i1 %i.eqx to i64
  %i.erc = getelementptr inbounds nuw i8, ptr %i.era, i64 %i.erb
  %i.erd = load i16, ptr %i.erc, align 1
  store i16 %i.erd, ptr %i.equ, align 1
  %i.ere = getelementptr inbounds nuw i8, ptr %i.equ, i64 2
  %i.erf = getelementptr inbounds i8, ptr %i.ere, i64 %.neg22.i899
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

bb.pq:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826
  %i.erg = mul nuw nsw i32 %i.eqv, 656
  %i.erh = lshr i32 %i.erg, 16                    ; 2 uses
  %.neg.i897 = mul i32 %i.erh, 2147483548
  %i.eri = add i32 %.neg.i897, %i.eqv
  %i.erj = trunc nuw nsw i32 %i.erh to i8
  %i.erk = add nuw nsw i8 %i.erj, 48
  store i8 %i.erk, ptr %i.equ, align 1, !tbaa !81
  %i.erl = getelementptr inbounds nuw i8, ptr %i.equ, i64 1
  %i.erm = shl i32 %i.eri, 1
  %i.ern = zext i32 %i.erm to i64
  %i.ero = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ern
  %i.erp = load i16, ptr %i.ero, align 2
  store i16 %i.erp, ptr %i.erl, align 1
  %i.erq = getelementptr inbounds nuw i8, ptr %i.equ, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

bb.pr:                                            ; preds = %bb.nv
  %i.err = shl nuw nsw i64 %i.dov, 5              ; 3 uses
  %i.ers = or disjoint i64 %i.err, 16
  %i.ert = add nsw i64 %i.err, -16
  %i.eru = zext i64 %i.ert to i128                ; 2 uses
  %i.erv = mul nuw nsw i128 %i.eru, 7784369436827535058
  %i.erw = lshr i128 %i.erv, 64
  %i.erx = mul nuw i128 %i.eru, 11392378155556871081
  %i.ery = add nuw i128 %i.erw, %i.erx            ; 2 uses
  %i.erz = lshr i128 %i.ery, 64
  %i.esa = trunc nuw i128 %i.erz to i64
  %i.esb = and i128 %i.ery, 18446744073709551614
  %i.esc = icmp ne i128 %i.esb, 0
  %i.esd = zext i1 %i.esc to i64
  %i.ese = or i64 %i.esd, %i.esa
  %i.esf = zext nneg i64 %i.err to i128           ; 2 uses
  %i.esg = mul nuw nsw i128 %i.esf, 7784369436827535058
  %i.esh = lshr i128 %i.esg, 64
  %i.esi = mul nuw nsw i128 %i.esf, 11392378155556871081
  %i.esj = add nuw nsw i128 %i.esh, %i.esi        ; 2 uses
  %i.esk = lshr i128 %i.esj, 64
  %i.esl = trunc nuw nsw i128 %i.esk to i64       ; 5 uses
  %i.esm = and i128 %i.esj, 18446744073709551614
  %i.esn = icmp ne i128 %i.esm, 0
  %i.eso = zext i1 %i.esn to i64
  %i.esp = or i64 %i.eso, %i.esl                  ; 2 uses
  %i.esq = zext nneg i64 %i.ers to i128           ; 2 uses
  %i.esr = mul nuw nsw i128 %i.esq, 7784369436827535058
  %i.ess = lshr i128 %i.esr, 64
  %i.est = mul nuw nsw i128 %i.esq, 11392378155556871081
  %i.esu = add nuw nsw i128 %i.ess, %i.est        ; 2 uses
  %i.esv = lshr i128 %i.esu, 64
  %i.esw = trunc nuw nsw i128 %i.esv to i64
  %i.esx = and i128 %i.esu, 18446744073709551614
  %i.esy = icmp ne i128 %i.esx, 0
  %i.esz = zext i1 %i.esy to i64
  %i.eta = or i64 %i.esz, %i.esw
  %i.etb = and i64 %i.dou, 1                      ; 2 uses
  %i.etc = add nuw i64 %i.ese, %i.etb             ; 2 uses
  %i.etd = sub nuw nsw i64 %i.eta, %i.etb         ; 2 uses
  %i.ete = lshr i64 %i.esl, 2                     ; 2 uses
  %i.etf = icmp samesign ugt i64 %i.esl, 39
  br i1 %i.etf, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %bb.pr
  %i.etg = udiv i64 %i.esl, 40                    ; 2 uses
  %i.eth = mul nuw nsw i64 %i.etg, 40             ; 2 uses
  %i.eti = add nuw nsw i64 %i.eth, 40
  %i.etj = icmp samesign uge i64 %i.etd, %i.eti   ; 2 uses
  %i.etk = icmp ugt i64 %i.etc, %i.eth
  %.not.i690 = xor i1 %i.etk, %i.etj
  br i1 %.not.i690, label %bb.pt, label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit691

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  %i.etl = and i64 %i.esl, 9223372036854775804    ; 3 uses
  %i.etm = add nuw nsw i64 %i.etl, 4
  %i.etn = icmp samesign uge i64 %i.etd, %i.etm   ; 2 uses
  %i.eto = or disjoint i64 %i.etl, 2              ; 2 uses
  %i.etp = icmp samesign ugt i64 %i.esp, %i.eto
  br i1 %i.etp, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.etq = icmp eq i64 %i.esp, %i.eto
  %i.etr = trunc i64 %i.ete to i1
  %i.ets = and i1 %i.etq, %i.etr
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  %i.ett = phi i1 [ true, %bb.pt ], [ %i.ets, %bb.pu ]
  %i.etu = icmp ugt i64 %i.etc, %i.etl
  %.not58.i688 = xor i1 %i.etu, %i.etn
  %i.etv = select i1 %.not58.i688, i1 %i.ett, i1 %i.etn
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit691

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit691: ; preds = %bb.ps, %bb.pv
  %.sink5261 = phi i1 [ %i.etv, %bb.pv ], [ %i.etj, %bb.ps ]
  %.sink5259 = phi i64 [ %i.ete, %bb.pv ], [ %i.etg, %bb.ps ]
  %storemerge.i689 = phi i32 [ -324, %bb.pv ], [ -323, %bb.ps ]
  %i.etw = zext i1 %.sink5261 to i64
  %i.etx = add nuw nsw i64 %.sink5259, %i.etw     ; 25 uses
  %i.ety = getelementptr inbounds nuw i8, ptr %i.dpf, i64 1 ; 19 uses
  %i.etz = icmp samesign ugt i64 %i.etx, 999999999999999
  br i1 %i.etz, label %bb.pw, label %bb.px

bb.pw:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit691
  %i.eua = udiv i64 %i.etx, 100000000             ; 2 uses
  %.neg29.i910 = mul nuw nsw i64 %i.eua, 4194967296
  %i.eub = add nuw nsw i64 %.neg29.i910, %i.etx   ; 2 uses
  %i.euc = trunc i64 %i.eub to i32
  %i.eud = udiv i64 %i.etx, 10000000000000000     ; 2 uses
  %.neg30.i911 = mul nuw nsw i64 %i.eud, 4194967296
  %i.eue = add nuw nsw i64 %.neg30.i911, %i.eua   ; 2 uses
  %i.euf = trunc i64 %i.eue to i32
  %i.eug = trunc nuw nsw i64 %i.eud to i8
  %i.euh = add nuw nsw i8 %i.eug, 48
  store i8 %i.euh, ptr %i.ety, align 1, !tbaa !81
  %i.eui = icmp samesign ugt i64 %i.etx, 9999999999999999
  %i.euj = zext i1 %i.eui to i64
  %i.euk = getelementptr inbounds nuw i8, ptr %i.ety, i64 %i.euj ; 9 uses
  %i.eul = and i64 %i.eue, 4294967295
  %i.eum = mul nuw nsw i64 %i.eul, 109951163
  %i.eun = lshr i64 %i.eum, 40
  %i.euo = trunc nuw nsw i64 %i.eun to i32        ; 3 uses
  %.neg.i1134 = mul i32 %i.euo, -10000
  %i.eup = add i32 %.neg.i1134, %i.euf            ; 2 uses
  %i.euq = mul nuw i32 %i.euo, 5243
  %i.eur = lshr i32 %i.euq, 19                    ; 2 uses
  %i.eus = mul i32 %i.eup, 5243
  %i.eut = lshr i32 %i.eus, 19                    ; 2 uses
  %.neg17.i1135 = mul nsw i32 %i.eur, -100
  %i.euu = add nsw i32 %.neg17.i1135, %i.euo
  %.neg18.i1136 = mul i32 %i.eut, 2147483548
  %i.euv = add i32 %.neg18.i1136, %i.eup
  %i.euw = shl nuw nsw i32 %i.eur, 1
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.hsy = mul nuw i128 %i.hsx, %i.hsw
  %i.hsz = lshr i128 %i.hsy, 64
  %i.hta = zext i64 %i.hsn to i128                ; 3 uses
  %i.htb = mul nuw i128 %i.hta, %i.hsw
  %i.htc = add nuw i128 %i.hsz, %i.htb            ; 2 uses
  %i.htd = lshr i128 %i.htc, 64
  %i.hte = trunc nuw i128 %i.htd to i64
  %i.htf = and i128 %i.htc, 18446744073709551614
  %i.htg = icmp ne i128 %i.htf, 0
  %i.hth = zext i1 %i.htg to i64
  %i.hti = or i64 %i.hth, %i.hte
  %i.htj = shl i64 %i.hrx, %i.hsu
  %i.htk = zext i64 %i.htj to i128                ; 2 uses
  %i.htl = mul nuw i128 %i.hsx, %i.htk
  %i.htm = lshr i128 %i.htl, 64
  %i.htn = mul nuw i128 %i.hta, %i.htk
  %i.hto = add nuw i128 %i.htm, %i.htn            ; 2 uses
  %i.htp = lshr i128 %i.hto, 64
  %i.htq = trunc nuw i128 %i.htp to i64           ; 5 uses
  %i.htr = and i128 %i.hto, 18446744073709551614
  %i.hts = icmp ne i128 %i.htr, 0
  %i.htt = zext i1 %i.hts to i64
  %i.htu = or i64 %i.htt, %i.htq                  ; 2 uses
  %i.htv = shl i64 %i.hsb, %i.hsu
  %i.htw = zext i64 %i.htv to i128                ; 2 uses
  %i.htx = mul nuw i128 %i.hsx, %i.htw
  %i.hty = lshr i128 %i.htx, 64
  %i.htz = mul nuw i128 %i.hta, %i.htw
  %i.hua = add nuw i128 %i.hty, %i.htz            ; 2 uses
  %i.hub = lshr i128 %i.hua, 64
  %i.huc = trunc nuw i128 %i.hub to i64
  %i.hud = and i128 %i.hua, 18446744073709551614
  %i.hue = icmp ne i128 %i.hud, 0
  %i.huf = zext i1 %i.hue to i64
  %i.hug = or i64 %i.huf, %i.huc
  %i.huh = and i64 %i.hiv, 1                      ; 2 uses
  %i.hui = add i64 %i.hti, %i.huh                 ; 2 uses
  %i.huj = sub i64 %i.hug, %i.huh                 ; 2 uses
  %i.huk = lshr i64 %i.htq, 2                     ; 2 uses
  %i.hul = icmp ugt i64 %i.htq, 39
  br i1 %i.hul, label %bb.yq, label %bb.ys

bb.yq:                                            ; preds = %bb.yp
  %i.hum = udiv i64 %i.htq, 40                    ; 2 uses
  %i.hun = mul nuw i64 %i.hum, 40                 ; 2 uses
  %i.huo = add i64 %i.hun, 40
  %i.hup = icmp uge i64 %i.huj, %i.huo            ; 2 uses
  %i.huq = icmp ugt i64 %i.hui, %i.hun
  %.not.i685 = xor i1 %i.huq, %i.hup
  br i1 %.not.i685, label %bb.ys, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.hur = zext i1 %i.hup to i64
  %i.hus = add nuw nsw i64 %i.hum, %i.hur
  %i.hut = add nsw i32 %i.hsf, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit686

bb.ys:                                            ; preds = %bb.yq, %bb.yp
  %i.huu = and i64 %i.htq, -4                     ; 3 uses
  %i.huv = add i64 %i.huu, 4
  %i.huw = icmp uge i64 %i.huj, %i.huv            ; 2 uses
  %i.hux = or disjoint i64 %i.huu, 2              ; 2 uses
  %i.huy = icmp ugt i64 %i.htu, %i.hux
  br i1 %i.huy, label %bb.yu, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %i.huz = icmp eq i64 %i.htu, %i.hux
  %i.hva = trunc i64 %i.huk to i1
  %i.hvb = and i1 %i.huz, %i.hva
  br label %bb.yu

bb.yu:                                            ; preds = %bb.yt, %bb.ys
  %i.hvc = phi i1 [ true, %bb.ys ], [ %i.hvb, %bb.yt ]
  %i.hvd = icmp ugt i64 %i.hui, %i.huu
  %.not58.i683 = xor i1 %i.hvd, %i.huw
  %i.hve = select i1 %.not58.i683, i1 %i.hvc, i1 %i.huw
  %i.hvf = zext i1 %i.hve to i64
  %i.hvg = add nuw nsw i64 %i.huk, %i.hvf
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit686

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit686: ; preds = %bb.yr, %bb.yu
  %.11603 = phi i64 [ %i.hvg, %bb.yu ], [ %i.hus, %bb.yr ] ; 8 uses
  %storemerge.i684 = phi i32 [ %i.hsf, %bb.yu ], [ %i.hut, %bb.yr ]
  %i.hvh = icmp samesign ult i64 %.11603, 10000000000000000
  %i.hvi = select i1 %i.hvh, i32 16, i32 17
  %i.hvj = icmp samesign ult i64 %.11603, 1000000000000000
  %.neg129.i649 = sext i1 %i.hvj to i32
  %i.hvk = add nsw i32 %i.hvi, %.neg129.i649
  %i.hvl = add nsw i32 %i.hvk, %storemerge.i684   ; 8 uses
  %i.hvm = add nsw i32 %i.hvl, 5
  %or.cond3.i650 = icmp ult i32 %i.hvm, 27
  br i1 %or.cond3.i650, label %bb.yv, label %bb.zk

bb.yv:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit686
  %i.hvn = icmp slt i32 %i.hvl, 1
  br i1 %i.hvn, label %bb.yw, label %bb.zd

bb.yw:                                            ; preds = %bb.yv
  %i.hvo = sub nsw i32 2, %i.hvl
  %i.hvp = zext nneg i32 %i.hvo to i64
  %i.hvq = getelementptr inbounds nuw i8, ptr %i.hjg, i64 %i.hvp ; 2 uses
  %i.hvr = udiv i64 %.11603, 100000000            ; 2 uses
  %i.hvs = trunc i64 %i.hvr to i32                ; 2 uses
  %.neg.i707 = mul i64 %i.hvr, 4194967296
  %i.hvt = add i64 %.neg.i707, %.11603            ; 2 uses
  %i.hvu = trunc i64 %i.hvt to i32                ; 2 uses
  %i.hvv = udiv i32 %i.hvs, 10000                 ; 3 uses
  %.neg95.i = mul i32 %i.hvv, -10000
  %i.hvw = add i32 %.neg95.i, %i.hvs              ; 5 uses
  %i.hvx = zext nneg i32 %i.hvv to i64
  %i.hvy = mul nuw nsw i64 %i.hvx, 167773
  %i.hvz = lshr i64 %i.hvy, 24
  %i.hwa = trunc nuw nsw i64 %i.hvz to i32        ; 3 uses
  %i.hwb = mul nuw nsw i32 %i.hwa, 41
  %i.hwc = lshr i32 %i.hwb, 12                    ; 4 uses
  %.neg96.i = mul nsw i32 %i.hwc, -100
  %i.hwd = add nsw i32 %.neg96.i, %i.hwa          ; 3 uses
  %.neg97.i = mul nsw i32 %i.hwa, -100
  %i.hwe = add nsw i32 %.neg97.i, %i.hvv          ; 3 uses
  %i.hwf = trunc nuw nsw i32 %i.hwc to i8
  %i.hwg = add nuw nsw i8 %i.hwf, 48
  store i8 %i.hwg, ptr %i.hvq, align 1, !tbaa !81
  %i.hwh = icmp ne i32 %i.hwc, 0
  %i.hwi = zext i1 %i.hwh to i64
  %i.hwj = getelementptr inbounds nuw i8, ptr %i.hvq, i64 %i.hwi ; 2 uses
  %i.hwk = icmp ult i32 %i.hwd, 10
  %i.hwl = icmp eq i32 %i.hwc, 0
  %i.hwm = and i1 %i.hwl, %i.hwk                  ; 2 uses
  %i.hwn = shl nsw i32 %i.hwd, 1
  %i.hwo = zext i32 %i.hwn to i64
  %i.hwp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hwo
  %.neg98.i = sext i1 %i.hwm to i64
  %i.hwq = zext i1 %i.hwm to i64
  %i.hwr = getelementptr inbounds nuw i8, ptr %i.hwp, i64 %i.hwq
  %i.hws = load i16, ptr %i.hwr, align 1
  store i16 %i.hws, ptr %i.hwj, align 1
  %i.hwt = getelementptr inbounds i8, ptr %i.hwj, i64 %.neg98.i ; 10 uses
  %i.hwu = getelementptr inbounds nuw i8, ptr %i.hwt, i64 2
  %i.hwv = shl nsw i32 %i.hwe, 1
  %i.hww = zext i32 %i.hwv to i64
  %i.hwx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hww
  %i.hwy = load i16, ptr %i.hwx, align 2
  store i16 %i.hwy, ptr %i.hwu, align 1
  %.not.i708 = icmp eq i32 %i.hvu, 0
  br i1 %.not.i708, label %bb.za, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.hwz = mul i32 %i.hvw, 5243
  %i.hxa = lshr i32 %i.hwz, 19                    ; 2 uses
  %.neg103.i = mul i32 %i.hxa, 2147483548
  %i.hxb = add i32 %.neg103.i, %i.hvw
  %i.hxc = and i64 %i.hvt, 4294967295
  %i.hxd = mul nuw nsw i64 %i.hxc, 109951163
  %i.hxe = lshr i64 %i.hxd, 40
  %i.hxf = trunc nuw nsw i64 %i.hxe to i32        ; 3 uses
  %.neg104.i = mul i32 %i.hxf, -10000
  %i.hxg = add i32 %.neg104.i, %i.hvu             ; 3 uses
  %i.hxh = mul nuw i32 %i.hxf, 5243
  %i.hxi = lshr i32 %i.hxh, 19                    ; 3 uses
  %.neg105.i = mul nsw i32 %i.hxi, -100
  %i.hxj = add nsw i32 %.neg105.i, %i.hxf         ; 2 uses
  %i.hxk = getelementptr inbounds nuw i8, ptr %i.hwt, i64 4
  %i.hxl = shl nuw nsw i32 %i.hxa, 1
  %i.hxm = zext nneg i32 %i.hxl to i64
  %i.hxn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxm
  %i.hxo = load i16, ptr %i.hxn, align 2
  store i16 %i.hxo, ptr %i.hxk, align 1
  %i.hxp = getelementptr inbounds nuw i8, ptr %i.hwt, i64 6
  %i.hxq = shl i32 %i.hxb, 1
  %i.hxr = zext i32 %i.hxq to i64
  %i.hxs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxr
  %i.hxt = load i16, ptr %i.hxs, align 2
  store i16 %i.hxt, ptr %i.hxp, align 1
  %i.hxu = getelementptr inbounds nuw i8, ptr %i.hwt, i64 8
  %i.hxv = shl nuw nsw i32 %i.hxi, 1
  %i.hxw = zext nneg i32 %i.hxv to i64
  %i.hxx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxw
  %i.hxy = load i16, ptr %i.hxx, align 2
  store i16 %i.hxy, ptr %i.hxu, align 1
  %i.hxz = getelementptr inbounds nuw i8, ptr %i.hwt, i64 10
  %i.hya = shl nsw i32 %i.hxj, 1
  %i.hyb = zext i32 %i.hya to i64
  %i.hyc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyb
  %i.hyd = load i16, ptr %i.hyc, align 2
  store i16 %i.hyd, ptr %i.hxz, align 1
  %.not106.i709 = icmp eq i32 %i.hxg, 0
  br i1 %.not106.i709, label %bb.yz, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.hye = mul i32 %i.hxg, 5243
  %i.hyf = lshr i32 %i.hye, 19                    ; 3 uses
  %.neg108.i = mul nsw i32 %i.hyf, -100
  %i.hyg = add i32 %.neg108.i, %i.hxg             ; 2 uses
  %i.hyh = getelementptr inbounds nuw i8, ptr %i.hwt, i64 12
  %i.hyi = shl nuw nsw i32 %i.hyf, 1
  %i.hyj = zext nneg i32 %i.hyi to i64
  %i.hyk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyj
  %i.hyl = load i16, ptr %i.hyk, align 2
  store i16 %i.hyl, ptr %i.hyh, align 1
  %i.hym = getelementptr inbounds nuw i8, ptr %i.hwt, i64 14
  %i.hyn = shl i32 %i.hyg, 1
  %i.hyo = zext i32 %i.hyn to i64
  %i.hyp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyo
  %i.hyq = load i16, ptr %i.hyp, align 2
  store i16 %i.hyq, ptr %i.hym, align 1
  br label %bb.yz

bb.yz:                                            ; preds = %bb.yx, %bb.yy
  %.sink5276 = phi i32 [ %i.hyf, %bb.yy ], [ %i.hxi, %bb.yx ]
  %.sink5272 = phi i32 [ %i.hyg, %bb.yy ], [ %i.hxj, %bb.yx ] ; 2 uses
  %.sink5263 = phi i64 [ 16, %bb.yy ], [ 12, %bb.yx ]
  %i.hyr = zext nneg i32 %.sink5276 to i64
  %i.hys = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hyr
  %i.hyt = load i8, ptr %i.hys, align 1, !tbaa !81
  %i.hyu = zext i8 %i.hyt to i64
  %i.hyv = zext i32 %.sink5272 to i64
  %i.hyw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hyv
  %i.hyx = load i8, ptr %i.hyw, align 1, !tbaa !81
  %i.hyy = zext i8 %i.hyx to i64
  %.not107.i713 = icmp eq i32 %.sink5272, 0
  %i.hyz = add nuw nsw i64 %i.hyu, 2
  %i.hza = select i1 %.not107.i713, i64 %i.hyz, i64 %i.hyy
  %i.hzb = sub nsw i64 %.sink5263, %i.hza
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit

bb.za:                                            ; preds = %bb.yw
  %.not99.i714 = icmp eq i32 %i.hvw, 0
  br i1 %.not99.i714, label %bb.zc, label %bb.zb

bb.zb:                                            ; preds = %bb.za
  %i.hzc = mul i32 %i.hvw, 5243
  %i.hzd = lshr i32 %i.hzc, 19                    ; 3 uses
  %.neg101.i = mul nsw i32 %i.hzd, -100
  %i.hze = add i32 %.neg101.i, %i.hvw             ; 3 uses
  %i.hzf = getelementptr inbounds nuw i8, ptr %i.hwt, i64 4
  %i.hzg = shl nuw nsw i32 %i.hzd, 1
  %i.hzh = zext nneg i32 %i.hzg to i64
  %i.hzi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzh
  %i.hzj = load i16, ptr %i.hzi, align 2
  store i16 %i.hzj, ptr %i.hzf, align 1
  %i.hzk = getelementptr inbounds nuw i8, ptr %i.hwt, i64 6
  %i.hzl = shl i32 %i.hze, 1
  %i.hzm = zext i32 %i.hzl to i64
  %i.hzn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzm
  %i.hzo = load i16, ptr %i.hzn, align 2
  store i16 %i.hzo, ptr %i.hzk, align 1
  %i.hzp = zext nneg i32 %i.hzd to i64
  %i.hzq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzp
  %i.hzr = load i8, ptr %i.hzq, align 1, !tbaa !81
  %i.hzs = zext i8 %i.hzr to i64
  %i.hzt = zext i32 %i.hze to i64
  %i.hzu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzt
  %i.hzv = load i8, ptr %i.hzu, align 1, !tbaa !81
  %i.hzw = zext i8 %i.hzv to i64
  %.not102.i715 = icmp eq i32 %i.hze, 0
  %i.hzx = add nuw nsw i64 %i.hzs, 2
  %i.hzy = select i1 %.not102.i715, i64 %i.hzx, i64 %i.hzw
  %i.hzz = sub nsw i64 8, %i.hzy
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit

bb.zc:                                            ; preds = %bb.za
  %i.iaa = zext i32 %i.hwd to i64
  %i.iab = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iaa
  %i.iac = load i8, ptr %i.iab, align 1, !tbaa !81
  %i.iad = zext i8 %i.iac to i64
  %i.iae = zext i32 %i.hwe to i64
  %i.iaf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iae
  %i.iag = load i8, ptr %i.iaf, align 1, !tbaa !81
  %i.iah = zext i8 %i.iag to i64
  %.not100.i716 = icmp eq i32 %i.hwe, 0
  %i.iai = select i1 %.not100.i716, i64 %i.iad, i64 0
  %i.iaj = add nuw nsw i64 %i.iai, %i.iah
  %i.iak = sub nsw i64 4, %i.iaj
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit: ; preds = %bb.yz, %bb.zb, %bb.zc
  %.sink5277 = phi i64 [ %i.hzb, %bb.yz ], [ %i.hzz, %bb.zb ], [ %i.iak, %bb.zc ]
  %.pn.i710 = and i64 %.sink5277, 4294967295
  %.0.i711 = getelementptr inbounds nuw i8, ptr %i.hwt, i64 %.pn.i710 ; 2 uses
  store i8 48, ptr %i.hjg, align 1, !tbaa !81
  %i.ial = getelementptr inbounds nuw i8, ptr %i.hjg, i64 1
  store i8 46, ptr %i.ial, align 1, !tbaa !81
  %i.iam = icmp slt i32 %i.hvl, 0
  br i1 %i.iam, label %.lr.ph3042.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

.lr.ph3042.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit
  %i.ian = getelementptr i8, ptr %i.hjg, i64 2
  %narrow3954 = sub nsw i32 0, %i.hvl
  %i.iao = zext nneg i32 %narrow3954 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ian, i8 48, i64 %i.iao, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.zd:                                            ; preds = %bb.yv
  %i.iap = getelementptr inbounds nuw i8, ptr %i.hjg, i64 1 ; 2 uses
  %i.iaq = udiv i64 %.11603, 100000000            ; 2 uses
  %i.iar = trunc i64 %i.iaq to i32                ; 2 uses
  %.neg.i717 = mul i64 %i.iaq, 4194967296
  %i.ias = add i64 %.neg.i717, %.11603            ; 2 uses
  %i.iat = trunc i64 %i.ias to i32                ; 2 uses
  %i.iau = udiv i32 %i.iar, 10000                 ; 3 uses
  %.neg95.i718 = mul i32 %i.iau, -10000
  %i.iav = add i32 %.neg95.i718, %i.iar           ; 5 uses
  %i.iaw = zext nneg i32 %i.iau to i64
  %i.iax = mul nuw nsw i64 %i.iaw, 167773
  %i.iay = lshr i64 %i.iax, 24
  %i.iaz = trunc nuw nsw i64 %i.iay to i32        ; 3 uses
  %i.iba = mul nuw nsw i32 %i.iaz, 41
  %i.ibb = lshr i32 %i.iba, 12                    ; 4 uses
  %.neg96.i719 = mul nsw i32 %i.ibb, -100
  %i.ibc = add nsw i32 %.neg96.i719, %i.iaz       ; 3 uses
  %.neg97.i720 = mul nsw i32 %i.iaz, -100
  %i.ibd = add nsw i32 %.neg97.i720, %i.iau       ; 3 uses
  %i.ibe = trunc nuw nsw i32 %i.ibb to i8
  %i.ibf = add nuw nsw i8 %i.ibe, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hjg, i8 48, i64 24, i1 false)
  store i8 %i.ibf, ptr %i.iap, align 1, !tbaa !81
  %i.ibg = icmp ne i32 %i.ibb, 0
  %i.ibh = zext i1 %i.ibg to i64
  %i.ibi = getelementptr inbounds nuw i8, ptr %i.iap, i64 %i.ibh ; 2 uses
  %i.ibj = icmp ult i32 %i.ibc, 10
  %i.ibk = icmp eq i32 %i.ibb, 0
  %i.ibl = and i1 %i.ibk, %i.ibj                  ; 2 uses
  %i.ibm = shl nsw i32 %i.ibc, 1
  %i.ibn = zext i32 %i.ibm to i64
  %i.ibo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ibn
  %.neg98.i721 = sext i1 %i.ibl to i64
  %i.ibp = zext i1 %i.ibl to i64
  %i.ibq = getelementptr inbounds nuw i8, ptr %i.ibo, i64 %i.ibp
  %i.ibr = load i16, ptr %i.ibq, align 1
  store i16 %i.ibr, ptr %i.ibi, align 1
  %i.ibs = getelementptr inbounds i8, ptr %i.ibi, i64 %.neg98.i721 ; 10 uses
  %i.ibt = getelementptr inbounds nuw i8, ptr %i.ibs, i64 2
  %i.ibu = shl nsw i32 %i.ibd, 1
  %i.ibv = zext i32 %i.ibu to i64
  %i.ibw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ibv
  %i.ibx = load i16, ptr %i.ibw, align 2
  store i16 %i.ibx, ptr %i.ibt, align 1
  %.not.i722 = icmp eq i32 %i.iat, 0
  br i1 %.not.i722, label %bb.zh, label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  %i.iby = mul i32 %i.iav, 5243
  %i.ibz = lshr i32 %i.iby, 19                    ; 2 uses
  %.neg103.i723 = mul i32 %i.ibz, 2147483548
  %i.ica = add i32 %.neg103.i723, %i.iav
  %i.icb = and i64 %i.ias, 4294967295
  %i.icc = mul nuw nsw i64 %i.icb, 109951163
  %i.icd = lshr i64 %i.icc, 40
  %i.ice = trunc nuw nsw i64 %i.icd to i32        ; 3 uses
  %.neg104.i724 = mul i32 %i.ice, -10000
  %i.icf = add i32 %.neg104.i724, %i.iat          ; 3 uses
  %i.icg = mul nuw i32 %i.ice, 5243
  %i.ich = lshr i32 %i.icg, 19                    ; 3 uses
  %.neg105.i725 = mul nsw i32 %i.ich, -100
  %i.ici = add nsw i32 %.neg105.i725, %i.ice      ; 2 uses
  %i.icj = getelementptr inbounds nuw i8, ptr %i.ibs, i64 4
  %i.ick = shl nuw nsw i32 %i.ibz, 1
  %i.icl = zext nneg i32 %i.ick to i64
  %i.icm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icl
  %i.icn = load i16, ptr %i.icm, align 2
  store i16 %i.icn, ptr %i.icj, align 1
  %i.ico = getelementptr inbounds nuw i8, ptr %i.ibs, i64 6
  %i.icp = shl i32 %i.ica, 1
  %i.icq = zext i32 %i.icp to i64
  %i.icr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icq
  %i.ics = load i16, ptr %i.icr, align 2
  store i16 %i.ics, ptr %i.ico, align 1
  %i.ict = getelementptr inbounds nuw i8, ptr %i.ibs, i64 8
  %i.icu = shl nuw nsw i32 %i.ich, 1
  %i.icv = zext nneg i32 %i.icu to i64
  %i.icw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icv
  %i.icx = load i16, ptr %i.icw, align 2
  store i16 %i.icx, ptr %i.ict, align 1
  %i.icy = getelementptr inbounds nuw i8, ptr %i.ibs, i64 10
  %i.icz = shl nsw i32 %i.ici, 1
  %i.ida = zext i32 %i.icz to i64
  %i.idb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ida
  %i.idc = load i16, ptr %i.idb, align 2
  store i16 %i.idc, ptr %i.icy, align 1
  %.not106.i726 = icmp eq i32 %i.icf, 0
  br i1 %.not106.i726, label %bb.zg, label %bb.zf

bb.zf:                                            ; preds = %bb.ze
  %i.idd = mul i32 %i.icf, 5243
  %i.ide = lshr i32 %i.idd, 19                    ; 3 uses
  %.neg108.i727 = mul nsw i32 %i.ide, -100
  %i.idf = add i32 %.neg108.i727, %i.icf          ; 2 uses
  %i.idg = getelementptr inbounds nuw i8, ptr %i.ibs, i64 12
  %i.idh = shl nuw nsw i32 %i.ide, 1
  %i.idi = zext nneg i32 %i.idh to i64
  %i.idj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idi
  %i.idk = load i16, ptr %i.idj, align 2
  store i16 %i.idk, ptr %i.idg, align 1
  %i.idl = getelementptr inbounds nuw i8, ptr %i.ibs, i64 14
  %i.idm = shl i32 %i.idf, 1
  %i.idn = zext i32 %i.idm to i64
  %i.ido = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idn
  %i.idp = load i16, ptr %i.ido, align 2
  store i16 %i.idp, ptr %i.idl, align 1
  br label %bb.zg

bb.zg:                                            ; preds = %bb.ze, %bb.zf
  %.sink5291 = phi i32 [ %i.ide, %bb.zf ], [ %i.ich, %bb.ze ]
  %.sink5287 = phi i32 [ %i.idf, %bb.zf ], [ %i.ici, %bb.ze ] ; 2 uses
  %.sink5278 = phi i64 [ 16, %bb.zf ], [ 12, %bb.ze ]
  %i.idq = zext nneg i32 %.sink5291 to i64
  %i.idr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.idq
  %i.ids = load i8, ptr %i.idr, align 1, !tbaa !81
  %i.idt = zext i8 %i.ids to i64
  %i.idu = zext i32 %.sink5287 to i64
  %i.idv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.idu
  %i.idw = load i8, ptr %i.idv, align 1, !tbaa !81
  %i.idx = zext i8 %i.idw to i64
  %.not107.i733 = icmp eq i32 %.sink5287, 0
  %i.idy = add nuw nsw i64 %i.idt, 2
  %i.idz = select i1 %.not107.i733, i64 %i.idy, i64 %i.idx
  %i.iea = sub nsw i64 %.sink5278, %i.idz
  br label %._crit_edge3040

bb.zh:                                            ; preds = %bb.zd
  %.not99.i734 = icmp eq i32 %i.iav, 0
  br i1 %.not99.i734, label %bb.zj, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %i.ieb = mul i32 %i.iav, 5243
  %i.iec = lshr i32 %i.ieb, 19                    ; 3 uses
  %.neg101.i735 = mul nsw i32 %i.iec, -100
  %i.ied = add i32 %.neg101.i735, %i.iav          ; 3 uses
  %i.iee = getelementptr inbounds nuw i8, ptr %i.ibs, i64 4
  %i.ief = shl nuw nsw i32 %i.iec, 1
  %i.ieg = zext nneg i32 %i.ief to i64
  %i.ieh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ieg
  %i.iei = load i16, ptr %i.ieh, align 2
  store i16 %i.iei, ptr %i.iee, align 1
  %i.iej = getelementptr inbounds nuw i8, ptr %i.ibs, i64 6
  %i.iek = shl i32 %i.ied, 1
  %i.iel = zext i32 %i.iek to i64
  %i.iem = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iel
  %i.ien = load i16, ptr %i.iem, align 2
  store i16 %i.ien, ptr %i.iej, align 1
  %i.ieo = zext nneg i32 %i.iec to i64
  %i.iep = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ieo
  %i.ieq = load i8, ptr %i.iep, align 1, !tbaa !81
  %i.ier = zext i8 %i.ieq to i64
  %i.ies = zext i32 %i.ied to i64
  %i.iet = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ies
  %i.ieu = load i8, ptr %i.iet, align 1, !tbaa !81
  %i.iev = zext i8 %i.ieu to i64
  %.not102.i736 = icmp eq i32 %i.ied, 0
  %i.iew = add nuw nsw i64 %i.ier, 2
  %i.iex = select i1 %.not102.i736, i64 %i.iew, i64 %i.iev
  %i.iey = sub nsw i64 8, %i.iex
  br label %._crit_edge3040

bb.zj:                                            ; preds = %bb.zh
  %i.iez = zext i32 %i.ibc to i64
  %i.ifa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iez
  %i.ifb = load i8, ptr %i.ifa, align 1, !tbaa !81
  %i.ifc = zext i8 %i.ifb to i64
  %i.ifd = zext i32 %i.ibd to i64
  %i.ife = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifd
  %i.iff = load i8, ptr %i.ife, align 1, !tbaa !81
  %i.ifg = zext i8 %i.iff to i64
  %.not100.i737 = icmp eq i32 %i.ibd, 0
  %i.ifh = select i1 %.not100.i737, i64 %i.ifc, i64 0
  %i.ifi = add nuw nsw i64 %i.ifh, %i.ifg
  %i.ifj = sub nsw i64 4, %i.ifi
  br label %._crit_edge3040

._crit_edge3040:                                  ; preds = %bb.zg, %bb.zi, %bb.zj
  %.sink5292 = phi i64 [ %i.iea, %bb.zg ], [ %i.iey, %bb.zi ], [ %i.ifj, %bb.zj ]
  %.pn.i730 = and i64 %.sink5292, 4294967295
  %.0.i731 = getelementptr inbounds nuw i8, ptr %i.ibs, i64 %.pn.i730 ; 2 uses
  %scevgep3705 = getelementptr i8, ptr %.3354.i, i64 1
  %scevgep3706 = getelementptr i8, ptr %scevgep3705, i64 %.lobit.i645
  %i.ifk = zext nneg i32 %i.hvl to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hjg, ptr align 1 %scevgep3706, i64 %i.ifk, i1 false), !tbaa !81
  %i.ifl = zext nneg i32 %i.hvl to i64
  %i.ifm = getelementptr inbounds nuw i8, ptr %i.hjg, i64 %i.ifl ; 2 uses
  store i8 46, ptr %i.ifm, align 1, !tbaa !81
  %i.ifn = getelementptr inbounds nuw i8, ptr %i.ifm, i64 2 ; 2 uses
  %i.ifo = icmp ult ptr %i.ifn, %.0.i731
  %spec.select1769 = select i1 %i.ifo, ptr %.0.i731, ptr %i.ifn
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.zk:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit686
  %.ptr1800 = getelementptr inbounds nuw i8, ptr %i.hjg, i64 1 ; 3 uses
  %i.ifp = udiv i64 %.11603, 100000000            ; 2 uses
  %i.ifq = trunc i64 %i.ifp to i32                ; 2 uses
  %.neg.i739 = mul i64 %i.ifp, 4194967296
  %i.ifr = add i64 %.neg.i739, %.11603            ; 2 uses
  %i.ifs = trunc i64 %i.ifr to i32                ; 2 uses
  %i.ift = udiv i32 %i.ifq, 10000                 ; 3 uses
  %.neg95.i740 = mul i32 %i.ift, -10000
  %i.ifu = add i32 %.neg95.i740, %i.ifq           ; 5 uses
  %i.ifv = zext nneg i32 %i.ift to i64
  %i.ifw = mul nuw nsw i64 %i.ifv, 167773
  %i.ifx = lshr i64 %i.ifw, 24
  %i.ify = trunc nuw nsw i64 %i.ifx to i32        ; 3 uses
  %i.ifz = mul nuw nsw i32 %i.ify, 41
  %i.iga = lshr i32 %i.ifz, 12                    ; 3 uses
  %.neg96.i741 = mul nsw i32 %i.iga, -100
  %i.igb = add nsw i32 %.neg96.i741, %i.ify       ; 3 uses
  %.neg97.i742 = mul nsw i32 %i.ify, -100
  %i.igc = add nsw i32 %.neg97.i742, %i.ift       ; 3 uses
  %i.igd = trunc nuw nsw i32 %i.iga to i8
  %i.ige = add nuw nsw i8 %i.igd, 48
  store i8 %i.ige, ptr %.ptr1800, align 1, !tbaa !81
  %.not1805 = icmp eq i32 %i.iga, 0               ; 2 uses
  %.add1795 = select i1 %.not1805, i64 1, i64 2   ; 2 uses
  %.ptr1801 = getelementptr inbounds nuw i8, ptr %i.hjg, i64 %.add1795
  %i.igf = icmp ult i32 %i.igb, 10
  %i.igg = and i1 %.not1805, %i.igf               ; 2 uses
  %i.igh = shl nsw i32 %i.igb, 1
  %i.igi = zext i32 %i.igh to i64
  %i.igj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.igi
  %.neg98.i743 = sext i1 %i.igg to i64
  %i.igk = zext i1 %i.igg to i64
  %i.igl = getelementptr inbounds nuw i8, ptr %i.igj, i64 %i.igk
  %i.igm = load i16, ptr %i.igl, align 1
  store i16 %i.igm, ptr %.ptr1801, align 1
  %.add1796 = add nsw i64 %.add1795, %.neg98.i743 ; 2 uses
  %.ptr1802 = getelementptr inbounds nuw i8, ptr %i.hjg, i64 %.add1796 ; 9 uses
  %i.ign = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 2
  %i.igo = shl nsw i32 %i.igc, 1
  %i.igp = zext i32 %i.igo to i64
  %i.igq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.igp
  %i.igr = load i16, ptr %i.igq, align 2
  store i16 %i.igr, ptr %i.ign, align 1
  %.not.i744 = icmp eq i32 %i.ifs, 0
  br i1 %.not.i744, label %bb.zo, label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  %i.igs = mul i32 %i.ifu, 5243
  %i.igt = lshr i32 %i.igs, 19                    ; 2 uses
  %.neg103.i745 = mul i32 %i.igt, 2147483548
  %i.igu = add i32 %.neg103.i745, %i.ifu
  %i.igv = and i64 %i.ifr, 4294967295
  %i.igw = mul nuw nsw i64 %i.igv, 109951163
  %i.igx = lshr i64 %i.igw, 40
  %i.igy = trunc nuw nsw i64 %i.igx to i32        ; 3 uses
  %.neg104.i746 = mul i32 %i.igy, -10000
  %i.igz = add i32 %.neg104.i746, %i.ifs          ; 3 uses
  %i.iha = mul nuw i32 %i.igy, 5243
  %i.ihb = lshr i32 %i.iha, 19                    ; 3 uses
  %.neg105.i747 = mul nsw i32 %i.ihb, -100
  %i.ihc = add nsw i32 %.neg105.i747, %i.igy      ; 3 uses
  %i.ihd = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 4
  %i.ihe = shl nuw nsw i32 %i.igt, 1
  %i.ihf = zext nneg i32 %i.ihe to i64
  %i.ihg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ihf
  %i.ihh = load i16, ptr %i.ihg, align 2
  store i16 %i.ihh, ptr %i.ihd, align 1
  %i.ihi = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 6
  %i.ihj = shl i32 %i.igu, 1
  %i.ihk = zext i32 %i.ihj to i64
  %i.ihl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ihk
  %i.ihm = load i16, ptr %i.ihl, align 2
  store i16 %i.ihm, ptr %i.ihi, align 1
  %i.ihn = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 8
  %i.iho = shl nuw nsw i32 %i.ihb, 1
  %i.ihp = zext nneg i32 %i.iho to i64
  %i.ihq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ihp
  %i.ihr = load i16, ptr %i.ihq, align 2
  store i16 %i.ihr, ptr %i.ihn, align 1
  %i.ihs = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 10
  %i.iht = shl nsw i32 %i.ihc, 1
  %i.ihu = zext i32 %i.iht to i64
  %i.ihv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ihu
  %i.ihw = load i16, ptr %i.ihv, align 2
  store i16 %i.ihw, ptr %i.ihs, align 1
  %.not106.i748 = icmp eq i32 %i.igz, 0
  br i1 %.not106.i748, label %bb.zn, label %bb.zm

bb.zm:                                            ; preds = %bb.zl
  %i.ihx = mul i32 %i.igz, 5243
  %i.ihy = lshr i32 %i.ihx, 19                    ; 3 uses
  %.neg108.i749 = mul nsw i32 %i.ihy, -100
  %i.ihz = add i32 %.neg108.i749, %i.igz          ; 3 uses
  %i.iia = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 12
  %i.iib = shl nuw nsw i32 %i.ihy, 1
  %i.iic = zext nneg i32 %i.iib to i64
  %i.iid = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iic
  %i.iie = load i16, ptr %i.iid, align 2
  store i16 %i.iie, ptr %i.iia, align 1
  %i.iif = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 14
  %i.iig = shl i32 %i.ihz, 1
  %i.iih = zext i32 %i.iig to i64
  %i.iii = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iih
  %i.iij = load i16, ptr %i.iii, align 2
  store i16 %i.iij, ptr %i.iif, align 1
  %i.iik = zext nneg i32 %i.ihy to i64
  %i.iil = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iik
  %i.iim = load i8, ptr %i.iil, align 1, !tbaa !81
  %i.iin = zext i8 %i.iim to i64
  %i.iio = zext i32 %i.ihz to i64
  %i.iip = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iio
  %i.iiq = load i8, ptr %i.iip, align 1, !tbaa !81
  %i.iir = zext i8 %i.iiq to i64
  %.not109.i750 = icmp eq i32 %i.ihz, 0
  %i.iis = add nuw nsw i64 %i.iin, 2
  %i.iit = select i1 %.not109.i750, i64 %i.iis, i64 %i.iir
  %i.iiu = sub nsw i64 16, %i.iit
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760

bb.zn:                                            ; preds = %bb.zl
  %i.iiv = zext nneg i32 %i.ihb to i64
  %i.iiw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iiv
  %i.iix = load i8, ptr %i.iiw, align 1, !tbaa !81
  %i.iiy = zext i8 %i.iix to i64
  %i.iiz = zext i32 %i.ihc to i64
  %i.ija = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iiz
  %i.ijb = load i8, ptr %i.ija, align 1, !tbaa !81
  %i.ijc = zext i8 %i.ijb to i64
  %.not107.i755 = icmp eq i32 %i.ihc, 0
  %i.ijd = add nuw nsw i64 %i.iiy, 2
  %i.ije = select i1 %.not107.i755, i64 %i.ijd, i64 %i.ijc
  %i.ijf = sub nsw i64 12, %i.ije
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760

bb.zo:                                            ; preds = %bb.zk
  %.not99.i756 = icmp eq i32 %i.ifu, 0
  br i1 %.not99.i756, label %bb.zq, label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  %i.ijg = mul i32 %i.ifu, 5243
  %i.ijh = lshr i32 %i.ijg, 19                    ; 3 uses
  %.neg101.i757 = mul nsw i32 %i.ijh, -100
  %i.iji = add i32 %.neg101.i757, %i.ifu          ; 3 uses
  %i.ijj = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 4
  %i.ijk = shl nuw nsw i32 %i.ijh, 1
  %i.ijl = zext nneg i32 %i.ijk to i64
  %i.ijm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ijl
  %i.ijn = load i16, ptr %i.ijm, align 2
  store i16 %i.ijn, ptr %i.ijj, align 1
  %i.ijo = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 6
  %i.ijp = shl i32 %i.iji, 1
  %i.ijq = zext i32 %i.ijp to i64
  %i.ijr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ijq
  %i.ijs = load i16, ptr %i.ijr, align 2
  store i16 %i.ijs, ptr %i.ijo, align 1
  %i.ijt = zext nneg i32 %i.ijh to i64
  %i.iju = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijt
  %i.ijv = load i8, ptr %i.iju, align 1, !tbaa !81
  %i.ijw = zext i8 %i.ijv to i64
  %i.ijx = zext i32 %i.iji to i64
  %i.ijy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijx
  %i.ijz = load i8, ptr %i.ijy, align 1, !tbaa !81
  %i.ika = zext i8 %i.ijz to i64
  %.not102.i758 = icmp eq i32 %i.iji, 0
  %i.ikb = add nuw nsw i64 %i.ijw, 2
  %i.ikc = select i1 %.not102.i758, i64 %i.ikb, i64 %i.ika
  %i.ikd = sub nsw i64 8, %i.ikc
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760

bb.zq:                                            ; preds = %bb.zo
  %i.ike = zext i32 %i.igb to i64
  %i.ikf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ike
  %i.ikg = load i8, ptr %i.ikf, align 1, !tbaa !81
  %i.ikh = zext i8 %i.ikg to i64
  %i.iki = zext i32 %i.igc to i64
  %i.ikj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iki
  %i.ikk = load i8, ptr %i.ikj, align 1, !tbaa !81
  %i.ikl = zext i8 %i.ikk to i64
  %.not100.i759 = icmp eq i32 %i.igc, 0
  %i.ikm = select i1 %.not100.i759, i64 %i.ikh, i64 0
  %i.ikn = add nuw nsw i64 %i.ikm, %i.ikl
  %i.iko = sub nsw i64 4, %i.ikn
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760: ; preds = %bb.zm, %bb.zn, %bb.zp, %bb.zq
  %.pn.i752.pn.in = phi i64 [ %i.iko, %bb.zq ], [ %i.ikd, %bb.zp ], [ %i.iiu, %bb.zm ], [ %i.ijf, %bb.zn ]
  %.pn.i752.pn = and i64 %.pn.i752.pn.in, 4294967295
  %.1.i754.idx = add nuw nsw i64 %.pn.i752.pn, %.add1796 ; 2 uses
  %.1.i754.ptr = getelementptr inbounds nuw i8, ptr %i.hjg, i64 %.1.i754.idx
  %i.ikp = icmp eq i64 %.1.i754.idx, 2
  %.neg130.i651 = sext i1 %i.ikp to i64
  %i.ikq = getelementptr inbounds i8, ptr %.1.i754.ptr, i64 %.neg130.i651 ; 2 uses
  %i.ikr = add nsw i32 %i.hvl, -1                 ; 2 uses
  %i.iks = load i8, ptr %.ptr1800, align 1, !tbaa !81
  store i8 %i.iks, ptr %i.hjg, align 1, !tbaa !81
  store i8 46, ptr %.ptr1800, align 1, !tbaa !81
  store i8 101, ptr %i.ikq, align 1, !tbaa !81
  %i.ikt = getelementptr inbounds nuw i8, ptr %i.ikq, i64 1 ; 2 uses
  store i8 45, ptr %i.ikt, align 1, !tbaa !81
  %.lobit.i893 = lshr i32 %i.ikr, 31
  %i.iku = zext nneg i32 %.lobit.i893 to i64
  %i.ikv = getelementptr inbounds nuw i8, ptr %i.ikt, i64 %i.iku ; 5 uses
  %i.ikw = tail call i32 @llvm.abs.i32(i32 %i.ikr, i1 true) ; 5 uses
  %i.ikx = icmp samesign ult i32 %i.ikw, 100
  br i1 %i.ikx, label %bb.zr, label %bb.zs

bb.zr:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760
  %i.iky = icmp samesign ult i32 %i.ikw, 10       ; 2 uses
  %i.ikz = shl nuw nsw i32 %i.ikw, 1
  %i.ila = zext nneg i32 %i.ikz to i64
  %i.ilb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ila
  %.neg22.i = sext i1 %i.iky to i64
  %i.ilc = zext i1 %i.iky to i64
  %i.ild = getelementptr inbounds nuw i8, ptr %i.ilb, i64 %i.ilc
  %i.ile = load i16, ptr %i.ild, align 1
  store i16 %i.ile, ptr %i.ikv, align 1
  %i.ilf = getelementptr inbounds nuw i8, ptr %i.ikv, i64 2
  %i.ilg = getelementptr inbounds i8, ptr %i.ilf, i64 %.neg22.i
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.zs:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760
  %i.ilh = mul nuw nsw i32 %i.ikw, 656
  %i.ili = lshr i32 %i.ilh, 16                    ; 2 uses
  %.neg.i894 = mul i32 %i.ili, 2147483548
  %i.ilj = add i32 %.neg.i894, %i.ikw
  %i.ilk = trunc nuw nsw i32 %i.ili to i8
  %i.ill = add nuw nsw i8 %i.ilk, 48
  store i8 %i.ill, ptr %i.ikv, align 1, !tbaa !81
  %i.ilm = getelementptr inbounds nuw i8, ptr %i.ikv, i64 1
  %i.iln = shl i32 %i.ilj, 1
  %i.ilo = zext i32 %i.iln to i64
  %i.ilp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ilo
  %i.ilq = load i16, ptr %i.ilp, align 2
  store i16 %i.ilq, ptr %i.ilm, align 1
  %i.ilr = getelementptr inbounds nuw i8, ptr %i.ikv, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.zt:                                            ; preds = %bb.xx
  %i.ils = shl nuw nsw i64 %i.hiw, 5              ; 3 uses
  %i.ilt = or disjoint i64 %i.ils, 16
  %i.ilu = add nsw i64 %i.ils, -16
  %i.ilv = zext i64 %i.ilu to i128                ; 2 uses
  %i.ilw = mul nuw nsw i128 %i.ilv, 7784369436827535058
  %i.ilx = lshr i128 %i.ilw, 64
  %i.ily = mul nuw i128 %i.ilv, 11392378155556871081
  %i.ilz = add nuw i128 %i.ilx, %i.ily            ; 2 uses
  %i.ima = lshr i128 %i.ilz, 64
  %i.imb = trunc nuw i128 %i.ima to i64
  %i.imc = and i128 %i.ilz, 18446744073709551614
  %i.imd = icmp ne i128 %i.imc, 0
  %i.ime = zext i1 %i.imd to i64
  %i.imf = or i64 %i.ime, %i.imb
  %i.img = zext nneg i64 %i.ils to i128           ; 2 uses
  %i.imh = mul nuw nsw i128 %i.img, 7784369436827535058
  %i.imi = lshr i128 %i.imh, 64
  %i.imj = mul nuw nsw i128 %i.img, 11392378155556871081
  %i.imk = add nuw nsw i128 %i.imi, %i.imj        ; 2 uses
  %i.iml = lshr i128 %i.imk, 64
  %i.imm = trunc nuw nsw i128 %i.iml to i64       ; 5 uses
  %i.imn = and i128 %i.imk, 18446744073709551614
  %i.imo = icmp ne i128 %i.imn, 0
  %i.imp = zext i1 %i.imo to i64
  %i.imq = or i64 %i.imp, %i.imm                  ; 2 uses
  %i.imr = zext nneg i64 %i.ilt to i128           ; 2 uses
  %i.ims = mul nuw nsw i128 %i.imr, 7784369436827535058
  %i.imt = lshr i128 %i.ims, 64
  %i.imu = mul nuw nsw i128 %i.imr, 11392378155556871081
  %i.imv = add nuw nsw i128 %i.imt, %i.imu        ; 2 uses
  %i.imw = lshr i128 %i.imv, 64
  %i.imx = trunc nuw nsw i128 %i.imw to i64
  %i.imy = and i128 %i.imv, 18446744073709551614
  %i.imz = icmp ne i128 %i.imy, 0
  %i.ina = zext i1 %i.imz to i64
  %i.inb = or i64 %i.ina, %i.imx
  %i.inc = and i64 %i.hiv, 1                      ; 2 uses
  %i.ind = add nuw i64 %i.imf, %i.inc             ; 2 uses
  %i.ine = sub nuw nsw i64 %i.inb, %i.inc         ; 2 uses
  %i.inf = lshr i64 %i.imm, 2                     ; 2 uses
  %i.ing = icmp samesign ugt i64 %i.imm, 39
  br i1 %i.ing, label %bb.zu, label %bb.zv

bb.zu:                                            ; preds = %bb.zt
  %i.inh = udiv i64 %i.imm, 40                    ; 2 uses
  %i.ini = mul nuw nsw i64 %i.inh, 40             ; 2 uses
  %i.inj = add nuw nsw i64 %i.ini, 40
  %i.ink = icmp samesign uge i64 %i.ine, %i.inj   ; 2 uses
  %i.inl = icmp ugt i64 %i.ind, %i.ini
  %.not.i681 = xor i1 %i.inl, %i.ink
  br i1 %.not.i681, label %bb.zv, label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit

bb.zv:                                            ; preds = %bb.zu, %bb.zt
  %i.inm = and i64 %i.imm, 9223372036854775804    ; 3 uses
  %i.inn = add nuw nsw i64 %i.inm, 4
  %i.ino = icmp samesign uge i64 %i.ine, %i.inn   ; 2 uses
  %i.inp = or disjoint i64 %i.inm, 2              ; 2 uses
  %i.inq = icmp samesign ugt i64 %i.imq, %i.inp
  br i1 %i.inq, label %bb.zx, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.inr = icmp eq i64 %i.imq, %i.inp
  %i.ins = trunc i64 %i.inf to i1
  %i.int = and i1 %i.inr, %i.ins
  br label %bb.zx

bb.zx:                                            ; preds = %bb.zw, %bb.zv
  %i.inu = phi i1 [ true, %bb.zv ], [ %i.int, %bb.zw ]
  %i.inv = icmp ugt i64 %i.ind, %i.inm
  %.not58.i = xor i1 %i.inv, %i.ino
  %i.inw = select i1 %.not58.i, i1 %i.inu, i1 %i.ino
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit: ; preds = %bb.zu, %bb.zx
  %.sink5295 = phi i1 [ %i.inw, %bb.zx ], [ %i.ink, %bb.zu ]
  %.sink5293 = phi i64 [ %i.inf, %bb.zx ], [ %i.inh, %bb.zu ]
  %storemerge.i = phi i32 [ -324, %bb.zx ], [ -323, %bb.zu ]
  %i.inx = zext i1 %.sink5295 to i64
  %i.iny = add nuw nsw i64 %.sink5293, %i.inx     ; 25 uses
  %i.inz = getelementptr inbounds nuw i8, ptr %i.hjg, i64 1 ; 19 uses
  %i.ioa = icmp samesign ugt i64 %i.iny, 999999999999999
  br i1 %i.ioa, label %bb.zy, label %bb.zz

bb.zy:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit
  %i.iob = udiv i64 %i.iny, 100000000             ; 2 uses
  %.neg29.i = mul nuw nsw i64 %i.iob, 4194967296
  %i.ioc = add nuw nsw i64 %.neg29.i, %i.iny      ; 2 uses
  %i.iod = trunc i64 %i.ioc to i32
  %i.ioe = udiv i64 %i.iny, 10000000000000000     ; 2 uses
  %.neg30.i = mul nuw nsw i64 %i.ioe, 4194967296
  %i.iof = add nuw nsw i64 %.neg30.i, %i.iob      ; 2 uses
  %i.iog = trunc i64 %i.iof to i32
  %i.ioh = trunc nuw nsw i64 %i.ioe to i8
  %i.ioi = add nuw nsw i8 %i.ioh, 48
  store i8 %i.ioi, ptr %i.inz, align 1, !tbaa !81
  %i.ioj = icmp samesign ugt i64 %i.iny, 9999999999999999
  %i.iok = zext i1 %i.ioj to i64
  %i.iol = getelementptr inbounds nuw i8, ptr %i.inz, i64 %i.iok ; 9 uses
  %i.iom = and i64 %i.iof, 4294967295
  %i.ion = mul nuw nsw i64 %i.iom, 109951163
  %i.ioo = lshr i64 %i.ion, 40
  %i.iop = trunc nuw nsw i64 %i.ioo to i32        ; 3 uses
  %.neg.i1143 = mul i32 %i.iop, -10000
  %i.ioq = add i32 %.neg.i1143, %i.iog            ; 2 uses
  %i.ior = mul nuw i32 %i.iop, 5243
  %i.ios = lshr i32 %i.ior, 19                    ; 2 uses
  %i.iot = mul i32 %i.ioq, 5243
  %i.iou = lshr i32 %i.iot, 19                    ; 2 uses
  %.neg17.i1144 = mul nsw i32 %i.ios, -100
  %i.iov = add nsw i32 %.neg17.i1144, %i.iop
  %.neg18.i1145 = mul i32 %i.iou, 2147483548
  %i.iow = add i32 %.neg18.i1145, %i.ioq
  %i.iox = shl nuw nsw i32 %i.ios, 1
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
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
  store i8 %i.ara, ptr %i.are, align 1, !tbaa !81
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
  %i.atl = shl i32 %i.ate, 1
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
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !81
  %i.ats = zext i8 %i.atr to i64
  %i.att = zext i32 %.sink4393 to i64
  %i.atu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.att
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !81
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
  %i.auj = shl i32 %i.auc, 1
  %i.auk = zext i32 %i.auj to i64
  %i.aul = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auk
  %i.aum = load i16, ptr %i.aul, align 2
  store i16 %i.aum, ptr %i.aui, align 1
  %i.aun = zext nneg i32 %i.aub to i64
  %i.auo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !81
  %i.auq = zext i8 %i.aup to i64
  %i.aur = zext i32 %i.auc to i64
  %i.aus = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !81
  %i.auu = zext i8 %i.aut to i64
  %.not102.i145.i = icmp eq i32 %i.auc, 0
  %i.auv = add nuw nsw i64 %i.auq, 2
  %i.auw = select i1 %.not102.i145.i, i64 %i.auv, i64 %i.auu
  %i.aux = sub nsw i64 8, %i.auw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

bb.fs:                                            ; preds = %bb.fq
  %i.auy = zext i32 %i.aqx to i64
  %i.auz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !81
  %i.avb = zext i8 %i.ava to i64
  %i.avc = zext i32 %i.aqy to i64
  %i.avd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.avc
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !81
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
  store i8 48, ptr %i.aee, align 1, !tbaa !81
  %i.avl = getelementptr inbounds nuw i8, ptr %i.aee, i64 1
  store i8 46, ptr %i.avl, align 1, !tbaa !81
  %i.avm = icmp slt i32 %i.aqj, 0
  br i1 %i.avm, label %.lr.ph2310.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

.lr.ph2310.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i
  %i.avn = getelementptr i8, ptr %i.aee, i64 2
  %narrow3146 = sub nsw i32 0, %i.aqj
  %i.avo = zext nneg i32 %narrow3146 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.avn, i8 48, i64 %i.avo, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ft:                                            ; preds = %bb.fl
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aee, i8 48, i64 24, i1 false)
  store i8 %i.ara, ptr %i.avp, align 1, !tbaa !81
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
  %i.axw = shl i32 %i.axp, 1
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
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !81
  %i.ayd = zext i8 %i.ayc to i64
  %i.aye = zext i32 %.sink4409 to i64
  %i.ayf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aye
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !81
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
  %i.ayu = shl i32 %i.ayn, 1
  %i.ayv = zext i32 %i.ayu to i64
  %i.ayw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayv
  %i.ayx = load i16, ptr %i.ayw, align 2
  store i16 %i.ayx, ptr %i.ayt, align 1
  %i.ayy = zext nneg i32 %i.aym to i64
  %i.ayz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayy
  %i.aza = load i8, ptr %i.ayz, align 1, !tbaa !81
  %i.azb = zext i8 %i.aza to i64
  %i.azc = zext i32 %i.ayn to i64
  %i.azd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azc
  %i.aze = load i8, ptr %i.azd, align 1, !tbaa !81
  %i.azf = zext i8 %i.aze to i64
  %.not102.i166.i = icmp eq i32 %i.ayn, 0
  %i.azg = add nuw nsw i64 %i.azb, 2
  %i.azh = select i1 %.not102.i166.i, i64 %i.azg, i64 %i.azf
  %i.azi = sub nsw i64 8, %i.azh
  br label %._crit_edge2308

bb.fz:                                            ; preds = %bb.fx
  %i.azj = zext i32 %i.aqx to i64
  %i.azk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azj
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !81
  %i.azm = zext i8 %i.azl to i64
  %i.azn = zext i32 %i.aqy to i64
  %i.azo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azn
  %i.azp = load i8, ptr %i.azo, align 1, !tbaa !81
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
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aee, ptr align 1 %scevgep2901, i64 %i.azx, i1 false), !tbaa !81
  %i.azy = zext nneg i32 %i.aqj to i64
  %i.azz = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.azy ; 2 uses
  store i8 46, ptr %i.azz, align 1, !tbaa !81
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 2 ; 2 uses
  %i.bab = icmp ult ptr %i.baa, %i.azv
  %spec.select = select i1 %i.bab, ptr %i.azv, ptr %i.baa
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ga:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i
  %.ptr1002 = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 3 uses
  store i8 %i.ara, ptr %.ptr1002, align 1, !tbaa !81
  %.not1007 = icmp eq i32 %i.aqw, 0               ; 2 uses
  %.add997 = select i1 %.not1007, i64 1, i64 2    ; 2 uses
  %.ptr1003 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add997
  %i.bac = icmp ult i32 %i.aqx, 10
  %i.bad = and i1 %.not1007, %i.bac               ; 2 uses
  %i.bae = shl nsw i32 %i.aqx, 1
  %i.baf = zext i32 %i.bae to i64
  %i.bag = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.baf
  %.neg98.i173.i = sext i1 %i.bad to i64
  %i.bah = zext i1 %i.bad to i64
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bag, i64 %i.bah
  %i.baj = load i16, ptr %i.bai, align 1
  store i16 %i.baj, ptr %.ptr1003, align 1
  %.add998 = add nsw i64 %.add997, %.neg98.i173.i ; 2 uses
  %.ptr1004 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add998 ; 9 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 2
  %i.bal = shl nsw i32 %i.aqy, 1
  %i.bam = zext i32 %i.bal to i64
  %i.ban = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bam
  %i.bao = load i16, ptr %i.ban, align 2
  store i16 %i.bao, ptr %i.bak, align 1
  %.not.i174.i = icmp eq i32 %i.aqo, 0
  br i1 %.not.i174.i, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bap = mul i32 %i.aqq, 5243
  %i.baq = lshr i32 %i.bap, 19                    ; 2 uses
  %.neg103.i175.i = mul i32 %i.baq, 2147483548
  %i.bar = add i32 %.neg103.i175.i, %i.aqq
  %i.bas = and i64 %i.aqn, 4294967295
  %i.bat = mul nuw nsw i64 %i.bas, 109951163
  %i.bau = lshr i64 %i.bat, 40
  %i.bav = trunc nuw nsw i64 %i.bau to i32        ; 3 uses
  %.neg104.i176.i = mul i32 %i.bav, -10000
  %i.baw = add i32 %.neg104.i176.i, %i.aqo        ; 3 uses
  %i.bax = mul nuw i32 %i.bav, 5243
  %i.bay = lshr i32 %i.bax, 19                    ; 3 uses
  %.neg105.i177.i = mul nsw i32 %i.bay, -100
  %i.baz = add nsw i32 %.neg105.i177.i, %i.bav    ; 3 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 4
  %i.bbb = shl nuw nsw i32 %i.baq, 1
  %i.bbc = zext nneg i32 %i.bbb to i64
  %i.bbd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbc
  %i.bbe = load i16, ptr %i.bbd, align 2
  store i16 %i.bbe, ptr %i.bba, align 1
  %i.bbf = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 6
  %i.bbg = shl i32 %i.bar, 1
  %i.bbh = zext i32 %i.bbg to i64
  %i.bbi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbh
  %i.bbj = load i16, ptr %i.bbi, align 2
  store i16 %i.bbj, ptr %i.bbf, align 1
  %i.bbk = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 8
  %i.bbl = shl nuw nsw i32 %i.bay, 1
  %i.bbm = zext nneg i32 %i.bbl to i64
  %i.bbn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbm
  %i.bbo = load i16, ptr %i.bbn, align 2
  store i16 %i.bbo, ptr %i.bbk, align 1
  %i.bbp = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 10
  %i.bbq = shl nsw i32 %i.baz, 1
  %i.bbr = zext i32 %i.bbq to i64
  %i.bbs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbr
  %i.bbt = load i16, ptr %i.bbs, align 2
  store i16 %i.bbt, ptr %i.bbp, align 1
  %.not106.i178.i = icmp eq i32 %i.baw, 0
  br i1 %.not106.i178.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bbu = mul i32 %i.baw, 5243
  %i.bbv = lshr i32 %i.bbu, 19                    ; 3 uses
  %.neg108.i179.i = mul nsw i32 %i.bbv, -100
  %i.bbw = add i32 %.neg108.i179.i, %i.baw        ; 3 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 12
  %i.bby = shl nuw nsw i32 %i.bbv, 1
  %i.bbz = zext nneg i32 %i.bby to i64
  %i.bca = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbz
  %i.bcb = load i16, ptr %i.bca, align 2
  store i16 %i.bcb, ptr %i.bbx, align 1
  %i.bcc = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 14
  %i.bcd = shl i32 %i.bbw, 1
  %i.bce = zext i32 %i.bcd to i64
  %i.bcf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bce
  %i.bcg = load i16, ptr %i.bcf, align 2
  store i16 %i.bcg, ptr %i.bcc, align 1
  %i.bch = zext nneg i32 %i.bbv to i64
  %i.bci = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bch
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !81
  %i.bck = zext i8 %i.bcj to i64
  %i.bcl = zext i32 %i.bbw to i64
  %i.bcm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcl
  %i.bcn = load i8, ptr %i.bcm, align 1, !tbaa !81
  %i.bco = zext i8 %i.bcn to i64
  %.not109.i180.i = icmp eq i32 %i.bbw, 0
  %i.bcp = add nuw nsw i64 %i.bck, 2
  %i.bcq = select i1 %.not109.i180.i, i64 %i.bcp, i64 %i.bco
  %i.bcr = sub nsw i64 16, %i.bcq
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.gd:                                            ; preds = %bb.gb
  %i.bcs = zext nneg i32 %i.bay to i64
  %i.bct = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcs
  %i.bcu = load i8, ptr %i.bct, align 1, !tbaa !81
  %i.bcv = zext i8 %i.bcu to i64
  %i.bcw = zext i32 %i.baz to i64
  %i.bcx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcw
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !81
  %i.bcz = zext i8 %i.bcy to i64
  %.not107.i185.i = icmp eq i32 %i.baz, 0
  %i.bda = add nuw nsw i64 %i.bcv, 2
  %i.bdb = select i1 %.not107.i185.i, i64 %i.bda, i64 %i.bcz
  %i.bdc = sub nsw i64 12, %i.bdb
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.ge:                                            ; preds = %bb.ga
  %.not99.i186.i = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i186.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bdd = mul i32 %i.aqq, 5243
  %i.bde = lshr i32 %i.bdd, 19                    ; 3 uses
  %.neg101.i187.i = mul nsw i32 %i.bde, -100
  %i.bdf = add i32 %.neg101.i187.i, %i.aqq        ; 3 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 4
  %i.bdh = shl nuw nsw i32 %i.bde, 1
  %i.bdi = zext nneg i32 %i.bdh to i64
  %i.bdj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdi
  %i.bdk = load i16, ptr %i.bdj, align 2
  store i16 %i.bdk, ptr %i.bdg, align 1
  %i.bdl = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 6
  %i.bdm = shl i32 %i.bdf, 1
  %i.bdn = zext i32 %i.bdm to i64
  %i.bdo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdn
  %i.bdp = load i16, ptr %i.bdo, align 2
  store i16 %i.bdp, ptr %i.bdl, align 1
  %i.bdq = zext nneg i32 %i.bde to i64
  %i.bdr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdq
  %i.bds = load i8, ptr %i.bdr, align 1, !tbaa !81
  %i.bdt = zext i8 %i.bds to i64
  %i.bdu = zext i32 %i.bdf to i64
  %i.bdv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdu
  %i.bdw = load i8, ptr %i.bdv, align 1, !tbaa !81
  %i.bdx = zext i8 %i.bdw to i64
  %.not102.i188.i = icmp eq i32 %i.bdf, 0
  %i.bdy = add nuw nsw i64 %i.bdt, 2
  %i.bdz = select i1 %.not102.i188.i, i64 %i.bdy, i64 %i.bdx
  %i.bea = sub nsw i64 8, %i.bdz
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.gg:                                            ; preds = %bb.ge
  %i.beb = zext i32 %i.aqx to i64
  %i.bec = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.beb
  %i.bed = load i8, ptr %i.bec, align 1, !tbaa !81
  %i.bee = zext i8 %i.bed to i64
  %i.bef = zext i32 %i.aqy to i64
  %i.beg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bef
  %i.beh = load i8, ptr %i.beg, align 1, !tbaa !81
  %i.bei = zext i8 %i.beh to i64
  %.not100.i189.i = icmp eq i32 %i.aqy, 0
  %i.bej = select i1 %.not100.i189.i, i64 %i.bee, i64 0
  %i.bek = add nuw nsw i64 %i.bej, %i.bei
  %i.bel = sub nsw i64 4, %i.bek
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i: ; preds = %bb.gc, %bb.gd, %bb.gg, %bb.gf
  %.pn.i182.i.pn.in = phi i64 [ %i.bel, %bb.gg ], [ %i.bea, %bb.gf ], [ %i.bcr, %bb.gc ], [ %i.bdc, %bb.gd ]
  %.pn.i182.i.pn = and i64 %.pn.i182.i.pn.in, 4294967295
  %.1.i184.i.idx = add nuw nsw i64 %.pn.i182.i.pn, %.add998 ; 2 uses
  %.1.i184.i.ptr = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.1.i184.i.idx
  %i.bem = icmp eq i64 %.1.i184.i.idx, 2
  %.neg130.i.i = sext i1 %i.bem to i64
  %i.ben = getelementptr inbounds i8, ptr %.1.i184.i.ptr, i64 %.neg130.i.i ; 2 uses
  %i.beo = add nsw i32 %i.aqj, -1                 ; 2 uses
  %i.bep = load i8, ptr %.ptr1002, align 1, !tbaa !81
  store i8 %i.bep, ptr %i.aee, align 1, !tbaa !81
  store i8 46, ptr %.ptr1002, align 1, !tbaa !81
  store i8 101, ptr %i.ben, align 1, !tbaa !81
  %i.beq = getelementptr inbounds nuw i8, ptr %i.ben, i64 1 ; 2 uses
  store i8 45, ptr %i.beq, align 1, !tbaa !81
  %.lobit.i191.i = lshr i32 %i.beo, 31
  %i.ber = zext nneg i32 %.lobit.i191.i to i64
  %i.bes = getelementptr inbounds nuw i8, ptr %i.beq, i64 %i.ber ; 5 uses
  %i.bet = tail call i32 @llvm.abs.i32(i32 %i.beo, i1 true) ; 5 uses
  %i.beu = icmp samesign ult i32 %i.bet, 100
  br i1 %i.beu, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i
  %i.bev = icmp samesign ult i32 %i.bet, 10       ; 2 uses
  %i.bew = shl nuw nsw i32 %i.bet, 1
  %i.bex = zext nneg i32 %i.bew to i64
  %i.bey = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bex
  %.neg22.i.i = sext i1 %i.bev to i64
  %i.bez = zext i1 %i.bev to i64
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bey, i64 %i.bez
  %i.bfb = load i16, ptr %i.bfa, align 1
  store i16 %i.bfb, ptr %i.bes, align 1
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bes, i64 2
  %i.bfd = getelementptr inbounds i8, ptr %i.bfc, i64 %.neg22.i.i
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.gi:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i
  %i.bfe = mul nuw nsw i32 %i.bet, 656
  %i.bff = lshr i32 %i.bfe, 16                    ; 2 uses
  %.neg.i192.i = mul i32 %i.bff, 2147483548
  %i.bfg = add i32 %.neg.i192.i, %i.bet
  %i.bfh = trunc nuw nsw i32 %i.bff to i8
  %i.bfi = add nuw nsw i8 %i.bfh, 48
  store i8 %i.bfi, ptr %i.bes, align 1, !tbaa !81
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bes, i64 1
  %i.bfk = shl i32 %i.bfg, 1
  %i.bfl = zext i32 %i.bfk to i64
  %i.bfm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bfl
  %i.bfn = load i16, ptr %i.bfm, align 2
  store i16 %i.bfn, ptr %i.bfj, align 1
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bes, i64 3
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.gj:                                            ; preds = %bb.en
  %i.bfp = shl nuw nsw i64 %i.ads, 5              ; 3 uses
  %i.bfq = or disjoint i64 %i.bfp, 16
  %i.bfr = add nsw i64 %i.bfp, -16
  %i.bfs = zext i64 %i.bfr to i128                ; 2 uses
  %i.bft = mul nuw nsw i128 %i.bfs, 7784369436827535058
  %i.bfu = lshr i128 %i.bft, 64
  %i.bfv = mul nuw i128 %i.bfs, 11392378155556871081
  %i.bfw = add nuw i128 %i.bfu, %i.bfv            ; 2 uses
  %i.bfx = lshr i128 %i.bfw, 64
  %i.bfy = trunc nuw i128 %i.bfx to i64
  %i.bfz = and i128 %i.bfw, 18446744073709551614
  %i.bga = icmp ne i128 %i.bfz, 0
  %i.bgb = zext i1 %i.bga to i64
  %i.bgc = or i64 %i.bgb, %i.bfy
  %i.bgd = zext nneg i64 %i.bfp to i128           ; 2 uses
  %i.bge = mul nuw nsw i128 %i.bgd, 7784369436827535058
  %i.bgf = lshr i128 %i.bge, 64
  %i.bgg = mul nuw nsw i128 %i.bgd, 11392378155556871081
  %i.bgh = add nuw nsw i128 %i.bgf, %i.bgg        ; 2 uses
  %i.bgi = lshr i128 %i.bgh, 64
  %i.bgj = trunc nuw nsw i128 %i.bgi to i64       ; 5 uses
  %i.bgk = and i128 %i.bgh, 18446744073709551614
  %i.bgl = icmp ne i128 %i.bgk, 0
  %i.bgm = zext i1 %i.bgl to i64
  %i.bgn = or i64 %i.bgm, %i.bgj                  ; 2 uses
  %i.bgo = zext nneg i64 %i.bfq to i128           ; 2 uses
  %i.bgp = mul nuw nsw i128 %i.bgo, 7784369436827535058
  %i.bgq = lshr i128 %i.bgp, 64
  %i.bgr = mul nuw nsw i128 %i.bgo, 11392378155556871081
  %i.bgs = add nuw nsw i128 %i.bgq, %i.bgr        ; 2 uses
  %i.bgt = lshr i128 %i.bgs, 64
  %i.bgu = trunc nuw nsw i128 %i.bgt to i64
  %i.bgv = and i128 %i.bgs, 18446744073709551614
  %i.bgw = icmp ne i128 %i.bgv, 0
  %i.bgx = zext i1 %i.bgw to i64
  %i.bgy = or i64 %i.bgx, %i.bgu
  %i.bgz = and i64 %i.adr, 1                      ; 2 uses
  %i.bha = add nuw i64 %i.bgc, %i.bgz             ; 2 uses
  %i.bhb = sub nuw nsw i64 %i.bgy, %i.bgz         ; 2 uses
  %i.bhc = lshr i64 %i.bgj, 2                     ; 2 uses
  %i.bhd = icmp samesign ugt i64 %i.bgj, 39
  br i1 %i.bhd, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.bhe = udiv i64 %i.bgj, 40                    ; 2 uses
  %i.bhf = mul nuw nsw i64 %i.bhe, 40             ; 2 uses
  %i.bhg = add nuw nsw i64 %i.bhf, 40
  %i.bhh = icmp samesign uge i64 %i.bhb, %i.bhg   ; 2 uses
  %i.bhi = icmp ugt i64 %i.bha, %i.bhf
  %.not.i131.i = xor i1 %i.bhi, %i.bhh
  br i1 %.not.i131.i, label %bb.gl, label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.bhj = and i64 %i.bgj, 9223372036854775804    ; 3 uses
  %i.bhk = add nuw nsw i64 %i.bhj, 4
  %i.bhl = icmp samesign uge i64 %i.bhb, %i.bhk   ; 2 uses
  %i.bhm = or disjoint i64 %i.bhj, 2              ; 2 uses
  %i.bhn = icmp samesign ugt i64 %i.bgn, %i.bhm
  br i1 %i.bhn, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.bho = icmp eq i64 %i.bgn, %i.bhm
  %i.bhp = trunc i64 %i.bhc to i1
  %i.bhq = and i1 %i.bho, %i.bhp
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.bhr = phi i1 [ true, %bb.gl ], [ %i.bhq, %bb.gm ]
  %i.bhs = icmp ugt i64 %i.bha, %i.bhj
  %.not58.i.i = xor i1 %i.bhs, %i.bhl
  %i.bht = select i1 %.not58.i.i, i1 %i.bhr, i1 %i.bhl
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i: ; preds = %bb.gk, %bb.gn
  %.sink4418 = phi i1 [ %i.bht, %bb.gn ], [ %i.bhh, %bb.gk ]
  %.sink4416 = phi i64 [ %i.bhc, %bb.gn ], [ %i.bhe, %bb.gk ]
  %storemerge.i.i = phi i32 [ -324, %bb.gn ], [ -323, %bb.gk ]
  %i.bhu = zext i1 %.sink4418 to i64
  %i.bhv = add nuw nsw i64 %.sink4416, %i.bhu     ; 25 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 19 uses
  %i.bhx = icmp samesign ugt i64 %i.bhv, 999999999999999
  br i1 %i.bhx, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i
  %i.bhy = udiv i64 %i.bhv, 100000000             ; 2 uses
  %.neg29.i.i = mul nuw nsw i64 %i.bhy, 4194967296
  %i.bhz = add nuw nsw i64 %.neg29.i.i, %i.bhv    ; 2 uses
  %i.bia = trunc i64 %i.bhz to i32
  %i.bib = udiv i64 %i.bhv, 10000000000000000     ; 2 uses
  %.neg30.i.i = mul nuw nsw i64 %i.bib, 4194967296
  %i.bic = add nuw nsw i64 %.neg30.i.i, %i.bhy    ; 2 uses
  %i.bid = trunc i64 %i.bic to i32
  %i.bie = trunc nuw nsw i64 %i.bib to i8
  %i.bif = add nuw nsw i8 %i.bie, 48
  store i8 %i.bif, ptr %i.bhw, align 1, !tbaa !81
  %i.big = icmp samesign ugt i64 %i.bhv, 9999999999999999
  %i.bih = zext i1 %i.big to i64
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bhw, i64 %i.bih ; 9 uses
  %i.bij = and i64 %i.bic, 4294967295
  %i.bik = mul nuw nsw i64 %i.bij, 109951163
  %i.bil = lshr i64 %i.bik, 40
  %i.bim = trunc nuw nsw i64 %i.bil to i32        ; 3 uses
  %.neg.i259.i = mul i32 %i.bim, -10000
  %i.bin = add i32 %.neg.i259.i, %i.bid           ; 2 uses
  %i.bio = mul nuw i32 %i.bim, 5243
  %i.bip = lshr i32 %i.bio, 19                    ; 2 uses
  %i.biq = mul i32 %i.bin, 5243
  %i.bir = lshr i32 %i.biq, 19                    ; 2 uses
  %.neg17.i260.i = mul nsw i32 %i.bip, -100
  %i.bis = add nsw i32 %.neg17.i260.i, %i.bim
  %.neg18.i261.i = mul i32 %i.bir, 2147483548
  %i.bit = add i32 %.neg18.i261.i, %i.bin
  %i.biu = shl nuw nsw i32 %i.bip, 1
end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.dzc = mul nuw i128 %i.dzb, %i.dza
  %i.dzd = lshr i128 %i.dzc, 64
  %i.dze = zext i64 %i.dyr to i128                ; 3 uses
  %i.dzf = mul nuw i128 %i.dze, %i.dza
  %i.dzg = add nuw i128 %i.dzd, %i.dzf            ; 2 uses
  %i.dzh = lshr i128 %i.dzg, 64
  %i.dzi = trunc nuw i128 %i.dzh to i64
  %i.dzj = and i128 %i.dzg, 18446744073709551614
  %i.dzk = icmp ne i128 %i.dzj, 0
  %i.dzl = zext i1 %i.dzk to i64
  %i.dzm = or i64 %i.dzl, %i.dzi
  %i.dzn = shl i64 %i.dyb, %i.dyy
  %i.dzo = zext i64 %i.dzn to i128                ; 2 uses
  %i.dzp = mul nuw i128 %i.dzb, %i.dzo
  %i.dzq = lshr i128 %i.dzp, 64
  %i.dzr = mul nuw i128 %i.dze, %i.dzo
  %i.dzs = add nuw i128 %i.dzq, %i.dzr            ; 2 uses
  %i.dzt = lshr i128 %i.dzs, 64
  %i.dzu = trunc nuw i128 %i.dzt to i64           ; 5 uses
  %i.dzv = and i128 %i.dzs, 18446744073709551614
  %i.dzw = icmp ne i128 %i.dzv, 0
  %i.dzx = zext i1 %i.dzw to i64
  %i.dzy = or i64 %i.dzx, %i.dzu                  ; 2 uses
  %i.dzz = shl i64 %i.dyf, %i.dyy
  %i.eaa = zext i64 %i.dzz to i128                ; 2 uses
  %i.eab = mul nuw i128 %i.dzb, %i.eaa
  %i.eac = lshr i128 %i.eab, 64
  %i.ead = mul nuw i128 %i.dze, %i.eaa
  %i.eae = add nuw i128 %i.eac, %i.ead            ; 2 uses
  %i.eaf = lshr i128 %i.eae, 64
  %i.eag = trunc nuw i128 %i.eaf to i64
  %i.eah = and i128 %i.eae, 18446744073709551614
  %i.eai = icmp ne i128 %i.eah, 0
  %i.eaj = zext i1 %i.eai to i64
  %i.eak = or i64 %i.eaj, %i.eag
  %i.eal = and i64 %i.doz, 1                      ; 2 uses
  %i.eam = add i64 %i.dzm, %i.eal                 ; 2 uses
  %i.ean = sub i64 %i.eak, %i.eal                 ; 2 uses
  %i.eao = lshr i64 %i.dzu, 2                     ; 2 uses
  %i.eap = icmp ugt i64 %i.dzu, 39
  br i1 %i.eap, label %bb.os, label %bb.ou

bb.os:                                            ; preds = %bb.or
  %i.eaq = udiv i64 %i.dzu, 40                    ; 2 uses
  %i.ear = mul nuw i64 %i.eaq, 40                 ; 2 uses
  %i.eas = add i64 %i.ear, 40
  %i.eat = icmp uge i64 %i.ean, %i.eas            ; 2 uses
  %i.eau = icmp ugt i64 %i.eam, %i.ear
  %.not.i694.i = xor i1 %i.eau, %i.eat
  br i1 %.not.i694.i, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.eav = zext i1 %i.eat to i64
  %i.eaw = add nuw nsw i64 %i.eaq, %i.eav
  %i.eax = add nsw i32 %i.dyj, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695.i

bb.ou:                                            ; preds = %bb.os, %bb.or
  %i.eay = and i64 %i.dzu, -4                     ; 3 uses
  %i.eaz = add i64 %i.eay, 4
  %i.eba = icmp uge i64 %i.ean, %i.eaz            ; 2 uses
  %i.ebb = or disjoint i64 %i.eay, 2              ; 2 uses
  %i.ebc = icmp ugt i64 %i.dzy, %i.ebb
  br i1 %i.ebc, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.ebd = icmp eq i64 %i.dzy, %i.ebb
  %i.ebe = trunc i64 %i.eao to i1
  %i.ebf = and i1 %i.ebd, %i.ebe
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou
  %i.ebg = phi i1 [ true, %bb.ou ], [ %i.ebf, %bb.ov ]
  %i.ebh = icmp ugt i64 %i.eam, %i.eay
  %.not58.i692.i = xor i1 %i.ebh, %i.eba
  %i.ebi = select i1 %.not58.i692.i, i1 %i.ebg, i1 %i.eba
  %i.ebj = zext i1 %i.ebi to i64
  %i.ebk = add nuw nsw i64 %i.eao, %i.ebj
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695.i

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695.i: ; preds = %bb.ow, %bb.ot
  %.0782 = phi i64 [ %i.ebk, %bb.ow ], [ %i.eaw, %bb.ot ] ; 8 uses
  %storemerge.i693.i = phi i32 [ %i.dyj, %bb.ow ], [ %i.eax, %bb.ot ]
  %i.ebl = icmp samesign ult i64 %.0782, 10000000000000000
  %i.ebm = select i1 %i.ebl, i32 16, i32 17
  %i.ebn = icmp samesign ult i64 %.0782, 1000000000000000
  %.neg129.i.i35 = sext i1 %i.ebn to i32
  %i.ebo = add nsw i32 %i.ebm, %.neg129.i.i35
  %i.ebp = add nsw i32 %i.ebo, %storemerge.i693.i ; 8 uses
  %i.ebq = add nsw i32 %i.ebp, 5
  %or.cond3.i.i36 = icmp ult i32 %i.ebq, 27
  br i1 %or.cond3.i.i36, label %bb.ox, label %bb.pm

bb.ox:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695.i
  %i.ebr = icmp slt i32 %i.ebp, 1
  br i1 %i.ebr, label %bb.oy, label %bb.pf

bb.oy:                                            ; preds = %bb.ox
  %i.ebs = sub nsw i32 2, %i.ebp
  %i.ebt = zext nneg i32 %i.ebs to i64
  %i.ebu = getelementptr inbounds nuw i8, ptr %i.dpk, i64 %i.ebt ; 2 uses
  %i.ebv = udiv i64 %.0782, 100000000             ; 2 uses
  %i.ebw = trunc i64 %i.ebv to i32                ; 2 uses
  %.neg.i696.i = mul i64 %i.ebv, 4194967296
  %i.ebx = add i64 %.neg.i696.i, %.0782           ; 2 uses
  %i.eby = trunc i64 %i.ebx to i32                ; 2 uses
  %i.ebz = udiv i32 %i.ebw, 10000                 ; 3 uses
  %.neg95.i.i43 = mul i32 %i.ebz, -10000
  %i.eca = add i32 %.neg95.i.i43, %i.ebw          ; 5 uses
  %i.ecb = zext nneg i32 %i.ebz to i64
  %i.ecc = mul nuw nsw i64 %i.ecb, 167773
  %i.ecd = lshr i64 %i.ecc, 24
  %i.ece = trunc nuw nsw i64 %i.ecd to i32        ; 3 uses
  %i.ecf = mul nuw nsw i32 %i.ece, 41
  %i.ecg = lshr i32 %i.ecf, 12                    ; 4 uses
  %.neg96.i.i44 = mul nsw i32 %i.ecg, -100
  %i.ech = add nsw i32 %.neg96.i.i44, %i.ece      ; 3 uses
  %.neg97.i.i45 = mul nsw i32 %i.ece, -100
  %i.eci = add nsw i32 %.neg97.i.i45, %i.ebz      ; 3 uses
  %i.ecj = trunc nuw nsw i32 %i.ecg to i8
  %i.eck = add nuw nsw i8 %i.ecj, 48
  store i8 %i.eck, ptr %i.ebu, align 1, !tbaa !81
  %i.ecl = icmp ne i32 %i.ecg, 0
  %i.ecm = zext i1 %i.ecl to i64
  %i.ecn = getelementptr inbounds nuw i8, ptr %i.ebu, i64 %i.ecm ; 2 uses
  %i.eco = icmp ult i32 %i.ech, 10
  %i.ecp = icmp eq i32 %i.ecg, 0
  %i.ecq = and i1 %i.ecp, %i.eco                  ; 2 uses
  %i.ecr = shl nsw i32 %i.ech, 1
  %i.ecs = zext i32 %i.ecr to i64
  %i.ect = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ecs
  %.neg98.i.i46 = sext i1 %i.ecq to i64
  %i.ecu = zext i1 %i.ecq to i64
  %i.ecv = getelementptr inbounds nuw i8, ptr %i.ect, i64 %i.ecu
  %i.ecw = load i16, ptr %i.ecv, align 1
  store i16 %i.ecw, ptr %i.ecn, align 1
  %i.ecx = getelementptr inbounds i8, ptr %i.ecn, i64 %.neg98.i.i46 ; 10 uses
  %i.ecy = getelementptr inbounds nuw i8, ptr %i.ecx, i64 2
  %i.ecz = shl nsw i32 %i.eci, 1
  %i.eda = zext i32 %i.ecz to i64
  %i.edb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eda
  %i.edc = load i16, ptr %i.edb, align 2
  store i16 %i.edc, ptr %i.ecy, align 1
  %.not.i697.i = icmp eq i32 %i.eby, 0
  br i1 %.not.i697.i, label %bb.pc, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.edd = mul i32 %i.eca, 5243
  %i.ede = lshr i32 %i.edd, 19                    ; 2 uses
  %.neg103.i.i47 = mul i32 %i.ede, 2147483548
  %i.edf = add i32 %.neg103.i.i47, %i.eca
  %i.edg = and i64 %i.ebx, 4294967295
  %i.edh = mul nuw nsw i64 %i.edg, 109951163
  %i.edi = lshr i64 %i.edh, 40
  %i.edj = trunc nuw nsw i64 %i.edi to i32        ; 3 uses
  %.neg104.i.i48 = mul i32 %i.edj, -10000
  %i.edk = add i32 %.neg104.i.i48, %i.eby         ; 3 uses
  %i.edl = mul nuw i32 %i.edj, 5243
  %i.edm = lshr i32 %i.edl, 19                    ; 3 uses
  %.neg105.i.i49 = mul nsw i32 %i.edm, -100
  %i.edn = add nsw i32 %.neg105.i.i49, %i.edj     ; 2 uses
  %i.edo = getelementptr inbounds nuw i8, ptr %i.ecx, i64 4
  %i.edp = shl nuw nsw i32 %i.ede, 1
  %i.edq = zext nneg i32 %i.edp to i64
  %i.edr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edq
  %i.eds = load i16, ptr %i.edr, align 2
  store i16 %i.eds, ptr %i.edo, align 1
  %i.edt = getelementptr inbounds nuw i8, ptr %i.ecx, i64 6
  %i.edu = shl i32 %i.edf, 1
  %i.edv = zext i32 %i.edu to i64
  %i.edw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edv
  %i.edx = load i16, ptr %i.edw, align 2
  store i16 %i.edx, ptr %i.edt, align 1
  %i.edy = getelementptr inbounds nuw i8, ptr %i.ecx, i64 8
  %i.edz = shl nuw nsw i32 %i.edm, 1
  %i.eea = zext nneg i32 %i.edz to i64
  %i.eeb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eea
  %i.eec = load i16, ptr %i.eeb, align 2
  store i16 %i.eec, ptr %i.edy, align 1
  %i.eed = getelementptr inbounds nuw i8, ptr %i.ecx, i64 10
  %i.eee = shl nsw i32 %i.edn, 1
  %i.eef = zext i32 %i.eee to i64
  %i.eeg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eef
  %i.eeh = load i16, ptr %i.eeg, align 2
  store i16 %i.eeh, ptr %i.eed, align 1
  %.not106.i.i50 = icmp eq i32 %i.edk, 0
  br i1 %.not106.i.i50, label %bb.pb, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.eei = mul i32 %i.edk, 5243
  %i.eej = lshr i32 %i.eei, 19                    ; 3 uses
  %.neg108.i.i51 = mul nsw i32 %i.eej, -100
  %i.eek = add i32 %.neg108.i.i51, %i.edk         ; 2 uses
  %i.eel = getelementptr inbounds nuw i8, ptr %i.ecx, i64 12
  %i.eem = shl nuw nsw i32 %i.eej, 1
  %i.een = zext nneg i32 %i.eem to i64
  %i.eeo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.een
  %i.eep = load i16, ptr %i.eeo, align 2
  store i16 %i.eep, ptr %i.eel, align 1
  %i.eeq = getelementptr inbounds nuw i8, ptr %i.ecx, i64 14
  %i.eer = shl i32 %i.eek, 1
  %i.ees = zext i32 %i.eer to i64
  %i.eet = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ees
  %i.eeu = load i16, ptr %i.eet, align 2
  store i16 %i.eeu, ptr %i.eeq, align 1
  br label %bb.pb

bb.pb:                                            ; preds = %bb.oz, %bb.pa
  %.sink4433 = phi i32 [ %i.eej, %bb.pa ], [ %i.edm, %bb.oz ]
  %.sink4429 = phi i32 [ %i.eek, %bb.pa ], [ %i.edn, %bb.oz ] ; 2 uses
  %.sink4420 = phi i64 [ 16, %bb.pa ], [ 12, %bb.oz ]
  %i.eev = zext nneg i32 %.sink4433 to i64
  %i.eew = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eev
  %i.eex = load i8, ptr %i.eew, align 1, !tbaa !81
  %i.eey = zext i8 %i.eex to i64
  %i.eez = zext i32 %.sink4429 to i64
  %i.efa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eez
  %i.efb = load i8, ptr %i.efa, align 1, !tbaa !81
  %i.efc = zext i8 %i.efb to i64
  %.not107.i.i56 = icmp eq i32 %.sink4429, 0
  %i.efd = add nuw nsw i64 %i.eey, 2
  %i.efe = select i1 %.not107.i.i56, i64 %i.efd, i64 %i.efc
  %i.eff = sub nsw i64 %.sink4420, %i.efe
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54

bb.pc:                                            ; preds = %bb.oy
  %.not99.i.i57 = icmp eq i32 %i.eca, 0
  br i1 %.not99.i.i57, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.efg = mul i32 %i.eca, 5243
  %i.efh = lshr i32 %i.efg, 19                    ; 3 uses
  %.neg101.i.i58 = mul nsw i32 %i.efh, -100
  %i.efi = add i32 %.neg101.i.i58, %i.eca         ; 3 uses
  %i.efj = getelementptr inbounds nuw i8, ptr %i.ecx, i64 4
  %i.efk = shl nuw nsw i32 %i.efh, 1
  %i.efl = zext nneg i32 %i.efk to i64
  %i.efm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efl
  %i.efn = load i16, ptr %i.efm, align 2
  store i16 %i.efn, ptr %i.efj, align 1
  %i.efo = getelementptr inbounds nuw i8, ptr %i.ecx, i64 6
  %i.efp = shl i32 %i.efi, 1
  %i.efq = zext i32 %i.efp to i64
  %i.efr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efq
  %i.efs = load i16, ptr %i.efr, align 2
  store i16 %i.efs, ptr %i.efo, align 1
  %i.eft = zext nneg i32 %i.efh to i64
  %i.efu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eft
  %i.efv = load i8, ptr %i.efu, align 1, !tbaa !81
  %i.efw = zext i8 %i.efv to i64
  %i.efx = zext i32 %i.efi to i64
  %i.efy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efx
  %i.efz = load i8, ptr %i.efy, align 1, !tbaa !81
  %i.ega = zext i8 %i.efz to i64
  %.not102.i.i59 = icmp eq i32 %i.efi, 0
  %i.egb = add nuw nsw i64 %i.efw, 2
  %i.egc = select i1 %.not102.i.i59, i64 %i.egb, i64 %i.ega
  %i.egd = sub nsw i64 8, %i.egc
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54

bb.pe:                                            ; preds = %bb.pc
  %i.ege = zext i32 %i.ech to i64
  %i.egf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ege
  %i.egg = load i8, ptr %i.egf, align 1, !tbaa !81
  %i.egh = zext i8 %i.egg to i64
  %i.egi = zext i32 %i.eci to i64
  %i.egj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.egi
  %i.egk = load i8, ptr %i.egj, align 1, !tbaa !81
  %i.egl = zext i8 %i.egk to i64
  %.not100.i.i60 = icmp eq i32 %i.eci, 0
  %i.egm = select i1 %.not100.i.i60, i64 %i.egh, i64 0
  %i.egn = add nuw nsw i64 %i.egm, %i.egl
  %i.ego = sub nsw i64 4, %i.egn
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54: ; preds = %bb.pe, %bb.pd, %bb.pb
  %.sink4435 = phi i64 [ %i.ego, %bb.pe ], [ %i.egd, %bb.pd ], [ %i.eff, %bb.pb ]
  %i.egp = and i64 %.sink4435, 4294967295
  %i.egq = getelementptr inbounds nuw i8, ptr %i.ecx, i64 %i.egp ; 2 uses
  store i8 48, ptr %i.dpk, align 1, !tbaa !81
  %i.egr = getelementptr inbounds nuw i8, ptr %i.dpk, i64 1
  store i8 46, ptr %i.egr, align 1, !tbaa !81
  %i.egs = icmp slt i32 %i.ebp, 0
  br i1 %i.egs, label %.lr.ph2100.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

.lr.ph2100.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54
  %i.egt = getelementptr i8, ptr %i.dpk, i64 2
  %narrow = sub nsw i32 0, %i.ebp
  %i.egu = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.egt, i8 48, i64 %i.egu, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.pf:                                            ; preds = %bb.ox
  %i.egv = getelementptr inbounds nuw i8, ptr %i.dpk, i64 1 ; 2 uses
  %i.egw = udiv i64 %.0782, 100000000             ; 2 uses
  %i.egx = trunc i64 %i.egw to i32                ; 2 uses
  %.neg.i701.i = mul i64 %i.egw, 4194967296
  %i.egy = add i64 %.neg.i701.i, %.0782           ; 2 uses
  %i.egz = trunc i64 %i.egy to i32                ; 2 uses
  %i.eha = udiv i32 %i.egx, 10000                 ; 3 uses
  %.neg95.i702.i = mul i32 %i.eha, -10000
  %i.ehb = add i32 %.neg95.i702.i, %i.egx         ; 5 uses
  %i.ehc = zext nneg i32 %i.eha to i64
  %i.ehd = mul nuw nsw i64 %i.ehc, 167773
  %i.ehe = lshr i64 %i.ehd, 24
  %i.ehf = trunc nuw nsw i64 %i.ehe to i32        ; 3 uses
  %i.ehg = mul nuw nsw i32 %i.ehf, 41
  %i.ehh = lshr i32 %i.ehg, 12                    ; 4 uses
  %.neg96.i703.i = mul nsw i32 %i.ehh, -100
  %i.ehi = add nsw i32 %.neg96.i703.i, %i.ehf     ; 3 uses
  %.neg97.i704.i = mul nsw i32 %i.ehf, -100
  %i.ehj = add nsw i32 %.neg97.i704.i, %i.eha     ; 3 uses
  %i.ehk = trunc nuw nsw i32 %i.ehh to i8
  %i.ehl = add nuw nsw i8 %i.ehk, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dpk, i8 48, i64 24, i1 false)
  store i8 %i.ehl, ptr %i.egv, align 1, !tbaa !81
  %i.ehm = icmp ne i32 %i.ehh, 0
  %i.ehn = zext i1 %i.ehm to i64
  %i.eho = getelementptr inbounds nuw i8, ptr %i.egv, i64 %i.ehn ; 2 uses
  %i.ehp = icmp ult i32 %i.ehi, 10
  %i.ehq = icmp eq i32 %i.ehh, 0
  %i.ehr = and i1 %i.ehq, %i.ehp                  ; 2 uses
  %i.ehs = shl nsw i32 %i.ehi, 1
  %i.eht = zext i32 %i.ehs to i64
  %i.ehu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eht
  %.neg98.i705.i = sext i1 %i.ehr to i64
  %i.ehv = zext i1 %i.ehr to i64
  %i.ehw = getelementptr inbounds nuw i8, ptr %i.ehu, i64 %i.ehv
  %i.ehx = load i16, ptr %i.ehw, align 1
  store i16 %i.ehx, ptr %i.eho, align 1
  %i.ehy = getelementptr inbounds i8, ptr %i.eho, i64 %.neg98.i705.i ; 10 uses
  %i.ehz = getelementptr inbounds nuw i8, ptr %i.ehy, i64 2
  %i.eia = shl nsw i32 %i.ehj, 1
  %i.eib = zext i32 %i.eia to i64
  %i.eic = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eib
  %i.eid = load i16, ptr %i.eic, align 2
  store i16 %i.eid, ptr %i.ehz, align 1
  %.not.i706.i = icmp eq i32 %i.egz, 0
  br i1 %.not.i706.i, label %bb.pj, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.eie = mul i32 %i.ehb, 5243
  %i.eif = lshr i32 %i.eie, 19                    ; 2 uses
  %.neg103.i707.i = mul i32 %i.eif, 2147483548
  %i.eig = add i32 %.neg103.i707.i, %i.ehb
  %i.eih = and i64 %i.egy, 4294967295
  %i.eii = mul nuw nsw i64 %i.eih, 109951163
  %i.eij = lshr i64 %i.eii, 40
  %i.eik = trunc nuw nsw i64 %i.eij to i32        ; 3 uses
  %.neg104.i708.i = mul i32 %i.eik, -10000
  %i.eil = add i32 %.neg104.i708.i, %i.egz        ; 3 uses
  %i.eim = mul nuw i32 %i.eik, 5243
  %i.ein = lshr i32 %i.eim, 19                    ; 3 uses
  %.neg105.i709.i = mul nsw i32 %i.ein, -100
  %i.eio = add nsw i32 %.neg105.i709.i, %i.eik    ; 2 uses
  %i.eip = getelementptr inbounds nuw i8, ptr %i.ehy, i64 4
  %i.eiq = shl nuw nsw i32 %i.eif, 1
  %i.eir = zext nneg i32 %i.eiq to i64
  %i.eis = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eir
  %i.eit = load i16, ptr %i.eis, align 2
  store i16 %i.eit, ptr %i.eip, align 1
  %i.eiu = getelementptr inbounds nuw i8, ptr %i.ehy, i64 6
  %i.eiv = shl i32 %i.eig, 1
  %i.eiw = zext i32 %i.eiv to i64
  %i.eix = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eiw
  %i.eiy = load i16, ptr %i.eix, align 2
  store i16 %i.eiy, ptr %i.eiu, align 1
  %i.eiz = getelementptr inbounds nuw i8, ptr %i.ehy, i64 8
  %i.eja = shl nuw nsw i32 %i.ein, 1
  %i.ejb = zext nneg i32 %i.eja to i64
  %i.ejc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejb
  %i.ejd = load i16, ptr %i.ejc, align 2
  store i16 %i.ejd, ptr %i.eiz, align 1
  %i.eje = getelementptr inbounds nuw i8, ptr %i.ehy, i64 10
  %i.ejf = shl nsw i32 %i.eio, 1
  %i.ejg = zext i32 %i.ejf to i64
  %i.ejh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejg
  %i.eji = load i16, ptr %i.ejh, align 2
  store i16 %i.eji, ptr %i.eje, align 1
  %.not106.i710.i = icmp eq i32 %i.eil, 0
  br i1 %.not106.i710.i, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.ejj = mul i32 %i.eil, 5243
  %i.ejk = lshr i32 %i.ejj, 19                    ; 3 uses
  %.neg108.i711.i = mul nsw i32 %i.ejk, -100
  %i.ejl = add i32 %.neg108.i711.i, %i.eil        ; 2 uses
  %i.ejm = getelementptr inbounds nuw i8, ptr %i.ehy, i64 12
  %i.ejn = shl nuw nsw i32 %i.ejk, 1
  %i.ejo = zext nneg i32 %i.ejn to i64
  %i.ejp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejo
  %i.ejq = load i16, ptr %i.ejp, align 2
  store i16 %i.ejq, ptr %i.ejm, align 1
  %i.ejr = getelementptr inbounds nuw i8, ptr %i.ehy, i64 14
  %i.ejs = shl i32 %i.ejl, 1
  %i.ejt = zext i32 %i.ejs to i64
  %i.eju = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejt
  %i.ejv = load i16, ptr %i.eju, align 2
  store i16 %i.ejv, ptr %i.ejr, align 1
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pg, %bb.ph
  %.sink4449 = phi i32 [ %i.ejk, %bb.ph ], [ %i.ein, %bb.pg ]
  %.sink4445 = phi i32 [ %i.ejl, %bb.ph ], [ %i.eio, %bb.pg ] ; 2 uses
  %.sink4436 = phi i64 [ 16, %bb.ph ], [ 12, %bb.pg ]
  %i.ejw = zext nneg i32 %.sink4449 to i64
  %i.ejx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ejw
  %i.ejy = load i8, ptr %i.ejx, align 1, !tbaa !81
  %i.ejz = zext i8 %i.ejy to i64
  %i.eka = zext i32 %.sink4445 to i64
  %i.ekb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eka
  %i.ekc = load i8, ptr %i.ekb, align 1, !tbaa !81
  %i.ekd = zext i8 %i.ekc to i64
  %.not107.i717.i = icmp eq i32 %.sink4445, 0
  %i.eke = add nuw nsw i64 %i.ejz, 2
  %i.ekf = select i1 %.not107.i717.i, i64 %i.eke, i64 %i.ekd
  %i.ekg = sub nsw i64 %.sink4436, %i.ekf
  br label %._crit_edge

bb.pj:                                            ; preds = %bb.pf
  %.not99.i718.i = icmp eq i32 %i.ehb, 0
  br i1 %.not99.i718.i, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.ekh = mul i32 %i.ehb, 5243
  %i.eki = lshr i32 %i.ekh, 19                    ; 3 uses
  %.neg101.i719.i = mul nsw i32 %i.eki, -100
  %i.ekj = add i32 %.neg101.i719.i, %i.ehb        ; 3 uses
  %i.ekk = getelementptr inbounds nuw i8, ptr %i.ehy, i64 4
  %i.ekl = shl nuw nsw i32 %i.eki, 1
  %i.ekm = zext nneg i32 %i.ekl to i64
  %i.ekn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ekm
  %i.eko = load i16, ptr %i.ekn, align 2
  store i16 %i.eko, ptr %i.ekk, align 1
  %i.ekp = getelementptr inbounds nuw i8, ptr %i.ehy, i64 6
  %i.ekq = shl i32 %i.ekj, 1
  %i.ekr = zext i32 %i.ekq to i64
  %i.eks = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ekr
  %i.ekt = load i16, ptr %i.eks, align 2
  store i16 %i.ekt, ptr %i.ekp, align 1
  %i.eku = zext nneg i32 %i.eki to i64
  %i.ekv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eku
  %i.ekw = load i8, ptr %i.ekv, align 1, !tbaa !81
  %i.ekx = zext i8 %i.ekw to i64
  %i.eky = zext i32 %i.ekj to i64
  %i.ekz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eky
  %i.ela = load i8, ptr %i.ekz, align 1, !tbaa !81
  %i.elb = zext i8 %i.ela to i64
  %.not102.i720.i = icmp eq i32 %i.ekj, 0
  %i.elc = add nuw nsw i64 %i.ekx, 2
  %i.eld = select i1 %.not102.i720.i, i64 %i.elc, i64 %i.elb
  %i.ele = sub nsw i64 8, %i.eld
  br label %._crit_edge

bb.pl:                                            ; preds = %bb.pj
  %i.elf = zext i32 %i.ehi to i64
  %i.elg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.elf
  %i.elh = load i8, ptr %i.elg, align 1, !tbaa !81
  %i.eli = zext i8 %i.elh to i64
  %i.elj = zext i32 %i.ehj to i64
  %i.elk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.elj
  %i.ell = load i8, ptr %i.elk, align 1, !tbaa !81
  %i.elm = zext i8 %i.ell to i64
  %.not100.i721.i = icmp eq i32 %i.ehj, 0
  %i.eln = select i1 %.not100.i721.i, i64 %i.eli, i64 0
  %i.elo = add nuw nsw i64 %i.eln, %i.elm
  %i.elp = sub nsw i64 4, %i.elo
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.pl, %bb.pk, %bb.pi
  %.sink4451 = phi i64 [ %i.elp, %bb.pl ], [ %i.ele, %bb.pk ], [ %i.ekg, %bb.pi ]
  %i.elq = and i64 %.sink4451, 4294967295
  %i.elr = getelementptr inbounds nuw i8, ptr %i.ehy, i64 %i.elq ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.i850.i.lcssa, i64 1
  %scevgep2878 = getelementptr i8, ptr %scevgep, i64 %.lobit.i679.i
  %i.els = zext nneg i32 %i.ebp to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dpk, ptr align 1 %scevgep2878, i64 %i.els, i1 false), !tbaa !81
  %i.elt = zext nneg i32 %i.ebp to i64
  %i.elu = getelementptr inbounds nuw i8, ptr %i.dpk, i64 %i.elt ; 2 uses
  store i8 46, ptr %i.elu, align 1, !tbaa !81
  %i.elv = getelementptr inbounds nuw i8, ptr %i.elu, i64 2 ; 2 uses
  %i.elw = icmp ult ptr %i.elv, %i.elr
  %spec.select943 = select i1 %i.elw, ptr %i.elr, ptr %i.elv
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.pm:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695.i
  %.ptr = getelementptr inbounds nuw i8, ptr %i.dpk, i64 1 ; 3 uses
  %i.elx = udiv i64 %.0782, 100000000             ; 2 uses
  %i.ely = trunc i64 %i.elx to i32                ; 2 uses
  %.neg.i723.i = mul i64 %i.elx, 4194967296
  %i.elz = add i64 %.neg.i723.i, %.0782           ; 2 uses
  %i.ema = trunc i64 %i.elz to i32                ; 2 uses
  %i.emb = udiv i32 %i.ely, 10000                 ; 3 uses
  %.neg95.i724.i = mul i32 %i.emb, -10000
  %i.emc = add i32 %.neg95.i724.i, %i.ely         ; 5 uses
  %i.emd = zext nneg i32 %i.emb to i64
  %i.eme = mul nuw nsw i64 %i.emd, 167773
  %i.emf = lshr i64 %i.eme, 24
  %i.emg = trunc nuw nsw i64 %i.emf to i32        ; 3 uses
  %i.emh = mul nuw nsw i32 %i.emg, 41
  %i.emi = lshr i32 %i.emh, 12                    ; 3 uses
  %.neg96.i725.i = mul nsw i32 %i.emi, -100
  %i.emj = add nsw i32 %.neg96.i725.i, %i.emg     ; 3 uses
  %.neg97.i726.i = mul nsw i32 %i.emg, -100
  %i.emk = add nsw i32 %.neg97.i726.i, %i.emb     ; 3 uses
  %i.eml = trunc nuw nsw i32 %i.emi to i8
  %i.emm = add nuw nsw i8 %i.eml, 48
  store i8 %i.emm, ptr %.ptr, align 1, !tbaa !81
  %.not963 = icmp eq i32 %i.emi, 0                ; 2 uses
  %.add = select i1 %.not963, i64 1, i64 2        ; 2 uses
  %.ptr959 = getelementptr inbounds nuw i8, ptr %i.dpk, i64 %.add
  %i.emn = icmp ult i32 %i.emj, 10
  %i.emo = and i1 %.not963, %i.emn                ; 2 uses
  %i.emp = shl nsw i32 %i.emj, 1
  %i.emq = zext i32 %i.emp to i64
  %i.emr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.emq
  %.neg98.i727.i = sext i1 %i.emo to i64
  %i.ems = zext i1 %i.emo to i64
  %i.emt = getelementptr inbounds nuw i8, ptr %i.emr, i64 %i.ems
  %i.emu = load i16, ptr %i.emt, align 1
  store i16 %i.emu, ptr %.ptr959, align 1
  %.add955 = add nsw i64 %.add, %.neg98.i727.i    ; 2 uses
  %.ptr960 = getelementptr inbounds nuw i8, ptr %i.dpk, i64 %.add955 ; 9 uses
  %i.emv = getelementptr inbounds nuw i8, ptr %.ptr960, i64 2
  %i.emw = shl nsw i32 %i.emk, 1
  %i.emx = zext i32 %i.emw to i64
  %i.emy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.emx
  %i.emz = load i16, ptr %i.emy, align 2
  store i16 %i.emz, ptr %i.emv, align 1
  %.not.i728.i = icmp eq i32 %i.ema, 0
  br i1 %.not.i728.i, label %bb.pq, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.ena = mul i32 %i.emc, 5243
  %i.enb = lshr i32 %i.ena, 19                    ; 2 uses
  %.neg103.i729.i = mul i32 %i.enb, 2147483548
  %i.enc = add i32 %.neg103.i729.i, %i.emc
  %i.end = and i64 %i.elz, 4294967295
  %i.ene = mul nuw nsw i64 %i.end, 109951163
  %i.enf = lshr i64 %i.ene, 40
  %i.eng = trunc nuw nsw i64 %i.enf to i32        ; 3 uses
  %.neg104.i730.i = mul i32 %i.eng, -10000
  %i.enh = add i32 %.neg104.i730.i, %i.ema        ; 3 uses
  %i.eni = mul nuw i32 %i.eng, 5243
  %i.enj = lshr i32 %i.eni, 19                    ; 3 uses
  %.neg105.i731.i = mul nsw i32 %i.enj, -100
  %i.enk = add nsw i32 %.neg105.i731.i, %i.eng    ; 3 uses
  %i.enl = getelementptr inbounds nuw i8, ptr %.ptr960, i64 4
  %i.enm = shl nuw nsw i32 %i.enb, 1
  %i.enn = zext nneg i32 %i.enm to i64
  %i.eno = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.enn
  %i.enp = load i16, ptr %i.eno, align 2
  store i16 %i.enp, ptr %i.enl, align 1
  %i.enq = getelementptr inbounds nuw i8, ptr %.ptr960, i64 6
  %i.enr = shl i32 %i.enc, 1
  %i.ens = zext i32 %i.enr to i64
  %i.ent = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ens
  %i.enu = load i16, ptr %i.ent, align 2
  store i16 %i.enu, ptr %i.enq, align 1
  %i.env = getelementptr inbounds nuw i8, ptr %.ptr960, i64 8
  %i.enw = shl nuw nsw i32 %i.enj, 1
  %i.enx = zext nneg i32 %i.enw to i64
  %i.eny = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.enx
  %i.enz = load i16, ptr %i.eny, align 2
  store i16 %i.enz, ptr %i.env, align 1
  %i.eoa = getelementptr inbounds nuw i8, ptr %.ptr960, i64 10
  %i.eob = shl nsw i32 %i.enk, 1
  %i.eoc = zext i32 %i.eob to i64
  %i.eod = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eoc
  %i.eoe = load i16, ptr %i.eod, align 2
  store i16 %i.eoe, ptr %i.eoa, align 1
  %.not106.i732.i = icmp eq i32 %i.enh, 0
  br i1 %.not106.i732.i, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.eof = mul i32 %i.enh, 5243
  %i.eog = lshr i32 %i.eof, 19                    ; 3 uses
  %.neg108.i733.i = mul nsw i32 %i.eog, -100
  %i.eoh = add i32 %.neg108.i733.i, %i.enh        ; 3 uses
  %i.eoi = getelementptr inbounds nuw i8, ptr %.ptr960, i64 12
  %i.eoj = shl nuw nsw i32 %i.eog, 1
  %i.eok = zext nneg i32 %i.eoj to i64
  %i.eol = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eok
  %i.eom = load i16, ptr %i.eol, align 2
  store i16 %i.eom, ptr %i.eoi, align 1
  %i.eon = getelementptr inbounds nuw i8, ptr %.ptr960, i64 14
  %i.eoo = shl i32 %i.eoh, 1
  %i.eop = zext i32 %i.eoo to i64
  %i.eoq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eop
  %i.eor = load i16, ptr %i.eoq, align 2
  store i16 %i.eor, ptr %i.eon, align 1
  %i.eos = zext nneg i32 %i.eog to i64
  %i.eot = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eos
  %i.eou = load i8, ptr %i.eot, align 1, !tbaa !81
  %i.eov = zext i8 %i.eou to i64
  %i.eow = zext i32 %i.eoh to i64
  %i.eox = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eow
  %i.eoy = load i8, ptr %i.eox, align 1, !tbaa !81
  %i.eoz = zext i8 %i.eoy to i64
  %.not109.i734.i = icmp eq i32 %i.eoh, 0
  %i.epa = add nuw nsw i64 %i.eov, 2
  %i.epb = select i1 %.not109.i734.i, i64 %i.epa, i64 %i.eoz
  %i.epc = sub nsw i64 16, %i.epb
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i

bb.pp:                                            ; preds = %bb.pn
  %i.epd = zext nneg i32 %i.enj to i64
  %i.epe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.epd
  %i.epf = load i8, ptr %i.epe, align 1, !tbaa !81
  %i.epg = zext i8 %i.epf to i64
  %i.eph = zext i32 %i.enk to i64
  %i.epi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eph
  %i.epj = load i8, ptr %i.epi, align 1, !tbaa !81
  %i.epk = zext i8 %i.epj to i64
  %.not107.i739.i = icmp eq i32 %i.enk, 0
  %i.epl = add nuw nsw i64 %i.epg, 2
  %i.epm = select i1 %.not107.i739.i, i64 %i.epl, i64 %i.epk
  %i.epn = sub nsw i64 12, %i.epm
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i

bb.pq:                                            ; preds = %bb.pm
  %.not99.i740.i = icmp eq i32 %i.emc, 0
  br i1 %.not99.i740.i, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.epo = mul i32 %i.emc, 5243
  %i.epp = lshr i32 %i.epo, 19                    ; 3 uses
  %.neg101.i741.i = mul nsw i32 %i.epp, -100
  %i.epq = add i32 %.neg101.i741.i, %i.emc        ; 3 uses
  %i.epr = getelementptr inbounds nuw i8, ptr %.ptr960, i64 4
  %i.eps = shl nuw nsw i32 %i.epp, 1
  %i.ept = zext nneg i32 %i.eps to i64
  %i.epu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ept
  %i.epv = load i16, ptr %i.epu, align 2
  store i16 %i.epv, ptr %i.epr, align 1
  %i.epw = getelementptr inbounds nuw i8, ptr %.ptr960, i64 6
  %i.epx = shl i32 %i.epq, 1
  %i.epy = zext i32 %i.epx to i64
  %i.epz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.epy
  %i.eqa = load i16, ptr %i.epz, align 2
  store i16 %i.eqa, ptr %i.epw, align 1
  %i.eqb = zext nneg i32 %i.epp to i64
  %i.eqc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eqb
  %i.eqd = load i8, ptr %i.eqc, align 1, !tbaa !81
  %i.eqe = zext i8 %i.eqd to i64
  %i.eqf = zext i32 %i.epq to i64
  %i.eqg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eqf
  %i.eqh = load i8, ptr %i.eqg, align 1, !tbaa !81
  %i.eqi = zext i8 %i.eqh to i64
  %.not102.i742.i = icmp eq i32 %i.epq, 0
  %i.eqj = add nuw nsw i64 %i.eqe, 2
  %i.eqk = select i1 %.not102.i742.i, i64 %i.eqj, i64 %i.eqi
  %i.eql = sub nsw i64 8, %i.eqk
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i

bb.ps:                                            ; preds = %bb.pq
  %i.eqm = zext i32 %i.emj to i64
  %i.eqn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eqm
  %i.eqo = load i8, ptr %i.eqn, align 1, !tbaa !81
  %i.eqp = zext i8 %i.eqo to i64
  %i.eqq = zext i32 %i.emk to i64
  %i.eqr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eqq
  %i.eqs = load i8, ptr %i.eqr, align 1, !tbaa !81
  %i.eqt = zext i8 %i.eqs to i64
  %.not100.i743.i = icmp eq i32 %i.emk, 0
  %i.equ = select i1 %.not100.i743.i, i64 %i.eqp, i64 0
  %i.eqv = add nuw nsw i64 %i.equ, %i.eqt
  %i.eqw = sub nsw i64 4, %i.eqv
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i: ; preds = %bb.po, %bb.pp, %bb.ps, %bb.pr
  %.pn.i736.i.pn.in = phi i64 [ %i.eqw, %bb.ps ], [ %i.eql, %bb.pr ], [ %i.epc, %bb.po ], [ %i.epn, %bb.pp ]
  %.pn.i736.i.pn = and i64 %.pn.i736.i.pn.in, 4294967295
  %.1.i738.i.idx = add nuw nsw i64 %.pn.i736.i.pn, %.add955 ; 2 uses
  %.1.i738.i.ptr = getelementptr inbounds nuw i8, ptr %i.dpk, i64 %.1.i738.i.idx
  %i.eqx = icmp eq i64 %.1.i738.i.idx, 2
  %.neg130.i.i37 = sext i1 %i.eqx to i64
  %i.eqy = getelementptr inbounds i8, ptr %.1.i738.i.ptr, i64 %.neg130.i.i37 ; 2 uses
  %i.eqz = add nsw i32 %i.ebp, -1                 ; 2 uses
  %i.era = load i8, ptr %.ptr, align 1, !tbaa !81
  store i8 %i.era, ptr %i.dpk, align 1, !tbaa !81
  store i8 46, ptr %.ptr, align 1, !tbaa !81
  store i8 101, ptr %i.eqy, align 1, !tbaa !81
  %i.erb = getelementptr inbounds nuw i8, ptr %i.eqy, i64 1 ; 2 uses
  store i8 45, ptr %i.erb, align 1, !tbaa !81
  %.lobit.i745.i = lshr i32 %i.eqz, 31
  %i.erc = zext nneg i32 %.lobit.i745.i to i64
  %i.erd = getelementptr inbounds nuw i8, ptr %i.erb, i64 %i.erc ; 5 uses
  %i.ere = tail call i32 @llvm.abs.i32(i32 %i.eqz, i1 true) ; 5 uses
  %i.erf = icmp samesign ult i32 %i.ere, 100
  br i1 %i.erf, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i
  %i.erg = icmp samesign ult i32 %i.ere, 10       ; 2 uses
  %i.erh = shl nuw nsw i32 %i.ere, 1
  %i.eri = zext nneg i32 %i.erh to i64
  %i.erj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eri
  %.neg22.i.i42 = sext i1 %i.erg to i64
  %i.erk = zext i1 %i.erg to i64
  %i.erl = getelementptr inbounds nuw i8, ptr %i.erj, i64 %i.erk
  %i.erm = load i16, ptr %i.erl, align 1
  store i16 %i.erm, ptr %i.erd, align 1
  %i.ern = getelementptr inbounds nuw i8, ptr %i.erd, i64 2
  %i.ero = getelementptr inbounds i8, ptr %i.ern, i64 %.neg22.i.i42
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.pu:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i
  %i.erp = mul nuw nsw i32 %i.ere, 656
  %i.erq = lshr i32 %i.erp, 16                    ; 2 uses
  %.neg.i746.i = mul i32 %i.erq, 2147483548
  %i.err = add i32 %.neg.i746.i, %i.ere
  %i.ers = trunc nuw nsw i32 %i.erq to i8
  %i.ert = add nuw nsw i8 %i.ers, 48
  store i8 %i.ert, ptr %i.erd, align 1, !tbaa !81
  %i.eru = getelementptr inbounds nuw i8, ptr %i.erd, i64 1
  %i.erv = shl i32 %i.err, 1
  %i.erw = zext i32 %i.erv to i64
  %i.erx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.erw
  %i.ery = load i16, ptr %i.erx, align 2
  store i16 %i.ery, ptr %i.eru, align 1
  %i.erz = getelementptr inbounds nuw i8, ptr %i.erd, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.pv:                                            ; preds = %bb.nz
  %i.esa = shl nuw nsw i64 %i.dpa, 5              ; 3 uses
  %i.esb = or disjoint i64 %i.esa, 16
  %i.esc = add nsw i64 %i.esa, -16
  %i.esd = zext i64 %i.esc to i128                ; 2 uses
  %i.ese = mul nuw nsw i128 %i.esd, 7784369436827535058
  %i.esf = lshr i128 %i.ese, 64
  %i.esg = mul nuw i128 %i.esd, 11392378155556871081
  %i.esh = add nuw i128 %i.esf, %i.esg            ; 2 uses
  %i.esi = lshr i128 %i.esh, 64
  %i.esj = trunc nuw i128 %i.esi to i64
  %i.esk = and i128 %i.esh, 18446744073709551614
  %i.esl = icmp ne i128 %i.esk, 0
  %i.esm = zext i1 %i.esl to i64
  %i.esn = or i64 %i.esm, %i.esj
  %i.eso = zext nneg i64 %i.esa to i128           ; 2 uses
  %i.esp = mul nuw nsw i128 %i.eso, 7784369436827535058
  %i.esq = lshr i128 %i.esp, 64
  %i.esr = mul nuw nsw i128 %i.eso, 11392378155556871081
  %i.ess = add nuw nsw i128 %i.esq, %i.esr        ; 2 uses
  %i.est = lshr i128 %i.ess, 64
  %i.esu = trunc nuw nsw i128 %i.est to i64       ; 5 uses
  %i.esv = and i128 %i.ess, 18446744073709551614
  %i.esw = icmp ne i128 %i.esv, 0
  %i.esx = zext i1 %i.esw to i64
  %i.esy = or i64 %i.esx, %i.esu                  ; 2 uses
  %i.esz = zext nneg i64 %i.esb to i128           ; 2 uses
  %i.eta = mul nuw nsw i128 %i.esz, 7784369436827535058
  %i.etb = lshr i128 %i.eta, 64
  %i.etc = mul nuw nsw i128 %i.esz, 11392378155556871081
  %i.etd = add nuw nsw i128 %i.etb, %i.etc        ; 2 uses
  %i.ete = lshr i128 %i.etd, 64
  %i.etf = trunc nuw nsw i128 %i.ete to i64
  %i.etg = and i128 %i.etd, 18446744073709551614
  %i.eth = icmp ne i128 %i.etg, 0
  %i.eti = zext i1 %i.eth to i64
  %i.etj = or i64 %i.eti, %i.etf
  %i.etk = and i64 %i.doz, 1                      ; 2 uses
  %i.etl = add nuw i64 %i.esn, %i.etk             ; 2 uses
  %i.etm = sub nuw nsw i64 %i.etj, %i.etk         ; 2 uses
  %i.etn = lshr i64 %i.esu, 2                     ; 2 uses
  %i.eto = icmp samesign ugt i64 %i.esu, 39
  br i1 %i.eto, label %bb.pw, label %bb.px

bb.pw:                                            ; preds = %bb.pv
  %i.etp = udiv i64 %i.esu, 40                    ; 2 uses
  %i.etq = mul nuw nsw i64 %i.etp, 40             ; 2 uses
  %i.etr = add nuw nsw i64 %i.etq, 40
  %i.ets = icmp samesign uge i64 %i.etm, %i.etr   ; 2 uses
  %i.ett = icmp ugt i64 %i.etl, %i.etq
  %.not.i690.i = xor i1 %i.ett, %i.ets
  br i1 %.not.i690.i, label %bb.px, label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i64

bb.px:                                            ; preds = %bb.pw, %bb.pv
  %i.etu = and i64 %i.esu, 9223372036854775804    ; 3 uses
  %i.etv = add nuw nsw i64 %i.etu, 4
  %i.etw = icmp samesign uge i64 %i.etm, %i.etv   ; 2 uses
  %i.etx = or disjoint i64 %i.etu, 2              ; 2 uses
  %i.ety = icmp samesign ugt i64 %i.esy, %i.etx
  br i1 %i.ety, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.etz = icmp eq i64 %i.esy, %i.etx
  %i.eua = trunc i64 %i.etn to i1
  %i.eub = and i1 %i.etz, %i.eua
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %bb.px
  %i.euc = phi i1 [ true, %bb.px ], [ %i.eub, %bb.py ]
  %i.eud = icmp ugt i64 %i.etl, %i.etu
  %.not58.i.i63 = xor i1 %i.eud, %i.etw
  %i.eue = select i1 %.not58.i.i63, i1 %i.euc, i1 %i.etw
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i64

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i64: ; preds = %bb.pw, %bb.pz
  %.sink4454 = phi i1 [ %i.eue, %bb.pz ], [ %i.ets, %bb.pw ]
  %.sink4452 = phi i64 [ %i.etn, %bb.pz ], [ %i.etp, %bb.pw ]
  %storemerge.i.i65 = phi i32 [ -324, %bb.pz ], [ -323, %bb.pw ]
  %i.euf = zext i1 %.sink4454 to i64
  %i.eug = add nuw nsw i64 %.sink4452, %i.euf     ; 25 uses
  %i.euh = getelementptr inbounds nuw i8, ptr %i.dpk, i64 1 ; 19 uses
  %i.eui = icmp samesign ugt i64 %i.eug, 999999999999999
  br i1 %i.eui, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i64
  %i.euj = udiv i64 %i.eug, 100000000             ; 2 uses
  %.neg29.i.i78 = mul nuw nsw i64 %i.euj, 4194967296
  %i.euk = add nuw nsw i64 %.neg29.i.i78, %i.eug  ; 2 uses
  %i.eul = trunc i64 %i.euk to i32
  %i.eum = udiv i64 %i.eug, 10000000000000000     ; 2 uses
  %.neg30.i.i79 = mul nuw nsw i64 %i.eum, 4194967296
  %i.eun = add nuw nsw i64 %.neg30.i.i79, %i.euj  ; 2 uses
  %i.euo = trunc i64 %i.eun to i32
  %i.eup = trunc nuw nsw i64 %i.eum to i8
  %i.euq = add nuw nsw i8 %i.eup, 48
  store i8 %i.euq, ptr %i.euh, align 1, !tbaa !81
  %i.eur = icmp samesign ugt i64 %i.eug, 9999999999999999
  %i.eus = zext i1 %i.eur to i64
  %i.eut = getelementptr inbounds nuw i8, ptr %i.euh, i64 %i.eus ; 9 uses
  %i.euu = and i64 %i.eun, 4294967295
  %i.euv = mul nuw nsw i64 %i.euu, 109951163
  %i.euw = lshr i64 %i.euv, 40
  %i.eux = trunc nuw nsw i64 %i.euw to i32        ; 3 uses
  %.neg.i813.i = mul i32 %i.eux, -10000
  %i.euy = add i32 %.neg.i813.i, %i.euo           ; 2 uses
  %i.euz = mul nuw i32 %i.eux, 5243
  %i.eva = lshr i32 %i.euz, 19                    ; 2 uses
  %i.evb = mul i32 %i.euy, 5243
  %i.evc = lshr i32 %i.evb, 19                    ; 2 uses
  %.neg17.i814.i = mul nsw i32 %i.eva, -100
  %i.evd = add nsw i32 %.neg17.i814.i, %i.eux
  %.neg18.i815.i = mul i32 %i.evc, 2147483548
  %i.eve = add i32 %.neg18.i815.i, %i.euy
  %i.evf = shl nuw nsw i32 %i.eva, 1
end_hunk_4
begin_hunk_5_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.htr = mul nuw i128 %i.htq, %i.htp
  %i.hts = lshr i128 %i.htr, 64
  %i.htt = zext i64 %i.htg to i128                ; 3 uses
  %i.htu = mul nuw i128 %i.htt, %i.htp
  %i.htv = add nuw i128 %i.hts, %i.htu            ; 2 uses
  %i.htw = lshr i128 %i.htv, 64
  %i.htx = trunc nuw i128 %i.htw to i64
  %i.hty = and i128 %i.htv, 18446744073709551614
  %i.htz = icmp ne i128 %i.hty, 0
  %i.hua = zext i1 %i.htz to i64
  %i.hub = or i64 %i.hua, %i.htx
  %i.huc = shl i64 %i.hsq, %i.htn
  %i.hud = zext i64 %i.huc to i128                ; 2 uses
  %i.hue = mul nuw i128 %i.htq, %i.hud
  %i.huf = lshr i128 %i.hue, 64
  %i.hug = mul nuw i128 %i.htt, %i.hud
  %i.huh = add nuw i128 %i.huf, %i.hug            ; 2 uses
  %i.hui = lshr i128 %i.huh, 64
  %i.huj = trunc nuw i128 %i.hui to i64           ; 5 uses
  %i.huk = and i128 %i.huh, 18446744073709551614
  %i.hul = icmp ne i128 %i.huk, 0
  %i.hum = zext i1 %i.hul to i64
  %i.hun = or i64 %i.hum, %i.huj                  ; 2 uses
  %i.huo = shl i64 %i.hsu, %i.htn
  %i.hup = zext i64 %i.huo to i128                ; 2 uses
  %i.huq = mul nuw i128 %i.htq, %i.hup
  %i.hur = lshr i128 %i.huq, 64
  %i.hus = mul nuw i128 %i.htt, %i.hup
  %i.hut = add nuw i128 %i.hur, %i.hus            ; 2 uses
  %i.huu = lshr i128 %i.hut, 64
  %i.huv = trunc nuw i128 %i.huu to i64
  %i.huw = and i128 %i.hut, 18446744073709551614
  %i.hux = icmp ne i128 %i.huw, 0
  %i.huy = zext i1 %i.hux to i64
  %i.huz = or i64 %i.huy, %i.huv
  %i.hva = and i64 %i.hjo, 1                      ; 2 uses
  %i.hvb = add i64 %i.hub, %i.hva                 ; 2 uses
  %i.hvc = sub i64 %i.huz, %i.hva                 ; 2 uses
  %i.hvd = lshr i64 %i.huj, 2                     ; 2 uses
  %i.hve = icmp ugt i64 %i.huj, 39
  br i1 %i.hve, label %bb.zi, label %bb.zk

bb.zi:                                            ; preds = %bb.zh
  %i.hvf = udiv i64 %i.huj, 40                    ; 2 uses
  %i.hvg = mul nuw i64 %i.hvf, 40                 ; 2 uses
  %i.hvh = add i64 %i.hvg, 40
  %i.hvi = icmp uge i64 %i.hvc, %i.hvh            ; 2 uses
  %i.hvj = icmp ugt i64 %i.hvb, %i.hvg
  %.not.i554.i = xor i1 %i.hvj, %i.hvi
  br i1 %.not.i554.i, label %bb.zk, label %bb.zj

bb.zj:                                            ; preds = %bb.zi
  %i.hvk = zext i1 %i.hvi to i64
  %i.hvl = add nuw nsw i64 %i.hvf, %i.hvk
  %i.hvm = add nsw i32 %i.hsy, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit555.i

bb.zk:                                            ; preds = %bb.zi, %bb.zh
  %i.hvn = and i64 %i.huj, -4                     ; 3 uses
  %i.hvo = add i64 %i.hvn, 4
  %i.hvp = icmp uge i64 %i.hvc, %i.hvo            ; 2 uses
  %i.hvq = or disjoint i64 %i.hvn, 2              ; 2 uses
  %i.hvr = icmp ugt i64 %i.hun, %i.hvq
  br i1 %i.hvr, label %bb.zm, label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  %i.hvs = icmp eq i64 %i.hun, %i.hvq
  %i.hvt = trunc i64 %i.hvd to i1
  %i.hvu = and i1 %i.hvs, %i.hvt
  br label %bb.zm

bb.zm:                                            ; preds = %bb.zl, %bb.zk
  %i.hvv = phi i1 [ true, %bb.zk ], [ %i.hvu, %bb.zl ]
  %i.hvw = icmp ugt i64 %i.hvb, %i.hvn
  %.not58.i552.i = xor i1 %i.hvw, %i.hvp
  %i.hvx = select i1 %.not58.i552.i, i1 %i.hvv, i1 %i.hvp
  %i.hvy = zext i1 %i.hvx to i64
  %i.hvz = add nuw nsw i64 %i.hvd, %i.hvy
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit555.i

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit555.i: ; preds = %bb.zm, %bb.zj
  %.0772 = phi i64 [ %i.hvz, %bb.zm ], [ %i.hvl, %bb.zj ] ; 8 uses
  %storemerge.i553.i = phi i32 [ %i.hsy, %bb.zm ], [ %i.hvm, %bb.zj ]
  %i.hwa = icmp samesign ult i64 %.0772, 10000000000000000
  %i.hwb = select i1 %i.hwa, i32 16, i32 17
  %i.hwc = icmp samesign ult i64 %.0772, 1000000000000000
  %.neg129.i.i205 = sext i1 %i.hwc to i32
  %i.hwd = add nsw i32 %i.hwb, %.neg129.i.i205
  %i.hwe = add nsw i32 %i.hwd, %storemerge.i553.i ; 8 uses
  %i.hwf = add nsw i32 %i.hwe, 5
  %or.cond3.i.i206 = icmp ult i32 %i.hwf, 27
  br i1 %or.cond3.i.i206, label %bb.zn, label %bb.aac

bb.zn:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit555.i
  %i.hwg = icmp slt i32 %i.hwe, 1
  br i1 %i.hwg, label %bb.zo, label %bb.zv

bb.zo:                                            ; preds = %bb.zn
  %i.hwh = sub nsw i32 2, %i.hwe
  %i.hwi = zext nneg i32 %i.hwh to i64
  %i.hwj = getelementptr inbounds nuw i8, ptr %i.hjz, i64 %i.hwi ; 2 uses
  %i.hwk = udiv i64 %.0772, 100000000             ; 2 uses
  %i.hwl = trunc i64 %i.hwk to i32                ; 2 uses
  %.neg.i556.i = mul i64 %i.hwk, 4194967296
  %i.hwm = add i64 %.neg.i556.i, %.0772           ; 2 uses
  %i.hwn = trunc i64 %i.hwm to i32                ; 2 uses
  %i.hwo = udiv i32 %i.hwl, 10000                 ; 3 uses
  %.neg95.i.i218 = mul i32 %i.hwo, -10000
  %i.hwp = add i32 %.neg95.i.i218, %i.hwl         ; 5 uses
  %i.hwq = zext nneg i32 %i.hwo to i64
  %i.hwr = mul nuw nsw i64 %i.hwq, 167773
  %i.hws = lshr i64 %i.hwr, 24
  %i.hwt = trunc nuw nsw i64 %i.hws to i32        ; 3 uses
  %i.hwu = mul nuw nsw i32 %i.hwt, 41
  %i.hwv = lshr i32 %i.hwu, 12                    ; 4 uses
  %.neg96.i.i219 = mul nsw i32 %i.hwv, -100
  %i.hww = add nsw i32 %.neg96.i.i219, %i.hwt     ; 3 uses
  %.neg97.i.i220 = mul nsw i32 %i.hwt, -100
  %i.hwx = add nsw i32 %.neg97.i.i220, %i.hwo     ; 3 uses
  %i.hwy = trunc nuw nsw i32 %i.hwv to i8
  %i.hwz = add nuw nsw i8 %i.hwy, 48
  store i8 %i.hwz, ptr %i.hwj, align 1, !tbaa !81
  %i.hxa = icmp ne i32 %i.hwv, 0
  %i.hxb = zext i1 %i.hxa to i64
  %i.hxc = getelementptr inbounds nuw i8, ptr %i.hwj, i64 %i.hxb ; 2 uses
  %i.hxd = icmp ult i32 %i.hww, 10
  %i.hxe = icmp eq i32 %i.hwv, 0
  %i.hxf = and i1 %i.hxe, %i.hxd                  ; 2 uses
  %i.hxg = shl nsw i32 %i.hww, 1
  %i.hxh = zext i32 %i.hxg to i64
  %i.hxi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxh
  %.neg98.i.i221 = sext i1 %i.hxf to i64
  %i.hxj = zext i1 %i.hxf to i64
  %i.hxk = getelementptr inbounds nuw i8, ptr %i.hxi, i64 %i.hxj
  %i.hxl = load i16, ptr %i.hxk, align 1
  store i16 %i.hxl, ptr %i.hxc, align 1
  %i.hxm = getelementptr inbounds i8, ptr %i.hxc, i64 %.neg98.i.i221 ; 10 uses
  %i.hxn = getelementptr inbounds nuw i8, ptr %i.hxm, i64 2
  %i.hxo = shl nsw i32 %i.hwx, 1
  %i.hxp = zext i32 %i.hxo to i64
  %i.hxq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxp
  %i.hxr = load i16, ptr %i.hxq, align 2
  store i16 %i.hxr, ptr %i.hxn, align 1
  %.not.i557.i = icmp eq i32 %i.hwn, 0
  br i1 %.not.i557.i, label %bb.zs, label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  %i.hxs = mul i32 %i.hwp, 5243
  %i.hxt = lshr i32 %i.hxs, 19                    ; 2 uses
  %.neg103.i.i222 = mul i32 %i.hxt, 2147483548
  %i.hxu = add i32 %.neg103.i.i222, %i.hwp
  %i.hxv = and i64 %i.hwm, 4294967295
  %i.hxw = mul nuw nsw i64 %i.hxv, 109951163
  %i.hxx = lshr i64 %i.hxw, 40
  %i.hxy = trunc nuw nsw i64 %i.hxx to i32        ; 3 uses
  %.neg104.i.i223 = mul i32 %i.hxy, -10000
  %i.hxz = add i32 %.neg104.i.i223, %i.hwn        ; 3 uses
  %i.hya = mul nuw i32 %i.hxy, 5243
  %i.hyb = lshr i32 %i.hya, 19                    ; 3 uses
  %.neg105.i.i224 = mul nsw i32 %i.hyb, -100
  %i.hyc = add nsw i32 %.neg105.i.i224, %i.hxy    ; 2 uses
  %i.hyd = getelementptr inbounds nuw i8, ptr %i.hxm, i64 4
  %i.hye = shl nuw nsw i32 %i.hxt, 1
  %i.hyf = zext nneg i32 %i.hye to i64
  %i.hyg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyf
  %i.hyh = load i16, ptr %i.hyg, align 2
  store i16 %i.hyh, ptr %i.hyd, align 1
  %i.hyi = getelementptr inbounds nuw i8, ptr %i.hxm, i64 6
  %i.hyj = shl i32 %i.hxu, 1
  %i.hyk = zext i32 %i.hyj to i64
  %i.hyl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyk
  %i.hym = load i16, ptr %i.hyl, align 2
  store i16 %i.hym, ptr %i.hyi, align 1
  %i.hyn = getelementptr inbounds nuw i8, ptr %i.hxm, i64 8
  %i.hyo = shl nuw nsw i32 %i.hyb, 1
  %i.hyp = zext nneg i32 %i.hyo to i64
  %i.hyq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyp
  %i.hyr = load i16, ptr %i.hyq, align 2
  store i16 %i.hyr, ptr %i.hyn, align 1
  %i.hys = getelementptr inbounds nuw i8, ptr %i.hxm, i64 10
  %i.hyt = shl nsw i32 %i.hyc, 1
  %i.hyu = zext i32 %i.hyt to i64
  %i.hyv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyu
  %i.hyw = load i16, ptr %i.hyv, align 2
  store i16 %i.hyw, ptr %i.hys, align 1
  %.not106.i.i225 = icmp eq i32 %i.hxz, 0
  br i1 %.not106.i.i225, label %bb.zr, label %bb.zq

bb.zq:                                            ; preds = %bb.zp
  %i.hyx = mul i32 %i.hxz, 5243
  %i.hyy = lshr i32 %i.hyx, 19                    ; 3 uses
  %.neg108.i.i226 = mul nsw i32 %i.hyy, -100
  %i.hyz = add i32 %.neg108.i.i226, %i.hxz        ; 2 uses
  %i.hza = getelementptr inbounds nuw i8, ptr %i.hxm, i64 12
  %i.hzb = shl nuw nsw i32 %i.hyy, 1
  %i.hzc = zext nneg i32 %i.hzb to i64
  %i.hzd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzc
  %i.hze = load i16, ptr %i.hzd, align 2
  store i16 %i.hze, ptr %i.hza, align 1
  %i.hzf = getelementptr inbounds nuw i8, ptr %i.hxm, i64 14
  %i.hzg = shl i32 %i.hyz, 1
  %i.hzh = zext i32 %i.hzg to i64
  %i.hzi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzh
  %i.hzj = load i16, ptr %i.hzi, align 2
  store i16 %i.hzj, ptr %i.hzf, align 1
  br label %bb.zr

bb.zr:                                            ; preds = %bb.zp, %bb.zq
  %.sink4469 = phi i32 [ %i.hyy, %bb.zq ], [ %i.hyb, %bb.zp ]
  %.sink4465 = phi i32 [ %i.hyz, %bb.zq ], [ %i.hyc, %bb.zp ] ; 2 uses
  %.sink4456 = phi i64 [ 16, %bb.zq ], [ 12, %bb.zp ]
  %i.hzk = zext nneg i32 %.sink4469 to i64
  %i.hzl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzk
  %i.hzm = load i8, ptr %i.hzl, align 1, !tbaa !81
  %i.hzn = zext i8 %i.hzm to i64
  %i.hzo = zext i32 %.sink4465 to i64
  %i.hzp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzo
  %i.hzq = load i8, ptr %i.hzp, align 1, !tbaa !81
  %i.hzr = zext i8 %i.hzq to i64
  %.not107.i.i231 = icmp eq i32 %.sink4465, 0
  %i.hzs = add nuw nsw i64 %i.hzn, 2
  %i.hzt = select i1 %.not107.i.i231, i64 %i.hzs, i64 %i.hzr
  %i.hzu = sub nsw i64 %.sink4456, %i.hzt
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i229

bb.zs:                                            ; preds = %bb.zo
  %.not99.i.i232 = icmp eq i32 %i.hwp, 0
  br i1 %.not99.i.i232, label %bb.zu, label %bb.zt

bb.zt:                                            ; preds = %bb.zs
  %i.hzv = mul i32 %i.hwp, 5243
  %i.hzw = lshr i32 %i.hzv, 19                    ; 3 uses
  %.neg101.i.i233 = mul nsw i32 %i.hzw, -100
  %i.hzx = add i32 %.neg101.i.i233, %i.hwp        ; 3 uses
  %i.hzy = getelementptr inbounds nuw i8, ptr %i.hxm, i64 4
  %i.hzz = shl nuw nsw i32 %i.hzw, 1
  %i.iaa = zext nneg i32 %i.hzz to i64
  %i.iab = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iaa
  %i.iac = load i16, ptr %i.iab, align 2
  store i16 %i.iac, ptr %i.hzy, align 1
  %i.iad = getelementptr inbounds nuw i8, ptr %i.hxm, i64 6
  %i.iae = shl i32 %i.hzx, 1
  %i.iaf = zext i32 %i.iae to i64
  %i.iag = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iaf
  %i.iah = load i16, ptr %i.iag, align 2
  store i16 %i.iah, ptr %i.iad, align 1
  %i.iai = zext nneg i32 %i.hzw to i64
  %i.iaj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iai
  %i.iak = load i8, ptr %i.iaj, align 1, !tbaa !81
  %i.ial = zext i8 %i.iak to i64
  %i.iam = zext i32 %i.hzx to i64
  %i.ian = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iam
  %i.iao = load i8, ptr %i.ian, align 1, !tbaa !81
  %i.iap = zext i8 %i.iao to i64
  %.not102.i.i234 = icmp eq i32 %i.hzx, 0
  %i.iaq = add nuw nsw i64 %i.ial, 2
  %i.iar = select i1 %.not102.i.i234, i64 %i.iaq, i64 %i.iap
  %i.ias = sub nsw i64 8, %i.iar
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i229

bb.zu:                                            ; preds = %bb.zs
  %i.iat = zext i32 %i.hww to i64
  %i.iau = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iat
  %i.iav = load i8, ptr %i.iau, align 1, !tbaa !81
  %i.iaw = zext i8 %i.iav to i64
  %i.iax = zext i32 %i.hwx to i64
  %i.iay = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iax
  %i.iaz = load i8, ptr %i.iay, align 1, !tbaa !81
  %i.iba = zext i8 %i.iaz to i64
  %.not100.i.i235 = icmp eq i32 %i.hwx, 0
  %i.ibb = select i1 %.not100.i.i235, i64 %i.iaw, i64 0
  %i.ibc = add nuw nsw i64 %i.ibb, %i.iba
  %i.ibd = sub nsw i64 4, %i.ibc
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i229

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i229: ; preds = %bb.zu, %bb.zt, %bb.zr
  %.sink4471 = phi i64 [ %i.ibd, %bb.zu ], [ %i.ias, %bb.zt ], [ %i.hzu, %bb.zr ]
  %i.ibe = and i64 %.sink4471, 4294967295
  %i.ibf = getelementptr inbounds nuw i8, ptr %i.hxm, i64 %i.ibe ; 2 uses
  store i8 48, ptr %i.hjz, align 1, !tbaa !81
  %i.ibg = getelementptr inbounds nuw i8, ptr %i.hjz, i64 1
  store i8 46, ptr %i.ibg, align 1, !tbaa !81
  %i.ibh = icmp slt i32 %i.hwe, 0
  br i1 %i.ibh, label %.lr.ph2223.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

.lr.ph2223.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i229
  %i.ibi = getelementptr i8, ptr %i.hjz, i64 2
  %narrow3141 = sub nsw i32 0, %i.hwe
  %i.ibj = zext nneg i32 %narrow3141 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ibi, i8 48, i64 %i.ibj, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

bb.zv:                                            ; preds = %bb.zn
  %i.ibk = getelementptr inbounds nuw i8, ptr %i.hjz, i64 1 ; 2 uses
  %i.ibl = udiv i64 %.0772, 100000000             ; 2 uses
  %i.ibm = trunc i64 %i.ibl to i32                ; 2 uses
  %.neg.i561.i = mul i64 %i.ibl, 4194967296
  %i.ibn = add i64 %.neg.i561.i, %.0772           ; 2 uses
  %i.ibo = trunc i64 %i.ibn to i32                ; 2 uses
  %i.ibp = udiv i32 %i.ibm, 10000                 ; 3 uses
  %.neg95.i562.i = mul i32 %i.ibp, -10000
  %i.ibq = add i32 %.neg95.i562.i, %i.ibm         ; 5 uses
  %i.ibr = zext nneg i32 %i.ibp to i64
  %i.ibs = mul nuw nsw i64 %i.ibr, 167773
  %i.ibt = lshr i64 %i.ibs, 24
  %i.ibu = trunc nuw nsw i64 %i.ibt to i32        ; 3 uses
  %i.ibv = mul nuw nsw i32 %i.ibu, 41
  %i.ibw = lshr i32 %i.ibv, 12                    ; 4 uses
  %.neg96.i563.i = mul nsw i32 %i.ibw, -100
  %i.ibx = add nsw i32 %.neg96.i563.i, %i.ibu     ; 3 uses
  %.neg97.i564.i = mul nsw i32 %i.ibu, -100
  %i.iby = add nsw i32 %.neg97.i564.i, %i.ibp     ; 3 uses
  %i.ibz = trunc nuw nsw i32 %i.ibw to i8
  %i.ica = add nuw nsw i8 %i.ibz, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hjz, i8 48, i64 24, i1 false)
  store i8 %i.ica, ptr %i.ibk, align 1, !tbaa !81
  %i.icb = icmp ne i32 %i.ibw, 0
  %i.icc = zext i1 %i.icb to i64
  %i.icd = getelementptr inbounds nuw i8, ptr %i.ibk, i64 %i.icc ; 2 uses
  %i.ice = icmp ult i32 %i.ibx, 10
  %i.icf = icmp eq i32 %i.ibw, 0
  %i.icg = and i1 %i.icf, %i.ice                  ; 2 uses
  %i.ich = shl nsw i32 %i.ibx, 1
  %i.ici = zext i32 %i.ich to i64
  %i.icj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ici
  %.neg98.i565.i = sext i1 %i.icg to i64
  %i.ick = zext i1 %i.icg to i64
  %i.icl = getelementptr inbounds nuw i8, ptr %i.icj, i64 %i.ick
  %i.icm = load i16, ptr %i.icl, align 1
  store i16 %i.icm, ptr %i.icd, align 1
  %i.icn = getelementptr inbounds i8, ptr %i.icd, i64 %.neg98.i565.i ; 10 uses
  %i.ico = getelementptr inbounds nuw i8, ptr %i.icn, i64 2
  %i.icp = shl nsw i32 %i.iby, 1
  %i.icq = zext i32 %i.icp to i64
  %i.icr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icq
  %i.ics = load i16, ptr %i.icr, align 2
  store i16 %i.ics, ptr %i.ico, align 1
  %.not.i566.i217 = icmp eq i32 %i.ibo, 0
  br i1 %.not.i566.i217, label %bb.zz, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.ict = mul i32 %i.ibq, 5243
  %i.icu = lshr i32 %i.ict, 19                    ; 2 uses
  %.neg103.i567.i = mul i32 %i.icu, 2147483548
  %i.icv = add i32 %.neg103.i567.i, %i.ibq
  %i.icw = and i64 %i.ibn, 4294967295
  %i.icx = mul nuw nsw i64 %i.icw, 109951163
  %i.icy = lshr i64 %i.icx, 40
  %i.icz = trunc nuw nsw i64 %i.icy to i32        ; 3 uses
  %.neg104.i568.i = mul i32 %i.icz, -10000
  %i.ida = add i32 %.neg104.i568.i, %i.ibo        ; 3 uses
  %i.idb = mul nuw i32 %i.icz, 5243
  %i.idc = lshr i32 %i.idb, 19                    ; 3 uses
  %.neg105.i569.i = mul nsw i32 %i.idc, -100
  %i.idd = add nsw i32 %.neg105.i569.i, %i.icz    ; 2 uses
  %i.ide = getelementptr inbounds nuw i8, ptr %i.icn, i64 4
  %i.idf = shl nuw nsw i32 %i.icu, 1
  %i.idg = zext nneg i32 %i.idf to i64
  %i.idh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idg
  %i.idi = load i16, ptr %i.idh, align 2
  store i16 %i.idi, ptr %i.ide, align 1
  %i.idj = getelementptr inbounds nuw i8, ptr %i.icn, i64 6
  %i.idk = shl i32 %i.icv, 1
  %i.idl = zext i32 %i.idk to i64
  %i.idm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idl
  %i.idn = load i16, ptr %i.idm, align 2
  store i16 %i.idn, ptr %i.idj, align 1
  %i.ido = getelementptr inbounds nuw i8, ptr %i.icn, i64 8
  %i.idp = shl nuw nsw i32 %i.idc, 1
  %i.idq = zext nneg i32 %i.idp to i64
  %i.idr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idq
  %i.ids = load i16, ptr %i.idr, align 2
  store i16 %i.ids, ptr %i.ido, align 1
  %i.idt = getelementptr inbounds nuw i8, ptr %i.icn, i64 10
  %i.idu = shl nsw i32 %i.idd, 1
  %i.idv = zext i32 %i.idu to i64
  %i.idw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idv
  %i.idx = load i16, ptr %i.idw, align 2
  store i16 %i.idx, ptr %i.idt, align 1
  %.not106.i570.i = icmp eq i32 %i.ida, 0
  br i1 %.not106.i570.i, label %bb.zy, label %bb.zx

bb.zx:                                            ; preds = %bb.zw
  %i.idy = mul i32 %i.ida, 5243
  %i.idz = lshr i32 %i.idy, 19                    ; 3 uses
  %.neg108.i571.i = mul nsw i32 %i.idz, -100
  %i.iea = add i32 %.neg108.i571.i, %i.ida        ; 2 uses
  %i.ieb = getelementptr inbounds nuw i8, ptr %i.icn, i64 12
  %i.iec = shl nuw nsw i32 %i.idz, 1
  %i.ied = zext nneg i32 %i.iec to i64
  %i.iee = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ied
  %i.ief = load i16, ptr %i.iee, align 2
  store i16 %i.ief, ptr %i.ieb, align 1
  %i.ieg = getelementptr inbounds nuw i8, ptr %i.icn, i64 14
  %i.ieh = shl i32 %i.iea, 1
  %i.iei = zext i32 %i.ieh to i64
  %i.iej = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iei
  %i.iek = load i16, ptr %i.iej, align 2
  store i16 %i.iek, ptr %i.ieg, align 1
  br label %bb.zy

bb.zy:                                            ; preds = %bb.zw, %bb.zx
  %.sink4485 = phi i32 [ %i.idz, %bb.zx ], [ %i.idc, %bb.zw ]
  %.sink4481 = phi i32 [ %i.iea, %bb.zx ], [ %i.idd, %bb.zw ] ; 2 uses
  %.sink4472 = phi i64 [ 16, %bb.zx ], [ 12, %bb.zw ]
  %i.iel = zext nneg i32 %.sink4485 to i64
  %i.iem = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iel
  %i.ien = load i8, ptr %i.iem, align 1, !tbaa !81
  %i.ieo = zext i8 %i.ien to i64
  %i.iep = zext i32 %.sink4481 to i64
  %i.ieq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iep
  %i.ier = load i8, ptr %i.ieq, align 1, !tbaa !81
  %i.ies = zext i8 %i.ier to i64
  %.not107.i577.i = icmp eq i32 %.sink4481, 0
  %i.iet = add nuw nsw i64 %i.ieo, 2
  %i.ieu = select i1 %.not107.i577.i, i64 %i.iet, i64 %i.ies
  %i.iev = sub nsw i64 %.sink4472, %i.ieu
  br label %._crit_edge2221

bb.zz:                                            ; preds = %bb.zv
  %.not99.i578.i = icmp eq i32 %i.ibq, 0
  br i1 %.not99.i578.i, label %bb.aab, label %bb.aaa

bb.aaa:                                           ; preds = %bb.zz
  %i.iew = mul i32 %i.ibq, 5243
  %i.iex = lshr i32 %i.iew, 19                    ; 3 uses
  %.neg101.i579.i = mul nsw i32 %i.iex, -100
  %i.iey = add i32 %.neg101.i579.i, %i.ibq        ; 3 uses
  %i.iez = getelementptr inbounds nuw i8, ptr %i.icn, i64 4
  %i.ifa = shl nuw nsw i32 %i.iex, 1
  %i.ifb = zext nneg i32 %i.ifa to i64
  %i.ifc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ifb
  %i.ifd = load i16, ptr %i.ifc, align 2
  store i16 %i.ifd, ptr %i.iez, align 1
  %i.ife = getelementptr inbounds nuw i8, ptr %i.icn, i64 6
  %i.iff = shl i32 %i.iey, 1
  %i.ifg = zext i32 %i.iff to i64
  %i.ifh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ifg
  %i.ifi = load i16, ptr %i.ifh, align 2
  store i16 %i.ifi, ptr %i.ife, align 1
  %i.ifj = zext nneg i32 %i.iex to i64
  %i.ifk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifj
  %i.ifl = load i8, ptr %i.ifk, align 1, !tbaa !81
  %i.ifm = zext i8 %i.ifl to i64
  %i.ifn = zext i32 %i.iey to i64
  %i.ifo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifn
  %i.ifp = load i8, ptr %i.ifo, align 1, !tbaa !81
  %i.ifq = zext i8 %i.ifp to i64
  %.not102.i580.i = icmp eq i32 %i.iey, 0
  %i.ifr = add nuw nsw i64 %i.ifm, 2
  %i.ifs = select i1 %.not102.i580.i, i64 %i.ifr, i64 %i.ifq
  %i.ift = sub nsw i64 8, %i.ifs
  br label %._crit_edge2221

bb.aab:                                           ; preds = %bb.zz
  %i.ifu = zext i32 %i.ibx to i64
  %i.ifv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifu
  %i.ifw = load i8, ptr %i.ifv, align 1, !tbaa !81
  %i.ifx = zext i8 %i.ifw to i64
  %i.ify = zext i32 %i.iby to i64
  %i.ifz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ify
  %i.iga = load i8, ptr %i.ifz, align 1, !tbaa !81
  %i.igb = zext i8 %i.iga to i64
  %.not100.i581.i = icmp eq i32 %i.iby, 0
  %i.igc = select i1 %.not100.i581.i, i64 %i.ifx, i64 0
  %i.igd = add nuw nsw i64 %i.igc, %i.igb
  %i.ige = sub nsw i64 4, %i.igd
  br label %._crit_edge2221

._crit_edge2221:                                  ; preds = %bb.aab, %bb.aaa, %bb.zy
  %.sink4487 = phi i64 [ %i.ige, %bb.aab ], [ %i.ift, %bb.aaa ], [ %i.iev, %bb.zy ]
  %i.igf = and i64 %.sink4487, 4294967295
  %i.igg = getelementptr inbounds nuw i8, ptr %i.icn, i64 %i.igf ; 2 uses
  %scevgep2888 = getelementptr i8, ptr %.3359.i, i64 1
  %scevgep2889 = getelementptr i8, ptr %scevgep2888, i64 %.lobit.i539.i
  %i.igh = zext nneg i32 %i.hwe to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hjz, ptr align 1 %scevgep2889, i64 %i.igh, i1 false), !tbaa !81
  %i.igi = zext nneg i32 %i.hwe to i64
  %i.igj = getelementptr inbounds nuw i8, ptr %i.hjz, i64 %i.igi ; 2 uses
  store i8 46, ptr %i.igj, align 1, !tbaa !81
  %i.igk = getelementptr inbounds nuw i8, ptr %i.igj, i64 2 ; 2 uses
  %i.igl = icmp ult ptr %i.igk, %i.igg
  %spec.select948 = select i1 %i.igl, ptr %i.igg, ptr %i.igk
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

bb.aac:                                           ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit555.i
  %.ptr979 = getelementptr inbounds nuw i8, ptr %i.hjz, i64 1 ; 3 uses
  %i.igm = udiv i64 %.0772, 100000000             ; 2 uses
  %i.ign = trunc i64 %i.igm to i32                ; 2 uses
  %.neg.i583.i = mul i64 %i.igm, 4194967296
  %i.igo = add i64 %.neg.i583.i, %.0772           ; 2 uses
  %i.igp = trunc i64 %i.igo to i32                ; 2 uses
  %i.igq = udiv i32 %i.ign, 10000                 ; 3 uses
  %.neg95.i584.i = mul i32 %i.igq, -10000
  %i.igr = add i32 %.neg95.i584.i, %i.ign         ; 5 uses
  %i.igs = zext nneg i32 %i.igq to i64
  %i.igt = mul nuw nsw i64 %i.igs, 167773
  %i.igu = lshr i64 %i.igt, 24
  %i.igv = trunc nuw nsw i64 %i.igu to i32        ; 3 uses
  %i.igw = mul nuw nsw i32 %i.igv, 41
  %i.igx = lshr i32 %i.igw, 12                    ; 3 uses
  %.neg96.i585.i = mul nsw i32 %i.igx, -100
  %i.igy = add nsw i32 %.neg96.i585.i, %i.igv     ; 3 uses
  %.neg97.i586.i = mul nsw i32 %i.igv, -100
  %i.igz = add nsw i32 %.neg97.i586.i, %i.igq     ; 3 uses
  %i.iha = trunc nuw nsw i32 %i.igx to i8
  %i.ihb = add nuw nsw i8 %i.iha, 48
  store i8 %i.ihb, ptr %.ptr979, align 1, !tbaa !81
  %.not984 = icmp eq i32 %i.igx, 0                ; 2 uses
  %.add974 = select i1 %.not984, i64 1, i64 2     ; 2 uses
  %.ptr980 = getelementptr inbounds nuw i8, ptr %i.hjz, i64 %.add974
  %i.ihc = icmp ult i32 %i.igy, 10
  %i.ihd = and i1 %.not984, %i.ihc                ; 2 uses
  %i.ihe = shl nsw i32 %i.igy, 1
  %i.ihf = zext i32 %i.ihe to i64
  %i.ihg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ihf
  %.neg98.i587.i = sext i1 %i.ihd to i64
  %i.ihh = zext i1 %i.ihd to i64
  %i.ihi = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %i.ihh
  %i.ihj = load i16, ptr %i.ihi, align 1
  store i16 %i.ihj, ptr %.ptr980, align 1
  %.add975 = add nsw i64 %.add974, %.neg98.i587.i ; 2 uses
  %.ptr981 = getelementptr inbounds nuw i8, ptr %i.hjz, i64 %.add975 ; 9 uses
  %i.ihk = getelementptr inbounds nuw i8, ptr %.ptr981, i64 2
  %i.ihl = shl nsw i32 %i.igz, 1
  %i.ihm = zext i32 %i.ihl to i64
  %i.ihn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ihm
  %i.iho = load i16, ptr %i.ihn, align 2
  store i16 %i.iho, ptr %i.ihk, align 1
  %.not.i588.i = icmp eq i32 %i.igp, 0
  br i1 %.not.i588.i, label %bb.aag, label %bb.aad

bb.aad:                                           ; preds = %bb.aac
  %i.ihp = mul i32 %i.igr, 5243
  %i.ihq = lshr i32 %i.ihp, 19                    ; 2 uses
  %.neg103.i589.i = mul i32 %i.ihq, 2147483548
  %i.ihr = add i32 %.neg103.i589.i, %i.igr
  %i.ihs = and i64 %i.igo, 4294967295
  %i.iht = mul nuw nsw i64 %i.ihs, 109951163
  %i.ihu = lshr i64 %i.iht, 40
  %i.ihv = trunc nuw nsw i64 %i.ihu to i32        ; 3 uses
  %.neg104.i590.i = mul i32 %i.ihv, -10000
  %i.ihw = add i32 %.neg104.i590.i, %i.igp        ; 3 uses
  %i.ihx = mul nuw i32 %i.ihv, 5243
  %i.ihy = lshr i32 %i.ihx, 19                    ; 3 uses
  %.neg105.i591.i = mul nsw i32 %i.ihy, -100
  %i.ihz = add nsw i32 %.neg105.i591.i, %i.ihv    ; 3 uses
  %i.iia = getelementptr inbounds nuw i8, ptr %.ptr981, i64 4
  %i.iib = shl nuw nsw i32 %i.ihq, 1
  %i.iic = zext nneg i32 %i.iib to i64
  %i.iid = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iic
  %i.iie = load i16, ptr %i.iid, align 2
  store i16 %i.iie, ptr %i.iia, align 1
  %i.iif = getelementptr inbounds nuw i8, ptr %.ptr981, i64 6
  %i.iig = shl i32 %i.ihr, 1
  %i.iih = zext i32 %i.iig to i64
  %i.iii = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iih
  %i.iij = load i16, ptr %i.iii, align 2
  store i16 %i.iij, ptr %i.iif, align 1
  %i.iik = getelementptr inbounds nuw i8, ptr %.ptr981, i64 8
  %i.iil = shl nuw nsw i32 %i.ihy, 1
  %i.iim = zext nneg i32 %i.iil to i64
  %i.iin = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iim
  %i.iio = load i16, ptr %i.iin, align 2
  store i16 %i.iio, ptr %i.iik, align 1
  %i.iip = getelementptr inbounds nuw i8, ptr %.ptr981, i64 10
  %i.iiq = shl nsw i32 %i.ihz, 1
  %i.iir = zext i32 %i.iiq to i64
  %i.iis = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iir
  %i.iit = load i16, ptr %i.iis, align 2
  store i16 %i.iit, ptr %i.iip, align 1
  %.not106.i592.i = icmp eq i32 %i.ihw, 0
  br i1 %.not106.i592.i, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.iiu = mul i32 %i.ihw, 5243
  %i.iiv = lshr i32 %i.iiu, 19                    ; 3 uses
  %.neg108.i593.i = mul nsw i32 %i.iiv, -100
  %i.iiw = add i32 %.neg108.i593.i, %i.ihw        ; 3 uses
  %i.iix = getelementptr inbounds nuw i8, ptr %.ptr981, i64 12
  %i.iiy = shl nuw nsw i32 %i.iiv, 1
  %i.iiz = zext nneg i32 %i.iiy to i64
  %i.ija = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iiz
  %i.ijb = load i16, ptr %i.ija, align 2
  store i16 %i.ijb, ptr %i.iix, align 1
  %i.ijc = getelementptr inbounds nuw i8, ptr %.ptr981, i64 14
  %i.ijd = shl i32 %i.iiw, 1
  %i.ije = zext i32 %i.ijd to i64
  %i.ijf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ije
  %i.ijg = load i16, ptr %i.ijf, align 2
  store i16 %i.ijg, ptr %i.ijc, align 1
  %i.ijh = zext nneg i32 %i.iiv to i64
  %i.iji = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijh
  %i.ijj = load i8, ptr %i.iji, align 1, !tbaa !81
  %i.ijk = zext i8 %i.ijj to i64
  %i.ijl = zext i32 %i.iiw to i64
  %i.ijm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijl
  %i.ijn = load i8, ptr %i.ijm, align 1, !tbaa !81
  %i.ijo = zext i8 %i.ijn to i64
  %.not109.i594.i = icmp eq i32 %i.iiw, 0
  %i.ijp = add nuw nsw i64 %i.ijk, 2
  %i.ijq = select i1 %.not109.i594.i, i64 %i.ijp, i64 %i.ijo
  %i.ijr = sub nsw i64 16, %i.ijq
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i

bb.aaf:                                           ; preds = %bb.aad
  %i.ijs = zext nneg i32 %i.ihy to i64
  %i.ijt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijs
  %i.iju = load i8, ptr %i.ijt, align 1, !tbaa !81
  %i.ijv = zext i8 %i.iju to i64
  %i.ijw = zext i32 %i.ihz to i64
  %i.ijx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijw
  %i.ijy = load i8, ptr %i.ijx, align 1, !tbaa !81
  %i.ijz = zext i8 %i.ijy to i64
  %.not107.i599.i = icmp eq i32 %i.ihz, 0
  %i.ika = add nuw nsw i64 %i.ijv, 2
  %i.ikb = select i1 %.not107.i599.i, i64 %i.ika, i64 %i.ijz
  %i.ikc = sub nsw i64 12, %i.ikb
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i

bb.aag:                                           ; preds = %bb.aac
  %.not99.i600.i = icmp eq i32 %i.igr, 0
  br i1 %.not99.i600.i, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.ikd = mul i32 %i.igr, 5243
  %i.ike = lshr i32 %i.ikd, 19                    ; 3 uses
  %.neg101.i601.i = mul nsw i32 %i.ike, -100
  %i.ikf = add i32 %.neg101.i601.i, %i.igr        ; 3 uses
  %i.ikg = getelementptr inbounds nuw i8, ptr %.ptr981, i64 4
  %i.ikh = shl nuw nsw i32 %i.ike, 1
  %i.iki = zext nneg i32 %i.ikh to i64
  %i.ikj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iki
  %i.ikk = load i16, ptr %i.ikj, align 2
  store i16 %i.ikk, ptr %i.ikg, align 1
  %i.ikl = getelementptr inbounds nuw i8, ptr %.ptr981, i64 6
  %i.ikm = shl i32 %i.ikf, 1
  %i.ikn = zext i32 %i.ikm to i64
  %i.iko = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ikn
  %i.ikp = load i16, ptr %i.iko, align 2
  store i16 %i.ikp, ptr %i.ikl, align 1
  %i.ikq = zext nneg i32 %i.ike to i64
  %i.ikr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ikq
  %i.iks = load i8, ptr %i.ikr, align 1, !tbaa !81
  %i.ikt = zext i8 %i.iks to i64
  %i.iku = zext i32 %i.ikf to i64
  %i.ikv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iku
  %i.ikw = load i8, ptr %i.ikv, align 1, !tbaa !81
  %i.ikx = zext i8 %i.ikw to i64
  %.not102.i602.i = icmp eq i32 %i.ikf, 0
  %i.iky = add nuw nsw i64 %i.ikt, 2
  %i.ikz = select i1 %.not102.i602.i, i64 %i.iky, i64 %i.ikx
  %i.ila = sub nsw i64 8, %i.ikz
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i

bb.aai:                                           ; preds = %bb.aag
  %i.ilb = zext i32 %i.igy to i64
  %i.ilc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ilb
  %i.ild = load i8, ptr %i.ilc, align 1, !tbaa !81
  %i.ile = zext i8 %i.ild to i64
  %i.ilf = zext i32 %i.igz to i64
  %i.ilg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ilf
  %i.ilh = load i8, ptr %i.ilg, align 1, !tbaa !81
  %i.ili = zext i8 %i.ilh to i64
  %.not100.i603.i = icmp eq i32 %i.igz, 0
  %i.ilj = select i1 %.not100.i603.i, i64 %i.ile, i64 0
  %i.ilk = add nuw nsw i64 %i.ilj, %i.ili
  %i.ill = sub nsw i64 4, %i.ilk
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i: ; preds = %bb.aae, %bb.aaf, %bb.aai, %bb.aah
  %.pn.i596.i.pn.in = phi i64 [ %i.ill, %bb.aai ], [ %i.ila, %bb.aah ], [ %i.ijr, %bb.aae ], [ %i.ikc, %bb.aaf ]
  %.pn.i596.i.pn = and i64 %.pn.i596.i.pn.in, 4294967295
  %.1.i598.i.idx = add nuw nsw i64 %.pn.i596.i.pn, %.add975 ; 2 uses
  %.1.i598.i.ptr = getelementptr inbounds nuw i8, ptr %i.hjz, i64 %.1.i598.i.idx
  %i.ilm = icmp eq i64 %.1.i598.i.idx, 2
  %.neg130.i.i207 = sext i1 %i.ilm to i64
  %i.iln = getelementptr inbounds i8, ptr %.1.i598.i.ptr, i64 %.neg130.i.i207 ; 2 uses
  %i.ilo = add nsw i32 %i.hwe, -1                 ; 2 uses
  %i.ilp = load i8, ptr %.ptr979, align 1, !tbaa !81
  store i8 %i.ilp, ptr %i.hjz, align 1, !tbaa !81
  store i8 46, ptr %.ptr979, align 1, !tbaa !81
  store i8 101, ptr %i.iln, align 1, !tbaa !81
  %i.ilq = getelementptr inbounds nuw i8, ptr %i.iln, i64 1 ; 2 uses
  store i8 45, ptr %i.ilq, align 1, !tbaa !81
  %.lobit.i605.i = lshr i32 %i.ilo, 31
  %i.ilr = zext nneg i32 %.lobit.i605.i to i64
  %i.ils = getelementptr inbounds nuw i8, ptr %i.ilq, i64 %i.ilr ; 5 uses
  %i.ilt = tail call i32 @llvm.abs.i32(i32 %i.ilo, i1 true) ; 5 uses
  %i.ilu = icmp samesign ult i32 %i.ilt, 100
  br i1 %i.ilu, label %bb.aaj, label %bb.aak

bb.aaj:                                           ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i
  %i.ilv = icmp samesign ult i32 %i.ilt, 10       ; 2 uses
  %i.ilw = shl nuw nsw i32 %i.ilt, 1
  %i.ilx = zext nneg i32 %i.ilw to i64
  %i.ily = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ilx
  %.neg22.i.i216 = sext i1 %i.ilv to i64
  %i.ilz = zext i1 %i.ilv to i64
  %i.ima = getelementptr inbounds nuw i8, ptr %i.ily, i64 %i.ilz
  %i.imb = load i16, ptr %i.ima, align 1
  store i16 %i.imb, ptr %i.ils, align 1
  %i.imc = getelementptr inbounds nuw i8, ptr %i.ils, i64 2
  %i.imd = getelementptr inbounds i8, ptr %i.imc, i64 %.neg22.i.i216
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

bb.aak:                                           ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i
  %i.ime = mul nuw nsw i32 %i.ilt, 656
  %i.imf = lshr i32 %i.ime, 16                    ; 2 uses
  %.neg.i606.i = mul i32 %i.imf, 2147483548
  %i.img = add i32 %.neg.i606.i, %i.ilt
  %i.imh = trunc nuw nsw i32 %i.imf to i8
  %i.imi = add nuw nsw i8 %i.imh, 48
  store i8 %i.imi, ptr %i.ils, align 1, !tbaa !81
  %i.imj = getelementptr inbounds nuw i8, ptr %i.ils, i64 1
  %i.imk = shl i32 %i.img, 1
  %i.iml = zext i32 %i.imk to i64
  %i.imm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iml
  %i.imn = load i16, ptr %i.imm, align 2
  store i16 %i.imn, ptr %i.imj, align 1
  %i.imo = getelementptr inbounds nuw i8, ptr %i.ils, i64 3
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

bb.aal:                                           ; preds = %bb.yp
  %i.imp = shl nuw nsw i64 %i.hjp, 5              ; 3 uses
  %i.imq = or disjoint i64 %i.imp, 16
  %i.imr = add nsw i64 %i.imp, -16
  %i.ims = zext i64 %i.imr to i128                ; 2 uses
  %i.imt = mul nuw nsw i128 %i.ims, 7784369436827535058
  %i.imu = lshr i128 %i.imt, 64
  %i.imv = mul nuw i128 %i.ims, 11392378155556871081
  %i.imw = add nuw i128 %i.imu, %i.imv            ; 2 uses
  %i.imx = lshr i128 %i.imw, 64
  %i.imy = trunc nuw i128 %i.imx to i64
  %i.imz = and i128 %i.imw, 18446744073709551614
  %i.ina = icmp ne i128 %i.imz, 0
  %i.inb = zext i1 %i.ina to i64
  %i.inc = or i64 %i.inb, %i.imy
  %i.ind = zext nneg i64 %i.imp to i128           ; 2 uses
  %i.ine = mul nuw nsw i128 %i.ind, 7784369436827535058
  %i.inf = lshr i128 %i.ine, 64
  %i.ing = mul nuw nsw i128 %i.ind, 11392378155556871081
  %i.inh = add nuw nsw i128 %i.inf, %i.ing        ; 2 uses
  %i.ini = lshr i128 %i.inh, 64
  %i.inj = trunc nuw nsw i128 %i.ini to i64       ; 5 uses
  %i.ink = and i128 %i.inh, 18446744073709551614
  %i.inl = icmp ne i128 %i.ink, 0
  %i.inm = zext i1 %i.inl to i64
  %i.inn = or i64 %i.inm, %i.inj                  ; 2 uses
  %i.ino = zext nneg i64 %i.imq to i128           ; 2 uses
  %i.inp = mul nuw nsw i128 %i.ino, 7784369436827535058
  %i.inq = lshr i128 %i.inp, 64
  %i.inr = mul nuw nsw i128 %i.ino, 11392378155556871081
  %i.ins = add nuw nsw i128 %i.inq, %i.inr        ; 2 uses
  %i.int = lshr i128 %i.ins, 64
  %i.inu = trunc nuw nsw i128 %i.int to i64
  %i.inv = and i128 %i.ins, 18446744073709551614
  %i.inw = icmp ne i128 %i.inv, 0
  %i.inx = zext i1 %i.inw to i64
  %i.iny = or i64 %i.inx, %i.inu
  %i.inz = and i64 %i.hjo, 1                      ; 2 uses
  %i.ioa = add nuw i64 %i.inc, %i.inz             ; 2 uses
  %i.iob = sub nuw nsw i64 %i.iny, %i.inz         ; 2 uses
  %i.ioc = lshr i64 %i.inj, 2                     ; 2 uses
  %i.iod = icmp samesign ugt i64 %i.inj, 39
  br i1 %i.iod, label %bb.aam, label %bb.aan

bb.aam:                                           ; preds = %bb.aal
  %i.ioe = udiv i64 %i.inj, 40                    ; 2 uses
  %i.iof = mul nuw nsw i64 %i.ioe, 40             ; 2 uses
  %i.iog = add nuw nsw i64 %i.iof, 40
  %i.ioh = icmp samesign uge i64 %i.iob, %i.iog   ; 2 uses
  %i.ioi = icmp ugt i64 %i.ioa, %i.iof
  %.not.i550.i = xor i1 %i.ioi, %i.ioh
  br i1 %.not.i550.i, label %bb.aan, label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i239

bb.aan:                                           ; preds = %bb.aam, %bb.aal
  %i.ioj = and i64 %i.inj, 9223372036854775804    ; 3 uses
  %i.iok = add nuw nsw i64 %i.ioj, 4
  %i.iol = icmp samesign uge i64 %i.iob, %i.iok   ; 2 uses
  %i.iom = or disjoint i64 %i.ioj, 2              ; 2 uses
  %i.ion = icmp samesign ugt i64 %i.inn, %i.iom
  br i1 %i.ion, label %bb.aap, label %bb.aao

bb.aao:                                           ; preds = %bb.aan
  %i.ioo = icmp eq i64 %i.inn, %i.iom
  %i.iop = trunc i64 %i.ioc to i1
  %i.ioq = and i1 %i.ioo, %i.iop
  br label %bb.aap

bb.aap:                                           ; preds = %bb.aao, %bb.aan
  %i.ior = phi i1 [ true, %bb.aan ], [ %i.ioq, %bb.aao ]
  %i.ios = icmp ugt i64 %i.ioa, %i.ioj
  %.not58.i.i238 = xor i1 %i.ios, %i.iol
  %i.iot = select i1 %.not58.i.i238, i1 %i.ior, i1 %i.iol
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i239

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i239: ; preds = %bb.aam, %bb.aap
  %.sink4490 = phi i1 [ %i.iot, %bb.aap ], [ %i.ioh, %bb.aam ]
  %.sink4488 = phi i64 [ %i.ioc, %bb.aap ], [ %i.ioe, %bb.aam ]
  %storemerge.i.i240 = phi i32 [ -324, %bb.aap ], [ -323, %bb.aam ]
  %i.iou = zext i1 %.sink4490 to i64
  %i.iov = add nuw nsw i64 %.sink4488, %i.iou     ; 25 uses
  %i.iow = getelementptr inbounds nuw i8, ptr %i.hjz, i64 1 ; 19 uses
  %i.iox = icmp samesign ugt i64 %i.iov, 999999999999999
  br i1 %i.iox, label %bb.aaq, label %bb.aar

bb.aaq:                                           ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit.i239
  %i.ioy = udiv i64 %i.iov, 100000000             ; 2 uses
  %.neg29.i.i253 = mul nuw nsw i64 %i.ioy, 4194967296
  %i.ioz = add nuw nsw i64 %.neg29.i.i253, %i.iov ; 2 uses
  %i.ipa = trunc i64 %i.ioz to i32
  %i.ipb = udiv i64 %i.iov, 10000000000000000     ; 2 uses
  %.neg30.i.i254 = mul nuw nsw i64 %i.ipb, 4194967296
  %i.ipc = add nuw nsw i64 %.neg30.i.i254, %i.ioy ; 2 uses
  %i.ipd = trunc i64 %i.ipc to i32
  %i.ipe = trunc nuw nsw i64 %i.ipb to i8
  %i.ipf = add nuw nsw i8 %i.ipe, 48
  store i8 %i.ipf, ptr %i.iow, align 1, !tbaa !81
  %i.ipg = icmp samesign ugt i64 %i.iov, 9999999999999999
  %i.iph = zext i1 %i.ipg to i64
  %i.ipi = getelementptr inbounds nuw i8, ptr %i.iow, i64 %i.iph ; 9 uses
  %i.ipj = and i64 %i.ipc, 4294967295
  %i.ipk = mul nuw nsw i64 %i.ipj, 109951163
  %i.ipl = lshr i64 %i.ipk, 40
  %i.ipm = trunc nuw nsw i64 %i.ipl to i32        ; 3 uses
  %.neg.i673.i = mul i32 %i.ipm, -10000
  %i.ipn = add i32 %.neg.i673.i, %i.ipd           ; 2 uses
  %i.ipo = mul nuw i32 %i.ipm, 5243
  %i.ipp = lshr i32 %i.ipo, 19                    ; 2 uses
  %i.ipq = mul i32 %i.ipn, 5243
  %i.ipr = lshr i32 %i.ipq, 19                    ; 2 uses
  %.neg17.i674.i = mul nsw i32 %i.ipp, -100
  %i.ips = add nsw i32 %.neg17.i674.i, %i.ipm
  %.neg18.i675.i = mul i32 %i.ipr, 2147483548
  %i.ipt = add i32 %.neg18.i675.i, %i.ipn
  %i.ipu = shl nuw nsw i32 %i.ipp, 1
end_hunk_5
