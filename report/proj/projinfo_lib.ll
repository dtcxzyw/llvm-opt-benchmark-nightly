Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/projinfo_lib?download=true
inline.NumInlined: 3852
inline.NumDeleted: 1140
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL13main_projinfoP6pj_ctxiPPcRN12_GLOBAL__N_18StreamerE:bb.a
  br label %bb.ub

bb.ub:                                            ; preds = %bb.ua, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i1344, %bb.tw, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1341
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  %.pre3068 = load i8, ptr %i.aou, align 16, !tbaa !118, !range !90
  %i.bbe = trunc nuw i8 %.pre3068 to i1
  br i1 %i.bbe, label %bb.uc, label %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit

bb.uc:                                            ; preds = %bb.ub
  store i8 0, ptr %i.aou, align 16, !tbaa !118
  %i.bbf = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !98 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bbg, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 8 ; 4 uses
  %i.bbi = load atomic i64, ptr %i.bbh acquire, align 8 ; 2 uses
  %i.bbj = icmp eq i64 %i.bbi, 4294967297
  %i.bbk = trunc i64 %i.bbi to i32                ; 2 uses
  br i1 %i.bbj, label %bb.ue, label %bb.uf

bb.ue:                                            ; preds = %bb.ud
  store i32 0, ptr %i.bbh, align 8, !tbaa !100
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbg, i64 12
  store i32 0, ptr %i.bbl, align 4, !tbaa !101
  %i.bbm = load ptr, ptr %i.bbg, align 8, !tbaa !56
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 16
  %i.bbo = load ptr, ptr %i.bbn, align 8
  call void %i.bbo(ptr noundef nonnull align 8 dereferenceable(16) %i.bbg) #31, !inline_history !226
  %i.bbp = load ptr, ptr %i.bbg, align 8, !tbaa !56
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 24
  %i.bbr = load ptr, ptr %i.bbq, align 8
  call void %i.bbr(ptr noundef nonnull align 8 dereferenceable(16) %i.bbg) #31, !inline_history !226
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit

bb.uf:                                            ; preds = %bb.ud
  %i.bbs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bbs, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.uh, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.bbt = add nsw i32 %i.bbk, -1
  store i32 %i.bbt, ptr %i.bbh, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.uh:                                            ; preds = %bb.uf
  %i.bbu = atomicrmw volatile add ptr %i.bbh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.uh, %bb.ug
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bbk, %bb.ug ], [ %i.bbu, %bb.uh ]
  %i.bbv = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bbv, label %bb.ui, label %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit, !prof !103

bb.ui:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bbg) #31
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ub, %bb.uc, %bb.ue, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ui
  %.253408 = phi i32 [ %.24, %bb.ui ], [ %.24, %bb.ub ], [ %.24, %bb.uc ], [ %.24, %bb.ue ], [ %.24, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i ], [ 1, %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.186853407 = phi i1 [ %.not19481994, %bb.ui ], [ %.not19481994, %bb.ub ], [ %.not19481994, %bb.uc ], [ %.not19481994, %bb.ue ], [ %.not19481994, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i ], [ false, %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  %i.bbw = load ptr, ptr %60, align 8, !tbaa !63  ; 2 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.bby = icmp eq ptr %i.bbw, %i.bbx
  br i1 %i.bby, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346: ; preds = %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit
  %i.bbz = load i64, ptr %i.bbx, align 8, !tbaa !64
  %i.bca = add i64 %i.bbz, 1
  call void @_ZdlPvm(ptr noundef %i.bbw, i64 noundef %i.bca) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348: ; preds = %_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #31
  br label %.thread1864

.thread1864:                                      ; preds = %bb.ps, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348
  %i.bcb = phi ptr [ %i.anu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348 ], [ %i.aho, %bb.ps ]
  %.19686 = phi i1 [ %.186853407, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348 ], [ false, %bb.ps ]
  %.26 = phi i32 [ %.253408, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348 ], [ %i.anr, %bb.ps ] ; 2 uses
  %i.bcc = load ptr, ptr %59, align 8, !tbaa !60  ; 3 uses
  %i.bcd = load ptr, ptr %i.bcb, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i.i1349 = icmp eq ptr %i.bcc, %i.bcd
  br i1 %.not4.i.i.i1349, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1357, label %.lr.ph.i.i.i1350

.lr.ph.i.i.i1350:                                 ; preds = %.thread1864, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353
  %.05.i.i.i1351 = phi ptr [ %i.bcj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353 ], [ %i.bcc, %.thread1864 ] ; 3 uses
  %i.bce = load ptr, ptr %.05.i.i.i1351, align 8, !tbaa !63 ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %.05.i.i.i1351, i64 16 ; 2 uses
  %i.bcg = icmp eq ptr %i.bce, %i.bcf
  br i1 %i.bcg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1352: ; preds = %.lr.ph.i.i.i1350
  %i.bch = load i64, ptr %i.bcf, align 8, !tbaa !64
  %i.bci = add i64 %i.bch, 1
  call void @_ZdlPvm(ptr noundef %i.bce, i64 noundef %i.bci) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353: ; preds = %.lr.ph.i.i.i1350, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1352
  %i.bcj = getelementptr inbounds nuw i8, ptr %.05.i.i.i1351, i64 32 ; 2 uses
  %.not.i.i.i1354 = icmp eq ptr %i.bcj, %i.bcd
  br i1 %.not.i.i.i1354, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1355, label %.lr.ph.i.i.i1350, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1355: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i1353
  %.pr.i1356 = load ptr, ptr %59, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1357

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1357: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1355, %.thread1864
  %i.bck = phi ptr [ %.pr.i1356, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i1355 ], [ %i.bcc, %.thread1864 ] ; 3 uses
  %.not.i.i1.i1358 = icmp eq ptr %i.bck, null
  br i1 %.not.i.i1.i1358, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1361, label %bb.uj

bb.uj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1357
  %i.bcl = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.bcm = load ptr, ptr %i.bcl, align 8, !tbaa !61
  %i.bcn = ptrtoint ptr %i.bcm to i64
  %i.bco = ptrtoint ptr %i.bck to i64
  %i.bcp = sub i64 %i.bcn, %i.bco
  call void @_ZdlPvm(ptr noundef nonnull %i.bck, i64 noundef %i.bcp) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1361

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1361: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i1357, %bb.uj
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #31
  %i.bcq = load ptr, ptr %i.agw, align 8, !tbaa !111
  invoke void @_ZNSt8_Rb_treeIN5osgeo4proj2io16AuthorityFactory10ObjectTypeES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef %i.bcq)
          to label %_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev.exit unwind label %bb.uk

bb.uk:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1361
  %i.bcr = landingpad { ptr, i32 }
          catch ptr null
  %i.bcs = extractvalue { ptr, i32 } %i.bcr, 0
  call void @__clang_call_terminate(ptr %i.bcs) #32
  unreachable

_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit1361
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #31
  br i1 %.19686, label %bb.up, label %bb.zl

bb.ul:                                            ; preds = %bb.tm, %bb.tr, %bb.ts, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1282
  %.merged841 = phi { ptr, i32 } [ %i.aqn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1282 ], [ %.pn779.pn.pn.pn.pn, %bb.tm ], [ %i.azz, %bb.ts ], [ %i.azy, %bb.tr ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %64) #31
  br label %bb.um

bb.um:                                            ; preds = %bb.ul, %bb.qm, %bb.qn, %bb.qr
  %.merged840 = phi { ptr, i32 } [ %.merged841, %bb.ul ], [ %i.aqm, %bb.qr ], [ %i.apx, %bb.qn ], [ %i.apx, %bb.qm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #31
  call void @_ZNSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %63) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  call void @_ZNSt14_Optional_baseISt10shared_ptrIN5osgeo4proj8metadata6ExtentEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %61) #31
  br label %bb.un

bb.un:                                            ; preds = %bb.um, %bb.qg
  %.merged838 = phi { ptr, i32 } [ %.merged840, %bb.um ], [ %i.aoy, %bb.qg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  %i.bct = load ptr, ptr %60, align 8, !tbaa !63  ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.bcv = icmp eq ptr %i.bct, %i.bcu
  br i1 %i.bcv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1362: ; preds = %bb.un
  %i.bcw = load i64, ptr %i.bcu, align 8, !tbaa !64
  %i.bcx = add i64 %i.bcw, 1
  call void @_ZdlPvm(ptr noundef %i.bct, i64 noundef %i.bcx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1364: ; preds = %bb.un, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1362, %bb.qf
  %.merged837 = phi { ptr, i32 } [ %i.aox, %bb.qf ], [ %.merged838, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1362 ], [ %.merged838, %bb.un ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #31
  br label %.loopexit.split-lp1957

.loopexit.split-lp1957:                           ; preds = %.loopexit.split-lp1957.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.pc, %bb.pg, %bb.pk, %bb.po, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1364
  %.merged836 = phi { ptr, i32 } [ %.merged837, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1364 ], [ %i.anj, %bb.pk ], [ %i.anm, %bb.po ], [ %i.and, %bb.pc ], [ %i.ang, %bb.pg ], [ %lpad.loopexit.split-lp3534, %.loopexit.split-lp1957.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %59) #31
  br label %bb.uo

bb.uo:                                            ; preds = %.loopexit.split-lp1957, %bb.nn
  %.merged835 = phi { ptr, i32 } [ %.merged836, %.loopexit.split-lp1957 ], [ %i.ahl, %bb.nn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #31
  call void @_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %58) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #31
  br label %bb.zs

bb.up:                                            ; preds = %_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev.exit, %bb.nj
  %.36631663 = phi i8 [ 1, %_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev.exit ], [ 0, %bb.nj ]
  %.27 = phi i32 [ %.26, %_ZNSt3setIN5osgeo4proj2io16AuthorityFactory10ObjectTypeESt4lessIS4_ESaIS4_EED2Ev.exit ], [ %.18, %bb.nj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #31
  %i.bcy = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  store ptr %i.bcy, ptr %73, align 8, !tbaa !66
  %i.bcz = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  store i64 0, ptr %i.bcz, align 8, !tbaa !67
  store i8 0, ptr %i.bcy, align 8, !tbaa !64
  %i.bda = load i64, ptr %i.am, align 8, !tbaa !67
  %i.bdb = icmp eq i64 %i.bda, 0
  %i.bdc = load i64, ptr %i.aq, align 8
  %i.bdd = icmp eq i64 %i.bdc, 0
  %or.cond1943 = select i1 %i.bdb, i1 %i.bdd, i1 false
  %i.bde = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !62
  %i.bdg = load ptr, ptr %9, align 8, !tbaa !60   ; 3 uses
  %i.bdh = ptrtoint ptr %i.bdf to i64             ; 2 uses
  %i.bdi = ptrtoint ptr %i.bdg to i64             ; 2 uses
  %i.bdj = sub i64 %i.bdh, %i.bdi
  %i.bdk = icmp eq i64 %i.bdj, 64
  %or.cond3463 = select i1 %or.cond1943, i1 %i.bdk, i1 false
  br i1 %or.cond3463, label %bb.uq, label %._crit_edge3069

bb.uq:                                            ; preds = %bb.up
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.bdg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1366 unwind label %bb.ur

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1366: ; preds = %bb.uq
  %i.bdl = load ptr, ptr %9, align 8, !tbaa !60
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.bdm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1368 unwind label %bb.ur

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1368: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1366
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370 unwind label %bb.ur

bb.ur:                                            ; preds = %.invoke3467.a, %.invoke3464, %bb.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1366, %bb.uq, %bb.vi, %bb.vd, %bb.vb, %bb.uz, %bb.ux, %bb.uv, %bb.uu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1368
  %i.bdn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bdo = extractvalue { ptr, i32 } %i.bdn, 0
  %i.bdp = extractvalue { ptr, i32 } %i.bdn, 1
  br label %bb.zk

._crit_edge3069:                                  ; preds = %bb.up
  %i.bdq = sub i64 %i.bdh, %i.bdi                 ; 2 uses
  %i.bdr = icmp eq i64 %i.bdq, 32
  br i1 %i.bdr, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %._crit_edge3069
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(32) %i.bdg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370 unwind label %bb.ur

bb.ut:                                            ; preds = %._crit_edge3069
  %i.bds = icmp ugt i64 %i.bdq, 32
  br i1 %i.bds, label %bb.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370

bb.uu:                                            ; preds = %bb.ut
  %i.bdt = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 3 uses
  %i.bdu = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA22_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bdt, ptr noundef nonnull align 1 dereferenceable(22) @.str.147)
          to label %bb.uv unwind label %bb.ur     ; 0 uses

bb.uv:                                            ; preds = %bb.uu
  %i.bdv = load ptr, ptr %9, align 8, !tbaa !60
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 32
  %i.bdx = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bdt, ptr noundef nonnull align 8 dereferenceable(32) %i.bdw)
          to label %.invoke3467.a unwind label %bb.ur ; 0 uses

.invoke3467.a:                                    ; preds = %bb.vi, %bb.vd, %bb.vb, %bb.uz, %bb.ux, %bb.uv
  %i.bdy = phi ptr [ %i.bet, %bb.vd ], [ %i.bdt, %bb.uv ], [ %i.bee, %bb.ux ], [ %i.beg, %bb.uz ], [ %i.bem, %bb.vb ], [ %i.bfr, %bb.vi ]
  %i.bdz = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsEPFRSoS4_E(ptr noundef nonnull align 8 dereferenceable(408) %i.bdy)
          to label %.invoke3464 unwind label %bb.ur ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370: ; preds = %bb.us, %bb.ut, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1368
  %i.bea = load i64, ptr %i.am, align 8, !tbaa !67
  %i.beb = icmp eq i64 %i.bea, 0
  %i.bec = load i64, ptr %i.aq, align 8, !tbaa !67
  %i.bed = icmp eq i64 %i.bec, 0                  ; 2 uses
  br i1 %i.beb, label %bb.uy, label %bb.uw

bb.uw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370
  br i1 %i.bed, label %bb.ux, label %bb.va

bb.ux:                                            ; preds = %bb.uw
  %i.bee = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.bef = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA45_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bee, ptr noundef nonnull align 1 dereferenceable(45) @.str.148)
          to label %.invoke3467.a unwind label %bb.ur ; 0 uses

bb.uy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1370
  br i1 %i.bed, label %.thread1915, label %bb.uz

bb.uz:                                            ; preds = %bb.uy
  %i.beg = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.beh = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA45_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.beg, ptr noundef nonnull align 1 dereferenceable(45) @.str.149)
          to label %.invoke3467.a unwind label %bb.ur ; 0 uses

bb.va:                                            ; preds = %bb.uw
  %i.bei = load ptr, ptr %9, align 8, !tbaa !77
  %i.bej = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !77
  %i.bel = icmp eq ptr %i.bei, %i.bek
  br i1 %i.bel, label %bb.ve, label %bb.vb

bb.vb:                                            ; preds = %bb.va
  %i.bem = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.ben = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA19_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bem)
          to label %.invoke3467.a unwind label %bb.ur ; 0 uses

.thread1915:                                      ; preds = %bb.uy
  %i.beo = load ptr, ptr %9, align 8, !tbaa !77
  %i.bep = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.beq = load ptr, ptr %i.bep, align 8, !tbaa !77
  %i.ber = icmp eq ptr %i.beo, %i.beq
  br i1 %i.ber, label %bb.vc, label %bb.ve

bb.vc:                                            ; preds = %.thread1915
  %i.bes = or i8 %.36631663, %.2658
  %or.cond36.not = icmp eq i8 %i.bes, 0
  br i1 %or.cond36.not, label %bb.vd, label %bb.zj

bb.vd:                                            ; preds = %bb.vc
  %i.bet = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.beu = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA20_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bet)
          to label %.invoke3467.a unwind label %bb.ur ; 0 uses

bb.ve:                                            ; preds = %.thread1915, %bb.va
  %i.bev = trunc nuw i8 %.4583 to i1
  br i1 %i.bev, label %bb.vg, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.bew = getelementptr inbounds nuw i8, ptr %14, i64 1
  store i8 1, ptr %i.bew, align 1, !tbaa !78
  %i.bex = getelementptr inbounds nuw i8, ptr %14, i64 2
  store i8 1, ptr %i.bex, align 2, !tbaa !79
  br label %bb.vg

bb.vg:                                            ; preds = %bb.vf, %bb.ve
  %i.bey = load i8, ptr %14, align 8, !tbaa !87, !range !90, !noundef !91
  %i.bez = trunc nuw i8 %i.bey to i1
  br i1 %i.bez, label %bb.vh, label %bb.vj

bb.vh:                                            ; preds = %bb.vg
  %i.bfa = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.bfb = load <4 x i8>, ptr %i.bfa, align 1, !tbaa !244
  %i.bfc = getelementptr inbounds nuw i8, ptr %14, i64 5
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !83, !range !90, !noundef !91
  %i.bfe = getelementptr inbounds nuw i8, ptr %14, i64 6
  %i.bff = load i8, ptr %i.bfe, align 2, !tbaa !81, !range !90, !noundef !91
  %i.bfg = getelementptr inbounds nuw i8, ptr %14, i64 7
  %i.bfh = load i8, ptr %i.bfg, align 1, !tbaa !84, !range !90, !noundef !91
  %i.bfi = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.bfb)
  %op.rdx = add i8 %i.bfi, %i.bfd
  %op.rdx3530 = add nuw nsw i8 %i.bff, %i.bfh
  %op.rdx3531 = add i8 %op.rdx, %op.rdx3530
  %i.bfj = zext nneg i8 %op.rdx3531 to i32
  %i.bfk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bfl = load i8, ptr %i.bfk, align 8, !tbaa !85, !range !90, !noundef !91
  %i.bfm = zext nneg i8 %i.bfl to i32
  %i.bfn = add nuw nsw i32 %i.bfj, %i.bfm
  %i.bfo = load i8, ptr %i.xz, align 1, !tbaa !86, !range !90, !noundef !91
  %i.bfp = zext nneg i8 %i.bfo to i32
  %i.bfq = add nuw nsw i32 %i.bfn, %i.bfp
  %.not794 = icmp eq i32 %i.bfq, 1
  br i1 %.not794, label %bb.vj, label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  %i.bfr = getelementptr inbounds nuw i8, ptr %3, i64 816 ; 2 uses
  %i.bfs = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL3EElsIA48_cEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bfr)
          to label %.invoke3467.a unwind label %bb.ur ; 0 uses

.invoke3464:                                      ; preds = %.invoke3467.a
  %i.bft = invoke fastcc noundef i32 @_ZL5usageRN12_GLOBAL__N_18StreamerEb(ptr noundef nonnull align 8 dereferenceable(1224) %3, i1 noundef zeroext true)
          to label %bb.zj unwind label %bb.ur

bb.vj:                                            ; preds = %bb.vh, %bb.vg
  %i.bfu = load i64, ptr %i.bcz, align 8, !tbaa !67
  %i.bfv = icmp eq i64 %i.bfu, 0
  %i.bfw = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 4 uses
  br i1 %i.bfv, label %bb.yn, label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #31
  %i.bfx = load ptr, ptr %i.bfw, align 8, !tbaa !98 ; 2 uses
  %i.bfy = load <2 x ptr>, ptr %55, align 16, !tbaa !95
  store <2 x ptr> %i.bfy, ptr %75, align 16, !tbaa !95
  %.not.i.i.i1371 = icmp eq ptr %i.bfx, null
  br i1 %.not.i.i.i1371, label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit1373, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfx, i64 8 ; 3 uses
  %i.bga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i1372 = icmp eq i8 %i.bga, 0
  br i1 %.not.i.i.i.i1372, label %bb.vn, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.bgb = load i32, ptr %i.bfz, align 4, !tbaa !102
  %i.bgc = add nsw i32 %i.bgb, 1
  store i32 %i.bgc, ptr %i.bfz, align 4, !tbaa !102
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit1373

bb.vn:                                            ; preds = %bb.vl
  %i.bgd = atomicrmw volatile add ptr %i.bfz, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit1373

_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit1373: ; preds = %bb.vk, %bb.vm, %bb.vn
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #31
  %i.bge = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 6 uses
  store ptr %i.bge, ptr %76, align 8, !tbaa !66
  %i.bgf = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 0, ptr %i.bgf, align 8, !tbaa !67
  store i8 0, ptr %i.bge, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull @.str.153, ptr noundef nonnull align 1 dereferenceable(1) %78)
          to label %bb.vo unwind label %bb.vq

bb.vo:                                            ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEC2ERKS4_.exit1373
  %i.bgg = trunc nuw i8 %.2638 to i1
  %i.bgh = trunc nuw i8 %.2642 to i1
  %i.bgi = load i8, ptr %14, align 8, !tbaa !87, !range !90, !noundef !91
  %i.bgj = trunc nuw i8 %i.bgi to i1
  invoke fastcc void @_ZL11buildObjectSt10shared_ptrIN5osgeo4proj2io15DatabaseContextEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_SC_bNS1_9operation26CoordinateOperationContext18IntermediateCRSUseEbbbRN12_GLOBAL__N_18StreamerE(ptr dead_on_unwind noalias writable align 8 %74, ptr noundef align 8 %75, ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %77, i1 noundef zeroext %.2606, i32 noundef %.4618, i1 noundef zeroext %i.bgg, i1 noundef zeroext %i.bgh, i1 noundef zeroext %i.bgj, ptr noundef nonnull align 8 dereferenceable(1224) %3)
          to label %bb.vp unwind label %bb.vr

bb.vp:                                            ; preds = %bb.vo
  %i.bgk = load ptr, ptr %77, align 8, !tbaa !63  ; 2 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.bgm = icmp eq ptr %i.bgk, %i.bgl
  br i1 %i.bgm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1374: ; preds = %bb.vp
  %i.bgn = load i64, ptr %i.bgl, align 8, !tbaa !64
  %i.bgo = add i64 %i.bgn, 1
  call void @_ZdlPvm(ptr noundef %i.bgk, i64 noundef %i.bgo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376: ; preds = %bb.vp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1374
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #31
  %i.bgp = load ptr, ptr %76, align 8, !tbaa !63  ; 2 uses
  %i.bgq = icmp eq ptr %i.bgp, %i.bge
  br i1 %i.bgq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1377: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376
  %i.bgr = load i64, ptr %i.bge, align 8, !tbaa !64
  %i.bgs = add i64 %i.bgr, 1
end_hunk_0
