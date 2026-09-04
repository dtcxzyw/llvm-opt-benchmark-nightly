Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFastbuildNormalTargetGenerator?download=true
inline.NumInlined: 6296
inline.NumDeleted: 1979
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN32cmFastbuildNormalTargetGenerator24GenerateGroupedUnityNodeERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKSt3mapIS6_S8_St4lessIS6_ESaISt4pairIKS6_S8_EEERi:bb.a
  store ptr %.pn.i.i.else.val.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !117, !alias.scope !1719, !noalias !1718
  store ptr %10, ptr %i.ad, align 8, !tbaa !120, !alias.scope !1719, !noalias !1718
  store i64 13, ptr %i.ae, align 8, !tbaa !28, !alias.scope !1721, !noalias !1718
  store <2 x ptr> <ptr @.str.175, ptr null>, ptr %.sroa.4.0..sroa_idx.i12.i, align 8, !tbaa !133, !alias.scope !1721, !noalias !1718
  %i.bh = load ptr, ptr %i.as, align 8, !tbaa !30, !noalias !1718
  %i.bi = load i64, ptr %i.ax, align 8, !tbaa !32, !noalias !1718
  store i64 %i.bi, ptr %i.af, align 8, !tbaa !28, !alias.scope !1722, !noalias !1718
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx.i20.i, align 8, !tbaa !117, !alias.scope !1722, !noalias !1718
  store ptr null, ptr %i.ag, align 8, !tbaa !120, !alias.scope !1722, !noalias !1718
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !1718
  store i64 0, ptr %6, align 8, !noalias !1718
  store i8 95, ptr %i.aj, align 8, !tbaa !31, !noalias !1718
  store i64 1, ptr %i.ai, align 8, !tbaa !28, !noalias !1718
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i21.i, align 8, !tbaa !117, !noalias !1718
  store i64 1, ptr %i.ah, align 8, !tbaa !28, !alias.scope !1723, !noalias !1718
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i29.i, align 8, !tbaa !117, !alias.scope !1723, !noalias !1718
  store ptr null, ptr %i.ak, align 8, !tbaa !120, !alias.scope !1723, !noalias !1718
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !1718
  invoke void @_ZN10cmAlphaNumC1Ei(ptr noundef nonnull align 8 dereferenceable(56) %7, i32 noundef %i.bg)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  %i.bj = load ptr, ptr %7, align 8, !tbaa !208, !noalias !1725 ; 4 uses
  %.not.i.i30.i = icmp eq ptr %i.bj, null         ; 2 uses
  %.pn.in.i.i33.i = select i1 %.not.i.i30.i, ptr %.sroa.3.0..sroa_idx.i.i31.i, ptr %i.bj
  %.pn.i.i34.i = load ptr, ptr %.pn.in.i.i33.i, align 8, !tbaa !117, !noalias !1725
  %.pn3.i.i32.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i30.i, ptr %7, ptr %i.bj
  %.pn3.i.i32.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.pn3.i.i32.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.pn2.i.i36.i = load i64, ptr %.pn3.i.i32.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !28, !noalias !1725
  store i64 %.pn2.i.i36.i, ptr %i.al, align 8, !tbaa !28, !alias.scope !1724, !noalias !1718
  store ptr %.pn.i.i34.i, ptr %.sroa.4.0..sroa_idx.i37.i, align 8, !tbaa !117, !alias.scope !1724, !noalias !1718
  store ptr %i.bj, ptr %i.am, align 8, !tbaa !120, !alias.scope !1724, !noalias !1718
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull %5, i64 5)
          to label %bb.g unwind label %bb.aa

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !1718
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !1718
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !1718
  %i.bk = load ptr, ptr %0, align 8, !tbaa !30    ; 6 uses
  %i.bl = icmp eq ptr %i.bk, %i.e
  %i.bm = load ptr, ptr %9, align 8, !tbaa !30    ; 6 uses
  %i.bn = icmp eq ptr %i.bm, %i.an                ; 2 uses
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.bn, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.bn, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bo = load i64, ptr %i.ao, align 8, !tbaa !32 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.i, !prof !124

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bo, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !31
  store i8 %i.bq, ptr %i.bk, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 1 %i.bm, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.br = load i64, ptr %i.ao, align 8, !tbaa !32 ; 2 uses
  store i64 %i.br, ptr %i.f, align 8, !tbaa !32
  %i.bs = load ptr, ptr %0, align 8, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !31
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bm, ptr %0, align 8, !tbaa !30
  %i.bu = load <2 x i64>, ptr %i.ao, align 8, !tbaa !31
  store <2 x i64> %i.bu, ptr %i.f, align 8, !tbaa !31
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !31
  store ptr %i.bm, ptr %0, align 8, !tbaa !30
  %i.bw = load <2 x i64>, ptr %i.ao, align 8, !tbaa !31
  store <2 x i64> %i.bw, ptr %i.f, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bk, ptr %9, align 8, !tbaa !30
  store i64 %i.bv, ptr %i.an, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.an, ptr %9, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bx = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bk, %bb.l ], [ %i.an, %bb.m ], [ %i.bm, %bb.h ]
  store i64 0, ptr %i.ao, align 8, !tbaa !32
  store i8 0, ptr %i.bx, align 1, !tbaa !31
  %i.by = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.an
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ca = load i64, ptr %i.an, align 8, !tbaa !31
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cc = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ap
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.cg = load ptr, ptr %i.aq, align 8, !tbaa !127 ; 8 uses
  %i.ch = load ptr, ptr %i.ar, align 8, !tbaa !129
  %.not.i51 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i51, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 3 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !26
  %i.cj = load ptr, ptr %.sroa.073.084, align 8, !tbaa !30 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.073.084, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.cl, ptr %i.a, align 8, !tbaa !28
  %i.cm = icmp ugt i64 %i.cl, 15
  br i1 %i.cm, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.cn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc53 unwind label %bb.d   ; 2 uses

.noexc53:                                         ; preds = %.noexc.i.i
  store ptr %i.cn, ptr %i.cg, align 8, !tbaa !30
  %i.co = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.co, ptr %i.ci, align 8, !tbaa !31
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc53, %bb.n
  %i.cp = phi ptr [ %i.cn, %.noexc53 ], [ %i.ci, %bb.n ] ; 2 uses
  switch i64 %i.cl, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.cq = load i8, ptr %i.cj, align 1, !tbaa !31
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cj, i64 %i.cl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !32
  %i.ct = load ptr, ptr %i.cg, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store i8 0, ptr %i.cu, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cv = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store ptr %i.cw, ptr %i.aq, align 8, !tbaa !127
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.073.084)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit unwind label %bb.d

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.cx = load ptr, ptr %2, align 8, !tbaa !125
  %i.cy = load ptr, ptr %i.ac, align 8, !tbaa !125 ; 5 uses
  %i.cz = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.cx, ptr %i.cy, ptr nonnull align 8 dereferenceable(32) %.sroa.073.084)
          to label %.noexc63 unwind label %bb.ab  ; 5 uses

.noexc63:                                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  %i.da = icmp eq ptr %i.cz, %i.cy
  br i1 %i.da, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.noexc63
  %.sroa.07.017.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 32 ; 2 uses
  %.not18.i = icmp eq ptr %.sroa.07.017.i, %i.cy
  br i1 %.not18.i, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.073.084, i64 8
  br label %bb.r

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread.i, %.lr.ph.i
  %.sroa.07.021.i = phi ptr [ %.sroa.07.017.i, %.lr.ph.i ], [ %.sroa.07.0.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread.i ] ; 8 uses
  %.sroa.013.020.i = phi ptr [ %i.cz, %.lr.ph.i ], [ %.sroa.013.1.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread.i ] ; 12 uses
  %.pn19.i = phi ptr [ %i.cz, %.lr.ph.i ], [ %.sroa.07.021.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread.i ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 40 ; 3 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !32 ; 8 uses
  %i.de = load i64, ptr %i.db, align 8, !tbaa !32
  %i.df = icmp eq i64 %i.dd, %i.de
  br i1 %i.df, label %bb.s, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread16.i

bb.s:                                             ; preds = %bb.r
  %i.dg = icmp eq i64 %i.dd, 0
  br i1 %i.dg, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.i: ; preds = %bb.s
  %i.dh = load ptr, ptr %.sroa.073.084, align 8, !tbaa !30
  %i.di = load ptr, ptr %.sroa.07.021.i, align 8, !tbaa !30
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.di, ptr %i.dh, i64 %i.dd)
  %i.dj = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.dj, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread16.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread16.i: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.i, %bb.r
  %i.dk = load ptr, ptr %.sroa.013.020.i, align 8, !tbaa !30 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i, i64 16 ; 4 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  %i.dn = load ptr, ptr %.sroa.07.021.i, align 8, !tbaa !30 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 48 ; 6 uses
  %i.dp = icmp eq ptr %i.dn, %i.do                ; 2 uses
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread16.i
  br i1 %i.dp, label %bb.t, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread16.i
  br i1 %i.dp, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  %i.dq = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.dq)
  %.not21.i.i = icmp eq ptr %.sroa.07.021.i, %.sroa.013.020.i
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.u, !prof !124

bb.u:                                             ; preds = %bb.t
  switch i64 %i.dd, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.dr = load i8, ptr %i.dn, align 1, !tbaa !31
  store i8 %i.dr, ptr %i.dk, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dn, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.ds = load i64, ptr %i.dc, align 8, !tbaa !32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !32
  %i.du = load ptr, ptr %.sroa.013.020.i, align 8, !tbaa !30
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ds
  store i8 0, ptr %i.dv, align 1, !tbaa !31
  %.pre.i.i = load ptr, ptr %.sroa.07.021.i, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i, i64 8
  store ptr %i.dn, ptr %.sroa.013.020.i, align 8, !tbaa !30
  store i64 %i.dd, ptr %i.dw, align 8, !tbaa !32
  %i.dx = load i64, ptr %i.do, align 8, !tbaa !31
  store i64 %i.dx, ptr %i.dl, align 8, !tbaa !31
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60
  %i.dy = load i64, ptr %i.dl, align 8, !tbaa !31
  store ptr %i.dn, ptr %.sroa.013.020.i, align 8, !tbaa !30
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i, i64 8
  store i64 %i.dd, ptr %i.dz, align 8, !tbaa !32
  %i.ea = load i64, ptr %i.do, align 8, !tbaa !31
  store i64 %i.ea, ptr %i.dl, align 8, !tbaa !31
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.dk, ptr %.sroa.07.021.i, align 8, !tbaa !30
  store i64 %i.dy, ptr %i.do, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.do, ptr %.sroa.07.021.i, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.y, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.t
  %i.eb = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.dk, %bb.x ], [ %i.do, %bb.y ], [ %i.dn, %bb.t ]
  store i64 0, ptr %i.dc, align 8, !tbaa !32
  store i8 0, ptr %i.eb, align 1, !tbaa !31
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i, i64 32
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.i, %bb.s
  %.sroa.013.1.i = phi ptr [ %.sroa.013.020.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.i ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i ], [ %.sroa.013.020.i, %bb.s ] ; 2 uses
  %.sroa.07.0.i = getelementptr inbounds nuw i8, ptr %.sroa.07.021.i, i64 32 ; 2 uses
  %.not.i61 = icmp eq ptr %.sroa.07.0.i, %i.cy
  br i1 %.not.i61, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit, label %bb.r, !llvm.loop !1717

_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread.i, %.noexc63, %.preheader.i
  %.sroa.013.2.i = phi ptr [ %i.cy, %.noexc63 ], [ %i.cz, %.preheader.i ], [ %.sroa.013.1.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread.i ] ; 2 uses
  %11 = load ptr, ptr %i.ac, align 8, !tbaa !125  ; 3 uses
  %.not.i64 = icmp eq ptr %.sroa.013.2.i, %11
  br i1 %.not.i64, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EESC_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit
  %i.ed = load ptr, ptr %2, align 8, !tbaa !125   ; 2 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %.sroa.013.2.i to i64
  %i.eg = sub i64 %i.ef, %i.ee
  %i.eh = getelementptr inbounds i8, ptr %i.ed, i64 %i.eg ; 3 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.en, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.eh, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i ] ; 3 uses
  %i.ei = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5.i: ; preds = %.lr.ph.i.i.i.i
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !31
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5.i
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, %11
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.eh, ptr %i.ac, align 8, !tbaa !127
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EESC_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EESC_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit
  %i.eo = phi ptr [ %i.eh, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %11, %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit ], [ %i.bc, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ET_SD_SD_RKT0_.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.073.084, i64 32 ; 2 uses
  %.not81 = icmp eq ptr %i.ep, %i.aw
  br i1 %.not81, label %._crit_edge, label %bb.c

bb.z:                                             ; preds = %bb.e
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.aa:                                            ; preds = %.noexc, %bb.f
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.ap
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.aa
  %i.eu = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.z
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.z ], [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.er, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.d
  %.pn43.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.be, %bb.d ], [ %i.ew, %bb.ab ]
  call void @_ZN18FastbuildUnityNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) #26
  call void @_ZNSt6vectorI18FastbuildUnityNodeSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  resume { ptr, i32 } %.pn43.pn

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  call void @_ZN18FastbuildUnityNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) #26
  %i.ex = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.077.086) #29 ; 2 uses
  %.not = icmp eq ptr %i.ex, %i.d
  br i1 %.not, label %.critedge46, label %bb.b

.critedge46:                                      ; preds = %._crit_edge.thread, %bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ey, ptr %0, align 8, !tbaa !26
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ez, align 8, !tbaa !32
  store i8 0, ptr %i.ey, align 8, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.fb, ptr %i.fa, align 8, !tbaa !26
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.fc, align 8, !tbaa !32
  store i8 0, ptr %i.fb, align 8, !tbaa !31
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !26
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.ff, align 8, !tbaa !32
  store i8 0, ptr %i.fe, align 8, !tbaa !31
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.fg, align 8, !tbaa !112
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.fh, align 8, !tbaa !113
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !114
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.fg, ptr %i.fj, align 8, !tbaa !115
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.fk, align 8, !tbaa !116
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.fl, align 8, !tbaa !364
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 4, ptr %i.fm, align 4, !tbaa !365
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.fn, align 8, !tbaa !366
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !26
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.fq, align 8, !tbaa !32
  store i8 0, ptr %i.fp, align 8, !tbaa !31
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i8 0, i64 24, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.ft, ptr %i.fs, align 8, !tbaa !26
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.fu, align 8, !tbaa !32
  store i8 0, ptr %i.ft, align 8, !tbaa !31
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i8 0, i64 24, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %.critedge46
  %i.fw = load ptr, ptr %8, align 8, !tbaa !534   ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !535 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fw, %i.fy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP18FastbuildUnityNodeS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.fz, %.lr.ph.i.i.i ], [ %i.fw, %.critedge ] ; 2 uses
  call void @_ZN18FastbuildUnityNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %.05.i.i.i) #26
  %i.fz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 272 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fz, %i.fy
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP18FastbuildUnityNodeS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIP18FastbuildUnityNodeS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %.critedge
  %.not.i.i1.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI18FastbuildUnityNodeSaIS0_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIP18FastbuildUnityNodeS0_EvT_S2_RSaIT0_E.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !536
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fw to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.ge) #27
  br label %_ZNSt6vectorI18FastbuildUnityNodeSaIS0_EED2Ev.exit

_ZNSt6vectorI18FastbuildUnityNodeSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP18FastbuildUnityNodeS0_EvT_S2_RSaIT0_E.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK32cmFastbuildNormalTargetGenerator14ResolveIfAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::map.50", align 8       ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  %i.c = load ptr, ptr %2, align 8, !tbaa !30, !noalias !1739
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32, !noalias !1739 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !26, !alias.scope !1740
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !32, !alias.scope !1740
  store i8 0, ptr %i.f, align 8, !tbaa !31, !alias.scope !1740
  %i.h = add i64 %i.e, 12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.h)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.g, align 8, !tbaa !32, !alias.scope !1740
  %i.j = add i64 %i.i, -4611686018427387892
  %i.k = icmp ult i64 %i.j, 12
  br i1 %i.k, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.176, i64 noundef 12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.m = load i64, ptr %i.g, align 8, !tbaa !32, !alias.scope !1740
  %i.n = sub i64 4611686018427387903, %i.m
  %i.o = icmp ult i64 %i.n, %i.e
  br i1 %i.o, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.261) #25
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !30, !alias.scope !1740 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.f, align 8, !tbaa !31, !alias.scope !1740
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn9, %bb.u ], [ %i.q, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZNK26cmFastbuildTargetGenerator10LogMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(408) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.n
end_hunk_0
