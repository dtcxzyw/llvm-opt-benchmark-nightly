inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  br label %.thread626

bb.gq:                                            ; preds = %.thread602, %.thread601
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.aiq = load i32, ptr %i.aip, align 8, !tbaa !2236
  %i.air = icmp eq i32 %i.aiq, 4
  br i1 %i.air, label %bb.gr, label %.thread626

bb.gr:                                            ; preds = %bb.gq
  %i.ais = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.ait = load i32, ptr %i.ais, align 8, !tbaa !2268
  %i.aiu = and i32 %i.ait, 1
  %.not487 = icmp eq i32 %i.aiu, 0
  br i1 %.not487, label %.thread626, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i32 1, ptr %i.aip, align 8, !tbaa !2236
  %i.aiv = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.aiv, align 8, !tbaa !2226
  %i.aiw = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 4, ptr %i.aiw, align 4, !tbaa !2227
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aiy = load <4 x i16>, ptr %i.aix, align 4, !tbaa !2256
  %i.aiz = add <4 x i16> %i.aiy, <i16 -4, i16 -4, i16 2, i16 2>
  store <4 x i16> %i.aiz, ptr %i.aix, align 4, !tbaa !2256
  store i32 1, ptr %i.ad, align 8, !tbaa !2291
  %i.aja = getelementptr inbounds nuw i8, ptr %0, i64 768432
  %i.ajb = load <2 x i64>, ptr %i.kx, align 8, !tbaa !2231
  store <2 x i64> %i.ajb, ptr %i.aja, align 8, !tbaa !2292
  store i64 ptrtoint (ptr @_ZN6LibRaw21pentax_4shot_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread626

bb.gt:                                            ; preds = %.thread602
  %i.ajc = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ajd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ajc, ptr noundef nonnull dereferenceable(9) @.str.50) #22
  %.not495 = icmp eq i32 %i.ajd, 0
  br i1 %.not495, label %bb.gu, label %.thread626

bb.gu:                                            ; preds = %bb.gt
  %i.aje = getelementptr inbounds nuw i8, ptr %0, i64 153268
  store <4 x float> <float 2.510040e+00, float 1.000000e+00, float f0x3FA6F896, float 1.000000e+00>, ptr %i.aje, align 4, !tbaa !2237
  br label %.thread626

bb.gv:                                            ; preds = %.thread602
  br i1 %i.xu, label %bb.gw, label %.thread626

bb.gw:                                            ; preds = %bb.gv
  %i.ajf = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ajg = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ajf, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #22
  %.not497 = icmp eq i32 %i.ajg, 0
  br i1 %.not497, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ajh = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ajf, ptr noundef nonnull dereferenceable(5) @.str.52, i64 noundef 4) #22
  %.not498 = icmp eq i32 %i.ajh, 0
  br i1 %.not498, label %bb.gy, label %.thread626

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.aji = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.ajj = load i16, ptr %i.aji, align 2, !tbaa !2220
  %i.ajk = lshr i16 %i.ajj, 1
  store i16 %i.ajk, ptr %i.aji, align 2, !tbaa !2220
  store i64 ptrtoint (ptr @_ZN6LibRaw30unpacked_load_raw_fuji_f700s20Ev to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread626

.thread626:                                       ; preds = %bb.gq, %bb.gr, %bb.gs, %bb.gn, %bb.go, %bb.gp, %.thread610, %bb.fr, %bb.fu, %bb.fv, %bb.ft, %bb.fq, %bb.fs, %bb.fo, %bb.fn, %bb.fw, %bb.fz, %bb.ga, %bb.fx, %bb.fy, %.thread601, %bb.gt, %bb.gu, %bb.gy, %bb.gx, %bb.gv
  %i.ajl = phi i1 [ false, %.thread601 ], [ false, %bb.gt ], [ false, %bb.gu ], [ true, %bb.gn ], [ false, %bb.gy ], [ false, %bb.gx ], [ false, %bb.gv ], [ true, %bb.fy ], [ true, %bb.fx ], [ true, %bb.ga ], [ true, %bb.fz ], [ true, %bb.fw ], [ false, %bb.fn ], [ false, %bb.fo ], [ false, %bb.fs ], [ false, %bb.fq ], [ false, %bb.ft ], [ false, %bb.fv ], [ false, %bb.fu ], [ false, %bb.fr ], [ true, %.thread610 ], [ true, %bb.go ], [ true, %bb.gp ], [ false, %bb.gs ], [ false, %bb.gr ], [ false, %bb.gq ] ; 3 uses
  %i.ajm = phi i1 [ false, %.thread601 ], [ false, %bb.gt ], [ false, %bb.gu ], [ false, %bb.gn ], [ false, %bb.gy ], [ false, %bb.gx ], [ false, %bb.gv ], [ false, %bb.fy ], [ false, %bb.fx ], [ false, %bb.ga ], [ false, %bb.fz ], [ false, %bb.fw ], [ false, %bb.fn ], [ false, %bb.fo ], [ false, %bb.fs ], [ false, %bb.fq ], [ false, %bb.ft ], [ false, %bb.fv ], [ false, %bb.fu ], [ false, %bb.fr ], [ false, %.thread610 ], [ false, %bb.go ], [ false, %bb.gp ], [ true, %bb.gs ], [ true, %bb.gr ], [ true, %bb.gq ] ; 2 uses
  %.unpack500 = load i64, ptr %i.kx, align 8, !tbaa !2231 ; 3 uses
  %.unpack502 = load i64, ptr %.elt409, align 8, !tbaa !2231 ; 2 uses
  %i.ajn = icmp eq i64 %.unpack500, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.ajo = icmp eq i64 %.unpack502, 0             ; 2 uses
  %i.ajp = and i1 %i.ajn, %i.ajo
  br i1 %i.ajp, label %bb.gz, label %.loopexit692

bb.gz:                                            ; preds = %.thread626
  %i.ajq = icmp eq i32 %i.xt, 43
  br i1 %i.ajq, label %bb.ha, label %bb.hf

bb.ha:                                            ; preds = %bb.gz
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !2228
  %.not503 = icmp eq i32 %i.ajs, 0
  br i1 %.not503, label %bb.hb, label %bb.hf

bb.hb:                                            ; preds = %bb.ha
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.aju = tail call i32 @strncasecmp(ptr noundef nonnull %i.ajt, ptr noundef nonnull @.str.53, i64 noundef 4) #22
  %.not504 = icmp eq i32 %i.aju, 0
  br i1 %.not504, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ajv = tail call i32 @strcasecmp(ptr noundef nonnull %i.ajt, ptr noundef nonnull @.str.54) #22
  %.not505 = icmp eq i32 %i.ajv, 0
  br i1 %.not505, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !2272
  %i.ajy = shl nsw i64 %i.ajx, 1
  %i.ajz = load i16, ptr %i.vp, align 8, !tbaa !2221
  %i.aka = zext i16 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.akc = load i16, ptr %i.akb, align 2, !tbaa !2220
  %i.akd = zext i16 %i.akc to i64
  %i.ake = mul nuw nsw i64 %i.aka, 3
  %i.akf = mul nuw nsw i64 %i.ake, %i.akd
  %i.akg = and i64 %i.akf, 4294967295
  %i.akh = icmp eq i64 %i.ajy, %i.akg
  br i1 %i.akh, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  store i32 80, ptr %i.ajr, align 4, !tbaa !2228
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd, %bb.hc, %bb.ha, %bb.gz
  br i1 %i.ajl, label %bb.hg, label %.thread630

bb.hg:                                            ; preds = %bb.hf
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.akj = load i32, ptr %i.aki, align 8, !tbaa !2232
  %i.akk = icmp ugt i32 %i.akj, 4095
  br i1 %i.akk, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i32 4095, ptr %i.aki, align 8, !tbaa !2232
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.akm = load i32, ptr %i.akl, align 8, !tbaa !2233 ; 2 uses
  %i.akn = icmp ugt i32 %i.akm, 256
  %.phi.trans.insert880 = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %.pre881 = load i32, ptr %.phi.trans.insert880, align 8, !tbaa !2270 ; 2 uses
  %i.ako = icmp ugt i32 %.pre881, 256
  %or.cond1001 = select i1 %i.akn, i1 true, i1 %i.ako
  br i1 %or.cond1001, label %.preheader691, label %.thread630

.preheader691:                                    ; preds = %bb.hi
  %i.akp = lshr i32 %i.akm, 2
  store i32 %i.akp, ptr %i.akl, align 8, !tbaa !2233
  %i.akq = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !2270
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.aku = load <2 x i32>, ptr %i.akt, align 8, !tbaa !2270
  %i.akv = insertelement <4 x i32> poison, i32 %.pre881, i64 0
  %i.akw = insertelement <4 x i32> %i.akv, i32 %i.aks, i64 1
  %i.akx = shufflevector <2 x i32> %i.aku, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aky = shufflevector <4 x i32> %i.akw, <4 x i32> %i.akx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.akz = lshr <4 x i32> %i.aky, splat (i32 2)
  store <4 x i32> %i.akz, ptr %i.akq, align 8, !tbaa !2270
  %i.ala = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.alc = load i32, ptr %i.ala, align 8, !tbaa !2270
  %i.ald = load i32, ptr %i.alb, align 4, !tbaa !2270
  %i.ale = mul i32 %i.ald, %i.alc
  %.not759 = icmp eq i32 %i.ale, 0
  br i1 %.not759, label %.thread630, label %.lr.ph743

.lr.ph743:                                        ; preds = %.preheader691, %.lr.ph743
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %.lr.ph743 ], [ 0, %.preheader691 ] ; 2 uses
  %i.alf = add nuw nsw i64 %indvars.iv824, 6
  %i.alg = and i64 %i.alf, 4294967295
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.akq, i64 %i.alg ; 2 uses
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !2270
  %i.alj = lshr i32 %i.ali, 2
  store i32 %i.alj, ptr %i.alh, align 4, !tbaa !2270
  %indvars.iv.next825 = add nuw nsw i64 %indvars.iv824, 1 ; 2 uses
  %i.alk = load i32, ptr %i.ala, align 8, !tbaa !2270
  %i.all = load i32, ptr %i.alb, align 4, !tbaa !2270
  %i.alm = mul i32 %i.all, %i.alk
  %i.aln = zext i32 %i.alm to i64
  %i.alo = icmp samesign ult i64 %indvars.iv.next825, %i.aln
  br i1 %i.alo, label %.lr.ph743, label %.thread630, !llvm.loop !2293

.loopexit692:                                     ; preds = %.thread626
  %i.alp = icmp eq i64 %.unpack500, ptrtoint (ptr @_ZN6LibRaw18nikon_yuv_load_rawEv to i64)
  %i.alq = and i1 %i.alp, %i.ajo
  br i1 %i.alq, label %vector.ph983, label %.thread630

vector.ph983:                                     ; preds = %.loopexit692
  store i64 ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.alt, align 8, !tbaa !2226
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 381832
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16420) %i.als, i8 0, i64 16420, i1 false)
  store i32 3, ptr %i.alu, align 8, !tbaa !2294
  %i.alv = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 3, ptr %i.alv, align 4, !tbaa !2227
  br label %vector.body984

vector.body984:                                   ; preds = %vector.body984, %vector.ph983
  %index985 = phi i64 [ 0, %vector.ph983 ], [ %index.next987, %vector.body984 ] ; 2 uses
  %vec.ind986 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph983 ], [ %vec.ind.next988, %vector.body984 ] ; 2 uses
  %i.alw = uitofp nneg <16 x i32> %vec.ind986 to <16 x double> ; 2 uses
  %i.alx = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.alw, splat (double f0x3F35555555555555) ; 3 uses
  %i.aly = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.alx, %i.alx ; 2 uses
  %i.alz = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.aly, splat (double f0x3F667BCEF737735E)
  %i.ama = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.aly, splat (double f0xBF6B9BDD7EBBB5E0)
  %2 = fadd reassoc nnan nsz arcp contract afn <16 x double> %i.ama, splat (double f0xBF518086BF1A92FA)
  %i.amb = fmul reassoc nsz arcp contract afn <16 x double> %2, %i.alx
  %i.amc = fadd reassoc nnan nsz arcp contract afn <16 x double> %i.alz, splat (double f0x3EF3C65EA647FFF0)
  %i.amd = fadd reassoc nsz arcp contract afn <16 x double> %i.amc, %i.amb
  %i.ame = fmul reassoc nsz arcp contract afn <16 x double> %i.amd, %i.alw
  %i.amf = tail call reassoc nsz arcp contract afn <16 x double> @llvm.exp.v16f64(<16 x double> %i.ame)
  %i.amg = fsub reassoc nsz arcp contract afn <16 x double> splat (double 1.000000e+00), %i.amf ; 2 uses
  %i.amh = fcmp reassoc nsz arcp contract afn olt <16 x double> %i.amg, zeroinitializer
  %i.ami = select nsz <16 x i1> %i.amh, <16 x double> zeroinitializer, <16 x double> %i.amg
  %i.amj = fmul reassoc nsz arcp contract afn <16 x double> %i.ami, splat (double 1.638300e+04)
  %i.amk = fptoui <16 x double> %i.amj to <16 x i16>
  %i.aml = getelementptr inbounds nuw [2 x i8], ptr %i.alr, i64 %index985
  store <16 x i16> %i.amk, ptr %i.aml, align 8, !tbaa !2256
  %index.next987 = add nuw i64 %index985, 16      ; 2 uses
  %vec.ind.next988 = add <16 x i32> %vec.ind986, splat (i32 16)
  %i.amm = icmp eq i64 %index.next987, 3072
  br i1 %i.amm, label %scalar.ph, label %vector.body984, !llvm.loop !2295

scalar.ph:                                        ; preds = %vector.body984
  %i.amn = getelementptr inbounds nuw i8, ptr %0, i64 11744
  store i16 16287, ptr %i.amn, align 8, !tbaa !2256
  %i.amo = getelementptr inbounds nuw i8, ptr %0, i64 153380
  store float 1.000000e+00, ptr %i.amo, align 4, !tbaa !2237
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 153384
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 153400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.amq, align 8, !tbaa !2237
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 153404
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 153420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.amr, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ams, align 4, !tbaa !2237
  br label %.thread630

.thread630:                                       ; preds = %.lr.ph743, %bb.hi, %.preheader691, %scalar.ph, %bb.hf, %.loopexit692
  %i.amt = phi i1 [ %i.ajl, %scalar.ph ], [ false, %bb.hf ], [ true, %bb.hi ], [ %i.ajl, %.loopexit692 ], [ true, %.preheader691 ], [ true, %.lr.ph743 ]
  %.unpack515 = phi i64 [ 0, %scalar.ph ], [ 0, %bb.hf ], [ 0, %bb.hi ], [ %.unpack502, %.loopexit692 ], [ 0, %.preheader691 ], [ 0, %.lr.ph743 ] ; 2 uses
  %.unpack513 = phi i64 [ ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64), %scalar.ph ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.hf ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.hi ], [ %.unpack500, %.loopexit692 ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %.preheader691 ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %.lr.ph743 ] ; 7 uses
  %i.amu = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw14nikon_load_rawEv to i64)
  %i.amv = icmp eq i64 %.unpack515, 0             ; 4 uses
  %i.amw = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.amx = or i1 %i.amu, %i.amw
  %i.amy = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw28nikon_load_padded_packed_rawEv to i64)
  %or.cond581667 = or i1 %i.amy, %i.amx
  %i.amz = icmp eq i32 %i.xt, 43                  ; 2 uses
  %i.ana = and i1 %i.amz, %or.cond581667
  %or.cond661 = and i1 %i.amv, %i.ana
  br i1 %or.cond661, label %bb.hj, label %.loopexit688

bb.hj:                                            ; preds = %.thread630
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.anc = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.anb, ptr noundef nonnull dereferenceable(8) @.str.55, i64 noundef 7) #22
  %.not516 = icmp eq i32 %i.anc, 0
  br i1 %.not516, label %.loopexit688, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 381836
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !2229
  %i.anf = icmp eq i32 %i.ane, 12
  br i1 %i.anf, label %.preheader687.a, label %.loopexit688

.preheader687.a:                                  ; preds = %bb.hk
  %i.ang = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4095, ptr %i.ang, align 8, !tbaa !2232
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.ani = load i32, ptr %i.anh, align 8, !tbaa !2233
  %i.anj = lshr i32 %i.ani, 2
  store i32 %i.anj, ptr %i.anh, align 8, !tbaa !2233
  %i.ank = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 3 uses
  %i.anl = load <4 x i32>, ptr %i.ank, align 8, !tbaa !2270
  %i.anm = lshr <4 x i32> %i.anl, splat (i32 2)
  store <4 x i32> %i.anm, ptr %i.ank, align 8, !tbaa !2270
  %i.ann = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.anp = load i32, ptr %i.ann, align 8, !tbaa !2270
  %i.anq = load i32, ptr %i.ano, align 4, !tbaa !2270
  %i.anr = mul i32 %i.anq, %i.anp
  %.not760 = icmp eq i32 %i.anr, 0
  br i1 %.not760, label %.loopexit688, label %.lr.ph749

.lr.ph749:                                        ; preds = %.preheader687.a, %.lr.ph749
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %.lr.ph749 ], [ 0, %.preheader687.a ] ; 2 uses
  %i.ans = add nuw nsw i64 %indvars.iv843, 6
  %i.ant = and i64 %i.ans, 4294967295
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %i.ant ; 2 uses
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !2270
  %i.anw = lshr i32 %i.anv, 2
  store i32 %i.anw, ptr %i.anu, align 4, !tbaa !2270
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %i.anx = load i32, ptr %i.ann, align 8, !tbaa !2270
  %i.any = load i32, ptr %i.ano, align 4, !tbaa !2270
  %i.anz = mul i32 %i.any, %i.anx
  %i.aoa = zext i32 %i.anz to i64
  %i.aob = icmp samesign ult i64 %indvars.iv.next844, %i.aoa
  br i1 %i.aob, label %.lr.ph749, label %.loopexit688, !llvm.loop !2296

.loopexit688:                                     ; preds = %.lr.ph749, %.preheader687.a, %.thread630, %bb.hk, %bb.hj
  %i.aoc = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64)
  %i.aod = and i1 %i.aoc, %i.amv
  br i1 %i.aod, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %.loopexit688
  %i.aoe = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 9, ptr %i.aoe, align 8, !tbaa !2297
  br label %bb.hv

bb.hm:                                            ; preds = %.loopexit688
  switch i32 %i.xt, label %.thread632 [
    i32 8, label %bb.hn
    i32 43, label %bb.hp
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.aof = getelementptr inbounds nuw i8, ptr %0, i64 1972
  %i.aog = load i32, ptr %i.aof, align 4, !tbaa !2270
  %i.aoh = icmp ugt i32 %i.aog, 7
  br i1 %i.aoh, label %bb.ho, label %.thread632

bb.ho:                                            ; preds = %bb.hn
  %i.aoi = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.aoj = load i32, ptr %i.aoi, align 8, !tbaa !2270
  %.not520 = icmp eq i32 %i.aoj, 0
  br i1 %.not520, label %.thread632, label %.thread634

.thread634:                                       ; preds = %bb.ho
  %i.aok = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 3, ptr %i.aok, align 8, !tbaa !2297
  br label %bb.ia

bb.hp:                                            ; preds = %bb.hm
  %i.aol = getelementptr inbounds nuw i8, ptr %0, i64 2196
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !2298
  %i.aon = icmp eq i32 %i.aom, 1
  br i1 %i.aon, label %.thread633, label %.thread632

.thread633:                                       ; preds = %bb.hp
  %i.aoo = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 5, ptr %i.aoo, align 8, !tbaa !2297
  br label %bb.hw

.thread632:                                       ; preds = %bb.hm, %bb.hn, %bb.ho, %bb.hp
  br i1 %i.ajm, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %.thread632
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 4129
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !2299
  %i.aor = and i8 %i.aoq, 1
  %.not521 = icmp eq i8 %i.aor, 0
  br i1 %.not521, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 17, ptr %i.aos, align 8, !tbaa !2297
  br label %bb.hv

bb.hs:                                            ; preds = %bb.hq, %.thread632
  %i.aot = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw19sony_ycbcr_load_rawEv to i64)
  %i.aou = and i1 %i.aot, %i.amt
  %or.cond663 = and i1 %i.aou, %i.amv
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 192600 ; 2 uses
  br i1 %or.cond663, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 33, ptr %i.aov, align 8, !tbaa !2297
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  store i32 0, ptr %i.aov, align 8, !tbaa !2297
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hr, %bb.hu, %bb.ht, %bb.hl
  br i1 %i.amz, label %bb.hw, label %bb.ia

bb.hw:                                            ; preds = %.thread633, %bb.hv
  %i.aow = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !2270
  %.not525 = icmp eq i32 %i.aox, 0
  br i1 %.not525, label %bb.hx, label %bb.ia

bb.hx:                                            ; preds = %bb.hw
  %i.aoy = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.aoz = load i32, ptr %i.aoy, align 8, !tbaa !2232 ; 2 uses
  %i.apa = icmp ugt i32 %i.aoz, 1024
  br i1 %i.apa, label %bb.hy, label %bb.ia

bb.hy:                                            ; preds = %bb.hx
  %i.apb = icmp ne i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64)
  %i.apc = icmp ne i64 %.unpack515, 0
  %i.apd = or i1 %i.apb, %i.apc
  br i1 %i.apd, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.ape = uitofp reassoc nsz arcp contract afn i32 %i.aoz to float
  %i.apf = fmul reassoc nnan nsz arcp contract afn float %i.ape, f0x3F6F4098
  %i.apg = fptosi float %i.apf to i64
  %i.aph = trunc i64 %i.apg to i32
  %i.api = insertelement <4 x i32> poison, i32 %i.aph, i64 0
  %i.apj = shufflevector <4 x i32> %i.api, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.apj, ptr %i.aow, align 4, !tbaa !2270
  br label %bb.ia

bb.ia:                                            ; preds = %.thread634, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv
  br i1 %i.ajm, label %bb.ib, label %.loopexit

end_hunk_0
