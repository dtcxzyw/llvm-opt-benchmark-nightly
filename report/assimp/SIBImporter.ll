inline.NumInlined: 1537
inline.NumDeleted: 733
begin_hunk_0_@_ZN6AssimpL9ReadSceneEPNS_3SIBEPNS_12StreamReaderILb0ELb0EEE:bb.a
  store float %i.aic, ptr %.sroa.9.0..sroa_idx316.i, align 4
  %.not10.i.i.i.i.i248.i = icmp eq ptr %i.ajc, %i.aiy
  br i1 %.not10.i.i.i.i.i248.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i, label %.lr.ph.i.i.i.i.i249.i

.lr.ph.i.i.i.i.i249.i:                            ; preds = %.noexc258.i, %.lr.ph.i.i.i.i.i249.i
  %.012.i.i.i.i.i250.i = phi ptr [ %i.ajq, %.lr.ph.i.i.i.i.i249.i ], [ %i.ajn, %.noexc258.i ] ; 2 uses
  %.0911.i.i.i.i.i251.i = phi ptr [ %i.ajp, %.lr.ph.i.i.i.i.i249.i ], [ %i.ajc, %.noexc258.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i250.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i251.i, i64 12, i1 false), !alias.scope !39
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i251.i, i64 12 ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i250.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i252.i = icmp eq ptr %i.ajp, %i.aiy
  br i1 %.not.i.i.i.i.i252.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i, label %.lr.ph.i.i.i.i.i249.i, !llvm.loop !15

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i: ; preds = %.lr.ph.i.i.i.i.i249.i, %.noexc258.i
  %.0.lcssa.i.i.i.i.i254.i = phi ptr [ %i.ajn, %.noexc258.i ], [ %i.ajq, %.lr.ph.i.i.i.i.i249.i ]
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i254.i, i64 12
  %.not.i23.i.i255.i = icmp eq ptr %i.ajc, null
  br i1 %.not.i23.i.i255.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ajc, i64 noundef %i.ajf) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i: ; preds = %bb.ew, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i253.i
  store ptr %i.ajn, ptr %i.aev, align 8
  store ptr %i.ajr, ptr %i.aew, align 8
  %i.ajs = getelementptr inbounds nuw [12 x i8], ptr %i.ajn, i64 %i.ajl
  store ptr %i.ajs, ptr %i.aex, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i256.i, %bb.eu
  %i.ajt = load ptr, ptr %i.aez, align 8          ; 5 uses
  %i.aju = load ptr, ptr %i.afa, align 8
  %.not.i260.i = icmp eq ptr %i.ajt, %i.aju
  br i1 %.not.i260.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ajt, ptr noundef nonnull align 4 dereferenceable(12) %23, i64 12, i1 false)
  %i.ajv = load ptr, ptr %i.aez, align 8
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 12
  store ptr %i.ajw, ptr %i.aez, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i

bb.ey:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit259.i
  %i.ajx = load ptr, ptr %i.aey, align 8          ; 5 uses
  %i.ajy = ptrtoint ptr %i.ajt to i64
  %i.ajz = ptrtoint ptr %i.ajx to i64
  %i.aka = sub i64 %i.ajy, %i.ajz                 ; 4 uses
  %i.akb = icmp eq i64 %i.aka, 9223372036854775800
  br i1 %i.akb, label %.invoke595.i, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i: ; preds = %bb.ey
  %i.akc = sdiv exact i64 %i.aka, 12              ; 3 uses
  %.sroa.speculated.i.i.i262.i = call i64 @llvm.umax.i64(i64 %i.akc, i64 1)
  %i.akd = add nsw i64 %.sroa.speculated.i.i.i262.i, %i.akc ; 2 uses
  %i.ake = icmp ult i64 %i.akd, %i.akc
  %i.akf = call i64 @llvm.umin.i64(i64 %i.akd, i64 768614336404564650)
  %i.akg = select i1 %i.ake, i64 768614336404564650, i64 %i.akf ; 3 uses
  %.not.i.i.i263.i = icmp ne i64 %i.akg, 0
  call void @llvm.assume(i1 %.not.i.i.i263.i)
  %i.akh = mul nuw nsw i64 %i.akg, 12
  %i.aki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akh) #26
          to label %.noexc274.i unwind label %.loopexit335.i ; 5 uses

.noexc274.i:                                      ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 %i.aka
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.akj, ptr noundef nonnull align 4 dereferenceable(12) %23, i64 12, i1 false)
  %.not10.i.i.i.i.i264.i = icmp eq ptr %i.ajx, %i.ajt
  br i1 %.not10.i.i.i.i.i264.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i, label %.lr.ph.i.i.i.i.i265.i

.lr.ph.i.i.i.i.i265.i:                            ; preds = %.noexc274.i, %.lr.ph.i.i.i.i.i265.i
  %.012.i.i.i.i.i266.i = phi ptr [ %i.akl, %.lr.ph.i.i.i.i.i265.i ], [ %i.aki, %.noexc274.i ] ; 2 uses
  %.0911.i.i.i.i.i267.i = phi ptr [ %i.akk, %.lr.ph.i.i.i.i.i265.i ], [ %i.ajx, %.noexc274.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i266.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i267.i, i64 12, i1 false), !alias.scope !43
  %i.akk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i267.i, i64 12 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i266.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i268.i = icmp eq ptr %i.akk, %i.ajt
  br i1 %.not.i.i.i.i.i268.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i, label %.lr.ph.i.i.i.i.i265.i, !llvm.loop !15

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i: ; preds = %.lr.ph.i.i.i.i.i265.i, %.noexc274.i
  %.0.lcssa.i.i.i.i.i270.i = phi ptr [ %i.aki, %.noexc274.i ], [ %i.akl, %.lr.ph.i.i.i.i.i265.i ]
  %i.akm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i270.i, i64 12
  %.not.i23.i.i271.i = icmp eq ptr %i.ajx, null
  br i1 %.not.i23.i.i271.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ajx, i64 noundef %i.aka) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i: ; preds = %bb.ez, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i269.i
  store ptr %i.aki, ptr %i.aey, align 8
  store ptr %i.akm, ptr %i.aez, align 8
  %i.akn = getelementptr inbounds nuw [12 x i8], ptr %i.aki, i64 %i.akg
  store ptr %i.akn, ptr %i.afa, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit275.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i272.i, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %.090383.i, i64 12
  %i.akp = load i32, ptr %22, align 8
  %i.akq = zext i32 %i.akp to i64
  %i.akr = icmp samesign ult i64 %indvars.iv.next.i, %i.akq
  br i1 %i.akr, label %bb.eq, label %._crit_edge386.i, !llvm.loop !47

.loopexit335.i:                                   ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i261.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i245.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit337.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

.loopexit.split-lp336.i:                          ; preds = %.invoke595.i
  %lpad.loopexit.split-lp338.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.fa:                                            ; preds = %.loopexit.split-lp336.i, %.loopexit335.i
  %lpad.phi339.i = phi { ptr, i32 } [ %lpad.loopexit337.i, %.loopexit335.i ], [ %lpad.loopexit.split-lp338.i, %.loopexit.split-lp336.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.fc

_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i: ; preds = %bb.eo, %_ZN6aiFaceC2ERKS_.exit.i.i
  %i.aks = load ptr, ptr %i.bx, align 8           ; 2 uses
  %i.akt = icmp eq ptr %i.aks, null
  br i1 %i.akt, label %_ZN6aiFaceD2Ev.exit.i, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.aks) #24
  br label %_ZN6aiFaceD2Ev.exit.i

_ZN6aiFaceD2Ev.exit.i:                            ; preds = %bb.fb, %_ZNSt6vectorI6aiFaceSaIS0_EE9push_backERKS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.aku = add i32 %.088387.i, 1                  ; 2 uses
  %i.akv = zext i32 %i.aku to i64                 ; 2 uses
  %i.akw = load ptr, ptr %i.bd, align 8
  %i.akx = load ptr, ptr %i.bc, align 8           ; 2 uses
  %i.aky = ptrtoint ptr %i.akw to i64
  %i.akz = ptrtoint ptr %i.akx to i64
  %i.ala = sub i64 %i.aky, %i.akz
  %i.alb = ashr exact i64 %i.ala, 2
  %i.alc = icmp ugt i64 %i.alb, %i.akv
  br i1 %i.alc, label %bb.ef, label %._crit_edge390.i.loopexit, !llvm.loop !48

bb.fc:                                            ; preds = %bb.fa, %bb.ep
  %.pn99.i = phi { ptr, i32 } [ %lpad.phi339.i, %bb.fa ], [ %i.afp, %bb.ep ]
  %i.ald = load ptr, ptr %i.bx, align 8           ; 2 uses
  %i.ale = icmp eq ptr %i.ald, null
  br i1 %i.ale, label %_ZN6aiFaceD2Ev.exit276.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @_ZdaPv(ptr noundef nonnull %i.ald) #24
  br label %_ZN6aiFaceD2Ev.exit276.i

_ZN6aiFaceD2Ev.exit276.i:                         ; preds = %bb.fd, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.ge

._crit_edge400.loopexit.i:                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i
  %.pre437.i = load ptr, ptr %i.ch, align 8
  %.pre439.i = ptrtoint ptr %i.ard to i64
  %.pre440.i = ptrtoint ptr %.pre437.i to i64
  %.pre442.i = sub i64 %.pre439.i, %.pre440.i
  %.pre444.i = ashr exact i64 %.pre442.i, 3
  br label %._crit_edge400.i

._crit_edge400.i:                                 ; preds = %._crit_edge400.loopexit.i, %._crit_edge390.i
  %.pre-phi445.i = phi i64 [ %.pre444.i, %._crit_edge400.loopexit.i ], [ %i.ads, %._crit_edge390.i ]
  %i.alf = sub nsw i64 %.pre-phi445.i, %i.ads
  store i64 %i.alf, ptr %i.cl, align 8
  %i.alg = load ptr, ptr %i.ae, align 8           ; 5 uses
  %i.alh = load ptr, ptr %i.cm, align 8
  %.not.i277.i = icmp eq ptr %i.alg, %i.alh
  br i1 %.not.i277.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %._crit_edge400.i
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ali, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i229.i, ptr %i.alg, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ali, ptr nonnull align 4 %i.cg, i64 %i.adl, i1 false)
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 %i.adl
  store i8 0, ptr %i.alj, align 1
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alg, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.alk, ptr noundef nonnull align 4 dereferenceable(84) %i.cf, i64 84, i1 false)
  %i.all = load ptr, ptr %i.ae, align 8
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 1112
  store ptr %i.alm, ptr %i.ae, align 8
  br label %_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i

bb.ff:                                            ; preds = %._crit_edge400.i
  invoke void @_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr %i.alg, ptr noundef nonnull align 8 dereferenceable(1112) %24)
          to label %_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE9push_backERKS1_.exit.i unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aln = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.fh:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i, %.lr.ph399.i
  %i.alo = phi ptr [ %i.adn, %.lr.ph399.i ], [ %i.ard, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i ]
  %.076397.i = phi i64 [ 0, %.lr.ph399.i ], [ %i.are, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i ] ; 4 uses
  %i.alp = getelementptr inbounds nuw [96 x i8], ptr %i.adb, i64 %.076397.i ; 7 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 72 ; 3 uses
  %i.alr = load ptr, ptr %i.alq, align 8          ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alp, i64 80
  %i.alt = load ptr, ptr %i.als, align 8          ; 2 uses
  %i.alu = icmp eq ptr %i.alr, %i.alt
  br i1 %i.alu, label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.alv = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #26
          to label %bb.fj unwind label %.loopexit334.i ; 19 uses

bb.fj:                                            ; preds = %bb.fi
  store i32 0, ptr %i.alv, align 8
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 4 ; 3 uses
  store i32 0, ptr %i.alw, align 4
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alv, i64 8 ; 3 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alv, i64 16 ; 3 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alv, i64 224
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alv, i64 1272
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alv, i64 1312
  store ptr null, ptr %i.amb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.aly, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.alz, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ama, i8 0, i64 36, i1 false)
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alv, i64 236
  store i32 %spec.select.i229.i, ptr %i.amc, align 4
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alv, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.amd, ptr nonnull align 4 %i.ba, i64 %i.adl, i1 false)
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 %i.adl
  store i8 0, ptr %i.ame, align 1
  %i.amf = ptrtoint ptr %i.alt to i64
  %i.amg = ptrtoint ptr %i.alr to i64
  %i.amh = sub i64 %i.amf, %i.amg
  %i.ami = ashr exact i64 %i.amh, 4               ; 3 uses
  %i.amj = trunc i64 %i.ami to i32                ; 2 uses
  store i32 %i.amj, ptr %i.alx, align 8
  %i.amk = and i64 %i.ami, 4294967295             ; 5 uses
  %i.aml = shl nuw nsw i64 %i.amk, 4
  %i.amm = or disjoint i64 %i.aml, 8
  %i.amn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.amm) #26
          to label %bb.fk unwind label %.loopexit334.i ; 2 uses

bb.fk:                                            ; preds = %bb.fj
  store i64 %i.amk, ptr %i.amn, align 16
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 8 ; 4 uses
  %i.amp = icmp eq i64 %i.amk, 0
  br i1 %i.amp, label %.loopexit333.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.amq = getelementptr inbounds nuw [16 x i8], ptr %i.amo, i64 %i.amk
  %i.amr = add nuw nsw i64 %i.amk, 1152921504606846975
  %i.ams = and i64 %i.amr, 1152921504606846975
  %xtraiter = and i64 %i.ami, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.fl, %.prol.preheader
  %i.amt = phi ptr [ %i.amv, %.prol.preheader ], [ %i.amo, %bb.fl ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.fl ]
  store i32 0, ptr %i.amt, align 8
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  store ptr null, ptr %i.amu, align 8
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amt, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !49

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.fl
  %.unr = phi ptr [ %i.amo, %bb.fl ], [ %i.amv, %.prol.preheader ]
  %i.amw = icmp samesign ult i64 %i.ams, 7
  br i1 %i.amw, label %.loopexit333.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.amx = phi ptr [ %i.ann, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.amx, align 8
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  store ptr null, ptr %i.amy, align 8
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amx, i64 16
  store i32 0, ptr %i.amz, align 8
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amx, i64 24
  store ptr null, ptr %i.ana, align 8
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amx, i64 32
  store i32 0, ptr %i.anb, align 8
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amx, i64 40
  store ptr null, ptr %i.anc, align 8
  %i.and = getelementptr inbounds nuw i8, ptr %i.amx, i64 48
  store i32 0, ptr %i.and, align 8
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amx, i64 56
  store ptr null, ptr %i.ane, align 8
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amx, i64 64
  store i32 0, ptr %i.anf, align 8
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amx, i64 72
  store ptr null, ptr %i.ang, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amx, i64 80
  store i32 0, ptr %i.anh, align 8
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amx, i64 88
  store ptr null, ptr %i.ani, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amx, i64 96
  store i32 0, ptr %i.anj, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amx, i64 104
  store ptr null, ptr %i.ank, align 8
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amx, i64 112
  store i32 0, ptr %i.anl, align 8
  %i.anm = getelementptr inbounds nuw i8, ptr %i.amx, i64 120
  store ptr null, ptr %i.anm, align 8
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amx, i64 128 ; 2 uses
  %i.ano = icmp eq ptr %i.ann, %i.amq
  br i1 %i.ano, label %.loopexit333.i, label %.new

.loopexit333.i:                                   ; preds = %.prol.loopexit, %.new, %bb.fk
  %i.anp = getelementptr inbounds nuw i8, ptr %i.alv, i64 208 ; 3 uses
  store ptr %i.amo, ptr %i.anp, align 8
  %i.anq = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  %i.anr = load ptr, ptr %i.anq, align 8
  %i.ans = load ptr, ptr %i.alp, align 8
  %i.ant = ptrtoint ptr %i.anr to i64
  %i.anu = ptrtoint ptr %i.ans to i64
  %i.anv = sub i64 %i.ant, %i.anu
  %i.anw = sdiv exact i64 %i.anv, 12              ; 2 uses
  %i.anx = trunc i64 %i.anw to i32                ; 2 uses
  store i32 %i.anx, ptr %i.alw, align 4
  %i.any = and i64 %i.anw, 4294967295
  %i.anz = mul nuw nsw i64 %i.any, 12             ; 9 uses
  %i.aoa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.anz) #26
          to label %bb.fm unwind label %.loopexit334.i ; 2 uses

bb.fm:                                            ; preds = %.loopexit333.i
  %i.aob = icmp eq i32 %i.anx, 0                  ; 3 uses
  br i1 %i.aob, label %.loopexit332.i, label %.loopexit332.loopexit.i

.loopexit332.loopexit.i:                          ; preds = %bb.fm
  %i.aoc = add nsw i64 %i.anz, -12
  %i.aod = urem i64 %i.aoc, 12
  %i.aoe = sub nsw i64 %i.anz, %i.aod
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aoa, i8 0, i64 %i.aoe, i1 false)
  br label %.loopexit332.i

.loopexit332.i:                                   ; preds = %.loopexit332.loopexit.i, %bb.fm
  store ptr %i.aoa, ptr %i.aly, align 8
  %i.aof = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.anz) #26
          to label %bb.fn unwind label %.loopexit334.i ; 2 uses

bb.fn:                                            ; preds = %.loopexit332.i
  br i1 %i.aob, label %.loopexit331.i, label %.loopexit331.loopexit.i

.loopexit331.loopexit.i:                          ; preds = %bb.fn
  %i.aog = add nsw i64 %i.anz, -12
  %i.aoh = urem i64 %i.aog, 12
  %i.aoi = sub nsw i64 %i.anz, %i.aoh
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aof, i8 0, i64 %i.aoi, i1 false)
  br label %.loopexit331.i

.loopexit331.i:                                   ; preds = %.loopexit331.loopexit.i, %bb.fn
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.alv, i64 24 ; 2 uses
  store ptr %i.aof, ptr %i.aoj, align 8
  %i.aok = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.anz) #26
          to label %bb.fo unwind label %.loopexit334.i ; 3 uses

bb.fo:                                            ; preds = %.loopexit331.i
  br i1 %i.aob, label %.loopexit.thread.i, label %.lr.ph393.i

.loopexit.thread.i:                               ; preds = %bb.fo
  %i.aol = getelementptr inbounds nuw i8, ptr %i.alv, i64 112
  store ptr %i.aok, ptr %i.aol, align 8
  %i.aom = getelementptr inbounds nuw i8, ptr %i.alv, i64 176
  store i32 2, ptr %i.aom, align 8
  %i.aon = trunc i64 %.076397.i to i32
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.alv, i64 232
  store i32 %i.aon, ptr %i.aoo, align 8
  br label %.preheader.i

.lr.ph393.i:                                      ; preds = %bb.fo
  %i.aop = add nsw i64 %i.anz, -12
  %i.aoq = urem i64 %i.aop, 12
  %i.aor = sub nsw i64 %i.anz, %i.aoq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aok, i8 0, i64 %i.aor, i1 false)
  %i.aos = getelementptr inbounds nuw i8, ptr %i.alv, i64 112 ; 2 uses
  store ptr %i.aok, ptr %i.aos, align 8
  %i.aot = getelementptr inbounds nuw i8, ptr %i.alv, i64 176
  store i32 2, ptr %i.aot, align 8
  %i.aou = trunc i64 %.076397.i to i32
  %i.aov = getelementptr inbounds nuw i8, ptr %i.alv, i64 232
  store i32 %i.aou, ptr %i.aov, align 8
  %i.aow = getelementptr inbounds nuw i8, ptr %i.alp, i64 24
  %i.aox = getelementptr inbounds nuw i8, ptr %i.alp, i64 48
  br label %bb.fp

.preheader.loopexit.i:                            ; preds = %bb.fp
  %.pre436.i = load i32, ptr %i.alx, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.loopexit.thread.i
  %i.aoy = phi i32 [ %.pre436.i, %.preheader.loopexit.i ], [ %i.amj, %.loopexit.thread.i ]
  %.not405.i = icmp eq i32 %i.aoy, 0
  br i1 %.not405.i, label %._crit_edge396.i, label %.lr.ph395.i.preheader

.lr.ph395.i.preheader:                            ; preds = %.preheader.i
  %i.aoz = load ptr, ptr %i.alq, align 8
  %i.apa = load ptr, ptr %i.anp, align 8
  %i.apb = icmp eq ptr %i.aoz, %i.apa
  br i1 %i.apb, label %._crit_edge396.i, label %.lr.ph395.i

.loopexit334.i:                                   ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.loopexit331.i, %.loopexit332.i, %.loopexit333.i, %bb.fj, %bb.fi
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp.i:                             ; preds = %bb.fs
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.fp:                                            ; preds = %bb.fp, %.lr.ph393.i
  %indvars.iv427.i = phi i64 [ 0, %.lr.ph393.i ], [ %indvars.iv.next428.i, %bb.fp ] ; 7 uses
  %i.apc = load ptr, ptr %i.alp, align 8
  %i.apd = getelementptr inbounds nuw [12 x i8], ptr %i.apc, i64 %indvars.iv427.i
  %i.ape = load ptr, ptr %i.aly, align 8
  %i.apf = getelementptr inbounds nuw [12 x i8], ptr %i.ape, i64 %indvars.iv427.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.apf, ptr noundef nonnull align 4 dereferenceable(12) %i.apd, i64 12, i1 false)
  %i.apg = load ptr, ptr %i.aow, align 8
  %i.aph = getelementptr inbounds nuw [12 x i8], ptr %i.apg, i64 %indvars.iv427.i
  %i.api = load ptr, ptr %i.aoj, align 8
  %i.apj = getelementptr inbounds nuw [12 x i8], ptr %i.api, i64 %indvars.iv427.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.apj, ptr noundef nonnull align 4 dereferenceable(12) %i.aph, i64 12, i1 false)
  %i.apk = load ptr, ptr %i.aox, align 8
  %i.apl = getelementptr inbounds nuw [12 x i8], ptr %i.apk, i64 %indvars.iv427.i
  %i.apm = load ptr, ptr %i.aos, align 8
  %i.apn = getelementptr inbounds nuw [12 x i8], ptr %i.apm, i64 %indvars.iv427.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.apn, ptr noundef nonnull align 4 dereferenceable(12) %i.apl, i64 12, i1 false)
  %indvars.iv.next428.i = add nuw nsw i64 %indvars.iv427.i, 1 ; 2 uses
  %i.apo = load i32, ptr %i.alw, align 4
  %i.app = zext i32 %i.apo to i64
end_hunk_0
