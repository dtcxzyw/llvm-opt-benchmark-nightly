Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/face_detect?download=true
inline.NumInlined: 544
inline.NumDeleted: 102
begin_hunk_0_@main:.noexc.i
  br i1 %.not.i1.i.i784, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i783
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aax, i64 67
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i785

bb.fj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i783
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aax)
          to label %.noexc788 unwind label %bb.eq

.noexc788:                                        ; preds = %bb.fj
  %i.abc = load ptr, ptr %i.aax, align 8, !tbaa !38
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 48
  %i.abe = load ptr, ptr %i.abd, align 8
  %i.abf = invoke noundef signext i8 %i.abe(ptr noundef nonnull align 8 dereferenceable(570) %i.aax, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i785 unwind label %bb.eq, !inline_history !61

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i785: ; preds = %.noexc788, %bb.fi
  %.0.i.i.i786 = phi i8 [ %i.abb, %bb.fi ], [ %i.abf, %.noexc788 ]
  %i.abg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i786)
          to label %.noexc790 unwind label %bb.eq

.noexc790:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i785
  %i.abh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abg)
          to label %_ZNSolsEPFRSoS_E.exit664.preheader unwind label %bb.eq ; 0 uses

_ZNSolsEPFRSoS_E.exit664.preheader:               ; preds = %.noexc790
  %i.abi = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.abj = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.abk = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.abl = getelementptr inbounds nuw i8, ptr %88, i64 20
  %i.abm = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.abn = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.abo = getelementptr inbounds nuw i8, ptr %89, i64 16
  %.sroa.2.0.insert.ext = zext i32 %i.zi to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0815.0.insert.ext = zext i32 %i.zf to i64
  %.sroa.0815.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0815.0.insert.ext
  %i.abp = getelementptr inbounds nuw i8, ptr %91, i64 16
  %i.abq = getelementptr inbounds nuw i8, ptr %91, i64 20
  %i.abr = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.abs = getelementptr inbounds nuw i8, ptr %92, i64 8
  %i.abt = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.abu = getelementptr inbounds nuw i8, ptr %94, i64 16 ; 6 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.abw = getelementptr inbounds nuw i8, ptr %95, i64 16
  %i.abx = getelementptr inbounds nuw i8, ptr %95, i64 20
  %i.aby = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.abz = getelementptr inbounds nuw i8, ptr %96, i64 8
  %i.aca = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.acb = getelementptr inbounds nuw i8, ptr %98, i64 16
  %i.acc = getelementptr inbounds nuw i8, ptr %98, i64 20
  %i.acd = getelementptr inbounds nuw i8, ptr %98, i64 8
  %i.ace = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %100, i64 16
  %i.acg = getelementptr inbounds nuw i8, ptr %100, i64 20
  %i.ach = getelementptr inbounds nuw i8, ptr %100, i64 8
  %i.aci = getelementptr inbounds nuw i8, ptr %101, i64 16 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %97, i64 16 ; 4 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 4 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %94, i64 20
  br label %_ZNSolsEPFRSoS_E.exit664

_ZNSolsEPFRSoS_E.exit664:                         ; preds = %_ZNSolsEPFRSoS_E.exit664.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit666
  %.sroa.14.0 = phi i64 [ %.sroa.14.4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit666 ], [ 0, %_ZNSolsEPFRSoS_E.exit664.preheader ]
  %.sroa.0827.0 = phi i64 [ %.sroa.0827.4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit666 ], [ 0, %_ZNSolsEPFRSoS_E.exit664.preheader ]
  %.045 = phi i32 [ %i.afz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit666 ], [ 0, %_ZNSolsEPFRSoS_E.exit664.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %86) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #13
  store i64 0, ptr %i.abj, align 8
  store i32 33619968, ptr %87, align 8, !tbaa !62
  store ptr %86, ptr %i.abi, align 8, !tbaa !64
  %i.acm = invoke noundef zeroext i1 @_ZN2cv12VideoCapture4readERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(25) %80, ptr noundef nonnull align 8 dereferenceable(24) %87)
          to label %bb.fk unwind label %bb.fn

bb.fk:                                            ; preds = %_ZNSolsEPFRSoS_E.exit664
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #13
  br i1 %i.acm, label %bb.fp, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.acn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.35, i64 noundef 23)
          to label %select.unfold unwind label %bb.fo ; 0 uses

bb.fm:                                            ; preds = %_ZNSolsEPFRSoS_E.exit654
  %i.aco = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #13
  br label %bb.he

bb.fn:                                            ; preds = %_ZNSolsEPFRSoS_E.exit664
  %i.acp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #13
  br label %bb.gy

bb.fo:                                            ; preds = %bb.fl
  %i.acq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.fp:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #13
  store i32 0, ptr %i.abk, align 8, !tbaa !32
  store i32 0, ptr %i.abl, align 4, !tbaa !34
  store i32 16842752, ptr %88, align 8, !tbaa !62
  store ptr %86, ptr %i.abm, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #13
  store i64 0, ptr %i.abo, align 8
  store i32 33619968, ptr %89, align 8, !tbaa !62
  store ptr %86, ptr %i.abn, align 8, !tbaa !64
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %88, ptr noundef nonnull align 8 dereferenceable(24) %89, i64 %.sroa.0815.0.insert.insert, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.fq unwind label %bb.fw

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #13
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %90) #13
  %i.acr = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.fr unwind label %bb.fx     ; 2 uses

bb.fr:                                            ; preds = %bb.fq
  %i.acs = load ptr, ptr %20, align 8, !tbaa !65  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #13
  store i32 0, ptr %i.abp, align 8, !tbaa !32
  store i32 0, ptr %i.abq, align 4, !tbaa !34
  store i32 16842752, ptr %91, align 8, !tbaa !62
  store ptr %86, ptr %i.abr, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #13
  store i64 0, ptr %i.abt, align 8
  store i32 33619968, ptr %92, align 8, !tbaa !62
  store ptr %90, ptr %i.abs, align 8, !tbaa !64
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !38
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 80
  %i.acv = load ptr, ptr %i.acu, align 8
  %i.acw = invoke noundef i32 %i.acv(ptr noundef nonnull align 8 dereferenceable(8) %i.acs, ptr noundef nonnull align 8 dereferenceable(24) %91, ptr noundef nonnull align 8 dereferenceable(24) %92)
          to label %bb.fs unwind label %bb.fy     ; 0 uses

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #13
  %i.acx = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %.noexc669 unwind label %bb.fx

.noexc669:                                        ; preds = %bb.fs
  %i.acy = icmp ne i64 %i.acr, 0                  ; 2 uses
  %i.acz = sub nsw i64 %i.acx, %i.acr
  %i.ada = select i1 %i.acy, i64 %i.acz, i64 0
  %.sroa.14.4 = add nsw i64 %i.ada, %.sroa.14.0   ; 2 uses
  %i.adb = zext i1 %i.acy to i64
  %.sroa.0827.4 = add nuw nsw i64 %.sroa.0827.0, %i.adb ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #13
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %93, ptr noundef nonnull align 8 dereferenceable(208) %86)
          to label %bb.ft unwind label %bb.fz

bb.ft:                                            ; preds = %.noexc669
  %i.adc = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %.noexc672 unwind label %bb.ga

.noexc672:                                        ; preds = %bb.ft
  %i.add = sitofp i64 %.sroa.14.4 to double
  %i.ade = fdiv double %i.add, %i.adc             ; 2 uses
  %i.adf = fcmp olt double %i.ade, f0x3CB0000000000000
  %i.adg = uitofp nneg i64 %.sroa.0827.4 to double
  %i.adh = fdiv double %i.adg, %i.ade
  %.0.i671 = select i1 %i.adf, double 0.000000e+00, double %i.adh
  invoke fastcc void @_ZL9visualizeRN2cv3MatEiS1_di(ptr noundef nonnull align 8 dereferenceable(208) %93, i32 noundef %.045, ptr noundef nonnull align 8 dereferenceable(208) %90, double noundef %.0.i671)
          to label %._crit_edge.i.i674 unwind label %bb.ga

._crit_edge.i.i674:                               ; preds = %.noexc672
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #13
  store ptr %i.abu, ptr %94, align 8, !tbaa !9
  store i32 1702259020, ptr %i.abu, align 8
  store i64 4, ptr %i.abv, align 8, !tbaa !18
  store i8 0, ptr %i.acl, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #13
  store i32 0, ptr %i.abw, align 8, !tbaa !32
  store i32 0, ptr %i.abx, align 4, !tbaa !34
  store i32 16842752, ptr %95, align 8, !tbaa !62
  store ptr %93, ptr %i.aby, align 8, !tbaa !64
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %94, ptr noundef nonnull align 8 dereferenceable(24) %95)
          to label %bb.fu unwind label %bb.gb

bb.fu:                                            ; preds = %._crit_edge.i.i674
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #13
  %i.adi = load ptr, ptr %94, align 8, !tbaa !15  ; 2 uses
  %i.adj = icmp eq ptr %i.adi, %i.abu
  br i1 %i.adj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678: ; preds = %bb.fu
  %i.adk = load i64, ptr %i.abu, align 8, !tbaa !17
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adi, i64 noundef %i.adl) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #13
  %i.adm = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 1)
          to label %bb.fv unwind label %bb.gc     ; 3 uses

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680
  %i.adn = icmp eq i32 %i.adm, 32
  %spec.select309 = or i1 %i.adn, %i.co
  br i1 %spec.select309, label %bb.gd, label %bb.gu

bb.fw:                                            ; preds = %bb.fp
  %i.ado = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #13
  br label %bb.gy

bb.fx:                                            ; preds = %bb.fs, %bb.fq
  %i.adp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.fy:                                            ; preds = %bb.fr
  %i.adq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #13
  br label %bb.gx

bb.fz:                                            ; preds = %.noexc669
  %i.adr = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.ga:                                            ; preds = %.noexc672, %bb.ft
  %i.ads = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gb:                                            ; preds = %._crit_edge.i.i674
  %i.adt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #13
  %i.adu = load ptr, ptr %94, align 8, !tbaa !15  ; 2 uses
  %i.adv = icmp eq ptr %i.adu, %i.abu
  br i1 %i.adv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681: ; preds = %bb.gb
  %i.adw = load i64, ptr %i.abu, align 8, !tbaa !17
  %i.adx = add i64 %i.adw, 1
  call void @_ZdlPvm(ptr noundef %i.adu, i64 noundef %i.adx) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683: ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #13
  br label %bb.gv

bb.gc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680
  %i.ady = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gd:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #13
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %96, ptr noundef nonnull @.str.37, i32 noundef %.045)
          to label %bb.ge unwind label %bb.gm

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #13
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %97, ptr noundef nonnull @.str.38, i32 noundef %.045)
          to label %bb.gf unwind label %bb.gn

bb.gf:                                            ; preds = %bb.ge
  %i.adz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.39, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685 unwind label %bb.go ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685: ; preds = %bb.gf
  %i.aea = load ptr, ptr %96, align 8, !tbaa !15
  %i.aeb = load i64, ptr %i.abz, align 8, !tbaa !18
  %i.aec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.aea, i64 noundef %i.aeb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit687 unwind label %bb.go ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit687: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685
  %i.aed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aec, ptr noundef nonnull @.str.40, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689 unwind label %bb.go ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit687
  %i.aee = load ptr, ptr %97, align 8, !tbaa !15
  %i.aef = load i64, ptr %i.aca, align 8, !tbaa !18
  %i.aeg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aec, ptr noundef %i.aee, i64 noundef %i.aef)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit691 unwind label %bb.go

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit691: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689
  %i.aeh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aeg, ptr noundef nonnull @.str.41, i64 noundef 6)
          to label %bb.gg unwind label %bb.go     ; 0 uses

bb.gg:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit691
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #13
  store i32 0, ptr %i.acb, align 8, !tbaa !32
  store i32 0, ptr %i.acc, align 4, !tbaa !34
  store i32 16842752, ptr %98, align 8, !tbaa !62
  store ptr %86, ptr %i.acd, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %99, i8 0, i64 24, i1 false)
  %i.aei = invoke noundef zeroext i1 @_ZN2cv7imwriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32) %96, ptr noundef nonnull align 8 dereferenceable(24) %98, ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.gh unwind label %bb.gp     ; 0 uses

bb.gh:                                            ; preds = %bb.gg
  %i.aej = load ptr, ptr %99, align 8, !tbaa !78  ; 3 uses
  %.not.i.i.i694 = icmp eq ptr %i.aej, null
  br i1 %.not.i.i.i694, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aek = load ptr, ptr %i.ace, align 8, !tbaa !80
  %i.ael = ptrtoint ptr %i.aek to i64
  %i.aem = ptrtoint ptr %i.aej to i64
  %i.aen = sub i64 %i.ael, %i.aem
  call void @_ZdlPvm(ptr noundef nonnull %i.aej, i64 noundef %i.aen) #14
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #13
  store i32 0, ptr %i.acf, align 8, !tbaa !32
  store i32 0, ptr %i.acg, align 4, !tbaa !34
  store i32 16842752, ptr %100, align 8, !tbaa !62
  store ptr %93, ptr %i.ach, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %101, i8 0, i64 24, i1 false)
  %i.aeo = invoke noundef zeroext i1 @_ZN2cv7imwriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull align 8 dereferenceable(24) %100, ptr noundef nonnull align 8 dereferenceable(24) %101)
          to label %bb.gk unwind label %bb.gr     ; 0 uses

bb.gk:                                            ; preds = %bb.gj
  %i.aep = load ptr, ptr %101, align 8, !tbaa !78 ; 3 uses
  %.not.i.i.i696 = icmp eq ptr %i.aep, null
  br i1 %.not.i.i.i696, label %_ZNSt6vectorIiSaIiEED2Ev.exit697, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aeq = load ptr, ptr %i.aci, align 8, !tbaa !80
  %i.aer = ptrtoint ptr %i.aeq to i64
  %i.aes = ptrtoint ptr %i.aep to i64
  %i.aet = sub i64 %i.aer, %i.aes
  call void @_ZdlPvm(ptr noundef nonnull %i.aep, i64 noundef %i.aet) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit697

_ZNSt6vectorIiSaIiEED2Ev.exit697:                 ; preds = %bb.gk, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #13
  %i.aeu = load ptr, ptr %97, align 8, !tbaa !15  ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.acj
  br i1 %i.aev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit697
  %i.aew = load i64, ptr %i.acj, align 8, !tbaa !17
  %i.aex = add i64 %i.aew, 1
  call void @_ZdlPvm(ptr noundef %i.aeu, i64 noundef %i.aex) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit697, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #13
  %i.aey = load ptr, ptr %96, align 8, !tbaa !15  ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.ack
  br i1 %i.aez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700
  %i.afa = load i64, ptr %i.ack, align 8, !tbaa !17
  %i.afb = add i64 %i.afa, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afb) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i701
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #13
  br label %bb.gu

bb.gm:                                            ; preds = %bb.gd
  %i.afc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713

bb.gn:                                            ; preds = %bb.ge
  %i.afd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710

bb.go:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit691, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit689, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit687, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit685, %bb.gf
  %i.afe = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.gp:                                            ; preds = %bb.gg
  %i.aff = landingpad { ptr, i32 }
          cleanup
  %i.afg = load ptr, ptr %99, align 8, !tbaa !78  ; 3 uses
  %.not.i.i.i704 = icmp eq ptr %i.afg, null
  br i1 %.not.i.i.i704, label %_ZNSt6vectorIiSaIiEED2Ev.exit705, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.afh = load ptr, ptr %i.ace, align 8, !tbaa !80
  %i.afi = ptrtoint ptr %i.afh to i64
  %i.afj = ptrtoint ptr %i.afg to i64
  %i.afk = sub i64 %i.afi, %i.afj
  call void @_ZdlPvm(ptr noundef nonnull %i.afg, i64 noundef %i.afk) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit705

_ZNSt6vectorIiSaIiEED2Ev.exit705:                 ; preds = %bb.gp, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #13
  br label %bb.gt

bb.gr:                                            ; preds = %bb.gj
  %i.afl = landingpad { ptr, i32 }
          cleanup
  %i.afm = load ptr, ptr %101, align 8, !tbaa !78 ; 3 uses
  %.not.i.i.i706 = icmp eq ptr %i.afm, null
  br i1 %.not.i.i.i706, label %_ZNSt6vectorIiSaIiEED2Ev.exit707, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.afn = load ptr, ptr %i.aci, align 8, !tbaa !80
  %i.afo = ptrtoint ptr %i.afn to i64
  %i.afp = ptrtoint ptr %i.afm to i64
  %i.afq = sub i64 %i.afo, %i.afp
  call void @_ZdlPvm(ptr noundef nonnull %i.afm, i64 noundef %i.afq) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit707

_ZNSt6vectorIiSaIiEED2Ev.exit707:                 ; preds = %bb.gr, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #13
  br label %bb.gt

bb.gt:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit707, %_ZNSt6vectorIiSaIiEED2Ev.exit705, %bb.go
  %.pn202.pn = phi { ptr, i32 } [ %i.afl, %_ZNSt6vectorIiSaIiEED2Ev.exit707 ], [ %i.aff, %_ZNSt6vectorIiSaIiEED2Ev.exit705 ], [ %i.afe, %bb.go ] ; 2 uses
  %i.afr = load ptr, ptr %97, align 8, !tbaa !15  ; 2 uses
  %i.afs = icmp eq ptr %i.afr, %i.acj
  br i1 %i.afs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708: ; preds = %bb.gt
  %i.aft = load i64, ptr %i.acj, align 8, !tbaa !17
  %i.afu = add i64 %i.aft, 1
  call void @_ZdlPvm(ptr noundef %i.afr, i64 noundef %i.afu) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710: ; preds = %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708, %bb.gn
  %.pn202.pn.pn = phi { ptr, i32 } [ %i.afd, %bb.gn ], [ %.pn202.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708 ], [ %.pn202.pn, %bb.gt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #13
  %i.afv = load ptr, ptr %96, align 8, !tbaa !15  ; 2 uses
  %i.afw = icmp eq ptr %i.afv, %i.ack
  br i1 %i.afw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710
  %i.afx = load i64, ptr %i.ack, align 8, !tbaa !17
  %i.afy = add i64 %i.afx, 1
  call void @_ZdlPvm(ptr noundef %i.afv, i64 noundef %i.afy) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711, %bb.gm
  %.pn202.pn.pn.pn = phi { ptr, i32 } [ %i.afc, %bb.gm ], [ %.pn202.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711 ], [ %.pn202.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #13
  br label %bb.gv

bb.gu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit703, %bb.fv
  %i.afz = add nuw nsw i32 %.045, 1               ; 2 uses
  %i.aga = icmp sgt i32 %i.adm, 0
  %not. = icmp ne i32 %i.adm, 32
  %102 = and i1 %not., %i.aga
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %93) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %90) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #13
  br i1 %102, label %select.unfold, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit666

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit666: ; preds = %bb.gu
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %86) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #13
  br label %_ZNSolsEPFRSoS_E.exit664

bb.gv:                                            ; preds = %bb.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, %bb.ga
  %.pn202.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ads, %bb.ga ], [ %i.adt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683 ], [ %.pn202.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713 ], [ %i.ady, %bb.gc ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %93) #13
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.fz
  %.pn202.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn.pn.pn, %bb.gv ], [ %i.adr, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #13
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.fy, %bb.fx
  %.pn202.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn.pn.pn.pn, %bb.gw ], [ %i.adp, %bb.fx ], [ %i.adq, %bb.fy ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %90) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #13
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.fw, %bb.fo, %bb.fn
  %.pn211 = phi { ptr, i32 } [ %i.acq, %bb.fo ], [ %.pn202.pn.pn.pn.pn.pn.pn.pn, %bb.gx ], [ %i.ado, %bb.fw ], [ %i.acp, %bb.fn ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %86) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #13
  br label %bb.he

select.unfold:                                    ; preds = %bb.gu, %bb.fl
  %.1.ph = phi i32 [ %.045, %bb.fl ], [ %i.afz, %bb.gu ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %86) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #13
  %i.agb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.42, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit715 unwind label %bb.hd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit715: ; preds = %select.unfold
  %i.agc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.1.ph)
          to label %bb.gz unwind label %bb.hd     ; 4 uses

bb.gz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit715
  %i.agd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.agc, ptr noundef nonnull @.str.43, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit717 unwind label %bb.hd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit717: ; preds = %bb.gz
  %i.age = load ptr, ptr %i.agc, align 8, !tbaa !38
  %i.agf = getelementptr i8, ptr %i.age, i64 -24
  %i.agg = load i64, ptr %i.agf, align 8
  %i.agh = getelementptr inbounds i8, ptr %i.agc, i64 %i.agg
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 240
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !40 ; 6 uses
  %.not.i.i.i793 = icmp eq ptr %i.agj, null
  br i1 %.not.i.i.i793, label %bb.ha, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i794

bb.ha:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit717
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.noexc798 unwind label %bb.hd

.noexc798:                                        ; preds = %bb.ha
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i794: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit717
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 56
  %i.agl = load i8, ptr %i.agk, align 8, !tbaa !55
  %.not.i1.i.i795 = icmp eq i8 %i.agl, 0
  br i1 %.not.i1.i.i795, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i794
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 67
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i796

bb.hc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i794
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.agj)
          to label %.noexc799 unwind label %bb.hd

.noexc799:                                        ; preds = %bb.hc
  %i.ago = load ptr, ptr %i.agj, align 8, !tbaa !38
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 48
  %i.agq = load ptr, ptr %i.agp, align 8
  %i.agr = invoke noundef signext i8 %i.agq(ptr noundef nonnull align 8 dereferenceable(570) %i.agj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i796 unwind label %bb.hd, !inline_history !61

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i796: ; preds = %.noexc799, %bb.hb
  %.0.i.i.i797 = phi i8 [ %i.agn, %bb.hb ], [ %i.agr, %.noexc799 ]
  %i.ags = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.agc, i8 noundef signext %.0.i.i.i797)
          to label %.noexc801 unwind label %bb.hd

.noexc801:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i796
  %i.agt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ags)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit660 unwind label %bb.hd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit660: ; preds = %.noexc801, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit658
  %.6 = phi i32 [ 1, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit658 ], [ 0, %.noexc801 ]
  %i.agu = load ptr, ptr %81, align 8, !tbaa !15  ; 2 uses
  %i.agv = icmp eq ptr %i.agu, %i.xe
  br i1 %i.agv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit660
  %i.agw = load i64, ptr %i.xe, align 8, !tbaa !17
  %i.agx = add i64 %i.agw, 1
  call void @_ZdlPvm(ptr noundef %i.agu, i64 noundef %i.agx) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit660, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #13
  call void @_ZN2cv12VideoCaptureD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %80) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #13
  br i1 %i.zb, label %bb.hg, label %_ZNSolsEPFRSoS_E.exit729

bb.hd:                                            ; preds = %.noexc801, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i796, %.noexc799, %bb.hc, %bb.ha, %bb.gz, %select.unfold, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit715
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.he:                                            ; preds = %bb.gy, %bb.hd, %bb.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, %bb.eq
  %.pn213.pn = phi { ptr, i32 } [ %.pn185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644 ], [ %i.yi, %bb.eq ], [ %i.aco, %bb.fm ], [ %i.yj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638 ], [ %i.agy, %bb.hd ], [ %.pn211, %bb.gy ] ; 2 uses
  %i.agz = load ptr, ptr %81, align 8, !tbaa !15  ; 2 uses
  %i.aha = icmp eq ptr %i.agz, %i.xe
  br i1 %i.aha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723: ; preds = %bb.he
  %i.ahb = load i64, ptr %i.xe, align 8, !tbaa !17
  %i.ahc = add i64 %i.ahb, 1
  call void @_ZdlPvm(ptr noundef %i.agz, i64 noundef %i.ahc) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725: ; preds = %bb.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635
  %.pn213.pn.pn = phi { ptr, i32 } [ %i.xg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635 ], [ %.pn213.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723 ], [ %.pn213.pn, %bb.he ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #13
  call void @_ZN2cv12VideoCaptureD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %80) #13
  br label %bb.hf

bb.hf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725, %bb.ep
  %.pn213.pn.pn.pn = phi { ptr, i32 } [ %.pn213.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725 ], [ %i.yd, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #13
  br label %bb.hq

bb.hg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607
  %i.ahd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.44, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit727 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit727: ; preds = %bb.hg
  %i.ahe = load ptr, ptr @_ZSt4cout, align 8, !tbaa !38
  %i.ahf = getelementptr i8, ptr %i.ahe, i64 -24
  %i.ahg = load i64, ptr %i.ahf, align 8
  %i.ahh = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ahg
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 240
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !40 ; 6 uses
  %.not.i.i.i804 = icmp eq ptr %i.ahj, null
  br i1 %.not.i.i.i804, label %bb.hh, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i805

bb.hh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit727
  invoke void @_ZSt16__throw_bad_castv() #15
          to label %.noexc809 unwind label %bb.ae

.noexc809:                                        ; preds = %bb.hh
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i805: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit727
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 56
  %i.ahl = load i8, ptr %i.ahk, align 8, !tbaa !55
  %.not.i1.i.i806 = icmp eq i8 %i.ahl, 0
  br i1 %.not.i1.i.i806, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i805
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahj, i64 67
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !17
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i807

bb.hj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i805
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ahj)
          to label %.noexc810 unwind label %bb.ae

.noexc810:                                        ; preds = %bb.hj
  %i.aho = load ptr, ptr %i.ahj, align 8, !tbaa !38
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 48
  %i.ahq = load ptr, ptr %i.ahp, align 8
  %i.ahr = invoke noundef signext i8 %i.ahq(ptr noundef nonnull align 8 dereferenceable(570) %i.ahj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i807 unwind label %bb.ae, !inline_history !61

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i807: ; preds = %.noexc810, %bb.hi
  %.0.i.i.i808 = phi i8 [ %i.ahn, %bb.hi ], [ %i.ahr, %.noexc810 ]
  %i.ahs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i808)
          to label %.noexc812 unwind label %bb.ae

.noexc812:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i807
  %i.aht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ahs)
          to label %_ZNSolsEPFRSoS_E.exit729 unwind label %bb.ae ; 0 uses

_ZNSolsEPFRSoS_E.exit729:                         ; preds = %.noexc812, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
  %.6159 = phi i32 [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722 ], [ %.4157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit607 ], [ 0, %.noexc812 ]
  %i.ahu = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !100 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ahv, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv14FaceDetectorYNELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.hk
end_hunk_0
