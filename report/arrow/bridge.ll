inline.NumInlined: 8879
inline.NumDeleted: 3388
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_114SchemaImporter8DoImportEv:bb.a

bb.cn:                                            ; preds = %bb.cl
  %i.mu = ptrtoint ptr %.sroa.21.085.i.i to i64
  %i.mv = ptrtoint ptr %.sroa.0.086.i.i to i64
  %i.mw = sub i64 %i.mu, %i.mv                    ; 6 uses
  %i.mx = icmp eq i64 %i.mw, 9223372036854775804
  br i1 %i.mx, label %bb.co, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #41
          to label %.noexc33.i.i unwind label %bb.cs, !noalias !1734

.noexc33.i.i:                                     ; preds = %bb.co
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.cn
  %i.my = ashr exact i64 %i.mw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.my, i64 1)
  %i.mz = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.my ; 2 uses
  %i.na = icmp ult i64 %i.mz, %i.my
  %i.nb = call i64 @llvm.umin.i64(i64 %i.mz, i64 2305843009213693951)
  %i.nc = select i1 %i.na, i64 2305843009213693951, i64 %i.nb ; 3 uses
  %.not.i.i.i.i.i282 = icmp ne i64 %i.nc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i282)
  %i.nd = shl nuw nsw i64 %i.nc, 2
  %i.ne = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nd) #34
          to label %.noexc34.i.i unwind label %.thread114.i.i, !noalias !1734 ; 4 uses

.noexc34.i.i:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 %i.mw ; 2 uses
  store i32 %i.ms, ptr %i.nf, align 4, !tbaa !3, !noalias !1734
  %i.ng = icmp sgt i64 %i.mw, 0
  br i1 %i.ng, label %bb.cp, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

bb.cp:                                            ; preds = %.noexc34.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ne, ptr align 4 %.sroa.0.086.i.i, i64 %i.mw, i1 false), !noalias !1734
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.cp, %.noexc34.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.086.i.i, i64 noundef %i.mw) #33, !noalias !1734
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.nc
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.cm, %bb.cj
  %.sroa.14.1.i.i = phi ptr [ %.sroa.14.084.i.i, %bb.cj ], [ %i.nh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.mt, %bb.cm ] ; 2 uses
  %.sroa.21.1.i.i = phi ptr [ %.sroa.21.085.i.i, %bb.cj ], [ %i.ni, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.21.085.i.i, %bb.cm ] ; 3 uses
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.086.i.i, %bb.cj ], [ %i.ne, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0.086.i.i, %bb.cm ] ; 3 uses
  %i.nj = load ptr, ptr %36, align 8, !tbaa !78, !noalias !1740 ; 2 uses
  %.not.i.i.i.i266 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i.i266, label %_ZN5arrow6ResultIiED2Ev.exit.i.i, label %bb.cq, !prof !90

bb.cq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 1
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !93, !range !102, !noalias !1734, !noundef !103
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %_ZN5arrow6ResultIiED2Ev.exit.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %36) #31, !noalias !1734
  br label %_ZN5arrow6ResultIiED2Ev.exit.i.i

_ZN5arrow6ResultIiED2Ev.exit.i.i:                 ; preds = %bb.cr, %bb.cq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31, !noalias !1740
  br i1 %i.mq, label %bb.cf, label %.loopexit68.loopexit.i.i

.thread114.i.i:                                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6ResultIiED2Ev.exit36.i.i

bb.cs:                                            ; preds = %bb.co
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pre.i.i283 = load ptr, ptr %36, align 8, !tbaa !78, !noalias !1740 ; 2 uses
  %.not.i.i35.i.i = icmp eq ptr %.pre.i.i283, null
  br i1 %.not.i.i35.i.i, label %_ZN5arrow6ResultIiED2Ev.exit36.i.i, label %bb.ct, !prof !1746

bb.ct:                                            ; preds = %bb.cs
  %i.nn = getelementptr inbounds nuw i8, ptr %.pre.i.i283, i64 1
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !93, !range !102, !noalias !1734, !noundef !103
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %_ZN5arrow6ResultIiED2Ev.exit36.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %36) #31, !noalias !1734
  br label %_ZN5arrow6ResultIiED2Ev.exit36.i.i

_ZN5arrow6ResultIiED2Ev.exit36.i.i:               ; preds = %bb.cu, %bb.ct, %bb.cs, %.thread114.i.i
  %lpad.phi117.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.thread114.i.i ], [ %lpad.loopexit.split-lp.i.i, %bb.cs ], [ %lpad.loopexit.split-lp.i.i, %bb.ct ], [ %lpad.loopexit.split-lp.i.i, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31, !noalias !1740
  br label %bb.cx

.critedge.i.i:                                    ; preds = %bb.cf, %.thread110.i.i
  %i.nq = phi ptr [ %i.mf, %.thread110.i.i ], [ %i.mj, %bb.cf ]
  %.sroa.14.0.lcssa.i.i = phi ptr [ null, %.thread110.i.i ], [ %.sroa.14.1.i.i, %bb.cf ]
  %.sroa.21.0.lcssa.i.i = phi ptr [ null, %.thread110.i.i ], [ %.sroa.21.1.i.i, %bb.cf ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ null, %.thread110.i.i ], [ %.sroa.0.1.i.i, %bb.cf ]
  store ptr null, ptr %38, align 8, !tbaa !78, !alias.scope !1737, !noalias !1734
  %i.nr = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %.sroa.0.0.lcssa.i.i, ptr %i.nr, align 8, !tbaa !1747, !alias.scope !1737, !noalias !1734
  %i.ns = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %.sroa.14.0.lcssa.i.i, ptr %i.ns, align 8, !tbaa !1750, !alias.scope !1737, !noalias !1734
  %i.nt = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %.sroa.21.0.lcssa.i.i, ptr %i.nt, align 8, !tbaa !1751, !alias.scope !1737, !noalias !1734
  br label %.loopexit68.i.i

.loopexit68.loopexit.i.i:                         ; preds = %_ZN5arrow6ResultIiED2Ev.exit.i.i
  %i.nu = ptrtoint ptr %.sroa.21.1.i.i to i64
  br label %.loopexit68.i.i

.loopexit68.i.i:                                  ; preds = %.loopexit68.loopexit.i.i, %.critedge.i.i
  %i.nv = phi ptr [ %i.nq, %.critedge.i.i ], [ %i.mj, %.loopexit68.loopexit.i.i ]
  %.sroa.21.3.i.i = phi i64 [ 0, %.critedge.i.i ], [ %i.nu, %.loopexit68.loopexit.i.i ]
  %.sroa.0.3.i.i = phi ptr [ null, %.critedge.i.i ], [ %.sroa.0.1.i.i, %.loopexit68.loopexit.i.i ] ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %35, i64 48
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !1752, !noalias !1740
  %.not.i.i.i37.i.i = icmp eq i64 %i.nx, 0
  br i1 %.not.i.i.i37.i.i, label %bb.db, label %bb.cv

bb.cv:                                            ; preds = %.loopexit68.i.i
  %i.ny = load ptr, ptr %i.nv, align 8, !tbaa !1745, !noalias !1740 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %bb.db, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_ZdaPv(ptr noundef nonnull %i.ny) #33, !noalias !1734
  br label %bb.db

bb.cx:                                            ; preds = %_ZN5arrow6ResultIiED2Ev.exit36.i.i, %bb.ck, %bb.cg
  %.sroa.21.4.i.i = phi ptr [ null, %bb.cg ], [ %.sroa.21.085.i.i, %_ZN5arrow6ResultIiED2Ev.exit36.i.i ], [ %.sroa.21.085.i.i, %bb.ck ]
  %.sroa.0.4.i.i = phi ptr [ null, %bb.cg ], [ %.sroa.0.086.i.i, %_ZN5arrow6ResultIiED2Ev.exit36.i.i ], [ %.sroa.0.086.i.i, %bb.ck ] ; 3 uses
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.mo, %bb.cg ], [ %lpad.phi117.i.i, %_ZN5arrow6ResultIiED2Ev.exit36.i.i ], [ %i.mr, %bb.ck ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %35, i64 48
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !1752, !noalias !1740
  %.not.i.i.i38.i.i = icmp eq i64 %i.ob, 0
  br i1 %.not.i.i.i38.i.i, label %_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEED2Ev.exit39.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.oc = getelementptr inbounds nuw i8, ptr %35, i64 40
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !1745, !noalias !1740 ; 2 uses
  %i.oe = icmp eq ptr %i.od, null
  br i1 %i.oe, label %_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEED2Ev.exit39.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_ZdaPv(ptr noundef nonnull %i.od) #33, !noalias !1734
  br label %_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEED2Ev.exit39.i.i

_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEED2Ev.exit39.i.i: ; preds = %bb.cz, %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31, !noalias !1740
  %.not.i.i.i40.i.i = icmp eq ptr %.sroa.0.4.i.i, null
  br i1 %.not.i.i.i40.i.i, label %common.resume336, label %bb.da

bb.da:                                            ; preds = %_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEED2Ev.exit39.i.i
  %i.of = ptrtoint ptr %.sroa.21.4.i.i to i64
  %i.og = ptrtoint ptr %.sroa.0.4.i.i to i64
  %i.oh = sub i64 %i.of, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4.i.i, i64 noundef %i.oh) #33, !noalias !1734
  br label %common.resume336

bb.db:                                            ; preds = %bb.cw, %bb.cv, %.loopexit68.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31, !noalias !1740
  %.not.i.i.i41.i.i = icmp eq ptr %.sroa.0.3.i.i, null
  br i1 %.not.i.i.i41.i.i, label %_ZN5arrow12_GLOBAL__N_118FormatStringParser9ParseIntsIiEENS_6ResultISt6vectorIT_SaIS5_EEEESt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.oi = ptrtoint ptr %.sroa.0.3.i.i to i64
  %i.oj = sub i64 %.sroa.21.3.i.i, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3.i.i, i64 noundef %i.oj) #33, !noalias !1734
  br label %_ZN5arrow12_GLOBAL__N_118FormatStringParser9ParseIntsIiEENS_6ResultISt6vectorIT_SaIS5_EEEESt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split.i

_ZN5arrow12_GLOBAL__N_118FormatStringParser9ParseIntsIiEENS_6ResultISt6vectorIT_SaIS5_EEEESt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split.i: ; preds = %bb.dc, %bb.db
  %.pr.i267 = load ptr, ptr %38, align 8, !tbaa !78, !noalias !1734
  %i.ok = icmp eq ptr %.pr.i267, null
  br i1 %i.ok, label %_ZN5arrow12_GLOBAL__N_118FormatStringParser9ParseIntsIiEENS_6ResultISt6vectorIT_SaIS5_EEEESt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split._crit_edge.i, label %bb.dd, !prof !90

_ZN5arrow12_GLOBAL__N_118FormatStringParser9ParseIntsIiEENS_6ResultISt6vectorIT_SaIS5_EEEESt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split._crit_edge.i: ; preds = %_ZN5arrow12_GLOBAL__N_118FormatStringParser9ParseIntsIiEENS_6ResultISt6vectorIT_SaIS5_EEEESt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %38, i64 8
  %.pre.i269 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !1747, !noalias !1753
  %.phi.trans.insert213.i = getelementptr inbounds nuw i8, ptr %38, i64 16
  %.pre214.i = load ptr, ptr %.phi.trans.insert213.i, align 8, !tbaa !1750, !noalias !1753
  %.phi.trans.insert215.i = getelementptr inbounds nuw i8, ptr %38, i64 24
  %.pre216.i = load ptr, ptr %.phi.trans.insert215.i, align 8, !tbaa !1751, !noalias !1753
  %i.ol = ptrtoint ptr %.pre214.i to i64
  %i.om = ptrtoint ptr %.pre216.i to i64
  br label %bb.df

bb.dd:                                            ; preds = %_ZN5arrow12_GLOBAL__N_118FormatStringParser9ParseIntsIiEENS_6ResultISt6vectorIT_SaIS5_EEEESt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split.i
  store ptr null, ptr %61, align 8, !tbaa !78, !alias.scope !1734
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i268 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit147.i

bb.df:                                            ; preds = %_ZN5arrow12_GLOBAL__N_118FormatStringParser9ParseIntsIiEENS_6ResultISt6vectorIT_SaIS5_EEEESt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split._crit_edge.i, %.thread.i.i284
  %i.oo = phi i64 [ %i.om, %_ZN5arrow12_GLOBAL__N_118FormatStringParser9ParseIntsIiEENS_6ResultISt6vectorIT_SaIS5_EEEESt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split._crit_edge.i ], [ 0, %.thread.i.i284 ] ; 2 uses
  %i.op = phi i64 [ %i.ol, %_ZN5arrow12_GLOBAL__N_118FormatStringParser9ParseIntsIiEENS_6ResultISt6vectorIT_SaIS5_EEEESt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split._crit_edge.i ], [ 0, %.thread.i.i284 ]
  %i.oq = phi ptr [ %.pre.i269, %_ZN5arrow12_GLOBAL__N_118FormatStringParser9ParseIntsIiEENS_6ResultISt6vectorIT_SaIS5_EEEESt17basic_string_viewIcSt11char_traitsIcEE.exitthread-pre-split._crit_edge.i ], [ null, %.thread.i.i284 ] ; 16 uses
  %i.or = getelementptr inbounds nuw i8, ptr %38, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.or, i8 0, i64 24, i1 false), !noalias !1753
  %i.os = ptrtoint ptr %i.oq to i64               ; 3 uses
  %i.ot = sub i64 %i.op, %i.os
  %i.ou = ashr exact i64 %i.ot, 2
  switch i64 %i.ou, label %bb.dg [
    i64 2, label %bb.dk
    i64 3, label %.thread.i
  ]

bb.dg:                                            ; preds = %bb.df
  %.val76.i = load i64, ptr %i.gk, align 8, !tbaa !301, !noalias !1734
  %.val77.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !105, !noalias !1734
  call void @llvm.lifetime.start.p0(ptr nonnull %34), !noalias !1758
  store i64 %.val76.i, ptr %34, align 8, !noalias !1761
  %i.ov = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %.val77.i, ptr %i.ov, align 8, !noalias !1761
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31, !noalias !1764
  invoke void @_ZN5arrow8internal12JoinToStringIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 1 dereferenceable(40) @.str.105, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 1 dereferenceable(2) @.str.100)
          to label %.noexc.i275 unwind label %bb.dj, !noalias !1734

.noexc.i275:                                      ; preds = %bb.dg
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %61, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.dh unwind label %bb.di

bb.dh:                                            ; preds = %.noexc.i275
  %i.ow = load ptr, ptr %33, align 8, !tbaa !91, !noalias !1764 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i279: ; preds = %bb.dh
  %i.oz = load i64, ptr %i.ox, align 8, !tbaa !39, !noalias !1764
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.pa) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i280

bb.di:                                            ; preds = %.noexc.i275
  %i.pb = landingpad { ptr, i32 }
          cleanup
  %i.pc = load ptr, ptr %33, align 8, !tbaa !91, !noalias !1764 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.pe = icmp eq ptr %i.pc, %i.pd
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i276: ; preds = %bb.di
  %i.pf = load i64, ptr %i.pd, align 8, !tbaa !39, !noalias !1764
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i277: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31, !noalias !1764
  br label %.body.i271

bb.dj:                                            ; preds = %bb.gh, %bb.dl, %bb.dg
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %.body.i271

bb.dk:                                            ; preds = %bb.df
  %i.pi = load i32, ptr %i.oq, align 4, !tbaa !3, !noalias !1734
  %i.pj = icmp slt i32 %i.pi, 1
  br i1 %i.pj, label %bb.dl, label %bb.do

.thread.i:                                        ; preds = %bb.df
  %i.pk = load i32, ptr %i.oq, align 4, !tbaa !3, !noalias !1734 ; 3 uses
  %i.pl = icmp slt i32 %i.pk, 1
  br i1 %i.pl, label %bb.dl, label %bb.ei

bb.dl:                                            ; preds = %.thread.i, %bb.dk
  %.val74.i = load i64, ptr %i.gk, align 8, !tbaa !301, !noalias !1734
  %.val75.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !105, !noalias !1734
  call void @llvm.lifetime.start.p0(ptr nonnull %32), !noalias !1769
  store i64 %.val74.i, ptr %32, align 8, !noalias !1772
  %i.pm = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.val75.i, ptr %i.pm, align 8, !noalias !1772
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31, !noalias !1775
  invoke void @_ZN5arrow8internal12JoinToStringIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 1 dereferenceable(40) @.str.105, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 1 dereferenceable(2) @.str.100)
          to label %.noexc88.i unwind label %bb.dj, !noalias !1734

.noexc88.i:                                       ; preds = %bb.dl
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %61, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %.noexc88.i
  %i.pn = load ptr, ptr %31, align 8, !tbaa !91, !noalias !1775 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv.exit91.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86.i: ; preds = %bb.dm
  %i.pq = load i64, ptr %i.po, align 8, !tbaa !39, !noalias !1775
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pr) #33
  br label %_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv.exit91.i

bb.dn:                                            ; preds = %.noexc88.i
  %i.ps = landingpad { ptr, i32 }
          cleanup
  %i.pt = load ptr, ptr %31, align 8, !tbaa !91, !noalias !1775 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i84.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i83.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i83.i: ; preds = %bb.dn
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !39, !noalias !1775
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.px) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i84.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i84.i: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i83.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31, !noalias !1775
  br label %.body.thread.i

_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv.exit91.i: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31, !noalias !1775
  call void @llvm.lifetime.end.p0(ptr nonnull %32), !noalias !1769
  br label %.thread181.i

bb.do:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31, !noalias !1734
  %74 = load i32, ptr %i.oq, align 4, !tbaa !3, !noalias !1734
  %i.py = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !3, !noalias !1734
  invoke void @_ZN5arrow14Decimal128Type4MakeEii(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.122") align 8 %39, i32 noundef %74, i32 noundef %i.pz)
          to label %bb.dp unwind label %bb.dr, !noalias !1734

bb.dp:                                            ; preds = %bb.do
  %i.qa = load ptr, ptr %39, align 8, !tbaa !78, !noalias !1734
  %i.qb = icmp eq ptr %i.qa, null                 ; 2 uses
  br i1 %i.qb, label %bb.dt, label %bb.dq, !prof !90

bb.dq:                                            ; preds = %bb.dp
  store ptr null, ptr %61, align 8, !tbaa !78, !alias.scope !1734
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %_ZN5arrow6StatusC2ERKS0_.exit93.i unwind label %bb.ds

bb.dr:                                            ; preds = %bb.do
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.ds:                                            ; preds = %bb.dq
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %39) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31, !noalias !1734
  br label %.body.thread.i

bb.dt:                                            ; preds = %bb.dp
  %i.qe = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.qh = load <2 x ptr>, ptr %i.qe, align 8, !tbaa !244, !noalias !1780
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qe, i8 0, i64 16, i1 false), !noalias !1734
  %i.qi = load ptr, ptr %i.qg, align 8, !tbaa !163, !noalias !1734 ; 8 uses
  store <2 x ptr> %i.qh, ptr %i.qf, align 8, !tbaa !244, !noalias !1734
  %.not.i.i.i.i94.i = icmp eq ptr %i.qi, null
  br i1 %.not.i.i.i.i94.i, label %_ZN5arrow6StatusC2ERKS0_.exit93.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8 ; 4 uses
  %i.qk = load atomic i64, ptr %i.qj acquire, align 8, !noalias !1734 ; 2 uses
  %i.ql = icmp eq i64 %i.qk, 4294967297
  %i.qm = trunc i64 %i.qk to i32                  ; 2 uses
  br i1 %i.ql, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 0, ptr %i.qj, align 8, !tbaa !164, !noalias !1734
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  store i32 0, ptr %i.qn, align 4, !tbaa !166, !noalias !1734
  %i.qo = load ptr, ptr %i.qi, align 8, !tbaa !84, !noalias !1734
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8, !noalias !1734
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(16) %i.qi) #31, !noalias !1734, !inline_history !1785
  %i.qr = load ptr, ptr %i.qi, align 8, !tbaa !84, !noalias !1734
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !noalias !1734
  call void %i.qt(ptr noundef nonnull align 8 dereferenceable(16) %i.qi) #31, !noalias !1734, !inline_history !1785
  br label %_ZN5arrow6StatusC2ERKS0_.exit93.i

bb.dw:                                            ; preds = %bb.du
  %i.qu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !1734
  %.not.i.i.i.i.i.i272 = icmp eq i8 %i.qu, 0
  br i1 %.not.i.i.i.i.i.i272, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qv = add nsw i32 %i.qm, -1
  store i32 %i.qv, ptr %i.qj, align 8, !tbaa !3, !noalias !1734
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i273

bb.dy:                                            ; preds = %bb.dw
  %i.qw = atomicrmw volatile add ptr %i.qj, i32 -1 acq_rel, align 4, !noalias !1734
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i273

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i273: ; preds = %bb.dy, %bb.dx
  %.0.i.i.i.i.i.i.i274 = phi i32 [ %i.qm, %bb.dx ], [ %i.qw, %bb.dy ]
  %i.qx = icmp eq i32 %.0.i.i.i.i.i.i.i274, 1
  br i1 %i.qx, label %bb.dz, label %_ZN5arrow6StatusC2ERKS0_.exit93.i, !prof !168

bb.dz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i273
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qi) #31, !noalias !1734
  br label %_ZN5arrow6StatusC2ERKS0_.exit93.i

_ZN5arrow6StatusC2ERKS0_.exit93.i:                ; preds = %bb.dz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i273, %bb.dv, %bb.dt, %bb.dq
  %i.qy = load ptr, ptr %39, align 8, !tbaa !78, !noalias !1734 ; 2 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.ea, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i.i, !prof !90

bb.ea:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit93.i
  %i.ra = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !163, !noalias !1734 ; 8 uses
  %.not.i.i.i.i.i97.i = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.i.i.i97.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8 ; 4 uses
  %i.rd = load atomic i64, ptr %i.rc acquire, align 8 ; 2 uses
  %i.re = icmp eq i64 %i.rd, 4294967297
  %i.rf = trunc i64 %i.rd to i32                  ; 2 uses
  br i1 %i.re, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  store i32 0, ptr %i.rc, align 8, !tbaa !164
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rb, i64 12
  store i32 0, ptr %i.rg, align 4, !tbaa !166
  %i.rh = load ptr, ptr %i.rb, align 8, !tbaa !84
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8
  call void %i.rj(ptr noundef nonnull align 8 dereferenceable(16) %i.rb) #31, !inline_history !1786
  %i.rk = load ptr, ptr %i.rb, align 8, !tbaa !84
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.rm = load ptr, ptr %i.rl, align 8
  call void %i.rm(ptr noundef nonnull align 8 dereferenceable(16) %i.rb) #31, !inline_history !1786
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.rn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !1734
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.rn, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ro = add nsw i32 %i.rf, -1
  store i32 %i.ro, ptr %i.rc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.rp = atomicrmw volatile add ptr %i.rc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ef, %bb.ee
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.rf, %bb.ee ], [ %i.rp, %bb.ef ]
  %i.rq = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.rq, label %bb.eg, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i.i, !prof !168

bb.eg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rb) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i.i: ; preds = %bb.eg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ec, %bb.ea
  %.pr.i.i = load ptr, ptr %39, align 8, !tbaa !78, !noalias !1734 ; 2 uses
  %.not.i.i98.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i98.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i.i, !prof !104

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit93.i
  %i.rr = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i.i ], [ %i.qy, %_ZN5arrow6StatusC2ERKS0_.exit93.i ]
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 1
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !93, !range !102, !noundef !103
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit.i, label %bb.eh

bb.eh:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %39) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit.i: ; preds = %bb.eh, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31, !noalias !1734
  br i1 %i.qb, label %bb.gi, label %.thread181.i

bb.ei:                                            ; preds = %.thread.i
  %i.rv = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !3, !noalias !1734 ; 2 uses
  %i.rx = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.rw)
  %i.ry = icmp eq i32 %i.rx, 1
  br i1 %i.ry, label %.split.i, label %bb.gh

.split.i:                                         ; preds = %bb.ei
  %i.rz = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.rw, i1 true)
  switch i32 %i.rz, label %bb.gh [
    i32 5, label %bb.ej
    i32 6, label %bb.fd
    i32 7, label %bb.fx
    i32 8, label %bb.gc
  ]

bb.ej:                                            ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31, !noalias !1734
  %75 = load i32, ptr %i.oq, align 4, !tbaa !3, !noalias !1734
  %i.sa = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !3, !noalias !1734
  invoke void @_ZN5arrow13Decimal32Type4MakeEii(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.122") align 8 %40, i32 noundef %75, i32 noundef %i.sb)
          to label %bb.ek unwind label %bb.em, !noalias !1734

bb.ek:                                            ; preds = %bb.ej
  %i.sc = load ptr, ptr %40, align 8, !tbaa !78, !noalias !1734
  %i.sd = icmp eq ptr %i.sc, null                 ; 2 uses
  br i1 %i.sd, label %bb.eo, label %bb.el, !prof !90

bb.el:                                            ; preds = %bb.ek
  store ptr null, ptr %61, align 8, !tbaa !78, !alias.scope !1734
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %_ZN5arrow6StatusC2ERKS0_.exit100.i unwind label %bb.en

bb.em:                                            ; preds = %bb.ej
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.en:                                            ; preds = %bb.el
  %i.sf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31, !noalias !1734
  br label %.body.thread.i

bb.eo:                                            ; preds = %bb.ek
  %i.sg = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.sj = load <2 x ptr>, ptr %i.sg, align 8, !tbaa !244, !noalias !1787
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sg, i8 0, i64 16, i1 false), !noalias !1734
  %i.sk = load ptr, ptr %i.si, align 8, !tbaa !163, !noalias !1734 ; 8 uses
  store <2 x ptr> %i.sj, ptr %i.sh, align 8, !tbaa !244, !noalias !1734
  %.not.i.i.i.i101.i = icmp eq ptr %i.sk, null
  br i1 %.not.i.i.i.i101.i, label %_ZN5arrow6StatusC2ERKS0_.exit100.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 4 uses
  %i.sm = load atomic i64, ptr %i.sl acquire, align 8, !noalias !1734 ; 2 uses
  %i.sn = icmp eq i64 %i.sm, 4294967297
  %i.so = trunc i64 %i.sm to i32                  ; 2 uses
  br i1 %i.sn, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i32 0, ptr %i.sl, align 8, !tbaa !164, !noalias !1734
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sk, i64 12
  store i32 0, ptr %i.sp, align 4, !tbaa !166, !noalias !1734
  %i.sq = load ptr, ptr %i.sk, align 8, !tbaa !84, !noalias !1734
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8, !noalias !1734
  call void %i.ss(ptr noundef nonnull align 8 dereferenceable(16) %i.sk) #31, !noalias !1734, !inline_history !1785
  %i.st = load ptr, ptr %i.sk, align 8, !tbaa !84, !noalias !1734
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sv = load ptr, ptr %i.su, align 8, !noalias !1734
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(16) %i.sk) #31, !noalias !1734, !inline_history !1785
  br label %_ZN5arrow6StatusC2ERKS0_.exit100.i

bb.er:                                            ; preds = %bb.ep
  %i.sw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !1734
  %.not.i.i.i.i.i102.i = icmp eq i8 %i.sw, 0
  br i1 %.not.i.i.i.i.i102.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.sx = add nsw i32 %i.so, -1
  store i32 %i.sx, ptr %i.sl, align 8, !tbaa !3, !noalias !1734
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i103.i

bb.et:                                            ; preds = %bb.er
  %i.sy = atomicrmw volatile add ptr %i.sl, i32 -1 acq_rel, align 4, !noalias !1734
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i103.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i103.i: ; preds = %bb.et, %bb.es
  %.0.i.i.i.i.i.i104.i = phi i32 [ %i.so, %bb.es ], [ %i.sy, %bb.et ]
  %i.sz = icmp eq i32 %.0.i.i.i.i.i.i104.i, 1
  br i1 %i.sz, label %bb.eu, label %_ZN5arrow6StatusC2ERKS0_.exit100.i, !prof !168

bb.eu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i103.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sk) #31, !noalias !1734
  br label %_ZN5arrow6StatusC2ERKS0_.exit100.i

_ZN5arrow6StatusC2ERKS0_.exit100.i:               ; preds = %bb.eu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i103.i, %bb.eq, %bb.eo, %bb.el
  %i.ta = load ptr, ptr %40, align 8, !tbaa !78, !noalias !1734 ; 2 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %bb.ev, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i111.i, !prof !90

bb.ev:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit100.i
  %i.tc = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !163, !noalias !1734 ; 8 uses
  %.not.i.i.i.i.i112.i = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i.i.i112.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i116.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 4 uses
  %i.tf = load atomic i64, ptr %i.te acquire, align 8 ; 2 uses
  %i.tg = icmp eq i64 %i.tf, 4294967297
  %i.th = trunc i64 %i.tf to i32                  ; 2 uses
  br i1 %i.tg, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 0, ptr %i.te, align 8, !tbaa !164
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 12
  store i32 0, ptr %i.ti, align 4, !tbaa !166
  %i.tj = load ptr, ptr %i.td, align 8, !tbaa !84
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8
  call void %i.tl(ptr noundef nonnull align 8 dereferenceable(16) %i.td) #31, !inline_history !1786
  %i.tm = load ptr, ptr %i.td, align 8, !tbaa !84
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 24
  %i.to = load ptr, ptr %i.tn, align 8
  call void %i.to(ptr noundef nonnull align 8 dereferenceable(16) %i.td) #31, !inline_history !1786
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i116.i

bb.ey:                                            ; preds = %bb.ew
  %i.tp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !1734
  %.not.i.i.i.i.i.i113.i = icmp eq i8 %i.tp, 0
  br i1 %.not.i.i.i.i.i.i113.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.tq = add nsw i32 %i.th, -1
  store i32 %i.tq, ptr %i.te, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i114.i

bb.fa:                                            ; preds = %bb.ey
  %i.tr = atomicrmw volatile add ptr %i.te, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i114.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i114.i: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i.i.i.i115.i = phi i32 [ %i.th, %bb.ez ], [ %i.tr, %bb.fa ]
  %i.ts = icmp eq i32 %.0.i.i.i.i.i.i.i115.i, 1
  br i1 %i.ts, label %bb.fb, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i116.i, !prof !168

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i114.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.td) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i116.i

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i116.i: ; preds = %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i114.i, %bb.ex, %bb.ev
  %.pr.i117.i = load ptr, ptr %40, align 8, !tbaa !78, !noalias !1734 ; 2 uses
  %.not.i.i118.i = icmp eq ptr %.pr.i117.i, null
  br i1 %.not.i.i118.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit119.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i111.i, !prof !104

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i111.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i116.i, %_ZN5arrow6StatusC2ERKS0_.exit100.i
  %i.tt = phi ptr [ %.pr.i117.i, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i116.i ], [ %i.ta, %_ZN5arrow6StatusC2ERKS0_.exit100.i ]
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 1
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !93, !range !102, !noundef !103
  %i.tw = trunc nuw i8 %i.tv to i1
  br i1 %i.tw, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit119.i, label %bb.fc

bb.fc:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i111.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %40) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit119.i

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit119.i: ; preds = %bb.fc, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i111.i, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31, !noalias !1734
  br i1 %i.sd, label %bb.gi, label %.thread181.i

bb.fd:                                            ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31, !noalias !1734
  %76 = load i32, ptr %i.oq, align 4, !tbaa !3, !noalias !1734
  %i.tx = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !3, !noalias !1734
  invoke void @_ZN5arrow13Decimal64Type4MakeEii(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.122") align 8 %41, i32 noundef %76, i32 noundef %i.ty)
          to label %bb.fe unwind label %bb.fg, !noalias !1734

bb.fe:                                            ; preds = %bb.fd
  %i.tz = load ptr, ptr %41, align 8, !tbaa !78, !noalias !1734
  %i.ua = icmp eq ptr %i.tz, null                 ; 2 uses
  br i1 %i.ua, label %bb.fi, label %bb.ff, !prof !90

bb.ff:                                            ; preds = %bb.fe
  store ptr null, ptr %61, align 8, !tbaa !78, !alias.scope !1734
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %_ZN5arrow6StatusC2ERKS0_.exit121.i unwind label %bb.fh

bb.fg:                                            ; preds = %bb.fd
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.fh:                                            ; preds = %bb.ff
  %i.uc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31, !noalias !1734
  br label %.body.thread.i

bb.fi:                                            ; preds = %bb.fe
  %i.ud = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ug = load <2 x ptr>, ptr %i.ud, align 8, !tbaa !244, !noalias !1792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ud, i8 0, i64 16, i1 false), !noalias !1734
  %i.uh = load ptr, ptr %i.uf, align 8, !tbaa !163, !noalias !1734 ; 8 uses
  store <2 x ptr> %i.ug, ptr %i.ue, align 8, !tbaa !244, !noalias !1734
  %.not.i.i.i.i122.i = icmp eq ptr %i.uh, null
  br i1 %.not.i.i.i.i122.i, label %_ZN5arrow6StatusC2ERKS0_.exit121.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 8 ; 4 uses
  %i.uj = load atomic i64, ptr %i.ui acquire, align 8, !noalias !1734 ; 2 uses
  %i.uk = icmp eq i64 %i.uj, 4294967297
  %i.ul = trunc i64 %i.uj to i32                  ; 2 uses
  br i1 %i.uk, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  store i32 0, ptr %i.ui, align 8, !tbaa !164, !noalias !1734
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 12
  store i32 0, ptr %i.um, align 4, !tbaa !166, !noalias !1734
  %i.un = load ptr, ptr %i.uh, align 8, !tbaa !84, !noalias !1734
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.up = load ptr, ptr %i.uo, align 8, !noalias !1734
  call void %i.up(ptr noundef nonnull align 8 dereferenceable(16) %i.uh) #31, !noalias !1734, !inline_history !1785
  %i.uq = load ptr, ptr %i.uh, align 8, !tbaa !84, !noalias !1734
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 24
  %i.us = load ptr, ptr %i.ur, align 8, !noalias !1734
  call void %i.us(ptr noundef nonnull align 8 dereferenceable(16) %i.uh) #31, !noalias !1734, !inline_history !1785
  br label %_ZN5arrow6StatusC2ERKS0_.exit121.i

bb.fl:                                            ; preds = %bb.fj
  %i.ut = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !1734
  %.not.i.i.i.i.i123.i = icmp eq i8 %i.ut, 0
  br i1 %.not.i.i.i.i.i123.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.uu = add nsw i32 %i.ul, -1
  store i32 %i.uu, ptr %i.ui, align 8, !tbaa !3, !noalias !1734
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124.i

bb.fn:                                            ; preds = %bb.fl
  %i.uv = atomicrmw volatile add ptr %i.ui, i32 -1 acq_rel, align 4, !noalias !1734
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124.i: ; preds = %bb.fn, %bb.fm
  %.0.i.i.i.i.i.i125.i = phi i32 [ %i.ul, %bb.fm ], [ %i.uv, %bb.fn ]
  %i.uw = icmp eq i32 %.0.i.i.i.i.i.i125.i, 1
  br i1 %i.uw, label %bb.fo, label %_ZN5arrow6StatusC2ERKS0_.exit121.i, !prof !168

bb.fo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.uh) #31, !noalias !1734
  br label %_ZN5arrow6StatusC2ERKS0_.exit121.i

_ZN5arrow6StatusC2ERKS0_.exit121.i:               ; preds = %bb.fo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i124.i, %bb.fk, %bb.fi, %bb.ff
  %i.ux = load ptr, ptr %41, align 8, !tbaa !78, !noalias !1734 ; 2 uses
  %i.uy = icmp eq ptr %i.ux, null
  br i1 %i.uy, label %bb.fp, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i132.i, !prof !90

bb.fp:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit121.i
  %i.uz = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !163, !noalias !1734 ; 8 uses
  %.not.i.i.i.i.i133.i = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i.i.i133.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i137.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 4 uses
  %i.vc = load atomic i64, ptr %i.vb acquire, align 8 ; 2 uses
  %i.vd = icmp eq i64 %i.vc, 4294967297
  %i.ve = trunc i64 %i.vc to i32                  ; 2 uses
  br i1 %i.vd, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  store i32 0, ptr %i.vb, align 8, !tbaa !164
  %i.vf = getelementptr inbounds nuw i8, ptr %i.va, i64 12
  store i32 0, ptr %i.vf, align 4, !tbaa !166
  %i.vg = load ptr, ptr %i.va, align 8, !tbaa !84
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #31, !inline_history !1786
  %i.vj = load ptr, ptr %i.va, align 8, !tbaa !84
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 24
  %i.vl = load ptr, ptr %i.vk, align 8
  call void %i.vl(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #31, !inline_history !1786
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i137.i

bb.fs:                                            ; preds = %bb.fq
  %i.vm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !1734
  %.not.i.i.i.i.i.i134.i = icmp eq i8 %i.vm, 0
  br i1 %.not.i.i.i.i.i.i134.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.vn = add nsw i32 %i.ve, -1
  store i32 %i.vn, ptr %i.vb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135.i

bb.fu:                                            ; preds = %bb.fs
  %i.vo = atomicrmw volatile add ptr %i.vb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135.i: ; preds = %bb.fu, %bb.ft
  %.0.i.i.i.i.i.i.i136.i = phi i32 [ %i.ve, %bb.ft ], [ %i.vo, %bb.fu ]
  %i.vp = icmp eq i32 %.0.i.i.i.i.i.i.i136.i, 1
  br i1 %i.vp, label %bb.fv, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i137.i, !prof !168

bb.fv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.va) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i137.i

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i137.i: ; preds = %bb.fv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i135.i, %bb.fr, %bb.fp
  %.pr.i138.i = load ptr, ptr %41, align 8, !tbaa !78, !noalias !1734 ; 2 uses
  %.not.i.i139.i = icmp eq ptr %.pr.i138.i, null
  br i1 %.not.i.i139.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit140.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i132.i, !prof !104

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i132.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i137.i, %_ZN5arrow6StatusC2ERKS0_.exit121.i
  %i.vq = phi ptr [ %.pr.i138.i, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i137.i ], [ %i.ux, %_ZN5arrow6StatusC2ERKS0_.exit121.i ]
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !93, !range !102, !noundef !103
  %i.vt = trunc nuw i8 %i.vs to i1
  br i1 %i.vt, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit140.i, label %bb.fw

bb.fw:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i132.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %41) #31
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit140.i

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit140.i: ; preds = %bb.fw, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i132.i, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i137.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31, !noalias !1734
  br i1 %i.ua, label %bb.gi, label %.thread181.i

bb.fx:                                            ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31, !noalias !1734
  %i.vu = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !3, !noalias !1734
  invoke void @_ZN5arrow14Decimal128Type4MakeEii(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.122") align 8 %42, i32 noundef %i.pk, i32 noundef %i.vv)
          to label %bb.fy unwind label %bb.ga, !noalias !1734

bb.fy:                                            ; preds = %bb.fx
  %i.vw = load ptr, ptr %42, align 8, !tbaa !78, !noalias !1734
  %i.vx = icmp eq ptr %i.vw, null
  br i1 %i.vx, label %_ZN5arrow6StatusC2ERKS0_.exit142.thread.i, label %bb.fz, !prof !90

bb.fz:                                            ; preds = %bb.fy
  store ptr null, ptr %61, align 8, !tbaa !78, !alias.scope !1734
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %_ZN5arrow6StatusC2ERKS0_.exit142.i unwind label %bb.gb

bb.ga:                                            ; preds = %bb.fx
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.gb:                                            ; preds = %bb.fz
  %i.vz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31, !noalias !1734
  br label %.body.thread.i

_ZN5arrow6StatusC2ERKS0_.exit142.thread.i:        ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31, !noalias !1734
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  %i.wa = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.wc = load <2 x ptr>, ptr %i.wa, align 8, !tbaa !244, !noalias !1803
  store ptr null, ptr %i.wb, align 8, !tbaa !163, !noalias !1803
  store <2 x ptr> %i.wc, ptr %43, align 16, !tbaa !244, !alias.scope !1804, !noalias !1734
  store ptr null, ptr %i.wa, align 8, !tbaa !158, !noalias !1803
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.we = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.wd, ptr noundef nonnull align 8 dereferenceable(16) %43) #31, !noalias !1734 ; 0 uses
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %43) #31, !noalias !1734
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31, !noalias !1734
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %42) #31, !noalias !1734
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31, !noalias !1734
  br label %bb.gi
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_114SchemaImporter16ProcessPrimitiveERKSt10shared_ptrINS_8DataTypeEE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !163  ; 4 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !163  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not7.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.x, align 4, !tbaa !3
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !163
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ac = phi ptr [ %i.w, %bb.f ], [ %i.w, %bb.h ], [ %.pr.pre.i.i.i, %bb.i ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ad, align 8, !tbaa !164
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !166
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #31, !inline_history !2011
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #31, !inline_history !2011
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i9.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i9.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.ag, %bb.m ], [ %i.aq, %bb.n ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.o, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !168

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.v, ptr %i.t, align 8, !tbaa !163
  %.val7.pre = load ptr, ptr %2, align 8
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %.val7 = phi ptr [ %i.s, %bb.e ], [ %.val7.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ]
  %.val = load ptr, ptr %1, align 8, !tbaa !484
  call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2012
  store i64 0, ptr %i.a, align 8, !tbaa !301, !noalias !2018
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !132, !noalias !2018
  %.not.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !2019
  call void @_ZN5arrow8internal12JoinToStringIJRA10_KcRlRA29_S2_RNS_8DataTypeERA25_S2_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(10) @.str.86, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(29) @.str.87, ptr noundef nonnull align 8 dereferenceable(72) %.val7, ptr noundef nonnull align 1 dereferenceable(25) @.str.88, ptr noundef nonnull align 8 dereferenceable(8) %i.as), !noalias !2019
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %3, align 8, !tbaa !91, !noalias !2019 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5arrow6Status7InvalidIJRA10_KcRlRA29_S2_RNS_8DataTypeERA25_S2_S5_EEES0_DpOT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !39, !noalias !2019
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #33
  br label %_ZN5arrow6Status7InvalidIJRA10_KcRlRA29_S2_RNS_8DataTypeERA25_S2_S5_EEES0_DpOT_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %3, align 8, !tbaa !91, !noalias !2019 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i: ; preds = %bb.r
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !39, !noalias !2019
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !2019
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA10_KcRlRA29_S2_RNS_8DataTypeERA25_S2_S5_EEES0_DpOT_.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !2019
  br label %_ZN5arrow12_GLOBAL__N_114SchemaImporter15CheckNoChildrenERKSt10shared_ptrINS_8DataTypeEE.exit

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  store ptr null, ptr %0, align 8, !tbaa !78, !alias.scope !2024
  br label %_ZN5arrow12_GLOBAL__N_114SchemaImporter15CheckNoChildrenERKSt10shared_ptrINS_8DataTypeEE.exit

_ZN5arrow12_GLOBAL__N_114SchemaImporter15CheckNoChildrenERKSt10shared_ptrINS_8DataTypeEE.exit: ; preds = %_ZN5arrow6Status7InvalidIJRA10_KcRlRA29_S2_RNS_8DataTypeERA25_S2_S5_EEES0_DpOT_.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2012
  br label %bb.t

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12_GLOBAL__N_114SchemaImporter15CheckNoChildrenERKSt10shared_ptrINS_8DataTypeEE.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5uint8Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint16Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint32Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float16Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float32Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float64Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow10large_utf8Ev() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6binaryEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow12large_binaryEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_114SchemaImporter13ProcessNestedEv(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.arrow::Result.134", align 8 ; 14 uses
  %13 = alloca %"class.std::shared_ptr.267", align 16 ; 6 uses
  %14 = alloca %"class.arrow::Result.134", align 8 ; 14 uses
  %15 = alloca %"class.std::shared_ptr.267", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %18 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %19 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"struct.arrow::internal::StringConverter.421", align 1 ; 3 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %26 = alloca %"class.arrow::internal::StaticVectorImpl.344", align 8 ; 10 uses
  %27 = alloca %"class.arrow::Result.416", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %32 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %33 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %34 = alloca %"class.arrow::Result.411", align 8 ; 21 uses
  %35 = alloca %"class.arrow::Result.394", align 8 ; 11 uses
  %36 = alloca %"class.std::vector.22", align 8   ; 11 uses
  %37 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %38 = alloca %"class.std::vector.22", align 8   ; 9 uses
  %39 = alloca %"class.std::vector.237", align 8  ; 8 uses
  %40 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %41 = alloca %"class.std::vector.22", align 8   ; 9 uses
  %42 = alloca %"class.std::vector.237", align 8  ; 8 uses
  %43 = alloca %"class.std::allocator.362", align 1 ; 3 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %50 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %51 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %52 = alloca %"class.arrow::Result.134", align 8 ; 14 uses
  %53 = alloca %"class.std::shared_ptr.267", align 8 ; 6 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %56 = alloca %"class.std::shared_ptr.398", align 16 ; 7 uses
  %57 = alloca %"class.std::shared_ptr.267", align 8 ; 7 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %59 = alloca %"class.std::shared_ptr.267", align 8 ; 7 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %62 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %63 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %64 = alloca %"class.arrow::Result.394", align 8 ; 10 uses
  %65 = alloca %"class.std::vector.22", align 16  ; 10 uses
  %66 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %67 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %70 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %71 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %72 = alloca %"class.arrow::Result.280", align 8 ; 11 uses
  %73 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %74 = alloca %"class.arrow::Result.134", align 8 ; 14 uses
  %75 = alloca %"class.std::shared_ptr.267", align 8 ; 6 uses
  %76 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %77 = alloca %"class.std::shared_ptr.267", align 8 ; 6 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %79 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %80 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %83 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %84 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %85 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %86 = alloca %"class.arrow::Result.134", align 8 ; 14 uses
  %87 = alloca %"class.std::shared_ptr.267", align 16 ; 7 uses
  %88 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %91 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %92 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %93 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %94 = alloca %"class.arrow::Result.134", align 8 ; 14 uses
  %95 = alloca %"class.std::shared_ptr.267", align 16 ; 7 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %97 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %98 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %99 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #31
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 17 uses
  %.val.i = load i64, ptr %i.h, align 8, !tbaa !1689, !noalias !2027 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %.val1.i = load i64, ptr %i.i, align 8, !tbaa !1684, !noalias !2027 ; 2 uses
  %.not.i = icmp ult i64 %.val1.i, %.val.i
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit17.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i = load ptr, ptr %i.j, align 8, !tbaa !105, !noalias !2027
  call void @llvm.lifetime.start.p0(ptr nonnull %97), !noalias !2030
  store i64 %.val.i, ptr %97, align 8, !noalias !2033
  %i.k = getelementptr inbounds nuw i8, ptr %97, i64 8
  store ptr %.val3.i, ptr %i.k, align 8, !noalias !2033
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #31, !noalias !2036
  call void @_ZN5arrow8internal12JoinToStringIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %96, ptr noundef nonnull align 1 dereferenceable(40) @.str.105, ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef nonnull align 1 dereferenceable(2) @.str.100), !noalias !2036
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %98, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %96)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %96, align 8, !tbaa !91, !noalias !2036 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !2036
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZN5arrow6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %96, align 8, !tbaa !91, !noalias !2036 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8, !tbaa !39, !noalias !2036
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i256, %bb.sc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i244, %_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEED2Ev.exit42.i.i, %bb.lf, %_ZNSt6vectorIaSaIaEED2Ev.exit121.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i158, %bb.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i147, %bb.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i26, %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i, %_ZN5arrow6ResultIiED2Ev.exit77.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i ], [ %i.bcb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i ], [ %.pn17.i, %bb.ay ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i85 ], [ %.pn34.i, %_ZN5arrow6ResultIiED2Ev.exit77.i ], [ %.pn17.i35, %bb.cs ], [ %.pn13.i, %bb.gr ], [ %.pn38.i, %bb.jq ], [ %.pn.pn.pn.i.i, %_ZN5arrow8internal16StaticVectorImplISt17basic_string_viewIcSt11char_traitsIcEELm2ENS0_18SmallVectorStorageIS5_Lm2EEEED2Ev.exit42.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i74 ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i26 ], [ %i.rb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i147 ], [ %i.uh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i191 ], [ %i.uv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i158 ], [ %i.adv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i202 ], [ %i.aen, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i244 ], [ %.pn41.i, %_ZNSt6vectorIaSaIaEED2Ev.exit121.i ], [ %.pn.pn.pn.i.i, %bb.lf ], [ %i.asb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i.i305 ], [ %i.asp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i.i.i256 ], [ %.pn32.i263, %bb.sc ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #31, !noalias !2036
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit17.thread:               ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #31
  br label %bb.e

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #31, !noalias !2036
  call void @llvm.lifetime.end.p0(ptr nonnull %97), !noalias !2030
  %.pr = load ptr, ptr %98, align 8, !tbaa !78    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #31
  %i.w = icmp eq ptr %.pr, null
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit._crit_edge, label %_ZN5arrow12_GLOBAL__N_114SchemaImporter15ProcessListLikeINS_8ListTypeEEENS_6StatusEv.exit

_ZN5arrow6StatusD2Ev.exit._crit_edge:             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.pre = load i64, ptr %i.i, align 8, !tbaa !1684
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge, %_ZN5arrow6StatusD2Ev.exit17.thread
  %i.x = phi i64 [ %.pre, %_ZN5arrow6StatusD2Ev.exit._crit_edge ], [ %.val1.i, %_ZN5arrow6StatusD2Ev.exit17.thread ] ; 2 uses
  %i.y = add i64 %i.x, 1                          ; 10 uses
  store i64 %i.y, ptr %i.i, align 8, !tbaa !1684
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1685 ; 11 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39
  switch i8 %i.ac, label %bb.sd [
    i8 108, label %bb.f
    i8 76, label %bb.az
    i8 118, label %bb.ct
    i8 119, label %bb.da
    i8 115, label %bb.fo
    i8 109, label %bb.gs
    i8 117, label %bb.jr
    i8 114, label %bb.ok
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #31, !noalias !2041
  %.val.i.i = load i64, ptr %i.h, align 8, !tbaa !1689, !noalias !2044 ; 2 uses
  %.not.i.i = icmp ult i64 %i.y, %.val.i.i
  br i1 %.not.i.i, label %bb.g, label %_ZN5arrow6StatusD2Ev.exit26.thread.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %91), !noalias !2047
  store i64 %.val.i.i, ptr %91, align 8, !noalias !2050
  %i.ad = getelementptr inbounds nuw i8, ptr %91, i64 8
  store ptr %i.aa, ptr %i.ad, align 8, !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #31, !noalias !2053
  call void @_ZN5arrow8internal12JoinToStringIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %90, ptr noundef nonnull align 1 dereferenceable(40) @.str.105, ptr noundef nonnull align 8 dereferenceable(16) %91, ptr noundef nonnull align 1 dereferenceable(2) @.str.100), !noalias !2053
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %92, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %90)
          to label %bb.h unwind label %bb.i, !noalias !2041

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %90, align 8, !tbaa !91, !noalias !2053 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_114SchemaImporter13ProcessNestedEv:bb.a
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i264 unwind label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.ath = landingpad { ptr, i32 }
          cleanup
  br label %bb.sc

bb.oz:                                            ; preds = %_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl.exit.i262
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31, !noalias !2360
  call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  %i.ati = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.atk = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.atl = load <2 x ptr>, ptr %i.ati, align 8, !tbaa !244, !noalias !2398
  %i.atm = load ptr, ptr %i.ati, align 8, !tbaa !498, !noalias !2398 ; 2 uses
  store ptr null, ptr %i.atk, align 8, !tbaa !163, !noalias !2398
  store <2 x ptr> %i.atl, ptr %13, align 16, !tbaa !244, !alias.scope !2399, !noalias !2360
  store ptr null, ptr %i.ati, align 8, !tbaa !498, !noalias !2398
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31, !noalias !2360
  %.val36.i = load ptr, ptr %i.asw, align 8, !tbaa !490, !noalias !2360
  %i.atn = getelementptr inbounds nuw i8, ptr %.val36.i, i64 176 ; 2 uses
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !484, !noalias !2400
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 8
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !127, !noalias !2400
  %i.atr = icmp eq ptr %i.atq, null
  br i1 %i.atr, label %bb.pa, label %bb.pd

bb.pa:                                            ; preds = %bb.oz
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !2403
  invoke void @_ZN5arrow6Status8FromArgsIJRA47_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(47) @.str.95)
          to label %.noexc.i298 unwind label %bb.pf

.noexc.i298:                                      ; preds = %bb.pa
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %5) #31
  %i.ats = load ptr, ptr %5, align 8, !tbaa !78, !noalias !2403 ; 2 uses
  %.not.i.i50.i = icmp eq ptr %i.ats, null
  br i1 %.not.i.i50.i, label %_ZN5arrow6StatusD2Ev.exit.i51.i, label %bb.pb, !prof !90

bb.pb:                                            ; preds = %.noexc.i298
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 1
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !93, !range !102, !noundef !103
  %i.atv = trunc nuw i8 %i.atu to i1
  br i1 %i.atv, label %_ZN5arrow6StatusD2Ev.exit.i51.i, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #31
  br label %_ZN5arrow6StatusD2Ev.exit.i51.i

_ZN5arrow6StatusD2Ev.exit.i51.i:                  ; preds = %bb.pc, %bb.pb, %.noexc.i298
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !2403
  br label %_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl.exit53.i

bb.pd:                                            ; preds = %bb.oz
  invoke fastcc void @_ZNK5arrow12_GLOBAL__N_114SchemaImporter9MakeFieldEv(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef nonnull readonly align 8 dereferenceable(176) %i.atn)
          to label %_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl.exit53.i unwind label %bb.pf

_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl.exit53.i: ; preds = %bb.pd, %_ZN5arrow6StatusD2Ev.exit.i51.i
  %i.atw = load ptr, ptr %14, align 8, !tbaa !78, !noalias !2360
  %i.atx = icmp eq ptr %i.atw, null
  br i1 %i.atx, label %bb.ph, label %bb.pe, !prof !90

bb.pe:                                            ; preds = %_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl.exit53.i
  store ptr null, ptr %0, align 8, !tbaa !78, !alias.scope !2360
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZN5arrow6StatusC2ERKS0_.exit55.i unwind label %bb.pg

bb.pf:                                            ; preds = %bb.pd, %bb.pa
  %i.aty = landingpad { ptr, i32 }
          cleanup
  br label %bb.rt

bb.pg:                                            ; preds = %bb.pe
  %i.atz = landingpad { ptr, i32 }
          cleanup
  br label %bb.rs

bb.ph:                                            ; preds = %_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl.exit53.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31, !noalias !2360
  call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  %i.aua = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !498, !noalias !2410 ; 4 uses
  store ptr %i.aub, ptr %15, align 8, !tbaa !498, !alias.scope !2411, !noalias !2360
  %i.auc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !163, !noalias !2410 ; 3 uses
  store ptr null, ptr %i.aud, align 8, !tbaa !163, !noalias !2410
  store ptr %i.aue, ptr %i.auc, align 8, !tbaa !163, !alias.scope !2411, !noalias !2360
  store ptr null, ptr %i.aua, align 8, !tbaa !498, !noalias !2410
  %i.auf = getelementptr inbounds nuw i8, ptr %i.atm, i64 56
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !158 ; 4 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 40
  %i.aui = load i32, ptr %i.auh, align 8, !tbaa !215
  switch i32 %i.aui, label %_ZN5arrow15is_run_end_typeENS_4Type4typeE.exit.i [
    i32 5, label %bb.po
    i32 7, label %bb.po
    i32 9, label %bb.po
  ]

_ZN5arrow15is_run_end_typeENS_4Type4typeE.exit.i: ; preds = %bb.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31, !noalias !2360
  %i.auj = load ptr, ptr %i.aug, align 8, !tbaa !84
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 32
  %i.aul = load ptr, ptr %i.auk, align 8
  invoke void %i.aul(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(72) %i.aug, i1 noundef zeroext false)
          to label %bb.pi unwind label %bb.pm

bb.pi:                                            ; preds = %_ZN5arrow15is_run_end_typeENS_4Type4typeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !2412
  invoke void @_ZN5arrow8internal12JoinToStringIJRA55_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(55) @.str.103, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.noexc56.i unwind label %bb.pn

.noexc56.i:                                       ; preds = %bb.pi
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.pj unwind label %bb.pk

bb.pj:                                            ; preds = %.noexc56.i
  %i.aum = load ptr, ptr %4, align 8, !tbaa !91, !noalias !2412 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.auo = icmp eq ptr %i.aum, %i.aun
  br i1 %i.auo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i293: ; preds = %bb.pj
  %i.aup = load i64, ptr %i.aun, align 8, !tbaa !39, !noalias !2412
  %i.auq = add i64 %i.aup, 1
  call void @_ZdlPvm(ptr noundef %i.aum, i64 noundef %i.auq) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i297

bb.pk:                                            ; preds = %.noexc56.i
  %i.aur = landingpad { ptr, i32 }
          cleanup
  %i.aus = load ptr, ptr %4, align 8, !tbaa !91, !noalias !2412 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.auu = icmp eq ptr %i.aus, %i.aut
  br i1 %i.auu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i290: ; preds = %bb.pk
  %i.auv = load i64, ptr %i.aut, align 8, !tbaa !39, !noalias !2412
  %i.auw = add i64 %i.auv, 1
  call void @_ZdlPvm(ptr noundef %i.aus, i64 noundef %i.auw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i291: ; preds = %bb.pk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !2412
  br label %.body.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i297: ; preds = %bb.pj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i293
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !2412
  %i.aux = load ptr, ptr %16, align 8, !tbaa !91, !noalias !2360 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.auz = icmp eq ptr %i.aux, %i.auy
  br i1 %i.auz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i297
  %i.ava = load i64, ptr %i.auy, align 8, !tbaa !39, !noalias !2360
  %i.avb = add i64 %i.ava, 1
  call void @_ZdlPvm(ptr noundef %i.aux, i64 noundef %i.avb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i295: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !2360
  br label %_ZN5arrow6Status7InvalidIJRA58_KcEEES0_DpOT_.exit.i

bb.pl:                                            ; preds = %bb.pp
  %i.avc = landingpad { ptr, i32 }
          cleanup
  br label %bb.rd

bb.pm:                                            ; preds = %_ZN5arrow15is_run_end_typeENS_4Type4typeE.exit.i
  %i.avd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

bb.pn:                                            ; preds = %bb.pi
  %i.ave = landingpad { ptr, i32 }
          cleanup
  br label %.body.i288

.body.i288:                                       ; preds = %bb.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i291
  %eh.lpad-body.i289 = phi { ptr, i32 } [ %i.ave, %bb.pn ], [ %i.aur, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i291 ] ; 2 uses
  %i.avf = load ptr, ptr %16, align 8, !tbaa !91, !noalias !2360 ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.avh = icmp eq ptr %i.avf, %i.avg
  br i1 %i.avh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %.body.i288
  %i.avi = load i64, ptr %i.avg, align 8, !tbaa !39, !noalias !2360
  %i.avj = add i64 %i.avi, 1
  call void @_ZdlPvm(ptr noundef %i.avf, i64 noundef %i.avj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i: ; preds = %.body.i288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i, %bb.pm
  %.pn.i287 = phi { ptr, i32 } [ %i.avd, %bb.pm ], [ %eh.lpad-body.i289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i ], [ %eh.lpad-body.i289, %.body.i288 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31, !noalias !2360
  br label %bb.rd

bb.po:                                            ; preds = %bb.ph, %bb.ph, %bb.ph
  %i.avk = getelementptr inbounds nuw i8, ptr %i.aub, i64 56
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !158
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 40
  %i.avn = load i32, ptr %i.avm, align 8, !tbaa !215
  %i.avo = icmp eq i32 %i.avn, 38
  br i1 %i.avo, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  invoke void @_ZN5arrow6Status8FromArgsIJRA58_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(58) @.str.104)
          to label %_ZN5arrow6Status7InvalidIJRA58_KcEEES0_DpOT_.exit.i unwind label %bb.pl

bb.pq:                                            ; preds = %bb.po
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31, !noalias !2360
  store ptr %i.aug, ptr %18, align 8, !tbaa !158, !noalias !2360
  %i.avp = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %i.atm, i64 64
  %i.avr = load ptr, ptr %i.avq, align 8, !tbaa !163 ; 3 uses
  store ptr %i.avr, ptr %i.avp, align 8, !tbaa !163, !noalias !2360
  %.not.i.i.i.i272 = icmp eq ptr %i.avr, null
  br i1 %.not.i.i.i.i272, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 8 ; 3 uses
  %i.avt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !2360
  %.not.i.i.i.i.i273 = icmp eq i8 %i.avt, 0
  br i1 %.not.i.i.i.i.i273, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.avu = load i32, ptr %i.avs, align 4, !tbaa !3
  %i.avv = add nsw i32 %i.avu, 1
  store i32 %i.avv, ptr %i.avs, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.pt:                                            ; preds = %bb.pr
  %i.avw = atomicrmw volatile add ptr %i.avs, i32 1 acq_rel, align 4 ; 0 uses
  %.pre103.i.a = load ptr, ptr %15, align 8, !tbaa !498, !noalias !2360
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.pt, %bb.ps, %bb.pq
  %i.avx = phi ptr [ %i.aub, %bb.pq ], [ %i.aub, %bb.ps ], [ %.pre103.i.a, %bb.pt ] ; 2 uses
  %100 = getelementptr inbounds nuw i8, ptr %i.avx, i64 56
  %101 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 64
  %102 = load ptr, ptr %i.avy, align 8, !tbaa !163 ; 2 uses
  %103 = load <2 x ptr>, ptr %100, align 8, !tbaa !244
  store <2 x ptr> %103, ptr %19, align 16, !tbaa !244, !noalias !2360
  %.not.i.i.i61.i = icmp eq ptr %102, null
  br i1 %.not.i.i.i61.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit63.i, label %bb.pu

bb.pu:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.avz = getelementptr inbounds nuw i8, ptr %102, i64 8 ; 3 uses
  %i.awa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !2360
  %.not.i.i.i.i62.i = icmp eq i8 %i.awa, 0
  br i1 %.not.i.i.i.i62.i, label %bb.pw, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.awb = load i32, ptr %i.avz, align 4, !tbaa !3
  %i.awc = add nsw i32 %i.awb, 1
  store i32 %i.awc, ptr %i.avz, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit63.i

bb.pw:                                            ; preds = %bb.pu
  %i.awd = atomicrmw volatile add ptr %i.avz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit63.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit63.i: ; preds = %bb.pw, %bb.pv, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  invoke void @_ZN5arrow15run_end_encodedESt10shared_ptrINS_8DataTypeEES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %17, ptr noundef nonnull %18, ptr noundef nonnull %19)
          to label %bb.px unwind label %bb.qw

bb.px:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit63.i
  %i.awe = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.awf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.awg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.awh = load <2 x ptr>, ptr %17, align 16, !tbaa !244, !noalias !2360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %17, i8 0, i64 16, i1 false), !noalias !2360
  %i.awi = load ptr, ptr %i.awg, align 8, !tbaa !163, !noalias !2360 ; 8 uses
  store <2 x ptr> %i.awh, ptr %i.awe, align 8, !tbaa !244, !noalias !2360
  %.not.i.i.i.i64.i = icmp eq ptr %i.awi, null
  br i1 %.not.i.i.i.i64.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit.i277, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 8 ; 4 uses
  %i.awk = load atomic i64, ptr %i.awj acquire, align 8 ; 2 uses
  %i.awl = icmp eq i64 %i.awk, 4294967297
  %i.awm = trunc i64 %i.awk to i32                ; 2 uses
  br i1 %i.awl, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %bb.py
  store i32 0, ptr %i.awj, align 8, !tbaa !164
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awi, i64 12
  store i32 0, ptr %i.awn, align 4, !tbaa !166
  %i.awo = load ptr, ptr %i.awi, align 8, !tbaa !84
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 16
  %i.awq = load ptr, ptr %i.awp, align 8
  call void %i.awq(ptr noundef nonnull align 8 dereferenceable(16) %i.awi) #31, !inline_history !2417
  %i.awr = load ptr, ptr %i.awi, align 8, !tbaa !84
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 24
  %i.awt = load ptr, ptr %i.aws, align 8
  call void %i.awt(ptr noundef nonnull align 8 dereferenceable(16) %i.awi) #31, !inline_history !2417
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit.i277

bb.qa:                                            ; preds = %bb.py
  %i.awu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !2360
  %.not.i.i.i.i.i.i274 = icmp eq i8 %i.awu, 0
  br i1 %.not.i.i.i.i.i.i274, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.awv = add nsw i32 %i.awm, -1
  store i32 %i.awv, ptr %i.awj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i275

bb.qc:                                            ; preds = %bb.qa
  %i.aww = atomicrmw volatile add ptr %i.awj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i275

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i275: ; preds = %bb.qc, %bb.qb
  %.0.i.i.i.i.i.i.i276 = phi i32 [ %i.awm, %bb.qb ], [ %i.aww, %bb.qc ]
  %i.awx = icmp eq i32 %.0.i.i.i.i.i.i.i276, 1
  br i1 %i.awx, label %bb.qd, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit.i277, !prof !168

bb.qd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i275
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awi) #31
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit.i277

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit.i277: ; preds = %bb.qd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i275, %bb.pz, %bb.px
  %i.awy = load ptr, ptr %i.awf, align 8, !tbaa !163, !noalias !2360 ; 8 uses
  %.not.i.i65.i278 = icmp eq ptr %i.awy, null
  br i1 %.not.i.i65.i278, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i282, label %bb.qe

bb.qe:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit.i277
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 8 ; 4 uses
  %i.axa = load atomic i64, ptr %i.awz acquire, align 8 ; 2 uses
  %i.axb = icmp eq i64 %i.axa, 4294967297
  %i.axc = trunc i64 %i.axa to i32                ; 2 uses
  br i1 %i.axb, label %bb.qf, label %bb.qg

bb.qf:                                            ; preds = %bb.qe
  store i32 0, ptr %i.awz, align 8, !tbaa !164
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awy, i64 12
  store i32 0, ptr %i.axd, align 4, !tbaa !166
  %i.axe = load ptr, ptr %i.awy, align 8, !tbaa !84
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 16
  %i.axg = load ptr, ptr %i.axf, align 8
  call void %i.axg(ptr noundef nonnull align 8 dereferenceable(16) %i.awy) #31, !inline_history !2418
  %i.axh = load ptr, ptr %i.awy, align 8, !tbaa !84
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 24
  %i.axj = load ptr, ptr %i.axi, align 8
  call void %i.axj(ptr noundef nonnull align 8 dereferenceable(16) %i.awy) #31, !inline_history !2418
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i282

bb.qg:                                            ; preds = %bb.qe
  %i.axk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !2360
  %.not.i.i.i66.i279 = icmp eq i8 %i.axk, 0
  br i1 %.not.i.i.i66.i279, label %bb.qi, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.axl = add nsw i32 %i.axc, -1
  store i32 %i.axl, ptr %i.awz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i280

bb.qi:                                            ; preds = %bb.qg
  %i.axm = atomicrmw volatile add ptr %i.awz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i280

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i280: ; preds = %bb.qi, %bb.qh
  %.0.i.i.i.i.i281 = phi i32 [ %i.axc, %bb.qh ], [ %i.axm, %bb.qi ]
  %i.axn = icmp eq i32 %.0.i.i.i.i.i281, 1
  br i1 %i.axn, label %bb.qj, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i282, !prof !168

bb.qj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i280
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awy) #31
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i282

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i282: ; preds = %bb.qj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i280, %bb.qf, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit.i277
  %i.axo = load ptr, ptr %101, align 8, !tbaa !163, !noalias !2360 ; 8 uses
  %.not.i.i67.i = icmp eq ptr %i.axo, null
  br i1 %.not.i.i67.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i, label %bb.qk

bb.qk:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i282
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 8 ; 4 uses
  %i.axq = load atomic i64, ptr %i.axp acquire, align 8 ; 2 uses
  %i.axr = icmp eq i64 %i.axq, 4294967297
  %i.axs = trunc i64 %i.axq to i32                ; 2 uses
  br i1 %i.axr, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %bb.qk
  store i32 0, ptr %i.axp, align 8, !tbaa !164
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axo, i64 12
  store i32 0, ptr %i.axt, align 4, !tbaa !166
  %i.axu = load ptr, ptr %i.axo, align 8, !tbaa !84
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 16
  %i.axw = load ptr, ptr %i.axv, align 8
  call void %i.axw(ptr noundef nonnull align 8 dereferenceable(16) %i.axo) #31, !inline_history !2418
  %i.axx = load ptr, ptr %i.axo, align 8, !tbaa !84
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 24
  %i.axz = load ptr, ptr %i.axy, align 8
  call void %i.axz(ptr noundef nonnull align 8 dereferenceable(16) %i.axo) #31, !inline_history !2418
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i

bb.qm:                                            ; preds = %bb.qk
  %i.aya = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !2360
  %.not.i.i.i68.i = icmp eq i8 %i.aya, 0
  br i1 %.not.i.i.i68.i, label %bb.qo, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.ayb = add nsw i32 %i.axs, -1
  store i32 %i.ayb, ptr %i.axp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i

bb.qo:                                            ; preds = %bb.qm
  %i.ayc = atomicrmw volatile add ptr %i.axp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i: ; preds = %bb.qo, %bb.qn
  %.0.i.i.i.i70.i = phi i32 [ %i.axs, %bb.qn ], [ %i.ayc, %bb.qo ]
  %i.ayd = icmp eq i32 %.0.i.i.i.i70.i, 1
  br i1 %i.ayd, label %bb.qp, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i, !prof !168

bb.qp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.axo) #31
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i: ; preds = %bb.qp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69.i, %bb.ql, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i282
  %i.aye = load ptr, ptr %i.avp, align 8, !tbaa !163, !noalias !2360 ; 8 uses
  %.not.i.i72.i283 = icmp eq ptr %i.aye, null
  br i1 %.not.i.i72.i283, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76.i, label %bb.qq

bb.qq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 8 ; 4 uses
  %i.ayg = load atomic i64, ptr %i.ayf acquire, align 8 ; 2 uses
  %i.ayh = icmp eq i64 %i.ayg, 4294967297
  %i.ayi = trunc i64 %i.ayg to i32                ; 2 uses
  br i1 %i.ayh, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq
  store i32 0, ptr %i.ayf, align 8, !tbaa !164
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.aye, i64 12
  store i32 0, ptr %i.ayj, align 4, !tbaa !166
  %i.ayk = load ptr, ptr %i.aye, align 8, !tbaa !84
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 16
  %i.aym = load ptr, ptr %i.ayl, align 8
  call void %i.aym(ptr noundef nonnull align 8 dereferenceable(16) %i.aye) #31, !inline_history !2418
  %i.ayn = load ptr, ptr %i.aye, align 8, !tbaa !84
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 24
  %i.ayp = load ptr, ptr %i.ayo, align 8
  call void %i.ayp(ptr noundef nonnull align 8 dereferenceable(16) %i.aye) #31, !inline_history !2418
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76.i

bb.qs:                                            ; preds = %bb.qq
  %i.ayq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !2360
  %.not.i.i.i73.i = icmp eq i8 %i.ayq, 0
  br i1 %.not.i.i.i73.i, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.ayr = add nsw i32 %i.ayi, -1
  store i32 %i.ayr, ptr %i.ayf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i

bb.qu:                                            ; preds = %bb.qs
  %i.ays = atomicrmw volatile add ptr %i.ayf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i: ; preds = %bb.qu, %bb.qt
  %.0.i.i.i.i75.i = phi i32 [ %i.ayi, %bb.qt ], [ %i.ays, %bb.qu ]
  %i.ayt = icmp eq i32 %.0.i.i.i.i75.i, 1
  br i1 %i.ayt, label %bb.qv, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76.i, !prof !168

bb.qv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aye) #31
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76.i: ; preds = %bb.qv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74.i, %bb.qr, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !2360
  store ptr null, ptr %0, align 8, !tbaa !78, !alias.scope !2419
  %.pre104.i = load ptr, ptr %i.auc, align 8, !tbaa !163, !noalias !2360
  br label %_ZN5arrow6Status7InvalidIJRA58_KcEEES0_DpOT_.exit.i

bb.qw:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit63.i
  %i.ayu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #31
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !2360
  br label %bb.rd

_ZN5arrow6Status7InvalidIJRA58_KcEEES0_DpOT_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76.i, %bb.pp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i295
  %i.ayv = phi ptr [ %i.aue, %bb.pp ], [ %.pre104.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit76.i ], [ %i.aue, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i295 ] ; 8 uses
  %.not.i.i77.i = icmp eq ptr %i.ayv, null
  br i1 %.not.i.i77.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i284, label %bb.qx

bb.qx:                                            ; preds = %_ZN5arrow6Status7InvalidIJRA58_KcEEES0_DpOT_.exit.i
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 8 ; 4 uses
  %i.ayx = load atomic i64, ptr %i.ayw acquire, align 8 ; 2 uses
  %i.ayy = icmp eq i64 %i.ayx, 4294967297
  %i.ayz = trunc i64 %i.ayx to i32                ; 2 uses
  br i1 %i.ayy, label %bb.qy, label %bb.qz

bb.qy:                                            ; preds = %bb.qx
  store i32 0, ptr %i.ayw, align 8, !tbaa !164
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayv, i64 12
  store i32 0, ptr %i.aza, align 4, !tbaa !166
  %i.azb = load ptr, ptr %i.ayv, align 8, !tbaa !84
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 16
  %i.azd = load ptr, ptr %i.azc, align 8
  call void %i.azd(ptr noundef nonnull align 8 dereferenceable(16) %i.ayv) #31, !inline_history !2422
  %i.aze = load ptr, ptr %i.ayv, align 8, !tbaa !84
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 24
  %i.azg = load ptr, ptr %i.azf, align 8
  call void %i.azg(ptr noundef nonnull align 8 dereferenceable(16) %i.ayv) #31, !inline_history !2422
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i284

bb.qz:                                            ; preds = %bb.qx
  %i.azh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !2360
  %.not.i.i.i78.i = icmp eq i8 %i.azh, 0
  br i1 %.not.i.i.i78.i, label %bb.rb, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.azi = add nsw i32 %i.ayz, -1
  store i32 %i.azi, ptr %i.ayw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79.i

bb.rb:                                            ; preds = %bb.qz
  %i.azj = atomicrmw volatile add ptr %i.ayw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79.i: ; preds = %bb.rb, %bb.ra
  %.0.i.i.i.i80.i = phi i32 [ %i.ayz, %bb.ra ], [ %i.azj, %bb.rb ]
  %i.azk = icmp eq i32 %.0.i.i.i.i80.i, 1
  br i1 %i.azk, label %bb.rc, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i284, !prof !168

bb.rc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ayv) #31
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i284

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i284: ; preds = %bb.rc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79.i, %bb.qy, %_ZN5arrow6Status7InvalidIJRA58_KcEEES0_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31, !noalias !2360
  br label %_ZN5arrow6StatusC2ERKS0_.exit55.i

bb.rd:                                            ; preds = %bb.qw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, %bb.pl
  %.pn25.i = phi { ptr, i32 } [ %i.avc, %bb.pl ], [ %i.ayu, %bb.qw ], [ %.pn.i287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i ]
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31, !noalias !2360
  br label %bb.rs

_ZN5arrow6StatusC2ERKS0_.exit55.i:                ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i284, %bb.pe
  %i.azl = load ptr, ptr %14, align 8, !tbaa !78, !noalias !2360 ; 2 uses
  %i.azm = icmp eq ptr %i.azl, null
  br i1 %i.azm, label %bb.re, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.thread.i.i265, !prof !90

bb.re:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit55.i
  %i.azn = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !163, !noalias !2360 ; 8 uses
  %.not.i.i.i.i.i82.i = icmp eq ptr %i.azo, null
  br i1 %.not.i.i.i.i.i82.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i.i270, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 8 ; 4 uses
  %i.azq = load atomic i64, ptr %i.azp acquire, align 8 ; 2 uses
  %i.azr = icmp eq i64 %i.azq, 4294967297
  %i.azs = trunc i64 %i.azq to i32                ; 2 uses
  br i1 %i.azr, label %bb.rg, label %bb.rh

bb.rg:                                            ; preds = %bb.rf
  store i32 0, ptr %i.azp, align 8, !tbaa !164
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azo, i64 12
  store i32 0, ptr %i.azt, align 4, !tbaa !166
  %i.azu = load ptr, ptr %i.azo, align 8, !tbaa !84
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 16
  %i.azw = load ptr, ptr %i.azv, align 8
  call void %i.azw(ptr noundef nonnull align 8 dereferenceable(16) %i.azo) #31, !inline_history !2423
  %i.azx = load ptr, ptr %i.azo, align 8, !tbaa !84
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 24
  %i.azz = load ptr, ptr %i.azy, align 8
  call void %i.azz(ptr noundef nonnull align 8 dereferenceable(16) %i.azo) #31, !inline_history !2423
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE7DestroyEv.exit.i.i270
end_hunk_2
