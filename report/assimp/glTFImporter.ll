Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFImporter?download=true
inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6Assimp12glTFImporter12ImportMeshesERN4glTF5AssetE:bb.a
  %i.aob = phi ptr [ %i.aor, %.new2042 ], [ %.unr2046, %.prol.loopexit2041 ] ; 17 uses
  store i32 0, ptr %i.aob, align 8
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 8
  store ptr null, ptr %i.aoc, align 8
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aob, i64 16
  store i32 0, ptr %i.aod, align 8
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aob, i64 24
  store ptr null, ptr %i.aoe, align 8
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aob, i64 32
  store i32 0, ptr %i.aof, align 8
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aob, i64 40
  store ptr null, ptr %i.aog, align 8
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aob, i64 48
  store i32 0, ptr %i.aoh, align 8
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aob, i64 56
  store ptr null, ptr %i.aoi, align 8
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aob, i64 64
  store i32 0, ptr %i.aoj, align 8
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aob, i64 72
  store ptr null, ptr %i.aok, align 8
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aob, i64 80
  store i32 0, ptr %i.aol, align 8
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aob, i64 88
  store ptr null, ptr %i.aom, align 8
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aob, i64 96
  store i32 0, ptr %i.aon, align 8
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aob, i64 104
  store ptr null, ptr %i.aoo, align 8
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aob, i64 112
  store i32 0, ptr %i.aop, align 8
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aob, i64 120
  store ptr null, ptr %i.aoq, align 8
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aob, i64 128 ; 2 uses
  %i.aos = icmp eq ptr %i.aor, %i.anu
  br i1 %i.aos, label %.lr.ph900.preheader, label %.new2042

.lr.ph900.preheader:                              ; preds = %.new2042, %.prol.loopexit2041
  br label %.lr.ph900

bb.eg:                                            ; preds = %.loopexit579, %.loopexit577, %bb.ew, %.loopexit573, %bb.fk, %bb.ff, %bb.fa, %bb.ez, %bb.ey, %bb.er, %bb.em, %bb.el, %bb.ek, %bb.ed
  %i.aot = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph900:                                        ; preds = %.lr.ph900.preheader, %bb.eh
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %bb.eh ], [ 0, %.lr.ph900.preheader ] ; 3 uses
  %i.aou = getelementptr inbounds nuw [16 x i8], ptr %i.ans, i64 %indvars.iv1172 ; 2 uses
  store i32 1, ptr %i.aou, align 8
  %i.aov = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #32
          to label %bb.eh unwind label %bb.ei     ; 2 uses

bb.eh:                                            ; preds = %.lr.ph900
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aou, i64 8
  store ptr %i.aov, ptr %i.aow, align 8
  %i.aox = trunc nuw i64 %indvars.iv1172 to i32
  store i32 %i.aox, ptr %i.aov, align 4
  %indvars.iv.next1173 = add nuw nsw i64 %indvars.iv1172, 1 ; 2 uses
  %exitcond1176.not = icmp eq i64 %indvars.iv.next1173, %i.ano
  br i1 %exitcond1176.not, label %.loopexit569, label %.lr.ph900, !llvm.loop !64

bb.ei:                                            ; preds = %.lr.ph900
  %i.aoy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ej:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit362.thread
  %i.aoz = lshr i32 %i.anm, 1                     ; 4 uses
  %i.apa = and i32 %i.anm, -2                     ; 2 uses
  %.not288 = icmp eq i32 %i.apa, %i.anm
  br i1 %.not288, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.apb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.el unwind label %bb.eg

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.apb, ptr noundef nonnull @.str.12)
          to label %bb.em unwind label %bb.eg

bb.em:                                            ; preds = %bb.el, %bb.ej
  %.0228 = phi i32 [ %i.anm, %bb.ej ], [ %i.apa, %bb.el ] ; 2 uses
  %i.apc = zext nneg i32 %i.aoz to i64            ; 5 uses
  %i.apd = shl nuw nsw i64 %i.apc, 4
  %i.ape = or disjoint i64 %i.apd, 8
  %i.apf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ape) #32
          to label %bb.en unwind label %bb.eg     ; 2 uses

bb.en:                                            ; preds = %bb.em
  store i64 %i.apc, ptr %i.apf, align 16
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 8 ; 6 uses
  %i.aph = icmp eq i32 %i.aoz, 0
  br i1 %i.aph, label %.loopexit572, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.api = getelementptr inbounds nuw [16 x i8], ptr %i.apg, i64 %i.apc
  %i.apj = add nuw nsw i64 %i.apc, 1152921504606846975
  %i.apk = and i64 %i.apj, 1152921504606846975
  %xtraiter2036 = and i64 %i.apc, 7               ; 2 uses
  %lcmp.mod2037.not = icmp eq i64 %xtraiter2036, 0
  br i1 %lcmp.mod2037.not, label %.prol.loopexit2034, label %.prol.preheader2033

.prol.preheader2033:                              ; preds = %bb.eo, %.prol.preheader2033
  %i.apl = phi ptr [ %i.apn, %.prol.preheader2033 ], [ %i.apg, %bb.eo ] ; 3 uses
  %prol.iter2038 = phi i64 [ %prol.iter2038.next, %.prol.preheader2033 ], [ 0, %bb.eo ]
  store i32 0, ptr %i.apl, align 8
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 8
  store ptr null, ptr %i.apm, align 8
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apl, i64 16 ; 2 uses
  %prol.iter2038.next = add i64 %prol.iter2038, 1 ; 2 uses
  %prol.iter2038.cmp.not = icmp eq i64 %prol.iter2038.next, %xtraiter2036
  br i1 %prol.iter2038.cmp.not, label %.prol.loopexit2034, label %.prol.preheader2033, !llvm.loop !65

.prol.loopexit2034:                               ; preds = %.prol.preheader2033, %bb.eo
  %.unr2039 = phi ptr [ %i.apg, %bb.eo ], [ %i.apn, %.prol.preheader2033 ]
  %i.apo = icmp samesign ult i64 %i.apk, 7
  br i1 %i.apo, label %.loopexit572, label %.new2035

.new2035:                                         ; preds = %.prol.loopexit2034, %.new2035
  %i.app = phi ptr [ %i.aqf, %.new2035 ], [ %.unr2039, %.prol.loopexit2034 ] ; 17 uses
  store i32 0, ptr %i.app, align 8
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  store ptr null, ptr %i.apq, align 8
  %i.apr = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  store i32 0, ptr %i.apr, align 8
  %i.aps = getelementptr inbounds nuw i8, ptr %i.app, i64 24
  store ptr null, ptr %i.aps, align 8
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 32
  store i32 0, ptr %i.apt, align 8
  %i.apu = getelementptr inbounds nuw i8, ptr %i.app, i64 40
  store ptr null, ptr %i.apu, align 8
  %i.apv = getelementptr inbounds nuw i8, ptr %i.app, i64 48
  store i32 0, ptr %i.apv, align 8
  %i.apw = getelementptr inbounds nuw i8, ptr %i.app, i64 56
  store ptr null, ptr %i.apw, align 8
  %i.apx = getelementptr inbounds nuw i8, ptr %i.app, i64 64
  store i32 0, ptr %i.apx, align 8
  %i.apy = getelementptr inbounds nuw i8, ptr %i.app, i64 72
  store ptr null, ptr %i.apy, align 8
  %i.apz = getelementptr inbounds nuw i8, ptr %i.app, i64 80
  store i32 0, ptr %i.apz, align 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.app, i64 88
  store ptr null, ptr %i.aqa, align 8
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.app, i64 96
  store i32 0, ptr %i.aqb, align 8
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.app, i64 104
  store ptr null, ptr %i.aqc, align 8
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.app, i64 112
  store i32 0, ptr %i.aqd, align 8
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.app, i64 120
  store ptr null, ptr %i.aqe, align 8
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.app, i64 128 ; 2 uses
  %i.aqg = icmp eq ptr %i.aqf, %i.api
  br i1 %i.aqg, label %.loopexit572, label %.new2035

.loopexit572:                                     ; preds = %.prol.loopexit2034, %.new2035, %bb.en
  %.not930 = icmp eq i32 %.0228, 0
  br i1 %.not930, label %.loopexit569, label %.lr.ph897.preheader

.lr.ph897.preheader:                              ; preds = %.loopexit572
  %i.aqh = zext i32 %.0228 to i64
  br label %.lr.ph897

.lr.ph897:                                        ; preds = %.lr.ph897.preheader, %bb.ep
  %indvars.iv1169 = phi i64 [ 0, %.lr.ph897.preheader ], [ %indvars.iv.next1170, %bb.ep ] ; 4 uses
  %i.aqi = lshr exact i64 %indvars.iv1169, 1
  %i.aqj = getelementptr inbounds nuw [16 x i8], ptr %i.apg, i64 %i.aqi ; 2 uses
  store i32 2, ptr %i.aqj, align 8
  %i.aqk = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %bb.ep unwind label %bb.eq     ; 3 uses

bb.ep:                                            ; preds = %.lr.ph897
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8
  store ptr %i.aqk, ptr %i.aql, align 8
  %i.aqm = trunc nuw i64 %indvars.iv1169 to i32
  store i32 %i.aqm, ptr %i.aqk, align 4
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqk, i64 4
  %i.aqo = trunc i64 %indvars.iv1169 to i32
  %i.aqp = or disjoint i32 %i.aqo, 1
  store i32 %i.aqp, ptr %i.aqn, align 4
  %indvars.iv.next1170 = add nuw nsw i64 %indvars.iv1169, 2 ; 2 uses
  %i.aqq = icmp samesign ult i64 %indvars.iv.next1170, %i.aqh
  br i1 %i.aqq, label %.lr.ph897, label %.loopexit569, !llvm.loop !66

bb.eq:                                            ; preds = %.lr.ph897
  %i.aqr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.er:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit362.thread, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit362.thread
  %i.aqs = icmp eq i32 %i.ann, 3
  %.neg = sext i1 %i.aqs to i32
  %i.aqt = add i32 %i.anm, %.neg                  ; 4 uses
  %i.aqu = zext i32 %i.aqt to i64                 ; 5 uses
  %i.aqv = shl nuw nsw i64 %i.aqu, 4
  %i.aqw = or disjoint i64 %i.aqv, 8
  %i.aqx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aqw) #32
          to label %bb.es unwind label %bb.eg     ; 3 uses

bb.es:                                            ; preds = %bb.er
  store i64 %i.aqu, ptr %i.aqx, align 16
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8 ; 10 uses
  %i.aqz = icmp eq i32 %i.aqt, 0
  br i1 %i.aqz, label %.loopexit573, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ara = getelementptr inbounds nuw [16 x i8], ptr %i.aqy, i64 %i.aqu
  %i.arb = add nuw nsw i64 %i.aqu, 1152921504606846975
  %i.arc = and i64 %i.arb, 1152921504606846975
  %xtraiter2029 = and i64 %i.aqu, 7               ; 2 uses
  %lcmp.mod2030.not = icmp eq i64 %xtraiter2029, 0
  br i1 %lcmp.mod2030.not, label %.prol.loopexit2027, label %.prol.preheader2026

.prol.preheader2026:                              ; preds = %bb.et, %.prol.preheader2026
  %i.ard = phi ptr [ %i.arf, %.prol.preheader2026 ], [ %i.aqy, %bb.et ] ; 3 uses
  %prol.iter2031 = phi i64 [ %prol.iter2031.next, %.prol.preheader2026 ], [ 0, %bb.et ]
  store i32 0, ptr %i.ard, align 8
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  store ptr null, ptr %i.are, align 8
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ard, i64 16 ; 2 uses
  %prol.iter2031.next = add i64 %prol.iter2031, 1 ; 2 uses
  %prol.iter2031.cmp.not = icmp eq i64 %prol.iter2031.next, %xtraiter2029
  br i1 %prol.iter2031.cmp.not, label %.prol.loopexit2027, label %.prol.preheader2026, !llvm.loop !67

.prol.loopexit2027:                               ; preds = %.prol.preheader2026, %bb.et
  %.unr2032 = phi ptr [ %i.aqy, %bb.et ], [ %i.arf, %.prol.preheader2026 ]
  %i.arg = icmp samesign ult i64 %i.arc, 7
  br i1 %i.arg, label %.loopexit573, label %.new2028

.new2028:                                         ; preds = %.prol.loopexit2027, %.new2028
  %i.arh = phi ptr [ %i.arx, %.new2028 ], [ %.unr2032, %.prol.loopexit2027 ] ; 17 uses
  store i32 0, ptr %i.arh, align 8
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 8
  store ptr null, ptr %i.ari, align 8
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arh, i64 16
  store i32 0, ptr %i.arj, align 8
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arh, i64 24
  store ptr null, ptr %i.ark, align 8
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arh, i64 32
  store i32 0, ptr %i.arl, align 8
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arh, i64 40
  store ptr null, ptr %i.arm, align 8
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arh, i64 48
  store i32 0, ptr %i.arn, align 8
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arh, i64 56
  store ptr null, ptr %i.aro, align 8
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arh, i64 64
  store i32 0, ptr %i.arp, align 8
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arh, i64 72
  store ptr null, ptr %i.arq, align 8
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arh, i64 80
  store i32 0, ptr %i.arr, align 8
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arh, i64 88
  store ptr null, ptr %i.ars, align 8
  %i.art = getelementptr inbounds nuw i8, ptr %i.arh, i64 96
  store i32 0, ptr %i.art, align 8
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arh, i64 104
  store ptr null, ptr %i.aru, align 8
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arh, i64 112
  store i32 0, ptr %i.arv, align 8
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arh, i64 120
  store ptr null, ptr %i.arw, align 8
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arh, i64 128 ; 2 uses
  %i.ary = icmp eq ptr %i.arx, %i.ara
  br i1 %i.ary, label %.loopexit573, label %.new2028

.loopexit573:                                     ; preds = %.prol.loopexit2027, %.new2028, %bb.es
  store i32 2, ptr %i.aqy, align 8
  %i.arz = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit427 unwind label %bb.eg ; 3 uses

_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit427:     ; preds = %.loopexit573
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aqx, i64 16 ; 2 uses
  store ptr %i.arz, ptr %i.asa, align 16
  store i32 0, ptr %i.arz, align 4
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arz, i64 4
  store i32 1, ptr %i.asb, align 4
  %i.asc = icmp ugt i32 %i.anm, 2
  br i1 %i.asc, label %.lr.ph893.preheader, label %._crit_edge894

.lr.ph893.preheader:                              ; preds = %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit427
  %wide.trip.count1167 = zext i32 %i.anm to i64
  br label %.lr.ph893

._crit_edge894:                                   ; preds = %bb.eu, %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit427
  %i.asd = load i32, ptr %i.fr, align 8
  %i.ase = icmp eq i32 %i.asd, 2
  br i1 %i.ase, label %bb.ew, label %.loopexit569

.lr.ph893:                                        ; preds = %.lr.ph893.preheader, %bb.eu
  %indvars.iv1164 = phi i64 [ 2, %.lr.ph893.preheader ], [ %indvars.iv.next1165, %bb.eu ] ; 4 uses
  %9 = getelementptr [16 x i8], ptr %i.aqy, i64 %indvars.iv1164 ; 2 uses
  %10 = getelementptr i8, ptr %9, i64 -16
  %i.asf = getelementptr [16 x i8], ptr %i.aqy, i64 %indvars.iv1164
  %11 = getelementptr i8, ptr %i.asf, i64 -24
  %12 = load ptr, ptr %11, align 8
  %i.asg = getelementptr inbounds nuw i8, ptr %12, i64 4
  %13 = load i32, ptr %i.asg, align 4
  store i32 2, ptr %10, align 8
  %i.ash = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %bb.eu unwind label %bb.ev     ; 3 uses

bb.eu:                                            ; preds = %.lr.ph893
  %i.asi = getelementptr i8, ptr %9, i64 -8
  store ptr %i.ash, ptr %i.asi, align 8
  store i32 %13, ptr %i.ash, align 4
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ash, i64 4
  %i.ask = trunc nuw i64 %indvars.iv1164 to i32
  store i32 %i.ask, ptr %i.asj, align 4
  %indvars.iv.next1165 = add nuw nsw i64 %indvars.iv1164, 1 ; 2 uses
  %exitcond1168.not = icmp eq i64 %indvars.iv.next1165, %wide.trip.count1167
  br i1 %exitcond1168.not, label %._crit_edge894, label %.lr.ph893, !llvm.loop !68

bb.ev:                                            ; preds = %.lr.ph893
  %i.asl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ew:                                            ; preds = %._crit_edge894
  %i.asm = add i32 %i.anm, -1
  %i.asn = zext i32 %i.asm to i64
  %i.aso = getelementptr inbounds nuw [16 x i8], ptr %i.aqy, i64 %i.asn ; 2 uses
  %i.asp = add i32 %i.anm, -2
  %i.asq = zext i32 %i.asp to i64
  %i.asr = getelementptr inbounds nuw [16 x i8], ptr %i.aqy, i64 %i.asq
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 8
  %i.ast = load ptr, ptr %i.ass, align 8
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 4
  %i.asv = load i32, ptr %i.asu, align 4
  %i.asw = load ptr, ptr %i.asa, align 16
  %i.asx = load i32, ptr %i.asw, align 4
  store i32 2, ptr %i.aso, align 8
  %i.asy = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #32
          to label %_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit431 unwind label %bb.eg ; 3 uses

_ZN12_GLOBAL__N_17SetFaceER6aiFaceii.exit431:     ; preds = %bb.ew
  %i.asz = getelementptr inbounds nuw i8, ptr %i.aso, i64 8
  store ptr %i.asy, ptr %i.asz, align 8
  store i32 %i.asv, ptr %i.asy, align 4
  br label %.loopexit569.sink.split

bb.ex:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit362.thread
  %i.ata = udiv i32 %i.anm, 3                     ; 4 uses
  %i.atb = mul nuw i32 %i.ata, 3                  ; 2 uses
  %.not287 = icmp eq i32 %i.atb, %i.anm
  br i1 %.not287, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.atc = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ez unwind label %bb.eg

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.atc, ptr noundef nonnull @.str.13)
          to label %bb.fa unwind label %bb.eg

bb.fa:                                            ; preds = %bb.ez, %bb.ex
  %.1 = phi i32 [ %i.anm, %bb.ex ], [ %i.atb, %bb.ez ] ; 2 uses
  %i.atd = zext nneg i32 %i.ata to i64            ; 5 uses
  %i.ate = shl nuw nsw i64 %i.atd, 4
  %i.atf = or disjoint i64 %i.ate, 8
  %i.atg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.atf) #32
          to label %bb.fb unwind label %bb.eg     ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  store i64 %i.atd, ptr %i.atg, align 16
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 8 ; 6 uses
  %i.ati = icmp ult i32 %i.anm, 3
  br i1 %i.ati, label %.loopexit575, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.atj = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %i.atd
  %i.atk = add nuw nsw i64 %i.atd, 1152921504606846975
  %i.atl = and i64 %i.atk, 1152921504606846975
  %xtraiter2022 = and i64 %i.atd, 7               ; 2 uses
  %lcmp.mod2023.not = icmp eq i64 %xtraiter2022, 0
  br i1 %lcmp.mod2023.not, label %.prol.loopexit2020, label %.prol.preheader2019

.prol.preheader2019:                              ; preds = %bb.fc, %.prol.preheader2019
  %i.atm = phi ptr [ %i.ato, %.prol.preheader2019 ], [ %i.ath, %bb.fc ] ; 3 uses
  %prol.iter2024 = phi i64 [ %prol.iter2024.next, %.prol.preheader2019 ], [ 0, %bb.fc ]
  store i32 0, ptr %i.atm, align 8
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 8
  store ptr null, ptr %i.atn, align 8
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atm, i64 16 ; 2 uses
  %prol.iter2024.next = add i64 %prol.iter2024, 1 ; 2 uses
  %prol.iter2024.cmp.not = icmp eq i64 %prol.iter2024.next, %xtraiter2022
  br i1 %prol.iter2024.cmp.not, label %.prol.loopexit2020, label %.prol.preheader2019, !llvm.loop !69

.prol.loopexit2020:                               ; preds = %.prol.preheader2019, %bb.fc
  %.unr2025 = phi ptr [ %i.ath, %bb.fc ], [ %i.ato, %.prol.preheader2019 ]
  %i.atp = icmp samesign ult i64 %i.atl, 7
  br i1 %i.atp, label %.loopexit575, label %.new2021

.new2021:                                         ; preds = %.prol.loopexit2020, %.new2021
  %i.atq = phi ptr [ %i.aug, %.new2021 ], [ %.unr2025, %.prol.loopexit2020 ] ; 17 uses
  store i32 0, ptr %i.atq, align 8
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 8
  store ptr null, ptr %i.atr, align 8
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atq, i64 16
  store i32 0, ptr %i.ats, align 8
  %i.att = getelementptr inbounds nuw i8, ptr %i.atq, i64 24
  store ptr null, ptr %i.att, align 8
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atq, i64 32
  store i32 0, ptr %i.atu, align 8
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atq, i64 40
  store ptr null, ptr %i.atv, align 8
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atq, i64 48
  store i32 0, ptr %i.atw, align 8
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atq, i64 56
  store ptr null, ptr %i.atx, align 8
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atq, i64 64
  store i32 0, ptr %i.aty, align 8
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atq, i64 72
  store ptr null, ptr %i.atz, align 8
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atq, i64 80
  store i32 0, ptr %i.aua, align 8
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atq, i64 88
  store ptr null, ptr %i.aub, align 8
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atq, i64 96
  store i32 0, ptr %i.auc, align 8
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atq, i64 104
  store ptr null, ptr %i.aud, align 8
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atq, i64 112
  store i32 0, ptr %i.aue, align 8
  %i.auf = getelementptr inbounds nuw i8, ptr %i.atq, i64 120
  store ptr null, ptr %i.auf, align 8
  %i.aug = getelementptr inbounds nuw i8, ptr %i.atq, i64 128 ; 2 uses
  %i.auh = icmp eq ptr %i.aug, %i.atj
  br i1 %i.auh, label %.loopexit575, label %.new2021

.loopexit575:                                     ; preds = %.prol.loopexit2020, %.new2021, %bb.fb
  %.not929 = icmp eq i32 %.1, 0
  br i1 %.not929, label %.loopexit569, label %.lr.ph891

.lr.ph891:                                        ; preds = %.loopexit575, %bb.fd
  %.0224889 = phi i32 [ %i.aur, %bb.fd ], [ 0, %.loopexit575 ] ; 5 uses
  %i.aui = udiv i32 %.0224889, 3
  %i.auj = zext nneg i32 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [16 x i8], ptr %i.ath, i64 %i.auj ; 2 uses
  store i32 3, ptr %i.auk, align 8
  %i.aul = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #32
          to label %bb.fd unwind label %bb.fe     ; 4 uses

bb.fd:                                            ; preds = %.lr.ph891
  %i.aum = add i32 %.0224889, 2
  %i.aun = add nuw i32 %.0224889, 1
  %i.auo = getelementptr inbounds nuw i8, ptr %i.auk, i64 8
  store ptr %i.aul, ptr %i.auo, align 8
  store i32 %.0224889, ptr %i.aul, align 4
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aul, i64 4
  store i32 %i.aun, ptr %i.aup, align 4
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aul, i64 8
  store i32 %i.aum, ptr %i.auq, align 4
  %i.aur = add i32 %.0224889, 3                   ; 2 uses
  %i.aus = icmp ult i32 %i.aur, %.1
  br i1 %i.aus, label %.lr.ph891, label %.loopexit569, !llvm.loop !70

bb.fe:                                            ; preds = %.lr.ph891
  %i.aut = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ff:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit362.thread
  %i.auu = add i32 %i.anm, -2                     ; 4 uses
  %i.auv = zext i32 %i.auu to i64                 ; 5 uses
  %i.auw = shl nuw nsw i64 %i.auv, 4
  %i.aux = or disjoint i64 %i.auw, 8
  %i.auy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aux) #32
          to label %bb.fg unwind label %bb.eg     ; 3 uses

bb.fg:                                            ; preds = %bb.ff
  store i64 %i.auv, ptr %i.auy, align 16
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 8 ; 8 uses
  %i.ava = icmp eq i32 %i.auu, 0
  br i1 %i.ava, label %.loopexit577, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.avb = getelementptr inbounds nuw [16 x i8], ptr %i.auz, i64 %i.auv
  %i.avc = add nuw nsw i64 %i.auv, 1152921504606846975
  %i.avd = and i64 %i.avc, 1152921504606846975
  %xtraiter2015 = and i64 %i.auv, 7               ; 2 uses
  %lcmp.mod2016.not = icmp eq i64 %xtraiter2015, 0
  br i1 %lcmp.mod2016.not, label %.prol.loopexit2013, label %.prol.preheader2012

.prol.preheader2012:                              ; preds = %bb.fh, %.prol.preheader2012
  %i.ave = phi ptr [ %i.avg, %.prol.preheader2012 ], [ %i.auz, %bb.fh ] ; 3 uses
  %prol.iter2017 = phi i64 [ %prol.iter2017.next, %.prol.preheader2012 ], [ 0, %bb.fh ]
  store i32 0, ptr %i.ave, align 8
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 8
  store ptr null, ptr %i.avf, align 8
  %i.avg = getelementptr inbounds nuw i8, ptr %i.ave, i64 16 ; 2 uses
  %prol.iter2017.next = add i64 %prol.iter2017, 1 ; 2 uses
  %prol.iter2017.cmp.not = icmp eq i64 %prol.iter2017.next, %xtraiter2015
  br i1 %prol.iter2017.cmp.not, label %.prol.loopexit2013, label %.prol.preheader2012, !llvm.loop !71

.prol.loopexit2013:                               ; preds = %.prol.preheader2012, %bb.fh
  %.unr2018 = phi ptr [ %i.auz, %bb.fh ], [ %i.avg, %.prol.preheader2012 ]
  %i.avh = icmp samesign ult i64 %i.avd, 7
  br i1 %i.avh, label %.loopexit577, label %.new2014

.new2014:                                         ; preds = %.prol.loopexit2013, %.new2014
  %i.avi = phi ptr [ %i.avy, %.new2014 ], [ %.unr2018, %.prol.loopexit2013 ] ; 17 uses
  store i32 0, ptr %i.avi, align 8
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 8
  store ptr null, ptr %i.avj, align 8
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avi, i64 16
  store i32 0, ptr %i.avk, align 8
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avi, i64 24
end_hunk_0
