Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/evaluator?download=true
inline.NumInlined: 2902
inline.NumDeleted: 730
begin_hunk_0_@_ZNK4cvc58internal6theory9Evaluator12evalInternalENS0_12NodeTemplateILb0EEERKSt6vectorINS3_ILb1EEESaIS6_EESA_RSt13unordered_mapIS4_S6_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S6_EEERSB_IS4_NS1_10EvalResultESD_SF_SaISG_ISH_SM_EEE:_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit3135:          ; preds = %bb.aut
  call void @llvm.lifetime.end.p0(ptr nonnull %250) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %249) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit2003

bb.auv:                                           ; preds = %bb.aun
  %i.ehq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aux

bb.auw:                                           ; preds = %bb.auo
  %i.ehr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aux

bb.aux:                                           ; preds = %bb.auw, %bb.auv
  %.pn1396 = phi { ptr, i32 } [ %i.ehr, %bb.auw ], [ %i.ehq, %bb.auv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %248) #22
  br label %bb.bwz

bb.auy:                                           ; preds = %bb.aup
  %i.ehs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal8RationalD2Ev.exit3137

bb.auz:                                           ; preds = %.noexc3127, %bb.auq
  %i.eht = landingpad { ptr, i32 }
          cleanup
  br label %.body3129

bb.ava:                                           ; preds = %_ZN4cvc58internal6theory10EvalResultC2ERKNS0_8RationalE.exit3131, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixERSB_.exit3133
  %i.ehu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory10EvalResultD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %249) #22
  br label %.body3129

.body3129:                                        ; preds = %bb.auz, %bb.aur, %bb.ava
  %.pn1401 = phi { ptr, i32 } [ %i.ehu, %bb.ava ], [ %i.eht, %bb.auz ], [ %i.ehj, %bb.aur ]
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %250)
          to label %_ZN4cvc58internal8RationalD2Ev.exit3137 unwind label %bb.avb

bb.avb:                                           ; preds = %.body3129
  %i.ehv = landingpad { ptr, i32 }
          catch ptr null
  %i.ehw = extractvalue { ptr, i32 } %i.ehv, 0
  call void @__clang_call_terminate(ptr %i.ehw) #23
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit3137:          ; preds = %.body3129, %bb.auy
  %.pn1401.pn = phi { ptr, i32 } [ %i.ehs, %bb.auy ], [ %.pn1401, %.body3129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %250) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %249) #22
  br label %bb.bwz

bb.avc:                                           ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixEOS3_.exit3125
  call void @llvm.lifetime.start.p0(ptr nonnull %251) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %252) #22
  invoke void @_ZN4cvc58internal8RationalC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %252, i32 noundef -1)
          to label %bb.avd unwind label %bb.avi

bb.avd:                                           ; preds = %bb.avc
  store i32 2, ptr %251, align 8, !tbaa !18
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %252)
          to label %.noexc3139 unwind label %bb.avj

.noexc3139:                                       ; preds = %bb.avd
  invoke void @__gmpz_init_set(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ec)
          to label %.noexc3140 unwind label %bb.avj

.noexc3140:                                       ; preds = %.noexc3139
  invoke void @__gmpq_canonicalize(ptr noundef nonnull align 8 dereferenceable(32) %i.ea)
          to label %_ZN4cvc58internal6theory10EvalResultC2ERKNS0_8RationalE.exit3143 unwind label %bb.ave

bb.ave:                                           ; preds = %.noexc3140
  %i.ehx = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %i.ea)
          to label %.body3141 unwind label %bb.avf

bb.avf:                                           ; preds = %bb.ave
  %i.ehy = landingpad { ptr, i32 }
          catch ptr null
  %i.ehz = extractvalue { ptr, i32 } %i.ehy, 0
  call void @__clang_call_terminate(ptr %i.ehz) #23
  unreachable

_ZN4cvc58internal6theory10EvalResultC2ERKNS0_8RationalE.exit3143: ; preds = %.noexc3140
  %i.eia = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS4_NS2_6theory10EvalResultEESaIS9_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixERSB_.exit3145 unwind label %bb.avk

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixERSB_.exit3145: ; preds = %_ZN4cvc58internal6theory10EvalResultC2ERKNS0_8RationalE.exit3143
  %i.eib = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4cvc58internal6theory10EvalResultaSERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.eia, ptr noundef nonnull align 8 dereferenceable(40) %251)
          to label %bb.avg unwind label %bb.avk   ; 0 uses

bb.avg:                                           ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixERSB_.exit3145
  call void @_ZN4cvc58internal6theory10EvalResultD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %251) #22
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %252)
          to label %_ZN4cvc58internal8RationalD2Ev.exit3147 unwind label %bb.avh

bb.avh:                                           ; preds = %bb.avg
  %i.eic = landingpad { ptr, i32 }
          catch ptr null
  %i.eid = extractvalue { ptr, i32 } %i.eic, 0
  call void @__clang_call_terminate(ptr %i.eid) #23
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit3147:          ; preds = %bb.avg
  call void @llvm.lifetime.end.p0(ptr nonnull %252) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %251) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit2003

bb.avi:                                           ; preds = %bb.avc
  %i.eie = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal8RationalD2Ev.exit3149

bb.avj:                                           ; preds = %.noexc3139, %bb.avd
  %i.eif = landingpad { ptr, i32 }
          cleanup
  br label %.body3141

bb.avk:                                           ; preds = %_ZN4cvc58internal6theory10EvalResultC2ERKNS0_8RationalE.exit3143, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixERSB_.exit3145
  %i.eig = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory10EvalResultD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %251) #22
  br label %.body3141

.body3141:                                        ; preds = %bb.avj, %bb.ave, %bb.avk
  %.pn1398 = phi { ptr, i32 } [ %i.eig, %bb.avk ], [ %i.eif, %bb.avj ], [ %i.ehx, %bb.ave ]
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %252)
          to label %_ZN4cvc58internal8RationalD2Ev.exit3149 unwind label %bb.avl

bb.avl:                                           ; preds = %.body3141
  %i.eih = landingpad { ptr, i32 }
          catch ptr null
  %i.eii = extractvalue { ptr, i32 } %i.eih, 0
  call void @__clang_call_terminate(ptr %i.eii) #23
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit3149:          ; preds = %.body3141, %bb.avi
  %.pn1398.pn = phi { ptr, i32 } [ %i.eie, %bb.avi ], [ %.pn1398, %.body3141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %252) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %251) #22
  br label %bb.bwz

bb.avm:                                           ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit2018
  call void @llvm.lifetime.start.p0(ptr nonnull %253) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.eij = load ptr, ptr %19, align 8, !tbaa !60, !noalias !479 ; 2 uses
  %i.eik = getelementptr inbounds nuw i8, ptr %i.eij, i64 8
  %i.eil = load i64, ptr %i.eik, align 8, !noalias !479
  %i.eim = trunc i64 %i.eil to i32
  %i.ein = and i32 %i.eim, 1023                   ; 2 uses
  %i.eio = icmp eq i32 %i.ein, 1023
  %i.eip = select i1 %i.eio, i32 -1, i32 %i.ein
  %i.eiq = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.eip)
          to label %bb.avn unwind label %bb.awb

bb.avn:                                           ; preds = %bb.avm
  %i.eir = icmp eq i32 %i.eiq, 2
  %i.eis = getelementptr inbounds nuw i8, ptr %i.eij, i64 24
  %i.eit = zext i1 %i.eir to i64
  %i.eiu = getelementptr inbounds nuw [8 x i8], ptr %i.eis, i64 %i.eit
  %i.eiv = load ptr, ptr %i.eiu, align 8, !tbaa !42, !noalias !479
  store ptr %i.eiv, ptr %253, align 8, !tbaa !60, !alias.scope !479
  %i.eiw = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS4_NS2_6theory10EvalResultEESaIS9_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %253)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixEOS3_.exit3154 unwind label %bb.awc ; 2 uses

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixEOS3_.exit3154: ; preds = %bb.avn
  %i.eix = getelementptr inbounds nuw i8, ptr %i.eiw, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %253) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %254) #22
  %i.eiy = getelementptr inbounds nuw i8, ptr %i.eiw, i64 16 ; 2 uses
  %i.eiz = load ptr, ptr %i.eiy, align 8, !tbaa !89 ; 2 uses
  %i.eja = load ptr, ptr %i.eix, align 8, !tbaa !32 ; 3 uses
  %i.ejb = ptrtoint ptr %i.eiz to i64             ; 2 uses
  %i.ejc = ptrtoint ptr %i.eja to i64             ; 2 uses
  %i.ejd = sub i64 %i.ejb, %i.ejc                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %254, i8 0, i64 24, i1 false)
  %.not.i.i.i.i3155 = icmp eq ptr %i.eiz, %i.eja
  br i1 %.not.i.i.i.i3155, label %.noexc3158, label %bb.avo

bb.avo:                                           ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixEOS3_.exit3154
  %i.eje = icmp ugt i64 %i.ejd, 9223372036854775804
  br i1 %i.eje, label %.noexc.i.i3156, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !75

.noexc.i.i3156:                                   ; preds = %bb.avo
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc3157 unwind label %.loopexit.split-lp4078

.noexc3157:                                       ; preds = %.noexc.i.i3156
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.avo
  %i.ejf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ejd) #25
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc3158_crit_edge unwind label %.loopexit4077

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc3158_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  %.pre16397 = load ptr, ptr %i.eix, align 8, !tbaa !90 ; 3 uses
  %.pre16398 = load ptr, ptr %i.eiy, align 8, !tbaa !90 ; 2 uses
  %.pre16459 = ptrtoint ptr %.pre16398 to i64
  %.pre16461 = ptrtoint ptr %.pre16397 to i64
  %429 = icmp ne ptr %.pre16398, %.pre16397
  br label %.noexc3158

.noexc3158:                                       ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc3158_crit_edge, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixEOS3_.exit3154
  %.pre-phi16462 = phi i64 [ %.pre16461, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc3158_crit_edge ], [ %i.ejc, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixEOS3_.exit3154 ]
  %.pre-phi16460 = phi i64 [ %.pre16459, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc3158_crit_edge ], [ %i.ejb, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixEOS3_.exit3154 ]
  %430 = phi i1 [ %429, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc3158_crit_edge ], [ false, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixEOS3_.exit3154 ]
  %i.ejg = phi ptr [ %.pre16397, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc3158_crit_edge ], [ %i.eja, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixEOS3_.exit3154 ] ; 2 uses
  %i.ejh = phi ptr [ %i.ejf, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc3158_crit_edge ], [ null, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixEOS3_.exit3154 ] ; 8 uses
  store ptr %i.ejh, ptr %254, align 8, !tbaa !32
  store ptr %i.ejh, ptr %i.dt, align 8, !tbaa !89
  %i.eji = getelementptr inbounds nuw i8, ptr %i.ejh, i64 %i.ejd
  store ptr %i.eji, ptr %i.du, align 8, !tbaa !33
  %i.ejj = sub i64 %.pre-phi16460, %.pre-phi16462 ; 5 uses
  %i.ejk = icmp sgt i64 %i.ejj, 4
  br i1 %i.ejk, label %bb.avr, label %bb.avp, !prof !74

bb.avp:                                           ; preds = %.noexc3158
  %i.ejl = icmp eq i64 %i.ejj, 4
  br i1 %i.ejl, label %bb.avq, label %.thread

bb.avq:                                           ; preds = %bb.avp
  %i.ejm = load i32, ptr %i.ejg, align 4, !tbaa !91
  store i32 %i.ejm, ptr %i.ejh, align 4, !tbaa !91
  br label %.thread

.thread:                                          ; preds = %bb.avq, %bb.avp
  %i.ejn = getelementptr inbounds i8, ptr %i.ejh, i64 %i.ejj
  store ptr %i.ejn, ptr %i.dt, align 8, !tbaa !89
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit

bb.avr:                                           ; preds = %.noexc3158
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ejh, ptr align 4 %i.ejg, i64 %i.ejj, i1 false)
  %i.ejo = getelementptr inbounds nuw i8, ptr %i.ejh, i64 %i.ejj ; 2 uses
  store ptr %i.ejo, ptr %i.dt, align 8, !tbaa !89
  br i1 %430, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.avr
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.ejo, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.ejr, %.lr.ph.i.i ], [ %i.ejh, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ejp = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !91
  %i.ejq = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !91
  store i32 %i.ejq, ptr %.sroa.05.09.i.i, align 4, !tbaa !91
  store i32 %i.ejp, ptr %.sroa.0.010.i.i, align 4, !tbaa !91
  %i.ejr = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ejs = icmp ult ptr %i.ejr, %.sroa.0.0.i.i
  br i1 %i.ejs, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit, !llvm.loop !276

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %.thread, %bb.avr
  call void @llvm.lifetime.start.p0(ptr nonnull %255) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %256) #22
  invoke void @_ZN4cvc58internal6StringC1ERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24) %256, ptr noundef nonnull align 8 dereferenceable(24) %254)
          to label %bb.avs unwind label %bb.awe

bb.avs:                                           ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit
  store i32 3, ptr %255, align 8, !tbaa !18
  %i.ejt = load ptr, ptr %i.dw, align 8, !tbaa !89 ; 2 uses
  %i.eju = load ptr, ptr %256, align 8, !tbaa !32 ; 3 uses
  %i.ejv = ptrtoint ptr %i.ejt to i64             ; 2 uses
  %i.ejw = ptrtoint ptr %i.eju to i64             ; 2 uses
  %i.ejx = sub i64 %i.ejv, %i.ejw                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i3159 = icmp eq ptr %i.ejt, %i.eju
  br i1 %.not.i.i.i.i.i.i3159, label %.noexc3163, label %bb.avt

bb.avt:                                           ; preds = %bb.avs
  %i.ejy = icmp ugt i64 %i.ejx, 9223372036854775804
  br i1 %i.ejy, label %.noexc.i.i.i.i3161, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i3160, !prof !75

.noexc.i.i.i.i3161:                               ; preds = %bb.avt
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc3162 unwind label %.loopexit.split-lp4083

.noexc3162:                                       ; preds = %.noexc.i.i.i.i3161
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i3160: ; preds = %bb.avt
  %i.ejz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ejx) #25
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i3160..noexc3163_crit_edge unwind label %.loopexit4082

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i3160..noexc3163_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i3160
  %.pre16399 = load ptr, ptr %256, align 8, !tbaa !90 ; 2 uses
  %.pre16400 = load ptr, ptr %i.dw, align 8, !tbaa !90
  %.pre16463 = ptrtoint ptr %.pre16400 to i64
  %.pre16465 = ptrtoint ptr %.pre16399 to i64
  br label %.noexc3163

.noexc3163:                                       ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i3160..noexc3163_crit_edge, %bb.avs
  %.pre-phi16466 = phi i64 [ %.pre16465, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i3160..noexc3163_crit_edge ], [ %i.ejw, %bb.avs ]
  %.pre-phi16464 = phi i64 [ %.pre16463, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i3160..noexc3163_crit_edge ], [ %i.ejv, %bb.avs ]
  %i.eka = phi ptr [ %.pre16399, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i3160..noexc3163_crit_edge ], [ %i.eju, %bb.avs ] ; 2 uses
  %i.ekb = phi ptr [ %i.ejz, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i3160..noexc3163_crit_edge ], [ null, %bb.avs ] ; 6 uses
  store ptr %i.ekb, ptr %i.dv, align 8, !tbaa !32
  store ptr %i.ekb, ptr %i.dx, align 8, !tbaa !89
  %i.ekc = getelementptr inbounds nuw i8, ptr %i.ekb, i64 %i.ejx
  store ptr %i.ekc, ptr %i.dy, align 8, !tbaa !33
  %i.ekd = sub i64 %.pre-phi16464, %.pre-phi16466 ; 4 uses
  %i.eke = icmp sgt i64 %i.ekd, 4
  br i1 %i.eke, label %bb.avu, label %bb.avv, !prof !74

bb.avu:                                           ; preds = %.noexc3163
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ekb, ptr align 4 %i.eka, i64 %i.ekd, i1 false)
  br label %bb.avx

bb.avv:                                           ; preds = %.noexc3163
  %i.ekf = icmp eq i64 %i.ekd, 4
  br i1 %i.ekf, label %bb.avw, label %bb.avx

bb.avw:                                           ; preds = %bb.avv
  %i.ekg = load i32, ptr %i.eka, align 4, !tbaa !91
  store i32 %i.ekg, ptr %i.ekb, align 4, !tbaa !91
  br label %bb.avx

bb.avx:                                           ; preds = %bb.avw, %bb.avv, %bb.avu
  %i.ekh = getelementptr inbounds i8, ptr %i.ekb, i64 %i.ekd
  store ptr %i.ekh, ptr %i.dx, align 8, !tbaa !89
  %i.eki = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS4_NS2_6theory10EvalResultEESaIS9_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixERSB_.exit3166 unwind label %bb.awf

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixERSB_.exit3166: ; preds = %bb.avx
  %i.ekj = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4cvc58internal6theory10EvalResultaSERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.eki, ptr noundef nonnull align 8 dereferenceable(40) %255)
          to label %bb.avy unwind label %bb.awf   ; 0 uses

bb.avy:                                           ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixERSB_.exit3166
  call void @_ZN4cvc58internal6theory10EvalResultD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %255) #22
  %i.ekk = load ptr, ptr %256, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i3167 = icmp eq ptr %i.ekk, null
  br i1 %.not.i.i.i.i3167, label %_ZN4cvc58internal6StringD2Ev.exit3168, label %bb.avz

bb.avz:                                           ; preds = %bb.avy
  %i.ekl = load ptr, ptr %i.dz, align 8, !tbaa !33
  %i.ekm = ptrtoint ptr %i.ekl to i64
  %i.ekn = ptrtoint ptr %i.ekk to i64
  %i.eko = sub i64 %i.ekm, %i.ekn
  call void @_ZdlPvm(ptr noundef nonnull %i.ekk, i64 noundef %i.eko) #24
  br label %_ZN4cvc58internal6StringD2Ev.exit3168

_ZN4cvc58internal6StringD2Ev.exit3168:            ; preds = %bb.avy, %bb.avz
  call void @llvm.lifetime.end.p0(ptr nonnull %256) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %255) #22
  %i.ekp = load ptr, ptr %254, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i3169 = icmp eq ptr %i.ekp, null
  br i1 %.not.i.i.i3169, label %_ZNSt6vectorIjSaIjEED2Ev.exit3171, label %bb.awa

bb.awa:                                           ; preds = %_ZN4cvc58internal6StringD2Ev.exit3168
  %i.ekq = load ptr, ptr %i.du, align 8, !tbaa !33
  %i.ekr = ptrtoint ptr %i.ekq to i64
  %i.eks = ptrtoint ptr %i.ekp to i64
  %i.ekt = sub i64 %i.ekr, %i.eks
  call void @_ZdlPvm(ptr noundef nonnull %i.ekp, i64 noundef %i.ekt) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit3171

_ZNSt6vectorIjSaIjEED2Ev.exit3171:                ; preds = %_ZN4cvc58internal6StringD2Ev.exit3168, %bb.awa
  call void @llvm.lifetime.end.p0(ptr nonnull %254) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit2003

bb.awb:                                           ; preds = %bb.avm
  %i.eku = landingpad { ptr, i32 }
          cleanup
  br label %bb.awd

bb.awc:                                           ; preds = %bb.avn
  %i.ekv = landingpad { ptr, i32 }
          cleanup
  br label %bb.awd

bb.awd:                                           ; preds = %bb.awc, %bb.awb
  %.pn1388 = phi { ptr, i32 } [ %i.ekv, %bb.awc ], [ %i.eku, %bb.awb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %253) #22
  br label %bb.bwz

.loopexit4077:                                    ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit4079 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit3176

.loopexit.split-lp4078:                           ; preds = %.noexc.i.i3156
  %lpad.loopexit.split-lp4080 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit3176

bb.awe:                                           ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEvT_S7_.exit
  %i.ekw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6StringD2Ev.exit3173

.loopexit4082:                                    ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i3160
  %lpad.loopexit4084 = landingpad { ptr, i32 }
          cleanup
  br label %bb.awg

.loopexit.split-lp4083:                           ; preds = %.noexc.i.i.i.i3161
  %lpad.loopexit.split-lp4085 = landingpad { ptr, i32 }
          cleanup
  br label %bb.awg

bb.awf:                                           ; preds = %bb.avx, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEENS1_6theory10EvalResultESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEEixERSB_.exit3166
  %i.ekx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal6theory10EvalResultD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %255) #22
  br label %bb.awg

bb.awg:                                           ; preds = %.loopexit4082, %.loopexit.split-lp4083, %bb.awf
  %.pn1390 = phi { ptr, i32 } [ %i.ekx, %bb.awf ], [ %lpad.loopexit4084, %.loopexit4082 ], [ %lpad.loopexit.split-lp4085, %.loopexit.split-lp4083 ] ; 2 uses
  %i.eky = load ptr, ptr %256, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i3172 = icmp eq ptr %i.eky, null
  br i1 %.not.i.i.i.i3172, label %_ZN4cvc58internal6StringD2Ev.exit3173, label %bb.awh

bb.awh:                                           ; preds = %bb.awg
  %i.ekz = load ptr, ptr %i.dz, align 8, !tbaa !33
  %i.ela = ptrtoint ptr %i.ekz to i64
  %i.elb = ptrtoint ptr %i.eky to i64
  %i.elc = sub i64 %i.ela, %i.elb
  call void @_ZdlPvm(ptr noundef nonnull %i.eky, i64 noundef %i.elc) #24
  br label %_ZN4cvc58internal6StringD2Ev.exit3173

_ZN4cvc58internal6StringD2Ev.exit3173:            ; preds = %bb.awh, %bb.awg, %bb.awe
  %.pn1390.pn = phi { ptr, i32 } [ %i.ekw, %bb.awe ], [ %.pn1390, %bb.awg ], [ %.pn1390, %bb.awh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %256) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %255) #22
  %i.eld = load ptr, ptr %254, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i3174 = icmp eq ptr %i.eld, null
  br i1 %.not.i.i.i3174, label %_ZNSt6vectorIjSaIjEED2Ev.exit3176, label %bb.awi

bb.awi:                                           ; preds = %_ZN4cvc58internal6StringD2Ev.exit3173
  %i.ele = load ptr, ptr %i.du, align 8, !tbaa !33
  %i.elf = ptrtoint ptr %i.ele to i64
  %i.elg = ptrtoint ptr %i.eld to i64
  %i.elh = sub i64 %i.elf, %i.elg
  call void @_ZdlPvm(ptr noundef nonnull %i.eld, i64 noundef %i.elh) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit3176

_ZNSt6vectorIjSaIjEED2Ev.exit3176:                ; preds = %.loopexit4077, %.loopexit.split-lp4078, %bb.awi, %_ZN4cvc58internal6StringD2Ev.exit3173
  %.pn1390.pn.pn.pn = phi { ptr, i32 } [ %.pn1390.pn, %bb.awi ], [ %.pn1390.pn, %_ZN4cvc58internal6StringD2Ev.exit3173 ], [ %lpad.loopexit4079, %.loopexit4077 ], [ %lpad.loopexit.split-lp4080, %.loopexit.split-lp4078 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %254) #22
  br label %bb.bwz

bb.awj:                                           ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit2018, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit2018
  call void @llvm.lifetime.start.p0(ptr nonnull %257) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.eli = load ptr, ptr %19, align 8, !tbaa !60, !noalias !480 ; 2 uses
  %i.elj = getelementptr inbounds nuw i8, ptr %i.eli, i64 8
  %i.elk = load i64, ptr %i.elj, align 8, !noalias !480
  %i.ell = trunc i64 %i.elk to i32
  %i.elm = and i32 %i.ell, 1023                   ; 2 uses
  %i.eln = icmp eq i32 %i.elm, 1023
  %i.elo = select i1 %i.eln, i32 -1, i32 %i.elm
  %i.elp = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.elo)
          to label %bb.awk unwind label %bb.awp
end_hunk_0
