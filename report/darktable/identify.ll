inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw8identifyEv:bb.a
bb.et:                                            ; preds = %bb.es
  %i.aae = load i16, ptr %i.u, align 2, !tbaa !164 ; 2 uses
  %i.aaf = icmp ult i16 %i.aae, 22
  br i1 %i.aaf, label %bb.fa, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aag = load i32, ptr %i.co, align 4, !tbaa !166
  %i.aah = icmp ugt i32 %i.aag, 16
  br i1 %i.aah, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aai = icmp ne i64 %.unpack330, ptrtoint (ptr @_ZN6LibRaw20deflate_dng_load_rawEv to i64)
  %i.aaj = icmp ne i64 %.unpack332, 0
  %i.aak = icmp ne i64 %.unpack330, ptrtoint (ptr @_ZN6LibRaw28uncompressed_fp_dng_load_rawEv to i64)
  %i.aal = and i1 %i.aai, %i.aak
  %or.cond428 = or i1 %i.aal, %i.aaj
  br i1 %or.cond428, label %bb.fa, label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.aam = load i32, ptr %i.cw, align 8, !tbaa !187
  %i.aan = icmp ugt i32 %i.aam, 4
  br i1 %i.aan, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aao = load i32, ptr %i.dk, align 4, !tbaa !119
  %i.aap = add i32 %i.aao, -5
  %or.cond429 = icmp ult i32 %i.aap, -4
  br i1 %or.cond429, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aaq = zext i16 %i.aae to i32                 ; 2 uses
  %i.aar = load i16, ptr %i.s, align 2, !tbaa !177
  %i.aas = zext i16 %i.aar to i32
  %i.aat = add nuw nsw i32 %i.aas, %i.aaq
  %i.aau = icmp samesign ugt i32 %i.aat, 65535
  br i1 %i.aau, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aav = zext i16 %i.aac to i32                 ; 2 uses
  %i.aaw = load i16, ptr %i.t, align 8, !tbaa !167
  %i.aax = zext i16 %i.aaw to i32
  %i.aay = add nuw nsw i32 %i.aax, %i.aav
  %i.aaz = icmp samesign ugt i32 %i.aay, 65535
  br i1 %i.aaz, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %bb.ev, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.et, %bb.es, %bb.er
  store i32 0, ptr %i.dd, align 8, !tbaa !160
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !194 ; 2 uses
  %.not340 = icmp eq ptr %i.abb, null
  br i1 %.not340, label %bb.ir, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !195
  %i.abe = call noundef i32 %i.abb(ptr noundef %i.abd, i32 noundef 2, i32 noundef 1, i32 noundef 2)
  %.not341 = icmp eq i32 %i.abe, 0
  br i1 %.not341, label %bb.ir, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.abf = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.abf, align 16, !tbaa !145
  call void @__cxa_throw(ptr nonnull %i.abf, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #21
  unreachable

bb.fd:                                            ; preds = %bb.ez
  %i.abg = load i8, ptr %i.y, align 4, !tbaa !82
  %.not334 = icmp eq i8 %i.abg, 0
  br i1 %.not334, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.abh = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.aaq, i32 noundef %i.aav) #19 ; 0 uses
  %i.abi = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.y) #19 ; 0 uses
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.abk = load i32, ptr %i.abj, align 8, !tbaa !196
  %i.abl = and i32 %i.abk, 256
  %.not335 = icmp eq i32 %i.abl, 0
  %i.abm = load i32, ptr %i.k, align 8, !tbaa !85
  %i.abn = icmp eq i32 %i.abm, -1                 ; 2 uses
  br i1 %.not335, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.abn, label %.thread460.sink.split, label %.thread460

bb.fh:                                            ; preds = %bb.ff
  br i1 %i.abn, label %bb.fi, label %.thread460

bb.fi:                                            ; preds = %bb.fh
  %i.abo = load i32, ptr %i.af, align 8, !tbaa !92
  %.not336 = icmp eq i32 %i.abo, 0
  br i1 %.not336, label %.thread460.sink.split, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.abp = load i32, ptr %i.cw, align 8, !tbaa !187
  %i.abq = icmp eq i32 %i.abp, 1
  br i1 %i.abq, label %bb.fk, label %.thread460.sink.split

bb.fk:                                            ; preds = %bb.fj
  store i32 1, ptr %i.dk, align 4, !tbaa !119
  br label %.thread460.sink.split

.thread460.sink.split:                            ; preds = %bb.fi, %bb.fj, %bb.fg, %bb.fk
  %.sink640 = phi i32 [ -1802201964, %bb.fg ], [ 0, %bb.fk ], [ -1802201964, %bb.fj ], [ -1802201964, %bb.fi ]
  store i32 %.sink640, ptr %i.k, align 8, !tbaa !85
  br label %.thread460

.thread460:                                       ; preds = %.thread460.sink.split, %bb.fg, %bb.fh
  %i.abr = load i64, ptr %i.ck, align 8, !tbaa !105 ; 2 uses
  %.not337 = icmp eq i64 %i.abr, 0
  br i1 %.not337, label %bb.fo, label %bb.fl

bb.fl:                                            ; preds = %.thread460
  %i.abs = load i16, ptr %i.ch, align 2, !tbaa !197
  %.not338 = icmp eq i16 %i.abs, 0
  br i1 %.not338, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.abt = load ptr, ptr %i.ev, align 8, !tbaa !125 ; 2 uses
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !126
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 32
  %i.abw = load ptr, ptr %i.abv, align 8
  %i.abx = call noundef i32 %i.abw(ptr noundef nonnull align 8 dereferenceable(8) %i.abt, i64 noundef %i.abr, i32 noundef 0), !call_target !128 ; 0 uses
  %i.aby = call noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %2, i32 noundef 1)
  %.not339 = icmp eq i32 %i.aby, 0
  br i1 %.not339, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.abz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !198
  %i.acb = trunc i32 %i.aca to i16
  store i16 %i.acb, ptr %i.ci, align 4, !tbaa !200
  %i.acc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.acd = load i32, ptr %i.acc, align 8, !tbaa !201
  %i.ace = trunc i32 %i.acd to i16
  store i16 %i.ace, ptr %i.ch, align 2, !tbaa !197
  br label %bb.fo

bb.fo:                                            ; preds = %.thread457, %.thread460, %bb.fl, %bb.fn, %bb.fm, %bb.dt, %bb.ds, %bb.dx, %bb.dw, %bb.du
  %i.acf = load i32, ptr %i.cs, align 4, !tbaa !186
  %.not360 = icmp eq i32 %i.acf, 0
  br i1 %.not360, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @_ZN6LibRaw27identify_process_dng_fieldsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.unpack362 = load i64, ptr %i.cl, align 8, !tbaa !153 ; 5 uses
  %.unpack364 = load i64, ptr %.repack235, align 8, !tbaa !153 ; 2 uses
  %.not365 = icmp eq i64 %.unpack362, 0
  br i1 %.not365, label %bb.fz, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.acg = load i16, ptr %i.v, align 4, !tbaa !165
  %i.ach = icmp ult i16 %i.acg, 22
  br i1 %i.ach, label %bb.fz, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aci = load i16, ptr %i.u, align 2, !tbaa !164
  %i.acj = icmp ult i16 %i.aci, 22
  br i1 %i.acj, label %bb.fz, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ack = load i32, ptr %i.co, align 4, !tbaa !166 ; 3 uses
  %i.acl = icmp ugt i32 %i.ack, 16
  br i1 %i.acl, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.acm = icmp ne i64 %.unpack362, ptrtoint (ptr @_ZN6LibRaw20deflate_dng_load_rawEv to i64)
  %i.acn = icmp ne i64 %.unpack364, 0
  %i.aco = icmp ne i64 %.unpack362, ptrtoint (ptr @_ZN6LibRaw28uncompressed_fp_dng_load_rawEv to i64)
  %i.acp = and i1 %i.acm, %i.aco
  %or.cond431 = or i1 %i.acp, %i.acn
  br i1 %or.cond431, label %bb.fz, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.acq = icmp eq i64 %.unpack362, ptrtoint (ptr @_ZN6LibRaw20deflate_dng_load_rawEv to i64)
  %i.acr = icmp eq i64 %.unpack364, 0
  %i.acs = icmp eq i64 %.unpack362, ptrtoint (ptr @_ZN6LibRaw28uncompressed_fp_dng_load_rawEv to i64)
  %i.act = or i1 %i.acq, %i.acs
  %or.cond433 = and i1 %i.act, %i.acr
  br i1 %or.cond433, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.acu = add i32 %i.ack, -16
  %or.cond434 = icmp ult i32 %i.acu, 17
  %i.acv = and i32 %i.ack, 7
  %.not370 = icmp eq i32 %i.acv, 0
  %or.cond435 = and i1 %or.cond434, %.not370
  br i1 %or.cond435, label %bb.fx, label %bb.fz

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.acw = load i32, ptr %i.cw, align 8, !tbaa !187
  %i.acx = icmp ugt i32 %i.acw, 4
  br i1 %i.acx, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.acy = load i32, ptr %i.dk, align 4, !tbaa !119 ; 8 uses
  %i.acz = add i32 %i.acy, -5
  %or.cond436 = icmp ult i32 %i.acz, -4
  br i1 %or.cond436, label %bb.fz, label %.lr.ph511

.lr.ph511:                                        ; preds = %bb.fy
  %wide.trip.count578 = zext nneg i32 %i.acy to i64 ; 4 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count578, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ada = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.load = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dg, <4 x i1> %i.ada, <4 x float> poison), !tbaa !99
  %i.adb = fcmp reassoc nsz arcp contract afn ole <4 x float> %wide.masked.load, splat (float 1.000000e-03)
  %i.adc = select <4 x i1> %i.ada, <4 x i1> %i.adb, <4 x i1> zeroinitializer
  %.fr = freeze <4 x i1> %i.adc
  %i.add = bitcast <4 x i1> %.fr to i4
  %.not684.not = icmp eq i4 %i.add, 0
  %.pre596 = load float, ptr %i.dg, align 4, !tbaa !99 ; 3 uses
  br i1 %.not684.not, label %.lr.ph518.preheader, label %.critedge438

bb.fz:                                            ; preds = %bb.fu, %bb.fy, %bb.fx, %bb.fw, %bb.fs, %bb.fr, %bb.fq
  store i32 0, ptr %i.dd, align 8, !tbaa !160
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !194 ; 2 uses
  %.not417 = icmp eq ptr %i.adf, null
  br i1 %.not417, label %bb.ir, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !195
  %i.adi = call noundef i32 %i.adf(ptr noundef %i.adh, i32 noundef 2, i32 noundef 1, i32 noundef 2)
  %.not418 = icmp eq i32 %i.adi, 0
  br i1 %.not418, label %bb.ir, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.adj = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.adj, align 16, !tbaa !145
  call void @__cxa_throw(ptr nonnull %i.adj, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #21
  unreachable

.lr.ph518.preheader:                              ; preds = %.lr.ph511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.adk = load float, ptr %i.dg, align 4, !tbaa !99 ; 2 uses
  %i.adl = fcmp reassoc nsz arcp contract afn olt float %.pre596, %i.adk
  %.0175..v = select i1 %i.adl, float %.pre596, float %i.adk ; 2 uses
  %.0175. = fpext float %.0175..v to double       ; 2 uses
  %exitcond584.not = icmp eq i32 %i.acy, 1
  br i1 %exitcond584.not, label %vector.ph668, label %.lr.ph518.1

vector.ph668:                                     ; preds = %.lr.ph518.3, %.lr.ph518.2, %.lr.ph518.1, %.lr.ph518.preheader
  %.0175..lcssa = phi double [ %.0175., %.lr.ph518.preheader ], [ %.0175..1, %.lr.ph518.1 ], [ %.0175..2, %.lr.ph518.2 ], [ %.0175..3, %.lr.ph518.3 ]
  %n.rnd.up669 = add nuw nsw i64 %wide.trip.count578, 3
  %n.vec670 = and i64 %n.rnd.up669, 12
  %trip.count.minus.1671 = add nsw i64 %wide.trip.count578, -1
  %broadcast.splatinsert672 = insertelement <4 x i64> poison, i64 %trip.count.minus.1671, i64 0
  %broadcast.splat673 = shufflevector <4 x i64> %broadcast.splatinsert672, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert674 = insertelement <4 x double> poison, double %.0175..lcssa, i64 0
  %broadcast.splat675 = shufflevector <4 x double> %broadcast.splatinsert674, <4 x double> poison, <4 x i32> zeroinitializer
  %i.adm = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat675
  br label %vector.body676

vector.body676:                                   ; preds = %vector.body676, %vector.ph668
  %index677 = phi i64 [ 0, %vector.ph668 ], [ %index.next680, %vector.body676 ] ; 3 uses
  %vec.ind678 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph668 ], [ %vec.ind.next681, %vector.body676 ] ; 2 uses
  %i.adn = icmp ule <4 x i64> %vec.ind678, %broadcast.splat673 ; 2 uses
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index677
  %wide.masked.load679 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.ado, <4 x i1> %i.adn, <4 x float> poison), !tbaa !99
  %i.adp = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.load679 to <4 x double>
  %i.adq = fmul reassoc nsz arcp contract afn <4 x double> %i.adp, %i.adm
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index677
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.adq, ptr align 16 %i.adr, <4 x i1> %i.adn), !tbaa !202
  %index.next680 = add nuw i64 %index677, 4       ; 2 uses
  %vec.ind.next681 = add nuw <4 x i64> %vec.ind678, splat (i64 4)
  %i.ads = icmp eq i64 %index.next680, %n.vec670
  br i1 %i.ads, label %.lr.ph531.preheader, label %vector.body676, !llvm.loop !203

.lr.ph518.1:                                      ; preds = %.lr.ph518.preheader
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.adu = load float, ptr %i.adt, align 8, !tbaa !99 ; 2 uses
  %i.adv = fpext reassoc nsz arcp contract afn float %i.adu to double
  %i.adw = fcmp reassoc nsz arcp contract afn olt float %.0175..v, %i.adu
  %.0175..1 = select reassoc nsz arcp contract afn i1 %i.adw, double %.0175., double %i.adv ; 3 uses
  %exitcond584.not.1 = icmp eq i32 %i.acy, 2
  br i1 %exitcond584.not.1, label %vector.ph668, label %.lr.ph518.2

.lr.ph518.2:                                      ; preds = %.lr.ph518.1
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 153260
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !99
  %i.adz = fpext reassoc nsz arcp contract afn float %i.ady to double ; 2 uses
  %i.aea = fcmp reassoc nsz arcp contract afn olt double %.0175..1, %i.adz
  %.0175..2 = select reassoc nsz arcp contract afn i1 %i.aea, double %.0175..1, double %i.adz ; 3 uses
  %exitcond584.not.2 = icmp eq i32 %i.acy, 3
  br i1 %exitcond584.not.2, label %vector.ph668, label %.lr.ph518.3

.lr.ph518.3:                                      ; preds = %.lr.ph518.2
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 153264
  %i.aec = load float, ptr %i.aeb, align 8, !tbaa !99
  %i.aed = fpext reassoc nsz arcp contract afn float %i.aec to double ; 2 uses
  %i.aee = fcmp reassoc nsz arcp contract afn olt double %.0175..2, %i.aed
  %.0175..3 = select reassoc nsz arcp contract afn i1 %i.aee, double %.0175..2, double %i.aed
  br label %vector.ph668

.lr.ph531.preheader:                              ; preds = %vector.body676
  %.pre595 = load double, ptr %i.g, align 16, !tbaa !202 ; 4 uses
  %i.aef = add nsw i32 %i.acy, -1
  %i.aeg = icmp ult i32 %i.aef, 7
  br i1 %i.aeg, label %.lr.ph531.epil.preheader, label %.lr.ph531

.lr.ph531:                                        ; preds = %.lr.ph531.preheader, %.lr.ph531
  %indvars.iv590 = phi i64 [ %indvars.iv.next591.7, %.lr.ph531 ], [ 0, %.lr.ph531.preheader ] ; 9 uses
  %.0529 = phi double [ %i.agb, %.lr.ph531 ], [ %.pre595, %.lr.ph531.preheader ] ; 2 uses
  %.1528 = phi double [ %.1..7, %.lr.ph531 ], [ %.pre595, %.lr.ph531.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph531 ], [ 0, %.lr.ph531.preheader ]
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv590
  %i.aei = load double, ptr %i.aeh, align 16, !tbaa !202 ; 4 uses
  %i.aej = fcmp reassoc nsz arcp contract afn olt double %.1528, %i.aei
  %.1. = select reassoc nsz arcp contract afn i1 %i.aej, double %.1528, double %i.aei ; 2 uses
  %i.aek = fcmp reassoc nsz arcp contract afn ogt double %.0529, %i.aei
  %i.ael = select reassoc nsz arcp contract afn i1 %i.aek, double %.0529, double %i.aei ; 2 uses
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv590
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aeo = load double, ptr %i.aen, align 8, !tbaa !202 ; 4 uses
  %i.aep = fcmp reassoc nsz arcp contract afn olt double %.1., %i.aeo
  %.1..1 = select reassoc nsz arcp contract afn i1 %i.aep, double %.1., double %i.aeo ; 2 uses
  %i.aeq = fcmp reassoc nsz arcp contract afn ogt double %i.ael, %i.aeo
  %i.aer = select reassoc nsz arcp contract afn i1 %i.aeq, double %i.ael, double %i.aeo ; 2 uses
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv590
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 16
  %i.aeu = load double, ptr %i.aet, align 16, !tbaa !202 ; 4 uses
  %i.aev = fcmp reassoc nsz arcp contract afn olt double %.1..1, %i.aeu
  %.1..2 = select reassoc nsz arcp contract afn i1 %i.aev, double %.1..1, double %i.aeu ; 2 uses
  %i.aew = fcmp reassoc nsz arcp contract afn ogt double %i.aer, %i.aeu
  %i.aex = select reassoc nsz arcp contract afn i1 %i.aew, double %i.aer, double %i.aeu ; 2 uses
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv590
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 24
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !202 ; 4 uses
  %i.afb = fcmp reassoc nsz arcp contract afn olt double %.1..2, %i.afa
  %.1..3 = select reassoc nsz arcp contract afn i1 %i.afb, double %.1..2, double %i.afa ; 2 uses
  %i.afc = fcmp reassoc nsz arcp contract afn ogt double %i.aex, %i.afa
  %i.afd = select reassoc nsz arcp contract afn i1 %i.afc, double %i.aex, double %i.afa ; 2 uses
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv590
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 32
  %i.afg = load double, ptr %i.aff, align 16, !tbaa !202 ; 4 uses
  %i.afh = fcmp reassoc nsz arcp contract afn olt double %.1..3, %i.afg
  %.1..4 = select reassoc nsz arcp contract afn i1 %i.afh, double %.1..3, double %i.afg ; 2 uses
  %i.afi = fcmp reassoc nsz arcp contract afn ogt double %i.afd, %i.afg
  %i.afj = select reassoc nsz arcp contract afn i1 %i.afi, double %i.afd, double %i.afg ; 2 uses
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv590
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 40
  %i.afm = load double, ptr %i.afl, align 8, !tbaa !202 ; 4 uses
  %i.afn = fcmp reassoc nsz arcp contract afn olt double %.1..4, %i.afm
  %.1..5 = select reassoc nsz arcp contract afn i1 %i.afn, double %.1..4, double %i.afm ; 2 uses
  %i.afo = fcmp reassoc nsz arcp contract afn ogt double %i.afj, %i.afm
  %i.afp = select reassoc nsz arcp contract afn i1 %i.afo, double %i.afj, double %i.afm ; 2 uses
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv590
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 48
  %i.afs = load double, ptr %i.afr, align 16, !tbaa !202 ; 4 uses
  %i.aft = fcmp reassoc nsz arcp contract afn olt double %.1..5, %i.afs
  %.1..6 = select reassoc nsz arcp contract afn i1 %i.aft, double %.1..5, double %i.afs ; 2 uses
  %i.afu = fcmp reassoc nsz arcp contract afn ogt double %i.afp, %i.afs
  %i.afv = select reassoc nsz arcp contract afn i1 %i.afu, double %i.afp, double %i.afs ; 2 uses
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv590
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 56
  %i.afy = load double, ptr %i.afx, align 8, !tbaa !202 ; 4 uses
  %i.afz = fcmp reassoc nsz arcp contract afn olt double %.1..6, %i.afy
  %.1..7 = select reassoc nsz arcp contract afn i1 %i.afz, double %.1..6, double %i.afy ; 3 uses
  %i.aga = fcmp reassoc nsz arcp contract afn ogt double %i.afv, %i.afy
  %i.agb = select reassoc nsz arcp contract afn i1 %i.aga, double %i.afv, double %i.afy ; 3 uses
  %indvars.iv.next591.7 = add nuw nsw i64 %indvars.iv590, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, 0
  br i1 %niter.ncmp.7, label %._crit_edge532.unr-lcssa, label %.lr.ph531, !llvm.loop !204

._crit_edge532.unr-lcssa:                         ; preds = %.lr.ph531
  %lcmp.mod.not = icmp eq i32 %i.acy, 0
  br i1 %lcmp.mod.not, label %._crit_edge532, label %.lr.ph531.epil.preheader

.lr.ph531.epil.preheader:                         ; preds = %._crit_edge532.unr-lcssa, %.lr.ph531.preheader
  %indvars.iv590.epil.init = phi i64 [ 0, %.lr.ph531.preheader ], [ %indvars.iv.next591.7, %._crit_edge532.unr-lcssa ]
  %.0529.epil.init = phi double [ %.pre595, %.lr.ph531.preheader ], [ %i.agb, %._crit_edge532.unr-lcssa ]
  %.1528.epil.init = phi double [ %.pre595, %.lr.ph531.preheader ], [ %.1..7, %._crit_edge532.unr-lcssa ]
  %lcmp.mod694 = icmp ne i32 %i.acy, 0
  call void @llvm.assume(i1 %lcmp.mod694)
  br label %.lr.ph531.epil

.lr.ph531.epil:                                   ; preds = %.lr.ph531.epil, %.lr.ph531.epil.preheader
  %indvars.iv590.epil = phi i64 [ %indvars.iv590.epil.init, %.lr.ph531.epil.preheader ], [ %indvars.iv.next591.epil, %.lr.ph531.epil ] ; 2 uses
  %.0529.epil = phi double [ %.0529.epil.init, %.lr.ph531.epil.preheader ], [ %i.agg, %.lr.ph531.epil ] ; 2 uses
  %.1528.epil = phi double [ %.1528.epil.init, %.lr.ph531.epil.preheader ], [ %.1..epil, %.lr.ph531.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph531.epil.preheader ], [ %epil.iter.next, %.lr.ph531.epil ]
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv590.epil
  %i.agd = load double, ptr %i.agc, align 8, !tbaa !202 ; 4 uses
  %i.age = fcmp reassoc nsz arcp contract afn olt double %.1528.epil, %i.agd
  %.1..epil = select reassoc nsz arcp contract afn i1 %i.age, double %.1528.epil, double %i.agd ; 2 uses
  %i.agf = fcmp reassoc nsz arcp contract afn ogt double %.0529.epil, %i.agd
  %i.agg = select reassoc nsz arcp contract afn i1 %i.agf, double %.0529.epil, double %i.agd ; 2 uses
  %indvars.iv.next591.epil = add nuw nsw i64 %indvars.iv590.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %wide.trip.count578
  br i1 %epil.iter.cmp.not, label %._crit_edge532, label %.lr.ph531.epil, !llvm.loop !205

._crit_edge532:                                   ; preds = %.lr.ph531.epil, %._crit_edge532.unr-lcssa
  %.1..lcssa = phi double [ %.1..7, %._crit_edge532.unr-lcssa ], [ %.1..epil, %.lr.ph531.epil ]
  %.lcssa = phi double [ %i.agb, %._crit_edge532.unr-lcssa ], [ %i.agg, %.lr.ph531.epil ]
  %i.agh = fcmp reassoc nsz arcp contract afn ole double %.1..lcssa, f0x3F847AE140000000
  %i.agi = fcmp reassoc nsz arcp contract afn ogt double %.lcssa, 1.000000e+02
  %or.cond20 = select i1 %i.agh, i1 true, i1 %i.agi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br i1 %or.cond20, label %.critedge438, label %bb.ge

.critedge438:                                     ; preds = %.lr.ph511, %._crit_edge532
  %i.agj = fcmp reassoc nsz arcp contract afn ogt float %.pre596, 0.000000e+00
  br i1 %i.agj, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %.critedge438
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !99
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %.critedge438
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float 0.000000e+00, ptr %i.agk, align 8, !tbaa !99
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %._crit_edge532
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 5396
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !207
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 5392
  %i.ago = load i32, ptr %i.agn, align 8, !tbaa !208
  %.not373 = icmp eq i32 %i.ago, 0
  br i1 %.not373, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.agp = load i32, ptr %i.cs, align 4, !tbaa !186
  %i.agq = icmp ne i32 %i.agp, 0
  %i.agr = zext i1 %i.agq to i32
  %i.ags = or disjoint i32 %i.agr, 2
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.agt = phi i32 [ 3, %bb.ge ], [ %i.ags, %bb.gf ]
  %i.agu = and i32 %i.agt, %i.agm
  %.not374 = icmp eq i32 %i.agu, 0
  br i1 %.not374, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.agv = load float, ptr %i.dh, align 4, !tbaa !99
  %i.agw = fcmp reassoc nsz arcp contract afn ogt float %i.agv, 1.250000e-01
  br i1 %i.agw, label %.thread463, label %bb.gi

.thread463:                                       ; preds = %bb.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.di, ptr noundef nonnull align 4 dereferenceable(48) %i.dh, i64 48, i1 false)
  store i32 0, ptr %i.dc, align 4, !tbaa !116
  br label %bb.gk

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.pr462 = load i32, ptr %i.dc, align 4, !tbaa !116
  %.not375 = icmp eq i32 %.pr462, 0
  br i1 %.not375, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.agx = load i32, ptr %i.ak, align 4, !tbaa !209
  %.not376 = icmp eq i32 %i.agx, 0
  br i1 %.not376, label %.sink.split641, label %bb.gk

bb.gk:                                            ; preds = %.thread463, %bb.gj, %bb.gi
  %i.agy = getelementptr inbounds nuw i8, ptr %0, i64 153428
  %i.agz = load float, ptr %i.agy, align 4, !tbaa !99
  %i.aha = fpext reassoc nsz arcp contract afn float %i.agz to double
  %i.ahb = fcmp reassoc nsz arcp contract afn olt double %i.aha, 1.000000e-02
  br i1 %i.ahb, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.ahc = load i32, ptr %i.ak, align 4, !tbaa !209
  %.not377 = icmp eq i32 %i.ahc, 0
  br i1 %.not377, label %.sink.split641, label %bb.gm

.sink.split641:                                   ; preds = %bb.gl, %bb.gj
  %.sink644 = phi i32 [ 0, %bb.gj ], [ 1, %bb.gl ]
  %i.ahd = load i32, ptr %i.ag, align 4, !tbaa !18
  %i.ahe = load ptr, ptr %0, align 8, !tbaa !126
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 72
  %i.ahg = load ptr, ptr %i.ahf, align 8
  %i.ahh = call noundef i32 %i.ahg(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ahd, ptr noundef nonnull %i.ai, i32 noundef %.sink644)
  store i32 %i.ahh, ptr %i.ak, align 4, !tbaa !209
  br label %bb.gm

bb.gm:                                            ; preds = %.sink.split641, %bb.gk, %bb.gl
  %.unpack379 = load i64, ptr %i.cl, align 8, !tbaa !153
  %.unpack381 = load i64, ptr %.repack235, align 8, !tbaa !153
  %i.ahi = icmp eq i64 %.unpack379, ptrtoint (ptr @_ZN6LibRaw19kodak_radc_load_rawEv to i64)
  %i.ahj = icmp eq i64 %.unpack381, 0
  %i.ahk = and i1 %i.ahi, %i.ahj
  br i1 %i.ahk, label %bb.gn, label %bb.gq

bb.gn:                                            ; preds = %bb.gm
  %i.ahl = load i32, ptr %i.dc, align 4, !tbaa !116
  %.not382 = icmp eq i32 %i.ahl, 0
  br i1 %.not382, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ahm = load i32, ptr %i.ak, align 4, !tbaa !209
  %.not383 = icmp eq i32 %i.ahm, 0
  br i1 %.not383, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.ahn = load ptr, ptr %0, align 8, !tbaa !126
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 72
  %i.ahp = load ptr, ptr %i.aho, align 8
  %i.ahq = call noundef i32 %i.ahp(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 3, ptr noundef nonnull @.str.50, i32 noundef 0), !call_target !210
  store i32 %i.ahq, ptr %i.ak, align 4, !tbaa !209
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gn, %bb.go, %bb.gp, %bb.gm
  %i.ahr = load i32, ptr %i.ag, align 4, !tbaa !18 ; 2 uses
  %.not384 = icmp eq i32 %i.ahr, 0
  br i1 %.not384, label %bb.gt, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ahs = load i8, ptr %i.ai, align 4, !tbaa !82
  %.not385 = icmp eq i8 %i.ahs, 0
  br i1 %.not385, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @_ZN6LibRaw22SetStandardIlluminantsEjPKc(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ahr, ptr noundef nonnull %i.ai)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %bb.gq
  %i.aht = load i16, ptr %i.q, align 2, !tbaa !89
  %.not386 = icmp eq i16 %i.aht, 0
  br i1 %.not386, label %.thread467, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ahu = load i32, ptr %i.cs, align 4, !tbaa !186
  %.not387 = icmp eq i32 %i.ahu, 0
  br i1 %.not387, label %bb.gv, label %.thread469

bb.gv:                                            ; preds = %bb.gu
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 5596
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !220
  %i.ahx = and i32 %i.ahw, 65536
  %.not388 = icmp eq i32 %i.ahx, 0
  br i1 %.not388, label %bb.gw, label %.thread469

bb.gw:                                            ; preds = %bb.gv
  store i16 0, ptr %i.q, align 2, !tbaa !89
  br label %.thread467

.thread469:                                       ; preds = %bb.gv, %bb.gu
  %i.ahy = load i16, ptr %i.u, align 2, !tbaa !164
  %i.ahz = load i32, ptr %i.p, align 4, !tbaa !221 ; 2 uses
  %.not390 = icmp eq i32 %i.ahz, 0
  %i.aia = zext i1 %.not390 to i16
  %i.aib = lshr i16 %i.ahy, %i.aia                ; 3 uses
  store i16 %i.aib, ptr %i.q, align 2, !tbaa !89
  %i.aic = and i16 %i.aib, 1
  %.not391 = icmp eq i16 %i.aic, 0
  %i.aid = select i1 %.not391, i32 1229539657, i32 -1802201964
  store i32 %i.aid, ptr %i.k, align 8, !tbaa !85
  %i.aie = load i16, ptr %i.v, align 4, !tbaa !165
  %i.aif = zext i16 %i.aie to i32
  %i.aig = lshr i32 %i.aif, %i.ahz
  %i.aih = trunc nuw i32 %i.aig to i16
  %i.aii = add i16 %i.aib, %i.aih                 ; 5 uses
  store i16 %i.aii, ptr %i.u, align 2, !tbaa !164
  %i.aij = add i16 %i.aii, -1                     ; 4 uses
  store i16 %i.aij, ptr %i.v, align 4, !tbaa !165
  store double 1.000000e+00, ptr %i.de, align 8, !tbaa !117
  %i.aik = zext i16 %i.aii to i64
  %i.ail = zext i16 %i.aij to i64
  %i.aim = mul nuw nsw i64 %i.ail, %i.aik
  %i.ain = load i16, ptr %i.r, align 2, !tbaa !162 ; 3 uses
  %i.aio = zext i16 %i.ain to i64
  %i.aip = load i16, ptr %i.l, align 8, !tbaa !163 ; 3 uses
  %i.aiq = zext i16 %i.aip to i64
  %i.air = shl nuw nsw i64 %i.aio, 3
  %i.ais = mul nuw nsw i64 %i.air, %i.aiq
  %i.ait = icmp samesign ugt i64 %i.aim, %i.ais
  br i1 %i.ait, label %bb.gx, label %bb.hb

bb.gx:                                            ; preds = %.thread469
  store i32 0, ptr %i.dd, align 8, !tbaa !160
  br label %bb.hb

.thread467:                                       ; preds = %bb.gt, %bb.gw
  %i.aiu = load i16, ptr %i.l, align 8, !tbaa !163 ; 2 uses
  %i.aiv = load i16, ptr %i.v, align 4, !tbaa !165 ; 5 uses
  %i.aiw = icmp ult i16 %i.aiu, %i.aiv
  br i1 %i.aiw, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %.thread467
  store i16 %i.aiv, ptr %i.l, align 8, !tbaa !163
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %.thread467
  %i.aix = phi i16 [ %i.aiv, %bb.gy ], [ %i.aiu, %.thread467 ] ; 2 uses
  %i.aiy = load i16, ptr %i.r, align 2, !tbaa !162 ; 2 uses
  %i.aiz = load i16, ptr %i.u, align 2, !tbaa !164 ; 5 uses
  %i.aja = icmp ult i16 %i.aiy, %i.aiz
  br i1 %i.aja, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  store i16 %i.aiz, ptr %i.r, align 2, !tbaa !162
  br label %bb.hb

bb.hb:                                            ; preds = %bb.gz, %bb.ha, %.thread469, %bb.gx
  %i.ajb = phi i16 [ %i.aix, %bb.gz ], [ %i.aix, %bb.ha ], [ %i.aip, %.thread469 ], [ %i.aip, %bb.gx ] ; 4 uses
end_hunk_0
