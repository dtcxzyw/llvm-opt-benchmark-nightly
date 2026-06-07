inline.NumInlined: 2962
inline.NumDeleted: 1077
begin_hunk_0_@_ZN6duckdb11Transformer12TransformCTEERN17duckdb_libpgquery12PGWithClauseERNS_24CommonTableExpressionMapE:bb.a
bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.0 = phi i1 [ false, %bb.ci ], [ true, %bb.ch ] ; 2 uses
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hu = load ptr, ptr %22, align 8, !tbaa !26   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.cj
  call void @_ZdlPv(ptr noundef %i.hu) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br i1 %.0, label %bb.ck, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br i1 %.0, label %bb.ck, label %.loopexit.split-lp

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %.pn81184 = phi { ptr, i32 } [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.thread ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ]
  call void @__cxa_free_exception(ptr %i.hr) #19
  br label %.loopexit.split-lp

_ZN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i, %bb.cf, %.preheader223, %.noexc133, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEE4findERSA_.exit.i, %_ZN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !177
  switch i32 %i.hy, label %bb.co [
    i32 0, label %bb.cl
    i32 1, label %bb.cm
    i32 2, label %bb.cn
  ]

bb.cl:                                            ; preds = %_ZN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.hz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %_ZN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ia = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %_ZN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ib = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp

.sink.split:                                      ; preds = %bb.cn, %bb.cm, %bb.cl
  %.sink268 = phi ptr [ %i.hz, %bb.cl ], [ %i.ia, %bb.cm ], [ %i.ib, %bb.cn ]
  %.sink = phi i8 [ 1, %bb.cl ], [ 2, %bb.cm ], [ 3, %bb.cn ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.sink268, i64 56
  store i8 %.sink, ptr %i.ic, align 8, !tbaa !43
  br label %bb.co

bb.co:                                            ; preds = %.sink.split, %_ZN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEEixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.ie = load ptr, ptr %6, align 8, !tbaa !64
  store ptr null, ptr %6, align 8, !tbaa !64
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !64 ; 3 uses
  store ptr %i.ie, ptr %i.id, align 8, !tbaa !64
  %.not.i.i.i.i.i138 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i.i138, label %_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.cp
  call void @_ZN6duckdb25CommonTableExpressionInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %i.if) #19
  call void @_ZdlPv(ptr noundef nonnull %i.if) #21
  br label %_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.cp, %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i.i.i.i.i
  %i.ig = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.au
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ig) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.ii = load ptr, ptr %6, align 8, !tbaa !64    ; 3 uses
  %.not.i142 = icmp eq ptr %i.ii, null
  br i1 %.not.i142, label %_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  call void @_ZN6duckdb25CommonTableExpressionInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %i.ii) #19
  call void @_ZdlPv(ptr noundef nonnull %i.ii) #21
  br label %_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.063.in = getelementptr inbounds nuw i8, ptr %.063221, i64 8
  %.063 = load ptr, ptr %.063.in, align 8, !tbaa !7 ; 2 uses
  %.not = icmp eq ptr %.063, null
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !178

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %bb.ck
  %.pn81.pn = phi { ptr, i32 } [ %.pn81184, %bb.ck ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit187, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ij = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.au
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.ij) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %.loopexit.split-lp, %.loopexit196, %.loopexit.split-lp197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn81.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %lpad.loopexit.split-lp199, %.loopexit.split-lp197 ], [ %lpad.loopexit198, %.loopexit196 ], [ %.pn81.pn, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %.body

.body:                                            ; preds = %.loopexit192, %.loopexit.split-lp193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %bb.bu, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit118, %bb.l, %bb.k
  %.pn95 = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %.pn93166, %bb.ag ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn91169, %bb.am ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn89172, %bb.as ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %.pn87175, %bb.ay ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %.pn85178, %bb.bf ], [ %i.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn81.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ %.pn78, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit118 ], [ %.pn.pn, %bb.bu ], [ %i.bn, %bb.l ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.p ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.v ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %lpad.loopexit194, %.loopexit192 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp193 ]
  %i.il = load ptr, ptr %6, align 8, !tbaa !64    ; 3 uses
  %.not.i146 = icmp eq ptr %i.il, null
  br i1 %.not.i146, label %_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit148, label %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i147

_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i147: ; preds = %.body
  call void @_ZN6duckdb25CommonTableExpressionInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %i.il) #19
  call void @_ZdlPv(ptr noundef nonnull %i.il) #21
  br label %_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit148

_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit148: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn95

bb.cq:                                            ; preds = %bb.ci, %bb.bd, %bb.aw, %bb.aq, %bb.ak, %bb.ae
  unreachable
}

declare void @_ZN6duckdb11Transformer23TransformExpressionListERN17duckdb_libpgquery6PGListERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11Transformer21TransformRecursiveCTEERN17duckdb_libpgquery17PGCommonTableExprERNS_25CommonTableExpressionInfoE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(57) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.duckdb::optional_ptr.152", align 8 ; 5 uses
  %5 = alloca %"class.duckdb::unique_ptr.44", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.duckdb::optional_ptr.159", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::unique_ptr.62", align 8 ; 7 uses
  %9 = alloca %"class.duckdb::unique_ptr.62", align 8 ; 7 uses
  %10 = alloca %"class.duckdb::unique_ptr.71", align 8 ; 9 uses
  %11 = alloca %"class.duckdb::unique_ptr.62", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !170
  store ptr %i.c, ptr %4, align 8
  call void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery12PGSelectStmtELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.d = load ptr, ptr %4, align 8, !tbaa !179    ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !183
  %cond = icmp eq i32 %i.f, 1
  br i1 %cond, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #22
          to label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit unwind label %bb.v ; 15 uses

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 1, ptr %i.h, align 8, !tbaa !189, !noalias !193
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !193
  store ptr %i.k, ptr %i.j, align 8, !tbaa !123, !noalias !193
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 1, ptr %i.l, align 8, !tbaa !122, !noalias !193
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !193
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !196, !noalias !193
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !noalias !193
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !22, !noalias !193
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 0, ptr %i.r, align 8, !tbaa !28, !noalias !193
  store i8 0, ptr %i.q, align 8, !tbaa !10, !noalias !193
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN6duckdb15SelectStatementE, i32 0, i32 0, i32 2), ptr %i.g, align 8, !tbaa !66, !noalias !193
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store ptr null, ptr %i.s, align 8, !tbaa !197, !noalias !193
  store ptr %i.g, ptr %5, align 8, !tbaa !73
  %i.t = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #22
          to label %.noexc unwind label %.body.thread ; 13 uses

.noexc:                                           ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN6duckdb9QueryNodeE, i32 0, i32 0, i32 2), ptr %i.t, align 8, !tbaa !66, !noalias !200
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 4, ptr %i.u, align 8, !tbaa !203, !noalias !200
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false), !noalias !200
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  invoke void @_ZN6duckdb24CommonTableExpressionMapC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.w)
          to label %bb.c unwind label %.body.i, !noalias !200

.body.i:                                          ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #19, !noalias !200
  call void @_ZdlPv(ptr noundef nonnull %i.t) #21, !noalias !200
  br label %.body

bb.c:                                             ; preds = %.noexc
  store ptr getelementptr inbounds inrange(-16, 48) ({ [8 x ptr] }, ptr @_ZTVN6duckdb16RecursiveCTENodeE, i32 0, i32 0, i32 2), ptr %i.t, align 8, !tbaa !66, !noalias !200
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 136 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !22, !noalias !200
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  store i64 0, ptr %i.aa, align 8, !tbaa !28, !noalias !200
  store i8 0, ptr %i.z, align 8, !tbaa !10, !noalias !200
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i8 0, i64 64, i1 false), !noalias !200
  %i.ac = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.d unwind label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit64

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !219 ; 3 uses
  store ptr %i.t, ptr %i.ad, align 8, !tbaa !219
  %.not.i.i.i.i.i56 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i56, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ae) #19, !inline_history !220
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i, %bb.d
  %i.ai = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.w

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ak = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.f unwind label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.al = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb9QueryNode4CastINS_16RecursiveCTENodeEEERT_v(ptr noundef nonnull align 8 dereferenceable(120) %i.ak)
          to label %bb.g unwind label %bb.w       ; 13 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !176 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !22
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.442) #20
          to label %.noexc58 unwind label %bb.x

.noexc58:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !24
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.i
  %i.as = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc59 unwind label %bb.x   ; 2 uses

.noexc59:                                         ; preds = %.noexc.i
  store ptr %i.as, ptr %6, align 8, !tbaa !26
  %i.at = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc59, %bb.i
  %i.au = phi ptr [ %i.as, %.noexc59 ], [ %i.ao, %bb.i ] ; 2 uses
  switch i64 %i.aq, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.av = load i8, ptr %i.an, align 1, !tbaa !10
  store i8 %i.av, ptr %i.au, align 1, !tbaa !10
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %i.an, i64 %i.aq, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !28
  %i.ay = load ptr, ptr %6, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 120 ; 5 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  %i.be = load ptr, ptr %6, align 8, !tbaa !26    ; 6 uses
  %i.bf = icmp eq ptr %i.be, %i.ao                ; 2 uses
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.l
  br i1 %i.bf, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.l
  br i1 %i.bf, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bg = load i64, ptr %i.ax, align 8, !tbaa !28 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %.not21.i = icmp eq ptr %6, %i.ba
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.n, !prof !98

bb.n:                                             ; preds = %bb.m
  switch i64 %i.bg, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !10
  store i8 %i.bi, ptr %i.bb, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.be, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bj = load i64, ptr %i.ax, align 8, !tbaa !28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !28
  %i.bl = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !10
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !26
  %i.bo = load <2 x i64>, ptr %i.ax, align 8, !tbaa !10
  store <2 x i64> %i.bo, ptr %i.bn, align 8, !tbaa !10
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !10
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.br = load <2 x i64>, ptr %i.ax, align 8, !tbaa !10
  store <2 x i64> %i.br, ptr %i.bq, align 8, !tbaa !10
  %.not.i60 = icmp eq ptr %i.bb, null
  br i1 %.not.i60, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bb, ptr %6, align 8, !tbaa !26
  store i64 %i.bp, ptr %i.ao, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ao, ptr %6, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.bs = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bb, %bb.q ], [ %i.ao, %bb.r ], [ %i.be, %bb.m ]
  store i64 0, ptr %i.ax, align 8, !tbaa !28
  store i8 0, ptr %i.bs, align 1, !tbaa !10
  %i.bt = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ao
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.bt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !221, !range !174, !noundef !175
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  store i8 %i.bw, ptr %i.bx, align 8, !tbaa !222
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !230 ; 2 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %bb.z, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.bz, ptr %7, align 8
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery12PGWithClauseELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %7, align 8, !tbaa !231
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  invoke void @_ZN6duckdb11Transformer12TransformCTEERN17duckdb_libpgquery12PGWithClauseERNS_24CommonTableExpressionMapE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(80) %i.cb)
          to label %bb.u unwind label %bb.y
end_hunk_0
begin_hunk_1_@_ZN6duckdb11Transformer21TransformRecursiveCTEERN17duckdb_libpgquery17PGCommonTableExprERNS_25CommonTableExpressionInfoE:bb.a
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775800
  br i1 %i.eg, label %bb.ai, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.435) #20
          to label %.noexc79 unwind label %.loopexit.split-lp

.noexc79:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.eh = ashr exact i64 %i.ef, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 1152921504606846975)
  %i.el = select i1 %i.ej, i64 1152921504606846975, i64 %i.ek ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.em = shl nuw nsw i64 %i.el, 3
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #22
          to label %.noexc80 unwind label %.loopexit ; 10 uses

.noexc80:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ef
  %i.ep = load i64, ptr %10, align 8, !tbaa !80
  store i64 %i.ep, ptr %i.eo, align 8, !tbaa !80
  store ptr null, ptr %10, align 8, !tbaa !80
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ec, %i.dy
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc80
  %i.eq = add i64 %i.ed, -8
  %i.er = sub i64 %i.eq, %i.ee                    ; 2 uses
  %i.es = lshr i64 %i.er, 3
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.er, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader178, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.en, i64 8
  %i.eu = add i64 %i.ed, -8
  %i.ev = sub i64 %i.eu, %i.ee
  %i.ew = and i64 %i.ev, -8                       ; 2 uses
  %scevgep172 = getelementptr i8, ptr %scevgep, i64 %i.ew
  %scevgep173 = getelementptr i8, ptr %i.ec, i64 8
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.ew
  %bound0 = icmp ult ptr %i.en, %scevgep174
  %bound1 = icmp ult ptr %i.ec, %scevgep172
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader178, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.et, 4611686018427387900     ; 3 uses
  %i.ex = shl i64 %n.vec, 3                       ; 2 uses
  %i.ey = getelementptr i8, ptr %i.en, i64 %i.ex  ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ec, i64 %i.ex
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.en, i64 %i.fa ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.ec, i64 %i.fa ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.fb = getelementptr i8, ptr %next.gep175, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep175, align 8, !tbaa !80, !alias.scope !242, !noalias !237
  %wide.load176 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !80, !alias.scope !242, !noalias !237
  %i.fc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !80, !alias.scope !245, !noalias !242
  store <2 x i64> %wide.load176, ptr %i.fc, align 8, !tbaa !80, !alias.scope !245, !noalias !242
  %i.fd = getelementptr i8, ptr %next.gep175, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep175, align 8, !tbaa !80, !alias.scope !242, !noalias !237
  store <2 x ptr> splat (ptr null), ptr %i.fd, align 8, !tbaa !80, !alias.scope !242, !noalias !237
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !247

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader178

.lr.ph.i.i.i.i.i.i.preheader178:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.en, %vector.memcheck ], [ %i.en, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ey, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ec, %vector.memcheck ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ez, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader178, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader178 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader178 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.ff = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !240, !noalias !237
  store i64 %i.ff, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !237, !noalias !240
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !240, !noalias !237
  %i.fg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fg, %i.dy
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !248

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc80
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.en, %.noexc80 ], [ %i.ey, %middle.block ], [ %i.fh, %.lr.ph.i.i.i.i.i.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ec) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.aj
  store ptr %i.en, ptr %i.dn, align 8, !tbaa !82
  store ptr %i.fi, ptr %i.do, align 8, !tbaa !78
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  store ptr %i.fj, ptr %i.dp, align 8, !tbaa !79
  %.pr123 = load ptr, ptr %10, align 8, !tbaa !80 ; 3 uses
  %.not.i81 = icmp eq ptr %.pr123, null
  br i1 %.not.i81, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.fk = load ptr, ptr %.pr123, align 8, !tbaa !66
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(56) %.pr123) #19, !inline_history !97
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0111.0142, i64 8 ; 2 uses
  %.not140 = icmp eq ptr %i.fn, %i.dm
  br i1 %.not140, label %._crit_edge, label %bb.ae

bb.ak:                                            ; preds = %bb.af, %bb.ae
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fp = load ptr, ptr %10, align 8, !tbaa !80   ; 3 uses
  %.not.i82 = icmp eq ptr %i.fp, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i83

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i83: ; preds = %bb.al
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !66
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(56) %i.fp) #19, !inline_history !97
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i83, %bb.al, %bb.ak
  %.pn52 = phi { ptr, i32 } [ %i.fo, %bb.ak ], [ %lpad.phi, %bb.al ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

bb.am:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !170
  invoke void @_ZN6duckdb11Transformer19TransformSelectNodeERN17duckdb_libpgquery6PGNodeEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.62") align 8 %11, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ft, i1 noundef zeroext true)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.fu = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #22
          to label %bb.ao unwind label %bb.ar     ; 14 uses

bb.ao:                                            ; preds = %bb.an
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i8 1, ptr %i.fv, align 8, !tbaa !189, !noalias !249
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i8 0, i64 16, i1 false), !noalias !249
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !123, !noalias !249
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  store i64 1, ptr %i.fz, align 8, !tbaa !122, !noalias !249
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 48
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i8 0, i64 16, i1 false), !noalias !249
  store float 1.000000e+00, ptr %i.gb, align 8, !tbaa !196, !noalias !249
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i8 0, i64 16, i1 false), !noalias !249
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 88
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fu, i64 104 ; 2 uses
  store ptr %i.ge, ptr %i.gd, align 8, !tbaa !22, !noalias !249
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 96
  store i64 0, ptr %i.gf, align 8, !tbaa !28, !noalias !249
  store i8 0, ptr %i.ge, align 8, !tbaa !10, !noalias !249
  store ptr getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN6duckdb15SelectStatementE, i32 0, i32 0, i32 2), ptr %i.fu, align 8, !tbaa !66, !noalias !249
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fu, i64 120
  store ptr null, ptr %i.gg, align 8, !tbaa !197, !noalias !249
  store ptr %i.fu, ptr %0, align 8, !tbaa !73, !alias.scope !249
  %i.gh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 120 ; 2 uses
  %i.gj = load ptr, ptr %11, align 8, !tbaa !219
  store ptr null, ptr %11, align 8, !tbaa !219
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !219 ; 3 uses
  store ptr %i.gj, ptr %i.gi, align 8, !tbaa !219
  %.not.i.i.i.i.i87 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i.i87, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit89.thread, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit89

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit89: ; preds = %bb.ap
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !66
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.gk) #19, !inline_history !220
  %.pr125 = load ptr, ptr %11, align 8, !tbaa !219 ; 3 uses
  %.not.i90 = icmp eq ptr %.pr125, null
  br i1 %.not.i90, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit89.thread, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i91

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i91: ; preds = %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit89
  %i.go = load ptr, ptr %.pr125, align 8, !tbaa !66
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr125) #19, !inline_history !233
  br label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit89.thread

bb.aq:                                            ; preds = %bb.am
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit98

bb.ar:                                            ; preds = %bb.an
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit95

bb.as:                                            ; preds = %bb.ao
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %0, align 8, !tbaa !73    ; 3 uses
  %.not.i93 = icmp eq ptr %i.gu, null
  br i1 %.not.i93, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit95, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i94

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i94: ; preds = %bb.as
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !66
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(128) %i.gu) #19, !inline_history !77
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit95

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit95: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i94, %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.gs, %bb.ar ], [ %i.gt, %bb.as ], [ %i.gt, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i94 ] ; 2 uses
  %i.gy = load ptr, ptr %11, align 8, !tbaa !219  ; 3 uses
  %.not.i96 = icmp eq ptr %i.gy, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit98, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i97

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i97: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit95
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !66
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.gy) #19, !inline_history !233
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit98

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit98: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i97, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit95, %bb.aq
  %.pn.pn = phi { ptr, i32 } [ %i.gr, %bb.aq ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit95 ], [ %.pn, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.body

bb.at:                                            ; preds = %._crit_edge
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !252
  %.not46 = icmp eq ptr %i.hd, null
  br i1 %.not46, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge
  %i.he = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.av unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @__cxa_throw(ptr nonnull %i.he, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.bf unwind label %bb.ax

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread: ; preds = %bb.au
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.029 = phi i1 [ false, %bb.aw ], [ true, %bb.av ] ; 2 uses
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hh = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.ax
  call void @_ZdlPv(ptr noundef %i.hh) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br i1 %.029, label %bb.ay, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br i1 %.029, label %bb.ay, label %.body

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %.pn50129 = phi { ptr, i32 } [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.thread ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ]
  call void @__cxa_free_exception(ptr %i.he) #19
  br label %.body

bb.az:                                            ; preds = %bb.at
  %i.hk = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !253
  %.not47 = icmp eq ptr %i.hl, null
  br i1 %.not47, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hm = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @__cxa_throw(ptr nonnull %i.hm, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.bf unwind label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread: ; preds = %bb.ba
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.be

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0 = phi i1 [ false, %bb.bc ], [ true, %bb.bb ] ; 2 uses
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hp = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef %i.hp) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br i1 %.0, label %bb.be, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br i1 %.0, label %bb.be, label %.body

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn48132 = phi { ptr, i32 } [ %i.hn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %i.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ]
  call void @__cxa_free_exception(ptr %i.hm) #19
  br label %.body

.thread:                                          ; preds = %bb.az
  %i.hs = load i64, ptr %5, align 8, !tbaa !73
  store i64 %i.hs, ptr %0, align 8, !tbaa !73
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit107

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit89.thread: ; preds = %bb.ap, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i91, %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit89
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %.pr133 = load ptr, ptr %5, align 8, !tbaa !73  ; 3 uses
  %.not.i105 = icmp eq ptr %.pr133, null
  br i1 %.not.i105, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit107, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i106

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i106: ; preds = %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit89.thread
  %i.ht = load ptr, ptr %.pr133, align 8, !tbaa !66
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(128) %.pr133) #19, !inline_history !77
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit107

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit107: ; preds = %.thread, %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit89.thread, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit64, %.body.i, %bb.w, %bb.x, %bb.y, %bb.ac, %bb.ad, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %bb.ay, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit98, %bb.v
  %.pn52.pn.pn.ph = phi { ptr, i32 } [ %i.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %i.x, %.body.i ], [ %i.ce, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit64 ], [ %i.ck, %bb.y ], [ %i.ds, %bb.ac ], [ %i.dt, %bb.ad ], [ %i.ci, %bb.w ], [ %.pn52, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit84 ], [ %i.cc, %bb.v ], [ %i.cj, %bb.x ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %.pn48132, %bb.be ], [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn50129, %bb.ay ], [ %.pn.pn, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit98 ] ; 2 uses
  %.pr135 = load ptr, ptr %5, align 8, !tbaa !73  ; 3 uses
  %.not.i108 = icmp eq ptr %.pr135, null
  br i1 %.not.i108, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit110, label %.body._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i109_crit_edge

.body._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i109_crit_edge: ; preds = %.body
  %.pre = load ptr, ptr %.pr135, align 8, !tbaa !66
  br label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i109

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i109: ; preds = %.body._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i109_crit_edge, %.body.thread
  %i.hw = phi ptr [ getelementptr inbounds inrange(-16, 32) ({ [6 x ptr] }, ptr @_ZTVN6duckdb15SelectStatementE, i32 0, i32 0, i32 2), %.body.thread ], [ %.pre, %.body._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i109_crit_edge ]
  %.pn52.pn.pn138 = phi { ptr, i32 } [ %i.cd, %.body.thread ], [ %.pn52.pn.pn.ph, %.body._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i109_crit_edge ]
  %i.hx = phi ptr [ %i.g, %.body.thread ], [ %.pr135, %.body._ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i109_crit_edge ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(128) %i.hx) #19, !inline_history !77
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit110

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit110: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i109
  %.pn52.pn.pn139 = phi { ptr, i32 } [ %.pn52.pn.pn.ph, %.body ], [ %.pn52.pn.pn138, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn52.pn.pn139

bb.bf:                                            ; preds = %bb.bc, %bb.aw
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(57) ptr @_ZNK6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.443, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb11TransformerC1ERS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZN6duckdb11Transformer19TransformSelectStmtERN17duckdb_libpgquery6PGNodeEb(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.44") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb11TransformerD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ParserExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.275", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !254
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !254
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !257, !noalias !254 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !260, !noalias !254 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #21
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !261

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !257, !noalias !254
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #21
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !254
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !254
  invoke void @_ZN6duckdb15ParserExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !219    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.443, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
end_hunk_1
