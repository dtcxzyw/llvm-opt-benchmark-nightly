Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/vm?download=true
inline.NumInlined: 10178
inline.NumDeleted: 3163
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter8evaluateEPKNS0_3ASTEj:bb.a
  store ptr %i.kq, ptr %11, align 8
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.320, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp4110 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt3mapIPKN7jsonnet8internal10IdentifierEPNS1_12_GLOBAL__N_19HeapThunkESt4lessIS4_ESaISt4pairIKS4_S7_EEE4findERSB_.exit.thread
  %i.lp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.78, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1936 unwind label %.loopexit.split-lp4110 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1936: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef 2145)
          to label %bb.ab unwind label %.loopexit.split-lp4110 ; 2 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1936
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, ptr noundef nonnull @.str.321, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1938 unwind label %.loopexit.split-lp4110 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1938: ; preds = %bb.ab
  %i.ls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.lq)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp4110, !inline_history !6 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1938
  call void @abort() #38
  unreachable

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE9push_backERKS4_.exit1933: ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i1930, %bb.w
  %i.lt = phi ptr [ %i.ln, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i1930 ], [ %i.ko, %bb.w ]
  %i.lu = phi ptr [ %i.lm, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i1930 ], [ %i.ky, %bb.w ]
  %i.lv = phi ptr [ %i.lj, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i1930 ], [ %i.kq, %bb.w ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.03481.05491, i64 8 ; 2 uses
  %.not4023 = icmp eq ptr %i.lw, %i.ke
  br i1 %.not4023, label %._crit_edge5493, label %.lr.ph5492

bb.ac:                                            ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i
  %i.lx = load i64, ptr %i.e, align 8, !tbaa !64  ; 2 uses
  store i64 %i.lx, ptr %i.cd, align 8, !tbaa !68
  %i.ly = load ptr, ptr %12, align 8, !tbaa !66
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lx
  store i8 0, ptr %i.lz, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  %i.ma = getelementptr inbounds i8, ptr %.val1747, i64 -352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %i.ma, i64 32, i1 false)
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack8newFrameIJNS1_9FrameKindENS0_13LocationRangeEEEEvDpT_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i32 noundef 5, ptr nofreeobj noundef align 8 dereferenceable(64) %12)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.mb = load ptr, ptr %12, align 8, !tbaa !66   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.cc
  br i1 %i.mc, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  %i.md = load i64, ptr %i.cc, align 8, !tbaa !67
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #40
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.val1746 = load ptr, ptr %i.z, align 8, !tbaa !194
  %i.mf = getelementptr inbounds i8, ptr %.val1746, i64 -48
  %i.mg = invoke fastcc noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapIPKN7jsonnet8internal10IdentifierEPNS1_12_GLOBAL__N_19HeapThunkESt4lessIS4_ESaISt4pairIKS4_S7_EEEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.mf, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %bb.ae unwind label %bb.ah     ; 0 uses

bb.ae:                                            ; preds = %_ZN7jsonnet8internal13LocationRangeD2Ev.exit
  %.val1745 = load ptr, ptr %i.z, align 8, !tbaa !194
  %i.mh = getelementptr inbounds i8, ptr %.val1745, i64 -168
  %i.mi = invoke fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.mh, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.af unwind label %bb.ah     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.mj = invoke fastcc ptr @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter18makeBuiltinFromASTEPKNS0_19BuiltinFunctionBodyE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef %.0854)
          to label %._crit_edge8500 unwind label %bb.aj

._crit_edge8500:                                  ; preds = %bb.af
  %.val1744 = load ptr, ptr %i.z, align 8, !tbaa !194 ; 2 uses
  %i.mk = getelementptr inbounds i8, ptr %.val1744, i64 -312
  store i32 17, ptr %i.mk, align 8, !tbaa !67
  %.sroa.5786.0..sroa_idx = getelementptr inbounds i8, ptr %.val1744, i64 -304
  store ptr %i.mj, ptr %.sroa.5786.0..sroa_idx, align 8, !tbaa !67
  %.val1688 = load ptr, ptr %11, align 8          ; 3 uses
  %.not.i.i.i1940 = icmp eq ptr %.val1688, null
  br i1 %.not.i.i.i1940, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit1941, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge8500
  %.val1689 = load ptr, ptr %i.cb, align 8
  %i.ml = ptrtoint ptr %.val1689 to i64
  %i.mm = ptrtoint ptr %.val1688 to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %.val1688, i64 noundef %i.mn) #40
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit1941

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit1941: ; preds = %._crit_edge8500, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  %.val1614 = load ptr, ptr %i.bw, align 8, !tbaa !60
  call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.val1614)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %.loopexit4127.preheader

bb.ah:                                            ; preds = %.noexc.i.i1920, %bb.ae, %_ZN7jsonnet8internal13LocationRangeD2Ev.exit
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit1944

bb.ai:                                            ; preds = %bb.ac
  %i.mp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mq = load ptr, ptr %12, align 8, !tbaa !66   ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.cc
  br i1 %i.mr, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit1944, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1942

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1942: ; preds = %bb.ai
  %i.ms = load i64, ptr %i.cc, align 8, !tbaa !67
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mq, i64 noundef %i.mt) #40
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit1944

bb.aj:                                            ; preds = %bb.af
  %i.mu = landingpad { ptr, i32 }
          cleanup
  %.val1686.pre = load ptr, ptr %11, align 8
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit1944

_ZN7jsonnet8internal13LocationRangeD2Ev.exit1944: ; preds = %bb.ai, %.loopexit4109, %.loopexit.split-lp4110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1942, %bb.ah, %bb.aj
  %.val1686 = phi ptr [ %.lcssa5486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1942 ], [ %.val1686.pre, %bb.aj ], [ %.lcssa5486, %bb.ah ], [ %i.kq, %.loopexit.split-lp4110 ], [ %i.kq, %.loopexit4109 ], [ %.lcssa5486, %bb.ai ] ; 3 uses
  %.pn1278 = phi { ptr, i32 } [ %i.mp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1942 ], [ %i.mu, %bb.aj ], [ %i.mo, %bb.ah ], [ %lpad.loopexit.split-lp4112, %.loopexit.split-lp4110 ], [ %lpad.loopexit4111, %.loopexit4109 ], [ %i.mp, %bb.ai ]
  %.not.i.i.i1945 = icmp eq ptr %.val1686, null
  br i1 %.not.i.i.i1945, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit1946, label %bb.ak

bb.ak:                                            ; preds = %_ZN7jsonnet8internal13LocationRangeD2Ev.exit1944
  %.val1687 = load ptr, ptr %i.cb, align 8
  %i.mv = ptrtoint ptr %.val1687 to i64
  %i.mw = ptrtoint ptr %.val1686 to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %.val1686, i64 noundef %i.mx) #40
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit1946

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_19HeapThunkESaIS4_EED2Ev.exit1946: ; preds = %_ZN7jsonnet8internal13LocationRangeD2Ev.exit1944, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  %.val1613 = load ptr, ptr %i.bw, align 8, !tbaa !60
  call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.val1613)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  br label %common.resume

bb.al:                                            ; preds = %.backedge
  call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack8newFrameIJNS1_9FrameKindEPKNS0_3ASTEEEEvDpT_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i32 noundef 8, ptr noundef nonnull %.0854)
  %i.my = getelementptr inbounds nuw i8, ptr %.0854, i64 128
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !625
  br label %.backedge.backedge

bb.am:                                            ; preds = %.backedge
  call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack8newFrameIJNS1_9FrameKindEPKNS0_3ASTEEEEvDpT_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i32 noundef 7, ptr noundef nonnull %.0854)
  %i.na = getelementptr inbounds nuw i8, ptr %.0854, i64 128
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !627
  br label %.backedge.backedge

bb.an:                                            ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  %i.nc = getelementptr inbounds nuw i8, ptr %.0854, i64 104
  %.val1799 = load ptr, ptr %i.nc, align 8, !tbaa !234
  %i.nd = getelementptr i8, ptr %.0854, i64 112
  %.val1800 = load ptr, ptr %i.nd, align 8, !tbaa !234
  call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111Interpreter7captureERKSt6vectorIPKNS0_10IdentifierESaIS6_EE(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull align 8 dereferenceable(480) %0, ptr %.val1799, ptr %.val1800)
  %.val1749 = load ptr, ptr %i.y, align 8, !tbaa !218 ; 2 uses
  %.val1750 = load ptr, ptr %i.z, align 8, !tbaa !219
  %i.ne = ptrtoint ptr %.val1750 to i64
  %i.nf = ptrtoint ptr %.val1749 to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = sdiv exact i64 %i.ng, 400
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %indvars.iv.i1947 = phi i64 [ %indvars.iv.next.i1948, %bb.ap ], [ %i.nh, %bb.an ]
  %indvars.iv.next.i1948 = add i64 %indvars.iv.i1947, -1 ; 3 uses
  %i.ni = and i64 %indvars.iv.next.i1948, 2147483648
  %i.nj = icmp eq i64 %i.ni, 0
  br i1 %i.nj, label %bb.ap, label %_ZN7jsonnet8internal12_GLOBAL__N_15Stack14getSelfBindingERPNS1_10HeapObjectERj.exit1950

bb.ap:                                            ; preds = %bb.ao
  %i.nk = and i64 %indvars.iv.next.i1948, 2147483647
  %i.nl = getelementptr inbounds nuw [400 x i8], ptr %.val1749, i64 %i.nk ; 3 uses
  %.val13.i1949 = load i32, ptr %i.nl, align 8, !tbaa !231
  %i.nm = icmp eq i32 %.val13.i1949, 6
  br i1 %i.nm, label %bb.aq, label %bb.ao, !llvm.loop !590

bb.aq:                                            ; preds = %bb.ap
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 336
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !232
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 344
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !233
  br label %_ZN7jsonnet8internal12_GLOBAL__N_15Stack14getSelfBindingERPNS1_10HeapObjectERj.exit1950

_ZN7jsonnet8internal12_GLOBAL__N_15Stack14getSelfBindingERPNS1_10HeapObjectERj.exit1950: ; preds = %bb.ao, %bb.aq
  %.03500 = phi i32 [ %i.nq, %bb.aq ], [ 0, %bb.ao ]
  %.03499 = phi ptr [ %i.no, %bb.aq ], [ null, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.nr = getelementptr inbounds nuw i8, ptr %.0854, i64 152
  %i.ns = getelementptr inbounds nuw i8, ptr %.0854, i64 160
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !628 ; 4 uses
  %i.nu = load ptr, ptr %i.nr, align 8, !tbaa !629 ; 4 uses
  %i.nv = ptrtoint ptr %i.nt to i64
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = sdiv exact i64 %i.nx, 88                ; 3 uses
  %181 = icmp ugt i64 %i.ny, 576460752303423487
  br i1 %181, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_15Stack14getSelfBindingERPNS1_10HeapObjectERj.exit1950
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.380) #42
          to label %.noexc1951 unwind label %.loopexit.split-lp4133

.noexc1951:                                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_15Stack14getSelfBindingERPNS1_10HeapObjectERj.exit1950
  %.not6953 = icmp eq ptr %i.nt, %i.nu
  br i1 %.not6953, label %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.as
  %i.nz = shl nuw nsw i64 %i.ny, 4
  %i.oa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nz) #41
          to label %_ZNSt12_Vector_baseIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE13_M_deallocateEPS4_m.exit.i unwind label %.loopexit4132 ; 4 uses

_ZNSt12_Vector_baseIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE11_M_allocateEm.exit.i
  store ptr %i.oa, ptr %14, align 8, !tbaa !243
  store ptr %i.oa, ptr %i.br, align 8, !tbaa !244
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %i.oa, i64 %i.ny ; 2 uses
  store ptr %i.ob, ptr %i.bq, align 8, !tbaa !245
  br label %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE13_M_deallocateEPS4_m.exit.i, %bb.as
  %.promoted5476 = phi ptr [ %i.oa, %_ZNSt12_Vector_baseIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ null, %bb.as ] ; 3 uses
  %.promoted = phi ptr [ %i.ob, %_ZNSt12_Vector_baseIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ null, %bb.as ] ; 2 uses
  %.not40225480 = icmp eq ptr %i.nu, %i.nt
  br i1 %.not40225480, label %._crit_edge5483, label %.lr.ph5482

._crit_edge5483:                                  ; preds = %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE12emplace_backIJRKPKNS1_10IdentifierERKPNS1_3ASTEEEERS4_DpOT_.exit, %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE7reserveEm.exit
  %.val1835 = phi ptr [ %.promoted5476, %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE7reserveEm.exit ], [ %i.sd, %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE12emplace_backIJRKPKNS1_10IdentifierERKPNS1_3ASTEEEERS4_DpOT_.exit ] ; 9 uses
  %.val1836 = phi ptr [ %.promoted, %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE7reserveEm.exit ], [ %i.se, %_ZNSt6vectorIN7jsonnet8internal12_GLOBAL__N_111HeapClosure5ParamESaIS4_EE12emplace_backIJRKPKNS1_10IdentifierERKPNS1_3ASTEEEERS4_DpOT_.exit ] ; 7 uses
  store ptr %.val1836, ptr %i.bq, align 8
  store ptr %.val1835, ptr %14, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %.0854, i64 208
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !631
  %i.oe = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #41
          to label %.noexc1958 unwind label %.loopexit.split-lp4115.loopexit.split-lp.loopexit ; 7 uses

.noexc1958:                                       ; preds = %._crit_edge5483
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  store ptr %i.bs, ptr %8, align 8, !tbaa !63
  store i64 0, ptr %i.bt, align 8, !tbaa !68
  store i8 0, ptr %i.bs, align 8, !tbaa !67
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_111HeapClosureC2ERKSt3mapIPKNS0_10IdentifierEPNS1_9HeapThunkESt4lessIS6_ESaISt4pairIKS6_S8_EEEPNS1_10HeapObjectEjRKSt6vectorINS2_5ParamESaISL_EEPKNS0_3ASTERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %i.oe, ptr noundef nonnull readonly align 8 dereferenceable(48) %13, ptr noundef %.03499, i32 noundef %.03500, ptr noundef nonnull readonly align 8 dereferenceable(24) %14, ptr noundef %i.od, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.at unwind label %bb.az

bb.at:                                            ; preds = %.noexc1958
  %i.of = load ptr, ptr %8, align 8, !tbaa !66    ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.bs
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.at
  %i.oh = load i64, ptr %i.bs, align 8, !tbaa !67
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %i.oj = load ptr, ptr %i.ax, align 8, !tbaa !186 ; 5 uses
  %i.ok = load ptr, ptr %i.ay, align 8, !tbaa !187
  %.not.i.i.i.i.i = icmp eq ptr %i.oj, %i.ok
  br i1 %.not.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  store ptr %i.oe, ptr %i.oj, align 8, !tbaa !189
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 2 uses
  store ptr %i.ol, ptr %i.ax, align 8, !tbaa !186
  %.val.pre.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !190
  br label %_ZN7jsonnet8internal12_GLOBAL__N_14Heap10makeEntityINS1_11HeapClosureEJRKSt3mapIPKNS0_10IdentifierEPNS1_9HeapThunkESt4lessIS8_ESaISt4pairIKS8_SA_EEERPNS1_10HeapObjectERjRKSt6vectorINS4_5ParamESaISP_EERPNS0_3ASTERA1_KcEEEPT_DpOT0_.exit.i.i

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !190 ; 5 uses
  %i.om = ptrtoint ptr %i.oj to i64
  %i.on = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.oo = sub i64 %i.om, %i.on                    ; 6 uses
  %i.op = icmp eq i64 %i.oo, 9223372036854775800
  br i1 %i.op, label %bb.aw, label %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #42
          to label %.noexc1959 unwind label %.loopexit.split-lp4115.loopexit.split-lp.loopexit.split-lp

.noexc1959:                                       ; preds = %bb.aw
  unreachable

_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.av
  %i.oq = ashr exact i64 %i.oo, 3                 ; 3 uses
  %i.or = icmp eq ptr %i.oj, %.val.i.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.or, i64 1, i64 %i.oq
  %i.os = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.oq ; 2 uses
  %i.ot = icmp ult i64 %i.os, %i.oq
  %i.ou = call i64 @llvm.umin.i64(i64 %i.os, i64 1152921504606846975)
  %i.ov = select i1 %i.ot, i64 1152921504606846975, i64 %i.ou ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ov, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.ow = shl nuw nsw i64 %i.ov, 3
  %i.ox = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ow) #41
          to label %.noexc1960 unwind label %.loopexit.split-lp4115.loopexit.split-lp.loopexit ; 5 uses

.noexc1960:                                       ; preds = %_ZNKSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.oy = getelementptr inbounds i8, ptr %i.ox, i64 %i.oo ; 2 uses
  store ptr %i.oe, ptr %i.oy, align 8, !tbaa !189
  %i.oz = icmp sgt i64 %i.oo, 0
  br i1 %i.oz, label %bb.ax, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i.i

bb.ax:                                            ; preds = %.noexc1960
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ox, ptr align 8 %.val.i.i.i.i.i.i, i64 %i.oo, i1 false)
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i.i

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i.i: ; preds = %bb.ax, %.noexc1960
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 8 ; 2 uses
  %.not.i21.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i21.i.i.i.i.i.i, label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.oo) #40
  br label %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ay, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i.i
  store ptr %i.ox, ptr %i.aw, align 8, !tbaa !190
  store ptr %i.pa, ptr %i.ax, align 8, !tbaa !186
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.ov
  store ptr %i.pb, ptr %i.ay, align 8, !tbaa !187
  br label %_ZN7jsonnet8internal12_GLOBAL__N_14Heap10makeEntityINS1_11HeapClosureEJRKSt3mapIPKNS0_10IdentifierEPNS1_9HeapThunkESt4lessIS8_ESaISt4pairIKS8_SA_EEERPNS1_10HeapObjectERjRKSt6vectorINS4_5ParamESaISP_EERPNS0_3ASTERA1_KcEEEPT_DpOT0_.exit.i.i

bb.az:                                            ; preds = %.noexc1958
  %i.pc = landingpad { ptr, i32 }
          cleanup
  %i.pd = load ptr, ptr %8, align 8, !tbaa !66    ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.bs
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i: ; preds = %bb.az
  %i.pf = load i64, ptr %i.bs, align 8, !tbaa !67
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @_ZdlPvm(ptr noundef nonnull %i.oe, i64 noundef 144) #40
  br label %.body

_ZN7jsonnet8internal12_GLOBAL__N_14Heap10makeEntityINS1_11HeapClosureEJRKSt3mapIPKNS0_10IdentifierEPNS1_9HeapThunkESt4lessIS8_ESaISt4pairIKS8_SA_EEERPNS1_10HeapObjectERjRKSt6vectorINS4_5ParamESaISP_EERPNS0_3ASTERA1_KcEEEPT_DpOT0_.exit.i.i: ; preds = %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, %bb.au
  %.val14.i.i.i = phi ptr [ %i.ol, %bb.au ], [ %i.pa, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ]
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %bb.au ], [ %i.ox, %_ZNSt6vectorIPN7jsonnet8internal12_GLOBAL__N_110HeapEntityESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ]
  %i.ph = load i8, ptr %i.az, align 8, !tbaa !87  ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store i8 %i.ph, ptr %i.pi, align 8, !tbaa !191
  %i.pj = ptrtoint ptr %.val14.i.i.i to i64
  %i.pk = ptrtoint ptr %.val.i.i.i to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = ashr exact i64 %i.pl, 3                 ; 3 uses
  store i64 %i.pm, ptr %i.ba, align 8, !tbaa !192
  %i.pn = load i32, ptr %0, align 8, !tbaa !85
  %i.po = zext i32 %i.pn to i64
  %i.pp = icmp ugt i64 %i.pm, %i.po
  br i1 %i.pp, label %_ZN7jsonnet8internal12_GLOBAL__N_14Heap9checkHeapEv.exit.i.i, label %bb.bl

_ZN7jsonnet8internal12_GLOBAL__N_14Heap9checkHeapEv.exit.i.i: ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_14Heap10makeEntityINS1_11HeapClosureEJRKSt3mapIPKNS0_10IdentifierEPNS1_9HeapThunkESt4lessIS8_ESaISt4pairIKS8_SA_EEERPNS1_10HeapObjectERjRKSt6vectorINS4_5ParamESaISP_EERPNS0_3ASTERA1_KcEEEPT_DpOT0_.exit.i.i
  %i.pq = uitofp i64 %i.pm to double
  %i.pr = load double, ptr %i.bb, align 8, !tbaa !86
  %i.ps = load i64, ptr %i.bc, align 8, !tbaa !193
  %i.pt = uitofp i64 %i.ps to double
  %i.pu = fmul double %i.pr, %i.pt
  %i.pv = fcmp olt double %i.pu, %i.pq
  br i1 %i.pv, label %bb.ba, label %bb.bl

bb.ba:                                            ; preds = %_ZN7jsonnet8internal12_GLOBAL__N_14Heap9checkHeapEv.exit.i.i
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS1_10HeapEntityE(i8 %i.ph, ptr noundef nonnull %i.oe)
          to label %.noexc1961 unwind label %.loopexit.split-lp4115.loopexit.split-lp.loopexit

.noexc1961:                                       ; preds = %bb.ba
  %.val21.i.i = load ptr, ptr %i.y, align 8, !tbaa !194
  %.val22.i.i = load ptr, ptr %i.z, align 8, !tbaa !194
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_15Stack4markERNS1_4HeapE(ptr %.val21.i.i, ptr %.val22.i.i, ptr noundef nonnull align 8 dereferenceable(480) %0)
          to label %.noexc1962 unwind label %.loopexit.split-lp4115.loopexit.split-lp.loopexit

.noexc1962:                                       ; preds = %.noexc1961
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aa, align 8, !tbaa !67
  %i.pw = and i32 %.sroa.0.0.copyload.i.i, 16
  %.not.i.i.i1953 = icmp eq i32 %i.pw, 0
  br i1 %.not.i.i.i1953, label %_ZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromENS1_5ValueE.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc1962
  %.val20.i.i = load i8, ptr %i.az, align 8
  %.sroa.28.0.copyload.i.i = load ptr, ptr %i.ab, align 8, !tbaa !67
  invoke fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS1_10HeapEntityE(i8 %.val20.i.i, ptr noundef %.sroa.28.0.copyload.i.i)
          to label %_ZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromENS1_5ValueE.exit.i.i unwind label %.loopexit.split-lp4115.loopexit.split-lp.loopexit

_ZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromENS1_5ValueE.exit.i.i: ; preds = %bb.bb, %.noexc1962
  %.val23.i.i = load ptr, ptr %i.bd, align 8, !tbaa !166 ; 2 uses
  %.not810.i.i = icmp eq ptr %.val23.i.i, %i.be
  br i1 %.not810.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc1964, %_ZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromENS1_5ValueE.exit.i.i
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS7_:bb.a
_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.i99: ; preds = %bb.ad, %._crit_edge.i91.thread
  %i.fz = sub i64 %i.fr, %i.bi
  %i.ga = icmp slt i64 %i.fz, 0
  br i1 %i.ga, label %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit.thread, label %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.thread36.i100

_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.thread36.i100: ; preds = %bb.ae, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.i99
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit.thread: ; preds = %bb.w, %.lr.ph.i.i.i.i7.i96, %.lr.ph.i.i.i.i7.i47, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i7.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.thread36.i100, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.i99, %._crit_edge.thread.i105, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.thread36.i51, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.i50, %._crit_edge.thread.i56, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.thread36.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.i, %._crit_edge.thread.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit74.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit25.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit66, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit66.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit17.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit
  %.sroa.0128.2 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit25.thread ], [ null, %.lr.ph.i.i.i.i7.i96 ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit ], [ %spec.select163, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit74.thread ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit66 ], [ null, %.lr.ph.i.i.i.i ], [ %i.bx, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit17.thread ], [ null, %.lr.ph.i.i.i.i7.i47 ], [ null, %.lr.ph.i.i.i.i7.i ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit66.thread ], [ %.sroa.013.0.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.thread36.i ], [ null, %._crit_edge.thread.i ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.i ], [ %.sroa.013.0.i44, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.thread36.i51 ], [ null, %._crit_edge.thread.i56 ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.i50 ], [ %.sroa.013.0.i93, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.thread36.i100 ], [ null, %._crit_edge.thread.i105 ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.i99 ], [ %1, %bb.w ]
  %.sroa.12.2 = phi ptr [ %spec.select162, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit25.thread ], [ %.027.lcssa51.i92, %.lr.ph.i.i.i.i7.i96 ], [ %i.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit ], [ %spec.select164, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit74.thread ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit66 ], [ %i.f, %.lr.ph.i.i.i.i ], [ %i.bx, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit17.thread ], [ %.027.lcssa51.i43, %.lr.ph.i.i.i.i7.i47 ], [ %.027.lcssa51.i, %.lr.ph.i.i.i.i7.i ], [ %i.ed, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit66.thread ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.thread36.i ], [ %.027.lcssa52.i, %._crit_edge.thread.i ], [ %.027.lcssa51.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.i ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.thread36.i51 ], [ %.027.lcssa52.i57, %._crit_edge.thread.i56 ], [ %.027.lcssa51.i43, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.i50 ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.thread36.i100 ], [ %.027.lcssa52.i106, %._crit_edge.thread.i105 ], [ %.027.lcssa51.i92, %_ZNKSt4lessINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEEEclERKS5_S8_.exit12.i99 ], [ null, %bb.w ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0128.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !416  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !67
  %i.h = shl i64 %i.g, 2
  %i.i = add i64 %i.h, 4
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.i) #40
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #40
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEEESt4pairIKS5_PKN7jsonnet8internal10IdentifierEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESO_IJEEEEEvPSt13_Rb_tree_nodeISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %3, align 8, !tbaa !412
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !74
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !73   ; 6 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 2           ; 3 uses
  %i.h = icmp ugt i64 %i.g, 3
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.i, label %.noexc.i.i.i, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #42
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.b
  %i.j = add nuw nsw i64 %.idx.i.i.i, 4
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #41
          to label %.noexc8 unwind label %bb.e    ; 2 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !72
  store i64 %i.g, ptr %i.d, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc8, %bb.a
  %.pre8.i.i.i.i = phi ptr [ %i.k, %.noexc8 ], [ %i.d, %bb.a ] ; 3 uses
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.g
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i32, ptr %i.e, align 4, !tbaa !76
  store i32 %i.l, ptr %.pre8.i.i.i.i, align 4, !tbaa !76
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.pre8.i.i.i.i, ptr align 4 %i.e, i64 %.idx.i.i.i, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i.i.i.i, %.noexc.i.i.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #39 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #40
  invoke void @__cxa_rethrow() #42
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.g, ptr %i.q, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %.pre8.i.i.i.i, i64 %.idx.i.i.i
  store i32 0, ptr %i.r, align 4, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.s, align 8, !tbaa !307
  ret void

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.p

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #38
  unreachable

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal3ASTC2ERKNS0_13LocationRangeENS0_7ASTTypeERKSt6vectorINS0_13FodderElementESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3ASTE, i64 16), ptr %0, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 %i.f, ptr %i.a, align 8, !tbaa !64
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !66
  %i.i = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.i, ptr %i.c, align 8, !tbaa !67
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !67
  store i8 %i.k, ptr %i.j, align 1, !tbaa !67
  br label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit

_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !68
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %2, ptr %i.r, align 8, !tbaa !211
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !156  ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !155    ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.d

bb.d:                                             ; preds = %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  %4 = sdiv exact i64 %i.y, 40
  %i.z = icmp ugt i64 %4, 230584300921369395
  br i1 %i.z, label %.noexc.i.i5, label %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, !prof !268

.noexc.i.i5:                                      ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #42
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i5
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #41
          to label %.noexc6 unwind label %bb.h

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  %i.ab = phi ptr [ null, %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit ], [ %i.aa, %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !155
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !156
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !163
  %i.af = load ptr, ptr %3, align 8, !tbaa !832
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !832
  %i.ah = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal13FodderElementESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.af, ptr %i.ag, ptr noundef %i.ab)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc6
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !155 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !163
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #40
  br label %.body

bb.g:                                             ; preds = %.noexc6
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !156
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal13FodderElementEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i5
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.ai, %bb.f ], [ %i.ai, %bb.e ]
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.c
  br i1 %i.ar, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.body
  %i.as = load i64, ptr %i.c, align 8, !tbaa !67
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #40
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal3ASTE, i64 16), ptr %0, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !337
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #40
  br label %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i ], [ %i.i, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !159  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !160  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !67
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !159
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #40
  br label %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ab, %i.k
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7jsonnet8internal13FodderElementEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.h, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.i, %_ZNSt6vectorIPKN7jsonnet8internal10IdentifierESaIS4_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !163
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #40
  br label %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit

_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal13FodderElementES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #40
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %_ZNSt6vectorIN7jsonnet8internal13FodderElementESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal3VarD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #39
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal3ASTD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7jsonnet8internal3ASTD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #39
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #40
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2 align 2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #14

end_hunk_1
begin_hunk_2_@_ZN7jsonnet8internal12_GLOBAL__N_15Stack9makeErrorERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %.pr.i86 = load ptr, ptr %11, align 8, !tbaa !420
  br label %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exit.i87

_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exit.i87: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i85, %_ZNSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev.exit
  %i.pi = phi ptr [ %.pr.i86, %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i85 ], [ %i.ou, %_ZNSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i88 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i1.i88, label %_ZNSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev.exit91, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exit.i87
  %i.pj = load ptr, ptr %i.f, align 8, !tbaa !422
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = ptrtoint ptr %i.pi to i64
  %i.pm = sub i64 %i.pk, %i.pl
  call void @_ZdlPvm(ptr noundef nonnull %i.pi, i64 noundef %i.pm) #40
  br label %_ZNSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev.exit91

_ZNSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev.exit91: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exit.i87, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  ret void

bb.ce:                                            ; preds = %._crit_edge
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bx
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.body75:                                          ; preds = %bb.ca, %bb.cf
  %eh.lpad-body76 = phi { ptr, i32 } [ %i.po, %bb.cf ], [ %i.nu, %bb.ca ]
  call void @_ZNSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #39
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %.body75, %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %eh.lpad-body76, %.body75 ], [ %i.pn, %bb.ce ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn54.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i ]
  call void @_ZNSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  resume { ptr, i32 } %.pn24.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal10TraceFrameC2ERKNS0_13LocationRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !63
  %i.d = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  store i64 %i.f, ptr %i.b, align 8, !tbaa !64
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !66
  %i.i = load i64, ptr %i.b, align 8, !tbaa !64
  store i64 %i.i, ptr %i.c, align 8, !tbaa !67
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !67
  store i8 %i.k, ptr %i.j, align 1, !tbaa !67
  br label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit

_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !68
  %i.n = load ptr, ptr %0, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !63
  %i.t = load ptr, ptr %2, align 8, !tbaa !66     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 %i.v, ptr %i.a, align 8, !tbaa !64
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !66
  %i.y = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.y, ptr %i.s, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZN7jsonnet8internal13LocationRangeC2ERKS1_.exit ] ; 2 uses
  switch i64 %i.v, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !67
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !67
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !68
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !66
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.c
  br i1 %i.ah, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !67
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #40
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.af
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal10TraceFrameD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !67
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !67
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #40
  br label %_ZN7jsonnet8internal13LocationRangeD2Ev.exit

_ZN7jsonnet8internal13LocationRangeD2Ev.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !420    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 96
  %i.g = icmp ugt i64 %2, 96076792050570581
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7jsonnet8internal10TraceFrameEE8allocateEmPKv.exit.i.i.i, !prof !268

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #42
  unreachable

_ZNSt15__new_allocatorIN7jsonnet8internal10TraceFrameEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #41
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7jsonnet8internal10TraceFrameEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7jsonnet8internal10TraceFrameEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !420
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !421
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !422
  %i.m = load ptr, ptr %1, align 8, !tbaa !889    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !889  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal10TraceFrameESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN7jsonnet8internal10TraceFrameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal10TraceFrameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN7jsonnet8internal10TraceFrameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN7jsonnet8internal10TraceFrameC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN7jsonnet8internal10TraceFrameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN7jsonnet8internal10TraceFrameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal10TraceFrameESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !888

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #39 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameEEvT_S4_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #42
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #38
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7jsonnet8internal10TraceFrameESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7jsonnet8internal10TraceFrameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN7jsonnet8internal10TraceFrameEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !421
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !420    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !422
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #40
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !420    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !421  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7jsonnet8internal10TraceFrameEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN7jsonnet8internal10TraceFrameEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !67
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !66 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyIN7jsonnet8internal10TraceFrameEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !67
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #40
  br label %_ZSt8_DestroyIN7jsonnet8internal10TraceFrameEEvPT_.exit.i.i

_ZSt8_DestroyIN7jsonnet8internal10TraceFrameEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !29

_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7jsonnet8internal10TraceFrameEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !420
  br label %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !422
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #40
  br label %_ZNSt12_Vector_baseIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7jsonnet8internal10TraceFrameESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7jsonnet8internal10TraceFrameES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !420    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #42
  unreachable

_ZNKSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581)
  %i.l = select i1 %i.j, i64 96076792050570581, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 96
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #41 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !63
  %i.s = load ptr, ptr %2, align 8, !tbaa !66     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !68   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN7jsonnet8internal13LocationRangeC2EOS1_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN7jsonnet8internal10TraceFrameESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !66
  %i.z = load i64, ptr %i.t, align 8, !tbaa !67
  store i64 %i.z, ptr %i.r, align 8, !tbaa !67
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !68
  br label %_ZN7jsonnet8internal13LocationRangeC2EOS1_.exit.i
end_hunk_2
