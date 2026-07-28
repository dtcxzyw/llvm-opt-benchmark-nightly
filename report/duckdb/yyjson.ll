inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %.neg129.i = sext i1 %i.aqe to i32
  %i.aqf = add nsw i32 %i.aqd, %.neg129.i
  %i.aqg = add nsw i32 %i.aqf, %storemerge.i703   ; 10 uses
  %i.aqh = add nsw i32 %i.aqg, 5
  %or.cond3.i = icmp ult i32 %i.aqh, 27
  %i.aqi = udiv i64 %.11602, 100000000            ; 2 uses
  %i.aqj = trunc i64 %i.aqi to i32                ; 2 uses
  %.neg.i826 = mul i64 %i.aqi, 4194967296
  %i.aqk = add i64 %.neg.i826, %.11602            ; 4 uses
  %i.aql = trunc i64 %i.aqk to i32                ; 6 uses
  %i.aqm = udiv i32 %i.aqj, 10000                 ; 3 uses
  %.neg95.i827 = mul i32 %i.aqm, -10000
  %i.aqn = add i32 %.neg95.i827, %i.aqj           ; 15 uses
  %i.aqo = zext nneg i32 %i.aqm to i64
  %i.aqp = mul nuw nsw i64 %i.aqo, 167773
  %i.aqq = lshr i64 %i.aqp, 24
  %i.aqr = trunc nuw nsw i64 %i.aqq to i32        ; 3 uses
  %i.aqs = mul nuw nsw i32 %i.aqr, 41
  %i.aqt = lshr i32 %i.aqs, 12                    ; 7 uses
  %.neg96.i828 = mul nsw i32 %i.aqt, -100
  %i.aqu = add nsw i32 %.neg96.i828, %i.aqr       ; 9 uses
  %.neg97.i829 = mul nsw i32 %i.aqr, -100
  %i.aqv = add nsw i32 %.neg97.i829, %i.aqm       ; 9 uses
  %i.aqw = trunc nuw nsw i32 %i.aqt to i8
  %i.aqx = add nuw nsw i8 %i.aqw, 48              ; 3 uses
  br i1 %or.cond3.i, label %bb.fl, label %bb.ga

bb.fl:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit705
  %i.aqy = icmp slt i32 %i.aqg, 1
  br i1 %i.aqy, label %bb.fm, label %bb.ft

bb.fm:                                            ; preds = %bb.fl
  %i.aqz = sub nsw i32 2, %i.aqg
  %i.ara = zext nneg i32 %i.aqz to i64
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.ara ; 2 uses
  store i8 %i.aqx, ptr %i.arb, align 1, !tbaa !81
  %i.arc = icmp ne i32 %i.aqt, 0
  %i.ard = zext i1 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.arb, i64 %i.ard ; 2 uses
  %i.arf = icmp ult i32 %i.aqu, 10
  %i.arg = icmp eq i32 %i.aqt, 0
  %i.arh = and i1 %i.arg, %i.arf                  ; 2 uses
  %i.ari = shl nsw i32 %i.aqu, 1
  %i.arj = zext i32 %i.ari to i64
  %i.ark = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.arj
  %.neg98.i830 = sext i1 %i.arh to i64
  %i.arl = zext i1 %i.arh to i64
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ark, i64 %i.arl
  %i.arn = load i16, ptr %i.arm, align 1
  store i16 %i.arn, ptr %i.are, align 1
  %i.aro = getelementptr inbounds i8, ptr %i.are, i64 %.neg98.i830 ; 10 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 2
  %i.arq = shl nsw i32 %i.aqv, 1
  %i.arr = zext i32 %i.arq to i64
  %i.ars = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.arr
  %i.art = load i16, ptr %i.ars, align 2
  store i16 %i.art, ptr %i.arp, align 1
  %.not.i831 = icmp eq i32 %i.aql, 0
  br i1 %.not.i831, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aru = mul i32 %i.aqn, 5243
  %i.arv = lshr i32 %i.aru, 19                    ; 2 uses
  %.neg103.i832 = mul i32 %i.arv, 2147483548
  %i.arw = add i32 %.neg103.i832, %i.aqn
  %i.arx = and i64 %i.aqk, 4294967295
  %i.ary = mul nuw nsw i64 %i.arx, 109951163
  %i.arz = lshr i64 %i.ary, 40
  %i.asa = trunc nuw nsw i64 %i.arz to i32        ; 3 uses
  %.neg104.i833 = mul i32 %i.asa, -10000
  %i.asb = add i32 %.neg104.i833, %i.aql          ; 3 uses
  %i.asc = mul nuw i32 %i.asa, 5243
  %i.asd = lshr i32 %i.asc, 19                    ; 3 uses
  %.neg105.i834 = mul nsw i32 %i.asd, -100
  %i.ase = add nsw i32 %.neg105.i834, %i.asa      ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.aro, i64 4
  %i.asg = shl nuw nsw i32 %i.arv, 1
  %i.ash = zext nneg i32 %i.asg to i64
  %i.asi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ash
  %i.asj = load i16, ptr %i.asi, align 2
  store i16 %i.asj, ptr %i.asf, align 1
  %i.ask = getelementptr inbounds nuw i8, ptr %i.aro, i64 6
  %i.asl = shl i32 %i.arw, 1
  %i.asm = zext i32 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asm
  %i.aso = load i16, ptr %i.asn, align 2
  store i16 %i.aso, ptr %i.ask, align 1
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aro, i64 8
  %i.asq = shl nuw nsw i32 %i.asd, 1
  %i.asr = zext nneg i32 %i.asq to i64
  %i.ass = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asr
  %i.ast = load i16, ptr %i.ass, align 2
  store i16 %i.ast, ptr %i.asp, align 1
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aro, i64 10
  %i.asv = shl nsw i32 %i.ase, 1
  %i.asw = zext i32 %i.asv to i64
  %i.asx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asw
  %i.asy = load i16, ptr %i.asx, align 2
  store i16 %i.asy, ptr %i.asu, align 1
  %.not106.i835 = icmp eq i32 %i.asb, 0
  br i1 %.not106.i835, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.asz = mul i32 %i.asb, 5243
  %i.ata = lshr i32 %i.asz, 19                    ; 3 uses
  %.neg108.i836 = mul nsw i32 %i.ata, -100
  %i.atb = add i32 %.neg108.i836, %i.asb          ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.aro, i64 12
  %i.atd = shl nuw nsw i32 %i.ata, 1
  %i.ate = zext nneg i32 %i.atd to i64
  %i.atf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ate
  %i.atg = load i16, ptr %i.atf, align 2
  store i16 %i.atg, ptr %i.atc, align 1
  %i.ath = getelementptr inbounds nuw i8, ptr %i.aro, i64 14
  %i.ati = shl i32 %i.atb, 1
  %i.atj = zext i32 %i.ati to i64
  %i.atk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atj
  %i.atl = load i16, ptr %i.atk, align 2
  store i16 %i.atl, ptr %i.ath, align 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink5222.a = phi i32 [ %i.ata, %bb.fo ], [ %i.asd, %bb.fn ]
  %.sink5218 = phi i32 [ %i.atb, %bb.fo ], [ %i.ase, %bb.fn ] ; 2 uses
  %.sink = phi i64 [ 16, %bb.fo ], [ 12, %bb.fn ]
  %i.atm = zext nneg i32 %.sink5222.a to i64
  %i.atn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atm
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !81
  %i.atp = zext i8 %i.ato to i64
  %i.atq = zext i32 %.sink5218 to i64
  %i.atr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atq
  %i.ats = load i8, ptr %i.atr, align 1, !tbaa !81
  %i.att = zext i8 %i.ats to i64
  %.not107.i842 = icmp eq i32 %.sink5218, 0
  %i.atu = add nuw nsw i64 %i.atp, 2
  %i.atv = select i1 %.not107.i842, i64 %i.atu, i64 %i.att
  %i.atw = sub nsw i64 %.sink, %i.atv
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit847

bb.fq:                                            ; preds = %bb.fm
  %.not99.i843 = icmp eq i32 %i.aqn, 0
  br i1 %.not99.i843, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.atx = mul i32 %i.aqn, 5243
  %i.aty = lshr i32 %i.atx, 19                    ; 3 uses
  %.neg101.i844 = mul nsw i32 %i.aty, -100
  %i.atz = add i32 %.neg101.i844, %i.aqn          ; 3 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aro, i64 4
  %i.aub = shl nuw nsw i32 %i.aty, 1
  %i.auc = zext nneg i32 %i.aub to i64
  %i.aud = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auc
  %i.aue = load i16, ptr %i.aud, align 2
  store i16 %i.aue, ptr %i.aua, align 1
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aro, i64 6
  %i.aug = shl i32 %i.atz, 1
  %i.auh = zext i32 %i.aug to i64
  %i.aui = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auh
  %i.auj = load i16, ptr %i.aui, align 2
  store i16 %i.auj, ptr %i.auf, align 1
  %i.auk = zext nneg i32 %i.aty to i64
  %i.aul = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auk
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !81
  %i.aun = zext i8 %i.aum to i64
  %i.auo = zext i32 %i.atz to i64
  %i.aup = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auo
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !81
  %i.aur = zext i8 %i.auq to i64
  %.not102.i845 = icmp eq i32 %i.atz, 0
  %i.aus = add nuw nsw i64 %i.aun, 2
  %i.aut = select i1 %.not102.i845, i64 %i.aus, i64 %i.aur
  %i.auu = sub nsw i64 8, %i.aut
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit847

bb.fs:                                            ; preds = %bb.fq
  %i.auv = zext i32 %i.aqu to i64
  %i.auw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auv
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !81
  %i.auy = zext i8 %i.aux to i64
  %i.auz = zext i32 %i.aqv to i64
  %i.ava = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auz
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !81
  %i.avc = zext i8 %i.avb to i64
  %.not100.i846 = icmp eq i32 %i.aqv, 0
  %i.avd = select i1 %.not100.i846, i64 %i.auy, i64 0
  %i.ave = add nuw nsw i64 %i.avd, %i.avc
  %i.avf = sub nsw i64 4, %i.ave
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit847

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit847: ; preds = %bb.fp, %bb.fr, %bb.fs
  %.sink5223.a = phi i64 [ %i.atw, %bb.fp ], [ %i.auu, %bb.fr ], [ %i.avf, %bb.fs ]
  %.pn.i839 = and i64 %.sink5223.a, 4294967295
  %.0.i840 = getelementptr inbounds nuw i8, ptr %i.aro, i64 %.pn.i839 ; 2 uses
  store i8 48, ptr %i.aeb, align 1, !tbaa !81
  %i.avg = getelementptr inbounds nuw i8, ptr %i.aeb, i64 1
  store i8 46, ptr %i.avg, align 1, !tbaa !81
  %i.avh = icmp slt i32 %i.aqg, 0
  br i1 %i.avh, label %.lr.ph3128.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit539

.lr.ph3128.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit847
  %6 = sub nsw i32 0, %i.aqg
  %7 = getelementptr i8, ptr %i.aeb, i64 2
  %i.avi = zext nneg i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 48, i64 %i.avi, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit539

bb.ft:                                            ; preds = %bb.fl
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aeb, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aeb, i8 48, i64 24, i1 false)
  store i8 %i.aqx, ptr %i.avj, align 1, !tbaa !81
  %i.avk = icmp ne i32 %i.aqt, 0
  %i.avl = zext i1 %i.avk to i64
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avj, i64 %i.avl ; 2 uses
  %i.avn = icmp ult i32 %i.aqu, 10
  %i.avo = icmp eq i32 %i.aqt, 0
  %i.avp = and i1 %i.avo, %i.avn                  ; 2 uses
  %i.avq = shl nsw i32 %i.aqu, 1
  %i.avr = zext i32 %i.avq to i64
  %i.avs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.avr
  %.neg98.i852 = sext i1 %i.avp to i64
  %i.avt = zext i1 %i.avp to i64
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avs, i64 %i.avt
  %i.avv = load i16, ptr %i.avu, align 1
  store i16 %i.avv, ptr %i.avm, align 1
  %i.avw = getelementptr inbounds i8, ptr %i.avm, i64 %.neg98.i852 ; 10 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 2
  %i.avy = shl nsw i32 %i.aqv, 1
  %i.avz = zext i32 %i.avy to i64
  %i.awa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.avz
  %i.awb = load i16, ptr %i.awa, align 2
  store i16 %i.awb, ptr %i.avx, align 1
  %.not.i853 = icmp eq i32 %i.aql, 0
  br i1 %.not.i853, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.awc = mul i32 %i.aqn, 5243
  %i.awd = lshr i32 %i.awc, 19                    ; 2 uses
  %.neg103.i854 = mul i32 %i.awd, 2147483548
  %i.awe = add i32 %.neg103.i854, %i.aqn
  %i.awf = and i64 %i.aqk, 4294967295
  %i.awg = mul nuw nsw i64 %i.awf, 109951163
  %i.awh = lshr i64 %i.awg, 40
  %i.awi = trunc nuw nsw i64 %i.awh to i32        ; 3 uses
  %.neg104.i855 = mul i32 %i.awi, -10000
  %i.awj = add i32 %.neg104.i855, %i.aql          ; 3 uses
  %i.awk = mul nuw i32 %i.awi, 5243
  %i.awl = lshr i32 %i.awk, 19                    ; 3 uses
  %.neg105.i856 = mul nsw i32 %i.awl, -100
  %i.awm = add nsw i32 %.neg105.i856, %i.awi      ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %i.avw, i64 4
  %i.awo = shl nuw nsw i32 %i.awd, 1
  %i.awp = zext nneg i32 %i.awo to i64
  %i.awq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awp
  %i.awr = load i16, ptr %i.awq, align 2
  store i16 %i.awr, ptr %i.awn, align 1
  %i.aws = getelementptr inbounds nuw i8, ptr %i.avw, i64 6
  %i.awt = shl i32 %i.awe, 1
  %i.awu = zext i32 %i.awt to i64
  %i.awv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awu
  %i.aww = load i16, ptr %i.awv, align 2
  store i16 %i.aww, ptr %i.aws, align 1
  %i.awx = getelementptr inbounds nuw i8, ptr %i.avw, i64 8
  %i.awy = shl nuw nsw i32 %i.awl, 1
  %i.awz = zext nneg i32 %i.awy to i64
  %i.axa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awz
  %i.axb = load i16, ptr %i.axa, align 2
  store i16 %i.axb, ptr %i.awx, align 1
  %i.axc = getelementptr inbounds nuw i8, ptr %i.avw, i64 10
  %i.axd = shl nsw i32 %i.awm, 1
  %i.axe = zext i32 %i.axd to i64
  %i.axf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axe
  %i.axg = load i16, ptr %i.axf, align 2
  store i16 %i.axg, ptr %i.axc, align 1
  %.not106.i857 = icmp eq i32 %i.awj, 0
  br i1 %.not106.i857, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.axh = mul i32 %i.awj, 5243
  %i.axi = lshr i32 %i.axh, 19                    ; 3 uses
  %.neg108.i858 = mul nsw i32 %i.axi, -100
  %i.axj = add i32 %.neg108.i858, %i.awj          ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.avw, i64 12
  %i.axl = shl nuw nsw i32 %i.axi, 1
  %i.axm = zext nneg i32 %i.axl to i64
  %i.axn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axm
  %i.axo = load i16, ptr %i.axn, align 2
  store i16 %i.axo, ptr %i.axk, align 1
  %i.axp = getelementptr inbounds nuw i8, ptr %i.avw, i64 14
  %i.axq = shl i32 %i.axj, 1
  %i.axr = zext i32 %i.axq to i64
  %i.axs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axr
  %i.axt = load i16, ptr %i.axs, align 2
  store i16 %i.axt, ptr %i.axp, align 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %.sink5237 = phi i32 [ %i.axi, %bb.fv ], [ %i.awl, %bb.fu ]
  %.sink5233 = phi i32 [ %i.axj, %bb.fv ], [ %i.awm, %bb.fu ] ; 2 uses
  %.sink5224 = phi i64 [ 16, %bb.fv ], [ 12, %bb.fu ]
  %i.axu = zext nneg i32 %.sink5237 to i64
  %i.axv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.axu
  %i.axw = load i8, ptr %i.axv, align 1, !tbaa !81
  %i.axx = zext i8 %i.axw to i64
  %i.axy = zext i32 %.sink5233 to i64
  %i.axz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.axy
  %i.aya = load i8, ptr %i.axz, align 1, !tbaa !81
  %i.ayb = zext i8 %i.aya to i64
  %.not107.i864 = icmp eq i32 %.sink5233, 0
  %i.ayc = add nuw nsw i64 %i.axx, 2
  %i.ayd = select i1 %.not107.i864, i64 %i.ayc, i64 %i.ayb
  %i.aye = sub nsw i64 %.sink5224, %i.ayd
  br label %iter.check6114

bb.fx:                                            ; preds = %bb.ft
  %.not99.i865 = icmp eq i32 %i.aqn, 0
  br i1 %.not99.i865, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ayf = mul i32 %i.aqn, 5243
  %i.ayg = lshr i32 %i.ayf, 19                    ; 3 uses
  %.neg101.i866 = mul nsw i32 %i.ayg, -100
  %i.ayh = add i32 %.neg101.i866, %i.aqn          ; 3 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.avw, i64 4
  %i.ayj = shl nuw nsw i32 %i.ayg, 1
  %i.ayk = zext nneg i32 %i.ayj to i64
  %i.ayl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayk
  %i.aym = load i16, ptr %i.ayl, align 2
  store i16 %i.aym, ptr %i.ayi, align 1
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.avw, i64 6
  %i.ayo = shl i32 %i.ayh, 1
  %i.ayp = zext i32 %i.ayo to i64
  %i.ayq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayp
  %i.ayr = load i16, ptr %i.ayq, align 2
  store i16 %i.ayr, ptr %i.ayn, align 1
  %i.ays = zext nneg i32 %i.ayg to i64
  %i.ayt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ays
  %i.ayu = load i8, ptr %i.ayt, align 1, !tbaa !81
  %i.ayv = zext i8 %i.ayu to i64
  %i.ayw = zext i32 %i.ayh to i64
  %i.ayx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayw
  %i.ayy = load i8, ptr %i.ayx, align 1, !tbaa !81
  %i.ayz = zext i8 %i.ayy to i64
  %.not102.i867 = icmp eq i32 %i.ayh, 0
  %i.aza = add nuw nsw i64 %i.ayv, 2
  %i.azb = select i1 %.not102.i867, i64 %i.aza, i64 %i.ayz
  %i.azc = sub nsw i64 8, %i.azb
  br label %iter.check6114

bb.fz:                                            ; preds = %bb.fx
  %i.azd = zext i32 %i.aqu to i64
  %i.aze = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azd
  %i.azf = load i8, ptr %i.aze, align 1, !tbaa !81
  %i.azg = zext i8 %i.azf to i64
  %i.azh = zext i32 %i.aqv to i64
  %i.azi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azh
  %i.azj = load i8, ptr %i.azi, align 1, !tbaa !81
  %i.azk = zext i8 %i.azj to i64
  %.not100.i868 = icmp eq i32 %i.aqv, 0
  %i.azl = select i1 %.not100.i868, i64 %i.azg, i64 0
  %i.azm = add nuw nsw i64 %i.azl, %i.azk
  %i.azn = sub nsw i64 4, %i.azm
  br label %iter.check6114

iter.check6114:                                   ; preds = %bb.fz, %bb.fy, %bb.fw
  %.sink5239.a = phi i64 [ %i.azn, %bb.fz ], [ %i.azc, %bb.fy ], [ %i.aye, %bb.fw ]
  %i.azo = and i64 %.sink5239.a, 4294967295
  %i.azp = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.azo ; 2 uses
  %wide.trip.count3732 = zext nneg i32 %i.aqg to i64 ; 6 uses
  %min.iters.check6100 = icmp ult i32 %i.aqg, 4
  br i1 %min.iters.check6100, label %.lr.ph3125.preheader, label %vector.main.loop.iter.check6101

vector.main.loop.iter.check6101:                  ; preds = %iter.check6114
  %min.iters.check6102 = icmp ult i32 %i.aqg, 32
  br i1 %min.iters.check6102, label %vec.epilog.ph6118, label %vector.ph6103

vector.ph6103:                                    ; preds = %vector.main.loop.iter.check6101
  %n.mod.vf6104 = and i64 %wide.trip.count3732, 28
  %n.vec6105 = and i64 %wide.trip.count3732, 2147483616 ; 4 uses
  br label %vector.body6106

vector.body6106:                                  ; preds = %vector.body6106, %vector.ph6103
  %index6107 = phi i64 [ 0, %vector.ph6103 ], [ %index.next6110, %vector.body6106 ] ; 3 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %index6107 ; 2 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 1
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azq, i64 17
  %wide.load6108.a = load <16 x i8>, ptr %i.azr, align 1, !tbaa !81
  %wide.load6109 = load <16 x i8>, ptr %i.azs, align 1, !tbaa !81
  %i.azt = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %index6107 ; 2 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 16
  store <16 x i8> %wide.load6108.a, ptr %i.azt, align 1, !tbaa !81
  store <16 x i8> %wide.load6109, ptr %i.azu, align 1, !tbaa !81
  %index.next6110 = add nuw i64 %index6107, 32    ; 2 uses
  %i.azv = icmp eq i64 %index.next6110, %n.vec6105
  br i1 %i.azv, label %middle.block6111, label %vector.body6106, !llvm.loop !299

middle.block6111:                                 ; preds = %vector.body6106
  %cmp.n6112 = icmp eq i64 %n.vec6105, %wide.trip.count3732
  br i1 %cmp.n6112, label %._crit_edge3126, label %vec.epilog.iter.check6116

vec.epilog.iter.check6116:                        ; preds = %middle.block6111
  %min.epilog.iters.check6117 = icmp eq i64 %n.mod.vf6104, 0
  br i1 %min.epilog.iters.check6117, label %.lr.ph3125.preheader, label %vec.epilog.ph6118, !prof !294

vec.epilog.ph6118:                                ; preds = %vector.main.loop.iter.check6101, %vec.epilog.iter.check6116
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %.neg129.i633 = sext i1 %i.ebo to i32
  %i.ebp = add nsw i32 %i.ebn, %.neg129.i633
  %i.ebq = add nsw i32 %i.ebp, %storemerge.i693   ; 10 uses
  %i.ebr = add nsw i32 %i.ebq, 5
  %or.cond3.i634 = icmp ult i32 %i.ebr, 27
  br i1 %or.cond3.i634, label %bb.ot, label %bb.pi

bb.ot:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695
  %i.ebs = icmp slt i32 %i.ebq, 1
  br i1 %i.ebs, label %bb.ou, label %bb.pb

bb.ou:                                            ; preds = %bb.ot
  %i.ebt = sub nsw i32 2, %i.ebq
  %i.ebu = zext nneg i32 %i.ebt to i64
  %i.ebv = getelementptr inbounds nuw i8, ptr %i.dpl, i64 %i.ebu ; 2 uses
  %i.ebw = udiv i64 %.11599, 100000000            ; 2 uses
  %i.ebx = trunc i64 %i.ebw to i32                ; 2 uses
  %.neg.i760 = mul i64 %i.ebw, 4194967296
  %i.eby = add i64 %.neg.i760, %.11599            ; 2 uses
  %i.ebz = trunc i64 %i.eby to i32                ; 2 uses
  %i.eca = udiv i32 %i.ebx, 10000                 ; 3 uses
  %.neg95.i761 = mul i32 %i.eca, -10000
  %i.ecb = add i32 %.neg95.i761, %i.ebx           ; 5 uses
  %i.ecc = zext nneg i32 %i.eca to i64
  %i.ecd = mul nuw nsw i64 %i.ecc, 167773
  %i.ece = lshr i64 %i.ecd, 24
  %i.ecf = trunc nuw nsw i64 %i.ece to i32        ; 3 uses
  %i.ecg = mul nuw nsw i32 %i.ecf, 41
  %i.ech = lshr i32 %i.ecg, 12                    ; 4 uses
  %.neg96.i762 = mul nsw i32 %i.ech, -100
  %i.eci = add nsw i32 %.neg96.i762, %i.ecf       ; 3 uses
  %.neg97.i763 = mul nsw i32 %i.ecf, -100
  %i.ecj = add nsw i32 %.neg97.i763, %i.eca       ; 3 uses
  %i.eck = trunc nuw nsw i32 %i.ech to i8
  %i.ecl = add nuw nsw i8 %i.eck, 48
  store i8 %i.ecl, ptr %i.ebv, align 1, !tbaa !81
  %i.ecm = icmp ne i32 %i.ech, 0
  %i.ecn = zext i1 %i.ecm to i64
  %i.eco = getelementptr inbounds nuw i8, ptr %i.ebv, i64 %i.ecn ; 2 uses
  %i.ecp = icmp ult i32 %i.eci, 10
  %i.ecq = icmp eq i32 %i.ech, 0
  %i.ecr = and i1 %i.ecq, %i.ecp                  ; 2 uses
  %i.ecs = shl nsw i32 %i.eci, 1
  %i.ect = zext i32 %i.ecs to i64
  %i.ecu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ect
  %.neg98.i764 = sext i1 %i.ecr to i64
  %i.ecv = zext i1 %i.ecr to i64
  %i.ecw = getelementptr inbounds nuw i8, ptr %i.ecu, i64 %i.ecv
  %i.ecx = load i16, ptr %i.ecw, align 1
  store i16 %i.ecx, ptr %i.eco, align 1
  %i.ecy = getelementptr inbounds i8, ptr %i.eco, i64 %.neg98.i764 ; 10 uses
  %i.ecz = getelementptr inbounds nuw i8, ptr %i.ecy, i64 2
  %i.eda = shl nsw i32 %i.ecj, 1
  %i.edb = zext i32 %i.eda to i64
  %i.edc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edb
  %i.edd = load i16, ptr %i.edc, align 2
  store i16 %i.edd, ptr %i.ecz, align 1
  %.not.i765 = icmp eq i32 %i.ebz, 0
  br i1 %.not.i765, label %bb.oy, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.ede = mul i32 %i.ecb, 5243
  %i.edf = lshr i32 %i.ede, 19                    ; 2 uses
  %.neg103.i766 = mul i32 %i.edf, 2147483548
  %i.edg = add i32 %.neg103.i766, %i.ecb
  %i.edh = and i64 %i.eby, 4294967295
  %i.edi = mul nuw nsw i64 %i.edh, 109951163
  %i.edj = lshr i64 %i.edi, 40
  %i.edk = trunc nuw nsw i64 %i.edj to i32        ; 3 uses
  %.neg104.i767 = mul i32 %i.edk, -10000
  %i.edl = add i32 %.neg104.i767, %i.ebz          ; 3 uses
  %i.edm = mul nuw i32 %i.edk, 5243
  %i.edn = lshr i32 %i.edm, 19                    ; 3 uses
  %.neg105.i768 = mul nsw i32 %i.edn, -100
  %i.edo = add nsw i32 %.neg105.i768, %i.edk      ; 2 uses
  %i.edp = getelementptr inbounds nuw i8, ptr %i.ecy, i64 4
  %i.edq = shl nuw nsw i32 %i.edf, 1
  %i.edr = zext nneg i32 %i.edq to i64
  %i.eds = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edr
  %i.edt = load i16, ptr %i.eds, align 2
  store i16 %i.edt, ptr %i.edp, align 1
  %i.edu = getelementptr inbounds nuw i8, ptr %i.ecy, i64 6
  %i.edv = shl i32 %i.edg, 1
  %i.edw = zext i32 %i.edv to i64
  %i.edx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edw
  %i.edy = load i16, ptr %i.edx, align 2
  store i16 %i.edy, ptr %i.edu, align 1
  %i.edz = getelementptr inbounds nuw i8, ptr %i.ecy, i64 8
  %i.eea = shl nuw nsw i32 %i.edn, 1
  %i.eeb = zext nneg i32 %i.eea to i64
  %i.eec = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eeb
  %i.eed = load i16, ptr %i.eec, align 2
  store i16 %i.eed, ptr %i.edz, align 1
  %i.eee = getelementptr inbounds nuw i8, ptr %i.ecy, i64 10
  %i.eef = shl nsw i32 %i.edo, 1
  %i.eeg = zext i32 %i.eef to i64
  %i.eeh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eeg
  %i.eei = load i16, ptr %i.eeh, align 2
  store i16 %i.eei, ptr %i.eee, align 1
  %.not106.i769 = icmp eq i32 %i.edl, 0
  br i1 %.not106.i769, label %bb.ox, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.eej = mul i32 %i.edl, 5243
  %i.eek = lshr i32 %i.eej, 19                    ; 3 uses
  %.neg108.i770 = mul nsw i32 %i.eek, -100
  %i.eel = add i32 %.neg108.i770, %i.edl          ; 2 uses
  %i.eem = getelementptr inbounds nuw i8, ptr %i.ecy, i64 12
  %i.een = shl nuw nsw i32 %i.eek, 1
  %i.eeo = zext nneg i32 %i.een to i64
  %i.eep = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eeo
  %i.eeq = load i16, ptr %i.eep, align 2
  store i16 %i.eeq, ptr %i.eem, align 1
  %i.eer = getelementptr inbounds nuw i8, ptr %i.ecy, i64 14
  %i.ees = shl i32 %i.eel, 1
  %i.eet = zext i32 %i.ees to i64
  %i.eeu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eet
  %i.eev = load i16, ptr %i.eeu, align 2
  store i16 %i.eev, ptr %i.eer, align 1
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ov, %bb.ow
  %.sink5257.a = phi i32 [ %i.eek, %bb.ow ], [ %i.edn, %bb.ov ]
  %.sink5253 = phi i32 [ %i.eel, %bb.ow ], [ %i.edo, %bb.ov ] ; 2 uses
  %.sink5244 = phi i64 [ 16, %bb.ow ], [ 12, %bb.ov ]
  %i.eew = zext nneg i32 %.sink5257.a to i64
  %i.eex = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eew
  %i.eey = load i8, ptr %i.eex, align 1, !tbaa !81
  %i.eez = zext i8 %i.eey to i64
  %i.efa = zext i32 %.sink5253 to i64
  %i.efb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efa
  %i.efc = load i8, ptr %i.efb, align 1, !tbaa !81
  %i.efd = zext i8 %i.efc to i64
  %.not107.i776 = icmp eq i32 %.sink5253, 0
  %i.efe = add nuw nsw i64 %i.eez, 2
  %i.eff = select i1 %.not107.i776, i64 %i.efe, i64 %i.efd
  %i.efg = sub nsw i64 %.sink5244, %i.eff
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit781

bb.oy:                                            ; preds = %bb.ou
  %.not99.i777 = icmp eq i32 %i.ecb, 0
  br i1 %.not99.i777, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.efh = mul i32 %i.ecb, 5243
  %i.efi = lshr i32 %i.efh, 19                    ; 3 uses
  %.neg101.i778 = mul nsw i32 %i.efi, -100
  %i.efj = add i32 %.neg101.i778, %i.ecb          ; 3 uses
  %i.efk = getelementptr inbounds nuw i8, ptr %i.ecy, i64 4
  %i.efl = shl nuw nsw i32 %i.efi, 1
  %i.efm = zext nneg i32 %i.efl to i64
  %i.efn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efm
  %i.efo = load i16, ptr %i.efn, align 2
  store i16 %i.efo, ptr %i.efk, align 1
  %i.efp = getelementptr inbounds nuw i8, ptr %i.ecy, i64 6
  %i.efq = shl i32 %i.efj, 1
  %i.efr = zext i32 %i.efq to i64
  %i.efs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efr
  %i.eft = load i16, ptr %i.efs, align 2
  store i16 %i.eft, ptr %i.efp, align 1
  %i.efu = zext nneg i32 %i.efi to i64
  %i.efv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efu
  %i.efw = load i8, ptr %i.efv, align 1, !tbaa !81
  %i.efx = zext i8 %i.efw to i64
  %i.efy = zext i32 %i.efj to i64
  %i.efz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efy
  %i.ega = load i8, ptr %i.efz, align 1, !tbaa !81
  %i.egb = zext i8 %i.ega to i64
  %.not102.i779 = icmp eq i32 %i.efj, 0
  %i.egc = add nuw nsw i64 %i.efx, 2
  %i.egd = select i1 %.not102.i779, i64 %i.egc, i64 %i.egb
  %i.ege = sub nsw i64 8, %i.egd
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit781

bb.pa:                                            ; preds = %bb.oy
  %i.egf = zext i32 %i.eci to i64
  %i.egg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.egf
  %i.egh = load i8, ptr %i.egg, align 1, !tbaa !81
  %i.egi = zext i8 %i.egh to i64
  %i.egj = zext i32 %i.ecj to i64
  %i.egk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.egj
  %i.egl = load i8, ptr %i.egk, align 1, !tbaa !81
  %i.egm = zext i8 %i.egl to i64
  %.not100.i780 = icmp eq i32 %i.ecj, 0
  %i.egn = select i1 %.not100.i780, i64 %i.egi, i64 0
  %i.ego = add nuw nsw i64 %i.egn, %i.egm
  %i.egp = sub nsw i64 4, %i.ego
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit781

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit781: ; preds = %bb.ox, %bb.oz, %bb.pa
  %.sink5258.a = phi i64 [ %i.efg, %bb.ox ], [ %i.ege, %bb.oz ], [ %i.egp, %bb.pa ]
  %.pn.i773 = and i64 %.sink5258.a, 4294967295
  %.0.i774 = getelementptr inbounds nuw i8, ptr %i.ecy, i64 %.pn.i773 ; 2 uses
  store i8 48, ptr %i.dpl, align 1, !tbaa !81
  %i.egq = getelementptr inbounds nuw i8, ptr %i.dpl, i64 1
  store i8 46, ptr %i.egq, align 1, !tbaa !81
  %i.egr = icmp slt i32 %i.ebq, 0
  br i1 %i.egr, label %.lr.ph2918.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread

.lr.ph2918.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit781
  %8 = sub nsw i32 0, %i.ebq
  %9 = getelementptr i8, ptr %i.dpl, i64 2
  %i.egs = zext nneg i32 %8 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %9, i8 48, i64 %i.egs, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit546.thread

bb.pb:                                            ; preds = %bb.ot
  %i.egt = getelementptr inbounds nuw i8, ptr %i.dpl, i64 1 ; 2 uses
  %i.egu = udiv i64 %.11599, 100000000            ; 2 uses
  %i.egv = trunc i64 %i.egu to i32                ; 2 uses
  %.neg.i782 = mul i64 %i.egu, 4194967296
  %i.egw = add i64 %.neg.i782, %.11599            ; 2 uses
  %i.egx = trunc i64 %i.egw to i32                ; 2 uses
  %i.egy = udiv i32 %i.egv, 10000                 ; 3 uses
  %.neg95.i783 = mul i32 %i.egy, -10000
  %i.egz = add i32 %.neg95.i783, %i.egv           ; 5 uses
  %i.eha = zext nneg i32 %i.egy to i64
  %i.ehb = mul nuw nsw i64 %i.eha, 167773
  %i.ehc = lshr i64 %i.ehb, 24
  %i.ehd = trunc nuw nsw i64 %i.ehc to i32        ; 3 uses
  %i.ehe = mul nuw nsw i32 %i.ehd, 41
  %i.ehf = lshr i32 %i.ehe, 12                    ; 4 uses
  %.neg96.i784 = mul nsw i32 %i.ehf, -100
  %i.ehg = add nsw i32 %.neg96.i784, %i.ehd       ; 3 uses
  %.neg97.i785 = mul nsw i32 %i.ehd, -100
  %i.ehh = add nsw i32 %.neg97.i785, %i.egy       ; 3 uses
  %i.ehi = trunc nuw nsw i32 %i.ehf to i8
  %i.ehj = add nuw nsw i8 %i.ehi, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dpl, i8 48, i64 24, i1 false)
  store i8 %i.ehj, ptr %i.egt, align 1, !tbaa !81
  %i.ehk = icmp ne i32 %i.ehf, 0
  %i.ehl = zext i1 %i.ehk to i64
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.egt, i64 %i.ehl ; 2 uses
  %i.ehn = icmp ult i32 %i.ehg, 10
  %i.eho = icmp eq i32 %i.ehf, 0
  %i.ehp = and i1 %i.eho, %i.ehn                  ; 2 uses
  %i.ehq = shl nsw i32 %i.ehg, 1
  %i.ehr = zext i32 %i.ehq to i64
  %i.ehs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ehr
  %.neg98.i786 = sext i1 %i.ehp to i64
  %i.eht = zext i1 %i.ehp to i64
  %i.ehu = getelementptr inbounds nuw i8, ptr %i.ehs, i64 %i.eht
  %i.ehv = load i16, ptr %i.ehu, align 1
  store i16 %i.ehv, ptr %i.ehm, align 1
  %i.ehw = getelementptr inbounds i8, ptr %i.ehm, i64 %.neg98.i786 ; 10 uses
  %i.ehx = getelementptr inbounds nuw i8, ptr %i.ehw, i64 2
  %i.ehy = shl nsw i32 %i.ehh, 1
  %i.ehz = zext i32 %i.ehy to i64
  %i.eia = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ehz
  %i.eib = load i16, ptr %i.eia, align 2
  store i16 %i.eib, ptr %i.ehx, align 1
  %.not.i787 = icmp eq i32 %i.egx, 0
  br i1 %.not.i787, label %bb.pf, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.eic = mul i32 %i.egz, 5243
  %i.eid = lshr i32 %i.eic, 19                    ; 2 uses
  %.neg103.i788 = mul i32 %i.eid, 2147483548
  %i.eie = add i32 %.neg103.i788, %i.egz
  %i.eif = and i64 %i.egw, 4294967295
  %i.eig = mul nuw nsw i64 %i.eif, 109951163
  %i.eih = lshr i64 %i.eig, 40
  %i.eii = trunc nuw nsw i64 %i.eih to i32        ; 3 uses
  %.neg104.i789 = mul i32 %i.eii, -10000
  %i.eij = add i32 %.neg104.i789, %i.egx          ; 3 uses
  %i.eik = mul nuw i32 %i.eii, 5243
  %i.eil = lshr i32 %i.eik, 19                    ; 3 uses
  %.neg105.i790 = mul nsw i32 %i.eil, -100
  %i.eim = add nsw i32 %.neg105.i790, %i.eii      ; 2 uses
  %i.ein = getelementptr inbounds nuw i8, ptr %i.ehw, i64 4
  %i.eio = shl nuw nsw i32 %i.eid, 1
  %i.eip = zext nneg i32 %i.eio to i64
  %i.eiq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eip
  %i.eir = load i16, ptr %i.eiq, align 2
  store i16 %i.eir, ptr %i.ein, align 1
  %i.eis = getelementptr inbounds nuw i8, ptr %i.ehw, i64 6
  %i.eit = shl i32 %i.eie, 1
  %i.eiu = zext i32 %i.eit to i64
  %i.eiv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eiu
  %i.eiw = load i16, ptr %i.eiv, align 2
  store i16 %i.eiw, ptr %i.eis, align 1
  %i.eix = getelementptr inbounds nuw i8, ptr %i.ehw, i64 8
  %i.eiy = shl nuw nsw i32 %i.eil, 1
  %i.eiz = zext nneg i32 %i.eiy to i64
  %i.eja = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eiz
  %i.ejb = load i16, ptr %i.eja, align 2
  store i16 %i.ejb, ptr %i.eix, align 1
  %i.ejc = getelementptr inbounds nuw i8, ptr %i.ehw, i64 10
  %i.ejd = shl nsw i32 %i.eim, 1
  %i.eje = zext i32 %i.ejd to i64
  %i.ejf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eje
  %i.ejg = load i16, ptr %i.ejf, align 2
  store i16 %i.ejg, ptr %i.ejc, align 1
  %.not106.i791 = icmp eq i32 %i.eij, 0
  br i1 %.not106.i791, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.ejh = mul i32 %i.eij, 5243
  %i.eji = lshr i32 %i.ejh, 19                    ; 3 uses
  %.neg108.i792 = mul nsw i32 %i.eji, -100
  %i.ejj = add i32 %.neg108.i792, %i.eij          ; 2 uses
  %i.ejk = getelementptr inbounds nuw i8, ptr %i.ehw, i64 12
  %i.ejl = shl nuw nsw i32 %i.eji, 1
  %i.ejm = zext nneg i32 %i.ejl to i64
  %i.ejn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejm
  %i.ejo = load i16, ptr %i.ejn, align 2
  store i16 %i.ejo, ptr %i.ejk, align 1
  %i.ejp = getelementptr inbounds nuw i8, ptr %i.ehw, i64 14
  %i.ejq = shl i32 %i.ejj, 1
  %i.ejr = zext i32 %i.ejq to i64
  %i.ejs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejr
  %i.ejt = load i16, ptr %i.ejs, align 2
  store i16 %i.ejt, ptr %i.ejp, align 1
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pc, %bb.pd
  %.sink5272 = phi i32 [ %i.eji, %bb.pd ], [ %i.eil, %bb.pc ]
  %.sink5268 = phi i32 [ %i.ejj, %bb.pd ], [ %i.eim, %bb.pc ] ; 2 uses
  %.sink5259 = phi i64 [ 16, %bb.pd ], [ 12, %bb.pc ]
  %i.eju = zext nneg i32 %.sink5272 to i64
  %i.ejv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eju
  %i.ejw = load i8, ptr %i.ejv, align 1, !tbaa !81
  %i.ejx = zext i8 %i.ejw to i64
  %i.ejy = zext i32 %.sink5268 to i64
  %i.ejz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ejy
  %i.eka = load i8, ptr %i.ejz, align 1, !tbaa !81
  %i.ekb = zext i8 %i.eka to i64
  %.not107.i798 = icmp eq i32 %.sink5268, 0
  %i.ekc = add nuw nsw i64 %i.ejx, 2
  %i.ekd = select i1 %.not107.i798, i64 %i.ekc, i64 %i.ekb
  %i.eke = sub nsw i64 %.sink5259, %i.ekd
  br label %iter.check5993

bb.pf:                                            ; preds = %bb.pb
  %.not99.i799 = icmp eq i32 %i.egz, 0
  br i1 %.not99.i799, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.ekf = mul i32 %i.egz, 5243
  %i.ekg = lshr i32 %i.ekf, 19                    ; 3 uses
  %.neg101.i800 = mul nsw i32 %i.ekg, -100
  %i.ekh = add i32 %.neg101.i800, %i.egz          ; 3 uses
  %i.eki = getelementptr inbounds nuw i8, ptr %i.ehw, i64 4
  %i.ekj = shl nuw nsw i32 %i.ekg, 1
  %i.ekk = zext nneg i32 %i.ekj to i64
  %i.ekl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ekk
  %i.ekm = load i16, ptr %i.ekl, align 2
  store i16 %i.ekm, ptr %i.eki, align 1
  %i.ekn = getelementptr inbounds nuw i8, ptr %i.ehw, i64 6
  %i.eko = shl i32 %i.ekh, 1
  %i.ekp = zext i32 %i.eko to i64
  %i.ekq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ekp
  %i.ekr = load i16, ptr %i.ekq, align 2
  store i16 %i.ekr, ptr %i.ekn, align 1
  %i.eks = zext nneg i32 %i.ekg to i64
  %i.ekt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eks
  %i.eku = load i8, ptr %i.ekt, align 1, !tbaa !81
  %i.ekv = zext i8 %i.eku to i64
  %i.ekw = zext i32 %i.ekh to i64
  %i.ekx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ekw
  %i.eky = load i8, ptr %i.ekx, align 1, !tbaa !81
  %i.ekz = zext i8 %i.eky to i64
  %.not102.i801 = icmp eq i32 %i.ekh, 0
  %i.ela = add nuw nsw i64 %i.ekv, 2
  %i.elb = select i1 %.not102.i801, i64 %i.ela, i64 %i.ekz
  %i.elc = sub nsw i64 8, %i.elb
  br label %iter.check5993

bb.ph:                                            ; preds = %bb.pf
  %i.eld = zext i32 %i.ehg to i64
  %i.ele = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eld
  %i.elf = load i8, ptr %i.ele, align 1, !tbaa !81
  %i.elg = zext i8 %i.elf to i64
  %i.elh = zext i32 %i.ehh to i64
  %i.eli = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.elh
  %i.elj = load i8, ptr %i.eli, align 1, !tbaa !81
  %i.elk = zext i8 %i.elj to i64
  %.not100.i802 = icmp eq i32 %i.ehh, 0
  %i.ell = select i1 %.not100.i802, i64 %i.elg, i64 0
  %i.elm = add nuw nsw i64 %i.ell, %i.elk
  %i.eln = sub nsw i64 4, %i.elm
  br label %iter.check5993

iter.check5993:                                   ; preds = %bb.ph, %bb.pg, %bb.pe
  %.sink5274.a = phi i64 [ %i.eln, %bb.ph ], [ %i.elc, %bb.pg ], [ %i.eke, %bb.pe ]
  %i.elo = and i64 %.sink5274.a, 4294967295
  %i.elp = getelementptr inbounds nuw i8, ptr %i.ehw, i64 %i.elo ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ebq to i64  ; 6 uses
  %min.iters.check5979 = icmp ult i32 %i.ebq, 4
  br i1 %min.iters.check5979, label %.lr.ph2916.preheader, label %vector.main.loop.iter.check5980

vector.main.loop.iter.check5980:                  ; preds = %iter.check5993
  %min.iters.check5981 = icmp ult i32 %i.ebq, 32
  br i1 %min.iters.check5981, label %vec.epilog.ph5997, label %vector.ph5982

vector.ph5982:                                    ; preds = %vector.main.loop.iter.check5980
  %n.mod.vf5983 = and i64 %wide.trip.count, 28
  %n.vec5984 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  br label %vector.body5985

vector.body5985:                                  ; preds = %vector.body5985, %vector.ph5982
  %index5986 = phi i64 [ 0, %vector.ph5982 ], [ %index.next5989, %vector.body5985 ] ; 3 uses
  %i.elq = getelementptr inbounds nuw i8, ptr %i.dpl, i64 %index5986 ; 2 uses
  %i.elr = getelementptr inbounds nuw i8, ptr %i.elq, i64 1
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %.neg129.i648 = sext i1 %i.hwa to i32
  %i.hwb = add nsw i32 %i.hvz, %.neg129.i648
  %i.hwc = add nsw i32 %i.hwb, %storemerge.i683   ; 10 uses
  %i.hwd = add nsw i32 %i.hwc, 5
  %or.cond3.i649 = icmp ult i32 %i.hwd, 27
  br i1 %or.cond3.i649, label %bb.yv, label %bb.zk

bb.yv:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit685
  %i.hwe = icmp slt i32 %i.hwc, 1
  br i1 %i.hwe, label %bb.yw, label %bb.zd

bb.yw:                                            ; preds = %bb.yv
  %i.hwf = sub nsw i32 2, %i.hwc
  %i.hwg = zext nneg i32 %i.hwf to i64
  %i.hwh = getelementptr inbounds nuw i8, ptr %i.hjx, i64 %i.hwg ; 2 uses
  %i.hwi = udiv i64 %.1, 100000000                ; 2 uses
  %i.hwj = trunc i64 %i.hwi to i32                ; 2 uses
  %.neg.i706 = mul i64 %i.hwi, 4194967296
  %i.hwk = add i64 %.neg.i706, %.1                ; 2 uses
  %i.hwl = trunc i64 %i.hwk to i32                ; 2 uses
  %i.hwm = udiv i32 %i.hwj, 10000                 ; 3 uses
  %.neg95.i = mul i32 %i.hwm, -10000
  %i.hwn = add i32 %.neg95.i, %i.hwj              ; 5 uses
  %i.hwo = zext nneg i32 %i.hwm to i64
  %i.hwp = mul nuw nsw i64 %i.hwo, 167773
  %i.hwq = lshr i64 %i.hwp, 24
  %i.hwr = trunc nuw nsw i64 %i.hwq to i32        ; 3 uses
  %i.hws = mul nuw nsw i32 %i.hwr, 41
  %i.hwt = lshr i32 %i.hws, 12                    ; 4 uses
  %.neg96.i = mul nsw i32 %i.hwt, -100
  %i.hwu = add nsw i32 %.neg96.i, %i.hwr          ; 3 uses
  %.neg97.i = mul nsw i32 %i.hwr, -100
  %i.hwv = add nsw i32 %.neg97.i, %i.hwm          ; 3 uses
  %i.hww = trunc nuw nsw i32 %i.hwt to i8
  %i.hwx = add nuw nsw i8 %i.hww, 48
  store i8 %i.hwx, ptr %i.hwh, align 1, !tbaa !81
  %i.hwy = icmp ne i32 %i.hwt, 0
  %i.hwz = zext i1 %i.hwy to i64
  %i.hxa = getelementptr inbounds nuw i8, ptr %i.hwh, i64 %i.hwz ; 2 uses
  %i.hxb = icmp ult i32 %i.hwu, 10
  %i.hxc = icmp eq i32 %i.hwt, 0
  %i.hxd = and i1 %i.hxc, %i.hxb                  ; 2 uses
  %i.hxe = shl nsw i32 %i.hwu, 1
  %i.hxf = zext i32 %i.hxe to i64
  %i.hxg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxf
  %.neg98.i = sext i1 %i.hxd to i64
  %i.hxh = zext i1 %i.hxd to i64
  %i.hxi = getelementptr inbounds nuw i8, ptr %i.hxg, i64 %i.hxh
  %i.hxj = load i16, ptr %i.hxi, align 1
  store i16 %i.hxj, ptr %i.hxa, align 1
  %i.hxk = getelementptr inbounds i8, ptr %i.hxa, i64 %.neg98.i ; 10 uses
  %i.hxl = getelementptr inbounds nuw i8, ptr %i.hxk, i64 2
  %i.hxm = shl nsw i32 %i.hwv, 1
  %i.hxn = zext i32 %i.hxm to i64
  %i.hxo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxn
  %i.hxp = load i16, ptr %i.hxo, align 2
  store i16 %i.hxp, ptr %i.hxl, align 1
  %.not.i707 = icmp eq i32 %i.hwl, 0
  br i1 %.not.i707, label %bb.za, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.hxq = mul i32 %i.hwn, 5243
  %i.hxr = lshr i32 %i.hxq, 19                    ; 2 uses
  %.neg103.i = mul i32 %i.hxr, 2147483548
  %i.hxs = add i32 %.neg103.i, %i.hwn
  %i.hxt = and i64 %i.hwk, 4294967295
  %i.hxu = mul nuw nsw i64 %i.hxt, 109951163
  %i.hxv = lshr i64 %i.hxu, 40
  %i.hxw = trunc nuw nsw i64 %i.hxv to i32        ; 3 uses
  %.neg104.i = mul i32 %i.hxw, -10000
  %i.hxx = add i32 %.neg104.i, %i.hwl             ; 3 uses
  %i.hxy = mul nuw i32 %i.hxw, 5243
  %i.hxz = lshr i32 %i.hxy, 19                    ; 3 uses
  %.neg105.i = mul nsw i32 %i.hxz, -100
  %i.hya = add nsw i32 %.neg105.i, %i.hxw         ; 2 uses
  %i.hyb = getelementptr inbounds nuw i8, ptr %i.hxk, i64 4
  %i.hyc = shl nuw nsw i32 %i.hxr, 1
  %i.hyd = zext nneg i32 %i.hyc to i64
  %i.hye = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyd
  %i.hyf = load i16, ptr %i.hye, align 2
  store i16 %i.hyf, ptr %i.hyb, align 1
  %i.hyg = getelementptr inbounds nuw i8, ptr %i.hxk, i64 6
  %i.hyh = shl i32 %i.hxs, 1
  %i.hyi = zext i32 %i.hyh to i64
  %i.hyj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyi
  %i.hyk = load i16, ptr %i.hyj, align 2
  store i16 %i.hyk, ptr %i.hyg, align 1
  %i.hyl = getelementptr inbounds nuw i8, ptr %i.hxk, i64 8
  %i.hym = shl nuw nsw i32 %i.hxz, 1
  %i.hyn = zext nneg i32 %i.hym to i64
  %i.hyo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyn
  %i.hyp = load i16, ptr %i.hyo, align 2
  store i16 %i.hyp, ptr %i.hyl, align 1
  %i.hyq = getelementptr inbounds nuw i8, ptr %i.hxk, i64 10
  %i.hyr = shl nsw i32 %i.hya, 1
  %i.hys = zext i32 %i.hyr to i64
  %i.hyt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hys
  %i.hyu = load i16, ptr %i.hyt, align 2
  store i16 %i.hyu, ptr %i.hyq, align 1
  %.not106.i708 = icmp eq i32 %i.hxx, 0
  br i1 %.not106.i708, label %bb.yz, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.hyv = mul i32 %i.hxx, 5243
  %i.hyw = lshr i32 %i.hyv, 19                    ; 3 uses
  %.neg108.i = mul nsw i32 %i.hyw, -100
  %i.hyx = add i32 %.neg108.i, %i.hxx             ; 2 uses
  %i.hyy = getelementptr inbounds nuw i8, ptr %i.hxk, i64 12
  %i.hyz = shl nuw nsw i32 %i.hyw, 1
  %i.hza = zext nneg i32 %i.hyz to i64
  %i.hzb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hza
  %i.hzc = load i16, ptr %i.hzb, align 2
  store i16 %i.hzc, ptr %i.hyy, align 1
  %i.hzd = getelementptr inbounds nuw i8, ptr %i.hxk, i64 14
  %i.hze = shl i32 %i.hyx, 1
  %i.hzf = zext i32 %i.hze to i64
  %i.hzg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzf
  %i.hzh = load i16, ptr %i.hzg, align 2
  store i16 %i.hzh, ptr %i.hzd, align 1
  br label %bb.yz

bb.yz:                                            ; preds = %bb.yx, %bb.yy
  %.sink5292.a = phi i32 [ %i.hyw, %bb.yy ], [ %i.hxz, %bb.yx ]
  %.sink5288 = phi i32 [ %i.hyx, %bb.yy ], [ %i.hya, %bb.yx ] ; 2 uses
  %.sink5279 = phi i64 [ 16, %bb.yy ], [ 12, %bb.yx ]
  %i.hzi = zext nneg i32 %.sink5292.a to i64
  %i.hzj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzi
  %i.hzk = load i8, ptr %i.hzj, align 1, !tbaa !81
  %i.hzl = zext i8 %i.hzk to i64
  %i.hzm = zext i32 %.sink5288 to i64
  %i.hzn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzm
  %i.hzo = load i8, ptr %i.hzn, align 1, !tbaa !81
  %i.hzp = zext i8 %i.hzo to i64
  %.not107.i712 = icmp eq i32 %.sink5288, 0
  %i.hzq = add nuw nsw i64 %i.hzl, 2
  %i.hzr = select i1 %.not107.i712, i64 %i.hzq, i64 %i.hzp
  %i.hzs = sub nsw i64 %.sink5279, %i.hzr
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit

bb.za:                                            ; preds = %bb.yw
  %.not99.i713 = icmp eq i32 %i.hwn, 0
  br i1 %.not99.i713, label %bb.zc, label %bb.zb

bb.zb:                                            ; preds = %bb.za
  %i.hzt = mul i32 %i.hwn, 5243
  %i.hzu = lshr i32 %i.hzt, 19                    ; 3 uses
  %.neg101.i = mul nsw i32 %i.hzu, -100
  %i.hzv = add i32 %.neg101.i, %i.hwn             ; 3 uses
  %i.hzw = getelementptr inbounds nuw i8, ptr %i.hxk, i64 4
  %i.hzx = shl nuw nsw i32 %i.hzu, 1
  %i.hzy = zext nneg i32 %i.hzx to i64
  %i.hzz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzy
  %i.iaa = load i16, ptr %i.hzz, align 2
  store i16 %i.iaa, ptr %i.hzw, align 1
  %i.iab = getelementptr inbounds nuw i8, ptr %i.hxk, i64 6
  %i.iac = shl i32 %i.hzv, 1
  %i.iad = zext i32 %i.iac to i64
  %i.iae = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iad
  %i.iaf = load i16, ptr %i.iae, align 2
  store i16 %i.iaf, ptr %i.iab, align 1
  %i.iag = zext nneg i32 %i.hzu to i64
  %i.iah = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iag
  %i.iai = load i8, ptr %i.iah, align 1, !tbaa !81
  %i.iaj = zext i8 %i.iai to i64
  %i.iak = zext i32 %i.hzv to i64
  %i.ial = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iak
  %i.iam = load i8, ptr %i.ial, align 1, !tbaa !81
  %i.ian = zext i8 %i.iam to i64
  %.not102.i714 = icmp eq i32 %i.hzv, 0
  %i.iao = add nuw nsw i64 %i.iaj, 2
  %i.iap = select i1 %.not102.i714, i64 %i.iao, i64 %i.ian
  %i.iaq = sub nsw i64 8, %i.iap
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit

bb.zc:                                            ; preds = %bb.za
  %i.iar = zext i32 %i.hwu to i64
  %i.ias = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iar
  %i.iat = load i8, ptr %i.ias, align 1, !tbaa !81
  %i.iau = zext i8 %i.iat to i64
  %i.iav = zext i32 %i.hwv to i64
  %i.iaw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iav
  %i.iax = load i8, ptr %i.iaw, align 1, !tbaa !81
  %i.iay = zext i8 %i.iax to i64
  %.not100.i715 = icmp eq i32 %i.hwv, 0
  %i.iaz = select i1 %.not100.i715, i64 %i.iau, i64 0
  %i.iba = add nuw nsw i64 %i.iaz, %i.iay
  %i.ibb = sub nsw i64 4, %i.iba
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit: ; preds = %bb.yz, %bb.zb, %bb.zc
  %.sink5293.a = phi i64 [ %i.hzs, %bb.yz ], [ %i.iaq, %bb.zb ], [ %i.ibb, %bb.zc ]
  %.pn.i709 = and i64 %.sink5293.a, 4294967295
  %.0.i710 = getelementptr inbounds nuw i8, ptr %i.hxk, i64 %.pn.i709 ; 2 uses
  store i8 48, ptr %i.hjx, align 1, !tbaa !81
  %i.ibc = getelementptr inbounds nuw i8, ptr %i.hjx, i64 1
  store i8 46, ptr %i.ibc, align 1, !tbaa !81
  %i.ibd = icmp slt i32 %i.hwc, 0
  br i1 %i.ibd, label %.lr.ph3041.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

.lr.ph3041.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit
  %10 = sub nsw i32 0, %i.hwc
  %11 = getelementptr i8, ptr %i.hjx, i64 2
  %i.ibe = zext nneg i32 %10 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %11, i8 48, i64 %i.ibe, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.zd:                                            ; preds = %bb.yv
  %i.ibf = getelementptr inbounds nuw i8, ptr %i.hjx, i64 1 ; 2 uses
  %i.ibg = udiv i64 %.1, 100000000                ; 2 uses
  %i.ibh = trunc i64 %i.ibg to i32                ; 2 uses
  %.neg.i716 = mul i64 %i.ibg, 4194967296
  %i.ibi = add i64 %.neg.i716, %.1                ; 2 uses
  %i.ibj = trunc i64 %i.ibi to i32                ; 2 uses
  %i.ibk = udiv i32 %i.ibh, 10000                 ; 3 uses
  %.neg95.i717 = mul i32 %i.ibk, -10000
  %i.ibl = add i32 %.neg95.i717, %i.ibh           ; 5 uses
  %i.ibm = zext nneg i32 %i.ibk to i64
  %i.ibn = mul nuw nsw i64 %i.ibm, 167773
  %i.ibo = lshr i64 %i.ibn, 24
  %i.ibp = trunc nuw nsw i64 %i.ibo to i32        ; 3 uses
  %i.ibq = mul nuw nsw i32 %i.ibp, 41
  %i.ibr = lshr i32 %i.ibq, 12                    ; 4 uses
  %.neg96.i718 = mul nsw i32 %i.ibr, -100
  %i.ibs = add nsw i32 %.neg96.i718, %i.ibp       ; 3 uses
  %.neg97.i719 = mul nsw i32 %i.ibp, -100
  %i.ibt = add nsw i32 %.neg97.i719, %i.ibk       ; 3 uses
  %i.ibu = trunc nuw nsw i32 %i.ibr to i8
  %i.ibv = add nuw nsw i8 %i.ibu, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hjx, i8 48, i64 24, i1 false)
  store i8 %i.ibv, ptr %i.ibf, align 1, !tbaa !81
  %i.ibw = icmp ne i32 %i.ibr, 0
  %i.ibx = zext i1 %i.ibw to i64
  %i.iby = getelementptr inbounds nuw i8, ptr %i.ibf, i64 %i.ibx ; 2 uses
  %i.ibz = icmp ult i32 %i.ibs, 10
  %i.ica = icmp eq i32 %i.ibr, 0
  %i.icb = and i1 %i.ica, %i.ibz                  ; 2 uses
  %i.icc = shl nsw i32 %i.ibs, 1
  %i.icd = zext i32 %i.icc to i64
  %i.ice = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icd
  %.neg98.i720 = sext i1 %i.icb to i64
  %i.icf = zext i1 %i.icb to i64
  %i.icg = getelementptr inbounds nuw i8, ptr %i.ice, i64 %i.icf
  %i.ich = load i16, ptr %i.icg, align 1
  store i16 %i.ich, ptr %i.iby, align 1
  %i.ici = getelementptr inbounds i8, ptr %i.iby, i64 %.neg98.i720 ; 10 uses
  %i.icj = getelementptr inbounds nuw i8, ptr %i.ici, i64 2
  %i.ick = shl nsw i32 %i.ibt, 1
  %i.icl = zext i32 %i.ick to i64
  %i.icm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icl
  %i.icn = load i16, ptr %i.icm, align 2
  store i16 %i.icn, ptr %i.icj, align 1
  %.not.i721 = icmp eq i32 %i.ibj, 0
  br i1 %.not.i721, label %bb.zh, label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  %i.ico = mul i32 %i.ibl, 5243
  %i.icp = lshr i32 %i.ico, 19                    ; 2 uses
  %.neg103.i722 = mul i32 %i.icp, 2147483548
  %i.icq = add i32 %.neg103.i722, %i.ibl
  %i.icr = and i64 %i.ibi, 4294967295
  %i.ics = mul nuw nsw i64 %i.icr, 109951163
  %i.ict = lshr i64 %i.ics, 40
  %i.icu = trunc nuw nsw i64 %i.ict to i32        ; 3 uses
  %.neg104.i723 = mul i32 %i.icu, -10000
  %i.icv = add i32 %.neg104.i723, %i.ibj          ; 3 uses
  %i.icw = mul nuw i32 %i.icu, 5243
  %i.icx = lshr i32 %i.icw, 19                    ; 3 uses
  %.neg105.i724 = mul nsw i32 %i.icx, -100
  %i.icy = add nsw i32 %.neg105.i724, %i.icu      ; 2 uses
  %i.icz = getelementptr inbounds nuw i8, ptr %i.ici, i64 4
  %i.ida = shl nuw nsw i32 %i.icp, 1
  %i.idb = zext nneg i32 %i.ida to i64
  %i.idc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idb
  %i.idd = load i16, ptr %i.idc, align 2
  store i16 %i.idd, ptr %i.icz, align 1
  %i.ide = getelementptr inbounds nuw i8, ptr %i.ici, i64 6
  %i.idf = shl i32 %i.icq, 1
  %i.idg = zext i32 %i.idf to i64
  %i.idh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idg
  %i.idi = load i16, ptr %i.idh, align 2
  store i16 %i.idi, ptr %i.ide, align 1
  %i.idj = getelementptr inbounds nuw i8, ptr %i.ici, i64 8
  %i.idk = shl nuw nsw i32 %i.icx, 1
  %i.idl = zext nneg i32 %i.idk to i64
  %i.idm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idl
  %i.idn = load i16, ptr %i.idm, align 2
  store i16 %i.idn, ptr %i.idj, align 1
  %i.ido = getelementptr inbounds nuw i8, ptr %i.ici, i64 10
  %i.idp = shl nsw i32 %i.icy, 1
  %i.idq = zext i32 %i.idp to i64
  %i.idr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idq
  %i.ids = load i16, ptr %i.idr, align 2
  store i16 %i.ids, ptr %i.ido, align 1
  %.not106.i725 = icmp eq i32 %i.icv, 0
  br i1 %.not106.i725, label %bb.zg, label %bb.zf

bb.zf:                                            ; preds = %bb.ze
  %i.idt = mul i32 %i.icv, 5243
  %i.idu = lshr i32 %i.idt, 19                    ; 3 uses
  %.neg108.i726 = mul nsw i32 %i.idu, -100
  %i.idv = add i32 %.neg108.i726, %i.icv          ; 2 uses
  %i.idw = getelementptr inbounds nuw i8, ptr %i.ici, i64 12
  %i.idx = shl nuw nsw i32 %i.idu, 1
  %i.idy = zext nneg i32 %i.idx to i64
  %i.idz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idy
  %i.iea = load i16, ptr %i.idz, align 2
  store i16 %i.iea, ptr %i.idw, align 1
  %i.ieb = getelementptr inbounds nuw i8, ptr %i.ici, i64 14
  %i.iec = shl i32 %i.idv, 1
  %i.ied = zext i32 %i.iec to i64
  %i.iee = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ied
  %i.ief = load i16, ptr %i.iee, align 2
  store i16 %i.ief, ptr %i.ieb, align 1
  br label %bb.zg

bb.zg:                                            ; preds = %bb.ze, %bb.zf
  %.sink5307 = phi i32 [ %i.idu, %bb.zf ], [ %i.icx, %bb.ze ]
  %.sink5303 = phi i32 [ %i.idv, %bb.zf ], [ %i.icy, %bb.ze ] ; 2 uses
  %.sink5294 = phi i64 [ 16, %bb.zf ], [ 12, %bb.ze ]
  %i.ieg = zext nneg i32 %.sink5307 to i64
  %i.ieh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ieg
  %i.iei = load i8, ptr %i.ieh, align 1, !tbaa !81
  %i.iej = zext i8 %i.iei to i64
  %i.iek = zext i32 %.sink5303 to i64
  %i.iel = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iek
  %i.iem = load i8, ptr %i.iel, align 1, !tbaa !81
  %i.ien = zext i8 %i.iem to i64
  %.not107.i732 = icmp eq i32 %.sink5303, 0
  %i.ieo = add nuw nsw i64 %i.iej, 2
  %i.iep = select i1 %.not107.i732, i64 %i.ieo, i64 %i.ien
  %i.ieq = sub nsw i64 %.sink5294, %i.iep
  br label %iter.check6085

bb.zh:                                            ; preds = %bb.zd
  %.not99.i733 = icmp eq i32 %i.ibl, 0
  br i1 %.not99.i733, label %bb.zj, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %i.ier = mul i32 %i.ibl, 5243
  %i.ies = lshr i32 %i.ier, 19                    ; 3 uses
  %.neg101.i734 = mul nsw i32 %i.ies, -100
  %i.iet = add i32 %.neg101.i734, %i.ibl          ; 3 uses
  %i.ieu = getelementptr inbounds nuw i8, ptr %i.ici, i64 4
  %i.iev = shl nuw nsw i32 %i.ies, 1
  %i.iew = zext nneg i32 %i.iev to i64
  %i.iex = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iew
  %i.iey = load i16, ptr %i.iex, align 2
  store i16 %i.iey, ptr %i.ieu, align 1
  %i.iez = getelementptr inbounds nuw i8, ptr %i.ici, i64 6
  %i.ifa = shl i32 %i.iet, 1
  %i.ifb = zext i32 %i.ifa to i64
  %i.ifc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ifb
  %i.ifd = load i16, ptr %i.ifc, align 2
  store i16 %i.ifd, ptr %i.iez, align 1
  %i.ife = zext nneg i32 %i.ies to i64
  %i.iff = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ife
  %i.ifg = load i8, ptr %i.iff, align 1, !tbaa !81
  %i.ifh = zext i8 %i.ifg to i64
  %i.ifi = zext i32 %i.iet to i64
  %i.ifj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifi
  %i.ifk = load i8, ptr %i.ifj, align 1, !tbaa !81
  %i.ifl = zext i8 %i.ifk to i64
  %.not102.i735 = icmp eq i32 %i.iet, 0
  %i.ifm = add nuw nsw i64 %i.ifh, 2
  %i.ifn = select i1 %.not102.i735, i64 %i.ifm, i64 %i.ifl
  %i.ifo = sub nsw i64 8, %i.ifn
  br label %iter.check6085

bb.zj:                                            ; preds = %bb.zh
  %i.ifp = zext i32 %i.ibs to i64
  %i.ifq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifp
  %i.ifr = load i8, ptr %i.ifq, align 1, !tbaa !81
  %i.ifs = zext i8 %i.ifr to i64
  %i.ift = zext i32 %i.ibt to i64
  %i.ifu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ift
  %i.ifv = load i8, ptr %i.ifu, align 1, !tbaa !81
  %i.ifw = zext i8 %i.ifv to i64
  %.not100.i736 = icmp eq i32 %i.ibt, 0
  %i.ifx = select i1 %.not100.i736, i64 %i.ifs, i64 0
  %i.ify = add nuw nsw i64 %i.ifx, %i.ifw
  %i.ifz = sub nsw i64 4, %i.ify
  br label %iter.check6085

iter.check6085:                                   ; preds = %bb.zj, %bb.zi, %bb.zg
  %.sink5309.a = phi i64 [ %i.ifz, %bb.zj ], [ %i.ifo, %bb.zi ], [ %i.ieq, %bb.zg ]
  %i.iga = and i64 %.sink5309.a, 4294967295
  %i.igb = getelementptr inbounds nuw i8, ptr %i.ici, i64 %i.iga ; 2 uses
  %wide.trip.count3713 = zext nneg i32 %i.hwc to i64 ; 6 uses
  %min.iters.check6071 = icmp ult i32 %i.hwc, 4
  br i1 %min.iters.check6071, label %.lr.ph3038.preheader, label %vector.main.loop.iter.check6072

vector.main.loop.iter.check6072:                  ; preds = %iter.check6085
  %min.iters.check6073 = icmp ult i32 %i.hwc, 32
  br i1 %min.iters.check6073, label %vec.epilog.ph6089, label %vector.ph6074

vector.ph6074:                                    ; preds = %vector.main.loop.iter.check6072
  %n.mod.vf6075 = and i64 %wide.trip.count3713, 28
  %n.vec6076 = and i64 %wide.trip.count3713, 2147483616 ; 4 uses
  br label %vector.body6077

vector.body6077:                                  ; preds = %vector.body6077, %vector.ph6074
  %index6078 = phi i64 [ 0, %vector.ph6074 ], [ %index.next6081, %vector.body6077 ] ; 3 uses
  %i.igc = getelementptr inbounds nuw i8, ptr %i.hjx, i64 %index6078 ; 2 uses
  %i.igd = getelementptr inbounds nuw i8, ptr %i.igc, i64 1
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %.neg129.i.i = sext i1 %i.aqe to i32
  %i.aqf = add nsw i32 %i.aqd, %.neg129.i.i
  %i.aqg = add nsw i32 %i.aqf, %storemerge.i133.i ; 10 uses
  %i.aqh = add nsw i32 %i.aqg, 5
  %or.cond3.i.i = icmp ult i32 %i.aqh, 27
  %i.aqi = udiv i64 %.0786, 100000000             ; 2 uses
  %i.aqj = trunc i64 %i.aqi to i32                ; 2 uses
  %.neg.i136.i = mul i64 %i.aqi, 4194967296
  %i.aqk = add i64 %.neg.i136.i, %.0786           ; 4 uses
  %i.aql = trunc i64 %i.aqk to i32                ; 6 uses
  %i.aqm = udiv i32 %i.aqj, 10000                 ; 3 uses
  %.neg95.i.i = mul i32 %i.aqm, -10000
  %i.aqn = add i32 %.neg95.i.i, %i.aqj            ; 15 uses
  %i.aqo = zext nneg i32 %i.aqm to i64
  %i.aqp = mul nuw nsw i64 %i.aqo, 167773
  %i.aqq = lshr i64 %i.aqp, 24
  %i.aqr = trunc nuw nsw i64 %i.aqq to i32        ; 3 uses
  %i.aqs = mul nuw nsw i32 %i.aqr, 41
  %i.aqt = lshr i32 %i.aqs, 12                    ; 7 uses
  %.neg96.i.i = mul nsw i32 %i.aqt, -100
  %i.aqu = add nsw i32 %.neg96.i.i, %i.aqr        ; 9 uses
  %.neg97.i.i = mul nsw i32 %i.aqr, -100
  %i.aqv = add nsw i32 %.neg97.i.i, %i.aqm        ; 9 uses
  %i.aqw = trunc nuw nsw i32 %i.aqt to i8
  %i.aqx = add nuw nsw i8 %i.aqw, 48              ; 3 uses
  br i1 %or.cond3.i.i, label %bb.fl, label %bb.ga

bb.fl:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit135.i
  %i.aqy = icmp slt i32 %i.aqg, 1
  br i1 %i.aqy, label %bb.fm, label %bb.ft

bb.fm:                                            ; preds = %bb.fl
  %i.aqz = sub nsw i32 2, %i.aqg
  %i.ara = zext nneg i32 %i.aqz to i64
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.ara ; 2 uses
  store i8 %i.aqx, ptr %i.arb, align 1, !tbaa !81
  %i.arc = icmp ne i32 %i.aqt, 0
  %i.ard = zext i1 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.arb, i64 %i.ard ; 2 uses
  %i.arf = icmp ult i32 %i.aqu, 10
  %i.arg = icmp eq i32 %i.aqt, 0
  %i.arh = and i1 %i.arg, %i.arf                  ; 2 uses
  %i.ari = shl nsw i32 %i.aqu, 1
  %i.arj = zext i32 %i.ari to i64
  %i.ark = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.arj
  %.neg98.i.i = sext i1 %i.arh to i64
  %i.arl = zext i1 %i.arh to i64
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ark, i64 %i.arl
  %i.arn = load i16, ptr %i.arm, align 1
  store i16 %i.arn, ptr %i.are, align 1
  %i.aro = getelementptr inbounds i8, ptr %i.are, i64 %.neg98.i.i ; 10 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 2
  %i.arq = shl nsw i32 %i.aqv, 1
  %i.arr = zext i32 %i.arq to i64
  %i.ars = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.arr
  %i.art = load i16, ptr %i.ars, align 2
  store i16 %i.art, ptr %i.arp, align 1
  %.not.i137.i = icmp eq i32 %i.aql, 0
  br i1 %.not.i137.i, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aru = mul i32 %i.aqn, 5243
  %i.arv = lshr i32 %i.aru, 19                    ; 2 uses
  %.neg103.i.i = mul i32 %i.arv, 2147483548
  %i.arw = add i32 %.neg103.i.i, %i.aqn
  %i.arx = and i64 %i.aqk, 4294967295
  %i.ary = mul nuw nsw i64 %i.arx, 109951163
  %i.arz = lshr i64 %i.ary, 40
  %i.asa = trunc nuw nsw i64 %i.arz to i32        ; 3 uses
  %.neg104.i.i = mul i32 %i.asa, -10000
  %i.asb = add i32 %.neg104.i.i, %i.aql           ; 3 uses
  %i.asc = mul nuw i32 %i.asa, 5243
  %i.asd = lshr i32 %i.asc, 19                    ; 3 uses
  %.neg105.i.i = mul nsw i32 %i.asd, -100
  %i.ase = add nsw i32 %.neg105.i.i, %i.asa       ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.aro, i64 4
  %i.asg = shl nuw nsw i32 %i.arv, 1
  %i.ash = zext nneg i32 %i.asg to i64
  %i.asi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ash
  %i.asj = load i16, ptr %i.asi, align 2
  store i16 %i.asj, ptr %i.asf, align 1
  %i.ask = getelementptr inbounds nuw i8, ptr %i.aro, i64 6
  %i.asl = shl i32 %i.arw, 1
  %i.asm = zext i32 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asm
  %i.aso = load i16, ptr %i.asn, align 2
  store i16 %i.aso, ptr %i.ask, align 1
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aro, i64 8
  %i.asq = shl nuw nsw i32 %i.asd, 1
  %i.asr = zext nneg i32 %i.asq to i64
  %i.ass = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asr
  %i.ast = load i16, ptr %i.ass, align 2
  store i16 %i.ast, ptr %i.asp, align 1
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aro, i64 10
  %i.asv = shl nsw i32 %i.ase, 1
  %i.asw = zext i32 %i.asv to i64
  %i.asx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asw
  %i.asy = load i16, ptr %i.asx, align 2
  store i16 %i.asy, ptr %i.asu, align 1
  %.not106.i138.i = icmp eq i32 %i.asb, 0
  br i1 %.not106.i138.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.asz = mul i32 %i.asb, 5243
  %i.ata = lshr i32 %i.asz, 19                    ; 3 uses
  %.neg108.i.i = mul nsw i32 %i.ata, -100
  %i.atb = add i32 %.neg108.i.i, %i.asb           ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.aro, i64 12
  %i.atd = shl nuw nsw i32 %i.ata, 1
  %i.ate = zext nneg i32 %i.atd to i64
  %i.atf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ate
  %i.atg = load i16, ptr %i.atf, align 2
  store i16 %i.atg, ptr %i.atc, align 1
  %i.ath = getelementptr inbounds nuw i8, ptr %i.aro, i64 14
  %i.ati = shl i32 %i.atb, 1
  %i.atj = zext i32 %i.ati to i64
  %i.atk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atj
  %i.atl = load i16, ptr %i.atk, align 2
  store i16 %i.atl, ptr %i.ath, align 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink4411 = phi i32 [ %i.ata, %bb.fo ], [ %i.asd, %bb.fn ]
  %.sink4407 = phi i32 [ %i.atb, %bb.fo ], [ %i.ase, %bb.fn ] ; 2 uses
  %.sink = phi i64 [ 16, %bb.fo ], [ 12, %bb.fn ]
  %i.atm = zext nneg i32 %.sink4411 to i64
  %i.atn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atm
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !81
  %i.atp = zext i8 %i.ato to i64
  %i.atq = zext i32 %.sink4407 to i64
  %i.atr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atq
  %i.ats = load i8, ptr %i.atr, align 1, !tbaa !81
  %i.att = zext i8 %i.ats to i64
  %.not107.i142.i = icmp eq i32 %.sink4407, 0
  %i.atu = add nuw nsw i64 %i.atp, 2
  %i.atv = select i1 %.not107.i142.i, i64 %i.atu, i64 %i.att
  %i.atw = sub nsw i64 %.sink, %i.atv
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

bb.fq:                                            ; preds = %bb.fm
  %.not99.i143.i = icmp eq i32 %i.aqn, 0
  br i1 %.not99.i143.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.atx = mul i32 %i.aqn, 5243
  %i.aty = lshr i32 %i.atx, 19                    ; 3 uses
  %.neg101.i.i = mul nsw i32 %i.aty, -100
  %i.atz = add i32 %.neg101.i.i, %i.aqn           ; 3 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aro, i64 4
  %i.aub = shl nuw nsw i32 %i.aty, 1
  %i.auc = zext nneg i32 %i.aub to i64
  %i.aud = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auc
  %i.aue = load i16, ptr %i.aud, align 2
  store i16 %i.aue, ptr %i.aua, align 1
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aro, i64 6
  %i.aug = shl i32 %i.atz, 1
  %i.auh = zext i32 %i.aug to i64
  %i.aui = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auh
  %i.auj = load i16, ptr %i.aui, align 2
  store i16 %i.auj, ptr %i.auf, align 1
  %i.auk = zext nneg i32 %i.aty to i64
  %i.aul = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auk
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !81
  %i.aun = zext i8 %i.aum to i64
  %i.auo = zext i32 %i.atz to i64
  %i.aup = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auo
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !81
  %i.aur = zext i8 %i.auq to i64
  %.not102.i144.i = icmp eq i32 %i.atz, 0
  %i.aus = add nuw nsw i64 %i.aun, 2
  %i.aut = select i1 %.not102.i144.i, i64 %i.aus, i64 %i.aur
  %i.auu = sub nsw i64 8, %i.aut
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

bb.fs:                                            ; preds = %bb.fq
  %i.auv = zext i32 %i.aqu to i64
  %i.auw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auv
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !81
  %i.auy = zext i8 %i.aux to i64
  %i.auz = zext i32 %i.aqv to i64
  %i.ava = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auz
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !81
  %i.avc = zext i8 %i.avb to i64
  %.not100.i145.i = icmp eq i32 %i.aqv, 0
  %i.avd = select i1 %.not100.i145.i, i64 %i.auy, i64 0
  %i.ave = add nuw nsw i64 %i.avd, %i.avc
  %i.avf = sub nsw i64 4, %i.ave
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i: ; preds = %bb.fs, %bb.fr, %bb.fp
  %.sink4413.a = phi i64 [ %i.avf, %bb.fs ], [ %i.auu, %bb.fr ], [ %i.atw, %bb.fp ]
  %i.avg = and i64 %.sink4413.a, 4294967295
  %i.avh = getelementptr inbounds nuw i8, ptr %i.aro, i64 %i.avg ; 2 uses
  store i8 48, ptr %i.aeb, align 1, !tbaa !81
  %i.avi = getelementptr inbounds nuw i8, ptr %i.aeb, i64 1
  store i8 46, ptr %i.avi, align 1, !tbaa !81
  %i.avj = icmp slt i32 %i.aqg, 0
  br i1 %i.avj, label %.lr.ph2309.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit97.i

.lr.ph2309.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i
  %7 = sub nsw i32 0, %i.aqg
  %8 = getelementptr i8, ptr %i.aeb, i64 2
  %i.avk = zext nneg i32 %7 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %8, i8 48, i64 %i.avk, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit97.i

bb.ft:                                            ; preds = %bb.fl
  %i.avl = getelementptr inbounds nuw i8, ptr %i.aeb, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aeb, i8 48, i64 24, i1 false)
  store i8 %i.aqx, ptr %i.avl, align 1, !tbaa !81
  %i.avm = icmp ne i32 %i.aqt, 0
  %i.avn = zext i1 %i.avm to i64
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avl, i64 %i.avn ; 2 uses
  %i.avp = icmp ult i32 %i.aqu, 10
  %i.avq = icmp eq i32 %i.aqt, 0
  %i.avr = and i1 %i.avq, %i.avp                  ; 2 uses
  %i.avs = shl nsw i32 %i.aqu, 1
  %i.avt = zext i32 %i.avs to i64
  %i.avu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.avt
  %.neg98.i150.i = sext i1 %i.avr to i64
  %i.avv = zext i1 %i.avr to i64
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avu, i64 %i.avv
  %i.avx = load i16, ptr %i.avw, align 1
  store i16 %i.avx, ptr %i.avo, align 1
  %i.avy = getelementptr inbounds i8, ptr %i.avo, i64 %.neg98.i150.i ; 10 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 2
  %i.awa = shl nsw i32 %i.aqv, 1
  %i.awb = zext i32 %i.awa to i64
  %i.awc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awb
  %i.awd = load i16, ptr %i.awc, align 2
  store i16 %i.awd, ptr %i.avz, align 1
  %.not.i151.i = icmp eq i32 %i.aql, 0
  br i1 %.not.i151.i, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.awe = mul i32 %i.aqn, 5243
  %i.awf = lshr i32 %i.awe, 19                    ; 2 uses
  %.neg103.i152.i = mul i32 %i.awf, 2147483548
  %i.awg = add i32 %.neg103.i152.i, %i.aqn
  %i.awh = and i64 %i.aqk, 4294967295
  %i.awi = mul nuw nsw i64 %i.awh, 109951163
  %i.awj = lshr i64 %i.awi, 40
  %i.awk = trunc nuw nsw i64 %i.awj to i32        ; 3 uses
  %.neg104.i153.i = mul i32 %i.awk, -10000
  %i.awl = add i32 %.neg104.i153.i, %i.aql        ; 3 uses
  %i.awm = mul nuw i32 %i.awk, 5243
  %i.awn = lshr i32 %i.awm, 19                    ; 3 uses
  %.neg105.i154.i = mul nsw i32 %i.awn, -100
  %i.awo = add nsw i32 %.neg105.i154.i, %i.awk    ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.avy, i64 4
  %i.awq = shl nuw nsw i32 %i.awf, 1
  %i.awr = zext nneg i32 %i.awq to i64
  %i.aws = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awr
  %i.awt = load i16, ptr %i.aws, align 2
  store i16 %i.awt, ptr %i.awp, align 1
  %i.awu = getelementptr inbounds nuw i8, ptr %i.avy, i64 6
  %i.awv = shl i32 %i.awg, 1
  %i.aww = zext i32 %i.awv to i64
  %i.awx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aww
  %i.awy = load i16, ptr %i.awx, align 2
  store i16 %i.awy, ptr %i.awu, align 1
  %i.awz = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  %i.axa = shl nuw nsw i32 %i.awn, 1
  %i.axb = zext nneg i32 %i.axa to i64
  %i.axc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axb
  %i.axd = load i16, ptr %i.axc, align 2
  store i16 %i.axd, ptr %i.awz, align 1
  %i.axe = getelementptr inbounds nuw i8, ptr %i.avy, i64 10
  %i.axf = shl nsw i32 %i.awo, 1
  %i.axg = zext i32 %i.axf to i64
  %i.axh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axg
  %i.axi = load i16, ptr %i.axh, align 2
  store i16 %i.axi, ptr %i.axe, align 1
  %.not106.i155.i = icmp eq i32 %i.awl, 0
  br i1 %.not106.i155.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.axj = mul i32 %i.awl, 5243
  %i.axk = lshr i32 %i.axj, 19                    ; 3 uses
  %.neg108.i156.i = mul nsw i32 %i.axk, -100
  %i.axl = add i32 %.neg108.i156.i, %i.awl        ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.avy, i64 12
  %i.axn = shl nuw nsw i32 %i.axk, 1
  %i.axo = zext nneg i32 %i.axn to i64
  %i.axp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axo
  %i.axq = load i16, ptr %i.axp, align 2
  store i16 %i.axq, ptr %i.axm, align 1
  %i.axr = getelementptr inbounds nuw i8, ptr %i.avy, i64 14
  %i.axs = shl i32 %i.axl, 1
  %i.axt = zext i32 %i.axs to i64
  %i.axu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axt
  %i.axv = load i16, ptr %i.axu, align 2
  store i16 %i.axv, ptr %i.axr, align 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %.sink4427.a = phi i32 [ %i.axk, %bb.fv ], [ %i.awn, %bb.fu ]
  %.sink4423 = phi i32 [ %i.axl, %bb.fv ], [ %i.awo, %bb.fu ] ; 2 uses
  %.sink4414 = phi i64 [ 16, %bb.fv ], [ 12, %bb.fu ]
  %i.axw = zext nneg i32 %.sink4427.a to i64
  %i.axx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.axw
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !81
  %i.axz = zext i8 %i.axy to i64
  %i.aya = zext i32 %.sink4423 to i64
  %i.ayb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aya
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !81
  %i.ayd = zext i8 %i.ayc to i64
  %.not107.i162.i = icmp eq i32 %.sink4423, 0
  %i.aye = add nuw nsw i64 %i.axz, 2
  %i.ayf = select i1 %.not107.i162.i, i64 %i.aye, i64 %i.ayd
  %i.ayg = sub nsw i64 %.sink4414, %i.ayf
  br label %iter.check5305

bb.fx:                                            ; preds = %bb.ft
  %.not99.i163.i = icmp eq i32 %i.aqn, 0
  br i1 %.not99.i163.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ayh = mul i32 %i.aqn, 5243
  %i.ayi = lshr i32 %i.ayh, 19                    ; 3 uses
  %.neg101.i164.i = mul nsw i32 %i.ayi, -100
  %i.ayj = add i32 %.neg101.i164.i, %i.aqn        ; 3 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.avy, i64 4
  %i.ayl = shl nuw nsw i32 %i.ayi, 1
  %i.aym = zext nneg i32 %i.ayl to i64
  %i.ayn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aym
  %i.ayo = load i16, ptr %i.ayn, align 2
  store i16 %i.ayo, ptr %i.ayk, align 1
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.avy, i64 6
  %i.ayq = shl i32 %i.ayj, 1
  %i.ayr = zext i32 %i.ayq to i64
  %i.ays = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayr
  %i.ayt = load i16, ptr %i.ays, align 2
  store i16 %i.ayt, ptr %i.ayp, align 1
  %i.ayu = zext nneg i32 %i.ayi to i64
  %i.ayv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayu
  %i.ayw = load i8, ptr %i.ayv, align 1, !tbaa !81
  %i.ayx = zext i8 %i.ayw to i64
  %i.ayy = zext i32 %i.ayj to i64
  %i.ayz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayy
  %i.aza = load i8, ptr %i.ayz, align 1, !tbaa !81
  %i.azb = zext i8 %i.aza to i64
  %.not102.i165.i = icmp eq i32 %i.ayj, 0
  %i.azc = add nuw nsw i64 %i.ayx, 2
  %i.azd = select i1 %.not102.i165.i, i64 %i.azc, i64 %i.azb
  %i.aze = sub nsw i64 8, %i.azd
  br label %iter.check5305

bb.fz:                                            ; preds = %bb.fx
  %i.azf = zext i32 %i.aqu to i64
  %i.azg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azf
  %i.azh = load i8, ptr %i.azg, align 1, !tbaa !81
  %i.azi = zext i8 %i.azh to i64
  %i.azj = zext i32 %i.aqv to i64
  %i.azk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azj
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !81
  %i.azm = zext i8 %i.azl to i64
  %.not100.i166.i = icmp eq i32 %i.aqv, 0
  %i.azn = select i1 %.not100.i166.i, i64 %i.azi, i64 0
  %i.azo = add nuw nsw i64 %i.azn, %i.azm
  %i.azp = sub nsw i64 4, %i.azo
  br label %iter.check5305

iter.check5305:                                   ; preds = %bb.fw, %bb.fy, %bb.fz
  %.sink4428.a = phi i64 [ %i.ayg, %bb.fw ], [ %i.aze, %bb.fy ], [ %i.azp, %bb.fz ]
  %.pn.i159.i = and i64 %.sink4428.a, 4294967295
  %.0.i160.i = getelementptr inbounds nuw i8, ptr %i.avy, i64 %.pn.i159.i ; 2 uses
  %wide.trip.count2915 = zext nneg i32 %i.aqg to i64 ; 6 uses
  %min.iters.check5291 = icmp ult i32 %i.aqg, 4
  br i1 %min.iters.check5291, label %.lr.ph2306.preheader, label %vector.main.loop.iter.check5292

vector.main.loop.iter.check5292:                  ; preds = %iter.check5305
  %min.iters.check5293 = icmp ult i32 %i.aqg, 32
  br i1 %min.iters.check5293, label %vec.epilog.ph5309, label %vector.ph5294

vector.ph5294:                                    ; preds = %vector.main.loop.iter.check5292
  %n.mod.vf5295 = and i64 %wide.trip.count2915, 28
  %n.vec5296 = and i64 %wide.trip.count2915, 2147483616 ; 4 uses
  br label %vector.body5297

vector.body5297:                                  ; preds = %vector.body5297, %vector.ph5294
  %index5298 = phi i64 [ 0, %vector.ph5294 ], [ %index.next5301, %vector.body5297 ] ; 3 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %index5298 ; 2 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 1
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azq, i64 17
  %wide.load5299.a = load <16 x i8>, ptr %i.azr, align 1, !tbaa !81
  %wide.load5300 = load <16 x i8>, ptr %i.azs, align 1, !tbaa !81
  %i.azt = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %index5298 ; 2 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 16
  store <16 x i8> %wide.load5299.a, ptr %i.azt, align 1, !tbaa !81
  store <16 x i8> %wide.load5300, ptr %i.azu, align 1, !tbaa !81
  %index.next5301 = add nuw i64 %index5298, 32    ; 2 uses
  %i.azv = icmp eq i64 %index.next5301, %n.vec5296
  br i1 %i.azv, label %middle.block5302, label %vector.body5297, !llvm.loop !347

middle.block5302:                                 ; preds = %vector.body5297
  %cmp.n5303 = icmp eq i64 %n.vec5296, %wide.trip.count2915
  br i1 %cmp.n5303, label %._crit_edge2307, label %vec.epilog.iter.check5307

vec.epilog.iter.check5307:                        ; preds = %middle.block5302
  %min.epilog.iters.check5308 = icmp eq i64 %n.mod.vf5295, 0
  br i1 %min.epilog.iters.check5308, label %.lr.ph2306.preheader, label %vec.epilog.ph5309, !prof !294

vec.epilog.ph5309:                                ; preds = %vector.main.loop.iter.check5292, %vec.epilog.iter.check5307
end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %.neg129.i.i35 = sext i1 %i.ebp to i32
  %i.ebq = add nsw i32 %i.ebo, %.neg129.i.i35
  %i.ebr = add nsw i32 %i.ebq, %storemerge.i693.i ; 10 uses
  %i.ebs = add nsw i32 %i.ebr, 5
  %or.cond3.i.i36 = icmp ult i32 %i.ebs, 27
  br i1 %or.cond3.i.i36, label %bb.ox, label %bb.pm

bb.ox:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695.i
  %i.ebt = icmp slt i32 %i.ebr, 1
  br i1 %i.ebt, label %bb.oy, label %bb.pf

bb.oy:                                            ; preds = %bb.ox
  %i.ebu = sub nsw i32 2, %i.ebr
  %i.ebv = zext nneg i32 %i.ebu to i64
  %i.ebw = getelementptr inbounds nuw i8, ptr %i.dpm, i64 %i.ebv ; 2 uses
  %i.ebx = udiv i64 %.0778, 100000000             ; 2 uses
  %i.eby = trunc i64 %i.ebx to i32                ; 2 uses
  %.neg.i696.i = mul i64 %i.ebx, 4194967296
  %i.ebz = add i64 %.neg.i696.i, %.0778           ; 2 uses
  %i.eca = trunc i64 %i.ebz to i32                ; 2 uses
  %i.ecb = udiv i32 %i.eby, 10000                 ; 3 uses
  %.neg95.i.i43 = mul i32 %i.ecb, -10000
  %i.ecc = add i32 %.neg95.i.i43, %i.eby          ; 5 uses
  %i.ecd = zext nneg i32 %i.ecb to i64
  %i.ece = mul nuw nsw i64 %i.ecd, 167773
  %i.ecf = lshr i64 %i.ece, 24
  %i.ecg = trunc nuw nsw i64 %i.ecf to i32        ; 3 uses
  %i.ech = mul nuw nsw i32 %i.ecg, 41
  %i.eci = lshr i32 %i.ech, 12                    ; 4 uses
  %.neg96.i.i44 = mul nsw i32 %i.eci, -100
  %i.ecj = add nsw i32 %.neg96.i.i44, %i.ecg      ; 3 uses
  %.neg97.i.i45 = mul nsw i32 %i.ecg, -100
  %i.eck = add nsw i32 %.neg97.i.i45, %i.ecb      ; 3 uses
  %i.ecl = trunc nuw nsw i32 %i.eci to i8
  %i.ecm = add nuw nsw i8 %i.ecl, 48
  store i8 %i.ecm, ptr %i.ebw, align 1, !tbaa !81
  %i.ecn = icmp ne i32 %i.eci, 0
  %i.eco = zext i1 %i.ecn to i64
  %i.ecp = getelementptr inbounds nuw i8, ptr %i.ebw, i64 %i.eco ; 2 uses
  %i.ecq = icmp ult i32 %i.ecj, 10
  %i.ecr = icmp eq i32 %i.eci, 0
  %i.ecs = and i1 %i.ecr, %i.ecq                  ; 2 uses
  %i.ect = shl nsw i32 %i.ecj, 1
  %i.ecu = zext i32 %i.ect to i64
  %i.ecv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ecu
  %.neg98.i.i46 = sext i1 %i.ecs to i64
  %i.ecw = zext i1 %i.ecs to i64
  %i.ecx = getelementptr inbounds nuw i8, ptr %i.ecv, i64 %i.ecw
  %i.ecy = load i16, ptr %i.ecx, align 1
  store i16 %i.ecy, ptr %i.ecp, align 1
  %i.ecz = getelementptr inbounds i8, ptr %i.ecp, i64 %.neg98.i.i46 ; 10 uses
  %i.eda = getelementptr inbounds nuw i8, ptr %i.ecz, i64 2
  %i.edb = shl nsw i32 %i.eck, 1
  %i.edc = zext i32 %i.edb to i64
  %i.edd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edc
  %i.ede = load i16, ptr %i.edd, align 2
  store i16 %i.ede, ptr %i.eda, align 1
  %.not.i697.i = icmp eq i32 %i.eca, 0
  br i1 %.not.i697.i, label %bb.pc, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.edf = mul i32 %i.ecc, 5243
  %i.edg = lshr i32 %i.edf, 19                    ; 2 uses
  %.neg103.i.i47 = mul i32 %i.edg, 2147483548
  %i.edh = add i32 %.neg103.i.i47, %i.ecc
  %i.edi = and i64 %i.ebz, 4294967295
  %i.edj = mul nuw nsw i64 %i.edi, 109951163
  %i.edk = lshr i64 %i.edj, 40
  %i.edl = trunc nuw nsw i64 %i.edk to i32        ; 3 uses
  %.neg104.i.i48 = mul i32 %i.edl, -10000
  %i.edm = add i32 %.neg104.i.i48, %i.eca         ; 3 uses
  %i.edn = mul nuw i32 %i.edl, 5243
  %i.edo = lshr i32 %i.edn, 19                    ; 3 uses
  %.neg105.i.i49 = mul nsw i32 %i.edo, -100
  %i.edp = add nsw i32 %.neg105.i.i49, %i.edl     ; 2 uses
  %i.edq = getelementptr inbounds nuw i8, ptr %i.ecz, i64 4
  %i.edr = shl nuw nsw i32 %i.edg, 1
  %i.eds = zext nneg i32 %i.edr to i64
  %i.edt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eds
  %i.edu = load i16, ptr %i.edt, align 2
  store i16 %i.edu, ptr %i.edq, align 1
  %i.edv = getelementptr inbounds nuw i8, ptr %i.ecz, i64 6
  %i.edw = shl i32 %i.edh, 1
  %i.edx = zext i32 %i.edw to i64
  %i.edy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edx
  %i.edz = load i16, ptr %i.edy, align 2
  store i16 %i.edz, ptr %i.edv, align 1
  %i.eea = getelementptr inbounds nuw i8, ptr %i.ecz, i64 8
  %i.eeb = shl nuw nsw i32 %i.edo, 1
  %i.eec = zext nneg i32 %i.eeb to i64
  %i.eed = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eec
  %i.eee = load i16, ptr %i.eed, align 2
  store i16 %i.eee, ptr %i.eea, align 1
  %i.eef = getelementptr inbounds nuw i8, ptr %i.ecz, i64 10
  %i.eeg = shl nsw i32 %i.edp, 1
  %i.eeh = zext i32 %i.eeg to i64
  %i.eei = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eeh
  %i.eej = load i16, ptr %i.eei, align 2
  store i16 %i.eej, ptr %i.eef, align 1
  %.not106.i.i50 = icmp eq i32 %i.edm, 0
  br i1 %.not106.i.i50, label %bb.pb, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.eek = mul i32 %i.edm, 5243
  %i.eel = lshr i32 %i.eek, 19                    ; 3 uses
  %.neg108.i.i51 = mul nsw i32 %i.eel, -100
  %i.eem = add i32 %.neg108.i.i51, %i.edm         ; 2 uses
  %i.een = getelementptr inbounds nuw i8, ptr %i.ecz, i64 12
  %i.eeo = shl nuw nsw i32 %i.eel, 1
  %i.eep = zext nneg i32 %i.eeo to i64
  %i.eeq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eep
  %i.eer = load i16, ptr %i.eeq, align 2
  store i16 %i.eer, ptr %i.een, align 1
  %i.ees = getelementptr inbounds nuw i8, ptr %i.ecz, i64 14
  %i.eet = shl i32 %i.eem, 1
  %i.eeu = zext i32 %i.eet to i64
  %i.eev = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eeu
  %i.eew = load i16, ptr %i.eev, align 2
  store i16 %i.eew, ptr %i.ees, align 1
  br label %bb.pb

bb.pb:                                            ; preds = %bb.oz, %bb.pa
  %.sink4446 = phi i32 [ %i.eel, %bb.pa ], [ %i.edo, %bb.oz ]
  %.sink4442 = phi i32 [ %i.eem, %bb.pa ], [ %i.edp, %bb.oz ] ; 2 uses
  %.sink4433 = phi i64 [ 16, %bb.pa ], [ 12, %bb.oz ]
  %i.eex = zext nneg i32 %.sink4446 to i64
  %i.eey = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eex
  %i.eez = load i8, ptr %i.eey, align 1, !tbaa !81
  %i.efa = zext i8 %i.eez to i64
  %i.efb = zext i32 %.sink4442 to i64
  %i.efc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efb
  %i.efd = load i8, ptr %i.efc, align 1, !tbaa !81
  %i.efe = zext i8 %i.efd to i64
  %.not107.i.i56 = icmp eq i32 %.sink4442, 0
  %i.eff = add nuw nsw i64 %i.efa, 2
  %i.efg = select i1 %.not107.i.i56, i64 %i.eff, i64 %i.efe
  %i.efh = sub nsw i64 %.sink4433, %i.efg
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54

bb.pc:                                            ; preds = %bb.oy
  %.not99.i.i57 = icmp eq i32 %i.ecc, 0
  br i1 %.not99.i.i57, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.efi = mul i32 %i.ecc, 5243
  %i.efj = lshr i32 %i.efi, 19                    ; 3 uses
  %.neg101.i.i58 = mul nsw i32 %i.efj, -100
  %i.efk = add i32 %.neg101.i.i58, %i.ecc         ; 3 uses
  %i.efl = getelementptr inbounds nuw i8, ptr %i.ecz, i64 4
  %i.efm = shl nuw nsw i32 %i.efj, 1
  %i.efn = zext nneg i32 %i.efm to i64
  %i.efo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efn
  %i.efp = load i16, ptr %i.efo, align 2
  store i16 %i.efp, ptr %i.efl, align 1
  %i.efq = getelementptr inbounds nuw i8, ptr %i.ecz, i64 6
  %i.efr = shl i32 %i.efk, 1
  %i.efs = zext i32 %i.efr to i64
  %i.eft = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efs
  %i.efu = load i16, ptr %i.eft, align 2
  store i16 %i.efu, ptr %i.efq, align 1
  %i.efv = zext nneg i32 %i.efj to i64
  %i.efw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efv
  %i.efx = load i8, ptr %i.efw, align 1, !tbaa !81
  %i.efy = zext i8 %i.efx to i64
  %i.efz = zext i32 %i.efk to i64
  %i.ega = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efz
  %i.egb = load i8, ptr %i.ega, align 1, !tbaa !81
  %i.egc = zext i8 %i.egb to i64
  %.not102.i.i59 = icmp eq i32 %i.efk, 0
  %i.egd = add nuw nsw i64 %i.efy, 2
  %i.ege = select i1 %.not102.i.i59, i64 %i.egd, i64 %i.egc
  %i.egf = sub nsw i64 8, %i.ege
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54

bb.pe:                                            ; preds = %bb.pc
  %i.egg = zext i32 %i.ecj to i64
  %i.egh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.egg
  %i.egi = load i8, ptr %i.egh, align 1, !tbaa !81
  %i.egj = zext i8 %i.egi to i64
  %i.egk = zext i32 %i.eck to i64
  %i.egl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.egk
  %i.egm = load i8, ptr %i.egl, align 1, !tbaa !81
  %i.egn = zext i8 %i.egm to i64
  %.not100.i.i60 = icmp eq i32 %i.eck, 0
  %i.ego = select i1 %.not100.i.i60, i64 %i.egj, i64 0
  %i.egp = add nuw nsw i64 %i.ego, %i.egn
  %i.egq = sub nsw i64 4, %i.egp
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54: ; preds = %bb.pe, %bb.pd, %bb.pb
  %.sink4448.a = phi i64 [ %i.egq, %bb.pe ], [ %i.egf, %bb.pd ], [ %i.efh, %bb.pb ]
  %i.egr = and i64 %.sink4448.a, 4294967295
  %i.egs = getelementptr inbounds nuw i8, ptr %i.ecz, i64 %i.egr ; 2 uses
  store i8 48, ptr %i.dpm, align 1, !tbaa !81
  %i.egt = getelementptr inbounds nuw i8, ptr %i.dpm, i64 1
  store i8 46, ptr %i.egt, align 1, !tbaa !81
  %i.egu = icmp slt i32 %i.ebr, 0
  br i1 %i.egu, label %.lr.ph2099.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

.lr.ph2099.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54
  %9 = sub nsw i32 0, %i.ebr
  %10 = getelementptr i8, ptr %i.dpm, i64 2
  %i.egv = zext nneg i32 %9 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %10, i8 48, i64 %i.egv, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.pf:                                            ; preds = %bb.ox
  %i.egw = getelementptr inbounds nuw i8, ptr %i.dpm, i64 1 ; 2 uses
  %i.egx = udiv i64 %.0778, 100000000             ; 2 uses
  %i.egy = trunc i64 %i.egx to i32                ; 2 uses
  %.neg.i701.i = mul i64 %i.egx, 4194967296
  %i.egz = add i64 %.neg.i701.i, %.0778           ; 2 uses
  %i.eha = trunc i64 %i.egz to i32                ; 2 uses
  %i.ehb = udiv i32 %i.egy, 10000                 ; 3 uses
  %.neg95.i702.i = mul i32 %i.ehb, -10000
  %i.ehc = add i32 %.neg95.i702.i, %i.egy         ; 5 uses
  %i.ehd = zext nneg i32 %i.ehb to i64
  %i.ehe = mul nuw nsw i64 %i.ehd, 167773
  %i.ehf = lshr i64 %i.ehe, 24
  %i.ehg = trunc nuw nsw i64 %i.ehf to i32        ; 3 uses
  %i.ehh = mul nuw nsw i32 %i.ehg, 41
  %i.ehi = lshr i32 %i.ehh, 12                    ; 4 uses
  %.neg96.i703.i = mul nsw i32 %i.ehi, -100
  %i.ehj = add nsw i32 %.neg96.i703.i, %i.ehg     ; 3 uses
  %.neg97.i704.i = mul nsw i32 %i.ehg, -100
  %i.ehk = add nsw i32 %.neg97.i704.i, %i.ehb     ; 3 uses
  %i.ehl = trunc nuw nsw i32 %i.ehi to i8
  %i.ehm = add nuw nsw i8 %i.ehl, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dpm, i8 48, i64 24, i1 false)
  store i8 %i.ehm, ptr %i.egw, align 1, !tbaa !81
  %i.ehn = icmp ne i32 %i.ehi, 0
  %i.eho = zext i1 %i.ehn to i64
  %i.ehp = getelementptr inbounds nuw i8, ptr %i.egw, i64 %i.eho ; 2 uses
  %i.ehq = icmp ult i32 %i.ehj, 10
  %i.ehr = icmp eq i32 %i.ehi, 0
  %i.ehs = and i1 %i.ehr, %i.ehq                  ; 2 uses
  %i.eht = shl nsw i32 %i.ehj, 1
  %i.ehu = zext i32 %i.eht to i64
  %i.ehv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ehu
  %.neg98.i705.i = sext i1 %i.ehs to i64
  %i.ehw = zext i1 %i.ehs to i64
  %i.ehx = getelementptr inbounds nuw i8, ptr %i.ehv, i64 %i.ehw
  %i.ehy = load i16, ptr %i.ehx, align 1
  store i16 %i.ehy, ptr %i.ehp, align 1
  %i.ehz = getelementptr inbounds i8, ptr %i.ehp, i64 %.neg98.i705.i ; 10 uses
  %i.eia = getelementptr inbounds nuw i8, ptr %i.ehz, i64 2
  %i.eib = shl nsw i32 %i.ehk, 1
  %i.eic = zext i32 %i.eib to i64
  %i.eid = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eic
  %i.eie = load i16, ptr %i.eid, align 2
  store i16 %i.eie, ptr %i.eia, align 1
  %.not.i706.i = icmp eq i32 %i.eha, 0
  br i1 %.not.i706.i, label %bb.pj, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.eif = mul i32 %i.ehc, 5243
  %i.eig = lshr i32 %i.eif, 19                    ; 2 uses
  %.neg103.i707.i = mul i32 %i.eig, 2147483548
  %i.eih = add i32 %.neg103.i707.i, %i.ehc
  %i.eii = and i64 %i.egz, 4294967295
  %i.eij = mul nuw nsw i64 %i.eii, 109951163
  %i.eik = lshr i64 %i.eij, 40
  %i.eil = trunc nuw nsw i64 %i.eik to i32        ; 3 uses
  %.neg104.i708.i = mul i32 %i.eil, -10000
  %i.eim = add i32 %.neg104.i708.i, %i.eha        ; 3 uses
  %i.ein = mul nuw i32 %i.eil, 5243
  %i.eio = lshr i32 %i.ein, 19                    ; 3 uses
  %.neg105.i709.i = mul nsw i32 %i.eio, -100
  %i.eip = add nsw i32 %.neg105.i709.i, %i.eil    ; 2 uses
  %i.eiq = getelementptr inbounds nuw i8, ptr %i.ehz, i64 4
  %i.eir = shl nuw nsw i32 %i.eig, 1
  %i.eis = zext nneg i32 %i.eir to i64
  %i.eit = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eis
  %i.eiu = load i16, ptr %i.eit, align 2
  store i16 %i.eiu, ptr %i.eiq, align 1
  %i.eiv = getelementptr inbounds nuw i8, ptr %i.ehz, i64 6
  %i.eiw = shl i32 %i.eih, 1
  %i.eix = zext i32 %i.eiw to i64
  %i.eiy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eix
  %i.eiz = load i16, ptr %i.eiy, align 2
  store i16 %i.eiz, ptr %i.eiv, align 1
  %i.eja = getelementptr inbounds nuw i8, ptr %i.ehz, i64 8
  %i.ejb = shl nuw nsw i32 %i.eio, 1
  %i.ejc = zext nneg i32 %i.ejb to i64
  %i.ejd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejc
  %i.eje = load i16, ptr %i.ejd, align 2
  store i16 %i.eje, ptr %i.eja, align 1
  %i.ejf = getelementptr inbounds nuw i8, ptr %i.ehz, i64 10
  %i.ejg = shl nsw i32 %i.eip, 1
  %i.ejh = zext i32 %i.ejg to i64
  %i.eji = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejh
  %i.ejj = load i16, ptr %i.eji, align 2
  store i16 %i.ejj, ptr %i.ejf, align 1
  %.not106.i710.i = icmp eq i32 %i.eim, 0
  br i1 %.not106.i710.i, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.ejk = mul i32 %i.eim, 5243
  %i.ejl = lshr i32 %i.ejk, 19                    ; 3 uses
  %.neg108.i711.i = mul nsw i32 %i.ejl, -100
  %i.ejm = add i32 %.neg108.i711.i, %i.eim        ; 2 uses
  %i.ejn = getelementptr inbounds nuw i8, ptr %i.ehz, i64 12
  %i.ejo = shl nuw nsw i32 %i.ejl, 1
  %i.ejp = zext nneg i32 %i.ejo to i64
  %i.ejq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejp
  %i.ejr = load i16, ptr %i.ejq, align 2
  store i16 %i.ejr, ptr %i.ejn, align 1
  %i.ejs = getelementptr inbounds nuw i8, ptr %i.ehz, i64 14
  %i.ejt = shl i32 %i.ejm, 1
  %i.eju = zext i32 %i.ejt to i64
  %i.ejv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eju
  %i.ejw = load i16, ptr %i.ejv, align 2
  store i16 %i.ejw, ptr %i.ejs, align 1
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pg, %bb.ph
  %.sink4462.a = phi i32 [ %i.ejl, %bb.ph ], [ %i.eio, %bb.pg ]
  %.sink4458 = phi i32 [ %i.ejm, %bb.ph ], [ %i.eip, %bb.pg ] ; 2 uses
  %.sink4449 = phi i64 [ 16, %bb.ph ], [ 12, %bb.pg ]
  %i.ejx = zext nneg i32 %.sink4462.a to i64
  %i.ejy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ejx
  %i.ejz = load i8, ptr %i.ejy, align 1, !tbaa !81
  %i.eka = zext i8 %i.ejz to i64
  %i.ekb = zext i32 %.sink4458 to i64
  %i.ekc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ekb
  %i.ekd = load i8, ptr %i.ekc, align 1, !tbaa !81
  %i.eke = zext i8 %i.ekd to i64
  %.not107.i717.i = icmp eq i32 %.sink4458, 0
  %i.ekf = add nuw nsw i64 %i.eka, 2
  %i.ekg = select i1 %.not107.i717.i, i64 %i.ekf, i64 %i.eke
  %i.ekh = sub nsw i64 %.sink4449, %i.ekg
  br label %iter.check5184

bb.pj:                                            ; preds = %bb.pf
  %.not99.i718.i = icmp eq i32 %i.ehc, 0
  br i1 %.not99.i718.i, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.eki = mul i32 %i.ehc, 5243
  %i.ekj = lshr i32 %i.eki, 19                    ; 3 uses
  %.neg101.i719.i = mul nsw i32 %i.ekj, -100
  %i.ekk = add i32 %.neg101.i719.i, %i.ehc        ; 3 uses
  %i.ekl = getelementptr inbounds nuw i8, ptr %i.ehz, i64 4
  %i.ekm = shl nuw nsw i32 %i.ekj, 1
  %i.ekn = zext nneg i32 %i.ekm to i64
  %i.eko = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ekn
  %i.ekp = load i16, ptr %i.eko, align 2
  store i16 %i.ekp, ptr %i.ekl, align 1
  %i.ekq = getelementptr inbounds nuw i8, ptr %i.ehz, i64 6
  %i.ekr = shl i32 %i.ekk, 1
  %i.eks = zext i32 %i.ekr to i64
  %i.ekt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eks
  %i.eku = load i16, ptr %i.ekt, align 2
  store i16 %i.eku, ptr %i.ekq, align 1
  %i.ekv = zext nneg i32 %i.ekj to i64
  %i.ekw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ekv
  %i.ekx = load i8, ptr %i.ekw, align 1, !tbaa !81
  %i.eky = zext i8 %i.ekx to i64
  %i.ekz = zext i32 %i.ekk to i64
  %i.ela = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ekz
  %i.elb = load i8, ptr %i.ela, align 1, !tbaa !81
  %i.elc = zext i8 %i.elb to i64
  %.not102.i720.i = icmp eq i32 %i.ekk, 0
  %i.eld = add nuw nsw i64 %i.eky, 2
  %i.ele = select i1 %.not102.i720.i, i64 %i.eld, i64 %i.elc
  %i.elf = sub nsw i64 8, %i.ele
  br label %iter.check5184

bb.pl:                                            ; preds = %bb.pj
  %i.elg = zext i32 %i.ehj to i64
  %i.elh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.elg
  %i.eli = load i8, ptr %i.elh, align 1, !tbaa !81
  %i.elj = zext i8 %i.eli to i64
  %i.elk = zext i32 %i.ehk to i64
  %i.ell = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.elk
  %i.elm = load i8, ptr %i.ell, align 1, !tbaa !81
  %i.eln = zext i8 %i.elm to i64
  %.not100.i721.i = icmp eq i32 %i.ehk, 0
  %i.elo = select i1 %.not100.i721.i, i64 %i.elj, i64 0
  %i.elp = add nuw nsw i64 %i.elo, %i.eln
  %i.elq = sub nsw i64 4, %i.elp
  br label %iter.check5184

iter.check5184:                                   ; preds = %bb.pi, %bb.pk, %bb.pl
  %.sink4463.a = phi i64 [ %i.ekh, %bb.pi ], [ %i.elf, %bb.pk ], [ %i.elq, %bb.pl ]
  %.pn.i714.i = and i64 %.sink4463.a, 4294967295
  %.0.i715.i = getelementptr inbounds nuw i8, ptr %i.ehz, i64 %.pn.i714.i ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ebr to i64  ; 6 uses
  %min.iters.check5170 = icmp ult i32 %i.ebr, 4
  br i1 %min.iters.check5170, label %.lr.ph2097.preheader, label %vector.main.loop.iter.check5171

vector.main.loop.iter.check5171:                  ; preds = %iter.check5184
  %min.iters.check5172 = icmp ult i32 %i.ebr, 32
  br i1 %min.iters.check5172, label %vec.epilog.ph5188, label %vector.ph5173

vector.ph5173:                                    ; preds = %vector.main.loop.iter.check5171
  %n.mod.vf5174 = and i64 %wide.trip.count, 28
  %n.vec5175 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  br label %vector.body5176

vector.body5176:                                  ; preds = %vector.body5176, %vector.ph5173
  %index5177 = phi i64 [ 0, %vector.ph5173 ], [ %index.next5180, %vector.body5176 ] ; 3 uses
  %i.elr = getelementptr inbounds nuw i8, ptr %i.dpm, i64 %index5177 ; 2 uses
  %i.els = getelementptr inbounds nuw i8, ptr %i.elr, i64 1
end_hunk_4
begin_hunk_5_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %.neg129.i.i204 = sext i1 %i.hwl to i32
  %i.hwm = add nsw i32 %i.hwk, %.neg129.i.i204
  %i.hwn = add nsw i32 %i.hwm, %storemerge.i553.i ; 10 uses
  %i.hwo = add nsw i32 %i.hwn, 5
  %or.cond3.i.i205 = icmp ult i32 %i.hwo, 27
  br i1 %or.cond3.i.i205, label %bb.zn, label %bb.aac

bb.zn:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit555.i
  %i.hwp = icmp slt i32 %i.hwn, 1
  br i1 %i.hwp, label %bb.zo, label %bb.zv

bb.zo:                                            ; preds = %bb.zn
  %i.hwq = sub nsw i32 2, %i.hwn
  %i.hwr = zext nneg i32 %i.hwq to i64
  %i.hws = getelementptr inbounds nuw i8, ptr %i.hki, i64 %i.hwr ; 2 uses
  %i.hwt = udiv i64 %.0771, 100000000             ; 2 uses
  %i.hwu = trunc i64 %i.hwt to i32                ; 2 uses
  %.neg.i556.i = mul i64 %i.hwt, 4194967296
  %i.hwv = add i64 %.neg.i556.i, %.0771           ; 2 uses
  %i.hww = trunc i64 %i.hwv to i32                ; 2 uses
  %i.hwx = udiv i32 %i.hwu, 10000                 ; 3 uses
  %.neg95.i.i217 = mul i32 %i.hwx, -10000
  %i.hwy = add i32 %.neg95.i.i217, %i.hwu         ; 5 uses
  %i.hwz = zext nneg i32 %i.hwx to i64
  %i.hxa = mul nuw nsw i64 %i.hwz, 167773
  %i.hxb = lshr i64 %i.hxa, 24
  %i.hxc = trunc nuw nsw i64 %i.hxb to i32        ; 3 uses
  %i.hxd = mul nuw nsw i32 %i.hxc, 41
  %i.hxe = lshr i32 %i.hxd, 12                    ; 4 uses
  %.neg96.i.i218 = mul nsw i32 %i.hxe, -100
  %i.hxf = add nsw i32 %.neg96.i.i218, %i.hxc     ; 3 uses
  %.neg97.i.i219 = mul nsw i32 %i.hxc, -100
  %i.hxg = add nsw i32 %.neg97.i.i219, %i.hwx     ; 3 uses
  %i.hxh = trunc nuw nsw i32 %i.hxe to i8
  %i.hxi = add nuw nsw i8 %i.hxh, 48
  store i8 %i.hxi, ptr %i.hws, align 1, !tbaa !81
  %i.hxj = icmp ne i32 %i.hxe, 0
  %i.hxk = zext i1 %i.hxj to i64
  %i.hxl = getelementptr inbounds nuw i8, ptr %i.hws, i64 %i.hxk ; 2 uses
  %i.hxm = icmp ult i32 %i.hxf, 10
  %i.hxn = icmp eq i32 %i.hxe, 0
  %i.hxo = and i1 %i.hxn, %i.hxm                  ; 2 uses
  %i.hxp = shl nsw i32 %i.hxf, 1
  %i.hxq = zext i32 %i.hxp to i64
  %i.hxr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxq
  %.neg98.i.i220 = sext i1 %i.hxo to i64
  %i.hxs = zext i1 %i.hxo to i64
  %i.hxt = getelementptr inbounds nuw i8, ptr %i.hxr, i64 %i.hxs
  %i.hxu = load i16, ptr %i.hxt, align 1
  store i16 %i.hxu, ptr %i.hxl, align 1
  %i.hxv = getelementptr inbounds i8, ptr %i.hxl, i64 %.neg98.i.i220 ; 10 uses
  %i.hxw = getelementptr inbounds nuw i8, ptr %i.hxv, i64 2
  %i.hxx = shl nsw i32 %i.hxg, 1
  %i.hxy = zext i32 %i.hxx to i64
  %i.hxz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxy
  %i.hya = load i16, ptr %i.hxz, align 2
  store i16 %i.hya, ptr %i.hxw, align 1
  %.not.i557.i = icmp eq i32 %i.hww, 0
  br i1 %.not.i557.i, label %bb.zs, label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  %i.hyb = mul i32 %i.hwy, 5243
  %i.hyc = lshr i32 %i.hyb, 19                    ; 2 uses
  %.neg103.i.i221 = mul i32 %i.hyc, 2147483548
  %i.hyd = add i32 %.neg103.i.i221, %i.hwy
  %i.hye = and i64 %i.hwv, 4294967295
  %i.hyf = mul nuw nsw i64 %i.hye, 109951163
  %i.hyg = lshr i64 %i.hyf, 40
  %i.hyh = trunc nuw nsw i64 %i.hyg to i32        ; 3 uses
  %.neg104.i.i222 = mul i32 %i.hyh, -10000
  %i.hyi = add i32 %.neg104.i.i222, %i.hww        ; 3 uses
  %i.hyj = mul nuw i32 %i.hyh, 5243
  %i.hyk = lshr i32 %i.hyj, 19                    ; 3 uses
  %.neg105.i.i223 = mul nsw i32 %i.hyk, -100
  %i.hyl = add nsw i32 %.neg105.i.i223, %i.hyh    ; 2 uses
  %i.hym = getelementptr inbounds nuw i8, ptr %i.hxv, i64 4
  %i.hyn = shl nuw nsw i32 %i.hyc, 1
  %i.hyo = zext nneg i32 %i.hyn to i64
  %i.hyp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyo
  %i.hyq = load i16, ptr %i.hyp, align 2
  store i16 %i.hyq, ptr %i.hym, align 1
  %i.hyr = getelementptr inbounds nuw i8, ptr %i.hxv, i64 6
  %i.hys = shl i32 %i.hyd, 1
  %i.hyt = zext i32 %i.hys to i64
  %i.hyu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyt
  %i.hyv = load i16, ptr %i.hyu, align 2
  store i16 %i.hyv, ptr %i.hyr, align 1
  %i.hyw = getelementptr inbounds nuw i8, ptr %i.hxv, i64 8
  %i.hyx = shl nuw nsw i32 %i.hyk, 1
  %i.hyy = zext nneg i32 %i.hyx to i64
  %i.hyz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyy
  %i.hza = load i16, ptr %i.hyz, align 2
  store i16 %i.hza, ptr %i.hyw, align 1
  %i.hzb = getelementptr inbounds nuw i8, ptr %i.hxv, i64 10
  %i.hzc = shl nsw i32 %i.hyl, 1
  %i.hzd = zext i32 %i.hzc to i64
  %i.hze = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzd
  %i.hzf = load i16, ptr %i.hze, align 2
  store i16 %i.hzf, ptr %i.hzb, align 1
  %.not106.i.i224 = icmp eq i32 %i.hyi, 0
  br i1 %.not106.i.i224, label %bb.zr, label %bb.zq

bb.zq:                                            ; preds = %bb.zp
  %i.hzg = mul i32 %i.hyi, 5243
  %i.hzh = lshr i32 %i.hzg, 19                    ; 3 uses
  %.neg108.i.i225 = mul nsw i32 %i.hzh, -100
  %i.hzi = add i32 %.neg108.i.i225, %i.hyi        ; 2 uses
  %i.hzj = getelementptr inbounds nuw i8, ptr %i.hxv, i64 12
  %i.hzk = shl nuw nsw i32 %i.hzh, 1
  %i.hzl = zext nneg i32 %i.hzk to i64
  %i.hzm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzl
  %i.hzn = load i16, ptr %i.hzm, align 2
  store i16 %i.hzn, ptr %i.hzj, align 1
  %i.hzo = getelementptr inbounds nuw i8, ptr %i.hxv, i64 14
  %i.hzp = shl i32 %i.hzi, 1
  %i.hzq = zext i32 %i.hzp to i64
  %i.hzr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzq
  %i.hzs = load i16, ptr %i.hzr, align 2
  store i16 %i.hzs, ptr %i.hzo, align 1
  br label %bb.zr

bb.zr:                                            ; preds = %bb.zp, %bb.zq
  %.sink4481 = phi i32 [ %i.hzh, %bb.zq ], [ %i.hyk, %bb.zp ]
  %.sink4477 = phi i32 [ %i.hzi, %bb.zq ], [ %i.hyl, %bb.zp ] ; 2 uses
  %.sink4468 = phi i64 [ 16, %bb.zq ], [ 12, %bb.zp ]
  %i.hzt = zext nneg i32 %.sink4481 to i64
  %i.hzu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzt
  %i.hzv = load i8, ptr %i.hzu, align 1, !tbaa !81
  %i.hzw = zext i8 %i.hzv to i64
  %i.hzx = zext i32 %.sink4477 to i64
  %i.hzy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzx
  %i.hzz = load i8, ptr %i.hzy, align 1, !tbaa !81
  %i.iaa = zext i8 %i.hzz to i64
  %.not107.i.i230 = icmp eq i32 %.sink4477, 0
  %i.iab = add nuw nsw i64 %i.hzw, 2
  %i.iac = select i1 %.not107.i.i230, i64 %i.iab, i64 %i.iaa
  %i.iad = sub nsw i64 %.sink4468, %i.iac
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i228

bb.zs:                                            ; preds = %bb.zo
  %.not99.i.i231 = icmp eq i32 %i.hwy, 0
  br i1 %.not99.i.i231, label %bb.zu, label %bb.zt

bb.zt:                                            ; preds = %bb.zs
  %i.iae = mul i32 %i.hwy, 5243
  %i.iaf = lshr i32 %i.iae, 19                    ; 3 uses
  %.neg101.i.i232 = mul nsw i32 %i.iaf, -100
  %i.iag = add i32 %.neg101.i.i232, %i.hwy        ; 3 uses
  %i.iah = getelementptr inbounds nuw i8, ptr %i.hxv, i64 4
  %i.iai = shl nuw nsw i32 %i.iaf, 1
  %i.iaj = zext nneg i32 %i.iai to i64
  %i.iak = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iaj
  %i.ial = load i16, ptr %i.iak, align 2
  store i16 %i.ial, ptr %i.iah, align 1
  %i.iam = getelementptr inbounds nuw i8, ptr %i.hxv, i64 6
  %i.ian = shl i32 %i.iag, 1
  %i.iao = zext i32 %i.ian to i64
  %i.iap = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iao
  %i.iaq = load i16, ptr %i.iap, align 2
  store i16 %i.iaq, ptr %i.iam, align 1
  %i.iar = zext nneg i32 %i.iaf to i64
  %i.ias = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iar
  %i.iat = load i8, ptr %i.ias, align 1, !tbaa !81
  %i.iau = zext i8 %i.iat to i64
  %i.iav = zext i32 %i.iag to i64
  %i.iaw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iav
  %i.iax = load i8, ptr %i.iaw, align 1, !tbaa !81
  %i.iay = zext i8 %i.iax to i64
  %.not102.i.i233 = icmp eq i32 %i.iag, 0
  %i.iaz = add nuw nsw i64 %i.iau, 2
  %i.iba = select i1 %.not102.i.i233, i64 %i.iaz, i64 %i.iay
  %i.ibb = sub nsw i64 8, %i.iba
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i228

bb.zu:                                            ; preds = %bb.zs
  %i.ibc = zext i32 %i.hxf to i64
  %i.ibd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ibc
  %i.ibe = load i8, ptr %i.ibd, align 1, !tbaa !81
  %i.ibf = zext i8 %i.ibe to i64
  %i.ibg = zext i32 %i.hxg to i64
  %i.ibh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ibg
  %i.ibi = load i8, ptr %i.ibh, align 1, !tbaa !81
  %i.ibj = zext i8 %i.ibi to i64
  %.not100.i.i234 = icmp eq i32 %i.hxg, 0
  %i.ibk = select i1 %.not100.i.i234, i64 %i.ibf, i64 0
  %i.ibl = add nuw nsw i64 %i.ibk, %i.ibj
  %i.ibm = sub nsw i64 4, %i.ibl
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i228

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i228: ; preds = %bb.zu, %bb.zt, %bb.zr
  %.sink4483.a = phi i64 [ %i.ibm, %bb.zu ], [ %i.ibb, %bb.zt ], [ %i.iad, %bb.zr ]
  %i.ibn = and i64 %.sink4483.a, 4294967295
  %i.ibo = getelementptr inbounds nuw i8, ptr %i.hxv, i64 %i.ibn ; 2 uses
  store i8 48, ptr %i.hki, align 1, !tbaa !81
  %i.ibp = getelementptr inbounds nuw i8, ptr %i.hki, i64 1
  store i8 46, ptr %i.ibp, align 1, !tbaa !81
  %i.ibq = icmp slt i32 %i.hwn, 0
  br i1 %i.ibq, label %.lr.ph2222.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i209.thread

.lr.ph2222.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i228
  %11 = sub nsw i32 0, %i.hwn
  %12 = getelementptr i8, ptr %i.hki, i64 2
  %i.ibr = zext nneg i32 %11 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %12, i8 48, i64 %i.ibr, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i209.thread

bb.zv:                                            ; preds = %bb.zn
  %i.ibs = getelementptr inbounds nuw i8, ptr %i.hki, i64 1 ; 2 uses
  %i.ibt = udiv i64 %.0771, 100000000             ; 2 uses
  %i.ibu = trunc i64 %i.ibt to i32                ; 2 uses
  %.neg.i561.i = mul i64 %i.ibt, 4194967296
  %i.ibv = add i64 %.neg.i561.i, %.0771           ; 2 uses
  %i.ibw = trunc i64 %i.ibv to i32                ; 2 uses
  %i.ibx = udiv i32 %i.ibu, 10000                 ; 3 uses
  %.neg95.i562.i = mul i32 %i.ibx, -10000
  %i.iby = add i32 %.neg95.i562.i, %i.ibu         ; 5 uses
  %i.ibz = zext nneg i32 %i.ibx to i64
  %i.ica = mul nuw nsw i64 %i.ibz, 167773
  %i.icb = lshr i64 %i.ica, 24
  %i.icc = trunc nuw nsw i64 %i.icb to i32        ; 3 uses
  %i.icd = mul nuw nsw i32 %i.icc, 41
  %i.ice = lshr i32 %i.icd, 12                    ; 4 uses
  %.neg96.i563.i = mul nsw i32 %i.ice, -100
  %i.icf = add nsw i32 %.neg96.i563.i, %i.icc     ; 3 uses
  %.neg97.i564.i = mul nsw i32 %i.icc, -100
  %i.icg = add nsw i32 %.neg97.i564.i, %i.ibx     ; 3 uses
  %i.ich = trunc nuw nsw i32 %i.ice to i8
  %i.ici = add nuw nsw i8 %i.ich, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hki, i8 48, i64 24, i1 false)
  store i8 %i.ici, ptr %i.ibs, align 1, !tbaa !81
  %i.icj = icmp ne i32 %i.ice, 0
  %i.ick = zext i1 %i.icj to i64
  %i.icl = getelementptr inbounds nuw i8, ptr %i.ibs, i64 %i.ick ; 2 uses
  %i.icm = icmp ult i32 %i.icf, 10
  %i.icn = icmp eq i32 %i.ice, 0
  %i.ico = and i1 %i.icn, %i.icm                  ; 2 uses
  %i.icp = shl nsw i32 %i.icf, 1
  %i.icq = zext i32 %i.icp to i64
  %i.icr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icq
  %.neg98.i565.i = sext i1 %i.ico to i64
  %i.ics = zext i1 %i.ico to i64
  %i.ict = getelementptr inbounds nuw i8, ptr %i.icr, i64 %i.ics
  %i.icu = load i16, ptr %i.ict, align 1
  store i16 %i.icu, ptr %i.icl, align 1
  %i.icv = getelementptr inbounds i8, ptr %i.icl, i64 %.neg98.i565.i ; 10 uses
  %i.icw = getelementptr inbounds nuw i8, ptr %i.icv, i64 2
  %i.icx = shl nsw i32 %i.icg, 1
  %i.icy = zext i32 %i.icx to i64
  %i.icz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icy
  %i.ida = load i16, ptr %i.icz, align 2
  store i16 %i.ida, ptr %i.icw, align 1
  %.not.i566.i = icmp eq i32 %i.ibw, 0
  br i1 %.not.i566.i, label %bb.zz, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.idb = mul i32 %i.iby, 5243
  %i.idc = lshr i32 %i.idb, 19                    ; 2 uses
  %.neg103.i567.i = mul i32 %i.idc, 2147483548
  %i.idd = add i32 %.neg103.i567.i, %i.iby
  %i.ide = and i64 %i.ibv, 4294967295
  %i.idf = mul nuw nsw i64 %i.ide, 109951163
  %i.idg = lshr i64 %i.idf, 40
  %i.idh = trunc nuw nsw i64 %i.idg to i32        ; 3 uses
  %.neg104.i568.i = mul i32 %i.idh, -10000
  %i.idi = add i32 %.neg104.i568.i, %i.ibw        ; 3 uses
  %i.idj = mul nuw i32 %i.idh, 5243
  %i.idk = lshr i32 %i.idj, 19                    ; 3 uses
  %.neg105.i569.i = mul nsw i32 %i.idk, -100
  %i.idl = add nsw i32 %.neg105.i569.i, %i.idh    ; 2 uses
  %i.idm = getelementptr inbounds nuw i8, ptr %i.icv, i64 4
  %i.idn = shl nuw nsw i32 %i.idc, 1
  %i.ido = zext nneg i32 %i.idn to i64
  %i.idp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ido
  %i.idq = load i16, ptr %i.idp, align 2
  store i16 %i.idq, ptr %i.idm, align 1
  %i.idr = getelementptr inbounds nuw i8, ptr %i.icv, i64 6
  %i.ids = shl i32 %i.idd, 1
  %i.idt = zext i32 %i.ids to i64
  %i.idu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idt
  %i.idv = load i16, ptr %i.idu, align 2
  store i16 %i.idv, ptr %i.idr, align 1
  %i.idw = getelementptr inbounds nuw i8, ptr %i.icv, i64 8
  %i.idx = shl nuw nsw i32 %i.idk, 1
  %i.idy = zext nneg i32 %i.idx to i64
  %i.idz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idy
  %i.iea = load i16, ptr %i.idz, align 2
  store i16 %i.iea, ptr %i.idw, align 1
  %i.ieb = getelementptr inbounds nuw i8, ptr %i.icv, i64 10
  %i.iec = shl nsw i32 %i.idl, 1
  %i.ied = zext i32 %i.iec to i64
  %i.iee = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ied
  %i.ief = load i16, ptr %i.iee, align 2
  store i16 %i.ief, ptr %i.ieb, align 1
  %.not106.i570.i = icmp eq i32 %i.idi, 0
  br i1 %.not106.i570.i, label %bb.zy, label %bb.zx

bb.zx:                                            ; preds = %bb.zw
  %i.ieg = mul i32 %i.idi, 5243
  %i.ieh = lshr i32 %i.ieg, 19                    ; 3 uses
  %.neg108.i571.i = mul nsw i32 %i.ieh, -100
  %i.iei = add i32 %.neg108.i571.i, %i.idi        ; 2 uses
  %i.iej = getelementptr inbounds nuw i8, ptr %i.icv, i64 12
  %i.iek = shl nuw nsw i32 %i.ieh, 1
  %i.iel = zext nneg i32 %i.iek to i64
  %i.iem = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iel
  %i.ien = load i16, ptr %i.iem, align 2
  store i16 %i.ien, ptr %i.iej, align 1
  %i.ieo = getelementptr inbounds nuw i8, ptr %i.icv, i64 14
  %i.iep = shl i32 %i.iei, 1
  %i.ieq = zext i32 %i.iep to i64
  %i.ier = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ieq
  %i.ies = load i16, ptr %i.ier, align 2
  store i16 %i.ies, ptr %i.ieo, align 1
  br label %bb.zy

bb.zy:                                            ; preds = %bb.zw, %bb.zx
  %.sink4497.a = phi i32 [ %i.ieh, %bb.zx ], [ %i.idk, %bb.zw ]
  %.sink4493 = phi i32 [ %i.iei, %bb.zx ], [ %i.idl, %bb.zw ] ; 2 uses
  %.sink4484 = phi i64 [ 16, %bb.zx ], [ 12, %bb.zw ]
  %i.iet = zext nneg i32 %.sink4497.a to i64
  %i.ieu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iet
  %i.iev = load i8, ptr %i.ieu, align 1, !tbaa !81
  %i.iew = zext i8 %i.iev to i64
  %i.iex = zext i32 %.sink4493 to i64
  %i.iey = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iex
  %i.iez = load i8, ptr %i.iey, align 1, !tbaa !81
  %i.ifa = zext i8 %i.iez to i64
  %.not107.i577.i = icmp eq i32 %.sink4493, 0
  %i.ifb = add nuw nsw i64 %i.iew, 2
  %i.ifc = select i1 %.not107.i577.i, i64 %i.ifb, i64 %i.ifa
  %i.ifd = sub nsw i64 %.sink4484, %i.ifc
  br label %iter.check5276

bb.zz:                                            ; preds = %bb.zv
  %.not99.i578.i = icmp eq i32 %i.iby, 0
  br i1 %.not99.i578.i, label %bb.aab, label %bb.aaa

bb.aaa:                                           ; preds = %bb.zz
  %i.ife = mul i32 %i.iby, 5243
  %i.iff = lshr i32 %i.ife, 19                    ; 3 uses
  %.neg101.i579.i = mul nsw i32 %i.iff, -100
  %i.ifg = add i32 %.neg101.i579.i, %i.iby        ; 3 uses
  %i.ifh = getelementptr inbounds nuw i8, ptr %i.icv, i64 4
  %i.ifi = shl nuw nsw i32 %i.iff, 1
  %i.ifj = zext nneg i32 %i.ifi to i64
  %i.ifk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ifj
  %i.ifl = load i16, ptr %i.ifk, align 2
  store i16 %i.ifl, ptr %i.ifh, align 1
  %i.ifm = getelementptr inbounds nuw i8, ptr %i.icv, i64 6
  %i.ifn = shl i32 %i.ifg, 1
  %i.ifo = zext i32 %i.ifn to i64
  %i.ifp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ifo
  %i.ifq = load i16, ptr %i.ifp, align 2
  store i16 %i.ifq, ptr %i.ifm, align 1
  %i.ifr = zext nneg i32 %i.iff to i64
  %i.ifs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifr
  %i.ift = load i8, ptr %i.ifs, align 1, !tbaa !81
  %i.ifu = zext i8 %i.ift to i64
  %i.ifv = zext i32 %i.ifg to i64
  %i.ifw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifv
  %i.ifx = load i8, ptr %i.ifw, align 1, !tbaa !81
  %i.ify = zext i8 %i.ifx to i64
  %.not102.i580.i = icmp eq i32 %i.ifg, 0
  %i.ifz = add nuw nsw i64 %i.ifu, 2
  %i.iga = select i1 %.not102.i580.i, i64 %i.ifz, i64 %i.ify
  %i.igb = sub nsw i64 8, %i.iga
  br label %iter.check5276

bb.aab:                                           ; preds = %bb.zz
  %i.igc = zext i32 %i.icf to i64
  %i.igd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.igc
  %i.ige = load i8, ptr %i.igd, align 1, !tbaa !81
  %i.igf = zext i8 %i.ige to i64
  %i.igg = zext i32 %i.icg to i64
  %i.igh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.igg
  %i.igi = load i8, ptr %i.igh, align 1, !tbaa !81
  %i.igj = zext i8 %i.igi to i64
  %.not100.i581.i = icmp eq i32 %i.icg, 0
  %i.igk = select i1 %.not100.i581.i, i64 %i.igf, i64 0
  %i.igl = add nuw nsw i64 %i.igk, %i.igj
  %i.igm = sub nsw i64 4, %i.igl
  br label %iter.check5276

iter.check5276:                                   ; preds = %bb.zy, %bb.aaa, %bb.aab
  %.sink4498.a = phi i64 [ %i.ifd, %bb.zy ], [ %i.igb, %bb.aaa ], [ %i.igm, %bb.aab ]
  %.pn.i574.i = and i64 %.sink4498.a, 4294967295
  %.0.i575.i = getelementptr inbounds nuw i8, ptr %i.icv, i64 %.pn.i574.i ; 2 uses
  %wide.trip.count2896 = zext nneg i32 %i.hwn to i64 ; 6 uses
  %min.iters.check5262 = icmp ult i32 %i.hwn, 4
  br i1 %min.iters.check5262, label %.lr.ph2219.preheader, label %vector.main.loop.iter.check5263

vector.main.loop.iter.check5263:                  ; preds = %iter.check5276
  %min.iters.check5264 = icmp ult i32 %i.hwn, 32
  br i1 %min.iters.check5264, label %vec.epilog.ph5280, label %vector.ph5265

vector.ph5265:                                    ; preds = %vector.main.loop.iter.check5263
  %n.mod.vf5266 = and i64 %wide.trip.count2896, 28
  %n.vec5267 = and i64 %wide.trip.count2896, 2147483616 ; 4 uses
  br label %vector.body5268

vector.body5268:                                  ; preds = %vector.body5268, %vector.ph5265
  %index5269 = phi i64 [ 0, %vector.ph5265 ], [ %index.next5272, %vector.body5268 ] ; 3 uses
  %i.ign = getelementptr inbounds nuw i8, ptr %i.hki, i64 %index5269 ; 2 uses
  %i.igo = getelementptr inbounds nuw i8, ptr %i.ign, i64 1
end_hunk_5
