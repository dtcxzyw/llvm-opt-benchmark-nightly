Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/format_test?download=true
inline.NumInlined: 2835
inline.NumDeleted: 523
begin_hunk_0_@_ZN12_GLOBAL__N_121ParseTime_Basics_Test8TestBodyEv:bb.a

bb.cw:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit201
  %i.ig = zext i1 %i.if to i8
  store i8 %i.ig, ptr %33, align 8, !tbaa !40
  %i.ih = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr null, ptr %i.ih, align 8, !tbaa !77
  %i.ii = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i8 1, ptr %i.ii, align 8, !tbaa !79
  br i1 %i.if, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit222, label %bb.cz

bb.cx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit196, %bb.ch
  %.pn81.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit196 ], [ %i.gt, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.ev

bb.cy:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit201
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.cz:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.da unwind label %bb.de

bb.da:                                            ; preds = %bb.cz
  %i.ik = load ptr, ptr %34, align 8, !tbaa !45
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %3, align 8, !tbaa !29
  %i.in = load i64, ptr %i.b, align 8, !tbaa !28
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef %i.im, i64 noundef %i.in)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit203 unwind label %bb.df ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit203: ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154)
          to label %bb.db unwind label %bb.dg

bb.db:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit203
  %i.ip = load ptr, ptr %37, align 8, !tbaa !29
  %i.iq = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !28
  store i64 %i.ir, ptr %36, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.ip, ptr %i.is, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 1, i64 62, ptr nonnull @.str.2, i32 noundef 155, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %36)
          to label %bb.dc unwind label %bb.dh

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.dd unwind label %bb.di

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #22
  %i.it = load ptr, ptr %37, align 8, !tbaa !29   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.dd
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !30
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %i.iy = load ptr, ptr %34, align 8, !tbaa !45   ; 3 uses
  %.not.i.i209 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i209, label %bb.dl, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !13
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(128) %i.iy) #22, !inline_history !0
  br label %bb.dl

bb.de:                                            ; preds = %bb.cz
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit217

bb.df:                                            ; preds = %bb.da
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dg:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit203
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

bb.dh:                                            ; preds = %bb.db
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %bb.dc
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #22
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pn87 = phi { ptr, i32 } [ %i.jg, %bb.di ], [ %i.jf, %bb.dh ] ; 2 uses
  %i.jh = load ptr, ptr %37, align 8, !tbaa !29   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.dj
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !30
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212, %bb.dg
  %.pn87.pn = phi { ptr, i32 } [ %i.je, %bb.dg ], [ %.pn87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212 ], [ %.pn87, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br label %bb.dk

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %bb.df
  %.pn87.pn.pn = phi { ptr, i32 } [ %.pn87.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214 ], [ %i.jd, %bb.df ] ; 2 uses
  %i.jm = load ptr, ptr %34, align 8, !tbaa !45   ; 3 uses
  %.not.i.i215 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i215, label %_ZN7testing7MessageD2Ev.exit217, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216: ; preds = %bb.dk
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !13
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(128) %i.jm) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit217

_ZN7testing7MessageD2Ev.exit217:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216, %bb.dk, %bb.de
  %.pn87.pn.pn.pn = phi { ptr, i32 } [ %i.jc, %bb.de ], [ %.pn87.pn.pn, %bb.dk ], [ %.pn87.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %33) #22
  br label %bb.dq

bb.dl:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  %.pr320 = load ptr, ptr %i.ih, align 8, !tbaa !43 ; 4 uses
  %.not.i.i.i218 = icmp eq ptr %.pr320, null
  br i1 %.not.i.i.i218, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit222, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.jq = load ptr, ptr %.pr320, align 8, !tbaa !29 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.pr320, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i219: ; preds = %bb.dm
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !30
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.ju) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i220

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i220: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i219
  call void @_ZdlPvm(ptr noundef nonnull %.pr320, i64 noundef 32) #24
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit222

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit222: ; preds = %bb.cw, %bb.dl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store i64 -28800, ptr %1, align 8, !tbaa !81
  %i.jv = invoke ptr @_ZN4absl12lts_2026052613time_internal4cctz15fixed_time_zoneERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.dn unwind label %bb.dr

bb.dn:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit222
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  store ptr %i.jv, ptr %39, align 8
  %.sroa.03.0.copyload = load i64, ptr %2, align 8, !tbaa !46
  %.sroa.24.0.copyload = load i32, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !46
  invoke void @_ZNK4absl12lts_202605268TimeZone2AtENS0_4TimeE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::TimeZone::CivilInfo") align 8 %38, ptr noundef nonnull align 8 dereferenceable(8) %39, i64 %.sroa.03.0.copyload, i32 %.sroa.24.0.copyload)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  store i64 2013, ptr %41, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i40 38790175750, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.jw = load i64, ptr %38, align 8, !tbaa !84, !noalias !434
  %i.jx = icmp eq i64 %i.jw, 2013
  %i.jy = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.jz = load <4 x i8>, ptr %i.jy, align 8
  %.fr = freeze <4 x i8> %i.jz
  %i.ka = getelementptr inbounds nuw i8, ptr %38, i64 12
  %i.kb = load i8, ptr %i.ka, align 4
  %i.kc = icmp eq i8 %i.kb, 9
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.kd = icmp eq i32 %.fr.scalar, 135470086
  %op.rdx = select i1 %i.kd, i1 %i.jx, i1 false
  %op.rdx405 = select i1 %op.rdx, i1 %i.kc, i1 false
  br i1 %op.rdx405, label %bb.dp, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %40)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit unwind label %bb.ds

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %bb.do
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %40, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %38)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit unwind label %bb.ds

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.dp, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  %i.ke = load i8, ptr %40, align 8, !tbaa !40, !range !41, !noundef !42
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.ec, label %bb.dt

bb.dq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit217, %bb.cy
  %.pn87.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit217 ], [ %i.ij, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %bb.ev

bb.dr:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit222, %bb.dn
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %bb.eu

bb.ds:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i, %bb.dp
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %bb.eg

bb.dt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.du unwind label %bb.dy

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  %i.ki = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !43 ; 2 uses
  %.not.i.i226 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i226, label %_ZNK7testing15AssertionResult15failure_messageEv.exit227, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit227

_ZNK7testing15AssertionResult15failure_messageEv.exit227: ; preds = %bb.dv, %bb.du
  %i.kl = phi ptr [ %i.kk, %bb.dv ], [ @.str.34, %bb.du ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %43, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 158, ptr noundef %i.kl)
          to label %bb.dw unwind label %bb.dz

bb.dw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit227
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.dx unwind label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.km = load ptr, ptr %42, align 8, !tbaa !45   ; 3 uses
  %.not.i.i228 = icmp eq ptr %i.km, null
  br i1 %.not.i.i228, label %_ZN7testing7MessageD2Ev.exit230, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229: ; preds = %bb.dx
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !13
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(128) %i.km) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit230

_ZN7testing7MessageD2Ev.exit230:                  ; preds = %bb.dx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.ec

bb.dy:                                            ; preds = %bb.dt
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit233

bb.dz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit227
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dw
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #22
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pn93 = phi { ptr, i32 } [ %i.ks, %bb.ea ], [ %i.kr, %bb.dz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.kt = load ptr, ptr %42, align 8, !tbaa !45   ; 3 uses
  %.not.i.i231 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i231, label %_ZN7testing7MessageD2Ev.exit233, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232: ; preds = %bb.eb
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !13
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(128) %i.kt) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit233

_ZN7testing7MessageD2Ev.exit233:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232, %bb.eb, %bb.dy
  %.pn93.pn = phi { ptr, i32 } [ %i.kq, %bb.dy ], [ %.pn93, %bb.eb ], [ %.pn93, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #22
  br label %bb.eg

bb.ec:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit230
  %i.kx = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !43 ; 4 uses
  %.not.i.i234 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i234, label %_ZN7testing15AssertionResultD2Ev.exit238, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !29 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i235: ; preds = %bb.ed
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !30
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i235
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit238

_ZN7testing15AssertionResultD2Ev.exit238:         ; preds = %bb.ec, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  store i64 0, ptr %45, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %.sroa.03.0.copyload.i.i242 = load i64, ptr %i.le, align 8, !tbaa !46, !noalias !435
  %.sroa.24.0..sroa_idx.i.i243 = getelementptr inbounds nuw i8, ptr %38, i64 24
  %.sroa.24.0.copyload.i.i244 = load i32, ptr %.sroa.24.0..sroa_idx.i.i243, align 8, !tbaa !46, !noalias !435
  %i.lf = icmp eq i64 %.sroa.03.0.copyload.i.i242, 0
  %i.lg = icmp eq i32 %.sroa.24.0.copyload.i.i244, 0
  %spec.select.i.i.i = select i1 %i.lf, i1 %i.lg, i1 false
  br i1 %spec.select.i.i.i, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit238
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %44)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.eh

bb.ef:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit238
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %44, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.168, ptr noundef nonnull align 4 dereferenceable(12) %45, ptr noundef nonnull align 4 dereferenceable(12) %i.le)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.eh

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  %i.lh = load i8, ptr %44, align 8, !tbaa !40, !range !41, !noundef !42
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %bb.er, label %bb.ei

bb.eg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit233, %bb.ds
  %.pn93.pn.pn = phi { ptr, i32 } [ %.pn93.pn, %_ZN7testing7MessageD2Ev.exit233 ], [ %i.kh, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %bb.eu

bb.eh:                                            ; preds = %bb.ef, %bb.ee
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %bb.et

bb.ei:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %bb.ej unwind label %bb.en

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  %i.lk = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !43 ; 2 uses
  %.not.i.i247 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i247, label %_ZNK7testing15AssertionResult15failure_messageEv.exit248, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit248

_ZNK7testing15AssertionResult15failure_messageEv.exit248: ; preds = %bb.ek, %bb.ej
  %i.ln = phi ptr [ %i.lm, %bb.ek ], [ @.str.34, %bb.ej ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %47, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 159, ptr noundef %i.ln)
          to label %bb.el unwind label %bb.eo

bb.el:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit248
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %bb.em unwind label %bb.ep

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_127ParseTime_WithTimeZone_Test8TestBodyEv:.noexc.i
  br i1 %i.p, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.f

bb.c:                                             ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.d:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.d
  %i.x = load i64, ptr %i.b, align 8, !tbaa !30
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %bb.c ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.u, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.cy

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %7, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %5, align 8, !tbaa !29
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !28
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ac, i64 noundef %i.ad)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.af = load ptr, ptr %10, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !28
  store i64 %i.ah, ptr %9, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.af, ptr %i.ai, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, i64 62, ptr nonnull @.str.2, i32 noundef 178, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %9)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  %i.aj = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.j
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !30
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ao = load ptr, ptr %7, align 8, !tbaa !45    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %bb.r, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(128) %i.ao) #22, !inline_history !0
  br label %bb.r

bb.k:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit85

bb.l:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.n:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn42 = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.av, %bb.n ] ; 2 uses
  %i.ax = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.p
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !30
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.m
  %.pn42.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %.pn42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %.pn42, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.l
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %i.at, %bb.l ] ; 2 uses
  %i.bc = load ptr, ptr %7, align 8, !tbaa !45    ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit85, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %bb.q
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, %bb.q, %bb.k
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.k ], [ %.pn42.pn.pn, %bb.q ], [ %.pn42.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %6) #22
  br label %bb.v

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.pr = load ptr, ptr %i.r, align 8, !tbaa !43   ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %.pr, align 8, !tbaa !29  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !30
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #24
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %bb.b, %bb.r, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %.sroa.012.0.copyload = load i64, ptr %4, align 8, !tbaa !46
  %.sroa.213.0.copyload = load i32, ptr %i.m, align 8, !tbaa !46
  invoke void @_ZNK4absl12lts_202605268TimeZone2AtENS0_4TimeE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::TimeZone::CivilInfo") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %.sroa.012.0.copyload, i32 %.sroa.213.0.copyload)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store i64 2013, ptr %13, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i40 38790175750, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bl = load i64, ptr %11, align 8, !tbaa !84, !noalias !475
  %i.bm = icmp eq i64 %i.bl, 2013
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bo = load <4 x i8>, ptr %i.bn, align 8
  %.fr = freeze <4 x i8> %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.bq = load i8, ptr %i.bp, align 4
  %i.br = icmp eq i8 %i.bq, 9
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %i.bs = icmp eq i32 %.fr.scalar, 135470086
  %op.rdx281 = select i1 %i.bs, i1 %i.bm, i1 false
  %op.rdx282 = select i1 %op.rdx281, i1 %i.br, i1 false
  br i1 %op.rdx282, label %bb.u, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit unwind label %bb.x

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i: ; preds = %bb.t
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit unwind label %bb.x

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.u, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.bt = load i8, ptr %12, align 8, !tbaa !40, !range !41, !noundef !42
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ah, label %bb.y

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit85, %bb.e
  %.pn42.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit85 ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.cx

bb.w:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.x:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i, %bb.u
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.al

bb.y:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43 ; 2 uses
  %.not.i.i88 = icmp eq ptr %i.by, null
  br i1 %.not.i.i88, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.aa, %bb.z
  %i.ca = phi ptr [ %i.bz, %bb.aa ], [ @.str.34, %bb.z ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 181, ptr noundef %i.ca)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.cb = load ptr, ptr %14, align 8, !tbaa !45   ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit91, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.ac
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(128) %i.cb) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit91

_ZN7testing7MessageD2Ev.exit91:                   ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit94

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn48 = phi { ptr, i32 } [ %i.ch, %bb.af ], [ %i.cg, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ci = load ptr, ptr %14, align 8, !tbaa !45   ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i92, label %_ZN7testing7MessageD2Ev.exit94, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.ag
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(128) %i.ci) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit94

_ZN7testing7MessageD2Ev.exit94:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %bb.ag, %bb.ad
  %.pn48.pn = phi { ptr, i32 } [ %i.cf, %bb.ad ], [ %.pn48, %bb.ag ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #22
  br label %bb.al

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit91
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !43 ; 4 uses
  %.not.i.i95 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i95, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !29 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ai
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !30
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store i64 0, ptr %17, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 0, ptr %.sroa.29.0..sroa_idx, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.ct, align 8, !tbaa !46, !noalias !476
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %.sroa.24.0.copyload.i.i = load i32, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !46, !noalias !476
  %i.cu = icmp eq i64 %.sroa.03.0.copyload.i.i, 0
  %i.cv = icmp eq i32 %.sroa.24.0.copyload.i.i, 0
  %spec.select.i.i.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %spec.select.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.am

bb.ak:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.168, ptr noundef nonnull align 4 dereferenceable(12) %17, ptr noundef nonnull align 4 dereferenceable(12) %i.ct)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.am

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.cw = load i8, ptr %16, align 8, !tbaa !40, !range !41, !noundef !42
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.aw, label %bb.an

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit94, %bb.x
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit94 ], [ %i.bw, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.cw

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.az

bb.an:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !43 ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.da, null
  br i1 %.not.i.i98, label %_ZNK7testing15AssertionResult15failure_messageEv.exit99, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit99

_ZNK7testing15AssertionResult15failure_messageEv.exit99: ; preds = %bb.ap, %bb.ao
  %i.dc = phi ptr [ %i.db, %bb.ap ], [ @.str.34, %bb.ao ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 182, ptr noundef %i.dc)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit99
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_127ParseTime_WithTimeZone_Test8TestBodyEv:.noexc.i
  %i.dw = zext i1 %i.dv to i8
  store i8 %i.dw, ptr %20, align 8, !tbaa !40
  %i.dx = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr null, ptr %i.dx, align 8, !tbaa !77
  %i.dy = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i8 1, ptr %i.dy, align 8, !tbaa !79
  br i1 %i.dv, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit131, label %bb.bb

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit105, %bb.am
  %.pn52.pn.pn = phi { ptr, i32 } [ %.pn52.pn, %_ZN7testing7MessageD2Ev.exit105 ], [ %i.cy, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.cw

bb.ba:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit110
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ea = load ptr, ptr %21, align 8, !tbaa !45
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %5, align 8, !tbaa !29
  %i.ed = load i64, ptr %i.o, align 8, !tbaa !28
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef %i.ec, i64 noundef %i.ed)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit112 unwind label %bb.bh ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit112: ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit112
  %i.ef = load ptr, ptr %24, align 8, !tbaa !29
  %i.eg = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !28
  store i64 %i.eh, ptr %23, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.ef, ptr %i.ei, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 1, i64 62, ptr nonnull @.str.2, i32 noundef 186, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %23)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bf unwind label %bb.bk

bb.bf:                                            ; preds = %bb.be
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #22
  %i.ej = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.bf
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !30
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.eo = load ptr, ptr %21, align 8, !tbaa !45   ; 3 uses
  %.not.i.i118 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i118, label %bb.bn, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !13
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.eo) #22, !inline_history !0
  br label %bb.bn

bb.bg:                                            ; preds = %bb.bb
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit126

bb.bh:                                            ; preds = %bb.bc
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bi:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit112
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.bj:                                            ; preds = %bb.bd
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %bb.be
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #22
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn56 = phi { ptr, i32 } [ %i.ew, %bb.bk ], [ %i.ev, %bb.bj ] ; 2 uses
  %i.ex = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.bl
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !30
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.bi
  %.pn56.pn = phi { ptr, i32 } [ %i.eu, %bb.bi ], [ %.pn56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %.pn56, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %bb.bh
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.et, %bb.bh ] ; 2 uses
  %i.fc = load ptr, ptr %21, align 8, !tbaa !45   ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i124, label %_ZN7testing7MessageD2Ev.exit126, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.bm
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !13
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(128) %i.fc) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit126

_ZN7testing7MessageD2Ev.exit126:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, %bb.bm, %bb.bg
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %i.es, %bb.bg ], [ %.pn56.pn.pn, %bb.bm ], [ %.pn56.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %20) #22
  br label %bb.bs

bb.bn:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %.pr201 = load ptr, ptr %i.dx, align 8, !tbaa !43 ; 4 uses
  %.not.i.i.i127 = icmp eq ptr %.pr201, null
  br i1 %.not.i.i.i127, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit131, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fg = load ptr, ptr %.pr201, align 8, !tbaa !29 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.pr201, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i128: ; preds = %bb.bo
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !30
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i129

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i129: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i128
  call void @_ZdlPvm(ptr noundef nonnull %.pr201, i64 noundef 32) #24
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit131

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit131: ; preds = %bb.ay, %bb.bn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store i64 28800, ptr %1, align 8, !tbaa !81
  %i.fl = invoke ptr @_ZN4absl12lts_2026052613time_internal4cctz15fixed_time_zoneERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit131
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  store ptr %i.fl, ptr %26, align 8
  %.sroa.03.0.copyload = load i64, ptr %4, align 8, !tbaa !46
  %.sroa.24.0.copyload = load i32, ptr %i.m, align 8, !tbaa !46
  invoke void @_ZNK4absl12lts_202605268TimeZone2AtENS0_4TimeE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::TimeZone::CivilInfo") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %26, i64 %.sroa.03.0.copyload, i32 %.sroa.24.0.copyload)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %25, i64 48, i1 false), !tbaa.struct !478
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store i64 2013, ptr %28, align 8
  %.sroa.2.0..sroa_idx.i.i135 = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i40 38790175750, ptr %.sroa.2.0..sroa_idx.i.i135, align 8
  %i.fm = load i64, ptr %11, align 8, !tbaa !84, !noalias !479
  %i.fn = icmp eq i64 %i.fm, 2013
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fp = load <4 x i8>, ptr %i.fo, align 8
  %.fr283 = freeze <4 x i8> %i.fp
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.fr = load i8, ptr %i.fq, align 4
  %i.fs = icmp eq i8 %i.fr, 9
  %.fr283.scalar = bitcast <4 x i8> %.fr283 to i32
  %i.ft = icmp eq i32 %.fr283.scalar, 135470086
  %op.rdx = select i1 %i.ft, i1 %i.fn, i1 false
  %op.rdx280 = select i1 %op.rdx, i1 %i.fs, i1 false
  br i1 %op.rdx280, label %bb.br, label %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i137

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %27)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit141 unwind label %bb.bu

_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i137: ; preds = %bb.bq
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS4_10second_tagEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %27, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit141 unwind label %bb.bu

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit141: ; preds = %bb.br, %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.fu = load i8, ptr %27, align 8, !tbaa !40, !range !41, !noundef !42
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.ce, label %bb.bv

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit126, %bb.ba
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit126 ], [ %i.dz, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.cw

bb.bt:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit131, %bb.bp
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.cw

bb.bu:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detaileqINS1_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread.i.i137, %bb.br
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.ci

bb.bv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.fy = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !43 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i142, label %_ZNK7testing15AssertionResult15failure_messageEv.exit143, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit143

_ZNK7testing15AssertionResult15failure_messageEv.exit143: ; preds = %bb.bx, %bb.bw
  %i.gb = phi ptr [ %i.ga, %bb.bx ], [ @.str.34, %bb.bw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 189, ptr noundef %i.gb)
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit143
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %bb.by
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  %i.gc = load ptr, ptr %29, align 8, !tbaa !45   ; 3 uses
  %.not.i.i144 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i144, label %_ZN7testing7MessageD2Ev.exit146, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.bz
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(128) %i.gc) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit146

_ZN7testing7MessageD2Ev.exit146:                  ; preds = %bb.bz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bv
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit149

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit143
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn62 = phi { ptr, i32 } [ %i.gi, %bb.cc ], [ %i.gh, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  %i.gj = load ptr, ptr %29, align 8, !tbaa !45   ; 3 uses
  %.not.i.i147 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i147, label %_ZN7testing7MessageD2Ev.exit149, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.cd
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !13
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(128) %i.gj) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit149

_ZN7testing7MessageD2Ev.exit149:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, %bb.cd, %bb.ca
  %.pn62.pn = phi { ptr, i32 } [ %i.gg, %bb.ca ], [ %.pn62, %bb.cd ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #22
  br label %bb.ci

bb.ce:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS5_10second_tagEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit141, %_ZN7testing7MessageD2Ev.exit146
  %i.gn = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !43 ; 4 uses
  %.not.i.i150 = icmp eq ptr %i.go, null
  br i1 %.not.i.i150, label %_ZN7testing15AssertionResultD2Ev.exit154, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !29 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i151: ; preds = %bb.cf
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !30
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i151
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit154

_ZN7testing15AssertionResultD2Ev.exit154:         ; preds = %bb.ce, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  store i64 0, ptr %32, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.03.0.copyload.i.i158 = load i64, ptr %i.ct, align 8, !tbaa !46, !noalias !480
  %.sroa.24.0.copyload.i.i160 = load i32, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !46, !noalias !480
  %i.gu = icmp eq i64 %.sroa.03.0.copyload.i.i158, 0
  %i.gv = icmp eq i32 %.sroa.24.0.copyload.i.i160, 0
  %spec.select.i.i.i161 = select i1 %i.gu, i1 %i.gv, i1 false
  br i1 %spec.select.i.i.i161, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit154
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit164 unwind label %bb.cj

bb.ch:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit154
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605268DurationES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.168, ptr noundef nonnull align 4 dereferenceable(12) %32, ptr noundef nonnull align 4 dereferenceable(12) %i.ct)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit164 unwind label %bb.cj

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit164: ; preds = %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %i.gw = load i8, ptr %31, align 8, !tbaa !40, !range !41, !noundef !42
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.ct, label %bb.ck

bb.ci:                                            ; preds = %_ZN7testing7MessageD2Ev.exit149, %bb.bu
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %_ZN7testing7MessageD2Ev.exit149 ], [ %i.fx, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %bb.cw

bb.cj:                                            ; preds = %bb.ch, %bb.cg
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.cv

bb.ck:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605268DurationES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit164
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.cl unwind label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.gz = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !43 ; 2 uses
  %.not.i.i165 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i165, label %_ZNK7testing15AssertionResult15failure_messageEv.exit166, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit166

_ZNK7testing15AssertionResult15failure_messageEv.exit166: ; preds = %bb.cm, %bb.cl
  %i.hc = phi ptr [ %i.hb, %bb.cm ], [ @.str.34, %bb.cl ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 190, ptr noundef %i.hc)
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit166
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %bb.cn
end_hunk_2
