Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/open?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw15open_datastreamEP26LibRaw_abstract_datastream:bb.a
  br label %.thread626

bb.gq:                                            ; preds = %.thread602, %.thread601
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.ais = load i32, ptr %i.air, align 8, !tbaa !2236
  %i.ait = icmp eq i32 %i.ais, 4
  br i1 %i.ait, label %bb.gr, label %.thread626

bb.gr:                                            ; preds = %bb.gq
  %i.aiu = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.aiv = load i32, ptr %i.aiu, align 8, !tbaa !2268
  %i.aiw = and i32 %i.aiv, 1
  %.not487 = icmp eq i32 %i.aiw, 0
  br i1 %.not487, label %.thread626, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i32 1, ptr %i.air, align 8, !tbaa !2236
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.aix, align 8, !tbaa !2226
  %i.aiy = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 4, ptr %i.aiy, align 4, !tbaa !2227
  %i.aiz = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aja = load <4 x i16>, ptr %i.aiz, align 4, !tbaa !2256
  %i.ajb = add <4 x i16> %i.aja, <i16 -4, i16 -4, i16 2, i16 2>
  store <4 x i16> %i.ajb, ptr %i.aiz, align 4, !tbaa !2256
  store i32 1, ptr %i.ad, align 8, !tbaa !2291
  %i.ajc = getelementptr inbounds nuw i8, ptr %0, i64 768432
  %i.ajd = load <2 x i64>, ptr %i.kx, align 8, !tbaa !2231
  store <2 x i64> %i.ajd, ptr %i.ajc, align 8, !tbaa !2292
  store i64 ptrtoint (ptr @_ZN6LibRaw21pentax_4shot_load_rawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread626

bb.gt:                                            ; preds = %.thread602
  %i.aje = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ajf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aje, ptr noundef nonnull dereferenceable(9) @.str.50) #22
  %.not495 = icmp eq i32 %i.ajf, 0
  br i1 %.not495, label %bb.gu, label %.thread626

bb.gu:                                            ; preds = %bb.gt
  %i.ajg = getelementptr inbounds nuw i8, ptr %0, i64 153268
  store <4 x float> <float 2.510040e+00, float 1.000000e+00, float f0x3FA6F896, float 1.000000e+00>, ptr %i.ajg, align 4, !tbaa !2237
  br label %.thread626

bb.gv:                                            ; preds = %.thread602
  br i1 %i.xu, label %bb.gw, label %.thread626

bb.gw:                                            ; preds = %bb.gv
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.aji = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ajh, ptr noundef nonnull dereferenceable(7) @.str.51, i64 noundef 6) #22
  %.not497 = icmp eq i32 %i.aji, 0
  br i1 %.not497, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ajj = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ajh, ptr noundef nonnull dereferenceable(5) @.str.52, i64 noundef 4) #22
  %.not498 = icmp eq i32 %i.ajj, 0
  br i1 %.not498, label %bb.gy, label %.thread626

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.ajl = load i16, ptr %i.ajk, align 2, !tbaa !2220
  %i.ajm = lshr i16 %i.ajl, 1
  store i16 %i.ajm, ptr %i.ajk, align 2, !tbaa !2220
  store i64 ptrtoint (ptr @_ZN6LibRaw30unpacked_load_raw_fuji_f700s20Ev to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  br label %.thread626

.thread626:                                       ; preds = %bb.gq, %bb.gr, %bb.gs, %bb.gn, %bb.go, %bb.gp, %.thread610, %bb.fr, %bb.fu, %bb.fv, %bb.ft, %bb.fq, %bb.fs, %bb.fo, %bb.fn, %bb.fw, %bb.fz, %bb.ga, %bb.fx, %bb.fy, %.thread601, %bb.gt, %bb.gu, %bb.gy, %bb.gx, %bb.gv
  %i.ajn = phi i1 [ false, %.thread601 ], [ false, %bb.gt ], [ false, %bb.gu ], [ true, %bb.gn ], [ false, %bb.gy ], [ false, %bb.gx ], [ false, %bb.gv ], [ true, %bb.fy ], [ true, %bb.fx ], [ true, %bb.ga ], [ true, %bb.fz ], [ true, %bb.fw ], [ false, %bb.fn ], [ false, %bb.fo ], [ false, %bb.fs ], [ false, %bb.fq ], [ false, %bb.ft ], [ false, %bb.fv ], [ false, %bb.fu ], [ false, %bb.fr ], [ true, %.thread610 ], [ true, %bb.go ], [ true, %bb.gp ], [ false, %bb.gs ], [ false, %bb.gr ], [ false, %bb.gq ] ; 3 uses
  %i.ajo = phi i1 [ false, %.thread601 ], [ false, %bb.gt ], [ false, %bb.gu ], [ false, %bb.gn ], [ false, %bb.gy ], [ false, %bb.gx ], [ false, %bb.gv ], [ false, %bb.fy ], [ false, %bb.fx ], [ false, %bb.ga ], [ false, %bb.fz ], [ false, %bb.fw ], [ false, %bb.fn ], [ false, %bb.fo ], [ false, %bb.fs ], [ false, %bb.fq ], [ false, %bb.ft ], [ false, %bb.fv ], [ false, %bb.fu ], [ false, %bb.fr ], [ false, %.thread610 ], [ false, %bb.go ], [ false, %bb.gp ], [ true, %bb.gs ], [ true, %bb.gr ], [ true, %bb.gq ] ; 2 uses
  %.unpack500 = load i64, ptr %i.kx, align 8, !tbaa !2231 ; 3 uses
  %.unpack502 = load i64, ptr %.elt409, align 8, !tbaa !2231 ; 2 uses
  %i.ajp = icmp eq i64 %.unpack500, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.ajq = icmp eq i64 %.unpack502, 0             ; 2 uses
  %i.ajr = and i1 %i.ajp, %i.ajq
  br i1 %i.ajr, label %bb.gz, label %.loopexit692

bb.gz:                                            ; preds = %.thread626
  %i.ajs = icmp eq i32 %i.xt, 43
  br i1 %i.ajs, label %bb.ha, label %bb.hf

bb.ha:                                            ; preds = %bb.gz
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 381860 ; 2 uses
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !2228
  %.not503 = icmp eq i32 %i.aju, 0
  br i1 %.not503, label %bb.hb, label %bb.hf

bb.hb:                                            ; preds = %bb.ha
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ajw = tail call i32 @strncasecmp(ptr noundef nonnull %i.ajv, ptr noundef nonnull @.str.53, i64 noundef 4) #22
  %.not504 = icmp eq i32 %i.ajw, 0
  br i1 %.not504, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ajx = tail call i32 @strcasecmp(ptr noundef nonnull %i.ajv, ptr noundef nonnull @.str.54) #22
  %.not505 = icmp eq i32 %i.ajx, 0
  br i1 %.not505, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.ajz = load i64, ptr %i.ajy, align 8, !tbaa !2272
  %i.aka = shl nsw i64 %i.ajz, 1
  %i.akb = load i16, ptr %i.vp, align 8, !tbaa !2221
  %i.akc = zext i16 %i.akb to i64
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ake = load i16, ptr %i.akd, align 2, !tbaa !2220
  %i.akf = zext i16 %i.ake to i64
  %i.akg = mul nuw nsw i64 %i.akc, 3
  %i.akh = mul nuw nsw i64 %i.akg, %i.akf
  %i.aki = and i64 %i.akh, 4294967295
  %i.akj = icmp eq i64 %i.aka, %i.aki
  br i1 %i.akj, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  store i32 80, ptr %i.ajt, align 4, !tbaa !2228
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd, %bb.hc, %bb.ha, %bb.gz
  br i1 %i.ajn, label %bb.hg, label %.thread630

bb.hg:                                            ; preds = %bb.hf
  %i.akk = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.akl = load i32, ptr %i.akk, align 8, !tbaa !2232
  %i.akm = icmp ugt i32 %i.akl, 4095
  br i1 %i.akm, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i32 4095, ptr %i.akk, align 8, !tbaa !2232
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.ako = load i32, ptr %i.akn, align 8, !tbaa !2233 ; 2 uses
  %i.akp = icmp ugt i32 %i.ako, 256
  %.phi.trans.insert880 = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %.pre881 = load i32, ptr %.phi.trans.insert880, align 8, !tbaa !2270 ; 2 uses
  %i.akq = icmp ugt i32 %.pre881, 256
  %or.cond999 = select i1 %i.akp, i1 true, i1 %i.akq
  br i1 %or.cond999, label %.preheader691, label %.thread630

.preheader691:                                    ; preds = %bb.hi
  %i.akr = lshr i32 %i.ako, 2
  store i32 %i.akr, ptr %i.akn, align 8, !tbaa !2233
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !2270
  %i.akv = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.akw = load <2 x i32>, ptr %i.akv, align 8, !tbaa !2270
  %i.akx = insertelement <4 x i32> poison, i32 %.pre881, i64 0
  %i.aky = insertelement <4 x i32> %i.akx, i32 %i.aku, i64 1
  %i.akz = shufflevector <2 x i32> %i.akw, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ala = shufflevector <4 x i32> %i.aky, <4 x i32> %i.akz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.alb = lshr <4 x i32> %i.ala, splat (i32 2)
  store <4 x i32> %i.alb, ptr %i.aks, align 8, !tbaa !2270
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.ale = load i32, ptr %i.alc, align 8, !tbaa !2270
  %i.alf = load i32, ptr %i.ald, align 4, !tbaa !2270
  %i.alg = mul i32 %i.alf, %i.ale
  %.not759 = icmp eq i32 %i.alg, 0
  br i1 %.not759, label %.thread630, label %.lr.ph743

.lr.ph743:                                        ; preds = %.preheader691, %.lr.ph743
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %.lr.ph743 ], [ 0, %.preheader691 ] ; 2 uses
  %i.alh = add nuw nsw i64 %indvars.iv824, 6
  %i.ali = and i64 %i.alh, 4294967295
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.aks, i64 %i.ali ; 2 uses
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !2270
  %i.all = lshr i32 %i.alk, 2
  store i32 %i.all, ptr %i.alj, align 4, !tbaa !2270
  %indvars.iv.next825 = add nuw nsw i64 %indvars.iv824, 1 ; 2 uses
  %i.alm = load i32, ptr %i.alc, align 8, !tbaa !2270
  %i.aln = load i32, ptr %i.ald, align 4, !tbaa !2270
  %i.alo = mul i32 %i.aln, %i.alm
  %i.alp = zext i32 %i.alo to i64
  %i.alq = icmp samesign ult i64 %indvars.iv.next825, %i.alp
  br i1 %i.alq, label %.lr.ph743, label %.thread630, !llvm.loop !2293

.loopexit692:                                     ; preds = %.thread626
  %i.alr = icmp eq i64 %.unpack500, ptrtoint (ptr @_ZN6LibRaw18nikon_yuv_load_rawEv to i64)
  %i.als = and i1 %i.alr, %i.ajq
  br i1 %i.als, label %vector.ph981, label %.thread630

vector.ph981:                                     ; preds = %.loopexit692
  store i64 ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64), ptr %i.kx, align 8, !tbaa !2231
  store i64 0, ptr %.elt409, align 8, !tbaa !2231
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.alv = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.alv, align 8, !tbaa !2226
  %i.alw = getelementptr inbounds nuw i8, ptr %0, i64 381832
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16420) %i.alu, i8 0, i64 16420, i1 false)
  store i32 3, ptr %i.alw, align 8, !tbaa !2294
  %i.alx = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 3, ptr %i.alx, align 4, !tbaa !2227
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %vector.ph981
  %index983 = phi i64 [ 0, %vector.ph981 ], [ %index.next985, %vector.body982 ] ; 2 uses
  %vec.ind984 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph981 ], [ %vec.ind.next986, %vector.body982 ] ; 2 uses
  %i.aly = uitofp nneg <16 x i32> %vec.ind984 to <16 x double> ; 2 uses
  %i.alz = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.aly, splat (double f0x3F35555555555555) ; 3 uses
  %i.ama = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.alz, %i.alz ; 2 uses
  %i.amb = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.ama, splat (double f0x3F667BCEF737735E)
  %i.amc = fmul reassoc nnan nsz arcp contract afn <16 x double> %i.ama, splat (double f0xBF6B9BDD7EBBB5E0)
  %2 = fadd reassoc nnan nsz arcp contract afn <16 x double> %i.amc, splat (double f0xBF518086BF1A92FA)
  %i.amd = fmul reassoc nsz arcp contract afn <16 x double> %2, %i.alz
  %i.ame = fadd reassoc nnan nsz arcp contract afn <16 x double> %i.amb, splat (double f0x3EF3C65EA647FFF0)
  %i.amf = fadd reassoc nsz arcp contract afn <16 x double> %i.ame, %i.amd
  %i.amg = fmul reassoc nsz arcp contract afn <16 x double> %i.amf, %i.aly
  %i.amh = tail call reassoc nsz arcp contract afn <16 x double> @llvm.exp.v16f64(<16 x double> %i.amg)
  %i.ami = fsub reassoc nsz arcp contract afn <16 x double> splat (double 1.000000e+00), %i.amh ; 2 uses
  %i.amj = fcmp reassoc nsz arcp contract afn olt <16 x double> %i.ami, zeroinitializer
  %i.amk = select nsz <16 x i1> %i.amj, <16 x double> zeroinitializer, <16 x double> %i.ami
  %i.aml = fmul reassoc nsz arcp contract afn <16 x double> %i.amk, splat (double 1.638300e+04)
  %i.amm = fptoui <16 x double> %i.aml to <16 x i16>
  %i.amn = getelementptr inbounds nuw [2 x i8], ptr %i.alt, i64 %index983
  store <16 x i16> %i.amm, ptr %i.amn, align 8, !tbaa !2256
  %index.next985 = add nuw i64 %index983, 16      ; 2 uses
  %vec.ind.next986 = add <16 x i32> %vec.ind984, splat (i32 16)
  %i.amo = icmp eq i64 %index.next985, 3072
  br i1 %i.amo, label %scalar.ph, label %vector.body982, !llvm.loop !2295

scalar.ph:                                        ; preds = %vector.body982
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 11744
  store i16 16287, ptr %i.amp, align 8, !tbaa !2256
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 153380
  store float 1.000000e+00, ptr %i.amq, align 4, !tbaa !2237
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 153384
  %i.ams = getelementptr inbounds nuw i8, ptr %0, i64 153400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ams, align 8, !tbaa !2237
  %i.amt = getelementptr inbounds nuw i8, ptr %0, i64 153404
  %i.amu = getelementptr inbounds nuw i8, ptr %0, i64 153420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.amt, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.amu, align 4, !tbaa !2237
  br label %.thread630

.thread630:                                       ; preds = %.lr.ph743, %bb.hi, %.preheader691, %scalar.ph, %bb.hf, %.loopexit692
  %i.amv = phi i1 [ %i.ajn, %scalar.ph ], [ false, %bb.hf ], [ true, %bb.hi ], [ %i.ajn, %.loopexit692 ], [ true, %.preheader691 ], [ true, %.lr.ph743 ]
  %.unpack515 = phi i64 [ 0, %scalar.ph ], [ 0, %bb.hf ], [ 0, %bb.hi ], [ %.unpack502, %.loopexit692 ], [ 0, %.preheader691 ], [ 0, %.lr.ph743 ] ; 2 uses
  %.unpack513 = phi i64 [ ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64), %scalar.ph ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.hf ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.hi ], [ %.unpack500, %.loopexit692 ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %.preheader691 ], [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %.lr.ph743 ] ; 7 uses
  %i.amw = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw14nikon_load_rawEv to i64)
  %i.amx = icmp eq i64 %.unpack515, 0             ; 4 uses
  %i.amy = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.amz = or i1 %i.amw, %i.amy
  %i.ana = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw28nikon_load_padded_packed_rawEv to i64)
  %or.cond581667 = or i1 %i.ana, %i.amz
  %i.anb = icmp eq i32 %i.xt, 43                  ; 2 uses
  %i.anc = and i1 %i.anb, %or.cond581667
  %or.cond661 = and i1 %i.amx, %i.anc
  br i1 %or.cond661, label %bb.hj, label %.loopexit688

bb.hj:                                            ; preds = %.thread630
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ane = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.and, ptr noundef nonnull dereferenceable(8) @.str.55, i64 noundef 7) #22
  %.not516 = icmp eq i32 %i.ane, 0
  br i1 %.not516, label %.loopexit688, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 381836
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !2229
  %i.anh = icmp eq i32 %i.ang, 12
  br i1 %i.anh, label %.preheader687.a, label %.loopexit688

.preheader687.a:                                  ; preds = %bb.hk
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4095, ptr %i.ani, align 8, !tbaa !2232
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.ank = load i32, ptr %i.anj, align 8, !tbaa !2233
  %i.anl = lshr i32 %i.ank, 2
  store i32 %i.anl, ptr %i.anj, align 8, !tbaa !2233
  %i.anm = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 3 uses
  %i.ann = load <4 x i32>, ptr %i.anm, align 8, !tbaa !2270
  %i.ano = lshr <4 x i32> %i.ann, splat (i32 2)
  store <4 x i32> %i.ano, ptr %i.anm, align 8, !tbaa !2270
  %i.anp = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.anr = load i32, ptr %i.anp, align 8, !tbaa !2270
  %i.ans = load i32, ptr %i.anq, align 4, !tbaa !2270
  %i.ant = mul i32 %i.ans, %i.anr
  %.not760 = icmp eq i32 %i.ant, 0
  br i1 %.not760, label %.loopexit688, label %.lr.ph749

.lr.ph749:                                        ; preds = %.preheader687.a, %.lr.ph749
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %.lr.ph749 ], [ 0, %.preheader687.a ] ; 2 uses
  %i.anu = add nuw nsw i64 %indvars.iv843, 6
  %i.anv = and i64 %i.anu, 4294967295
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.anm, i64 %i.anv ; 2 uses
  %i.anx = load i32, ptr %i.anw, align 4, !tbaa !2270
  %i.any = lshr i32 %i.anx, 2
  store i32 %i.any, ptr %i.anw, align 4, !tbaa !2270
  %indvars.iv.next844 = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %i.anz = load i32, ptr %i.anp, align 8, !tbaa !2270
  %i.aoa = load i32, ptr %i.anq, align 4, !tbaa !2270
  %i.aob = mul i32 %i.aoa, %i.anz
  %i.aoc = zext i32 %i.aob to i64
  %i.aod = icmp samesign ult i64 %indvars.iv.next844, %i.aoc
  br i1 %i.aod, label %.lr.ph749, label %.loopexit688, !llvm.loop !2296

.loopexit688:                                     ; preds = %.lr.ph749, %.preheader687.a, %.thread630, %bb.hk, %bb.hj
  %i.aoe = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64)
  %i.aof = and i1 %i.aoe, %i.amx
  br i1 %i.aof, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %.loopexit688
  %i.aog = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 9, ptr %i.aog, align 8, !tbaa !2297
  br label %bb.hv

bb.hm:                                            ; preds = %.loopexit688
  switch i32 %i.xt, label %.thread632 [
    i32 8, label %bb.hn
    i32 43, label %bb.hp
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.aoh = getelementptr inbounds nuw i8, ptr %0, i64 1972
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !2270
  %i.aoj = icmp ugt i32 %i.aoi, 7
  br i1 %i.aoj, label %bb.ho, label %.thread632

bb.ho:                                            ; preds = %bb.hn
  %i.aok = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.aol = load i32, ptr %i.aok, align 8, !tbaa !2270
  %.not520 = icmp eq i32 %i.aol, 0
  br i1 %.not520, label %.thread632, label %.thread634

.thread634:                                       ; preds = %bb.ho
  %i.aom = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 3, ptr %i.aom, align 8, !tbaa !2297
  br label %bb.ia

bb.hp:                                            ; preds = %bb.hm
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 2196
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !2298
  %i.aop = icmp eq i32 %i.aoo, 1
  br i1 %i.aop, label %.thread633, label %.thread632

.thread633:                                       ; preds = %bb.hp
  %i.aoq = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 5, ptr %i.aoq, align 8, !tbaa !2297
  br label %bb.hw

.thread632:                                       ; preds = %bb.hm, %bb.hn, %bb.ho, %bb.hp
  br i1 %i.ajo, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %.thread632
  %i.aor = getelementptr inbounds nuw i8, ptr %0, i64 4129
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !2299
  %i.aot = and i8 %i.aos, 1
  %.not521 = icmp eq i8 %i.aot, 0
  br i1 %.not521, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aou = getelementptr inbounds nuw i8, ptr %0, i64 192600
  store i32 17, ptr %i.aou, align 8, !tbaa !2297
  br label %bb.hv

bb.hs:                                            ; preds = %bb.hq, %.thread632
  %i.aov = icmp eq i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw19sony_ycbcr_load_rawEv to i64)
  %i.aow = and i1 %i.aov, %i.amv
  %or.cond663 = and i1 %i.aow, %i.amx
  %i.aox = getelementptr inbounds nuw i8, ptr %0, i64 192600 ; 2 uses
  br i1 %or.cond663, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 33, ptr %i.aox, align 8, !tbaa !2297
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  store i32 0, ptr %i.aox, align 8, !tbaa !2297
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hr, %bb.hu, %bb.ht, %bb.hl
  br i1 %i.anb, label %bb.hw, label %bb.ia

bb.hw:                                            ; preds = %.thread633, %bb.hv
  %i.aoy = getelementptr inbounds nuw i8, ptr %0, i64 153100 ; 2 uses
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !2270
  %.not525 = icmp eq i32 %i.aoz, 0
  br i1 %.not525, label %bb.hx, label %bb.ia

bb.hx:                                            ; preds = %bb.hw
  %i.apa = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.apb = load i32, ptr %i.apa, align 8, !tbaa !2232 ; 2 uses
  %i.apc = icmp ugt i32 %i.apb, 1024
  br i1 %i.apc, label %bb.hy, label %bb.ia

bb.hy:                                            ; preds = %bb.hx
  %i.apd = icmp ne i64 %.unpack513, ptrtoint (ptr @_ZN6LibRaw15nikon_load_srawEv to i64)
  %i.ape = icmp ne i64 %.unpack515, 0
  %i.apf = or i1 %i.apd, %i.ape
  br i1 %i.apf, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.apg = uitofp reassoc nsz arcp contract afn i32 %i.apb to float
  %i.aph = fmul reassoc nnan nsz arcp contract afn float %i.apg, f0x3F6F4098
  %i.api = fptosi float %i.aph to i64
  %i.apj = trunc i64 %i.api to i32
  %i.apk = insertelement <4 x i32> poison, i32 %i.apj, i64 0
  %i.apl = shufflevector <4 x i32> %i.apk, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.apl, ptr %i.aoy, align 4, !tbaa !2270
  br label %bb.ia

bb.ia:                                            ; preds = %.thread634, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv
  br i1 %i.ajo, label %bb.ib, label %.loopexit

end_hunk_0
