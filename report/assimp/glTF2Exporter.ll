inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp13glTF2Exporter12ExportMeshesEv:bb.a

bb.ev:                                            ; preds = %bb.eu
  %i.ako = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.akp = load ptr, ptr %i.ako, align 8          ; 2 uses
  %i.akq = ptrtoint ptr %i.akp to i64
  %i.akr = ptrtoint ptr %.pre1016 to i64
  %i.aks = sub i64 %i.akq, %i.akr                 ; 2 uses
  %i.akt = ashr exact i64 %i.aks, 6               ; 3 uses
  %i.aku = icmp ugt i64 %i.akt, 288230376151711743
  %i.akv = select i1 %i.aku, i64 -1, i64 %i.aks
  %i.akw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.akv) #33
          to label %.preheader769 unwind label %bb.ex ; 3 uses

.preheader769:                                    ; preds = %bb.ev
  %.not946 = icmp eq ptr %i.akp, %.pre1016
  br i1 %.not946, label %._crit_edge930, label %.lr.ph929

._crit_edge930:                                   ; preds = %.lr.ph929, %.preheader769
  %i.akx = load ptr, ptr %i.af, align 8
  %i.aky = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %i.akx, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %i.akt, ptr noundef nonnull %i.akw, i32 noundef 6, i32 noundef 6, i32 noundef 5126, i32 noundef 0)
          to label %bb.ey unwind label %bb.fa     ; 2 uses

bb.ew:                                            ; preds = %._crit_edge927
  %i.akz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.ex:                                            ; preds = %bb.ev
  %i.ala = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

.lr.ph929:                                        ; preds = %.preheader769, %.lr.ph929
  %indvars.iv993 = phi i64 [ %indvars.iv.next994, %.lr.ph929 ], [ 0, %.preheader769 ] ; 3 uses
  %i.alb = getelementptr inbounds nuw [64 x i8], ptr %.pre1016, i64 %indvars.iv993 ; 16 uses
  %i.alc = getelementptr inbounds nuw [64 x i8], ptr %i.akw, i64 %indvars.iv993 ; 16 uses
  %i.ald = load float, ptr %i.alb, align 4
  store float %i.ald, ptr %i.alc, align 4
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %i.alf = load float, ptr %i.ale, align 4
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alc, i64 4
  store float %i.alf, ptr %i.alg, align 4
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alb, i64 32
  %i.ali = load float, ptr %i.alh, align 4
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  store float %i.ali, ptr %i.alj, align 4
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alb, i64 48
  %i.all = load float, ptr %i.alk, align 4
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alc, i64 12
  store float %i.all, ptr %i.alm, align 4
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alb, i64 4
  %i.alo = load float, ptr %i.aln, align 4
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  store float %i.alo, ptr %i.alp, align 4
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alb, i64 20
  %i.alr = load float, ptr %i.alq, align 4
  %i.als = getelementptr inbounds nuw i8, ptr %i.alc, i64 20
  store float %i.alr, ptr %i.als, align 4
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alb, i64 36
  %i.alu = load float, ptr %i.alt, align 4
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alc, i64 24
  store float %i.alu, ptr %i.alv, align 4
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alb, i64 52
  %i.alx = load float, ptr %i.alw, align 4
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alc, i64 28
  store float %i.alx, ptr %i.aly, align 4
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.ama = load float, ptr %i.alz, align 4
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alc, i64 32
  store float %i.ama, ptr %i.amb, align 4
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alb, i64 24
  %i.amd = load float, ptr %i.amc, align 4
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alc, i64 36
  store float %i.amd, ptr %i.ame, align 4
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alb, i64 40
  %i.amg = load float, ptr %i.amf, align 4
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alc, i64 40
  store float %i.amg, ptr %i.amh, align 4
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alb, i64 56
  %i.amj = load float, ptr %i.ami, align 4
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alc, i64 44
  store float %i.amj, ptr %i.amk, align 4
  %i.aml = getelementptr inbounds nuw i8, ptr %i.alb, i64 12
  %i.amm = load float, ptr %i.aml, align 4
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alc, i64 48
  store float %i.amm, ptr %i.amn, align 4
  %i.amo = getelementptr inbounds nuw i8, ptr %i.alb, i64 28
  %i.amp = load float, ptr %i.amo, align 4
  %i.amq = getelementptr inbounds nuw i8, ptr %i.alc, i64 52
  store float %i.amp, ptr %i.amq, align 4
  %i.amr = getelementptr inbounds nuw i8, ptr %i.alb, i64 44
  %i.ams = load float, ptr %i.amr, align 4
  %i.amt = getelementptr inbounds nuw i8, ptr %i.alc, i64 56
  store float %i.ams, ptr %i.amt, align 4
  %i.amu = getelementptr inbounds nuw i8, ptr %i.alb, i64 60
  %i.amv = load float, ptr %i.amu, align 4
  %i.amw = getelementptr inbounds nuw i8, ptr %i.alc, i64 60
  store float %i.amv, ptr %i.amw, align 4
  %indvars.iv.next994 = add i64 %indvars.iv993, 1 ; 2 uses
  %i.amx = and i64 %indvars.iv.next994, 4294967295
  %i.amy = icmp ugt i64 %i.akt, %i.amx
  br i1 %i.amy, label %.lr.ph929, label %._crit_edge930, !llvm.loop !81

bb.ey:                                            ; preds = %._crit_edge930
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.aky, 0 ; 4 uses
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.aky, 1 ; 2 uses
  %.not.i596 = icmp eq ptr %.fca.0.extract16, null
  br i1 %.not.i596, label %._ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread_crit_edge, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597

._ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread_crit_edge: ; preds = %bb.ey
  %.pre1008 = load ptr, ptr %6, align 8
  %.pre1010 = load i32, ptr %i.dj, align 8
  br label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597: ; preds = %bb.ey
  %i.amz = zext i32 %.fca.1.extract17 to i64
  %i.ana = getelementptr inbounds nuw i8, ptr %.fca.0.extract16, i64 8
  %i.anb = load ptr, ptr %i.ana, align 8
  %i.anc = load ptr, ptr %.fca.0.extract16, align 8
  %i.and = ptrtoint ptr %i.anb to i64
  %i.ane = ptrtoint ptr %i.anc to i64
  %i.anf = sub i64 %i.and, %i.ane
  %i.ang = ashr exact i64 %i.anf, 3
  %i.anh = icmp ugt i64 %i.ang, %i.amz
  %.pre1009 = load ptr, ptr %6, align 8           ; 3 uses
  %.pre1011 = load i32, ptr %i.dj, align 8        ; 3 uses
  br i1 %i.anh, label %bb.ez, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread

bb.ez:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597
  %i.ani = zext i32 %.pre1011 to i64
  %i.anj = load ptr, ptr %.pre1009, align 8
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %i.anj, i64 %i.ani
  %i.anl = load ptr, ptr %i.ank, align 8          ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 336
  store ptr %.fca.0.extract16, ptr %i.anm, align 8
  %.sroa.6671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.anl, i64 344
  store i32 %.fca.1.extract17, ptr %.sroa.6671.0..sroa_idx, align 8
  br label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread

bb.fa:                                            ; preds = %._crit_edge930
  %i.ann = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread: ; preds = %._ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread_crit_edge, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597, %bb.ez
  %i.ano = phi i32 [ %.pre1010, %._ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread_crit_edge ], [ %.pre1011, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597 ], [ %.pre1011, %bb.ez ]
  %i.anp = phi ptr [ %.pre1008, %._ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread_crit_edge ], [ %.pre1009, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597 ], [ %.pre1009, %bb.ez ] ; 3 uses
  %i.anq = zext i32 %i.ano to i64                 ; 3 uses
  %i.anr = load ptr, ptr %i.anp, align 8
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %i.anr, i64 %i.anq
  %i.ant = load ptr, ptr %i.ans, align 8
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 328
  store i8 %i.akn, ptr %i.anu, align 8
  %i.anv = load ptr, ptr %i.anp, align 8
  %i.anw = getelementptr inbounds nuw [8 x i8], ptr %i.anv, i64 %i.anq
  %i.anx = load ptr, ptr %i.anw, align 8          ; 7 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 264
  store float 1.000000e+00, ptr %i.any, align 4
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anx, i64 268
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anx, i64 284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.anz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aoa, align 4
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anx, i64 288
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anx, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aob, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aoc, align 4
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anx, i64 308
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anx, i64 324
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aod, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aoe, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.aof = load ptr, ptr %i.af, align 8           ; 4 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 2312
  store ptr %i.aog, ptr %13, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %.sroa.215.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  store ptr null, ptr %14, align 8
  %i.aoh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i32 0, ptr %i.aoh, align 8
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aof, i64 2080
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aof, i64 2088
  %i.aok = load ptr, ptr %i.aoj, align 8
  %i.aol = load ptr, ptr %i.aoi, align 8          ; 2 uses
  %i.aom = ptrtoint ptr %i.aok to i64
  %i.aon = ptrtoint ptr %i.aol to i64
  %i.aoo = sub i64 %i.aom, %i.aon
  %i.aop = and i64 %i.aoo, 34359738360
  %.not947 = icmp eq i64 %i.aop, 0
  br i1 %.not947, label %._crit_edge935, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit597.thread
  %i.aoq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %i.aos = phi ptr [ %i.aof, %.preheader.lr.ph ], [ %i.asj, %.critedge ] ; 2 uses
  %indvars.iv996 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next997, %.critedge ] ; 2 uses
  %i.aot = phi ptr [ %i.aol, %.preheader.lr.ph ], [ %i.asn, %.critedge ]
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr %i.aot, i64 %indvars.iv996
  %i.aov = load ptr, ptr %i.aou, align 8          ; 4 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 264
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aov, i64 272
  %i.aoy = load ptr, ptr %i.aox, align 8          ; 2 uses
  %i.aoz = load ptr, ptr %i.aow, align 8          ; 3 uses
  %i.apa = ptrtoint ptr %i.aoy to i64
  %i.apb = ptrtoint ptr %i.aoz to i64
  %i.apc = sub i64 %i.apa, %i.apb
  %i.apd = sdiv exact i64 %i.apc, 264
  %.not948 = icmp eq ptr %i.aoy, %i.aoz
  br i1 %.not948, label %.critedge, label %.lr.ph933

bb.fb:                                            ; preds = %.lr.ph933
  %i.ape = add i32 %.0323932, 1                   ; 2 uses
  %i.apf = zext i32 %i.ape to i64                 ; 2 uses
  %i.apg = icmp ugt i64 %i.apd, %i.apf
  br i1 %i.apg, label %.lr.ph933, label %.critedge, !llvm.loop !82

.lr.ph933:                                        ; preds = %.preheader, %bb.fb
  %i.aph = phi i64 [ %i.apf, %bb.fb ], [ 0, %.preheader ]
  %.0323932 = phi i32 [ %i.ape, %bb.fb ], [ 0, %.preheader ]
  %i.api = getelementptr inbounds nuw [264 x i8], ptr %i.aoz, i64 %i.aph ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 176
  %i.apk = load ptr, ptr %i.apj, align 8
  %i.apl = getelementptr inbounds nuw i8, ptr %i.api, i64 184
  %i.apm = load ptr, ptr %i.apl, align 8
  %i.apn = icmp eq ptr %i.apk, %i.apm
  br i1 %i.apn, label %bb.fb, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph933
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aov, i64 16
  store ptr %i.aoq, ptr %15, align 8
  %i.app = load ptr, ptr %i.apo, align 8          ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aov, i64 24
  %i.apr = load i64, ptr %i.apq, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.apr, ptr %i.a, align 8
  %i.aps = icmp ugt i64 %i.apr, 15
  br i1 %i.aps, label %.noexc.i603, label %._crit_edge.i.i602

.noexc.i603:                                      ; preds = %bb.fc
  %i.apt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc604 unwind label %bb.fo ; 2 uses

.noexc604:                                        ; preds = %.noexc.i603
  store ptr %i.apt, ptr %15, align 8
  %i.apu = load i64, ptr %i.a, align 8
  store i64 %i.apu, ptr %i.aoq, align 8
  br label %._crit_edge.i.i602

._crit_edge.i.i602:                               ; preds = %.noexc604, %bb.fc
  %i.apv = phi ptr [ %i.apt, %.noexc604 ], [ %i.aoq, %bb.fc ] ; 2 uses
  switch i64 %i.apr, label %bb.fe [
    i64 1, label %bb.fd
    i64 0, label %bb.ff
  ]

bb.fd:                                            ; preds = %._crit_edge.i.i602
  %i.apw = load i8, ptr %i.app, align 1
  store i8 %i.apw, ptr %i.apv, align 1
  br label %bb.ff

bb.fe:                                            ; preds = %._crit_edge.i.i602
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apv, ptr align 1 %i.app, i64 %i.apr, i1 false)
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %._crit_edge.i.i602
  %i.apx = load i64, ptr %i.a, align 8            ; 2 uses
  store i64 %i.apx, ptr %i.aor, align 8
  %i.apy = load ptr, ptr %15, align 8
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 %i.apx
  store i8 0, ptr %i.apz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.aqa = call noundef zeroext i1 @_Z12FindMeshNodeRN10glTFCommon3RefIN5glTF24NodeEEES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.aqb = load ptr, ptr %i.anp, align 8
  %i.aqc = getelementptr inbounds nuw [8 x i8], ptr %i.aqb, i64 %i.anq
  %i.aqd = load ptr, ptr %i.aqc, align 8
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 352
  %i.aqf = load ptr, ptr %i.aqe, align 8          ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %.sroa.05.0.copyload.i = load ptr, ptr %i.aqf, align 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.pre.i605 = load ptr, ptr %.sroa.05.0.copyload.i, align 8
  %.phi.trans.insert.i = zext i32 %.sroa.7.0.copyload.i to i64
  %.phi.trans.insert13.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i605, i64 %.phi.trans.insert.i
  %.pre14.i = load ptr, ptr %.phi.trans.insert13.i, align 8
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fh, %bb.ff
  %i.aqg = phi ptr [ %.pre14.i, %bb.ff ], [ %i.aqs, %bb.fh ] ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 536
  %.sroa.05.0.copyload7.i = load ptr, ptr %i.aqh, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.aqg, i64 544
  %.sroa.7.0.copyload9.i = load i32, ptr %.sroa.7.0..sroa_idx8.i, align 8 ; 3 uses
  %.not.i.i606 = icmp eq ptr %.sroa.05.0.copyload7.i, null
  br i1 %.not.i.i606, label %bb.fi, label %_ZNK10glTFCommon3RefIN5glTF24NodeEEcvbEv.exit.i

_ZNK10glTFCommon3RefIN5glTF24NodeEEcvbEv.exit.i:  ; preds = %bb.fg
  %i.aqi = zext i32 %.sroa.7.0.copyload9.i to i64 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload7.i, i64 8
  %i.aqk = load ptr, ptr %i.aqj, align 8
  %i.aql = load ptr, ptr %.sroa.05.0.copyload7.i, align 8 ; 2 uses
  %i.aqm = ptrtoint ptr %i.aqk to i64
  %i.aqn = ptrtoint ptr %i.aql to i64
  %i.aqo = sub i64 %i.aqm, %i.aqn
  %i.aqp = ashr exact i64 %i.aqo, 3
  %i.aqq = icmp ugt i64 %i.aqp, %i.aqi
  br i1 %i.aqq, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF24NodeEEcvbEv.exit.i
  %i.aqr = getelementptr inbounds nuw [8 x i8], ptr %i.aql, i64 %i.aqi
  %i.aqs = load ptr, ptr %i.aqr, align 8          ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 512
  %i.aqu = load i64, ptr %i.aqt, align 8
  %i.aqv = icmp eq i64 %i.aqu, 0
  br i1 %i.aqv, label %bb.fi, label %bb.fg, !llvm.loop !83

bb.fi:                                            ; preds = %bb.fh, %_ZNK10glTFCommon3RefIN5glTF24NodeEEcvbEv.exit.i, %bb.fg
  %.pre1012 = load ptr, ptr %14, align 8          ; 2 uses
  %.pre1013 = load i32, ptr %i.aoh, align 8
  %i.aqw = zext i32 %.pre1013 to i64              ; 2 uses
  br i1 %i.fs, label %bb.fj, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit

bb.fj:                                            ; preds = %bb.fi
  %i.aqx = load ptr, ptr %.pre1012, align 8
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr %i.aqx, i64 %i.aqw
  %i.aqz = load ptr, ptr %i.aqy, align 8          ; 3 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 464 ; 2 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqz, i64 472 ; 4 uses
  %i.arc = load ptr, ptr %i.arb, align 8          ; 6 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqz, i64 480 ; 2 uses
  %i.are = load ptr, ptr %i.ard, align 8
  %.not.i609 = icmp eq ptr %i.arc, %i.are
  br i1 %.not.i609, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  store ptr %.sroa.05.0.copyload7.i, ptr %i.arc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.arc, i64 8
  store i32 %.sroa.7.0.copyload9.i, ptr %.sroa.6.0..sroa_idx, align 8
  %i.arf = load ptr, ptr %i.arb, align 8
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 16
  store ptr %i.arg, ptr %i.arb, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit

bb.fl:                                            ; preds = %bb.fj
  %i.arh = load ptr, ptr %i.ara, align 8          ; 5 uses
  %i.ari = ptrtoint ptr %i.arc to i64
  %i.arj = ptrtoint ptr %i.arh to i64
  %i.ark = sub i64 %i.ari, %i.arj                 ; 4 uses
  %i.arl = icmp eq i64 %i.ark, 9223372036854775792
  br i1 %i.arl, label %bb.fm, label %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
          to label %.noexc619 unwind label %.loopexit.split-lp

.noexc619:                                        ; preds = %bb.fm
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.fl
  %i.arm = ashr exact i64 %i.ark, 4               ; 3 uses
  %.sroa.speculated.i.i.i610 = call i64 @llvm.umax.i64(i64 %i.arm, i64 1)
  %i.arn = add nsw i64 %.sroa.speculated.i.i.i610, %i.arm ; 2 uses
  %i.aro = icmp ult i64 %i.arn, %i.arm
  %i.arp = call i64 @llvm.umin.i64(i64 %i.arn, i64 576460752303423487)
  %i.arq = select i1 %i.aro, i64 576460752303423487, i64 %i.arp ; 3 uses
  %.not.i.i.i611 = icmp ne i64 %i.arq, 0
  call void @llvm.assume(i1 %.not.i.i.i611)
  %i.arr = shl nuw nsw i64 %i.arq, 4
  %i.ars = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.arr) #33
          to label %.noexc620 unwind label %.loopexit ; 5 uses

.noexc620:                                        ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 %i.ark ; 2 uses
  store ptr %.sroa.05.0.copyload7.i, ptr %i.art, align 8
  %.sroa.6.0..sroa_idx660 = getelementptr inbounds nuw i8, ptr %i.art, i64 8
  store i32 %.sroa.7.0.copyload9.i, ptr %.sroa.6.0..sroa_idx660, align 8
  %.not10.i.i.i.i.i612 = icmp eq ptr %i.arh, %i.arc
  br i1 %.not10.i.i.i.i.i612, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i613

.lr.ph.i.i.i.i.i613:                              ; preds = %.noexc620, %.lr.ph.i.i.i.i.i613
  %.012.i.i.i.i.i614 = phi ptr [ %i.arv, %.lr.ph.i.i.i.i.i613 ], [ %i.ars, %.noexc620 ] ; 2 uses
  %.0911.i.i.i.i.i615 = phi ptr [ %i.aru, %.lr.ph.i.i.i.i.i613 ], [ %i.arh, %.noexc620 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i614, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i615, i64 16, i1 false), !alias.scope !84
  %i.aru = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i615, i64 16 ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i614, i64 16 ; 2 uses
  %.not.i.i.i.i.i616 = icmp eq ptr %i.aru, %i.arc
  br i1 %.not.i.i.i.i.i616, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i613, !llvm.loop !19

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i613, %.noexc620
  %.0.lcssa.i.i.i.i.i617 = phi ptr [ %i.ars, %.noexc620 ], [ %i.arv, %.lr.ph.i.i.i.i.i613 ]
  %i.arw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i617, i64 16
  %.not.i23.i.i618 = icmp eq ptr %i.arh, null
  br i1 %.not.i23.i.i618, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.arh, i64 noundef %i.ark) #32
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.fn, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.ars, ptr %i.ara, align 8
  store ptr %i.arw, ptr %i.arb, align 8
  %i.arx = getelementptr inbounds nuw [16 x i8], ptr %i.ars, i64 %i.arq
  store ptr %i.arx, ptr %i.ard, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit

bb.fo:                                            ; preds = %.noexc.i603
  %i.ary = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626

.loopexit:                                        ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp:                               ; preds = %bb.fm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fp:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.arz = load ptr, ptr %15, align 8             ; 2 uses
  %i.asa = icmp eq ptr %i.arz, %i.aoq
  br i1 %i.asa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.fi, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.fk
  %i.asb = load ptr, ptr %.pre1012, align 8
  %i.asc = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %i.aqw
  %i.asd = load ptr, ptr %i.asc, align 8
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ase, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %i.asf = load ptr, ptr %15, align 8             ; 2 uses
end_hunk_0
