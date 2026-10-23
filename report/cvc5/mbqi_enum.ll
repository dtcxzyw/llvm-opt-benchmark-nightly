Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/mbqi_enum?download=true
inline.NumInlined: 3269
inline.NumDeleted: 1312
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers8MbqiEnum22constructInstantiationERKNS0_12NodeTemplateILb1EEES7_RKSt6vectorIS5_SaIS5_EERSA_RKSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEERS8_ISH_IS5_NS1_11InferenceIdEESaISO_EE:.critedge297
bb.iu:                                            ; preds = %bb.it
  %i.adz = landingpad { ptr, i32 }
          catch ptr null
  %i.aea = extractvalue { ptr, i32 } %i.adz, 0
  call void @__clang_call_terminate(ptr %i.aea) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit781: ; preds = %bb.ir, %bb.is, %bb.it
  %i.aeb = load i64, ptr %i.acf, align 8          ; 3 uses
  %i.aec = and i64 %i.aeb, 1152920405095219200
  %.not.i.i782 = icmp eq i64 %i.aec, 1152920405095219200
  br i1 %.not.i.i782, label %bb.jo, label %bb.iv, !prof !256

bb.iv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit781
  %i.aed = add i64 %i.aeb, 1152920405095219200
  %i.aee = and i64 %i.aed, 1152920405095219200    ; 2 uses
  %i.aef = and i64 %i.aeb, -1152920405095219201
  %i.aeg = or disjoint i64 %i.aee, %i.aef
  store i64 %i.aeg, ptr %i.acf, align 8
  %i.aeh = icmp eq i64 %i.aee, 0
  br i1 %i.aeh, label %bb.iw, label %bb.jo, !prof !256

bb.iw:                                            ; preds = %bb.iv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acf)
          to label %bb.jo unwind label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aei = landingpad { ptr, i32 }
          catch ptr null
  %i.aej = extractvalue { ptr, i32 } %i.aei, 0
  call void @__clang_call_terminate(ptr %i.aej) #26
  unreachable

bb.iy:                                            ; preds = %bb.gu
  %i.aek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.iz:                                            ; preds = %bb.hb, %bb.gy
  %i.ael = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #18
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %.pn256 = phi { ptr, i32 } [ %i.ael, %bb.iz ], [ %i.aek, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  br label %bb.kd

bb.jb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit678
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %bb.jd

bb.jc:                                            ; preds = %bb.hl, %bb.hi
  %i.aen = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #18
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %.pn258 = phi { ptr, i32 } [ %i.aen, %bb.jc ], [ %i.aem, %bb.jb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.kd

bb.je:                                            ; preds = %bb.hr
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6ResultD2Ev.exit808

bb.jf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit704
  %i.aep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #18
  br label %_ZN4cvc58internal6ResultD2Ev.exit808

bb.jg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit707
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6ResultD2Ev.exit787

bb.jh:                                            ; preds = %bb.hw
  %i.aer = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aes = load ptr, ptr %i.lb, align 8, !tbaa !311 ; 2 uses
  %i.aet = icmp eq ptr %i.aes, %i.lc
  br i1 %i.aet, label %_ZN4cvc58internal6ResultD2Ev.exit787, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i785

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i785: ; preds = %bb.jh
  %i.aeu = load i64, ptr %i.lc, align 8, !tbaa !308
  %i.aev = add i64 %i.aeu, 1
  call void @_ZdlPvm(ptr noundef %i.aes, i64 noundef %i.aev) #27
  br label %_ZN4cvc58internal6ResultD2Ev.exit787

_ZN4cvc58internal6ResultD2Ev.exit787:             ; preds = %bb.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i785, %bb.jg
  %.pn260 = phi { ptr, i32 } [ %i.aeq, %bb.jg ], [ %i.aer, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i785 ], [ %i.aer, %bb.jh ]
  %i.aew = load ptr, ptr %41, align 8, !tbaa !311 ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.kz
  br i1 %i.aex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i788

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i788: ; preds = %_ZN4cvc58internal6ResultD2Ev.exit787
  %i.aey = load i64, ptr %i.kz, align 8, !tbaa !308
  %i.aez = add i64 %i.aey, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.aez) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790: ; preds = %_ZN4cvc58internal6ResultD2Ev.exit787, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i788
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  br label %bb.kc

bb.ji:                                            ; preds = %bb.ik, %bb.ih, %bb.ie, %bb.ib, %bb.jp
  %i.afa = landingpad { ptr, i32 }
          cleanup
  br label %bb.kc

bb.jj:                                            ; preds = %bb.in, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit770
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.jk:                                            ; preds = %bb.iq, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit774
  %i.afc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

bb.jl:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit778
  %i.afd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #18
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %.pn267 = phi { ptr, i32 } [ %i.afd, %bb.jl ], [ %i.afc, %bb.jk ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #18
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jj
  %.pn267.pn = phi { ptr, i32 } [ %.pn267, %bb.jm ], [ %i.afb, %bb.jj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br label %bb.kc

bb.jo:                                            ; preds = %bb.iw, %bb.iv, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit781
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br i1 %i.lz, label %bb.jp, label %.thread

bb.jp:                                            ; preds = %bb.jo
  %i.afe = load ptr, ptr %i.ky, align 8, !tbaa !362, !nonnull !211, !align !212
  %i.aff = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers16InstStrategyMbqi16tryInstantiationERKNS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EENS1_11InferenceIdERKSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEE(ptr noundef nonnull align 8 dereferenceable(632) %i.afe, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 172, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.jq unwind label %bb.ji     ; 2 uses

bb.jq:                                            ; preds = %bb.jp
  %i.afg = or i1 %.1146, %i.aff
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714, %bb.jq, %bb.jo
  %.2147 = phi i1 [ %i.afg, %bb.jq ], [ %.1146, %bb.jo ], [ %.1146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714 ]
  %.1142.in = phi i1 [ %i.aff, %bb.jq ], [ true, %bb.jo ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714 ] ; 2 uses
  %or.cond9 = select i1 %.1142.in, i1 true, i1 %.2139
  %i.afh = load ptr, ptr %i.ld, align 8, !tbaa !311 ; 2 uses
  %i.afi = icmp eq ptr %i.afh, %i.le
  br i1 %i.afi, label %_ZN4cvc58internal6ResultD2Ev.exit796, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794: ; preds = %.thread
  %i.afj = load i64, ptr %i.le, align 8, !tbaa !308
  %i.afk = add i64 %i.afj, 1
  call void @_ZdlPvm(ptr noundef %i.afh, i64 noundef %i.afk) #27
  br label %_ZN4cvc58internal6ResultD2Ev.exit796

_ZN4cvc58internal6ResultD2Ev.exit796:             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  %i.afl = load ptr, ptr %32, align 8, !tbaa !262 ; 3 uses
  %i.afm = load i64, ptr %i.afl, align 8          ; 3 uses
  %i.afn = and i64 %i.afm, 1152920405095219200
  %.not.i.i797 = icmp eq i64 %i.afn, 1152920405095219200
  br i1 %.not.i.i797, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799, label %bb.jr, !prof !256

bb.jr:                                            ; preds = %_ZN4cvc58internal6ResultD2Ev.exit796
  %i.afo = add i64 %i.afm, 1152920405095219200
  %i.afp = and i64 %i.afo, 1152920405095219200    ; 2 uses
  %i.afq = and i64 %i.afm, -1152920405095219201
  %i.afr = or disjoint i64 %i.afp, %i.afq
  store i64 %i.afr, ptr %i.afl, align 8
  %i.afs = icmp eq i64 %i.afp, 0
  br i1 %i.afs, label %bb.js, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799, !prof !256

bb.js:                                            ; preds = %bb.jr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799 unwind label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.aft = landingpad { ptr, i32 }
          catch ptr null
  %i.afu = extractvalue { ptr, i32 } %i.aft, 0
  call void @__clang_call_terminate(ptr %i.afu) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799: ; preds = %_ZN4cvc58internal6ResultD2Ev.exit796, %bb.jr, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %45 = xor i1 %.1142.in, true
  br label %bb.ju

bb.ju:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit638, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799
  %.4171 = phi i1 [ %or.cond9, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit638 ]
  %.3148 = phi i1 [ %.2147, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799 ], [ %.1146, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit638 ] ; 3 uses
  %.2143 = phi i1 [ %45, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799 ], [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit638 ]
  %.3140 = phi i1 [ %.2139, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit799 ], [ %.1138, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit638 ]
  %i.afv = load ptr, ptr %24, align 8, !tbaa !262 ; 3 uses
  %i.afw = load i64, ptr %i.afv, align 8          ; 3 uses
  %i.afx = and i64 %i.afw, 1152920405095219200
  %.not.i.i800 = icmp eq i64 %i.afx, 1152920405095219200
  br i1 %.not.i.i800, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit802, label %bb.jv, !prof !256

bb.jv:                                            ; preds = %bb.ju
  %i.afy = add i64 %i.afw, 1152920405095219200
  %i.afz = and i64 %i.afy, 1152920405095219200    ; 2 uses
  %i.aga = and i64 %i.afw, -1152920405095219201
  %i.agb = or disjoint i64 %i.afz, %i.aga
  store i64 %i.agb, ptr %i.afv, align 8
  %i.agc = icmp eq i64 %i.afz, 0
  br i1 %i.agc, label %bb.jw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit802, !prof !256

bb.jw:                                            ; preds = %bb.jv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit802 unwind label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.agd = landingpad { ptr, i32 }
          catch ptr null
  %i.age = extractvalue { ptr, i32 } %i.agd, 0
  call void @__clang_call_terminate(ptr %i.age) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit802: ; preds = %bb.ju, %bb.jv, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.agf = load ptr, ptr %23, align 8, !tbaa !262 ; 3 uses
  %i.agg = load i64, ptr %i.agf, align 8          ; 3 uses
  %i.agh = and i64 %i.agg, 1152920405095219200
  %.not.i.i803 = icmp eq i64 %i.agh, 1152920405095219200
  br i1 %.not.i.i803, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805, label %bb.jy, !prof !256

bb.jy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit802
  %i.agi = add i64 %i.agg, 1152920405095219200
  %i.agj = and i64 %i.agi, 1152920405095219200    ; 2 uses
  %i.agk = and i64 %i.agg, -1152920405095219201
  %i.agl = or disjoint i64 %i.agj, %i.agk
  store i64 %i.agl, ptr %i.agf, align 8
  %i.agm = icmp eq i64 %i.agj, 0
  br i1 %i.agm, label %bb.jz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805, !prof !256

bb.jz:                                            ; preds = %bb.jy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805 unwind label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.agn = landingpad { ptr, i32 }
          catch ptr null
  %i.ago = extractvalue { ptr, i32 } %i.agn, 0
  call void @__clang_call_terminate(ptr %i.ago) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit802, %bb.jy, %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br i1 %.4171, label %bb.kb, label %.critedge313

bb.kb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805
  br i1 %.2143, label %bb.cy, label %.loopexit, !llvm.loop !529

bb.kc:                                            ; preds = %bb.jn, %bb.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790
  %.pn270 = phi { ptr, i32 } [ %.pn260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790 ], [ %i.afa, %bb.ji ], [ %.pn267.pn, %bb.jn ] ; 2 uses
  %i.agp = load ptr, ptr %i.ld, align 8, !tbaa !311 ; 2 uses
  %i.agq = icmp eq ptr %i.agp, %i.le
  br i1 %i.agq, label %_ZN4cvc58internal6ResultD2Ev.exit808, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i806

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i806: ; preds = %bb.kc
  %i.agr = load i64, ptr %i.le, align 8, !tbaa !308
  %i.ags = add i64 %i.agr, 1
  call void @_ZdlPvm(ptr noundef %i.agp, i64 noundef %i.ags) #27
  br label %_ZN4cvc58internal6ResultD2Ev.exit808

_ZN4cvc58internal6ResultD2Ev.exit808:             ; preds = %bb.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i806, %bb.jf, %bb.je
  %.pn270.pn = phi { ptr, i32 } [ %i.aeo, %bb.je ], [ %i.aep, %bb.jf ], [ %.pn270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i806 ], [ %.pn270, %bb.kc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.kd

bb.kd:                                            ; preds = %_ZN4cvc58internal6ResultD2Ev.exit808, %bb.jd, %bb.ja
  %.pn270.pn.pn = phi { ptr, i32 } [ %.pn270.pn, %_ZN4cvc58internal6ResultD2Ev.exit808 ], [ %.pn256, %bb.ja ], [ %.pn258, %bb.jd ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #18
  br label %.body667

.body667:                                         ; preds = %bb.gt, %bb.kd
  %.pn270.pn.pn.pn = phi { ptr, i32 } [ %.pn270.pn.pn, %bb.kd ], [ %i.wf, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %.body503

.body503:                                         ; preds = %bb.fa, %bb.dj, %.body667, %bb.gp, %bb.fi, %bb.fd
  %.pn270.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn270.pn.pn.pn, %.body667 ], [ %.pn248, %bb.fd ], [ %.pn253.pn, %bb.gp ], [ %i.mp, %bb.dj ], [ %.pn250.pn, %bb.fi ], [ %i.sg, %bb.fa ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #18
  br label %.body500

.body500:                                         ; preds = %bb.de, %.body503
  %.pn270.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn270.pn.pn.pn.pn, %.body503 ], [ %i.mh, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #18
  br label %bb.ke

bb.ke:                                            ; preds = %.body500, %bb.ez
  %.pn270.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn270.pn.pn.pn.pn.pn, %.body500 ], [ %i.sf, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.kq

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit850: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit850.lr.ph, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit
  %.01321213 = phi i64 [ 0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit850.lr.ph ], [ %i.aif, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit ] ; 2 uses
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.01321213
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !349 ; 2 uses
  %i.agv = load ptr, ptr %i.lh, align 8, !tbaa !345
  %i.agw = getelementptr inbounds nuw [56 x i8], ptr %i.agv, i64 %i.agu
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  %i.agx = load ptr, ptr %4, align 8, !tbaa !269
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false), !alias.scope !545
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !303, !noalias !545 ; 2 uses
  %.not.i851 = icmp eq ptr %i.agz, null
  br i1 %.not.i851, label %_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit, label %bb.kf

bb.kf:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit850
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %i.agu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !545
  invoke void @_ZN4cvc58internal6theory11quantifiers8MVarInfo23ChoiceElimNodeConverter19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.509") align 8 %7, ptr noundef nonnull align 8 dereferenceable(352) %i.agz, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.aha)
          to label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i unwind label %bb.kg, !noalias !545

_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i: ; preds = %bb.kf
  %i.ahb = load ptr, ptr %7, align 8, !tbaa !339, !noalias !545 ; 2 uses
  store ptr %i.ahb, ptr %44, align 8, !tbaa !339, !alias.scope !545
  %i.ahc = load <2 x ptr>, ptr %i.lk, align 8, !tbaa !331, !noalias !545
  %i.ahd = load ptr, ptr %i.lk, align 8, !tbaa !336, !noalias !545
  store <2 x ptr> %i.ahc, ptr %i.li, align 8, !tbaa !331, !alias.scope !545
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !545
  br label %_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit

bb.kg:                                            ; preds = %bb.kf
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !545
  br label %.body852

_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit: ; preds = %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit850
  %i.ahf = phi ptr [ %i.ahd, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit850 ]
  %i.ahg = phi ptr [ %i.ahb, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit850 ]
  %i.ahh = load ptr, ptr %i.ll, align 8, !tbaa !331
  %i.ahi = load ptr, ptr %6, align 8, !tbaa !331  ; 2 uses
  %i.ahj = ptrtoint ptr %i.ahh to i64
  %i.ahk = ptrtoint ptr %i.ahi to i64
  %i.ahl = sub i64 %i.ahj, %i.ahk
  %i.ahm = getelementptr inbounds i8, ptr %i.ahi, i64 %i.ahl
  invoke void @_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEEvSE_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ahm, ptr %i.ahg, ptr %i.ahf)
          to label %bb.kh unwind label %bb.km

bb.kh:                                            ; preds = %_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit
  %i.ahn = load ptr, ptr %44, align 8, !tbaa !339 ; 3 uses
  %i.aho = load ptr, ptr %i.li, align 8, !tbaa !336 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ahn, %i.aho
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.kh, %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ahz, %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i ], [ %i.ahn, %bb.kh ] ; 2 uses
  %i.ahp = load ptr, ptr %.05.i.i.i, align 8, !tbaa !262 ; 3 uses
  %i.ahq = load i64, ptr %i.ahp, align 8          ; 3 uses
  %i.ahr = and i64 %i.ahq, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ahr, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i, label %bb.ki, !prof !256

bb.ki:                                            ; preds = %.lr.ph.i.i.i
  %i.ahs = add i64 %i.ahq, 1152920405095219200
  %i.aht = and i64 %i.ahs, 1152920405095219200    ; 2 uses
  %i.ahu = and i64 %i.ahq, -1152920405095219201
  %i.ahv = or disjoint i64 %i.aht, %i.ahu
  store i64 %i.ahv, ptr %i.ahp, align 8
  %i.ahw = icmp eq i64 %i.aht, 0
  br i1 %i.ahw, label %bb.kj, label %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i, !prof !256

bb.kj:                                            ; preds = %bb.ki
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahp)
          to label %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i unwind label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.ahx = landingpad { ptr, i32 }
          catch ptr null
  %i.ahy = extractvalue { ptr, i32 } %i.ahx, 0
  call void @__clang_call_terminate(ptr %i.ahy) #26
  unreachable

_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i: ; preds = %bb.kj, %bb.ki, %.lr.ph.i.i.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ahz, %i.aho
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %44, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.kh
  %i.aia = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.ahn, %bb.kh ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aia, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit, label %bb.kl

bb.kl:                                            ; preds = %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exit.i
  %i.aib = load ptr, ptr %i.lj, align 8, !tbaa !333
  %i.aic = ptrtoint ptr %i.aib to i64
  %i.aid = ptrtoint ptr %i.aia to i64
  %i.aie = sub i64 %i.aic, %i.aid
  call void @_ZdlPvm(ptr noundef nonnull %i.aia, i64 noundef %i.aie) #27
  br label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exit.i, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  %i.aif = add nuw i64 %.01321213, 1              ; 2 uses
  %exitcond1220.not = icmp eq i64 %i.aif, %i.kn
  br i1 %exitcond1220.not, label %.critedge313, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit850, !llvm.loop !536

bb.km:                                            ; preds = %_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit
  %i.aig = landingpad { ptr, i32 }
          cleanup
  br label %.body852

.body852:                                         ; preds = %bb.kg, %bb.km
  %.pn282.pn = phi { ptr, i32 } [ %i.aig, %bb.km ], [ %i.ahe, %bb.kg ]
  call void @_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  br label %bb.kq

.critedge313:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit, %bb.cp
  %.10 = phi i1 [ %.3148, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit ], [ false, %bb.cp ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit805 ]
  %i.aih = load ptr, ptr %19, align 8, !tbaa !262 ; 3 uses
  %i.aii = load i64, ptr %i.aih, align 8          ; 3 uses
  %i.aij = and i64 %i.aii, 1152920405095219200
  %.not.i.i870 = icmp eq i64 %i.aij, 1152920405095219200
  br i1 %.not.i.i870, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit872, label %bb.kn, !prof !256

bb.kn:                                            ; preds = %.critedge313
  %i.aik = add i64 %i.aii, 1152920405095219200
  %i.ail = and i64 %i.aik, 1152920405095219200    ; 2 uses
  %i.aim = and i64 %i.aii, -1152920405095219201
  %i.ain = or disjoint i64 %i.ail, %i.aim
  store i64 %i.ain, ptr %i.aih, align 8
  %i.aio = icmp eq i64 %i.ail, 0
  br i1 %i.aio, label %bb.ko, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit872, !prof !256

bb.ko:                                            ; preds = %bb.kn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aih)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit872 unwind label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.aip = landingpad { ptr, i32 }
          catch ptr null
  %i.aiq = extractvalue { ptr, i32 } %i.aip, 0
  call void @__clang_call_terminate(ptr %i.aiq) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit872: ; preds = %.critedge313, %bb.kn, %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %.loopexit1143

bb.kq:                                            ; preds = %.body852, %bb.ke, %bb.cw, %bb.cv
  %.pn282.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn270.pn.pn.pn.pn.pn.pn, %bb.ke ], [ %i.lq, %bb.cw ], [ %.pn282.pn, %.body852 ], [ %.pn243.pn, %bb.cv ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
end_hunk_0
