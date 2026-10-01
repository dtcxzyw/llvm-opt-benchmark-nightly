Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/reflection_test?download=true
inline.NumInlined: 2880
inline.NumDeleted: 1275
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12_GLOBAL__N_135ReflectionTest_TestGetAllFlags_Test8TestBodyEv:bb.a
_ZN7testing15AssertionResultD2Ev.exit90:          ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.bj = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE4findIA20_cEENSB_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(20) @.str.79)
          to label %bb.ak unwind label %bb.ao     ; 2 uses

bb.ak:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit90
  %i.bk = extractvalue { ptr, ptr } %i.bj, 0      ; 2 uses
  store ptr %i.bk, ptr %13, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bm = extractvalue { ptr, ptr } %i.bj, 1
  store ptr %i.bm, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store ptr null, ptr %14, align 8
  %i.bn = icmp eq ptr %i.bk, null
  br i1 %i.bn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit93 unwind label %bb.ap

bb.am:                                            ; preds = %bb.ak
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal12raw_hash_setINS4_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS3_15CommandLineFlagEEEJEE8iteratorESF_EENS_15AssertionResultEPKcSI_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit93 unwind label %bb.ap

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit93: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.bo = load i8, ptr %12, align 8, !tbaa !61, !range !36, !noundef !37
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.ba, label %bb.ar

bb.an:                                            ; preds = %_ZN7testing7MessageD2Ev.exit85, %bb.y
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %_ZN7testing7MessageD2Ev.exit85 ], [ %.pn40, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.cx

bb.ao:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit90
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn46 = phi { ptr, i32 } [ %i.br, %bb.ap ], [ %i.bq, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.bg

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !62 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i94, label %_ZNK7testing15AssertionResult15failure_messageEv.exit95, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !29
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit95

_ZNK7testing15AssertionResult15failure_messageEv.exit95: ; preds = %bb.at, %bb.as
  %i.bv = phi ptr [ %i.bu, %bb.at ], [ @.str.66, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 71, ptr noundef %i.bv)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.bw = load ptr, ptr %15, align 8, !tbaa !64   ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.av
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(128) %i.bw) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit101

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #30
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn48 = phi { ptr, i32 } [ %i.cc, %bb.ay ], [ %i.cb, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.cd = load ptr, ptr %15, align 8, !tbaa !64   ; 3 uses
  %.not.i.i99 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i99, label %_ZN7testing7MessageD2Ev.exit101, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100: ; preds = %bb.az
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !48
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit101

_ZN7testing7MessageD2Ev.exit101:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100, %bb.az, %bb.aw
  %.pn48.pn = phi { ptr, i32 } [ %i.ca, %bb.aw ], [ %.pn48, %bb.az ], [ %.pn48, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #30
  br label %bb.bg

bb.ba:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal12raw_hash_setINS5_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS4_15CommandLineFlagEEEJEE8iteratorESG_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSQ_RKSI_RKSJ_.exit93, %_ZN7testing7MessageD2Ev.exit98
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !62 ; 4 uses
  %.not.i.i102 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i102, label %_ZN7testing15AssertionResultD2Ev.exit106, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !29 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103: ; preds = %bb.bb
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !32
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit106

_ZN7testing15AssertionResultD2Ev.exit106:         ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZN4absl12lts_2026052611GetAllFlagsEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::flat_hash_map") align 8 %18)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit106
  %i.co = load i64, ptr %18, align 8              ; 2 uses
  %.not.i.i107 = icmp ult i64 %i.co, 131072
  br i1 %.not.i.i107, label %._crit_edge, label %bb.bd, !prof !31

bb.bd:                                            ; preds = %bb.bc
  %i.cp = and i64 %i.co, 254
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.cr = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !32
  br label %.lr.ph

bb.bf:                                            ; preds = %bb.bd
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !32, !nonnull !37, !noundef !37 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !32 ; 2 uses
  %i.cu = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1, !tbaa !228
  %i.cv = icmp slt i8 %i.cu, -1
  br i1 %i.cv, label %.lr.ph.i.i, label %.lr.ph

.lr.ph.i.i:                                       ; preds = %bb.bf, %.lr.ph.i.i
  %i.cw = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.bf ]
  %i.cx = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.bf ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.da = load i8, ptr %i.cy, align 1, !tbaa !228
  %i.db = icmp slt i8 %i.da, -1
  br i1 %i.db, label %.lr.ph.i.i, label %.lr.ph, !llvm.loop !213

.lr.ph:                                           ; preds = %.lr.ph.i.i, %bb.be, %bb.bf
  %.sroa.6.0.i.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.be ], [ %.sroa.0.0.copyload.i.i.i, %bb.bf ], [ %i.cz, %.lr.ph.i.i ]
  %.sroa.0.0.i.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.be ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.bf ], [ %i.cy, %.lr.ph.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %.pre = load ptr, ptr %i.dc, align 8, !tbaa !75
  %.pre.a = load ptr, ptr %i.dd, align 8, !tbaa !76
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  invoke void @_ZN4absl12lts_2026052611GetAllFlagsEv(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::flat_hash_map") align 8 %20)
          to label %bb.bn unwind label %.thread

bb.bg:                                            ; preds = %_ZN7testing7MessageD2Ev.exit101, %bb.aq
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZN7testing7MessageD2Ev.exit101 ], [ %.pn46, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.cx

bb.bh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit106
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i, %.lr.ph
  %i.df = phi ptr [ %.pre.a, %.lr.ph ], [ %26, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 4 uses
  %.sroa.9211.0249.a = phi ptr [ %.pre, %.lr.ph ], [ %i.ec, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 2 uses
  %.sroa.0209.0248.a = phi ptr [ %.sroa.6.0.i.ph, %.lr.ph ], [ %.sroa.9211.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ] ; 3 uses
  %.sroa.0209.0248 = phi ptr [ %.sroa.0.0.i.ph, %.lr.ph ], [ %.sroa.0209.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0209.0248.a, i64 24, i1 false)
  %.not.i108 = icmp eq ptr %.sroa.9211.0249.a, %i.df
  br i1 %.not.i108, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9211.0249.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0209.0248.a, i64 16, i1 false)
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !75
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  store ptr %i.dh, ptr %i.dc, align 8, !tbaa !75
  %.pre278 = load ptr, ptr %i.dd, align 8, !tbaa !76
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

bb.bj:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit
  %i.di = load ptr, ptr %17, align 8, !tbaa !77   ; 5 uses
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775792
  br i1 %i.dm, label %bb.bk, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #32
          to label %.noexc109 unwind label %.loopexit.split-lp221

.noexc109:                                        ; preds = %bb.bk
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bj
  %i.dn = ashr exact i64 %i.dl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = call i64 @llvm.umin.i64(i64 %i.do, i64 576460752303423487)
  %i.dr = select i1 %i.dp, i64 576460752303423487, i64 %i.dq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ds = shl nuw nsw i64 %i.dr, 4
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #28
          to label %.noexc110 unwind label %.loopexit220 ; 5 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !78
  %.not10.i.i.i.i.i = icmp eq ptr %i.di, %i.df
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc110, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %i.dt, %.noexc110 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i ], [ %i.di, %.noexc110 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !78, !alias.scope !229
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dv, %i.df
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !217

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc110
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dt, %.noexc110 ], [ %i.dw, %.lr.ph.i.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.dy = load ptr, ptr %i.dd, align 8, !tbaa !76
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.ea) #29
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bl, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.dt, ptr %17, align 8, !tbaa !77
  store ptr %i.dx, ptr %i.dc, align 8, !tbaa !75
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.dr ; 2 uses
  store ptr %i.eb, ptr %i.dd, align 8, !tbaa !76
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.bi
  %26 = phi ptr [ %i.eb, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.pre278, %bb.bi ]
  %i.ec = phi ptr [ %i.dx, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.dh, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0209.0248, i64 1 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0209.0248.a, i64 24 ; 2 uses
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !228 ; 2 uses
  %i.eg = icmp slt i8 %i.ef, -1
  br i1 %i.eg, label %.lr.ph.i.i111, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i111:                                    ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit, %.lr.ph.i.i111
  %i.eh = phi ptr [ %i.ek, %.lr.ph.i.i111 ], [ %i.ee, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ]
  %i.ei = phi ptr [ %i.ej, %.lr.ph.i.i111 ], [ %i.ed, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !228 ; 2 uses
  %i.em = icmp slt i8 %i.el, -1
  br i1 %i.em, label %.lr.ph.i.i111, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !213

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i111, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit
  %.sroa.0209.1 = phi ptr [ %i.ed, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ], [ %i.ej, %.lr.ph.i.i111 ]
  %.sroa.9211.1 = phi ptr [ %i.ee, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ], [ %i.ek, %.lr.ph.i.i111 ]
  %i.en = phi i8 [ %i.ef, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ], [ %i.el, %.lr.ph.i.i111 ]
  %i.eo = icmp eq i8 %i.en, -1
  br i1 %i.eo, label %._crit_edge, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iteratorppEv.exit, !prof !31

.loopexit220:                                     ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit222 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp221:                            ; preds = %bb.bk
  %lpad.loopexit.split-lp223 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit.split-lp221, %.loopexit220
  %lpad.phi224 = phi { ptr, i32 } [ %lpad.loopexit222, %.loopexit220 ], [ %lpad.loopexit.split-lp223, %.loopexit.split-lp221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit186

bb.bn:                                            ; preds = %._crit_edge
  %i.ep = load i64, ptr %20, align 8              ; 2 uses
  %.not.i.i112 = icmp ult i64 %i.ep, 131072
  br i1 %.not.i.i112, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread, label %bb.bo, !prof !31

bb.bo:                                            ; preds = %bb.bn
  %i.eq = and i64 %i.ep, 254
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.es = getelementptr inbounds nuw i8, ptr %20, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i122 = load ptr, ptr %i.es, align 8, !tbaa !32
  br label %.lr.ph257.preheader

bb.bq:                                            ; preds = %bb.bo
  %i.et = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.sroa.0.0.copyload.i.i.i.i113 = load ptr, ptr %i.et, align 8, !tbaa !32, !nonnull !37, !noundef !37 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %20, i64 16
  %.sroa.0.0.copyload.i.i.i115 = load ptr, ptr %i.eu, align 8, !tbaa !32 ; 2 uses
  %i.ev = load i8, ptr %.sroa.0.0.copyload.i.i.i.i113, align 1, !tbaa !228
  %i.ew = icmp slt i8 %i.ev, -1
  br i1 %i.ew, label %.lr.ph.i.i121, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %.lr.ph.i.i121, %bb.bp, %bb.bq
  %.sroa.0194.0255.ph = phi ptr [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.bp ], [ %.sroa.0.0.copyload.i.i.i.i113, %bb.bq ], [ %i.ez, %.lr.ph.i.i121 ]
  %.sroa.9.0254.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.i122, %bb.bp ], [ %.sroa.0.0.copyload.i.i.i115, %bb.bq ], [ %i.fa, %.lr.ph.i.i121 ]
  br label %.lr.ph257

.lr.ph.i.i121:                                    ; preds = %bb.bq, %.lr.ph.i.i121
  %i.ex = phi ptr [ %i.fa, %.lr.ph.i.i121 ], [ %.sroa.0.0.copyload.i.i.i115, %bb.bq ]
  %i.ey = phi ptr [ %i.ez, %.lr.ph.i.i121 ], [ %.sroa.0.0.copyload.i.i.i.i113, %bb.bq ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 2 uses
  %i.fb = load i8, ptr %i.ez, align 1, !tbaa !228
  %i.fc = icmp slt i8 %i.fb, -1
  br i1 %i.fc, label %.lr.ph.i.i121, label %.lr.ph257.preheader, !llvm.loop !213

._crit_edge258:                                   ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  %i.fd = ptrtoint ptr %.sroa.9201.1 to i64
  %i.fe = ptrtoint ptr %.sroa.0197.2 to i64       ; 3 uses
  %i.ff = sub i64 %i.fd, %i.fe                    ; 5 uses
  %i.fg = icmp ugt i64 %i.ff, 9223372036854775792
  br i1 %i.fg, label %.noexc.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread: ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %._crit_edge258
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #32
          to label %.noexc124 unwind label %bb.bz

.noexc124:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i: ; preds = %._crit_edge258
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.9201.1, %.sroa.0197.2
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.thread.i.i.i.i.i: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i
  %.sroa.0197.0.lcssa334349 = phi ptr [ null, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread ], [ %.sroa.0197.2, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i ]
  %.sroa.14.0.lcssa340347 = phi ptr [ null, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread ], [ %.sroa.14.2, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i ]
  %i.fh = phi i64 [ 0, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread ], [ %i.fe, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i ]
  %i.fi = phi i64 [ 0, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i.thread ], [ %i.ff, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr null, i64 %i.fi
  br label %bb.bw

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i
  %i.fk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #28
          to label %.noexc125 unwind label %bb.bz ; 4 uses

.noexc125:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ff
  %i.fm = and i64 %i.ff, 9223372036854775792      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fk, ptr align 8 %.sroa.0197.2, i64 %i.fm, i1 false), !noalias !230
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.fk, i64 %i.fm
  br label %bb.bw

.thread:                                          ; preds = %._crit_edge
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit186

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142
  %.sroa.0194.0255 = phi ptr [ %.sroa.0194.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142 ], [ %.sroa.0194.0255.ph, %.lr.ph257.preheader ]
  %.sroa.9.0254 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142 ], [ %.sroa.9.0254.ph, %.lr.ph257.preheader ] ; 3 uses
  %.sroa.14.0253 = phi ptr [ %.sroa.14.2, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142 ], [ null, %.lr.ph257.preheader ] ; 6 uses
  %.sroa.9201.0252 = phi ptr [ %.sroa.9201.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142 ], [ null, %.lr.ph257.preheader ] ; 3 uses
  %.sroa.0197.0251 = phi ptr [ %.sroa.0197.2, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CommandLineFlagEEEJEE8iterator21skip_empty_or_deletedEv.exit.i142 ], [ null, %.lr.ph257.preheader ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0254, i64 24, i1 false)
  %.not.i126 = icmp eq ptr %.sroa.9201.0252, %.sroa.14.0253
  br i1 %.not.i126, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph257
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9201.0252, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0254, i64 16, i1 false)
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141

bb.bs:                                            ; preds = %.lr.ph257
  %i.fo = ptrtoint ptr %.sroa.14.0253 to i64
  %i.fp = ptrtoint ptr %.sroa.0197.0251 to i64
  %i.fq = sub i64 %i.fo, %i.fp                    ; 4 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775792
  br i1 %i.fr, label %bb.bt, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i127

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #32
          to label %.noexc139 unwind label %.loopexit.split-lp

.noexc139:                                        ; preds = %bb.bt
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i127: ; preds = %bb.bs
  %i.fs = ashr exact i64 %i.fq, 4                 ; 3 uses
  %.sroa.speculated.i.i.i128 = call i64 @llvm.umax.i64(i64 %i.fs, i64 1)
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i128, %i.fs ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 576460752303423487)
  %i.fw = select i1 %i.fu, i64 576460752303423487, i64 %i.fv ; 3 uses
  %.not.i.i.i129 = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i129)
  %i.fx = shl nuw nsw i64 %i.fw, 4
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #28
          to label %.noexc140 unwind label %.loopexit ; 5 uses

.noexc140:                                        ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i127
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !78
  %.not10.i.i.i.i.i130 = icmp eq ptr %.sroa.0197.0251, %.sroa.14.0253
  br i1 %.not10.i.i.i.i.i130, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i135, label %.lr.ph.i.i.i.i.i131

.lr.ph.i.i.i.i.i131:                              ; preds = %.noexc140, %.lr.ph.i.i.i.i.i131
  %.012.i.i.i.i.i132 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i131 ], [ %i.fy, %.noexc140 ] ; 2 uses
  %.0911.i.i.i.i.i133 = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i131 ], [ %.sroa.0197.0251, %.noexc140 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i132, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i133, i64 16, i1 false), !tbaa.struct !78, !alias.scope !231
  %i.ga = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i133, i64 16 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i132, i64 16 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %i.ga, %.sroa.14.0253
  br i1 %.not.i.i.i.i.i134, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i135, label %.lr.ph.i.i.i.i.i131, !llvm.loop !217

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i135: ; preds = %.lr.ph.i.i.i.i.i131, %.noexc140
  %.0.lcssa.i.i.i.i.i136 = phi ptr [ %i.fy, %.noexc140 ], [ %i.gb, %.lr.ph.i.i.i.i.i131 ]
  %.not.i23.i.i137 = icmp eq ptr %.sroa.0197.0251, null
  br i1 %.not.i23.i.i137, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i135
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0197.0251, i64 noundef %i.fq) #29
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138: ; preds = %bb.bu, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i135
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.fw
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit141: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138, %bb.br
  %.sroa.0197.2 = phi ptr [ %i.fy, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138 ], [ %.sroa.0197.0251, %bb.br ] ; 7 uses
  %.0.lcssa.i.i.i.i.i136.pn = phi ptr [ %.0.lcssa.i.i.i.i.i136, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138 ], [ %.sroa.9201.0252, %bb.br ]
  %.sroa.14.2 = phi ptr [ %i.gc, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i138 ], [ %.sroa.14.0253, %bb.br ] ; 4 uses
  %.sroa.9201.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i136.pn, i64 16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0194.0255, i64 1 ; 3 uses
end_hunk_0
