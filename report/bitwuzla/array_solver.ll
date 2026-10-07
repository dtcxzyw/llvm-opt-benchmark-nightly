Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/array_solver?download=true
inline.NumInlined: 3239
inline.NumDeleted: 1470
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4bzla5array11ArraySolver23collect_path_conditionsERKNS1_6AccessERKNS_4NodeERSt6vectorIS5_SaIS5_EE:bb.a
bb.fq:                                            ; preds = %bb.ex, %bb.ew, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit349, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347, %bb.ev
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #21
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %bb.fq
  %.pn216 = phi { ptr, i32 } [ %i.kk, %bb.fq ], [ %i.kj, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %.loopexit.split-lp476

bb.fs:                                            ; preds = %bb.fd
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %.loopexit.split-lp476

bb.ft:                                            ; preds = %bb.fg
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fk, %bb.fi, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit359, %bb.fj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit357, %bb.fh
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #21
  br label %bb.fv

bb.fv:                                            ; preds = %bb.ft, %bb.fu
  %.pn220 = phi { ptr, i32 } [ %i.kn, %bb.fu ], [ %i.km, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %.loopexit.split-lp476

bb.fw:                                            ; preds = %bb.ez
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0431.0492, i64 noundef 0)
          to label %bb.fx unwind label %bb.fo     ; 2 uses

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i8 0, ptr %i.h, align 1, !tbaa !127
  %i.kp = load ptr, ptr %i.al, align 8, !tbaa !180 ; 4 uses
  %i.kq = load ptr, ptr %i.an, align 8, !tbaa !377
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -16
  %.not.i360 = icmp eq ptr %i.kp, %i.kr
  br i1 %.not.i360, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !130
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i8 0, ptr %i.ks, align 8, !tbaa !182
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store ptr %i.kt, ptr %i.al, align 8, !tbaa !180
  br label %_ZNSt5dequeISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE12emplace_backIJRS4_bEEERS6_DpOT_.exit363

bb.fz:                                            ; preds = %bb.fx
  invoke void @_ZNSt5dequeISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE16_M_push_back_auxIJRS4_bEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
          to label %_ZNSt5dequeISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE12emplace_backIJRS4_bEEERS6_DpOT_.exit363 unwind label %bb.gh

_ZNSt5dequeISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE12emplace_backIJRS4_bEEERS6_DpOT_.exit363: ; preds = %bb.fz, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0431.0492, i64 noundef 0)
          to label %bb.ga unwind label %bb.fo

bb.ga:                                            ; preds = %_ZNSt5dequeISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE12emplace_backIJRS4_bEEERS6_DpOT_.exit363
  %i.kv = invoke { ptr, i8 } @_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_S2_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_SM_EEES5_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0431.0492)
          to label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE7emplaceIJRS3_SF_EEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit365 unwind label %bb.fo ; 0 uses

_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE7emplaceIJRS3_SF_EEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit365: ; preds = %bb.ga
  %i.kw = load ptr, ptr %i.m, align 8, !tbaa !119, !nonnull !120, !align !121
  %i.kx = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.kw, i64 noundef 3)
          to label %bb.gb unwind label %bb.fo

bb.gb:                                            ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE7emplaceIJRS3_SF_EEES9_INSt8__detail14_Node_iteratorISB_Lb0ELb1EEEbEDpOT_.exit365
  br i1 %i.kx, label %bb.gc, label %.critedge267

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  %i.ky = load ptr, ptr %i.m, align 8, !tbaa !119, !nonnull !120, !align !121
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %24, ptr noundef nonnull align 8 dereferenceable(56) %i.ky, i64 noundef 3)
          to label %bb.gd unwind label %bb.gi

bb.gd:                                            ; preds = %bb.gc
  %i.kz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %bb.ge unwind label %bb.gj     ; 2 uses

bb.ge:                                            ; preds = %bb.gd
  %i.la = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kz, ptr noundef nonnull @.str.31, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367 unwind label %bb.gj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367: ; preds = %bb.ge
  %i.lb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0431.0492, i64 noundef 0)
          to label %bb.gf unwind label %bb.gj

bb.gf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367
  %i.lc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzlalsERSoRKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.kz, ptr noundef nonnull align 8 dereferenceable(8) %i.lb)
          to label %bb.gg unwind label %bb.gj     ; 2 uses

bb.gg:                                            ; preds = %bb.gf
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, ptr noundef nonnull @.str.32, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369 unwind label %bb.gj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369: ; preds = %bb.gg
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzlalsERSoRKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0431.0492)
          to label %.critedge275 unwind label %bb.gj ; 0 uses

.critedge275:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %.critedge267

bb.gh:                                            ; preds = %bb.fz
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %.loopexit.split-lp476

bb.gi:                                            ; preds = %bb.gc
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gg, %bb.ge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit369, %bb.gf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit367, %bb.gd
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #21
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gi, %bb.gj
  %.pn218 = phi { ptr, i32 } [ %i.lh, %bb.gj ], [ %i.lg, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %.loopexit.split-lp476

.critedge267:                                     ; preds = %.critedge275, %bb.gb, %.critedge272, %bb.ff, %.critedge266, %bb.ec, %bb.dw, %bb.er, %bb.dy, %.critedge262
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0431.0492, i64 8 ; 2 uses
  %.not453 = icmp eq ptr %i.li, %i.gv
  br i1 %.not453, label %_ZNK4bzla9backtrack13unordered_setINS_4NodeEE4findERKS2_.exit.thread, label %.lr.ph

_ZNK4bzla9backtrack13unordered_setINS_4NodeEE4findERKS2_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4bzla4NodeES2_NS_9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i.i, %bb.cp, %.preheader496, %.critedge267, %_ZNSt13unordered_mapIN4bzla4NodeESt6vectorIS1_SaIS1_EESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S4_EEE4findERSA_.exit, %.noexc319, %_ZNK4bzla9backtrack13unordered_setINS_4NodeEE4findERKS2_.exit, %bb.w
  %i.lj = load ptr, ptr %i.bc, align 8, !tbaa !187 ; 2 uses
  %i.lk = load ptr, ptr %i.bn, align 8, !tbaa !379
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 -16
  %.not.i370 = icmp eq ptr %i.lj, %i.ll
  br i1 %.not.i370, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %_ZNK4bzla9backtrack13unordered_setINS_4NodeEE4findERKS2_.exit.thread
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  br label %bb.gn

bb.gm:                                            ; preds = %_ZNK4bzla9backtrack13unordered_setINS_4NodeEE4findERKS2_.exit.thread
  %i.ln = load ptr, ptr %i.bo, align 8, !tbaa !380
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef 512) #22
  %i.lo = load ptr, ptr %i.bp, align 8, !tbaa !188
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  store ptr %i.lp, ptr %i.bp, align 8, !tbaa !189
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !190 ; 3 uses
  store ptr %i.lq, ptr %i.bo, align 8, !tbaa !191
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 512
  store ptr %i.lr, ptr %i.bn, align 8, !tbaa !192
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %storemerge.i = phi ptr [ %i.lm, %bb.gl ], [ %i.lq, %bb.gm ] ; 3 uses
  store ptr %storemerge.i, ptr %i.bc, align 8, !tbaa !187
  %i.ls = load ptr, ptr %i.al, align 8, !tbaa !186
  %i.lt = icmp eq ptr %i.ls, %storemerge.i
  br i1 %i.lt, label %bb.go, label %bb.n, !llvm.loop !375

bb.go:                                            ; preds = %bb.o, %bb.gn
  %.1196450 = phi i8 [ 0, %bb.gn ], [ %i.bt, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  %i.lu = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 2 uses
  store ptr %i.lu, ptr %25, align 8, !tbaa !49
  %i.lv = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  store i64 1, ptr %i.lv, align 8, !tbaa !50
  %i.lw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %25, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.lx, align 8, !tbaa !44
  %i.ly = getelementptr inbounds nuw i8, ptr %25, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ly, i8 0, i64 16, i1 false)
  %i.lz = trunc nuw i8 %.1196450 to i1
  br i1 %i.lz, label %bb.gp, label %bb.gr

bb.gp:                                            ; preds = %bb.go
  invoke void @_ZN4bzla5array11ArraySolver18add_path_conditionERKNS1_6AccessERKNS_4NodeERSt6vectorIS5_SaIS5_EERSt13unordered_setIS5_St4hashIS5_ESt8equal_toIS5_ES9_E(ptr noundef nonnull align 8 dereferenceable(880) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %25)
          to label %bb.gr unwind label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp460

bb.gr:                                            ; preds = %bb.gp, %bb.go
  %i.mb = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !193
  %.not.not.i.i371 = icmp eq i64 %i.mc, 0
  br i1 %.not.not.i.i371, label %.preheader458, label %bb.gs

.preheader458:                                    ; preds = %bb.gr, %.noexc383
  %.sroa.06.0.in.i.i380 = phi ptr [ %.sroa.06.0.i.i381, %.noexc383 ], [ %i.au, %bb.gr ]
  %.sroa.06.0.i.i381 = load ptr, ptr %.sroa.06.0.in.i.i380, align 8, !tbaa !69 ; 4 uses
  %.not.i.i382 = icmp eq ptr %.sroa.06.0.i.i381, null
  br i1 %.not.i.i382, label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.preheader.loopexit, label %26

26:                                               ; preds = %.preheader458
  %27 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i381, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  %29 = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %.noexc383 unwind label %.loopexit459

.noexc383:                                        ; preds = %26
  br i1 %29, label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.preheader.loopexit, label %.preheader458, !llvm.loop !376

bb.gs:                                            ; preds = %bb.gr
  %i.md = invoke noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc384 unwind label %.loopexit.split-lp460.loopexit.split-lp ; 2 uses

.noexc384:                                        ; preds = %bb.gs
  %i.me = load i64, ptr %i.at, align 8, !tbaa !185
  %i.mf = urem i64 %i.md, %i.me                   ; 2 uses
  %i.mg = load ptr, ptr %9, align 8, !tbaa !184
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.mf
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !137, !nonnull !120, !noundef !120 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !69 ; 2 uses
  %.phi.trans.insert.i.i.i.i373 = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %.pre.i.i.i.i374 = load i64, ptr %.phi.trans.insert.i.i.i.i373, align 8, !tbaa !139
  br label %bb.gt

bb.gt:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i, %.noexc384
  %i.mk = phi i64 [ %.pre.i.i.i.i374, %.noexc384 ], [ %i.ms, %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i ]
  %.015.i.i.i.i375 = phi ptr [ %i.mi, %.noexc384 ], [ %.0.i.i.i.i376, %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i ]
  %.0.i.i.i.i376 = phi ptr [ %i.mj, %.noexc384 ], [ %i.mp, %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i ] ; 3 uses
  %i.ml = icmp eq i64 %i.md, %i.mk
  br i1 %i.ml, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i: ; preds = %bb.gt
  %i.mm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i376, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !130
  %i.mo = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.mn)
          to label %.noexc385 unwind label %.loopexit.split-lp460.loopexit

.noexc385:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i
  br i1 %i.mo, label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.sink.split, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i: ; preds = %.noexc385, %bb.gt
  %i.mp = load ptr, ptr %.0.i.i.i.i376, align 8, !tbaa !69, !nonnull !120, !noundef !120 ; 2 uses
  %i.mq = load i64, ptr %i.at, align 8, !tbaa !185
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !139 ; 2 uses
  %i.mt = urem i64 %i.ms, %i.mq
  %.not19.i.i.i.i378 = icmp eq i64 %i.mt, %i.mf
  call void @llvm.assume(i1 %.not19.i.i.i.i378)
  br label %bb.gt

_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.sink.split: ; preds = %.noexc385, %.noexc407
  %.015.i.i.i.i394.sink = phi ptr [ %.015.i.i.i.i394, %.noexc407 ], [ %.015.i.i.i.i375, %.noexc385 ]
  %i.mu = load ptr, ptr %.015.i.i.i.i394.sink, align 8, !tbaa !69
  br label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.preheader

_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.preheader.loopexit: ; preds = %.preheader458, %.noexc383
  br label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.preheader

_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.preheader: ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.preheader.loopexit, %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.sink.split
  %.sroa.0424.0.ph = phi ptr [ %i.mu, %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.sink.split ], [ %.sroa.06.0.i.i381, %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.preheader.loopexit ]
  br label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit

_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.loopexit: ; preds = %.preheader, %.noexc405
  br label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit

_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit: ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.preheader, %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.loopexit
  %.sroa.0424.0 = phi ptr [ %.sroa.06.0.i.i403, %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.loopexit ], [ %.sroa.0424.0.ph, %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.preheader ]
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0424.0, i64 16 ; 5 uses
  invoke void @_ZN4bzla5array11ArraySolver18add_path_conditionERKNS1_6AccessERKNS_4NodeERSt6vectorIS5_SaIS5_EERSt13unordered_setIS5_St4hashIS5_ESt8equal_toIS5_ES9_E(ptr noundef nonnull align 8 dereferenceable(880) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.mv, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %25)
          to label %bb.gu unwind label %bb.gx

bb.gu:                                            ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit
  %i.mw = invoke noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc387 unwind label %bb.gx

.noexc387:                                        ; preds = %bb.gu
  %i.mx = icmp eq i8 %i.mw, 102
  br i1 %i.mx, label %bb.gv, label %_ZNK4bzla5array11ArraySolver6Access5arrayEv.exit389

bb.gv:                                            ; preds = %.noexc387
  %i.my = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0)
          to label %_ZNK4bzla5array11ArraySolver6Access5arrayEv.exit389 unwind label %bb.gx

_ZNK4bzla5array11ArraySolver6Access5arrayEv.exit389: ; preds = %.noexc387, %bb.gv
  %.0.i386 = phi ptr [ %1, %.noexc387 ], [ %i.my, %bb.gv ]
  %i.mz = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.mv, ptr noundef nonnull align 8 dereferenceable(8) %.0.i386)
          to label %bb.gw unwind label %bb.gx

bb.gw:                                            ; preds = %_ZNK4bzla5array11ArraySolver6Access5arrayEv.exit389
  br i1 %i.mz, label %bb.hb, label %bb.gy

.loopexit459:                                     ; preds = %26
  %lpad.loopexit461 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp460

.loopexit.split-lp460.loopexit:                   ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i
  %lpad.loopexit463 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp460

.loopexit.split-lp460.loopexit.split-lp:          ; preds = %bb.gs
  %lpad.loopexit.split-lp464 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp460

bb.gx:                                            ; preds = %bb.gv, %bb.gu, %_ZNK4bzla5array11ArraySolver6Access5arrayEv.exit389, %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp460

bb.gy:                                            ; preds = %bb.gw
  %i.nb = load i64, ptr %i.mb, align 8, !tbaa !193
  %.not.not.i.i390 = icmp eq i64 %i.nb, 0
  br i1 %.not.not.i.i390, label %.preheader, label %bb.gz

.preheader:                                       ; preds = %bb.gy, %.noexc405
  %.sroa.06.0.in.i.i402 = phi ptr [ %.sroa.06.0.i.i403, %.noexc405 ], [ %i.au, %bb.gy ]
  %.sroa.06.0.i.i403 = load ptr, ptr %.sroa.06.0.in.i.i402, align 8, !tbaa !69 ; 4 uses
  %.not.i.i404 = icmp eq ptr %.sroa.06.0.i.i403, null
  br i1 %.not.i.i404, label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.loopexit, label %30

30:                                               ; preds = %.preheader
  %31 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i403, i64 8
  %32 = load ptr, ptr %31, align 8, !tbaa !130
  %33 = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.mv, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %.noexc405 unwind label %.loopexit

.noexc405:                                        ; preds = %30
  br i1 %33, label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.loopexit, label %.preheader, !llvm.loop !376

bb.gz:                                            ; preds = %bb.gy
  %i.nc = invoke noundef i64 @_ZNKSt4hashIN4bzla4NodeEEclERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.mv)
          to label %.noexc406 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc406:                                        ; preds = %bb.gz
  %i.nd = load i64, ptr %i.at, align 8, !tbaa !185
  %i.ne = urem i64 %i.nc, %i.nd                   ; 2 uses
  %i.nf = load ptr, ptr %9, align 8, !tbaa !184
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %i.ne
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !137, !nonnull !120, !noundef !120 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !69 ; 2 uses
  %.phi.trans.insert.i.i.i.i392 = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %.pre.i.i.i.i393 = load i64, ptr %.phi.trans.insert.i.i.i.i392, align 8, !tbaa !139
  br label %bb.ha

bb.ha:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i396, %.noexc406
  %i.nj = phi i64 [ %.pre.i.i.i.i393, %.noexc406 ], [ %i.nr, %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i396 ]
  %.015.i.i.i.i394 = phi ptr [ %i.nh, %.noexc406 ], [ %.0.i.i.i.i395, %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i396 ]
  %.0.i.i.i.i395 = phi ptr [ %i.ni, %.noexc406 ], [ %i.no, %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i396 ] ; 3 uses
  %i.nk = icmp eq i64 %i.nc, %i.nj
  br i1 %i.nk, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i400, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i396

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i400: ; preds = %bb.ha
  %i.nl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i395, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !130
  %i.nn = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.mv, ptr noundef nonnull align 8 dereferenceable(8) %i.nm)
          to label %.noexc407 unwind label %.loopexit.split-lp.loopexit

.noexc407:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i400
  br i1 %i.nn, label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEE4findERSA_.exit.sink.split, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i396

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i396: ; preds = %.noexc407, %bb.ha
  %i.no = load ptr, ptr %.0.i.i.i.i395, align 8, !tbaa !69, !nonnull !120, !noundef !120 ; 2 uses
  %i.np = load i64, ptr %i.at, align 8, !tbaa !185
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !139 ; 2 uses
  %i.ns = urem i64 %i.nr, %i.np
  %.not19.i.i.i.i398 = icmp eq i64 %i.ns, %i.ne
  call void @llvm.assume(i1 %.not19.i.i.i.i398)
  br label %bb.ha

.loopexit:                                        ; preds = %30
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp460

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS5_S3_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i400
  %lpad.loopexit454 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp460

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.gz
  %lpad.loopexit.split-lp455 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp460

bb.hb:                                            ; preds = %bb.gw
  %i.nt = load ptr, ptr %i.lw, align 8, !tbaa !71 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.nt, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.hb, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.nu, %.lr.ph.i.i.i.i ], [ %i.nt, %bb.hb ] ; 3 uses
  %i.nu = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.nv) #21
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #22
  %.not.i.i.i.i409 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i.i409, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.hb
  %i.nw = load ptr, ptr %25, align 8, !tbaa !49
  %i.nx = load i64, ptr %i.lv, align 8, !tbaa !50
  %i.ny = shl i64 %i.nx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.nw, i8 0, i64 %i.ny, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lw, i8 0, i64 16, i1 false)
  %i.nz = load ptr, ptr %25, align 8, !tbaa !49   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.lu
  br i1 %i.oa, label %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.hc

bb.hc:                                            ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ob = load i64, ptr %i.lv, align 8, !tbaa !50
  %i.oc = shl i64 %i.ob, 3
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #22
  br label %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  %i.od = load ptr, ptr %i.az, align 8, !tbaa !146 ; 2 uses
  %.not5.i.i.i.i410 = icmp eq ptr %i.od, null
  br i1 %.not5.i.i.i.i410, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i411

.lr.ph.i.i.i.i411:                                ; preds = %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i411
  %.06.i.i.i.i412 = phi ptr [ %i.oe, %.lr.ph.i.i.i.i411 ], [ %i.od, %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit ] ; 2 uses
  %i.oe = load ptr, ptr %.06.i.i.i.i412, align 8, !tbaa !69 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i412, i64 noundef 24) #22
  %.not.i.i.i.i413 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i.i.i413, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i411, !llvm.loop !9

_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i411, %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit
  %i.of = load ptr, ptr %10, align 8, !tbaa !142
  %i.og = load i64, ptr %i.ay, align 8, !tbaa !143
  %i.oh = shl i64 %i.og, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.of, i8 0, i64 %i.oh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.oi = load ptr, ptr %10, align 8, !tbaa !142  ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.ax
  br i1 %i.oj, label %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev.exit, label %bb.hd

bb.hd:                                            ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.ok = load i64, ptr %i.ay, align 8, !tbaa !143
  %i.ol = shl i64 %i.ok, 3
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #22
  br label %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev.exit

_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev.exit: ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.om = load ptr, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  %.not5.i.i.i.i414 = icmp eq ptr %i.om, null
  br i1 %.not5.i.i.i.i414, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_S2_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i415

.lr.ph.i.i.i.i415:                                ; preds = %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev.exit, %.lr.ph.i.i.i.i415
  %.06.i.i.i.i416 = phi ptr [ %i.on, %.lr.ph.i.i.i.i415 ], [ %i.om, %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev.exit ] ; 3 uses
  %i.on = load ptr, ptr %.06.i.i.i.i416, align 8, !tbaa !69 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i416, i64 16
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.oo) #21
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i416, i64 noundef 32) #22
  %.not.i.i.i.i417 = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i.i417, label %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_S2_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i415, !llvm.loop !15

_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_S2_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i415, %_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev.exit
  %i.op = load ptr, ptr %9, align 8, !tbaa !184
  %i.oq = load i64, ptr %i.at, align 8, !tbaa !185
  %i.or = shl i64 %i.oq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.op, i8 0, i64 %i.or, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.os = load ptr, ptr %9, align 8, !tbaa !184   ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.as
  br i1 %i.ot, label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEED2Ev.exit, label %bb.he

bb.he:                                            ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_S2_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ou = load i64, ptr %i.at, align 8, !tbaa !185
  %i.ov = shl i64 %i.ou, 3
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #22
  br label %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEED2Ev.exit

_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEESt4pairIKS4_S2_ESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.ow = load ptr, ptr %8, align 8, !tbaa !195   ; 2 uses
  %.not.i.i418 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i418, label %_ZNSt5dequeISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EED2Ev.exit, label %bb.hf

bb.hf:                                            ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEED2Ev.exit
  %i.ox = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.oy = load ptr, ptr %i.bp, align 8, !tbaa !188 ; 2 uses
  %i.oz = load ptr, ptr %i.ox, align 8, !tbaa !196 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = icmp ult ptr %i.oy, %i.pa
  br i1 %i.pb, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.hf, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.pd, %.lr.ph.i.i.i ], [ %i.oy, %bb.hf ] ; 3 uses
  %i.pc = load ptr, ptr %.06.i.i.i, align 8, !tbaa !190
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef 512) #22
  %i.pd = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.pe = icmp ult ptr %.06.i.i.i, %i.oz
  br i1 %i.pe, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i, !llvm.loop !16

_ZNSt11_Deque_baseISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %8, align 8, !tbaa !195
  br label %_ZNSt11_Deque_baseISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i

_ZNSt11_Deque_baseISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i, %bb.hf
  %i.pf = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.loopexit.i.i ], [ %i.ow, %bb.hf ]
  %i.pg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !197
  %i.pi = shl i64 %i.ph, 3
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #22
  br label %_ZNSt5dequeISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EED2Ev.exit

_ZNSt5dequeISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EED2Ev.exit: ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEED2Ev.exit, %_ZNSt11_Deque_baseISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EE16_M_destroy_nodesEPPS6_SA_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.hg

bb.hg:                                            ; preds = %_ZNK4bzla5array11ArraySolver6Access5arrayEv.exit, %_ZNSt5dequeISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EED2Ev.exit
  ret void

.loopexit.split-lp460:                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit459, %.loopexit.split-lp460.loopexit.split-lp, %.loopexit.split-lp460.loopexit, %bb.gx, %bb.gq
  %.pn237.pn.pn = phi { ptr, i32 } [ %i.ma, %bb.gq ], [ %i.na, %bb.gx ], [ %lpad.loopexit.split-lp464, %.loopexit.split-lp460.loopexit.split-lp ], [ %lpad.loopexit461, %.loopexit459 ], [ %lpad.loopexit463, %.loopexit.split-lp460.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit454, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp455, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %.loopexit.split-lp476

.loopexit.split-lp476:                            ; preds = %.loopexit467, %.loopexit.split-lp468.loopexit.split-lp, %.loopexit.split-lp468.loopexit, %.loopexit475, %.loopexit.split-lp476.loopexit.split-lp, %.loopexit.split-lp476.loopexit, %bb.ao, %bb.ck, %bb.aw, %bb.at, %bb.as, %bb.ap, %bb.df, %bb.dn, %bb.eo, %bb.el, %bb.ek, %bb.ej, %bb.gk, %bb.gh, %bb.fv, %bb.fs, %bb.fr, %bb.fo, %bb.fn, %bb.u, %.loopexit.split-lp460
  %.pn237.pn.pn.pn = phi { ptr, i32 } [ %.pn237.pn.pn, %.loopexit.split-lp460 ], [ %i.ca, %bb.u ], [ %i.cz, %bb.ao ], [ %.pn206.pn.pn, %bb.ck ], [ %.pn214, %bb.fn ], [ %.pn212, %bb.aw ], [ %i.da, %bb.ap ], [ %i.dd, %bb.at ], [ %.pn210, %bb.as ], [ %lpad.loopexit.split-lp480, %.loopexit.split-lp476.loopexit.split-lp ], [ %.pn228.pn.pn, %bb.dn ], [ %i.hp, %bb.df ], [ %.pn223, %bb.ej ], [ %.pn225, %bb.eo ], [ %i.iw, %bb.ek ], [ %i.ix, %bb.el ], [ %.pn220, %bb.fv ], [ %i.ki, %bb.fo ], [ %i.kl, %bb.fs ], [ %.pn218, %bb.gk ], [ %i.lf, %bb.gh ], [ %.pn216, %bb.fr ], [ %lpad.loopexit477, %.loopexit475 ], [ %lpad.loopexit479, %.loopexit.split-lp476.loopexit ], [ %lpad.loopexit469, %.loopexit467 ], [ %lpad.loopexit471, %.loopexit.split-lp468.loopexit ], [ %lpad.loopexit.split-lp472, %.loopexit.split-lp468.loopexit.split-lp ]
  call void @_ZNSt13unordered_setISt17reference_wrapperIKN4bzla4NodeEESt4hashIS2_ESt8equal_toIS4_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZNSt13unordered_mapISt17reference_wrapperIKN4bzla4NodeEES2_St4hashIS2_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.hh

bb.hh:                                            ; preds = %.loopexit.split-lp476, %bb.t, %bb.s
  %.pn237.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn237.pn.pn.pn, %.loopexit.split-lp476 ], [ %i.bz, %bb.t ], [ %i.by, %bb.s ]
  call void @_ZNSt5dequeISt4pairISt17reference_wrapperIKN4bzla4NodeEEbESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.r, %bb.q, %bb.p
  %.pn237.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn237.pn.pn.pn.pn, %bb.hh ], [ %i.bx, %bb.r ], [ %i.bw, %bb.q ], [ %i.bv, %bb.p ]
  resume { ptr, i32 } %.pn237.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla5array11ArraySolver6Access5indexEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4bzla4util18HistogramStatisticlsImEEvRKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !125    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !161    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %.not = icmp ult i64 %i.a, %i.h
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.a, 1                          ; 8 uses
  %i.j = icmp ugt i64 %i.i, %i.h
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sub nuw i64 %i.i, %i.h
end_hunk_0
