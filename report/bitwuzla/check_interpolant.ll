inline.NumInlined: 1042
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4bzla5check16CheckInterpolant5checkERKSt13unordered_setINS_4NodeESt4hashIS3_ESt8equal_toIS3_ESaIS3_EERKS3_:bb.a
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %bb.ds
  %i.ij = load i64, ptr %i.hk, align 8, !tbaa !31
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  br label %bb.iq

bb.dt:                                            ; preds = %._crit_edge703, %bb.dh, %bb.dg, %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

.lr.ph702:                                        ; preds = %bb.di, %bb.du
  %.sroa.0586.0700 = phi ptr [ %i.im, %bb.du ], [ %i.hw, %bb.di ] ; 2 uses
  invoke void @_ZN4bzla14SolvingContext14assert_formulaERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(12744) %25, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0586.0700)
          to label %bb.du unwind label %bb.dv

bb.du:                                            ; preds = %.lr.ph702
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0586.0700, i64 8 ; 2 uses
  %.not629 = icmp eq ptr %i.im, %i.hy
  br i1 %.not629, label %._crit_edge703, label %.lr.ph702

bb.dv:                                            ; preds = %.lr.ph702
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.dw:                                            ; preds = %._crit_edge703
  br i1 %i.ia, label %bb.dx, label %.critedge364

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  %i.io = load ptr, ptr %i.k, align 8, !tbaa !20, !nonnull !15, !align !16
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %27, ptr noundef nonnull align 8 dereferenceable(56) %i.io, i64 noundef 1)
          to label %bb.dy unwind label %bb.ef

bb.dy:                                            ; preds = %bb.dx
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %bb.dz unwind label %bb.eg

bb.dz:                                            ; preds = %bb.dy
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef nonnull @.str.8, i64 noundef 16)
          to label %.critedge363 unwind label %bb.eg ; 0 uses

.critedge363:                                     ; preds = %bb.dz
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  br label %.critedge364

.critedge364:                                     ; preds = %bb.dw, %.critedge363
  %i.ir = invoke noundef i32 @_ZN4bzla14SolvingContext5solveEv(ptr noundef nonnull align 8 dereferenceable(12744) %25)
          to label %bb.ea unwind label %bb.ei     ; 2 uses

bb.ea:                                            ; preds = %.critedge364
  %i.is = load ptr, ptr %i.k, align 8, !tbaa !20, !nonnull !15, !align !16
  %i.it = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.is, i64 noundef 1)
          to label %bb.eb unwind label %bb.ei

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.it, label %bb.ec, label %.critedge367

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  %i.iu = load ptr, ptr %i.k, align 8, !tbaa !20, !nonnull !15, !align !16
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %28, ptr noundef nonnull align 8 dereferenceable(56) %i.iu, i64 noundef 1)
          to label %bb.ed unwind label %bb.ej

bb.ed:                                            ; preds = %bb.ec
  %i.iv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %28)
          to label %bb.ee unwind label %bb.ek     ; 2 uses

bb.ee:                                            ; preds = %bb.ed
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef nonnull @.str.9, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit434 unwind label %bb.ek ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit434: ; preds = %bb.ee
  %i.ix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8bitwuzlalsERSoNS_6ResultE(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, i32 noundef %i.ir)
          to label %.critedge366 unwind label %bb.ek ; 0 uses

.critedge366:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit434
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  br label %.critedge367

.critedge367:                                     ; preds = %bb.eb, %.critedge366
  %.not287 = icmp eq i32 %i.ir, 20
  br i1 %.not287, label %bb.em, label %bb.io

bb.ef:                                            ; preds = %bb.dx
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %bb.dz, %bb.dy
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #15
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  %.pn283 = phi { ptr, i32 } [ %i.iz, %bb.eg ], [ %i.iy, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  br label %bb.ip

bb.ei:                                            ; preds = %.critedge370, %bb.em, %bb.ea, %.critedge364
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.ej:                                            ; preds = %bb.ec
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ek:                                            ; preds = %bb.ee, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit434, %bb.ed
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #15
  br label %bb.el

bb.el:                                            ; preds = %bb.ej, %bb.ek
  %.pn285 = phi { ptr, i32 } [ %i.jc, %bb.ek ], [ %i.jb, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  br label %bb.ip

bb.em:                                            ; preds = %.critedge367
  %i.jd = load ptr, ptr %i.k, align 8, !tbaa !20, !nonnull !15, !align !16
  %i.je = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.jd, i64 noundef 1)
          to label %bb.en unwind label %bb.ei

bb.en:                                            ; preds = %bb.em
  br i1 %i.je, label %bb.eo, label %.critedge370

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  %i.jf = load ptr, ptr %i.k, align 8, !tbaa !20, !nonnull !15, !align !16
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %29, ptr noundef nonnull align 8 dereferenceable(56) %i.jf, i64 noundef 1)
          to label %bb.ep unwind label %bb.fa

bb.ep:                                            ; preds = %bb.eo
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %.critedge369 unwind label %bb.fb ; 0 uses

.critedge369:                                     ; preds = %bb.ep
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  br label %.critedge370

.critedge370:                                     ; preds = %bb.en, %.critedge369
  %i.jh = load ptr, ptr %i.k, align 8, !tbaa !20, !nonnull !15, !align !16
  %i.ji = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.jh, i64 noundef 1)
          to label %bb.eq unwind label %bb.ei

bb.eq:                                            ; preds = %.critedge370
  br i1 %i.ji, label %bb.er, label %.critedge373

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  %i.jj = load ptr, ptr %i.k, align 8, !tbaa !20, !nonnull !15, !align !16
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %30, ptr noundef nonnull align 8 dereferenceable(56) %i.jj, i64 noundef 1)
          to label %bb.es unwind label %bb.fd

bb.es:                                            ; preds = %bb.er
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %bb.et unwind label %bb.fe

bb.et:                                            ; preds = %bb.es
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef nonnull @.str.10, i64 noundef 19)
          to label %.critedge372 unwind label %bb.fe ; 0 uses

.critedge372:                                     ; preds = %bb.et
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  br label %.critedge373

.critedge373:                                     ; preds = %bb.eq, %.critedge372
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  %i.jm = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  store ptr %i.jm, ptr %31, align 8, !tbaa !126
  %i.jn = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 5 uses
  store i64 1, ptr %i.jn, align 8, !tbaa !128
  %i.jo = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %31, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jp, align 8, !tbaa !129
  %i.jq = getelementptr inbounds nuw i8, ptr %31, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jq, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !130 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  %.not4.i.i.i437 = icmp eq ptr %i.js, null
  br i1 %.not4.i.i.i437, label %.loopexit644, label %.lr.ph.i.i.i438

.lr.ph.i.i.i438:                                  ; preds = %.critedge373, %.lr.ph.i.i.i438
  %.06.i.i.i = phi i64 [ %i.ju, %.lr.ph.i.i.i438 ], [ 0, %.critedge373 ] ; 3 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.jt, %.lr.ph.i.i.i438 ], [ %i.js, %.critedge373 ]
  %i.jt = load ptr, ptr %.sroa.02.05.i.i.i, align 8, !tbaa !104 ; 2 uses
  %i.ju = add nuw nsw i64 %.06.i.i.i, 1           ; 2 uses
  %.not.i.i.i439 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i439, label %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4bzla4NodeELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i438, !llvm.loop !131

_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4bzla4NodeELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i438
  %i.jv = icmp samesign ugt i64 %.06.i.i.i, 1152921504606846974
  br i1 %i.jv, label %bb.eu, label %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i.i

bb.eu:                                            ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4bzla4NodeELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #18
          to label %.noexc.i440 unwind label %bb.ev

.noexc.i440:                                      ; preds = %bb.eu
  unreachable

_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIN4bzla4NodeELb1ELb1EEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i.i
  %i.jw = shl nuw nsw i64 %i.ju, 3
  %i.jx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #17
          to label %.noexc5.i unwind label %bb.ev ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i.i
  store ptr %i.jx, ptr %32, align 8, !tbaa !132
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %.06.i.i.i
  %37 = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %37, ptr %i.jz, align 8, !tbaa !135
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc5.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.kc, %.lr.ph.i.i.i.i.i.i ], [ %i.jx, %.noexc5.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.kb, %.lr.ph.i.i.i.i.i.i ], [ %i.js, %.noexc5.i ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  store ptr %i.ka, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !136
  %i.kb = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !104 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit644, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !138

bb.ev:                                            ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_M_allocateEm.exit.i.i, %bb.eu
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = load ptr, ptr %32, align 8, !tbaa !132  ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.ke, null
  br i1 %.not.i.i6.i, label %.body441, label %.body441.sink.split

.loopexit644:                                     ; preds = %.lr.ph.i.i.i.i.i.i, %.critedge373
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.critedge373 ], [ %i.kc, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 21 uses
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.kf, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  %i.kg = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 2 uses
  store ptr %i.kg, ptr %33, align 8, !tbaa !140
  %i.kh = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  store i64 1, ptr %i.kh, align 8, !tbaa !142
  %i.ki = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %33, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ki, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.kj, align 8, !tbaa !129
  %i.kk = getelementptr inbounds nuw i8, ptr %33, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, i8 0, i64 16, i1 false)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fp, %.loopexit644
  %i.kl = phi ptr [ %i.ln, %bb.fp ], [ %.0.lcssa.i.i.i.i.i.i, %.loopexit644 ]
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !136 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 1, ptr %i.a, align 1, !tbaa !17
  %i.ko = invoke { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_bEEES5_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.kn, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE7emplaceIJRS3_bEEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.fg ; 2 uses

_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE7emplaceIJRS3_bEEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.ew
  %.fca.1.extract57 = extractvalue { ptr, i8 } %i.ko, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.kp = trunc nuw i8 %.fca.1.extract57 to i1
  br i1 %i.kp, label %bb.ex, label %bb.fi

bb.ex:                                            ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE7emplaceIJRS3_bEEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit
  %i.kq = load ptr, ptr %i.kf, align 8, !tbaa !143
  %i.kr = invoke noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kn)
          to label %bb.ey unwind label %bb.fh

bb.ey:                                            ; preds = %bb.ex
  %i.ks = invoke noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kn)
          to label %bb.ez unwind label %bb.fh

bb.ez:                                            ; preds = %bb.ey
  %i.kt = load ptr, ptr %32, align 8, !tbaa !143  ; 2 uses
  %i.ku = ptrtoint ptr %i.kq to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = getelementptr inbounds i8, ptr %i.kt, i64 %i.kw
  invoke void @_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE15_M_range_insertIPS3_EEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr %i.kx, ptr noundef %i.kr, ptr noundef %i.ks)
          to label %._crit_edge741 unwind label %bb.fh

._crit_edge741:                                   ; preds = %bb.ez
  %.pre = load ptr, ptr %i.kf, align 8, !tbaa !143
  br label %bb.fp

bb.fa:                                            ; preds = %bb.eo
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.fb:                                            ; preds = %bb.ep
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #15
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fa, %bb.fb
  %.pn288 = phi { ptr, i32 } [ %i.kz, %bb.fb ], [ %i.ky, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  br label %bb.ip

bb.fd:                                            ; preds = %bb.er
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fe:                                            ; preds = %bb.et, %bb.es
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #15
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fd, %bb.fe
  %.pn290 = phi { ptr, i32 } [ %i.lb, %bb.fe ], [ %i.la, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  br label %bb.ip

bb.fg:                                            ; preds = %bb.ew
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit.split-lp

bb.fh:                                            ; preds = %bb.ez, %bb.ey, %bb.ex
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.fi:                                            ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE7emplaceIJRS3_bEEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit
  %.fca.0.extract56 = extractvalue { ptr, i8 } %i.ko, 0
  %i.le = getelementptr inbounds nuw i8, ptr %.fca.0.extract56, i64 16 ; 2 uses
  %i.lf = load i8, ptr %i.le, align 8, !tbaa !144, !range !19, !noundef !15
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.fj, label %bb.fo

bb.fj:                                            ; preds = %bb.fi
  store i8 0, ptr %i.le, align 8, !tbaa !144
  %i.lh = invoke noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kn)
          to label %bb.fk unwind label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  br i1 %i.lh, label %bb.fl, label %bb.fo

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !146
  %i.li = invoke { ptr, i8 } @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_NS0_3sat12interpolants12VariableKindEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_S6_EEES2_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.kn, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt13unordered_mapIN4bzla4NodeENS0_3sat12interpolants12VariableKindESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEE7emplaceIJRSA_S4_EEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.fn ; 0 uses

_ZNSt13unordered_mapIN4bzla4NodeENS0_3sat12interpolants12VariableKindESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEE7emplaceIJRSA_S4_EEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fj
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.fn:                                            ; preds = %bb.fl
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.loopexit.split-lp

bb.fo:                                            ; preds = %bb.fi, %_ZNSt13unordered_mapIN4bzla4NodeENS0_3sat12interpolants12VariableKindESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEE7emplaceIJRSA_S4_EEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit, %bb.fk
  %i.ll = load ptr, ptr %i.kf, align 8, !tbaa !139
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -8 ; 2 uses
  store ptr %i.lm, ptr %i.kf, align 8, !tbaa !139
  br label %bb.fp

bb.fp:                                            ; preds = %._crit_edge741, %bb.fo
  %i.ln = phi ptr [ %.pre, %._crit_edge741 ], [ %i.lm, %bb.fo ] ; 2 uses
  %i.lo = load ptr, ptr %32, align 8, !tbaa !143
  %i.lp = icmp eq ptr %i.lo, %i.ln
  br i1 %i.lp, label %bb.fq, label %bb.ew, !llvm.loop !148

bb.fq:                                            ; preds = %bb.fp
  %i.lq = load ptr, ptr %i.ki, align 8, !tbaa !149 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.lq, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE5clearEv.exit, label %.lr.ph.i.i.i446

.lr.ph.i.i.i446:                                  ; preds = %bb.fq, %.lr.ph.i.i.i446
  %.06.i.i.i447 = phi ptr [ %i.lr, %.lr.ph.i.i.i446 ], [ %i.lq, %bb.fq ] ; 2 uses
  %i.lr = load ptr, ptr %.06.i.i.i447, align 8, !tbaa !104 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i447, i64 noundef 32) #16
  %.not.i.i.i448 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i448, label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE5clearEv.exit, label %.lr.ph.i.i.i446, !llvm.loop !150

_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE5clearEv.exit: ; preds = %.lr.ph.i.i.i446, %bb.fq
  %i.ls = load ptr, ptr %33, align 8, !tbaa !140
  %i.lt = load i64, ptr %i.kh, align 8, !tbaa !142
  %i.lu = shl i64 %i.lt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ls, i8 0, i64 %i.lu, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ki, i8 0, i64 16, i1 false)
  %i.lv = load ptr, ptr %6, align 8, !tbaa !121   ; 2 uses
  %i.lw = load ptr, ptr %i.hx, align 8, !tbaa !121 ; 2 uses
  %.not630704 = icmp eq ptr %i.lv, %i.lw
  %.pre743 = load ptr, ptr %i.kf, align 8, !tbaa !143 ; 2 uses
  br i1 %.not630704, label %.preheader638, label %.lr.ph706

.lr.ph706:                                        ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE5clearEv.exit
  %i.lx = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  br label %bb.fr

.preheader638:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit, %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE5clearEv.exit
  %i.ly = phi ptr [ %.pre743, %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEEbSt4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_bEEE5clearEv.exit ], [ %i.nm, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.lz = load ptr, ptr %32, align 8, !tbaa !143
  %i.ma = icmp eq ptr %i.lz, %i.ly
  br i1 %i.ma, label %._crit_edge708, label %.lr.ph707

bb.fr:                                            ; preds = %.lr.ph706, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit
  %i.mb = phi ptr [ %.pre743, %.lr.ph706 ], [ %i.nm, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
end_hunk_0
begin_hunk_1_@__cxa_begin_catch
declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4bzla6option11OptionModeTINS0_17PropPathSelectionEED0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN4bzla6option11OptionModeTINS0_17PropPathSelectionEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #16
  ret void
}

declare void @_ZN4bzla6option11OptionModeTINS0_17PropPathSelectionEE7set_strERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4bzla6option11OptionModeTINS0_17PropPathSelectionEE7get_strB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4bzla6option11OptionModeTINS0_17PropPathSelectionEE8dflt_strB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4bzla6option11OptionModeTINS0_17PropPathSelectionEE8is_validERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZNK4bzla6option11OptionModeTINS0_17PropPathSelectionEE5modesB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector.646") align 8, ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4bzla6option9OptionStrD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4bzla6option9OptionStrE, i64 16), ptr %0, align 8, !tbaa !175
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !31
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #16, !inline_history !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4bzla6option9OptionStrD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #16, !inline_history !189
  br label %_ZN4bzla6option9OptionStrD2Ev.exit

_ZN4bzla6option9OptionStrD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(104) %0) #15, !inline_history !189
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4bzla6option10OptionBase7is_modeEv(ptr noundef nonnull align 8 dereferenceable(34) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4bzla6option9OptionStr6is_strEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4bzla6option11OptionModeTINS0_9SatSolverEED0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN4bzla6option11OptionModeTINS0_9SatSolverEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #16
  ret void
}

declare void @_ZN4bzla6option11OptionModeTINS0_9SatSolverEE7set_strERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4bzla6option11OptionModeTINS0_9SatSolverEE7get_strB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4bzla6option11OptionModeTINS0_9SatSolverEE8dflt_strB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4bzla6option11OptionModeTINS0_9SatSolverEE8is_validERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZNK4bzla6option11OptionModeTINS0_9SatSolverEE5modesB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector.646") align 8, ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4bzla6option11OptionModeTINS0_8BvSolverEED0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN4bzla6option11OptionModeTINS0_8BvSolverEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #16
  ret void
}

declare void @_ZN4bzla6option11OptionModeTINS0_8BvSolverEE7set_strERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4bzla6option11OptionModeTINS0_8BvSolverEE7get_strB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4bzla6option11OptionModeTINS0_8BvSolverEE8dflt_strB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4bzla6option11OptionModeTINS0_8BvSolverEE8is_validERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZNK4bzla6option11OptionModeTINS0_8BvSolverEE5modesB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector.646") align 8, ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4bzla4NodeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !98     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4bzla4NodeESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #18
  unreachable

_ZNKSt6vectorIN4bzla4NodeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt16allocator_traitsISaIN4bzla4NodeEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN4bzla4NodeEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4bzla4NodeESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN4bzla4NodeEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN4bzla4NodeEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN4bzla4NodeEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !226

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #15 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #15
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !125

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #18
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #19
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN4bzla4NodeEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4bzla4NodeEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 8, %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 3 uses
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 8 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 8
  %.not.i.i.i.i.i38 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !226

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #15 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 8
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i34) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ae, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !125

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i36
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #19
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i30.ptr, i64 8
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #15
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !125

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit:          ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4bzla4NodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !116
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #16
  br label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !98
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !95
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !116
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN4bzla4NodeESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #15 ; 0 uses
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ar = extractvalue { ptr, i32 } %i.x, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #15 ; 0 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #15
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.at = extractvalue { ptr, i32 } %i.af, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #15 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.av, %.lr.ph.i.i46 ], [ %i.p, %bb.l ] ; 3 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i47) #15
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 8
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !125

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #16
  invoke void @__cxa_rethrow() #18
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aw

bb.o:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #19
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_bEEES5_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17 ; 6 uses
  store ptr null, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !136
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i8, ptr %2, align 1, !tbaa !17, !range !19, !noundef !15
  store i8 %i.d, ptr %i.c, align 8, !tbaa !144
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !227
  %.not.not = icmp eq i64 %i.f, 0
  br i1 %.not.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueIS8_Lb1EEE.exit, %bb.b
  %.sroa.035.0.in = phi ptr [ %i.g, %bb.b ], [ %.sroa.035.0, %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueIS8_Lb1EEE.exit ]
  %.sroa.035.0 = load ptr, ptr %.sroa.035.0.in, align 8, !tbaa !104 ; 4 uses
  %.not = icmp eq ptr %.sroa.035.0, null
  br i1 %.not, label %.critedge.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.035.0, i64 8
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !136
  %i.k = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueIS8_Lb1EEE.exit unwind label %bb.e

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueIS8_Lb1EEE.exit: ; preds = %bb.d
  br i1 %i.k, label %.loopexit, label %bb.c, !llvm.loop !228

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit30

.critedge.loopexit:                               ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !136
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.m = phi ptr [ %.pre, %.critedge.loopexit ], [ %1, %bb.a ]
  %i.n = invoke noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.f unwind label %bb.k       ; 3 uses

bb.f:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !142
  %i.q = urem i64 %i.n, %i.p                      ; 3 uses
  %i.r = load i64, ptr %i.e, align 8, !tbaa !227
  %.not56 = icmp eq i64 %i.r, 0
  br i1 %.not56, label %.critedge28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !140
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !109  ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %.critedge28, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104  ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !110
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.w = phi i64 [ %.pre.i.i, %bb.h ], [ %i.af, %bb.j ]
  %.015.i.i = phi ptr [ %i.u, %bb.h ], [ %.0.i.i, %bb.j ]
  %.0.i.i = phi ptr [ %i.v, %bb.h ], [ %i.ac, %bb.j ] ; 3 uses
  %i.x = icmp eq i64 %i.n, %i.w
  br i1 %i.x, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !136
  %i.ab = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i
  br i1 %i.ab, label %_ZNKSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_bESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i: ; preds = %.noexc, %bb.i
  %i.ac = load ptr, ptr %.0.i.i, align 8, !tbaa !104 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_bENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !142
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !110 ; 2 uses
end_hunk_1
