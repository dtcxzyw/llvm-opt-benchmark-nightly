Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/regexp_operation?download=true
inline.NumInlined: 4732
inline.NumDeleted: 1285
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4cvc58internal6theory7strings9RegExpOpr18getRegExpConstTypeENS0_12NodeTemplateILb1EEE:bb.a
  %i.gq = trunc nuw nsw i64 %i.gp to i32
  %i.gr = and i32 %i.gq, 1048575                  ; 3 uses
  %i.gs = icmp samesign ult i32 %i.gr, 1048574
  br i1 %i.gs, label %bb.bv, label %bb.bw, !prof !94

bb.bv:                                            ; preds = %bb.bu
  %i.gt = add nuw nsw i32 %i.gr, 1
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 40
  %i.gw = and i64 %i.go, -1152920405095219201
  %i.gx = or i64 %i.gv, %i.gw
  store i64 %i.gx, ptr %spec.select, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit88

bb.bw:                                            ; preds = %bb.bu
  %i.gy = icmp eq i32 %i.gr, 1048574
  br i1 %i.gy, label %bb.bx, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit88, !prof !93

bb.bx:                                            ; preds = %bb.bw
  %i.gz = or i64 %i.go, 1152920405095219200
  store i64 %i.gz, ptr %spec.select, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %spec.select)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit88 unwind label %bb.cg

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit88: ; preds = %bb.bw, %bb.bv, %bb.bx
  %i.ha = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS4_NS2_6theory7strings15RegExpConstTypeEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixEOS3_.exit90 unwind label %bb.ch

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixEOS3_.exit90: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit88
  store i32 3, ptr %i.ha, align 4, !tbaa !469
  %i.hb = load ptr, ptr %9, align 8, !tbaa !29    ; 3 uses
  %i.hc = load i64, ptr %i.hb, align 8            ; 3 uses
  %i.hd = and i64 %i.hc, 1152920405095219200
  %.not.i.i91 = icmp eq i64 %i.hd, 1152920405095219200
  br i1 %.not.i.i91, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92, label %bb.by, !prof !93

bb.by:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixEOS3_.exit90
  %i.he = add i64 %i.hc, 1152920405095219200
  %i.hf = and i64 %i.he, 1152920405095219200      ; 2 uses
  %i.hg = and i64 %i.hc, -1152920405095219201
  %i.hh = or disjoint i64 %i.hf, %i.hg
  store i64 %i.hh, ptr %i.hb, align 8
  %i.hi = icmp eq i64 %i.hf, 0
  br i1 %i.hi, label %bb.bz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92, !prof !93

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixEOS3_.exit90, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !116 ; 6 uses
  %i.hm = load ptr, ptr %i.k, align 8, !tbaa !117
  %.not.i93 = icmp eq ptr %i.hl, %i.hm
  br i1 %.not.i93, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92
  store ptr %spec.select, ptr %i.hl, align 8, !tbaa !37
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  store ptr %i.hn, ptr %i.i, align 8, !tbaa !116
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

bb.cc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit92
  %i.ho = load ptr, ptr %2, align 8, !tbaa !118   ; 5 uses
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = ptrtoint ptr %i.ho to i64               ; 2 uses
  %i.hr = sub i64 %i.hp, %i.hq                    ; 3 uses
  %i.hs = icmp eq i64 %i.hr, 9223372036854775800
  br i1 %i.hs, label %bb.cd, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #27
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.cd
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cc
  %i.ht = ashr exact i64 %i.hr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ht, i64 1)
  %i.hu = add nsw i64 %.sroa.speculated.i.i.i, %i.ht ; 2 uses
  %i.hv = icmp ult i64 %i.hu, %i.ht
  %i.hw = call i64 @llvm.umin.i64(i64 %i.hu, i64 1152921504606846975)
  %i.hx = select i1 %i.hv, i64 1152921504606846975, i64 %i.hw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hy = shl nuw nsw i64 %i.hx, 3
  %i.hz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hy) #24
          to label %.noexc95 unwind label %.loopexit ; 5 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hr
  store ptr %spec.select, ptr %i.ia, align 8, !tbaa !37
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.ho, %i.hl
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc95, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i.i.i ], [ %i.hz, %.noexc95 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ho, %.noexc95 ] ; 2 uses
  %i.ib = load ptr, ptr %.01214.i.i.i.i.i.i.i, align 8, !tbaa !37
  store ptr %i.ib, ptr %.015.i.i.i.i.i.i.i, align 8, !tbaa !37
  %i.ic = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ic, %i.hl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc95
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.hz, %.noexc95 ], [ %i.id, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  %i.if = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = sub i64 %i.ig, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.ih) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ce, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  store ptr %i.hz, ptr %2, align 8, !tbaa !118
  store ptr %i.ie, ptr %i.i, align 8, !tbaa !116
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hx
  store ptr %i.ii, ptr %i.k, align 8, !tbaa !117
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.cb
  %i.ij = phi ptr [ %i.ie, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.hn, %bb.cb ]
  %i.ik = load i64, ptr %i.cm, align 8
  %i.il = trunc i64 %i.ik to i32
  %i.im = and i32 %i.il, 1023                     ; 2 uses
  %i.in = icmp eq i32 %i.im, 1023
  %i.io = select i1 %i.in, i32 -1, i32 %i.im
  %i.ip = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.io)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit
  %i.iq = icmp eq i32 %i.ip, 2
  %spec.select.v.i.i = select i1 %i.iq, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 %spec.select.v.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  %i.is = load i64, ptr %i.cm, align 8
  %i.it = lshr i64 %i.is, 32
  %i.iu = and i64 %i.it, 67108863
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.iu
  %i.iw = load ptr, ptr %2, align 8, !tbaa !125   ; 2 uses
  %i.ix = ptrtoint ptr %i.ij to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = getelementptr inbounds i8, ptr %i.iw, i64 %i.iz
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE15_M_range_insertINS1_4expr9NodeValue8iteratorIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ja, ptr nonnull %spec.select.i.i, ptr nonnull %i.iv)
          to label %bb.di unwind label %bb.cj

bb.cg:                                            ; preds = %bb.bx
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit88
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn48 = phi { ptr, i32 } [ %i.jc, %bb.ch ], [ %i.jb, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.body

bb.cj:                                            ; preds = %bb.cf, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ck:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !127
  %i.jg = icmp eq i32 %i.jf, 3
  br i1 %i.jg, label %bb.cl, label %bb.di

bb.cl:                                            ; preds = %bb.ck
  %i.jh = icmp eq i32 %i.cp, 1023
  %i.ji = select i1 %i.jh, i32 -1, i32 %i.cp
  %i.jj = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ji)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.jk = icmp eq i32 %i.cp, 359
  %i.jl = zext i1 %i.jk to i32                    ; 2 uses
  %i.jm = icmp eq i32 %i.jj, 2
  %spec.select.v.i.i98 = select i1 %i.jm, i64 32, i64 24 ; 2 uses
  %i.jn = load i64, ptr %i.cm, align 8
  %i.jo = lshr i64 %i.jn, 29
  %.idx = and i64 %i.jo, 536870904
  %i.jp = add nuw nsw i64 %.idx, 24               ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.jp
  %.not196 = icmp samesign eq i64 %spec.select.v.i.i98, %i.jp
  br i1 %.not196, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.cm
  %spec.select.i.i99 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %spec.select.v.i.i98
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit120, %bb.cm
  %.0.lcssa = phi i32 [ %i.jl, %bb.cm ], [ %spec.select157, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit120 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %spec.select, ptr %11, align 8, !tbaa !29
  %i.jr = load i64, ptr %spec.select, align 8     ; 3 uses
  %i.js = lshr i64 %i.jr, 40
  %i.jt = trunc nuw nsw i64 %i.js to i32
  %i.ju = and i32 %i.jt, 1048575                  ; 3 uses
  %i.jv = icmp samesign ult i32 %i.ju, 1048574
  br i1 %i.jv, label %bb.cn, label %bb.co, !prof !94

bb.cn:                                            ; preds = %._crit_edge
  %i.jw = add nuw nsw i32 %i.ju, 1
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = shl nuw nsw i64 %i.jx, 40
  %i.jz = and i64 %i.jr, -1152920405095219201
  %i.ka = or i64 %i.jy, %i.jz
  store i64 %i.ka, ptr %spec.select, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit103

bb.co:                                            ; preds = %._crit_edge
  %i.kb = icmp eq i32 %i.ju, 1048574
  br i1 %i.kb, label %bb.cp, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit103, !prof !93

bb.cp:                                            ; preds = %bb.co
  %i.kc = or i64 %i.jr, 1152920405095219200
  store i64 %i.kc, ptr %spec.select, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %spec.select)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit103 unwind label %bb.df

bb.cq:                                            ; preds = %bb.cl
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit120
  %.0198 = phi i32 [ %spec.select157, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit120 ], [ %i.jl, %.lr.ph.preheader ]
  %.sroa.0130.0197 = phi ptr [ %i.mi, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit120 ], [ %spec.select.i.i99, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ke = load ptr, ptr %.sroa.0130.0197, align 8, !tbaa !27, !noalias !470 ; 5 uses
  store ptr %i.ke, ptr %10, align 8, !tbaa !29
  %i.kf = load i64, ptr %i.ke, align 8            ; 3 uses
  %i.kg = lshr i64 %i.kf, 40
  %i.kh = trunc nuw nsw i64 %i.kg to i32
  %i.ki = and i32 %i.kh, 1048575                  ; 3 uses
  %i.kj = icmp samesign ult i32 %i.ki, 1048574
  br i1 %i.kj, label %bb.cr, label %bb.cs, !prof !94

bb.cr:                                            ; preds = %.lr.ph
  %i.kk = add nuw nsw i32 %i.ki, 1
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = shl nuw nsw i64 %i.kl, 40
  %i.kn = and i64 %i.kf, -1152920405095219201
  %i.ko = or i64 %i.km, %i.kn
  store i64 %i.ko, ptr %i.ke, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit105

bb.cs:                                            ; preds = %.lr.ph
  %i.kp = icmp eq i32 %i.ki, 1048574
  br i1 %i.kp, label %bb.ct, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit105, !prof !93

bb.ct:                                            ; preds = %bb.cs
  %i.kq = or i64 %i.kf, 1152920405095219200
  store i64 %i.kq, ptr %i.ke, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ke)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit105 unwind label %bb.cx

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit105: ; preds = %bb.cs, %bb.cr, %bb.ct
  %i.kr = load i64, ptr %i.ai, align 8, !tbaa !119
  %.not.not.i.i106 = icmp eq i64 %i.kr, 0
  br i1 %.not.not.i.i106, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit105
  %i.ks = load ptr, ptr %10, align 8              ; 2 uses
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.06.0.in.i.i114 = phi ptr [ %i.ak, %bb.cu ], [ %.sroa.06.0.i.i115, %bb.cv ]
  %.sroa.06.0.i.i115 = load ptr, ptr %.sroa.06.0.in.i.i114, align 8, !tbaa !120, !nonnull !97, !noundef !97 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i115, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !29
  %i.kv = icmp eq ptr %i.ks, %i.ku
  br i1 %i.kv, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit118, label %bb.cv, !llvm.loop !462

bb.cw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit105
  %i.kw = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc117 unwind label %bb.cy ; 3 uses

.noexc117:                                        ; preds = %bb.cw
  %i.kx = load i64, ptr %i.aj, align 8, !tbaa !55 ; 2 uses
  %i.ky = urem i64 %i.kw, %i.kx                   ; 2 uses
  %i.kz = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.ky
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !121, !nonnull !97, !noundef !97
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !120 ; 4 uses
  %i.ld = load ptr, ptr %10, align 8              ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !123
  %i.lh = icmp eq i64 %i.kw, %i.lg
  %i.li = load ptr, ptr %i.le, align 8
  %i.lj = icmp eq ptr %i.ld, %i.li
  %i.lk = select i1 %i.lh, i1 %i.lj, i1 false
  br i1 %i.lk, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit118, label %.lr.ph.i.i.i.i108

.lr.ph.i.i.i.i108:                                ; preds = %.noexc117, %.lr.ph.i.i.i.i108
  %.020.i.i.i.i109 = phi ptr [ %i.ll, %.lr.ph.i.i.i.i108 ], [ %i.lc, %.noexc117 ]
  %i.ll = load ptr, ptr %.020.i.i.i.i109, align 8, !tbaa !120, !nonnull !97, !noundef !97 ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !123 ; 2 uses
  %i.lo = urem i64 %i.ln, %i.kx
  %.not19.i.i.i.i111 = icmp eq i64 %i.lo, %i.ky
  call void @llvm.assume(i1 %.not19.i.i.i.i111)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lq = icmp eq i64 %i.kw, %i.ln
  %i.lr = load ptr, ptr %i.lp, align 8
  %i.ls = icmp eq ptr %i.ld, %i.lr
  %i.lt = select i1 %i.lq, i1 %i.ls, i1 false
  br i1 %i.lt, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit118, label %.lr.ph.i.i.i.i108, !llvm.loop !3

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit118: ; preds = %.lr.ph.i.i.i.i108, %bb.cv, %.noexc117
  %i.lu = phi ptr [ %i.ks, %bb.cv ], [ %i.ld, %.noexc117 ], [ %i.ld, %.lr.ph.i.i.i.i108 ] ; 3 uses
  %.sroa.06.1.i.i113 = phi ptr [ %.sroa.06.0.i.i115, %bb.cv ], [ %i.lc, %.noexc117 ], [ %i.ll, %.lr.ph.i.i.i.i108 ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i113, i64 16
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !127
  %spec.select157 = call i32 @llvm.smax.i32(i32 %i.lw, i32 %.0198) ; 2 uses
  %i.lx = load i64, ptr %i.lu, align 8            ; 3 uses
  %i.ly = and i64 %i.lx, 1152920405095219200
  %.not.i.i119 = icmp eq i64 %i.ly, 1152920405095219200
  br i1 %.not.i.i119, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit120, label %bb.cz, !prof !93

bb.cx:                                            ; preds = %bb.ct
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cy:                                            ; preds = %bb.cw
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.cz:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit118
  %i.mb = add i64 %i.lx, 1152920405095219200
  %i.mc = and i64 %i.mb, 1152920405095219200      ; 2 uses
  %i.md = and i64 %i.lx, -1152920405095219201
  %i.me = or disjoint i64 %i.mc, %i.md
  store i64 %i.me, ptr %i.lu, align 8
  %i.mf = icmp eq i64 %i.mc, 0
  br i1 %i.mf, label %bb.da, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit120, !prof !93

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit120 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mg = landingpad { ptr, i32 }
          catch ptr null
  %i.mh = extractvalue { ptr, i32 } %i.mg, 0
  call void @__clang_call_terminate(ptr %i.mh) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit120: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEE4findERSC_.exit118, %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0130.0197, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.mi, %i.jq
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit103: ; preds = %bb.co, %bb.cn, %bb.cp
  %i.mj = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS4_NS2_6theory7strings15RegExpConstTypeEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixEOS3_.exit122 unwind label %bb.dg

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixEOS3_.exit122: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit103
  store i32 %.0.lcssa, ptr %i.mj, align 4, !tbaa !469
  %i.mk = load ptr, ptr %11, align 8, !tbaa !29   ; 3 uses
  %i.ml = load i64, ptr %i.mk, align 8            ; 3 uses
  %i.mm = and i64 %i.ml, 1152920405095219200
  %.not.i.i123 = icmp eq i64 %i.mm, 1152920405095219200
  br i1 %.not.i.i123, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit124, label %bb.dc, !prof !93

bb.dc:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory7strings15RegExpConstTypeESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S6_EEEixEOS3_.exit122
  %i.mn = add i64 %i.ml, 1152920405095219200
  %i.mo = and i64 %i.mn, 1152920405095219200      ; 2 uses
  %i.mp = and i64 %i.ml, -1152920405095219201
  %i.mq = or disjoint i64 %i.mo, %i.mp
  store i64 %i.mq, ptr %i.mk, align 8
  %i.mr = icmp eq i64 %i.mo, 0
  br i1 %i.mr, label %bb.dd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit124, !prof !93

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit124 unwind label %bb.de
end_hunk_0
