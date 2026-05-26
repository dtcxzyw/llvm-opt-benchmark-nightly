inline.NumInlined: 8589
inline.NumDeleted: 3289
begin_hunk_0_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2291 = phi ptr [ %i.dhl, %bb.acj ], [ %.0.i2286, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhn = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhn, ptr %i.af, align 1, !tbaa !70
  %i.dho = load ptr, ptr %.0.i2291, align 8, !tbaa !446
  %i.dhp = getelementptr i8, ptr %i.dho, i64 -24
  %i.dhq = load i64, ptr %i.dhp, align 8
  %i.dhr = getelementptr inbounds i8, ptr %.0.i2291, i64 %i.dhq
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dhr, i64 16
  %i.dht = load i64, ptr %i.dhs, align 8, !tbaa !659
  %.not.i2295 = icmp eq i64 %i.dht, 0
  br i1 %.not.i2295, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dhu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2291, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

bb.acn:                                           ; preds = %bb.acl
  %i.dhv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2291, i8 noundef signext %i.dhn)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299: ; preds = %bb.acn, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.aco:                                           ; preds = %bb.ace
  %i.dhw = load i8, ptr %i.gw, align 8, !tbaa !702, !range !86, !noundef !87
  %i.dhx = trunc nuw i8 %i.dhw to i1
  br i1 %i.dhx, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dhy = load ptr, ptr %0, align 8, !tbaa !446
  %i.dhz = getelementptr i8, ptr %i.dhy, i64 -24
  %i.dia = load i64, ptr %i.dhz, align 8
  %i.dib = getelementptr inbounds i8, ptr %0, i64 %i.dia ; 2 uses
  %i.dic = getelementptr inbounds nuw i8, ptr %i.dib, i64 32
  %i.did = load i32, ptr %i.dic, align 8, !tbaa !677
  %i.die = or i32 %i.did, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dib, i32 noundef %i.die)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ky, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2302 = load i64, ptr %i.ip, align 8, !tbaa !408
  %i.dif = trunc i64 %.sroa.0.0.copyload.i.i2302 to i32
  store i32 %i.dif, ptr %6, align 8, !tbaa !733
  %.sroa.0.0.copyload.i2303 = load i64, ptr %i.iq, align 8, !tbaa !408
  %i.dig = trunc i64 %.sroa.0.0.copyload.i2303 to i32
  store i32 %i.dig, ptr %i.ir, align 4, !tbaa !734
  %.sroa.0.0.copyload.i2304 = load i64, ptr %i.io, align 8, !tbaa !408
  %i.dih = trunc i64 %.sroa.0.0.copyload.i2304 to i32
  store i32 %i.dih, ptr %i.is, align 8, !tbaa !735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.23, i64 3, i1 false)
  %i.dii = icmp eq i8 %.0806, 69
  br i1 %i.dii, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301
  store i8 69, ptr %i.it, align 1, !tbaa !70
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301
  %.0830 = phi ptr [ %i.iu, %bb.acq ], [ %i.it, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301 ] ; 2 uses
  %i.dij = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.dij, ptr %.0830, align 1, !tbaa !70
  %i.dik = load ptr, ptr %0, align 8, !tbaa !446
  %i.dil = getelementptr i8, ptr %i.dik, i64 -24
  %i.dim = load i64, ptr %i.dil, align 8
  %i.din = getelementptr inbounds i8, ptr %0, i64 %i.dim ; 6 uses
  %i.dio = getelementptr inbounds nuw i8, ptr %i.din, i64 232
  %i.dip = load ptr, ptr %i.dio, align 8, !tbaa !727 ; 2 uses
  %.not.i2305 = icmp eq ptr %i.dip, null
  %i.diq = zext i1 %.not.i2305 to i8
  %i.dir = getelementptr inbounds nuw i8, ptr %i.din, i64 225 ; 2 uses
  %i.dis = load i8, ptr %i.dir, align 1, !tbaa !688, !range !86, !noundef !87
  %i.dit = trunc nuw i8 %i.dis to i1
  br i1 %i.dit, label %._crit_edge.i2311, label %bb.acs

._crit_edge.i2311:                                ; preds = %bb.acr
  %.phi.trans.insert.i2312 = getelementptr inbounds nuw i8, ptr %i.din, i64 224
  %.pre.i2313 = load i8, ptr %.phi.trans.insert.i2312, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317

bb.acs:                                           ; preds = %bb.acr
  %i.diu = getelementptr inbounds nuw i8, ptr %i.din, i64 240
  %i.div = load ptr, ptr %i.diu, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i2306 = icmp eq ptr %i.div, null
  br i1 %.not.i.i.i2306, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc2314 unwind label %.loopexit.split-lp2923

.noexc2314:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307: ; preds = %bb.acs
  %i.diw = getelementptr inbounds nuw i8, ptr %i.div, i64 56
  %i.dix = load i8, ptr %i.diw, align 8, !tbaa !695
  %.not.i1.i.i2308 = icmp eq i8 %i.dix, 0
  br i1 %.not.i1.i.i2308, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307
  %i.diy = getelementptr inbounds nuw i8, ptr %i.div, i64 89
  %i.diz = load i8, ptr %i.diy, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.div)
          to label %.noexc2315 unwind label %.loopexit2922

.noexc2315:                                       ; preds = %bb.acv
  %i.dja = load ptr, ptr %i.div, align 8, !tbaa !446
  %i.djb = getelementptr inbounds nuw i8, ptr %i.dja, i64 48
  %i.djc = load ptr, ptr %i.djb, align 8
  %i.djd = invoke noundef signext i8 %i.djc(ptr noundef nonnull align 8 dereferenceable(570) %i.div, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309 unwind label %.loopexit2922, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309: ; preds = %.noexc2315, %bb.acu
  %.0.i.i.i2310 = phi i8 [ %i.diz, %bb.acu ], [ %i.djd, %.noexc2315 ] ; 2 uses
  %i.dje = getelementptr inbounds nuw i8, ptr %i.din, i64 224
  store i8 %.0.i.i.i2310, ptr %i.dje, align 8, !tbaa !700
  store i8 1, ptr %i.dir, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309, %._crit_edge.i2311
  %i.djf = phi i8 [ %.pre.i2313, %._crit_edge.i2311 ], [ %.0.i.i.i2310, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309 ]
  %i.djg = getelementptr inbounds nuw i8, ptr %.0830, i64 1
  %i.djh = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.dip, i8 %i.diq, ptr noundef nonnull align 8 dereferenceable(216) %i.din, i8 noundef signext %i.djf, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.djg)
          to label %bb.acw unwind label %.loopexit2922 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2922:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317, %bb.acv, %.noexc2315
  %lpad.loopexit2924 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

.loopexit.split-lp2923:                           ; preds = %bb.act
  %lpad.loopexit.split-lp2925 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

bb.acx:                                           ; preds = %.loopexit.split-lp2923, %.loopexit2922
  %lpad.phi2926 = phi { ptr, i32 } [ %lpad.loopexit2924, %.loopexit2922 ], [ %lpad.loopexit.split-lp2925, %.loopexit.split-lp2923 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #26
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !70
  %i.dji = load ptr, ptr %0, align 8, !tbaa !446
  %i.djj = getelementptr i8, ptr %i.dji, i64 -24
  %i.djk = load i64, ptr %i.djj, align 8
  %i.djl = getelementptr inbounds i8, ptr %0, i64 %i.djk
  %i.djm = getelementptr inbounds nuw i8, ptr %i.djl, i64 16
  %i.djn = load i64, ptr %i.djm, align 8, !tbaa !659
  %.not.i2318 = icmp eq i64 %i.djn, 0
  br i1 %.not.i2318, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.djo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 unwind label %.loopexit ; 0 uses

bb.ada:                                           ; preds = %bb.acy
  %i.djp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322: ; preds = %bb.ada, %bb.acz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.adb:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.adr, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.sroa.0.0.copyload.i2323 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %.not2806 = icmp eq i16 %.sroa.0.0.copyload.i2323, -32768
  br i1 %.not2806, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325

bb.add:                                           ; preds = %bb.adc
  %i.djq = load ptr, ptr %0, align 8, !tbaa !446
  %i.djr = getelementptr i8, ptr %i.djq, i64 -24
  %i.djs = load i64, ptr %i.djr, align 8
  %i.djt = getelementptr inbounds i8, ptr %0, i64 %i.djs ; 2 uses
  %i.dju = getelementptr inbounds nuw i8, ptr %i.djt, i64 32
  %i.djv = load i32, ptr %i.dju, align 8, !tbaa !677
  %i.djw = or i32 %i.djv, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djt, i32 noundef %i.djw)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2326.pre = load i16, ptr %2, align 8, !tbaa !634
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge, %bb.adc
  %.sroa.0.0.copyload.i2326 = phi i16 [ %.sroa.0.0.copyload.i2326.pre, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge ], [ %.sroa.0.0.copyload.i2323, %bb.adc ] ; 2 uses
  %i.djx = icmp eq i8 %.0806, 0
  br i1 %i.djx, label %bb.ade, label %bb.adk

bb.ade:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325
  %.lhs.trunc2804 = call i16 @llvm.abs.i16(i16 %.sroa.0.0.copyload.i2326, i1 false)
  %i.djy = urem i16 %.lhs.trunc2804, 100          ; 2 uses
  %.zext2805 = zext nneg i16 %i.djy to i32
  %i.djz = icmp samesign ult i16 %i.djy, 10
  br i1 %i.djz, label %bb.adf, label %bb.adj

bb.adf:                                           ; preds = %bb.ade
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 48, ptr %i.ad, align 1, !tbaa !70
  %i.dka = load ptr, ptr %0, align 8, !tbaa !446
  %i.dkb = getelementptr i8, ptr %i.dka, i64 -24
  %i.dkc = load i64, ptr %i.dkb, align 8
  %i.dkd = getelementptr inbounds i8, ptr %0, i64 %i.dkc
  %i.dke = getelementptr inbounds nuw i8, ptr %i.dkd, i64 16
  %i.dkf = load i64, ptr %i.dke, align 8, !tbaa !659
  %.not.i2327 = icmp eq i64 %i.dkf, 0
  br i1 %.not.i2327, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.dkg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331 unwind label %bb.adi ; 0 uses

bb.adh:                                           ; preds = %bb.adf
  %i.dkh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331 unwind label %bb.adi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331: ; preds = %bb.adh, %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.adj

bb.adi:                                           ; preds = %bb.adh, %bb.adg, %bb.adj
  %i.dki = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.adj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331, %bb.ade
  %i.dkj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.zext2805)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 unwind label %bb.adi ; 0 uses

bb.adk:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325
  %20 = sext i16 %.sroa.0.0.copyload.i2326 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #26
  store i8 37, ptr %i.fs, align 1, !tbaa !70
  store i8 %.0806, ptr %i.il, align 1, !tbaa !70
  %i.dkk = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.dkk, ptr %i.im, align 1, !tbaa !70
  %i.dkl = add nsw i32 %20, -1900
  store i32 %i.dkl, ptr %i.ii, align 4, !tbaa !737
  %i.dkm = load ptr, ptr %0, align 8, !tbaa !446
  %i.dkn = getelementptr i8, ptr %i.dkm, i64 -24
  %i.dko = load i64, ptr %i.dkn, align 8
  %i.dkp = getelementptr inbounds i8, ptr %0, i64 %i.dko ; 6 uses
  %i.dkq = getelementptr inbounds nuw i8, ptr %i.dkp, i64 232
  %i.dkr = load ptr, ptr %i.dkq, align 8, !tbaa !727 ; 2 uses
  %.not.i2332 = icmp eq ptr %i.dkr, null
  %i.dks = zext i1 %.not.i2332 to i8
  %i.dkt = getelementptr inbounds nuw i8, ptr %i.dkp, i64 225 ; 2 uses
  %i.dku = load i8, ptr %i.dkt, align 1, !tbaa !688, !range !86, !noundef !87
  %i.dkv = trunc nuw i8 %i.dku to i1
  br i1 %i.dkv, label %._crit_edge.i2338, label %bb.adl

._crit_edge.i2338:                                ; preds = %bb.adk
  %.phi.trans.insert.i2339 = getelementptr inbounds nuw i8, ptr %i.dkp, i64 224
  %.pre.i2340 = load i8, ptr %.phi.trans.insert.i2339, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344

bb.adl:                                           ; preds = %bb.adk
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dkp, i64 240
  %i.dkx = load ptr, ptr %i.dkw, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i2333 = icmp eq ptr %i.dkx, null
  br i1 %.not.i.i.i2333, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc2341 unwind label %.loopexit.split-lp2918

.noexc2341:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334: ; preds = %bb.adl
  %i.dky = getelementptr inbounds nuw i8, ptr %i.dkx, i64 56
  %i.dkz = load i8, ptr %i.dky, align 8, !tbaa !695
  %.not.i1.i.i2335 = icmp eq i8 %i.dkz, 0
  br i1 %.not.i1.i.i2335, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkx, i64 89
  %i.dlb = load i8, ptr %i.dla, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dkx)
          to label %.noexc2342 unwind label %.loopexit2917

.noexc2342:                                       ; preds = %bb.ado
  %i.dlc = load ptr, ptr %i.dkx, align 8, !tbaa !446
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dlc, i64 48
  %i.dle = load ptr, ptr %i.dld, align 8
  %i.dlf = invoke noundef signext i8 %i.dle(ptr noundef nonnull align 8 dereferenceable(570) %i.dkx, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336 unwind label %.loopexit2917, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336: ; preds = %.noexc2342, %bb.adn
  %.0.i.i.i2337 = phi i8 [ %i.dlb, %bb.adn ], [ %i.dlf, %.noexc2342 ] ; 2 uses
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dkp, i64 224
  store i8 %.0.i.i.i2337, ptr %i.dlg, align 8, !tbaa !700
  store i8 1, ptr %i.dkt, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336, %._crit_edge.i2338
  %i.dlh = phi i8 [ %.pre.i2340, %._crit_edge.i2338 ], [ %.0.i.i.i2337, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336 ]
  %i.dli = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.ic, ptr %i.dkr, i8 %i.dks, ptr noundef nonnull align 8 dereferenceable(216) %i.dkp, i8 noundef signext %i.dlh, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.in)
          to label %bb.adp unwind label %.loopexit2917 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2917:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344, %bb.ado, %.noexc2342
  %lpad.loopexit2919 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

.loopexit.split-lp2918:                           ; preds = %bb.adm
  %lpad.loopexit.split-lp2920 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

bb.adq:                                           ; preds = %.loopexit.split-lp2918, %.loopexit2917
  %lpad.phi2921 = phi { ptr, i32 } [ %lpad.loopexit2919, %.loopexit2917 ], [ %lpad.loopexit.split-lp2920, %.loopexit.split-lp2918 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #26
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !70
  %i.dlj = load ptr, ptr %0, align 8, !tbaa !446
  %i.dlk = getelementptr i8, ptr %i.dlj, i64 -24
  %i.dll = load i64, ptr %i.dlk, align 8
  %i.dlm = getelementptr inbounds i8, ptr %0, i64 %i.dll
  %i.dln = getelementptr inbounds nuw i8, ptr %i.dlm, i64 16
  %i.dlo = load i64, ptr %i.dln, align 8, !tbaa !659
  %.not.i2345 = icmp eq i64 %i.dlo, 0
  br i1 %.not.i2345, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %bb.adr
  %i.dlp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 unwind label %.loopexit ; 0 uses

bb.adt:                                           ; preds = %bb.adr
  %i.dlq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 121)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349: ; preds = %bb.adt, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.adu:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.afb, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dlr = icmp eq i8 %.0806, 79
  br i1 %i.dlr, label %bb.adw, label %bb.aef

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 37, ptr %i.ab, align 1, !tbaa !70
  %i.dls = load ptr, ptr %0, align 8, !tbaa !446
  %i.dlt = getelementptr i8, ptr %i.dls, i64 -24
  %i.dlu = load i64, ptr %i.dlt, align 8
  %i.dlv = getelementptr inbounds i8, ptr %0, i64 %i.dlu
  %i.dlw = getelementptr inbounds nuw i8, ptr %i.dlv, i64 16
  %i.dlx = load i64, ptr %i.dlw, align 8, !tbaa !659
  %.not.i2350 = icmp eq i64 %i.dlx, 0
  br i1 %.not.i2350, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.dly = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %bb.adz unwind label %.loopexit

bb.ady:                                           ; preds = %bb.adw
  %i.dlz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.adz unwind label %.loopexit ; 0 uses

bb.adz:                                           ; preds = %bb.adx, %bb.ady
  %.0.i2351 = phi ptr [ %i.dly, %bb.adx ], [ %0, %bb.ady ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 79, ptr %i.aa, align 1, !tbaa !70
  %i.dma = load ptr, ptr %.0.i2351, align 8, !tbaa !446
  %i.dmb = getelementptr i8, ptr %i.dma, i64 -24
  %i.dmc = load i64, ptr %i.dmb, align 8
  %i.dmd = getelementptr inbounds i8, ptr %.0.i2351, i64 %i.dmc
  %i.dme = getelementptr inbounds nuw i8, ptr %i.dmd, i64 16
  %i.dmf = load i64, ptr %i.dme, align 8, !tbaa !659
  %.not.i2355 = icmp eq i64 %i.dmf, 0
  br i1 %.not.i2355, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.dmg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2351, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %bb.aec unwind label %.loopexit

bb.aeb:                                           ; preds = %bb.adz
  %i.dmh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2351, i8 noundef signext 79)
          to label %bb.aec unwind label %.loopexit ; 0 uses

bb.aec:                                           ; preds = %bb.aea, %bb.aeb
  %.0.i2356 = phi ptr [ %i.dmg, %bb.aea ], [ %.0.i2351, %bb.aeb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dmi = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dmi, ptr %i.z, align 1, !tbaa !70
  %i.dmj = load ptr, ptr %.0.i2356, align 8, !tbaa !446
  %i.dmk = getelementptr i8, ptr %i.dmj, i64 -24
  %i.dml = load i64, ptr %i.dmk, align 8
  %i.dmm = getelementptr inbounds i8, ptr %.0.i2356, i64 %i.dml
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.dmm, i64 16
  %i.dmo = load i64, ptr %i.dmn, align 8, !tbaa !659
  %.not.i2360 = icmp eq i64 %i.dmo, 0
  br i1 %.not.i2360, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.dmp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2356, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 unwind label %.loopexit ; 0 uses

bb.aee:                                           ; preds = %bb.aec
  %i.dmq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2356, i8 noundef signext %i.dmi)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364: ; preds = %bb.aee, %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.aef:                                           ; preds = %bb.adv
  %.sroa.0.0.copyload.i2365 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %.not = icmp eq i16 %.sroa.0.0.copyload.i2365, -32768
  br i1 %.not, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2367

bb.aeg:                                           ; preds = %bb.aef
  %i.dmr = load ptr, ptr %0, align 8, !tbaa !446
  %i.dms = getelementptr i8, ptr %i.dmr, i64 -24
  %i.dmt = load i64, ptr %i.dms, align 8
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
  %i.p = load i8, ptr %i.o, align 1, !tbaa !70
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
  %i.v = load i8, ptr %i.u, align 4, !tbaa !746   ; 2 uses
  %i.w = icmp ult i8 %i.v, 7
  br i1 %i.w, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !746   ; 2 uses
  %i.z = icmp ult i8 %i.y, 7
  br i1 %i.z, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !746 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 7
  br i1 %i.ac, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread37, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !446
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !677
  %i.aj = or i32 %i.ai, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ag, i32 noundef %i.aj)
  br label %bb.k

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ak = phi i8 [ %i.v, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread ], [ %i.s, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !732 ; 3 uses
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
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !70
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
  %i.cc = load ptr, ptr %0, align 8, !tbaa !446
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !677
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

declare { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i8, ptr noundef nonnull align 8 dereferenceable(216), i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !739
  %i.c = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !677
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !727  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !446
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit unwind label %bb.e, !inline_history !743 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #26
  ret void

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !716, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
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
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !70
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !446
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !659
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !747
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 225 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !688, !range !86, !noundef !87
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !694  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !695
  %.not.i1.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  %i.j = load i8, ptr %i.i, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.f)
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !446
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef signext i8 %i.m(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext 32), !inline_history !748
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i8 [ %i.j, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 %.0.i.i.i, ptr %i.o, align 8, !tbaa !700
  store i8 1, ptr %i.b, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.p = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  store i8 %i.p, ptr %i.a, align 8, !tbaa !749
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !701
  store i32 %i.s, ptr %i.q, align 4, !tbaa !739
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !408
  store i64 0, ptr %i.v, align 8, !tbaa !659
  store <2 x i64> %i.w, ptr %i.t, align 8, !tbaa !408
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !750
  store ptr null, ptr %i.y, align 8, !tbaa !750
  store ptr %i.z, ptr %i.x, align 8, !tbaa !751
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #26
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !751 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #26
  resume { ptr, i32 } %i.ae

bb.h:                                             ; preds = %bb.f, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZSt19uncaught_exceptionsv() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::locale", align 8       ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !742    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !749
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 225 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !688, !range !86, !noundef !87
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !694  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !695
  %.not.i1.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.h)
          to label %.noexc1 unwind label %bb.f

.noexc1:                                          ; preds = %bb.d
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !446
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef signext i8 %i.m(ptr noundef nonnull align 8 dereferenceable(570) %i.h, i8 noundef signext 32)
          to label %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge unwind label %bb.f, !inline_history !699 ; 0 uses

.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge: ; preds = %.noexc1
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !742
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc1._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge ], [ %i.a, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i ]
  store i8 1, ptr %i.d, align 1, !tbaa !688
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.o = phi ptr [ %i.a, %bb.a ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i8 %i.c, ptr %i.p, align 8, !tbaa !700
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !739
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !701
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load <2 x i64>, ptr %i.t, align 8, !tbaa !408
  store <2 x i64> %i.v, ptr %i.u, align 8, !tbaa !408
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %1, ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  %i.x = load ptr, ptr %0, align 8, !tbaa !742, !nonnull !87, !align !546
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !751
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !750
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #26
  ret void

bb.f:                                             ; preds = %.noexc1, %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date6detail13low_level_fmtIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES9_RKNS0_4yearE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.d)
  %i.e = load ptr, ptr %0, align 8, !tbaa !446    ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 225 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !688, !range !86, !noundef !87
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !694  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !695
  %.not.i1.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %bb.d
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !446
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 32)
          to label %.noexc10._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge unwind label %bb.l, !inline_history !699 ; 0 uses

.noexc10._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge: ; preds = %.noexc10
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc10._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc10._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge ], [ %i.e, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i ]
  store i8 1, ptr %i.i, align 1, !tbaa !688
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.t = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  store i8 48, ptr %i.u, align 8, !tbaa !700
  %i.v = getelementptr i8, ptr %i.t, i64 -24      ; 3 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 18, ptr %i.y, align 8, !tbaa !701
  %i.z = load i64, ptr %i.v, align 8
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  %i.ab = load i16, ptr %1, align 2, !tbaa !730
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 5, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !659
  %i.af = load i64, ptr %i.v, align 8
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.af
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  %i.ai = load i16, ptr %1, align 2, !tbaa !730
  %i.aj = sext i16 %i.ai to i32
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.aj)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !739
  %i.an = and i32 %i.am, 8192
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %2, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !677
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.j, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !727 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !446
end_hunk_1
begin_hunk_2_@_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !694  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !695
  %.not.i1.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.d
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !446
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 32)
          to label %.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge unwind label %bb.i, !inline_history !699 ; 0 uses

.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge: ; preds = %.noexc8
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !446
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc8._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge ], [ %i.e, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i ]
  store i8 1, ptr %i.i, align 1, !tbaa !688
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.t = phi ptr [ %i.e, %bb.a ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  store i8 48, ptr %i.u, align 8, !tbaa !700
  %i.v = getelementptr i8, ptr %i.t, i64 -24      ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 130, ptr %i.y, align 8, !tbaa !701
  %i.z = load i64, ptr %i.v, align 8
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 2, ptr %i.ab, align 8, !tbaa !659
  %i.ac = load i64, ptr %0, align 8, !tbaa !744
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ac)
          to label %_ZNSolsEl.exit unwind label %bb.i ; 0 uses

_ZNSolsEl.exit:                                   ; preds = %._crit_edge.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !739
  %i.ag = and i32 %i.af, 8192
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSolsEl.exit
  %i.ah = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %2, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !677
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 232
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !727 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !446
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(64) %i.ao)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit unwind label %bb.h, !inline_history !743 ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit: ; preds = %_ZNSolsEl.exit, %bb.e, %bb.f, %bb.g
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %1

bb.i:                                             ; preds = %._crit_edge.i.i, %.noexc8, %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !177  ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #30
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !61

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !70
  store i8 %i.v, ptr %i.t, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !70
  store i8 %i.w, ptr %i.m, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !177
  %i.x = load ptr, ptr %0, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !70
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !177  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !102    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #30
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !376

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !70
  store i8 %i.t, ptr %i.s, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !70
  store i8 %i.x, ptr %i.w, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !70
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !102
  store i64 %.0, ptr %i.h, align 8, !tbaa !70
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !177  ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !376

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #29
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !102
  store i64 %.0, ptr %i.d, align 8, !tbaa !70
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !177
  store i8 0, ptr %i.c, align 1, !tbaa !70
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !70
  store i8 %i.s, ptr %i.q, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !177
  %i.u = load ptr, ptr %0, align 8, !tbaa !102
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::chrono::time_point.174", align 8 ; 5 uses
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !752
  %.val4 = load i64, ptr %2, align 8, !tbaa !408
  %.val5 = load ptr, ptr %3, align 8, !tbaa !52
  %i.b = getelementptr inbounds [8 x i8], ptr %.val, i64 %.val4
  %i.c = load i64, ptr %i.b, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.c, ptr %5, align 8
  call void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.d = load ptr, ptr %4, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !70
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !70
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.m

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKS6_EUlRKNS0_5ArrayElPSoE_JSE_lSF_EENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_EUlRKNS_5ArrayElPSoE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6formatIcNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000EEEEEEEEDTcmcl9to_streamclsr3stdE7declvalIRSt13basic_ostreamIT_St11char_traitsISC_EEEEfp_fp0_EtlNSt7__cxx1112basic_stringISC_SE_SaISC_EEEEEPKSC_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !446
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 5, ptr %i.e, align 4, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !677
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit unwind label %bb.f

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit: ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS4_10time_pointINS4_3_V212system_clockET1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176, !alias.scope !760
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !177, !alias.scope !760
  store i8 0, ptr %i.i, align 8, !tbaa !70, !alias.scope !760
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685, !noalias !760 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2291 = phi ptr [ %i.dho, %bb.acj ], [ %.0.i2286, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhq = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhq, ptr %i.af, align 1, !tbaa !70
  %i.dhr = load ptr, ptr %.0.i2291, align 8, !tbaa !446
  %i.dhs = getelementptr i8, ptr %i.dhr, i64 -24
  %i.dht = load i64, ptr %i.dhs, align 8
  %i.dhu = getelementptr inbounds i8, ptr %.0.i2291, i64 %i.dht
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.dhu, i64 16
  %i.dhw = load i64, ptr %i.dhv, align 8, !tbaa !659
  %.not.i2295 = icmp eq i64 %i.dhw, 0
  br i1 %.not.i2295, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dhx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2291, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

bb.acn:                                           ; preds = %bb.acl
  %i.dhy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2291, i8 noundef signext %i.dhq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299: ; preds = %bb.acn, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.aco:                                           ; preds = %bb.ace
  %i.dhz = load i8, ptr %i.gw, align 8, !tbaa !761, !range !86, !noundef !87
  %i.dia = trunc nuw i8 %i.dhz to i1
  br i1 %i.dia, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dib = load ptr, ptr %0, align 8, !tbaa !446
  %i.dic = getelementptr i8, ptr %i.dib, i64 -24
  %i.did = load i64, ptr %i.dic, align 8
  %i.die = getelementptr inbounds i8, ptr %0, i64 %i.did ; 2 uses
  %i.dif = getelementptr inbounds nuw i8, ptr %i.die, i64 32
  %i.dig = load i32, ptr %i.dif, align 8, !tbaa !677
  %i.dih = or i32 %i.dig, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.die, i32 noundef %i.dih)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kz, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2302 = load i64, ptr %i.iq, align 8, !tbaa !408
  %i.dii = trunc i64 %.sroa.0.0.copyload.i.i2302 to i32
  store i32 %i.dii, ptr %6, align 8, !tbaa !733
  %.sroa.0.0.copyload.i2303 = load i64, ptr %i.ir, align 8, !tbaa !408
  %i.dij = trunc i64 %.sroa.0.0.copyload.i2303 to i32
  store i32 %i.dij, ptr %i.is, align 4, !tbaa !734
  %.sroa.0.0.copyload.i2304 = load i64, ptr %i.ip, align 8, !tbaa !408
  %i.dik = trunc i64 %.sroa.0.0.copyload.i2304 to i32
  store i32 %i.dik, ptr %i.it, align 8, !tbaa !735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.23, i64 3, i1 false)
  %i.dil = icmp eq i8 %.0806, 69
  br i1 %i.dil, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301
  store i8 69, ptr %i.iu, align 1, !tbaa !70
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301
  %.0830 = phi ptr [ %i.iv, %bb.acq ], [ %i.iu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301 ] ; 2 uses
  %i.dim = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.dim, ptr %.0830, align 1, !tbaa !70
  %i.din = load ptr, ptr %0, align 8, !tbaa !446
  %i.dio = getelementptr i8, ptr %i.din, i64 -24
  %i.dip = load i64, ptr %i.dio, align 8
  %i.diq = getelementptr inbounds i8, ptr %0, i64 %i.dip ; 6 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %i.diq, i64 232
  %i.dis = load ptr, ptr %i.dir, align 8, !tbaa !727 ; 2 uses
  %.not.i2305 = icmp eq ptr %i.dis, null
  %i.dit = zext i1 %.not.i2305 to i8
  %i.diu = getelementptr inbounds nuw i8, ptr %i.diq, i64 225 ; 2 uses
  %i.div = load i8, ptr %i.diu, align 1, !tbaa !688, !range !86, !noundef !87
  %i.diw = trunc nuw i8 %i.div to i1
  br i1 %i.diw, label %._crit_edge.i2311, label %bb.acs

._crit_edge.i2311:                                ; preds = %bb.acr
  %.phi.trans.insert.i2312 = getelementptr inbounds nuw i8, ptr %i.diq, i64 224
  %.pre.i2313 = load i8, ptr %.phi.trans.insert.i2312, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317

bb.acs:                                           ; preds = %bb.acr
  %i.dix = getelementptr inbounds nuw i8, ptr %i.diq, i64 240
  %i.diy = load ptr, ptr %i.dix, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i2306 = icmp eq ptr %i.diy, null
  br i1 %.not.i.i.i2306, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc2314 unwind label %.loopexit.split-lp2923

.noexc2314:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307: ; preds = %bb.acs
  %i.diz = getelementptr inbounds nuw i8, ptr %i.diy, i64 56
  %i.dja = load i8, ptr %i.diz, align 8, !tbaa !695
  %.not.i1.i.i2308 = icmp eq i8 %i.dja, 0
  br i1 %.not.i1.i.i2308, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307
  %i.djb = getelementptr inbounds nuw i8, ptr %i.diy, i64 89
  %i.djc = load i8, ptr %i.djb, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.diy)
          to label %.noexc2315 unwind label %.loopexit2922

.noexc2315:                                       ; preds = %bb.acv
  %i.djd = load ptr, ptr %i.diy, align 8, !tbaa !446
  %i.dje = getelementptr inbounds nuw i8, ptr %i.djd, i64 48
  %i.djf = load ptr, ptr %i.dje, align 8
  %i.djg = invoke noundef signext i8 %i.djf(ptr noundef nonnull align 8 dereferenceable(570) %i.diy, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309 unwind label %.loopexit2922, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309: ; preds = %.noexc2315, %bb.acu
  %.0.i.i.i2310 = phi i8 [ %i.djc, %bb.acu ], [ %i.djg, %.noexc2315 ] ; 2 uses
  %i.djh = getelementptr inbounds nuw i8, ptr %i.diq, i64 224
  store i8 %.0.i.i.i2310, ptr %i.djh, align 8, !tbaa !700
  store i8 1, ptr %i.diu, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309, %._crit_edge.i2311
  %i.dji = phi i8 [ %.pre.i2313, %._crit_edge.i2311 ], [ %.0.i.i.i2310, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309 ]
  %i.djj = getelementptr inbounds nuw i8, ptr %.0830, i64 1
  %i.djk = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dis, i8 %i.dit, ptr noundef nonnull align 8 dereferenceable(216) %i.diq, i8 noundef signext %i.dji, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.djj)
          to label %bb.acw unwind label %.loopexit2922 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2922:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317, %bb.acv, %.noexc2315
  %lpad.loopexit2924 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

.loopexit.split-lp2923:                           ; preds = %bb.act
  %lpad.loopexit.split-lp2925 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

bb.acx:                                           ; preds = %.loopexit.split-lp2923, %.loopexit2922
  %lpad.phi2926 = phi { ptr, i32 } [ %lpad.loopexit2924, %.loopexit2922 ], [ %lpad.loopexit.split-lp2925, %.loopexit.split-lp2923 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #26
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !70
  %i.djl = load ptr, ptr %0, align 8, !tbaa !446
  %i.djm = getelementptr i8, ptr %i.djl, i64 -24
  %i.djn = load i64, ptr %i.djm, align 8
  %i.djo = getelementptr inbounds i8, ptr %0, i64 %i.djn
  %i.djp = getelementptr inbounds nuw i8, ptr %i.djo, i64 16
  %i.djq = load i64, ptr %i.djp, align 8, !tbaa !659
  %.not.i2318 = icmp eq i64 %i.djq, 0
  br i1 %.not.i2318, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.djr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 unwind label %.loopexit ; 0 uses

bb.ada:                                           ; preds = %bb.acy
  %i.djs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322: ; preds = %bb.ada, %bb.acz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.adb:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.adr, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.sroa.0.0.copyload.i2323 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %.not2806 = icmp eq i16 %.sroa.0.0.copyload.i2323, -32768
  br i1 %.not2806, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325

bb.add:                                           ; preds = %bb.adc
  %i.djt = load ptr, ptr %0, align 8, !tbaa !446
  %i.dju = getelementptr i8, ptr %i.djt, i64 -24
  %i.djv = load i64, ptr %i.dju, align 8
  %i.djw = getelementptr inbounds i8, ptr %0, i64 %i.djv ; 2 uses
  %i.djx = getelementptr inbounds nuw i8, ptr %i.djw, i64 32
  %i.djy = load i32, ptr %i.djx, align 8, !tbaa !677
  %i.djz = or i32 %i.djy, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djw, i32 noundef %i.djz)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2326.pre = load i16, ptr %2, align 8, !tbaa !634
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge, %bb.adc
  %.sroa.0.0.copyload.i2326 = phi i16 [ %.sroa.0.0.copyload.i2326.pre, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge ], [ %.sroa.0.0.copyload.i2323, %bb.adc ] ; 2 uses
  %i.dka = icmp eq i8 %.0806, 0
  br i1 %i.dka, label %bb.ade, label %bb.adk

bb.ade:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325
  %.lhs.trunc2804 = call i16 @llvm.abs.i16(i16 %.sroa.0.0.copyload.i2326, i1 false)
  %i.dkb = urem i16 %.lhs.trunc2804, 100          ; 2 uses
  %.zext2805 = zext nneg i16 %i.dkb to i32
  %i.dkc = icmp samesign ult i16 %i.dkb, 10
  br i1 %i.dkc, label %bb.adf, label %bb.adj

bb.adf:                                           ; preds = %bb.ade
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 48, ptr %i.ad, align 1, !tbaa !70
  %i.dkd = load ptr, ptr %0, align 8, !tbaa !446
  %i.dke = getelementptr i8, ptr %i.dkd, i64 -24
  %i.dkf = load i64, ptr %i.dke, align 8
  %i.dkg = getelementptr inbounds i8, ptr %0, i64 %i.dkf
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.dkg, i64 16
  %i.dki = load i64, ptr %i.dkh, align 8, !tbaa !659
  %.not.i2327 = icmp eq i64 %i.dki, 0
  br i1 %.not.i2327, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.dkj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331 unwind label %bb.adi ; 0 uses

bb.adh:                                           ; preds = %bb.adf
  %i.dkk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331 unwind label %bb.adi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331: ; preds = %bb.adh, %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.adj

bb.adi:                                           ; preds = %bb.adh, %bb.adg, %bb.adj
  %i.dkl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.adj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331, %bb.ade
  %i.dkm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.zext2805)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 unwind label %bb.adi ; 0 uses

bb.adk:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325
  %20 = sext i16 %.sroa.0.0.copyload.i2326 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #26
  store i8 37, ptr %i.fs, align 1, !tbaa !70
  store i8 %.0806, ptr %i.im, align 1, !tbaa !70
  %i.dkn = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.dkn, ptr %i.in, align 1, !tbaa !70
  %i.dko = add nsw i32 %20, -1900
  store i32 %i.dko, ptr %i.ij, align 4, !tbaa !737
  %i.dkp = load ptr, ptr %0, align 8, !tbaa !446
  %i.dkq = getelementptr i8, ptr %i.dkp, i64 -24
  %i.dkr = load i64, ptr %i.dkq, align 8
  %i.dks = getelementptr inbounds i8, ptr %0, i64 %i.dkr ; 6 uses
  %i.dkt = getelementptr inbounds nuw i8, ptr %i.dks, i64 232
  %i.dku = load ptr, ptr %i.dkt, align 8, !tbaa !727 ; 2 uses
  %.not.i2332 = icmp eq ptr %i.dku, null
  %i.dkv = zext i1 %.not.i2332 to i8
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dks, i64 225 ; 2 uses
  %i.dkx = load i8, ptr %i.dkw, align 1, !tbaa !688, !range !86, !noundef !87
  %i.dky = trunc nuw i8 %i.dkx to i1
  br i1 %i.dky, label %._crit_edge.i2338, label %bb.adl

._crit_edge.i2338:                                ; preds = %bb.adk
  %.phi.trans.insert.i2339 = getelementptr inbounds nuw i8, ptr %i.dks, i64 224
  %.pre.i2340 = load i8, ptr %.phi.trans.insert.i2339, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344

bb.adl:                                           ; preds = %bb.adk
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dks, i64 240
  %i.dla = load ptr, ptr %i.dkz, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i2333 = icmp eq ptr %i.dla, null
  br i1 %.not.i.i.i2333, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc2341 unwind label %.loopexit.split-lp2918

.noexc2341:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334: ; preds = %bb.adl
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.dla, i64 56
  %i.dlc = load i8, ptr %i.dlb, align 8, !tbaa !695
  %.not.i1.i.i2335 = icmp eq i8 %i.dlc, 0
  br i1 %.not.i1.i.i2335, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dla, i64 89
  %i.dle = load i8, ptr %i.dld, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dla)
          to label %.noexc2342 unwind label %.loopexit2917

.noexc2342:                                       ; preds = %bb.ado
  %i.dlf = load ptr, ptr %i.dla, align 8, !tbaa !446
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dlf, i64 48
  %i.dlh = load ptr, ptr %i.dlg, align 8
  %i.dli = invoke noundef signext i8 %i.dlh(ptr noundef nonnull align 8 dereferenceable(570) %i.dla, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336 unwind label %.loopexit2917, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336: ; preds = %.noexc2342, %bb.adn
  %.0.i.i.i2337 = phi i8 [ %i.dle, %bb.adn ], [ %i.dli, %.noexc2342 ] ; 2 uses
  %i.dlj = getelementptr inbounds nuw i8, ptr %i.dks, i64 224
  store i8 %.0.i.i.i2337, ptr %i.dlj, align 8, !tbaa !700
  store i8 1, ptr %i.dkw, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336, %._crit_edge.i2338
  %i.dlk = phi i8 [ %.pre.i2340, %._crit_edge.i2338 ], [ %.0.i.i.i2337, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336 ]
  %i.dll = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dku, i8 %i.dkv, ptr noundef nonnull align 8 dereferenceable(216) %i.dks, i8 noundef signext %i.dlk, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.io)
          to label %bb.adp unwind label %.loopexit2917 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2917:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344, %bb.ado, %.noexc2342
  %lpad.loopexit2919 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

.loopexit.split-lp2918:                           ; preds = %bb.adm
  %lpad.loopexit.split-lp2920 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

bb.adq:                                           ; preds = %.loopexit.split-lp2918, %.loopexit2917
  %lpad.phi2921 = phi { ptr, i32 } [ %lpad.loopexit2919, %.loopexit2917 ], [ %lpad.loopexit.split-lp2920, %.loopexit.split-lp2918 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #26
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !70
  %i.dlm = load ptr, ptr %0, align 8, !tbaa !446
  %i.dln = getelementptr i8, ptr %i.dlm, i64 -24
  %i.dlo = load i64, ptr %i.dln, align 8
  %i.dlp = getelementptr inbounds i8, ptr %0, i64 %i.dlo
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dlp, i64 16
  %i.dlr = load i64, ptr %i.dlq, align 8, !tbaa !659
  %.not.i2345 = icmp eq i64 %i.dlr, 0
  br i1 %.not.i2345, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %bb.adr
  %i.dls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 unwind label %.loopexit ; 0 uses

bb.adt:                                           ; preds = %bb.adr
  %i.dlt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 121)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349: ; preds = %bb.adt, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.adu:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.afb, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dlu = icmp eq i8 %.0806, 79
  br i1 %i.dlu, label %bb.adw, label %bb.aef

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 37, ptr %i.ab, align 1, !tbaa !70
  %i.dlv = load ptr, ptr %0, align 8, !tbaa !446
  %i.dlw = getelementptr i8, ptr %i.dlv, i64 -24
  %i.dlx = load i64, ptr %i.dlw, align 8
  %i.dly = getelementptr inbounds i8, ptr %0, i64 %i.dlx
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dly, i64 16
  %i.dma = load i64, ptr %i.dlz, align 8, !tbaa !659
  %.not.i2350 = icmp eq i64 %i.dma, 0
  br i1 %.not.i2350, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.dmb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %bb.adz unwind label %.loopexit

bb.ady:                                           ; preds = %bb.adw
  %i.dmc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.adz unwind label %.loopexit ; 0 uses

bb.adz:                                           ; preds = %bb.adx, %bb.ady
  %.0.i2351 = phi ptr [ %i.dmb, %bb.adx ], [ %0, %bb.ady ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 79, ptr %i.aa, align 1, !tbaa !70
  %i.dmd = load ptr, ptr %.0.i2351, align 8, !tbaa !446
  %i.dme = getelementptr i8, ptr %i.dmd, i64 -24
  %i.dmf = load i64, ptr %i.dme, align 8
  %i.dmg = getelementptr inbounds i8, ptr %.0.i2351, i64 %i.dmf
  %i.dmh = getelementptr inbounds nuw i8, ptr %i.dmg, i64 16
  %i.dmi = load i64, ptr %i.dmh, align 8, !tbaa !659
  %.not.i2355 = icmp eq i64 %i.dmi, 0
  br i1 %.not.i2355, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.dmj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2351, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %bb.aec unwind label %.loopexit

bb.aeb:                                           ; preds = %bb.adz
  %i.dmk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2351, i8 noundef signext 79)
          to label %bb.aec unwind label %.loopexit ; 0 uses

bb.aec:                                           ; preds = %bb.aea, %bb.aeb
  %.0.i2356 = phi ptr [ %i.dmj, %bb.aea ], [ %.0.i2351, %bb.aeb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dml = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dml, ptr %i.z, align 1, !tbaa !70
  %i.dmm = load ptr, ptr %.0.i2356, align 8, !tbaa !446
  %i.dmn = getelementptr i8, ptr %i.dmm, i64 -24
  %i.dmo = load i64, ptr %i.dmn, align 8
  %i.dmp = getelementptr inbounds i8, ptr %.0.i2356, i64 %i.dmo
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dmp, i64 16
  %i.dmr = load i64, ptr %i.dmq, align 8, !tbaa !659
  %.not.i2360 = icmp eq i64 %i.dmr, 0
  br i1 %.not.i2360, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.dms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2356, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 unwind label %.loopexit ; 0 uses

bb.aee:                                           ; preds = %bb.aec
  %i.dmt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2356, i8 noundef signext %i.dml)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364: ; preds = %bb.aee, %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.aef:                                           ; preds = %bb.adv
  %.sroa.0.0.copyload.i2365 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %.not = icmp eq i16 %.sroa.0.0.copyload.i2365, -32768
  br i1 %.not, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2367

bb.aeg:                                           ; preds = %bb.aef
  %i.dmu = load ptr, ptr %0, align 8, !tbaa !446
  %i.dmv = getelementptr i8, ptr %i.dmu, i64 -24
  %i.dmw = load i64, ptr %i.dmv, align 8
end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2291 = phi ptr [ %i.dho, %bb.acj ], [ %.0.i2286, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhq = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhq, ptr %i.af, align 1, !tbaa !70
  %i.dhr = load ptr, ptr %.0.i2291, align 8, !tbaa !446
  %i.dhs = getelementptr i8, ptr %i.dhr, i64 -24
  %i.dht = load i64, ptr %i.dhs, align 8
  %i.dhu = getelementptr inbounds i8, ptr %.0.i2291, i64 %i.dht
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.dhu, i64 16
  %i.dhw = load i64, ptr %i.dhv, align 8, !tbaa !659
  %.not.i2295 = icmp eq i64 %i.dhw, 0
  br i1 %.not.i2295, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dhx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2291, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

bb.acn:                                           ; preds = %bb.acl
  %i.dhy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2291, i8 noundef signext %i.dhq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299: ; preds = %bb.acn, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.aco:                                           ; preds = %bb.ace
  %i.dhz = load i8, ptr %i.gw, align 8, !tbaa !800, !range !86, !noundef !87
  %i.dia = trunc nuw i8 %i.dhz to i1
  br i1 %i.dia, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dib = load ptr, ptr %0, align 8, !tbaa !446
  %i.dic = getelementptr i8, ptr %i.dib, i64 -24
  %i.did = load i64, ptr %i.dic, align 8
  %i.die = getelementptr inbounds i8, ptr %0, i64 %i.did ; 2 uses
  %i.dif = getelementptr inbounds nuw i8, ptr %i.die, i64 32
  %i.dig = load i32, ptr %i.dif, align 8, !tbaa !677
  %i.dih = or i32 %i.dig, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.die, i32 noundef %i.dih)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kz, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2302 = load i64, ptr %i.iq, align 8, !tbaa !408
  %i.dii = trunc i64 %.sroa.0.0.copyload.i.i2302 to i32
  store i32 %i.dii, ptr %6, align 8, !tbaa !733
  %.sroa.0.0.copyload.i2303 = load i64, ptr %i.ir, align 8, !tbaa !408
  %i.dij = trunc i64 %.sroa.0.0.copyload.i2303 to i32
  store i32 %i.dij, ptr %i.is, align 4, !tbaa !734
  %.sroa.0.0.copyload.i2304 = load i64, ptr %i.ip, align 8, !tbaa !408
  %i.dik = trunc i64 %.sroa.0.0.copyload.i2304 to i32
  store i32 %i.dik, ptr %i.it, align 8, !tbaa !735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.23, i64 3, i1 false)
  %i.dil = icmp eq i8 %.0806, 69
  br i1 %i.dil, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301
  store i8 69, ptr %i.iu, align 1, !tbaa !70
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301
  %.0830 = phi ptr [ %i.iv, %bb.acq ], [ %i.iu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301 ] ; 2 uses
  %i.dim = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.dim, ptr %.0830, align 1, !tbaa !70
  %i.din = load ptr, ptr %0, align 8, !tbaa !446
  %i.dio = getelementptr i8, ptr %i.din, i64 -24
  %i.dip = load i64, ptr %i.dio, align 8
  %i.diq = getelementptr inbounds i8, ptr %0, i64 %i.dip ; 6 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %i.diq, i64 232
  %i.dis = load ptr, ptr %i.dir, align 8, !tbaa !727 ; 2 uses
  %.not.i2305 = icmp eq ptr %i.dis, null
  %i.dit = zext i1 %.not.i2305 to i8
  %i.diu = getelementptr inbounds nuw i8, ptr %i.diq, i64 225 ; 2 uses
  %i.div = load i8, ptr %i.diu, align 1, !tbaa !688, !range !86, !noundef !87
  %i.diw = trunc nuw i8 %i.div to i1
  br i1 %i.diw, label %._crit_edge.i2311, label %bb.acs

._crit_edge.i2311:                                ; preds = %bb.acr
  %.phi.trans.insert.i2312 = getelementptr inbounds nuw i8, ptr %i.diq, i64 224
  %.pre.i2313 = load i8, ptr %.phi.trans.insert.i2312, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317

bb.acs:                                           ; preds = %bb.acr
  %i.dix = getelementptr inbounds nuw i8, ptr %i.diq, i64 240
  %i.diy = load ptr, ptr %i.dix, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i2306 = icmp eq ptr %i.diy, null
  br i1 %.not.i.i.i2306, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc2314 unwind label %.loopexit.split-lp2923

.noexc2314:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307: ; preds = %bb.acs
  %i.diz = getelementptr inbounds nuw i8, ptr %i.diy, i64 56
  %i.dja = load i8, ptr %i.diz, align 8, !tbaa !695
  %.not.i1.i.i2308 = icmp eq i8 %i.dja, 0
  br i1 %.not.i1.i.i2308, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307
  %i.djb = getelementptr inbounds nuw i8, ptr %i.diy, i64 89
  %i.djc = load i8, ptr %i.djb, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.diy)
          to label %.noexc2315 unwind label %.loopexit2922

.noexc2315:                                       ; preds = %bb.acv
  %i.djd = load ptr, ptr %i.diy, align 8, !tbaa !446
  %i.dje = getelementptr inbounds nuw i8, ptr %i.djd, i64 48
  %i.djf = load ptr, ptr %i.dje, align 8
  %i.djg = invoke noundef signext i8 %i.djf(ptr noundef nonnull align 8 dereferenceable(570) %i.diy, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309 unwind label %.loopexit2922, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309: ; preds = %.noexc2315, %bb.acu
  %.0.i.i.i2310 = phi i8 [ %i.djc, %bb.acu ], [ %i.djg, %.noexc2315 ] ; 2 uses
  %i.djh = getelementptr inbounds nuw i8, ptr %i.diq, i64 224
  store i8 %.0.i.i.i2310, ptr %i.djh, align 8, !tbaa !700
  store i8 1, ptr %i.diu, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309, %._crit_edge.i2311
  %i.dji = phi i8 [ %.pre.i2313, %._crit_edge.i2311 ], [ %.0.i.i.i2310, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309 ]
  %i.djj = getelementptr inbounds nuw i8, ptr %.0830, i64 1
  %i.djk = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dis, i8 %i.dit, ptr noundef nonnull align 8 dereferenceable(216) %i.diq, i8 noundef signext %i.dji, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.djj)
          to label %bb.acw unwind label %.loopexit2922 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2922:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317, %bb.acv, %.noexc2315
  %lpad.loopexit2924 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

.loopexit.split-lp2923:                           ; preds = %bb.act
  %lpad.loopexit.split-lp2925 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

bb.acx:                                           ; preds = %.loopexit.split-lp2923, %.loopexit2922
  %lpad.phi2926 = phi { ptr, i32 } [ %lpad.loopexit2924, %.loopexit2922 ], [ %lpad.loopexit.split-lp2925, %.loopexit.split-lp2923 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #26
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !70
  %i.djl = load ptr, ptr %0, align 8, !tbaa !446
  %i.djm = getelementptr i8, ptr %i.djl, i64 -24
  %i.djn = load i64, ptr %i.djm, align 8
  %i.djo = getelementptr inbounds i8, ptr %0, i64 %i.djn
  %i.djp = getelementptr inbounds nuw i8, ptr %i.djo, i64 16
  %i.djq = load i64, ptr %i.djp, align 8, !tbaa !659
  %.not.i2318 = icmp eq i64 %i.djq, 0
  br i1 %.not.i2318, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.djr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 unwind label %.loopexit ; 0 uses

bb.ada:                                           ; preds = %bb.acy
  %i.djs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322: ; preds = %bb.ada, %bb.acz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.adb:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.adr, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.sroa.0.0.copyload.i2323 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %.not2806 = icmp eq i16 %.sroa.0.0.copyload.i2323, -32768
  br i1 %.not2806, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325

bb.add:                                           ; preds = %bb.adc
  %i.djt = load ptr, ptr %0, align 8, !tbaa !446
  %i.dju = getelementptr i8, ptr %i.djt, i64 -24
  %i.djv = load i64, ptr %i.dju, align 8
  %i.djw = getelementptr inbounds i8, ptr %0, i64 %i.djv ; 2 uses
  %i.djx = getelementptr inbounds nuw i8, ptr %i.djw, i64 32
  %i.djy = load i32, ptr %i.djx, align 8, !tbaa !677
  %i.djz = or i32 %i.djy, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djw, i32 noundef %i.djz)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2326.pre = load i16, ptr %2, align 8, !tbaa !634
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge, %bb.adc
  %.sroa.0.0.copyload.i2326 = phi i16 [ %.sroa.0.0.copyload.i2326.pre, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge ], [ %.sroa.0.0.copyload.i2323, %bb.adc ] ; 2 uses
  %i.dka = icmp eq i8 %.0806, 0
  br i1 %i.dka, label %bb.ade, label %bb.adk

bb.ade:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325
  %.lhs.trunc2804 = call i16 @llvm.abs.i16(i16 %.sroa.0.0.copyload.i2326, i1 false)
  %i.dkb = urem i16 %.lhs.trunc2804, 100          ; 2 uses
  %.zext2805 = zext nneg i16 %i.dkb to i32
  %i.dkc = icmp samesign ult i16 %i.dkb, 10
  br i1 %i.dkc, label %bb.adf, label %bb.adj

bb.adf:                                           ; preds = %bb.ade
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 48, ptr %i.ad, align 1, !tbaa !70
  %i.dkd = load ptr, ptr %0, align 8, !tbaa !446
  %i.dke = getelementptr i8, ptr %i.dkd, i64 -24
  %i.dkf = load i64, ptr %i.dke, align 8
  %i.dkg = getelementptr inbounds i8, ptr %0, i64 %i.dkf
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.dkg, i64 16
  %i.dki = load i64, ptr %i.dkh, align 8, !tbaa !659
  %.not.i2327 = icmp eq i64 %i.dki, 0
  br i1 %.not.i2327, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.dkj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331 unwind label %bb.adi ; 0 uses

bb.adh:                                           ; preds = %bb.adf
  %i.dkk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331 unwind label %bb.adi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331: ; preds = %bb.adh, %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.adj

bb.adi:                                           ; preds = %bb.adh, %bb.adg, %bb.adj
  %i.dkl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.adj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331, %bb.ade
  %i.dkm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.zext2805)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 unwind label %bb.adi ; 0 uses

bb.adk:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325
  %20 = sext i16 %.sroa.0.0.copyload.i2326 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #26
  store i8 37, ptr %i.fs, align 1, !tbaa !70
  store i8 %.0806, ptr %i.im, align 1, !tbaa !70
  %i.dkn = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.dkn, ptr %i.in, align 1, !tbaa !70
  %i.dko = add nsw i32 %20, -1900
  store i32 %i.dko, ptr %i.ij, align 4, !tbaa !737
  %i.dkp = load ptr, ptr %0, align 8, !tbaa !446
  %i.dkq = getelementptr i8, ptr %i.dkp, i64 -24
  %i.dkr = load i64, ptr %i.dkq, align 8
  %i.dks = getelementptr inbounds i8, ptr %0, i64 %i.dkr ; 6 uses
  %i.dkt = getelementptr inbounds nuw i8, ptr %i.dks, i64 232
  %i.dku = load ptr, ptr %i.dkt, align 8, !tbaa !727 ; 2 uses
  %.not.i2332 = icmp eq ptr %i.dku, null
  %i.dkv = zext i1 %.not.i2332 to i8
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dks, i64 225 ; 2 uses
  %i.dkx = load i8, ptr %i.dkw, align 1, !tbaa !688, !range !86, !noundef !87
  %i.dky = trunc nuw i8 %i.dkx to i1
  br i1 %i.dky, label %._crit_edge.i2338, label %bb.adl

._crit_edge.i2338:                                ; preds = %bb.adk
  %.phi.trans.insert.i2339 = getelementptr inbounds nuw i8, ptr %i.dks, i64 224
  %.pre.i2340 = load i8, ptr %.phi.trans.insert.i2339, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344

bb.adl:                                           ; preds = %bb.adk
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dks, i64 240
  %i.dla = load ptr, ptr %i.dkz, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i2333 = icmp eq ptr %i.dla, null
  br i1 %.not.i.i.i2333, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc2341 unwind label %.loopexit.split-lp2918

.noexc2341:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334: ; preds = %bb.adl
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.dla, i64 56
  %i.dlc = load i8, ptr %i.dlb, align 8, !tbaa !695
  %.not.i1.i.i2335 = icmp eq i8 %i.dlc, 0
  br i1 %.not.i1.i.i2335, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dla, i64 89
  %i.dle = load i8, ptr %i.dld, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dla)
          to label %.noexc2342 unwind label %.loopexit2917

.noexc2342:                                       ; preds = %bb.ado
  %i.dlf = load ptr, ptr %i.dla, align 8, !tbaa !446
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dlf, i64 48
  %i.dlh = load ptr, ptr %i.dlg, align 8
  %i.dli = invoke noundef signext i8 %i.dlh(ptr noundef nonnull align 8 dereferenceable(570) %i.dla, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336 unwind label %.loopexit2917, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336: ; preds = %.noexc2342, %bb.adn
  %.0.i.i.i2337 = phi i8 [ %i.dle, %bb.adn ], [ %i.dli, %.noexc2342 ] ; 2 uses
  %i.dlj = getelementptr inbounds nuw i8, ptr %i.dks, i64 224
  store i8 %.0.i.i.i2337, ptr %i.dlj, align 8, !tbaa !700
  store i8 1, ptr %i.dkw, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336, %._crit_edge.i2338
  %i.dlk = phi i8 [ %.pre.i2340, %._crit_edge.i2338 ], [ %.0.i.i.i2337, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336 ]
  %i.dll = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dku, i8 %i.dkv, ptr noundef nonnull align 8 dereferenceable(216) %i.dks, i8 noundef signext %i.dlk, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.io)
          to label %bb.adp unwind label %.loopexit2917 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2917:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344, %bb.ado, %.noexc2342
  %lpad.loopexit2919 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

.loopexit.split-lp2918:                           ; preds = %bb.adm
  %lpad.loopexit.split-lp2920 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

bb.adq:                                           ; preds = %.loopexit.split-lp2918, %.loopexit2917
  %lpad.phi2921 = phi { ptr, i32 } [ %lpad.loopexit2919, %.loopexit2917 ], [ %lpad.loopexit.split-lp2920, %.loopexit.split-lp2918 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #26
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !70
  %i.dlm = load ptr, ptr %0, align 8, !tbaa !446
  %i.dln = getelementptr i8, ptr %i.dlm, i64 -24
  %i.dlo = load i64, ptr %i.dln, align 8
  %i.dlp = getelementptr inbounds i8, ptr %0, i64 %i.dlo
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dlp, i64 16
  %i.dlr = load i64, ptr %i.dlq, align 8, !tbaa !659
  %.not.i2345 = icmp eq i64 %i.dlr, 0
  br i1 %.not.i2345, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %bb.adr
  %i.dls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 unwind label %.loopexit ; 0 uses

bb.adt:                                           ; preds = %bb.adr
  %i.dlt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 121)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349: ; preds = %bb.adt, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.adu:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.afb, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dlu = icmp eq i8 %.0806, 79
  br i1 %i.dlu, label %bb.adw, label %bb.aef

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 37, ptr %i.ab, align 1, !tbaa !70
  %i.dlv = load ptr, ptr %0, align 8, !tbaa !446
  %i.dlw = getelementptr i8, ptr %i.dlv, i64 -24
  %i.dlx = load i64, ptr %i.dlw, align 8
  %i.dly = getelementptr inbounds i8, ptr %0, i64 %i.dlx
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dly, i64 16
  %i.dma = load i64, ptr %i.dlz, align 8, !tbaa !659
  %.not.i2350 = icmp eq i64 %i.dma, 0
  br i1 %.not.i2350, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.dmb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %bb.adz unwind label %.loopexit

bb.ady:                                           ; preds = %bb.adw
  %i.dmc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.adz unwind label %.loopexit ; 0 uses

bb.adz:                                           ; preds = %bb.adx, %bb.ady
  %.0.i2351 = phi ptr [ %i.dmb, %bb.adx ], [ %0, %bb.ady ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 79, ptr %i.aa, align 1, !tbaa !70
  %i.dmd = load ptr, ptr %.0.i2351, align 8, !tbaa !446
  %i.dme = getelementptr i8, ptr %i.dmd, i64 -24
  %i.dmf = load i64, ptr %i.dme, align 8
  %i.dmg = getelementptr inbounds i8, ptr %.0.i2351, i64 %i.dmf
  %i.dmh = getelementptr inbounds nuw i8, ptr %i.dmg, i64 16
  %i.dmi = load i64, ptr %i.dmh, align 8, !tbaa !659
  %.not.i2355 = icmp eq i64 %i.dmi, 0
  br i1 %.not.i2355, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.dmj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2351, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %bb.aec unwind label %.loopexit

bb.aeb:                                           ; preds = %bb.adz
  %i.dmk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2351, i8 noundef signext 79)
          to label %bb.aec unwind label %.loopexit ; 0 uses

bb.aec:                                           ; preds = %bb.aea, %bb.aeb
  %.0.i2356 = phi ptr [ %i.dmj, %bb.aea ], [ %.0.i2351, %bb.aeb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dml = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dml, ptr %i.z, align 1, !tbaa !70
  %i.dmm = load ptr, ptr %.0.i2356, align 8, !tbaa !446
  %i.dmn = getelementptr i8, ptr %i.dmm, i64 -24
  %i.dmo = load i64, ptr %i.dmn, align 8
  %i.dmp = getelementptr inbounds i8, ptr %.0.i2356, i64 %i.dmo
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dmp, i64 16
  %i.dmr = load i64, ptr %i.dmq, align 8, !tbaa !659
  %.not.i2360 = icmp eq i64 %i.dmr, 0
  br i1 %.not.i2360, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.dms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2356, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 unwind label %.loopexit ; 0 uses

bb.aee:                                           ; preds = %bb.aec
  %i.dmt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2356, i8 noundef signext %i.dml)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364: ; preds = %bb.aee, %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.aef:                                           ; preds = %bb.adv
  %.sroa.0.0.copyload.i2365 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %.not = icmp eq i16 %.sroa.0.0.copyload.i2365, -32768
  br i1 %.not, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2367

bb.aeg:                                           ; preds = %bb.aef
  %i.dmu = load ptr, ptr %0, align 8, !tbaa !446
  %i.dmv = getelementptr i8, ptr %i.dmu, i64 -24
  %i.dmw = load i64, ptr %i.dmv, align 8
end_hunk_4
begin_hunk_5_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
bb.acl:                                           ; preds = %bb.acj, %bb.ack
  %.0.i2291 = phi ptr [ %i.dho, %bb.acj ], [ %.0.i2286, %bb.ack ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.dhq = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 %i.dhq, ptr %i.af, align 1, !tbaa !70
  %i.dhr = load ptr, ptr %.0.i2291, align 8, !tbaa !446
  %i.dhs = getelementptr i8, ptr %i.dhr, i64 -24
  %i.dht = load i64, ptr %i.dhs, align 8
  %i.dhu = getelementptr inbounds i8, ptr %.0.i2291, i64 %i.dht
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.dhu, i64 16
  %i.dhw = load i64, ptr %i.dhv, align 8, !tbaa !659
  %.not.i2295 = icmp eq i64 %i.dhw, 0
  br i1 %.not.i2295, label %bb.acn, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dhx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2291, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

bb.acn:                                           ; preds = %bb.acl
  %i.dhy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2291, i8 noundef signext %i.dhq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2299: ; preds = %bb.acn, %bb.acm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.aco:                                           ; preds = %bb.ace
  %i.dhz = load i8, ptr %i.gw, align 8, !tbaa !808, !range !86, !noundef !87
  %i.dia = trunc nuw i8 %i.dhz to i1
  br i1 %i.dia, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.dib = load ptr, ptr %0, align 8, !tbaa !446
  %i.dic = getelementptr i8, ptr %i.dib, i64 -24
  %i.did = load i64, ptr %i.dic, align 8
  %i.die = getelementptr inbounds i8, ptr %0, i64 %i.did ; 2 uses
  %i.dif = getelementptr inbounds nuw i8, ptr %i.die, i64 32
  %i.dig = load i32, ptr %i.dif, align 8, !tbaa !677
  %i.dih = or i32 %i.dig, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.die, i32 noundef %i.dih)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301 unwind label %.loopexit

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301: ; preds = %bb.acp, %bb.aco
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kz, i8 0, i64 48, i1 false)
  %.sroa.0.0.copyload.i.i2302 = load i64, ptr %i.iq, align 8, !tbaa !408
  %i.dii = trunc i64 %.sroa.0.0.copyload.i.i2302 to i32
  store i32 %i.dii, ptr %6, align 8, !tbaa !733
  %.sroa.0.0.copyload.i2303 = load i64, ptr %i.ir, align 8, !tbaa !408
  %i.dij = trunc i64 %.sroa.0.0.copyload.i2303 to i32
  store i32 %i.dij, ptr %i.is, align 4, !tbaa !734
  %.sroa.0.0.copyload.i2304 = load i64, ptr %i.ip, align 8, !tbaa !408
  %i.dik = trunc i64 %.sroa.0.0.copyload.i2304 to i32
  store i32 %i.dik, ptr %i.it, align 8, !tbaa !735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fr, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE.f.23, i64 3, i1 false)
  %i.dil = icmp eq i8 %.0806, 69
  br i1 %i.dil, label %bb.acq, label %bb.acr

bb.acq:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301
  store i8 69, ptr %i.iu, align 1, !tbaa !70
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301
  %.0830 = phi ptr [ %i.iv, %bb.acq ], [ %i.iu, %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2301 ] ; 2 uses
  %i.dim = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.dim, ptr %.0830, align 1, !tbaa !70
  %i.din = load ptr, ptr %0, align 8, !tbaa !446
  %i.dio = getelementptr i8, ptr %i.din, i64 -24
  %i.dip = load i64, ptr %i.dio, align 8
  %i.diq = getelementptr inbounds i8, ptr %0, i64 %i.dip ; 6 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %i.diq, i64 232
  %i.dis = load ptr, ptr %i.dir, align 8, !tbaa !727 ; 2 uses
  %.not.i2305 = icmp eq ptr %i.dis, null
  %i.dit = zext i1 %.not.i2305 to i8
  %i.diu = getelementptr inbounds nuw i8, ptr %i.diq, i64 225 ; 2 uses
  %i.div = load i8, ptr %i.diu, align 1, !tbaa !688, !range !86, !noundef !87
  %i.diw = trunc nuw i8 %i.div to i1
  br i1 %i.diw, label %._crit_edge.i2311, label %bb.acs

._crit_edge.i2311:                                ; preds = %bb.acr
  %.phi.trans.insert.i2312 = getelementptr inbounds nuw i8, ptr %i.diq, i64 224
  %.pre.i2313 = load i8, ptr %.phi.trans.insert.i2312, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317

bb.acs:                                           ; preds = %bb.acr
  %i.dix = getelementptr inbounds nuw i8, ptr %i.diq, i64 240
  %i.diy = load ptr, ptr %i.dix, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i2306 = icmp eq ptr %i.diy, null
  br i1 %.not.i.i.i2306, label %bb.act, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307

bb.act:                                           ; preds = %bb.acs
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc2314 unwind label %.loopexit.split-lp2923

.noexc2314:                                       ; preds = %bb.act
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307: ; preds = %bb.acs
  %i.diz = getelementptr inbounds nuw i8, ptr %i.diy, i64 56
  %i.dja = load i8, ptr %i.diz, align 8, !tbaa !695
  %.not.i1.i.i2308 = icmp eq i8 %i.dja, 0
  br i1 %.not.i1.i.i2308, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307
  %i.djb = getelementptr inbounds nuw i8, ptr %i.diy, i64 89
  %i.djc = load i8, ptr %i.djb, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309

bb.acv:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2307
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.diy)
          to label %.noexc2315 unwind label %.loopexit2922

.noexc2315:                                       ; preds = %bb.acv
  %i.djd = load ptr, ptr %i.diy, align 8, !tbaa !446
  %i.dje = getelementptr inbounds nuw i8, ptr %i.djd, i64 48
  %i.djf = load ptr, ptr %i.dje, align 8
  %i.djg = invoke noundef signext i8 %i.djf(ptr noundef nonnull align 8 dereferenceable(570) %i.diy, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309 unwind label %.loopexit2922, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309: ; preds = %.noexc2315, %bb.acu
  %.0.i.i.i2310 = phi i8 [ %i.djc, %bb.acu ], [ %i.djg, %.noexc2315 ] ; 2 uses
  %i.djh = getelementptr inbounds nuw i8, ptr %i.diq, i64 224
  store i8 %.0.i.i.i2310, ptr %i.djh, align 8, !tbaa !700
  store i8 1, ptr %i.diu, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309, %._crit_edge.i2311
  %i.dji = phi i8 [ %.pre.i2313, %._crit_edge.i2311 ], [ %.0.i.i.i2310, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2309 ]
  %i.djj = getelementptr inbounds nuw i8, ptr %.0830, i64 1
  %i.djk = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dis, i8 %i.dit, ptr noundef nonnull align 8 dereferenceable(216) %i.diq, i8 noundef signext %i.dji, ptr noundef nonnull %6, ptr noundef nonnull %i.fr, ptr noundef nonnull %i.djj)
          to label %bb.acw unwind label %.loopexit2922 ; 0 uses

bb.acw:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2922:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2317, %bb.acv, %.noexc2315
  %lpad.loopexit2924 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

.loopexit.split-lp2923:                           ; preds = %bb.act
  %lpad.loopexit.split-lp2925 = landingpad { ptr, i32 }
          cleanup
  br label %bb.acx

bb.acx:                                           ; preds = %.loopexit.split-lp2923, %.loopexit2922
  %lpad.phi2926 = phi { ptr, i32 } [ %lpad.loopexit2924, %.loopexit2922 ], [ %lpad.loopexit.split-lp2925, %.loopexit.split-lp2923 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr) #26
  br label %bb.aix

bb.acy:                                           ; preds = %bb.acd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 88, ptr %i.ae, align 1, !tbaa !70
  %i.djl = load ptr, ptr %0, align 8, !tbaa !446
  %i.djm = getelementptr i8, ptr %i.djl, i64 -24
  %i.djn = load i64, ptr %i.djm, align 8
  %i.djo = getelementptr inbounds i8, ptr %0, i64 %i.djn
  %i.djp = getelementptr inbounds nuw i8, ptr %i.djo, i64 16
  %i.djq = load i64, ptr %i.djp, align 8, !tbaa !659
  %.not.i2318 = icmp eq i64 %i.djq, 0
  br i1 %.not.i2318, label %bb.ada, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.djr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ae, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 unwind label %.loopexit ; 0 uses

bb.ada:                                           ; preds = %bb.acy
  %i.djs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 88)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2322: ; preds = %bb.ada, %bb.acz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.adb:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.adr, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  %.sroa.0.0.copyload.i2323 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %.not2806 = icmp eq i16 %.sroa.0.0.copyload.i2323, -32768
  br i1 %.not2806, label %bb.add, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325

bb.add:                                           ; preds = %bb.adc
  %i.djt = load ptr, ptr %0, align 8, !tbaa !446
  %i.dju = getelementptr i8, ptr %i.djt, i64 -24
  %i.djv = load i64, ptr %i.dju, align 8
  %i.djw = getelementptr inbounds i8, ptr %0, i64 %i.djv ; 2 uses
  %i.djx = getelementptr inbounds nuw i8, ptr %i.djw, i64 32
  %i.djy = load i32, ptr %i.djx, align 8, !tbaa !677
  %i.djz = or i32 %i.djy, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.djw, i32 noundef %i.djz)
          to label %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge unwind label %.loopexit

._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge: ; preds = %bb.add
  %.sroa.0.0.copyload.i2326.pre = load i16, ptr %2, align 8, !tbaa !634
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325

_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325: ; preds = %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge, %bb.adc
  %.sroa.0.0.copyload.i2326 = phi i16 [ %.sroa.0.0.copyload.i2326.pre, %._ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325_crit_edge ], [ %.sroa.0.0.copyload.i2323, %bb.adc ] ; 2 uses
  %i.dka = icmp eq i8 %.0806, 0
  br i1 %i.dka, label %bb.ade, label %bb.adk

bb.ade:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325
  %.lhs.trunc2804 = call i16 @llvm.abs.i16(i16 %.sroa.0.0.copyload.i2326, i1 false)
  %i.dkb = urem i16 %.lhs.trunc2804, 100          ; 2 uses
  %.zext2805 = zext nneg i16 %i.dkb to i32
  %i.dkc = icmp samesign ult i16 %i.dkb, 10
  br i1 %i.dkc, label %bb.adf, label %bb.adj

bb.adf:                                           ; preds = %bb.ade
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i8 48, ptr %i.ad, align 1, !tbaa !70
  %i.dkd = load ptr, ptr %0, align 8, !tbaa !446
  %i.dke = getelementptr i8, ptr %i.dkd, i64 -24
  %i.dkf = load i64, ptr %i.dke, align 8
  %i.dkg = getelementptr inbounds i8, ptr %0, i64 %i.dkf
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.dkg, i64 16
  %i.dki = load i64, ptr %i.dkh, align 8, !tbaa !659
  %.not.i2327 = icmp eq i64 %i.dki, 0
  br i1 %.not.i2327, label %bb.adh, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.dkj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ad, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331 unwind label %bb.adi ; 0 uses

bb.adh:                                           ; preds = %bb.adf
  %i.dkk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331 unwind label %bb.adi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331: ; preds = %bb.adh, %bb.adg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.adj

bb.adi:                                           ; preds = %bb.adh, %bb.adg, %bb.adj
  %i.dkl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aix

bb.adj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2331, %bb.ade
  %i.dkm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.zext2805)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507 unwind label %bb.adi ; 0 uses

bb.adk:                                           ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2325
  %20 = sext i16 %.sroa.0.0.copyload.i2326 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs) #26
  store i8 37, ptr %i.fs, align 1, !tbaa !70
  store i8 %.0806, ptr %i.im, align 1, !tbaa !70
  %i.dkn = load i8, ptr %.0731, align 1, !tbaa !70
  store i8 %i.dkn, ptr %i.in, align 1, !tbaa !70
  %i.dko = add nsw i32 %20, -1900
  store i32 %i.dko, ptr %i.ij, align 4, !tbaa !737
  %i.dkp = load ptr, ptr %0, align 8, !tbaa !446
  %i.dkq = getelementptr i8, ptr %i.dkp, i64 -24
  %i.dkr = load i64, ptr %i.dkq, align 8
  %i.dks = getelementptr inbounds i8, ptr %0, i64 %i.dkr ; 6 uses
  %i.dkt = getelementptr inbounds nuw i8, ptr %i.dks, i64 232
  %i.dku = load ptr, ptr %i.dkt, align 8, !tbaa !727 ; 2 uses
  %.not.i2332 = icmp eq ptr %i.dku, null
  %i.dkv = zext i1 %.not.i2332 to i8
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dks, i64 225 ; 2 uses
  %i.dkx = load i8, ptr %i.dkw, align 1, !tbaa !688, !range !86, !noundef !87
  %i.dky = trunc nuw i8 %i.dkx to i1
  br i1 %i.dky, label %._crit_edge.i2338, label %bb.adl

._crit_edge.i2338:                                ; preds = %bb.adk
  %.phi.trans.insert.i2339 = getelementptr inbounds nuw i8, ptr %i.dks, i64 224
  %.pre.i2340 = load i8, ptr %.phi.trans.insert.i2339, align 8, !tbaa !700
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344

bb.adl:                                           ; preds = %bb.adk
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dks, i64 240
  %i.dla = load ptr, ptr %i.dkz, align 8, !tbaa !694 ; 6 uses
  %.not.i.i.i2333 = icmp eq ptr %i.dla, null
  br i1 %.not.i.i.i2333, label %bb.adm, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334

bb.adm:                                           ; preds = %bb.adl
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc2341 unwind label %.loopexit.split-lp2918

.noexc2341:                                       ; preds = %bb.adm
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334: ; preds = %bb.adl
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.dla, i64 56
  %i.dlc = load i8, ptr %i.dlb, align 8, !tbaa !695
  %.not.i1.i.i2335 = icmp eq i8 %i.dlc, 0
  br i1 %.not.i1.i.i2335, label %bb.ado, label %bb.adn

bb.adn:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dla, i64 89
  %i.dle = load i8, ptr %i.dld, align 1, !tbaa !70
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336

bb.ado:                                           ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2334
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dla)
          to label %.noexc2342 unwind label %.loopexit2917

.noexc2342:                                       ; preds = %bb.ado
  %i.dlf = load ptr, ptr %i.dla, align 8, !tbaa !446
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dlf, i64 48
  %i.dlh = load ptr, ptr %i.dlg, align 8
  %i.dli = invoke noundef signext i8 %i.dlh(ptr noundef nonnull align 8 dereferenceable(570) %i.dla, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336 unwind label %.loopexit2917, !inline_history !728

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336: ; preds = %.noexc2342, %bb.adn
  %.0.i.i.i2337 = phi i8 [ %i.dle, %bb.adn ], [ %i.dli, %.noexc2342 ] ; 2 uses
  %i.dlj = getelementptr inbounds nuw i8, ptr %i.dks, i64 224
  store i8 %.0.i.i.i2337, ptr %i.dlj, align 8, !tbaa !700
  store i8 1, ptr %i.dkw, align 1, !tbaa !688
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336, %._crit_edge.i2338
  %i.dlk = phi i8 [ %.pre.i2340, %._crit_edge.i2338 ], [ %.0.i.i.i2337, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i2336 ]
  %i.dll = invoke { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12) %i.id, ptr %i.dku, i8 %i.dkv, ptr noundef nonnull align 8 dereferenceable(216) %i.dks, i8 noundef signext %i.dlk, ptr noundef nonnull %6, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.io)
          to label %bb.adp unwind label %.loopexit2917 ; 0 uses

bb.adp:                                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #26
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

.loopexit2917:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit2344, %bb.ado, %.noexc2342
  %lpad.loopexit2919 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

.loopexit.split-lp2918:                           ; preds = %bb.adm
  %lpad.loopexit.split-lp2920 = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

bb.adq:                                           ; preds = %.loopexit.split-lp2918, %.loopexit2917
  %lpad.phi2921 = phi { ptr, i32 } [ %lpad.loopexit2919, %.loopexit2917 ], [ %lpad.loopexit.split-lp2920, %.loopexit.split-lp2918 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs) #26
  br label %bb.aix

bb.adr:                                           ; preds = %bb.adb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i8 121, ptr %i.ac, align 1, !tbaa !70
  %i.dlm = load ptr, ptr %0, align 8, !tbaa !446
  %i.dln = getelementptr i8, ptr %i.dlm, i64 -24
  %i.dlo = load i64, ptr %i.dln, align 8
  %i.dlp = getelementptr inbounds i8, ptr %0, i64 %i.dlo
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dlp, i64 16
  %i.dlr = load i64, ptr %i.dlq, align 8, !tbaa !659
  %.not.i2345 = icmp eq i64 %i.dlr, 0
  br i1 %.not.i2345, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %bb.adr
  %i.dls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ac, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 unwind label %.loopexit ; 0 uses

bb.adt:                                           ; preds = %bb.adr
  %i.dlt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 121)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2349: ; preds = %bb.adt, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.adu:                                           ; preds = %bb.h
  br i1 %.not951, label %bb.afb, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.dlu = icmp eq i8 %.0806, 79
  br i1 %i.dlu, label %bb.adw, label %bb.aef

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 37, ptr %i.ab, align 1, !tbaa !70
  %i.dlv = load ptr, ptr %0, align 8, !tbaa !446
  %i.dlw = getelementptr i8, ptr %i.dlv, i64 -24
  %i.dlx = load i64, ptr %i.dlw, align 8
  %i.dly = getelementptr inbounds i8, ptr %0, i64 %i.dlx
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dly, i64 16
  %i.dma = load i64, ptr %i.dlz, align 8, !tbaa !659
  %.not.i2350 = icmp eq i64 %i.dma, 0
  br i1 %.not.i2350, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.dmb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ab, i64 noundef 1)
          to label %bb.adz unwind label %.loopexit

bb.ady:                                           ; preds = %bb.adw
  %i.dmc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 37)
          to label %bb.adz unwind label %.loopexit ; 0 uses

bb.adz:                                           ; preds = %bb.adx, %bb.ady
  %.0.i2351 = phi ptr [ %i.dmb, %bb.adx ], [ %0, %bb.ady ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 79, ptr %i.aa, align 1, !tbaa !70
  %i.dmd = load ptr, ptr %.0.i2351, align 8, !tbaa !446
  %i.dme = getelementptr i8, ptr %i.dmd, i64 -24
  %i.dmf = load i64, ptr %i.dme, align 8
  %i.dmg = getelementptr inbounds i8, ptr %.0.i2351, i64 %i.dmf
  %i.dmh = getelementptr inbounds nuw i8, ptr %i.dmg, i64 16
  %i.dmi = load i64, ptr %i.dmh, align 8, !tbaa !659
  %.not.i2355 = icmp eq i64 %i.dmi, 0
  br i1 %.not.i2355, label %bb.aeb, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.dmj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2351, ptr noundef nonnull %i.aa, i64 noundef 1)
          to label %bb.aec unwind label %.loopexit

bb.aeb:                                           ; preds = %bb.adz
  %i.dmk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2351, i8 noundef signext 79)
          to label %bb.aec unwind label %.loopexit ; 0 uses

bb.aec:                                           ; preds = %bb.aea, %bb.aeb
  %.0.i2356 = phi ptr [ %i.dmj, %bb.aea ], [ %.0.i2351, %bb.aeb ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.dml = load i8, ptr %.0731, align 1, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 %i.dml, ptr %i.z, align 1, !tbaa !70
  %i.dmm = load ptr, ptr %.0.i2356, align 8, !tbaa !446
  %i.dmn = getelementptr i8, ptr %i.dmm, i64 -24
  %i.dmo = load i64, ptr %i.dmn, align 8
  %i.dmp = getelementptr inbounds i8, ptr %.0.i2356, i64 %i.dmo
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dmp, i64 16
  %i.dmr = load i64, ptr %i.dmq, align 8, !tbaa !659
  %.not.i2360 = icmp eq i64 %i.dmr, 0
  br i1 %.not.i2360, label %bb.aee, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  %i.dms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2356, ptr noundef nonnull %i.z, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 unwind label %.loopexit ; 0 uses

bb.aee:                                           ; preds = %bb.aec
  %i.dmt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.0.i2356, i8 noundef signext %i.dml)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit2364: ; preds = %bb.aee, %bb.aed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit1507

bb.aef:                                           ; preds = %bb.adv
  %.sroa.0.0.copyload.i2365 = load i16, ptr %2, align 8, !tbaa !634 ; 2 uses
  %.not = icmp eq i16 %.sroa.0.0.copyload.i2365, -32768
  br i1 %.not, label %bb.aeg, label %_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate.exit2367

bb.aeg:                                           ; preds = %bb.aef
  %i.dmu = load ptr, ptr %0, align 8, !tbaa !446
  %i.dmv = getelementptr i8, ptr %i.dmu, i64 -24
  %i.dmw = load i64, ptr %i.dmv, align 8
end_hunk_5
begin_hunk_6_@_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation:bb.a

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_EUlRKNS_5ArrayElPSoE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS1_6StatusEE4typeERKS7_EUlRKNS1_5ArrayElPSoE_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare void @_ZNK5arrow15Decimal256Array11FormatValueB5cxx11El(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(52), i64 noundef) local_unnamed_addr #4

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !235   ; 4 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !408  ; 4 uses
  %.val5 = load ptr, ptr %3, align 8, !tbaa !52   ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !850
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %.val4 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.j = icmp sgt i32 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !386
  %.pre16.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = sext i32 %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.n, ptr %i.a, align 8, !tbaa !408
  store ptr %.val5, ptr %i.b, align 8, !tbaa !52
  %.not.i.i.peel.i.i.i = icmp eq ptr %.pre16.i.i.i, null
  br i1 %.not.i.i.peel.i.i.i, label %.loopexit.i.i.i, label %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i

_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i: ; preds = %bb.b
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !62
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(32) %.pre.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !850
  %i.q = getelementptr [4 x i8], ptr %i.p, i64 %.val4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = load i32, ptr %i.q, align 4, !tbaa !3
  %i.u = sub nsw i32 %i.s, %i.t
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %.peel.next.i.i.i, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

.peel.next.i.i.i:                                 ; preds = %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i
  %.014.i.i.i = phi i32 [ %i.ac, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i ], [ 1, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i ] ; 2 uses
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.30, i64 noundef 2) ; 0 uses
  %.pre18.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !850
  %.phi.trans.insert.i.i.i = getelementptr inbounds [4 x i8], ptr %.pre18.i.i.i, i64 %.val4
  %.pre19.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !3
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !386
  %i.y = add nsw i32 %.pre19.i.i.i, %.014.i.i.i
  %i.z = sext i32 %i.y to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.z, ptr %i.a, align 8, !tbaa !408
  store ptr %.val5, ptr %i.b, align 8, !tbaa !52
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !57
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.peel.next.i.i.i, %bb.b
  call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i: ; preds = %.peel.next.i.i.i
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !62
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = add nuw nsw i32 %.014.i.i.i, 1          ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !850
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %.val4 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ai = sub nsw i32 %i.ag, %i.ah
  %i.aj = icmp slt i32 %i.ac, %i.ai
  br i1 %i.aj, label %.peel.next.i.i.i, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit, !llvm.loop !855

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i, %bb.a, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.31, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_E8ListImpl, ptr %0, align 8, !tbaa !777
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !235
  store ptr %.val, ptr %0, align 8, !tbaa !235
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 3, label %bb.k
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val6, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.val6, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !237
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %.body.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %.body.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #28
  unreachable

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29
  resume { ptr, i32 } %i.g

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i: ; preds = %bb.g, %bb.e
  store ptr %i.a, ptr %0, align 8, !tbaa !235
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.k:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !235 ; 5 uses
  %i.l = icmp eq ptr %.val7.i, null
  br i1 %i.l, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i: ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i, %bb.k, %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !253   ; 4 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !408  ; 4 uses
  %.val5 = load ptr, ptr %3, align 8, !tbaa !52   ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !857
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %.val4 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !408
  %i.i = load i64, ptr %i.f, align 8, !tbaa !408  ; 2 uses
  %i.j = icmp sgt i64 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !386
  %.pre18.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.a, align 8, !tbaa !408
  store ptr %.val5, ptr %i.b, align 8, !tbaa !52
  %.not.i.i.peel.i.i.i = icmp eq ptr %.pre18.i.i.i, null
  br i1 %.not.i.i.peel.i.i.i, label %.loopexit.i.i.i, label %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i

_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i: ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(32) %.pre.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !857
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %.val4 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !408
  %i.s = load i64, ptr %i.p, align 8, !tbaa !408
  %i.t = sub nsw i64 %i.r, %i.s
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %.peel.next.i.i.i, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

.peel.next.i.i.i:                                 ; preds = %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i ], [ 1, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i ] ; 2 uses
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.30, i64 noundef 2) ; 0 uses
  %.pre20.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !857
  %.phi.trans.insert.i.i.i = getelementptr inbounds [8 x i8], ptr %.pre20.i.i.i, i64 %.val4
  %.pre21.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !408
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !386
  %i.x = add nsw i64 %.pre21.i.i.i, %indvars.iv.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.x, ptr %i.a, align 8, !tbaa !408
  store ptr %.val5, ptr %i.b, align 8, !tbaa !52
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !57
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.peel.next.i.i.i, %bb.b
  call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i: ; preds = %.peel.next.i.i.i
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !62
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !857
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %.val4 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !408
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !408
  %i.af = sub nsw i64 %i.ad, %i.ae
  %i.ag = icmp sgt i64 %i.af, %indvars.iv.next.i.i.i
  br i1 %i.ag, label %.peel.next.i.i.i, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit, !llvm.loop !861

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i, %bb.a, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.31, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_E8ListImpl, ptr %0, align 8, !tbaa !777
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !253
  store ptr %.val, ptr %0, align 8, !tbaa !253
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 3, label %bb.k
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val6, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.val6, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !237
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %.body.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %.body.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #28
  unreachable

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29
  resume { ptr, i32 } %i.g

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i: ; preds = %bb.g, %bb.e
  store ptr %i.a, ptr %0, align 8, !tbaa !253
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.k:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !253 ; 5 uses
  %i.l = icmp eq ptr %.val7.i, null
  br i1 %i.l, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i: ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i, %bb.k, %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12ListViewTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(41) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(41) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12ListViewTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12ListViewTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12ListViewTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.d ; 0 uses
end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation:bb.a
  unreachable

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29
  resume { ptr, i32 } %i.g

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i: ; preds = %bb.g, %bb.e
  store ptr %i.a, ptr %0, align 8, !tbaa !301
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.k:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !301 ; 5 uses
  %i.l = icmp eq ptr %.val7.i, null
  br i1 %i.l, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i: ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i, %bb.k, %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow18FixedSizeListArray6valuesEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSIZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplEENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSF_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca { i64, i64 }, align 8     ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 3 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !868
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !868
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !314
  store ptr %i.g, ptr %i.e, align 8, !tbaa !314
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %2, align 8, !tbaa !869
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !237
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !237  ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.h, align 8, !tbaa !237
  store <2 x ptr> %i.j, ptr %i.a, align 8, !tbaa !237
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_, ptr %i.i, align 8, !tbaa !237
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_10StructTypeEEN10StructImplD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !311    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !329

_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !311
  br label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !314
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29
  br label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit

_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !311    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !329

_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !311
  br label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !314
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29
  br label %_ZNSt12_Vector_baseISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEEEvT_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8functionIFvRKN5arrow5ArrayElPSoEEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %.05.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8functionIFvRKN5arrow5ArrayElPSoEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !329

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8functionIFvRKN5arrow5ArrayElPSoEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !869
  %.val4 = load i64, ptr %2, align 8, !tbaa !408  ; 5 uses
  %.val5 = load ptr, ptr %3, align 8, !tbaa !52   ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !409  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !871
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !872
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplJRKNS0_5ArrayElPSoEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.ac, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ac ] ; 4 uses
  %.02338.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.ac ] ; 3 uses
  %.not.i.i.i = icmp eq i32 %.02338.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.30, i64 noundef 2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.s = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  call void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.30") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.s)
  %i.t = load ptr, ptr %4, align 8, !tbaa !386    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !873  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !409  ; 6 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !429
  %i.aa = add nsw i64 %i.z, %.val4                ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !70
  %i.ae = trunc i64 %i.aa to i8
  %i.af = and i8 %i.ae, 7
  %i.ag = lshr i8 %i.ad, %i.af
  %i.ah = trunc i8 %i.ag to i1
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !225
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !33
  switch i32 %i.ak, label %bb.j [
    i32 27, label %bb.g
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.al = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.x, i64 noundef %.val4)
          to label %.noexc.i.i.i unwind label %bb.r

.noexc.i.i.i:                                     ; preds = %bb.g
  %i.am = xor i1 %i.al, true
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.an = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.x, i64 noundef %.val4)
          to label %.noexc26.i.i.i unwind label %bb.r

.noexc26.i.i.i:                                   ; preds = %bb.h
  %i.ao = xor i1 %i.an, true
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ap = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.x, i64 noundef %.val4)
          to label %.noexc27.i.i.i unwind label %bb.r

.noexc27.i.i.i:                                   ; preds = %bb.i
  %i.aq = xor i1 %i.ap, true
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.as = load atomic i64, ptr %i.ar seq_cst, align 8
  %i.at = load ptr, ptr %i.w, align 8, !tbaa !409
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !410
  %i.aw = icmp ne i64 %i.as, %i.av
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc27.i.i.i, %.noexc26.i.i.i, %.noexc.i.i.i, %bb.e
  %.0.i.i.i.i.i = phi i1 [ %i.ah, %bb.e ], [ %i.am, %.noexc.i.i.i ], [ %i.ao, %.noexc26.i.i.i ], [ %i.aq, %.noexc27.i.i.i ], [ %i.aw, %bb.j ]
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !378 ; 8 uses
  %.not.i.i28.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i28.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ay, align 8, !tbaa !443
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !445
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !446
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #26, !inline_history !874
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !446
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #26, !inline_history !874
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.o ], [ %i.bl, %bb.p ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.q, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !376

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.0.i.i.i.i.i, label %bb.s, label %bb.ac

bb.r:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_14DictionaryTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_14DictionaryTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_14DictionaryTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17RunEndEncodedTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(41) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(41) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17RunEndEncodedTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17RunEndEncodedTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17RunEndEncodedTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17RunEndEncodedTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17RunEndEncodedTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17RunEndEncodedTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17RunEndEncodedTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17RunEndEncodedTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_13ExtensionTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(41) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(41) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_13ExtensionTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_13ExtensionTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_13ExtensionTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_13ExtensionTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_13ExtensionTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_13ExtensionTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_13ExtensionTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcRKNS_13ExtensionTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(21) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !893
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !893
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618, !noalias !893, !nonnull !87, !align !546
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(21) %2) #26, !noalias !893
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(21) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !893 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !893
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !893
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !70
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA21_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !70
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

declare void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !177  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !177  ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !102    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 3 uses
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %i.l = icmp ugt i64 %i.e, %i.k                  ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !102   ; 4 uses
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %.pre, %i.m                  ; 2 uses
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12: ; preds = %bb.c, %bb.d
  %i.p = load i64, ptr %i.m, align 8
  %i.q = select i1 %i.n, i64 15, i64 %i.p
  %.not = icmp ugt i64 %i.e, %i.q
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !176
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !102  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !177  ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8, !tbaa !102
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !70
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !177
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !177
  store ptr %i.u, ptr %i.r, align 8, !tbaa !102
  store i64 0, ptr %i.ab, align 8, !tbaa !177
  store i8 0, ptr %i.u, align 8, !tbaa !70
  br label %bb.o

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #30
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  br i1 %i.h, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  br i1 %i.l, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %.pre, align 1, !tbaa !70
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.e, ptr %i.a, align 8, !tbaa !177
  %i.aj = load ptr, ptr %1, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.e
  store i8 0, ptr %i.ak, align 1, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !176
  %i.am = load ptr, ptr %1, align 8, !tbaa !102   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !177 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.am, ptr %0, align 8, !tbaa !102
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !70
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !70
  %.pre15 = load i64, ptr %i.a, align 8, !tbaa !177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = phi i64 [ %i.ao, %bb.n ], [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !177
  store ptr %i.g, ptr %1, align 8, !tbaa !102
  store i64 0, ptr %i.a, align 8, !tbaa !177
  store i8 0, ptr %i.g, align 8, !tbaa !70
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

declare void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !378    ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !443
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !445
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !446
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26, !inline_history !896
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26, !inline_history !896
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !376

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !446
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !897
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !897
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !378  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !443
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !445
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !898
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !898
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !376

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !70
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #29
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

declare void @_ZN5arrow11StructArray4MakeERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS4_EERKS1_IS2_INS_5FieldEESaISA_EES2_INS_6BufferEEll(ptr dead_on_unwind writable sret(%"class.arrow::Result.40") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !443
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !445
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !454
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !446
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !454
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !376

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !488    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !492  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !378  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !443
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !445
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !446
end_hunk_8
begin_hunk_9_@_ZN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_11StructArrayEE6EqualsEll:bb.a
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.l:                                             ; preds = %bb.i
  %i.bc = tail call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 noundef %2)
  %i.bd = xor i1 %i.bc, true
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.m:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bf = load atomic i64, ptr %i.be seq_cst, align 8
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !409
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !410
  %i.bj = icmp ne i64 %i.bf, %i.bi
  br label %_ZNK5arrow5Array7IsValidEl.exit15

_ZNK5arrow5Array7IsValidEl.exit15:                ; preds = %bb.h, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i14 = phi i1 [ %i.au, %bb.h ], [ %i.az, %bb.j ], [ %i.bb, %bb.k ], [ %i.bd, %bb.l ], [ %i.bj, %bb.m ] ; 2 uses
  %or.cond = and i1 %.0.i, %.0.i14
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit15
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1219, !nonnull !87, !align !546
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !1222, !nonnull !87, !align !546
  %i.bm = add nsw i64 %1, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 16777472, ptr %i.bn, align 8, !alias.scope !1223
  store double 1.000000e-05, ptr %3, align 8, !tbaa !1174, !alias.scope !1223
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.bo, align 8, !tbaa !1176, !alias.scope !1223
  %i.bp = call noundef zeroext i1 @_ZNK5arrow5Array11RangeEqualsElllRKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef %1, i64 noundef %i.bm, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.p

bb.o:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit15
  %i.bq = xor i1 %.0.i, %.0.i14
  %i.br = xor i1 %i.bq, true
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i1 [ %i.bp, %bb.n ], [ %i.br, %bb.o ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_16SparseUnionArrayEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_16SparseUnionArrayEE6EqualsEll(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::EqualOptions", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1226, !nonnull !87, !align !546 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !873  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !409  ; 6 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !429
  %i.i = add nsw i64 %i.h, %1                     ; 2 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !70
  %i.m = trunc i64 %i.i to i8
  %i.n = and i8 %i.m, 7
  %i.o = lshr i8 %i.l, %i.n
  %i.p = trunc i8 %i.o to i1
  br label %_ZNK5arrow5Array7IsValidEl.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !225
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  switch i32 %i.s, label %bb.g [
    i32 27, label %bb.d
    i32 28, label %bb.e
    i32 38, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 noundef %1)
  %i.u = xor i1 %i.t, true
  br label %_ZNK5arrow5Array7IsValidEl.exit

bb.e:                                             ; preds = %bb.c
  %i.v = tail call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 noundef %1)
  %i.w = xor i1 %i.v, true
  br label %_ZNK5arrow5Array7IsValidEl.exit

bb.f:                                             ; preds = %bb.c
  %i.x = tail call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 noundef %1)
  %i.y = xor i1 %i.x, true
  br label %_ZNK5arrow5Array7IsValidEl.exit

bb.g:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !409
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !410
  %i.ae = icmp ne i64 %i.aa, %i.ad
  br label %_ZNK5arrow5Array7IsValidEl.exit

_ZNK5arrow5Array7IsValidEl.exit:                  ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i1 [ %i.p, %bb.b ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.y, %bb.f ], [ %i.ae, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1229, !nonnull !87, !align !546 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !873 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !409 ; 6 uses
  br i1 %.not.i13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !429
  %i.an = add nsw i64 %i.am, %2                   ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !70
  %i.ar = trunc i64 %i.an to i8
  %i.as = and i8 %i.ar, 7
  %i.at = lshr i8 %i.aq, %i.as
  %i.au = trunc i8 %i.at to i1
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.i:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !225
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !33
  switch i32 %i.ax, label %bb.m [
    i32 27, label %bb.j
    i32 28, label %bb.k
    i32 38, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 noundef %2)
  %i.az = xor i1 %i.ay, true
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.k:                                             ; preds = %bb.i
  %i.ba = tail call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 noundef %2)
  %i.bb = xor i1 %i.ba, true
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.l:                                             ; preds = %bb.i
  %i.bc = tail call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 noundef %2)
  %i.bd = xor i1 %i.bc, true
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.m:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bf = load atomic i64, ptr %i.be seq_cst, align 8
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !409
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !410
  %i.bj = icmp ne i64 %i.bf, %i.bi
  br label %_ZNK5arrow5Array7IsValidEl.exit15

_ZNK5arrow5Array7IsValidEl.exit15:                ; preds = %bb.h, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i14 = phi i1 [ %i.au, %bb.h ], [ %i.az, %bb.j ], [ %i.bb, %bb.k ], [ %i.bd, %bb.l ], [ %i.bj, %bb.m ] ; 2 uses
  %or.cond = and i1 %.0.i, %.0.i14
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit15
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1226, !nonnull !87, !align !546
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !1229, !nonnull !87, !align !546
  %i.bm = add nsw i64 %1, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 16777472, ptr %i.bn, align 8, !alias.scope !1230
  store double 1.000000e-05, ptr %3, align 8, !tbaa !1174, !alias.scope !1230
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.bo, align 8, !tbaa !1176, !alias.scope !1230
  %i.bp = call noundef zeroext i1 @_ZNK5arrow5Array11RangeEqualsElllRKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef %1, i64 noundef %i.bm, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.p

bb.o:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit15
  %i.bq = xor i1 %.0.i, %.0.i14
  %i.br = xor i1 %i.bq, true
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i1 [ %i.bp, %bb.n ], [ %i.br, %bb.o ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN5arrow12_GLOBAL__N_115ValueComparatorD2Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #19 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_15DenseUnionArrayEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_122DefaultValueComparatorINS_15DenseUnionArrayEE6EqualsEll(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::EqualOptions", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1233, !nonnull !87, !align !546 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !873  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !409  ; 6 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !429
  %i.i = add nsw i64 %i.h, %1                     ; 2 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !70
  %i.m = trunc i64 %i.i to i8
  %i.n = and i8 %i.m, 7
  %i.o = lshr i8 %i.l, %i.n
  %i.p = trunc i8 %i.o to i1
  br label %_ZNK5arrow5Array7IsValidEl.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !225
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !33
  switch i32 %i.s, label %bb.g [
    i32 27, label %bb.d
    i32 28, label %bb.e
    i32 38, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 noundef %1)
  %i.u = xor i1 %i.t, true
  br label %_ZNK5arrow5Array7IsValidEl.exit

bb.e:                                             ; preds = %bb.c
  %i.v = tail call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 noundef %1)
  %i.w = xor i1 %i.v, true
  br label %_ZNK5arrow5Array7IsValidEl.exit

bb.f:                                             ; preds = %bb.c
  %i.x = tail call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 noundef %1)
  %i.y = xor i1 %i.x, true
  br label %_ZNK5arrow5Array7IsValidEl.exit

bb.g:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !409
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !410
  %i.ae = icmp ne i64 %i.aa, %i.ad
  br label %_ZNK5arrow5Array7IsValidEl.exit

_ZNK5arrow5Array7IsValidEl.exit:                  ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i1 [ %i.p, %bb.b ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.y, %bb.f ], [ %i.ae, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1236, !nonnull !87, !align !546 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !873 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !409 ; 6 uses
  br i1 %.not.i13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !429
  %i.an = add nsw i64 %i.am, %2                   ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !70
  %i.ar = trunc i64 %i.an to i8
  %i.as = and i8 %i.ar, 7
  %i.at = lshr i8 %i.aq, %i.as
  %i.au = trunc i8 %i.at to i1
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.i:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !225
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !33
  switch i32 %i.ax, label %bb.m [
    i32 27, label %bb.j
    i32 28, label %bb.k
    i32 38, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 noundef %2)
  %i.az = xor i1 %i.ay, true
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.k:                                             ; preds = %bb.i
  %i.ba = tail call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 noundef %2)
  %i.bb = xor i1 %i.ba, true
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.l:                                             ; preds = %bb.i
  %i.bc = tail call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 noundef %2)
  %i.bd = xor i1 %i.bc, true
  br label %_ZNK5arrow5Array7IsValidEl.exit15

bb.m:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bf = load atomic i64, ptr %i.be seq_cst, align 8
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !409
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !410
  %i.bj = icmp ne i64 %i.bf, %i.bi
  br label %_ZNK5arrow5Array7IsValidEl.exit15

_ZNK5arrow5Array7IsValidEl.exit15:                ; preds = %bb.h, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i14 = phi i1 [ %i.au, %bb.h ], [ %i.az, %bb.j ], [ %i.bb, %bb.k ], [ %i.bd, %bb.l ], [ %i.bj, %bb.m ] ; 2 uses
  %or.cond = and i1 %.0.i, %.0.i14
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit15
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !1233, !nonnull !87, !align !546
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !1236, !nonnull !87, !align !546
  %i.bm = add nsw i64 %1, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 16777472, ptr %i.bn, align 8, !alias.scope !1237
  store double 1.000000e-05, ptr %3, align 8, !tbaa !1174, !alias.scope !1237
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.bo, align 8, !tbaa !1176, !alias.scope !1237
  %i.bp = call noundef zeroext i1 @_ZNK5arrow5Array11RangeEqualsElllRKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef %1, i64 noundef %i.bm, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.p

bb.o:                                             ; preds = %_ZNK5arrow5Array7IsValidEl.exit15
  %i.bq = xor i1 %.0.i, %.0.i14
  %i.br = xor i1 %i.bq, true
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i1 [ %i.bp, %bb.n ], [ %i.br, %bb.o ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1240
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1240
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618, !noalias !1240, !nonnull !87, !align !546
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %2) #26, !noalias !1240
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1240 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1240
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1240
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !70
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !70
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZN5arrow11UnreachableEPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsED2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_118REEValueComparatorIsEE, i64 16), ptr %0, align 8, !tbaa !446
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !996  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i1.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i), !inline_history !1244
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %bb.a
  %i.f = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1246
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !996  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1243 ; 2 uses
  %.not.i1.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i.i1, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit, %.lr.ph.i.i.i2
  %.0.i2.i.i.i3 = phi ptr [ %i.p, %.lr.ph.i.i.i2 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit ] ; 2 uses
  tail call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i.i3), !inline_history !1244
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i.i3, i64 128 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, label %.lr.ph.i.i.i2, !llvm.loop !1245

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5: ; preds = %.lr.ph.i.i.i2
  %.pre.i.i.i6 = load ptr, ptr %i.l, align 8, !tbaa !996
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit
  %i.q = phi ptr [ %.pre.i.i.i6, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i5 ], [ %i.m, %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i8, label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1246
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #29, !inline_history !1247
  br label %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9

_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i.i7, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !548  ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !446
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #26, !inline_history !617
  br label %_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow12_GLOBAL__N_115ValueComparatorESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5arrow8ree_util8internal19PhysicalIndexFinderIsED2Ev.exit9, %_ZNKSt14default_deleteIN5arrow12_GLOBAL__N_115ValueComparatorEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsED0Ev(ptr noundef nonnull align 8 dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsED2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsE6EqualsEll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.e, align 8, !tbaa !548 ; 2 uses
  %i.f = load ptr, ptr %.val, align 8, !tbaa !446
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef %i.b, i64 noundef %i.d)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN5arrow12_GLOBAL__N_118REEValueComparatorIsE21RunLengthOfEqualsFromEllll(ptr noundef nonnull align 8 dereferenceable(320) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp slt i64 %1, %2
  %.not38 = icmp slt i64 %3, %4
  %or.cond = and i1 %.not, %.not38
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = tail call noundef i64 @_ZN5arrow8ree_util8internal23FindPhysicalIndexImpl16ERNS1_19PhysicalIndexFinderIsEEl(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.034 = phi i64 [ %1, %bb.b ], [ %i.an, %bb.d ] ; 2 uses
  %.032 = phi i64 [ %3, %bb.b ], [ %i.ao, %bb.d ] ; 2 uses
  %.030 = phi i64 [ %i.b, %bb.b ], [ %i.aj, %bb.d ] ; 3 uses
  %.028 = phi i64 [ %i.d, %bb.b ], [ %i.am, %bb.d ] ; 3 uses
  %.026 = phi i64 [ 0, %bb.b ], [ %i.ap, %bb.d ]  ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !1248
  %i.j = getelementptr inbounds [2 x i8], ptr %.val, i64 %.030
  %i.k = load i16, ptr %i.j, align 2, !tbaa !634
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !1249, !nonnull !87, !align !546
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !409
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !429
  %.val42 = load ptr, ptr %i.g, align 8, !tbaa !1250
  %i.q = getelementptr inbounds [2 x i8], ptr %.val42, i64 %.028
  %i.r = load i16, ptr %i.q, align 2, !tbaa !634
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !1003, !nonnull !87, !align !546
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !409
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !429
  %.val43 = load ptr, ptr %i.i, align 8, !tbaa !548 ; 2 uses
  %i.x = load ptr, ptr %.val43, align 8, !tbaa !446
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %.val43, i64 noundef %.030, i64 noundef %.028)
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb:bb.a
  %.sroa.07.0.lcssa.i.i.i.i.i114 = phi ptr [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %.sroa.59.0.lcssa.i.i.i.i.i115 = phi i32 [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.59.1.i.i.i.i.i129, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %i.gg = load ptr, ptr %0, align 8, !tbaa !542   ; 2 uses
  %.not.i130 = icmp eq ptr %i.gg, null
  br i1 %.not.i130, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.gh = load ptr, ptr %i.b, align 8, !tbaa !544 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = ashr exact i64 %i.gk, 3
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gm
  tail call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gk) #29
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.am
  %i.go = lshr i64 %i.cv, 6
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.go
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !544
  store ptr %i.cy, ptr %0, align 8
  %.sroa.5138.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5138.0..sroa_idx139, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i114, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.sroa.59.0.lcssa.i.i.i.i.i115.sink = phi i32 [ %.sroa.59.0.lcssa.i.i.i.i.i115, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.co, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit ]
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i115.sink, ptr %i.k, align 8
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.a
  ret void
}

declare void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.788") align 8, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.303") align 8, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !378  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !443
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !445
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !1274
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26, !inline_history !1274
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, !prof !376

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !74

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !75, !range !86, !noundef !87
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJRlSt10shared_ptrINS4_6BufferEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.274", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !1275 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !443
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !445
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !446
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow12BooleanArrayC1ElRKSt10shared_ptrINS_6BufferEES5_ll(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef -1, i64 noundef 0)
          to label %bb.b unwind label %.body.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !378  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !443
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !445
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !1278
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !446
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !1278
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, !prof !376

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.body.i:                                          ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29
  resume { ptr, i32 } %i.w

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store ptr %i.a, ptr %0, align 8, !tbaa !378
  store ptr %i.d, ptr %1, align 8, !tbaa !952
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow12NumericArrayINS0_9Int64TypeEEEJRlSt10unique_ptrINS0_6BufferESt14default_deleteIS6_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.274", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.274", align 8 ; 7 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow12NumericArrayINS_9Int64TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueElE4typeERKSt10shared_ptrINS_6BufferEESC_ll(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef -1, i64 noundef 0)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !378  ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !443
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !445
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !446
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !970
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !446
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !970
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !376

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !378  ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.t, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !443
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !445
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !446
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26, !inline_history !970
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !446
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26, !inline_history !970
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i5 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i7 = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.ai, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8, !prof !376

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #26
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.o:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_EZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0E9_M_invokeERKSt9_Any_dataS4_S4_S4_"(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nonnull readnone align 8 captures(none) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) #1 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409, !noalias !1288
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !410, !noalias !1288
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !409, !noalias !1288
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !410, !noalias !1288
  %.not.i.i.i = icmp eq i64 %i.d, %i.h
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIN5arrow6StatusERZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0JRKNS0_5ArrayESA_SA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef nonnull @.str.48, i64 noundef 22), !noalias !1288 ; 0 uses
  %i.j = load ptr, ptr %.val, align 8, !tbaa !446, !noalias !1288
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8, !noalias !1288
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !694, !noalias !1288 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #30, !noalias !1288
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !695, !noalias !1288
  %.not.i1.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 67
  %i.s = load i8, ptr %i.r, align 1, !tbaa !70, !noalias !1288
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.o), !noalias !1288
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !446, !noalias !1288
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1288
  %i.w = tail call noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext 10), !noalias !1288, !inline_history !1289
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi i8 [ %i.s, %bb.d ], [ %i.w, %bb.e ]
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %.val, i8 noundef signext %.0.i.i.i.i.i.i), !noalias !1288
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x), !noalias !1288 ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.49, i64 noundef 1), !noalias !1288 ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !409, !noalias !1288
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !410, !noalias !1288
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.ac), !noalias !1288 ; 4 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.50, i64 noundef 6), !noalias !1288 ; 0 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !446, !noalias !1288
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !1288
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !694, !noalias !1288 ; 6 uses
  %.not.i.i.i5.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i5.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6.i.i.i

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i
  tail call void @_ZSt16__throw_bad_castv() #30, !noalias !1288
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6.i.i.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load i8, ptr %i.al, align 8, !tbaa !695, !noalias !1288
  %.not.i1.i.i7.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i1.i.i7.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 67
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !70, !noalias !1288
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9.i.i.i

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i6.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ak), !noalias !1288
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !446, !noalias !1288
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1288
  %i.as = tail call noundef signext i8 %i.ar(ptr noundef nonnull align 8 dereferenceable(570) %i.ak, i8 noundef signext 10), !noalias !1288, !inline_history !1289
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9.i.i.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i8.i.i.i = phi i8 [ %i.ao, %bb.g ], [ %i.as, %bb.h ]
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i8 noundef signext %.0.i.i.i8.i.i.i), !noalias !1288
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at), !noalias !1288 ; 2 uses
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.51, i64 noundef 1), !noalias !1288 ; 0 uses
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !409, !noalias !1288
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !410, !noalias !1288
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i64 noundef %i.ay), !noalias !1288 ; 4 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.50, i64 noundef 6), !noalias !1288 ; 0 uses
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !446, !noalias !1288
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !1288
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !694, !noalias !1288 ; 6 uses
  %.not.i.i.i10.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i10.i.i.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11.i.i.i

bb.i:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9.i.i.i
  tail call void @_ZSt16__throw_bad_castv() #30, !noalias !1288
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11.i.i.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit9.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !695, !noalias !1288
  %.not.i1.i.i12.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i1.i.i12.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !70, !noalias !1288
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14.i.i.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bg), !noalias !1288
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !446, !noalias !1288
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !1288
  %i.bo = tail call noundef signext i8 %i.bn(ptr noundef nonnull align 8 dereferenceable(570) %i.bg, i8 noundef signext 10), !noalias !1288, !inline_history !1289
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14.i.i.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i13.i.i.i = phi i8 [ %i.bk, %bb.j ], [ %i.bo, %bb.k ]
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i8 noundef signext %.0.i.i.i13.i.i.i), !noalias !1288
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp), !noalias !1288 ; 0 uses
  br label %"_ZSt10__invoke_rIN5arrow6StatusERZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0JRKNS0_5ArrayESA_SA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

"_ZSt10__invoke_rIN5arrow6StatusERZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0JRKNS0_5ArrayESA_SA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !1290
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_EZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN5arrow24MakeUnifiedDiffFormatterERKNS1_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN5arrow24MakeUnifiedDiffFormatterERKNS_8DataTypeEPSoE3$_0", ptr %0, align 8, !tbaa !777
  br label %"_ZNSt14_Function_base13_Base_managerIZN5arrow24MakeUnifiedDiffFormatterERKNS1_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !237
  br label %"_ZNSt14_Function_base13_Base_managerIZN5arrow24MakeUnifiedDiffFormatterERKNS1_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !52
  store i64 %.val.i, ptr %0, align 8, !tbaa !52
  br label %"_ZNSt14_Function_base13_Base_managerIZN5arrow24MakeUnifiedDiffFormatterERKNS1_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN5arrow24MakeUnifiedDiffFormatterERKNS1_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_ENS0_12_GLOBAL__N_120UnifiedDiffFormatterEE9_M_invokeERKSt9_Any_dataS4_S4_S4_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.38", align 8  ; 14 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !71    ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409, !noalias !1302
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !410, !noalias !1302
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !1303
  br label %_ZSt10__invoke_rIN5arrow6StatusERNS0_12_GLOBAL__N_120UnifiedDiffFormatterEJRKNS0_5ArrayES7_S7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %3, ptr %i.f, align 8, !tbaa !1306, !noalias !1302
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  store ptr %4, ptr %i.g, align 8, !tbaa !1308, !noalias !1302
  %i.h = load ptr, ptr %.val, align 8, !tbaa !1309, !noalias !1302 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !446, !noalias !1302
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8, !noalias !1302
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !694, !noalias !1302 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #30, !noalias !1302
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !695, !noalias !1302
  %.not.i1.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 67
  %i.r = load i8, ptr %i.q, align 1, !tbaa !70, !noalias !1302
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.n), !noalias !1302
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !446, !noalias !1302
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1302
  %i.v = tail call noundef signext i8 %i.u(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext 10), !noalias !1302, !inline_history !1310
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i8 [ %i.r, %bb.e ], [ %i.v, %bb.f ]
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef signext %.0.i.i.i.i.i.i), !noalias !1302
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w), !noalias !1302 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !1302
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false), !noalias !1302
  %i.z = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !1302 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %.val, i64 24, i1 false), !noalias !1302
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false), !noalias !1302
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57, !noalias !1302 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFN5arrow6StatusEllllEEC2IRNS0_12_GLOBAL__N_120UnifiedDiffFormatterEvEEOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.af = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef 2)
          to label %bb.h unwind label %bb.i, !noalias !1302 ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ag = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !237, !noalias !1302
  store <2 x ptr> %i.ag, ptr %i.ab, align 8, !tbaa !237, !noalias !1302
  br label %_ZNSt8functionIFN5arrow6StatusEllllEEC2IRNS0_12_GLOBAL__N_120UnifiedDiffFormatterEvEEOT_.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !57, !noalias !1302 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 3)
          to label %.body.i.i.i.i unwind label %bb.k, !noalias !1302 ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #28, !noalias !1302
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.j, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 56) #29, !noalias !1302
  %.pr.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !57, !noalias !1302 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %common.resume.i.i.i, label %bb.l

bb.l:                                             ; preds = %.body.i.i.i.i
  %i.am = invoke noundef zeroext i1 %.pr.i.i.i.i(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %common.resume.i.i.i unwind label %bb.m, !noalias !1302 ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #28, !noalias !1302
  unreachable

common.resume.i.i.i:                              ; preds = %_ZNSt14_Function_baseD2Ev.exit7.i.i.i, %bb.l, %.body.i.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.au, %_ZNSt14_Function_baseD2Ev.exit7.i.i.i ], [ %i.ah, %bb.l ], [ %i.ah, %.body.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_ZNSt8functionIFN5arrow6StatusEllllEEC2IRNS0_12_GLOBAL__N_120UnifiedDiffFormatterEvEEOT_.exit.i.i.i: ; preds = %bb.h, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.z, ptr %5, align 8, !tbaa !71, !noalias !1302
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEllllENS0_12_GLOBAL__N_120UnifiedDiffFormatterEE9_M_invokeERKSt9_Any_dataOlS9_S9_S9_, ptr %i.ap, align 8, !tbaa !433, !noalias !1302
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEllllENS0_12_GLOBAL__N_120UnifiedDiffFormatterEE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.y, align 8, !tbaa !57, !noalias !1302
  invoke void @_ZN5arrow15VisitEditScriptERKNS_5ArrayERKSt8functionIFNS_6StatusEllllEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNSt8functionIFN5arrow6StatusEllllEEC2IRNS0_12_GLOBAL__N_120UnifiedDiffFormatterEvEEOT_.exit.i.i.i
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !57, !noalias !1302 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !1302
  br label %_ZSt10__invoke_rIN5arrow6StatusERNS0_12_GLOBAL__N_120UnifiedDiffFormatterEJRKNS0_5ArrayES7_S7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit

bb.q:                                             ; preds = %_ZNSt8functionIFN5arrow6StatusEllllEEC2IRNS0_12_GLOBAL__N_120UnifiedDiffFormatterEvEEOT_.exit.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !57, !noalias !1302 ; 2 uses
  %.not.i6.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i6.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit7.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7.i.i.i unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit7.i.i.i:            ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !1302
  br label %common.resume.i.i.i

_ZSt10__invoke_rIN5arrow6StatusERNS0_12_GLOBAL__N_120UnifiedDiffFormatterEJRKNS0_5ArrayES7_S7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit: ; preds = %bb.b, %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  ret void
}
end_hunk_10
begin_hunk_11_@_ZNSt14_Function_base13_Base_managerIN5arrow12_GLOBAL__N_120UnifiedDiffFormatterEE10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIN5arrow12_GLOBAL__N_120UnifiedDiffFormatterEE15_M_init_functorIRKS3_EEvRSt9_Any_dataOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.g = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 2)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !tbaa !237
  store <2 x ptr> %i.h, ptr %i.c, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIN5arrow12_GLOBAL__N_120UnifiedDiffFormatterEE15_M_init_functorIRKS3_EEvRSt9_Any_dataOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %.body.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %.body.i.i unwind label %bb.i  ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable

.body.i.i:                                        ; preds = %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #29
  resume { ptr, i32 } %i.i

_ZNSt14_Function_base13_Base_managerIN5arrow12_GLOBAL__N_120UnifiedDiffFormatterEE15_M_init_functorIRKS3_EEvRSt9_Any_dataOT_.exit: ; preds = %bb.d, %bb.f
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  br label %_ZNSt14_Function_base13_Base_managerIN5arrow12_GLOBAL__N_120UnifiedDiffFormatterEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

bb.j:                                             ; preds = %bb.a
  %.val7 = load ptr, ptr %0, align 8, !tbaa !71   ; 4 uses
  %i.n = icmp eq ptr %.val7, null
  br i1 %i.n, label %_ZNSt14_Function_base13_Base_managerIN5arrow12_GLOBAL__N_120UnifiedDiffFormatterEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %.val7, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_120UnifiedDiffFormatterD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %.val7, i64 24 ; 2 uses
  %i.r = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef 3)
          to label %_ZN5arrow12_GLOBAL__N_120UnifiedDiffFormatterD2Ev.exit.i unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

_ZN5arrow12_GLOBAL__N_120UnifiedDiffFormatterD2Ev.exit.i: ; preds = %bb.l, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7, i64 noundef 56) #29
  br label %_ZNSt14_Function_base13_Base_managerIN5arrow12_GLOBAL__N_120UnifiedDiffFormatterEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit

_ZNSt14_Function_base13_Base_managerIN5arrow12_GLOBAL__N_120UnifiedDiffFormatterEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE.exit: ; preds = %_ZN5arrow12_GLOBAL__N_120UnifiedDiffFormatterD2Ev.exit.i, %bb.j, %_ZNSt14_Function_base13_Base_managerIN5arrow12_GLOBAL__N_120UnifiedDiffFormatterEE15_M_init_functorIRKS3_EEvRSt9_Any_dataOT_.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA56_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(56) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !1328
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1328
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618, !noalias !1328, !nonnull !87, !align !546
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(56) %2) #26, !noalias !1328
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(56) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA56_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1328 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA56_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA56_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1328
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA56_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA56_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !1328
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA56_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !70
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA56_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !102    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !70
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(24) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(24) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !618, !nonnull !87, !align !546
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrowlsERSoRKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSH_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSH_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { cold }

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
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN5arrow18TypedChunkLocationIiEE", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN5arrow18TypedChunkLocationIsEE", !12, i64 0, !12, i64 2}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 2}
!14 = !{!15, !5, i64 0}
!15 = !{!"_ZTSN5arrow18TypedChunkLocationIaEE", !5, i64 0, !5, i64 1}
!16 = !{!15, !5, i64 1}
!17 = !{!18, !5, i64 0}
!18 = !{!"_ZTSN5arrow18TypedChunkLocationIhEE", !5, i64 0, !5, i64 1}
!19 = !{!18, !5, i64 1}
!20 = !{!21, !12, i64 0}
!21 = !{!"_ZTSN5arrow18TypedChunkLocationItEE", !12, i64 0, !12, i64 2}
!22 = !{!21, !12, i64 2}
!23 = !{!24, !4, i64 0}
!24 = !{!"_ZTSN5arrow18TypedChunkLocationIjEE", !4, i64 0, !4, i64 4}
!25 = !{!24, !4, i64 4}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow18TypedChunkLocationIlEE", !28, i64 0, !28, i64 8}
!28 = !{!"long", !5, i64 0}
!29 = !{!27, !28, i64 8}
!30 = !{!31, !28, i64 0}
!31 = !{!"_ZTSN5arrow18TypedChunkLocationImEE", !28, i64 0, !28, i64 8}
!32 = !{!31, !28, i64 8}
!33 = !{!34, !46, i64 40}
!34 = !{!"_ZTSN5arrow8DataTypeE", !35, i64 0, !40, i64 24, !46, i64 40, !47, i64 48}
!35 = !{!"_ZTSN5arrow6detail15FingerprintableE", !36, i64 8, !36, i64 16}
!36 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !37, i64 0}
!37 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !38, i64 0}
!38 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0}
!39 = !{!"any pointer", !5, i64 0}
!40 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !41, i64 0}
!41 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !42, i64 0}
!42 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0, !44, i64 8}
!43 = !{!"p1 _ZTSN5arrow8DataTypeE", !39, i64 0}
!44 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0}
!45 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!46 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!47 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !48, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !39, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTSSo", !39, i64 0}
!54 = !{!55, !39, i64 24}
!55 = !{!"_ZTSSt8functionIFN5arrow6StatusERKNS0_5ArrayES4_S4_EE", !56, i64 0, !39, i64 24}
!56 = !{!"_ZTSSt14_Function_base", !5, i64 0, !39, i64 16}
!57 = !{!56, !39, i64 16}
!58 = !{!59, !60, i64 0}
!59 = !{!"_ZTSN5arrow6StatusE", !60, i64 0}
!60 = !{!"p1 _ZTSN5arrow6Status5StateE", !39, i64 0}
!61 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!62 = !{!63, !39, i64 24}
!63 = !{!"_ZTSSt8functionIFvRKN5arrow5ArrayElPSoEE", !56, i64 0, !39, i64 24}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE15MoveValueUnsafeEv: argument 0"}
!66 = distinct !{!66, !"_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE15MoveValueUnsafeEv"}
!67 = distinct !{!67, !68, !"_ZNO5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE11ValueUnsafeEv: argument 0"}
!68 = distinct !{!68, !"_ZNO5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE11ValueUnsafeEv"}
!69 = !{i64 0, i64 16, !70}
!70 = !{!5, !5, i64 0}
!71 = !{!72, !72, i64 0}
!72 = !{!"p1 _ZTSN5arrow12_GLOBAL__N_120UnifiedDiffFormatterE", !39, i64 0}
!73 = !{!"branch_weights", !"expected", i32 2046, i32 2147481602}
!74 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!75 = !{!76, !78, i64 1}
!76 = !{!"_ZTSN5arrow6Status5StateE", !77, i64 0, !78, i64 1, !79, i64 8, !82, i64 40}
!77 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!78 = !{!"bool", !5, i64 0}
!79 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !80, i64 0, !28, i64 8, !5, i64 16}
!80 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !81, i64 0}
!81 = !{!"p1 omnipotent char", !39, i64 0}
!82 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !83, i64 0}
!83 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0, !85, i64 8}
!84 = !{!"p1 _ZTSN5arrow12StatusDetailE", !39, i64 0}
!85 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0}
!86 = !{i8 0, i8 2}
!87 = !{}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNO5arrow12_GLOBAL__N_117MakeFormatterImpl4MakeERKNS_8DataTypeE: argument 0"}
!90 = distinct !{!90, !"_ZNO5arrow12_GLOBAL__N_117MakeFormatterImpl4MakeERKNS_8DataTypeE"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_117MakeFormatterImplEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_: argument 0"}
!93 = distinct !{!93, !"_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_117MakeFormatterImplEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_"}
!94 = !{!95, !97, !99, !92}
!95 = distinct !{!95, !96, !"_ZN5arrow6Status8FromArgsIJRA41_KcRKNS_8NullTypeEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!96 = distinct !{!96, !"_ZN5arrow6Status8FromArgsIJRA41_KcRKNS_8NullTypeEEEES0_NS_10StatusCodeEDpOT_"}
!97 = distinct !{!97, !98, !"_ZN5arrow6Status14NotImplementedIJRA41_KcRKNS_8NullTypeEEEES0_DpOT_: argument 0"}
!98 = distinct !{!98, !"_ZN5arrow6Status14NotImplementedIJRA41_KcRKNS_8NullTypeEEEES0_DpOT_"}
!99 = distinct !{!99, !100, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_8NullTypeE: argument 0"}
!100 = distinct !{!100, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_8NullTypeE"}
!101 = distinct !{null, null}
!102 = !{!79, !81, i64 0}
!103 = !{!104, !92}
!104 = distinct !{!104, !105, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_11BooleanTypeE: argument 0"}
!105 = distinct !{!105, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_11BooleanTypeE"}
!106 = !{!107, !92}
!107 = distinct !{!107, !108, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8Int8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!108 = distinct !{!108, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8Int8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!109 = !{!110, !92}
!110 = distinct !{!110, !111, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!111 = distinct !{!111, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!112 = !{!113, !92}
!113 = distinct !{!113, !114, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!114 = distinct !{!114, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!115 = !{!116, !92}
!116 = distinct !{!116, !117, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!117 = distinct !{!117, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!118 = !{!119, !92}
!119 = distinct !{!119, !120, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!120 = distinct !{!120, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!121 = !{!122, !92}
!122 = distinct !{!122, !123, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!123 = distinct !{!123, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!124 = !{!125, !92}
!125 = distinct !{!125, !126, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!126 = distinct !{!126, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!127 = !{!128, !92}
!128 = distinct !{!128, !129, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!129 = distinct !{!129, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!130 = !{!131, !92}
!131 = distinct !{!131, !132, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13HalfFloatTypeE: argument 0"}
!132 = distinct !{!132, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13HalfFloatTypeE"}
!133 = !{!134, !92}
!134 = distinct !{!134, !135, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9FloatTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!135 = distinct !{!135, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9FloatTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!136 = !{!137, !92}
!137 = distinct !{!137, !138, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10DoubleTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!138 = distinct !{!138, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10DoubleTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!139 = !{!140, !92}
!140 = distinct !{!140, !141, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10StringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!141 = distinct !{!141, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10StringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_"}
!142 = !{!143, !92}
!143 = distinct !{!143, !144, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14StringViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!144 = distinct !{!144, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14StringViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_"}
!145 = !{!146, !92}
!146 = distinct !{!146, !147, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10BinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!147 = distinct !{!147, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10BinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_"}
!148 = !{!149, !92}
!149 = distinct !{!149, !150, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14BinaryViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!150 = distinct !{!150, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14BinaryViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_"}
!151 = !{!152, !92}
!152 = distinct !{!152, !153, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeStringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!153 = distinct !{!153, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeStringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_"}
!154 = !{!155, !92}
!155 = distinct !{!155, !156, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!156 = distinct !{!156, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_"}
!157 = !{!158, !92}
!158 = distinct !{!158, !159, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!159 = distinct !{!159, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_"}
!160 = !{!161, !163, !165, !92}
!161 = distinct !{!161, !162, !"_ZN5arrow6Status8FromArgsIJRA41_KcRKNS_12DurationTypeEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!162 = distinct !{!162, !"_ZN5arrow6Status8FromArgsIJRA41_KcRKNS_12DurationTypeEEEES0_NS_10StatusCodeEDpOT_"}
!163 = distinct !{!163, !164, !"_ZN5arrow6Status14NotImplementedIJRA41_KcRKNS_12DurationTypeEEEES0_DpOT_: argument 0"}
!164 = distinct !{!164, !"_ZN5arrow6Status14NotImplementedIJRA41_KcRKNS_12DurationTypeEEEES0_DpOT_"}
!165 = distinct !{!165, !166, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_12DurationTypeE: argument 0"}
!166 = distinct !{!166, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_12DurationTypeE"}
!167 = !{!168, !92}
!168 = distinct !{!168, !169, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!169 = distinct !{!169, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!170 = !{!171, !92}
!171 = distinct !{!171, !172, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!172 = distinct !{!172, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!173 = !{!174, !92}
!174 = distinct !{!174, !175, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13TimestampTypeE: argument 0"}
!175 = distinct !{!175, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13TimestampTypeE"}
!176 = !{!80, !81, i64 0}
!177 = !{!79, !28, i64 8}
!178 = !{!179, !174, !92}
!179 = distinct !{!179, !180, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!180 = distinct !{!180, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_13TimestampTypeELb1EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!181 = !{!182, !92}
!182 = distinct !{!182, !183, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time32TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_: argument 0"}
!183 = distinct !{!183, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time32TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_"}
!184 = !{!185, !182, !92}
!185 = distinct !{!185, !186, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_10Time32TypeELb0EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!186 = distinct !{!186, !"_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS_10Time32TypeELb0EEESt8functionIFvRKNS_5ArrayElPSoEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
end_hunk_11
