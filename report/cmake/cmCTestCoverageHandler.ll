Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestCoverageHandler?download=true
inline.NumInlined: 4920
inline.NumDeleted: 1039
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN22cmCTestCoverageHandler14ProcessHandlerEv:bb.a
  %i.adf = load ptr, ptr %54, align 8, !tbaa !127
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.adf, i64 %i.ade ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 4
  %i.adi = load i32, ptr %i.adh, align 4, !tbaa !123
  %i.adj = load i32, ptr %i.adg, align 4, !tbaa !123
  %i.adk = sub nsw i32 %i.adi, %i.adj
  store i32 %i.adk, ptr %i.h, align 4, !tbaa !123
  invoke void @_ZN11cmXMLWriter9AttributeIiEEvPKcRKT_(ptr noundef nonnull align 8 dereferenceable(83) %23, ptr noundef nonnull @.str.51, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.ka unwind label %bb.kd

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.adl = load i64, ptr %i.g, align 8, !tbaa !50
  %i.adm = load ptr, ptr %54, align 8, !tbaa !127
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.adm, i64 %i.adl ; 3 uses
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !123
  %i.adp = load i32, ptr %i.e, align 4, !tbaa !123
  %i.adq = add nsw i32 %i.adp, %i.ado
  store i32 %i.adq, ptr %i.e, align 4, !tbaa !123
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !123
  %i.adt = load i32, ptr %i.adn, align 4, !tbaa !123
  %i.adu = sub i32 %i.ads, %i.adt
  %i.adv = load i32, ptr %i.f, align 4, !tbaa !123
  %i.adw = add nsw i32 %i.adu, %i.adv
  store i32 %i.adw, ptr %i.f, align 4, !tbaa !123
  br label %bb.ke

bb.kb:                                            ; preds = %bb.jt
  %i.adx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700

bb.kc:                                            ; preds = %bb.ju
  %i.ady = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adz = load ptr, ptr %67, align 8, !tbaa !55  ; 2 uses
  %i.aea = icmp eq ptr %i.adz, %i.se
  br i1 %i.aea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698: ; preds = %bb.kc
  %i.aeb = load i64, ptr %i.se, align 8, !tbaa !48
  %i.aec = add i64 %i.aeb, 1
  call void @_ZdlPvm(ptr noundef %i.adz, i64 noundef %i.aec) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700: ; preds = %bb.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698, %bb.kb
  %.pn331 = phi { ptr, i32 } [ %i.adx, %bb.kb ], [ %i.ady, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i698 ], [ %i.ady, %bb.kc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  br label %bb.mq

bb.kd:                                            ; preds = %bb.jz
  %i.aed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %bb.mq

bb.ke:                                            ; preds = %bb.ka, %bb.jx
  invoke void @_ZN11cmXMLWriter7ContentINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(83) %23, ptr noundef nonnull align 8 dereferenceable(32) %62)
          to label %bb.kf unwind label %.loopexit1125

bb.kf:                                            ; preds = %bb.ke
  invoke void @_ZN11cmXMLWriter10EndElementEv(ptr noundef nonnull align 8 dereferenceable(83) %23)
          to label %bb.kg unwind label %.loopexit1125

bb.kg:                                            ; preds = %bb.kf
  %i.aee = load i64, ptr %i.g, align 8, !tbaa !50 ; 2 uses
  %i.aef = load ptr, ptr %i.yi, align 8, !tbaa !102 ; 2 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.aef, i64 %i.aee
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !123 ; 2 uses
  %i.aei = icmp eq i32 %i.aeh, 0
  br i1 %i.aei, label %.sink.split, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.aej = icmp sgt i32 %i.aeh, 0
  br i1 %i.aej, label %.sink.split, label %bb.ki

.sink.split:                                      ; preds = %bb.kh, %bb.kg
  %.sink = phi ptr [ %i.d, %bb.kg ], [ %i.c, %bb.kh ] ; 2 uses
  %i.aek = load i32, ptr %.sink, align 4, !tbaa !123
  %i.ael = add nsw i32 %i.aek, 1
  store i32 %i.ael, ptr %.sink, align 4, !tbaa !123
  br label %bb.ki

bb.ki:                                            ; preds = %.sink.split, %bb.kh
  %i.aem = add i64 %i.aee, 1                      ; 2 uses
  store i64 %i.aem, ptr %i.g, align 8, !tbaa !50
  %i.aen = load ptr, ptr %i.aaw, align 8, !tbaa !124
  %i.aeo = ptrtoint ptr %i.aen to i64
  %i.aep = ptrtoint ptr %i.aef to i64
  %i.aeq = sub i64 %i.aeo, %i.aep
  %i.aer = ashr exact i64 %i.aeq, 2
  %i.aes = icmp ult i64 %i.aem, %i.aer
  br i1 %i.aes, label %.lr.ph1410, label %.loopexit1124, !llvm.loop !261

.loopexit1124:                                    ; preds = %bb.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688
  %.189 = phi i32 [ %i.acc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688 ], [ %.0881417, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673 ], [ %.0881417, %bb.ki ]
  %i.aet = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools17GetLineFromStreamERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbm(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef null, i64 noundef -1)
          to label %bb.kj unwind label %.loopexit.split-lp1126

bb.kj:                                            ; preds = %.loopexit1124
  br i1 %i.aet, label %bb.kk, label %bb.ku

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %69)
          to label %bb.kl unwind label %bb.ko

bb.kl:                                            ; preds = %bb.kk
  %i.aeu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull @.str.52, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit702 unwind label %bb.kp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit702: ; preds = %bb.kl
  %i.aev = load ptr, ptr %45, align 8, !tbaa !55
  %i.aew = load i64, ptr %i.rt, align 8, !tbaa !47
  %i.aex = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef %i.aev, i64 noundef %i.aew)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit704 unwind label %bb.kp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit704: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit702
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #22
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr noundef nonnull align 8 dereferenceable(112) %69)
          to label %bb.km unwind label %bb.kq

bb.km:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit704
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %bb.kn unwind label %bb.kr

bb.kn:                                            ; preds = %bb.km
  %i.aey = load ptr, ptr %70, align 8, !tbaa !55  ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.sh
  br i1 %i.aez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i705

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i705: ; preds = %bb.kn
  %i.afa = load i64, ptr %i.sh, align 8, !tbaa !48
  %i.afb = add i64 %i.afa, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707: ; preds = %bb.kn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i705
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %69) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  br label %bb.ku

bb.ko:                                            ; preds = %bb.kk
  %i.afc = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.kp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit702, %bb.kl
  %i.afd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.kq:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit704
  %i.afe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710

bb.kr:                                            ; preds = %bb.km
  %i.aff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afg = load ptr, ptr %70, align 8, !tbaa !55  ; 2 uses
  %i.afh = icmp eq ptr %i.afg, %i.sh
  br i1 %i.afh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708: ; preds = %bb.kr
  %i.afi = load i64, ptr %i.sh, align 8, !tbaa !48
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.afg, i64 noundef %i.afj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710: ; preds = %bb.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708, %bb.kq
  %.pn308 = phi { ptr, i32 } [ %i.afe, %bb.kq ], [ %i.aff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i708 ], [ %i.aff, %bb.kr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #22
  br label %bb.ks

bb.ks:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710, %bb.kp
  %.pn308.pn = phi { ptr, i32 } [ %.pn308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710 ], [ %i.afd, %bb.kp ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %69) #22
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.ko
  %.pn308.pn.pn = phi { ptr, i32 } [ %.pn308.pn, %bb.ks ], [ %i.afc, %bb.ko ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  br label %bb.mq

bb.ku:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit707, %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !129
  %i.afk = load i32, ptr %i.c, align 4, !tbaa !123 ; 3 uses
  %i.afl = load i32, ptr %i.d, align 4, !tbaa !123 ; 2 uses
  %i.afm = add nsw i32 %i.afl, %i.afk             ; 3 uses
  %i.afn = icmp sgt i32 %i.afm, 0
  br i1 %i.afn, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %134 = uitofp nneg i32 %i.afm to float
  %135 = add nuw nsw i32 %i.afm, 10
  %i.afo = uitofp nneg i32 %135 to float
  %i.afp = insertelement <2 x i32> poison, i32 %i.afk, i64 0
  %i.afq = shufflevector <2 x i32> %i.afp, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afr = add nsw <2 x i32> %i.afq, <i32 0, i32 10>
  %i.afs = sitofp <2 x i32> %i.afr to <2 x float>
  %i.aft = insertelement <2 x float> poison, float %134, i64 0
  %i.afu = insertelement <2 x float> %i.aft, float %i.afo, i64 1
  %i.afv = fdiv <2 x float> %i.afs, %i.afu        ; 2 uses
  %i.afw = extractelement <2 x float> %i.afv, i64 0
  %i.afx = fmul float %i.afw, 1.000000e+02
  store float %i.afx, ptr %i.i, align 4, !tbaa !129
  %i.afy = extractelement <2 x float> %i.afv, i64 1
  store float %i.afy, ptr %i.j, align 4, !tbaa !129
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku
  %i.afz = sext i32 %i.afk to i64
  %i.aga = load i64, ptr %i.a, align 8, !tbaa !50
  %i.agb = add nsw i64 %i.aga, %i.afz
  store i64 %i.agb, ptr %i.a, align 8, !tbaa !50
  %i.agc = sext i32 %i.afl to i64
  %i.agd = load i64, ptr %i.b, align 8, !tbaa !50
  %i.age = add nsw i64 %i.agd, %i.agc
  store i64 %i.age, ptr %i.b, align 8, !tbaa !50
  invoke void @_ZN11cmXMLWriter10EndElementEv(ptr noundef nonnull align 8 dereferenceable(83) %23)
          to label %bb.kx unwind label %bb.lx

bb.kx:                                            ; preds = %bb.kw
  invoke void @_ZN11cmXMLWriter10EndElementEv(ptr noundef nonnull align 8 dereferenceable(83) %23)
          to label %bb.ky unwind label %bb.lx

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %72)
          to label %bb.kz unwind label %bb.ly

bb.kz:                                            ; preds = %bb.ky
  invoke void @_ZN11cmXMLWriter12StartElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(83) %22, ptr noundef nonnull align 8 dereferenceable(32) %71)
          to label %bb.la unwind label %bb.lz

bb.la:                                            ; preds = %bb.kz
  %i.agf = load ptr, ptr %71, align 8, !tbaa !55  ; 2 uses
  %i.agg = icmp eq ptr %i.agf, %i.si
  br i1 %i.agg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711: ; preds = %bb.la
  %i.agh = load i64, ptr %i.si, align 8, !tbaa !48
  %i.agi = add i64 %i.agh, 1
  call void @_ZdlPvm(ptr noundef %i.agf, i64 noundef %i.agi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713: ; preds = %bb.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i711
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #22
  invoke void @_ZN11cmXMLWriter9AttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcRKT_(ptr noundef nonnull align 8 dereferenceable(83) %22, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %bb.lb unwind label %bb.lx

bb.lb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #22
  %i.agj = load ptr, ptr %i.t, align 8, !tbaa !42
  invoke void @_ZN7cmCTest18GetShortPathToFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, ptr noundef nonnull align 8 dereferenceable(8) %i.agj, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %bb.lc unwind label %bb.ma

bb.lc:                                            ; preds = %bb.lb
  invoke void @_ZN11cmXMLWriter9AttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKcRKT_(ptr noundef nonnull align 8 dereferenceable(83) %22, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(32) %73)
          to label %bb.ld unwind label %bb.mb

bb.ld:                                            ; preds = %bb.lc
  %i.agk = load ptr, ptr %73, align 8, !tbaa !55  ; 2 uses
  %i.agl = icmp eq ptr %i.agk, %i.sj
  br i1 %i.agl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i714

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i714: ; preds = %bb.ld
  %i.agm = load i64, ptr %i.sj, align 8, !tbaa !48
  %i.agn = add i64 %i.agm, 1
  call void @_ZdlPvm(ptr noundef %i.agk, i64 noundef %i.agn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716: ; preds = %bb.ld, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i714
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  %i.ago = load i32, ptr %i.c, align 4, !tbaa !123
  %i.agp = load i32, ptr %i.d, align 4, !tbaa !123
  %i.agq = add nsw i32 %i.agp, %i.ago
  %i.agr = icmp sgt i32 %i.agq, 0
  %i.ags = select i1 %i.agr, ptr @.str.54, ptr @.str.55
  store ptr %i.ags, ptr %i.k, align 8, !tbaa !49
  invoke void @_ZN11cmXMLWriter9AttributeIPKcEEvS2_RKT_(ptr noundef nonnull align 8 dereferenceable(83) %22, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.le unwind label %bb.mc

bb.le:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %75)
          to label %bb.lf unwind label %bb.md

bb.lf:                                            ; preds = %bb.le
  invoke void @_ZN11cmXMLWriter7ElementIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(83) %22, ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.lg unwind label %bb.me

bb.lg:                                            ; preds = %bb.lf
  %i.agt = load ptr, ptr %74, align 8, !tbaa !55  ; 2 uses
  %i.agu = icmp eq ptr %i.agt, %i.sk
  br i1 %i.agu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i717

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i717: ; preds = %bb.lg
  %i.agv = load i64, ptr %i.sk, align 8, !tbaa !48
  %i.agw = add i64 %i.agv, 1
  call void @_ZdlPvm(ptr noundef %i.agt, i64 noundef %i.agw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719: ; preds = %bb.lg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i717
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %77)
          to label %bb.lh unwind label %bb.mf

bb.lh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719
  invoke void @_ZN11cmXMLWriter7ElementIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(83) %22, ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.li unwind label %bb.mg

bb.li:                                            ; preds = %bb.lh
  %i.agx = load ptr, ptr %76, align 8, !tbaa !55  ; 2 uses
  %i.agy = icmp eq ptr %i.agx, %i.sl
  br i1 %i.agy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720: ; preds = %bb.li
  %i.agz = load i64, ptr %i.sl, align 8, !tbaa !48
  %i.aha = add i64 %i.agz, 1
  call void @_ZdlPvm(ptr noundef %i.agx, i64 noundef %i.aha) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722: ; preds = %bb.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %79)
          to label %bb.lj unwind label %bb.mh

bb.lj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722
  invoke void @_ZN11cmXMLWriter7ElementIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(83) %22, ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.lk unwind label %bb.mi

bb.lk:                                            ; preds = %bb.lj
  %i.ahb = load ptr, ptr %78, align 8, !tbaa !55  ; 2 uses
  %i.ahc = icmp eq ptr %i.ahb, %i.sm
  br i1 %i.ahc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723: ; preds = %bb.lk
  %i.ahd = load i64, ptr %i.sm, align 8, !tbaa !48
  %i.ahe = add i64 %i.ahd, 1
  call void @_ZdlPvm(ptr noundef %i.ahb, i64 noundef %i.ahe) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725: ; preds = %bb.lk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %81)
          to label %bb.ll unwind label %bb.mj

bb.ll:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725
  invoke void @_ZN11cmXMLWriter7ElementIiEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(83) %22, ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.lm unwind label %bb.mk

bb.lm:                                            ; preds = %bb.ll
  %i.ahf = load ptr, ptr %80, align 8, !tbaa !55  ; 2 uses
  %i.ahg = icmp eq ptr %i.ahf, %i.sn
  br i1 %i.ahg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i726

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i726: ; preds = %bb.lm
  %i.ahh = load i64, ptr %i.sn, align 8, !tbaa !48
  %i.ahi = add i64 %i.ahh, 1
  call void @_ZdlPvm(ptr noundef %i.ahf, i64 noundef %i.ahi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728: ; preds = %bb.lm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i726
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %83)
          to label %bb.ln unwind label %bb.ml

bb.ln:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728
  invoke void @_ZN11cmXMLWriter7ElementIfEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(83) %22, ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.lo unwind label %bb.mm

bb.lo:                                            ; preds = %bb.ln
  %i.ahj = load ptr, ptr %82, align 8, !tbaa !55  ; 2 uses
  %i.ahk = icmp eq ptr %i.ahj, %i.so
  br i1 %i.ahk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i729

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i729: ; preds = %bb.lo
  %i.ahl = load i64, ptr %i.so, align 8, !tbaa !48
  %i.ahm = add i64 %i.ahl, 1
  call void @_ZdlPvm(ptr noundef %i.ahj, i64 noundef %i.ahm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731: ; preds = %bb.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i729
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #22
end_hunk_0
