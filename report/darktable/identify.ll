Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/identify?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw8identifyEv:bb.a
  br i1 %i.aad, label %bb.fa, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aae = load i16, ptr %i.u, align 2, !tbaa !125 ; 3 uses
  %i.aaf = icmp ult i16 %i.aae, 22
  br i1 %i.aaf, label %bb.fa, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aag = load i32, ptr %i.co, align 4, !tbaa !127
  %i.aah = icmp ugt i32 %i.aag, 16
  br i1 %i.aah, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aai = icmp ne i64 %.unpack330, ptrtoint (ptr @_ZN6LibRaw20deflate_dng_load_rawEv to i64)
  %i.aaj = icmp ne i64 %.unpack332, 0
  %i.aak = icmp ne i64 %.unpack330, ptrtoint (ptr @_ZN6LibRaw28uncompressed_fp_dng_load_rawEv to i64)
  %i.aal = and i1 %i.aai, %i.aak
  %or.cond429 = or i1 %i.aal, %i.aaj
  br i1 %or.cond429, label %bb.fa, label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.aam = load i32, ptr %i.cw, align 8, !tbaa !132
  %i.aan = icmp ugt i32 %i.aam, 4
  br i1 %i.aan, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aao = load i32, ptr %i.dk, align 4, !tbaa !99
  %i.aap = add i32 %i.aao, -5
  %or.cond430 = icmp ult i32 %i.aap, -4
  br i1 %or.cond430, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aaq = zext i16 %i.aae to i32
  %i.aar = load i16, ptr %i.s, align 2, !tbaa !129
  %i.aas = xor i16 %i.aae, -1
  %add.overflow = icmp ugt i16 %i.aar, %i.aas
  br i1 %add.overflow, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aat = zext i16 %i.aac to i32
  %i.aau = load i16, ptr %i.t, align 8, !tbaa !128
  %i.aav = xor i16 %i.aac, -1
  %add.overflow334 = icmp ugt i16 %i.aau, %i.aav
  br i1 %add.overflow334, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %bb.ev, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.et, %bb.es, %bb.er
  store i32 0, ptr %i.dd, align 8, !tbaa !121
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !213 ; 2 uses
  %.not341 = icmp eq ptr %i.aax, null
  br i1 %.not341, label %bb.ir, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !214
  %i.aba = call noundef i32 %i.aax(ptr noundef %i.aaz, i32 noundef 2, i32 noundef 1, i32 noundef 2)
  %.not342 = icmp eq i32 %i.aba, 0
  br i1 %.not342, label %bb.ir, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.abb = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.abb, align 16, !tbaa !188
  call void @__cxa_throw(ptr nonnull %i.abb, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #21
  unreachable

bb.fd:                                            ; preds = %bb.ez
  %i.abc = load i8, ptr %i.y, align 4, !tbaa !80
  %.not335 = icmp eq i8 %i.abc, 0
  br i1 %.not335, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.abd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %i.aaq, i32 noundef %i.aat) #19 ; 0 uses
  %i.abe = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) %i.y) #19 ; 0 uses
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 5552
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !134
  %i.abh = and i32 %i.abg, 256
  %.not336 = icmp eq i32 %i.abh, 0
  %i.abi = load i32, ptr %i.k, align 8, !tbaa !82
  %i.abj = icmp eq i32 %i.abi, -1                 ; 2 uses
  br i1 %.not336, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.abj, label %.thread462.sink.split, label %.thread462

bb.fh:                                            ; preds = %bb.ff
  br i1 %i.abj, label %bb.fi, label %.thread462

bb.fi:                                            ; preds = %bb.fh
  %i.abk = load i32, ptr %i.af, align 8, !tbaa !88
  %.not337 = icmp eq i32 %i.abk, 0
  br i1 %.not337, label %.thread462.sink.split, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.abl = load i32, ptr %i.cw, align 8, !tbaa !132
  %i.abm = icmp eq i32 %i.abl, 1
  br i1 %i.abm, label %bb.fk, label %.thread462.sink.split

bb.fk:                                            ; preds = %bb.fj
  store i32 1, ptr %i.dk, align 4, !tbaa !99
  br label %.thread462.sink.split

.thread462.sink.split:                            ; preds = %bb.fi, %bb.fj, %bb.fg, %bb.fk
  %.sink642 = phi i32 [ -1802201964, %bb.fg ], [ 0, %bb.fk ], [ -1802201964, %bb.fj ], [ -1802201964, %bb.fi ]
  store i32 %.sink642, ptr %i.k, align 8, !tbaa !82
  br label %.thread462

.thread462:                                       ; preds = %.thread462.sink.split, %bb.fg, %bb.fh
  %i.abn = load i64, ptr %i.ck, align 8, !tbaa !93 ; 2 uses
  %.not338 = icmp eq i64 %i.abn, 0
  br i1 %.not338, label %bb.fo, label %bb.fl

bb.fl:                                            ; preds = %.thread462
  %i.abo = load i16, ptr %i.ch, align 2, !tbaa !135
  %.not339 = icmp eq i16 %i.abo, 0
  br i1 %.not339, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.abp = load ptr, ptr %i.ev, align 8, !tbaa !103 ; 2 uses
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !105
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 32
  %i.abs = load ptr, ptr %i.abr, align 8
  %i.abt = call noundef i32 %i.abs(ptr noundef nonnull align 8 dereferenceable(8) %i.abp, i64 noundef %i.abn, i32 noundef 0), !call_target !114 ; 0 uses
  %i.abu = call noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %2, i32 noundef 1)
  %.not340 = icmp eq i32 %i.abu, 0
  br i1 %.not340, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.abv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !216
  %i.abx = trunc i32 %i.abw to i16
  store i16 %i.abx, ptr %i.ci, align 4, !tbaa !136
  %i.aby = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abz = load i32, ptr %i.aby, align 8, !tbaa !217
  %i.aca = trunc i32 %i.abz to i16
  store i16 %i.aca, ptr %i.ch, align 2, !tbaa !135
  br label %bb.fo

bb.fo:                                            ; preds = %.thread459, %.thread462, %bb.fl, %bb.fn, %bb.fm, %bb.dt, %bb.ds, %bb.dx, %bb.dw, %bb.du
  %i.acb = load i32, ptr %i.cs, align 4, !tbaa !131
  %.not361 = icmp eq i32 %i.acb, 0
  br i1 %.not361, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @_ZN6LibRaw27identify_process_dng_fieldsEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.unpack363 = load i64, ptr %i.cl, align 8, !tbaa !119 ; 5 uses
  %.unpack365 = load i64, ptr %.repack235, align 8, !tbaa !119 ; 2 uses
  %.not366 = icmp eq i64 %.unpack363, 0
  br i1 %.not366, label %bb.fz, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.acc = load i16, ptr %i.v, align 4, !tbaa !126
  %i.acd = icmp ult i16 %i.acc, 22
  br i1 %i.acd, label %bb.fz, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ace = load i16, ptr %i.u, align 2, !tbaa !125
  %i.acf = icmp ult i16 %i.ace, 22
  br i1 %i.acf, label %bb.fz, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.acg = load i32, ptr %i.co, align 4, !tbaa !127 ; 3 uses
  %i.ach = icmp ugt i32 %i.acg, 16
  br i1 %i.ach, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.aci = icmp ne i64 %.unpack363, ptrtoint (ptr @_ZN6LibRaw20deflate_dng_load_rawEv to i64)
  %i.acj = icmp ne i64 %.unpack365, 0
  %i.ack = icmp ne i64 %.unpack363, ptrtoint (ptr @_ZN6LibRaw28uncompressed_fp_dng_load_rawEv to i64)
  %i.acl = and i1 %i.aci, %i.ack
  %or.cond432 = or i1 %i.acl, %i.acj
  br i1 %or.cond432, label %bb.fz, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.acm = icmp eq i64 %.unpack363, ptrtoint (ptr @_ZN6LibRaw20deflate_dng_load_rawEv to i64)
  %i.acn = icmp eq i64 %.unpack365, 0
  %i.aco = icmp eq i64 %.unpack363, ptrtoint (ptr @_ZN6LibRaw28uncompressed_fp_dng_load_rawEv to i64)
  %i.acp = or i1 %i.acm, %i.aco
  %or.cond434 = and i1 %i.acp, %i.acn
  br i1 %or.cond434, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.acq = add i32 %i.acg, -16
  %or.cond435 = icmp ult i32 %i.acq, 17
  %i.acr = and i32 %i.acg, 7
  %.not371 = icmp eq i32 %i.acr, 0
  %or.cond436 = and i1 %or.cond435, %.not371
  br i1 %or.cond436, label %bb.fx, label %bb.fz

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.acs = load i32, ptr %i.cw, align 8, !tbaa !132
  %i.act = icmp ugt i32 %i.acs, 4
  br i1 %i.act, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.acu = load i32, ptr %i.dk, align 4, !tbaa !99 ; 6 uses
  %i.acv = add i32 %i.acu, -5
  %or.cond437 = icmp ult i32 %i.acv, -4
  br i1 %or.cond437, label %bb.fz, label %.lr.ph513

.lr.ph513:                                        ; preds = %bb.fy
  %wide.trip.count580 = zext nneg i32 %i.acu to i64 ; 4 uses
  %trip.count.minus.1 = add nsw i64 %wide.trip.count580, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.acw = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.load = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dg, <4 x i1> %i.acw, <4 x float> poison), !tbaa !90
  %i.acx = fcmp reassoc nsz arcp contract afn ole <4 x float> %wide.masked.load, splat (float 1.000000e-03)
  %i.acy = select <4 x i1> %i.acw, <4 x i1> %i.acx, <4 x i1> zeroinitializer
  %.fr = freeze <4 x i1> %i.acy
  %i.acz = bitcast <4 x i1> %.fr to i4
  %.not686.not = icmp eq i4 %i.acz, 0
  %.pre598 = load float, ptr %i.dg, align 4, !tbaa !90 ; 3 uses
  br i1 %.not686.not, label %.lr.ph520.preheader, label %.critedge440

bb.fz:                                            ; preds = %bb.fu, %bb.fy, %bb.fx, %bb.fw, %bb.fs, %bb.fr, %bb.fq
  store i32 0, ptr %i.dd, align 8, !tbaa !121
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !213 ; 2 uses
  %.not418 = icmp eq ptr %i.adb, null
  br i1 %.not418, label %bb.ir, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !214
  %i.ade = call noundef i32 %i.adb(ptr noundef %i.add, i32 noundef 2, i32 noundef 1, i32 noundef 2)
  %.not419 = icmp eq i32 %i.ade, 0
  br i1 %.not419, label %bb.ir, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.adf = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.adf, align 16, !tbaa !188
  call void @__cxa_throw(ptr nonnull %i.adf, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #21
  unreachable

.lr.ph520.preheader:                              ; preds = %.lr.ph513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.adg = load float, ptr %i.dg, align 4, !tbaa !90 ; 2 uses
  %i.adh = fcmp reassoc nsz arcp contract afn olt float %.pre598, %i.adg
  %.0175..v = select i1 %i.adh, float %.pre598, float %i.adg ; 2 uses
  %.0175. = fpext float %.0175..v to double       ; 2 uses
  %exitcond586.not = icmp eq i32 %i.acu, 1
  br i1 %exitcond586.not, label %vector.ph670, label %.lr.ph520.1

vector.ph670:                                     ; preds = %.lr.ph520.3, %.lr.ph520.2, %.lr.ph520.1, %.lr.ph520.preheader
  %.0175..lcssa = phi double [ %.0175., %.lr.ph520.preheader ], [ %.0175..1, %.lr.ph520.1 ], [ %.0175..2, %.lr.ph520.2 ], [ %.0175..3, %.lr.ph520.3 ]
  %n.rnd.up671 = add nuw nsw i64 %wide.trip.count580, 3
  %n.vec672 = and i64 %n.rnd.up671, 12
  %trip.count.minus.1673 = add nsw i64 %wide.trip.count580, -1
  %broadcast.splatinsert674 = insertelement <4 x i64> poison, i64 %trip.count.minus.1673, i64 0
  %broadcast.splat675 = shufflevector <4 x i64> %broadcast.splatinsert674, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert676 = insertelement <4 x double> poison, double %.0175..lcssa, i64 0
  %broadcast.splat677 = shufflevector <4 x double> %broadcast.splatinsert676, <4 x double> poison, <4 x i32> zeroinitializer
  %i.adi = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat677
  br label %vector.body678

vector.body678:                                   ; preds = %vector.body678, %vector.ph670
  %index679 = phi i64 [ 0, %vector.ph670 ], [ %index.next682, %vector.body678 ] ; 3 uses
  %vec.ind680 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph670 ], [ %vec.ind.next683, %vector.body678 ] ; 2 uses
  %i.adj = icmp ule <4 x i64> %vec.ind680, %broadcast.splat675 ; 2 uses
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index679
  %wide.masked.load681 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.adk, <4 x i1> %i.adj, <4 x float> poison), !tbaa !90
  %i.adl = fpext reassoc nsz arcp contract afn <4 x float> %wide.masked.load681 to <4 x double>
  %i.adm = fmul reassoc nsz arcp contract afn <4 x double> %i.adl, %i.adi
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index679
  call void @llvm.masked.store.v4f64.p0(<4 x double> %i.adm, ptr align 16 %i.adn, <4 x i1> %i.adj), !tbaa !137
  %index.next682 = add nuw i64 %index679, 4       ; 2 uses
  %vec.ind.next683 = add nuw <4 x i64> %vec.ind680, splat (i64 4)
  %i.ado = icmp eq i64 %index.next682, %n.vec672
  br i1 %i.ado, label %.lr.ph533.preheader, label %vector.body678, !llvm.loop !158

.lr.ph520.1:                                      ; preds = %.lr.ph520.preheader
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.adq = load float, ptr %i.adp, align 8, !tbaa !90 ; 2 uses
  %i.adr = fpext reassoc nsz arcp contract afn float %i.adq to double
  %i.ads = fcmp reassoc nsz arcp contract afn olt float %.0175..v, %i.adq
  %.0175..1 = select reassoc nsz arcp contract afn i1 %i.ads, double %.0175., double %i.adr ; 3 uses
  %exitcond586.not.1 = icmp eq i32 %i.acu, 2
  br i1 %exitcond586.not.1, label %vector.ph670, label %.lr.ph520.2

.lr.ph520.2:                                      ; preds = %.lr.ph520.1
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 153260
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !90
  %i.adv = fpext reassoc nsz arcp contract afn float %i.adu to double ; 2 uses
  %i.adw = fcmp reassoc nsz arcp contract afn olt double %.0175..1, %i.adv
  %.0175..2 = select reassoc nsz arcp contract afn i1 %i.adw, double %.0175..1, double %i.adv ; 3 uses
  %exitcond586.not.2 = icmp eq i32 %i.acu, 3
  br i1 %exitcond586.not.2, label %vector.ph670, label %.lr.ph520.3

.lr.ph520.3:                                      ; preds = %.lr.ph520.2
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 153264
  %i.ady = load float, ptr %i.adx, align 8, !tbaa !90
  %i.adz = fpext reassoc nsz arcp contract afn float %i.ady to double ; 2 uses
  %i.aea = fcmp reassoc nsz arcp contract afn olt double %.0175..2, %i.adz
  %.0175..3 = select reassoc nsz arcp contract afn i1 %i.aea, double %.0175..2, double %i.adz
  br label %vector.ph670

.lr.ph533.preheader:                              ; preds = %vector.body678
  %.pre597 = load double, ptr %i.g, align 16, !tbaa !137 ; 4 uses
  %i.aeb = add nsw i32 %i.acu, -1
  %i.aec = icmp ult i32 %i.aeb, 7
  br i1 %i.aec, label %.lr.ph533.epil.preheader, label %.lr.ph533

.lr.ph533:                                        ; preds = %.lr.ph533.preheader, %.lr.ph533
  %indvars.iv592 = phi i64 [ %indvars.iv.next593.7, %.lr.ph533 ], [ 0, %.lr.ph533.preheader ] ; 9 uses
  %.0531 = phi double [ %i.afx, %.lr.ph533 ], [ %.pre597, %.lr.ph533.preheader ] ; 2 uses
  %.1530 = phi double [ %.1..7, %.lr.ph533 ], [ %.pre597, %.lr.ph533.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph533 ], [ 0, %.lr.ph533.preheader ]
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv592
  %i.aee = load double, ptr %i.aed, align 16, !tbaa !137 ; 4 uses
  %i.aef = fcmp reassoc nsz arcp contract afn olt double %.1530, %i.aee
  %.1. = select reassoc nsz arcp contract afn i1 %i.aef, double %.1530, double %i.aee ; 2 uses
  %i.aeg = fcmp reassoc nsz arcp contract afn ogt double %.0531, %i.aee
  %i.aeh = select reassoc nsz arcp contract afn i1 %i.aeg, double %.0531, double %i.aee ; 2 uses
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv592
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  %i.aek = load double, ptr %i.aej, align 8, !tbaa !137 ; 4 uses
  %i.ael = fcmp reassoc nsz arcp contract afn olt double %.1., %i.aek
  %.1..1 = select reassoc nsz arcp contract afn i1 %i.ael, double %.1., double %i.aek ; 2 uses
  %i.aem = fcmp reassoc nsz arcp contract afn ogt double %i.aeh, %i.aek
  %i.aen = select reassoc nsz arcp contract afn i1 %i.aem, double %i.aeh, double %i.aek ; 2 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv592
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  %i.aeq = load double, ptr %i.aep, align 16, !tbaa !137 ; 4 uses
  %i.aer = fcmp reassoc nsz arcp contract afn olt double %.1..1, %i.aeq
  %.1..2 = select reassoc nsz arcp contract afn i1 %i.aer, double %.1..1, double %i.aeq ; 2 uses
  %i.aes = fcmp reassoc nsz arcp contract afn ogt double %i.aen, %i.aeq
  %i.aet = select reassoc nsz arcp contract afn i1 %i.aes, double %i.aen, double %i.aeq ; 2 uses
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv592
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 24
  %i.aew = load double, ptr %i.aev, align 8, !tbaa !137 ; 4 uses
  %i.aex = fcmp reassoc nsz arcp contract afn olt double %.1..2, %i.aew
  %.1..3 = select reassoc nsz arcp contract afn i1 %i.aex, double %.1..2, double %i.aew ; 2 uses
  %i.aey = fcmp reassoc nsz arcp contract afn ogt double %i.aet, %i.aew
  %i.aez = select reassoc nsz arcp contract afn i1 %i.aey, double %i.aet, double %i.aew ; 2 uses
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv592
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 32
  %i.afc = load double, ptr %i.afb, align 16, !tbaa !137 ; 4 uses
  %i.afd = fcmp reassoc nsz arcp contract afn olt double %.1..3, %i.afc
  %.1..4 = select reassoc nsz arcp contract afn i1 %i.afd, double %.1..3, double %i.afc ; 2 uses
  %i.afe = fcmp reassoc nsz arcp contract afn ogt double %i.aez, %i.afc
  %i.aff = select reassoc nsz arcp contract afn i1 %i.afe, double %i.aez, double %i.afc ; 2 uses
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv592
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 40
  %i.afi = load double, ptr %i.afh, align 8, !tbaa !137 ; 4 uses
  %i.afj = fcmp reassoc nsz arcp contract afn olt double %.1..4, %i.afi
  %.1..5 = select reassoc nsz arcp contract afn i1 %i.afj, double %.1..4, double %i.afi ; 2 uses
  %i.afk = fcmp reassoc nsz arcp contract afn ogt double %i.aff, %i.afi
  %i.afl = select reassoc nsz arcp contract afn i1 %i.afk, double %i.aff, double %i.afi ; 2 uses
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv592
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 48
  %i.afo = load double, ptr %i.afn, align 16, !tbaa !137 ; 4 uses
  %i.afp = fcmp reassoc nsz arcp contract afn olt double %.1..5, %i.afo
  %.1..6 = select reassoc nsz arcp contract afn i1 %i.afp, double %.1..5, double %i.afo ; 2 uses
  %i.afq = fcmp reassoc nsz arcp contract afn ogt double %i.afl, %i.afo
  %i.afr = select reassoc nsz arcp contract afn i1 %i.afq, double %i.afl, double %i.afo ; 2 uses
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv592
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 56
  %i.afu = load double, ptr %i.aft, align 8, !tbaa !137 ; 4 uses
  %i.afv = fcmp reassoc nsz arcp contract afn olt double %.1..6, %i.afu
  %.1..7 = select reassoc nsz arcp contract afn i1 %i.afv, double %.1..6, double %i.afu ; 2 uses
  %i.afw = fcmp reassoc nsz arcp contract afn ogt double %i.afr, %i.afu
  %i.afx = select reassoc nsz arcp contract afn i1 %i.afw, double %i.afr, double %i.afu ; 2 uses
  %indvars.iv.next593.7 = add nuw nsw i64 %indvars.iv592, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, 0
  br i1 %niter.ncmp.7, label %.lr.ph533.epil.preheader, label %.lr.ph533, !llvm.loop !159

.lr.ph533.epil.preheader:                         ; preds = %.lr.ph533, %.lr.ph533.preheader
  %indvars.iv592.epil.init = phi i64 [ 0, %.lr.ph533.preheader ], [ %indvars.iv.next593.7, %.lr.ph533 ]
  %.0531.epil.init = phi double [ %.pre597, %.lr.ph533.preheader ], [ %i.afx, %.lr.ph533 ]
  %.1530.epil.init = phi double [ %.pre597, %.lr.ph533.preheader ], [ %.1..7, %.lr.ph533 ]
  br label %.lr.ph533.epil

.lr.ph533.epil:                                   ; preds = %.lr.ph533.epil, %.lr.ph533.epil.preheader
  %indvars.iv592.epil = phi i64 [ %indvars.iv592.epil.init, %.lr.ph533.epil.preheader ], [ %indvars.iv.next593.epil, %.lr.ph533.epil ] ; 2 uses
  %.0531.epil = phi double [ %.0531.epil.init, %.lr.ph533.epil.preheader ], [ %i.agc, %.lr.ph533.epil ] ; 2 uses
  %.1530.epil = phi double [ %.1530.epil.init, %.lr.ph533.epil.preheader ], [ %.1..epil, %.lr.ph533.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph533.epil.preheader ], [ %epil.iter.next, %.lr.ph533.epil ]
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv592.epil
  %i.afz = load double, ptr %i.afy, align 8, !tbaa !137 ; 4 uses
  %i.aga = fcmp reassoc nsz arcp contract afn olt double %.1530.epil, %i.afz
  %.1..epil = select reassoc nsz arcp contract afn i1 %i.aga, double %.1530.epil, double %i.afz ; 2 uses
  %i.agb = fcmp reassoc nsz arcp contract afn ogt double %.0531.epil, %i.afz
  %i.agc = select reassoc nsz arcp contract afn i1 %i.agb, double %.0531.epil, double %i.afz ; 2 uses
  %indvars.iv.next593.epil = add nuw nsw i64 %indvars.iv592.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %wide.trip.count580
  br i1 %epil.iter.cmp.not, label %._crit_edge534, label %.lr.ph533.epil, !llvm.loop !160

._crit_edge534:                                   ; preds = %.lr.ph533.epil
  %i.agd = fcmp reassoc nsz arcp contract afn ole double %.1..epil, f0x3F847AE140000000
  %i.age = fcmp reassoc nsz arcp contract afn ogt double %i.agc, 1.000000e+02
  %or.cond20 = select i1 %i.agd, i1 true, i1 %i.age
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br i1 %or.cond20, label %.critedge440, label %bb.ge

.critedge440:                                     ; preds = %.lr.ph513, %._crit_edge534
  %i.agf = fcmp reassoc nsz arcp contract afn ogt float %.pre598, 0.000000e+00
  br i1 %i.agf, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %.critedge440
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !90
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %.critedge440
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float 0.000000e+00, ptr %i.agg, align 8, !tbaa !90
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %._crit_edge534
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 5396
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !218
  %i.agj = getelementptr inbounds nuw i8, ptr %0, i64 5392
  %i.agk = load i32, ptr %i.agj, align 8, !tbaa !219
  %.not374 = icmp eq i32 %i.agk, 0
  br i1 %.not374, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.agl = load i32, ptr %i.cs, align 4, !tbaa !131
  %i.agm = icmp ne i32 %i.agl, 0
  %i.agn = zext i1 %i.agm to i32
  %i.ago = or disjoint i32 %i.agn, 2
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.agp = phi i32 [ 3, %bb.ge ], [ %i.ago, %bb.gf ]
  %i.agq = and i32 %i.agp, %i.agi
  %.not375 = icmp eq i32 %i.agq, 0
  br i1 %.not375, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.agr = load float, ptr %i.dh, align 4, !tbaa !90
  %i.ags = fcmp reassoc nsz arcp contract afn ogt float %i.agr, 1.250000e-01
  br i1 %i.ags, label %.thread465, label %bb.gi

.thread465:                                       ; preds = %bb.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.di, ptr noundef nonnull align 4 dereferenceable(48) %i.dh, i64 48, i1 false)
  store i32 0, ptr %i.dc, align 4, !tbaa !178
  br label %bb.gk

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.pr464 = load i32, ptr %i.dc, align 4, !tbaa !178
  %.not376 = icmp eq i32 %.pr464, 0
  br i1 %.not376, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.agt = load i32, ptr %i.ak, align 4, !tbaa !220
  %.not377 = icmp eq i32 %i.agt, 0
  br i1 %.not377, label %.sink.split643, label %bb.gk

bb.gk:                                            ; preds = %.thread465, %bb.gj, %bb.gi
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 153428
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !90
  %i.agw = fpext reassoc nsz arcp contract afn float %i.agv to double
  %i.agx = fcmp reassoc nsz arcp contract afn olt double %i.agw, 1.000000e-02
  br i1 %i.agx, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.agy = load i32, ptr %i.ak, align 4, !tbaa !220
  %.not378 = icmp eq i32 %i.agy, 0
  br i1 %.not378, label %.sink.split643, label %bb.gm

.sink.split643:                                   ; preds = %bb.gl, %bb.gj
  %.sink646 = phi i32 [ 0, %bb.gj ], [ 1, %bb.gl ]
  %i.agz = load i32, ptr %i.ag, align 4, !tbaa !79
  %i.aha = load ptr, ptr %0, align 8, !tbaa !105
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 72
  %i.ahc = load ptr, ptr %i.ahb, align 8
  %i.ahd = call noundef i32 %i.ahc(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.agz, ptr noundef nonnull %i.ai, i32 noundef %.sink646)
  store i32 %i.ahd, ptr %i.ak, align 4, !tbaa !220
  br label %bb.gm

bb.gm:                                            ; preds = %.sink.split643, %bb.gk, %bb.gl
  %.unpack380 = load i64, ptr %i.cl, align 8, !tbaa !119
  %.unpack382 = load i64, ptr %.repack235, align 8, !tbaa !119
  %i.ahe = icmp eq i64 %.unpack380, ptrtoint (ptr @_ZN6LibRaw19kodak_radc_load_rawEv to i64)
  %i.ahf = icmp eq i64 %.unpack382, 0
  %i.ahg = and i1 %i.ahe, %i.ahf
  br i1 %i.ahg, label %bb.gn, label %bb.gq

bb.gn:                                            ; preds = %bb.gm
  %i.ahh = load i32, ptr %i.dc, align 4, !tbaa !178
  %.not383 = icmp eq i32 %i.ahh, 0
  br i1 %.not383, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ahi = load i32, ptr %i.ak, align 4, !tbaa !220
  %.not384 = icmp eq i32 %i.ahi, 0
  br i1 %.not384, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.ahj = load ptr, ptr %0, align 8, !tbaa !105
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 72
  %i.ahl = load ptr, ptr %i.ahk, align 8
  %i.ahm = call noundef i32 %i.ahl(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 3, ptr noundef nonnull @.str.50, i32 noundef 0), !call_target !229
  store i32 %i.ahm, ptr %i.ak, align 4, !tbaa !220
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gn, %bb.go, %bb.gp, %bb.gm
  %i.ahn = load i32, ptr %i.ag, align 4, !tbaa !79 ; 2 uses
  %.not385 = icmp eq i32 %i.ahn, 0
  br i1 %.not385, label %bb.gt, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aho = load i8, ptr %i.ai, align 4, !tbaa !80
  %.not386 = icmp eq i8 %i.aho, 0
  br i1 %.not386, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @_ZN6LibRaw22SetStandardIlluminantsEjPKc(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ahn, ptr noundef nonnull %i.ai)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %bb.gq
  %i.ahp = load i16, ptr %i.q, align 2, !tbaa !163
  %.not387 = icmp eq i16 %i.ahp, 0
  br i1 %.not387, label %.thread469, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ahq = load i32, ptr %i.cs, align 4, !tbaa !131
  %.not388 = icmp eq i32 %i.ahq, 0
  br i1 %.not388, label %bb.gv, label %.thread471

bb.gv:                                            ; preds = %bb.gu
  %i.ahr = getelementptr inbounds nuw i8, ptr %0, i64 5596
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !139
  %i.aht = and i32 %i.ahs, 65536
  %.not389 = icmp eq i32 %i.aht, 0
  br i1 %.not389, label %bb.gw, label %.thread471

bb.gw:                                            ; preds = %bb.gv
  store i16 0, ptr %i.q, align 2, !tbaa !163
  br label %.thread469

.thread471:                                       ; preds = %bb.gv, %bb.gu
  %i.ahu = load i16, ptr %i.u, align 2, !tbaa !125
  %i.ahv = load i32, ptr %i.p, align 4, !tbaa !140 ; 2 uses
  %.not391 = icmp eq i32 %i.ahv, 0
  %i.ahw = zext i1 %.not391 to i16
  %i.ahx = lshr i16 %i.ahu, %i.ahw                ; 3 uses
  store i16 %i.ahx, ptr %i.q, align 2, !tbaa !163
  %i.ahy = and i16 %i.ahx, 1
  %.not392 = icmp eq i16 %i.ahy, 0
  %i.ahz = select i1 %.not392, i32 1229539657, i32 -1802201964
  store i32 %i.ahz, ptr %i.k, align 8, !tbaa !82
  %i.aia = load i16, ptr %i.v, align 4, !tbaa !126
  %i.aib = zext i16 %i.aia to i32
  %i.aic = lshr i32 %i.aib, %i.ahv
  %i.aid = trunc nuw i32 %i.aic to i16
  %i.aie = add i16 %i.ahx, %i.aid                 ; 5 uses
  store i16 %i.aie, ptr %i.u, align 2, !tbaa !125
  %i.aif = add i16 %i.aie, -1                     ; 4 uses
  store i16 %i.aif, ptr %i.v, align 4, !tbaa !126
  store double 1.000000e+00, ptr %i.de, align 8, !tbaa !98
  %i.aig = zext i16 %i.aie to i64
  %i.aih = zext i16 %i.aif to i64
  %i.aii = mul nuw nsw i64 %i.aih, %i.aig
  %i.aij = load i16, ptr %i.r, align 2, !tbaa !123 ; 3 uses
  %i.aik = zext i16 %i.aij to i64
  %i.ail = load i16, ptr %i.l, align 8, !tbaa !124 ; 3 uses
  %i.aim = zext i16 %i.ail to i64
  %i.ain = shl nuw nsw i64 %i.aik, 3
  %i.aio = mul nuw nsw i64 %i.ain, %i.aim
  %i.aip = icmp samesign ugt i64 %i.aii, %i.aio
  br i1 %i.aip, label %bb.gx, label %bb.hb

bb.gx:                                            ; preds = %.thread471
  store i32 0, ptr %i.dd, align 8, !tbaa !121
  br label %bb.hb

.thread469:                                       ; preds = %bb.gt, %bb.gw
  %i.aiq = load i16, ptr %i.l, align 8, !tbaa !124 ; 2 uses
  %i.air = load i16, ptr %i.v, align 4, !tbaa !126 ; 5 uses
  %i.ais = icmp ult i16 %i.aiq, %i.air
  br i1 %i.ais, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %.thread469
  store i16 %i.air, ptr %i.l, align 8, !tbaa !124
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %.thread469
  %i.ait = phi i16 [ %i.air, %bb.gy ], [ %i.aiq, %.thread469 ] ; 2 uses
  %i.aiu = load i16, ptr %i.r, align 2, !tbaa !123 ; 2 uses
  %i.aiv = load i16, ptr %i.u, align 2, !tbaa !125 ; 5 uses
  %i.aiw = icmp ult i16 %i.aiu, %i.aiv
  br i1 %i.aiw, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  store i16 %i.aiv, ptr %i.r, align 2, !tbaa !123
  br label %bb.hb

bb.hb:                                            ; preds = %bb.gz, %bb.ha, %.thread471, %bb.gx
  %i.aix = phi i16 [ %i.ait, %bb.gz ], [ %i.ait, %bb.ha ], [ %i.ail, %.thread471 ], [ %i.ail, %bb.gx ] ; 4 uses
end_hunk_0
