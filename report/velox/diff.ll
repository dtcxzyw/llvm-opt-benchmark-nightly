inline.NumInlined: 8612
inline.NumDeleted: 3310
begin_hunk_0_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2268 = phi ptr [ %i.dhk, %bb.acj ], [ %.0.i2263, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhm = load i8, ptr %.0707, align 1, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhm, ptr %i.af, align 1, !tbaa !60
  %i.dhn = load ptr, ptr %.0.i2268, align 8, !tbaa !110
  %i.dho = getelementptr i8, ptr %i.dhn, i64 -24
  %i.dhp = load i64, ptr %i.dho, align 8
  %i.dhq = getelementptr inbounds i8, ptr %.0.i2268, i64 %i.dhp
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.dhq, i64 16
  %i.dhs = load i64, ptr %i.dhr, align 8, !tbaa !1516
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
  %i.dhv = load i8, ptr %i.gw, align 8, !tbaa !1554, !range !317, !noundef !185
  %i.dhw = trunc nuw i8 %i.dhv to i1
  br i1 %i.dhw, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dhx = load ptr, ptr %0, align 8, !tbaa !110
  %i.dhy = getelementptr i8, ptr %i.dhx, i64 -24
  %i.dhz = load i64, ptr %i.dhy, align 8
  %i.dia = getelementptr inbounds i8, ptr %0, i64 %i.dhz ; 2 uses
  %i.dib = getelementptr inbounds nuw i8, ptr %i.dia, i64 32
  %i.dic = load i32, ptr %i.dib, align 8, !tbaa !1529
  %i.did = or i32 %i.dic, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dia, i32 noundef %i.did)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ky, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2279 = load i64, ptr %i.ip, align 8, !tbaa !61
  %i.die = trunc i64 %.sroa.0.0.copyload.i.i2279 to i32
  store i32 %i.die, ptr %6, align 8, !tbaa !1585
  %.sroa.0.0.copyload.i2280 = load i64, ptr %i.iq, align 8, !tbaa !61
  %i.dif = trunc i64 %.sroa.0.0.copyload.i2280 to i32
  store i32 %i.dif, ptr %i.ir, align 4, !tbaa !1586
  %.sroa.0.0.copyload.i2281 = load i64, ptr %i.io, align 8, !tbaa !61
  %i.dig = trunc i64 %.sroa.0.0.copyload.i2281 to i32
  store i32 %i.dig, ptr %i.is, align 8, !tbaa !1587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.32, i64 3, i1 false)
  %i.dih = icmp eq i8 %.0782, 69
  br i1 %i.dih, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278
  store i8 69, ptr %i.it, align 1, !tbaa !60
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278
  %.0806 = phi ptr [ %i.iu, %bb.acq ], [ %i.it, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278 ] ; 2 uses
  %i.dii = load i8, ptr %.0707, align 1, !tbaa !60
  store i8 %i.dii, ptr %.0806, align 1, !tbaa !60
  %i.dij = load ptr, ptr %0, align 8, !tbaa !110
  %i.dik = getelementptr i8, ptr %i.dij, i64 -24
  %i.dil = load i64, ptr %i.dik, align 8
  %i.dim = getelementptr inbounds i8, ptr %0, i64 %i.dil ; 6 uses
  %i.din = getelementptr inbounds nuw i8, ptr %i.dim, i64 232
  %i.dio = load ptr, ptr %i.din, align 8, !tbaa !1579 ; 2 uses
  %.not.i2282 = icmp eq ptr %i.dio, null
  %i.dip = zext i1 %.not.i2282 to i8
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dim, i64 225 ; 2 uses
  %i.dir = load i8, ptr %i.diq, align 1, !tbaa !1540, !range !317, !noundef !185
  %i.dis = trunc nuw i8 %i.dir to i1
  br i1 %i.dis, label %._crit_edge.i2288, label %bb.acs

._crit_edge.i2288:                                ; preds = %bb.acr
  %.phi.trans.insert.i2289 = getelementptr inbounds nuw i8, ptr %i.dim, i64 224
  %.pre.i2290 = load i8, ptr %.phi.trans.insert.i2289, align 8, !tbaa !1552
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294

bb.acs:                                           ; preds = %bb.acr
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dim, i64 240
  %i.diu = load ptr, ptr %i.dit, align 8, !tbaa !1546 ; 6 uses
  %.not.i.i.i2283 = icmp eq ptr %i.diu, null
  br i1 %.not.i.i.i2283, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc2291 unwind label %.loopexit.split-lp2904

.noexc2291:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284: ; preds = %bb.acs
  %i.div = getelementptr inbounds nuw i8, ptr %i.diu, i64 56
  %i.diw = load i8, ptr %i.div, align 8, !tbaa !1547
  %.not.i1.i.i2285 = icmp eq i8 %i.diw, 0
  br i1 %.not.i1.i.i2285, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284
  %i.dix = getelementptr inbounds nuw i8, ptr %i.diu, i64 89
  %i.diy = load i8, ptr %i.dix, align 1, !tbaa !60
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.diu)
          to label %.noexc2292 unwind label %.loopexit2903

.noexc2292:                                       ; preds = %bb.acv
  %i.diz = load ptr, ptr %i.diu, align 8, !tbaa !110
  %i.dja = getelementptr inbounds nuw i8, ptr %i.diz, i64 48
  %i.djb = load ptr, ptr %i.dja, align 8
  %i.djc = invoke noundef signext i8 %i.djb(ptr noundef nonnull align 8 dereferenceable(570) %i.diu, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286 unwind label %.loopexit2903, !inline_history !1580

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286: ; preds = %.noexc2292, %bb.acu
  %.0.i.i.i2287 = phi i8 [ %i.diy, %bb.acu ], [ %i.djc, %.noexc2292 ] ; 2 uses
  %i.djd = getelementptr inbounds nuw i8, ptr %i.dim, i64 224
  store i8 %.0.i.i.i2287, ptr %i.djd, align 8, !tbaa !1552
  store i8 1, ptr %i.diq, align 1, !tbaa !1540
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286, %._crit_edge.i2288
  %i.dje = phi i8 [ %.pre.i2290, %._crit_edge.i2288 ], [ %.0.i.i.i2287, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286 ]
  %i.djf = getelementptr inbounds nuw i8, ptr %.0806, i64 1
  %i.djg = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.dio, i8 %i.dip, ptr noundef nonnull align 8 dereferenceable(216) %i.dim, i8 noundef signext %i.dje, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.djf)
          to label %bb.acw unwind label %.loopexit2903 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #23
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !60
  %i.djh = load ptr, ptr %0, align 8, !tbaa !110
  %i.dji = getelementptr i8, ptr %i.djh, i64 -24
  %i.djj = load i64, ptr %i.dji, align 8
  %i.djk = getelementptr inbounds i8, ptr %0, i64 %i.djj
  %i.djl = getelementptr inbounds nuw i8, ptr %i.djk, i64 16
  %i.djm = load i64, ptr %i.djl, align 8, !tbaa !1516
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
  %.sroa.0.0.copyload.i2300 = load i16, ptr %2, align 8, !tbaa !904 ; 2 uses
  %.not2787 = icmp eq i16 %.sroa.0.0.copyload.i2300, -32768
  br i1 %.not2787, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302

bb.add:                                           ; preds = %bb.adc
  %i.djp = load ptr, ptr %0, align 8, !tbaa !110
  %i.djq = getelementptr i8, ptr %i.djp, i64 -24
  %i.djr = load i64, ptr %i.djq, align 8
  %i.djs = getelementptr inbounds i8, ptr %0, i64 %i.djr ; 2 uses
  %i.djt = getelementptr inbounds nuw i8, ptr %i.djs, i64 32
  %i.dju = load i32, ptr %i.djt, align 8, !tbaa !1529
  %i.djv = or i32 %i.dju, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djs, i32 noundef %i.djv)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2303.pre = load i16, ptr %2, align 8, !tbaa !904
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
  store i8 48, ptr %i.ad, align 1, !tbaa !60
  %i.djz = load ptr, ptr %0, align 8, !tbaa !110
  %i.dka = getelementptr i8, ptr %i.djz, i64 -24
  %i.dkb = load i64, ptr %i.dka, align 8
  %i.dkc = getelementptr inbounds i8, ptr %0, i64 %i.dkb
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.dkc, i64 16
  %i.dke = load i64, ptr %i.dkd, align 8, !tbaa !1516
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #23
  store i8 37, ptr %i.fs, align 1, !tbaa !60
  store i8 %.0782, ptr %i.il, align 1, !tbaa !60
  %i.dkj = load i8, ptr %.0707, align 1, !tbaa !60
  store i8 %i.dkj, ptr %i.im, align 1, !tbaa !60
  %i.dkk = add nsw i32 %20, -1900
  store i32 %i.dkk, ptr %i.ii, align 4, !tbaa !1589
  %i.dkl = load ptr, ptr %0, align 8, !tbaa !110
  %i.dkm = getelementptr i8, ptr %i.dkl, i64 -24
  %i.dkn = load i64, ptr %i.dkm, align 8
  %i.dko = getelementptr inbounds i8, ptr %0, i64 %i.dkn ; 6 uses
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.dko, i64 232
  %i.dkq = load ptr, ptr %i.dkp, align 8, !tbaa !1579 ; 2 uses
  %.not.i2309 = icmp eq ptr %i.dkq, null
  %i.dkr = zext i1 %.not.i2309 to i8
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dko, i64 225 ; 2 uses
  %i.dkt = load i8, ptr %i.dks, align 1, !tbaa !1540, !range !317, !noundef !185
  %i.dku = trunc nuw i8 %i.dkt to i1
  br i1 %i.dku, label %._crit_edge.i2315, label %bb.adl

._crit_edge.i2315:                                ; preds = %bb.adk
  %.phi.trans.insert.i2316 = getelementptr inbounds nuw i8, ptr %i.dko, i64 224
  %.pre.i2317 = load i8, ptr %.phi.trans.insert.i2316, align 8, !tbaa !1552
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321

bb.adl:                                           ; preds = %bb.adk
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dko, i64 240
  %i.dkw = load ptr, ptr %i.dkv, align 8, !tbaa !1546 ; 6 uses
  %.not.i.i.i2310 = icmp eq ptr %i.dkw, null
  br i1 %.not.i.i.i2310, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc2318 unwind label %.loopexit.split-lp2899

.noexc2318:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311: ; preds = %bb.adl
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.dkw, i64 56
  %i.dky = load i8, ptr %i.dkx, align 8, !tbaa !1547
  %.not.i1.i.i2312 = icmp eq i8 %i.dky, 0
  br i1 %.not.i1.i.i2312, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dkw, i64 89
  %i.dla = load i8, ptr %i.dkz, align 1, !tbaa !60
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dkw)
          to label %.noexc2319 unwind label %.loopexit2898

.noexc2319:                                       ; preds = %bb.ado
  %i.dlb = load ptr, ptr %i.dkw, align 8, !tbaa !110
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dlb, i64 48
  %i.dld = load ptr, ptr %i.dlc, align 8
  %i.dle = invoke noundef signext i8 %i.dld(ptr noundef nonnull align 8 dereferenceable(570) %i.dkw, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313 unwind label %.loopexit2898, !inline_history !1580

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313: ; preds = %.noexc2319, %bb.adn
  %.0.i.i.i2314 = phi i8 [ %i.dla, %bb.adn ], [ %i.dle, %.noexc2319 ] ; 2 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dko, i64 224
  store i8 %.0.i.i.i2314, ptr %i.dlf, align 8, !tbaa !1552
  store i8 1, ptr %i.dks, align 1, !tbaa !1540
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313, %._crit_edge.i2315
  %i.dlg = phi i8 [ %.pre.i2317, %._crit_edge.i2315 ], [ %.0.i.i.i2314, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313 ]
  %i.dlh = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.dkq, i8 %i.dkr, ptr noundef nonnull align 8 dereferenceable(216) %i.dko, i8 noundef signext %i.dlg, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.in)
          to label %bb.adp unwind label %.loopexit2898 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #23
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !60
  %i.dli = load ptr, ptr %0, align 8, !tbaa !110
  %i.dlj = getelementptr i8, ptr %i.dli, i64 -24
  %i.dlk = load i64, ptr %i.dlj, align 8
  %i.dll = getelementptr inbounds i8, ptr %0, i64 %i.dlk
  %i.dlm = getelementptr inbounds nuw i8, ptr %i.dll, i64 16
  %i.dln = load i64, ptr %i.dlm, align 8, !tbaa !1516
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
  store i8 37, ptr %i.ab, align 1, !tbaa !60
  %i.dlr = load ptr, ptr %0, align 8, !tbaa !110
  %i.dls = getelementptr i8, ptr %i.dlr, i64 -24
  %i.dlt = load i64, ptr %i.dls, align 8
  %i.dlu = getelementptr inbounds i8, ptr %0, i64 %i.dlt
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.dlu, i64 16
  %i.dlw = load i64, ptr %i.dlv, align 8, !tbaa !1516
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
  store i8 79, ptr %i.aa, align 1, !tbaa !60
  %i.dlz = load ptr, ptr %.0.i2328, align 8, !tbaa !110
  %i.dma = getelementptr i8, ptr %i.dlz, i64 -24
  %i.dmb = load i64, ptr %i.dma, align 8
  %i.dmc = getelementptr inbounds i8, ptr %.0.i2328, i64 %i.dmb
  %i.dmd = getelementptr inbounds nuw i8, ptr %i.dmc, i64 16
  %i.dme = load i64, ptr %i.dmd, align 8, !tbaa !1516
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
  %i.dmh = load i8, ptr %.0707, align 1, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dmh, ptr %i.z, align 1, !tbaa !60
  %i.dmi = load ptr, ptr %.0.i2333, align 8, !tbaa !110
  %i.dmj = getelementptr i8, ptr %i.dmi, i64 -24
  %i.dmk = load i64, ptr %i.dmj, align 8
  %i.dml = getelementptr inbounds i8, ptr %.0.i2333, i64 %i.dmk
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.dml, i64 16
  %i.dmn = load i64, ptr %i.dmm, align 8, !tbaa !1516
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
  %.sroa.0.0.copyload.i2342 = load i16, ptr %2, align 8, !tbaa !904 ; 2 uses
  %.not2786 = icmp eq i16 %.sroa.0.0.copyload.i2342, -32768
  br i1 %.not2786, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2344

bb.aeg:                                           ; preds = %bb.aef
  %i.dmq = load ptr, ptr %0, align 8, !tbaa !110
  %i.dmr = getelementptr i8, ptr %i.dmq, i64 -24
  %i.dms = load i64, ptr %i.dmr, align 8
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !60
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %i.q = icmp uge i8 %.sroa.03.0.i.i, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 4               ; 2 uses
  %i.t = icmp ult i8 %i.s, 7
  %or.cond = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !1598  ; 2 uses
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !1598  ; 2 uses
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !1598 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 7
  br i1 %i.ac, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !110
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1529
  %i.aj = or i32 %i.ai, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i32 noundef %i.aj)
  br label %bb.k

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ak = phi i8 [ %i.v, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread ], [ %i.s, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !1584 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.am, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.an = and i16 %i.a, 3
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond.i14 = and i1 %i.ao, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.ap = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.ap, 0
  %i.aq = srem i16 %i.a, 400
  %i.ar = icmp eq i16 %i.aq, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ar
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.as = zext nneg i8 %i.c to i64
  %i.at = add nuw nsw i64 %i.as, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !60
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.aw, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not = icmp ult i8 %.sroa.03.0.i.i17, %i.am
  br i1 %.not, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.ax = sext i16 %i.a to i32
  %i.ay = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.ay to i32
  %i.az = add nsw i32 %.neg.i.i, %i.ax            ; 4 uses
  %i.ba = zext nneg i8 %i.c to i32
  %i.bb = zext i8 %i.am to i32
  %i.bc = add nsw i32 %i.az, -399
  %i.bd = icmp slt i32 %i.az, 0
  %i.be = select i1 %i.bd, i32 %i.bc, i32 %i.az
  %i.bf = sdiv i32 %i.be, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bf, -400
  %i.bg = add nsw i32 %.neg15.i.i, %i.az          ; 3 uses
  %i.bh = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bh, i32 -3, i32 9
  %i.bi = add nsw i32 %.v.i.i, %i.ba
  %i.bj = mul nsw i32 %i.bi, 153
  %i.bk = add nsw i32 %i.bj, 2
  %i.bl = udiv i32 %i.bk, 5
  %i.bm = mul nsw i32 %i.bg, 365
  %i.bn = lshr i32 %i.bg, 2
  %i.bo = udiv i32 %i.bg, 100
  %i.bp = mul nsw i32 %i.bf, 146097
  %i.bq = add nuw nsw i32 %i.bb, -719469
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bp
  %i.bt = add nsw i32 %i.bs, %i.bn
  %i.bu = add nsw i32 %i.bt, %i.bm
  %i.bv = sub nsw i32 %i.bu, %i.bo                ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, -5
  %i.bx = add nsw i32 %i.bv, 4
  %.in.i.i = select i1 %i.bw, i32 %i.bx, i32 %i.bv
  %i.by = urem i32 %.in.i.i, 7
  %i.bz = trunc nuw nsw i32 %i.by to i8           ; 2 uses
  %i.ca = icmp ult i8 %i.ak, 7
  %i.cb = icmp ne i8 %i.ak, %i.bz
  %or.cond32 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond32, label %bb.j, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !110
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1529
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.k

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %bb.i
  %.sroa.023.0 = phi i8 [ %i.bz, %bb.i ], [ %i.ab, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread ], [ %i.ak, %.thread ], [ %i.ak, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20 ], [ %i.y, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37 ]
  %.sroa.023.0.fr = freeze i8 %.sroa.023.0
  %i.cj = urem i8 %.sroa.023.0.fr, 7
  %i.ck = zext nneg i8 %i.cj to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %i.ck, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ]
  ret i32 %.1
}

declare { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i8, ptr noundef nonnull align 8 dereferenceable(216), i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1591
  %i.c = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !1594, !nonnull !185, !align !186 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1529
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1579 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit unwind label %bb.e, !inline_history !1595 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #23
  ret void

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #26
  unreachable
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1568, !range !317, !noundef !185
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !60
  %i.i = load ptr, ptr %0, align 8, !tbaa !110
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1516
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !60
  %i.s = load ptr, ptr %0, align 8, !tbaa !110
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1516
  %.not.i12 = icmp eq i64 %i.x, 0
  br i1 %.not.i12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !1567
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit14 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !60
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !110
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1516
  %.not.i15 = icmp eq i64 %i.ah, 0
  br i1 %.not.i15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !61 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !60
  %i.an = load ptr, ptr %0, align 8, !tbaa !110
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1516
  %.not.i18 = icmp eq i64 %i.as, 0
  br i1 %.not.i18, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre26 = load i64, ptr %i.ak, align 8, !tbaa !1566
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17
  %i.av = phi i64 [ %.pre26, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !60
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !110
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !1516
  %.not.i21 = icmp eq i64 %i.bc, 0
  br i1 %.not.i21, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.p, %bb.q
  %.0.i22 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i22) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1599
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 225 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1540, !range !317, !noundef !185
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !1552
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1546 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !1547
  %.not.i1.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  %i.j = load i8, ptr %i.i, align 1, !tbaa !60
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.f)
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef signext i8 %i.m(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext 32), !inline_history !1600
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i8 [ %i.j, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 %.0.i.i.i, ptr %i.o, align 8, !tbaa !1552
  store i8 1, ptr %i.b, align 1, !tbaa !1540
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.p = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  store i8 %i.p, ptr %i.a, align 8, !tbaa !1601
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1553
  store i32 %i.s, ptr %i.q, align 4, !tbaa !1591
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !61
  store i64 0, ptr %i.v, align 8, !tbaa !1516
  store <2 x i64> %i.w, ptr %i.t, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1602
  store ptr null, ptr %i.y, align 8, !tbaa !1602
  store ptr %i.z, ptr %i.x, align 8, !tbaa !1603
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #23
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !1603 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #23
  resume { ptr, i32 } %i.ae

bb.h:                                             ; preds = %bb.f, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZSt19uncaught_exceptionsv() local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::locale", align 8       ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1594   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1601
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 225 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !1540, !range !317, !noundef !185
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1546 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !1547
  %.not.i1.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.h)
          to label %.noexc1 unwind label %bb.f

.noexc1:                                          ; preds = %bb.d
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef signext i8 %i.m(ptr noundef nonnull align 8 dereferenceable(570) %i.h, i8 noundef signext 32)
          to label %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge unwind label %bb.f, !inline_history !1551 ; 0 uses

.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge: ; preds = %.noexc1
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !1594
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge ], [ %i.a, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i ]
  store i8 1, ptr %i.d, align 1, !tbaa !1540
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.o = phi ptr [ %i.a, %bb.a ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i8 %i.c, ptr %i.p, align 8, !tbaa !1552
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1591
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !1553
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load <2 x i64>, ptr %i.t, align 8, !tbaa !61
  store <2 x i64> %i.v, ptr %i.u, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %1, ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #23
  %i.x = load ptr, ptr %0, align 8, !tbaa !1594, !nonnull !185, !align !186
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1603
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !1602
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #23
  ret void

bb.f:                                             ; preds = %.noexc1, %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date6detail13low_level_fmtIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES9_RKNS0_4yearE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = load ptr, ptr %0, align 8, !tbaa !110
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.d)
  %i.e = load ptr, ptr %0, align 8, !tbaa !110    ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 225 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1540, !range !317, !noundef !185
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1546 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !1547
  %.not.i1.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %bb.d
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !110
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 32)
          to label %.noexc10._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge unwind label %bb.l, !inline_history !1551 ; 0 uses

.noexc10._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge: ; preds = %.noexc10
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !110
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc10._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc10._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge ], [ %i.e, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i ]
  store i8 1, ptr %i.i, align 1, !tbaa !1540
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.t = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  store i8 48, ptr %i.u, align 8, !tbaa !1552
  %i.v = getelementptr i8, ptr %i.t, i64 -24      ; 3 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 18, ptr %i.y, align 8, !tbaa !1553
  %i.z = load i64, ptr %i.v, align 8
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  %i.ab = load i16, ptr %1, align 2, !tbaa !1582
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 5, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !1516
  %i.af = load i64, ptr %i.v, align 8
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.af
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  %i.ai = load i16, ptr %1, align 2, !tbaa !1582
  %i.aj = sext i16 %i.ai to i32
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.aj)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !1591
  %i.an = and i32 %i.am, 8192
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = call noundef i32 @_ZSt19uncaught_exceptionsv() #29
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %2, align 8, !tbaa !1594, !nonnull !185, !align !186 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !1529
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.j, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1579 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !110
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2268 = phi ptr [ %i.dhn, %bb.acj ], [ %.0.i2263, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhp = load i8, ptr %.0707, align 1, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhp, ptr %i.af, align 1, !tbaa !60
  %i.dhq = load ptr, ptr %.0.i2268, align 8, !tbaa !110
  %i.dhr = getelementptr i8, ptr %i.dhq, i64 -24
  %i.dhs = load i64, ptr %i.dhr, align 8
  %i.dht = getelementptr inbounds i8, ptr %.0.i2268, i64 %i.dhs
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dht, i64 16
  %i.dhv = load i64, ptr %i.dhu, align 8, !tbaa !1516
  %.not.i2272 = icmp eq i64 %i.dhv, 0
  br i1 %.not.i2272, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dhw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2268, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276 unwind label %.loopexit ; 0 uses

bb.acn:                                           ; preds = %bb.acl
  %i.dhx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2268, i8 noundef signext %i.dhp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276: ; preds = %bb.acn, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.aco:                                           ; preds = %bb.ace
  %i.dhy = load i8, ptr %i.gw, align 8, !tbaa !1611, !range !317, !noundef !185
  %i.dhz = trunc nuw i8 %i.dhy to i1
  br i1 %i.dhz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dia = load ptr, ptr %0, align 8, !tbaa !110
  %i.dib = getelementptr i8, ptr %i.dia, i64 -24
  %i.dic = load i64, ptr %i.dib, align 8
  %i.did = getelementptr inbounds i8, ptr %0, i64 %i.dic ; 2 uses
  %i.die = getelementptr inbounds nuw i8, ptr %i.did, i64 32
  %i.dif = load i32, ptr %i.die, align 8, !tbaa !1529
  %i.dig = or i32 %i.dif, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.did, i32 noundef %i.dig)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kz, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2279 = load i64, ptr %i.iq, align 8, !tbaa !61
  %i.dih = trunc i64 %.sroa.0.0.copyload.i.i2279 to i32
  store i32 %i.dih, ptr %6, align 8, !tbaa !1585
  %.sroa.0.0.copyload.i2280 = load i64, ptr %i.ir, align 8, !tbaa !61
  %i.dii = trunc i64 %.sroa.0.0.copyload.i2280 to i32
  store i32 %i.dii, ptr %i.is, align 4, !tbaa !1586
  %.sroa.0.0.copyload.i2281 = load i64, ptr %i.ip, align 8, !tbaa !61
  %i.dij = trunc i64 %.sroa.0.0.copyload.i2281 to i32
  store i32 %i.dij, ptr %i.it, align 8, !tbaa !1587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.32, i64 3, i1 false)
  %i.dik = icmp eq i8 %.0782, 69
  br i1 %i.dik, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278
  store i8 69, ptr %i.iu, align 1, !tbaa !60
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278
  %.0806 = phi ptr [ %i.iv, %bb.acq ], [ %i.iu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278 ] ; 2 uses
  %i.dil = load i8, ptr %.0707, align 1, !tbaa !60
  store i8 %i.dil, ptr %.0806, align 1, !tbaa !60
  %i.dim = load ptr, ptr %0, align 8, !tbaa !110
  %i.din = getelementptr i8, ptr %i.dim, i64 -24
  %i.dio = load i64, ptr %i.din, align 8
  %i.dip = getelementptr inbounds i8, ptr %0, i64 %i.dio ; 6 uses
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dip, i64 232
  %i.dir = load ptr, ptr %i.diq, align 8, !tbaa !1579 ; 2 uses
  %.not.i2282 = icmp eq ptr %i.dir, null
  %i.dis = zext i1 %.not.i2282 to i8
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dip, i64 225 ; 2 uses
  %i.diu = load i8, ptr %i.dit, align 1, !tbaa !1540, !range !317, !noundef !185
  %i.div = trunc nuw i8 %i.diu to i1
  br i1 %i.div, label %._crit_edge.i2288, label %bb.acs

._crit_edge.i2288:                                ; preds = %bb.acr
  %.phi.trans.insert.i2289 = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  %.pre.i2290 = load i8, ptr %.phi.trans.insert.i2289, align 8, !tbaa !1552
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294

bb.acs:                                           ; preds = %bb.acr
  %i.diw = getelementptr inbounds nuw i8, ptr %i.dip, i64 240
  %i.dix = load ptr, ptr %i.diw, align 8, !tbaa !1546 ; 6 uses
  %.not.i.i.i2283 = icmp eq ptr %i.dix, null
  br i1 %.not.i.i.i2283, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc2291 unwind label %.loopexit.split-lp2904

.noexc2291:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284: ; preds = %bb.acs
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dix, i64 56
  %i.diz = load i8, ptr %i.diy, align 8, !tbaa !1547
  %.not.i1.i.i2285 = icmp eq i8 %i.diz, 0
  br i1 %.not.i1.i.i2285, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284
  %i.dja = getelementptr inbounds nuw i8, ptr %i.dix, i64 89
  %i.djb = load i8, ptr %i.dja, align 1, !tbaa !60
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dix)
          to label %.noexc2292 unwind label %.loopexit2903

.noexc2292:                                       ; preds = %bb.acv
  %i.djc = load ptr, ptr %i.dix, align 8, !tbaa !110
  %i.djd = getelementptr inbounds nuw i8, ptr %i.djc, i64 48
  %i.dje = load ptr, ptr %i.djd, align 8
  %i.djf = invoke noundef signext i8 %i.dje(ptr noundef nonnull align 8 dereferenceable(570) %i.dix, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286 unwind label %.loopexit2903, !inline_history !1580

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286: ; preds = %.noexc2292, %bb.acu
  %.0.i.i.i2287 = phi i8 [ %i.djb, %bb.acu ], [ %i.djf, %.noexc2292 ] ; 2 uses
  %i.djg = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  store i8 %.0.i.i.i2287, ptr %i.djg, align 8, !tbaa !1552
  store i8 1, ptr %i.dit, align 1, !tbaa !1540
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286, %._crit_edge.i2288
  %i.djh = phi i8 [ %.pre.i2290, %._crit_edge.i2288 ], [ %.0.i.i.i2287, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286 ]
  %i.dji = getelementptr inbounds nuw i8, ptr %.0806, i64 1
  %i.djj = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dir, i8 %i.dis, ptr noundef nonnull align 8 dereferenceable(216) %i.dip, i8 noundef signext %i.djh, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.dji)
          to label %bb.acw unwind label %.loopexit2903 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #23
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !60
  %i.djk = load ptr, ptr %0, align 8, !tbaa !110
  %i.djl = getelementptr i8, ptr %i.djk, i64 -24
  %i.djm = load i64, ptr %i.djl, align 8
  %i.djn = getelementptr inbounds i8, ptr %0, i64 %i.djm
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 16
  %i.djp = load i64, ptr %i.djo, align 8, !tbaa !1516
  %.not.i2295 = icmp eq i64 %i.djp, 0
  br i1 %.not.i2295, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.djq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

bb.ada:                                           ; preds = %bb.acy
  %i.djr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299: ; preds = %bb.ada, %bb.acz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.adb:                                           ; preds = %bb.h
  br i1 %.not927, label %bb.adr, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.sroa.0.0.copyload.i2300 = load i16, ptr %2, align 8, !tbaa !904 ; 2 uses
  %.not2787 = icmp eq i16 %.sroa.0.0.copyload.i2300, -32768
  br i1 %.not2787, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302

bb.add:                                           ; preds = %bb.adc
  %i.djs = load ptr, ptr %0, align 8, !tbaa !110
  %i.djt = getelementptr i8, ptr %i.djs, i64 -24
  %i.dju = load i64, ptr %i.djt, align 8
  %i.djv = getelementptr inbounds i8, ptr %0, i64 %i.dju ; 2 uses
  %i.djw = getelementptr inbounds nuw i8, ptr %i.djv, i64 32
  %i.djx = load i32, ptr %i.djw, align 8, !tbaa !1529
  %i.djy = or i32 %i.djx, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djv, i32 noundef %i.djy)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2303.pre = load i16, ptr %2, align 8, !tbaa !904
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge, %bb.adc
  %.sroa.0.0.copyload.i2303 = phi i16 [ %.sroa.0.0.copyload.i2303.pre, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge ], [ %.sroa.0.0.copyload.i2300, %bb.adc ]
  %20 = sext i16 %.sroa.0.0.copyload.i2303 to i32 ; 2 uses
  %i.djz = icmp eq i8 %.0782, 0
  br i1 %i.djz, label %bb.ade, label %bb.adk

bb.ade:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %.lhs.trunc2784 = trunc nuw i32 %21 to i16
  %i.dka = urem i16 %.lhs.trunc2784, 100          ; 2 uses
  %.zext2785 = zext nneg i16 %i.dka to i32
  %i.dkb = icmp samesign ult i16 %i.dka, 10
  br i1 %i.dkb, label %bb.adf, label %bb.adj

bb.adf:                                           ; preds = %bb.ade
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 48, ptr %i.ad, align 1, !tbaa !60
  %i.dkc = load ptr, ptr %0, align 8, !tbaa !110
  %i.dkd = getelementptr i8, ptr %i.dkc, i64 -24
  %i.dke = load i64, ptr %i.dkd, align 8
  %i.dkf = getelementptr inbounds i8, ptr %0, i64 %i.dke
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dkf, i64 16
  %i.dkh = load i64, ptr %i.dkg, align 8, !tbaa !1516
  %.not.i2304 = icmp eq i64 %i.dkh, 0
  br i1 %.not.i2304, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.dki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308 unwind label %bb.adi ; 0 uses

bb.adh:                                           ; preds = %bb.adf
  %i.dkj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308 unwind label %bb.adi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308: ; preds = %bb.adh, %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.adj

bb.adi:                                           ; preds = %bb.adh, %bb.adg, %bb.adj
  %i.dkk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.adj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308, %bb.ade
  %i.dkl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.zext2785)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484 unwind label %bb.adi ; 0 uses

bb.adk:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #23
  store i8 37, ptr %i.fs, align 1, !tbaa !60
  store i8 %.0782, ptr %i.im, align 1, !tbaa !60
  %i.dkm = load i8, ptr %.0707, align 1, !tbaa !60
  store i8 %i.dkm, ptr %i.in, align 1, !tbaa !60
  %i.dkn = add nsw i32 %20, -1900
  store i32 %i.dkn, ptr %i.ij, align 4, !tbaa !1589
  %i.dko = load ptr, ptr %0, align 8, !tbaa !110
  %i.dkp = getelementptr i8, ptr %i.dko, i64 -24
  %i.dkq = load i64, ptr %i.dkp, align 8
  %i.dkr = getelementptr inbounds i8, ptr %0, i64 %i.dkq ; 6 uses
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dkr, i64 232
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !1579 ; 2 uses
  %.not.i2309 = icmp eq ptr %i.dkt, null
  %i.dku = zext i1 %.not.i2309 to i8
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dkr, i64 225 ; 2 uses
  %i.dkw = load i8, ptr %i.dkv, align 1, !tbaa !1540, !range !317, !noundef !185
  %i.dkx = trunc nuw i8 %i.dkw to i1
  br i1 %i.dkx, label %._crit_edge.i2315, label %bb.adl

._crit_edge.i2315:                                ; preds = %bb.adk
  %.phi.trans.insert.i2316 = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  %.pre.i2317 = load i8, ptr %.phi.trans.insert.i2316, align 8, !tbaa !1552
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321

bb.adl:                                           ; preds = %bb.adk
  %i.dky = getelementptr inbounds nuw i8, ptr %i.dkr, i64 240
  %i.dkz = load ptr, ptr %i.dky, align 8, !tbaa !1546 ; 6 uses
  %.not.i.i.i2310 = icmp eq ptr %i.dkz, null
  br i1 %.not.i.i.i2310, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc2318 unwind label %.loopexit.split-lp2899

.noexc2318:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311: ; preds = %bb.adl
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkz, i64 56
  %i.dlb = load i8, ptr %i.dla, align 8, !tbaa !1547
  %.not.i1.i.i2312 = icmp eq i8 %i.dlb, 0
  br i1 %.not.i1.i.i2312, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dkz, i64 89
  %i.dld = load i8, ptr %i.dlc, align 1, !tbaa !60
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz)
          to label %.noexc2319 unwind label %.loopexit2898

.noexc2319:                                       ; preds = %bb.ado
  %i.dle = load ptr, ptr %i.dkz, align 8, !tbaa !110
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dle, i64 48
  %i.dlg = load ptr, ptr %i.dlf, align 8
  %i.dlh = invoke noundef signext i8 %i.dlg(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313 unwind label %.loopexit2898, !inline_history !1580

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313: ; preds = %.noexc2319, %bb.adn
  %.0.i.i.i2314 = phi i8 [ %i.dld, %bb.adn ], [ %i.dlh, %.noexc2319 ] ; 2 uses
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  store i8 %.0.i.i.i2314, ptr %i.dli, align 8, !tbaa !1552
  store i8 1, ptr %i.dkv, align 1, !tbaa !1540
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313, %._crit_edge.i2315
  %i.dlj = phi i8 [ %.pre.i2317, %._crit_edge.i2315 ], [ %.0.i.i.i2314, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313 ]
  %i.dlk = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dkt, i8 %i.dku, ptr noundef nonnull align 8 dereferenceable(216) %i.dkr, i8 noundef signext %i.dlj, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.io)
          to label %bb.adp unwind label %.loopexit2898 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #23
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !60
  %i.dll = load ptr, ptr %0, align 8, !tbaa !110
  %i.dlm = getelementptr i8, ptr %i.dll, i64 -24
  %i.dln = load i64, ptr %i.dlm, align 8
  %i.dlo = getelementptr inbounds i8, ptr %0, i64 %i.dln
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dlo, i64 16
  %i.dlq = load i64, ptr %i.dlp, align 8, !tbaa !1516
  %.not.i2322 = icmp eq i64 %i.dlq, 0
  br i1 %.not.i2322, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %bb.adr
  %i.dlr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326 unwind label %.loopexit ; 0 uses

bb.adt:                                           ; preds = %bb.adr
  %i.dls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 121)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326: ; preds = %bb.adt, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.adu:                                           ; preds = %bb.h
  br i1 %.not927, label %bb.afb, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dlt = icmp eq i8 %.0782, 79
  br i1 %i.dlt, label %bb.adw, label %bb.aef

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 37, ptr %i.ab, align 1, !tbaa !60
  %i.dlu = load ptr, ptr %0, align 8, !tbaa !110
  %i.dlv = getelementptr i8, ptr %i.dlu, i64 -24
  %i.dlw = load i64, ptr %i.dlv, align 8
  %i.dlx = getelementptr inbounds i8, ptr %0, i64 %i.dlw
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlx, i64 16
  %i.dlz = load i64, ptr %i.dly, align 8, !tbaa !1516
  %.not.i2327 = icmp eq i64 %i.dlz, 0
  br i1 %.not.i2327, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.dma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %bb.adz unwind label %.loopexit

bb.ady:                                           ; preds = %bb.adw
  %i.dmb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.adz unwind label %.loopexit ; 0 uses

bb.adz:                                           ; preds = %bb.adx, %bb.ady
  %.0.i2328 = phi ptr [ %i.dma, %bb.adx ], [ %0, %bb.ady ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 79, ptr %i.aa, align 1, !tbaa !60
  %i.dmc = load ptr, ptr %.0.i2328, align 8, !tbaa !110
  %i.dmd = getelementptr i8, ptr %i.dmc, i64 -24
  %i.dme = load i64, ptr %i.dmd, align 8
  %i.dmf = getelementptr inbounds i8, ptr %.0.i2328, i64 %i.dme
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dmf, i64 16
  %i.dmh = load i64, ptr %i.dmg, align 8, !tbaa !1516
  %.not.i2332 = icmp eq i64 %i.dmh, 0
  br i1 %.not.i2332, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.dmi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2328, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %bb.aec unwind label %.loopexit

bb.aeb:                                           ; preds = %bb.adz
  %i.dmj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2328, i8 noundef signext 79)
          to label %bb.aec unwind label %.loopexit ; 0 uses

bb.aec:                                           ; preds = %bb.aea, %bb.aeb
  %.0.i2333 = phi ptr [ %i.dmi, %bb.aea ], [ %.0.i2328, %bb.aeb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dmk = load i8, ptr %.0707, align 1, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dmk, ptr %i.z, align 1, !tbaa !60
  %i.dml = load ptr, ptr %.0.i2333, align 8, !tbaa !110
  %i.dmm = getelementptr i8, ptr %i.dml, i64 -24
  %i.dmn = load i64, ptr %i.dmm, align 8
  %i.dmo = getelementptr inbounds i8, ptr %.0.i2333, i64 %i.dmn
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmo, i64 16
  %i.dmq = load i64, ptr %i.dmp, align 8, !tbaa !1516
  %.not.i2337 = icmp eq i64 %i.dmq, 0
  br i1 %.not.i2337, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.dmr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2333, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341 unwind label %.loopexit ; 0 uses

bb.aee:                                           ; preds = %bb.aec
  %i.dms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2333, i8 noundef signext %i.dmk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341: ; preds = %bb.aee, %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.aef:                                           ; preds = %bb.adv
  %.sroa.0.0.copyload.i2342 = load i16, ptr %2, align 8, !tbaa !904 ; 2 uses
  %.not2786 = icmp eq i16 %.sroa.0.0.copyload.i2342, -32768
  br i1 %.not2786, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2344

bb.aeg:                                           ; preds = %bb.aef
  %i.dmt = load ptr, ptr %0, align 8, !tbaa !110
  %i.dmu = getelementptr i8, ptr %i.dmt, i64 -24
  %i.dmv = load i64, ptr %i.dmu, align 8
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2268 = phi ptr [ %i.dhn, %bb.acj ], [ %.0.i2263, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhp = load i8, ptr %.0707, align 1, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhp, ptr %i.af, align 1, !tbaa !60
  %i.dhq = load ptr, ptr %.0.i2268, align 8, !tbaa !110
  %i.dhr = getelementptr i8, ptr %i.dhq, i64 -24
  %i.dhs = load i64, ptr %i.dhr, align 8
  %i.dht = getelementptr inbounds i8, ptr %.0.i2268, i64 %i.dhs
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dht, i64 16
  %i.dhv = load i64, ptr %i.dhu, align 8, !tbaa !1516
  %.not.i2272 = icmp eq i64 %i.dhv, 0
  br i1 %.not.i2272, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dhw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2268, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276 unwind label %.loopexit ; 0 uses

bb.acn:                                           ; preds = %bb.acl
  %i.dhx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2268, i8 noundef signext %i.dhp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276: ; preds = %bb.acn, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.aco:                                           ; preds = %bb.ace
  %i.dhy = load i8, ptr %i.gw, align 8, !tbaa !1648, !range !317, !noundef !185
  %i.dhz = trunc nuw i8 %i.dhy to i1
  br i1 %i.dhz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dia = load ptr, ptr %0, align 8, !tbaa !110
  %i.dib = getelementptr i8, ptr %i.dia, i64 -24
  %i.dic = load i64, ptr %i.dib, align 8
  %i.did = getelementptr inbounds i8, ptr %0, i64 %i.dic ; 2 uses
  %i.die = getelementptr inbounds nuw i8, ptr %i.did, i64 32
  %i.dif = load i32, ptr %i.die, align 8, !tbaa !1529
  %i.dig = or i32 %i.dif, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.did, i32 noundef %i.dig)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kz, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2279 = load i64, ptr %i.iq, align 8, !tbaa !61
  %i.dih = trunc i64 %.sroa.0.0.copyload.i.i2279 to i32
  store i32 %i.dih, ptr %6, align 8, !tbaa !1585
  %.sroa.0.0.copyload.i2280 = load i64, ptr %i.ir, align 8, !tbaa !61
  %i.dii = trunc i64 %.sroa.0.0.copyload.i2280 to i32
  store i32 %i.dii, ptr %i.is, align 4, !tbaa !1586
  %.sroa.0.0.copyload.i2281 = load i64, ptr %i.ip, align 8, !tbaa !61
  %i.dij = trunc i64 %.sroa.0.0.copyload.i2281 to i32
  store i32 %i.dij, ptr %i.it, align 8, !tbaa !1587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.32, i64 3, i1 false)
  %i.dik = icmp eq i8 %.0782, 69
  br i1 %i.dik, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278
  store i8 69, ptr %i.iu, align 1, !tbaa !60
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278
  %.0806 = phi ptr [ %i.iv, %bb.acq ], [ %i.iu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278 ] ; 2 uses
  %i.dil = load i8, ptr %.0707, align 1, !tbaa !60
  store i8 %i.dil, ptr %.0806, align 1, !tbaa !60
  %i.dim = load ptr, ptr %0, align 8, !tbaa !110
  %i.din = getelementptr i8, ptr %i.dim, i64 -24
  %i.dio = load i64, ptr %i.din, align 8
  %i.dip = getelementptr inbounds i8, ptr %0, i64 %i.dio ; 6 uses
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dip, i64 232
  %i.dir = load ptr, ptr %i.diq, align 8, !tbaa !1579 ; 2 uses
  %.not.i2282 = icmp eq ptr %i.dir, null
  %i.dis = zext i1 %.not.i2282 to i8
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dip, i64 225 ; 2 uses
  %i.diu = load i8, ptr %i.dit, align 1, !tbaa !1540, !range !317, !noundef !185
  %i.div = trunc nuw i8 %i.diu to i1
  br i1 %i.div, label %._crit_edge.i2288, label %bb.acs

._crit_edge.i2288:                                ; preds = %bb.acr
  %.phi.trans.insert.i2289 = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  %.pre.i2290 = load i8, ptr %.phi.trans.insert.i2289, align 8, !tbaa !1552
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294

bb.acs:                                           ; preds = %bb.acr
  %i.diw = getelementptr inbounds nuw i8, ptr %i.dip, i64 240
  %i.dix = load ptr, ptr %i.diw, align 8, !tbaa !1546 ; 6 uses
  %.not.i.i.i2283 = icmp eq ptr %i.dix, null
  br i1 %.not.i.i.i2283, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc2291 unwind label %.loopexit.split-lp2904

.noexc2291:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284: ; preds = %bb.acs
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dix, i64 56
  %i.diz = load i8, ptr %i.diy, align 8, !tbaa !1547
  %.not.i1.i.i2285 = icmp eq i8 %i.diz, 0
  br i1 %.not.i1.i.i2285, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284
  %i.dja = getelementptr inbounds nuw i8, ptr %i.dix, i64 89
  %i.djb = load i8, ptr %i.dja, align 1, !tbaa !60
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dix)
          to label %.noexc2292 unwind label %.loopexit2903

.noexc2292:                                       ; preds = %bb.acv
  %i.djc = load ptr, ptr %i.dix, align 8, !tbaa !110
  %i.djd = getelementptr inbounds nuw i8, ptr %i.djc, i64 48
  %i.dje = load ptr, ptr %i.djd, align 8
  %i.djf = invoke noundef signext i8 %i.dje(ptr noundef nonnull align 8 dereferenceable(570) %i.dix, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286 unwind label %.loopexit2903, !inline_history !1580

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286: ; preds = %.noexc2292, %bb.acu
  %.0.i.i.i2287 = phi i8 [ %i.djb, %bb.acu ], [ %i.djf, %.noexc2292 ] ; 2 uses
  %i.djg = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  store i8 %.0.i.i.i2287, ptr %i.djg, align 8, !tbaa !1552
  store i8 1, ptr %i.dit, align 1, !tbaa !1540
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286, %._crit_edge.i2288
  %i.djh = phi i8 [ %.pre.i2290, %._crit_edge.i2288 ], [ %.0.i.i.i2287, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286 ]
  %i.dji = getelementptr inbounds nuw i8, ptr %.0806, i64 1
  %i.djj = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dir, i8 %i.dis, ptr noundef nonnull align 8 dereferenceable(216) %i.dip, i8 noundef signext %i.djh, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.dji)
          to label %bb.acw unwind label %.loopexit2903 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #23
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !60
  %i.djk = load ptr, ptr %0, align 8, !tbaa !110
  %i.djl = getelementptr i8, ptr %i.djk, i64 -24
  %i.djm = load i64, ptr %i.djl, align 8
  %i.djn = getelementptr inbounds i8, ptr %0, i64 %i.djm
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 16
  %i.djp = load i64, ptr %i.djo, align 8, !tbaa !1516
  %.not.i2295 = icmp eq i64 %i.djp, 0
  br i1 %.not.i2295, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.djq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

bb.ada:                                           ; preds = %bb.acy
  %i.djr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299: ; preds = %bb.ada, %bb.acz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.adb:                                           ; preds = %bb.h
  br i1 %.not927, label %bb.adr, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.sroa.0.0.copyload.i2300 = load i16, ptr %2, align 8, !tbaa !904 ; 2 uses
  %.not2787 = icmp eq i16 %.sroa.0.0.copyload.i2300, -32768
  br i1 %.not2787, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302

bb.add:                                           ; preds = %bb.adc
  %i.djs = load ptr, ptr %0, align 8, !tbaa !110
  %i.djt = getelementptr i8, ptr %i.djs, i64 -24
  %i.dju = load i64, ptr %i.djt, align 8
  %i.djv = getelementptr inbounds i8, ptr %0, i64 %i.dju ; 2 uses
  %i.djw = getelementptr inbounds nuw i8, ptr %i.djv, i64 32
  %i.djx = load i32, ptr %i.djw, align 8, !tbaa !1529
  %i.djy = or i32 %i.djx, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djv, i32 noundef %i.djy)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2303.pre = load i16, ptr %2, align 8, !tbaa !904
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge, %bb.adc
  %.sroa.0.0.copyload.i2303 = phi i16 [ %.sroa.0.0.copyload.i2303.pre, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge ], [ %.sroa.0.0.copyload.i2300, %bb.adc ]
  %20 = sext i16 %.sroa.0.0.copyload.i2303 to i32 ; 2 uses
  %i.djz = icmp eq i8 %.0782, 0
  br i1 %i.djz, label %bb.ade, label %bb.adk

bb.ade:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %.lhs.trunc2784 = trunc nuw i32 %21 to i16
  %i.dka = urem i16 %.lhs.trunc2784, 100          ; 2 uses
  %.zext2785 = zext nneg i16 %i.dka to i32
  %i.dkb = icmp samesign ult i16 %i.dka, 10
  br i1 %i.dkb, label %bb.adf, label %bb.adj

bb.adf:                                           ; preds = %bb.ade
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 48, ptr %i.ad, align 1, !tbaa !60
  %i.dkc = load ptr, ptr %0, align 8, !tbaa !110
  %i.dkd = getelementptr i8, ptr %i.dkc, i64 -24
  %i.dke = load i64, ptr %i.dkd, align 8
  %i.dkf = getelementptr inbounds i8, ptr %0, i64 %i.dke
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dkf, i64 16
  %i.dkh = load i64, ptr %i.dkg, align 8, !tbaa !1516
  %.not.i2304 = icmp eq i64 %i.dkh, 0
  br i1 %.not.i2304, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.dki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308 unwind label %bb.adi ; 0 uses

bb.adh:                                           ; preds = %bb.adf
  %i.dkj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308 unwind label %bb.adi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308: ; preds = %bb.adh, %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.adj

bb.adi:                                           ; preds = %bb.adh, %bb.adg, %bb.adj
  %i.dkk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.adj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308, %bb.ade
  %i.dkl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.zext2785)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484 unwind label %bb.adi ; 0 uses

bb.adk:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #23
  store i8 37, ptr %i.fs, align 1, !tbaa !60
  store i8 %.0782, ptr %i.im, align 1, !tbaa !60
  %i.dkm = load i8, ptr %.0707, align 1, !tbaa !60
  store i8 %i.dkm, ptr %i.in, align 1, !tbaa !60
  %i.dkn = add nsw i32 %20, -1900
  store i32 %i.dkn, ptr %i.ij, align 4, !tbaa !1589
  %i.dko = load ptr, ptr %0, align 8, !tbaa !110
  %i.dkp = getelementptr i8, ptr %i.dko, i64 -24
  %i.dkq = load i64, ptr %i.dkp, align 8
  %i.dkr = getelementptr inbounds i8, ptr %0, i64 %i.dkq ; 6 uses
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dkr, i64 232
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !1579 ; 2 uses
  %.not.i2309 = icmp eq ptr %i.dkt, null
  %i.dku = zext i1 %.not.i2309 to i8
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dkr, i64 225 ; 2 uses
  %i.dkw = load i8, ptr %i.dkv, align 1, !tbaa !1540, !range !317, !noundef !185
  %i.dkx = trunc nuw i8 %i.dkw to i1
  br i1 %i.dkx, label %._crit_edge.i2315, label %bb.adl

._crit_edge.i2315:                                ; preds = %bb.adk
  %.phi.trans.insert.i2316 = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  %.pre.i2317 = load i8, ptr %.phi.trans.insert.i2316, align 8, !tbaa !1552
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321

bb.adl:                                           ; preds = %bb.adk
  %i.dky = getelementptr inbounds nuw i8, ptr %i.dkr, i64 240
  %i.dkz = load ptr, ptr %i.dky, align 8, !tbaa !1546 ; 6 uses
  %.not.i.i.i2310 = icmp eq ptr %i.dkz, null
  br i1 %.not.i.i.i2310, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc2318 unwind label %.loopexit.split-lp2899

.noexc2318:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311: ; preds = %bb.adl
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkz, i64 56
  %i.dlb = load i8, ptr %i.dla, align 8, !tbaa !1547
  %.not.i1.i.i2312 = icmp eq i8 %i.dlb, 0
  br i1 %.not.i1.i.i2312, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dkz, i64 89
  %i.dld = load i8, ptr %i.dlc, align 1, !tbaa !60
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz)
          to label %.noexc2319 unwind label %.loopexit2898

.noexc2319:                                       ; preds = %bb.ado
  %i.dle = load ptr, ptr %i.dkz, align 8, !tbaa !110
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dle, i64 48
  %i.dlg = load ptr, ptr %i.dlf, align 8
  %i.dlh = invoke noundef signext i8 %i.dlg(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313 unwind label %.loopexit2898, !inline_history !1580

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313: ; preds = %.noexc2319, %bb.adn
  %.0.i.i.i2314 = phi i8 [ %i.dld, %bb.adn ], [ %i.dlh, %.noexc2319 ] ; 2 uses
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  store i8 %.0.i.i.i2314, ptr %i.dli, align 8, !tbaa !1552
  store i8 1, ptr %i.dkv, align 1, !tbaa !1540
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313, %._crit_edge.i2315
  %i.dlj = phi i8 [ %.pre.i2317, %._crit_edge.i2315 ], [ %.0.i.i.i2314, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313 ]
  %i.dlk = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dkt, i8 %i.dku, ptr noundef nonnull align 8 dereferenceable(216) %i.dkr, i8 noundef signext %i.dlj, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.io)
          to label %bb.adp unwind label %.loopexit2898 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #23
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !60
  %i.dll = load ptr, ptr %0, align 8, !tbaa !110
  %i.dlm = getelementptr i8, ptr %i.dll, i64 -24
  %i.dln = load i64, ptr %i.dlm, align 8
  %i.dlo = getelementptr inbounds i8, ptr %0, i64 %i.dln
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dlo, i64 16
  %i.dlq = load i64, ptr %i.dlp, align 8, !tbaa !1516
  %.not.i2322 = icmp eq i64 %i.dlq, 0
  br i1 %.not.i2322, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %bb.adr
  %i.dlr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326 unwind label %.loopexit ; 0 uses

bb.adt:                                           ; preds = %bb.adr
  %i.dls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 121)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326: ; preds = %bb.adt, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.adu:                                           ; preds = %bb.h
  br i1 %.not927, label %bb.afb, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dlt = icmp eq i8 %.0782, 79
  br i1 %i.dlt, label %bb.adw, label %bb.aef

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 37, ptr %i.ab, align 1, !tbaa !60
  %i.dlu = load ptr, ptr %0, align 8, !tbaa !110
  %i.dlv = getelementptr i8, ptr %i.dlu, i64 -24
  %i.dlw = load i64, ptr %i.dlv, align 8
  %i.dlx = getelementptr inbounds i8, ptr %0, i64 %i.dlw
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlx, i64 16
  %i.dlz = load i64, ptr %i.dly, align 8, !tbaa !1516
  %.not.i2327 = icmp eq i64 %i.dlz, 0
  br i1 %.not.i2327, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.dma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %bb.adz unwind label %.loopexit

bb.ady:                                           ; preds = %bb.adw
  %i.dmb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.adz unwind label %.loopexit ; 0 uses

bb.adz:                                           ; preds = %bb.adx, %bb.ady
  %.0.i2328 = phi ptr [ %i.dma, %bb.adx ], [ %0, %bb.ady ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 79, ptr %i.aa, align 1, !tbaa !60
  %i.dmc = load ptr, ptr %.0.i2328, align 8, !tbaa !110
  %i.dmd = getelementptr i8, ptr %i.dmc, i64 -24
  %i.dme = load i64, ptr %i.dmd, align 8
  %i.dmf = getelementptr inbounds i8, ptr %.0.i2328, i64 %i.dme
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dmf, i64 16
  %i.dmh = load i64, ptr %i.dmg, align 8, !tbaa !1516
  %.not.i2332 = icmp eq i64 %i.dmh, 0
  br i1 %.not.i2332, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.dmi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2328, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %bb.aec unwind label %.loopexit

bb.aeb:                                           ; preds = %bb.adz
  %i.dmj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2328, i8 noundef signext 79)
          to label %bb.aec unwind label %.loopexit ; 0 uses

bb.aec:                                           ; preds = %bb.aea, %bb.aeb
  %.0.i2333 = phi ptr [ %i.dmi, %bb.aea ], [ %.0.i2328, %bb.aeb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dmk = load i8, ptr %.0707, align 1, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dmk, ptr %i.z, align 1, !tbaa !60
  %i.dml = load ptr, ptr %.0.i2333, align 8, !tbaa !110
  %i.dmm = getelementptr i8, ptr %i.dml, i64 -24
  %i.dmn = load i64, ptr %i.dmm, align 8
  %i.dmo = getelementptr inbounds i8, ptr %.0.i2333, i64 %i.dmn
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmo, i64 16
  %i.dmq = load i64, ptr %i.dmp, align 8, !tbaa !1516
  %.not.i2337 = icmp eq i64 %i.dmq, 0
  br i1 %.not.i2337, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.dmr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2333, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341 unwind label %.loopexit ; 0 uses

bb.aee:                                           ; preds = %bb.aec
  %i.dms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2333, i8 noundef signext %i.dmk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341: ; preds = %bb.aee, %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.aef:                                           ; preds = %bb.adv
  %.sroa.0.0.copyload.i2342 = load i16, ptr %2, align 8, !tbaa !904 ; 2 uses
  %.not2786 = icmp eq i16 %.sroa.0.0.copyload.i2342, -32768
  br i1 %.not2786, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2344

bb.aeg:                                           ; preds = %bb.aef
  %i.dmt = load ptr, ptr %0, align 8, !tbaa !110
  %i.dmu = getelementptr i8, ptr %i.dmt, i64 -24
  %i.dmv = load i64, ptr %i.dmu, align 8
end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2268 = phi ptr [ %i.dhn, %bb.acj ], [ %.0.i2263, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhp = load i8, ptr %.0707, align 1, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhp, ptr %i.af, align 1, !tbaa !60
  %i.dhq = load ptr, ptr %.0.i2268, align 8, !tbaa !110
  %i.dhr = getelementptr i8, ptr %i.dhq, i64 -24
  %i.dhs = load i64, ptr %i.dhr, align 8
  %i.dht = getelementptr inbounds i8, ptr %.0.i2268, i64 %i.dhs
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dht, i64 16
  %i.dhv = load i64, ptr %i.dhu, align 8, !tbaa !1516
  %.not.i2272 = icmp eq i64 %i.dhv, 0
  br i1 %.not.i2272, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dhw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2268, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276 unwind label %.loopexit ; 0 uses

bb.acn:                                           ; preds = %bb.acl
  %i.dhx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2268, i8 noundef signext %i.dhp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2276: ; preds = %bb.acn, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.aco:                                           ; preds = %bb.ace
  %i.dhy = load i8, ptr %i.gw, align 8, !tbaa !1656, !range !317, !noundef !185
  %i.dhz = trunc nuw i8 %i.dhy to i1
  br i1 %i.dhz, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dia = load ptr, ptr %0, align 8, !tbaa !110
  %i.dib = getelementptr i8, ptr %i.dia, i64 -24
  %i.dic = load i64, ptr %i.dib, align 8
  %i.did = getelementptr inbounds i8, ptr %0, i64 %i.dic ; 2 uses
  %i.die = getelementptr inbounds nuw i8, ptr %i.did, i64 32
  %i.dif = load i32, ptr %i.die, align 8, !tbaa !1529
  %i.dig = or i32 %i.dif, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.did, i32 noundef %i.dig)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kz, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2279 = load i64, ptr %i.iq, align 8, !tbaa !61
  %i.dih = trunc i64 %.sroa.0.0.copyload.i.i2279 to i32
  store i32 %i.dih, ptr %6, align 8, !tbaa !1585
  %.sroa.0.0.copyload.i2280 = load i64, ptr %i.ir, align 8, !tbaa !61
  %i.dii = trunc i64 %.sroa.0.0.copyload.i2280 to i32
  store i32 %i.dii, ptr %i.is, align 4, !tbaa !1586
  %.sroa.0.0.copyload.i2281 = load i64, ptr %i.ip, align 8, !tbaa !61
  %i.dij = trunc i64 %.sroa.0.0.copyload.i2281 to i32
  store i32 %i.dij, ptr %i.it, align 8, !tbaa !1587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.32, i64 3, i1 false)
  %i.dik = icmp eq i8 %.0782, 69
  br i1 %i.dik, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278
  store i8 69, ptr %i.iu, align 1, !tbaa !60
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278
  %.0806 = phi ptr [ %i.iv, %bb.acq ], [ %i.iu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2278 ] ; 2 uses
  %i.dil = load i8, ptr %.0707, align 1, !tbaa !60
  store i8 %i.dil, ptr %.0806, align 1, !tbaa !60
  %i.dim = load ptr, ptr %0, align 8, !tbaa !110
  %i.din = getelementptr i8, ptr %i.dim, i64 -24
  %i.dio = load i64, ptr %i.din, align 8
  %i.dip = getelementptr inbounds i8, ptr %0, i64 %i.dio ; 6 uses
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dip, i64 232
  %i.dir = load ptr, ptr %i.diq, align 8, !tbaa !1579 ; 2 uses
  %.not.i2282 = icmp eq ptr %i.dir, null
  %i.dis = zext i1 %.not.i2282 to i8
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dip, i64 225 ; 2 uses
  %i.diu = load i8, ptr %i.dit, align 1, !tbaa !1540, !range !317, !noundef !185
  %i.div = trunc nuw i8 %i.diu to i1
  br i1 %i.div, label %._crit_edge.i2288, label %bb.acs

._crit_edge.i2288:                                ; preds = %bb.acr
  %.phi.trans.insert.i2289 = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  %.pre.i2290 = load i8, ptr %.phi.trans.insert.i2289, align 8, !tbaa !1552
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294

bb.acs:                                           ; preds = %bb.acr
  %i.diw = getelementptr inbounds nuw i8, ptr %i.dip, i64 240
  %i.dix = load ptr, ptr %i.diw, align 8, !tbaa !1546 ; 6 uses
  %.not.i.i.i2283 = icmp eq ptr %i.dix, null
  br i1 %.not.i.i.i2283, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc2291 unwind label %.loopexit.split-lp2904

.noexc2291:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284: ; preds = %bb.acs
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dix, i64 56
  %i.diz = load i8, ptr %i.diy, align 8, !tbaa !1547
  %.not.i1.i.i2285 = icmp eq i8 %i.diz, 0
  br i1 %.not.i1.i.i2285, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284
  %i.dja = getelementptr inbounds nuw i8, ptr %i.dix, i64 89
  %i.djb = load i8, ptr %i.dja, align 1, !tbaa !60
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2284
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dix)
          to label %.noexc2292 unwind label %.loopexit2903

.noexc2292:                                       ; preds = %bb.acv
  %i.djc = load ptr, ptr %i.dix, align 8, !tbaa !110
  %i.djd = getelementptr inbounds nuw i8, ptr %i.djc, i64 48
  %i.dje = load ptr, ptr %i.djd, align 8
  %i.djf = invoke noundef signext i8 %i.dje(ptr noundef nonnull align 8 dereferenceable(570) %i.dix, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286 unwind label %.loopexit2903, !inline_history !1580

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286: ; preds = %.noexc2292, %bb.acu
  %.0.i.i.i2287 = phi i8 [ %i.djb, %bb.acu ], [ %i.djf, %.noexc2292 ] ; 2 uses
  %i.djg = getelementptr inbounds nuw i8, ptr %i.dip, i64 224
  store i8 %.0.i.i.i2287, ptr %i.djg, align 8, !tbaa !1552
  store i8 1, ptr %i.dit, align 1, !tbaa !1540
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286, %._crit_edge.i2288
  %i.djh = phi i8 [ %.pre.i2290, %._crit_edge.i2288 ], [ %.0.i.i.i2287, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2286 ]
  %i.dji = getelementptr inbounds nuw i8, ptr %.0806, i64 1
  %i.djj = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dir, i8 %i.dis, ptr noundef nonnull align 8 dereferenceable(216) %i.dip, i8 noundef signext %i.djh, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.dji)
          to label %bb.acw unwind label %.loopexit2903 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #23
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !60
  %i.djk = load ptr, ptr %0, align 8, !tbaa !110
  %i.djl = getelementptr i8, ptr %i.djk, i64 -24
  %i.djm = load i64, ptr %i.djl, align 8
  %i.djn = getelementptr inbounds i8, ptr %0, i64 %i.djm
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 16
  %i.djp = load i64, ptr %i.djo, align 8, !tbaa !1516
  %.not.i2295 = icmp eq i64 %i.djp, 0
  br i1 %.not.i2295, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.djq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

bb.ada:                                           ; preds = %bb.acy
  %i.djr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299: ; preds = %bb.ada, %bb.acz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.adb:                                           ; preds = %bb.h
  br i1 %.not927, label %bb.adr, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.sroa.0.0.copyload.i2300 = load i16, ptr %2, align 8, !tbaa !904 ; 2 uses
  %.not2787 = icmp eq i16 %.sroa.0.0.copyload.i2300, -32768
  br i1 %.not2787, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302

bb.add:                                           ; preds = %bb.adc
  %i.djs = load ptr, ptr %0, align 8, !tbaa !110
  %i.djt = getelementptr i8, ptr %i.djs, i64 -24
  %i.dju = load i64, ptr %i.djt, align 8
  %i.djv = getelementptr inbounds i8, ptr %0, i64 %i.dju ; 2 uses
  %i.djw = getelementptr inbounds nuw i8, ptr %i.djv, i64 32
  %i.djx = load i32, ptr %i.djw, align 8, !tbaa !1529
  %i.djy = or i32 %i.djx, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djv, i32 noundef %i.djy)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2303.pre = load i16, ptr %2, align 8, !tbaa !904
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge, %bb.adc
  %.sroa.0.0.copyload.i2303 = phi i16 [ %.sroa.0.0.copyload.i2303.pre, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302_crit_edge ], [ %.sroa.0.0.copyload.i2300, %bb.adc ]
  %20 = sext i16 %.sroa.0.0.copyload.i2303 to i32 ; 2 uses
  %i.djz = icmp eq i8 %.0782, 0
  br i1 %i.djz, label %bb.ade, label %bb.adk

bb.ade:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302
  %21 = call i32 @llvm.abs.i32(i32 %20, i1 true)
  %.lhs.trunc2784 = trunc nuw i32 %21 to i16
  %i.dka = urem i16 %.lhs.trunc2784, 100          ; 2 uses
  %.zext2785 = zext nneg i16 %i.dka to i32
  %i.dkb = icmp samesign ult i16 %i.dka, 10
  br i1 %i.dkb, label %bb.adf, label %bb.adj

bb.adf:                                           ; preds = %bb.ade
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 48, ptr %i.ad, align 1, !tbaa !60
  %i.dkc = load ptr, ptr %0, align 8, !tbaa !110
  %i.dkd = getelementptr i8, ptr %i.dkc, i64 -24
  %i.dke = load i64, ptr %i.dkd, align 8
  %i.dkf = getelementptr inbounds i8, ptr %0, i64 %i.dke
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dkf, i64 16
  %i.dkh = load i64, ptr %i.dkg, align 8, !tbaa !1516
  %.not.i2304 = icmp eq i64 %i.dkh, 0
  br i1 %.not.i2304, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.dki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308 unwind label %bb.adi ; 0 uses

bb.adh:                                           ; preds = %bb.adf
  %i.dkj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308 unwind label %bb.adi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308: ; preds = %bb.adh, %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.adj

bb.adi:                                           ; preds = %bb.adh, %bb.adg, %bb.adj
  %i.dkk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.adj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2308, %bb.ade
  %i.dkl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.zext2785)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484 unwind label %bb.adi ; 0 uses

bb.adk:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #23
  store i8 37, ptr %i.fs, align 1, !tbaa !60
  store i8 %.0782, ptr %i.im, align 1, !tbaa !60
  %i.dkm = load i8, ptr %.0707, align 1, !tbaa !60
  store i8 %i.dkm, ptr %i.in, align 1, !tbaa !60
  %i.dkn = add nsw i32 %20, -1900
  store i32 %i.dkn, ptr %i.ij, align 4, !tbaa !1589
  %i.dko = load ptr, ptr %0, align 8, !tbaa !110
  %i.dkp = getelementptr i8, ptr %i.dko, i64 -24
  %i.dkq = load i64, ptr %i.dkp, align 8
  %i.dkr = getelementptr inbounds i8, ptr %0, i64 %i.dkq ; 6 uses
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dkr, i64 232
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !1579 ; 2 uses
  %.not.i2309 = icmp eq ptr %i.dkt, null
  %i.dku = zext i1 %.not.i2309 to i8
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dkr, i64 225 ; 2 uses
  %i.dkw = load i8, ptr %i.dkv, align 1, !tbaa !1540, !range !317, !noundef !185
  %i.dkx = trunc nuw i8 %i.dkw to i1
  br i1 %i.dkx, label %._crit_edge.i2315, label %bb.adl

._crit_edge.i2315:                                ; preds = %bb.adk
  %.phi.trans.insert.i2316 = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  %.pre.i2317 = load i8, ptr %.phi.trans.insert.i2316, align 8, !tbaa !1552
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321

bb.adl:                                           ; preds = %bb.adk
  %i.dky = getelementptr inbounds nuw i8, ptr %i.dkr, i64 240
  %i.dkz = load ptr, ptr %i.dky, align 8, !tbaa !1546 ; 6 uses
  %.not.i.i.i2310 = icmp eq ptr %i.dkz, null
  br i1 %.not.i.i.i2310, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc2318 unwind label %.loopexit.split-lp2899

.noexc2318:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311: ; preds = %bb.adl
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkz, i64 56
  %i.dlb = load i8, ptr %i.dla, align 8, !tbaa !1547
  %.not.i1.i.i2312 = icmp eq i8 %i.dlb, 0
  br i1 %.not.i1.i.i2312, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dkz, i64 89
  %i.dld = load i8, ptr %i.dlc, align 1, !tbaa !60
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2311
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz)
          to label %.noexc2319 unwind label %.loopexit2898

.noexc2319:                                       ; preds = %bb.ado
  %i.dle = load ptr, ptr %i.dkz, align 8, !tbaa !110
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dle, i64 48
  %i.dlg = load ptr, ptr %i.dlf, align 8
  %i.dlh = invoke noundef signext i8 %i.dlg(ptr noundef nonnull align 8 dereferenceable(570) %i.dkz, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313 unwind label %.loopexit2898, !inline_history !1580

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313: ; preds = %.noexc2319, %bb.adn
  %.0.i.i.i2314 = phi i8 [ %i.dld, %bb.adn ], [ %i.dlh, %.noexc2319 ] ; 2 uses
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dkr, i64 224
  store i8 %.0.i.i.i2314, ptr %i.dli, align 8, !tbaa !1552
  store i8 1, ptr %i.dkv, align 1, !tbaa !1540
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313, %._crit_edge.i2315
  %i.dlj = phi i8 [ %.pre.i2317, %._crit_edge.i2315 ], [ %.0.i.i.i2314, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2313 ]
  %i.dlk = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dkt, i8 %i.dku, ptr noundef nonnull align 8 dereferenceable(216) %i.dkr, i8 noundef signext %i.dlj, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.io)
          to label %bb.adp unwind label %.loopexit2898 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #23
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !60
  %i.dll = load ptr, ptr %0, align 8, !tbaa !110
  %i.dlm = getelementptr i8, ptr %i.dll, i64 -24
  %i.dln = load i64, ptr %i.dlm, align 8
  %i.dlo = getelementptr inbounds i8, ptr %0, i64 %i.dln
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dlo, i64 16
  %i.dlq = load i64, ptr %i.dlp, align 8, !tbaa !1516
  %.not.i2322 = icmp eq i64 %i.dlq, 0
  br i1 %.not.i2322, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %bb.adr
  %i.dlr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326 unwind label %.loopexit ; 0 uses

bb.adt:                                           ; preds = %bb.adr
  %i.dls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 121)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2326: ; preds = %bb.adt, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.adu:                                           ; preds = %bb.h
  br i1 %.not927, label %bb.afb, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dlt = icmp eq i8 %.0782, 79
  br i1 %i.dlt, label %bb.adw, label %bb.aef

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 37, ptr %i.ab, align 1, !tbaa !60
  %i.dlu = load ptr, ptr %0, align 8, !tbaa !110
  %i.dlv = getelementptr i8, ptr %i.dlu, i64 -24
  %i.dlw = load i64, ptr %i.dlv, align 8
  %i.dlx = getelementptr inbounds i8, ptr %0, i64 %i.dlw
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlx, i64 16
  %i.dlz = load i64, ptr %i.dly, align 8, !tbaa !1516
  %.not.i2327 = icmp eq i64 %i.dlz, 0
  br i1 %.not.i2327, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.dma = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %bb.adz unwind label %.loopexit

bb.ady:                                           ; preds = %bb.adw
  %i.dmb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.adz unwind label %.loopexit ; 0 uses

bb.adz:                                           ; preds = %bb.adx, %bb.ady
  %.0.i2328 = phi ptr [ %i.dma, %bb.adx ], [ %0, %bb.ady ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 79, ptr %i.aa, align 1, !tbaa !60
  %i.dmc = load ptr, ptr %.0.i2328, align 8, !tbaa !110
  %i.dmd = getelementptr i8, ptr %i.dmc, i64 -24
  %i.dme = load i64, ptr %i.dmd, align 8
  %i.dmf = getelementptr inbounds i8, ptr %.0.i2328, i64 %i.dme
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dmf, i64 16
  %i.dmh = load i64, ptr %i.dmg, align 8, !tbaa !1516
  %.not.i2332 = icmp eq i64 %i.dmh, 0
  br i1 %.not.i2332, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.dmi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2328, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %bb.aec unwind label %.loopexit

bb.aeb:                                           ; preds = %bb.adz
  %i.dmj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2328, i8 noundef signext 79)
          to label %bb.aec unwind label %.loopexit ; 0 uses

bb.aec:                                           ; preds = %bb.aea, %bb.aeb
  %.0.i2333 = phi ptr [ %i.dmi, %bb.aea ], [ %.0.i2328, %bb.aeb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dmk = load i8, ptr %.0707, align 1, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dmk, ptr %i.z, align 1, !tbaa !60
  %i.dml = load ptr, ptr %.0.i2333, align 8, !tbaa !110
  %i.dmm = getelementptr i8, ptr %i.dml, i64 -24
  %i.dmn = load i64, ptr %i.dmm, align 8
  %i.dmo = getelementptr inbounds i8, ptr %.0.i2333, i64 %i.dmn
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmo, i64 16
  %i.dmq = load i64, ptr %i.dmp, align 8, !tbaa !1516
  %.not.i2337 = icmp eq i64 %i.dmq, 0
  br i1 %.not.i2337, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.dmr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2333, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341 unwind label %.loopexit ; 0 uses

bb.aee:                                           ; preds = %bb.aec
  %i.dms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2333, i8 noundef signext %i.dmk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2341: ; preds = %bb.aee, %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1484

bb.aef:                                           ; preds = %bb.adv
  %.sroa.0.0.copyload.i2342 = load i16, ptr %2, align 8, !tbaa !904 ; 2 uses
  %.not2786 = icmp eq i16 %.sroa.0.0.copyload.i2342, -32768
  br i1 %.not2786, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2344

bb.aeg:                                           ; preds = %bb.aef
  %i.dmt = load ptr, ptr %0, align 8, !tbaa !110
  %i.dmu = getelementptr i8, ptr %i.dmt, i64 -24
  %i.dmv = load i64, ptr %i.dmu, align 8
end_hunk_4
begin_hunk_5_@_ZN5arrow6Status8FromArgsIJRA24_KcRNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_:bb.a
common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA24_KcJRNS_8DataTypeEEEEvRSoOT_DpOT0_.exit.i, %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1738
  br label %common.resume

_ZN5arrow4util13StringBuilderIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA24_KcJRNS_8DataTypeEEEEvRSoOT_DpOT0_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1738
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %5, align 8, !tbaa !120    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !60
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.d:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !120    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !60
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_EZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0E9_M_invokeERKSt9_Any_dataS4_S4_S4_"(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nonnull readnone align 8 captures(none) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7, !noalias !1750
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13, !noalias !1750
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7, !noalias !1750
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13, !noalias !1750
  %.not.i.i.i = icmp eq i64 %i.d, %i.h
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIN5arrow6StatusERZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0JRKNS0_5ArrayESA_SA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef nonnull @.str.46, i64 noundef 22), !noalias !1750 ; 0 uses
  %i.j = load ptr, ptr %.val, align 8, !tbaa !110, !noalias !1750
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8, !noalias !1750
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1546, !noalias !1750 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #27, !noalias !1750
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !1547, !noalias !1750
  %.not.i1.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 67
  %i.s = load i8, ptr %i.r, align 1, !tbaa !60, !noalias !1750
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.o), !noalias !1750
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !110, !noalias !1750
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1750
  %i.w = tail call noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext 10), !noalias !1750, !inline_history !1751
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi i8 [ %i.s, %bb.d ], [ %i.w, %bb.e ]
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.val, i8 noundef signext %.0.i.i.i.i.i.i), !noalias !1750
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x), !noalias !1750 ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.47, i64 noundef 1), !noalias !1750 ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !7, !noalias !1750
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13, !noalias !1750
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.ac), !noalias !1750 ; 4 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.48, i64 noundef 6), !noalias !1750 ; 0 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !110, !noalias !1750
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !1750
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1546, !noalias !1750 ; 6 uses
  %.not.i.i.i5.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i5.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6.i.i.i

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i
  tail call void @_ZSt16__throw_bad_castv() #27, !noalias !1750
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6.i.i.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load i8, ptr %i.al, align 8, !tbaa !1547, !noalias !1750
  %.not.i1.i.i7.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i1.i.i7.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 67
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !60, !noalias !1750
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9.i.i.i

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ak), !noalias !1750
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !110, !noalias !1750
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1750
  %i.as = tail call noundef signext i8 %i.ar(ptr noundef nonnull align 8 dereferenceable(570) %i.ak, i8 noundef signext 10), !noalias !1750, !inline_history !1751
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9.i.i.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i8.i.i.i = phi i8 [ %i.ao, %bb.g ], [ %i.as, %bb.h ]
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i8 noundef signext %.0.i.i.i8.i.i.i), !noalias !1750
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at), !noalias !1750 ; 2 uses
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.49, i64 noundef 1), !noalias !1750 ; 0 uses
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !7, !noalias !1750
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !13, !noalias !1750
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i64 noundef %i.ay), !noalias !1750 ; 4 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.48, i64 noundef 6), !noalias !1750 ; 0 uses
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !110, !noalias !1750
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !1750
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1546, !noalias !1750 ; 6 uses
  %.not.i.i.i10.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i10.i.i.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11.i.i.i

bb.i:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9.i.i.i
  tail call void @_ZSt16__throw_bad_castv() #27, !noalias !1750
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11.i.i.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !1547, !noalias !1750
  %.not.i1.i.i12.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i1.i.i12.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !60, !noalias !1750
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14.i.i.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bg), !noalias !1750
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !110, !noalias !1750
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !1750
  %i.bo = tail call noundef signext i8 %i.bn(ptr noundef nonnull align 8 dereferenceable(570) %i.bg, i8 noundef signext 10), !noalias !1750, !inline_history !1751
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14.i.i.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i13.i.i.i = phi i8 [ %i.bk, %bb.j ], [ %i.bo, %bb.k ]
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i8 noundef signext %.0.i.i.i13.i.i.i), !noalias !1750
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp), !noalias !1750 ; 0 uses
  br label %"_ZSt10__invoke_rIN5arrow6StatusERZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0JRKNS0_5ArrayESA_SA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

"_ZSt10__invoke_rIN5arrow6StatusERZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0JRKNS0_5ArrayESA_SA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !47, !alias.scope !1752
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_EZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN5arrow24MakeUnifiedDiffFormatterERKNS1_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN5arrow24MakeUnifiedDiffFormatterERKNS_8DataTypeEPSoE3$_0", ptr %0, align 8, !tbaa !1620
  br label %"_ZNSt14_Function_base13_Base_managerIZN5arrow24MakeUnifiedDiffFormatterERKNS1_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !82
  br label %"_ZNSt14_Function_base13_Base_managerIZN5arrow24MakeUnifiedDiffFormatterERKNS1_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !262
  store i64 %.val.i, ptr %0, align 8, !tbaa !262
  br label %"_ZNSt14_Function_base13_Base_managerIZN5arrow24MakeUnifiedDiffFormatterERKNS1_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN5arrow24MakeUnifiedDiffFormatterERKNS1_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_ENS0_20UnifiedDiffFormatterEE9_M_invokeERKSt9_Any_dataS4_S4_S4_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !287
  tail call void @_ZN5arrow20UnifiedDiffFormatterclERKNS_5ArrayES3_S3_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_ENS0_20UnifiedDiffFormatterEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIN5arrow20UnifiedDiffFormatterE, ptr %0, align 8, !tbaa !1620
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !287
  store ptr %i.a, ptr %0, align 8, !tbaa !287
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow20UnifiedDiffFormatterclERKNS_5ArrayES3_S3_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !47, !alias.scope !1755
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %3, ptr %i.f, align 8, !tbaa !1758
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %4, ptr %i.g, align 8, !tbaa !1760
  %i.h = load ptr, ptr %1, align 8, !tbaa !1761   ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1546 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1547
  %.not.i1.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 67
  %i.r = load i8, ptr %i.q, align 1, !tbaa !60
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.n)
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef signext i8 %i.u(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext 10), !inline_history !1762
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.r, %bb.e ], [ %i.v, %bb.f ]
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef signext %.0.i.i.i)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNSt8functionIFN5arrow6StatusEllllEEC2IRNS0_20UnifiedDiffFormatterEvEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(56) %1)
  invoke void @_ZN5arrow15VisitEditScriptERKNS_5ArrayERKSt8functionIFNS_6StatusEllllEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !247  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.m

bb.j:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !247 ; 2 uses
  %.not.i6 = icmp eq ptr %i.af, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.ad

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8functionIFN5arrow6StatusEllllEEC2IRNS0_20UnifiedDiffFormatterEvEEOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !247  ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not.i.i.i.i, label %bb.h, label %bb.a

bb.a:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 2)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.i = load <2 x ptr>, ptr %i.e, align 8, !tbaa !82
  store <2 x ptr> %i.i, ptr %i.d, align 8, !tbaa !82
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !247  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_5
begin_hunk_6_@_ZN5arrow20UnifiedDiffFormatterclEllll:bb.a
bb.t:                                             ; preds = %bb.r
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !139
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !140
  switch i32 %i.dd, label %bb.w [
    i32 27, label %_ZNK5arrow5Array7IsValidEl.exit17
    i32 28, label %bb.u
    i32 38, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.de = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cq, i64 noundef %.033)
  br i1 %i.de, label %bb.z, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.df = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cq, i64 noundef %.033)
  br i1 %i.df, label %bb.z, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.dh = load atomic i64, ptr %i.dg seq_cst, align 8
  %i.di = load ptr, ptr %i.cp, align 8, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !13
  %.not = icmp eq i64 %i.dh, %i.dk
  br i1 %.not, label %bb.z, label %bb.x

_ZNK5arrow5Array7IsValidEl.exit17:                ; preds = %bb.t
  %i.dl = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cq, i64 noundef %.033)
  br i1 %i.dl, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w, %bb.s, %_ZNK5arrow5Array7IsValidEl.exit17
  %i.dm = load ptr, ptr %i.ag, align 8, !tbaa !1760
  %i.dn = load ptr, ptr %1, align 8, !tbaa !1761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.033, ptr %i.a, align 8, !tbaa !61
  store ptr %i.dn, ptr %i.b, align 8, !tbaa !262
  %i.do = load ptr, ptr %i.ah, align 8, !tbaa !247
  %.not.i.i18 = icmp eq ptr %i.do, null
  br i1 %.not.i.i18, label %bb.y, label %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit19

bb.y:                                             ; preds = %bb.x
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit19: ; preds = %bb.x
  %i.dp = load ptr, ptr %i.aj, align 8, !tbaa !278
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !1697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

bb.z:                                             ; preds = %bb.u, %bb.v, %bb.w, %bb.s, %_ZNK5arrow5Array7IsValidEl.exit17
  %i.dq = load ptr, ptr %1, align 8, !tbaa !1761
  %i.dr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull @.str.44, i64 noundef 4) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit19
  %i.ds = load ptr, ptr %1, align 8, !tbaa !1761  ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !110
  %i.du = getelementptr i8, ptr %i.dt, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.ds, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 240
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1546 ; 6 uses
  %.not.i.i.i25 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i25, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26: ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !1547
  %.not.i1.i.i27 = icmp eq i8 %i.ea, 0
  br i1 %.not.i1.i.i27, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 67
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !60
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i26
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dy)
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !110
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call noundef signext i8 %i.ef(ptr noundef nonnull align 8 dereferenceable(570) %i.dy, i8 noundef signext 10), !inline_history !1762
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit29: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i28 = phi i8 [ %i.ec, %bb.ac ], [ %i.eg, %bb.ad ]
  %i.eh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i8 noundef signext %.0.i.i.i28)
  %i.ei = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eh) ; 0 uses
  %i.ej = add i64 %.033, 1                        ; 2 uses
  %exitcond36.not = icmp eq i64 %i.ej, %5
  br i1 %exitcond36.not, label %._crit_edge, label %bb.r, !llvm.loop !1772
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIN5arrow20UnifiedDiffFormatterE, ptr %0, align 8, !tbaa !1620
  br label %_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !287
  store ptr %i.a, ptr %0, align 8, !tbaa !287
  br label %_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !287    ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !247  ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 2)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = load <2 x ptr>, ptr %i.f, align 8, !tbaa !82
  store <2 x ptr> %i.j, ptr %i.e, align 8, !tbaa !82
  br label %_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !247  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %.body.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3)
          to label %.body.i.i unwind label %bb.i  ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #26
  unreachable

.body.i.i:                                        ; preds = %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 56) #25
  resume { ptr, i32 } %i.k

_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_.exit: ; preds = %bb.d, %bb.f
  store ptr %i.c, ptr %0, align 8, !tbaa !287
  br label %_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.j:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !287    ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !247  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN5arrow20UnifiedDiffFormatterD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZN5arrow20UnifiedDiffFormatterD2Ev.exit.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

_ZN5arrow20UnifiedDiffFormatterD2Ev.exit.i:       ; preds = %bb.l, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 56) #25
  br label %_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit: ; preds = %_ZN5arrow20UnifiedDiffFormatterD2Ev.exit.i, %bb.j, %_ZNSt14_Function_base13_Base_managerIN5arrow20UnifiedDiffFormatterEE15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_.exit, %bb.c, %bb.b, %bb.a
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { "function-inline-cost-multiplier"="2" }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 _ZTSN5arrow9ArrayDataE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!12 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!13 = !{!14, !18, i64 16}
!14 = !{!"_ZTSN5arrow9ArrayDataE", !15, i64 0, !18, i64 16, !19, i64 24, !18, i64 32, !21, i64 40, !26, i64 64, !31, i64 88, !32, i64 104}
!15 = !{!"_ZTSSt10shared_ptrIN5arrow8DataTypeEE", !16, i64 0}
!16 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0, !11, i64 8}
!17 = !{!"p1 _ZTSN5arrow8DataTypeE", !10, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!"_ZTSSt6atomicIlE", !20, i64 0}
!20 = !{!"_ZTSSt13__atomic_baseIlE", !18, i64 0}
!21 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !22, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_Vector_implE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !10, i64 0}
!26 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !27, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_Vector_implE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p1 _ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !10, i64 0}
!31 = !{!"_ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !8, i64 0}
!32 = !{!"_ZTSSt10shared_ptrIN5arrow15ArrayStatisticsEE", !33, i64 0}
!33 = !{!"_ZTSSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0, !11, i64 8}
!34 = !{!"p1 _ZTSN5arrow15ArrayStatisticsE", !10, i64 0}
!35 = !{!36, !40, i64 16}
!36 = !{!"_ZTSN5arrow13BufferBuilderE", !37, i64 0, !40, i64 16, !41, i64 24, !18, i64 32, !18, i64 40, !18, i64 48}
!37 = !{!"_ZTSSt10shared_ptrIN5arrow15ResizableBufferEE", !38, i64 0}
!38 = !{!"_ZTSSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0, !11, i64 8}
!39 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !10, i64 0}
!40 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !10, i64 0}
!41 = !{!"p1 omnipotent char", !10, i64 0}
!42 = !{!36, !41, i64 24}
!43 = !{!36, !18, i64 48}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN5arrow18TypedBufferBuilderIbvE6ResizeElb: argument 0"}
!46 = distinct !{!46, !"_ZN5arrow18TypedBufferBuilderIbvE6ResizeElb"}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSN5arrow6StatusE", !49, i64 0}
!49 = !{!"p1 _ZTSN5arrow6Status5StateE", !10, i64 0}
!50 = !{!51, !45}
!51 = distinct !{!51, !52, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!52 = distinct !{!52, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!53 = !{!36, !18, i64 32}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!56 = distinct !{!56, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!57 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!58 = !{!59, !18, i64 56}
!59 = !{!"_ZTSN5arrow18TypedBufferBuilderIbvEE", !36, i64 0, !18, i64 56, !18, i64 64}
!60 = !{!5, !5, i64 0}
!61 = !{!18, !18, i64 0}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!64 = distinct !{!64, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!65 = !{!36, !18, i64 40}
!66 = !{!59, !18, i64 64}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN5arrow18TypedBufferBuilderIbvE6FinishEPSt10shared_ptrINS_6BufferEEb: argument 0"}
!69 = distinct !{!69, !"_ZN5arrow18TypedBufferBuilderIbvE6FinishEPSt10shared_ptrINS_6BufferEEb"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!72 = distinct !{!72, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!75 = distinct !{!75, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZSt11make_sharedIN5arrow12BooleanArrayEJlRSt10shared_ptrINS0_6BufferEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_: argument 0"}
!78 = distinct !{!78, !"_ZSt11make_sharedIN5arrow12BooleanArrayEJlRSt10shared_ptrINS0_6BufferEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_"}
!79 = !{!80, !81, i64 0}
!80 = !{!"_ZTSSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EE", !81, i64 0, !11, i64 8}
!81 = !{!"p1 _ZTSN5arrow12BooleanArrayE", !10, i64 0}
!82 = !{!10, !10, i64 0}
!83 = !{!11, !12, i64 0}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZSt11make_sharedIN5arrow12NumericArrayINS0_9Int64TypeEEEJlRSt10shared_ptrINS0_6BufferEEEES4_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!86 = distinct !{!86, !"_ZSt11make_sharedIN5arrow12NumericArrayINS0_9Int64TypeEEEJlRSt10shared_ptrINS0_6BufferEEEES4_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!87 = !{!88, !89, i64 0}
!88 = !{!"_ZTSSt12__shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEELN9__gnu_cxx12_Lock_policyE2EE", !89, i64 0, !11, i64 8}
!89 = !{!"p1 _ZTSN5arrow12NumericArrayINS_9Int64TypeEEE", !10, i64 0}
!90 = !{!91, !92, i64 0}
!91 = !{!"_ZTSSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EE", !92, i64 0, !11, i64 8}
!92 = !{!"p1 _ZTSN5arrow5ArrayE", !10, i64 0}
!93 = !{!94, !95, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!95 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5ArrayEE", !10, i64 0}
!96 = !{!94, !95, i64 16}
!97 = !{!94, !95, i64 8}
!98 = !{!99, !41, i64 0}
!99 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !41, i64 0}
!100 = !{!101, !18, i64 8}
!101 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !99, i64 0, !18, i64 8, !5, i64 16}
!102 = !{!103, !104, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!104 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !10, i64 0}
!105 = !{!103, !104, i64 16}
!106 = !{!103, !104, i64 8}
!107 = !{!108, !4, i64 8}
!108 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!109 = !{!108, !4, i64 12}
!110 = !{!111, !111, i64 0}
!111 = !{!"vtable pointer", !6, i64 0}
!112 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!115 = distinct !{!115, !116}
!116 = !{!"llvm.loop.mustprogress"}
!117 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!118 = distinct !{ptr @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!119 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!120 = !{!101, !41, i64 0}
!121 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!122 = distinct !{!122, !116}
!123 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!124 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_9Int64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!125 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!126 = distinct !{ptr @_ZN5arrow18TypedBufferBuilderIlvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!127 = distinct !{ptr @_ZN5arrow18TypedBufferBuilderIbvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!128 = !{!129, !130, i64 0}
!129 = !{!"_ZTSN5arrow6Status5StateE", !130, i64 0, !101, i64 8, !131, i64 40}
!130 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!131 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !132, i64 0}
!132 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !133, i64 0, !11, i64 8}
!133 = !{!"p1 _ZTSN5arrow12StatusDetailE", !10, i64 0}
!134 = distinct !{!134, !116}
!135 = distinct !{ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!136 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!137 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!138 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!139 = !{!16, !17, i64 0}
!140 = !{!141, !150, i64 40}
!141 = !{!"_ZTSN5arrow8DataTypeE", !142, i64 0, !146, i64 24, !150, i64 40, !151, i64 48}
!142 = !{!"_ZTSN5arrow6detail15FingerprintableE", !143, i64 8, !143, i64 16}
!143 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !144, i64 0}
!144 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !145, i64 0}
!145 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!146 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !147, i64 0}
!147 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !148, i64 0}
!148 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0, !149, i64 8}
!149 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!150 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!151 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !152, i64 0}
!152 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !153, i64 0}
!153 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !103, i64 0}
!154 = !{!92, !92, i64 0}
!155 = !{!156, !40, i64 16}
!156 = !{!"_ZTSN5arrow23QuadraticSpaceMyersDiffE", !92, i64 0, !92, i64 8, !40, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !157, i64 56, !18, i64 64, !18, i64 72, !164, i64 80, !169, i64 104}
!157 = !{!"_ZTSSt10unique_ptrIN5arrow15ValueComparatorESt14default_deleteIS1_EE", !158, i64 0}
!158 = !{!"_ZTSSt15__uniq_ptr_dataIN5arrow15ValueComparatorESt14default_deleteIS1_ELb1ELb1EE", !159, i64 0}
!159 = !{!"_ZTSSt15__uniq_ptr_implIN5arrow15ValueComparatorESt14default_deleteIS1_EE", !160, i64 0}
!160 = !{!"_ZTSSt5tupleIJPN5arrow15ValueComparatorESt14default_deleteIS1_EEE", !161, i64 0}
!161 = !{!"_ZTSSt11_Tuple_implILm0EJPN5arrow15ValueComparatorESt14default_deleteIS1_EEE", !162, i64 0}
!162 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow15ValueComparatorELb0EE", !163, i64 0}
!163 = !{!"p1 _ZTSN5arrow15ValueComparatorE", !10, i64 0}
!164 = !{!"_ZTSSt6vectorIlSaIlEE", !165, i64 0}
!165 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !166, i64 0}
!166 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !167, i64 0}
!167 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !168, i64 0, !168, i64 8, !168, i64 16}
!168 = !{!"p1 long", !10, i64 0}
!169 = !{!"_ZTSSt6vectorIbSaIbEE", !170, i64 0}
!170 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !171, i64 0}
!171 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !172, i64 0}
!172 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !173, i64 0, !173, i64 16, !168, i64 32}
!173 = !{!"_ZTSSt13_Bit_iterator", !174, i64 0}
!174 = !{!"_ZTSSt18_Bit_iterator_base", !168, i64 0, !4, i64 8}
!175 = !{!156, !18, i64 24}
!176 = !{!156, !18, i64 32}
!177 = !{!156, !18, i64 40}
!178 = !{!156, !18, i64 48}
!179 = !{!162, !163, i64 0}
!180 = !{!156, !18, i64 64}
!181 = !{!174, !168, i64 0}
!182 = !{!174, !4, i64 8}
!183 = !{!172, !168, i64 32}
!184 = !{!156, !92, i64 0}
!185 = !{}
!186 = !{i64 8}
!187 = !{!156, !92, i64 8}
end_hunk_6
