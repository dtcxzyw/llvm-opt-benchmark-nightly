Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Parsing?download=true
inline.NumInlined: 871
inline.NumDeleted: 414
begin_hunk_0_@_ZL22parseRangeSelectorImplN12_GLOBAL__N_110ParseStateE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18, %_ZNSt14_Function_baseD2Ev.exit.i, %_ZN4llvm5ErrorD2Ev.exit38.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i11.i
  %.sroa.19.1.i = phi i1 [ false, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i11.i ], [ true, %_ZN4llvm5ErrorD2Ev.exit38.i ], [ false, %_ZNSt14_Function_baseD2Ev.exit.i ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18 ]
  %.sroa.011.4.i = phi ptr [ %i.ff, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i11.i ], [ null, %_ZN4llvm5ErrorD2Ev.exit38.i ], [ %i.gq, %_ZNSt14_Function_baseD2Ev.exit.i ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18 ] ; 3 uses
  %i.hs = load i8, ptr %i.fi, align 8, !noalias !241
  %i.ht = trunc i8 %i.hs to i1
  br i1 %i.ht, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19
  %i.hu = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !22, !noalias !241 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %56, i64 48 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.v
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !12, !noalias !241
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #16, !noalias !241
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19
  %i.ia = load ptr, ptr %56, align 8, !tbaa !11, !noalias !241 ; 3 uses
  %.not.i.i41.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i42.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i42.i: ; preds = %bb.w
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !30, !noalias !241
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !241
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.ia) #15, !noalias !241, !inline_history !114
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.v, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i42.i, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #15, !noalias !241
  %.not.i.i43.i = icmp ne ptr %.sroa.011.4.i, null
  %or.cond.not.i44.i = select i1 %.sroa.19.1.i, i1 %.not.i.i43.i, i1 false
  br i1 %or.cond.not.i44.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i46.i, label %_Z11parseSingleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS7_IN5clang15CharSourceRangeEEERKNSB_12ast_matchers11MatchFinder11MatchResultEEEEEEEPFNS7_INS9_IT_EEEENS8_10ParseStateEEPFSK_SN_ESQ_.exit

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i46.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ie = load ptr, ptr %.sroa.011.4.i, align 8, !tbaa !30, !noalias !241
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !241
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.4.i) #15, !noalias !241, !inline_history !115
  br label %_Z11parseSingleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS7_IN5clang15CharSourceRangeEEERKNSB_12ast_matchers11MatchFinder11MatchResultEEEEEEEPFNS7_INS9_IT_EEEENS8_10ParseStateEEPFSK_SN_ESQ_.exit

_Z11parseSingleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS7_IN5clang15CharSourceRangeEEERKNSB_12ast_matchers11MatchFinder11MatchResultEEEEEEEPFNS7_INS9_IT_EEEENS8_10ParseStateEEPFSK_SN_ESQ_.exit: ; preds = %.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %57)
  call void @llvm.lifetime.end.p0(ptr nonnull %58)
  call void @llvm.lifetime.end.p0(ptr nonnull %59)
  br label %bb.bu

.critedge:                                        ; preds = %_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZL23getUnaryStringSelectorsB5cxx11v.exit
  %i.ih = load atomic i8, ptr @_ZGVZL22getUnaryRangeSelectorsvE1M acquire, align 8
  %i.ii = icmp eq i8 %i.ih, 0
  br i1 %i.ii, label %bb.x, label %_ZL22getUnaryRangeSelectorsv.exit, !prof !238

bb.x:                                             ; preds = %.critedge
  %i.ij = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL22getUnaryRangeSelectorsvE1M) #15
  %.not.i21 = icmp eq i32 %i.ij, 0
  br i1 %.not.i21, label %_ZL22getUnaryRangeSelectorsv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #15
  store ptr @.str.22, ptr %47, align 8, !tbaa !34
  %i.ik = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 6, ptr %i.ik, align 8, !tbaa !35
  %i.il = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr @_ZN5clang11transformer6beforeESt8functionIFN4llvm8ExpectedINS_15CharSourceRangeEEERKNS_12ast_matchers11MatchFinder11MatchResultEEE, ptr %i.il, align 8, !tbaa !254
  %i.im = getelementptr inbounds nuw i8, ptr %47, i64 24
  store ptr @.str.23, ptr %i.im, align 8, !tbaa !34
  %i.in = getelementptr inbounds nuw i8, ptr %47, i64 32
  store i64 5, ptr %i.in, align 8, !tbaa !35
  %i.io = getelementptr inbounds nuw i8, ptr %47, i64 40
  store ptr @_ZN5clang11transformer5afterESt8functionIFN4llvm8ExpectedINS_15CharSourceRangeEEERKNS_12ast_matchers11MatchFinder11MatchResultEEE, ptr %i.io, align 8, !tbaa !254
  %i.ip = getelementptr inbounds nuw i8, ptr %47, i64 48
  store ptr @.str.24, ptr %i.ip, align 8, !tbaa !34
  %i.iq = getelementptr inbounds nuw i8, ptr %47, i64 56
  store i64 9, ptr %i.iq, align 8, !tbaa !35
  %i.ir = getelementptr inbounds nuw i8, ptr %47, i64 64
  store ptr @_ZN5clang11transformer9expansionESt8functionIFN4llvm8ExpectedINS_15CharSourceRangeEEERKNS_12ast_matchers11MatchFinder11MatchResultEEE, ptr %i.ir, align 8, !tbaa !254
  call void @_ZN4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_ENS_15MallocAllocatorEEC2ESt16initializer_listISt4pairINS_9StringRefESE_EE(ptr noundef nonnull align 8 dereferenceable(20) @_ZZL22getUnaryRangeSelectorsvE1M, ptr nonnull %47, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  %i.is = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_ENS_15MallocAllocatorEED2Ev, ptr nonnull @_ZZL22getUnaryRangeSelectorsvE1M, ptr nonnull @__dso_handle) #15 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL22getUnaryRangeSelectorsvE1M) #15
  br label %_ZL22getUnaryRangeSelectorsv.exit

_ZL22getUnaryRangeSelectorsv.exit:                ; preds = %.critedge, %bb.x, %bb.y
  %i.it = load ptr, ptr %67, align 8, !tbaa !22   ; 2 uses
  %i.iu = load i64, ptr %i.cr, align 8, !tbaa !23 ; 2 uses
  %i.iv = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.it, i64 %i.iu) #15
  %i.iw = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) @_ZZL22getUnaryRangeSelectorsvE1M, ptr %i.it, i64 %i.iu, i32 noundef %i.iv) #15 ; 2 uses
  %i.ix = icmp eq i32 %i.iw, -1
  %i.iy = load ptr, ptr @_ZZL22getUnaryRangeSelectorsvE1M, align 8, !tbaa !39
  br i1 %i.ix, label %.critedge8, label %_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZL22getUnaryRangeSelectorsv.exit
  %i.iz = sext i32 %i.iw to i64                   ; 2 uses
  %.pre.i22 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL22getUnaryRangeSelectorsvE1M, i64 8), align 8, !tbaa !40
  %.pre7.i23 = zext i32 %.pre.i22 to i64
  %i.ja = icmp eq i64 %i.iz, %.pre7.i23
  br i1 %i.ja, label %.critedge8, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.iz
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !42
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %66, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %.sroa.0.0.copyload.i133 = load ptr, ptr %9, align 8, !tbaa !31, !noalias !255 ; 3 uses
  %.sroa.2.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.sroa.2.0.copyload.i135 = load i64, ptr %.sroa.2.0..sroa_idx.i134, align 8, !tbaa !20, !noalias !255 ; 4 uses
  %i.jf = icmp eq i64 %.sroa.2.0.copyload.i135, 0
  br i1 %i.jf, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i150, label %.lr.ph.i.i.i.i.i136

.lr.ph.i.i.i.i.i136:                              ; preds = %bb.z, %bb.aa
  %.pn914.i.i.i.i.i137 = phi i64 [ %i.jn, %bb.aa ], [ %.sroa.2.0.copyload.i135, %bb.z ] ; 4 uses
  %.sroa.0.013.i.i.i.i.i138 = phi ptr [ %i.jm, %bb.aa ], [ %.sroa.0.0.copyload.i133, %bb.z ] ; 2 uses
  %i.jg = load i8, ptr %.sroa.0.013.i.i.i.i.i138, align 1, !tbaa !12, !noalias !255 ; 2 uses
  %i.jh = icmp sgt i8 %i.jg, -1
  br i1 %i.jh, label %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i148", label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i139

"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i148": ; preds = %.lr.ph.i.i.i.i.i136
  %i.ji = zext nneg i8 %i.jg to i64
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr @_ZN5clang8charinfo9InfoTableE, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !14, !noalias !255
  %i.jl = and i16 %i.jk, 7
  %.not.i.i149 = icmp eq i16 %i.jl, 0
  br i1 %.not.i.i149, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i139, label %bb.aa

bb.aa:                                            ; preds = %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i148"
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.i.i138, i64 1
  %i.jn = add i64 %.pn914.i.i.i.i.i137, -1        ; 2 uses
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i150, label %.lr.ph.i.i.i.i.i136, !llvm.loop !0

_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i150: ; preds = %bb.aa, %bb.z
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i133, i64 %.sroa.2.0.copyload.i135
  store ptr %i.jp, ptr %9, align 8, !tbaa !31, !noalias !255
  store i64 0, ptr %.sroa.2.0..sroa_idx.i134, align 8, !tbaa !20, !noalias !255
  br label %_ZN4llvm5ErrorD2Ev.exit.i141

_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i139: ; preds = %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i148", %.lr.ph.i.i.i.i.i136
  %i.jq = sub nuw i64 %.sroa.2.0.copyload.i135, %.pn914.i.i.i.i.i137
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i133, i64 %i.jq ; 3 uses
  store ptr %i.jr, ptr %9, align 8, !tbaa !31, !noalias !255
  store i64 %.pn914.i.i.i.i.i137, ptr %.sroa.2.0..sroa_idx.i134, align 8, !tbaa !20, !noalias !255
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !12, !noalias !255
  %.not.i140 = icmp eq i8 %i.js, 40
  br i1 %.not.i140, label %bb.ab, label %_ZN4llvm5ErrorD2Ev.exit.i141

_ZN4llvm5ErrorD2Ev.exit.i141:                     ; preds = %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i139, %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i150
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !255
  store ptr @.str.17, ptr %8, align 8, !alias.scope !256, !noalias !255
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr inttoptr (i64 40 to ptr), ptr %i.jt, align 8, !alias.scope !256, !noalias !255
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 3, ptr %i.ju, align 8, !tbaa !45, !alias.scope !256, !noalias !255
  %i.jv = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 8, ptr %i.jv, align 1, !tbaa !46, !alias.scope !256, !noalias !255
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(34) %8) #15, !noalias !255
  call fastcc void @_ZL14makeParseErrorRKN12_GLOBAL__N_110ParseStateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nofree noundef align 8 dereferenceable(32) %7), !noalias !255
  %i.jw = load ptr, ptr %6, align 8, !tbaa !25, !noalias !257
  %i.jx = load ptr, ptr %7, align 8, !tbaa !22, !noalias !255 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_Z11parseSingleISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_ESK_.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i141
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !12, !noalias !255
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #16, !noalias !255
  br label %_Z11parseSingleISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_ESK_.exit.thread

_Z11parseSingleISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_ESK_.exit.thread: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 8
  %i.ke = or i8 %i.kd, 1
  store i8 %i.ke, ptr %i.kc, align 8
  store ptr %i.jw, ptr %0, align 8, !tbaa !11, !alias.scope !258
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit

bb.ab:                                            ; preds = %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i139
  %i.kf = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 1 ; 2 uses
  %i.kh = add i64 %.pn914.i.i.i.i.i137, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15, !noalias !259
  store ptr %i.kg, ptr %44, align 8, !tbaa !31
  %.sroa.14.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %i.kh, ptr %.sroa.14.0..sroa_idx260, align 8, !tbaa !20
  %.sroa.16262.0..sroa_idx263 = getelementptr inbounds nuw i8, ptr %44, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16262.0..sroa_idx263, ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i64 16, i1 false)
  call fastcc void @_ZL22parseRangeSelectorImplN12_GLOBAL__N_110ParseStateE(ptr dead_on_unwind noalias nonnull writable align 8 %43, ptr noundef nonnull byval(%"struct.(anonymous namespace)::ParseState") align 8 %44), !noalias !259, !inline_history !128
  %i.ki = getelementptr inbounds nuw i8, ptr %43, i64 64
  %.val7.i = load i8, ptr %i.ki, align 8, !noalias !259
  %i.kj = trunc i8 %.val7.i to i1
  br i1 %i.kj, label %.thread, label %bb.ac

.thread:                                          ; preds = %bb.ab
  %i.kk = load i64, ptr %43, align 8, !tbaa !11, !noalias !260
  %i.kl = inttoptr i64 %i.kk to ptr
  store ptr null, ptr %43, align 8, !tbaa !11, !noalias !260
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 8
  %i.ko = or i8 %i.kn, 1
  store i8 %i.ko, ptr %i.km, align 8
  store ptr %i.kl, ptr %0, align 8, !tbaa !11, !alias.scope !261
  br label %_Z11parseSingleISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_ESK_.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %43, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %.sroa.0.0.copyload.i110 = load ptr, ptr %13, align 8, !tbaa !31, !noalias !262 ; 3 uses
  %.sroa.2.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.sroa.2.0.copyload.i112 = load i64, ptr %.sroa.2.0..sroa_idx.i111, align 8, !tbaa !20, !noalias !262 ; 4 uses
  %i.kp = icmp eq i64 %.sroa.2.0.copyload.i112, 0
  br i1 %i.kp, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i, label %.lr.ph.i.i.i.i.i113

.lr.ph.i.i.i.i.i113:                              ; preds = %bb.ac, %bb.ad
  %.pn914.i.i.i.i.i114 = phi i64 [ %i.kx, %bb.ad ], [ %.sroa.2.0.copyload.i112, %bb.ac ] ; 4 uses
  %.sroa.0.013.i.i.i.i.i115 = phi ptr [ %i.kw, %bb.ad ], [ %.sroa.0.0.copyload.i110, %bb.ac ] ; 2 uses
  %i.kq = load i8, ptr %.sroa.0.013.i.i.i.i.i115, align 1, !tbaa !12, !noalias !262 ; 2 uses
  %i.kr = icmp sgt i8 %i.kq, -1
  br i1 %i.kr, label %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i122", label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i116

"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i122": ; preds = %.lr.ph.i.i.i.i.i113
  %i.ks = zext nneg i8 %i.kq to i64
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr @_ZN5clang8charinfo9InfoTableE, i64 %i.ks
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !14, !noalias !262
  %i.kv = and i16 %i.ku, 7
  %.not.i.i123 = icmp eq i16 %i.kv, 0
  br i1 %.not.i.i123, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i116, label %bb.ad

bb.ad:                                            ; preds = %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i122"
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.i.i115, i64 1
  %i.kx = add i64 %.pn914.i.i.i.i.i114, -1        ; 2 uses
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i, label %.lr.ph.i.i.i.i.i113, !llvm.loop !0

_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i: ; preds = %bb.ad, %bb.ac
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i110, i64 %.sroa.2.0.copyload.i112
  store ptr %i.kz, ptr %13, align 8, !tbaa !31, !noalias !262
  store i64 0, ptr %.sroa.2.0..sroa_idx.i111, align 8, !tbaa !20, !noalias !262
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i116: ; preds = %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i122", %.lr.ph.i.i.i.i.i113
  %i.la = sub nuw i64 %.sroa.2.0.copyload.i112, %.pn914.i.i.i.i.i114
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i110, i64 %i.la ; 3 uses
  store ptr %i.lb, ptr %13, align 8, !tbaa !31, !noalias !262
  store i64 %.pn914.i.i.i.i.i114, ptr %.sroa.2.0..sroa_idx.i111, align 8, !tbaa !20, !noalias !262
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !12, !noalias !262
  %.not.i117 = icmp eq i8 %i.lc, 41
  br i1 %.not.i117, label %bb.ae, label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i116, %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15, !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !262
  store ptr @.str.17, ptr %12, align 8, !alias.scope !263, !noalias !262
  %i.ld = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr inttoptr (i64 41 to ptr), ptr %i.ld, align 8, !alias.scope !263, !noalias !262
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 3, ptr %i.le, align 8, !tbaa !45, !alias.scope !263, !noalias !262
  %i.lf = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 8, ptr %i.lf, align 1, !tbaa !46, !alias.scope !263, !noalias !262
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(34) %12) #15, !noalias !262
  call fastcc void @_ZL14makeParseErrorRKN12_GLOBAL__N_110ParseStateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr nofree noundef align 8 dereferenceable(32) %11), !noalias !262
  %i.lg = load ptr, ptr %10, align 8, !tbaa !25, !noalias !264
  %i.lh = load ptr, ptr %11, align 8, !tbaa !22, !noalias !262 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZN4llvm5ErrorD2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !12, !noalias !262
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #16, !noalias !262
  br label %_ZN4llvm5ErrorD2Ev.exit102

_ZN4llvm5ErrorD2Ev.exit102:                       ; preds = %_ZN4llvm5ErrorD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 8
  %i.lo = or i8 %i.ln, 1
  store i8 %i.lo, ptr %i.lm, align 8
  store ptr %i.lg, ptr %0, align 8, !tbaa !11, !alias.scope !265
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.ae:                                            ; preds = %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i116
  %i.lp = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 1 ; 3 uses
  %i.lr = add i64 %.pn914.i.i.i.i.i114, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.ls = getelementptr inbounds nuw i8, ptr %46, i64 24
  %i.lt = getelementptr inbounds nuw i8, ptr %43, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %46, i8 0, i64 24, i1 false)
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !48
  store ptr %i.lu, ptr %i.ls, align 8, !tbaa !48
  %i.lv = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lx = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.ly = getelementptr inbounds nuw i8, ptr %46, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, i64 16, i1 false), !tbaa.struct !49
  store ptr %i.lw, ptr %i.ly, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lv, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit

_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit: ; preds = %bb.ae, %bb.af
  call void %i.je(ptr dead_on_unwind nonnull writable sret(%"class.std::function") align 8 %45, ptr nofree noundef nonnull align 8 dereferenceable(32) %46) #15, !noalias !259, !inline_history !128
  %i.lz = getelementptr inbounds nuw i8, ptr %45, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !48, !noalias !266
  %i.mb = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 16, !tbaa !27, !noalias !266 ; 3 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.not.i.i, label %_Z17makeParseProgressISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEEN12_GLOBAL__N_113ParseProgressIT_EENSD_10ParseStateESF_.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit
  %.sroa.6.sroa.0.0.copyload = load <2 x i64>, ptr %45, align 16, !tbaa !12, !noalias !259
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.mb, i8 0, i64 16, i1 false), !noalias !266
  br label %_Z17makeParseProgressISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEEN12_GLOBAL__N_113ParseProgressIT_EENSD_10ParseStateESF_.exit

_Z17makeParseProgressISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEEN12_GLOBAL__N_113ParseProgressIT_EENSD_10ParseStateESF_.exit: ; preds = %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit, %bb.ag
  %.sroa.6.sroa.0.0 = phi <2 x i64> [ zeroinitializer, %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit ], [ %.sroa.6.sroa.0.0.copyload, %bb.ag ]
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.me = load i8, ptr %i.md, align 8
  %i.mf = and i8 %i.me, -2
  store i8 %i.mf, ptr %i.md, align 8
  store ptr %i.lq, ptr %0, align 8, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.lr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !20
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.lp, i64 16, i1 false)
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mg, i8 0, i64 24, i1 false)
  store ptr %i.ma, ptr %i.mh, align 8, !tbaa !48
  %.not.i.i.not.i.i.i101 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.not.i.i.i101, label %_ZNSt14_Function_baseD2Ev.exit98, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS0_IN5clang15CharSourceRangeEEERKNS4_12ast_matchers11MatchFinder11MatchResultEEEEEEC2ISE_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISH_SE_EEvE4typeE.exit

_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS0_IN5clang15CharSourceRangeEEERKNS4_12ast_matchers11MatchFinder11MatchResultEEEEEEC2ISE_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISH_SE_EEvE4typeE.exit: ; preds = %_Z17makeParseProgressISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEEN12_GLOBAL__N_113ParseProgressIT_EENSD_10ParseStateESF_.exit
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %.sroa.6.sroa.0.0, ptr %i.mg, align 8, !tbaa !12
  store ptr %i.mc, ptr %i.mi, align 8, !tbaa !27
  br label %_ZNSt14_Function_baseD2Ev.exit98

_ZNSt14_Function_baseD2Ev.exit98:                 ; preds = %_Z17makeParseProgressISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEEN12_GLOBAL__N_113ParseProgressIT_EENSD_10ParseStateESF_.exit, %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS0_IN5clang15CharSourceRangeEEERKNS4_12ast_matchers11MatchFinder11MatchResultEEEEEEC2ISE_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISH_SE_EEvE4typeE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %46, i64 16
  %.pre364 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27, !noalias !259 ; 2 uses
  %.not.i96 = icmp eq ptr %.pre364, null
  br i1 %.not.i96, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit98
  %i.mj = call noundef zeroext i1 %.pre364(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(32) %46, i32 noundef 3) #15, !noalias !259, !inline_history !145 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.ah, %_ZNSt14_Function_baseD2Ev.exit98, %_ZN4llvm5ErrorD2Ev.exit102
  %.sroa.0257.0 = phi ptr [ null, %_ZN4llvm5ErrorD2Ev.exit102 ], [ %i.lq, %_ZNSt14_Function_baseD2Ev.exit98 ], [ %i.lq, %bb.ah ] ; 2 uses
  %.sroa.19.0 = phi i1 [ true, %_ZN4llvm5ErrorD2Ev.exit102 ], [ false, %_ZNSt14_Function_baseD2Ev.exit98 ], [ false, %bb.ah ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %43, i64 48
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !27, !noalias !259 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i93, label %_Z11parseSingleISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_ESK_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.mm = getelementptr inbounds nuw i8, ptr %43, i64 32 ; 2 uses
  %i.mn = call noundef zeroext i1 %i.ml(ptr noundef nonnull align 8 dereferenceable(32) %i.mm, ptr noundef nonnull align 8 dereferenceable(32) %i.mm, i32 noundef 3) #15, !noalias !259, !inline_history !146 ; 0 uses
  br label %_Z11parseSingleISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_ESK_.exit

_Z11parseSingleISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_ESK_.exit: ; preds = %.thread, %bb.ai, %_ZNSt14_Function_baseD2Ev.exit
  %.sroa.19.0467 = phi i1 [ %.sroa.19.0, %_ZNSt14_Function_baseD2Ev.exit ], [ false, %.thread ], [ %.sroa.19.0, %bb.ai ]
  %.sroa.0257.0465 = phi ptr [ %.sroa.0257.0, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.kg, %.thread ], [ %.sroa.0257.0, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15, !noalias !259
  %.not.i.i90 = icmp ne ptr %.sroa.0257.0465, null
  %or.cond.not.i = select i1 %.sroa.19.0467, i1 %.not.i.i90, i1 false
  br i1 %or.cond.not.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i92, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i92: ; preds = %_Z11parseSingleISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_ESK_.exit
  %i.mo = load ptr, ptr %.sroa.0257.0465, align 8, !tbaa !30, !noalias !259
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !noalias !259
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0257.0465) #15, !noalias !259, !inline_history !147
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit

_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit: ; preds = %_Z11parseSingleISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_ESK_.exit.thread, %_Z11parseSingleISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_ESK_.exit, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  br label %bb.bu

.critedge8:                                       ; preds = %_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZL22getUnaryRangeSelectorsv.exit
  %i.mr = load atomic i8, ptr @_ZGVZL24getBinaryStringSelectorsB5cxx11vE1MB5cxx11 acquire, align 8
  %i.ms = icmp eq i8 %i.mr, 0
  br i1 %i.ms, label %bb.aj, label %_ZL24getBinaryStringSelectorsB5cxx11v.exit, !prof !238

bb.aj:                                            ; preds = %.critedge8
  %i.mt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL24getBinaryStringSelectorsB5cxx11vE1MB5cxx11) #15
  %.not.i29 = icmp eq i32 %i.mt, 0
  br i1 %.not.i29, label %_ZL24getBinaryStringSelectorsB5cxx11v.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  store ptr @.str.25, ptr %42, align 8, !tbaa !34
  %i.mu = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 12, ptr %i.mu, align 8, !tbaa !35
  %i.mv = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr @_ZN5clang11transformer12encloseNodesENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_, ptr %i.mv, align 8, !tbaa !268
  call void @_ZN4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ENS_15MallocAllocatorEEC2ESt16initializer_listISt4pairINS_9StringRefESK_EE(ptr noundef nonnull align 8 dereferenceable(20) @_ZZL24getBinaryStringSelectorsB5cxx11vE1MB5cxx11, ptr nonnull %42, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  %i.mw = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ENS_15MallocAllocatorEED2Ev, ptr nonnull @_ZZL24getBinaryStringSelectorsB5cxx11vE1MB5cxx11, ptr nonnull @__dso_handle) #15 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL24getBinaryStringSelectorsB5cxx11vE1MB5cxx11) #15
  br label %_ZL24getBinaryStringSelectorsB5cxx11v.exit

_ZL24getBinaryStringSelectorsB5cxx11v.exit:       ; preds = %.critedge8, %bb.aj, %bb.ak
  %i.mx = load ptr, ptr %67, align 8, !tbaa !22   ; 2 uses
  %i.my = load i64, ptr %i.cr, align 8, !tbaa !23 ; 2 uses
  %i.mz = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.mx, i64 %i.my) #15
  %i.na = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) @_ZZL24getBinaryStringSelectorsB5cxx11vE1MB5cxx11, ptr %i.mx, i64 %i.my, i32 noundef %i.mz) #15 ; 2 uses
  %i.nb = icmp eq i32 %i.na, -1
  %i.nc = load ptr, ptr @_ZZL24getBinaryStringSelectorsB5cxx11vE1MB5cxx11, align 8, !tbaa !39
  br i1 %i.nb, label %.critedge10, label %_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZL24getBinaryStringSelectorsB5cxx11v.exit
  %i.nd = sext i32 %i.na to i64                   ; 2 uses
  %.pre.i30 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL24getBinaryStringSelectorsB5cxx11vE1MB5cxx11, i64 8), align 8, !tbaa !40
  %.pre7.i31 = zext i32 %.pre.i30 to i64
  %i.ne = icmp eq i64 %i.nd, %.pre7.i31
  br i1 %i.ne, label %.critedge10, label %bb.al

bb.al:                                            ; preds = %_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %i.nd
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !42
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !28
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i36)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %34), !noalias !269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %66, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %32), !noalias !269
  %.sroa.0.0.copyload.i.i38 = load ptr, ptr %34, align 8, !tbaa !31, !noalias !270 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %.sroa.2.0.copyload.i.i40 = load i64, ptr %.sroa.2.0..sroa_idx.i.i39, align 8, !tbaa !20, !noalias !270 ; 4 uses
  %i.nj = icmp eq i64 %.sroa.2.0.copyload.i.i40, 0
  br i1 %i.nj, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i.i68, label %.lr.ph.i.i.i.i.i.i41

.lr.ph.i.i.i.i.i.i41:                             ; preds = %bb.al, %bb.am
  %.pn914.i.i.i.i.i.i42 = phi i64 [ %i.nr, %bb.am ], [ %.sroa.2.0.copyload.i.i40, %bb.al ] ; 4 uses
  %.sroa.0.013.i.i.i.i.i.i43 = phi ptr [ %i.nq, %bb.am ], [ %.sroa.0.0.copyload.i.i38, %bb.al ] ; 2 uses
  %i.nk = load i8, ptr %.sroa.0.013.i.i.i.i.i.i43, align 1, !tbaa !12, !noalias !270 ; 2 uses
  %i.nl = icmp sgt i8 %i.nk, -1
  br i1 %i.nl, label %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i.i66", label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i.i44

"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i.i66": ; preds = %.lr.ph.i.i.i.i.i.i41
  %i.nm = zext nneg i8 %i.nk to i64
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr @_ZN5clang8charinfo9InfoTableE, i64 %i.nm
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !14, !noalias !270
  %i.np = and i16 %i.no, 7
  %.not.i.i.i67 = icmp eq i16 %i.np, 0
  br i1 %.not.i.i.i67, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i.i44, label %bb.am

bb.am:                                            ; preds = %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i.i66"
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.i.i.i43, i64 1
  %i.nr = add i64 %.pn914.i.i.i.i.i.i42, -1       ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 0
  br i1 %i.ns, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i.i68, label %.lr.ph.i.i.i.i.i.i41, !llvm.loop !0

_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i.i68: ; preds = %bb.am, %bb.al
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i38, i64 %.sroa.2.0.copyload.i.i40
  store ptr %i.nt, ptr %34, align 8, !tbaa !31, !noalias !270
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i39, align 8, !tbaa !20, !noalias !270
  br label %_ZN4llvm5ErrorD2Ev.exit.i.i46

_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i.i44: ; preds = %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i.i66", %.lr.ph.i.i.i.i.i.i41
  %i.nu = sub nuw i64 %.sroa.2.0.copyload.i.i40, %.pn914.i.i.i.i.i.i42
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i38, i64 %i.nu ; 3 uses
  store ptr %i.nv, ptr %34, align 8, !tbaa !31, !noalias !270
  store i64 %.pn914.i.i.i.i.i.i42, ptr %.sroa.2.0..sroa_idx.i.i39, align 8, !tbaa !20, !noalias !270
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !12, !noalias !270
  %.not.i.i45 = icmp eq i8 %i.nw, 40
  br i1 %.not.i.i45, label %bb.an, label %_ZN4llvm5ErrorD2Ev.exit.i.i46

_ZN4llvm5ErrorD2Ev.exit.i.i46:                    ; preds = %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i.i44, %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i.i68
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15, !noalias !270
  store ptr @.str.17, ptr %33, align 8, !alias.scope !271, !noalias !270
  %i.nx = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr inttoptr (i64 40 to ptr), ptr %i.nx, align 8, !alias.scope !271, !noalias !270
  %i.ny = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i8 3, ptr %i.ny, align 8, !tbaa !45, !alias.scope !271, !noalias !270
  %i.nz = getelementptr inbounds nuw i8, ptr %33, i64 33
  store i8 8, ptr %i.nz, align 1, !tbaa !46, !alias.scope !271, !noalias !270
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(34) %33) #15, !noalias !270
  call fastcc void @_ZL14makeParseErrorRKN12_GLOBAL__N_110ParseStateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %31, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr nofree noundef align 8 dereferenceable(32) %32), !noalias !270
  %i.oa = load ptr, ptr %31, align 8, !tbaa !25, !noalias !272
  %i.ob = load ptr, ptr %32, align 8, !tbaa !22, !noalias !270 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %.thread.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i47: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i.i46
  %i.oe = load i64, ptr %i.oc, align 8, !tbaa !12, !noalias !270
end_hunk_0
begin_hunk_1_@_ZL22parseRangeSelectorImplN12_GLOBAL__N_110ParseStateE:bb.a
_Z9parsePairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS7_IN5clang15CharSourceRangeEEERKNSB_12ast_matchers11MatchFinder11MatchResultEEEEEEEPFNS7_INS9_IT_EEEENS8_10ParseStateEEPFSK_SN_SN_ESQ_.exit: ; preds = %.thread.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i96.i, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i36)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  br label %bb.bu

.critedge10:                                      ; preds = %_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZL24getBinaryStringSelectorsB5cxx11v.exit
  %i.ty = load atomic i8, ptr @_ZGVZL23getBinaryRangeSelectorsvE1M acquire, align 8
  %i.tz = icmp eq i8 %i.ty, 0
  br i1 %i.tz, label %bb.bc, label %_ZL23getBinaryRangeSelectorsv.exit, !prof !238

bb.bc:                                            ; preds = %.critedge10
  %i.ua = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL23getBinaryRangeSelectorsvE1M) #15
  %.not.i69 = icmp eq i32 %i.ua, 0
  br i1 %.not.i69, label %_ZL23getBinaryRangeSelectorsv.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  store ptr @.str.26, ptr %22, align 8, !tbaa !34
  %i.ub = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 7, ptr %i.ub, align 8, !tbaa !35
  %i.uc = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr @_ZN5clang11transformer7encloseESt8functionIFN4llvm8ExpectedINS_15CharSourceRangeEEERKNS_12ast_matchers11MatchFinder11MatchResultEEESC_, ptr %i.uc, align 8, !tbaa !288
  %i.ud = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr @.str.27, ptr %i.ud, align 8, !tbaa !34
  %i.ue = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i64 7, ptr %i.ue, align 8, !tbaa !35
  %i.uf = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr @_ZN5clang11transformer7betweenESt8functionIFN4llvm8ExpectedINS_15CharSourceRangeEEERKNS_12ast_matchers11MatchFinder11MatchResultEEESC_, ptr %i.uf, align 8, !tbaa !288
  %i.ug = getelementptr inbounds nuw i8, ptr %22, i64 48
  store ptr @.str.28, ptr %i.ug, align 8, !tbaa !34
  %i.uh = getelementptr inbounds nuw i8, ptr %22, i64 56
  store i64 5, ptr %i.uh, align 8, !tbaa !35
  %i.ui = getelementptr inbounds nuw i8, ptr %22, i64 64
  store ptr @_ZN5clang11transformer5mergeESt8functionIFN4llvm8ExpectedINS_15CharSourceRangeEEERKNS_12ast_matchers11MatchFinder11MatchResultEEESC_, ptr %i.ui, align 8, !tbaa !288
  call void @_ZN4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_SC_ENS_15MallocAllocatorEEC2ESt16initializer_listISt4pairINS_9StringRefESE_EE(ptr noundef nonnull align 8 dereferenceable(20) @_ZZL23getBinaryRangeSelectorsvE1M, ptr nonnull %22, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.uj = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_SC_ENS_15MallocAllocatorEED2Ev, ptr nonnull @_ZZL23getBinaryRangeSelectorsvE1M, ptr nonnull @__dso_handle) #15 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL23getBinaryRangeSelectorsvE1M) #15
  br label %_ZL23getBinaryRangeSelectorsv.exit

_ZL23getBinaryRangeSelectorsv.exit:               ; preds = %.critedge10, %bb.bc, %bb.bd
  %i.uk = load ptr, ptr %67, align 8, !tbaa !22   ; 2 uses
  %i.ul = load i64, ptr %i.cr, align 8, !tbaa !23 ; 2 uses
  %i.um = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.uk, i64 %i.ul) #15
  %i.un = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) @_ZZL23getBinaryRangeSelectorsvE1M, ptr %i.uk, i64 %i.ul, i32 noundef %i.um) #15 ; 2 uses
  %i.uo = icmp eq i32 %i.un, -1
  %i.up = load ptr, ptr @_ZZL23getBinaryRangeSelectorsvE1M, align 8, !tbaa !39
  br i1 %i.uo, label %.critedge12, label %_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_SC_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_SC_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZL23getBinaryRangeSelectorsv.exit
  %i.uq = sext i32 %i.un to i64                   ; 2 uses
  %.pre.i70 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23getBinaryRangeSelectorsvE1M, i64 8), align 8, !tbaa !40
  %.pre7.i71 = zext i32 %.pre.i70 to i64
  %i.ur = icmp eq i64 %i.uq, %.pre7.i71
  br i1 %i.ur, label %.critedge12, label %bb.be

bb.be:                                            ; preds = %_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_SC_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.us = getelementptr inbounds [8 x i8], ptr %i.up, i64 %i.uq
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !42
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %66, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.sroa.0.0.copyload.i209 = load ptr, ptr %5, align 8, !tbaa !31, !noalias !289 ; 3 uses
  %.sroa.2.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.sroa.2.0.copyload.i211 = load i64, ptr %.sroa.2.0..sroa_idx.i210, align 8, !tbaa !20, !noalias !289 ; 4 uses
  %i.uw = icmp eq i64 %.sroa.2.0.copyload.i211, 0
  br i1 %i.uw, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i226, label %.lr.ph.i.i.i.i.i212

.lr.ph.i.i.i.i.i212:                              ; preds = %bb.be, %bb.bf
  %.pn914.i.i.i.i.i213 = phi i64 [ %i.ve, %bb.bf ], [ %.sroa.2.0.copyload.i211, %bb.be ] ; 4 uses
  %.sroa.0.013.i.i.i.i.i214 = phi ptr [ %i.vd, %bb.bf ], [ %.sroa.0.0.copyload.i209, %bb.be ] ; 2 uses
  %i.ux = load i8, ptr %.sroa.0.013.i.i.i.i.i214, align 1, !tbaa !12, !noalias !289 ; 2 uses
  %i.uy = icmp sgt i8 %i.ux, -1
  br i1 %i.uy, label %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i224", label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i215

"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i224": ; preds = %.lr.ph.i.i.i.i.i212
  %i.uz = zext nneg i8 %i.ux to i64
  %i.va = getelementptr inbounds nuw [2 x i8], ptr @_ZN5clang8charinfo9InfoTableE, i64 %i.uz
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !14, !noalias !289
  %i.vc = and i16 %i.vb, 7
  %.not.i.i225 = icmp eq i16 %i.vc, 0
  br i1 %.not.i.i225, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i215, label %bb.bf

bb.bf:                                            ; preds = %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i224"
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.i.i214, i64 1
  %i.ve = add i64 %.pn914.i.i.i.i.i213, -1        ; 2 uses
  %i.vf = icmp eq i64 %i.ve, 0
  br i1 %i.vf, label %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i226, label %.lr.ph.i.i.i.i.i212, !llvm.loop !0

_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i226: ; preds = %bb.bf, %bb.be
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i209, i64 %.sroa.2.0.copyload.i211
  store ptr %i.vg, ptr %5, align 8, !tbaa !31, !noalias !289
  store i64 0, ptr %.sroa.2.0..sroa_idx.i210, align 8, !tbaa !20, !noalias !289
  br label %_ZN4llvm5ErrorD2Ev.exit.i217

_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i215: ; preds = %"_ZN4llvm12function_refIFbcEE11callback_fnIZL17consumeWhitespaceNS_9StringRefEE3$_0EEblc.exit.i.i224", %.lr.ph.i.i.i.i.i212
  %i.vh = sub nuw i64 %.sroa.2.0.copyload.i211, %.pn914.i.i.i.i.i213
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i209, i64 %i.vh ; 3 uses
  store ptr %i.vi, ptr %5, align 8, !tbaa !31, !noalias !289
  store i64 %.pn914.i.i.i.i.i213, ptr %.sroa.2.0..sroa_idx.i210, align 8, !tbaa !20, !noalias !289
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !12, !noalias !289
  %.not.i216 = icmp eq i8 %i.vj, 40
  br i1 %.not.i216, label %bb.bg, label %_ZN4llvm5ErrorD2Ev.exit.i217

_ZN4llvm5ErrorD2Ev.exit.i217:                     ; preds = %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i215, %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.thread.i226
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !289
  store ptr @.str.17, ptr %4, align 8, !alias.scope !290, !noalias !289
  %i.vk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr inttoptr (i64 40 to ptr), ptr %i.vk, align 8, !alias.scope !290, !noalias !289
  %i.vl = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 3, ptr %i.vl, align 8, !tbaa !45, !alias.scope !290, !noalias !289
  %i.vm = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 8, ptr %i.vm, align 1, !tbaa !46, !alias.scope !290, !noalias !289
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(34) %4) #15, !noalias !289
  call fastcc void @_ZL14makeParseErrorRKN12_GLOBAL__N_110ParseStateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nofree noundef align 8 dereferenceable(32) %3), !noalias !289
  %i.vn = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.vo = load i8, ptr %i.vn, align 8
  %i.vp = or i8 %i.vo, 1                          ; 2 uses
  store i8 %i.vp, ptr %i.vn, align 8
  %i.vq = load ptr, ptr %2, align 8, !tbaa !25, !noalias !291 ; 2 uses
  store ptr %i.vq, ptr %14, align 8
  %i.vr = load ptr, ptr %3, align 8, !tbaa !22, !noalias !289 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.vt = icmp eq ptr %i.vr, %i.vs
  br i1 %i.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i217
  %i.vu = load i64, ptr %i.vs, align 8, !tbaa !12, !noalias !289
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vv) #16, !noalias !289
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !289
  br label %_ZL9parseCharcN12_GLOBAL__N_110ParseStateE.exit227

bb.bg:                                            ; preds = %_ZL17consumeWhitespaceN4llvm9StringRefE.exit.i215
  %.sroa.517.0..sroa_idx.i222 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.vw = getelementptr inbounds nuw i8, ptr %66, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx.i222, ptr noundef nonnull align 8 dereferenceable(16) %i.vw, i64 16, i1 false)
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vi, i64 1 ; 2 uses
  %i.vy = add i64 %.pn914.i.i.i.i.i213, -1
  %i.vz = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.wa = load i8, ptr %i.vz, align 8
  %i.wb = and i8 %i.wa, -2                        ; 2 uses
  store i8 %i.wb, ptr %i.vz, align 8
  store ptr %i.vx, ptr %14, align 8
  %.sroa.416.0..sroa_idx.i223 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.vy, ptr %.sroa.416.0..sroa_idx.i223, align 8
  br label %_ZL9parseCharcN12_GLOBAL__N_110ParseStateE.exit227

_ZL9parseCharcN12_GLOBAL__N_110ParseStateE.exit227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219, %bb.bg
  %.val5.i77.pre368 = phi ptr [ %i.vq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219 ], [ %i.vx, %bb.bg ] ; 2 uses
  %.val4.i76 = phi i8 [ %i.vp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219 ], [ %i.wb, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.wc = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.wd = trunc i8 %.val4.i76 to i1
  br i1 %i.wd, label %_Z9parsePairISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_SH_ESK_.exit.thread, label %bb.bh

_Z9parsePairISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_SH_ESK_.exit.thread: ; preds = %_ZL9parseCharcN12_GLOBAL__N_110ParseStateE.exit227
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.wf = load i8, ptr %i.we, align 8
  %i.wg = or i8 %i.wf, 1
  store i8 %i.wg, ptr %i.we, align 8
  store ptr %.val5.i77.pre368, ptr %0, align 8, !tbaa !11, !alias.scope !292
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit156

bb.bh:                                            ; preds = %_ZL9parseCharcN12_GLOBAL__N_110ParseStateE.exit227
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15, !noalias !293
  call fastcc void @_ZL22parseRangeSelectorImplN12_GLOBAL__N_110ParseStateE(ptr dead_on_unwind noalias nonnull writable align 8 %15, ptr noundef nonnull byval(%"struct.(anonymous namespace)::ParseState") align 8 %14)
  %i.wh = getelementptr inbounds nuw i8, ptr %15, i64 64
  %.val12.i = load i8, ptr %i.wh, align 8, !noalias !293
  %i.wi = trunc i8 %.val12.i to i1
  br i1 %i.wi, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i202, label %bb.bi

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i202: ; preds = %bb.bh
  %i.wj = load i64, ptr %15, align 8, !tbaa !11, !noalias !294
  %i.wk = inttoptr i64 %i.wj to ptr
  store ptr null, ptr %15, align 8, !tbaa !11, !noalias !294
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.wm = load i8, ptr %i.wl, align 8
  %i.wn = or i8 %i.wm, 1
  store i8 %i.wn, ptr %i.wl, align 8
  store ptr %i.wk, ptr %0, align 8, !tbaa !11, !alias.scope !295
  br label %_Z9parsePairISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_SH_ESK_.exit

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15, !noalias !293
  call fastcc void @_ZL9parseCharcN12_GLOBAL__N_110ParseStateE(ptr dead_on_unwind noalias writable align 8 %16, i8 noundef signext 44, ptr noundef nonnull byval(%"struct.(anonymous namespace)::ParseState") align 8 %15)
  %i.wo = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(41) %14, ptr noundef nonnull align 8 dereferenceable(41) %16), !inline_history !209 ; 0 uses
  %.val9.i = load ptr, ptr %16, align 8, !noalias !293 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %16, i64 40
  %.val10.i = load i8, ptr %i.wp, align 8, !noalias !293
  %i.wq = trunc i8 %.val10.i to i1
  %.not.i.i194 = icmp ne ptr %.val9.i, null
  %or.cond.not.i195 = select i1 %i.wq, i1 %.not.i.i194, i1 false
  br i1 %or.cond.not.i195, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i197, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit198

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i197: ; preds = %bb.bi
  %i.wr = load ptr, ptr %.val9.i, align 8, !tbaa !30, !noalias !293
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !293
  call void %i.wt(ptr noundef nonnull align 8 dereferenceable(8) %.val9.i) #15, !noalias !293, !inline_history !210
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit198

_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit198: ; preds = %bb.bi, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !293
  %.val3.i79 = load i8, ptr %i.wc, align 8        ; 2 uses
  %i.wu = trunc i8 %.val3.i79 to i1
  br i1 %i.wu, label %_Z9parsePairISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_SH_ESK_.exit.thread473, label %bb.bj

_Z9parsePairISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_SH_ESK_.exit.thread473: ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit198
  %i.wv = load i64, ptr %14, align 8
  %i.ww = inttoptr i64 %i.wv to ptr
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.wy = load i8, ptr %i.wx, align 8
  %i.wz = or i8 %i.wy, 1
  store i8 %i.wz, ptr %i.wx, align 8
  store ptr %i.ww, ptr %0, align 8, !tbaa !11, !alias.scope !296
  call fastcc void @_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS0_IN5clang15CharSourceRangeEEERKNS4_12ast_matchers11MatchFinder11MatchResultEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %15) #15, !noalias !293, !inline_history !209
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15, !noalias !293
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit156

bb.bj:                                            ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit198
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15, !noalias !293
  call fastcc void @_ZL22parseRangeSelectorImplN12_GLOBAL__N_110ParseStateE(ptr dead_on_unwind noalias nonnull writable align 8 %17, ptr noundef nonnull byval(%"struct.(anonymous namespace)::ParseState") align 8 %14)
  %i.xa = getelementptr inbounds nuw i8, ptr %17, i64 64
  %.val11.i = load i8, ptr %i.xa, align 8, !noalias !293
  %i.xb = trunc i8 %.val11.i to i1
  br i1 %i.xb, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i187, label %bb.bk

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i187: ; preds = %bb.bj
  %i.xc = load i64, ptr %17, align 8, !tbaa !11, !noalias !297
  %i.xd = inttoptr i64 %i.xc to ptr
  store ptr null, ptr %17, align 8, !tbaa !11, !noalias !297
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.xf = load i8, ptr %i.xe, align 8
  %i.xg = or i8 %i.xf, 1
  store i8 %i.xg, ptr %i.xe, align 8
  store ptr %i.xd, ptr %0, align 8, !tbaa !11, !alias.scope !298
  br label %bb.br

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15, !noalias !293
  call fastcc void @_ZL9parseCharcN12_GLOBAL__N_110ParseStateE(ptr dead_on_unwind noalias writable align 8 %18, i8 noundef signext 41, ptr noundef nonnull byval(%"struct.(anonymous namespace)::ParseState") align 8 %17)
  %i.xh = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(41) %14, ptr noundef nonnull align 8 dereferenceable(41) %18), !inline_history !209 ; 0 uses
  %.val7.i80 = load ptr, ptr %18, align 8, !noalias !293 ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %18, i64 40
  %.val8.i = load i8, ptr %i.xi, align 8, !noalias !293
  %i.xj = trunc i8 %.val8.i to i1
  %.not.i.i179 = icmp ne ptr %.val7.i80, null
  %or.cond.not.i180 = select i1 %i.xj, i1 %.not.i.i179, i1 false
  br i1 %or.cond.not.i180, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i182, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit183

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i182: ; preds = %bb.bk
  %i.xk = load ptr, ptr %.val7.i80, align 8, !tbaa !30, !noalias !293
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8, !noalias !293
  call void %i.xm(ptr noundef nonnull align 8 dereferenceable(8) %.val7.i80) #15, !noalias !293, !inline_history !210
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit183

_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit183: ; preds = %bb.bk, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !293
  %.val.i81 = load i8, ptr %i.wc, align 8         ; 3 uses
  %i.xn = trunc i8 %.val.i81 to i1
  br i1 %i.xn, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i177, label %bb.bl

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i177: ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit183
  %i.xo = load i64, ptr %14, align 8
  %i.xp = inttoptr i64 %i.xo to ptr
  store ptr null, ptr %14, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.xr = load i8, ptr %i.xq, align 8
  %i.xs = or i8 %i.xr, 1
  store i8 %i.xs, ptr %i.xq, align 8
  store ptr %i.xp, ptr %0, align 8, !tbaa !11, !alias.scope !299
  br label %bb.br

bb.bl:                                            ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit183
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0350)
  %i.xt = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.xu = getelementptr inbounds nuw i8, ptr %15, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 0, i64 24, i1 false)
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !48
  store ptr %i.xv, ptr %i.xt, align 8, !tbaa !48
  %i.xw = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.not.i172 = icmp eq ptr %i.xx, null
  br i1 %.not.i.i.not.i172, label %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit173, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.xy = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.xz = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.xy, i64 16, i1 false), !tbaa.struct !49
  store ptr %i.xx, ptr %i.xz, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xw, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit173

_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit173: ; preds = %bb.bl, %bb.bm
  %i.ya = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.yb = getelementptr inbounds nuw i8, ptr %17, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, i8 0, i64 24, i1 false)
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !48
  store ptr %i.yc, ptr %i.ya, align 8, !tbaa !48
  %i.yd = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.not.i170 = icmp eq ptr %i.ye, null
  br i1 %.not.i.i.not.i170, label %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit171, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit173
  %i.yf = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.yg = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.yf, i64 16, i1 false), !tbaa.struct !49
  store ptr %i.ye, ptr %i.yg, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yd, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit171

_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit171: ; preds = %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit173, %bb.bn
  call void %i.uv(ptr dead_on_unwind nonnull writable sret(%"class.std::function") align 8 %19, ptr nofree noundef nonnull align 8 dereferenceable(32) %20, ptr nofree noundef nonnull align 8 dereferenceable(32) %21) #15, !noalias !293, !inline_history !209
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0350, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  %i.yh = getelementptr inbounds nuw i8, ptr %19, i64 24
  %.sroa.0350.32..sroa_idx353 = getelementptr inbounds nuw i8, ptr %.sroa.0350, i64 32 ; 2 uses
  %.sroa.0350.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0350, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0350.32..sroa_idx, i8 0, i64 16, i1 false), !alias.scope !300, !noalias !293
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !48, !noalias !301
  %i.yj = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !27, !noalias !301 ; 3 uses
  %.not.i.i.not.i.i168 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i.not.i.i168, label %_Z17makeParseProgressISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEEN12_GLOBAL__N_113ParseProgressIT_EENSD_10ParseStateESF_.exit169, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0350.32..sroa_idx353, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !49, !noalias !293
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yj, i8 0, i64 16, i1 false), !noalias !301
  br label %_Z17makeParseProgressISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEEN12_GLOBAL__N_113ParseProgressIT_EENSD_10ParseStateESF_.exit169

_Z17makeParseProgressISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEEN12_GLOBAL__N_113ParseProgressIT_EENSD_10ParseStateESF_.exit169: ; preds = %_ZNSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEC2EOSB_.exit171, %bb.bo
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ym = load i8, ptr %i.yl, align 8
  %i.yn = and i8 %i.ym, -2
  store i8 %i.yn, ptr %i.yl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yo, i8 0, i64 24, i1 false)
  store ptr %i.yi, ptr %i.yp, align 8, !tbaa !48
  %.not.i.i.not.i.i.i166 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i.not.i.i.i166, label %_ZNSt14_Function_baseD2Ev.exit162, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS0_IN5clang15CharSourceRangeEEERKNS4_12ast_matchers11MatchFinder11MatchResultEEEEEEC2ISE_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISH_SE_EEvE4typeE.exit167

_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS0_IN5clang15CharSourceRangeEEERKNS4_12ast_matchers11MatchFinder11MatchResultEEEEEEC2ISE_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISH_SE_EEvE4typeE.exit167: ; preds = %_Z17makeParseProgressISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEEN12_GLOBAL__N_113ParseProgressIT_EENSD_10ParseStateESF_.exit169
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yo, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0350.32..sroa_idx353, i64 16, i1 false), !tbaa.struct !49
  store ptr %i.yk, ptr %i.yq, align 8, !tbaa !27
  br label %_ZNSt14_Function_baseD2Ev.exit162

_ZNSt14_Function_baseD2Ev.exit162:                ; preds = %_Z17makeParseProgressISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEEN12_GLOBAL__N_113ParseProgressIT_EENSD_10ParseStateESF_.exit169, %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS0_IN5clang15CharSourceRangeEEERKNS4_12ast_matchers11MatchFinder11MatchResultEEEEEEC2ISE_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vISH_SE_EEvE4typeE.exit167
  %.phi.trans.insert365 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.pre366 = load ptr, ptr %.phi.trans.insert365, align 8, !tbaa !27, !noalias !293 ; 2 uses
  %.not.i159 = icmp eq ptr %.pre366, null
  br i1 %.not.i159, label %_ZNSt14_Function_baseD2Ev.exit160, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit162
  %i.yr = call noundef zeroext i1 %.pre366(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 3) #15, !noalias !293, !inline_history !221 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit160

_ZNSt14_Function_baseD2Ev.exit160:                ; preds = %_ZNSt14_Function_baseD2Ev.exit162, %bb.bp
  %i.ys = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !27, !noalias !293 ; 2 uses
  %.not.i157 = icmp eq ptr %i.yt, null
  br i1 %.not.i157, label %_ZNSt14_Function_baseD2Ev.exit158, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit160
  %i.yu = call noundef zeroext i1 %i.yt(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3) #15, !noalias !293, !inline_history !221 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit158

_ZNSt14_Function_baseD2Ev.exit158:                ; preds = %_ZNSt14_Function_baseD2Ev.exit160, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0350)
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit158, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i177, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i187
  %.val6.i78362 = phi i8 [ %.val.i81, %_ZNSt14_Function_baseD2Ev.exit158 ], [ %.val.i81, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i177 ], [ %.val3.i79, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i187 ]
  call fastcc void @_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS0_IN5clang15CharSourceRangeEEERKNS4_12ast_matchers11MatchFinder11MatchResultEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %17) #15, !noalias !293, !inline_history !209
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !293
  %.val5.i77.pre.pre = load ptr, ptr %14, align 8
  br label %_Z9parsePairISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_SH_ESK_.exit

_Z9parsePairISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_SH_ESK_.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i202, %bb.br
  %.val5.i77.pre = phi ptr [ %.val5.i77.pre.pre, %bb.br ], [ %.val5.i77.pre368, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i202 ] ; 3 uses
  %.val6.i78361 = phi i8 [ %.val6.i78362, %bb.br ], [ %.val4.i76, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i202 ]
  call fastcc void @_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS0_IN5clang15CharSourceRangeEEERKNS4_12ast_matchers11MatchFinder11MatchResultEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %15) #15, !noalias !293, !inline_history !209
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15, !noalias !293
  %i.yv = trunc i8 %.val6.i78361 to i1
  %.not.i.i152 = icmp ne ptr %.val5.i77.pre, null
  %or.cond.not.i153 = select i1 %i.yv, i1 %.not.i.i152, i1 false
  br i1 %or.cond.not.i153, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i155, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit156

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i155: ; preds = %_Z9parsePairISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_SH_ESK_.exit
  %i.yw = load ptr, ptr %.val5.i77.pre, align 8, !tbaa !30, !noalias !293
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.yy = load ptr, ptr %i.yx, align 8, !noalias !293
  call void %i.yy(ptr noundef nonnull align 8 dereferenceable(8) %.val5.i77.pre) #15, !noalias !293, !inline_history !210
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit156

_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit156: ; preds = %_Z9parsePairISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_SH_ESK_.exit.thread473, %_Z9parsePairISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_SH_ESK_.exit.thread, %_Z9parsePairISt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEEENS2_IN12_GLOBAL__N_113ParseProgressISC_EEEEPFNS2_INSE_IT_EEEENSD_10ParseStateEEPFSC_SH_SH_ESK_.exit, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %bb.bu

.critedge12:                                      ; preds = %_ZNK4llvm9StringMapIPFSt8functionIFNS_8ExpectedIN5clang15CharSourceRangeEEERKNS3_12ast_matchers11MatchFinder11MatchResultEEESC_SC_ENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZL23getBinaryRangeSelectorsv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.yz = load ptr, ptr %67, align 8, !tbaa !22, !noalias !302
  %i.za = load i64, ptr %i.cr, align 8, !tbaa !23, !noalias !302 ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 4 uses
  store ptr %i.zb, ptr %69, align 8, !tbaa !18, !alias.scope !303
  %i.zc = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 3 uses
  store i64 0, ptr %i.zc, align 8, !tbaa !23, !alias.scope !303
  store i8 0, ptr %i.zb, align 8, !tbaa !12, !alias.scope !303
  %i.zd = add i64 %i.za, 23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %69, i64 noundef %i.zd) #15
  %i.ze = load i64, ptr %i.zc, align 8, !tbaa !23, !alias.scope !303
  %i.zf = add i64 %i.ze, -4611686018427387881
  %i.zg = icmp ult i64 %i.zf, 23
  br i1 %i.zg, label %bb.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.bs:                                            ; preds = %.critedge12
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %.critedge12
  %i.zh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull @.str.7, i64 noundef 23) #15 ; 0 uses
  %i.zi = load i64, ptr %i.zc, align 8, !tbaa !23, !alias.scope !303
  %i.zj = sub i64 4611686018427387903, %i.zi
  %i.zk = icmp ult i64 %i.zj, %i.za
  br i1 %i.zk, label %bb.bt, label %_ZN4llvm5ErrorD2Ev.exit82

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #17
  unreachable

_ZN4llvm5ErrorD2Ev.exit82:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.zl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef %i.yz, i64 noundef %i.za) #15 ; 0 uses
  call fastcc void @_ZL14makeParseErrorRKN12_GLOBAL__N_110ParseStateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %68, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 dereferenceable(32) %69)
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.zn = load i8, ptr %i.zm, align 8
  %i.zo = or i8 %i.zn, 1
  store i8 %i.zo, ptr %i.zm, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.zp = load ptr, ptr %68, align 8, !tbaa !25, !noalias !304
  store ptr %i.zp, ptr %0, align 8, !tbaa !11, !alias.scope !304
  %i.zq = load ptr, ptr %69, align 8, !tbaa !22   ; 2 uses
  %i.zr = icmp eq ptr %i.zq, %i.zb
  br i1 %i.zr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZN4llvm5ErrorD2Ev.exit82
  %i.zs = load i64, ptr %i.zb, align 8, !tbaa !12
  %i.zt = add i64 %i.zs, 1
  call void @_ZdlPvm(ptr noundef %i.zq, i64 noundef %i.zt) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #15
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit156, %_Z9parsePairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS7_IN5clang15CharSourceRangeEEERKNSB_12ast_matchers11MatchFinder11MatchResultEEEEEEEPFNS7_INS9_IT_EEEENS8_10ParseStateEEPFSK_SN_SN_ESQ_.exit, %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt9nullopt_tEEED2Ev.exit, %_Z11parseSingleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressISt8functionIFNS7_IN5clang15CharSourceRangeEEERKNSB_12ast_matchers11MatchFinder11MatchResultEEEEEEEPFNS7_INS9_IT_EEEENS8_10ParseStateEEPFSK_SN_ESQ_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.zu = load ptr, ptr %67, align 8, !tbaa !22   ; 2 uses
  %i.zv = icmp eq ptr %i.zu, %i.cg
  br i1 %i.zv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.bu
  %i.zw = load i64, ptr %i.cg, align 8, !tbaa !12
  %i.zx = add i64 %i.zw, 1
  call void @_ZdlPvm(ptr noundef %i.zu, i64 noundef %i.zx) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #15
  %.pre363 = load i8, ptr %i.by, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.zy = phi i8 [ %.pre363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.val, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ]
  %i.zz = trunc i8 %i.zy to i1
  br i1 %i.zz, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aaa = getelementptr inbounds nuw i8, ptr %66, i64 32
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !22 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %66, i64 48 ; 2 uses
  %i.aad = icmp eq ptr %i.aab, %i.aac
  br i1 %i.aad, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87: ; preds = %bb.bw
  %i.aae = load i64, ptr %i.aac, align 8, !tbaa !12
  %i.aaf = add i64 %i.aae, 1
  call void @_ZdlPvm(ptr noundef %i.aab, i64 noundef %i.aaf) #16
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit

bb.bx:                                            ; preds = %bb.bv
  %i.aag = load ptr, ptr %66, align 8, !tbaa !11  ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.aag, null
  br i1 %.not.i.i89, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.bx
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !30
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.aaj = load ptr, ptr %i.aai, align 8
  call void %i.aaj(ptr noundef nonnull align 8 dereferenceable(8) %i.aag) #15, !inline_history !228
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit

_ZN4llvm8ExpectedIN12_GLOBAL__N_113ParseProgressINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i87, %bb.bx, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #15
  ret void
}
end_hunk_1
