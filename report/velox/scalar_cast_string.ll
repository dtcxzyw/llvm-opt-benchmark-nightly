inline.NumInlined: 14762
inline.NumDeleted: 2666
begin_hunk_0_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2268 = phi ptr [ %i.dhk, %bb.acj ], [ %.0.i2263, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhm = load i8, ptr %.0707, align 1, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhm, ptr %i.af, align 1, !tbaa !26
  %i.dhn = load ptr, ptr %.0.i2268, align 8, !tbaa !15
  %i.dho = getelementptr i8, ptr %i.dhn, i64 -24
  %i.dhp = load i64, ptr %i.dho, align 8
  %i.dhq = getelementptr inbounds i8, ptr %.0.i2268, i64 %i.dhp
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.dhq, i64 16
  %i.dhs = load i64, ptr %i.dhr, align 8, !tbaa !4997
  %.not.i2272 = icmp eq i64 %i.dhs, 0
  br i1 %.not.i2272, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2268, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276 unwind label %.loopexit ; 0 uses

bb.acn:                                           ; preds = %bb.acl
  %i.dhu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2268, i8 noundef signext %i.dhm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276: ; preds = %bb.acn, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.aco:                                           ; preds = %bb.ace
  %i.dhv = load i8, ptr %i.gw, align 8, !tbaa !4998, !range !657, !noundef !658
  %i.dhw = trunc nuw i8 %i.dhv to i1
  br i1 %i.dhw, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dhx = load ptr, ptr %0, align 8, !tbaa !15
  %i.dhy = getelementptr i8, ptr %i.dhx, i64 -24
  %i.dhz = load i64, ptr %i.dhy, align 8
  %i.dia = getelementptr inbounds i8, ptr %0, i64 %i.dhz ; 2 uses
  %i.dib = getelementptr inbounds nuw i8, ptr %i.dia, i64 32
  %i.dic = load i32, ptr %i.dib, align 8, !tbaa !4445
  %i.did = or i32 %i.dic, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dia, i32 noundef %i.did)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ky, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2279 = load i64, ptr %i.ip, align 8, !tbaa !609
  %i.die = trunc i64 %.sroa.0.0.copyload.i.i2279 to i32
  store i32 %i.die, ptr %6, align 8, !tbaa !5027
  %.sroa.0.0.copyload.i2280 = load i64, ptr %i.iq, align 8, !tbaa !609
  %i.dif = trunc i64 %.sroa.0.0.copyload.i2280 to i32
  store i32 %i.dif, ptr %i.ir, align 4, !tbaa !5028
  %.sroa.0.0.copyload.i2281 = load i64, ptr %i.io, align 8, !tbaa !609
  %i.dig = trunc i64 %.sroa.0.0.copyload.i2281 to i32
  store i32 %i.dig, ptr %i.is, align 8, !tbaa !5029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.51, i64 3, i1 false)
  %i.dih = icmp eq i8 %.0782, 69
  br i1 %i.dih, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278
  store i8 69, ptr %i.it, align 1, !tbaa !26
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278
  %.0806 = phi ptr [ %i.iu, %bb.acq ], [ %i.it, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278 ] ; 2 uses
  %i.dii = load i8, ptr %.0707, align 1, !tbaa !26
  store i8 %i.dii, ptr %.0806, align 1, !tbaa !26
  %i.dij = load ptr, ptr %0, align 8, !tbaa !15
  %i.dik = getelementptr i8, ptr %i.dij, i64 -24
  %i.dil = load i64, ptr %i.dik, align 8
  %i.dim = getelementptr inbounds i8, ptr %0, i64 %i.dil ; 6 uses
  %i.din = getelementptr inbounds nuw i8, ptr %i.dim, i64 232
  %i.dio = load ptr, ptr %i.din, align 8, !tbaa !5021 ; 2 uses
  %.not.i2282 = icmp eq ptr %i.dio, null
  %i.dip = zext i1 %.not.i2282 to i8
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dim, i64 225 ; 2 uses
  %i.dir = load i8, ptr %i.diq, align 1, !tbaa !4982, !range !657, !noundef !658
  %i.dis = trunc nuw i8 %i.dir to i1
  br i1 %i.dis, label %._crit_edge.i2288, label %bb.acs

._crit_edge.i2288:                                ; preds = %bb.acr
  %.phi.trans.insert.i2289 = getelementptr inbounds nuw i8, ptr %i.dim, i64 224
  %.pre.i2290 = load i8, ptr %.phi.trans.insert.i2289, align 8, !tbaa !4995
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294

bb.acs:                                           ; preds = %bb.acr
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dim, i64 240
  %i.diu = load ptr, ptr %i.dit, align 8, !tbaa !4988 ; 6 uses
  %.not.i.i.i2283 = icmp eq ptr %i.diu, null
  br i1 %.not.i.i.i2283, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc2291 unwind label %.loopexit.split-lp2904

.noexc2291:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284: ; preds = %bb.acs
  %i.div = getelementptr inbounds nuw i8, ptr %i.diu, i64 56
  %i.diw = load i8, ptr %i.div, align 8, !tbaa !4989
  %.not.i1.i.i2285 = icmp eq i8 %i.diw, 0
  br i1 %.not.i1.i.i2285, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284
  %i.dix = getelementptr inbounds nuw i8, ptr %i.diu, i64 89
  %i.diy = load i8, ptr %i.dix, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.diu)
          to label %.noexc2292 unwind label %.loopexit2903

.noexc2292:                                       ; preds = %bb.acv
  %i.diz = load ptr, ptr %i.diu, align 8, !tbaa !15
  %i.dja = getelementptr inbounds nuw i8, ptr %i.diz, i64 48
  %i.djb = load ptr, ptr %i.dja, align 8
  %i.djc = invoke noundef signext i8 %i.djb(ptr noundef nonnull align 8 dereferenceable(570) %i.diu, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286 unwind label %.loopexit2903, !inline_history !5022

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286: ; preds = %.noexc2292, %bb.acu
  %.0.i.i.i2287 = phi i8 [ %i.diy, %bb.acu ], [ %i.djc, %.noexc2292 ] ; 2 uses
  %i.djd = getelementptr inbounds nuw i8, ptr %i.dim, i64 224
  store i8 %.0.i.i.i2287, ptr %i.djd, align 8, !tbaa !4995
  store i8 1, ptr %i.diq, align 1, !tbaa !4982
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286, %._crit_edge.i2288
  %i.dje = phi i8 [ %.pre.i2290, %._crit_edge.i2288 ], [ %.0.i.i.i2287, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286 ]
  %i.djf = getelementptr inbounds nuw i8, ptr %.0806, i64 1
  %i.djg = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.dio, i8 %i.dip, ptr noundef nonnull align 8 dereferenceable(216) %i.dim, i8 noundef signext %i.dje, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.djf)
          to label %bb.acw unwind label %.loopexit2903 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

.loopexit2903:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294, %bb.acv, %.noexc2292
  %lpad.loopexit2905 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

.loopexit.split-lp2904:                           ; preds = %bb.act
  %lpad.loopexit.split-lp2906 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

bb.acx:                                           ; preds = %.loopexit.split-lp2904, %.loopexit2903
  %lpad.phi2907 = phi { ptr, i32 } [ %lpad.loopexit2905, %.loopexit2903 ], [ %lpad.loopexit.split-lp2906, %.loopexit.split-lp2904 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #27
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !26
  %i.djh = load ptr, ptr %0, align 8, !tbaa !15
  %i.dji = getelementptr i8, ptr %i.djh, i64 -24
  %i.djj = load i64, ptr %i.dji, align 8
  %i.djk = getelementptr inbounds i8, ptr %0, i64 %i.djj
  %i.djl = getelementptr inbounds nuw i8, ptr %i.djk, i64 16
  %i.djm = load i64, ptr %i.djl, align 8, !tbaa !4997
  %.not.i2295 = icmp eq i64 %i.djm, 0
  br i1 %.not.i2295, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.djn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

bb.ada:                                           ; preds = %bb.acy
  %i.djo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299: ; preds = %bb.ada, %bb.acz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.adb:                                           ; preds = %bb.h
  br i1 %.not927, label %bb.adr, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.sroa.0.0.copyload.i2300 = load i16, ptr %2, align 8, !tbaa !2386 ; 2 uses
  %.not2787 = icmp eq i16 %.sroa.0.0.copyload.i2300, -32768
  br i1 %.not2787, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302

bb.add:                                           ; preds = %bb.adc
  %i.djp = load ptr, ptr %0, align 8, !tbaa !15
  %i.djq = getelementptr i8, ptr %i.djp, i64 -24
  %i.djr = load i64, ptr %i.djq, align 8
  %i.djs = getelementptr inbounds i8, ptr %0, i64 %i.djr ; 2 uses
  %i.djt = getelementptr inbounds nuw i8, ptr %i.djs, i64 32
  %i.dju = load i32, ptr %i.djt, align 8, !tbaa !4445
  %i.djv = or i32 %i.dju, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djs, i32 noundef %i.djv)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2303.pre = load i16, ptr %2, align 8, !tbaa !2386
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge, %bb.adc
  %.sroa.0.0.copyload.i2303 = phi i16 [ %.sroa.0.0.copyload.i2303.pre, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge ], [ %.sroa.0.0.copyload.i2300, %bb.adc ]
  %20 = sext i16 %.sroa.0.0.copyload.i2303 to i32 ; 2 uses
  %i.djw = icmp eq i8 %.0782, 0
  br i1 %i.djw, label %bb.ade, label %bb.adk

bb.ade:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %.lhs.trunc2784 = trunc nuw i32 %21 to i16
  %i.djx = urem i16 %.lhs.trunc2784, 100          ; 2 uses
  %.zext2785 = zext nneg i16 %i.djx to i32
  %i.djy = icmp samesign ult i16 %i.djx, 10
  br i1 %i.djy, label %bb.adf, label %bb.adj

bb.adf:                                           ; preds = %bb.ade
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 48, ptr %i.ad, align 1, !tbaa !26
  %i.djz = load ptr, ptr %0, align 8, !tbaa !15
  %i.dka = getelementptr i8, ptr %i.djz, i64 -24
  %i.dkb = load i64, ptr %i.dka, align 8
  %i.dkc = getelementptr inbounds i8, ptr %0, i64 %i.dkb
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.dkc, i64 16
  %i.dke = load i64, ptr %i.dkd, align 8, !tbaa !4997
  %.not.i2304 = icmp eq i64 %i.dke, 0
  br i1 %.not.i2304, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.dkf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308 unwind label %bb.adi ; 0 uses

bb.adh:                                           ; preds = %bb.adf
  %i.dkg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308 unwind label %bb.adi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308: ; preds = %bb.adh, %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.adj

bb.adi:                                           ; preds = %bb.adh, %bb.adg, %bb.adj
  %i.dkh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.adj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308, %bb.ade
  %i.dki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.zext2785)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484 unwind label %bb.adi ; 0 uses

bb.adk:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #27
  store i8 37, ptr %i.fs, align 1, !tbaa !26
  store i8 %.0782, ptr %i.il, align 1, !tbaa !26
  %i.dkj = load i8, ptr %.0707, align 1, !tbaa !26
  store i8 %i.dkj, ptr %i.im, align 1, !tbaa !26
  %i.dkk = add nsw i32 %20, -1900
  store i32 %i.dkk, ptr %i.ii, align 4, !tbaa !5031
  %i.dkl = load ptr, ptr %0, align 8, !tbaa !15
  %i.dkm = getelementptr i8, ptr %i.dkl, i64 -24
  %i.dkn = load i64, ptr %i.dkm, align 8
  %i.dko = getelementptr inbounds i8, ptr %0, i64 %i.dkn ; 6 uses
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.dko, i64 232
  %i.dkq = load ptr, ptr %i.dkp, align 8, !tbaa !5021 ; 2 uses
  %.not.i2309 = icmp eq ptr %i.dkq, null
  %i.dkr = zext i1 %.not.i2309 to i8
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dko, i64 225 ; 2 uses
  %i.dkt = load i8, ptr %i.dks, align 1, !tbaa !4982, !range !657, !noundef !658
  %i.dku = trunc nuw i8 %i.dkt to i1
  br i1 %i.dku, label %._crit_edge.i2315, label %bb.adl

._crit_edge.i2315:                                ; preds = %bb.adk
  %.phi.trans.insert.i2316 = getelementptr inbounds nuw i8, ptr %i.dko, i64 224
  %.pre.i2317 = load i8, ptr %.phi.trans.insert.i2316, align 8, !tbaa !4995
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321

bb.adl:                                           ; preds = %bb.adk
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dko, i64 240
  %i.dkw = load ptr, ptr %i.dkv, align 8, !tbaa !4988 ; 6 uses
  %.not.i.i.i2310 = icmp eq ptr %i.dkw, null
  br i1 %.not.i.i.i2310, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc2318 unwind label %.loopexit.split-lp2899

.noexc2318:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311: ; preds = %bb.adl
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.dkw, i64 56
  %i.dky = load i8, ptr %i.dkx, align 8, !tbaa !4989
  %.not.i1.i.i2312 = icmp eq i8 %i.dky, 0
  br i1 %.not.i1.i.i2312, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dkw, i64 89
  %i.dla = load i8, ptr %i.dkz, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dkw)
          to label %.noexc2319 unwind label %.loopexit2898

.noexc2319:                                       ; preds = %bb.ado
  %i.dlb = load ptr, ptr %i.dkw, align 8, !tbaa !15
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dlb, i64 48
  %i.dld = load ptr, ptr %i.dlc, align 8
  %i.dle = invoke noundef signext i8 %i.dld(ptr noundef nonnull align 8 dereferenceable(570) %i.dkw, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313 unwind label %.loopexit2898, !inline_history !5022

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313: ; preds = %.noexc2319, %bb.adn
  %.0.i.i.i2314 = phi i8 [ %i.dla, %bb.adn ], [ %i.dle, %.noexc2319 ] ; 2 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dko, i64 224
  store i8 %.0.i.i.i2314, ptr %i.dlf, align 8, !tbaa !4995
  store i8 1, ptr %i.dks, align 1, !tbaa !4982
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313, %._crit_edge.i2315
  %i.dlg = phi i8 [ %.pre.i2317, %._crit_edge.i2315 ], [ %.0.i.i.i2314, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313 ]
  %i.dlh = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.dkq, i8 %i.dkr, ptr noundef nonnull align 8 dereferenceable(216) %i.dko, i8 noundef signext %i.dlg, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.in)
          to label %bb.adp unwind label %.loopexit2898 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

.loopexit2898:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321, %bb.ado, %.noexc2319
  %lpad.loopexit2900 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

.loopexit.split-lp2899:                           ; preds = %bb.adm
  %lpad.loopexit.split-lp2901 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

bb.adq:                                           ; preds = %.loopexit.split-lp2899, %.loopexit2898
  %lpad.phi2902 = phi { ptr, i32 } [ %lpad.loopexit2900, %.loopexit2898 ], [ %lpad.loopexit.split-lp2901, %.loopexit.split-lp2899 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #27
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !26
  %i.dli = load ptr, ptr %0, align 8, !tbaa !15
  %i.dlj = getelementptr i8, ptr %i.dli, i64 -24
  %i.dlk = load i64, ptr %i.dlj, align 8
  %i.dll = getelementptr inbounds i8, ptr %0, i64 %i.dlk
  %i.dlm = getelementptr inbounds nuw i8, ptr %i.dll, i64 16
  %i.dln = load i64, ptr %i.dlm, align 8, !tbaa !4997
  %.not.i2322 = icmp eq i64 %i.dln, 0
  br i1 %.not.i2322, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %bb.adr
  %i.dlo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326 unwind label %.loopexit ; 0 uses

bb.adt:                                           ; preds = %bb.adr
  %i.dlp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 121)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326: ; preds = %bb.adt, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.adu:                                           ; preds = %bb.h
  br i1 %.not927, label %bb.afb, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dlq = icmp eq i8 %.0782, 79
  br i1 %i.dlq, label %bb.adw, label %bb.aef

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 37, ptr %i.ab, align 1, !tbaa !26
  %i.dlr = load ptr, ptr %0, align 8, !tbaa !15
  %i.dls = getelementptr i8, ptr %i.dlr, i64 -24
  %i.dlt = load i64, ptr %i.dls, align 8
  %i.dlu = getelementptr inbounds i8, ptr %0, i64 %i.dlt
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.dlu, i64 16
  %i.dlw = load i64, ptr %i.dlv, align 8, !tbaa !4997
  %.not.i2327 = icmp eq i64 %i.dlw, 0
  br i1 %.not.i2327, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.dlx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %bb.adz unwind label %.loopexit

bb.ady:                                           ; preds = %bb.adw
  %i.dly = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.adz unwind label %.loopexit ; 0 uses

bb.adz:                                           ; preds = %bb.adx, %bb.ady
  %.0.i2328 = phi ptr [ %i.dlx, %bb.adx ], [ %0, %bb.ady ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 79, ptr %i.aa, align 1, !tbaa !26
  %i.dlz = load ptr, ptr %.0.i2328, align 8, !tbaa !15
  %i.dma = getelementptr i8, ptr %i.dlz, i64 -24
  %i.dmb = load i64, ptr %i.dma, align 8
  %i.dmc = getelementptr inbounds i8, ptr %.0.i2328, i64 %i.dmb
  %i.dmd = getelementptr inbounds nuw i8, ptr %i.dmc, i64 16
  %i.dme = load i64, ptr %i.dmd, align 8, !tbaa !4997
  %.not.i2332 = icmp eq i64 %i.dme, 0
  br i1 %.not.i2332, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.dmf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2328, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %bb.aec unwind label %.loopexit

bb.aeb:                                           ; preds = %bb.adz
  %i.dmg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2328, i8 noundef signext 79)
          to label %bb.aec unwind label %.loopexit ; 0 uses

bb.aec:                                           ; preds = %bb.aea, %bb.aeb
  %.0.i2333 = phi ptr [ %i.dmf, %bb.aea ], [ %.0.i2328, %bb.aeb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dmh = load i8, ptr %.0707, align 1, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dmh, ptr %i.z, align 1, !tbaa !26
  %i.dmi = load ptr, ptr %.0.i2333, align 8, !tbaa !15
  %i.dmj = getelementptr i8, ptr %i.dmi, i64 -24
  %i.dmk = load i64, ptr %i.dmj, align 8
  %i.dml = getelementptr inbounds i8, ptr %.0.i2333, i64 %i.dmk
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.dml, i64 16
  %i.dmn = load i64, ptr %i.dmm, align 8, !tbaa !4997
  %.not.i2337 = icmp eq i64 %i.dmn, 0
  br i1 %.not.i2337, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.dmo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2333, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341 unwind label %.loopexit ; 0 uses

bb.aee:                                           ; preds = %bb.aec
  %i.dmp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2333, i8 noundef signext %i.dmh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341: ; preds = %bb.aee, %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.aef:                                           ; preds = %bb.adv
  %.sroa.0.0.copyload.i2342 = load i16, ptr %2, align 8, !tbaa !2386 ; 2 uses
  %.not2786 = icmp eq i16 %.sroa.0.0.copyload.i2342, -32768
  br i1 %.not2786, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2344

bb.aeg:                                           ; preds = %bb.aef
  %i.dmq = load ptr, ptr %0, align 8, !tbaa !15
  %i.dmr = getelementptr i8, ptr %i.dmq, i64 -24
  %i.dms = load i64, ptr %i.dmr, align 8
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2270 = phi ptr [ %i.dhn, %bb.acj ], [ %.0.i2265, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhp = load i8, ptr %.0707, align 1, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhp, ptr %i.af, align 1, !tbaa !26
  %i.dhq = load ptr, ptr %.0.i2270, align 8, !tbaa !15
  %i.dhr = getelementptr i8, ptr %i.dhq, i64 -24
  %i.dhs = load i64, ptr %i.dhr, align 8
  %i.dht = getelementptr inbounds i8, ptr %.0.i2270, i64 %i.dhs
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dht, i64 16
  %i.dhv = load i64, ptr %i.dhu, align 8, !tbaa !4997
  %.not.i2274 = icmp eq i64 %i.dhv, 0
  br i1 %.not.i2274, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dhw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2270, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2278 unwind label %.loopexit ; 0 uses

bb.acn:                                           ; preds = %bb.acl
  %i.dhx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2270, i8 noundef signext %i.dhp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2278 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2278: ; preds = %bb.acn, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.aco:                                           ; preds = %bb.ace
  %i.dhy = load i8, ptr %i.gw, align 8, !tbaa !5057, !range !657, !noundef !658
  %i.dhz = trunc nuw i8 %i.dhy to i1
  br i1 %i.dhz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dia = load ptr, ptr %0, align 8, !tbaa !15
  %i.dib = getelementptr i8, ptr %i.dia, i64 -24
  %i.dic = load i64, ptr %i.dib, align 8
  %i.did = getelementptr inbounds i8, ptr %0, i64 %i.dic ; 2 uses
  %i.die = getelementptr inbounds nuw i8, ptr %i.did, i64 32
  %i.dif = load i32, ptr %i.die, align 8, !tbaa !4445
  %i.dig = or i32 %i.dif, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.did, i32 noundef %i.dig)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kz, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2281 = load i64, ptr %i.iq, align 8, !tbaa !609
  %i.dih = trunc i64 %.sroa.0.0.copyload.i.i2281 to i32
  store i32 %i.dih, ptr %6, align 8, !tbaa !5027
  %.sroa.0.0.copyload.i2282 = load i64, ptr %i.ir, align 8, !tbaa !609
  %i.dii = trunc i64 %.sroa.0.0.copyload.i2282 to i32
  store i32 %i.dii, ptr %i.is, align 4, !tbaa !5028
  %.sroa.0.0.copyload.i2283 = load i64, ptr %i.ip, align 8, !tbaa !609
  %i.dij = trunc i64 %.sroa.0.0.copyload.i2283 to i32
  store i32 %i.dij, ptr %i.it, align 8, !tbaa !5029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.51, i64 3, i1 false)
  %i.dik = icmp eq i8 %.0783, 69
  br i1 %i.dik, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280
  store i8 69, ptr %i.iu, align 1, !tbaa !26
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280
  %.0807 = phi ptr [ %i.iv, %bb.acq ], [ %i.iu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280 ] ; 2 uses
  %i.dil = load i8, ptr %.0707, align 1, !tbaa !26
  store i8 %i.dil, ptr %.0807, align 1, !tbaa !26
  %i.dim = load ptr, ptr %0, align 8, !tbaa !15
  %i.din = getelementptr i8, ptr %i.dim, i64 -24
  %i.dio = load i64, ptr %i.din, align 8
  %i.dip = getelementptr inbounds i8, ptr %0, i64 %i.dio ; 6 uses
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dip, i64 232
  %i.dir = load ptr, ptr %i.diq, align 8, !tbaa !5021 ; 2 uses
  %.not.i2284 = icmp eq ptr %i.dir, null
  %i.dis = zext i1 %.not.i2284 to i8
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dip, i64 225 ; 2 uses
  %i.diu = load i8, ptr %i.dit, align 1, !tbaa !4982, !range !657, !noundef !658
  %i.div = trunc nuw i8 %i.diu to i1
  br i1 %i.div, label %._crit_edge.i2290, label %bb.acs

._crit_edge.i2290:                                ; preds = %bb.acr
  %.phi.trans.insert.i2291 = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  %.pre.i2292 = load i8, ptr %.phi.trans.insert.i2291, align 8, !tbaa !4995
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296

bb.acs:                                           ; preds = %bb.acr
  %i.diw = getelementptr inbounds nuw i8, ptr %i.dip, i64 240
  %i.dix = load ptr, ptr %i.diw, align 8, !tbaa !4988 ; 6 uses
  %.not.i.i.i2285 = icmp eq ptr %i.dix, null
  br i1 %.not.i.i.i2285, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc2293 unwind label %.loopexit.split-lp2906

.noexc2293:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286: ; preds = %bb.acs
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dix, i64 56
  %i.diz = load i8, ptr %i.diy, align 8, !tbaa !4989
  %.not.i1.i.i2287 = icmp eq i8 %i.diz, 0
  br i1 %.not.i1.i.i2287, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286
  %i.dja = getelementptr inbounds nuw i8, ptr %i.dix, i64 89
  %i.djb = load i8, ptr %i.dja, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dix)
          to label %.noexc2294 unwind label %.loopexit2905

.noexc2294:                                       ; preds = %bb.acv
  %i.djc = load ptr, ptr %i.dix, align 8, !tbaa !15
  %i.djd = getelementptr inbounds nuw i8, ptr %i.djc, i64 48
  %i.dje = load ptr, ptr %i.djd, align 8
  %i.djf = invoke noundef signext i8 %i.dje(ptr noundef nonnull align 8 dereferenceable(570) %i.dix, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288 unwind label %.loopexit2905, !inline_history !5022

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288: ; preds = %.noexc2294, %bb.acu
  %.0.i.i.i2289 = phi i8 [ %i.djb, %bb.acu ], [ %i.djf, %.noexc2294 ] ; 2 uses
  %i.djg = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  store i8 %.0.i.i.i2289, ptr %i.djg, align 8, !tbaa !4995
  store i8 1, ptr %i.dit, align 1, !tbaa !4982
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288, %._crit_edge.i2290
  %i.djh = phi i8 [ %.pre.i2292, %._crit_edge.i2290 ], [ %.0.i.i.i2289, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288 ]
  %i.dji = getelementptr inbounds nuw i8, ptr %.0807, i64 1
  %i.djj = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dir, i8 %i.dis, ptr noundef nonnull align 8 dereferenceable(216) %i.dip, i8 noundef signext %i.djh, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.dji)
          to label %bb.acw unwind label %.loopexit2905 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

.loopexit2905:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296, %bb.acv, %.noexc2294
  %lpad.loopexit2907 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

.loopexit.split-lp2906:                           ; preds = %bb.act
  %lpad.loopexit.split-lp2908 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

bb.acx:                                           ; preds = %.loopexit.split-lp2906, %.loopexit2905
  %lpad.phi2909 = phi { ptr, i32 } [ %lpad.loopexit2907, %.loopexit2905 ], [ %lpad.loopexit.split-lp2908, %.loopexit.split-lp2906 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #27
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !26
  %i.djk = load ptr, ptr %0, align 8, !tbaa !15
  %i.djl = getelementptr i8, ptr %i.djk, i64 -24
  %i.djm = load i64, ptr %i.djl, align 8
  %i.djn = getelementptr inbounds i8, ptr %0, i64 %i.djm
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 16
  %i.djp = load i64, ptr %i.djo, align 8, !tbaa !4997
  %.not.i2297 = icmp eq i64 %i.djp, 0
  br i1 %.not.i2297, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.djq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 unwind label %.loopexit ; 0 uses

bb.ada:                                           ; preds = %bb.acy
  %i.djr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301: ; preds = %bb.ada, %bb.acz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.adb:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.adr, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.sroa.0.0.copyload.i2302 = load i16, ptr %2, align 8, !tbaa !2386 ; 2 uses
  %.not2789 = icmp eq i16 %.sroa.0.0.copyload.i2302, -32768
  br i1 %.not2789, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304

bb.add:                                           ; preds = %bb.adc
  %i.djs = load ptr, ptr %0, align 8, !tbaa !15
  %i.djt = getelementptr i8, ptr %i.djs, i64 -24
  %i.dju = load i64, ptr %i.djt, align 8
  %i.djv = getelementptr inbounds i8, ptr %0, i64 %i.dju ; 2 uses
  %i.djw = getelementptr inbounds nuw i8, ptr %i.djv, i64 32
  %i.djx = load i32, ptr %i.djw, align 8, !tbaa !4445
  %i.djy = or i32 %i.djx, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djv, i32 noundef %i.djy)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2305.pre = load i16, ptr %2, align 8, !tbaa !2386
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge, %bb.adc
  %.sroa.0.0.copyload.i2305 = phi i16 [ %.sroa.0.0.copyload.i2305.pre, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge ], [ %.sroa.0.0.copyload.i2302, %bb.adc ]
  %20 = sext i16 %.sroa.0.0.copyload.i2305 to i32 ; 2 uses
  %i.djz = icmp eq i8 %.0783, 0
  br i1 %i.djz, label %bb.ade, label %bb.adk

bb.ade:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %.lhs.trunc2786 = trunc nuw i32 %21 to i16
  %i.dka = urem i16 %.lhs.trunc2786, 100          ; 2 uses
  %.zext2787 = zext nneg i16 %i.dka to i32
  %i.dkb = icmp samesign ult i16 %i.dka, 10
  br i1 %i.dkb, label %bb.adf, label %bb.adj

bb.adf:                                           ; preds = %bb.ade
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 48, ptr %i.ad, align 1, !tbaa !26
  %i.dkc = load ptr, ptr %0, align 8, !tbaa !15
  %i.dkd = getelementptr i8, ptr %i.dkc, i64 -24
  %i.dke = load i64, ptr %i.dkd, align 8
  %i.dkf = getelementptr inbounds i8, ptr %0, i64 %i.dke
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dkf, i64 16
  %i.dkh = load i64, ptr %i.dkg, align 8, !tbaa !4997
  %.not.i2306 = icmp eq i64 %i.dkh, 0
  br i1 %.not.i2306, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.dki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310 unwind label %bb.adi ; 0 uses

bb.adh:                                           ; preds = %bb.adf
  %i.dkj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310 unwind label %bb.adi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310: ; preds = %bb.adh, %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.adj

bb.adi:                                           ; preds = %bb.adh, %bb.adg, %bb.adj
  %i.dkk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.adj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310, %bb.ade
  %i.dkl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.zext2787)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486 unwind label %bb.adi ; 0 uses

bb.adk:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #27
  store i8 37, ptr %i.fs, align 1, !tbaa !26
  store i8 %.0783, ptr %i.im, align 1, !tbaa !26
  %i.dkm = load i8, ptr %.0707, align 1, !tbaa !26
  store i8 %i.dkm, ptr %i.in, align 1, !tbaa !26
  %i.dkn = add nsw i32 %20, -1900
  store i32 %i.dkn, ptr %i.ij, align 4, !tbaa !5031
  %i.dko = load ptr, ptr %0, align 8, !tbaa !15
  %i.dkp = getelementptr i8, ptr %i.dko, i64 -24
  %i.dkq = load i64, ptr %i.dkp, align 8
  %i.dkr = getelementptr inbounds i8, ptr %0, i64 %i.dkq ; 6 uses
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dkr, i64 232
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !5021 ; 2 uses
  %.not.i2311 = icmp eq ptr %i.dkt, null
  %i.dku = zext i1 %.not.i2311 to i8
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dkr, i64 225 ; 2 uses
  %i.dkw = load i8, ptr %i.dkv, align 1, !tbaa !4982, !range !657, !noundef !658
  %i.dkx = trunc nuw i8 %i.dkw to i1
  br i1 %i.dkx, label %._crit_edge.i2317, label %bb.adl

._crit_edge.i2317:                                ; preds = %bb.adk
  %.phi.trans.insert.i2318 = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  %.pre.i2319 = load i8, ptr %.phi.trans.insert.i2318, align 8, !tbaa !4995
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323

bb.adl:                                           ; preds = %bb.adk
  %i.dky = getelementptr inbounds nuw i8, ptr %i.dkr, i64 240
  %i.dkz = load ptr, ptr %i.dky, align 8, !tbaa !4988 ; 6 uses
  %.not.i.i.i2312 = icmp eq ptr %i.dkz, null
  br i1 %.not.i.i.i2312, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc2320 unwind label %.loopexit.split-lp2901

.noexc2320:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313: ; preds = %bb.adl
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkz, i64 56
  %i.dlb = load i8, ptr %i.dla, align 8, !tbaa !4989
  %.not.i1.i.i2314 = icmp eq i8 %i.dlb, 0
  br i1 %.not.i1.i.i2314, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dkz, i64 89
  %i.dld = load i8, ptr %i.dlc, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz)
          to label %.noexc2321 unwind label %.loopexit2900

.noexc2321:                                       ; preds = %bb.ado
  %i.dle = load ptr, ptr %i.dkz, align 8, !tbaa !15
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dle, i64 48
  %i.dlg = load ptr, ptr %i.dlf, align 8
  %i.dlh = invoke noundef signext i8 %i.dlg(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315 unwind label %.loopexit2900, !inline_history !5022

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315: ; preds = %.noexc2321, %bb.adn
  %.0.i.i.i2316 = phi i8 [ %i.dld, %bb.adn ], [ %i.dlh, %.noexc2321 ] ; 2 uses
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  store i8 %.0.i.i.i2316, ptr %i.dli, align 8, !tbaa !4995
  store i8 1, ptr %i.dkv, align 1, !tbaa !4982
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315, %._crit_edge.i2317
  %i.dlj = phi i8 [ %.pre.i2319, %._crit_edge.i2317 ], [ %.0.i.i.i2316, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315 ]
  %i.dlk = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dkt, i8 %i.dku, ptr noundef nonnull align 8 dereferenceable(216) %i.dkr, i8 noundef signext %i.dlj, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.io)
          to label %bb.adp unwind label %.loopexit2900 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

.loopexit2900:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323, %bb.ado, %.noexc2321
  %lpad.loopexit2902 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

.loopexit.split-lp2901:                           ; preds = %bb.adm
  %lpad.loopexit.split-lp2903 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

bb.adq:                                           ; preds = %.loopexit.split-lp2901, %.loopexit2900
  %lpad.phi2904 = phi { ptr, i32 } [ %lpad.loopexit2902, %.loopexit2900 ], [ %lpad.loopexit.split-lp2903, %.loopexit.split-lp2901 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #27
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !26
  %i.dll = load ptr, ptr %0, align 8, !tbaa !15
  %i.dlm = getelementptr i8, ptr %i.dll, i64 -24
  %i.dln = load i64, ptr %i.dlm, align 8
  %i.dlo = getelementptr inbounds i8, ptr %0, i64 %i.dln
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dlo, i64 16
  %i.dlq = load i64, ptr %i.dlp, align 8, !tbaa !4997
  %.not.i2324 = icmp eq i64 %i.dlq, 0
  br i1 %.not.i2324, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %bb.adr
  %i.dlr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2328 unwind label %.loopexit ; 0 uses

bb.adt:                                           ; preds = %bb.adr
  %i.dls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 121)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2328 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2328: ; preds = %bb.adt, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.adu:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.afb, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dlt = icmp eq i8 %.0783, 79
  br i1 %i.dlt, label %bb.adw, label %bb.aef

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 37, ptr %i.ab, align 1, !tbaa !26
  %i.dlu = load ptr, ptr %0, align 8, !tbaa !15
  %i.dlv = getelementptr i8, ptr %i.dlu, i64 -24
  %i.dlw = load i64, ptr %i.dlv, align 8
  %i.dlx = getelementptr inbounds i8, ptr %0, i64 %i.dlw
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlx, i64 16
  %i.dlz = load i64, ptr %i.dly, align 8, !tbaa !4997
  %.not.i2329 = icmp eq i64 %i.dlz, 0
  br i1 %.not.i2329, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.dma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %bb.adz unwind label %.loopexit

bb.ady:                                           ; preds = %bb.adw
  %i.dmb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.adz unwind label %.loopexit ; 0 uses

bb.adz:                                           ; preds = %bb.adx, %bb.ady
  %.0.i2330 = phi ptr [ %i.dma, %bb.adx ], [ %0, %bb.ady ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 79, ptr %i.aa, align 1, !tbaa !26
  %i.dmc = load ptr, ptr %.0.i2330, align 8, !tbaa !15
  %i.dmd = getelementptr i8, ptr %i.dmc, i64 -24
  %i.dme = load i64, ptr %i.dmd, align 8
  %i.dmf = getelementptr inbounds i8, ptr %.0.i2330, i64 %i.dme
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dmf, i64 16
  %i.dmh = load i64, ptr %i.dmg, align 8, !tbaa !4997
  %.not.i2334 = icmp eq i64 %i.dmh, 0
  br i1 %.not.i2334, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.dmi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2330, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %bb.aec unwind label %.loopexit

bb.aeb:                                           ; preds = %bb.adz
  %i.dmj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2330, i8 noundef signext 79)
          to label %bb.aec unwind label %.loopexit ; 0 uses

bb.aec:                                           ; preds = %bb.aea, %bb.aeb
  %.0.i2335 = phi ptr [ %i.dmi, %bb.aea ], [ %.0.i2330, %bb.aeb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dmk = load i8, ptr %.0707, align 1, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dmk, ptr %i.z, align 1, !tbaa !26
  %i.dml = load ptr, ptr %.0.i2335, align 8, !tbaa !15
  %i.dmm = getelementptr i8, ptr %i.dml, i64 -24
  %i.dmn = load i64, ptr %i.dmm, align 8
  %i.dmo = getelementptr inbounds i8, ptr %.0.i2335, i64 %i.dmn
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmo, i64 16
  %i.dmq = load i64, ptr %i.dmp, align 8, !tbaa !4997
  %.not.i2339 = icmp eq i64 %i.dmq, 0
  br i1 %.not.i2339, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.dmr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2335, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2343 unwind label %.loopexit ; 0 uses

bb.aee:                                           ; preds = %bb.aec
  %i.dms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2335, i8 noundef signext %i.dmk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2343 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2343: ; preds = %bb.aee, %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.aef:                                           ; preds = %bb.adv
  %.sroa.0.0.copyload.i2344 = load i16, ptr %2, align 8, !tbaa !2386 ; 2 uses
  %.not2788 = icmp eq i16 %.sroa.0.0.copyload.i2344, -32768
  br i1 %.not2788, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2346

bb.aeg:                                           ; preds = %bb.aef
  %i.dmt = load ptr, ptr %0, align 8, !tbaa !15
  %i.dmu = getelementptr i8, ptr %i.dmt, i64 -24
  %i.dmv = load i64, ptr %i.dmu, align 8
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2270 = phi ptr [ %i.dhn, %bb.acj ], [ %.0.i2265, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhp = load i8, ptr %.0707, align 1, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhp, ptr %i.af, align 1, !tbaa !26
  %i.dhq = load ptr, ptr %.0.i2270, align 8, !tbaa !15
  %i.dhr = getelementptr i8, ptr %i.dhq, i64 -24
  %i.dhs = load i64, ptr %i.dhr, align 8
  %i.dht = getelementptr inbounds i8, ptr %.0.i2270, i64 %i.dhs
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dht, i64 16
  %i.dhv = load i64, ptr %i.dhu, align 8, !tbaa !4997
  %.not.i2274 = icmp eq i64 %i.dhv, 0
  br i1 %.not.i2274, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dhw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2270, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2278 unwind label %.loopexit ; 0 uses

bb.acn:                                           ; preds = %bb.acl
  %i.dhx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2270, i8 noundef signext %i.dhp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2278 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2278: ; preds = %bb.acn, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.aco:                                           ; preds = %bb.ace
  %i.dhy = load i8, ptr %i.gw, align 8, !tbaa !5076, !range !657, !noundef !658
  %i.dhz = trunc nuw i8 %i.dhy to i1
  br i1 %i.dhz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dia = load ptr, ptr %0, align 8, !tbaa !15
  %i.dib = getelementptr i8, ptr %i.dia, i64 -24
  %i.dic = load i64, ptr %i.dib, align 8
  %i.did = getelementptr inbounds i8, ptr %0, i64 %i.dic ; 2 uses
  %i.die = getelementptr inbounds nuw i8, ptr %i.did, i64 32
  %i.dif = load i32, ptr %i.die, align 8, !tbaa !4445
  %i.dig = or i32 %i.dif, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.did, i32 noundef %i.dig)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kz, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2281 = load i64, ptr %i.iq, align 8, !tbaa !609
  %i.dih = trunc i64 %.sroa.0.0.copyload.i.i2281 to i32
  store i32 %i.dih, ptr %6, align 8, !tbaa !5027
  %.sroa.0.0.copyload.i2282 = load i64, ptr %i.ir, align 8, !tbaa !609
  %i.dii = trunc i64 %.sroa.0.0.copyload.i2282 to i32
  store i32 %i.dii, ptr %i.is, align 4, !tbaa !5028
  %.sroa.0.0.copyload.i2283 = load i64, ptr %i.ip, align 8, !tbaa !609
  %i.dij = trunc i64 %.sroa.0.0.copyload.i2283 to i32
  store i32 %i.dij, ptr %i.it, align 8, !tbaa !5029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.51, i64 3, i1 false)
  %i.dik = icmp eq i8 %.0783, 69
  br i1 %i.dik, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280
  store i8 69, ptr %i.iu, align 1, !tbaa !26
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280
  %.0807 = phi ptr [ %i.iv, %bb.acq ], [ %i.iu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280 ] ; 2 uses
  %i.dil = load i8, ptr %.0707, align 1, !tbaa !26
  store i8 %i.dil, ptr %.0807, align 1, !tbaa !26
  %i.dim = load ptr, ptr %0, align 8, !tbaa !15
  %i.din = getelementptr i8, ptr %i.dim, i64 -24
  %i.dio = load i64, ptr %i.din, align 8
  %i.dip = getelementptr inbounds i8, ptr %0, i64 %i.dio ; 6 uses
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dip, i64 232
  %i.dir = load ptr, ptr %i.diq, align 8, !tbaa !5021 ; 2 uses
  %.not.i2284 = icmp eq ptr %i.dir, null
  %i.dis = zext i1 %.not.i2284 to i8
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dip, i64 225 ; 2 uses
  %i.diu = load i8, ptr %i.dit, align 1, !tbaa !4982, !range !657, !noundef !658
  %i.div = trunc nuw i8 %i.diu to i1
  br i1 %i.div, label %._crit_edge.i2290, label %bb.acs

._crit_edge.i2290:                                ; preds = %bb.acr
  %.phi.trans.insert.i2291 = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  %.pre.i2292 = load i8, ptr %.phi.trans.insert.i2291, align 8, !tbaa !4995
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296

bb.acs:                                           ; preds = %bb.acr
  %i.diw = getelementptr inbounds nuw i8, ptr %i.dip, i64 240
  %i.dix = load ptr, ptr %i.diw, align 8, !tbaa !4988 ; 6 uses
  %.not.i.i.i2285 = icmp eq ptr %i.dix, null
  br i1 %.not.i.i.i2285, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc2293 unwind label %.loopexit.split-lp2906

.noexc2293:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286: ; preds = %bb.acs
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dix, i64 56
  %i.diz = load i8, ptr %i.diy, align 8, !tbaa !4989
  %.not.i1.i.i2287 = icmp eq i8 %i.diz, 0
  br i1 %.not.i1.i.i2287, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286
  %i.dja = getelementptr inbounds nuw i8, ptr %i.dix, i64 89
  %i.djb = load i8, ptr %i.dja, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dix)
          to label %.noexc2294 unwind label %.loopexit2905

.noexc2294:                                       ; preds = %bb.acv
  %i.djc = load ptr, ptr %i.dix, align 8, !tbaa !15
  %i.djd = getelementptr inbounds nuw i8, ptr %i.djc, i64 48
  %i.dje = load ptr, ptr %i.djd, align 8
  %i.djf = invoke noundef signext i8 %i.dje(ptr noundef nonnull align 8 dereferenceable(570) %i.dix, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288 unwind label %.loopexit2905, !inline_history !5022

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288: ; preds = %.noexc2294, %bb.acu
  %.0.i.i.i2289 = phi i8 [ %i.djb, %bb.acu ], [ %i.djf, %.noexc2294 ] ; 2 uses
  %i.djg = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  store i8 %.0.i.i.i2289, ptr %i.djg, align 8, !tbaa !4995
  store i8 1, ptr %i.dit, align 1, !tbaa !4982
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288, %._crit_edge.i2290
  %i.djh = phi i8 [ %.pre.i2292, %._crit_edge.i2290 ], [ %.0.i.i.i2289, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288 ]
  %i.dji = getelementptr inbounds nuw i8, ptr %.0807, i64 1
  %i.djj = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dir, i8 %i.dis, ptr noundef nonnull align 8 dereferenceable(216) %i.dip, i8 noundef signext %i.djh, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.dji)
          to label %bb.acw unwind label %.loopexit2905 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

.loopexit2905:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296, %bb.acv, %.noexc2294
  %lpad.loopexit2907 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

.loopexit.split-lp2906:                           ; preds = %bb.act
  %lpad.loopexit.split-lp2908 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

bb.acx:                                           ; preds = %.loopexit.split-lp2906, %.loopexit2905
  %lpad.phi2909 = phi { ptr, i32 } [ %lpad.loopexit2907, %.loopexit2905 ], [ %lpad.loopexit.split-lp2908, %.loopexit.split-lp2906 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #27
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !26
  %i.djk = load ptr, ptr %0, align 8, !tbaa !15
  %i.djl = getelementptr i8, ptr %i.djk, i64 -24
  %i.djm = load i64, ptr %i.djl, align 8
  %i.djn = getelementptr inbounds i8, ptr %0, i64 %i.djm
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 16
  %i.djp = load i64, ptr %i.djo, align 8, !tbaa !4997
  %.not.i2297 = icmp eq i64 %i.djp, 0
  br i1 %.not.i2297, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.djq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 unwind label %.loopexit ; 0 uses

bb.ada:                                           ; preds = %bb.acy
  %i.djr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301: ; preds = %bb.ada, %bb.acz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.adb:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.adr, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.sroa.0.0.copyload.i2302 = load i16, ptr %2, align 8, !tbaa !2386 ; 2 uses
  %.not2789 = icmp eq i16 %.sroa.0.0.copyload.i2302, -32768
  br i1 %.not2789, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304

bb.add:                                           ; preds = %bb.adc
  %i.djs = load ptr, ptr %0, align 8, !tbaa !15
  %i.djt = getelementptr i8, ptr %i.djs, i64 -24
  %i.dju = load i64, ptr %i.djt, align 8
  %i.djv = getelementptr inbounds i8, ptr %0, i64 %i.dju ; 2 uses
  %i.djw = getelementptr inbounds nuw i8, ptr %i.djv, i64 32
  %i.djx = load i32, ptr %i.djw, align 8, !tbaa !4445
  %i.djy = or i32 %i.djx, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djv, i32 noundef %i.djy)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2305.pre = load i16, ptr %2, align 8, !tbaa !2386
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge, %bb.adc
  %.sroa.0.0.copyload.i2305 = phi i16 [ %.sroa.0.0.copyload.i2305.pre, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge ], [ %.sroa.0.0.copyload.i2302, %bb.adc ]
  %20 = sext i16 %.sroa.0.0.copyload.i2305 to i32 ; 2 uses
  %i.djz = icmp eq i8 %.0783, 0
  br i1 %i.djz, label %bb.ade, label %bb.adk

bb.ade:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %.lhs.trunc2786 = trunc nuw i32 %21 to i16
  %i.dka = urem i16 %.lhs.trunc2786, 100          ; 2 uses
  %.zext2787 = zext nneg i16 %i.dka to i32
  %i.dkb = icmp samesign ult i16 %i.dka, 10
  br i1 %i.dkb, label %bb.adf, label %bb.adj

bb.adf:                                           ; preds = %bb.ade
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 48, ptr %i.ad, align 1, !tbaa !26
  %i.dkc = load ptr, ptr %0, align 8, !tbaa !15
  %i.dkd = getelementptr i8, ptr %i.dkc, i64 -24
  %i.dke = load i64, ptr %i.dkd, align 8
  %i.dkf = getelementptr inbounds i8, ptr %0, i64 %i.dke
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dkf, i64 16
  %i.dkh = load i64, ptr %i.dkg, align 8, !tbaa !4997
  %.not.i2306 = icmp eq i64 %i.dkh, 0
  br i1 %.not.i2306, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.dki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310 unwind label %bb.adi ; 0 uses

bb.adh:                                           ; preds = %bb.adf
  %i.dkj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310 unwind label %bb.adi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310: ; preds = %bb.adh, %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.adj

bb.adi:                                           ; preds = %bb.adh, %bb.adg, %bb.adj
  %i.dkk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.adj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310, %bb.ade
  %i.dkl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.zext2787)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486 unwind label %bb.adi ; 0 uses

bb.adk:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #27
  store i8 37, ptr %i.fs, align 1, !tbaa !26
  store i8 %.0783, ptr %i.im, align 1, !tbaa !26
  %i.dkm = load i8, ptr %.0707, align 1, !tbaa !26
  store i8 %i.dkm, ptr %i.in, align 1, !tbaa !26
  %i.dkn = add nsw i32 %20, -1900
  store i32 %i.dkn, ptr %i.ij, align 4, !tbaa !5031
  %i.dko = load ptr, ptr %0, align 8, !tbaa !15
  %i.dkp = getelementptr i8, ptr %i.dko, i64 -24
  %i.dkq = load i64, ptr %i.dkp, align 8
  %i.dkr = getelementptr inbounds i8, ptr %0, i64 %i.dkq ; 6 uses
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dkr, i64 232
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !5021 ; 2 uses
  %.not.i2311 = icmp eq ptr %i.dkt, null
  %i.dku = zext i1 %.not.i2311 to i8
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dkr, i64 225 ; 2 uses
  %i.dkw = load i8, ptr %i.dkv, align 1, !tbaa !4982, !range !657, !noundef !658
  %i.dkx = trunc nuw i8 %i.dkw to i1
  br i1 %i.dkx, label %._crit_edge.i2317, label %bb.adl

._crit_edge.i2317:                                ; preds = %bb.adk
  %.phi.trans.insert.i2318 = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  %.pre.i2319 = load i8, ptr %.phi.trans.insert.i2318, align 8, !tbaa !4995
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323

bb.adl:                                           ; preds = %bb.adk
  %i.dky = getelementptr inbounds nuw i8, ptr %i.dkr, i64 240
  %i.dkz = load ptr, ptr %i.dky, align 8, !tbaa !4988 ; 6 uses
  %.not.i.i.i2312 = icmp eq ptr %i.dkz, null
  br i1 %.not.i.i.i2312, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc2320 unwind label %.loopexit.split-lp2901

.noexc2320:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313: ; preds = %bb.adl
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkz, i64 56
  %i.dlb = load i8, ptr %i.dla, align 8, !tbaa !4989
  %.not.i1.i.i2314 = icmp eq i8 %i.dlb, 0
  br i1 %.not.i1.i.i2314, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dkz, i64 89
  %i.dld = load i8, ptr %i.dlc, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz)
          to label %.noexc2321 unwind label %.loopexit2900

.noexc2321:                                       ; preds = %bb.ado
  %i.dle = load ptr, ptr %i.dkz, align 8, !tbaa !15
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dle, i64 48
  %i.dlg = load ptr, ptr %i.dlf, align 8
  %i.dlh = invoke noundef signext i8 %i.dlg(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315 unwind label %.loopexit2900, !inline_history !5022

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315: ; preds = %.noexc2321, %bb.adn
  %.0.i.i.i2316 = phi i8 [ %i.dld, %bb.adn ], [ %i.dlh, %.noexc2321 ] ; 2 uses
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  store i8 %.0.i.i.i2316, ptr %i.dli, align 8, !tbaa !4995
  store i8 1, ptr %i.dkv, align 1, !tbaa !4982
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315, %._crit_edge.i2317
  %i.dlj = phi i8 [ %.pre.i2319, %._crit_edge.i2317 ], [ %.0.i.i.i2316, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315 ]
  %i.dlk = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dkt, i8 %i.dku, ptr noundef nonnull align 8 dereferenceable(216) %i.dkr, i8 noundef signext %i.dlj, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.io)
          to label %bb.adp unwind label %.loopexit2900 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

.loopexit2900:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323, %bb.ado, %.noexc2321
  %lpad.loopexit2902 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

.loopexit.split-lp2901:                           ; preds = %bb.adm
  %lpad.loopexit.split-lp2903 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

bb.adq:                                           ; preds = %.loopexit.split-lp2901, %.loopexit2900
  %lpad.phi2904 = phi { ptr, i32 } [ %lpad.loopexit2902, %.loopexit2900 ], [ %lpad.loopexit.split-lp2903, %.loopexit.split-lp2901 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #27
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !26
  %i.dll = load ptr, ptr %0, align 8, !tbaa !15
  %i.dlm = getelementptr i8, ptr %i.dll, i64 -24
  %i.dln = load i64, ptr %i.dlm, align 8
  %i.dlo = getelementptr inbounds i8, ptr %0, i64 %i.dln
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dlo, i64 16
  %i.dlq = load i64, ptr %i.dlp, align 8, !tbaa !4997
  %.not.i2324 = icmp eq i64 %i.dlq, 0
  br i1 %.not.i2324, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %bb.adr
  %i.dlr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2328 unwind label %.loopexit ; 0 uses

bb.adt:                                           ; preds = %bb.adr
  %i.dls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 121)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2328 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2328: ; preds = %bb.adt, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.adu:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.afb, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dlt = icmp eq i8 %.0783, 79
  br i1 %i.dlt, label %bb.adw, label %bb.aef

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 37, ptr %i.ab, align 1, !tbaa !26
  %i.dlu = load ptr, ptr %0, align 8, !tbaa !15
  %i.dlv = getelementptr i8, ptr %i.dlu, i64 -24
  %i.dlw = load i64, ptr %i.dlv, align 8
  %i.dlx = getelementptr inbounds i8, ptr %0, i64 %i.dlw
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlx, i64 16
  %i.dlz = load i64, ptr %i.dly, align 8, !tbaa !4997
  %.not.i2329 = icmp eq i64 %i.dlz, 0
  br i1 %.not.i2329, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.dma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %bb.adz unwind label %.loopexit

bb.ady:                                           ; preds = %bb.adw
  %i.dmb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.adz unwind label %.loopexit ; 0 uses

bb.adz:                                           ; preds = %bb.adx, %bb.ady
  %.0.i2330 = phi ptr [ %i.dma, %bb.adx ], [ %0, %bb.ady ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 79, ptr %i.aa, align 1, !tbaa !26
  %i.dmc = load ptr, ptr %.0.i2330, align 8, !tbaa !15
  %i.dmd = getelementptr i8, ptr %i.dmc, i64 -24
  %i.dme = load i64, ptr %i.dmd, align 8
  %i.dmf = getelementptr inbounds i8, ptr %.0.i2330, i64 %i.dme
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dmf, i64 16
  %i.dmh = load i64, ptr %i.dmg, align 8, !tbaa !4997
  %.not.i2334 = icmp eq i64 %i.dmh, 0
  br i1 %.not.i2334, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.dmi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2330, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %bb.aec unwind label %.loopexit

bb.aeb:                                           ; preds = %bb.adz
  %i.dmj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2330, i8 noundef signext 79)
          to label %bb.aec unwind label %.loopexit ; 0 uses

bb.aec:                                           ; preds = %bb.aea, %bb.aeb
  %.0.i2335 = phi ptr [ %i.dmi, %bb.aea ], [ %.0.i2330, %bb.aeb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dmk = load i8, ptr %.0707, align 1, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dmk, ptr %i.z, align 1, !tbaa !26
  %i.dml = load ptr, ptr %.0.i2335, align 8, !tbaa !15
  %i.dmm = getelementptr i8, ptr %i.dml, i64 -24
  %i.dmn = load i64, ptr %i.dmm, align 8
  %i.dmo = getelementptr inbounds i8, ptr %.0.i2335, i64 %i.dmn
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmo, i64 16
  %i.dmq = load i64, ptr %i.dmp, align 8, !tbaa !4997
  %.not.i2339 = icmp eq i64 %i.dmq, 0
  br i1 %.not.i2339, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.dmr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2335, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2343 unwind label %.loopexit ; 0 uses

bb.aee:                                           ; preds = %bb.aec
  %i.dms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2335, i8 noundef signext %i.dmk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2343 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2343: ; preds = %bb.aee, %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.aef:                                           ; preds = %bb.adv
  %.sroa.0.0.copyload.i2344 = load i16, ptr %2, align 8, !tbaa !2386 ; 2 uses
  %.not2788 = icmp eq i16 %.sroa.0.0.copyload.i2344, -32768
  br i1 %.not2788, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2346

bb.aeg:                                           ; preds = %bb.aef
  %i.dmt = load ptr, ptr %0, align 8, !tbaa !15
  %i.dmu = getelementptr i8, ptr %i.dmt, i64 -24
  %i.dmv = load i64, ptr %i.dmu, align 8
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2270 = phi ptr [ %i.dhn, %bb.acj ], [ %.0.i2265, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhp = load i8, ptr %.0707, align 1, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhp, ptr %i.af, align 1, !tbaa !26
  %i.dhq = load ptr, ptr %.0.i2270, align 8, !tbaa !15
  %i.dhr = getelementptr i8, ptr %i.dhq, i64 -24
  %i.dhs = load i64, ptr %i.dhr, align 8
  %i.dht = getelementptr inbounds i8, ptr %.0.i2270, i64 %i.dhs
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dht, i64 16
  %i.dhv = load i64, ptr %i.dhu, align 8, !tbaa !4997
  %.not.i2274 = icmp eq i64 %i.dhv, 0
  br i1 %.not.i2274, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dhw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2270, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2278 unwind label %.loopexit ; 0 uses

bb.acn:                                           ; preds = %bb.acl
  %i.dhx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2270, i8 noundef signext %i.dhp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2278 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2278: ; preds = %bb.acn, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.aco:                                           ; preds = %bb.ace
  %i.dhy = load i8, ptr %i.gw, align 8, !tbaa !5094, !range !657, !noundef !658
  %i.dhz = trunc nuw i8 %i.dhy to i1
  br i1 %i.dhz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dia = load ptr, ptr %0, align 8, !tbaa !15
  %i.dib = getelementptr i8, ptr %i.dia, i64 -24
  %i.dic = load i64, ptr %i.dib, align 8
  %i.did = getelementptr inbounds i8, ptr %0, i64 %i.dic ; 2 uses
  %i.die = getelementptr inbounds nuw i8, ptr %i.did, i64 32
  %i.dif = load i32, ptr %i.die, align 8, !tbaa !4445
  %i.dig = or i32 %i.dif, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.did, i32 noundef %i.dig)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kz, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2281 = load i64, ptr %i.iq, align 8, !tbaa !609
  %i.dih = trunc i64 %.sroa.0.0.copyload.i.i2281 to i32
  store i32 %i.dih, ptr %6, align 8, !tbaa !5027
  %.sroa.0.0.copyload.i2282 = load i64, ptr %i.ir, align 8, !tbaa !609
  %i.dii = trunc i64 %.sroa.0.0.copyload.i2282 to i32
  store i32 %i.dii, ptr %i.is, align 4, !tbaa !5028
  %.sroa.0.0.copyload.i2283 = load i64, ptr %i.ip, align 8, !tbaa !609
  %i.dij = trunc i64 %.sroa.0.0.copyload.i2283 to i32
  store i32 %i.dij, ptr %i.it, align 8, !tbaa !5029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.51, i64 3, i1 false)
  %i.dik = icmp eq i8 %.0783, 69
  br i1 %i.dik, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280
  store i8 69, ptr %i.iu, align 1, !tbaa !26
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280
  %.0807 = phi ptr [ %i.iv, %bb.acq ], [ %i.iu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2280 ] ; 2 uses
  %i.dil = load i8, ptr %.0707, align 1, !tbaa !26
  store i8 %i.dil, ptr %.0807, align 1, !tbaa !26
  %i.dim = load ptr, ptr %0, align 8, !tbaa !15
  %i.din = getelementptr i8, ptr %i.dim, i64 -24
  %i.dio = load i64, ptr %i.din, align 8
  %i.dip = getelementptr inbounds i8, ptr %0, i64 %i.dio ; 6 uses
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dip, i64 232
  %i.dir = load ptr, ptr %i.diq, align 8, !tbaa !5021 ; 2 uses
  %.not.i2284 = icmp eq ptr %i.dir, null
  %i.dis = zext i1 %.not.i2284 to i8
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dip, i64 225 ; 2 uses
  %i.diu = load i8, ptr %i.dit, align 1, !tbaa !4982, !range !657, !noundef !658
  %i.div = trunc nuw i8 %i.diu to i1
  br i1 %i.div, label %._crit_edge.i2290, label %bb.acs

._crit_edge.i2290:                                ; preds = %bb.acr
  %.phi.trans.insert.i2291 = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  %.pre.i2292 = load i8, ptr %.phi.trans.insert.i2291, align 8, !tbaa !4995
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296

bb.acs:                                           ; preds = %bb.acr
  %i.diw = getelementptr inbounds nuw i8, ptr %i.dip, i64 240
  %i.dix = load ptr, ptr %i.diw, align 8, !tbaa !4988 ; 6 uses
  %.not.i.i.i2285 = icmp eq ptr %i.dix, null
  br i1 %.not.i.i.i2285, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc2293 unwind label %.loopexit.split-lp2906

.noexc2293:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286: ; preds = %bb.acs
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dix, i64 56
  %i.diz = load i8, ptr %i.diy, align 8, !tbaa !4989
  %.not.i1.i.i2287 = icmp eq i8 %i.diz, 0
  br i1 %.not.i1.i.i2287, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286
  %i.dja = getelementptr inbounds nuw i8, ptr %i.dix, i64 89
  %i.djb = load i8, ptr %i.dja, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2286
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dix)
          to label %.noexc2294 unwind label %.loopexit2905

.noexc2294:                                       ; preds = %bb.acv
  %i.djc = load ptr, ptr %i.dix, align 8, !tbaa !15
  %i.djd = getelementptr inbounds nuw i8, ptr %i.djc, i64 48
  %i.dje = load ptr, ptr %i.djd, align 8
  %i.djf = invoke noundef signext i8 %i.dje(ptr noundef nonnull align 8 dereferenceable(570) %i.dix, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288 unwind label %.loopexit2905, !inline_history !5022

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288: ; preds = %.noexc2294, %bb.acu
  %.0.i.i.i2289 = phi i8 [ %i.djb, %bb.acu ], [ %i.djf, %.noexc2294 ] ; 2 uses
  %i.djg = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  store i8 %.0.i.i.i2289, ptr %i.djg, align 8, !tbaa !4995
  store i8 1, ptr %i.dit, align 1, !tbaa !4982
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288, %._crit_edge.i2290
  %i.djh = phi i8 [ %.pre.i2292, %._crit_edge.i2290 ], [ %.0.i.i.i2289, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2288 ]
  %i.dji = getelementptr inbounds nuw i8, ptr %.0807, i64 1
  %i.djj = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dir, i8 %i.dis, ptr noundef nonnull align 8 dereferenceable(216) %i.dip, i8 noundef signext %i.djh, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.dji)
          to label %bb.acw unwind label %.loopexit2905 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

.loopexit2905:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2296, %bb.acv, %.noexc2294
  %lpad.loopexit2907 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

.loopexit.split-lp2906:                           ; preds = %bb.act
  %lpad.loopexit.split-lp2908 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

bb.acx:                                           ; preds = %.loopexit.split-lp2906, %.loopexit2905
  %lpad.phi2909 = phi { ptr, i32 } [ %lpad.loopexit2907, %.loopexit2905 ], [ %lpad.loopexit.split-lp2908, %.loopexit.split-lp2906 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #27
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !26
  %i.djk = load ptr, ptr %0, align 8, !tbaa !15
  %i.djl = getelementptr i8, ptr %i.djk, i64 -24
  %i.djm = load i64, ptr %i.djl, align 8
  %i.djn = getelementptr inbounds i8, ptr %0, i64 %i.djm
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 16
  %i.djp = load i64, ptr %i.djo, align 8, !tbaa !4997
  %.not.i2297 = icmp eq i64 %i.djp, 0
  br i1 %.not.i2297, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.djq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 unwind label %.loopexit ; 0 uses

bb.ada:                                           ; preds = %bb.acy
  %i.djr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2301: ; preds = %bb.ada, %bb.acz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.adb:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.adr, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.sroa.0.0.copyload.i2302 = load i16, ptr %2, align 8, !tbaa !2386 ; 2 uses
  %.not2789 = icmp eq i16 %.sroa.0.0.copyload.i2302, -32768
  br i1 %.not2789, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304

bb.add:                                           ; preds = %bb.adc
  %i.djs = load ptr, ptr %0, align 8, !tbaa !15
  %i.djt = getelementptr i8, ptr %i.djs, i64 -24
  %i.dju = load i64, ptr %i.djt, align 8
  %i.djv = getelementptr inbounds i8, ptr %0, i64 %i.dju ; 2 uses
  %i.djw = getelementptr inbounds nuw i8, ptr %i.djv, i64 32
  %i.djx = load i32, ptr %i.djw, align 8, !tbaa !4445
  %i.djy = or i32 %i.djx, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djv, i32 noundef %i.djy)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2305.pre = load i16, ptr %2, align 8, !tbaa !2386
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge, %bb.adc
  %.sroa.0.0.copyload.i2305 = phi i16 [ %.sroa.0.0.copyload.i2305.pre, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304_crit_edge ], [ %.sroa.0.0.copyload.i2302, %bb.adc ]
  %20 = sext i16 %.sroa.0.0.copyload.i2305 to i32 ; 2 uses
  %i.djz = icmp eq i8 %.0783, 0
  br i1 %i.djz, label %bb.ade, label %bb.adk

bb.ade:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %.lhs.trunc2786 = trunc nuw i32 %21 to i16
  %i.dka = urem i16 %.lhs.trunc2786, 100          ; 2 uses
  %.zext2787 = zext nneg i16 %i.dka to i32
  %i.dkb = icmp samesign ult i16 %i.dka, 10
  br i1 %i.dkb, label %bb.adf, label %bb.adj

bb.adf:                                           ; preds = %bb.ade
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 48, ptr %i.ad, align 1, !tbaa !26
  %i.dkc = load ptr, ptr %0, align 8, !tbaa !15
  %i.dkd = getelementptr i8, ptr %i.dkc, i64 -24
  %i.dke = load i64, ptr %i.dkd, align 8
  %i.dkf = getelementptr inbounds i8, ptr %0, i64 %i.dke
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dkf, i64 16
  %i.dkh = load i64, ptr %i.dkg, align 8, !tbaa !4997
  %.not.i2306 = icmp eq i64 %i.dkh, 0
  br i1 %.not.i2306, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.dki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310 unwind label %bb.adi ; 0 uses

bb.adh:                                           ; preds = %bb.adf
  %i.dkj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310 unwind label %bb.adi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310: ; preds = %bb.adh, %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.adj

bb.adi:                                           ; preds = %bb.adh, %bb.adg, %bb.adj
  %i.dkk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.adj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2310, %bb.ade
  %i.dkl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.zext2787)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486 unwind label %bb.adi ; 0 uses

bb.adk:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #27
  store i8 37, ptr %i.fs, align 1, !tbaa !26
  store i8 %.0783, ptr %i.im, align 1, !tbaa !26
  %i.dkm = load i8, ptr %.0707, align 1, !tbaa !26
  store i8 %i.dkm, ptr %i.in, align 1, !tbaa !26
  %i.dkn = add nsw i32 %20, -1900
  store i32 %i.dkn, ptr %i.ij, align 4, !tbaa !5031
  %i.dko = load ptr, ptr %0, align 8, !tbaa !15
  %i.dkp = getelementptr i8, ptr %i.dko, i64 -24
  %i.dkq = load i64, ptr %i.dkp, align 8
  %i.dkr = getelementptr inbounds i8, ptr %0, i64 %i.dkq ; 6 uses
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dkr, i64 232
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !5021 ; 2 uses
  %.not.i2311 = icmp eq ptr %i.dkt, null
  %i.dku = zext i1 %.not.i2311 to i8
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dkr, i64 225 ; 2 uses
  %i.dkw = load i8, ptr %i.dkv, align 1, !tbaa !4982, !range !657, !noundef !658
  %i.dkx = trunc nuw i8 %i.dkw to i1
  br i1 %i.dkx, label %._crit_edge.i2317, label %bb.adl

._crit_edge.i2317:                                ; preds = %bb.adk
  %.phi.trans.insert.i2318 = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  %.pre.i2319 = load i8, ptr %.phi.trans.insert.i2318, align 8, !tbaa !4995
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323

bb.adl:                                           ; preds = %bb.adk
  %i.dky = getelementptr inbounds nuw i8, ptr %i.dkr, i64 240
  %i.dkz = load ptr, ptr %i.dky, align 8, !tbaa !4988 ; 6 uses
  %.not.i.i.i2312 = icmp eq ptr %i.dkz, null
  br i1 %.not.i.i.i2312, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc2320 unwind label %.loopexit.split-lp2901

.noexc2320:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313: ; preds = %bb.adl
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkz, i64 56
  %i.dlb = load i8, ptr %i.dla, align 8, !tbaa !4989
  %.not.i1.i.i2314 = icmp eq i8 %i.dlb, 0
  br i1 %.not.i1.i.i2314, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dkz, i64 89
  %i.dld = load i8, ptr %i.dlc, align 1, !tbaa !26
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2313
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz)
          to label %.noexc2321 unwind label %.loopexit2900

.noexc2321:                                       ; preds = %bb.ado
  %i.dle = load ptr, ptr %i.dkz, align 8, !tbaa !15
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dle, i64 48
  %i.dlg = load ptr, ptr %i.dlf, align 8
  %i.dlh = invoke noundef signext i8 %i.dlg(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315 unwind label %.loopexit2900, !inline_history !5022

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315: ; preds = %.noexc2321, %bb.adn
  %.0.i.i.i2316 = phi i8 [ %i.dld, %bb.adn ], [ %i.dlh, %.noexc2321 ] ; 2 uses
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  store i8 %.0.i.i.i2316, ptr %i.dli, align 8, !tbaa !4995
  store i8 1, ptr %i.dkv, align 1, !tbaa !4982
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315, %._crit_edge.i2317
  %i.dlj = phi i8 [ %.pre.i2319, %._crit_edge.i2317 ], [ %.0.i.i.i2316, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2315 ]
  %i.dlk = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dkt, i8 %i.dku, ptr noundef nonnull align 8 dereferenceable(216) %i.dkr, i8 noundef signext %i.dlj, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.io)
          to label %bb.adp unwind label %.loopexit2900 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #27
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

.loopexit2900:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2323, %bb.ado, %.noexc2321
  %lpad.loopexit2902 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

.loopexit.split-lp2901:                           ; preds = %bb.adm
  %lpad.loopexit.split-lp2903 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

bb.adq:                                           ; preds = %.loopexit.split-lp2901, %.loopexit2900
  %lpad.phi2904 = phi { ptr, i32 } [ %lpad.loopexit2902, %.loopexit2900 ], [ %lpad.loopexit.split-lp2903, %.loopexit.split-lp2901 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #27
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !26
  %i.dll = load ptr, ptr %0, align 8, !tbaa !15
  %i.dlm = getelementptr i8, ptr %i.dll, i64 -24
  %i.dln = load i64, ptr %i.dlm, align 8
  %i.dlo = getelementptr inbounds i8, ptr %0, i64 %i.dln
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dlo, i64 16
  %i.dlq = load i64, ptr %i.dlp, align 8, !tbaa !4997
  %.not.i2324 = icmp eq i64 %i.dlq, 0
  br i1 %.not.i2324, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %bb.adr
  %i.dlr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2328 unwind label %.loopexit ; 0 uses

bb.adt:                                           ; preds = %bb.adr
  %i.dls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 121)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2328 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2328: ; preds = %bb.adt, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.adu:                                           ; preds = %bb.h
  br i1 %.not928, label %bb.afb, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dlt = icmp eq i8 %.0783, 79
  br i1 %i.dlt, label %bb.adw, label %bb.aef

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 37, ptr %i.ab, align 1, !tbaa !26
  %i.dlu = load ptr, ptr %0, align 8, !tbaa !15
  %i.dlv = getelementptr i8, ptr %i.dlu, i64 -24
  %i.dlw = load i64, ptr %i.dlv, align 8
  %i.dlx = getelementptr inbounds i8, ptr %0, i64 %i.dlw
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlx, i64 16
  %i.dlz = load i64, ptr %i.dly, align 8, !tbaa !4997
  %.not.i2329 = icmp eq i64 %i.dlz, 0
  br i1 %.not.i2329, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.dma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %bb.adz unwind label %.loopexit

bb.ady:                                           ; preds = %bb.adw
  %i.dmb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.adz unwind label %.loopexit ; 0 uses

bb.adz:                                           ; preds = %bb.adx, %bb.ady
  %.0.i2330 = phi ptr [ %i.dma, %bb.adx ], [ %0, %bb.ady ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 79, ptr %i.aa, align 1, !tbaa !26
  %i.dmc = load ptr, ptr %.0.i2330, align 8, !tbaa !15
  %i.dmd = getelementptr i8, ptr %i.dmc, i64 -24
  %i.dme = load i64, ptr %i.dmd, align 8
  %i.dmf = getelementptr inbounds i8, ptr %.0.i2330, i64 %i.dme
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dmf, i64 16
  %i.dmh = load i64, ptr %i.dmg, align 8, !tbaa !4997
  %.not.i2334 = icmp eq i64 %i.dmh, 0
  br i1 %.not.i2334, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.dmi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2330, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %bb.aec unwind label %.loopexit

bb.aeb:                                           ; preds = %bb.adz
  %i.dmj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2330, i8 noundef signext 79)
          to label %bb.aec unwind label %.loopexit ; 0 uses

bb.aec:                                           ; preds = %bb.aea, %bb.aeb
  %.0.i2335 = phi ptr [ %i.dmi, %bb.aea ], [ %.0.i2330, %bb.aeb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dmk = load i8, ptr %.0707, align 1, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dmk, ptr %i.z, align 1, !tbaa !26
  %i.dml = load ptr, ptr %.0.i2335, align 8, !tbaa !15
  %i.dmm = getelementptr i8, ptr %i.dml, i64 -24
  %i.dmn = load i64, ptr %i.dmm, align 8
  %i.dmo = getelementptr inbounds i8, ptr %.0.i2335, i64 %i.dmn
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmo, i64 16
  %i.dmq = load i64, ptr %i.dmp, align 8, !tbaa !4997
  %.not.i2339 = icmp eq i64 %i.dmq, 0
  br i1 %.not.i2339, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.dmr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2335, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2343 unwind label %.loopexit ; 0 uses

bb.aee:                                           ; preds = %bb.aec
  %i.dms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2335, i8 noundef signext %i.dmk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2343 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2343: ; preds = %bb.aee, %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1486

bb.aef:                                           ; preds = %bb.adv
  %.sroa.0.0.copyload.i2344 = load i16, ptr %2, align 8, !tbaa !2386 ; 2 uses
  %.not2788 = icmp eq i16 %.sroa.0.0.copyload.i2344, -32768
  br i1 %.not2788, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2346

bb.aeg:                                           ; preds = %bb.aef
  %i.dmt = load ptr, ptr %0, align 8, !tbaa !15
  %i.dmu = getelementptr i8, ptr %i.dmt, i64 -24
  %i.dmv = load i64, ptr %i.dmu, align 8
end_hunk_3
